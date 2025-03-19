; ModuleID = 'lib/radix-tree.c'
source_filename = "lib/radix-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_preloads: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_preloads ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_preload: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_preload ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_maybe_preload: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_maybe_preload ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_insert: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_insert ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_lookup_slot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_lookup_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_lookup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_replace_slot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_replace_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_tag_set: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_tag_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_tag_clear: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_tag_clear ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_tag_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_tag_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_iter_resume: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_iter_resume ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_next_chunk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_next_chunk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_gang_lookup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_gang_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_gang_lookup_tag: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_gang_lookup_tag ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_gang_lookup_tag_slot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_gang_lookup_tag_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_iter_delete: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_iter_delete ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_delete_item: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_delete_item ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_delete: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_delete ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_radix_tree_tagged: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad radix_tree_tagged ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_preload: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_preload ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_destroy ; .previous"

%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type {}
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.pcpu_hot = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [16 x i8] }
%struct.anon.6 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon, [64 x ptr], %union.anon.0 }
%union.anon = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.0 = type { [3 x [1 x i64]] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.radix_tree_iter = type { i64, i64, i64, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }

@radix_tree_preloads = hidden global %struct.radix_tree_preload { %struct.local_lock_t undef, i32 0, ptr null }, section ".data..percpu", align 8, !dbg !0
@__UNIQUE_ID___addressable_radix_tree_preloads205 = internal global ptr @radix_tree_preloads, section ".discard.addressable", align 8, !dbg !337
@radix_tree_node_cachep = hidden global ptr null, align 8, !dbg !395
@.str = private unnamed_addr constant [17 x i8] c"lib/radix-tree.c\00", align 1, !dbg !339
@__UNIQUE_ID___addressable_radix_tree_preload209 = internal global ptr @radix_tree_preload, section ".discard.addressable", align 8, !dbg !345
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@__UNIQUE_ID___addressable_radix_tree_maybe_preload210 = internal global ptr @radix_tree_maybe_preload, section ".discard.addressable", align 8, !dbg !347
@__UNIQUE_ID___addressable_radix_tree_insert234 = internal global ptr @radix_tree_insert, section ".discard.addressable", align 8, !dbg !349
@__UNIQUE_ID___addressable_radix_tree_lookup_slot235 = internal global ptr @radix_tree_lookup_slot, section ".discard.addressable", align 8, !dbg !351
@__UNIQUE_ID___addressable_radix_tree_lookup236 = internal global ptr @radix_tree_lookup, section ".discard.addressable", align 8, !dbg !353
@__UNIQUE_ID___addressable_radix_tree_replace_slot242 = internal global ptr @radix_tree_replace_slot, section ".discard.addressable", align 8, !dbg !355
@__UNIQUE_ID___addressable_radix_tree_tag_set243 = internal global ptr @radix_tree_tag_set, section ".discard.addressable", align 8, !dbg !357
@__UNIQUE_ID___addressable_radix_tree_tag_clear244 = internal global ptr @radix_tree_tag_clear, section ".discard.addressable", align 8, !dbg !359
@__UNIQUE_ID___addressable_radix_tree_tag_get245 = internal global ptr @radix_tree_tag_get, section ".discard.addressable", align 8, !dbg !361
@__UNIQUE_ID___addressable_radix_tree_iter_resume246 = internal global ptr @radix_tree_iter_resume, section ".discard.addressable", align 8, !dbg !363
@__UNIQUE_ID___addressable_radix_tree_next_chunk251 = internal global ptr @radix_tree_next_chunk, section ".discard.addressable", align 8, !dbg !365
@__UNIQUE_ID___addressable_radix_tree_gang_lookup254 = internal global ptr @radix_tree_gang_lookup, section ".discard.addressable", align 8, !dbg !367
@__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag257 = internal global ptr @radix_tree_gang_lookup_tag, section ".discard.addressable", align 8, !dbg !369
@__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag_slot258 = internal global ptr @radix_tree_gang_lookup_tag_slot, section ".discard.addressable", align 8, !dbg !371
@__UNIQUE_ID___addressable_radix_tree_iter_delete261 = internal global ptr @radix_tree_iter_delete, section ".discard.addressable", align 8, !dbg !373
@__UNIQUE_ID___addressable_radix_tree_delete_item262 = internal global ptr @radix_tree_delete_item, section ".discard.addressable", align 8, !dbg !375
@__UNIQUE_ID___addressable_radix_tree_delete263 = internal global ptr @radix_tree_delete, section ".discard.addressable", align 8, !dbg !377
@__UNIQUE_ID___addressable_radix_tree_tagged264 = internal global ptr @radix_tree_tagged, section ".discard.addressable", align 8, !dbg !379
@__UNIQUE_ID___addressable_idr_preload265 = internal global ptr @idr_preload, section ".discard.addressable", align 8, !dbg !381
@__UNIQUE_ID___addressable_idr_destroy279 = internal global ptr @idr_destroy, section ".discard.addressable", align 8, !dbg !383
@.str.1 = private unnamed_addr constant [16 x i8] c"radix_tree_node\00", align 1, !dbg !385
@.str.2 = private unnamed_addr constant [15 x i8] c"lib/radix:dead\00", align 1, !dbg !390
@__radix_tree_preload.__UNIQUE_ID___addressable___SCK__preempt_schedule208 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !400
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID___addressable_radix_tree_preloads205, ptr @__UNIQUE_ID___addressable_radix_tree_preload209, ptr @__UNIQUE_ID___addressable_radix_tree_maybe_preload210, ptr @__UNIQUE_ID___addressable_radix_tree_insert234, ptr @__UNIQUE_ID___addressable_radix_tree_lookup_slot235, ptr @__UNIQUE_ID___addressable_radix_tree_lookup236, ptr @__UNIQUE_ID___addressable_radix_tree_replace_slot242, ptr @__UNIQUE_ID___addressable_radix_tree_tag_set243, ptr @__UNIQUE_ID___addressable_radix_tree_tag_clear244, ptr @__UNIQUE_ID___addressable_radix_tree_tag_get245, ptr @__UNIQUE_ID___addressable_radix_tree_iter_resume246, ptr @__UNIQUE_ID___addressable_radix_tree_next_chunk251, ptr @__UNIQUE_ID___addressable_radix_tree_gang_lookup254, ptr @__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag257, ptr @__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag_slot258, ptr @__UNIQUE_ID___addressable_radix_tree_iter_delete261, ptr @__UNIQUE_ID___addressable_radix_tree_delete_item262, ptr @__UNIQUE_ID___addressable_radix_tree_delete263, ptr @__UNIQUE_ID___addressable_radix_tree_tagged264, ptr @__UNIQUE_ID___addressable_idr_preload265, ptr @__UNIQUE_ID___addressable_idr_destroy279, ptr @__radix_tree_preload.__UNIQUE_ID___addressable___SCK__preempt_schedule208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @radix_tree_node_rcu_free(ptr noundef %head) #0 align 16 !dbg !454 {
entry:
  %head.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %node, metadata !457, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !458, metadata !DIExpression()), !dbg !463
  %0 = load ptr, ptr %head.addr, align 8, !dbg !463
  store ptr %0, ptr %__mptr, align 8, !dbg !463
  %1 = load ptr, ptr %__mptr, align 8, !dbg !463
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !463
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !464
  %2 = load ptr, ptr %tmp, align 8, !dbg !463
  store ptr %2, ptr %node, align 8, !dbg !462
  %3 = load ptr, ptr %node, align 8, !dbg !465
  %slots = getelementptr inbounds %struct.xa_node, ptr %3, i32 0, i32 7, !dbg !466
  %arraydecay = getelementptr inbounds [64 x ptr], ptr %slots, i64 0, i64 0, !dbg !467
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 512, i1 false), !dbg !467
  %4 = load ptr, ptr %node, align 8, !dbg !468
  %5 = getelementptr inbounds %struct.xa_node, ptr %4, i32 0, i32 8, !dbg !469
  %arraydecay1 = getelementptr inbounds [3 x [1 x i64]], ptr %5, i64 0, i64 0, !dbg !470
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay1, i8 0, i64 24, i1 false), !dbg !470
  %6 = load ptr, ptr %node, align 8, !dbg !471
  %7 = getelementptr inbounds %struct.xa_node, ptr %6, i32 0, i32 6, !dbg !472
  call void @INIT_LIST_HEAD(ptr noundef %7) #14, !dbg !473
  %8 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !474
  %9 = load ptr, ptr %node, align 8, !dbg !475
  call void @kmem_cache_free(ptr noundef %8, ptr noundef %9) #14, !dbg !476
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !477
  ret void, !dbg !477
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !478 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !483, metadata !DIExpression()), !dbg !484
  br label %do.body, !dbg !485

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !486

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !488

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !486

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !490
  %1 = load ptr, ptr %list.addr, align 8, !dbg !490
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !490
  store volatile ptr %0, ptr %next, align 8, !dbg !490
  br label %do.end3, !dbg !490

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !486

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !492

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !493

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !495

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !493

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !497
  %3 = load ptr, ptr %list.addr, align 8, !dbg !497
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !497
  store volatile ptr %2, ptr %prev, align 8, !dbg !497
  br label %do.end9, !dbg !497

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !493

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !499
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !500 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_preload(i32 noundef %gfp_mask) #0 align 16 !dbg !504 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !508, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !509, metadata !DIExpression()), !dbg !515
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !515
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %0) #14, !dbg !515
  %lnot = xor i1 %call, true, !dbg !515
  %lnot1 = xor i1 %lnot, true, !dbg !515
  %lnot2 = xor i1 %lnot1, true, !dbg !515
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !515
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !515
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !516
  %tobool = icmp ne i32 %1, 0, !dbg !516
  %lnot3 = xor i1 %tobool, true, !dbg !516
  %lnot5 = xor i1 %lnot3, true, !dbg !516
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !516
  %conv = sext i32 %lnot.ext6 to i64, !dbg !516
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !516
  %tobool7 = icmp ne i64 %expval, 0, !dbg !516
  br i1 %tobool7, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !516

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !511, metadata !DIExpression()), !dbg !517
  store i32 2307, ptr %__flags, align 4, !dbg !517
  br label %do.body8, !dbg !517

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !518

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !518

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !517

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !520
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 368, i32 %2, i64 12) #13, !dbg !520, !srcloc !522
  br label %do.cond10, !dbg !520

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !520

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !517

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !523

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !523

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !516
  br label %do.cond15, !dbg !517

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !517

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !517

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !515
  %tobool17 = icmp ne i32 %3, 0, !dbg !515
  %lnot18 = xor i1 %tobool17, true, !dbg !515
  %lnot20 = xor i1 %lnot18, true, !dbg !515
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !515
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !515
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !515
  store i64 %expval23, ptr %tmp, align 8, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !525
  %4 = load i64, ptr %tmp, align 8, !dbg !515
  %5 = load i32, ptr %gfp_mask.addr, align 4, !dbg !526
  %call24 = call i32 @__radix_tree_preload(i32 noundef %5, i32 noundef 21) #14, !dbg !527
  ret i32 %call24, !dbg !528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) #4 align 16 !dbg !529 {
entry:
  %gfp_flags.addr = alloca i32, align 4
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i32, ptr %gfp_flags.addr, align 4, !dbg !539
  %and = and i32 %0, 1024, !dbg !540
  %tobool = icmp ne i32 %and, 0, !dbg !541
  %lnot = xor i1 %tobool, true, !dbg !541
  %lnot1 = xor i1 %lnot, true, !dbg !542
  ret i1 %lnot1, !dbg !543
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__radix_tree_preload(i32 noundef %gfp_mask, i32 noundef %nr) #0 align 16 !dbg !402 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %rtp = alloca ptr, align 8
  %node = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %__vpp_verify9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tcp_ptr__13 = alloca i64, align 8
  %tmp14 = alloca ptr, align 8
  %__vpp_verify18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %tcp_ptr__22 = alloca i64, align 8
  %tmp23 = alloca ptr, align 8
  %__vpp_verify43 = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  %tcp_ptr__47 = alloca i64, align 8
  %tmp48 = alloca ptr, align 8
  %__vpp_verify52 = alloca ptr, align 8
  %tmp55 = alloca ptr, align 8
  %tcp_ptr__56 = alloca i64, align 8
  %tmp57 = alloca ptr, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !406, metadata !DIExpression()), !dbg !544
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !407, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtp) #13, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %rtp, metadata !408, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %node, metadata !409, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !410, metadata !DIExpression()), !dbg !551
  store i32 -12, ptr %ret, align 4, !dbg !551
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !552
  %and = and i32 %0, -4194305, !dbg !552
  store i32 %and, ptr %gfp_mask.addr, align 4, !dbg !552
  br label %do.body, !dbg !553

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !554

do.body1:                                         ; preds = %do.body
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !555
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !555, !srcloc !557
  br label %do.cond, !dbg !555

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !555

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !558

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !411, metadata !DIExpression()), !dbg !559
  store ptr null, ptr %__vpp_verify, align 8, !dbg !559
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !558
  br label %do.cond3, !dbg !559

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !559

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !417, metadata !DIExpression()), !dbg !560
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !560, !srcloc !561
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !560
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !560
  %4 = inttoptr i64 %3 to ptr, !dbg !560
  store ptr %4, ptr %tmp5, align 8, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !558
  %5 = load ptr, ptr %tmp5, align 8, !dbg !560
  store ptr %5, ptr %tmp, align 8, !dbg !559
  %6 = load ptr, ptr %tmp, align 8, !dbg !558
  call void @local_lock_acquire(ptr noundef %6) #14, !dbg !554
  br label %do.cond6, !dbg !554

do.cond6:                                         ; preds = %do.end4
  br label %do.end7, !dbg !554

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !562

do.body8:                                         ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify9) #13, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify9, metadata !419, metadata !DIExpression()), !dbg !563
  store ptr null, ptr %__vpp_verify9, align 8, !dbg !563
  %7 = load ptr, ptr %__vpp_verify9, align 8, !dbg !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify9) #13, !dbg !562
  br label %do.cond10, !dbg !563

do.cond10:                                        ; preds = %do.body8
  br label %do.end11, !dbg !563

do.end11:                                         ; preds = %do.cond10
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__13) #13, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__13, metadata !422, metadata !DIExpression()), !dbg !564
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !564, !srcloc !565
  store i64 %8, ptr %tcp_ptr__13, align 8, !dbg !564
  %9 = load i64, ptr %tcp_ptr__13, align 8, !dbg !564
  %10 = inttoptr i64 %9 to ptr, !dbg !564
  store ptr %10, ptr %tmp14, align 8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__13) #13, !dbg !562
  %11 = load ptr, ptr %tmp14, align 8, !dbg !564
  store ptr %11, ptr %tmp12, align 8, !dbg !563
  %12 = load ptr, ptr %tmp12, align 8, !dbg !562
  store ptr %12, ptr %rtp, align 8, !dbg !566
  br label %while.cond, !dbg !567

while.cond:                                       ; preds = %if.end64, %do.end11
  %13 = load ptr, ptr %rtp, align 8, !dbg !568
  %nr15 = getelementptr inbounds %struct.radix_tree_preload, ptr %13, i32 0, i32 1, !dbg !569
  %14 = load i32, ptr %nr15, align 8, !dbg !569
  %15 = load i32, ptr %nr.addr, align 4, !dbg !570
  %cmp = icmp ult i32 %14, %15, !dbg !571
  br i1 %cmp, label %while.body, label %while.end, !dbg !567

while.body:                                       ; preds = %while.cond
  br label %do.body16, !dbg !572

do.body16:                                        ; preds = %while.body
  br label %do.body17, !dbg !573

do.body17:                                        ; preds = %do.body16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify18) #13, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify18, metadata !424, metadata !DIExpression()), !dbg !574
  store ptr null, ptr %__vpp_verify18, align 8, !dbg !574
  %16 = load ptr, ptr %__vpp_verify18, align 8, !dbg !574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify18) #13, !dbg !573
  br label %do.cond19, !dbg !574

do.cond19:                                        ; preds = %do.body17
  br label %do.end20, !dbg !574

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__22) #13, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__22, metadata !429, metadata !DIExpression()), !dbg !575
  %17 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !575, !srcloc !576
  store i64 %17, ptr %tcp_ptr__22, align 8, !dbg !575
  %18 = load i64, ptr %tcp_ptr__22, align 8, !dbg !575
  %19 = inttoptr i64 %18 to ptr, !dbg !575
  store ptr %19, ptr %tmp23, align 8, !dbg !575
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__22) #13, !dbg !573
  %20 = load ptr, ptr %tmp23, align 8, !dbg !575
  store ptr %20, ptr %tmp21, align 8, !dbg !574
  %21 = load ptr, ptr %tmp21, align 8, !dbg !573
  call void @local_lock_release(ptr noundef %21) #14, !dbg !577
  br label %do.body24, !dbg !577

do.body24:                                        ; preds = %do.end20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !578, !srcloc !580
  %call = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !581
  %lnot = xor i1 %call, true, !dbg !581
  %lnot25 = xor i1 %lnot, true, !dbg !581
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !581
  %conv = sext i32 %lnot.ext to i64, !dbg !581
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !581
  %tobool = icmp ne i64 %expval, 0, !dbg !581
  br i1 %tobool, label %if.then, label %if.end, !dbg !578

if.then:                                          ; preds = %do.body24
  br label %do.body26, !dbg !581

do.body26:                                        ; preds = %if.then
  %22 = call i64 @llvm.read_register.i64(metadata !444), !dbg !583
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #13, !dbg !583, !srcloc !585
  call void @llvm.write_register.i64(metadata !444, i64 %23), !dbg !583
  br label %do.cond27, !dbg !583

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !583

do.end28:                                         ; preds = %do.cond27
  br label %if.end, !dbg !583

if.end:                                           ; preds = %do.end28, %do.body24
  br label %do.cond29, !dbg !578

do.cond29:                                        ; preds = %if.end
  br label %do.end30, !dbg !578

do.end30:                                         ; preds = %do.cond29
  br label %do.cond31, !dbg !577

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !577

do.end32:                                         ; preds = %do.cond31
  %24 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !586
  %25 = load i32, ptr %gfp_mask.addr, align 4, !dbg !587
  %call33 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %24, i32 noundef %25) #14, !dbg !588
  store ptr %call33, ptr %node, align 8, !dbg !589
  %26 = load ptr, ptr %node, align 8, !dbg !590
  %cmp34 = icmp eq ptr %26, null, !dbg !592
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !593

if.then36:                                        ; preds = %do.end32
  br label %out, !dbg !594

if.end37:                                         ; preds = %do.end32
  br label %do.body38, !dbg !595

do.body38:                                        ; preds = %if.end37
  br label %do.body39, !dbg !596

do.body39:                                        ; preds = %do.body38
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !597
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !597, !srcloc !599
  br label %do.cond40, !dbg !597

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !597

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !600

do.body42:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify43) #13, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify43, metadata !431, metadata !DIExpression()), !dbg !601
  store ptr null, ptr %__vpp_verify43, align 8, !dbg !601
  %27 = load ptr, ptr %__vpp_verify43, align 8, !dbg !601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify43) #13, !dbg !600
  br label %do.cond44, !dbg !601

do.cond44:                                        ; preds = %do.body42
  br label %do.end45, !dbg !601

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__47) #13, !dbg !602
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__47, metadata !436, metadata !DIExpression()), !dbg !602
  %28 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !602, !srcloc !603
  store i64 %28, ptr %tcp_ptr__47, align 8, !dbg !602
  %29 = load i64, ptr %tcp_ptr__47, align 8, !dbg !602
  %30 = inttoptr i64 %29 to ptr, !dbg !602
  store ptr %30, ptr %tmp48, align 8, !dbg !602
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__47) #13, !dbg !600
  %31 = load ptr, ptr %tmp48, align 8, !dbg !602
  store ptr %31, ptr %tmp46, align 8, !dbg !601
  %32 = load ptr, ptr %tmp46, align 8, !dbg !600
  call void @local_lock_acquire(ptr noundef %32) #14, !dbg !596
  br label %do.cond49, !dbg !596

do.cond49:                                        ; preds = %do.end45
  br label %do.end50, !dbg !596

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !604

do.body51:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify52) #13, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify52, metadata !438, metadata !DIExpression()), !dbg !605
  store ptr null, ptr %__vpp_verify52, align 8, !dbg !605
  %33 = load ptr, ptr %__vpp_verify52, align 8, !dbg !605
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify52) #13, !dbg !604
  br label %do.cond53, !dbg !605

do.cond53:                                        ; preds = %do.body51
  br label %do.end54, !dbg !605

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__56) #13, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__56, metadata !441, metadata !DIExpression()), !dbg !606
  %34 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !606, !srcloc !607
  store i64 %34, ptr %tcp_ptr__56, align 8, !dbg !606
  %35 = load i64, ptr %tcp_ptr__56, align 8, !dbg !606
  %36 = inttoptr i64 %35 to ptr, !dbg !606
  store ptr %36, ptr %tmp57, align 8, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__56) #13, !dbg !604
  %37 = load ptr, ptr %tmp57, align 8, !dbg !606
  store ptr %37, ptr %tmp55, align 8, !dbg !605
  %38 = load ptr, ptr %tmp55, align 8, !dbg !604
  store ptr %38, ptr %rtp, align 8, !dbg !608
  %39 = load ptr, ptr %rtp, align 8, !dbg !609
  %nr58 = getelementptr inbounds %struct.radix_tree_preload, ptr %39, i32 0, i32 1, !dbg !611
  %40 = load i32, ptr %nr58, align 8, !dbg !611
  %41 = load i32, ptr %nr.addr, align 4, !dbg !612
  %cmp59 = icmp ult i32 %40, %41, !dbg !613
  br i1 %cmp59, label %if.then61, label %if.else, !dbg !614

if.then61:                                        ; preds = %do.end54
  %42 = load ptr, ptr %rtp, align 8, !dbg !615
  %nodes = getelementptr inbounds %struct.radix_tree_preload, ptr %42, i32 0, i32 2, !dbg !617
  %43 = load ptr, ptr %nodes, align 8, !dbg !617
  %44 = load ptr, ptr %node, align 8, !dbg !618
  %parent = getelementptr inbounds %struct.xa_node, ptr %44, i32 0, i32 4, !dbg !619
  store ptr %43, ptr %parent, align 8, !dbg !620
  %45 = load ptr, ptr %node, align 8, !dbg !621
  %46 = load ptr, ptr %rtp, align 8, !dbg !622
  %nodes62 = getelementptr inbounds %struct.radix_tree_preload, ptr %46, i32 0, i32 2, !dbg !623
  store ptr %45, ptr %nodes62, align 8, !dbg !624
  %47 = load ptr, ptr %rtp, align 8, !dbg !625
  %nr63 = getelementptr inbounds %struct.radix_tree_preload, ptr %47, i32 0, i32 1, !dbg !626
  %48 = load i32, ptr %nr63, align 8, !dbg !627
  %inc = add i32 %48, 1, !dbg !627
  store i32 %inc, ptr %nr63, align 8, !dbg !627
  br label %if.end64, !dbg !628

if.else:                                          ; preds = %do.end54
  %49 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !629
  %50 = load ptr, ptr %node, align 8, !dbg !631
  call void @kmem_cache_free(ptr noundef %49, ptr noundef %50) #14, !dbg !632
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then61
  br label %while.cond, !dbg !567, !llvm.loop !633

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %ret, align 4, !dbg !637
  br label %out, !dbg !638

out:                                              ; preds = %while.end, %if.then36
  call void @llvm.dbg.label(metadata !443), !dbg !639
  %51 = load i32, ptr %ret, align 4, !dbg !640
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !641
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !641
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtp) #13, !dbg !641
  ret i32 %51, !dbg !642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_maybe_preload(i32 noundef %gfp_mask) #0 align 16 !dbg !643 {
entry:
  %retval = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !645, metadata !DIExpression()), !dbg !652
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !653
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %0) #14, !dbg !655
  br i1 %call, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %gfp_mask.addr, align 4, !dbg !657
  %call1 = call i32 @__radix_tree_preload(i32 noundef %1, i32 noundef 21) #14, !dbg !658
  store i32 %call1, ptr %retval, align 4, !dbg !659
  br label %return, !dbg !659

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !660

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !661

do.body2:                                         ; preds = %do.body
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !662
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !662, !srcloc !664
  br label %do.end, !dbg !662

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !665

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !646, metadata !DIExpression()), !dbg !666
  store ptr null, ptr %__vpp_verify, align 8, !dbg !666
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !665
  br label %do.end4, !dbg !666

do.end4:                                          ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !650, metadata !DIExpression()), !dbg !667
  %3 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !667, !srcloc !668
  store i64 %3, ptr %tcp_ptr__, align 8, !dbg !667
  %4 = load i64, ptr %tcp_ptr__, align 8, !dbg !667
  %5 = inttoptr i64 %4 to ptr, !dbg !667
  store ptr %5, ptr %tmp5, align 8, !dbg !667
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !665
  %6 = load ptr, ptr %tmp5, align 8, !dbg !667
  store ptr %6, ptr %tmp, align 8, !dbg !666
  %7 = load ptr, ptr %tmp, align 8, !dbg !665
  call void @local_lock_acquire(ptr noundef %7) #14, !dbg !661
  br label %do.end6, !dbg !661

do.end6:                                          ; preds = %do.end4
  store i32 0, ptr %retval, align 4, !dbg !669
  br label %return, !dbg !669

return:                                           ; preds = %do.end6, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !670
  ret i32 %8, !dbg !670
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !671 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !676, metadata !DIExpression()), !dbg !684
  br label %do.body, !dbg !685

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !677, metadata !DIExpression()), !dbg !686
  %0 = load i32, ptr %val.addr, align 4, !dbg !686
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !686
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !686

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !686
  %cmp = icmp eq i32 %2, 1, !dbg !686
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !686

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !686
  %cmp1 = icmp eq i32 %3, -1, !dbg !686
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !686

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !686
  br label %cond.end, !dbg !686

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !686
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !686
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !687
  %cmp2 = icmp eq i32 %5, 1, !dbg !687
  br i1 %cmp2, label %if.then, label %if.else, !dbg !686

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !688, !srcloc !690
  br label %if.end8, !dbg !687

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !691
  %cmp3 = icmp eq i32 %6, -1, !dbg !691
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !687

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !692, !srcloc !694
  br label %if.end, !dbg !691

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !691

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !680, metadata !DIExpression()), !dbg !695
  %7 = load i32, ptr %val.addr, align 4, !dbg !695
  %conv = sext i32 %7 to i64, !dbg !695
  %and = and i64 %conv, 4294967295, !dbg !695
  %conv7 = trunc i64 %and to i32, !dbg !695
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !695
  %8 = load i32, ptr %pto_val__, align 4, !dbg !695
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !695, !srcloc !696
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !691
  br label %do.cond, !dbg !695

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !695

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !685
  br label %do.end10, !dbg !686

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_lock_acquire(ptr noundef %l) #4 align 16 !dbg !698 {
entry:
  %l.addr = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !702, metadata !DIExpression()), !dbg !703
  ret void, !dbg !704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_insert(ptr noundef %root, i64 noundef %index, ptr noundef %item) #0 align 16 !dbg !705 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %item.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %offset = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !709, metadata !DIExpression()), !dbg !718
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !710, metadata !DIExpression()), !dbg !719
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !711, metadata !DIExpression()), !dbg !720
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %node, metadata !712, metadata !DIExpression()), !dbg !722
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !713, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %error, metadata !714, metadata !DIExpression()), !dbg !726
  br label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8, !dbg !728
  %call = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %0) #14, !dbg !728
  %lnot = xor i1 %call, true, !dbg !728
  %lnot1 = xor i1 %lnot, true, !dbg !728
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !728
  %conv = sext i32 %lnot.ext to i64, !dbg !728
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !728
  %tobool = icmp ne i64 %expval, 0, !dbg !728
  br i1 %tobool, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !728

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !732

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !734

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !734

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !732

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 710, i32 0, i64 12) #13, !dbg !736, !srcloc !738
  br label %do.cond5, !dbg !736

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !736

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !732

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !732

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !732

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !731

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !731

do.end10:                                         ; preds = %do.cond9
  %1 = load ptr, ptr %root.addr, align 8, !dbg !739
  %2 = load i64, ptr %index.addr, align 8, !dbg !740
  %call11 = call i32 @__radix_tree_create(ptr noundef %1, i64 noundef %2, ptr noundef %node, ptr noundef %slot) #14, !dbg !741
  store i32 %call11, ptr %error, align 4, !dbg !742
  %3 = load i32, ptr %error, align 4, !dbg !743
  %tobool12 = icmp ne i32 %3, 0, !dbg !743
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !745

if.then13:                                        ; preds = %do.end10
  %4 = load i32, ptr %error, align 4, !dbg !746
  store i32 %4, ptr %retval, align 4, !dbg !747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !747

if.end14:                                         ; preds = %do.end10
  %5 = load ptr, ptr %node, align 8, !dbg !748
  %6 = load ptr, ptr %slot, align 8, !dbg !749
  %7 = load ptr, ptr %item.addr, align 8, !dbg !750
  %call15 = call i32 @insert_entries(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14, !dbg !751
  store i32 %call15, ptr %error, align 4, !dbg !752
  %8 = load i32, ptr %error, align 4, !dbg !753
  %cmp = icmp slt i32 %8, 0, !dbg !755
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !756

if.then17:                                        ; preds = %if.end14
  %9 = load i32, ptr %error, align 4, !dbg !757
  store i32 %9, ptr %retval, align 4, !dbg !758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !758

if.end18:                                         ; preds = %if.end14
  %10 = load ptr, ptr %node, align 8, !dbg !759
  %tobool19 = icmp ne ptr %10, null, !dbg !759
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !760

if.then20:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !715, metadata !DIExpression()), !dbg !762
  %11 = load ptr, ptr %node, align 8, !dbg !763
  %12 = load ptr, ptr %slot, align 8, !dbg !764
  %call21 = call i64 @get_slot_offset(ptr noundef %11, ptr noundef %12) #14, !dbg !765
  %conv22 = trunc i64 %call21 to i32, !dbg !765
  store i32 %conv22, ptr %offset, align 4, !dbg !762
  br label %do.body23, !dbg !766

do.body23:                                        ; preds = %if.then20
  %13 = load ptr, ptr %node, align 8, !dbg !767
  %14 = load i32, ptr %offset, align 4, !dbg !767
  %call24 = call i32 @tag_get(ptr noundef %13, i32 noundef 0, i32 noundef %14) #14, !dbg !767
  %tobool25 = icmp ne i32 %call24, 0, !dbg !767
  %lnot26 = xor i1 %tobool25, true, !dbg !767
  %lnot28 = xor i1 %lnot26, true, !dbg !767
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !767
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !767
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !767
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !767
  br i1 %tobool32, label %if.then33, label %if.end43, !dbg !770

if.then33:                                        ; preds = %do.body23
  br label %do.body34, !dbg !767

do.body34:                                        ; preds = %if.then33
  br label %do.body35, !dbg !771

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !773

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !773

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !771

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 722, i32 0, i64 12) #13, !dbg !775, !srcloc !777
  br label %do.cond39, !dbg !775

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !775

do.end40:                                         ; preds = %do.cond39
  unreachable, !dbg !771

do.cond41:                                        ; No predecessors!
  br label %do.end42, !dbg !771

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !771

if.end43:                                         ; preds = %do.end42, %do.body23
  br label %do.cond44, !dbg !770

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !770

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !778

do.body46:                                        ; preds = %do.end45
  %15 = load ptr, ptr %node, align 8, !dbg !779
  %16 = load i32, ptr %offset, align 4, !dbg !779
  %call47 = call i32 @tag_get(ptr noundef %15, i32 noundef 1, i32 noundef %16) #14, !dbg !779
  %tobool48 = icmp ne i32 %call47, 0, !dbg !779
  %lnot49 = xor i1 %tobool48, true, !dbg !779
  %lnot51 = xor i1 %lnot49, true, !dbg !779
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !779
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !779
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !779
  %tobool55 = icmp ne i64 %expval54, 0, !dbg !779
  br i1 %tobool55, label %if.then56, label %if.end66, !dbg !782

if.then56:                                        ; preds = %do.body46
  br label %do.body57, !dbg !779

do.body57:                                        ; preds = %if.then56
  br label %do.body58, !dbg !783

do.body58:                                        ; preds = %do.body57
  br label %do.cond59, !dbg !785

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !785

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !783

do.body61:                                        ; preds = %do.end60
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 723, i32 0, i64 12) #13, !dbg !787, !srcloc !789
  br label %do.cond62, !dbg !787

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !787

do.end63:                                         ; preds = %do.cond62
  unreachable, !dbg !783

do.cond64:                                        ; No predecessors!
  br label %do.end65, !dbg !783

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !783

if.end66:                                         ; preds = %do.end65, %do.body46
  br label %do.cond67, !dbg !782

do.cond67:                                        ; preds = %if.end66
  br label %do.end68, !dbg !782

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !790

do.body69:                                        ; preds = %do.end68
  %17 = load ptr, ptr %node, align 8, !dbg !791
  %18 = load i32, ptr %offset, align 4, !dbg !791
  %call70 = call i32 @tag_get(ptr noundef %17, i32 noundef 2, i32 noundef %18) #14, !dbg !791
  %tobool71 = icmp ne i32 %call70, 0, !dbg !791
  %lnot72 = xor i1 %tobool71, true, !dbg !791
  %lnot74 = xor i1 %lnot72, true, !dbg !791
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !791
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !791
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0), !dbg !791
  %tobool78 = icmp ne i64 %expval77, 0, !dbg !791
  br i1 %tobool78, label %if.then79, label %if.end89, !dbg !794

if.then79:                                        ; preds = %do.body69
  br label %do.body80, !dbg !791

do.body80:                                        ; preds = %if.then79
  br label %do.body81, !dbg !795

do.body81:                                        ; preds = %do.body80
  br label %do.cond82, !dbg !797

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !797

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !795

do.body84:                                        ; preds = %do.end83
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 724, i32 0, i64 12) #13, !dbg !799, !srcloc !801
  br label %do.cond85, !dbg !799

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !799

do.end86:                                         ; preds = %do.cond85
  unreachable, !dbg !795

do.cond87:                                        ; No predecessors!
  br label %do.end88, !dbg !795

do.end88:                                         ; preds = %do.cond87
  br label %if.end89, !dbg !795

if.end89:                                         ; preds = %do.end88, %do.body69
  br label %do.cond90, !dbg !794

do.cond90:                                        ; preds = %if.end89
  br label %do.end91, !dbg !794

do.end91:                                         ; preds = %do.cond90
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !802
  br label %if.end115, !dbg !803

if.else:                                          ; preds = %if.end18
  br label %do.body92, !dbg !804

do.body92:                                        ; preds = %if.else
  %19 = load ptr, ptr %root.addr, align 8, !dbg !806
  %call93 = call i32 @root_tags_get(ptr noundef %19) #14, !dbg !806
  %tobool94 = icmp ne i32 %call93, 0, !dbg !806
  %lnot95 = xor i1 %tobool94, true, !dbg !806
  %lnot97 = xor i1 %lnot95, true, !dbg !806
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !806
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !806
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 0), !dbg !806
  %tobool101 = icmp ne i64 %expval100, 0, !dbg !806
  br i1 %tobool101, label %if.then102, label %if.end112, !dbg !809

if.then102:                                       ; preds = %do.body92
  br label %do.body103, !dbg !806

do.body103:                                       ; preds = %if.then102
  br label %do.body104, !dbg !810

do.body104:                                       ; preds = %do.body103
  br label %do.cond105, !dbg !812

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !812

do.end106:                                        ; preds = %do.cond105
  br label %do.body107, !dbg !810

do.body107:                                       ; preds = %do.end106
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 726, i32 0, i64 12) #13, !dbg !814, !srcloc !816
  br label %do.cond108, !dbg !814

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !814

do.end109:                                        ; preds = %do.cond108
  unreachable, !dbg !810

do.cond110:                                       ; No predecessors!
  br label %do.end111, !dbg !810

do.end111:                                        ; preds = %do.cond110
  br label %if.end112, !dbg !810

if.end112:                                        ; preds = %do.end111, %do.body92
  br label %do.cond113, !dbg !809

do.cond113:                                       ; preds = %if.end112
  br label %do.end114, !dbg !809

do.end114:                                        ; preds = %do.cond113
  br label %if.end115

if.end115:                                        ; preds = %do.end114, %do.end91
  store i32 0, ptr %retval, align 4, !dbg !817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !817

cleanup:                                          ; preds = %if.end115, %if.then17, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !818
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !818
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !818
  %20 = load i32, ptr %retval, align 4, !dbg !818
  ret i32 %20, !dbg !818
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @radix_tree_is_internal_node(ptr noundef %ptr) #4 align 16 !dbg !819 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !823, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !825
  %1 = ptrtoint ptr %0 to i64, !dbg !826
  %and = and i64 %1, 3, !dbg !827
  %cmp = icmp eq i64 %and, 2, !dbg !828
  ret i1 %cmp, !dbg !829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__radix_tree_create(ptr noundef %root, i64 noundef %index, ptr noundef %nodep, ptr noundef %slotp) #0 align 16 !dbg !830 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %nodep.addr = alloca ptr, align 8
  %slotp.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %child = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %shift = alloca i32, align 4
  %offset = alloca i32, align 4
  %max = alloca i64, align 8
  %gfp = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu224 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !836, metadata !DIExpression()), !dbg !858
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !837, metadata !DIExpression()), !dbg !859
  store ptr %nodep, ptr %nodep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !838, metadata !DIExpression()), !dbg !860
  store ptr %slotp, ptr %slotp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slotp.addr, metadata !839, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %node, metadata !840, metadata !DIExpression()), !dbg !863
  store ptr null, ptr %node, align 8, !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %child, metadata !841, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !842, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %root.addr, align 8, !dbg !867
  %xa_head = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2, !dbg !868
  store ptr %xa_head, ptr %slot, align 8, !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !843, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #13, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !844, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !845, metadata !DIExpression()), !dbg !873
  store i32 0, ptr %offset, align 4, !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #13, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %max, metadata !846, metadata !DIExpression()), !dbg !875
  %1 = load i64, ptr %index.addr, align 8, !dbg !876
  store i64 %1, ptr %max, align 8, !dbg !875
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #13, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !847, metadata !DIExpression()), !dbg !878
  %2 = load ptr, ptr %root.addr, align 8, !dbg !879
  %call = call i32 @root_gfp_mask(ptr noundef %2) #14, !dbg !880
  store i32 %call, ptr %gfp, align 4, !dbg !878
  %3 = load ptr, ptr %root.addr, align 8, !dbg !881
  %call1 = call i32 @radix_tree_load_root(ptr noundef %3, ptr noundef %child, ptr noundef %maxindex) #14, !dbg !882
  store i32 %call1, ptr %shift, align 4, !dbg !883
  %4 = load i64, ptr %max, align 8, !dbg !884
  %5 = load i64, ptr %maxindex, align 8, !dbg !885
  %cmp = icmp ugt i64 %4, %5, !dbg !886
  br i1 %cmp, label %if.then, label %if.end7, !dbg !887

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %error, metadata !848, metadata !DIExpression()), !dbg !889
  %6 = load ptr, ptr %root.addr, align 8, !dbg !890
  %7 = load i32, ptr %gfp, align 4, !dbg !891
  %8 = load i64, ptr %max, align 8, !dbg !892
  %9 = load i32, ptr %shift, align 4, !dbg !893
  %call2 = call i32 @radix_tree_extend(ptr noundef %6, i32 noundef %7, i64 noundef %8, i32 noundef %9) #14, !dbg !894
  store i32 %call2, ptr %error, align 4, !dbg !889
  %10 = load i32, ptr %error, align 4, !dbg !895
  %cmp3 = icmp slt i32 %10, 0, !dbg !897
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !898

if.then4:                                         ; preds = %if.then
  %11 = load i32, ptr %error, align 4, !dbg !899
  store i32 %11, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

if.end:                                           ; preds = %if.then
  %12 = load i32, ptr %error, align 4, !dbg !901
  store i32 %12, ptr %shift, align 4, !dbg !902
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu224) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu224, metadata !851, metadata !DIExpression()), !dbg !903
  br label %do.body, !dbg !904

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !906

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !906

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %root.addr, align 8, !dbg !904
  %xa_head5 = getelementptr inbounds %struct.xarray, ptr %13, i32 0, i32 2, !dbg !904
  %14 = load volatile ptr, ptr %xa_head5, align 8, !dbg !904
  store ptr %14, ptr %tmp, align 8, !dbg !906
  %15 = load ptr, ptr %tmp, align 8, !dbg !904
  store ptr %15, ptr %__UNIQUE_ID_rcu224, align 8, !dbg !903
  %16 = load ptr, ptr %__UNIQUE_ID_rcu224, align 8, !dbg !903
  store ptr %16, ptr %tmp6, align 8, !dbg !903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu224) #13, !dbg !908
  %17 = load ptr, ptr %tmp6, align 8, !dbg !903
  store ptr %17, ptr %child, align 8, !dbg !909
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !910
  br label %cleanup, !dbg !910

cleanup:                                          ; preds = %do.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !910
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !911

if.end7:                                          ; preds = %cleanup.cont, %entry
  br label %while.cond, !dbg !912

while.cond:                                       ; preds = %if.end45, %if.end7
  %18 = load i32, ptr %shift, align 4, !dbg !913
  %cmp8 = icmp ugt i32 %18, 0, !dbg !914
  br i1 %cmp8, label %while.body, label %while.end, !dbg !912

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %shift, align 4, !dbg !915
  %sub = sub i32 %19, 6, !dbg !915
  store i32 %sub, ptr %shift, align 4, !dbg !915
  %20 = load ptr, ptr %child, align 8, !dbg !916
  %cmp9 = icmp eq ptr %20, null, !dbg !917
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !918

if.then10:                                        ; preds = %while.body
  %21 = load i32, ptr %gfp, align 4, !dbg !919
  %22 = load ptr, ptr %node, align 8, !dbg !920
  %23 = load ptr, ptr %root.addr, align 8, !dbg !921
  %24 = load i32, ptr %shift, align 4, !dbg !922
  %25 = load i32, ptr %offset, align 4, !dbg !923
  %call11 = call ptr @radix_tree_node_alloc(i32 noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef 0, i32 noundef 0) #14, !dbg !924
  store ptr %call11, ptr %child, align 8, !dbg !925
  %26 = load ptr, ptr %child, align 8, !dbg !926
  %tobool = icmp ne ptr %26, null, !dbg !926
  br i1 %tobool, label %if.end13, label %if.then12, !dbg !928

if.then12:                                        ; preds = %if.then10
  store i32 -12, ptr %retval, align 4, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !929

if.end13:                                         ; preds = %if.then10
  br label %do.body14, !dbg !930

do.body14:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !853, metadata !DIExpression()), !dbg !931
  %27 = load ptr, ptr %child, align 8, !dbg !931
  %call15 = call ptr @node_to_entry(ptr noundef %27) #14, !dbg !931
  %28 = ptrtoint ptr %call15 to i64, !dbg !931
  store i64 %28, ptr %_r_a_p__v, align 8, !dbg !931
  br label %do.body16, !dbg !932

do.body16:                                        ; preds = %do.body14
  br label %do.body17, !dbg !934

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !936

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !936

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !934

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !938

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !940

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !940

do.end23:                                         ; preds = %do.cond22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !938, !srcloc !942
  br label %do.body24, !dbg !938

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !943

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !945

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !945

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !943

do.body28:                                        ; preds = %do.end27
  %29 = load i64, ptr %_r_a_p__v, align 8, !dbg !947
  %30 = inttoptr i64 %29 to ptr, !dbg !947
  %31 = load ptr, ptr %slot, align 8, !dbg !947
  store volatile ptr %30, ptr %31, align 8, !dbg !947
  br label %do.cond29, !dbg !947

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !947

do.end30:                                         ; preds = %do.cond29
  br label %do.cond31, !dbg !943

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !943

do.end32:                                         ; preds = %do.cond31
  br label %do.cond33, !dbg !938

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !938

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !934

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !934

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !930
  br label %do.cond37, !dbg !931

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !931

do.end38:                                         ; preds = %do.cond37
  %32 = load ptr, ptr %node, align 8, !dbg !949
  %tobool39 = icmp ne ptr %32, null, !dbg !949
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !951

if.then40:                                        ; preds = %do.end38
  %33 = load ptr, ptr %node, align 8, !dbg !952
  %count = getelementptr inbounds %struct.xa_node, ptr %33, i32 0, i32 2, !dbg !953
  %34 = load i8, ptr %count, align 2, !dbg !954
  %inc = add i8 %34, 1, !dbg !954
  store i8 %inc, ptr %count, align 2, !dbg !954
  br label %if.end41, !dbg !952

if.end41:                                         ; preds = %if.then40, %do.end38
  br label %if.end45, !dbg !955

if.else:                                          ; preds = %while.body
  %35 = load ptr, ptr %child, align 8, !dbg !956
  %call42 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %35) #14, !dbg !958
  br i1 %call42, label %if.end44, label %if.then43, !dbg !959

if.then43:                                        ; preds = %if.else
  br label %while.end, !dbg !960

if.end44:                                         ; preds = %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end41
  %36 = load ptr, ptr %child, align 8, !dbg !961
  %call46 = call ptr @entry_to_node(ptr noundef %36) #14, !dbg !962
  store ptr %call46, ptr %node, align 8, !dbg !963
  %37 = load ptr, ptr %node, align 8, !dbg !964
  %38 = load i64, ptr %index.addr, align 8, !dbg !965
  %call47 = call i32 @radix_tree_descend(ptr noundef %37, ptr noundef %child, i64 noundef %38) #14, !dbg !966
  store i32 %call47, ptr %offset, align 4, !dbg !967
  %39 = load ptr, ptr %node, align 8, !dbg !968
  %slots = getelementptr inbounds %struct.xa_node, ptr %39, i32 0, i32 7, !dbg !969
  %40 = load i32, ptr %offset, align 4, !dbg !970
  %idxprom = zext i32 %40 to i64, !dbg !968
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !968
  store ptr %arrayidx, ptr %slot, align 8, !dbg !971
  br label %while.cond, !dbg !912, !llvm.loop !972

while.end:                                        ; preds = %if.then43, %while.cond
  %41 = load ptr, ptr %nodep.addr, align 8, !dbg !974
  %tobool48 = icmp ne ptr %41, null, !dbg !974
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !976

if.then49:                                        ; preds = %while.end
  %42 = load ptr, ptr %node, align 8, !dbg !977
  %43 = load ptr, ptr %nodep.addr, align 8, !dbg !978
  store ptr %42, ptr %43, align 8, !dbg !979
  br label %if.end50, !dbg !980

if.end50:                                         ; preds = %if.then49, %while.end
  %44 = load ptr, ptr %slotp.addr, align 8, !dbg !981
  %tobool51 = icmp ne ptr %44, null, !dbg !981
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !983

if.then52:                                        ; preds = %if.end50
  %45 = load ptr, ptr %slot, align 8, !dbg !984
  %46 = load ptr, ptr %slotp.addr, align 8, !dbg !985
  store ptr %45, ptr %46, align 8, !dbg !986
  br label %if.end53, !dbg !987

if.end53:                                         ; preds = %if.then52, %if.end50
  store i32 0, ptr %retval, align 4, !dbg !988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !988

cleanup54:                                        ; preds = %if.end53, %if.then12, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !989
  %47 = load i32, ptr %retval, align 4, !dbg !989
  ret i32 %47, !dbg !989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insert_entries(ptr noundef %node, ptr noundef %slot, ptr noundef %item) #4 align 16 !dbg !990 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !994, metadata !DIExpression()), !dbg !999
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !995, metadata !DIExpression()), !dbg !1000
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !996, metadata !DIExpression()), !dbg !1001
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !1002
  %1 = load ptr, ptr %0, align 8, !dbg !1004
  %tobool = icmp ne ptr %1, null, !dbg !1004
  br i1 %tobool, label %if.then, label %if.end, !dbg !1005

if.then:                                          ; preds = %entry
  store i32 -17, ptr %retval, align 4, !dbg !1006
  br label %return, !dbg !1006

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1007

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !997, metadata !DIExpression()), !dbg !1008
  %2 = load ptr, ptr %item.addr, align 8, !dbg !1008
  %3 = ptrtoint ptr %2 to i64, !dbg !1008
  store i64 %3, ptr %_r_a_p__v, align 8, !dbg !1008
  br i1 false, label %land.lhs.true, label %if.else, !dbg !1009

land.lhs.true:                                    ; preds = %do.body
  %4 = load i64, ptr %_r_a_p__v, align 8, !dbg !1009
  %cmp = icmp eq i64 %4, 0, !dbg !1009
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1008

if.then1:                                         ; preds = %land.lhs.true
  br label %do.body2, !dbg !1009

do.body2:                                         ; preds = %if.then1
  br label %do.body3, !dbg !1011

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !1013

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1013

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !1011

do.body4:                                         ; preds = %do.end
  %5 = load i64, ptr %_r_a_p__v, align 8, !dbg !1015
  %6 = inttoptr i64 %5 to ptr, !dbg !1015
  %7 = load ptr, ptr %slot.addr, align 8, !dbg !1015
  store volatile ptr %6, ptr %7, align 8, !dbg !1015
  br label %do.cond5, !dbg !1015

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1015

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !1011

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1011

do.end8:                                          ; preds = %do.cond7
  br label %if.end30, !dbg !1011

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body9, !dbg !1009

do.body9:                                         ; preds = %if.else
  br label %do.body10, !dbg !1017

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !1019

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1019

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1017

do.body13:                                        ; preds = %do.end12
  br label %do.body14, !dbg !1021

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !1023

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1023

do.end16:                                         ; preds = %do.cond15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1021, !srcloc !1025
  br label %do.body17, !dbg !1021

do.body17:                                        ; preds = %do.end16
  br label %do.body18, !dbg !1026

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !1028

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1028

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !1026

do.body21:                                        ; preds = %do.end20
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !1030
  %9 = inttoptr i64 %8 to ptr, !dbg !1030
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !1030
  store volatile ptr %9, ptr %10, align 8, !dbg !1030
  br label %do.cond22, !dbg !1030

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1030

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !1026

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !1026

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !1021

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !1021

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !1017

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1017

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !1007
  br label %do.end32, !dbg !1008

do.end32:                                         ; preds = %if.end30
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1032
  %tobool33 = icmp ne ptr %11, null, !dbg !1032
  br i1 %tobool33, label %if.then34, label %if.end38, !dbg !1034

if.then34:                                        ; preds = %do.end32
  %12 = load ptr, ptr %node.addr, align 8, !dbg !1035
  %count = getelementptr inbounds %struct.xa_node, ptr %12, i32 0, i32 2, !dbg !1037
  %13 = load i8, ptr %count, align 2, !dbg !1038
  %inc = add i8 %13, 1, !dbg !1038
  store i8 %inc, ptr %count, align 2, !dbg !1038
  %14 = load ptr, ptr %item.addr, align 8, !dbg !1039
  %call = call zeroext i1 @xa_is_value(ptr noundef %14) #14, !dbg !1041
  br i1 %call, label %if.then35, label %if.end37, !dbg !1042

if.then35:                                        ; preds = %if.then34
  %15 = load ptr, ptr %node.addr, align 8, !dbg !1043
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %15, i32 0, i32 3, !dbg !1044
  %16 = load i8, ptr %nr_values, align 1, !dbg !1045
  %inc36 = add i8 %16, 1, !dbg !1045
  store i8 %inc36, ptr %nr_values, align 1, !dbg !1045
  br label %if.end37, !dbg !1043

if.end37:                                         ; preds = %if.then35, %if.then34
  br label %if.end38, !dbg !1046

if.end38:                                         ; preds = %if.end37, %do.end32
  store i32 1, ptr %retval, align 4, !dbg !1047
  br label %return, !dbg !1047

return:                                           ; preds = %if.end38, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !1048
  ret i32 %17, !dbg !1048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_slot_offset(ptr noundef %parent, ptr noundef %slot) #4 align 16 !dbg !1049 {
entry:
  %parent.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1055, metadata !DIExpression()), !dbg !1057
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1056, metadata !DIExpression()), !dbg !1058
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1059
  %tobool = icmp ne ptr %0, null, !dbg !1059
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1059

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %slot.addr, align 8, !dbg !1060
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !1061
  %slots = getelementptr inbounds %struct.xa_node, ptr %2, i32 0, i32 7, !dbg !1062
  %arraydecay = getelementptr inbounds [64 x ptr], ptr %slots, i64 0, i64 0, !dbg !1061
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !1063
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay to i64, !dbg !1063
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1063
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1063
  br label %cond.end, !dbg !1059

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1059

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.div, %cond.true ], [ 0, %cond.false ], !dbg !1059
  ret i64 %cond, !dbg !1064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tag_get(ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #4 align 16 !dbg !1065 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1069, metadata !DIExpression()), !dbg !1072
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1070, metadata !DIExpression()), !dbg !1073
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1071, metadata !DIExpression()), !dbg !1074
  %0 = load i32, ptr %offset.addr, align 4, !dbg !1075
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1075
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1075

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1075
  %3 = getelementptr inbounds %struct.xa_node, ptr %2, i32 0, i32 8, !dbg !1075
  %4 = load i32, ptr %tag.addr, align 4, !dbg !1075
  %idxprom = zext i32 %4 to i64, !dbg !1075
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %3, i64 0, i64 %idxprom, !dbg !1075
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !1075
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !1075
  %cmp = icmp ne i64 %5, 0, !dbg !1075
  %conv = zext i1 %cmp to i32, !dbg !1075
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1075
  br i1 %6, label %land.lhs.true1, label %cond.false, !dbg !1075

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1075
  %8 = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 8, !dbg !1075
  %9 = load i32, ptr %tag.addr, align 4, !dbg !1075
  %idxprom2 = zext i32 %9 to i64, !dbg !1075
  %arrayidx3 = getelementptr [3 x [1 x i64]], ptr %8, i64 0, i64 %idxprom2, !dbg !1075
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %arrayidx3, i64 0, i64 0, !dbg !1075
  %10 = ptrtoint ptr %arraydecay4 to i64, !dbg !1075
  %cmp5 = icmp ne i64 %10, 0, !dbg !1075
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !1075

land.lhs.true7:                                   ; preds = %land.lhs.true1
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1075
  %12 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 8, !dbg !1075
  %13 = load i32, ptr %tag.addr, align 4, !dbg !1075
  %idxprom8 = zext i32 %13 to i64, !dbg !1075
  %arrayidx9 = getelementptr [3 x [1 x i64]], ptr %12, i64 0, i64 %idxprom8, !dbg !1075
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %arrayidx9, i64 0, i64 0, !dbg !1075
  %14 = load i64, ptr %arraydecay10, align 8, !dbg !1075
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !1075
  br i1 %15, label %cond.true, label %cond.false, !dbg !1075

cond.true:                                        ; preds = %land.lhs.true7
  %16 = load i32, ptr %offset.addr, align 4, !dbg !1075
  %conv11 = sext i32 %16 to i64, !dbg !1075
  %17 = load ptr, ptr %node.addr, align 8, !dbg !1075
  %18 = getelementptr inbounds %struct.xa_node, ptr %17, i32 0, i32 8, !dbg !1075
  %19 = load i32, ptr %tag.addr, align 4, !dbg !1075
  %idxprom12 = zext i32 %19 to i64, !dbg !1075
  %arrayidx13 = getelementptr [3 x [1 x i64]], ptr %18, i64 0, i64 %idxprom12, !dbg !1075
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %arrayidx13, i64 0, i64 0, !dbg !1075
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %arraydecay14) #14, !dbg !1075
  %conv15 = zext i1 %call to i32, !dbg !1075
  br label %cond.end, !dbg !1075

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true1, %land.lhs.true, %entry
  %20 = load i32, ptr %offset.addr, align 4, !dbg !1075
  %conv16 = sext i32 %20 to i64, !dbg !1075
  %21 = load ptr, ptr %node.addr, align 8, !dbg !1075
  %22 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 8, !dbg !1075
  %23 = load i32, ptr %tag.addr, align 4, !dbg !1075
  %idxprom17 = zext i32 %23 to i64, !dbg !1075
  %arrayidx18 = getelementptr [3 x [1 x i64]], ptr %22, i64 0, i64 %idxprom17, !dbg !1075
  %arraydecay19 = getelementptr inbounds [1 x i64], ptr %arrayidx18, i64 0, i64 0, !dbg !1075
  %call20 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef %arraydecay19) #14, !dbg !1075
  %conv21 = zext i1 %call20 to i32, !dbg !1075
  br label %cond.end, !dbg !1075

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %conv21, %cond.false ], !dbg !1075
  ret i32 %cond, !dbg !1076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @root_tags_get(ptr noundef %root) #4 align 16 !dbg !1077 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1083, metadata !DIExpression()), !dbg !1084
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1085
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1, !dbg !1086
  %1 = load i32, ptr %xa_flags, align 4, !dbg !1086
  %shr = lshr i32 %1, 26, !dbg !1087
  ret i32 %shr, !dbg !1088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__radix_tree_lookup(ptr noundef %root, i64 noundef %index, ptr noundef %nodep, ptr noundef %slotp) #0 align 16 !dbg !1089 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %nodep.addr = alloca ptr, align 8
  %slotp.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %offset = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1093, metadata !DIExpression()), !dbg !1104
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1094, metadata !DIExpression()), !dbg !1105
  store ptr %nodep, ptr %nodep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1095, metadata !DIExpression()), !dbg !1106
  store ptr %slotp, ptr %slotp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slotp.addr, metadata !1096, metadata !DIExpression()), !dbg !1107
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1097, metadata !DIExpression()), !dbg !1109
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1098, metadata !DIExpression()), !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !1099, metadata !DIExpression()), !dbg !1112
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !1100, metadata !DIExpression()), !dbg !1114
  br label %restart, !dbg !1113

restart:                                          ; preds = %cleanup, %entry
  call void @llvm.dbg.label(metadata !1101), !dbg !1115
  store ptr null, ptr %parent, align 8, !dbg !1116
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1117
  %xa_head = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2, !dbg !1118
  store ptr %xa_head, ptr %slot, align 8, !dbg !1119
  %1 = load ptr, ptr %root.addr, align 8, !dbg !1120
  %call = call i32 @radix_tree_load_root(ptr noundef %1, ptr noundef %node, ptr noundef %maxindex) #14, !dbg !1121
  %2 = load i64, ptr %index.addr, align 8, !dbg !1122
  %3 = load i64, ptr %maxindex, align 8, !dbg !1124
  %cmp = icmp ugt i64 %2, %3, !dbg !1125
  br i1 %cmp, label %if.then, label %if.end, !dbg !1126

if.then:                                          ; preds = %restart
  store ptr null, ptr %retval, align 8, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !1127

if.end:                                           ; preds = %restart
  br label %while.cond, !dbg !1128

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %4 = load ptr, ptr %node, align 8, !dbg !1129
  %call1 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %4) #14, !dbg !1130
  br i1 %call1, label %while.body, label %while.end, !dbg !1128

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1102, metadata !DIExpression()), !dbg !1132
  %5 = load ptr, ptr %node, align 8, !dbg !1133
  %call2 = call ptr @entry_to_node(ptr noundef %5) #14, !dbg !1134
  store ptr %call2, ptr %parent, align 8, !dbg !1135
  %6 = load ptr, ptr %parent, align 8, !dbg !1136
  %7 = load i64, ptr %index.addr, align 8, !dbg !1137
  %call3 = call i32 @radix_tree_descend(ptr noundef %6, ptr noundef %node, i64 noundef %7) #14, !dbg !1138
  store i32 %call3, ptr %offset, align 4, !dbg !1139
  %8 = load ptr, ptr %parent, align 8, !dbg !1140
  %slots = getelementptr inbounds %struct.xa_node, ptr %8, i32 0, i32 7, !dbg !1141
  %arraydecay = getelementptr inbounds [64 x ptr], ptr %slots, i64 0, i64 0, !dbg !1140
  %9 = load i32, ptr %offset, align 4, !dbg !1142
  %idx.ext = zext i32 %9 to i64, !dbg !1143
  %add.ptr = getelementptr ptr, ptr %arraydecay, i64 %idx.ext, !dbg !1143
  store ptr %add.ptr, ptr %slot, align 8, !dbg !1144
  %10 = load ptr, ptr %node, align 8, !dbg !1145
  %call4 = call ptr @xa_mk_internal(i64 noundef 256) #14, !dbg !1147
  %cmp5 = icmp eq ptr %10, %call4, !dbg !1148
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1149

if.then6:                                         ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1150

if.end7:                                          ; preds = %while.body
  %11 = load ptr, ptr %parent, align 8, !dbg !1151
  %shift = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 0, !dbg !1153
  %12 = load i8, ptr %shift, align 8, !dbg !1153
  %conv = zext i8 %12 to i32, !dbg !1151
  %cmp8 = icmp eq i32 %conv, 0, !dbg !1154
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1155

if.then10:                                        ; preds = %if.end7
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1156

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1157
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1157
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %restart
    i32 4, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1128, !llvm.loop !1158

while.end:                                        ; preds = %cleanup, %while.cond
  %13 = load ptr, ptr %nodep.addr, align 8, !dbg !1159
  %tobool = icmp ne ptr %13, null, !dbg !1159
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !1161

if.then12:                                        ; preds = %while.end
  %14 = load ptr, ptr %parent, align 8, !dbg !1162
  %15 = load ptr, ptr %nodep.addr, align 8, !dbg !1163
  store ptr %14, ptr %15, align 8, !dbg !1164
  br label %if.end13, !dbg !1165

if.end13:                                         ; preds = %if.then12, %while.end
  %16 = load ptr, ptr %slotp.addr, align 8, !dbg !1166
  %tobool14 = icmp ne ptr %16, null, !dbg !1166
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1168

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %slot, align 8, !dbg !1169
  %18 = load ptr, ptr %slotp.addr, align 8, !dbg !1170
  store ptr %17, ptr %18, align 8, !dbg !1171
  br label %if.end16, !dbg !1172

if.end16:                                         ; preds = %if.then15, %if.end13
  %19 = load ptr, ptr %node, align 8, !dbg !1173
  store ptr %19, ptr %retval, align 8, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !1174

cleanup17:                                        ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1175
  %20 = load ptr, ptr %retval, align 8, !dbg !1175
  ret ptr %20, !dbg !1175

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @radix_tree_load_root(ptr noundef %root, ptr noundef %nodep, ptr noundef %maxindex) #0 align 16 !dbg !1176 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %nodep.addr = alloca ptr, align 8
  %maxindex.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__UNIQUE_ID_rcu211 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1180, metadata !DIExpression()), !dbg !1187
  store ptr %nodep, ptr %nodep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1181, metadata !DIExpression()), !dbg !1188
  store ptr %maxindex, ptr %maxindex.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxindex.addr, metadata !1182, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1183, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #13, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu211, metadata !1184, metadata !DIExpression()), !dbg !1192
  br label %do.body, !dbg !1193

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1195

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1195

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1193
  %xa_head = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2, !dbg !1193
  %1 = load volatile ptr, ptr %xa_head, align 8, !dbg !1193
  store ptr %1, ptr %tmp, align 8, !dbg !1195
  %2 = load ptr, ptr %tmp, align 8, !dbg !1193
  store ptr %2, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !1192
  %3 = load ptr, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !1192
  store ptr %3, ptr %tmp1, align 8, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #13, !dbg !1197
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1192
  store ptr %4, ptr %node, align 8, !dbg !1191
  %5 = load ptr, ptr %node, align 8, !dbg !1198
  %6 = load ptr, ptr %nodep.addr, align 8, !dbg !1199
  store ptr %5, ptr %6, align 8, !dbg !1200
  %7 = load ptr, ptr %node, align 8, !dbg !1201
  %call = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %7) #14, !dbg !1201
  %lnot = xor i1 %call, true, !dbg !1201
  %lnot2 = xor i1 %lnot, true, !dbg !1201
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1201
  %conv = sext i32 %lnot.ext to i64, !dbg !1201
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1201
  %tobool = icmp ne i64 %expval, 0, !dbg !1201
  br i1 %tobool, label %if.then, label %if.end, !dbg !1203

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %node, align 8, !dbg !1204
  %call3 = call ptr @entry_to_node(ptr noundef %8) #14, !dbg !1206
  store ptr %call3, ptr %node, align 8, !dbg !1207
  %9 = load ptr, ptr %node, align 8, !dbg !1208
  %call4 = call i64 @node_maxindex(ptr noundef %9) #14, !dbg !1209
  %10 = load ptr, ptr %maxindex.addr, align 8, !dbg !1210
  store i64 %call4, ptr %10, align 8, !dbg !1211
  %11 = load ptr, ptr %node, align 8, !dbg !1212
  %shift = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 0, !dbg !1213
  %12 = load i8, ptr %shift, align 8, !dbg !1213
  %conv5 = zext i8 %12 to i32, !dbg !1212
  %add = add i32 %conv5, 6, !dbg !1214
  store i32 %add, ptr %retval, align 4, !dbg !1215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1215

if.end:                                           ; preds = %do.end
  %13 = load ptr, ptr %maxindex.addr, align 8, !dbg !1216
  store i64 0, ptr %13, align 8, !dbg !1217
  store i32 0, ptr %retval, align 4, !dbg !1218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1219
  %14 = load i32, ptr %retval, align 4, !dbg !1219
  ret i32 %14, !dbg !1219
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @entry_to_node(ptr noundef %ptr) #4 align 16 !dbg !1220 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1226
  %1 = ptrtoint ptr %0 to i64, !dbg !1227
  %and = and i64 %1, -3, !dbg !1228
  %2 = inttoptr i64 %and to ptr, !dbg !1229
  ret ptr %2, !dbg !1230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @radix_tree_descend(ptr noundef %parent, ptr noundef %nodep, i64 noundef %index) #0 align 16 !dbg !1231 {
entry:
  %parent.addr = alloca ptr, align 8
  %nodep.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %offset = alloca i32, align 4
  %entry2 = alloca ptr, align 8
  %__UNIQUE_ID_rcu206 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1235, metadata !DIExpression()), !dbg !1242
  store ptr %nodep, ptr %nodep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1236, metadata !DIExpression()), !dbg !1243
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1237, metadata !DIExpression()), !dbg !1244
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1238, metadata !DIExpression()), !dbg !1246
  %0 = load i64, ptr %index.addr, align 8, !dbg !1247
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !1248
  %shift = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 0, !dbg !1249
  %2 = load i8, ptr %shift, align 8, !dbg !1249
  %conv = zext i8 %2 to i32, !dbg !1248
  %sh_prom = zext i32 %conv to i64, !dbg !1250
  %shr = lshr i64 %0, %sh_prom, !dbg !1250
  %and = and i64 %shr, 63, !dbg !1251
  %conv1 = trunc i64 %and to i32, !dbg !1252
  store i32 %conv1, ptr %offset, align 4, !dbg !1246
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #13, !dbg !1253
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !1239, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu206) #13, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu206, metadata !1240, metadata !DIExpression()), !dbg !1255
  br label %do.body, !dbg !1256

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1258

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1258

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !1256
  %slots = getelementptr inbounds %struct.xa_node, ptr %3, i32 0, i32 7, !dbg !1256
  %4 = load i32, ptr %offset, align 4, !dbg !1256
  %idxprom = zext i32 %4 to i64, !dbg !1256
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !1256
  %5 = load volatile ptr, ptr %arrayidx, align 8, !dbg !1256
  store ptr %5, ptr %tmp, align 8, !dbg !1258
  %6 = load ptr, ptr %tmp, align 8, !dbg !1256
  store ptr %6, ptr %__UNIQUE_ID_rcu206, align 8, !dbg !1255
  %7 = load ptr, ptr %__UNIQUE_ID_rcu206, align 8, !dbg !1255
  store ptr %7, ptr %tmp3, align 8, !dbg !1255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu206) #13, !dbg !1260
  %8 = load ptr, ptr %tmp3, align 8, !dbg !1255
  store ptr %8, ptr %entry2, align 8, !dbg !1254
  %9 = load ptr, ptr %entry2, align 8, !dbg !1261
  %10 = load ptr, ptr %nodep.addr, align 8, !dbg !1262
  store ptr %9, ptr %10, align 8, !dbg !1263
  %11 = load i32, ptr %offset, align 4, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #13, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1265
  ret i32 %11, !dbg !1266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_mk_internal(i64 noundef %v) #4 align 16 !dbg !1267 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = load i64, ptr %v.addr, align 8, !dbg !1273
  %shl = shl i64 %0, 2, !dbg !1274
  %or = or i64 %shl, 2, !dbg !1275
  %1 = inttoptr i64 %or to ptr, !dbg !1276
  ret ptr %1, !dbg !1277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_lookup_slot(ptr noundef %root, i64 noundef %index) #0 align 16 !dbg !1278 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1282, metadata !DIExpression()), !dbg !1285
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1283, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !1284, metadata !DIExpression()), !dbg !1288
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1289
  %1 = load i64, ptr %index.addr, align 8, !dbg !1291
  %call = call ptr @__radix_tree_lookup(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef %slot) #14, !dbg !1292
  %tobool = icmp ne ptr %call, null, !dbg !1292
  br i1 %tobool, label %if.end, label %if.then, !dbg !1293

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1294

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %slot, align 8, !dbg !1295
  store ptr %2, ptr %retval, align 8, !dbg !1296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1296

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !1297
  %3 = load ptr, ptr %retval, align 8, !dbg !1297
  ret ptr %3, !dbg !1297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_lookup(ptr noundef %root, i64 noundef %index) #0 align 16 !dbg !1298 {
entry:
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1302, metadata !DIExpression()), !dbg !1304
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1303, metadata !DIExpression()), !dbg !1305
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1306
  %1 = load i64, ptr %index.addr, align 8, !dbg !1307
  %call = call ptr @__radix_tree_lookup(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null) #14, !dbg !1308
  ret ptr %call, !dbg !1309
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__radix_tree_replace(ptr noundef %root, ptr noundef %node, ptr noundef %slot, ptr noundef %item) #0 align 16 !dbg !1310 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__UNIQUE_ID_rcu240 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %values = alloca i32, align 4
  %count = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1314, metadata !DIExpression()), !dbg !1328
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1315, metadata !DIExpression()), !dbg !1329
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1316, metadata !DIExpression()), !dbg !1330
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1317, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #13, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1318, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu240) #13, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu240, metadata !1319, metadata !DIExpression()), !dbg !1334
  br label %do.body, !dbg !1335

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1337

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1337

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !1335
  %1 = load volatile ptr, ptr %0, align 8, !dbg !1335
  store ptr %1, ptr %tmp, align 8, !dbg !1337
  %2 = load ptr, ptr %tmp, align 8, !dbg !1335
  store ptr %2, ptr %__UNIQUE_ID_rcu240, align 8, !dbg !1334
  %3 = load ptr, ptr %__UNIQUE_ID_rcu240, align 8, !dbg !1334
  store ptr %3, ptr %tmp1, align 8, !dbg !1334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu240) #13, !dbg !1339
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1334
  store ptr %4, ptr %old, align 8, !dbg !1333
  call void @llvm.lifetime.start.p0(i64 4, ptr %values) #13, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %values, metadata !1321, metadata !DIExpression()), !dbg !1341
  %5 = load ptr, ptr %item.addr, align 8, !dbg !1342
  %call = call zeroext i1 @xa_is_value(ptr noundef %5) #14, !dbg !1343
  %lnot = xor i1 %call, true, !dbg !1344
  %lnot2 = xor i1 %lnot, true, !dbg !1345
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1345
  %6 = load ptr, ptr %old, align 8, !dbg !1346
  %call3 = call zeroext i1 @xa_is_value(ptr noundef %6) #14, !dbg !1347
  %lnot4 = xor i1 %call3, true, !dbg !1348
  %lnot6 = xor i1 %lnot4, true, !dbg !1349
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1349
  %sub = sub i32 %lnot.ext, %lnot.ext7, !dbg !1350
  store i32 %sub, ptr %values, align 4, !dbg !1341
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #13, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1322, metadata !DIExpression()), !dbg !1352
  %7 = load ptr, ptr %root.addr, align 8, !dbg !1353
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1354
  %9 = load ptr, ptr %slot.addr, align 8, !dbg !1355
  %10 = load ptr, ptr %item.addr, align 8, !dbg !1356
  %11 = load ptr, ptr %old, align 8, !dbg !1357
  %call8 = call i32 @calculate_count(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #14, !dbg !1358
  store i32 %call8, ptr %count, align 4, !dbg !1352
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1323, metadata !DIExpression()), !dbg !1359
  %12 = load ptr, ptr %node.addr, align 8, !dbg !1359
  %tobool = icmp ne ptr %12, null, !dbg !1359
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !1359

land.lhs.true:                                    ; preds = %do.end
  %13 = load ptr, ptr %slot.addr, align 8, !dbg !1359
  %14 = load ptr, ptr %root.addr, align 8, !dbg !1359
  %xa_head = getelementptr inbounds %struct.xarray, ptr %14, i32 0, i32 2, !dbg !1359
  %cmp = icmp ne ptr %13, %xa_head, !dbg !1359
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1359

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load i32, ptr %count, align 4, !dbg !1359
  %tobool9 = icmp ne i32 %15, 0, !dbg !1359
  br i1 %tobool9, label %lor.end, label %lor.rhs, !dbg !1359

lor.rhs:                                          ; preds = %land.rhs
  %16 = load i32, ptr %values, align 4, !dbg !1359
  %tobool10 = icmp ne i32 %16, 0, !dbg !1359
  br label %lor.end, !dbg !1359

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %tobool10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %do.end
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %do.end ], [ %17, %lor.end ], !dbg !1360
  %lnot11 = xor i1 %18, true, !dbg !1359
  %lnot13 = xor i1 %lnot11, true, !dbg !1359
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !1359
  store i32 %lnot.ext14, ptr %__ret_warn_on, align 4, !dbg !1359
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !1361
  %tobool15 = icmp ne i32 %19, 0, !dbg !1361
  %lnot16 = xor i1 %tobool15, true, !dbg !1361
  %lnot18 = xor i1 %lnot16, true, !dbg !1361
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1361
  %conv = sext i32 %lnot.ext19 to i64, !dbg !1361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1361
  %tobool20 = icmp ne i64 %expval, 0, !dbg !1361
  br i1 %tobool20, label %if.then, label %if.end, !dbg !1359

if.then:                                          ; preds = %land.end
  br label %do.body21, !dbg !1361

do.body21:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1325, metadata !DIExpression()), !dbg !1362
  store i32 2307, ptr %__flags, align 4, !dbg !1362
  br label %do.body22, !dbg !1362

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !1363

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1363

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !1362

do.body25:                                        ; preds = %do.end24
  %20 = load i32, ptr %__flags, align 4, !dbg !1365
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 889, i32 %20, i64 12) #13, !dbg !1365, !srcloc !1367
  br label %do.cond26, !dbg !1365

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1365

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !1362

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !1368

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !1368

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !1361
  br label %do.cond31, !dbg !1362

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !1362

do.end32:                                         ; preds = %do.cond31
  br label %if.end, !dbg !1362

if.end:                                           ; preds = %do.end32, %land.end
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !1359
  %tobool34 = icmp ne i32 %21, 0, !dbg !1359
  %lnot35 = xor i1 %tobool34, true, !dbg !1359
  %lnot37 = xor i1 %lnot35, true, !dbg !1359
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !1359
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !1359
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !1359
  store i64 %expval40, ptr %tmp33, align 8, !dbg !1361
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !1370
  %22 = load i64, ptr %tmp33, align 8, !dbg !1359
  %23 = load ptr, ptr %slot.addr, align 8, !dbg !1371
  %24 = load ptr, ptr %item.addr, align 8, !dbg !1372
  %25 = load ptr, ptr %node.addr, align 8, !dbg !1373
  %26 = load i32, ptr %count, align 4, !dbg !1374
  %27 = load i32, ptr %values, align 4, !dbg !1375
  call void @replace_slot(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27) #14, !dbg !1376
  %28 = load ptr, ptr %node.addr, align 8, !dbg !1377
  %tobool41 = icmp ne ptr %28, null, !dbg !1377
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !1379

if.then42:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1380

if.end43:                                         ; preds = %if.end
  %29 = load ptr, ptr %root.addr, align 8, !dbg !1381
  %30 = load ptr, ptr %node.addr, align 8, !dbg !1382
  %call44 = call zeroext i1 @delete_node(ptr noundef %29, ptr noundef %30) #14, !dbg !1383
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1384
  br label %cleanup, !dbg !1384

cleanup:                                          ; preds = %if.end43, %if.then42
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #13, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 4, ptr %values) #13, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #13, !dbg !1384
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1384

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_value(ptr noundef %entry1) #4 align 16 !dbg !1385 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1389, metadata !DIExpression()), !dbg !1390
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1391
  %1 = ptrtoint ptr %0 to i64, !dbg !1392
  %and = and i64 %1, 1, !dbg !1393
  %tobool = icmp ne i64 %and, 0, !dbg !1392
  ret i1 %tobool, !dbg !1394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @calculate_count(ptr noundef %root, ptr noundef %node, ptr noundef %slot, ptr noundef %item, ptr noundef %old) #0 align 16 !dbg !1395 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %offset = alloca i32, align 4
  %free = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1399, metadata !DIExpression()), !dbg !1408
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1400, metadata !DIExpression()), !dbg !1409
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1401, metadata !DIExpression()), !dbg !1410
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1402, metadata !DIExpression()), !dbg !1411
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1403, metadata !DIExpression()), !dbg !1412
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1413
  %call = call zeroext i1 @is_idr(ptr noundef %0) #14, !dbg !1414
  br i1 %call, label %if.then, label %if.end8, !dbg !1415

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1416
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1404, metadata !DIExpression()), !dbg !1417
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1418
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !1419
  %call1 = call i64 @get_slot_offset(ptr noundef %1, ptr noundef %2) #14, !dbg !1420
  %conv = trunc i64 %call1 to i32, !dbg !1420
  store i32 %conv, ptr %offset, align 4, !dbg !1417
  call void @llvm.lifetime.start.p0(i64 1, ptr %free) #13, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %free, metadata !1407, metadata !DIExpression()), !dbg !1422
  %3 = load ptr, ptr %root.addr, align 8, !dbg !1423
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1424
  %5 = load i32, ptr %offset, align 4, !dbg !1425
  %call2 = call zeroext i1 @node_tag_get(ptr noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef %5) #14, !dbg !1426
  %frombool = zext i1 %call2 to i8, !dbg !1422
  store i8 %frombool, ptr %free, align 1, !dbg !1422
  %6 = load i8, ptr %free, align 1, !dbg !1427, !range !1429, !noundef !310
  %tobool = trunc i8 %6 to i1, !dbg !1427
  br i1 %tobool, label %if.end, label %if.then3, !dbg !1430

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !1431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1431

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %old.addr, align 8, !dbg !1432
  %tobool4 = icmp ne ptr %7, null, !dbg !1432
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1434

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1435

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1436
  br label %cleanup, !dbg !1436

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %free) #13, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1436
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !1437

if.end8:                                          ; preds = %cleanup.cont, %entry
  %8 = load ptr, ptr %item.addr, align 8, !dbg !1438
  %tobool9 = icmp ne ptr %8, null, !dbg !1439
  %lnot = xor i1 %tobool9, true, !dbg !1439
  %lnot10 = xor i1 %lnot, true, !dbg !1440
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !1440
  %9 = load ptr, ptr %old.addr, align 8, !dbg !1441
  %tobool11 = icmp ne ptr %9, null, !dbg !1442
  %lnot12 = xor i1 %tobool11, true, !dbg !1442
  %lnot14 = xor i1 %lnot12, true, !dbg !1443
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !1443
  %sub = sub i32 %lnot.ext, %lnot.ext15, !dbg !1444
  store i32 %sub, ptr %retval, align 4, !dbg !1445
  br label %return, !dbg !1445

return:                                           ; preds = %if.end8, %cleanup
  %10 = load i32, ptr %retval, align 4, !dbg !1446
  ret i32 %10, !dbg !1446

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @replace_slot(ptr noundef %slot, ptr noundef %item, ptr noundef %node, i32 noundef %count, i32 noundef %values) #0 align 16 !dbg !1447 {
entry:
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %values.addr = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1451, metadata !DIExpression()), !dbg !1458
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1452, metadata !DIExpression()), !dbg !1459
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1453, metadata !DIExpression()), !dbg !1460
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1454, metadata !DIExpression()), !dbg !1461
  store i32 %values, ptr %values.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !1455, metadata !DIExpression()), !dbg !1462
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1463
  %tobool = icmp ne ptr %0, null, !dbg !1463
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1465

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !1466
  %tobool1 = icmp ne i32 %1, 0, !dbg !1466
  br i1 %tobool1, label %if.then, label %lor.lhs.false, !dbg !1467

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, ptr %values.addr, align 4, !dbg !1468
  %tobool2 = icmp ne i32 %2, 0, !dbg !1468
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1469

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32, ptr %count.addr, align 4, !dbg !1470
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1472
  %count3 = getelementptr inbounds %struct.xa_node, ptr %4, i32 0, i32 2, !dbg !1473
  %5 = load i8, ptr %count3, align 2, !dbg !1474
  %conv = zext i8 %5 to i32, !dbg !1474
  %add = add i32 %conv, %3, !dbg !1474
  %conv4 = trunc i32 %add to i8, !dbg !1474
  store i8 %conv4, ptr %count3, align 2, !dbg !1474
  %6 = load i32, ptr %values.addr, align 4, !dbg !1475
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1476
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 3, !dbg !1477
  %8 = load i8, ptr %nr_values, align 1, !dbg !1478
  %conv5 = zext i8 %8 to i32, !dbg !1478
  %add6 = add i32 %conv5, %6, !dbg !1478
  %conv7 = trunc i32 %add6 to i8, !dbg !1478
  store i8 %conv7, ptr %nr_values, align 1, !dbg !1478
  br label %if.end, !dbg !1479

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  br label %do.body, !dbg !1480

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !1456, metadata !DIExpression()), !dbg !1481
  %9 = load ptr, ptr %item.addr, align 8, !dbg !1481
  %10 = ptrtoint ptr %9 to i64, !dbg !1481
  store i64 %10, ptr %_r_a_p__v, align 8, !dbg !1481
  br i1 false, label %land.lhs.true8, label %if.else, !dbg !1482

land.lhs.true8:                                   ; preds = %do.body
  %11 = load i64, ptr %_r_a_p__v, align 8, !dbg !1482
  %cmp = icmp eq i64 %11, 0, !dbg !1482
  br i1 %cmp, label %if.then10, label %if.else, !dbg !1481

if.then10:                                        ; preds = %land.lhs.true8
  br label %do.body11, !dbg !1482

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !1484

do.body12:                                        ; preds = %do.body11
  br label %do.cond, !dbg !1486

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !1486

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !1484

do.body13:                                        ; preds = %do.end
  %12 = load i64, ptr %_r_a_p__v, align 8, !dbg !1488
  %13 = inttoptr i64 %12 to ptr, !dbg !1488
  %14 = load ptr, ptr %slot.addr, align 8, !dbg !1488
  store volatile ptr %13, ptr %14, align 8, !dbg !1488
  br label %do.cond14, !dbg !1488

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1488

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !1484

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1484

do.end17:                                         ; preds = %do.cond16
  br label %if.end39, !dbg !1484

if.else:                                          ; preds = %land.lhs.true8, %do.body
  br label %do.body18, !dbg !1482

do.body18:                                        ; preds = %if.else
  br label %do.body19, !dbg !1490

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !1492

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1492

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1490

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !1494

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !1496

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !1496

do.end25:                                         ; preds = %do.cond24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1494, !srcloc !1498
  br label %do.body26, !dbg !1494

do.body26:                                        ; preds = %do.end25
  br label %do.body27, !dbg !1499

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !1501

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !1501

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !1499

do.body30:                                        ; preds = %do.end29
  %15 = load i64, ptr %_r_a_p__v, align 8, !dbg !1503
  %16 = inttoptr i64 %15 to ptr, !dbg !1503
  %17 = load ptr, ptr %slot.addr, align 8, !dbg !1503
  store volatile ptr %16, ptr %17, align 8, !dbg !1503
  br label %do.cond31, !dbg !1503

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1503

do.end32:                                         ; preds = %do.cond31
  br label %do.cond33, !dbg !1499

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !1499

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !1494

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1494

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !1490

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !1490

do.end38:                                         ; preds = %do.cond37
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %do.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !1480
  br label %do.end41, !dbg !1481

do.end41:                                         ; preds = %if.end39
  ret void, !dbg !1505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @delete_node(ptr noundef %root, ptr noundef %node) #0 align 16 !dbg !1506 {
entry:
  %retval = alloca i1, align 1
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %deleted = alloca i8, align 1
  %parent = alloca ptr, align 8
  %__UNIQUE_ID_rcu222 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1510, metadata !DIExpression()), !dbg !1525
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1511, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 1, ptr %deleted) #13, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %deleted, metadata !1512, metadata !DIExpression()), !dbg !1528
  store i8 0, ptr %deleted, align 1, !dbg !1528
  br label %do.body, !dbg !1529

do.body:                                          ; preds = %do.cond52, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1513, metadata !DIExpression()), !dbg !1531
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1532
  %count = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 2, !dbg !1533
  %1 = load i8, ptr %count, align 2, !dbg !1533
  %tobool = icmp ne i8 %1, 0, !dbg !1532
  br i1 %tobool, label %if.then, label %if.end9, !dbg !1534

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1535
  %call = call ptr @node_to_entry(ptr noundef %2) #14, !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu222) #13, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu222, metadata !1515, metadata !DIExpression()), !dbg !1537
  br label %do.body1, !dbg !1538

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !1540

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1540

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %root.addr, align 8, !dbg !1538
  %xa_head = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 2, !dbg !1538
  %4 = load volatile ptr, ptr %xa_head, align 8, !dbg !1538
  store ptr %4, ptr %tmp, align 8, !dbg !1540
  %5 = load ptr, ptr %tmp, align 8, !dbg !1538
  store ptr %5, ptr %__UNIQUE_ID_rcu222, align 8, !dbg !1537
  %6 = load ptr, ptr %__UNIQUE_ID_rcu222, align 8, !dbg !1537
  store ptr %6, ptr %tmp2, align 8, !dbg !1537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu222) #13, !dbg !1542
  %7 = load ptr, ptr %tmp2, align 8, !dbg !1537
  %cmp = icmp eq ptr %call, %7, !dbg !1543
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1544

if.then3:                                         ; preds = %do.end
  %8 = load ptr, ptr %root.addr, align 8, !dbg !1545
  %call4 = call zeroext i1 @radix_tree_shrink(ptr noundef %8) #14, !dbg !1546
  %conv = zext i1 %call4 to i32, !dbg !1546
  %9 = load i8, ptr %deleted, align 1, !dbg !1547, !range !1429, !noundef !310
  %tobool5 = trunc i8 %9 to i1, !dbg !1547
  %conv6 = zext i1 %tobool5 to i32, !dbg !1547
  %or = or i32 %conv6, %conv, !dbg !1547
  %tobool7 = icmp ne i32 %or, 0, !dbg !1547
  %frombool = zext i1 %tobool7 to i8, !dbg !1547
  store i8 %frombool, ptr %deleted, align 1, !dbg !1547
  br label %if.end, !dbg !1548

if.end:                                           ; preds = %if.then3, %do.end
  %10 = load i8, ptr %deleted, align 1, !dbg !1549, !range !1429, !noundef !310
  %tobool8 = trunc i8 %10 to i1, !dbg !1549
  store i1 %tobool8, ptr %retval, align 1, !dbg !1550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1550

if.end9:                                          ; preds = %do.body
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1551
  %parent10 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 4, !dbg !1552
  %12 = load ptr, ptr %parent10, align 8, !dbg !1552
  store ptr %12, ptr %parent, align 8, !dbg !1553
  %13 = load ptr, ptr %parent, align 8, !dbg !1554
  %tobool11 = icmp ne ptr %13, null, !dbg !1554
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !1556

if.then12:                                        ; preds = %if.end9
  %14 = load ptr, ptr %parent, align 8, !dbg !1557
  %slots = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 7, !dbg !1559
  %15 = load ptr, ptr %node.addr, align 8, !dbg !1560
  %offset = getelementptr inbounds %struct.xa_node, ptr %15, i32 0, i32 1, !dbg !1561
  %16 = load i8, ptr %offset, align 1, !dbg !1561
  %idxprom = zext i8 %16 to i64, !dbg !1557
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !1557
  store ptr null, ptr %arrayidx, align 8, !dbg !1562
  %17 = load ptr, ptr %parent, align 8, !dbg !1563
  %count13 = getelementptr inbounds %struct.xa_node, ptr %17, i32 0, i32 2, !dbg !1564
  %18 = load i8, ptr %count13, align 2, !dbg !1565
  %dec = add i8 %18, -1, !dbg !1565
  store i8 %dec, ptr %count13, align 2, !dbg !1565
  br label %if.end18, !dbg !1566

if.else:                                          ; preds = %if.end9
  %19 = load ptr, ptr %root.addr, align 8, !dbg !1567
  %call14 = call zeroext i1 @is_idr(ptr noundef %19) #14, !dbg !1570
  br i1 %call14, label %if.end16, label %if.then15, !dbg !1571

if.then15:                                        ; preds = %if.else
  %20 = load ptr, ptr %root.addr, align 8, !dbg !1572
  call void @root_tag_clear_all(ptr noundef %20) #14, !dbg !1573
  br label %if.end16, !dbg !1573

if.end16:                                         ; preds = %if.then15, %if.else
  %21 = load ptr, ptr %root.addr, align 8, !dbg !1574
  %xa_head17 = getelementptr inbounds %struct.xarray, ptr %21, i32 0, i32 2, !dbg !1575
  store ptr null, ptr %xa_head17, align 8, !dbg !1576
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1520, metadata !DIExpression()), !dbg !1577
  %22 = load ptr, ptr %node.addr, align 8, !dbg !1577
  %23 = getelementptr inbounds %struct.xa_node, ptr %22, i32 0, i32 6, !dbg !1577
  %call19 = call i32 @list_empty(ptr noundef %23) #14, !dbg !1577
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1577
  %lnot = xor i1 %tobool20, true, !dbg !1577
  %lnot21 = xor i1 %lnot, true, !dbg !1577
  %lnot22 = xor i1 %lnot21, true, !dbg !1577
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !1577
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1577
  %24 = load i32, ptr %__ret_warn_on, align 4, !dbg !1578
  %tobool23 = icmp ne i32 %24, 0, !dbg !1578
  %lnot24 = xor i1 %tobool23, true, !dbg !1578
  %lnot26 = xor i1 %lnot24, true, !dbg !1578
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1578
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !1578
  %expval = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !1578
  %tobool29 = icmp ne i64 %expval, 0, !dbg !1578
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !1577

if.then30:                                        ; preds = %if.end18
  br label %do.body31, !dbg !1578

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1522, metadata !DIExpression()), !dbg !1579
  store i32 2307, ptr %__flags, align 4, !dbg !1579
  br label %do.body32, !dbg !1579

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !1580

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1580

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !1579

do.body35:                                        ; preds = %do.end34
  %25 = load i32, ptr %__flags, align 4, !dbg !1582
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 572, i32 %25, i64 12) #13, !dbg !1582, !srcloc !1584
  br label %do.cond36, !dbg !1582

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !1582

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !1579

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !1585

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !1585

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !1578
  br label %do.cond41, !dbg !1579

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !1579

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !1579

if.end43:                                         ; preds = %do.end42, %if.end18
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !1577
  %tobool45 = icmp ne i32 %26, 0, !dbg !1577
  %lnot46 = xor i1 %tobool45, true, !dbg !1577
  %lnot48 = xor i1 %lnot46, true, !dbg !1577
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !1577
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !1577
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !1577
  store i64 %expval51, ptr %tmp44, align 8, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !1587
  %27 = load i64, ptr %tmp44, align 8, !dbg !1577
  %28 = load ptr, ptr %node.addr, align 8, !dbg !1588
  call void @radix_tree_node_free(ptr noundef %28) #14, !dbg !1589
  store i8 1, ptr %deleted, align 1, !dbg !1590
  %29 = load ptr, ptr %parent, align 8, !dbg !1591
  store ptr %29, ptr %node.addr, align 8, !dbg !1592
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1593
  br label %cleanup, !dbg !1593

cleanup:                                          ; preds = %if.end43, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1593
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup56 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond52, !dbg !1594

do.cond52:                                        ; preds = %cleanup.cont
  %30 = load ptr, ptr %node.addr, align 8, !dbg !1595
  %tobool53 = icmp ne ptr %30, null, !dbg !1594
  br i1 %tobool53, label %do.body, label %do.end54, !dbg !1594, !llvm.loop !1596

do.end54:                                         ; preds = %do.cond52
  %31 = load i8, ptr %deleted, align 1, !dbg !1598, !range !1429, !noundef !310
  %tobool55 = trunc i8 %31 to i1, !dbg !1598
  store i1 %tobool55, ptr %retval, align 1, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1599

cleanup56:                                        ; preds = %do.end54, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %deleted) #13, !dbg !1600
  %32 = load i1, ptr %retval, align 1, !dbg !1600
  ret i1 %32, !dbg !1600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @radix_tree_replace_slot(ptr noundef %root, ptr noundef %slot, ptr noundef %item) #0 align 16 !dbg !1601 {
entry:
  %root.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1605, metadata !DIExpression()), !dbg !1608
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1606, metadata !DIExpression()), !dbg !1609
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1607, metadata !DIExpression()), !dbg !1610
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1611
  %1 = load ptr, ptr %slot.addr, align 8, !dbg !1612
  %2 = load ptr, ptr %item.addr, align 8, !dbg !1613
  call void @__radix_tree_replace(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2) #14, !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @radix_tree_iter_replace(ptr noundef %root, ptr noundef %iter, ptr noundef %slot, ptr noundef %item) #0 align 16 !dbg !1616 {
entry:
  %root.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1628, metadata !DIExpression()), !dbg !1632
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1629, metadata !DIExpression()), !dbg !1633
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1630, metadata !DIExpression()), !dbg !1634
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1631, metadata !DIExpression()), !dbg !1635
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1636
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !1637
  %node = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3, !dbg !1638
  %2 = load ptr, ptr %node, align 8, !dbg !1638
  %3 = load ptr, ptr %slot.addr, align 8, !dbg !1639
  %4 = load ptr, ptr %item.addr, align 8, !dbg !1640
  call void @__radix_tree_replace(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14, !dbg !1641
  ret void, !dbg !1642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_tag_set(ptr noundef %root, i64 noundef %index, i32 noundef %tag) #0 align 16 !dbg !1643 {
entry:
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %tag.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %offset = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1647, metadata !DIExpression()), !dbg !1655
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1648, metadata !DIExpression()), !dbg !1656
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1649, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1650, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1651, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !1652, metadata !DIExpression()), !dbg !1662
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1663
  %call = call i32 @radix_tree_load_root(ptr noundef %0, ptr noundef %node, ptr noundef %maxindex) #14, !dbg !1664
  br label %do.body, !dbg !1665

do.body:                                          ; preds = %entry
  %1 = load i64, ptr %index.addr, align 8, !dbg !1666
  %2 = load i64, ptr %maxindex, align 8, !dbg !1666
  %cmp = icmp ugt i64 %1, %2, !dbg !1666
  %lnot = xor i1 %cmp, true, !dbg !1666
  %lnot1 = xor i1 %lnot, true, !dbg !1666
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1666
  %conv = sext i32 %lnot.ext to i64, !dbg !1666
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1666
  %tobool = icmp ne i64 %expval, 0, !dbg !1666
  br i1 %tobool, label %if.then, label %if.end, !dbg !1669

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1666

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !1670

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !1672

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1672

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !1670

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 974, i32 0, i64 12) #13, !dbg !1674, !srcloc !1676
  br label %do.cond5, !dbg !1674

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1674

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !1670

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !1670

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !1670

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !1669

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !1669

do.end10:                                         ; preds = %do.cond9
  br label %while.cond, !dbg !1677

while.cond:                                       ; preds = %if.end41, %do.end10
  %3 = load ptr, ptr %node, align 8, !dbg !1678
  %call11 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %3) #14, !dbg !1679
  br i1 %call11, label %while.body, label %while.end, !dbg !1677

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1653, metadata !DIExpression()), !dbg !1681
  %4 = load ptr, ptr %node, align 8, !dbg !1682
  %call12 = call ptr @entry_to_node(ptr noundef %4) #14, !dbg !1683
  store ptr %call12, ptr %parent, align 8, !dbg !1684
  %5 = load ptr, ptr %parent, align 8, !dbg !1685
  %6 = load i64, ptr %index.addr, align 8, !dbg !1686
  %call13 = call i32 @radix_tree_descend(ptr noundef %5, ptr noundef %node, i64 noundef %6) #14, !dbg !1687
  store i32 %call13, ptr %offset, align 4, !dbg !1688
  br label %do.body14, !dbg !1689

do.body14:                                        ; preds = %while.body
  %7 = load ptr, ptr %node, align 8, !dbg !1690
  %tobool15 = icmp ne ptr %7, null, !dbg !1690
  %lnot16 = xor i1 %tobool15, true, !dbg !1690
  %lnot18 = xor i1 %lnot16, true, !dbg !1690
  %lnot20 = xor i1 %lnot18, true, !dbg !1690
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1690
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1690
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1690
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !1690
  br i1 %tobool24, label %if.then25, label %if.end35, !dbg !1693

if.then25:                                        ; preds = %do.body14
  br label %do.body26, !dbg !1690

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !1694

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !1696

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !1696

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !1694

do.body30:                                        ; preds = %do.end29
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 981, i32 0, i64 12) #13, !dbg !1698, !srcloc !1700
  br label %do.cond31, !dbg !1698

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1698

do.end32:                                         ; preds = %do.cond31
  unreachable, !dbg !1694

do.cond33:                                        ; No predecessors!
  br label %do.end34, !dbg !1694

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !1694

if.end35:                                         ; preds = %do.end34, %do.body14
  br label %do.cond36, !dbg !1693

do.cond36:                                        ; preds = %if.end35
  br label %do.end37, !dbg !1693

do.end37:                                         ; preds = %do.cond36
  %8 = load ptr, ptr %parent, align 8, !dbg !1701
  %9 = load i32, ptr %tag.addr, align 4, !dbg !1703
  %10 = load i32, ptr %offset, align 4, !dbg !1704
  %call38 = call i32 @tag_get(ptr noundef %8, i32 noundef %9, i32 noundef %10) #14, !dbg !1705
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1705
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1706

if.then40:                                        ; preds = %do.end37
  %11 = load ptr, ptr %parent, align 8, !dbg !1707
  %12 = load i32, ptr %tag.addr, align 4, !dbg !1708
  %13 = load i32, ptr %offset, align 4, !dbg !1709
  call void @tag_set(ptr noundef %11, i32 noundef %12, i32 noundef %13) #14, !dbg !1710
  br label %if.end41, !dbg !1710

if.end41:                                         ; preds = %if.then40, %do.end37
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1711
  br label %while.cond, !dbg !1677, !llvm.loop !1712

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %root.addr, align 8, !dbg !1713
  %15 = load i32, ptr %tag.addr, align 4, !dbg !1715
  %call42 = call i32 @root_tag_get(ptr noundef %14, i32 noundef %15) #14, !dbg !1716
  %tobool43 = icmp ne i32 %call42, 0, !dbg !1716
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !1717

if.then44:                                        ; preds = %while.end
  %16 = load ptr, ptr %root.addr, align 8, !dbg !1718
  %17 = load i32, ptr %tag.addr, align 4, !dbg !1719
  call void @root_tag_set(ptr noundef %16, i32 noundef %17) #14, !dbg !1720
  br label %if.end45, !dbg !1720

if.end45:                                         ; preds = %if.then44, %while.end
  %18 = load ptr, ptr %node, align 8, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1722
  ret ptr %18, !dbg !1723
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tag_set(ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #4 align 16 !dbg !1724 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1728, metadata !DIExpression()), !dbg !1731
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1729, metadata !DIExpression()), !dbg !1732
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1730, metadata !DIExpression()), !dbg !1733
  %0 = load i32, ptr %offset.addr, align 4, !dbg !1734
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1734
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1734

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1734
  %3 = getelementptr inbounds %struct.xa_node, ptr %2, i32 0, i32 8, !dbg !1734
  %4 = load i32, ptr %tag.addr, align 4, !dbg !1734
  %idxprom = zext i32 %4 to i64, !dbg !1734
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %3, i64 0, i64 %idxprom, !dbg !1734
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !1734
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !1734
  %cmp = icmp ne i64 %5, 0, !dbg !1734
  %conv = zext i1 %cmp to i32, !dbg !1734
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1734
  br i1 %6, label %land.lhs.true1, label %cond.false, !dbg !1734

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1734
  %8 = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 8, !dbg !1734
  %9 = load i32, ptr %tag.addr, align 4, !dbg !1734
  %idxprom2 = zext i32 %9 to i64, !dbg !1734
  %arrayidx3 = getelementptr [3 x [1 x i64]], ptr %8, i64 0, i64 %idxprom2, !dbg !1734
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %arrayidx3, i64 0, i64 0, !dbg !1734
  %10 = ptrtoint ptr %arraydecay4 to i64, !dbg !1734
  %cmp5 = icmp ne i64 %10, 0, !dbg !1734
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !1734

land.lhs.true7:                                   ; preds = %land.lhs.true1
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1734
  %12 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 8, !dbg !1734
  %13 = load i32, ptr %tag.addr, align 4, !dbg !1734
  %idxprom8 = zext i32 %13 to i64, !dbg !1734
  %arrayidx9 = getelementptr [3 x [1 x i64]], ptr %12, i64 0, i64 %idxprom8, !dbg !1734
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %arrayidx9, i64 0, i64 0, !dbg !1734
  %14 = load i64, ptr %arraydecay10, align 8, !dbg !1734
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !1734
  br i1 %15, label %cond.true, label %cond.false, !dbg !1734

cond.true:                                        ; preds = %land.lhs.true7
  %16 = load i32, ptr %offset.addr, align 4, !dbg !1734
  %conv11 = sext i32 %16 to i64, !dbg !1734
  %17 = load ptr, ptr %node.addr, align 8, !dbg !1734
  %18 = getelementptr inbounds %struct.xa_node, ptr %17, i32 0, i32 8, !dbg !1734
  %19 = load i32, ptr %tag.addr, align 4, !dbg !1734
  %idxprom12 = zext i32 %19 to i64, !dbg !1734
  %arrayidx13 = getelementptr [3 x [1 x i64]], ptr %18, i64 0, i64 %idxprom12, !dbg !1734
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %arrayidx13, i64 0, i64 0, !dbg !1734
  call void @generic___set_bit(i64 noundef %conv11, ptr noundef %arraydecay14) #14, !dbg !1734
  br label %cond.end, !dbg !1734

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true1, %land.lhs.true, %entry
  %20 = load i32, ptr %offset.addr, align 4, !dbg !1734
  %conv15 = sext i32 %20 to i64, !dbg !1734
  %21 = load ptr, ptr %node.addr, align 8, !dbg !1734
  %22 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 8, !dbg !1734
  %23 = load i32, ptr %tag.addr, align 4, !dbg !1734
  %idxprom16 = zext i32 %23 to i64, !dbg !1734
  %arrayidx17 = getelementptr [3 x [1 x i64]], ptr %22, i64 0, i64 %idxprom16, !dbg !1734
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %arrayidx17, i64 0, i64 0, !dbg !1734
  call void @___set_bit(i64 noundef %conv15, ptr noundef %arraydecay18) #14, !dbg !1734
  br label %cond.end, !dbg !1734

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !1735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @root_tag_get(ptr noundef %root, i32 noundef %tag) #4 align 16 !dbg !1736 {
entry:
  %root.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1740, metadata !DIExpression()), !dbg !1742
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1741, metadata !DIExpression()), !dbg !1743
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1744
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1, !dbg !1745
  %1 = load i32, ptr %xa_flags, align 4, !dbg !1745
  %2 = load i32, ptr %tag.addr, align 4, !dbg !1746
  %add = add i32 %2, 26, !dbg !1747
  %shl = shl i32 1, %add, !dbg !1748
  %and = and i32 %1, %shl, !dbg !1749
  ret i32 %and, !dbg !1750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @root_tag_set(ptr noundef %root, i32 noundef %tag) #4 align 16 !dbg !1751 {
entry:
  %root.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1755, metadata !DIExpression()), !dbg !1757
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1756, metadata !DIExpression()), !dbg !1758
  %0 = load i32, ptr %tag.addr, align 4, !dbg !1759
  %add = add i32 %0, 26, !dbg !1760
  %shl = shl i32 1, %add, !dbg !1761
  %1 = load ptr, ptr %root.addr, align 8, !dbg !1762
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 1, !dbg !1763
  %2 = load i32, ptr %xa_flags, align 4, !dbg !1764
  %or = or i32 %2, %shl, !dbg !1764
  store i32 %or, ptr %xa_flags, align 4, !dbg !1764
  ret void, !dbg !1765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_tag_clear(ptr noundef %root, i64 noundef %index, i32 noundef %tag) #0 align 16 !dbg !1766 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %tag.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1768, metadata !DIExpression()), !dbg !1775
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1769, metadata !DIExpression()), !dbg !1776
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1770, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1778
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1771, metadata !DIExpression()), !dbg !1779
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !1778
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1772, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !1773, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1774, metadata !DIExpression()), !dbg !1784
  store i32 0, ptr %offset, align 4, !dbg !1784
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1785
  %call = call i32 @radix_tree_load_root(ptr noundef %0, ptr noundef %node, ptr noundef %maxindex) #14, !dbg !1786
  %1 = load i64, ptr %index.addr, align 8, !dbg !1787
  %2 = load i64, ptr %maxindex, align 8, !dbg !1789
  %cmp = icmp ugt i64 %1, %2, !dbg !1790
  br i1 %cmp, label %if.then, label %if.end, !dbg !1791

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1792

if.end:                                           ; preds = %entry
  store ptr null, ptr %parent, align 8, !dbg !1793
  br label %while.cond, !dbg !1794

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %node, align 8, !dbg !1795
  %call1 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %3) #14, !dbg !1796
  br i1 %call1, label %while.body, label %while.end, !dbg !1794

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %node, align 8, !dbg !1797
  %call2 = call ptr @entry_to_node(ptr noundef %4) #14, !dbg !1799
  store ptr %call2, ptr %parent, align 8, !dbg !1800
  %5 = load ptr, ptr %parent, align 8, !dbg !1801
  %6 = load i64, ptr %index.addr, align 8, !dbg !1802
  %call3 = call i32 @radix_tree_descend(ptr noundef %5, ptr noundef %node, i64 noundef %6) #14, !dbg !1803
  store i32 %call3, ptr %offset, align 4, !dbg !1804
  br label %while.cond, !dbg !1794, !llvm.loop !1805

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %node, align 8, !dbg !1807
  %tobool = icmp ne ptr %7, null, !dbg !1807
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !1809

if.then4:                                         ; preds = %while.end
  %8 = load ptr, ptr %root.addr, align 8, !dbg !1810
  %9 = load ptr, ptr %parent, align 8, !dbg !1811
  %10 = load i32, ptr %tag.addr, align 4, !dbg !1812
  %11 = load i32, ptr %offset, align 4, !dbg !1813
  call void @node_tag_clear(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) #14, !dbg !1814
  br label %if.end5, !dbg !1814

if.end5:                                          ; preds = %if.then4, %while.end
  %12 = load ptr, ptr %node, align 8, !dbg !1815
  store ptr %12, ptr %retval, align 8, !dbg !1816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1816

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1817
  %13 = load ptr, ptr %retval, align 8, !dbg !1817
  ret ptr %13, !dbg !1817
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_tag_clear(ptr noundef %root, ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #0 align 16 !dbg !1818 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1822, metadata !DIExpression()), !dbg !1826
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1823, metadata !DIExpression()), !dbg !1827
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1824, metadata !DIExpression()), !dbg !1828
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1825, metadata !DIExpression()), !dbg !1829
  br label %while.cond, !dbg !1830

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1831
  %tobool = icmp ne ptr %0, null, !dbg !1830
  br i1 %tobool, label %while.body, label %while.end, !dbg !1830

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1832
  %2 = load i32, ptr %tag.addr, align 4, !dbg !1835
  %3 = load i32, ptr %offset.addr, align 4, !dbg !1836
  %call = call i32 @tag_get(ptr noundef %1, i32 noundef %2, i32 noundef %3) #14, !dbg !1837
  %tobool1 = icmp ne i32 %call, 0, !dbg !1837
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1838

if.then:                                          ; preds = %while.body
  br label %if.end10, !dbg !1839

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1840
  %5 = load i32, ptr %tag.addr, align 4, !dbg !1841
  %6 = load i32, ptr %offset.addr, align 4, !dbg !1842
  call void @tag_clear(ptr noundef %4, i32 noundef %5, i32 noundef %6) #14, !dbg !1843
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1844
  %8 = load i32, ptr %tag.addr, align 4, !dbg !1846
  %call2 = call i32 @any_tag_set(ptr noundef %7, i32 noundef %8) #14, !dbg !1847
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1847
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1848

if.then4:                                         ; preds = %if.end
  br label %if.end10, !dbg !1849

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %node.addr, align 8, !dbg !1850
  %offset6 = getelementptr inbounds %struct.xa_node, ptr %9, i32 0, i32 1, !dbg !1851
  %10 = load i8, ptr %offset6, align 1, !dbg !1851
  %conv = zext i8 %10 to i32, !dbg !1850
  store i32 %conv, ptr %offset.addr, align 4, !dbg !1852
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1853
  %parent = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 4, !dbg !1854
  %12 = load ptr, ptr %parent, align 8, !dbg !1854
  store ptr %12, ptr %node.addr, align 8, !dbg !1855
  br label %while.cond, !dbg !1830, !llvm.loop !1856

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %root.addr, align 8, !dbg !1858
  %14 = load i32, ptr %tag.addr, align 4, !dbg !1860
  %call7 = call i32 @root_tag_get(ptr noundef %13, i32 noundef %14) #14, !dbg !1861
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1861
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1862

if.then9:                                         ; preds = %while.end
  %15 = load ptr, ptr %root.addr, align 8, !dbg !1863
  %16 = load i32, ptr %tag.addr, align 4, !dbg !1864
  call void @root_tag_clear(ptr noundef %15, i32 noundef %16) #14, !dbg !1865
  br label %if.end10, !dbg !1865

if.end10:                                         ; preds = %if.then, %if.then4, %if.then9, %while.end
  ret void, !dbg !1866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @radix_tree_iter_tag_clear(ptr noundef %root, ptr noundef %iter, i32 noundef %tag) #0 align 16 !dbg !1867 {
entry:
  %root.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1871, metadata !DIExpression()), !dbg !1874
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1872, metadata !DIExpression()), !dbg !1875
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1873, metadata !DIExpression()), !dbg !1876
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1877
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !1878
  %node = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3, !dbg !1879
  %2 = load ptr, ptr %node, align 8, !dbg !1879
  %3 = load i32, ptr %tag.addr, align 4, !dbg !1880
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !1881
  %call = call i32 @iter_offset(ptr noundef %4) #14, !dbg !1882
  call void @node_tag_clear(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef %call) #14, !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iter_offset(ptr noundef %iter) #0 align 16 !dbg !1885 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1889, metadata !DIExpression()), !dbg !1890
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1891
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !1892
  %1 = load i64, ptr %index, align 8, !dbg !1892
  %and = and i64 %1, 63, !dbg !1893
  %conv = trunc i64 %and to i32, !dbg !1891
  ret i32 %conv, !dbg !1894
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_tag_get(ptr noundef %root, i64 noundef %index, i32 noundef %tag) #0 align 16 !dbg !1895 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %tag.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %offset = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1899, metadata !DIExpression()), !dbg !1907
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1900, metadata !DIExpression()), !dbg !1908
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !1901, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1902, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #13, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1903, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !1904, metadata !DIExpression()), !dbg !1914
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1915
  %1 = load i32, ptr %tag.addr, align 4, !dbg !1917
  %call = call i32 @root_tag_get(ptr noundef %0, i32 noundef %1) #14, !dbg !1918
  %tobool = icmp ne i32 %call, 0, !dbg !1918
  br i1 %tobool, label %if.end, label %if.then, !dbg !1919

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1920

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %root.addr, align 8, !dbg !1921
  %call1 = call i32 @radix_tree_load_root(ptr noundef %2, ptr noundef %node, ptr noundef %maxindex) #14, !dbg !1922
  %3 = load i64, ptr %index.addr, align 8, !dbg !1923
  %4 = load i64, ptr %maxindex, align 8, !dbg !1925
  %cmp = icmp ugt i64 %3, %4, !dbg !1926
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1927

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1928

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !1929

while.cond:                                       ; preds = %cleanup.cont, %if.end3
  %5 = load ptr, ptr %node, align 8, !dbg !1930
  %call4 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %5) #14, !dbg !1931
  br i1 %call4, label %while.body, label %while.end, !dbg !1929

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1905, metadata !DIExpression()), !dbg !1933
  %6 = load ptr, ptr %node, align 8, !dbg !1934
  %call5 = call ptr @entry_to_node(ptr noundef %6) #14, !dbg !1935
  store ptr %call5, ptr %parent, align 8, !dbg !1936
  %7 = load ptr, ptr %parent, align 8, !dbg !1937
  %8 = load i64, ptr %index.addr, align 8, !dbg !1938
  %call6 = call i32 @radix_tree_descend(ptr noundef %7, ptr noundef %node, i64 noundef %8) #14, !dbg !1939
  store i32 %call6, ptr %offset, align 4, !dbg !1940
  %9 = load ptr, ptr %parent, align 8, !dbg !1941
  %10 = load i32, ptr %tag.addr, align 4, !dbg !1943
  %11 = load i32, ptr %offset, align 4, !dbg !1944
  %call7 = call i32 @tag_get(ptr noundef %9, i32 noundef %10, i32 noundef %11) #14, !dbg !1945
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1945
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1946

if.then9:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !1947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1947

if.end10:                                         ; preds = %while.body
  %12 = load ptr, ptr %node, align 8, !dbg !1948
  %call11 = call ptr @xa_mk_internal(i64 noundef 256) #14, !dbg !1950
  %cmp12 = icmp eq ptr %12, %call11, !dbg !1951
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1952

if.then13:                                        ; preds = %if.end10
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1953

if.end14:                                         ; preds = %if.end10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1954
  br label %cleanup, !dbg !1954

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !1954
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1929, !llvm.loop !1955

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 1, ptr %retval, align 4, !dbg !1956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !1956

cleanup15:                                        ; preds = %while.end, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #13, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1957
  %13 = load i32, ptr %retval, align 4, !dbg !1957
  ret i32 %13, !dbg !1957
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_iter_resume(ptr noundef %slot, ptr noundef %iter) #0 align 16 !dbg !1958 {
entry:
  %slot.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1963, metadata !DIExpression()), !dbg !1965
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1964, metadata !DIExpression()), !dbg !1966
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1967
  %call = call i64 @__radix_tree_iter_add(ptr noundef %0, i64 noundef 1) #14, !dbg !1968
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !1969
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 0, !dbg !1970
  store i64 %call, ptr %index, align 8, !dbg !1971
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !1972
  %index1 = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 0, !dbg !1973
  %3 = load i64, ptr %index1, align 8, !dbg !1973
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !1974
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %4, i32 0, i32 1, !dbg !1975
  store i64 %3, ptr %next_index, align 8, !dbg !1976
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !1977
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %5, i32 0, i32 2, !dbg !1978
  store i64 0, ptr %tags, align 8, !dbg !1979
  ret ptr null, !dbg !1980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__radix_tree_iter_add(ptr noundef %iter, i64 noundef %slots) #4 align 16 !dbg !1981 {
entry:
  %iter.addr = alloca ptr, align 8
  %slots.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1985, metadata !DIExpression()), !dbg !1987
  store i64 %slots, ptr %slots.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slots.addr, metadata !1986, metadata !DIExpression()), !dbg !1988
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1989
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !1990
  %1 = load i64, ptr %index, align 8, !dbg !1990
  %2 = load i64, ptr %slots.addr, align 8, !dbg !1991
  %add = add i64 %1, %2, !dbg !1992
  ret i64 %add, !dbg !1993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_next_chunk(ptr noundef %root, ptr noundef %iter, i32 noundef %flags) #0 align 16 !dbg !1994 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %tag = alloca i32, align 4
  %node = alloca ptr, align 8
  %child = alloca ptr, align 8
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  %maxindex = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %slot = alloca ptr, align 8
  %__UNIQUE_ID_rcu247 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__UNIQUE_ID_rcu249 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %tmp64 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1998, metadata !DIExpression()), !dbg !2018
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1999, metadata !DIExpression()), !dbg !2019
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2000, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !2001, metadata !DIExpression()), !dbg !2022
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2023
  %and = and i32 %0, 15, !dbg !2024
  store i32 %and, ptr %tag, align 4, !dbg !2022
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2002, metadata !DIExpression()), !dbg !2026
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2003, metadata !DIExpression()), !dbg !2027
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #13, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2004, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2005, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !2006, metadata !DIExpression()), !dbg !2031
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2032
  %and1 = and i32 %1, 16, !dbg !2034
  %tobool = icmp ne i32 %and1, 0, !dbg !2034
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2035

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %root.addr, align 8, !dbg !2036
  %3 = load i32, ptr %tag, align 4, !dbg !2037
  %call = call i32 @root_tag_get(ptr noundef %2, i32 noundef %3) #14, !dbg !2038
  %tobool2 = icmp ne i32 %call, 0, !dbg !2038
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2039

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !2040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2040

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !2041
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %4, i32 0, i32 1, !dbg !2042
  %5 = load i64, ptr %next_index, align 8, !dbg !2042
  store i64 %5, ptr %index, align 8, !dbg !2043
  %6 = load i64, ptr %index, align 8, !dbg !2044
  %tobool3 = icmp ne i64 %6, 0, !dbg !2044
  br i1 %tobool3, label %if.end8, label %land.lhs.true4, !dbg !2046

land.lhs.true4:                                   ; preds = %if.end
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !2047
  %index5 = getelementptr inbounds %struct.radix_tree_iter, ptr %7, i32 0, i32 0, !dbg !2048
  %8 = load i64, ptr %index5, align 8, !dbg !2048
  %tobool6 = icmp ne i64 %8, 0, !dbg !2047
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2049

if.then7:                                         ; preds = %land.lhs.true4
  store ptr null, ptr %retval, align 8, !dbg !2050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2050

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  br label %restart, !dbg !2048

restart:                                          ; preds = %if.then67, %if.then56, %if.end8
  call void @llvm.dbg.label(metadata !2007), !dbg !2051
  %9 = load ptr, ptr %root.addr, align 8, !dbg !2052
  %call9 = call i32 @radix_tree_load_root(ptr noundef %9, ptr noundef %child, ptr noundef %maxindex) #14, !dbg !2053
  %10 = load i64, ptr %index, align 8, !dbg !2054
  %11 = load i64, ptr %maxindex, align 8, !dbg !2056
  %cmp = icmp ugt i64 %10, %11, !dbg !2057
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !2058

if.then10:                                        ; preds = %restart
  store ptr null, ptr %retval, align 8, !dbg !2059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2059

if.end11:                                         ; preds = %restart
  %12 = load ptr, ptr %child, align 8, !dbg !2060
  %tobool12 = icmp ne ptr %12, null, !dbg !2060
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2062

if.then13:                                        ; preds = %if.end11
  store ptr null, ptr %retval, align 8, !dbg !2063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2063

if.end14:                                         ; preds = %if.end11
  %13 = load ptr, ptr %child, align 8, !dbg !2064
  %call15 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %13) #14, !dbg !2066
  br i1 %call15, label %if.end20, label %if.then16, !dbg !2067

if.then16:                                        ; preds = %if.end14
  %14 = load i64, ptr %index, align 8, !dbg !2068
  %15 = load ptr, ptr %iter.addr, align 8, !dbg !2070
  %index17 = getelementptr inbounds %struct.radix_tree_iter, ptr %15, i32 0, i32 0, !dbg !2071
  store i64 %14, ptr %index17, align 8, !dbg !2072
  %16 = load i64, ptr %maxindex, align 8, !dbg !2073
  %add = add i64 %16, 1, !dbg !2074
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !2075
  %next_index18 = getelementptr inbounds %struct.radix_tree_iter, ptr %17, i32 0, i32 1, !dbg !2076
  store i64 %add, ptr %next_index18, align 8, !dbg !2077
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !2078
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %18, i32 0, i32 2, !dbg !2079
  store i64 1, ptr %tags, align 8, !dbg !2080
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !2081
  %node19 = getelementptr inbounds %struct.radix_tree_iter, ptr %19, i32 0, i32 3, !dbg !2082
  store ptr null, ptr %node19, align 8, !dbg !2083
  %20 = load ptr, ptr %root.addr, align 8, !dbg !2084
  %xa_head = getelementptr inbounds %struct.xarray, ptr %20, i32 0, i32 2, !dbg !2085
  store ptr %xa_head, ptr %retval, align 8, !dbg !2086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2086

if.end20:                                         ; preds = %if.end14
  br label %do.body, !dbg !2087

do.body:                                          ; preds = %land.end, %if.end20
  %21 = load ptr, ptr %child, align 8, !dbg !2088
  %call21 = call ptr @entry_to_node(ptr noundef %21) #14, !dbg !2089
  store ptr %call21, ptr %node, align 8, !dbg !2090
  %22 = load ptr, ptr %node, align 8, !dbg !2091
  %23 = load i64, ptr %index, align 8, !dbg !2092
  %call22 = call i32 @radix_tree_descend(ptr noundef %22, ptr noundef %child, i64 noundef %23) #14, !dbg !2093
  %conv = zext i32 %call22 to i64, !dbg !2093
  store i64 %conv, ptr %offset, align 8, !dbg !2094
  %24 = load i32, ptr %flags.addr, align 4, !dbg !2095
  %and23 = and i32 %24, 16, !dbg !2096
  %tobool24 = icmp ne i32 %and23, 0, !dbg !2096
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !2097

cond.true:                                        ; preds = %do.body
  %25 = load ptr, ptr %node, align 8, !dbg !2098
  %26 = load i32, ptr %tag, align 4, !dbg !2099
  %27 = load i64, ptr %offset, align 8, !dbg !2100
  %conv25 = trunc i64 %27 to i32, !dbg !2100
  %call26 = call i32 @tag_get(ptr noundef %25, i32 noundef %26, i32 noundef %conv25) #14, !dbg !2101
  %tobool27 = icmp ne i32 %call26, 0, !dbg !2101
  br i1 %tobool27, label %if.end65, label %if.then29, !dbg !2102

cond.false:                                       ; preds = %do.body
  %28 = load ptr, ptr %child, align 8, !dbg !2103
  %tobool28 = icmp ne ptr %28, null, !dbg !2103
  br i1 %tobool28, label %if.end65, label %if.then29, !dbg !2097

if.then29:                                        ; preds = %cond.false, %cond.true
  %29 = load i32, ptr %flags.addr, align 4, !dbg !2104
  %and30 = and i32 %29, 32, !dbg !2106
  %tobool31 = icmp ne i32 %and30, 0, !dbg !2106
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2107

if.then32:                                        ; preds = %if.then29
  store ptr null, ptr %retval, align 8, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2108

if.end33:                                         ; preds = %if.then29
  %30 = load i32, ptr %flags.addr, align 4, !dbg !2109
  %and34 = and i32 %30, 16, !dbg !2110
  %tobool35 = icmp ne i32 %and34, 0, !dbg !2110
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !2111

if.then36:                                        ; preds = %if.end33
  %31 = load ptr, ptr %node, align 8, !dbg !2112
  %32 = load i32, ptr %tag, align 4, !dbg !2113
  %33 = load i64, ptr %offset, align 8, !dbg !2114
  %add37 = add i64 %33, 1, !dbg !2115
  %call38 = call i64 @radix_tree_find_next_bit(ptr noundef %31, i32 noundef %32, i64 noundef %add37) #14, !dbg !2116
  store i64 %call38, ptr %offset, align 8, !dbg !2117
  br label %if.end46, !dbg !2118

if.else:                                          ; preds = %if.end33
  br label %while.cond, !dbg !2119

while.cond:                                       ; preds = %cleanup.cont, %if.else
  %34 = load i64, ptr %offset, align 8, !dbg !2120
  %inc = add i64 %34, 1, !dbg !2120
  store i64 %inc, ptr %offset, align 8, !dbg !2120
  %cmp39 = icmp ult i64 %inc, 64, !dbg !2121
  br i1 %cmp39, label %while.body, label %while.end, !dbg !2119

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2008, metadata !DIExpression()), !dbg !2123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #13, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu247, metadata !2014, metadata !DIExpression()), !dbg !2124
  br label %do.body41, !dbg !2125

do.body41:                                        ; preds = %while.body
  br label %do.cond, !dbg !2127

do.cond:                                          ; preds = %do.body41
  br label %do.end, !dbg !2127

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %node, align 8, !dbg !2125
  %slots = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 7, !dbg !2125
  %36 = load i64, ptr %offset, align 8, !dbg !2125
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %36, !dbg !2125
  %37 = load volatile ptr, ptr %arrayidx, align 8, !dbg !2125
  store ptr %37, ptr %tmp, align 8, !dbg !2127
  %38 = load ptr, ptr %tmp, align 8, !dbg !2125
  store ptr %38, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !2124
  %39 = load ptr, ptr %__UNIQUE_ID_rcu247, align 8, !dbg !2124
  store ptr %39, ptr %tmp42, align 8, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu247) #13, !dbg !2129
  %40 = load ptr, ptr %tmp42, align 8, !dbg !2124
  store ptr %40, ptr %slot, align 8, !dbg !2123
  %41 = load ptr, ptr %slot, align 8, !dbg !2130
  %tobool43 = icmp ne ptr %41, null, !dbg !2130
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2132

if.then44:                                        ; preds = %do.end
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2133

if.end45:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2134
  br label %cleanup, !dbg !2134

cleanup:                                          ; preds = %if.end45, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !2134
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2119, !llvm.loop !2135

while.end:                                        ; preds = %cleanup, %while.cond
  br label %if.end46

if.end46:                                         ; preds = %while.end, %if.then36
  %42 = load ptr, ptr %node, align 8, !dbg !2136
  %call47 = call i64 @node_maxindex(ptr noundef %42) #14, !dbg !2137
  %not = xor i64 %call47, -1, !dbg !2138
  %43 = load i64, ptr %index, align 8, !dbg !2139
  %and48 = and i64 %43, %not, !dbg !2139
  store i64 %and48, ptr %index, align 8, !dbg !2139
  %44 = load i64, ptr %offset, align 8, !dbg !2140
  %45 = load ptr, ptr %node, align 8, !dbg !2141
  %shift = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 0, !dbg !2142
  %46 = load i8, ptr %shift, align 8, !dbg !2142
  %conv49 = zext i8 %46 to i32, !dbg !2141
  %sh_prom = zext i32 %conv49 to i64, !dbg !2143
  %shl = shl i64 %44, %sh_prom, !dbg !2143
  %47 = load i64, ptr %index, align 8, !dbg !2144
  %add50 = add i64 %47, %shl, !dbg !2144
  store i64 %add50, ptr %index, align 8, !dbg !2144
  %48 = load i64, ptr %index, align 8, !dbg !2145
  %tobool51 = icmp ne i64 %48, 0, !dbg !2145
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !2147

if.then52:                                        ; preds = %if.end46
  store ptr null, ptr %retval, align 8, !dbg !2148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2148

if.end53:                                         ; preds = %if.end46
  %49 = load i64, ptr %offset, align 8, !dbg !2149
  %cmp54 = icmp eq i64 %49, 64, !dbg !2151
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2152

if.then56:                                        ; preds = %if.end53
  br label %restart, !dbg !2153

if.end57:                                         ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu249) #13, !dbg !2154
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu249, metadata !2016, metadata !DIExpression()), !dbg !2154
  br label %do.body58, !dbg !2155

do.body58:                                        ; preds = %if.end57
  br label %do.cond59, !dbg !2157

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !2157

do.end60:                                         ; preds = %do.cond59
  %50 = load ptr, ptr %node, align 8, !dbg !2155
  %slots62 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 7, !dbg !2155
  %51 = load i64, ptr %offset, align 8, !dbg !2155
  %arrayidx63 = getelementptr [64 x ptr], ptr %slots62, i64 0, i64 %51, !dbg !2155
  %52 = load volatile ptr, ptr %arrayidx63, align 8, !dbg !2155
  store ptr %52, ptr %tmp61, align 8, !dbg !2157
  %53 = load ptr, ptr %tmp61, align 8, !dbg !2155
  store ptr %53, ptr %__UNIQUE_ID_rcu249, align 8, !dbg !2154
  %54 = load ptr, ptr %__UNIQUE_ID_rcu249, align 8, !dbg !2154
  store ptr %54, ptr %tmp64, align 8, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu249) #13, !dbg !2159
  %55 = load ptr, ptr %tmp64, align 8, !dbg !2154
  store ptr %55, ptr %child, align 8, !dbg !2160
  br label %if.end65, !dbg !2161

if.end65:                                         ; preds = %do.end60, %cond.false, %cond.true
  %56 = load ptr, ptr %child, align 8, !dbg !2162
  %tobool66 = icmp ne ptr %56, null, !dbg !2162
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !2164

if.then67:                                        ; preds = %if.end65
  br label %restart, !dbg !2165

if.end68:                                         ; preds = %if.end65
  %57 = load ptr, ptr %child, align 8, !dbg !2166
  %call69 = call ptr @xa_mk_internal(i64 noundef 256) #14, !dbg !2168
  %cmp70 = icmp eq ptr %57, %call69, !dbg !2169
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !2170

if.then72:                                        ; preds = %if.end68
  br label %do.end80, !dbg !2171

if.end73:                                         ; preds = %if.end68
  br label %do.cond74, !dbg !2172

do.cond74:                                        ; preds = %if.end73
  %58 = load ptr, ptr %node, align 8, !dbg !2173
  %shift75 = getelementptr inbounds %struct.xa_node, ptr %58, i32 0, i32 0, !dbg !2174
  %59 = load i8, ptr %shift75, align 8, !dbg !2174
  %conv76 = zext i8 %59 to i32, !dbg !2173
  %tobool77 = icmp ne i32 %conv76, 0, !dbg !2173
  br i1 %tobool77, label %land.rhs, label %land.end, !dbg !2175

land.rhs:                                         ; preds = %do.cond74
  %60 = load ptr, ptr %child, align 8, !dbg !2176
  %call78 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %60) #14, !dbg !2177
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond74
  %61 = phi i1 [ false, %do.cond74 ], [ %call78, %land.rhs ], !dbg !2178
  br i1 %61, label %do.body, label %do.end80, !dbg !2172, !llvm.loop !2179

do.end80:                                         ; preds = %land.end, %if.then72
  %62 = load i64, ptr %index, align 8, !dbg !2181
  %63 = load ptr, ptr %node, align 8, !dbg !2182
  %call81 = call i64 @node_maxindex(ptr noundef %63) #14, !dbg !2183
  %not82 = xor i64 %call81, -1, !dbg !2184
  %and83 = and i64 %62, %not82, !dbg !2185
  %64 = load i64, ptr %offset, align 8, !dbg !2186
  %or = or i64 %and83, %64, !dbg !2187
  %65 = load ptr, ptr %iter.addr, align 8, !dbg !2188
  %index84 = getelementptr inbounds %struct.radix_tree_iter, ptr %65, i32 0, i32 0, !dbg !2189
  store i64 %or, ptr %index84, align 8, !dbg !2190
  %66 = load i64, ptr %index, align 8, !dbg !2191
  %67 = load ptr, ptr %node, align 8, !dbg !2192
  %call85 = call i64 @node_maxindex(ptr noundef %67) #14, !dbg !2193
  %or86 = or i64 %66, %call85, !dbg !2194
  %add87 = add i64 %or86, 1, !dbg !2195
  %68 = load ptr, ptr %iter.addr, align 8, !dbg !2196
  %next_index88 = getelementptr inbounds %struct.radix_tree_iter, ptr %68, i32 0, i32 1, !dbg !2197
  store i64 %add87, ptr %next_index88, align 8, !dbg !2198
  %69 = load ptr, ptr %node, align 8, !dbg !2199
  %70 = load ptr, ptr %iter.addr, align 8, !dbg !2200
  %node89 = getelementptr inbounds %struct.radix_tree_iter, ptr %70, i32 0, i32 3, !dbg !2201
  store ptr %69, ptr %node89, align 8, !dbg !2202
  %71 = load i32, ptr %flags.addr, align 4, !dbg !2203
  %and90 = and i32 %71, 16, !dbg !2205
  %tobool91 = icmp ne i32 %and90, 0, !dbg !2205
  br i1 %tobool91, label %if.then92, label %if.end94, !dbg !2206

if.then92:                                        ; preds = %do.end80
  %72 = load ptr, ptr %iter.addr, align 8, !dbg !2207
  %73 = load ptr, ptr %node, align 8, !dbg !2208
  %74 = load i64, ptr %offset, align 8, !dbg !2209
  %conv93 = trunc i64 %74 to i32, !dbg !2209
  %75 = load i32, ptr %tag, align 4, !dbg !2210
  call void @set_iter_tags(ptr noundef %72, ptr noundef %73, i32 noundef %conv93, i32 noundef %75) #14, !dbg !2211
  br label %if.end94, !dbg !2211

if.end94:                                         ; preds = %if.then92, %do.end80
  %76 = load ptr, ptr %node, align 8, !dbg !2212
  %slots95 = getelementptr inbounds %struct.xa_node, ptr %76, i32 0, i32 7, !dbg !2213
  %arraydecay = getelementptr inbounds [64 x ptr], ptr %slots95, i64 0, i64 0, !dbg !2212
  %77 = load i64, ptr %offset, align 8, !dbg !2214
  %add.ptr = getelementptr ptr, ptr %arraydecay, i64 %77, !dbg !2215
  store ptr %add.ptr, ptr %retval, align 8, !dbg !2216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !2216

cleanup96:                                        ; preds = %if.end94, %if.then52, %if.then32, %if.then16, %if.then13, %if.then10, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #13, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13, !dbg !2217
  %78 = load ptr, ptr %retval, align 8, !dbg !2217
  ret ptr %78, !dbg !2217

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @radix_tree_find_next_bit(ptr noundef %node, i32 noundef %tag, i64 noundef %offset) #7 align 16 !dbg !2218 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2222, metadata !DIExpression()), !dbg !2229
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2223, metadata !DIExpression()), !dbg !2230
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2224, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !2225, metadata !DIExpression()), !dbg !2233
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2234
  %1 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 8, !dbg !2235
  %2 = load i32, ptr %tag.addr, align 4, !dbg !2236
  %idxprom = zext i32 %2 to i64, !dbg !2234
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %1, i64 0, i64 %idxprom, !dbg !2234
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !2234
  store ptr %arraydecay, ptr %addr, align 8, !dbg !2233
  %3 = load i64, ptr %offset.addr, align 8, !dbg !2237
  %cmp = icmp ult i64 %3, 64, !dbg !2238
  br i1 %cmp, label %if.then, label %if.end17, !dbg !2239

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2226, metadata !DIExpression()), !dbg !2241
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2242
  %div = udiv i64 %4, 64, !dbg !2243
  %5 = load ptr, ptr %addr, align 8, !dbg !2244
  %add.ptr = getelementptr i64, ptr %5, i64 %div, !dbg !2244
  store ptr %add.ptr, ptr %addr, align 8, !dbg !2244
  %6 = load ptr, ptr %addr, align 8, !dbg !2245
  %7 = load i64, ptr %6, align 8, !dbg !2246
  %8 = load i64, ptr %offset.addr, align 8, !dbg !2247
  %rem = urem i64 %8, 64, !dbg !2248
  %shr = lshr i64 %7, %rem, !dbg !2249
  store i64 %shr, ptr %tmp, align 8, !dbg !2250
  %9 = load i64, ptr %tmp, align 8, !dbg !2251
  %tobool = icmp ne i64 %9, 0, !dbg !2251
  br i1 %tobool, label %if.then1, label %if.end, !dbg !2253

if.then1:                                         ; preds = %if.then
  %10 = load i64, ptr %tmp, align 8, !dbg !2254
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2254
  br i1 %11, label %cond.true, label %cond.false, !dbg !2254

cond.true:                                        ; preds = %if.then1
  %12 = load i64, ptr %tmp, align 8, !dbg !2254
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !2254
  %cast = trunc i64 %13 to i32, !dbg !2254
  %conv = sext i32 %cast to i64, !dbg !2254
  br label %cond.end, !dbg !2254

cond.false:                                       ; preds = %if.then1
  %14 = load i64, ptr %tmp, align 8, !dbg !2254
  %call = call i64 @variable__ffs(i64 noundef %14) #14, !dbg !2254
  br label %cond.end, !dbg !2254

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !2254
  %15 = load i64, ptr %offset.addr, align 8, !dbg !2255
  %add = add i64 %cond, %15, !dbg !2256
  store i64 %add, ptr %retval, align 8, !dbg !2257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2257

if.end:                                           ; preds = %if.then
  %16 = load i64, ptr %offset.addr, align 8, !dbg !2258
  %add2 = add i64 %16, 64, !dbg !2259
  %and = and i64 %add2, -64, !dbg !2260
  store i64 %and, ptr %offset.addr, align 8, !dbg !2261
  br label %while.cond, !dbg !2262

while.cond:                                       ; preds = %if.end15, %if.end
  %17 = load i64, ptr %offset.addr, align 8, !dbg !2263
  %cmp3 = icmp ult i64 %17, 64, !dbg !2264
  br i1 %cmp3, label %while.body, label %while.end, !dbg !2262

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %addr, align 8, !dbg !2265
  %incdec.ptr = getelementptr i64, ptr %18, i32 1, !dbg !2265
  store ptr %incdec.ptr, ptr %addr, align 8, !dbg !2265
  %19 = load i64, ptr %incdec.ptr, align 8, !dbg !2267
  store i64 %19, ptr %tmp, align 8, !dbg !2268
  %20 = load i64, ptr %tmp, align 8, !dbg !2269
  %tobool5 = icmp ne i64 %20, 0, !dbg !2269
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !2271

if.then6:                                         ; preds = %while.body
  %21 = load i64, ptr %tmp, align 8, !dbg !2272
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !2272
  br i1 %22, label %cond.true7, label %cond.false10, !dbg !2272

cond.true7:                                       ; preds = %if.then6
  %23 = load i64, ptr %tmp, align 8, !dbg !2272
  %24 = call i64 @llvm.cttz.i64(i64 %23, i1 true), !dbg !2272
  %cast8 = trunc i64 %24 to i32, !dbg !2272
  %conv9 = sext i32 %cast8 to i64, !dbg !2272
  br label %cond.end12, !dbg !2272

cond.false10:                                     ; preds = %if.then6
  %25 = load i64, ptr %tmp, align 8, !dbg !2272
  %call11 = call i64 @variable__ffs(i64 noundef %25) #14, !dbg !2272
  br label %cond.end12, !dbg !2272

cond.end12:                                       ; preds = %cond.false10, %cond.true7
  %cond13 = phi i64 [ %conv9, %cond.true7 ], [ %call11, %cond.false10 ], !dbg !2272
  %26 = load i64, ptr %offset.addr, align 8, !dbg !2273
  %add14 = add i64 %cond13, %26, !dbg !2274
  store i64 %add14, ptr %retval, align 8, !dbg !2275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2275

if.end15:                                         ; preds = %while.body
  %27 = load i64, ptr %offset.addr, align 8, !dbg !2276
  %add16 = add i64 %27, 64, !dbg !2276
  store i64 %add16, ptr %offset.addr, align 8, !dbg !2276
  br label %while.cond, !dbg !2262, !llvm.loop !2277

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2279
  br label %cleanup, !dbg !2279

cleanup:                                          ; preds = %while.end, %cond.end12, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2279
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !2280

if.end17:                                         ; preds = %cleanup.cont, %entry
  store i64 64, ptr %retval, align 8, !dbg !2281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !2281

cleanup18:                                        ; preds = %if.end17, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !2282
  %28 = load i64, ptr %retval, align 8, !dbg !2282
  ret i64 %28, !dbg !2282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @node_maxindex(ptr noundef %node) #4 align 16 !dbg !2283 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2289
  %shift = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 0, !dbg !2290
  %1 = load i8, ptr %shift, align 8, !dbg !2290
  %conv = zext i8 %1 to i32, !dbg !2289
  %call = call i64 @shift_maxindex(i32 noundef %conv) #14, !dbg !2291
  ret i64 %call, !dbg !2292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_iter_tags(ptr noundef %iter, ptr noundef %node, i32 noundef %offset, i32 noundef %tag) #0 align 16 !dbg !2293 {
entry:
  %iter.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %tag_long = alloca i32, align 4
  %tag_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2297, metadata !DIExpression()), !dbg !2303
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2298, metadata !DIExpression()), !dbg !2304
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2299, metadata !DIExpression()), !dbg !2305
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2300, metadata !DIExpression()), !dbg !2306
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_long) #13, !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %tag_long, metadata !2301, metadata !DIExpression()), !dbg !2308
  %0 = load i32, ptr %offset.addr, align 4, !dbg !2309
  %div = udiv i32 %0, 64, !dbg !2310
  store i32 %div, ptr %tag_long, align 4, !dbg !2308
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_bit) #13, !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %tag_bit, metadata !2302, metadata !DIExpression()), !dbg !2312
  %1 = load i32, ptr %offset.addr, align 4, !dbg !2313
  %rem = urem i32 %1, 64, !dbg !2314
  store i32 %rem, ptr %tag_bit, align 4, !dbg !2312
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2315
  %tobool = icmp ne ptr %2, null, !dbg !2315
  br i1 %tobool, label %if.end, label %if.then, !dbg !2317

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !2318
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2, !dbg !2320
  store i64 1, ptr %tags, align 8, !dbg !2321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2322

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2323
  %5 = getelementptr inbounds %struct.xa_node, ptr %4, i32 0, i32 8, !dbg !2324
  %6 = load i32, ptr %tag.addr, align 4, !dbg !2325
  %idxprom = zext i32 %6 to i64, !dbg !2323
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %5, i64 0, i64 %idxprom, !dbg !2323
  %7 = load i32, ptr %tag_long, align 4, !dbg !2326
  %idxprom1 = zext i32 %7 to i64, !dbg !2323
  %arrayidx2 = getelementptr [1 x i64], ptr %arrayidx, i64 0, i64 %idxprom1, !dbg !2323
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !2323
  %9 = load i32, ptr %tag_bit, align 4, !dbg !2327
  %sh_prom = zext i32 %9 to i64, !dbg !2328
  %shr = lshr i64 %8, %sh_prom, !dbg !2328
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !2329
  %tags3 = getelementptr inbounds %struct.radix_tree_iter, ptr %10, i32 0, i32 2, !dbg !2330
  store i64 %shr, ptr %tags3, align 8, !dbg !2331
  %11 = load i32, ptr %tag_long, align 4, !dbg !2332
  %conv = zext i32 %11 to i64, !dbg !2332
  %cmp = icmp ult i64 %conv, 0, !dbg !2334
  br i1 %cmp, label %if.then5, label %if.end15, !dbg !2335

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %tag_bit, align 4, !dbg !2336
  %tobool6 = icmp ne i32 %12, 0, !dbg !2336
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !2339

if.then7:                                         ; preds = %if.then5
  %13 = load ptr, ptr %node.addr, align 8, !dbg !2340
  %14 = getelementptr inbounds %struct.xa_node, ptr %13, i32 0, i32 8, !dbg !2341
  %15 = load i32, ptr %tag.addr, align 4, !dbg !2342
  %idxprom8 = zext i32 %15 to i64, !dbg !2340
  %arrayidx9 = getelementptr [3 x [1 x i64]], ptr %14, i64 0, i64 %idxprom8, !dbg !2340
  %16 = load i32, ptr %tag_long, align 4, !dbg !2343
  %add = add i32 %16, 1, !dbg !2344
  %idxprom10 = zext i32 %add to i64, !dbg !2340
  %arrayidx11 = getelementptr [1 x i64], ptr %arrayidx9, i64 0, i64 %idxprom10, !dbg !2340
  %17 = load i64, ptr %arrayidx11, align 8, !dbg !2340
  %18 = load i32, ptr %tag_bit, align 4, !dbg !2345
  %sub = sub i32 64, %18, !dbg !2346
  %sh_prom12 = zext i32 %sub to i64, !dbg !2347
  %shl = shl i64 %17, %sh_prom12, !dbg !2347
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !2348
  %tags13 = getelementptr inbounds %struct.radix_tree_iter, ptr %19, i32 0, i32 2, !dbg !2349
  %20 = load i64, ptr %tags13, align 8, !dbg !2350
  %or = or i64 %20, %shl, !dbg !2350
  store i64 %or, ptr %tags13, align 8, !dbg !2350
  br label %if.end14, !dbg !2348

if.end14:                                         ; preds = %if.then7, %if.then5
  %21 = load ptr, ptr %iter.addr, align 8, !dbg !2351
  %call = call i64 @__radix_tree_iter_add(ptr noundef %21, i64 noundef 64) #14, !dbg !2352
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !2353
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %22, i32 0, i32 1, !dbg !2354
  store i64 %call, ptr %next_index, align 8, !dbg !2355
  br label %if.end15, !dbg !2356

if.end15:                                         ; preds = %if.end14, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2357
  br label %cleanup, !dbg !2357

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_bit) #13, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_long) #13, !dbg !2357
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2357

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_gang_lookup(ptr noundef %root, ptr noundef %results, i64 noundef %first_index, i32 noundef %max_items) #0 align 16 !dbg !2358 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %first_index.addr = alloca i64, align 8
  %max_items.addr = alloca i32, align 4
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu252 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2362, metadata !DIExpression()), !dbg !2374
  store ptr %results, ptr %results.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %results.addr, metadata !2363, metadata !DIExpression()), !dbg !2375
  store i64 %first_index, ptr %first_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_index.addr, metadata !2364, metadata !DIExpression()), !dbg !2376
  store i32 %max_items, ptr %max_items.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_items.addr, metadata !2365, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #13, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2366, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2367, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2368, metadata !DIExpression()), !dbg !2383
  store i32 0, ptr %ret, align 4, !dbg !2383
  %0 = load i32, ptr %max_items.addr, align 4, !dbg !2384
  %tobool = icmp ne i32 %0, 0, !dbg !2384
  %lnot = xor i1 %tobool, true, !dbg !2384
  %lnot1 = xor i1 %lnot, true, !dbg !2384
  %lnot2 = xor i1 %lnot1, true, !dbg !2384
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2384
  %conv = sext i32 %lnot.ext to i64, !dbg !2384
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2384
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2384
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2386

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2387

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %first_index.addr, align 8, !dbg !2388
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %1) #14, !dbg !2388
  store ptr %call, ptr %slot, align 8, !dbg !2388
  br label %for.cond, !dbg !2388

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %slot, align 8, !dbg !2389
  %tobool4 = icmp ne ptr %2, null, !dbg !2389
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !2389

lor.rhs:                                          ; preds = %for.cond
  %3 = load ptr, ptr %root.addr, align 8, !dbg !2389
  %call5 = call ptr @radix_tree_next_chunk(ptr noundef %3, ptr noundef %iter, i32 noundef 0) #14, !dbg !2389
  store ptr %call5, ptr %slot, align 8, !dbg !2389
  %tobool6 = icmp ne ptr %call5, null, !dbg !2389
  br label %lor.end, !dbg !2389

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %4 = phi i1 [ true, %for.cond ], [ %tobool6, %lor.rhs ]
  br i1 %4, label %for.body, label %for.end, !dbg !2388

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu252) #13, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu252, metadata !2369, metadata !DIExpression()), !dbg !2390
  br label %do.body, !dbg !2391

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !2393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2393

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %slot, align 8, !dbg !2391
  %6 = load volatile ptr, ptr %5, align 8, !dbg !2391
  store ptr %6, ptr %tmp, align 8, !dbg !2393
  %7 = load ptr, ptr %tmp, align 8, !dbg !2391
  store ptr %7, ptr %__UNIQUE_ID_rcu252, align 8, !dbg !2390
  %8 = load ptr, ptr %__UNIQUE_ID_rcu252, align 8, !dbg !2390
  store ptr %8, ptr %tmp7, align 8, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu252) #13, !dbg !2395
  %9 = load ptr, ptr %tmp7, align 8, !dbg !2390
  %10 = load ptr, ptr %results.addr, align 8, !dbg !2396
  %11 = load i32, ptr %ret, align 4, !dbg !2397
  %idxprom = zext i32 %11 to i64, !dbg !2396
  %arrayidx = getelementptr ptr, ptr %10, i64 %idxprom, !dbg !2396
  store ptr %9, ptr %arrayidx, align 8, !dbg !2398
  %12 = load ptr, ptr %results.addr, align 8, !dbg !2399
  %13 = load i32, ptr %ret, align 4, !dbg !2401
  %idxprom8 = zext i32 %13 to i64, !dbg !2399
  %arrayidx9 = getelementptr ptr, ptr %12, i64 %idxprom8, !dbg !2399
  %14 = load ptr, ptr %arrayidx9, align 8, !dbg !2399
  %tobool10 = icmp ne ptr %14, null, !dbg !2399
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2402

if.then11:                                        ; preds = %do.end
  br label %for.inc, !dbg !2403

if.end12:                                         ; preds = %do.end
  %15 = load ptr, ptr %results.addr, align 8, !dbg !2404
  %16 = load i32, ptr %ret, align 4, !dbg !2406
  %idxprom13 = zext i32 %16 to i64, !dbg !2404
  %arrayidx14 = getelementptr ptr, ptr %15, i64 %idxprom13, !dbg !2404
  %17 = load ptr, ptr %arrayidx14, align 8, !dbg !2404
  %call15 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %17) #14, !dbg !2407
  br i1 %call15, label %if.then16, label %if.end18, !dbg !2408

if.then16:                                        ; preds = %if.end12
  %call17 = call ptr @radix_tree_iter_retry(ptr noundef %iter) #14, !dbg !2409
  store ptr %call17, ptr %slot, align 8, !dbg !2411
  br label %for.inc, !dbg !2412

if.end18:                                         ; preds = %if.end12
  %18 = load i32, ptr %ret, align 4, !dbg !2413
  %inc = add i32 %18, 1, !dbg !2413
  store i32 %inc, ptr %ret, align 4, !dbg !2413
  %19 = load i32, ptr %max_items.addr, align 4, !dbg !2415
  %cmp = icmp eq i32 %inc, %19, !dbg !2416
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !2417

if.then20:                                        ; preds = %if.end18
  br label %for.end, !dbg !2418

if.end21:                                         ; preds = %if.end18
  br label %for.inc, !dbg !2419

for.inc:                                          ; preds = %if.end21, %if.then16, %if.then11
  %20 = load ptr, ptr %slot, align 8, !dbg !2389
  %call22 = call ptr @radix_tree_next_slot(ptr noundef %20, ptr noundef %iter, i32 noundef 0) #14, !dbg !2389
  store ptr %call22, ptr %slot, align 8, !dbg !2389
  br label %for.cond, !dbg !2389, !llvm.loop !2420

for.end:                                          ; preds = %if.then20, %lor.end
  %21 = load i32, ptr %ret, align 4, !dbg !2422
  store i32 %21, ptr %retval, align 4, !dbg !2423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2423

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2424
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !2424
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #13, !dbg !2424
  %22 = load i32, ptr %retval, align 4, !dbg !2424
  ret i32 %22, !dbg !2424
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %start) #7 align 16 !dbg !2425 {
entry:
  %iter.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2429, metadata !DIExpression()), !dbg !2431
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2430, metadata !DIExpression()), !dbg !2432
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !2433
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !2434
  store i64 0, ptr %index, align 8, !dbg !2435
  %1 = load i64, ptr %start.addr, align 8, !dbg !2436
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !2437
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 1, !dbg !2438
  store i64 %1, ptr %next_index, align 8, !dbg !2439
  ret ptr null, !dbg !2440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_iter_retry(ptr noundef %iter) #4 align 16 !dbg !2441 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !2447
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !2448
  %1 = load i64, ptr %index, align 8, !dbg !2448
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !2449
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 1, !dbg !2450
  store i64 %1, ptr %next_index, align 8, !dbg !2451
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !2452
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2, !dbg !2453
  store i64 0, ptr %tags, align 8, !dbg !2454
  ret ptr null, !dbg !2455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_next_slot(ptr noundef %slot, ptr noundef %iter, i32 noundef %flags) #7 align 16 !dbg !2456 {
entry:
  %retval = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %count = alloca i64, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !2460, metadata !DIExpression()), !dbg !2471
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2461, metadata !DIExpression()), !dbg !2472
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2462, metadata !DIExpression()), !dbg !2473
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2474
  %and = and i32 %0, 16, !dbg !2475
  %tobool = icmp ne i32 %and, 0, !dbg !2475
  br i1 %tobool, label %if.then, label %if.else, !dbg !2476

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !2477
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2, !dbg !2478
  %2 = load i64, ptr %tags, align 8, !dbg !2479
  %shr = lshr i64 %2, 1, !dbg !2479
  store i64 %shr, ptr %tags, align 8, !dbg !2479
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !2480
  %tags1 = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2, !dbg !2480
  %4 = load i64, ptr %tags1, align 8, !dbg !2480
  %tobool2 = icmp ne i64 %4, 0, !dbg !2480
  %lnot = xor i1 %tobool2, true, !dbg !2480
  %lnot3 = xor i1 %lnot, true, !dbg !2480
  %lnot4 = xor i1 %lnot3, true, !dbg !2480
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2480
  %conv = sext i32 %lnot.ext to i64, !dbg !2480
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2480
  %tobool5 = icmp ne i64 %expval, 0, !dbg !2480
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2482

if.then6:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !2483
  br label %return, !dbg !2483

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !2484
  %tags7 = getelementptr inbounds %struct.radix_tree_iter, ptr %5, i32 0, i32 2, !dbg !2484
  %6 = load i64, ptr %tags7, align 8, !dbg !2484
  %and8 = and i64 %6, 1, !dbg !2484
  %tobool9 = icmp ne i64 %and8, 0, !dbg !2484
  %lnot10 = xor i1 %tobool9, true, !dbg !2484
  %lnot12 = xor i1 %lnot10, true, !dbg !2484
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2484
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !2484
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 1), !dbg !2484
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !2484
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2486

if.then17:                                        ; preds = %if.end
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !2487
  %call = call i64 @__radix_tree_iter_add(ptr noundef %7, i64 noundef 1) #14, !dbg !2489
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !2490
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %8, i32 0, i32 0, !dbg !2491
  store i64 %call, ptr %index, align 8, !dbg !2492
  %9 = load ptr, ptr %slot.addr, align 8, !dbg !2493
  %incdec.ptr = getelementptr ptr, ptr %9, i32 1, !dbg !2493
  store ptr %incdec.ptr, ptr %slot.addr, align 8, !dbg !2493
  br label %found, !dbg !2494

if.end18:                                         ; preds = %if.end
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2495
  %and19 = and i32 %10, 32, !dbg !2496
  %tobool20 = icmp ne i32 %and19, 0, !dbg !2496
  br i1 %tobool20, label %if.end33, label %if.then21, !dbg !2497

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2463, metadata !DIExpression()), !dbg !2499
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !2500
  %tags22 = getelementptr inbounds %struct.radix_tree_iter, ptr %11, i32 0, i32 2, !dbg !2500
  %12 = load i64, ptr %tags22, align 8, !dbg !2500
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2500
  br i1 %13, label %cond.true, label %cond.false, !dbg !2500

cond.true:                                        ; preds = %if.then21
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !2500
  %tags23 = getelementptr inbounds %struct.radix_tree_iter, ptr %14, i32 0, i32 2, !dbg !2500
  %15 = load i64, ptr %tags23, align 8, !dbg !2500
  %16 = call i64 @llvm.cttz.i64(i64 %15, i1 true), !dbg !2500
  %cast = trunc i64 %16 to i32, !dbg !2500
  %conv24 = sext i32 %cast to i64, !dbg !2500
  br label %cond.end, !dbg !2500

cond.false:                                       ; preds = %if.then21
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !2500
  %tags25 = getelementptr inbounds %struct.radix_tree_iter, ptr %17, i32 0, i32 2, !dbg !2500
  %18 = load i64, ptr %tags25, align 8, !dbg !2500
  %call26 = call i64 @variable__ffs(i64 noundef %18) #14, !dbg !2500
  br label %cond.end, !dbg !2500

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv24, %cond.true ], [ %call26, %cond.false ], !dbg !2500
  %conv27 = trunc i64 %cond to i32, !dbg !2500
  store i32 %conv27, ptr %offset, align 4, !dbg !2499
  %19 = load i32, ptr %offset, align 4, !dbg !2501
  %inc = add i32 %19, 1, !dbg !2501
  store i32 %inc, ptr %offset, align 4, !dbg !2501
  %20 = load ptr, ptr %iter.addr, align 8, !dbg !2502
  %tags28 = getelementptr inbounds %struct.radix_tree_iter, ptr %20, i32 0, i32 2, !dbg !2503
  %21 = load i64, ptr %tags28, align 8, !dbg !2504
  %sh_prom = zext i32 %19 to i64, !dbg !2504
  %shr29 = lshr i64 %21, %sh_prom, !dbg !2504
  store i64 %shr29, ptr %tags28, align 8, !dbg !2504
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !2505
  %23 = load i32, ptr %offset, align 4, !dbg !2506
  %conv30 = zext i32 %23 to i64, !dbg !2506
  %call31 = call i64 @__radix_tree_iter_add(ptr noundef %22, i64 noundef %conv30) #14, !dbg !2507
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !2508
  %index32 = getelementptr inbounds %struct.radix_tree_iter, ptr %24, i32 0, i32 0, !dbg !2509
  store i64 %call31, ptr %index32, align 8, !dbg !2510
  %25 = load i32, ptr %offset, align 4, !dbg !2511
  %26 = load ptr, ptr %slot.addr, align 8, !dbg !2512
  %idx.ext = zext i32 %25 to i64, !dbg !2512
  %add.ptr = getelementptr ptr, ptr %26, i64 %idx.ext, !dbg !2512
  store ptr %add.ptr, ptr %slot.addr, align 8, !dbg !2512
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !2513
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %found
  ]

if.end33:                                         ; preds = %if.end18
  br label %if.end54, !dbg !2514

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #13, !dbg !2515
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2468, metadata !DIExpression()), !dbg !2516
  %27 = load ptr, ptr %iter.addr, align 8, !dbg !2517
  %call34 = call i64 @radix_tree_chunk_size(ptr noundef %27) #14, !dbg !2518
  store i64 %call34, ptr %count, align 8, !dbg !2516
  br label %while.cond, !dbg !2519

while.cond:                                       ; preds = %if.end52, %if.else
  %28 = load i64, ptr %count, align 8, !dbg !2520
  %dec = add i64 %28, -1, !dbg !2520
  store i64 %dec, ptr %count, align 8, !dbg !2520
  %cmp = icmp sgt i64 %dec, 0, !dbg !2521
  br i1 %cmp, label %while.body, label %while.end, !dbg !2519

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %slot.addr, align 8, !dbg !2522
  %incdec.ptr36 = getelementptr ptr, ptr %29, i32 1, !dbg !2522
  store ptr %incdec.ptr36, ptr %slot.addr, align 8, !dbg !2522
  %30 = load ptr, ptr %iter.addr, align 8, !dbg !2524
  %call37 = call i64 @__radix_tree_iter_add(ptr noundef %30, i64 noundef 1) #14, !dbg !2525
  %31 = load ptr, ptr %iter.addr, align 8, !dbg !2526
  %index38 = getelementptr inbounds %struct.radix_tree_iter, ptr %31, i32 0, i32 0, !dbg !2527
  store i64 %call37, ptr %index38, align 8, !dbg !2528
  %32 = load ptr, ptr %slot.addr, align 8, !dbg !2529
  %33 = load ptr, ptr %32, align 8, !dbg !2529
  %tobool39 = icmp ne ptr %33, null, !dbg !2529
  %lnot40 = xor i1 %tobool39, true, !dbg !2529
  %lnot42 = xor i1 %lnot40, true, !dbg !2529
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !2529
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !2529
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 1), !dbg !2529
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !2529
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !2531

if.then47:                                        ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2532

if.end48:                                         ; preds = %while.body
  %34 = load i32, ptr %flags.addr, align 4, !dbg !2533
  %and49 = and i32 %34, 32, !dbg !2535
  %tobool50 = icmp ne i32 %and49, 0, !dbg !2535
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !2536

if.then51:                                        ; preds = %if.end48
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !2537
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %35, i32 0, i32 1, !dbg !2539
  store i64 0, ptr %next_index, align 8, !dbg !2540
  br label %while.end, !dbg !2541

if.end52:                                         ; preds = %if.end48
  br label %while.cond, !dbg !2519, !llvm.loop !2542

while.end:                                        ; preds = %if.then51, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2544
  br label %cleanup, !dbg !2544

cleanup:                                          ; preds = %if.then47, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #13, !dbg !2544
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %found
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end54

if.end54:                                         ; preds = %cleanup.cont, %if.end33
  store ptr null, ptr %retval, align 8, !dbg !2545
  br label %return, !dbg !2545

found:                                            ; preds = %cleanup, %cond.end, %if.then17
  call void @llvm.dbg.label(metadata !2470), !dbg !2546
  %36 = load ptr, ptr %slot.addr, align 8, !dbg !2547
  store ptr %36, ptr %retval, align 8, !dbg !2548
  br label %return, !dbg !2548

return:                                           ; preds = %found, %if.end54, %if.then6
  %37 = load ptr, ptr %retval, align 8, !dbg !2549
  ret ptr %37, !dbg !2549

unreachable:                                      ; preds = %cleanup, %cond.end
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_gang_lookup_tag(ptr noundef %root, ptr noundef %results, i64 noundef %first_index, i32 noundef %max_items, i32 noundef %tag) #0 align 16 !dbg !2550 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %first_index.addr = alloca i64, align 8
  %max_items.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu255 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2554, metadata !DIExpression()), !dbg !2567
  store ptr %results, ptr %results.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %results.addr, metadata !2555, metadata !DIExpression()), !dbg !2568
  store i64 %first_index, ptr %first_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_index.addr, metadata !2556, metadata !DIExpression()), !dbg !2569
  store i32 %max_items, ptr %max_items.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_items.addr, metadata !2557, metadata !DIExpression()), !dbg !2570
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2558, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #13, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2559, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2560, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2561, metadata !DIExpression()), !dbg !2577
  store i32 0, ptr %ret, align 4, !dbg !2577
  %0 = load i32, ptr %max_items.addr, align 4, !dbg !2578
  %tobool = icmp ne i32 %0, 0, !dbg !2578
  %lnot = xor i1 %tobool, true, !dbg !2578
  %lnot1 = xor i1 %lnot, true, !dbg !2578
  %lnot2 = xor i1 %lnot1, true, !dbg !2578
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2578
  %conv = sext i32 %lnot.ext to i64, !dbg !2578
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2578
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2578
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2580

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2581

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %first_index.addr, align 8, !dbg !2582
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %1) #14, !dbg !2582
  store ptr %call, ptr %slot, align 8, !dbg !2582
  br label %for.cond, !dbg !2582

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %slot, align 8, !dbg !2583
  %tobool4 = icmp ne ptr %2, null, !dbg !2583
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !2583

lor.rhs:                                          ; preds = %for.cond
  %3 = load ptr, ptr %root.addr, align 8, !dbg !2583
  %4 = load i32, ptr %tag.addr, align 4, !dbg !2583
  %or = or i32 16, %4, !dbg !2583
  %call5 = call ptr @radix_tree_next_chunk(ptr noundef %3, ptr noundef %iter, i32 noundef %or) #14, !dbg !2583
  store ptr %call5, ptr %slot, align 8, !dbg !2583
  %tobool6 = icmp ne ptr %call5, null, !dbg !2583
  br label %lor.end, !dbg !2583

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %5 = phi i1 [ true, %for.cond ], [ %tobool6, %lor.rhs ]
  br i1 %5, label %for.body, label %for.end, !dbg !2582

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu255) #13, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu255, metadata !2562, metadata !DIExpression()), !dbg !2584
  br label %do.body, !dbg !2585

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !2587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2587

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %slot, align 8, !dbg !2585
  %7 = load volatile ptr, ptr %6, align 8, !dbg !2585
  store ptr %7, ptr %tmp, align 8, !dbg !2587
  %8 = load ptr, ptr %tmp, align 8, !dbg !2585
  store ptr %8, ptr %__UNIQUE_ID_rcu255, align 8, !dbg !2584
  %9 = load ptr, ptr %__UNIQUE_ID_rcu255, align 8, !dbg !2584
  store ptr %9, ptr %tmp7, align 8, !dbg !2584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu255) #13, !dbg !2589
  %10 = load ptr, ptr %tmp7, align 8, !dbg !2584
  %11 = load ptr, ptr %results.addr, align 8, !dbg !2590
  %12 = load i32, ptr %ret, align 4, !dbg !2591
  %idxprom = zext i32 %12 to i64, !dbg !2590
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !2590
  store ptr %10, ptr %arrayidx, align 8, !dbg !2592
  %13 = load ptr, ptr %results.addr, align 8, !dbg !2593
  %14 = load i32, ptr %ret, align 4, !dbg !2595
  %idxprom8 = zext i32 %14 to i64, !dbg !2593
  %arrayidx9 = getelementptr ptr, ptr %13, i64 %idxprom8, !dbg !2593
  %15 = load ptr, ptr %arrayidx9, align 8, !dbg !2593
  %tobool10 = icmp ne ptr %15, null, !dbg !2593
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2596

if.then11:                                        ; preds = %do.end
  br label %for.inc, !dbg !2597

if.end12:                                         ; preds = %do.end
  %16 = load ptr, ptr %results.addr, align 8, !dbg !2598
  %17 = load i32, ptr %ret, align 4, !dbg !2600
  %idxprom13 = zext i32 %17 to i64, !dbg !2598
  %arrayidx14 = getelementptr ptr, ptr %16, i64 %idxprom13, !dbg !2598
  %18 = load ptr, ptr %arrayidx14, align 8, !dbg !2598
  %call15 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %18) #14, !dbg !2601
  br i1 %call15, label %if.then16, label %if.end18, !dbg !2602

if.then16:                                        ; preds = %if.end12
  %call17 = call ptr @radix_tree_iter_retry(ptr noundef %iter) #14, !dbg !2603
  store ptr %call17, ptr %slot, align 8, !dbg !2605
  br label %for.inc, !dbg !2606

if.end18:                                         ; preds = %if.end12
  %19 = load i32, ptr %ret, align 4, !dbg !2607
  %inc = add i32 %19, 1, !dbg !2607
  store i32 %inc, ptr %ret, align 4, !dbg !2607
  %20 = load i32, ptr %max_items.addr, align 4, !dbg !2609
  %cmp = icmp eq i32 %inc, %20, !dbg !2610
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !2611

if.then20:                                        ; preds = %if.end18
  br label %for.end, !dbg !2612

if.end21:                                         ; preds = %if.end18
  br label %for.inc, !dbg !2613

for.inc:                                          ; preds = %if.end21, %if.then16, %if.then11
  %21 = load ptr, ptr %slot, align 8, !dbg !2583
  %22 = load i32, ptr %tag.addr, align 4, !dbg !2583
  %or22 = or i32 16, %22, !dbg !2583
  %call23 = call ptr @radix_tree_next_slot(ptr noundef %21, ptr noundef %iter, i32 noundef %or22) #14, !dbg !2583
  store ptr %call23, ptr %slot, align 8, !dbg !2583
  br label %for.cond, !dbg !2583, !llvm.loop !2614

for.end:                                          ; preds = %if.then20, %lor.end
  %23 = load i32, ptr %ret, align 4, !dbg !2616
  store i32 %23, ptr %retval, align 4, !dbg !2617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2617

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #13, !dbg !2618
  %24 = load i32, ptr %retval, align 4, !dbg !2618
  ret i32 %24, !dbg !2618
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_gang_lookup_tag_slot(ptr noundef %root, ptr noundef %results, i64 noundef %first_index, i32 noundef %max_items, i32 noundef %tag) #0 align 16 !dbg !2619 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %results.addr = alloca ptr, align 8
  %first_index.addr = alloca i64, align 8
  %max_items.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2623, metadata !DIExpression()), !dbg !2631
  store ptr %results, ptr %results.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %results.addr, metadata !2624, metadata !DIExpression()), !dbg !2632
  store i64 %first_index, ptr %first_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_index.addr, metadata !2625, metadata !DIExpression()), !dbg !2633
  store i32 %max_items, ptr %max_items.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_items.addr, metadata !2626, metadata !DIExpression()), !dbg !2634
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2627, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #13, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2628, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2638
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2629, metadata !DIExpression()), !dbg !2639
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2630, metadata !DIExpression()), !dbg !2641
  store i32 0, ptr %ret, align 4, !dbg !2641
  %0 = load i32, ptr %max_items.addr, align 4, !dbg !2642
  %tobool = icmp ne i32 %0, 0, !dbg !2642
  %lnot = xor i1 %tobool, true, !dbg !2642
  %lnot1 = xor i1 %lnot, true, !dbg !2642
  %lnot2 = xor i1 %lnot1, true, !dbg !2642
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2642
  %conv = sext i32 %lnot.ext to i64, !dbg !2642
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2642
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2642
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2644

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2645

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %first_index.addr, align 8, !dbg !2646
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %1) #14, !dbg !2646
  store ptr %call, ptr %slot, align 8, !dbg !2646
  br label %for.cond, !dbg !2646

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %slot, align 8, !dbg !2648
  %tobool4 = icmp ne ptr %2, null, !dbg !2648
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !2648

lor.rhs:                                          ; preds = %for.cond
  %3 = load ptr, ptr %root.addr, align 8, !dbg !2648
  %4 = load i32, ptr %tag.addr, align 4, !dbg !2648
  %or = or i32 16, %4, !dbg !2648
  %call5 = call ptr @radix_tree_next_chunk(ptr noundef %3, ptr noundef %iter, i32 noundef %or) #14, !dbg !2648
  store ptr %call5, ptr %slot, align 8, !dbg !2648
  %tobool6 = icmp ne ptr %call5, null, !dbg !2648
  br label %lor.end, !dbg !2648

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %5 = phi i1 [ true, %for.cond ], [ %tobool6, %lor.rhs ]
  br i1 %5, label %for.body, label %for.end, !dbg !2646

for.body:                                         ; preds = %lor.end
  %6 = load ptr, ptr %slot, align 8, !dbg !2650
  %7 = load ptr, ptr %results.addr, align 8, !dbg !2652
  %8 = load i32, ptr %ret, align 4, !dbg !2653
  %idxprom = zext i32 %8 to i64, !dbg !2652
  %arrayidx = getelementptr ptr, ptr %7, i64 %idxprom, !dbg !2652
  store ptr %6, ptr %arrayidx, align 8, !dbg !2654
  %9 = load i32, ptr %ret, align 4, !dbg !2655
  %inc = add i32 %9, 1, !dbg !2655
  store i32 %inc, ptr %ret, align 4, !dbg !2655
  %10 = load i32, ptr %max_items.addr, align 4, !dbg !2657
  %cmp = icmp eq i32 %inc, %10, !dbg !2658
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2659

if.then8:                                         ; preds = %for.body
  br label %for.end, !dbg !2660

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !2661

for.inc:                                          ; preds = %if.end9
  %11 = load ptr, ptr %slot, align 8, !dbg !2648
  %12 = load i32, ptr %tag.addr, align 4, !dbg !2648
  %or10 = or i32 16, %12, !dbg !2648
  %call11 = call ptr @radix_tree_next_slot(ptr noundef %11, ptr noundef %iter, i32 noundef %or10) #14, !dbg !2648
  store ptr %call11, ptr %slot, align 8, !dbg !2648
  br label %for.cond, !dbg !2648, !llvm.loop !2662

for.end:                                          ; preds = %if.then8, %lor.end
  %13 = load i32, ptr %ret, align 4, !dbg !2664
  store i32 %13, ptr %retval, align 4, !dbg !2665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2665

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #13, !dbg !2666
  %14 = load i32, ptr %retval, align 4, !dbg !2666
  ret i32 %14, !dbg !2666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @radix_tree_iter_delete(ptr noundef %root, ptr noundef %iter, ptr noundef %slot) #0 align 16 !dbg !2667 {
entry:
  %root.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2671, metadata !DIExpression()), !dbg !2674
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2672, metadata !DIExpression()), !dbg !2675
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !2673, metadata !DIExpression()), !dbg !2676
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2677
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !2679
  %node = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3, !dbg !2680
  %2 = load ptr, ptr %node, align 8, !dbg !2680
  %3 = load ptr, ptr %slot.addr, align 8, !dbg !2681
  %call = call zeroext i1 @__radix_tree_delete(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14, !dbg !2682
  br i1 %call, label %if.then, label %if.end, !dbg !2683

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !2684
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %4, i32 0, i32 1, !dbg !2685
  %5 = load i64, ptr %next_index, align 8, !dbg !2685
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !2686
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 0, !dbg !2687
  store i64 %5, ptr %index, align 8, !dbg !2688
  br label %if.end, !dbg !2686

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2689
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__radix_tree_delete(ptr noundef %root, ptr noundef %node, ptr noundef %slot) #0 align 16 !dbg !2690 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__UNIQUE_ID_rcu259 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %values = alloca i32, align 4
  %offset = alloca i32, align 4
  %tag = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2694, metadata !DIExpression()), !dbg !2703
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2695, metadata !DIExpression()), !dbg !2704
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !2696, metadata !DIExpression()), !dbg !2705
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #13, !dbg !2706
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2697, metadata !DIExpression()), !dbg !2707
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu259) #13, !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu259, metadata !2698, metadata !DIExpression()), !dbg !2708
  br label %do.body, !dbg !2709

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2711

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2711

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !2709
  %1 = load volatile ptr, ptr %0, align 8, !dbg !2709
  store ptr %1, ptr %tmp, align 8, !dbg !2711
  %2 = load ptr, ptr %tmp, align 8, !dbg !2709
  store ptr %2, ptr %__UNIQUE_ID_rcu259, align 8, !dbg !2708
  %3 = load ptr, ptr %__UNIQUE_ID_rcu259, align 8, !dbg !2708
  store ptr %3, ptr %tmp1, align 8, !dbg !2708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu259) #13, !dbg !2713
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2708
  store ptr %4, ptr %old, align 8, !dbg !2707
  call void @llvm.lifetime.start.p0(i64 4, ptr %values) #13, !dbg !2714
  call void @llvm.dbg.declare(metadata ptr %values, metadata !2700, metadata !DIExpression()), !dbg !2715
  %5 = load ptr, ptr %old, align 8, !dbg !2716
  %call = call zeroext i1 @xa_is_value(ptr noundef %5) #14, !dbg !2717
  %6 = zext i1 %call to i64, !dbg !2717
  %cond = select i1 %call, i32 -1, i32 0, !dbg !2717
  store i32 %cond, ptr %values, align 4, !dbg !2715
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !2718
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2701, metadata !DIExpression()), !dbg !2719
  %7 = load ptr, ptr %node.addr, align 8, !dbg !2720
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !2721
  %call2 = call i64 @get_slot_offset(ptr noundef %7, ptr noundef %8) #14, !dbg !2722
  %conv = trunc i64 %call2 to i32, !dbg !2722
  store i32 %conv, ptr %offset, align 4, !dbg !2719
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13, !dbg !2723
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !2702, metadata !DIExpression()), !dbg !2724
  %9 = load ptr, ptr %root.addr, align 8, !dbg !2725
  %call3 = call zeroext i1 @is_idr(ptr noundef %9) #14, !dbg !2727
  br i1 %call3, label %if.then, label %if.else, !dbg !2728

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr %root.addr, align 8, !dbg !2729
  %11 = load ptr, ptr %node.addr, align 8, !dbg !2730
  %12 = load i32, ptr %offset, align 4, !dbg !2731
  call void @node_tag_set(ptr noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef %12) #14, !dbg !2732
  br label %if.end, !dbg !2732

if.else:                                          ; preds = %do.end
  store i32 0, ptr %tag, align 4, !dbg !2733
  br label %for.cond, !dbg !2735

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i32, ptr %tag, align 4, !dbg !2736
  %cmp = icmp slt i32 %13, 3, !dbg !2738
  br i1 %cmp, label %for.body, label %for.end, !dbg !2739

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %root.addr, align 8, !dbg !2740
  %15 = load ptr, ptr %node.addr, align 8, !dbg !2741
  %16 = load i32, ptr %tag, align 4, !dbg !2742
  %17 = load i32, ptr %offset, align 4, !dbg !2743
  call void @node_tag_clear(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17) #14, !dbg !2744
  br label %for.inc, !dbg !2744

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %tag, align 4, !dbg !2745
  %inc = add i32 %18, 1, !dbg !2745
  store i32 %inc, ptr %tag, align 4, !dbg !2745
  br label %for.cond, !dbg !2746, !llvm.loop !2747

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %19 = load ptr, ptr %slot.addr, align 8, !dbg !2749
  %20 = load ptr, ptr %node.addr, align 8, !dbg !2750
  %21 = load i32, ptr %values, align 4, !dbg !2751
  call void @replace_slot(ptr noundef %19, ptr noundef null, ptr noundef %20, i32 noundef -1, i32 noundef %21) #14, !dbg !2752
  %22 = load ptr, ptr %node.addr, align 8, !dbg !2753
  %tobool = icmp ne ptr %22, null, !dbg !2753
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2754

land.rhs:                                         ; preds = %if.end
  %23 = load ptr, ptr %root.addr, align 8, !dbg !2755
  %24 = load ptr, ptr %node.addr, align 8, !dbg !2756
  %call5 = call zeroext i1 @delete_node(ptr noundef %23, ptr noundef %24) #14, !dbg !2757
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %25 = phi i1 [ false, %if.end ], [ %call5, %land.rhs ], !dbg !2758
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr %values) #13, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #13, !dbg !2759
  ret i1 %25, !dbg !2760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_delete_item(ptr noundef %root, i64 noundef %index, ptr noundef %item) #0 align 16 !dbg !2761 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %item.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2765, metadata !DIExpression()), !dbg !2771
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2766, metadata !DIExpression()), !dbg !2772
  store ptr %item, ptr %item.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !2774
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2768, metadata !DIExpression()), !dbg !2775
  store ptr null, ptr %node, align 8, !dbg !2775
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2769, metadata !DIExpression()), !dbg !2777
  store ptr null, ptr %slot, align 8, !dbg !2777
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2770, metadata !DIExpression()), !dbg !2779
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2780
  %1 = load i64, ptr %index.addr, align 8, !dbg !2781
  %call = call ptr @__radix_tree_lookup(ptr noundef %0, i64 noundef %1, ptr noundef %node, ptr noundef %slot) #14, !dbg !2782
  store ptr %call, ptr %entry1, align 8, !dbg !2783
  %2 = load ptr, ptr %slot, align 8, !dbg !2784
  %tobool = icmp ne ptr %2, null, !dbg !2784
  br i1 %tobool, label %if.end, label %if.then, !dbg !2786

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2787

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !2788
  %tobool2 = icmp ne ptr %3, null, !dbg !2788
  br i1 %tobool2, label %if.end8, label %land.lhs.true, !dbg !2790

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %root.addr, align 8, !dbg !2791
  %call3 = call zeroext i1 @is_idr(ptr noundef %4) #14, !dbg !2792
  br i1 %call3, label %lor.lhs.false, label %if.then7, !dbg !2793

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load ptr, ptr %root.addr, align 8, !dbg !2794
  %6 = load ptr, ptr %node, align 8, !dbg !2795
  %7 = load ptr, ptr %node, align 8, !dbg !2796
  %8 = load ptr, ptr %slot, align 8, !dbg !2797
  %call4 = call i64 @get_slot_offset(ptr noundef %7, ptr noundef %8) #14, !dbg !2798
  %conv = trunc i64 %call4 to i32, !dbg !2798
  %call5 = call zeroext i1 @node_tag_get(ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef %conv) #14, !dbg !2799
  br i1 %call5, label %if.then7, label %if.end8, !dbg !2800

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !2801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2801

if.end8:                                          ; preds = %lor.lhs.false, %if.end
  %9 = load ptr, ptr %item.addr, align 8, !dbg !2802
  %tobool9 = icmp ne ptr %9, null, !dbg !2802
  br i1 %tobool9, label %land.lhs.true10, label %if.end13, !dbg !2804

land.lhs.true10:                                  ; preds = %if.end8
  %10 = load ptr, ptr %entry1, align 8, !dbg !2805
  %11 = load ptr, ptr %item.addr, align 8, !dbg !2806
  %cmp = icmp ne ptr %10, %11, !dbg !2807
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !2808

if.then12:                                        ; preds = %land.lhs.true10
  store ptr null, ptr %retval, align 8, !dbg !2809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2809

if.end13:                                         ; preds = %land.lhs.true10, %if.end8
  %12 = load ptr, ptr %root.addr, align 8, !dbg !2810
  %13 = load ptr, ptr %node, align 8, !dbg !2811
  %14 = load ptr, ptr %slot, align 8, !dbg !2812
  %call14 = call zeroext i1 @__radix_tree_delete(ptr noundef %12, ptr noundef %13, ptr noundef %14) #14, !dbg !2813
  %15 = load ptr, ptr %entry1, align 8, !dbg !2814
  store ptr %15, ptr %retval, align 8, !dbg !2815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2815

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !2816
  %16 = load ptr, ptr %retval, align 8, !dbg !2816
  ret ptr %16, !dbg !2816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_idr(ptr noundef %root) #4 align 16 !dbg !2817 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2821, metadata !DIExpression()), !dbg !2822
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2823
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1, !dbg !2824
  %1 = load i32, ptr %xa_flags, align 4, !dbg !2824
  %and = and i32 %1, 4, !dbg !2825
  %tobool = icmp ne i32 %and, 0, !dbg !2826
  %lnot = xor i1 %tobool, true, !dbg !2826
  %lnot1 = xor i1 %lnot, true, !dbg !2827
  ret i1 %lnot1, !dbg !2828
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @node_tag_get(ptr noundef %root, ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #0 align 16 !dbg !2829 {
entry:
  %retval = alloca i1, align 1
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2833, metadata !DIExpression()), !dbg !2837
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2834, metadata !DIExpression()), !dbg !2838
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2835, metadata !DIExpression()), !dbg !2839
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2836, metadata !DIExpression()), !dbg !2840
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2841
  %tobool = icmp ne ptr %0, null, !dbg !2841
  br i1 %tobool, label %if.then, label %if.end, !dbg !2843

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2844
  %2 = load i32, ptr %tag.addr, align 4, !dbg !2845
  %3 = load i32, ptr %offset.addr, align 4, !dbg !2846
  %call = call i32 @tag_get(ptr noundef %1, i32 noundef %2, i32 noundef %3) #14, !dbg !2847
  %tobool1 = icmp ne i32 %call, 0, !dbg !2847
  store i1 %tobool1, ptr %retval, align 1, !dbg !2848
  br label %return, !dbg !2848

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %root.addr, align 8, !dbg !2849
  %5 = load i32, ptr %tag.addr, align 4, !dbg !2850
  %call2 = call i32 @root_tag_get(ptr noundef %4, i32 noundef %5) #14, !dbg !2851
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2851
  store i1 %tobool3, ptr %retval, align 1, !dbg !2852
  br label %return, !dbg !2852

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !2853
  ret i1 %6, !dbg !2853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @radix_tree_delete(ptr noundef %root, i64 noundef %index) #0 align 16 !dbg !2854 {
entry:
  %root.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2858, metadata !DIExpression()), !dbg !2860
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2859, metadata !DIExpression()), !dbg !2861
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2862
  %1 = load i64, ptr %index.addr, align 8, !dbg !2863
  %call = call ptr @radix_tree_delete_item(ptr noundef %0, i64 noundef %1, ptr noundef null) #14, !dbg !2864
  ret ptr %call, !dbg !2865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @radix_tree_tagged(ptr noundef %root, i32 noundef %tag) #0 align 16 !dbg !2866 {
entry:
  %root.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2868, metadata !DIExpression()), !dbg !2870
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2869, metadata !DIExpression()), !dbg !2871
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2872
  %1 = load i32, ptr %tag.addr, align 4, !dbg !2873
  %call = call i32 @root_tag_get(ptr noundef %0, i32 noundef %1) #14, !dbg !2874
  ret i32 %call, !dbg !2875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @idr_preload(i32 noundef %gfp_mask) #0 align 16 !dbg !2876 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !2880, metadata !DIExpression()), !dbg !2888
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !2889
  %call = call i32 @__radix_tree_preload(i32 noundef %0, i32 noundef 11) #14, !dbg !2890
  %tobool = icmp ne i32 %call, 0, !dbg !2890
  br i1 %tobool, label %if.then, label %if.end, !dbg !2891

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2892

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !2893

do.body1:                                         ; preds = %do.body
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !2894
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2894, !srcloc !2896
  br label %do.end, !dbg !2894

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2897

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2881, metadata !DIExpression()), !dbg !2898
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2898
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2897
  br label %do.end3, !dbg !2898

do.end3:                                          ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2886, metadata !DIExpression()), !dbg !2899
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !2899, !srcloc !2900
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !2899
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !2899
  %4 = inttoptr i64 %3 to ptr, !dbg !2899
  store ptr %4, ptr %tmp4, align 8, !dbg !2899
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !2897
  %5 = load ptr, ptr %tmp4, align 8, !dbg !2899
  store ptr %5, ptr %tmp, align 8, !dbg !2898
  %6 = load ptr, ptr %tmp, align 8, !dbg !2897
  call void @local_lock_acquire(ptr noundef %6) #14, !dbg !2893
  br label %do.end5, !dbg !2893

do.end5:                                          ; preds = %do.end3
  br label %if.end, !dbg !2893

if.end:                                           ; preds = %do.end5, %entry
  ret void, !dbg !2901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_get_free(ptr noundef %root, ptr noundef %iter, i32 noundef %gfp, i64 noundef %max) #0 align 16 !dbg !2902 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %max.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %child = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %maxindex = alloca i64, align 8
  %start = alloca i64, align 8
  %shift = alloca i32, align 4
  %offset = alloca i32, align 4
  %__UNIQUE_ID___x266 = alloca i64, align 8
  %__UNIQUE_ID___y267 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %error = alloca i32, align 4
  %__UNIQUE_ID_rcu268 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %__UNIQUE_ID_rcu273 = alloca ptr, align 8
  %tmp98 = alloca ptr, align 8
  %tmp99 = alloca ptr, align 8
  %__UNIQUE_ID___x275 = alloca i64, align 8
  %__UNIQUE_ID___y276 = alloca i64, align 8
  %tmp108 = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2906, metadata !DIExpression()), !dbg !2940
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2907, metadata !DIExpression()), !dbg !2941
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2908, metadata !DIExpression()), !dbg !2942
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !2909, metadata !DIExpression()), !dbg !2943
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2910, metadata !DIExpression()), !dbg !2945
  store ptr null, ptr %node, align 8, !dbg !2945
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2911, metadata !DIExpression()), !dbg !2946
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #13, !dbg !2947
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !2912, metadata !DIExpression()), !dbg !2948
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2949
  %xa_head = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2, !dbg !2950
  store ptr %xa_head, ptr %slot, align 8, !dbg !2948
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxindex) #13, !dbg !2951
  call void @llvm.dbg.declare(metadata ptr %maxindex, metadata !2913, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #13, !dbg !2951
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2914, metadata !DIExpression()), !dbg !2953
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !2954
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 1, !dbg !2955
  %2 = load i64, ptr %next_index, align 8, !dbg !2955
  store i64 %2, ptr %start, align 8, !dbg !2953
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #13, !dbg !2956
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !2915, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !2956
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2916, metadata !DIExpression()), !dbg !2958
  store i32 0, ptr %offset, align 4, !dbg !2958
  br label %grow, !dbg !2956

grow:                                             ; preds = %if.then91, %entry
  call void @llvm.dbg.label(metadata !2917), !dbg !2959
  %3 = load ptr, ptr %root.addr, align 8, !dbg !2960
  %call = call i32 @radix_tree_load_root(ptr noundef %3, ptr noundef %child, ptr noundef %maxindex) #14, !dbg !2961
  store i32 %call, ptr %shift, align 4, !dbg !2962
  %4 = load ptr, ptr %root.addr, align 8, !dbg !2963
  %call1 = call i32 @radix_tree_tagged(ptr noundef %4, i32 noundef 0) #14, !dbg !2964
  %tobool = icmp ne i32 %call1, 0, !dbg !2964
  br i1 %tobool, label %if.end, label %if.then, !dbg !2965

if.then:                                          ; preds = %grow
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x266) #13, !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x266, metadata !2918, metadata !DIExpression()), !dbg !2966
  %5 = load i64, ptr %start, align 8, !dbg !2966
  store i64 %5, ptr %__UNIQUE_ID___x266, align 8, !dbg !2966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y267) #13, !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y267, metadata !2921, metadata !DIExpression()), !dbg !2966
  %6 = load i64, ptr %maxindex, align 8, !dbg !2966
  %add = add i64 %6, 1, !dbg !2966
  store i64 %add, ptr %__UNIQUE_ID___y267, align 8, !dbg !2966
  %7 = load i64, ptr %__UNIQUE_ID___x266, align 8, !dbg !2966
  %8 = load i64, ptr %__UNIQUE_ID___y267, align 8, !dbg !2966
  %cmp = icmp ugt i64 %7, %8, !dbg !2966
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2966

cond.true:                                        ; preds = %if.then
  %9 = load i64, ptr %__UNIQUE_ID___x266, align 8, !dbg !2966
  br label %cond.end, !dbg !2966

cond.false:                                       ; preds = %if.then
  %10 = load i64, ptr %__UNIQUE_ID___y267, align 8, !dbg !2966
  br label %cond.end, !dbg !2966

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !2966
  store i64 %cond, ptr %tmp, align 8, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y267) #13, !dbg !2967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x266) #13, !dbg !2967
  %11 = load i64, ptr %tmp, align 8, !dbg !2966
  store i64 %11, ptr %start, align 8, !dbg !2968
  br label %if.end, !dbg !2969

if.end:                                           ; preds = %cond.end, %grow
  %12 = load i64, ptr %start, align 8, !dbg !2970
  %13 = load i64, ptr %max.addr, align 8, !dbg !2972
  %cmp2 = icmp ugt i64 %12, %13, !dbg !2973
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !2974

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -28) #14, !dbg !2975
  store ptr %call4, ptr %retval, align 8, !dbg !2976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !2976

if.end5:                                          ; preds = %if.end
  %14 = load i64, ptr %start, align 8, !dbg !2977
  %15 = load i64, ptr %maxindex, align 8, !dbg !2978
  %cmp6 = icmp ugt i64 %14, %15, !dbg !2979
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !2980

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !2981
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2922, metadata !DIExpression()), !dbg !2982
  %16 = load ptr, ptr %root.addr, align 8, !dbg !2983
  %17 = load i32, ptr %gfp.addr, align 4, !dbg !2984
  %18 = load i64, ptr %start, align 8, !dbg !2985
  %19 = load i32, ptr %shift, align 4, !dbg !2986
  %call8 = call i32 @radix_tree_extend(ptr noundef %16, i32 noundef %17, i64 noundef %18, i32 noundef %19) #14, !dbg !2987
  store i32 %call8, ptr %error, align 4, !dbg !2982
  %20 = load i32, ptr %error, align 4, !dbg !2988
  %cmp9 = icmp slt i32 %20, 0, !dbg !2990
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2991

if.then10:                                        ; preds = %if.then7
  %21 = load i32, ptr %error, align 4, !dbg !2992
  %conv = sext i32 %21 to i64, !dbg !2992
  %call11 = call ptr @ERR_PTR(i64 noundef %conv) #14, !dbg !2993
  store ptr %call11, ptr %retval, align 8, !dbg !2994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2994

if.end12:                                         ; preds = %if.then7
  %22 = load i32, ptr %error, align 4, !dbg !2995
  store i32 %22, ptr %shift, align 4, !dbg !2996
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu268) #13, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu268, metadata !2925, metadata !DIExpression()), !dbg !2997
  br label %do.body, !dbg !2998

do.body:                                          ; preds = %if.end12
  br label %do.cond, !dbg !3000

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3000

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %root.addr, align 8, !dbg !2998
  %xa_head14 = getelementptr inbounds %struct.xarray, ptr %23, i32 0, i32 2, !dbg !2998
  %24 = load volatile ptr, ptr %xa_head14, align 8, !dbg !2998
  store ptr %24, ptr %tmp13, align 8, !dbg !3000
  %25 = load ptr, ptr %tmp13, align 8, !dbg !2998
  store ptr %25, ptr %__UNIQUE_ID_rcu268, align 8, !dbg !2997
  %26 = load ptr, ptr %__UNIQUE_ID_rcu268, align 8, !dbg !2997
  store ptr %26, ptr %tmp15, align 8, !dbg !2997
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu268) #13, !dbg !3002
  %27 = load ptr, ptr %tmp15, align 8, !dbg !2997
  store ptr %27, ptr %child, align 8, !dbg !3003
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3004
  br label %cleanup, !dbg !3004

cleanup:                                          ; preds = %do.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !3004
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup121 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !3005

if.end16:                                         ; preds = %cleanup.cont, %if.end5
  %28 = load i64, ptr %start, align 8, !dbg !3006
  %cmp17 = icmp eq i64 %28, 0, !dbg !3008
  br i1 %cmp17, label %land.lhs.true, label %if.end22, !dbg !3009

land.lhs.true:                                    ; preds = %if.end16
  %29 = load i32, ptr %shift, align 4, !dbg !3010
  %cmp19 = icmp eq i32 %29, 0, !dbg !3011
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3012

if.then21:                                        ; preds = %land.lhs.true
  store i32 6, ptr %shift, align 4, !dbg !3013
  br label %if.end22, !dbg !3014

if.end22:                                         ; preds = %if.then21, %land.lhs.true, %if.end16
  br label %while.cond, !dbg !3015

while.cond:                                       ; preds = %if.end100, %if.end22
  %30 = load i32, ptr %shift, align 4, !dbg !3016
  %tobool23 = icmp ne i32 %30, 0, !dbg !3015
  br i1 %tobool23, label %while.body, label %while.end104, !dbg !3015

while.body:                                       ; preds = %while.cond
  %31 = load i32, ptr %shift, align 4, !dbg !3017
  %sub = sub i32 %31, 6, !dbg !3017
  store i32 %sub, ptr %shift, align 4, !dbg !3017
  %32 = load ptr, ptr %child, align 8, !dbg !3018
  %cmp24 = icmp eq ptr %32, null, !dbg !3019
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !3020

if.then26:                                        ; preds = %while.body
  %33 = load i32, ptr %gfp.addr, align 4, !dbg !3021
  %34 = load ptr, ptr %node, align 8, !dbg !3022
  %35 = load ptr, ptr %root.addr, align 8, !dbg !3023
  %36 = load i32, ptr %shift, align 4, !dbg !3024
  %37 = load i32, ptr %offset, align 4, !dbg !3025
  %call27 = call ptr @radix_tree_node_alloc(i32 noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef 0, i32 noundef 0) #14, !dbg !3026
  store ptr %call27, ptr %child, align 8, !dbg !3027
  %38 = load ptr, ptr %child, align 8, !dbg !3028
  %tobool28 = icmp ne ptr %38, null, !dbg !3028
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !3030

if.then29:                                        ; preds = %if.then26
  %call30 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !3031
  store ptr %call30, ptr %retval, align 8, !dbg !3032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !3032

if.end31:                                         ; preds = %if.then26
  %39 = load ptr, ptr %child, align 8, !dbg !3033
  call void @all_tag_set(ptr noundef %39, i32 noundef 0) #14, !dbg !3034
  br label %do.body32, !dbg !3035

do.body32:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !3036
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2927, metadata !DIExpression()), !dbg !3036
  %40 = load ptr, ptr %child, align 8, !dbg !3036
  %call33 = call ptr @node_to_entry(ptr noundef %40) #14, !dbg !3036
  %41 = ptrtoint ptr %call33 to i64, !dbg !3036
  store i64 %41, ptr %_r_a_p__v, align 8, !dbg !3036
  br label %do.body34, !dbg !3037

do.body34:                                        ; preds = %do.body32
  br label %do.body35, !dbg !3039

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !3041

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !3041

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !3039

do.body38:                                        ; preds = %do.end37
  br label %do.body39, !dbg !3043

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !3045

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !3045

do.end41:                                         ; preds = %do.cond40
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !3043, !srcloc !3047
  br label %do.body42, !dbg !3043

do.body42:                                        ; preds = %do.end41
  br label %do.body43, !dbg !3048

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !3050

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3050

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !3048

do.body46:                                        ; preds = %do.end45
  %42 = load i64, ptr %_r_a_p__v, align 8, !dbg !3052
  %43 = inttoptr i64 %42 to ptr, !dbg !3052
  %44 = load ptr, ptr %slot, align 8, !dbg !3052
  store volatile ptr %43, ptr %44, align 8, !dbg !3052
  br label %do.cond47, !dbg !3052

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !3052

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !3048

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !3048

do.end50:                                         ; preds = %do.cond49
  br label %do.cond51, !dbg !3043

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !3043

do.end52:                                         ; preds = %do.cond51
  br label %do.cond53, !dbg !3039

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !3039

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !3035
  br label %do.cond55, !dbg !3036

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !3036

do.end56:                                         ; preds = %do.cond55
  %45 = load ptr, ptr %node, align 8, !dbg !3054
  %tobool57 = icmp ne ptr %45, null, !dbg !3054
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !3056

if.then58:                                        ; preds = %do.end56
  %46 = load ptr, ptr %node, align 8, !dbg !3057
  %count = getelementptr inbounds %struct.xa_node, ptr %46, i32 0, i32 2, !dbg !3058
  %47 = load i8, ptr %count, align 2, !dbg !3059
  %inc = add i8 %47, 1, !dbg !3059
  store i8 %inc, ptr %count, align 2, !dbg !3059
  br label %if.end59, !dbg !3057

if.end59:                                         ; preds = %if.then58, %do.end56
  br label %if.end63, !dbg !3060

if.else:                                          ; preds = %while.body
  %48 = load ptr, ptr %child, align 8, !dbg !3061
  %call60 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %48) #14, !dbg !3063
  br i1 %call60, label %if.end62, label %if.then61, !dbg !3064

if.then61:                                        ; preds = %if.else
  br label %while.end104, !dbg !3065

if.end62:                                         ; preds = %if.else
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end59
  %49 = load ptr, ptr %child, align 8, !dbg !3066
  %call64 = call ptr @entry_to_node(ptr noundef %49) #14, !dbg !3067
  store ptr %call64, ptr %node, align 8, !dbg !3068
  %50 = load ptr, ptr %node, align 8, !dbg !3069
  %51 = load i64, ptr %start, align 8, !dbg !3070
  %call65 = call i32 @radix_tree_descend(ptr noundef %50, ptr noundef %child, i64 noundef %51) #14, !dbg !3071
  store i32 %call65, ptr %offset, align 4, !dbg !3072
  %52 = load ptr, ptr %node, align 8, !dbg !3073
  %53 = load i32, ptr %offset, align 4, !dbg !3074
  %call66 = call i32 @tag_get(ptr noundef %52, i32 noundef 0, i32 noundef %53) #14, !dbg !3075
  %tobool67 = icmp ne i32 %call66, 0, !dbg !3075
  br i1 %tobool67, label %if.end100, label %if.then68, !dbg !3076

if.then68:                                        ; preds = %if.end63
  %54 = load ptr, ptr %node, align 8, !dbg !3077
  %55 = load i32, ptr %offset, align 4, !dbg !3078
  %add69 = add i32 %55, 1, !dbg !3079
  %conv70 = zext i32 %add69 to i64, !dbg !3078
  %call71 = call i64 @radix_tree_find_next_bit(ptr noundef %54, i32 noundef 0, i64 noundef %conv70) #14, !dbg !3080
  %conv72 = trunc i64 %call71 to i32, !dbg !3080
  store i32 %conv72, ptr %offset, align 4, !dbg !3081
  %56 = load i64, ptr %start, align 8, !dbg !3082
  %57 = load ptr, ptr %node, align 8, !dbg !3083
  %58 = load i32, ptr %offset, align 4, !dbg !3084
  %conv73 = zext i32 %58 to i64, !dbg !3084
  %call74 = call i64 @next_index(i64 noundef %56, ptr noundef %57, i64 noundef %conv73) #14, !dbg !3085
  store i64 %call74, ptr %start, align 8, !dbg !3086
  %59 = load i64, ptr %start, align 8, !dbg !3087
  %60 = load i64, ptr %max.addr, align 8, !dbg !3089
  %cmp75 = icmp ugt i64 %59, %60, !dbg !3090
  br i1 %cmp75, label %if.then79, label %lor.lhs.false, !dbg !3091

lor.lhs.false:                                    ; preds = %if.then68
  %61 = load i64, ptr %start, align 8, !dbg !3092
  %cmp77 = icmp eq i64 %61, 0, !dbg !3093
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !3094

if.then79:                                        ; preds = %lor.lhs.false, %if.then68
  %call80 = call ptr @ERR_PTR(i64 noundef -28) #14, !dbg !3095
  store ptr %call80, ptr %retval, align 8, !dbg !3096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !3096

if.end81:                                         ; preds = %lor.lhs.false
  br label %while.cond82, !dbg !3097

while.cond82:                                     ; preds = %if.end92, %if.end81
  %62 = load i32, ptr %offset, align 4, !dbg !3098
  %conv83 = zext i32 %62 to i64, !dbg !3098
  %cmp84 = icmp eq i64 %conv83, 64, !dbg !3099
  br i1 %cmp84, label %while.body86, label %while.end, !dbg !3097

while.body86:                                     ; preds = %while.cond82
  %63 = load ptr, ptr %node, align 8, !dbg !3100
  %offset87 = getelementptr inbounds %struct.xa_node, ptr %63, i32 0, i32 1, !dbg !3102
  %64 = load i8, ptr %offset87, align 1, !dbg !3102
  %conv88 = zext i8 %64 to i32, !dbg !3100
  %add89 = add i32 %conv88, 1, !dbg !3103
  store i32 %add89, ptr %offset, align 4, !dbg !3104
  %65 = load ptr, ptr %node, align 8, !dbg !3105
  %parent = getelementptr inbounds %struct.xa_node, ptr %65, i32 0, i32 4, !dbg !3106
  %66 = load ptr, ptr %parent, align 8, !dbg !3106
  store ptr %66, ptr %node, align 8, !dbg !3107
  %67 = load ptr, ptr %node, align 8, !dbg !3108
  %tobool90 = icmp ne ptr %67, null, !dbg !3108
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !3110

if.then91:                                        ; preds = %while.body86
  br label %grow, !dbg !3111

if.end92:                                         ; preds = %while.body86
  %68 = load ptr, ptr %node, align 8, !dbg !3112
  %shift93 = getelementptr inbounds %struct.xa_node, ptr %68, i32 0, i32 0, !dbg !3113
  %69 = load i8, ptr %shift93, align 8, !dbg !3113
  %conv94 = zext i8 %69 to i32, !dbg !3112
  store i32 %conv94, ptr %shift, align 4, !dbg !3114
  br label %while.cond82, !dbg !3097, !llvm.loop !3115

while.end:                                        ; preds = %while.cond82
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu273) #13, !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu273, metadata !2932, metadata !DIExpression()), !dbg !3117
  br label %do.body95, !dbg !3118

do.body95:                                        ; preds = %while.end
  br label %do.cond96, !dbg !3120

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !3120

do.end97:                                         ; preds = %do.cond96
  %70 = load ptr, ptr %node, align 8, !dbg !3118
  %slots = getelementptr inbounds %struct.xa_node, ptr %70, i32 0, i32 7, !dbg !3118
  %71 = load i32, ptr %offset, align 4, !dbg !3118
  %idxprom = zext i32 %71 to i64, !dbg !3118
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !3118
  %72 = load volatile ptr, ptr %arrayidx, align 8, !dbg !3118
  store ptr %72, ptr %tmp98, align 8, !dbg !3120
  %73 = load ptr, ptr %tmp98, align 8, !dbg !3118
  store ptr %73, ptr %__UNIQUE_ID_rcu273, align 8, !dbg !3117
  %74 = load ptr, ptr %__UNIQUE_ID_rcu273, align 8, !dbg !3117
  store ptr %74, ptr %tmp99, align 8, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu273) #13, !dbg !3122
  %75 = load ptr, ptr %tmp99, align 8, !dbg !3117
  store ptr %75, ptr %child, align 8, !dbg !3123
  br label %if.end100, !dbg !3124

if.end100:                                        ; preds = %do.end97, %if.end63
  %76 = load ptr, ptr %node, align 8, !dbg !3125
  %slots101 = getelementptr inbounds %struct.xa_node, ptr %76, i32 0, i32 7, !dbg !3126
  %77 = load i32, ptr %offset, align 4, !dbg !3127
  %idxprom102 = zext i32 %77 to i64, !dbg !3125
  %arrayidx103 = getelementptr [64 x ptr], ptr %slots101, i64 0, i64 %idxprom102, !dbg !3125
  store ptr %arrayidx103, ptr %slot, align 8, !dbg !3128
  br label %while.cond, !dbg !3015, !llvm.loop !3129

while.end104:                                     ; preds = %if.then61, %while.cond
  %78 = load i64, ptr %start, align 8, !dbg !3131
  %79 = load ptr, ptr %iter.addr, align 8, !dbg !3132
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %79, i32 0, i32 0, !dbg !3133
  store i64 %78, ptr %index, align 8, !dbg !3134
  %80 = load ptr, ptr %node, align 8, !dbg !3135
  %tobool105 = icmp ne ptr %80, null, !dbg !3135
  br i1 %tobool105, label %if.then106, label %if.else117, !dbg !3136

if.then106:                                       ; preds = %while.end104
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x275) #13, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x275, metadata !2936, metadata !DIExpression()), !dbg !3137
  %81 = load i64, ptr %max.addr, align 8, !dbg !3137
  store i64 %81, ptr %__UNIQUE_ID___x275, align 8, !dbg !3137
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y276) #13, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y276, metadata !2939, metadata !DIExpression()), !dbg !3137
  %82 = load i64, ptr %start, align 8, !dbg !3137
  %83 = load ptr, ptr %node, align 8, !dbg !3137
  %call107 = call i64 @node_maxindex(ptr noundef %83) #14, !dbg !3137
  %or = or i64 %82, %call107, !dbg !3137
  store i64 %or, ptr %__UNIQUE_ID___y276, align 8, !dbg !3137
  %84 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !3137
  %85 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !3137
  %cmp109 = icmp ult i64 %84, %85, !dbg !3137
  br i1 %cmp109, label %cond.true111, label %cond.false112, !dbg !3137

cond.true111:                                     ; preds = %if.then106
  %86 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !3137
  br label %cond.end113, !dbg !3137

cond.false112:                                    ; preds = %if.then106
  %87 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !3137
  br label %cond.end113, !dbg !3137

cond.end113:                                      ; preds = %cond.false112, %cond.true111
  %cond114 = phi i64 [ %86, %cond.true111 ], [ %87, %cond.false112 ], !dbg !3137
  store i64 %cond114, ptr %tmp108, align 8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y276) #13, !dbg !3138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x275) #13, !dbg !3138
  %88 = load i64, ptr %tmp108, align 8, !dbg !3137
  %add115 = add i64 1, %88, !dbg !3139
  %89 = load ptr, ptr %iter.addr, align 8, !dbg !3140
  %next_index116 = getelementptr inbounds %struct.radix_tree_iter, ptr %89, i32 0, i32 1, !dbg !3141
  store i64 %add115, ptr %next_index116, align 8, !dbg !3142
  br label %if.end119, !dbg !3140

if.else117:                                       ; preds = %while.end104
  %90 = load ptr, ptr %iter.addr, align 8, !dbg !3143
  %next_index118 = getelementptr inbounds %struct.radix_tree_iter, ptr %90, i32 0, i32 1, !dbg !3144
  store i64 1, ptr %next_index118, align 8, !dbg !3145
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %cond.end113
  %91 = load ptr, ptr %node, align 8, !dbg !3146
  %92 = load ptr, ptr %iter.addr, align 8, !dbg !3147
  %node120 = getelementptr inbounds %struct.radix_tree_iter, ptr %92, i32 0, i32 3, !dbg !3148
  store ptr %91, ptr %node120, align 8, !dbg !3149
  %93 = load ptr, ptr %iter.addr, align 8, !dbg !3150
  %94 = load ptr, ptr %node, align 8, !dbg !3151
  %95 = load i32, ptr %offset, align 4, !dbg !3152
  call void @set_iter_tags(ptr noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef 0) #14, !dbg !3153
  %96 = load ptr, ptr %slot, align 8, !dbg !3154
  store ptr %96, ptr %retval, align 8, !dbg !3155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !3155

cleanup121:                                       ; preds = %if.end119, %if.then79, %if.then29, %cleanup, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxindex) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !3156
  %97 = load ptr, ptr %retval, align 8, !dbg !3156
  ret ptr %97, !dbg !3156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !3157 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  %0 = load i64, ptr %error.addr, align 8, !dbg !3164
  %1 = inttoptr i64 %0 to ptr, !dbg !3165
  ret ptr %1, !dbg !3166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @radix_tree_extend(ptr noundef %root, i32 noundef %gfp, i64 noundef %index, i32 noundef %shift) #0 align 16 !dbg !3167 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %index.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %maxshift = alloca i32, align 4
  %tag = alloca i32, align 4
  %__UNIQUE_ID_rcu213 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3171, metadata !DIExpression()), !dbg !3185
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !3172, metadata !DIExpression()), !dbg !3186
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3173, metadata !DIExpression()), !dbg !3187
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3174, metadata !DIExpression()), !dbg !3188
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !3189
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3175, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxshift) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %maxshift, metadata !3176, metadata !DIExpression()), !dbg !3192
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #13, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !3177, metadata !DIExpression()), !dbg !3194
  %0 = load i32, ptr %shift.addr, align 4, !dbg !3195
  store i32 %0, ptr %maxshift, align 4, !dbg !3196
  br label %while.cond, !dbg !3197

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %index.addr, align 8, !dbg !3198
  %2 = load i32, ptr %maxshift, align 4, !dbg !3199
  %call = call i64 @shift_maxindex(i32 noundef %2) #14, !dbg !3200
  %cmp = icmp ugt i64 %1, %call, !dbg !3201
  br i1 %cmp, label %while.body, label %while.end, !dbg !3197

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %maxshift, align 4, !dbg !3202
  %add = add i32 %3, 6, !dbg !3202
  store i32 %add, ptr %maxshift, align 4, !dbg !3202
  br label %while.cond, !dbg !3197, !llvm.loop !3203

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #13, !dbg !3205
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu213, metadata !3178, metadata !DIExpression()), !dbg !3205
  br label %do.body, !dbg !3206

do.body:                                          ; preds = %while.end
  br label %do.cond, !dbg !3208

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3208

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %root.addr, align 8, !dbg !3206
  %xa_head = getelementptr inbounds %struct.xarray, ptr %4, i32 0, i32 2, !dbg !3206
  %5 = load volatile ptr, ptr %xa_head, align 8, !dbg !3206
  store ptr %5, ptr %tmp, align 8, !dbg !3208
  %6 = load ptr, ptr %tmp, align 8, !dbg !3206
  store ptr %6, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !3205
  %7 = load ptr, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !3205
  store ptr %7, ptr %tmp2, align 8, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #13, !dbg !3210
  %8 = load ptr, ptr %tmp2, align 8, !dbg !3205
  store ptr %8, ptr %entry1, align 8, !dbg !3211
  %9 = load ptr, ptr %entry1, align 8, !dbg !3212
  %tobool = icmp ne ptr %9, null, !dbg !3212
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3214

land.lhs.true:                                    ; preds = %do.end
  %10 = load ptr, ptr %root.addr, align 8, !dbg !3215
  %call3 = call zeroext i1 @is_idr(ptr noundef %10) #14, !dbg !3216
  br i1 %call3, label %lor.lhs.false, label %if.then, !dbg !3217

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load ptr, ptr %root.addr, align 8, !dbg !3218
  %call4 = call i32 @root_tag_get(ptr noundef %11, i32 noundef 0) #14, !dbg !3219
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3219
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3220

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %out, !dbg !3221

if.end:                                           ; preds = %lor.lhs.false, %do.end
  br label %do.body6, !dbg !3222

do.body6:                                         ; preds = %do.cond91, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3180, metadata !DIExpression()), !dbg !3224
  %12 = load i32, ptr %gfp.addr, align 4, !dbg !3225
  %13 = load ptr, ptr %root.addr, align 8, !dbg !3226
  %14 = load i32, ptr %shift.addr, align 4, !dbg !3227
  %call7 = call ptr @radix_tree_node_alloc(i32 noundef %12, ptr noundef null, ptr noundef %13, i32 noundef %14, i32 noundef 0, i32 noundef 1, i32 noundef 0) #14, !dbg !3228
  store ptr %call7, ptr %node, align 8, !dbg !3224
  %15 = load ptr, ptr %node, align 8, !dbg !3229
  %tobool8 = icmp ne ptr %15, null, !dbg !3229
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3231

if.then9:                                         ; preds = %do.body6
  store i32 -12, ptr %retval, align 4, !dbg !3232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3232

if.end10:                                         ; preds = %do.body6
  %16 = load ptr, ptr %root.addr, align 8, !dbg !3233
  %call11 = call zeroext i1 @is_idr(ptr noundef %16) #14, !dbg !3235
  br i1 %call11, label %if.then12, label %if.else, !dbg !3236

if.then12:                                        ; preds = %if.end10
  %17 = load ptr, ptr %node, align 8, !dbg !3237
  call void @all_tag_set(ptr noundef %17, i32 noundef 0) #14, !dbg !3239
  %18 = load ptr, ptr %root.addr, align 8, !dbg !3240
  %call13 = call i32 @root_tag_get(ptr noundef %18, i32 noundef 0) #14, !dbg !3242
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3242
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3243

if.then15:                                        ; preds = %if.then12
  %19 = load ptr, ptr %node, align 8, !dbg !3244
  call void @tag_clear(ptr noundef %19, i32 noundef 0, i32 noundef 0) #14, !dbg !3246
  %20 = load ptr, ptr %root.addr, align 8, !dbg !3247
  call void @root_tag_set(ptr noundef %20, i32 noundef 0) #14, !dbg !3248
  br label %if.end16, !dbg !3249

if.end16:                                         ; preds = %if.then15, %if.then12
  br label %if.end22, !dbg !3250

if.else:                                          ; preds = %if.end10
  store i32 0, ptr %tag, align 4, !dbg !3251
  br label %for.cond, !dbg !3254

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32, ptr %tag, align 4, !dbg !3255
  %cmp17 = icmp slt i32 %21, 3, !dbg !3257
  br i1 %cmp17, label %for.body, label %for.end, !dbg !3258

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %root.addr, align 8, !dbg !3259
  %23 = load i32, ptr %tag, align 4, !dbg !3262
  %call18 = call i32 @root_tag_get(ptr noundef %22, i32 noundef %23) #14, !dbg !3263
  %tobool19 = icmp ne i32 %call18, 0, !dbg !3263
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3264

if.then20:                                        ; preds = %for.body
  %24 = load ptr, ptr %node, align 8, !dbg !3265
  %25 = load i32, ptr %tag, align 4, !dbg !3266
  call void @tag_set(ptr noundef %24, i32 noundef %25, i32 noundef 0) #14, !dbg !3267
  br label %if.end21, !dbg !3267

if.end21:                                         ; preds = %if.then20, %for.body
  br label %for.inc, !dbg !3268

for.inc:                                          ; preds = %if.end21
  %26 = load i32, ptr %tag, align 4, !dbg !3269
  %inc = add i32 %26, 1, !dbg !3269
  store i32 %inc, ptr %tag, align 4, !dbg !3269
  br label %for.cond, !dbg !3270, !llvm.loop !3271

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.end16
  br label %do.body23, !dbg !3273

do.body23:                                        ; preds = %if.end22
  %27 = load i32, ptr %shift.addr, align 4, !dbg !3274
  %cmp24 = icmp ugt i32 %27, 64, !dbg !3274
  %lnot = xor i1 %cmp24, true, !dbg !3274
  %lnot25 = xor i1 %lnot, true, !dbg !3274
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !3274
  %conv = sext i32 %lnot.ext to i64, !dbg !3274
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3274
  %tobool26 = icmp ne i64 %expval, 0, !dbg !3274
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !3277

if.then27:                                        ; preds = %do.body23
  br label %do.body28, !dbg !3274

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !3278

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !3280

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !3280

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !3278

do.body32:                                        ; preds = %do.end31
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 444, i32 0, i64 12) #13, !dbg !3282, !srcloc !3284
  br label %do.cond33, !dbg !3282

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !3282

do.end34:                                         ; preds = %do.cond33
  unreachable, !dbg !3278

do.cond35:                                        ; No predecessors!
  br label %do.end36, !dbg !3278

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !3278

if.end37:                                         ; preds = %do.end36, %do.body23
  br label %do.cond38, !dbg !3277

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !3277

do.end39:                                         ; preds = %do.cond38
  %28 = load ptr, ptr %entry1, align 8, !dbg !3285
  %call40 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %28) #14, !dbg !3287
  br i1 %call40, label %if.then41, label %if.else43, !dbg !3288

if.then41:                                        ; preds = %do.end39
  %29 = load ptr, ptr %node, align 8, !dbg !3289
  %30 = load ptr, ptr %entry1, align 8, !dbg !3291
  %call42 = call ptr @entry_to_node(ptr noundef %30) #14, !dbg !3292
  %parent = getelementptr inbounds %struct.xa_node, ptr %call42, i32 0, i32 4, !dbg !3293
  store ptr %29, ptr %parent, align 8, !dbg !3294
  br label %if.end47, !dbg !3295

if.else43:                                        ; preds = %do.end39
  %31 = load ptr, ptr %entry1, align 8, !dbg !3296
  %call44 = call zeroext i1 @xa_is_value(ptr noundef %31) #14, !dbg !3298
  br i1 %call44, label %if.then45, label %if.end46, !dbg !3299

if.then45:                                        ; preds = %if.else43
  %32 = load ptr, ptr %node, align 8, !dbg !3300
  %nr_values = getelementptr inbounds %struct.xa_node, ptr %32, i32 0, i32 3, !dbg !3302
  store i8 1, ptr %nr_values, align 1, !dbg !3303
  br label %if.end46, !dbg !3304

if.end46:                                         ; preds = %if.then45, %if.else43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then41
  %33 = load ptr, ptr %entry1, align 8, !dbg !3305
  %34 = load ptr, ptr %node, align 8, !dbg !3306
  %slots = getelementptr inbounds %struct.xa_node, ptr %34, i32 0, i32 7, !dbg !3307
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 0, !dbg !3306
  store ptr %33, ptr %arrayidx, align 8, !dbg !3308
  %35 = load ptr, ptr %node, align 8, !dbg !3309
  %call48 = call ptr @node_to_entry(ptr noundef %35) #14, !dbg !3310
  store ptr %call48, ptr %entry1, align 8, !dbg !3311
  br label %do.body49, !dbg !3312

do.body49:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !3313
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !3182, metadata !DIExpression()), !dbg !3313
  %36 = load ptr, ptr %entry1, align 8, !dbg !3313
  %37 = ptrtoint ptr %36 to i64, !dbg !3313
  store i64 %37, ptr %_r_a_p__v, align 8, !dbg !3313
  br i1 false, label %land.lhs.true50, label %if.else64, !dbg !3314

land.lhs.true50:                                  ; preds = %do.body49
  %38 = load i64, ptr %_r_a_p__v, align 8, !dbg !3314
  %cmp51 = icmp eq i64 %38, 0, !dbg !3314
  br i1 %cmp51, label %if.then53, label %if.else64, !dbg !3313

if.then53:                                        ; preds = %land.lhs.true50
  br label %do.body54, !dbg !3314

do.body54:                                        ; preds = %if.then53
  br label %do.body55, !dbg !3316

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !3318

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !3318

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !3316

do.body58:                                        ; preds = %do.end57
  %39 = load i64, ptr %_r_a_p__v, align 8, !dbg !3320
  %40 = inttoptr i64 %39 to ptr, !dbg !3320
  %41 = load ptr, ptr %root.addr, align 8, !dbg !3320
  %xa_head59 = getelementptr inbounds %struct.xarray, ptr %41, i32 0, i32 2, !dbg !3320
  store volatile ptr %40, ptr %xa_head59, align 8, !dbg !3320
  br label %do.cond60, !dbg !3320

do.cond60:                                        ; preds = %do.body58
  br label %do.end61, !dbg !3320

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !3316

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !3316

do.end63:                                         ; preds = %do.cond62
  br label %if.end87, !dbg !3316

if.else64:                                        ; preds = %land.lhs.true50, %do.body49
  br label %do.body65, !dbg !3314

do.body65:                                        ; preds = %if.else64
  br label %do.body66, !dbg !3322

do.body66:                                        ; preds = %do.body65
  br label %do.cond67, !dbg !3324

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !3324

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !3322

do.body69:                                        ; preds = %do.end68
  br label %do.body70, !dbg !3326

do.body70:                                        ; preds = %do.body69
  br label %do.cond71, !dbg !3328

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !3328

do.end72:                                         ; preds = %do.cond71
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !3326, !srcloc !3330
  br label %do.body73, !dbg !3326

do.body73:                                        ; preds = %do.end72
  br label %do.body74, !dbg !3331

do.body74:                                        ; preds = %do.body73
  br label %do.cond75, !dbg !3333

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !3333

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !3331

do.body77:                                        ; preds = %do.end76
  %42 = load i64, ptr %_r_a_p__v, align 8, !dbg !3335
  %43 = inttoptr i64 %42 to ptr, !dbg !3335
  %44 = load ptr, ptr %root.addr, align 8, !dbg !3335
  %xa_head78 = getelementptr inbounds %struct.xarray, ptr %44, i32 0, i32 2, !dbg !3335
  store volatile ptr %43, ptr %xa_head78, align 8, !dbg !3335
  br label %do.cond79, !dbg !3335

do.cond79:                                        ; preds = %do.body77
  br label %do.end80, !dbg !3335

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81, !dbg !3331

do.cond81:                                        ; preds = %do.end80
  br label %do.end82, !dbg !3331

do.end82:                                         ; preds = %do.cond81
  br label %do.cond83, !dbg !3326

do.cond83:                                        ; preds = %do.end82
  br label %do.end84, !dbg !3326

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !3322

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !3322

do.end86:                                         ; preds = %do.cond85
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %do.end63
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #13, !dbg !3312
  br label %do.cond88, !dbg !3313

do.cond88:                                        ; preds = %if.end87
  br label %do.end89, !dbg !3313

do.end89:                                         ; preds = %do.cond88
  %45 = load i32, ptr %shift.addr, align 4, !dbg !3337
  %add90 = add i32 %45, 6, !dbg !3337
  store i32 %add90, ptr %shift.addr, align 4, !dbg !3337
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3338
  br label %cleanup, !dbg !3338

cleanup:                                          ; preds = %do.end89, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !3338
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup96 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond91, !dbg !3339

do.cond91:                                        ; preds = %cleanup.cont
  %46 = load i32, ptr %shift.addr, align 4, !dbg !3340
  %47 = load i32, ptr %maxshift, align 4, !dbg !3341
  %cmp92 = icmp ule i32 %46, %47, !dbg !3342
  br i1 %cmp92, label %do.body6, label %do.end94, !dbg !3339, !llvm.loop !3343

do.end94:                                         ; preds = %do.cond91
  br label %out, !dbg !3339

out:                                              ; preds = %do.end94, %if.then
  call void @llvm.dbg.label(metadata !3184), !dbg !3345
  %48 = load i32, ptr %maxshift, align 4, !dbg !3346
  %add95 = add i32 %48, 6, !dbg !3347
  store i32 %add95, ptr %retval, align 4, !dbg !3348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96, !dbg !3348

cleanup96:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #13, !dbg !3349
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxshift) #13, !dbg !3349
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !3349
  %49 = load i32, ptr %retval, align 4, !dbg !3349
  ret i32 %49, !dbg !3349
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_node_alloc(i32 noundef %gfp_mask, ptr noundef %parent, ptr noundef %root, i32 noundef %shift, i32 noundef %offset, i32 noundef %count, i32 noundef %nr_values) #0 align 16 !dbg !3350 {
entry:
  %retval = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %shift.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %nr_values.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %rtp = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !3354, metadata !DIExpression()), !dbg !3373
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3355, metadata !DIExpression()), !dbg !3374
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3356, metadata !DIExpression()), !dbg !3375
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3357, metadata !DIExpression()), !dbg !3376
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3358, metadata !DIExpression()), !dbg !3377
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3359, metadata !DIExpression()), !dbg !3378
  store i32 %nr_values, ptr %nr_values.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_values.addr, metadata !3360, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3361, metadata !DIExpression()), !dbg !3381
  store ptr null, ptr %ret, align 8, !dbg !3381
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !3382
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %0) #14, !dbg !3383
  br i1 %call, label %if.end12, label %land.lhs.true, !dbg !3384

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @preempt_count() #14, !dbg !3385
  %conv = sext i32 %call1 to i64, !dbg !3385
  %and = and i64 %conv, 16776960, !dbg !3385
  %tobool = icmp ne i64 %and, 0, !dbg !3385
  br i1 %tobool, label %if.end12, label %if.then, !dbg !3386

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtp) #13, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %rtp, metadata !3362, metadata !DIExpression()), !dbg !3388
  %1 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !3389
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !3390
  %or = or i32 %2, 8192, !dbg !3391
  %call2 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %or) #14, !dbg !3392
  store ptr %call2, ptr %ret, align 8, !dbg !3393
  %3 = load ptr, ptr %ret, align 8, !dbg !3394
  %tobool3 = icmp ne ptr %3, null, !dbg !3394
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3396

if.then4:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3397

if.end:                                           ; preds = %if.then
  br label %do.body, !dbg !3398

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3399
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3365, metadata !DIExpression()), !dbg !3399
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3399
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !3399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3398
  br label %do.cond, !dbg !3399

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3399

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !3400
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !3369, metadata !DIExpression()), !dbg !3400
  %5 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @radix_tree_preloads) #15, !dbg !3400, !srcloc !3401
  store i64 %5, ptr %tcp_ptr__, align 8, !dbg !3400
  %6 = load i64, ptr %tcp_ptr__, align 8, !dbg !3400
  %7 = inttoptr i64 %6 to ptr, !dbg !3400
  store ptr %7, ptr %tmp5, align 8, !dbg !3400
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #13, !dbg !3398
  %8 = load ptr, ptr %tmp5, align 8, !dbg !3400
  store ptr %8, ptr %tmp, align 8, !dbg !3399
  %9 = load ptr, ptr %tmp, align 8, !dbg !3398
  store ptr %9, ptr %rtp, align 8, !dbg !3402
  %10 = load ptr, ptr %rtp, align 8, !dbg !3403
  %nr = getelementptr inbounds %struct.radix_tree_preload, ptr %10, i32 0, i32 1, !dbg !3405
  %11 = load i32, ptr %nr, align 8, !dbg !3405
  %tobool6 = icmp ne i32 %11, 0, !dbg !3403
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !3406

if.then7:                                         ; preds = %do.end
  %12 = load ptr, ptr %rtp, align 8, !dbg !3407
  %nodes = getelementptr inbounds %struct.radix_tree_preload, ptr %12, i32 0, i32 2, !dbg !3409
  %13 = load ptr, ptr %nodes, align 8, !dbg !3409
  store ptr %13, ptr %ret, align 8, !dbg !3410
  %14 = load ptr, ptr %ret, align 8, !dbg !3411
  %parent8 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 4, !dbg !3412
  %15 = load ptr, ptr %parent8, align 8, !dbg !3412
  %16 = load ptr, ptr %rtp, align 8, !dbg !3413
  %nodes9 = getelementptr inbounds %struct.radix_tree_preload, ptr %16, i32 0, i32 2, !dbg !3414
  store ptr %15, ptr %nodes9, align 8, !dbg !3415
  %17 = load ptr, ptr %rtp, align 8, !dbg !3416
  %nr10 = getelementptr inbounds %struct.radix_tree_preload, ptr %17, i32 0, i32 1, !dbg !3417
  %18 = load i32, ptr %nr10, align 8, !dbg !3418
  %dec = add i32 %18, -1, !dbg !3418
  store i32 %dec, ptr %nr10, align 8, !dbg !3418
  br label %if.end11, !dbg !3419

if.end11:                                         ; preds = %if.then7, %do.end
  %19 = load ptr, ptr %ret, align 8, !dbg !3420
  call void @kmemleak_update_trace(ptr noundef %19) #14, !dbg !3421
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3422

cleanup:                                          ; preds = %if.end11, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtp) #13, !dbg !3423
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 2, label %out
  ]

if.end12:                                         ; preds = %land.lhs.true, %entry
  %20 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !3424
  %21 = load i32, ptr %gfp_mask.addr, align 4, !dbg !3425
  %call13 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef %21) #14, !dbg !3426
  store ptr %call13, ptr %ret, align 8, !dbg !3427
  br label %out, !dbg !3428

out:                                              ; preds = %if.end12, %cleanup
  call void @llvm.dbg.label(metadata !3371), !dbg !3429
  br label %do.body14, !dbg !3430

do.body14:                                        ; preds = %out
  %22 = load ptr, ptr %ret, align 8, !dbg !3431
  %call15 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %22) #14, !dbg !3431
  %lnot = xor i1 %call15, true, !dbg !3431
  %lnot16 = xor i1 %lnot, true, !dbg !3431
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3431
  %conv17 = sext i32 %lnot.ext to i64, !dbg !3431
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !3431
  %tobool18 = icmp ne i64 %expval, 0, !dbg !3431
  br i1 %tobool18, label %if.then19, label %if.end29, !dbg !3434

if.then19:                                        ; preds = %do.body14
  br label %do.body20, !dbg !3431

do.body20:                                        ; preds = %if.then19
  br label %do.body21, !dbg !3435

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !3437

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3437

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !3435

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 278, i32 0, i64 12) #13, !dbg !3439, !srcloc !3441
  br label %do.cond25, !dbg !3439

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !3439

do.end26:                                         ; preds = %do.cond25
  unreachable, !dbg !3435

do.cond27:                                        ; No predecessors!
  br label %do.end28, !dbg !3435

do.end28:                                         ; preds = %do.cond27
  br label %if.end29, !dbg !3435

if.end29:                                         ; preds = %do.end28, %do.body14
  br label %do.cond30, !dbg !3434

do.cond30:                                        ; preds = %if.end29
  br label %do.end31, !dbg !3434

do.end31:                                         ; preds = %do.cond30
  %23 = load ptr, ptr %ret, align 8, !dbg !3442
  %tobool32 = icmp ne ptr %23, null, !dbg !3442
  br i1 %tobool32, label %if.then33, label %if.end43, !dbg !3444

if.then33:                                        ; preds = %do.end31
  %24 = load i32, ptr %shift.addr, align 4, !dbg !3445
  %conv34 = trunc i32 %24 to i8, !dbg !3445
  %25 = load ptr, ptr %ret, align 8, !dbg !3447
  %shift35 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 0, !dbg !3448
  store i8 %conv34, ptr %shift35, align 8, !dbg !3449
  %26 = load i32, ptr %offset.addr, align 4, !dbg !3450
  %conv36 = trunc i32 %26 to i8, !dbg !3450
  %27 = load ptr, ptr %ret, align 8, !dbg !3451
  %offset37 = getelementptr inbounds %struct.xa_node, ptr %27, i32 0, i32 1, !dbg !3452
  store i8 %conv36, ptr %offset37, align 1, !dbg !3453
  %28 = load i32, ptr %count.addr, align 4, !dbg !3454
  %conv38 = trunc i32 %28 to i8, !dbg !3454
  %29 = load ptr, ptr %ret, align 8, !dbg !3455
  %count39 = getelementptr inbounds %struct.xa_node, ptr %29, i32 0, i32 2, !dbg !3456
  store i8 %conv38, ptr %count39, align 2, !dbg !3457
  %30 = load i32, ptr %nr_values.addr, align 4, !dbg !3458
  %conv40 = trunc i32 %30 to i8, !dbg !3458
  %31 = load ptr, ptr %ret, align 8, !dbg !3459
  %nr_values41 = getelementptr inbounds %struct.xa_node, ptr %31, i32 0, i32 3, !dbg !3460
  store i8 %conv40, ptr %nr_values41, align 1, !dbg !3461
  %32 = load ptr, ptr %parent.addr, align 8, !dbg !3462
  %33 = load ptr, ptr %ret, align 8, !dbg !3463
  %parent42 = getelementptr inbounds %struct.xa_node, ptr %33, i32 0, i32 4, !dbg !3464
  store ptr %32, ptr %parent42, align 8, !dbg !3465
  %34 = load ptr, ptr %root.addr, align 8, !dbg !3466
  %35 = load ptr, ptr %ret, align 8, !dbg !3467
  %array = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 5, !dbg !3468
  store ptr %34, ptr %array, align 8, !dbg !3469
  br label %if.end43, !dbg !3470

if.end43:                                         ; preds = %if.then33, %do.end31
  %36 = load ptr, ptr %ret, align 8, !dbg !3471
  store ptr %36, ptr %retval, align 8, !dbg !3472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !3472

cleanup44:                                        ; preds = %if.end43, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !3473
  %37 = load ptr, ptr %retval, align 8, !dbg !3473
  ret ptr %37, !dbg !3473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @all_tag_set(ptr noundef %node, i32 noundef %tag) #4 align 16 !dbg !3474 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3478, metadata !DIExpression()), !dbg !3480
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !3479, metadata !DIExpression()), !dbg !3481
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3482
  %1 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 8, !dbg !3483
  %2 = load i32, ptr %tag.addr, align 4, !dbg !3484
  %idxprom = zext i32 %2 to i64, !dbg !3482
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %1, i64 0, i64 %idxprom, !dbg !3482
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !3482
  call void @bitmap_fill(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !3485
  ret void, !dbg !3486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @node_to_entry(ptr noundef %ptr) #4 align 16 !dbg !3487 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3491, metadata !DIExpression()), !dbg !3492
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3493
  %1 = ptrtoint ptr %0 to i64, !dbg !3494
  %or = or i64 %1, 2, !dbg !3495
  %2 = inttoptr i64 %or to ptr, !dbg !3496
  ret ptr %2, !dbg !3497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @next_index(i64 noundef %index, ptr noundef %node, i64 noundef %offset) #0 align 16 !dbg !3498 {
entry:
  %index.addr = alloca i64, align 8
  %node.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3502, metadata !DIExpression()), !dbg !3505
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3503, metadata !DIExpression()), !dbg !3506
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3504, metadata !DIExpression()), !dbg !3507
  %0 = load i64, ptr %index.addr, align 8, !dbg !3508
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3509
  %call = call i64 @node_maxindex(ptr noundef %1) #14, !dbg !3510
  %not = xor i64 %call, -1, !dbg !3511
  %and = and i64 %0, %not, !dbg !3512
  %2 = load i64, ptr %offset.addr, align 8, !dbg !3513
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3514
  %shift = getelementptr inbounds %struct.xa_node, ptr %3, i32 0, i32 0, !dbg !3515
  %4 = load i8, ptr %shift, align 8, !dbg !3515
  %conv = zext i8 %4 to i32, !dbg !3514
  %sh_prom = zext i32 %conv to i64, !dbg !3516
  %shl = shl i64 %2, %sh_prom, !dbg !3516
  %add = add i64 %and, %shl, !dbg !3517
  ret i64 %add, !dbg !3518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @idr_destroy(ptr noundef %idr) #0 align 16 !dbg !3519 {
entry:
  %idr.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__UNIQUE_ID_rcu277 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !3535
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3531, metadata !DIExpression()), !dbg !3536
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu277) #13, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu277, metadata !3532, metadata !DIExpression()), !dbg !3537
  br label %do.body, !dbg !3538

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3540

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3540

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !3538
  %idr_rt = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 0, !dbg !3538
  %xa_head = getelementptr inbounds %struct.xarray, ptr %idr_rt, i32 0, i32 2, !dbg !3538
  %1 = load volatile ptr, ptr %xa_head, align 8, !dbg !3538
  store ptr %1, ptr %tmp, align 8, !dbg !3540
  %2 = load ptr, ptr %tmp, align 8, !dbg !3538
  store ptr %2, ptr %__UNIQUE_ID_rcu277, align 8, !dbg !3537
  %3 = load ptr, ptr %__UNIQUE_ID_rcu277, align 8, !dbg !3537
  store ptr %3, ptr %tmp1, align 8, !dbg !3537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu277) #13, !dbg !3542
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3537
  store ptr %4, ptr %node, align 8, !dbg !3536
  %5 = load ptr, ptr %node, align 8, !dbg !3543
  %call = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %5) #14, !dbg !3545
  br i1 %call, label %if.then, label %if.end, !dbg !3546

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %node, align 8, !dbg !3547
  call void @radix_tree_free_nodes(ptr noundef %6) #14, !dbg !3548
  br label %if.end, !dbg !3548

if.end:                                           ; preds = %if.then, %do.end
  %7 = load ptr, ptr %idr.addr, align 8, !dbg !3549
  %idr_rt2 = getelementptr inbounds %struct.idr, ptr %7, i32 0, i32 0, !dbg !3550
  %xa_head3 = getelementptr inbounds %struct.xarray, ptr %idr_rt2, i32 0, i32 2, !dbg !3551
  store ptr null, ptr %xa_head3, align 8, !dbg !3552
  %8 = load ptr, ptr %idr.addr, align 8, !dbg !3553
  %idr_rt4 = getelementptr inbounds %struct.idr, ptr %8, i32 0, i32 0, !dbg !3554
  call void @root_tag_set(ptr noundef %idr_rt4, i32 noundef 0) #14, !dbg !3555
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !3556
  ret void, !dbg !3556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @radix_tree_free_nodes(ptr noundef %node) #0 align 16 !dbg !3557 {
entry:
  %node.addr = alloca ptr, align 8
  %offset = alloca i32, align 4
  %child = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__UNIQUE_ID_rcu229 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %old = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp34 = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3561, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #13, !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !3562, metadata !DIExpression()), !dbg !3579
  store i32 0, ptr %offset, align 4, !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3563, metadata !DIExpression()), !dbg !3581
  %0 = load ptr, ptr %node.addr, align 8, !dbg !3582
  %call = call ptr @entry_to_node(ptr noundef %0) #14, !dbg !3583
  store ptr %call, ptr %child, align 8, !dbg !3581
  br label %for.cond, !dbg !3584

for.cond:                                         ; preds = %cleanup.cont49, %cleanup47, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !3585
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3564, metadata !DIExpression()), !dbg !3586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu229) #13, !dbg !3587
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu229, metadata !3568, metadata !DIExpression()), !dbg !3587
  br label %do.body, !dbg !3588

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !3590

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3590

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %child, align 8, !dbg !3588
  %slots = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 7, !dbg !3588
  %2 = load i32, ptr %offset, align 4, !dbg !3588
  %idxprom = zext i32 %2 to i64, !dbg !3588
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !3588
  %3 = load volatile ptr, ptr %arrayidx, align 8, !dbg !3588
  store ptr %3, ptr %tmp, align 8, !dbg !3590
  %4 = load ptr, ptr %tmp, align 8, !dbg !3588
  store ptr %4, ptr %__UNIQUE_ID_rcu229, align 8, !dbg !3587
  %5 = load ptr, ptr %__UNIQUE_ID_rcu229, align 8, !dbg !3587
  store ptr %5, ptr %tmp2, align 8, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu229) #13, !dbg !3592
  %6 = load ptr, ptr %tmp2, align 8, !dbg !3587
  store ptr %6, ptr %entry1, align 8, !dbg !3586
  %7 = load ptr, ptr %entry1, align 8, !dbg !3593
  %call3 = call zeroext i1 @xa_is_node(ptr noundef %7) #14, !dbg !3595
  br i1 %call3, label %land.lhs.true, label %if.end, !dbg !3596

land.lhs.true:                                    ; preds = %do.end
  %8 = load ptr, ptr %child, align 8, !dbg !3597
  %shift = getelementptr inbounds %struct.xa_node, ptr %8, i32 0, i32 0, !dbg !3598
  %9 = load i8, ptr %shift, align 8, !dbg !3598
  %conv = zext i8 %9 to i32, !dbg !3597
  %tobool = icmp ne i32 %conv, 0, !dbg !3597
  br i1 %tobool, label %if.then, label %if.end, !dbg !3599

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %entry1, align 8, !dbg !3600
  %call4 = call ptr @entry_to_node(ptr noundef %10) #14, !dbg !3602
  store ptr %call4, ptr %child, align 8, !dbg !3603
  store i32 0, ptr %offset, align 4, !dbg !3604
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !3605, !llvm.loop !3606

if.end:                                           ; preds = %land.lhs.true, %do.end
  %11 = load i32, ptr %offset, align 4, !dbg !3609
  %inc = add i32 %11, 1, !dbg !3609
  store i32 %inc, ptr %offset, align 4, !dbg !3609
  br label %while.cond, !dbg !3610

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %12 = load i32, ptr %offset, align 4, !dbg !3611
  %conv5 = zext i32 %12 to i64, !dbg !3611
  %cmp = icmp eq i64 %conv5, 64, !dbg !3612
  br i1 %cmp, label %while.body, label %while.end, !dbg !3610

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #13, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3570, metadata !DIExpression()), !dbg !3614
  %13 = load ptr, ptr %child, align 8, !dbg !3615
  store ptr %13, ptr %old, align 8, !dbg !3614
  %14 = load ptr, ptr %child, align 8, !dbg !3616
  %offset7 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 1, !dbg !3617
  %15 = load i8, ptr %offset7, align 1, !dbg !3617
  %conv8 = zext i8 %15 to i32, !dbg !3616
  %add = add i32 %conv8, 1, !dbg !3618
  store i32 %add, ptr %offset, align 4, !dbg !3619
  %16 = load ptr, ptr %child, align 8, !dbg !3620
  %parent = getelementptr inbounds %struct.xa_node, ptr %16, i32 0, i32 4, !dbg !3621
  %17 = load ptr, ptr %parent, align 8, !dbg !3621
  store ptr %17, ptr %child, align 8, !dbg !3622
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3572, metadata !DIExpression()), !dbg !3623
  %18 = load ptr, ptr %old, align 8, !dbg !3623
  %19 = getelementptr inbounds %struct.xa_node, ptr %18, i32 0, i32 6, !dbg !3623
  %call9 = call i32 @list_empty(ptr noundef %19) #14, !dbg !3623
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3623
  %lnot = xor i1 %tobool10, true, !dbg !3623
  %lnot11 = xor i1 %lnot, true, !dbg !3623
  %lnot12 = xor i1 %lnot11, true, !dbg !3623
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !3623
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3623
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !3624
  %tobool13 = icmp ne i32 %20, 0, !dbg !3624
  %lnot14 = xor i1 %tobool13, true, !dbg !3624
  %lnot16 = xor i1 %lnot14, true, !dbg !3624
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3624
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3624
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !3624
  %tobool19 = icmp ne i64 %expval, 0, !dbg !3624
  br i1 %tobool19, label %if.then20, label %if.end33, !dbg !3623

if.then20:                                        ; preds = %while.body
  br label %do.body21, !dbg !3624

do.body21:                                        ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3574, metadata !DIExpression()), !dbg !3625
  store i32 2307, ptr %__flags, align 4, !dbg !3625
  br label %do.body22, !dbg !3625

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !3626

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !3626

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !3625

do.body25:                                        ; preds = %do.end24
  %21 = load i32, ptr %__flags, align 4, !dbg !3628
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 673, i32 %21, i64 12) #13, !dbg !3628, !srcloc !3630
  br label %do.cond26, !dbg !3628

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !3628

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !3625

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !3631

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !3631

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3624
  br label %do.cond31, !dbg !3625

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !3625

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !3625

if.end33:                                         ; preds = %do.end32, %while.body
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !3623
  %tobool35 = icmp ne i32 %22, 0, !dbg !3623
  %lnot36 = xor i1 %tobool35, true, !dbg !3623
  %lnot38 = xor i1 %lnot36, true, !dbg !3623
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !3623
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !3623
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !3623
  store i64 %expval41, ptr %tmp34, align 8, !dbg !3624
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3633
  %23 = load i64, ptr %tmp34, align 8, !dbg !3623
  %24 = load ptr, ptr %old, align 8, !dbg !3634
  call void @radix_tree_node_free(ptr noundef %24) #14, !dbg !3635
  %25 = load ptr, ptr %old, align 8, !dbg !3636
  %26 = load ptr, ptr %node.addr, align 8, !dbg !3638
  %call42 = call ptr @entry_to_node(ptr noundef %26) #14, !dbg !3639
  %cmp43 = icmp eq ptr %25, %call42, !dbg !3640
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !3641

if.then45:                                        ; preds = %if.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3642

if.end46:                                         ; preds = %if.end33
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3643
  br label %cleanup, !dbg !3643

cleanup:                                          ; preds = %if.end46, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #13, !dbg !3643
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3610, !llvm.loop !3644

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3645
  br label %cleanup47, !dbg !3645

cleanup47:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !3645
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %cleanup50 [
    i32 0, label %cleanup.cont49
    i32 3, label %for.cond
  ]

cleanup.cont49:                                   ; preds = %cleanup47
  br label %for.cond, !dbg !3646, !llvm.loop !3606

cleanup50:                                        ; preds = %cleanup47
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !3647
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #13, !dbg !3647
  ret void, !dbg !3647
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @radix_tree_init() #8 section ".init.text" align 16 !dbg !3648 {
entry:
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3658
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3652, metadata !DIExpression()), !dbg !3659
  br label %do.body, !dbg !3660

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3661

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3661

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !3663

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3664

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3664

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !3666

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !3667

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3667

do.end6:                                          ; preds = %do.cond5
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 576, i32 noundef 0, i32 noundef 393216, ptr noundef @radix_tree_node_ctor) #14, !dbg !3669
  store ptr %call, ptr @radix_tree_node_cachep, align 8, !dbg !3670
  %call7 = call i32 @cpuhp_setup_state_nocalls(i32 noundef 32, ptr noundef @.str.2, ptr noundef null, ptr noundef @radix_tree_cpu_dead) #14, !dbg !3671
  store i32 %call7, ptr %ret, align 4, !dbg !3672
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3673
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3653, metadata !DIExpression()), !dbg !3673
  %0 = load i32, ptr %ret, align 4, !dbg !3673
  %cmp = icmp slt i32 %0, 0, !dbg !3673
  %lnot = xor i1 %cmp, true, !dbg !3673
  %lnot8 = xor i1 %lnot, true, !dbg !3673
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3673
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3673
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3674
  %tobool = icmp ne i32 %1, 0, !dbg !3674
  %lnot9 = xor i1 %tobool, true, !dbg !3674
  %lnot11 = xor i1 %lnot9, true, !dbg !3674
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3674
  %conv = sext i32 %lnot.ext12 to i64, !dbg !3674
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3674
  %tobool13 = icmp ne i64 %expval, 0, !dbg !3674
  br i1 %tobool13, label %if.then, label %if.end, !dbg !3673

if.then:                                          ; preds = %do.end6
  br label %do.body14, !dbg !3674

do.body14:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !3675
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3655, metadata !DIExpression()), !dbg !3675
  store i32 2305, ptr %__flags, align 4, !dbg !3675
  br label %do.body15, !dbg !3675

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !3676

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3676

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !3675

do.body18:                                        ; preds = %do.end17
  %2 = load i32, ptr %__flags, align 4, !dbg !3678
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1607, i32 %2, i64 12) #13, !dbg !3678, !srcloc !3680
  br label %do.cond19, !dbg !3678

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3678

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !3675

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !3681

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3681

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !3674
  br label %do.cond24, !dbg !3675

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !3675

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !3675

if.end:                                           ; preds = %do.end25, %do.end6
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3673
  %tobool26 = icmp ne i32 %3, 0, !dbg !3673
  %lnot27 = xor i1 %tobool26, true, !dbg !3673
  %lnot29 = xor i1 %lnot27, true, !dbg !3673
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !3673
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !3673
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !3673
  store i64 %expval32, ptr %tmp, align 8, !dbg !3674
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !3683
  %4 = load i64, ptr %tmp, align 8, !dbg !3673
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3684
  ret void, !dbg !3684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3685 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @radix_tree_node_ctor(ptr noundef %arg) #0 align 16 !dbg !3693 {
entry:
  %arg.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !3698
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3696, metadata !DIExpression()), !dbg !3699
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !3700
  store ptr %0, ptr %node, align 8, !dbg !3699
  %1 = load ptr, ptr %node, align 8, !dbg !3701
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 576, i1 false), !dbg !3702
  %2 = load ptr, ptr %node, align 8, !dbg !3703
  %3 = getelementptr inbounds %struct.xa_node, ptr %2, i32 0, i32 6, !dbg !3704
  call void @INIT_LIST_HEAD(ptr noundef %3) #14, !dbg !3705
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !3706
  ret void, !dbg !3706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !3707 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3714, metadata !DIExpression()), !dbg !3718
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3715, metadata !DIExpression()), !dbg !3719
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !3716, metadata !DIExpression()), !dbg !3720
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !3717, metadata !DIExpression()), !dbg !3721
  %0 = load i32, ptr %state.addr, align 4, !dbg !3722
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3723
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !3724
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !3725
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #14, !dbg !3726
  ret i32 %call, !dbg !3727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @radix_tree_cpu_dead(i32 noundef %cpu) #0 align 16 !dbg !3728 {
entry:
  %cpu.addr = alloca i32, align 4
  %rtp = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3730, metadata !DIExpression()), !dbg !3738
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtp) #13, !dbg !3739
  call void @llvm.dbg.declare(metadata ptr %rtp, metadata !3731, metadata !DIExpression()), !dbg !3740
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3732, metadata !DIExpression()), !dbg !3742
  br label %do.body, !dbg !3743

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3744
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3733, metadata !DIExpression()), !dbg !3744
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3744
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !3743
  br label %do.cond, !dbg !3744

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3744

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !3745
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3736, metadata !DIExpression()), !dbg !3745
  store i64 ptrtoint (ptr @radix_tree_preloads to i64), ptr %__ptr, align 8, !dbg !3745
  %1 = load i64, ptr %__ptr, align 8, !dbg !3745
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !3745
  %idxprom = zext i32 %2 to i64, !dbg !3745
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3745
  %3 = load i64, ptr %arrayidx, align 8, !dbg !3745
  %add = add i64 %1, %3, !dbg !3745
  %4 = inttoptr i64 %add to ptr, !dbg !3745
  store ptr %4, ptr %tmp1, align 8, !dbg !3745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !3743
  %5 = load ptr, ptr %tmp1, align 8, !dbg !3745
  store ptr %5, ptr %tmp, align 8, !dbg !3744
  %6 = load ptr, ptr %tmp, align 8, !dbg !3743
  store ptr %6, ptr %rtp, align 8, !dbg !3746
  br label %while.cond, !dbg !3747

while.cond:                                       ; preds = %while.body, %do.end
  %7 = load ptr, ptr %rtp, align 8, !dbg !3748
  %nr = getelementptr inbounds %struct.radix_tree_preload, ptr %7, i32 0, i32 1, !dbg !3749
  %8 = load i32, ptr %nr, align 8, !dbg !3749
  %tobool = icmp ne i32 %8, 0, !dbg !3747
  br i1 %tobool, label %while.body, label %while.end, !dbg !3747

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %rtp, align 8, !dbg !3750
  %nodes = getelementptr inbounds %struct.radix_tree_preload, ptr %9, i32 0, i32 2, !dbg !3752
  %10 = load ptr, ptr %nodes, align 8, !dbg !3752
  store ptr %10, ptr %node, align 8, !dbg !3753
  %11 = load ptr, ptr %node, align 8, !dbg !3754
  %parent = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 4, !dbg !3755
  %12 = load ptr, ptr %parent, align 8, !dbg !3755
  %13 = load ptr, ptr %rtp, align 8, !dbg !3756
  %nodes2 = getelementptr inbounds %struct.radix_tree_preload, ptr %13, i32 0, i32 2, !dbg !3757
  store ptr %12, ptr %nodes2, align 8, !dbg !3758
  %14 = load ptr, ptr @radix_tree_node_cachep, align 8, !dbg !3759
  %15 = load ptr, ptr %node, align 8, !dbg !3760
  call void @kmem_cache_free(ptr noundef %14, ptr noundef %15) #14, !dbg !3761
  %16 = load ptr, ptr %rtp, align 8, !dbg !3762
  %nr3 = getelementptr inbounds %struct.radix_tree_preload, ptr %16, i32 0, i32 1, !dbg !3763
  %17 = load i32, ptr %nr3, align 8, !dbg !3764
  %dec = add i32 %17, -1, !dbg !3764
  store i32 %dec, ptr %nr3, align 8, !dbg !3764
  br label %while.cond, !dbg !3747, !llvm.loop !3765

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !3767
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtp) #13, !dbg !3767
  ret i32 0, !dbg !3768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_lock_release(ptr noundef %l) #4 align 16 !dbg !3769 {
entry:
  %l.addr = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  ret void, !dbg !3773
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !3774 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !3780
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3778, metadata !DIExpression()), !dbg !3780
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !3780, !srcloc !3781
  %1 = icmp ult i8 %0, 2, !dbg !3780
  call void @llvm.assume(i1 %1), !dbg !3780
  store i8 %0, ptr %c, align 1, !dbg !3780
  %2 = load i8, ptr %c, align 1, !dbg !3780, !range !1429, !noundef !310
  %tobool = trunc i8 %2 to i1, !dbg !3780
  %frombool = zext i1 %tobool to i8, !dbg !3780
  store i8 %frombool, ptr %tmp, align 1, !dbg !3780
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !3782
  %3 = load i8, ptr %tmp, align 1, !dbg !3780, !range !1429, !noundef !310
  %tobool1 = trunc i8 %3 to i1, !dbg !3780
  ret i1 %tobool1, !dbg !3783
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3784 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @root_gfp_mask(ptr noundef %root) #4 align 16 !dbg !3787 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3793
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1, !dbg !3794
  %1 = load i32, ptr %xa_flags, align 4, !dbg !3794
  %and = and i32 %1, 67108848, !dbg !3795
  ret i32 %and, !dbg !3796
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3797 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3805, metadata !DIExpression()), !dbg !3810
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3807, metadata !DIExpression()), !dbg !3813
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3814
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3815
  %div = udiv i64 %1, 64, !dbg !3815
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3816
  store ptr %add.ptr, ptr %p, align 8, !dbg !3813
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3808, metadata !DIExpression()), !dbg !3818
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3819
  %rem = urem i64 %2, 64, !dbg !3819
  %shl = shl i64 1, %rem, !dbg !3819
  store i64 %shl, ptr %mask, align 8, !dbg !3818
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3809, metadata !DIExpression()), !dbg !3821
  %3 = load ptr, ptr %p, align 8, !dbg !3822
  %4 = load i64, ptr %3, align 8, !dbg !3823
  store i64 %4, ptr %val, align 8, !dbg !3821
  %5 = load i64, ptr %val, align 8, !dbg !3824
  %6 = load i64, ptr %mask, align 8, !dbg !3825
  %and = and i64 %5, %6, !dbg !3826
  %tobool = icmp ne i64 %and, 0, !dbg !3827
  %lnot = xor i1 %tobool, true, !dbg !3827
  %lnot1 = xor i1 %lnot, true, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !3829
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !3829
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !3829
  ret i1 %lnot1, !dbg !3830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3831 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3834, metadata !DIExpression()), !dbg !3836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3835, metadata !DIExpression()), !dbg !3837
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3838
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3839
  %div = udiv i64 %1, 64, !dbg !3839
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3840
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !3841
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3842
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3843
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3844
  ret i1 %call, !dbg !3845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !3846 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3858, metadata !DIExpression()), !dbg !3860
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3859, metadata !DIExpression()), !dbg !3861
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3862
  %1 = load i64, ptr %size.addr, align 8, !dbg !3863
  %conv = trunc i64 %1 to i32, !dbg !3863
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !3864
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3865
  %3 = load i64, ptr %size.addr, align 8, !dbg !3865
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !3865
  ret void, !dbg !3866
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3867 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3870, metadata !DIExpression()), !dbg !3872
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3871, metadata !DIExpression()), !dbg !3873
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3874
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3875
  br i1 %1, label %cond.true, label %cond.false, !dbg !3875

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3876
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3877
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !3878
  %conv = zext i1 %call to i32, !dbg !3878
  br label %cond.end, !dbg !3875

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3879
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3880
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !3881
  %conv2 = zext i1 %call1 to i32, !dbg !3881
  br label %cond.end, !dbg !3875

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3875
  %tobool = icmp ne i32 %cond, 0, !dbg !3875
  ret i1 %tobool, !dbg !3882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3883 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3888, metadata !DIExpression()), !dbg !3890
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3889, metadata !DIExpression()), !dbg !3891
  ret i1 true, !dbg !3892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !3893 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3898, metadata !DIExpression()), !dbg !3901
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3899, metadata !DIExpression()), !dbg !3902
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3900, metadata !DIExpression()), !dbg !3903
  ret void, !dbg !3904
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3905 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3909, metadata !DIExpression()), !dbg !3911
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3910, metadata !DIExpression()), !dbg !3912
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3913
  %and = and i64 %0, 63, !dbg !3914
  %shl = shl i64 1, %and, !dbg !3915
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3916
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3917
  %shr = ashr i64 %2, 6, !dbg !3918
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3916
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3916
  %and1 = and i64 %shl, %3, !dbg !3919
  %cmp = icmp ne i64 %and1, 0, !dbg !3920
  ret i1 %cmp, !dbg !3921
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !3922 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3924, metadata !DIExpression()), !dbg !3927
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3925, metadata !DIExpression()), !dbg !3928
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !3929
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3926, metadata !DIExpression()), !dbg !3930
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3931
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3932
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !3933, !srcloc !3934
  %3 = icmp ult i8 %2, 2, !dbg !3933
  call void @llvm.assume(i1 %3), !dbg !3933
  store i8 %2, ptr %oldbit, align 1, !dbg !3933
  %4 = load i8, ptr %oldbit, align 1, !dbg !3935, !range !1429, !noundef !310
  %tobool = trunc i8 %4 to i1, !dbg !3935
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !3936
  ret i1 %tobool, !dbg !3937
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @radix_tree_shrink(ptr noundef %root) #4 align 16 !dbg !3938 {
entry:
  %root.addr = alloca ptr, align 8
  %shrunk = alloca i8, align 1
  %node = alloca ptr, align 8
  %__UNIQUE_ID_rcu218 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %child = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu220 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3942, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 1, ptr %shrunk) #13, !dbg !3959
  call void @llvm.dbg.declare(metadata ptr %shrunk, metadata !3943, metadata !DIExpression()), !dbg !3960
  store i8 0, ptr %shrunk, align 1, !dbg !3960
  br label %for.cond, !dbg !3961

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !3962
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3944, metadata !DIExpression()), !dbg !3963
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu218) #13, !dbg !3964
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu218, metadata !3948, metadata !DIExpression()), !dbg !3964
  br label %do.body, !dbg !3965

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !3967

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3967

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3965
  %xa_head = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2, !dbg !3965
  %1 = load volatile ptr, ptr %xa_head, align 8, !dbg !3965
  store ptr %1, ptr %tmp, align 8, !dbg !3967
  %2 = load ptr, ptr %tmp, align 8, !dbg !3965
  store ptr %2, ptr %__UNIQUE_ID_rcu218, align 8, !dbg !3964
  %3 = load ptr, ptr %__UNIQUE_ID_rcu218, align 8, !dbg !3964
  store ptr %3, ptr %tmp1, align 8, !dbg !3964
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu218) #13, !dbg !3969
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3964
  store ptr %4, ptr %node, align 8, !dbg !3963
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3950, metadata !DIExpression()), !dbg !3971
  %5 = load ptr, ptr %node, align 8, !dbg !3972
  %call = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %5) #14, !dbg !3974
  br i1 %call, label %if.end, label %if.then, !dbg !3975

if.then:                                          ; preds = %do.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3976

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr %node, align 8, !dbg !3977
  %call2 = call ptr @entry_to_node(ptr noundef %6) #14, !dbg !3978
  store ptr %call2, ptr %node, align 8, !dbg !3979
  %7 = load ptr, ptr %node, align 8, !dbg !3980
  %count = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 2, !dbg !3982
  %8 = load i8, ptr %count, align 2, !dbg !3982
  %conv = zext i8 %8 to i32, !dbg !3980
  %cmp = icmp ne i32 %conv, 1, !dbg !3983
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3984

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3985

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu220) #13, !dbg !3986
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu220, metadata !3951, metadata !DIExpression()), !dbg !3986
  br label %do.body6, !dbg !3987

do.body6:                                         ; preds = %if.end5
  br label %do.cond7, !dbg !3989

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3989

do.end8:                                          ; preds = %do.cond7
  %9 = load ptr, ptr %node, align 8, !dbg !3987
  %slots = getelementptr inbounds %struct.xa_node, ptr %9, i32 0, i32 7, !dbg !3987
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 0, !dbg !3987
  %10 = load volatile ptr, ptr %arrayidx, align 8, !dbg !3987
  store ptr %10, ptr %tmp9, align 8, !dbg !3989
  %11 = load ptr, ptr %tmp9, align 8, !dbg !3987
  store ptr %11, ptr %__UNIQUE_ID_rcu220, align 8, !dbg !3986
  %12 = load ptr, ptr %__UNIQUE_ID_rcu220, align 8, !dbg !3986
  store ptr %12, ptr %tmp10, align 8, !dbg !3986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu220) #13, !dbg !3991
  %13 = load ptr, ptr %tmp10, align 8, !dbg !3986
  store ptr %13, ptr %child, align 8, !dbg !3992
  %14 = load ptr, ptr %child, align 8, !dbg !3993
  %tobool = icmp ne ptr %14, null, !dbg !3993
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !3995

if.then11:                                        ; preds = %do.end8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3996

if.end12:                                         ; preds = %do.end8
  %15 = load ptr, ptr %node, align 8, !dbg !3997
  %shift = getelementptr inbounds %struct.xa_node, ptr %15, i32 0, i32 0, !dbg !3999
  %16 = load i8, ptr %shift, align 8, !dbg !3999
  %tobool13 = icmp ne i8 %16, 0, !dbg !3997
  br i1 %tobool13, label %if.end17, label %land.lhs.true, !dbg !4000

land.lhs.true:                                    ; preds = %if.end12
  %17 = load ptr, ptr %root.addr, align 8, !dbg !4001
  %call14 = call zeroext i1 @is_idr(ptr noundef %17) #14, !dbg !4002
  br i1 %call14, label %if.then16, label %if.end17, !dbg !4003

if.then16:                                        ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4004

if.end17:                                         ; preds = %land.lhs.true, %if.end12
  %18 = load ptr, ptr %child, align 8, !dbg !4005
  %call18 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %18) #14, !dbg !4007
  br i1 %call18, label %if.then19, label %if.end21, !dbg !4008

if.then19:                                        ; preds = %if.end17
  %19 = load ptr, ptr %child, align 8, !dbg !4009
  %call20 = call ptr @entry_to_node(ptr noundef %19) #14, !dbg !4010
  %parent = getelementptr inbounds %struct.xa_node, ptr %call20, i32 0, i32 4, !dbg !4011
  store ptr null, ptr %parent, align 8, !dbg !4012
  br label %if.end21, !dbg !4010

if.end21:                                         ; preds = %if.then19, %if.end17
  %20 = load ptr, ptr %child, align 8, !dbg !4013
  %21 = load ptr, ptr %root.addr, align 8, !dbg !4014
  %xa_head22 = getelementptr inbounds %struct.xarray, ptr %21, i32 0, i32 2, !dbg !4015
  store ptr %20, ptr %xa_head22, align 8, !dbg !4016
  %22 = load ptr, ptr %root.addr, align 8, !dbg !4017
  %call23 = call zeroext i1 @is_idr(ptr noundef %22) #14, !dbg !4019
  br i1 %call23, label %land.lhs.true25, label %if.end29, !dbg !4020

land.lhs.true25:                                  ; preds = %if.end21
  %23 = load ptr, ptr %node, align 8, !dbg !4021
  %call26 = call i32 @tag_get(ptr noundef %23, i32 noundef 0, i32 noundef 0) #14, !dbg !4022
  %tobool27 = icmp ne i32 %call26, 0, !dbg !4022
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4023

if.then28:                                        ; preds = %land.lhs.true25
  %24 = load ptr, ptr %root.addr, align 8, !dbg !4024
  call void @root_tag_clear(ptr noundef %24, i32 noundef 0) #14, !dbg !4025
  br label %if.end29, !dbg !4025

if.end29:                                         ; preds = %if.then28, %land.lhs.true25, %if.end21
  %25 = load ptr, ptr %node, align 8, !dbg !4026
  %count30 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 2, !dbg !4027
  store i8 0, ptr %count30, align 2, !dbg !4028
  %26 = load ptr, ptr %child, align 8, !dbg !4029
  %call31 = call zeroext i1 @radix_tree_is_internal_node(ptr noundef %26) #14, !dbg !4031
  br i1 %call31, label %if.end36, label %if.then32, !dbg !4032

if.then32:                                        ; preds = %if.end29
  %call33 = call ptr @xa_mk_internal(i64 noundef 256) #14, !dbg !4033
  %27 = load ptr, ptr %node, align 8, !dbg !4035
  %slots34 = getelementptr inbounds %struct.xa_node, ptr %27, i32 0, i32 7, !dbg !4036
  %arrayidx35 = getelementptr [64 x ptr], ptr %slots34, i64 0, i64 0, !dbg !4035
  store ptr %call33, ptr %arrayidx35, align 8, !dbg !4037
  br label %if.end36, !dbg !4038

if.end36:                                         ; preds = %if.then32, %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3953, metadata !DIExpression()), !dbg !4039
  %28 = load ptr, ptr %node, align 8, !dbg !4039
  %29 = getelementptr inbounds %struct.xa_node, ptr %28, i32 0, i32 6, !dbg !4039
  %call37 = call i32 @list_empty(ptr noundef %29) #14, !dbg !4039
  %tobool38 = icmp ne i32 %call37, 0, !dbg !4039
  %lnot = xor i1 %tobool38, true, !dbg !4039
  %lnot39 = xor i1 %lnot, true, !dbg !4039
  %lnot40 = xor i1 %lnot39, true, !dbg !4039
  %lnot.ext = zext i1 %lnot40 to i32, !dbg !4039
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4039
  %30 = load i32, ptr %__ret_warn_on, align 4, !dbg !4040
  %tobool41 = icmp ne i32 %30, 0, !dbg !4040
  %lnot42 = xor i1 %tobool41, true, !dbg !4040
  %lnot44 = xor i1 %lnot42, true, !dbg !4040
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !4040
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !4040
  %expval = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !4040
  %tobool47 = icmp ne i64 %expval, 0, !dbg !4040
  br i1 %tobool47, label %if.then48, label %if.end61, !dbg !4039

if.then48:                                        ; preds = %if.end36
  br label %do.body49, !dbg !4040

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4041
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3955, metadata !DIExpression()), !dbg !4041
  store i32 2307, ptr %__flags, align 4, !dbg !4041
  br label %do.body50, !dbg !4041

do.body50:                                        ; preds = %do.body49
  br label %do.cond51, !dbg !4042

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !4042

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !4041

do.body53:                                        ; preds = %do.end52
  %31 = load i32, ptr %__flags, align 4, !dbg !4044
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 535, i32 %31, i64 12) #13, !dbg !4044, !srcloc !4046
  br label %do.cond54, !dbg !4044

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !4044

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !4041

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !4047

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !4047

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4040
  br label %do.cond59, !dbg !4041

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !4041

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !4041

if.end61:                                         ; preds = %do.end60, %if.end36
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !4039
  %tobool63 = icmp ne i32 %32, 0, !dbg !4039
  %lnot64 = xor i1 %tobool63, true, !dbg !4039
  %lnot66 = xor i1 %lnot64, true, !dbg !4039
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !4039
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !4039
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !4039
  store i64 %expval69, ptr %tmp62, align 8, !dbg !4040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4049
  %33 = load i64, ptr %tmp62, align 8, !dbg !4039
  %34 = load ptr, ptr %node, align 8, !dbg !4050
  call void @radix_tree_node_free(ptr noundef %34) #14, !dbg !4051
  store i8 1, ptr %shrunk, align 1, !dbg !4052
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4053
  br label %cleanup, !dbg !4053

cleanup:                                          ; preds = %if.end61, %if.then16, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !4053
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !4053
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4054, !llvm.loop !4055

for.end:                                          ; preds = %cleanup
  %35 = load i8, ptr %shrunk, align 1, !dbg !4058, !range !1429, !noundef !310
  %tobool71 = trunc i8 %35 to i1, !dbg !4058
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %shrunk) #13, !dbg !4059
  ret i1 %tobool71, !dbg !4060

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @root_tag_clear_all(ptr noundef %root) #4 align 16 !dbg !4061 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4065, metadata !DIExpression()), !dbg !4066
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4067
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1, !dbg !4068
  %1 = load i32, ptr %xa_flags, align 4, !dbg !4069
  %and = and i32 %1, 67108863, !dbg !4069
  store i32 %and, ptr %xa_flags, align 4, !dbg !4069
  ret void, !dbg !4070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !4071 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4077, metadata !DIExpression()), !dbg !4078
  br label %do.body, !dbg !4079

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4081

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4079
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4079
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4079
  store ptr %1, ptr %tmp, align 8, !dbg !4081
  %2 = load ptr, ptr %tmp, align 8, !dbg !4079
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4083
  %cmp = icmp eq ptr %2, %3, !dbg !4084
  %conv = zext i1 %cmp to i32, !dbg !4084
  ret i32 %conv, !dbg !4085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @radix_tree_node_free(ptr noundef %node) #4 align 16 !dbg !4086 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4090
  %1 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 6, !dbg !4091
  call void @call_rcu(ptr noundef %1, ptr noundef @radix_tree_node_rcu_free) #14, !dbg !4092
  ret void, !dbg !4093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @root_tag_clear(ptr noundef %root, i32 noundef %tag) #4 align 16 !dbg !4094 {
entry:
  %root.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4096, metadata !DIExpression()), !dbg !4098
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !4097, metadata !DIExpression()), !dbg !4099
  %0 = load i32, ptr %tag.addr, align 4, !dbg !4100
  %add = add i32 %0, 26, !dbg !4101
  %shl = shl i32 1, %add, !dbg !4102
  %not = xor i32 %shl, -1, !dbg !4103
  %1 = load ptr, ptr %root.addr, align 8, !dbg !4104
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 1, !dbg !4105
  %2 = load i32, ptr %xa_flags, align 4, !dbg !4106
  %and = and i32 %2, %not, !dbg !4106
  store i32 %and, ptr %xa_flags, align 4, !dbg !4106
  ret void, !dbg !4107
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4108 dso_local void @call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4113 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4118, metadata !DIExpression()), !dbg !4122
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4119, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !4124
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4120, metadata !DIExpression()), !dbg !4125
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4126
  %rem = urem i64 %0, 64, !dbg !4126
  %shl = shl i64 1, %rem, !dbg !4126
  store i64 %shl, ptr %mask, align 8, !dbg !4125
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !4127
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4121, metadata !DIExpression()), !dbg !4128
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4129
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4130
  %div = udiv i64 %2, 64, !dbg !4130
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4131
  store ptr %add.ptr, ptr %p, align 8, !dbg !4128
  %3 = load i64, ptr %mask, align 8, !dbg !4132
  %4 = load ptr, ptr %p, align 8, !dbg !4133
  %5 = load i64, ptr %4, align 8, !dbg !4134
  %or = or i64 %5, %3, !dbg !4134
  store i64 %or, ptr %4, align 8, !dbg !4134
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !4135
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !4135
  ret void, !dbg !4135
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4136 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4138, metadata !DIExpression()), !dbg !4140
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4139, metadata !DIExpression()), !dbg !4141
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4142
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4143
  %div = udiv i64 %1, 64, !dbg !4143
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4144
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4145
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4146
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4147
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4148
  ret void, !dbg !4149
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !4150 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4152, metadata !DIExpression()), !dbg !4154
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4153, metadata !DIExpression()), !dbg !4155
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4156
  %1 = load i64, ptr %size.addr, align 8, !dbg !4157
  %conv = trunc i64 %1 to i32, !dbg !4157
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4158
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4159
  %3 = load i64, ptr %size.addr, align 8, !dbg !4159
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #14, !dbg !4159
  ret void, !dbg !4160
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4161 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4163, metadata !DIExpression()), !dbg !4165
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4164, metadata !DIExpression()), !dbg !4166
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4167
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4168
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !4169, !srcloc !4170
  ret void, !dbg !4171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4172 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4174, metadata !DIExpression()), !dbg !4176
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4175, metadata !DIExpression()), !dbg !4177
  ret i1 true, !dbg !4178
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tag_clear(ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #4 align 16 !dbg !4179 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4181, metadata !DIExpression()), !dbg !4184
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !4182, metadata !DIExpression()), !dbg !4185
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4183, metadata !DIExpression()), !dbg !4186
  %0 = load i32, ptr %offset.addr, align 4, !dbg !4187
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4187
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4187

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !4187
  %3 = getelementptr inbounds %struct.xa_node, ptr %2, i32 0, i32 8, !dbg !4187
  %4 = load i32, ptr %tag.addr, align 4, !dbg !4187
  %idxprom = zext i32 %4 to i64, !dbg !4187
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %3, i64 0, i64 %idxprom, !dbg !4187
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !4187
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !4187
  %cmp = icmp ne i64 %5, 0, !dbg !4187
  %conv = zext i1 %cmp to i32, !dbg !4187
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4187
  br i1 %6, label %land.lhs.true1, label %cond.false, !dbg !4187

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %node.addr, align 8, !dbg !4187
  %8 = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 8, !dbg !4187
  %9 = load i32, ptr %tag.addr, align 4, !dbg !4187
  %idxprom2 = zext i32 %9 to i64, !dbg !4187
  %arrayidx3 = getelementptr [3 x [1 x i64]], ptr %8, i64 0, i64 %idxprom2, !dbg !4187
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %arrayidx3, i64 0, i64 0, !dbg !4187
  %10 = ptrtoint ptr %arraydecay4 to i64, !dbg !4187
  %cmp5 = icmp ne i64 %10, 0, !dbg !4187
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !4187

land.lhs.true7:                                   ; preds = %land.lhs.true1
  %11 = load ptr, ptr %node.addr, align 8, !dbg !4187
  %12 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 8, !dbg !4187
  %13 = load i32, ptr %tag.addr, align 4, !dbg !4187
  %idxprom8 = zext i32 %13 to i64, !dbg !4187
  %arrayidx9 = getelementptr [3 x [1 x i64]], ptr %12, i64 0, i64 %idxprom8, !dbg !4187
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %arrayidx9, i64 0, i64 0, !dbg !4187
  %14 = load i64, ptr %arraydecay10, align 8, !dbg !4187
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !4187
  br i1 %15, label %cond.true, label %cond.false, !dbg !4187

cond.true:                                        ; preds = %land.lhs.true7
  %16 = load i32, ptr %offset.addr, align 4, !dbg !4187
  %conv11 = sext i32 %16 to i64, !dbg !4187
  %17 = load ptr, ptr %node.addr, align 8, !dbg !4187
  %18 = getelementptr inbounds %struct.xa_node, ptr %17, i32 0, i32 8, !dbg !4187
  %19 = load i32, ptr %tag.addr, align 4, !dbg !4187
  %idxprom12 = zext i32 %19 to i64, !dbg !4187
  %arrayidx13 = getelementptr [3 x [1 x i64]], ptr %18, i64 0, i64 %idxprom12, !dbg !4187
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %arrayidx13, i64 0, i64 0, !dbg !4187
  call void @generic___clear_bit(i64 noundef %conv11, ptr noundef %arraydecay14) #14, !dbg !4187
  br label %cond.end, !dbg !4187

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true1, %land.lhs.true, %entry
  %20 = load i32, ptr %offset.addr, align 4, !dbg !4187
  %conv15 = sext i32 %20 to i64, !dbg !4187
  %21 = load ptr, ptr %node.addr, align 8, !dbg !4187
  %22 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 8, !dbg !4187
  %23 = load i32, ptr %tag.addr, align 4, !dbg !4187
  %idxprom16 = zext i32 %23 to i64, !dbg !4187
  %arrayidx17 = getelementptr [3 x [1 x i64]], ptr %22, i64 0, i64 %idxprom16, !dbg !4187
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %arrayidx17, i64 0, i64 0, !dbg !4187
  call void @___clear_bit(i64 noundef %conv15, ptr noundef %arraydecay18) #14, !dbg !4187
  br label %cond.end, !dbg !4187

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !4188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @any_tag_set(ptr noundef %node, i32 noundef %tag) #4 align 16 !dbg !4189 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4193, metadata !DIExpression()), !dbg !4196
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !4194, metadata !DIExpression()), !dbg !4197
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #13, !dbg !4198
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !4195, metadata !DIExpression()), !dbg !4199
  store i32 0, ptr %idx, align 4, !dbg !4200
  br label %for.cond, !dbg !4202

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !4203
  %conv = zext i32 %0 to i64, !dbg !4203
  %cmp = icmp ult i64 %conv, 1, !dbg !4205
  br i1 %cmp, label %for.body, label %for.end, !dbg !4206

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %node.addr, align 8, !dbg !4207
  %2 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 8, !dbg !4210
  %3 = load i32, ptr %tag.addr, align 4, !dbg !4211
  %idxprom = zext i32 %3 to i64, !dbg !4207
  %arrayidx = getelementptr [3 x [1 x i64]], ptr %2, i64 0, i64 %idxprom, !dbg !4207
  %4 = load i32, ptr %idx, align 4, !dbg !4212
  %idxprom2 = zext i32 %4 to i64, !dbg !4207
  %arrayidx3 = getelementptr [1 x i64], ptr %arrayidx, i64 0, i64 %idxprom2, !dbg !4207
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !4207
  %tobool = icmp ne i64 %5, 0, !dbg !4207
  br i1 %tobool, label %if.then, label %if.end, !dbg !4213

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !4214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4214

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4215

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %idx, align 4, !dbg !4216
  %inc = add i32 %6, 1, !dbg !4216
  store i32 %inc, ptr %idx, align 4, !dbg !4216
  br label %for.cond, !dbg !4217, !llvm.loop !4218

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4220

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #13, !dbg !4221
  %7 = load i32, ptr %retval, align 4, !dbg !4221
  ret i32 %7, !dbg !4221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4222 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4224, metadata !DIExpression()), !dbg !4228
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4225, metadata !DIExpression()), !dbg !4229
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !4230
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4226, metadata !DIExpression()), !dbg !4231
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4232
  %rem = urem i64 %0, 64, !dbg !4232
  %shl = shl i64 1, %rem, !dbg !4232
  store i64 %shl, ptr %mask, align 8, !dbg !4231
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !4233
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4227, metadata !DIExpression()), !dbg !4234
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4235
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4236
  %div = udiv i64 %2, 64, !dbg !4236
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4237
  store ptr %add.ptr, ptr %p, align 8, !dbg !4234
  %3 = load i64, ptr %mask, align 8, !dbg !4238
  %not = xor i64 %3, -1, !dbg !4239
  %4 = load ptr, ptr %p, align 8, !dbg !4240
  %5 = load i64, ptr %4, align 8, !dbg !4241
  %and = and i64 %5, %not, !dbg !4241
  store i64 %and, ptr %4, align 8, !dbg !4241
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !4242
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !4242
  ret void, !dbg !4242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4243 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4245, metadata !DIExpression()), !dbg !4247
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4246, metadata !DIExpression()), !dbg !4248
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4249
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4250
  %div = udiv i64 %1, 64, !dbg !4250
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4251
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4252
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4253
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4254
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4255
  ret void, !dbg !4256
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4257 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4259, metadata !DIExpression()), !dbg !4261
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4260, metadata !DIExpression()), !dbg !4262
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4263
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4264
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !4265, !srcloc !4266
  ret void, !dbg !4267
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !4268 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  %0 = load i64, ptr %word.addr, align 8, !dbg !4274
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !4275, !srcloc !4276
  store i64 %1, ptr %word.addr, align 8, !dbg !4275
  %2 = load i64, ptr %word.addr, align 8, !dbg !4277
  ret i64 %2, !dbg !4278
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @shift_maxindex(i32 noundef %shift) #4 align 16 !dbg !4279 {
entry:
  %shift.addr = alloca i32, align 4
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load i32, ptr %shift.addr, align 4, !dbg !4285
  %sh_prom = zext i32 %0 to i64, !dbg !4286
  %shl = shl i64 64, %sh_prom, !dbg !4286
  %sub = sub i64 %shl, 1, !dbg !4287
  ret i64 %sub, !dbg !4288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @radix_tree_chunk_size(ptr noundef %iter) #7 align 16 !dbg !4289 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !4295
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 1, !dbg !4296
  %1 = load i64, ptr %next_index, align 8, !dbg !4296
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !4297
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 0, !dbg !4298
  %3 = load i64, ptr %index, align 8, !dbg !4298
  %sub = sub i64 %1, %3, !dbg !4299
  ret i64 %sub, !dbg !4300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_tag_set(ptr noundef %root, ptr noundef %node, i32 noundef %tag, i32 noundef %offset) #0 align 16 !dbg !4301 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4303, metadata !DIExpression()), !dbg !4307
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4304, metadata !DIExpression()), !dbg !4308
  store i32 %tag, ptr %tag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !4305, metadata !DIExpression()), !dbg !4309
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4306, metadata !DIExpression()), !dbg !4310
  br label %while.cond, !dbg !4311

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %node.addr, align 8, !dbg !4312
  %tobool = icmp ne ptr %0, null, !dbg !4311
  br i1 %tobool, label %while.body, label %while.end, !dbg !4311

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %node.addr, align 8, !dbg !4313
  %2 = load i32, ptr %tag.addr, align 4, !dbg !4316
  %3 = load i32, ptr %offset.addr, align 4, !dbg !4317
  %call = call i32 @tag_get(ptr noundef %1, i32 noundef %2, i32 noundef %3) #14, !dbg !4318
  %tobool1 = icmp ne i32 %call, 0, !dbg !4318
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4319

if.then:                                          ; preds = %while.body
  br label %if.end6, !dbg !4320

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %node.addr, align 8, !dbg !4321
  %5 = load i32, ptr %tag.addr, align 4, !dbg !4322
  %6 = load i32, ptr %offset.addr, align 4, !dbg !4323
  call void @tag_set(ptr noundef %4, i32 noundef %5, i32 noundef %6) #14, !dbg !4324
  %7 = load ptr, ptr %node.addr, align 8, !dbg !4325
  %offset2 = getelementptr inbounds %struct.xa_node, ptr %7, i32 0, i32 1, !dbg !4326
  %8 = load i8, ptr %offset2, align 1, !dbg !4326
  %conv = zext i8 %8 to i32, !dbg !4325
  store i32 %conv, ptr %offset.addr, align 4, !dbg !4327
  %9 = load ptr, ptr %node.addr, align 8, !dbg !4328
  %parent = getelementptr inbounds %struct.xa_node, ptr %9, i32 0, i32 4, !dbg !4329
  %10 = load ptr, ptr %parent, align 8, !dbg !4329
  store ptr %10, ptr %node.addr, align 8, !dbg !4330
  br label %while.cond, !dbg !4311, !llvm.loop !4331

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %root.addr, align 8, !dbg !4333
  %12 = load i32, ptr %tag.addr, align 4, !dbg !4335
  %call3 = call i32 @root_tag_get(ptr noundef %11, i32 noundef %12) #14, !dbg !4336
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4336
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4337

if.then5:                                         ; preds = %while.end
  %13 = load ptr, ptr %root.addr, align 8, !dbg !4338
  %14 = load i32, ptr %tag.addr, align 4, !dbg !4339
  call void @root_tag_set(ptr noundef %13, i32 noundef %14) #14, !dbg !4340
  br label %if.end6, !dbg !4340

if.end6:                                          ; preds = %if.then, %if.then5, %while.end
  ret void, !dbg !4341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #7 align 16 !dbg !4342 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !4348
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4346, metadata !DIExpression()), !dbg !4348
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !4348, !srcloc !4349
  store i32 %0, ptr %pfo_val__, align 4, !dbg !4348
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !4348
  %conv = zext i32 %1 to i64, !dbg !4348
  %conv1 = trunc i64 %conv to i32, !dbg !4348
  store i32 %conv1, ptr %tmp, align 4, !dbg !4348
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !4350
  %2 = load i32, ptr %tmp, align 4, !dbg !4348
  %and = and i32 %2, 2147483647, !dbg !4351
  ret i32 %and, !dbg !4352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_update_trace(ptr noundef %ptr) #4 align 16 !dbg !4353 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  ret void, !dbg !4360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_fill(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !4361 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4366, metadata !DIExpression()), !dbg !4369
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4367, metadata !DIExpression()), !dbg !4370
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !4371
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4368, metadata !DIExpression()), !dbg !4372
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4373
  %add = add i32 %0, 63, !dbg !4373
  %and = and i32 %add, -64, !dbg !4373
  %div = udiv i32 %and, 8, !dbg !4373
  store i32 %div, ptr %len, align 4, !dbg !4372
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !4374
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !4374
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !4374

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4374
  %cmp = icmp ule i32 %3, 64, !dbg !4374
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !4374

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !4374
  %cmp2 = icmp ugt i32 %4, 0, !dbg !4374
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4376

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !4377
  store i64 -1, ptr %5, align 8, !dbg !4378
  br label %if.end, !dbg !4379

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !4380
  %7 = load i32, ptr %len, align 4, !dbg !4381
  %conv = zext i32 %7 to i64, !dbg !4381
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 -1, i64 %conv, i1 false), !dbg !4382
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !4383
  ret void, !dbg !4383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_node(ptr noundef %entry1) #4 align 16 !dbg !4384 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4388
  %call = call zeroext i1 @xa_is_internal(ptr noundef %0) #14, !dbg !4389
  br i1 %call, label %land.rhs, label %land.end, !dbg !4390

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4391
  %2 = ptrtoint ptr %1 to i64, !dbg !4392
  %cmp = icmp ugt i64 %2, 4096, !dbg !4393
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !4394
  ret i1 %3, !dbg !4395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_internal(ptr noundef %entry1) #4 align 16 !dbg !4396 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4400
  %1 = ptrtoint ptr %0 to i64, !dbg !4401
  %and = and i64 %1, 3, !dbg !4402
  %cmp = icmp eq i64 %and, 2, !dbg !4403
  ret i1 %cmp, !dbg !4404
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4405 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!444}
!llvm.module.flags = !{!445, !446, !447, !448, !449, !450, !451, !452}
!llvm.ident = !{!453}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "radix_tree_preloads", scope: !2, file: !3, line: 62, type: !321, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.radix-tree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/radix-tree\22 -D KBUILD_BASENAME=\22radix_tree\22 -D KBUILD_MODNAME=\22radix_tree\22 -D __KBUILD_MODNAME=kmod_radix_tree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/radix-tree.ll lib/radix-tree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !212, globals: !336, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/radix-tree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83fdda7422a5e0bcbe68ca3bbe43f6d3")
!4 = !{!5, !12, !207}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 267, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/radix-tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a55640c109937c5661ba8dd70608ca58")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "RADIX_TREE_ITER_TAG_MASK", value: 15)
!10 = !DIEnumerator(name: "RADIX_TREE_ITER_TAGGED", value: 16)
!11 = !DIEnumerator(name: "RADIX_TREE_ITER_CONTIG", value: 32)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !13, line: 57, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!16 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!17 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!18 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!19 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!21 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!22 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!23 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!24 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!25 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!26 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!27 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!28 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!29 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!30 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!31 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!32 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!33 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!34 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!35 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!36 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!37 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!38 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!39 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!40 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!41 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!42 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!43 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!44 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!45 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!46 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!47 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!48 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!49 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!50 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!51 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!52 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!53 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!54 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!55 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!56 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!57 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!58 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!59 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!60 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!61 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!62 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!63 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!64 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!65 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!66 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!67 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!68 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!69 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!70 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!71 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!72 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!73 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!74 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!75 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!76 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!77 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!78 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!79 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!80 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!81 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!82 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!83 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!84 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!85 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!86 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!87 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!88 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!89 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!90 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!91 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!92 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!93 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!94 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!95 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!96 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!97 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!106 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!107 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!108 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!114 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!115 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!116 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!121 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!122 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!123 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!125 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!126 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!127 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!128 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!129 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!130 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!131 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!132 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!133 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!134 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!135 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!136 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!137 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!138 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!139 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!144 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!145 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!146 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!147 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!148 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!149 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!150 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!151 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!152 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!153 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!154 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!155 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!156 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!157 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!158 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!159 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!160 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!195 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!196 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!197 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!198 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!199 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!201 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!202 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!203 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!204 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!205 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!206 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 10, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!209 = !{!210, !211}
!210 = !DIEnumerator(name: "false", value: 0)
!211 = !DIEnumerator(name: "true", value: 1)
!212 = !{!213, !214, !306, !311, !312, !315, !316, !317, !318, !272, !320, !14, !326, !301, !328, !330, !7, !331, !333}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xa_node", file: !216, line: 1158, size: 4608, elements: !217)
!216 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!217 = !{!218, !220, !221, !222, !223, !224, !274, !292, !296}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !215, file: !216, line: 1159, baseType: !219, size: 8)
!219 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !215, file: !216, line: 1160, baseType: !219, size: 8, offset: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !215, file: !216, line: 1161, baseType: !219, size: 8, offset: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_values", scope: !215, file: !216, line: 1162, baseType: !219, size: 8, offset: 24)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !216, line: 1163, baseType: !214, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !215, file: !216, line: 1164, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !216, line: 296, size: 128, elements: !227)
!227 = !{!228, !271, !273}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !226, file: !216, line: 297, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 29, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 17, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 18, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 18, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 19, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !238, line: 14, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !238, line: 15, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !242, line: 44, baseType: !243)
!242 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !242, line: 14, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 15, baseType: !246, size: 32)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 15, size: 32, elements: !247)
!247 = !{!248, !254, !263}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !246, file: !242, line: 16, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !250, line: 174, baseType: !251)
!250 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 172, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !251, file: !250, line: 173, baseType: !14, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !242, line: 24, baseType: !255, size: 16)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !242, line: 24, size: 16, elements: !256)
!256 = !{!257, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !255, file: !242, line: 25, baseType: !258, size: 8)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !259, line: 17, baseType: !260)
!259 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !261, line: 21, baseType: !219)
!261 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !255, file: !242, line: 26, baseType: !258, size: 8, offset: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !242, line: 28, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !242, line: 28, size: 32, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !264, file: !242, line: 29, baseType: !267, size: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !259, line: 19, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !261, line: 24, baseType: !269)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !264, file: !242, line: 30, baseType: !267, size: 16, offset: 16)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !226, file: !216, line: 299, baseType: !272, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !250, line: 154, baseType: !7)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !226, file: !216, line: 300, baseType: !213, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !216, line: 1165, baseType: !275, size: 128, offset: 192)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 1165, size: 128, elements: !276)
!276 = !{!277, !283}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !275, file: !216, line: 1166, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !250, line: 190, size: 128, elements: !279)
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !250, line: 191, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !278, file: !250, line: 191, baseType: !281, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !275, file: !216, line: 1167, baseType: !284, size: 128, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !250, line: 232, size: 128, align: 64, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !250, line: 233, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !284, file: !250, line: 234, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !287}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !215, file: !216, line: 1169, baseType: !293, size: 4096, offset: 320)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4096, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !216, line: 1170, baseType: !297, size: 192, offset: 4416)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 1170, size: 192, elements: !298)
!298 = !{!299, !305}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !297, file: !216, line: 1171, baseType: !300, size: 192)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !302)
!301 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!302 = !{!303, !304}
!303 = !DISubrange(count: 3)
!304 = !DISubrange(count: 1)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !297, file: !216, line: 1172, baseType: !300, size: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_lock_t", file: !308, line: 16, baseType: !309)
!308 = !DIFile(filename: "./include/linux/local_lock_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "469d1891d91ec9e6d4681e7c853930ac")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 11, elements: !310)
!310 = !{}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !213)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !250, line: 42, baseType: !301)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !250, line: 155, baseType: !7)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !281)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radix_tree_preload", file: !6, line: 28, size: 128, elements: !322)
!322 = !{!323, !324, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !321, file: !6, line: 29, baseType: !307)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !321, file: !6, line: 30, baseType: !7, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !321, file: !6, line: 32, baseType: !214, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !259, line: 21, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !261, line: 27, baseType: !7)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !335)
!335 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!336 = !{!0, !337, !339, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !390, !395, !400}
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_preloads205", scope: !2, file: !3, line: 65, type: !213, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 136, elements: !343)
!342 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!343 = !{!344}
!344 = !DISubrange(count: 17)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_preload209", scope: !2, file: !3, line: 371, type: !213, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_maybe_preload210", scope: !2, file: !3, line: 386, type: !213, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_insert234", scope: !2, file: !3, line: 731, type: !213, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_lookup_slot235", scope: !2, file: !3, line: 803, type: !213, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_lookup236", scope: !2, file: !3, line: 821, type: !213, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_replace_slot242", scope: !2, file: !3, line: 919, type: !213, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_tag_set243", scope: !2, file: !3, line: 993, type: !213, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_tag_clear244", scope: !2, file: !3, line: 1052, type: !213, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_tag_get245", scope: !2, file: !3, line: 1108, type: !213, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_iter_resume246", scope: !2, file: !3, line: 1144, type: !213, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_next_chunk251", scope: !2, file: !3, line: 1239, type: !213, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_gang_lookup254", scope: !2, file: !3, line: 1286, type: !213, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag257", scope: !2, file: !3, line: 1327, type: !213, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_gang_lookup_tag_slot258", scope: !2, file: !3, line: 1362, type: !213, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_iter_delete261", scope: !2, file: !3, line: 1400, type: !213, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_delete_item262", scope: !2, file: !3, line: 1434, type: !213, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_delete263", scope: !2, file: !3, line: 1449, type: !213, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_radix_tree_tagged264", scope: !2, file: !3, line: 1460, type: !213, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_preload265", scope: !2, file: !3, line: 1474, type: !213, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_destroy279", scope: !2, file: !3, line: 1567, type: !213, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1601, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 128, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 16)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1605, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 120, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 15)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "radix_tree_node_cachep", scope: !2, file: !3, line: 35, type: !397, isLocal: false, isDefinition: true)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !399, line: 11, flags: DIFlagFwdDecl)
!399 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule208", scope: !402, file: !3, line: 337, type: !213, isLocal: true, isDefinition: true)
!402 = distinct !DISubprogram(name: "__radix_tree_preload", scope: !3, file: !3, line: 322, type: !403, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!14, !272, !7}
!405 = !{!406, !407, !408, !409, !410, !411, !417, !419, !422, !424, !429, !431, !436, !438, !441, !443}
!406 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !402, file: !3, line: 322, type: !272)
!407 = !DILocalVariable(name: "nr", arg: 2, scope: !402, file: !3, line: 322, type: !7)
!408 = !DILocalVariable(name: "rtp", scope: !402, file: !3, line: 324, type: !320)
!409 = !DILocalVariable(name: "node", scope: !402, file: !3, line: 325, type: !214)
!410 = !DILocalVariable(name: "ret", scope: !402, file: !3, line: 326, type: !14)
!411 = !DILocalVariable(name: "__vpp_verify", scope: !412, file: !3, line: 334, type: !415)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 334, column: 2)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 334, column: 2)
!414 = distinct !DILexicalBlock(scope: !402, file: !3, line: 334, column: 2)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!417 = !DILocalVariable(name: "tcp_ptr__", scope: !418, file: !3, line: 334, type: !301)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 334, column: 2)
!419 = !DILocalVariable(name: "__vpp_verify", scope: !420, file: !3, line: 335, type: !415)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 335, column: 8)
!421 = distinct !DILexicalBlock(scope: !402, file: !3, line: 335, column: 8)
!422 = !DILocalVariable(name: "tcp_ptr__", scope: !423, file: !3, line: 335, type: !301)
!423 = distinct !DILexicalBlock(scope: !421, file: !3, line: 335, column: 8)
!424 = !DILocalVariable(name: "__vpp_verify", scope: !425, file: !3, line: 337, type: !415)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 337, column: 3)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 337, column: 3)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 337, column: 3)
!428 = distinct !DILexicalBlock(scope: !402, file: !3, line: 336, column: 23)
!429 = !DILocalVariable(name: "tcp_ptr__", scope: !430, file: !3, line: 337, type: !301)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 337, column: 3)
!431 = !DILocalVariable(name: "__vpp_verify", scope: !432, file: !3, line: 341, type: !415)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 341, column: 3)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 341, column: 3)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 341, column: 3)
!435 = !DILexicalBlockFile(scope: !428, file: !3, discriminator: 0)
!436 = !DILocalVariable(name: "tcp_ptr__", scope: !437, file: !3, line: 341, type: !301)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 341, column: 3)
!438 = !DILocalVariable(name: "__vpp_verify", scope: !439, file: !3, line: 342, type: !415)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 342, column: 9)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 342, column: 9)
!441 = !DILocalVariable(name: "tcp_ptr__", scope: !442, file: !3, line: 342, type: !301)
!442 = distinct !DILexicalBlock(scope: !440, file: !3, line: 342, column: 9)
!443 = !DILabel(scope: !402, name: "out", file: !3, line: 352)
!444 = !{!"rsp"}
!445 = !{i32 7, !"Dwarf Version", i32 5}
!446 = !{i32 2, !"Debug Info Version", i32 3}
!447 = !{i32 1, !"wchar_size", i32 2}
!448 = !{i32 8, !"cf-protection-branch", i32 1}
!449 = !{i32 4, !"function_return_thunk_extern", i32 1}
!450 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!451 = !{i32 1, !"Code Model", i32 2}
!452 = !{i32 1, !"override-stack-alignment", i32 8}
!453 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!454 = distinct !DISubprogram(name: "radix_tree_node_rcu_free", scope: !3, file: !3, line: 290, type: !290, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!455 = !{!456, !457, !458}
!456 = !DILocalVariable(name: "head", arg: 1, scope: !454, file: !3, line: 290, type: !287)
!457 = !DILocalVariable(name: "node", scope: !454, file: !3, line: 292, type: !214)
!458 = !DILocalVariable(name: "__mptr", scope: !459, file: !3, line: 293, type: !213)
!459 = distinct !DILexicalBlock(scope: !454, file: !3, line: 293, column: 4)
!460 = !DILocation(line: 290, column: 48, scope: !454)
!461 = !DILocation(line: 292, column: 2, scope: !454)
!462 = !DILocation(line: 292, column: 26, scope: !454)
!463 = !DILocation(line: 293, column: 4, scope: !459)
!464 = !DILocation(line: 293, column: 4, scope: !454)
!465 = !DILocation(line: 300, column: 9, scope: !454)
!466 = !DILocation(line: 300, column: 15, scope: !454)
!467 = !DILocation(line: 300, column: 2, scope: !454)
!468 = !DILocation(line: 301, column: 9, scope: !454)
!469 = !DILocation(line: 301, column: 15, scope: !454)
!470 = !DILocation(line: 301, column: 2, scope: !454)
!471 = !DILocation(line: 302, column: 18, scope: !454)
!472 = !DILocation(line: 302, column: 24, scope: !454)
!473 = !DILocation(line: 302, column: 2, scope: !454)
!474 = !DILocation(line: 304, column: 18, scope: !454)
!475 = !DILocation(line: 304, column: 42, scope: !454)
!476 = !DILocation(line: 304, column: 2, scope: !454)
!477 = !DILocation(line: 305, column: 1, scope: !454)
!478 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !479, file: !479, line: 35, type: !480, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!479 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!480 = !DISubroutineType(types: !481)
!481 = !{null, !281}
!482 = !{!483}
!483 = !DILocalVariable(name: "list", arg: 1, scope: !478, file: !479, line: 35, type: !281)
!484 = !DILocation(line: 35, column: 53, scope: !478)
!485 = !DILocation(line: 37, column: 2, scope: !478)
!486 = !DILocation(line: 37, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !478, file: !479, line: 37, column: 2)
!488 = !DILocation(line: 37, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !479, line: 37, column: 2)
!490 = !DILocation(line: 37, column: 2, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !479, line: 37, column: 2)
!492 = !DILocation(line: 38, column: 2, scope: !478)
!493 = !DILocation(line: 38, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !478, file: !479, line: 38, column: 2)
!495 = !DILocation(line: 38, column: 2, scope: !496)
!496 = distinct !DILexicalBlock(scope: !494, file: !479, line: 38, column: 2)
!497 = !DILocation(line: 38, column: 2, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !479, line: 38, column: 2)
!499 = !DILocation(line: 39, column: 1, scope: !478)
!500 = !DISubprogram(name: "kmem_cache_free", scope: !501, file: !501, line: 503, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!502 = !DISubroutineType(types: !503)
!503 = !{null, !397, !213}
!504 = distinct !DISubprogram(name: "radix_tree_preload", scope: !3, file: !3, line: 365, type: !505, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!14, !272}
!507 = !{!508, !509, !511}
!508 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !504, file: !3, line: 365, type: !272)
!509 = !DILocalVariable(name: "__ret_warn_on", scope: !510, file: !3, line: 368, type: !14)
!510 = distinct !DILexicalBlock(scope: !504, file: !3, line: 368, column: 2)
!511 = !DILocalVariable(name: "__flags", scope: !512, file: !3, line: 368, type: !14)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 368, column: 2)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 368, column: 2)
!514 = !DILocation(line: 365, column: 30, scope: !504)
!515 = !DILocation(line: 368, column: 2, scope: !510)
!516 = !DILocation(line: 368, column: 2, scope: !513)
!517 = !DILocation(line: 368, column: 2, scope: !512)
!518 = !DILocation(line: 368, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !512, file: !3, line: 368, column: 2)
!520 = !DILocation(line: 368, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !512, file: !3, line: 368, column: 2)
!522 = !{i64 2152793193, i64 2152793222, i64 2152793268, i64 2152793326, i64 2152793380, i64 2152793434, i64 2152793489, i64 2152793520, i64 2152793828, i64 2152793834, i64 2152793881, i64 2152793904, i64 2152793930}
!523 = !DILocation(line: 368, column: 2, scope: !524)
!524 = distinct !DILexicalBlock(scope: !512, file: !3, line: 368, column: 2)
!525 = !DILocation(line: 368, column: 2, scope: !504)
!526 = !DILocation(line: 369, column: 30, scope: !504)
!527 = !DILocation(line: 369, column: 9, scope: !504)
!528 = !DILocation(line: 369, column: 2, scope: !504)
!529 = distinct !DISubprogram(name: "gfpflags_allow_blocking", scope: !530, file: !530, line: 34, type: !531, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!530 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !535}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !250, line: 35, baseType: !534)
!534 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!536 = !{!537}
!537 = !DILocalVariable(name: "gfp_flags", arg: 1, scope: !529, file: !530, line: 34, type: !535)
!538 = !DILocation(line: 34, column: 56, scope: !529)
!539 = !DILocation(line: 36, column: 12, scope: !529)
!540 = !DILocation(line: 36, column: 22, scope: !529)
!541 = !DILocation(line: 36, column: 10, scope: !529)
!542 = !DILocation(line: 36, column: 9, scope: !529)
!543 = !DILocation(line: 36, column: 2, scope: !529)
!544 = !DILocation(line: 322, column: 52, scope: !402)
!545 = !DILocation(line: 322, column: 71, scope: !402)
!546 = !DILocation(line: 324, column: 2, scope: !402)
!547 = !DILocation(line: 324, column: 29, scope: !402)
!548 = !DILocation(line: 325, column: 2, scope: !402)
!549 = !DILocation(line: 325, column: 26, scope: !402)
!550 = !DILocation(line: 326, column: 2, scope: !402)
!551 = !DILocation(line: 326, column: 6, scope: !402)
!552 = !DILocation(line: 332, column: 11, scope: !402)
!553 = !DILocation(line: 334, column: 2, scope: !402)
!554 = !DILocation(line: 334, column: 2, scope: !414)
!555 = !DILocation(line: 334, column: 2, scope: !556)
!556 = distinct !DILexicalBlock(scope: !414, file: !3, line: 334, column: 2)
!557 = !{i64 2152786732}
!558 = !DILocation(line: 334, column: 2, scope: !413)
!559 = !DILocation(line: 334, column: 2, scope: !412)
!560 = !DILocation(line: 334, column: 2, scope: !418)
!561 = !{i64 2152787154}
!562 = !DILocation(line: 335, column: 8, scope: !421)
!563 = !DILocation(line: 335, column: 8, scope: !420)
!564 = !DILocation(line: 335, column: 8, scope: !423)
!565 = !{i64 2152787840}
!566 = !DILocation(line: 335, column: 6, scope: !402)
!567 = !DILocation(line: 336, column: 2, scope: !402)
!568 = !DILocation(line: 336, column: 9, scope: !402)
!569 = !DILocation(line: 336, column: 14, scope: !402)
!570 = !DILocation(line: 336, column: 19, scope: !402)
!571 = !DILocation(line: 336, column: 17, scope: !402)
!572 = !DILocation(line: 337, column: 3, scope: !428)
!573 = !DILocation(line: 337, column: 3, scope: !426)
!574 = !DILocation(line: 337, column: 3, scope: !425)
!575 = !DILocation(line: 337, column: 3, scope: !430)
!576 = !{i64 2152788705}
!577 = !DILocation(line: 337, column: 3, scope: !427)
!578 = !DILocation(line: 337, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !427, file: !3, line: 337, column: 3)
!580 = !{i64 2152789135}
!581 = !DILocation(line: 337, column: 3, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !3, line: 337, column: 3)
!583 = !DILocation(line: 337, column: 3, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 337, column: 3)
!585 = !{i64 2152789317}
!586 = !DILocation(line: 338, column: 27, scope: !428)
!587 = !DILocation(line: 338, column: 51, scope: !428)
!588 = !DILocation(line: 338, column: 10, scope: !428)
!589 = !DILocation(line: 338, column: 8, scope: !428)
!590 = !DILocation(line: 339, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !435, file: !3, line: 339, column: 7)
!592 = !DILocation(line: 339, column: 12, scope: !591)
!593 = !DILocation(line: 339, column: 7, scope: !435)
!594 = !DILocation(line: 340, column: 4, scope: !591)
!595 = !DILocation(line: 341, column: 3, scope: !435)
!596 = !DILocation(line: 341, column: 3, scope: !434)
!597 = !DILocation(line: 341, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !434, file: !3, line: 341, column: 3)
!599 = !{i64 2152791225}
!600 = !DILocation(line: 341, column: 3, scope: !433)
!601 = !DILocation(line: 341, column: 3, scope: !432)
!602 = !DILocation(line: 341, column: 3, scope: !437)
!603 = !{i64 2152791647}
!604 = !DILocation(line: 342, column: 9, scope: !440)
!605 = !DILocation(line: 342, column: 9, scope: !439)
!606 = !DILocation(line: 342, column: 9, scope: !442)
!607 = !{i64 2152792333}
!608 = !DILocation(line: 342, column: 7, scope: !435)
!609 = !DILocation(line: 343, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !435, file: !3, line: 343, column: 7)
!611 = !DILocation(line: 343, column: 12, scope: !610)
!612 = !DILocation(line: 343, column: 17, scope: !610)
!613 = !DILocation(line: 343, column: 15, scope: !610)
!614 = !DILocation(line: 343, column: 7, scope: !435)
!615 = !DILocation(line: 344, column: 19, scope: !616)
!616 = distinct !DILexicalBlock(scope: !610, file: !3, line: 343, column: 21)
!617 = !DILocation(line: 344, column: 24, scope: !616)
!618 = !DILocation(line: 344, column: 4, scope: !616)
!619 = !DILocation(line: 344, column: 10, scope: !616)
!620 = !DILocation(line: 344, column: 17, scope: !616)
!621 = !DILocation(line: 345, column: 17, scope: !616)
!622 = !DILocation(line: 345, column: 4, scope: !616)
!623 = !DILocation(line: 345, column: 9, scope: !616)
!624 = !DILocation(line: 345, column: 15, scope: !616)
!625 = !DILocation(line: 346, column: 4, scope: !616)
!626 = !DILocation(line: 346, column: 9, scope: !616)
!627 = !DILocation(line: 346, column: 11, scope: !616)
!628 = !DILocation(line: 347, column: 3, scope: !616)
!629 = !DILocation(line: 348, column: 20, scope: !630)
!630 = distinct !DILexicalBlock(scope: !610, file: !3, line: 347, column: 10)
!631 = !DILocation(line: 348, column: 44, scope: !630)
!632 = !DILocation(line: 348, column: 4, scope: !630)
!633 = distinct !{!633, !567, !634, !635, !636}
!634 = !DILocation(line: 350, column: 2, scope: !402)
!635 = !{!"llvm.loop.mustprogress"}
!636 = !{!"llvm.loop.unroll.disable"}
!637 = !DILocation(line: 351, column: 6, scope: !402)
!638 = !DILocation(line: 351, column: 2, scope: !402)
!639 = !DILocation(line: 352, column: 1, scope: !402)
!640 = !DILocation(line: 353, column: 9, scope: !402)
!641 = !DILocation(line: 354, column: 1, scope: !402)
!642 = !DILocation(line: 353, column: 2, scope: !402)
!643 = distinct !DISubprogram(name: "radix_tree_maybe_preload", scope: !3, file: !3, line: 378, type: !505, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!644 = !{!645, !646, !650}
!645 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !643, file: !3, line: 378, type: !272)
!646 = !DILocalVariable(name: "__vpp_verify", scope: !647, file: !3, line: 383, type: !415)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 383, column: 2)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 383, column: 2)
!649 = distinct !DILexicalBlock(scope: !643, file: !3, line: 383, column: 2)
!650 = !DILocalVariable(name: "tcp_ptr__", scope: !651, file: !3, line: 383, type: !301)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 383, column: 2)
!652 = !DILocation(line: 378, column: 36, scope: !643)
!653 = !DILocation(line: 380, column: 30, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !3, line: 380, column: 6)
!655 = !DILocation(line: 380, column: 6, scope: !654)
!656 = !DILocation(line: 380, column: 6, scope: !643)
!657 = !DILocation(line: 381, column: 31, scope: !654)
!658 = !DILocation(line: 381, column: 10, scope: !654)
!659 = !DILocation(line: 381, column: 3, scope: !654)
!660 = !DILocation(line: 383, column: 2, scope: !643)
!661 = !DILocation(line: 383, column: 2, scope: !649)
!662 = !DILocation(line: 383, column: 2, scope: !663)
!663 = distinct !DILexicalBlock(scope: !649, file: !3, line: 383, column: 2)
!664 = !{i64 2152796869}
!665 = !DILocation(line: 383, column: 2, scope: !648)
!666 = !DILocation(line: 383, column: 2, scope: !647)
!667 = !DILocation(line: 383, column: 2, scope: !651)
!668 = !{i64 2152797291}
!669 = !DILocation(line: 384, column: 2, scope: !643)
!670 = !DILocation(line: 385, column: 1, scope: !643)
!671 = distinct !DISubprogram(name: "__preempt_count_add", scope: !672, file: !672, line: 78, type: !673, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!672 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!673 = !DISubroutineType(types: !674)
!674 = !{null, !14}
!675 = !{!676, !677, !680}
!676 = !DILocalVariable(name: "val", arg: 1, scope: !671, file: !672, line: 78, type: !14)
!677 = !DILocalVariable(name: "pao_ID__", scope: !678, file: !672, line: 80, type: !679)
!678 = distinct !DILexicalBlock(scope: !671, file: !672, line: 80, column: 2)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!680 = !DILocalVariable(name: "pto_val__", scope: !681, file: !672, line: 80, type: !326)
!681 = distinct !DILexicalBlock(scope: !682, file: !672, line: 80, column: 2)
!682 = distinct !DILexicalBlock(scope: !683, file: !672, line: 80, column: 2)
!683 = distinct !DILexicalBlock(scope: !678, file: !672, line: 80, column: 2)
!684 = !DILocation(line: 78, column: 53, scope: !671)
!685 = !DILocation(line: 80, column: 2, scope: !671)
!686 = !DILocation(line: 80, column: 2, scope: !678)
!687 = !DILocation(line: 80, column: 2, scope: !683)
!688 = !DILocation(line: 80, column: 2, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !672, line: 80, column: 2)
!690 = !{i64 2149696635}
!691 = !DILocation(line: 80, column: 2, scope: !682)
!692 = !DILocation(line: 80, column: 2, scope: !693)
!693 = distinct !DILexicalBlock(scope: !682, file: !672, line: 80, column: 2)
!694 = !{i64 2149696930}
!695 = !DILocation(line: 80, column: 2, scope: !681)
!696 = !{i64 2149697635}
!697 = !DILocation(line: 81, column: 1, scope: !671)
!698 = distinct !DISubprogram(name: "local_lock_acquire", scope: !308, file: !308, line: 47, type: !699, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !306}
!701 = !{!702}
!702 = !DILocalVariable(name: "l", arg: 1, scope: !698, file: !308, line: 47, type: !306)
!703 = !DILocation(line: 47, column: 53, scope: !698)
!704 = !DILocation(line: 47, column: 58, scope: !698)
!705 = distinct !DISubprogram(name: "radix_tree_insert", scope: !3, file: !3, line: 703, type: !706, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!14, !225, !301, !213}
!708 = !{!709, !710, !711, !712, !713, !714, !715}
!709 = !DILocalVariable(name: "root", arg: 1, scope: !705, file: !3, line: 703, type: !225)
!710 = !DILocalVariable(name: "index", arg: 2, scope: !705, file: !3, line: 703, type: !301)
!711 = !DILocalVariable(name: "item", arg: 3, scope: !705, file: !3, line: 704, type: !213)
!712 = !DILocalVariable(name: "node", scope: !705, file: !3, line: 706, type: !214)
!713 = !DILocalVariable(name: "slot", scope: !705, file: !3, line: 707, type: !311)
!714 = !DILocalVariable(name: "error", scope: !705, file: !3, line: 708, type: !14)
!715 = !DILocalVariable(name: "offset", scope: !716, file: !3, line: 721, type: !7)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 720, column: 12)
!717 = distinct !DILexicalBlock(scope: !705, file: !3, line: 720, column: 6)
!718 = !DILocation(line: 703, column: 47, scope: !705)
!719 = !DILocation(line: 703, column: 67, scope: !705)
!720 = !DILocation(line: 704, column: 10, scope: !705)
!721 = !DILocation(line: 706, column: 2, scope: !705)
!722 = !DILocation(line: 706, column: 26, scope: !705)
!723 = !DILocation(line: 707, column: 2, scope: !705)
!724 = !DILocation(line: 707, column: 15, scope: !705)
!725 = !DILocation(line: 708, column: 2, scope: !705)
!726 = !DILocation(line: 708, column: 6, scope: !705)
!727 = !DILocation(line: 710, column: 2, scope: !705)
!728 = !DILocation(line: 710, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 710, column: 2)
!730 = distinct !DILexicalBlock(scope: !705, file: !3, line: 710, column: 2)
!731 = !DILocation(line: 710, column: 2, scope: !730)
!732 = !DILocation(line: 710, column: 2, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !3, line: 710, column: 2)
!734 = !DILocation(line: 710, column: 2, scope: !735)
!735 = distinct !DILexicalBlock(scope: !733, file: !3, line: 710, column: 2)
!736 = !DILocation(line: 710, column: 2, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 710, column: 2)
!738 = !{i64 2152855399, i64 2152855428, i64 2152855474, i64 2152855532, i64 2152855586, i64 2152855640, i64 2152855695, i64 2152855726}
!739 = !DILocation(line: 712, column: 30, scope: !705)
!740 = !DILocation(line: 712, column: 36, scope: !705)
!741 = !DILocation(line: 712, column: 10, scope: !705)
!742 = !DILocation(line: 712, column: 8, scope: !705)
!743 = !DILocation(line: 713, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !705, file: !3, line: 713, column: 6)
!745 = !DILocation(line: 713, column: 6, scope: !705)
!746 = !DILocation(line: 714, column: 10, scope: !744)
!747 = !DILocation(line: 714, column: 3, scope: !744)
!748 = !DILocation(line: 716, column: 25, scope: !705)
!749 = !DILocation(line: 716, column: 31, scope: !705)
!750 = !DILocation(line: 716, column: 37, scope: !705)
!751 = !DILocation(line: 716, column: 10, scope: !705)
!752 = !DILocation(line: 716, column: 8, scope: !705)
!753 = !DILocation(line: 717, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !705, file: !3, line: 717, column: 6)
!755 = !DILocation(line: 717, column: 12, scope: !754)
!756 = !DILocation(line: 717, column: 6, scope: !705)
!757 = !DILocation(line: 718, column: 10, scope: !754)
!758 = !DILocation(line: 718, column: 3, scope: !754)
!759 = !DILocation(line: 720, column: 6, scope: !717)
!760 = !DILocation(line: 720, column: 6, scope: !705)
!761 = !DILocation(line: 721, column: 3, scope: !716)
!762 = !DILocation(line: 721, column: 12, scope: !716)
!763 = !DILocation(line: 721, column: 37, scope: !716)
!764 = !DILocation(line: 721, column: 43, scope: !716)
!765 = !DILocation(line: 721, column: 21, scope: !716)
!766 = !DILocation(line: 722, column: 3, scope: !716)
!767 = !DILocation(line: 722, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 722, column: 3)
!769 = distinct !DILexicalBlock(scope: !716, file: !3, line: 722, column: 3)
!770 = !DILocation(line: 722, column: 3, scope: !769)
!771 = !DILocation(line: 722, column: 3, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 722, column: 3)
!773 = !DILocation(line: 722, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 722, column: 3)
!775 = !DILocation(line: 722, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 722, column: 3)
!777 = !{i64 2152856402, i64 2152856431, i64 2152856477, i64 2152856535, i64 2152856589, i64 2152856643, i64 2152856698, i64 2152856729}
!778 = !DILocation(line: 723, column: 3, scope: !716)
!779 = !DILocation(line: 723, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 723, column: 3)
!781 = distinct !DILexicalBlock(scope: !716, file: !3, line: 723, column: 3)
!782 = !DILocation(line: 723, column: 3, scope: !781)
!783 = !DILocation(line: 723, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !3, line: 723, column: 3)
!785 = !DILocation(line: 723, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !784, file: !3, line: 723, column: 3)
!787 = !DILocation(line: 723, column: 3, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 723, column: 3)
!789 = !{i64 2152857405, i64 2152857434, i64 2152857480, i64 2152857538, i64 2152857592, i64 2152857646, i64 2152857701, i64 2152857732}
!790 = !DILocation(line: 724, column: 3, scope: !716)
!791 = !DILocation(line: 724, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 724, column: 3)
!793 = distinct !DILexicalBlock(scope: !716, file: !3, line: 724, column: 3)
!794 = !DILocation(line: 724, column: 3, scope: !793)
!795 = !DILocation(line: 724, column: 3, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 724, column: 3)
!797 = !DILocation(line: 724, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !796, file: !3, line: 724, column: 3)
!799 = !DILocation(line: 724, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 724, column: 3)
!801 = !{i64 2152858408, i64 2152858437, i64 2152858483, i64 2152858541, i64 2152858595, i64 2152858649, i64 2152858704, i64 2152858735}
!802 = !DILocation(line: 725, column: 2, scope: !717)
!803 = !DILocation(line: 725, column: 2, scope: !716)
!804 = !DILocation(line: 726, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !717, file: !3, line: 725, column: 9)
!806 = !DILocation(line: 726, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 726, column: 3)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 726, column: 3)
!809 = !DILocation(line: 726, column: 3, scope: !808)
!810 = !DILocation(line: 726, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 726, column: 3)
!812 = !DILocation(line: 726, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !3, line: 726, column: 3)
!814 = !DILocation(line: 726, column: 3, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 726, column: 3)
!816 = !{i64 2152859401, i64 2152859430, i64 2152859476, i64 2152859534, i64 2152859588, i64 2152859642, i64 2152859697, i64 2152859728}
!817 = !DILocation(line: 729, column: 2, scope: !705)
!818 = !DILocation(line: 730, column: 1, scope: !705)
!819 = distinct !DISubprogram(name: "radix_tree_is_internal_node", scope: !6, file: !6, line: 55, type: !820, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!533, !213}
!822 = !{!823}
!823 = !DILocalVariable(name: "ptr", arg: 1, scope: !819, file: !6, line: 55, type: !213)
!824 = !DILocation(line: 55, column: 54, scope: !819)
!825 = !DILocation(line: 57, column: 25, scope: !819)
!826 = !DILocation(line: 57, column: 10, scope: !819)
!827 = !DILocation(line: 57, column: 29, scope: !819)
!828 = !DILocation(line: 57, column: 54, scope: !819)
!829 = !DILocation(line: 57, column: 2, scope: !819)
!830 = distinct !DISubprogram(name: "__radix_tree_create", scope: !3, file: !3, line: 598, type: !831, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!831 = !DISubroutineType(types: !832)
!832 = !{!14, !225, !301, !833, !834}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!835 = !{!836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !851, !853}
!836 = !DILocalVariable(name: "root", arg: 1, scope: !830, file: !3, line: 598, type: !225)
!837 = !DILocalVariable(name: "index", arg: 2, scope: !830, file: !3, line: 599, type: !301)
!838 = !DILocalVariable(name: "nodep", arg: 3, scope: !830, file: !3, line: 599, type: !833)
!839 = !DILocalVariable(name: "slotp", arg: 4, scope: !830, file: !3, line: 600, type: !834)
!840 = !DILocalVariable(name: "node", scope: !830, file: !3, line: 602, type: !214)
!841 = !DILocalVariable(name: "child", scope: !830, file: !3, line: 602, type: !214)
!842 = !DILocalVariable(name: "slot", scope: !830, file: !3, line: 603, type: !311)
!843 = !DILocalVariable(name: "maxindex", scope: !830, file: !3, line: 604, type: !301)
!844 = !DILocalVariable(name: "shift", scope: !830, file: !3, line: 605, type: !7)
!845 = !DILocalVariable(name: "offset", scope: !830, file: !3, line: 605, type: !7)
!846 = !DILocalVariable(name: "max", scope: !830, file: !3, line: 606, type: !301)
!847 = !DILocalVariable(name: "gfp", scope: !830, file: !3, line: 607, type: !272)
!848 = !DILocalVariable(name: "error", scope: !849, file: !3, line: 613, type: !14)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 612, column: 22)
!850 = distinct !DILexicalBlock(scope: !830, file: !3, line: 612, column: 6)
!851 = !DILocalVariable(name: "__UNIQUE_ID_rcu224", scope: !852, file: !3, line: 617, type: !213)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 617, column: 11)
!853 = !DILocalVariable(name: "_r_a_p__v", scope: !854, file: !3, line: 628, type: !315)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 628, column: 4)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 622, column: 22)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 622, column: 7)
!857 = distinct !DILexicalBlock(scope: !830, file: !3, line: 620, column: 20)
!858 = !DILocation(line: 598, column: 56, scope: !830)
!859 = !DILocation(line: 599, column: 17, scope: !830)
!860 = !DILocation(line: 599, column: 49, scope: !830)
!861 = !DILocation(line: 600, column: 17, scope: !830)
!862 = !DILocation(line: 602, column: 2, scope: !830)
!863 = !DILocation(line: 602, column: 26, scope: !830)
!864 = !DILocation(line: 602, column: 40, scope: !830)
!865 = !DILocation(line: 603, column: 2, scope: !830)
!866 = !DILocation(line: 603, column: 15, scope: !830)
!867 = !DILocation(line: 603, column: 38, scope: !830)
!868 = !DILocation(line: 603, column: 44, scope: !830)
!869 = !DILocation(line: 604, column: 2, scope: !830)
!870 = !DILocation(line: 604, column: 16, scope: !830)
!871 = !DILocation(line: 605, column: 2, scope: !830)
!872 = !DILocation(line: 605, column: 15, scope: !830)
!873 = !DILocation(line: 605, column: 22, scope: !830)
!874 = !DILocation(line: 606, column: 2, scope: !830)
!875 = !DILocation(line: 606, column: 16, scope: !830)
!876 = !DILocation(line: 606, column: 22, scope: !830)
!877 = !DILocation(line: 607, column: 2, scope: !830)
!878 = !DILocation(line: 607, column: 8, scope: !830)
!879 = !DILocation(line: 607, column: 28, scope: !830)
!880 = !DILocation(line: 607, column: 14, scope: !830)
!881 = !DILocation(line: 609, column: 31, scope: !830)
!882 = !DILocation(line: 609, column: 10, scope: !830)
!883 = !DILocation(line: 609, column: 8, scope: !830)
!884 = !DILocation(line: 612, column: 6, scope: !850)
!885 = !DILocation(line: 612, column: 12, scope: !850)
!886 = !DILocation(line: 612, column: 10, scope: !850)
!887 = !DILocation(line: 612, column: 6, scope: !830)
!888 = !DILocation(line: 613, column: 3, scope: !849)
!889 = !DILocation(line: 613, column: 7, scope: !849)
!890 = !DILocation(line: 613, column: 33, scope: !849)
!891 = !DILocation(line: 613, column: 39, scope: !849)
!892 = !DILocation(line: 613, column: 44, scope: !849)
!893 = !DILocation(line: 613, column: 49, scope: !849)
!894 = !DILocation(line: 613, column: 15, scope: !849)
!895 = !DILocation(line: 614, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !849, file: !3, line: 614, column: 7)
!897 = !DILocation(line: 614, column: 13, scope: !896)
!898 = !DILocation(line: 614, column: 7, scope: !849)
!899 = !DILocation(line: 615, column: 11, scope: !896)
!900 = !DILocation(line: 615, column: 4, scope: !896)
!901 = !DILocation(line: 616, column: 11, scope: !849)
!902 = !DILocation(line: 616, column: 9, scope: !849)
!903 = !DILocation(line: 617, column: 11, scope: !852)
!904 = !DILocation(line: 617, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !852, file: !3, line: 617, column: 11)
!906 = !DILocation(line: 617, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !905, file: !3, line: 617, column: 11)
!908 = !DILocation(line: 617, column: 11, scope: !849)
!909 = !DILocation(line: 617, column: 9, scope: !849)
!910 = !DILocation(line: 618, column: 2, scope: !850)
!911 = !DILocation(line: 618, column: 2, scope: !849)
!912 = !DILocation(line: 620, column: 2, scope: !830)
!913 = !DILocation(line: 620, column: 9, scope: !830)
!914 = !DILocation(line: 620, column: 15, scope: !830)
!915 = !DILocation(line: 621, column: 9, scope: !857)
!916 = !DILocation(line: 622, column: 7, scope: !856)
!917 = !DILocation(line: 622, column: 13, scope: !856)
!918 = !DILocation(line: 622, column: 7, scope: !857)
!919 = !DILocation(line: 624, column: 34, scope: !855)
!920 = !DILocation(line: 624, column: 39, scope: !855)
!921 = !DILocation(line: 624, column: 45, scope: !855)
!922 = !DILocation(line: 624, column: 51, scope: !855)
!923 = !DILocation(line: 625, column: 8, scope: !855)
!924 = !DILocation(line: 624, column: 12, scope: !855)
!925 = !DILocation(line: 624, column: 10, scope: !855)
!926 = !DILocation(line: 626, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !855, file: !3, line: 626, column: 8)
!928 = !DILocation(line: 626, column: 8, scope: !855)
!929 = !DILocation(line: 627, column: 5, scope: !927)
!930 = !DILocation(line: 628, column: 4, scope: !855)
!931 = !DILocation(line: 628, column: 4, scope: !854)
!932 = !DILocation(line: 628, column: 4, scope: !933)
!933 = distinct !DILexicalBlock(scope: !854, file: !3, line: 628, column: 4)
!934 = !DILocation(line: 628, column: 4, scope: !935)
!935 = distinct !DILexicalBlock(scope: !933, file: !3, line: 628, column: 4)
!936 = !DILocation(line: 628, column: 4, scope: !937)
!937 = distinct !DILexicalBlock(scope: !935, file: !3, line: 628, column: 4)
!938 = !DILocation(line: 628, column: 4, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !3, line: 628, column: 4)
!940 = !DILocation(line: 628, column: 4, scope: !941)
!941 = distinct !DILexicalBlock(scope: !939, file: !3, line: 628, column: 4)
!942 = !{i64 2152836578}
!943 = !DILocation(line: 628, column: 4, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 628, column: 4)
!945 = !DILocation(line: 628, column: 4, scope: !946)
!946 = distinct !DILexicalBlock(scope: !944, file: !3, line: 628, column: 4)
!947 = !DILocation(line: 628, column: 4, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 628, column: 4)
!949 = !DILocation(line: 629, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !855, file: !3, line: 629, column: 8)
!951 = !DILocation(line: 629, column: 8, scope: !855)
!952 = !DILocation(line: 630, column: 5, scope: !950)
!953 = !DILocation(line: 630, column: 11, scope: !950)
!954 = !DILocation(line: 630, column: 16, scope: !950)
!955 = !DILocation(line: 631, column: 3, scope: !855)
!956 = !DILocation(line: 631, column: 43, scope: !957)
!957 = distinct !DILexicalBlock(scope: !856, file: !3, line: 631, column: 14)
!958 = !DILocation(line: 631, column: 15, scope: !957)
!959 = !DILocation(line: 631, column: 14, scope: !856)
!960 = !DILocation(line: 632, column: 4, scope: !957)
!961 = !DILocation(line: 635, column: 24, scope: !857)
!962 = !DILocation(line: 635, column: 10, scope: !857)
!963 = !DILocation(line: 635, column: 8, scope: !857)
!964 = !DILocation(line: 636, column: 31, scope: !857)
!965 = !DILocation(line: 636, column: 45, scope: !857)
!966 = !DILocation(line: 636, column: 12, scope: !857)
!967 = !DILocation(line: 636, column: 10, scope: !857)
!968 = !DILocation(line: 637, column: 11, scope: !857)
!969 = !DILocation(line: 637, column: 17, scope: !857)
!970 = !DILocation(line: 637, column: 23, scope: !857)
!971 = !DILocation(line: 637, column: 8, scope: !857)
!972 = distinct !{!972, !912, !973, !635, !636}
!973 = !DILocation(line: 638, column: 2, scope: !830)
!974 = !DILocation(line: 640, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !830, file: !3, line: 640, column: 6)
!976 = !DILocation(line: 640, column: 6, scope: !830)
!977 = !DILocation(line: 641, column: 12, scope: !975)
!978 = !DILocation(line: 641, column: 4, scope: !975)
!979 = !DILocation(line: 641, column: 10, scope: !975)
!980 = !DILocation(line: 641, column: 3, scope: !975)
!981 = !DILocation(line: 642, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !830, file: !3, line: 642, column: 6)
!983 = !DILocation(line: 642, column: 6, scope: !830)
!984 = !DILocation(line: 643, column: 12, scope: !982)
!985 = !DILocation(line: 643, column: 4, scope: !982)
!986 = !DILocation(line: 643, column: 10, scope: !982)
!987 = !DILocation(line: 643, column: 3, scope: !982)
!988 = !DILocation(line: 644, column: 2, scope: !830)
!989 = !DILocation(line: 645, column: 1, scope: !830)
!990 = distinct !DISubprogram(name: "insert_entries", scope: !3, file: !3, line: 681, type: !991, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!14, !214, !311, !213}
!993 = !{!994, !995, !996, !997}
!994 = !DILocalVariable(name: "node", arg: 1, scope: !990, file: !3, line: 681, type: !214)
!995 = !DILocalVariable(name: "slot", arg: 2, scope: !990, file: !3, line: 682, type: !311)
!996 = !DILocalVariable(name: "item", arg: 3, scope: !990, file: !3, line: 682, type: !213)
!997 = !DILocalVariable(name: "_r_a_p__v", scope: !998, file: !3, line: 686, type: !315)
!998 = distinct !DILexicalBlock(scope: !990, file: !3, line: 686, column: 2)
!999 = !DILocation(line: 681, column: 58, scope: !990)
!1000 = !DILocation(line: 682, column: 16, scope: !990)
!1001 = !DILocation(line: 682, column: 28, scope: !990)
!1002 = !DILocation(line: 684, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !990, file: !3, line: 684, column: 6)
!1004 = !DILocation(line: 684, column: 6, scope: !1003)
!1005 = !DILocation(line: 684, column: 6, scope: !990)
!1006 = !DILocation(line: 685, column: 3, scope: !1003)
!1007 = !DILocation(line: 686, column: 2, scope: !990)
!1008 = !DILocation(line: 686, column: 2, scope: !998)
!1009 = !DILocation(line: 686, column: 2, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !3, line: 686, column: 2)
!1011 = !DILocation(line: 686, column: 2, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 686, column: 2)
!1013 = !DILocation(line: 686, column: 2, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 686, column: 2)
!1015 = !DILocation(line: 686, column: 2, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 686, column: 2)
!1017 = !DILocation(line: 686, column: 2, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 686, column: 2)
!1019 = !DILocation(line: 686, column: 2, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 686, column: 2)
!1021 = !DILocation(line: 686, column: 2, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 686, column: 2)
!1023 = !DILocation(line: 686, column: 2, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 686, column: 2)
!1025 = !{i64 2152852842}
!1026 = !DILocation(line: 686, column: 2, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 686, column: 2)
!1028 = !DILocation(line: 686, column: 2, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 686, column: 2)
!1030 = !DILocation(line: 686, column: 2, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 686, column: 2)
!1032 = !DILocation(line: 687, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !990, file: !3, line: 687, column: 6)
!1034 = !DILocation(line: 687, column: 6, scope: !990)
!1035 = !DILocation(line: 688, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 687, column: 12)
!1037 = !DILocation(line: 688, column: 9, scope: !1036)
!1038 = !DILocation(line: 688, column: 14, scope: !1036)
!1039 = !DILocation(line: 689, column: 19, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 689, column: 7)
!1041 = !DILocation(line: 689, column: 7, scope: !1040)
!1042 = !DILocation(line: 689, column: 7, scope: !1036)
!1043 = !DILocation(line: 690, column: 4, scope: !1040)
!1044 = !DILocation(line: 690, column: 10, scope: !1040)
!1045 = !DILocation(line: 690, column: 19, scope: !1040)
!1046 = !DILocation(line: 691, column: 2, scope: !1036)
!1047 = !DILocation(line: 692, column: 2, scope: !990)
!1048 = !DILocation(line: 693, column: 1, scope: !990)
!1049 = distinct !DISubprogram(name: "get_slot_offset", scope: !3, file: !3, line: 80, type: !1050, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!301, !1052, !311}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!1054 = !{!1055, !1056}
!1055 = !DILocalVariable(name: "parent", arg: 1, scope: !1049, file: !3, line: 80, type: !1052)
!1056 = !DILocalVariable(name: "slot", arg: 2, scope: !1049, file: !3, line: 80, type: !311)
!1057 = !DILocation(line: 80, column: 47, scope: !1049)
!1058 = !DILocation(line: 80, column: 68, scope: !1049)
!1059 = !DILocation(line: 82, column: 9, scope: !1049)
!1060 = !DILocation(line: 82, column: 18, scope: !1049)
!1061 = !DILocation(line: 82, column: 25, scope: !1049)
!1062 = !DILocation(line: 82, column: 33, scope: !1049)
!1063 = !DILocation(line: 82, column: 23, scope: !1049)
!1064 = !DILocation(line: 82, column: 2, scope: !1049)
!1065 = distinct !DISubprogram(name: "tag_get", scope: !3, file: !3, line: 112, type: !1066, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!14, !1052, !7, !14}
!1068 = !{!1069, !1070, !1071}
!1069 = !DILocalVariable(name: "node", arg: 1, scope: !1065, file: !3, line: 112, type: !1052)
!1070 = !DILocalVariable(name: "tag", arg: 2, scope: !1065, file: !3, line: 112, type: !7)
!1071 = !DILocalVariable(name: "offset", arg: 3, scope: !1065, file: !3, line: 113, type: !14)
!1072 = !DILocation(line: 112, column: 57, scope: !1065)
!1073 = !DILocation(line: 112, column: 76, scope: !1065)
!1074 = !DILocation(line: 113, column: 7, scope: !1065)
!1075 = !DILocation(line: 115, column: 9, scope: !1065)
!1076 = !DILocation(line: 115, column: 2, scope: !1065)
!1077 = distinct !DISubprogram(name: "root_tags_get", scope: !3, file: !3, line: 138, type: !1078, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1082)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!7, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!1082 = !{!1083}
!1083 = !DILocalVariable(name: "root", arg: 1, scope: !1077, file: !3, line: 138, type: !1080)
!1084 = !DILocation(line: 138, column: 68, scope: !1077)
!1085 = !DILocation(line: 140, column: 27, scope: !1077)
!1086 = !DILocation(line: 140, column: 33, scope: !1077)
!1087 = !DILocation(line: 140, column: 42, scope: !1077)
!1088 = !DILocation(line: 140, column: 2, scope: !1077)
!1089 = distinct !DISubprogram(name: "__radix_tree_lookup", scope: !3, file: !3, line: 747, type: !1090, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!213, !1080, !301, !833, !834}
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1093 = !DILocalVariable(name: "root", arg: 1, scope: !1089, file: !3, line: 747, type: !1080)
!1094 = !DILocalVariable(name: "index", arg: 2, scope: !1089, file: !3, line: 748, type: !301)
!1095 = !DILocalVariable(name: "nodep", arg: 3, scope: !1089, file: !3, line: 748, type: !833)
!1096 = !DILocalVariable(name: "slotp", arg: 4, scope: !1089, file: !3, line: 749, type: !834)
!1097 = !DILocalVariable(name: "node", scope: !1089, file: !3, line: 751, type: !214)
!1098 = !DILocalVariable(name: "parent", scope: !1089, file: !3, line: 751, type: !214)
!1099 = !DILocalVariable(name: "maxindex", scope: !1089, file: !3, line: 752, type: !301)
!1100 = !DILocalVariable(name: "slot", scope: !1089, file: !3, line: 753, type: !311)
!1101 = !DILabel(scope: !1089, name: "restart", file: !3, line: 755)
!1102 = !DILocalVariable(name: "offset", scope: !1103, file: !3, line: 763, type: !7)
!1103 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 762, column: 44)
!1104 = !DILocation(line: 747, column: 57, scope: !1089)
!1105 = !DILocation(line: 748, column: 20, scope: !1089)
!1106 = !DILocation(line: 748, column: 52, scope: !1089)
!1107 = !DILocation(line: 749, column: 20, scope: !1089)
!1108 = !DILocation(line: 751, column: 2, scope: !1089)
!1109 = !DILocation(line: 751, column: 26, scope: !1089)
!1110 = !DILocation(line: 751, column: 33, scope: !1089)
!1111 = !DILocation(line: 752, column: 2, scope: !1089)
!1112 = !DILocation(line: 752, column: 16, scope: !1089)
!1113 = !DILocation(line: 753, column: 2, scope: !1089)
!1114 = !DILocation(line: 753, column: 15, scope: !1089)
!1115 = !DILocation(line: 755, column: 2, scope: !1089)
!1116 = !DILocation(line: 756, column: 9, scope: !1089)
!1117 = !DILocation(line: 757, column: 25, scope: !1089)
!1118 = !DILocation(line: 757, column: 31, scope: !1089)
!1119 = !DILocation(line: 757, column: 7, scope: !1089)
!1120 = !DILocation(line: 758, column: 23, scope: !1089)
!1121 = !DILocation(line: 758, column: 2, scope: !1089)
!1122 = !DILocation(line: 759, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 759, column: 6)
!1124 = !DILocation(line: 759, column: 14, scope: !1123)
!1125 = !DILocation(line: 759, column: 12, scope: !1123)
!1126 = !DILocation(line: 759, column: 6, scope: !1089)
!1127 = !DILocation(line: 760, column: 3, scope: !1123)
!1128 = !DILocation(line: 762, column: 2, scope: !1089)
!1129 = !DILocation(line: 762, column: 37, scope: !1089)
!1130 = !DILocation(line: 762, column: 9, scope: !1089)
!1131 = !DILocation(line: 763, column: 3, scope: !1103)
!1132 = !DILocation(line: 763, column: 12, scope: !1103)
!1133 = !DILocation(line: 765, column: 26, scope: !1103)
!1134 = !DILocation(line: 765, column: 12, scope: !1103)
!1135 = !DILocation(line: 765, column: 10, scope: !1103)
!1136 = !DILocation(line: 766, column: 31, scope: !1103)
!1137 = !DILocation(line: 766, column: 46, scope: !1103)
!1138 = !DILocation(line: 766, column: 12, scope: !1103)
!1139 = !DILocation(line: 766, column: 10, scope: !1103)
!1140 = !DILocation(line: 767, column: 10, scope: !1103)
!1141 = !DILocation(line: 767, column: 18, scope: !1103)
!1142 = !DILocation(line: 767, column: 26, scope: !1103)
!1143 = !DILocation(line: 767, column: 24, scope: !1103)
!1144 = !DILocation(line: 767, column: 8, scope: !1103)
!1145 = !DILocation(line: 768, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 768, column: 7)
!1147 = !DILocation(line: 768, column: 15, scope: !1146)
!1148 = !DILocation(line: 768, column: 12, scope: !1146)
!1149 = !DILocation(line: 768, column: 7, scope: !1103)
!1150 = !DILocation(line: 769, column: 4, scope: !1146)
!1151 = !DILocation(line: 770, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 770, column: 7)
!1153 = !DILocation(line: 770, column: 15, scope: !1152)
!1154 = !DILocation(line: 770, column: 21, scope: !1152)
!1155 = !DILocation(line: 770, column: 7, scope: !1103)
!1156 = !DILocation(line: 771, column: 4, scope: !1152)
!1157 = !DILocation(line: 772, column: 2, scope: !1089)
!1158 = distinct !{!1158, !1128, !1157, !635, !636}
!1159 = !DILocation(line: 774, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 774, column: 6)
!1161 = !DILocation(line: 774, column: 6, scope: !1089)
!1162 = !DILocation(line: 775, column: 12, scope: !1160)
!1163 = !DILocation(line: 775, column: 4, scope: !1160)
!1164 = !DILocation(line: 775, column: 10, scope: !1160)
!1165 = !DILocation(line: 775, column: 3, scope: !1160)
!1166 = !DILocation(line: 776, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 776, column: 6)
!1168 = !DILocation(line: 776, column: 6, scope: !1089)
!1169 = !DILocation(line: 777, column: 12, scope: !1167)
!1170 = !DILocation(line: 777, column: 4, scope: !1167)
!1171 = !DILocation(line: 777, column: 10, scope: !1167)
!1172 = !DILocation(line: 777, column: 3, scope: !1167)
!1173 = !DILocation(line: 778, column: 9, scope: !1089)
!1174 = !DILocation(line: 778, column: 2, scope: !1089)
!1175 = !DILocation(line: 779, column: 1, scope: !1089)
!1176 = distinct !DISubprogram(name: "radix_tree_load_root", scope: !3, file: !3, line: 388, type: !1177, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!7, !1080, !833, !330}
!1179 = !{!1180, !1181, !1182, !1183, !1184}
!1180 = !DILocalVariable(name: "root", arg: 1, scope: !1176, file: !3, line: 388, type: !1080)
!1181 = !DILocalVariable(name: "nodep", arg: 2, scope: !1176, file: !3, line: 389, type: !833)
!1182 = !DILocalVariable(name: "maxindex", arg: 3, scope: !1176, file: !3, line: 389, type: !330)
!1183 = !DILocalVariable(name: "node", scope: !1176, file: !3, line: 391, type: !214)
!1184 = !DILocalVariable(name: "__UNIQUE_ID_rcu211", scope: !1185, file: !3, line: 391, type: !1186)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 391, column: 33)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!1187 = !DILocation(line: 388, column: 68, scope: !1176)
!1188 = !DILocation(line: 389, column: 28, scope: !1176)
!1189 = !DILocation(line: 389, column: 50, scope: !1176)
!1190 = !DILocation(line: 391, column: 2, scope: !1176)
!1191 = !DILocation(line: 391, column: 26, scope: !1176)
!1192 = !DILocation(line: 391, column: 33, scope: !1185)
!1193 = !DILocation(line: 391, column: 33, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 391, column: 33)
!1195 = !DILocation(line: 391, column: 33, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 391, column: 33)
!1197 = !DILocation(line: 391, column: 33, scope: !1176)
!1198 = !DILocation(line: 393, column: 11, scope: !1176)
!1199 = !DILocation(line: 393, column: 3, scope: !1176)
!1200 = !DILocation(line: 393, column: 9, scope: !1176)
!1201 = !DILocation(line: 395, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 395, column: 6)
!1203 = !DILocation(line: 395, column: 6, scope: !1176)
!1204 = !DILocation(line: 396, column: 24, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 395, column: 49)
!1206 = !DILocation(line: 396, column: 10, scope: !1205)
!1207 = !DILocation(line: 396, column: 8, scope: !1205)
!1208 = !DILocation(line: 397, column: 29, scope: !1205)
!1209 = !DILocation(line: 397, column: 15, scope: !1205)
!1210 = !DILocation(line: 397, column: 4, scope: !1205)
!1211 = !DILocation(line: 397, column: 13, scope: !1205)
!1212 = !DILocation(line: 398, column: 10, scope: !1205)
!1213 = !DILocation(line: 398, column: 16, scope: !1205)
!1214 = !DILocation(line: 398, column: 22, scope: !1205)
!1215 = !DILocation(line: 398, column: 3, scope: !1205)
!1216 = !DILocation(line: 401, column: 3, scope: !1176)
!1217 = !DILocation(line: 401, column: 12, scope: !1176)
!1218 = !DILocation(line: 402, column: 2, scope: !1176)
!1219 = !DILocation(line: 403, column: 1, scope: !1176)
!1220 = distinct !DISubprogram(name: "entry_to_node", scope: !3, file: !3, line: 67, type: !1221, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!214, !213}
!1223 = !{!1224}
!1224 = !DILocalVariable(name: "ptr", arg: 1, scope: !1220, file: !3, line: 67, type: !213)
!1225 = !DILocation(line: 67, column: 59, scope: !1220)
!1226 = !DILocation(line: 69, column: 33, scope: !1220)
!1227 = !DILocation(line: 69, column: 18, scope: !1220)
!1228 = !DILocation(line: 69, column: 37, scope: !1220)
!1229 = !DILocation(line: 69, column: 9, scope: !1220)
!1230 = !DILocation(line: 69, column: 2, scope: !1220)
!1231 = distinct !DISubprogram(name: "radix_tree_descend", scope: !3, file: !3, line: 85, type: !1232, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!7, !1052, !833, !301}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240}
!1235 = !DILocalVariable(name: "parent", arg: 1, scope: !1231, file: !3, line: 85, type: !1052)
!1236 = !DILocalVariable(name: "nodep", arg: 2, scope: !1231, file: !3, line: 86, type: !833)
!1237 = !DILocalVariable(name: "index", arg: 3, scope: !1231, file: !3, line: 86, type: !301)
!1238 = !DILocalVariable(name: "offset", scope: !1231, file: !3, line: 88, type: !7)
!1239 = !DILocalVariable(name: "entry", scope: !1231, file: !3, line: 89, type: !311)
!1240 = !DILocalVariable(name: "__UNIQUE_ID_rcu206", scope: !1241, file: !3, line: 89, type: !1186)
!1241 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 89, column: 23)
!1242 = !DILocation(line: 85, column: 70, scope: !1231)
!1243 = !DILocation(line: 86, column: 29, scope: !1231)
!1244 = !DILocation(line: 86, column: 50, scope: !1231)
!1245 = !DILocation(line: 88, column: 2, scope: !1231)
!1246 = !DILocation(line: 88, column: 15, scope: !1231)
!1247 = !DILocation(line: 88, column: 25, scope: !1231)
!1248 = !DILocation(line: 88, column: 34, scope: !1231)
!1249 = !DILocation(line: 88, column: 42, scope: !1231)
!1250 = !DILocation(line: 88, column: 31, scope: !1231)
!1251 = !DILocation(line: 88, column: 49, scope: !1231)
!1252 = !DILocation(line: 88, column: 24, scope: !1231)
!1253 = !DILocation(line: 89, column: 2, scope: !1231)
!1254 = !DILocation(line: 89, column: 15, scope: !1231)
!1255 = !DILocation(line: 89, column: 23, scope: !1241)
!1256 = !DILocation(line: 89, column: 23, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 89, column: 23)
!1258 = !DILocation(line: 89, column: 23, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 89, column: 23)
!1260 = !DILocation(line: 89, column: 23, scope: !1231)
!1261 = !DILocation(line: 91, column: 19, scope: !1231)
!1262 = !DILocation(line: 91, column: 3, scope: !1231)
!1263 = !DILocation(line: 91, column: 9, scope: !1231)
!1264 = !DILocation(line: 92, column: 9, scope: !1231)
!1265 = !DILocation(line: 93, column: 1, scope: !1231)
!1266 = !DILocation(line: 92, column: 2, scope: !1231)
!1267 = distinct !DISubprogram(name: "xa_mk_internal", scope: !216, file: !216, line: 145, type: !1268, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!213, !301}
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "v", arg: 1, scope: !1267, file: !216, line: 145, type: !301)
!1272 = !DILocation(line: 145, column: 50, scope: !1267)
!1273 = !DILocation(line: 147, column: 19, scope: !1267)
!1274 = !DILocation(line: 147, column: 21, scope: !1267)
!1275 = !DILocation(line: 147, column: 27, scope: !1267)
!1276 = !DILocation(line: 147, column: 9, scope: !1267)
!1277 = !DILocation(line: 147, column: 2, scope: !1267)
!1278 = distinct !DISubprogram(name: "radix_tree_lookup_slot", scope: !3, file: !3, line: 794, type: !1279, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!311, !1080, !301}
!1281 = !{!1282, !1283, !1284}
!1282 = !DILocalVariable(name: "root", arg: 1, scope: !1278, file: !3, line: 794, type: !1080)
!1283 = !DILocalVariable(name: "index", arg: 2, scope: !1278, file: !3, line: 795, type: !301)
!1284 = !DILocalVariable(name: "slot", scope: !1278, file: !3, line: 797, type: !311)
!1285 = !DILocation(line: 794, column: 67, scope: !1278)
!1286 = !DILocation(line: 795, column: 19, scope: !1278)
!1287 = !DILocation(line: 797, column: 2, scope: !1278)
!1288 = !DILocation(line: 797, column: 15, scope: !1278)
!1289 = !DILocation(line: 799, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 799, column: 6)
!1291 = !DILocation(line: 799, column: 33, scope: !1290)
!1292 = !DILocation(line: 799, column: 7, scope: !1290)
!1293 = !DILocation(line: 799, column: 6, scope: !1278)
!1294 = !DILocation(line: 800, column: 3, scope: !1290)
!1295 = !DILocation(line: 801, column: 9, scope: !1278)
!1296 = !DILocation(line: 801, column: 2, scope: !1278)
!1297 = !DILocation(line: 802, column: 1, scope: !1278)
!1298 = distinct !DISubprogram(name: "radix_tree_lookup", scope: !3, file: !3, line: 817, type: !1299, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!213, !1080, !301}
!1301 = !{!1302, !1303}
!1302 = !DILocalVariable(name: "root", arg: 1, scope: !1298, file: !3, line: 817, type: !1080)
!1303 = !DILocalVariable(name: "index", arg: 2, scope: !1298, file: !3, line: 817, type: !301)
!1304 = !DILocation(line: 817, column: 55, scope: !1298)
!1305 = !DILocation(line: 817, column: 75, scope: !1298)
!1306 = !DILocation(line: 819, column: 29, scope: !1298)
!1307 = !DILocation(line: 819, column: 35, scope: !1298)
!1308 = !DILocation(line: 819, column: 9, scope: !1298)
!1309 = !DILocation(line: 819, column: 2, scope: !1298)
!1310 = distinct !DISubprogram(name: "__radix_tree_replace", scope: !3, file: !3, line: 875, type: !1311, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !225, !214, !311, !213}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1321, !1322, !1323, !1325}
!1314 = !DILocalVariable(name: "root", arg: 1, scope: !1310, file: !3, line: 875, type: !225)
!1315 = !DILocalVariable(name: "node", arg: 2, scope: !1310, file: !3, line: 876, type: !214)
!1316 = !DILocalVariable(name: "slot", arg: 3, scope: !1310, file: !3, line: 877, type: !311)
!1317 = !DILocalVariable(name: "item", arg: 4, scope: !1310, file: !3, line: 877, type: !213)
!1318 = !DILocalVariable(name: "old", scope: !1310, file: !3, line: 879, type: !213)
!1319 = !DILocalVariable(name: "__UNIQUE_ID_rcu240", scope: !1320, file: !3, line: 879, type: !213)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 879, column: 14)
!1321 = !DILocalVariable(name: "values", scope: !1310, file: !3, line: 880, type: !14)
!1322 = !DILocalVariable(name: "count", scope: !1310, file: !3, line: 881, type: !14)
!1323 = !DILocalVariable(name: "__ret_warn_on", scope: !1324, file: !3, line: 888, type: !14)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 888, column: 2)
!1325 = !DILocalVariable(name: "__flags", scope: !1326, file: !3, line: 888, type: !14)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 888, column: 2)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 888, column: 2)
!1328 = !DILocation(line: 875, column: 51, scope: !1310)
!1329 = !DILocation(line: 876, column: 30, scope: !1310)
!1330 = !DILocation(line: 877, column: 19, scope: !1310)
!1331 = !DILocation(line: 877, column: 31, scope: !1310)
!1332 = !DILocation(line: 879, column: 2, scope: !1310)
!1333 = !DILocation(line: 879, column: 8, scope: !1310)
!1334 = !DILocation(line: 879, column: 14, scope: !1320)
!1335 = !DILocation(line: 879, column: 14, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 879, column: 14)
!1337 = !DILocation(line: 879, column: 14, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 879, column: 14)
!1339 = !DILocation(line: 879, column: 14, scope: !1310)
!1340 = !DILocation(line: 880, column: 2, scope: !1310)
!1341 = !DILocation(line: 880, column: 6, scope: !1310)
!1342 = !DILocation(line: 880, column: 29, scope: !1310)
!1343 = !DILocation(line: 880, column: 17, scope: !1310)
!1344 = !DILocation(line: 880, column: 16, scope: !1310)
!1345 = !DILocation(line: 880, column: 15, scope: !1310)
!1346 = !DILocation(line: 880, column: 51, scope: !1310)
!1347 = !DILocation(line: 880, column: 39, scope: !1310)
!1348 = !DILocation(line: 880, column: 38, scope: !1310)
!1349 = !DILocation(line: 880, column: 37, scope: !1310)
!1350 = !DILocation(line: 880, column: 35, scope: !1310)
!1351 = !DILocation(line: 881, column: 2, scope: !1310)
!1352 = !DILocation(line: 881, column: 6, scope: !1310)
!1353 = !DILocation(line: 881, column: 30, scope: !1310)
!1354 = !DILocation(line: 881, column: 36, scope: !1310)
!1355 = !DILocation(line: 881, column: 42, scope: !1310)
!1356 = !DILocation(line: 881, column: 48, scope: !1310)
!1357 = !DILocation(line: 881, column: 54, scope: !1310)
!1358 = !DILocation(line: 881, column: 14, scope: !1310)
!1359 = !DILocation(line: 888, column: 2, scope: !1324)
!1360 = !DILocation(line: 0, scope: !1324)
!1361 = !DILocation(line: 888, column: 2, scope: !1327)
!1362 = !DILocation(line: 888, column: 2, scope: !1326)
!1363 = !DILocation(line: 888, column: 2, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 888, column: 2)
!1365 = !DILocation(line: 888, column: 2, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 888, column: 2)
!1367 = !{i64 2152876437, i64 2152876466, i64 2152876512, i64 2152876570, i64 2152876624, i64 2152876678, i64 2152876733, i64 2152876764, i64 2152877072, i64 2152877078, i64 2152877125, i64 2152877148, i64 2152877174}
!1368 = !DILocation(line: 888, column: 2, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 888, column: 2)
!1370 = !DILocation(line: 888, column: 2, scope: !1310)
!1371 = !DILocation(line: 890, column: 15, scope: !1310)
!1372 = !DILocation(line: 890, column: 21, scope: !1310)
!1373 = !DILocation(line: 890, column: 27, scope: !1310)
!1374 = !DILocation(line: 890, column: 33, scope: !1310)
!1375 = !DILocation(line: 890, column: 40, scope: !1310)
!1376 = !DILocation(line: 890, column: 2, scope: !1310)
!1377 = !DILocation(line: 892, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 892, column: 6)
!1379 = !DILocation(line: 892, column: 6, scope: !1310)
!1380 = !DILocation(line: 893, column: 3, scope: !1378)
!1381 = !DILocation(line: 895, column: 14, scope: !1310)
!1382 = !DILocation(line: 895, column: 20, scope: !1310)
!1383 = !DILocation(line: 895, column: 2, scope: !1310)
!1384 = !DILocation(line: 896, column: 1, scope: !1310)
!1385 = distinct !DISubprogram(name: "xa_is_value", scope: !216, file: !216, line: 79, type: !1386, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!533, !415}
!1388 = !{!1389}
!1389 = !DILocalVariable(name: "entry", arg: 1, scope: !1385, file: !216, line: 79, type: !415)
!1390 = !DILocation(line: 79, column: 44, scope: !1385)
!1391 = !DILocation(line: 81, column: 24, scope: !1385)
!1392 = !DILocation(line: 81, column: 9, scope: !1385)
!1393 = !DILocation(line: 81, column: 30, scope: !1385)
!1394 = !DILocation(line: 81, column: 2, scope: !1385)
!1395 = distinct !DISubprogram(name: "calculate_count", scope: !3, file: !3, line: 850, type: !1396, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!14, !225, !214, !311, !213, !213}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1407}
!1399 = !DILocalVariable(name: "root", arg: 1, scope: !1395, file: !3, line: 850, type: !225)
!1400 = !DILocalVariable(name: "node", arg: 2, scope: !1395, file: !3, line: 851, type: !214)
!1401 = !DILocalVariable(name: "slot", arg: 3, scope: !1395, file: !3, line: 851, type: !311)
!1402 = !DILocalVariable(name: "item", arg: 4, scope: !1395, file: !3, line: 852, type: !213)
!1403 = !DILocalVariable(name: "old", arg: 5, scope: !1395, file: !3, line: 852, type: !213)
!1404 = !DILocalVariable(name: "offset", scope: !1405, file: !3, line: 855, type: !7)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 854, column: 20)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 854, column: 6)
!1407 = !DILocalVariable(name: "free", scope: !1405, file: !3, line: 856, type: !533)
!1408 = !DILocation(line: 850, column: 52, scope: !1395)
!1409 = !DILocation(line: 851, column: 29, scope: !1395)
!1410 = !DILocation(line: 851, column: 48, scope: !1395)
!1411 = !DILocation(line: 852, column: 11, scope: !1395)
!1412 = !DILocation(line: 852, column: 23, scope: !1395)
!1413 = !DILocation(line: 854, column: 13, scope: !1406)
!1414 = !DILocation(line: 854, column: 6, scope: !1406)
!1415 = !DILocation(line: 854, column: 6, scope: !1395)
!1416 = !DILocation(line: 855, column: 3, scope: !1405)
!1417 = !DILocation(line: 855, column: 12, scope: !1405)
!1418 = !DILocation(line: 855, column: 37, scope: !1405)
!1419 = !DILocation(line: 855, column: 43, scope: !1405)
!1420 = !DILocation(line: 855, column: 21, scope: !1405)
!1421 = !DILocation(line: 856, column: 3, scope: !1405)
!1422 = !DILocation(line: 856, column: 8, scope: !1405)
!1423 = !DILocation(line: 856, column: 28, scope: !1405)
!1424 = !DILocation(line: 856, column: 34, scope: !1405)
!1425 = !DILocation(line: 856, column: 50, scope: !1405)
!1426 = !DILocation(line: 856, column: 15, scope: !1405)
!1427 = !DILocation(line: 857, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 857, column: 7)
!1429 = !{i8 0, i8 2}
!1430 = !DILocation(line: 857, column: 7, scope: !1405)
!1431 = !DILocation(line: 858, column: 4, scope: !1428)
!1432 = !DILocation(line: 859, column: 8, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 859, column: 7)
!1434 = !DILocation(line: 859, column: 7, scope: !1405)
!1435 = !DILocation(line: 860, column: 4, scope: !1433)
!1436 = !DILocation(line: 861, column: 2, scope: !1406)
!1437 = !DILocation(line: 861, column: 2, scope: !1405)
!1438 = !DILocation(line: 862, column: 11, scope: !1395)
!1439 = !DILocation(line: 862, column: 10, scope: !1395)
!1440 = !DILocation(line: 862, column: 9, scope: !1395)
!1441 = !DILocation(line: 862, column: 20, scope: !1395)
!1442 = !DILocation(line: 862, column: 19, scope: !1395)
!1443 = !DILocation(line: 862, column: 18, scope: !1395)
!1444 = !DILocation(line: 862, column: 16, scope: !1395)
!1445 = !DILocation(line: 862, column: 2, scope: !1395)
!1446 = !DILocation(line: 863, column: 1, scope: !1395)
!1447 = distinct !DISubprogram(name: "replace_slot", scope: !3, file: !3, line: 823, type: !1448, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !311, !213, !214, !14, !14}
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456}
!1451 = !DILocalVariable(name: "slot", arg: 1, scope: !1447, file: !3, line: 823, type: !311)
!1452 = !DILocalVariable(name: "item", arg: 2, scope: !1447, file: !3, line: 823, type: !213)
!1453 = !DILocalVariable(name: "node", arg: 3, scope: !1447, file: !3, line: 824, type: !214)
!1454 = !DILocalVariable(name: "count", arg: 4, scope: !1447, file: !3, line: 824, type: !14)
!1455 = !DILocalVariable(name: "values", arg: 5, scope: !1447, file: !3, line: 824, type: !14)
!1456 = !DILocalVariable(name: "_r_a_p__v", scope: !1457, file: !3, line: 831, type: !315)
!1457 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 831, column: 2)
!1458 = !DILocation(line: 823, column: 39, scope: !1447)
!1459 = !DILocation(line: 823, column: 51, scope: !1447)
!1460 = !DILocation(line: 824, column: 27, scope: !1447)
!1461 = !DILocation(line: 824, column: 37, scope: !1447)
!1462 = !DILocation(line: 824, column: 48, scope: !1447)
!1463 = !DILocation(line: 826, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 826, column: 6)
!1465 = !DILocation(line: 826, column: 11, scope: !1464)
!1466 = !DILocation(line: 826, column: 15, scope: !1464)
!1467 = !DILocation(line: 826, column: 21, scope: !1464)
!1468 = !DILocation(line: 826, column: 24, scope: !1464)
!1469 = !DILocation(line: 826, column: 6, scope: !1447)
!1470 = !DILocation(line: 827, column: 18, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 826, column: 33)
!1472 = !DILocation(line: 827, column: 3, scope: !1471)
!1473 = !DILocation(line: 827, column: 9, scope: !1471)
!1474 = !DILocation(line: 827, column: 15, scope: !1471)
!1475 = !DILocation(line: 828, column: 22, scope: !1471)
!1476 = !DILocation(line: 828, column: 3, scope: !1471)
!1477 = !DILocation(line: 828, column: 9, scope: !1471)
!1478 = !DILocation(line: 828, column: 19, scope: !1471)
!1479 = !DILocation(line: 829, column: 2, scope: !1471)
!1480 = !DILocation(line: 831, column: 2, scope: !1447)
!1481 = !DILocation(line: 831, column: 2, scope: !1457)
!1482 = !DILocation(line: 831, column: 2, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 831, column: 2)
!1484 = !DILocation(line: 831, column: 2, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 831, column: 2)
!1486 = !DILocation(line: 831, column: 2, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 831, column: 2)
!1488 = !DILocation(line: 831, column: 2, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 831, column: 2)
!1490 = !DILocation(line: 831, column: 2, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 831, column: 2)
!1492 = !DILocation(line: 831, column: 2, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 831, column: 2)
!1494 = !DILocation(line: 831, column: 2, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 831, column: 2)
!1496 = !DILocation(line: 831, column: 2, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 831, column: 2)
!1498 = !{i64 2152870453}
!1499 = !DILocation(line: 831, column: 2, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 831, column: 2)
!1501 = !DILocation(line: 831, column: 2, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 831, column: 2)
!1503 = !DILocation(line: 831, column: 2, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 831, column: 2)
!1505 = !DILocation(line: 832, column: 1, scope: !1447)
!1506 = distinct !DISubprogram(name: "delete_node", scope: !3, file: !3, line: 543, type: !1507, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!533, !225, !214}
!1509 = !{!1510, !1511, !1512, !1513, !1515, !1520, !1522}
!1510 = !DILocalVariable(name: "root", arg: 1, scope: !1506, file: !3, line: 543, type: !225)
!1511 = !DILocalVariable(name: "node", arg: 2, scope: !1506, file: !3, line: 544, type: !214)
!1512 = !DILocalVariable(name: "deleted", scope: !1506, file: !3, line: 546, type: !533)
!1513 = !DILocalVariable(name: "parent", scope: !1514, file: !3, line: 549, type: !214)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 548, column: 5)
!1515 = !DILocalVariable(name: "__UNIQUE_ID_rcu222", scope: !1516, file: !3, line: 553, type: !213)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 553, column: 6)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 552, column: 8)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 551, column: 20)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 551, column: 7)
!1520 = !DILocalVariable(name: "__ret_warn_on", scope: !1521, file: !3, line: 572, type: !14)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 572, column: 3)
!1522 = !DILocalVariable(name: "__flags", scope: !1523, file: !3, line: 572, type: !14)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 572, column: 3)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 572, column: 3)
!1525 = !DILocation(line: 543, column: 49, scope: !1506)
!1526 = !DILocation(line: 544, column: 28, scope: !1506)
!1527 = !DILocation(line: 546, column: 2, scope: !1506)
!1528 = !DILocation(line: 546, column: 7, scope: !1506)
!1529 = !DILocation(line: 548, column: 2, scope: !1506)
!1530 = !DILocation(line: 549, column: 3, scope: !1514)
!1531 = !DILocation(line: 549, column: 27, scope: !1514)
!1532 = !DILocation(line: 551, column: 7, scope: !1519)
!1533 = !DILocation(line: 551, column: 13, scope: !1519)
!1534 = !DILocation(line: 551, column: 7, scope: !1514)
!1535 = !DILocation(line: 552, column: 22, scope: !1517)
!1536 = !DILocation(line: 552, column: 8, scope: !1517)
!1537 = !DILocation(line: 553, column: 6, scope: !1516)
!1538 = !DILocation(line: 553, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 553, column: 6)
!1540 = !DILocation(line: 553, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 553, column: 6)
!1542 = !DILocation(line: 553, column: 6, scope: !1517)
!1543 = !DILocation(line: 552, column: 28, scope: !1517)
!1544 = !DILocation(line: 552, column: 8, scope: !1518)
!1545 = !DILocation(line: 554, column: 34, scope: !1517)
!1546 = !DILocation(line: 554, column: 16, scope: !1517)
!1547 = !DILocation(line: 554, column: 13, scope: !1517)
!1548 = !DILocation(line: 554, column: 5, scope: !1517)
!1549 = !DILocation(line: 555, column: 11, scope: !1518)
!1550 = !DILocation(line: 555, column: 4, scope: !1518)
!1551 = !DILocation(line: 558, column: 12, scope: !1514)
!1552 = !DILocation(line: 558, column: 18, scope: !1514)
!1553 = !DILocation(line: 558, column: 10, scope: !1514)
!1554 = !DILocation(line: 559, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 559, column: 7)
!1556 = !DILocation(line: 559, column: 7, scope: !1514)
!1557 = !DILocation(line: 560, column: 4, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 559, column: 15)
!1559 = !DILocation(line: 560, column: 12, scope: !1558)
!1560 = !DILocation(line: 560, column: 18, scope: !1558)
!1561 = !DILocation(line: 560, column: 24, scope: !1558)
!1562 = !DILocation(line: 560, column: 32, scope: !1558)
!1563 = !DILocation(line: 561, column: 4, scope: !1558)
!1564 = !DILocation(line: 561, column: 12, scope: !1558)
!1565 = !DILocation(line: 561, column: 17, scope: !1558)
!1566 = !DILocation(line: 562, column: 3, scope: !1558)
!1567 = !DILocation(line: 567, column: 16, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 567, column: 8)
!1569 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 562, column: 10)
!1570 = !DILocation(line: 567, column: 9, scope: !1568)
!1571 = !DILocation(line: 567, column: 8, scope: !1569)
!1572 = !DILocation(line: 568, column: 24, scope: !1568)
!1573 = !DILocation(line: 568, column: 5, scope: !1568)
!1574 = !DILocation(line: 569, column: 4, scope: !1569)
!1575 = !DILocation(line: 569, column: 10, scope: !1569)
!1576 = !DILocation(line: 569, column: 18, scope: !1569)
!1577 = !DILocation(line: 572, column: 3, scope: !1521)
!1578 = !DILocation(line: 572, column: 3, scope: !1524)
!1579 = !DILocation(line: 572, column: 3, scope: !1523)
!1580 = !DILocation(line: 572, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 572, column: 3)
!1582 = !DILocation(line: 572, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 572, column: 3)
!1584 = !{i64 2152827472, i64 2152827501, i64 2152827547, i64 2152827605, i64 2152827659, i64 2152827713, i64 2152827768, i64 2152827799, i64 2152828107, i64 2152828113, i64 2152828160, i64 2152828183, i64 2152828209}
!1585 = !DILocation(line: 572, column: 3, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 572, column: 3)
!1587 = !DILocation(line: 572, column: 3, scope: !1514)
!1588 = !DILocation(line: 573, column: 24, scope: !1514)
!1589 = !DILocation(line: 573, column: 3, scope: !1514)
!1590 = !DILocation(line: 574, column: 11, scope: !1514)
!1591 = !DILocation(line: 576, column: 10, scope: !1514)
!1592 = !DILocation(line: 576, column: 8, scope: !1514)
!1593 = !DILocation(line: 577, column: 2, scope: !1506)
!1594 = !DILocation(line: 577, column: 2, scope: !1514)
!1595 = !DILocation(line: 577, column: 11, scope: !1506)
!1596 = distinct !{!1596, !1529, !1597, !635, !636}
!1597 = !DILocation(line: 577, column: 15, scope: !1506)
!1598 = !DILocation(line: 579, column: 9, scope: !1506)
!1599 = !DILocation(line: 579, column: 2, scope: !1506)
!1600 = !DILocation(line: 580, column: 1, scope: !1506)
!1601 = distinct !DISubprogram(name: "radix_tree_replace_slot", scope: !3, file: !3, line: 914, type: !1602, scopeLine: 916, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !225, !311, !213}
!1604 = !{!1605, !1606, !1607}
!1605 = !DILocalVariable(name: "root", arg: 1, scope: !1601, file: !3, line: 914, type: !225)
!1606 = !DILocalVariable(name: "slot", arg: 2, scope: !1601, file: !3, line: 915, type: !311)
!1607 = !DILocalVariable(name: "item", arg: 3, scope: !1601, file: !3, line: 915, type: !213)
!1608 = !DILocation(line: 914, column: 54, scope: !1601)
!1609 = !DILocation(line: 915, column: 22, scope: !1601)
!1610 = !DILocation(line: 915, column: 34, scope: !1601)
!1611 = !DILocation(line: 917, column: 23, scope: !1601)
!1612 = !DILocation(line: 917, column: 35, scope: !1601)
!1613 = !DILocation(line: 917, column: 41, scope: !1601)
!1614 = !DILocation(line: 917, column: 2, scope: !1601)
!1615 = !DILocation(line: 918, column: 1, scope: !1601)
!1616 = distinct !DISubprogram(name: "radix_tree_iter_replace", scope: !3, file: !3, line: 931, type: !1617, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1627)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !225, !1619, !311, !213}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radix_tree_iter", file: !6, line: 106, size: 256, elements: !1622)
!1622 = !{!1623, !1624, !1625, !1626}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1621, file: !6, line: 107, baseType: !301, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !1621, file: !6, line: 108, baseType: !301, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1621, file: !6, line: 109, baseType: !301, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1621, file: !6, line: 110, baseType: !214, size: 64, offset: 192)
!1627 = !{!1628, !1629, !1630, !1631}
!1628 = !DILocalVariable(name: "root", arg: 1, scope: !1616, file: !3, line: 931, type: !225)
!1629 = !DILocalVariable(name: "iter", arg: 2, scope: !1616, file: !3, line: 932, type: !1619)
!1630 = !DILocalVariable(name: "slot", arg: 3, scope: !1616, file: !3, line: 933, type: !311)
!1631 = !DILocalVariable(name: "item", arg: 4, scope: !1616, file: !3, line: 933, type: !213)
!1632 = !DILocation(line: 931, column: 54, scope: !1616)
!1633 = !DILocation(line: 932, column: 35, scope: !1616)
!1634 = !DILocation(line: 933, column: 18, scope: !1616)
!1635 = !DILocation(line: 933, column: 30, scope: !1616)
!1636 = !DILocation(line: 935, column: 23, scope: !1616)
!1637 = !DILocation(line: 935, column: 29, scope: !1616)
!1638 = !DILocation(line: 935, column: 35, scope: !1616)
!1639 = !DILocation(line: 935, column: 41, scope: !1616)
!1640 = !DILocation(line: 935, column: 47, scope: !1616)
!1641 = !DILocation(line: 935, column: 2, scope: !1616)
!1642 = !DILocation(line: 936, column: 1, scope: !1616)
!1643 = distinct !DISubprogram(name: "radix_tree_tag_set", scope: !3, file: !3, line: 967, type: !1644, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!213, !225, !301, !7}
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DILocalVariable(name: "root", arg: 1, scope: !1643, file: !3, line: 967, type: !225)
!1648 = !DILocalVariable(name: "index", arg: 2, scope: !1643, file: !3, line: 968, type: !301)
!1649 = !DILocalVariable(name: "tag", arg: 3, scope: !1643, file: !3, line: 968, type: !7)
!1650 = !DILocalVariable(name: "node", scope: !1643, file: !3, line: 970, type: !214)
!1651 = !DILocalVariable(name: "parent", scope: !1643, file: !3, line: 970, type: !214)
!1652 = !DILocalVariable(name: "maxindex", scope: !1643, file: !3, line: 971, type: !301)
!1653 = !DILocalVariable(name: "offset", scope: !1654, file: !3, line: 977, type: !7)
!1654 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 976, column: 44)
!1655 = !DILocation(line: 967, column: 50, scope: !1643)
!1656 = !DILocation(line: 968, column: 18, scope: !1643)
!1657 = !DILocation(line: 968, column: 38, scope: !1643)
!1658 = !DILocation(line: 970, column: 2, scope: !1643)
!1659 = !DILocation(line: 970, column: 26, scope: !1643)
!1660 = !DILocation(line: 970, column: 33, scope: !1643)
!1661 = !DILocation(line: 971, column: 2, scope: !1643)
!1662 = !DILocation(line: 971, column: 16, scope: !1643)
!1663 = !DILocation(line: 973, column: 23, scope: !1643)
!1664 = !DILocation(line: 973, column: 2, scope: !1643)
!1665 = !DILocation(line: 974, column: 2, scope: !1643)
!1666 = !DILocation(line: 974, column: 2, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 974, column: 2)
!1668 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 974, column: 2)
!1669 = !DILocation(line: 974, column: 2, scope: !1668)
!1670 = !DILocation(line: 974, column: 2, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 974, column: 2)
!1672 = !DILocation(line: 974, column: 2, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 974, column: 2)
!1674 = !DILocation(line: 974, column: 2, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 974, column: 2)
!1676 = !{i64 2152879728, i64 2152879757, i64 2152879803, i64 2152879861, i64 2152879915, i64 2152879969, i64 2152880024, i64 2152880055}
!1677 = !DILocation(line: 976, column: 2, scope: !1643)
!1678 = !DILocation(line: 976, column: 37, scope: !1643)
!1679 = !DILocation(line: 976, column: 9, scope: !1643)
!1680 = !DILocation(line: 977, column: 3, scope: !1654)
!1681 = !DILocation(line: 977, column: 12, scope: !1654)
!1682 = !DILocation(line: 979, column: 26, scope: !1654)
!1683 = !DILocation(line: 979, column: 12, scope: !1654)
!1684 = !DILocation(line: 979, column: 10, scope: !1654)
!1685 = !DILocation(line: 980, column: 31, scope: !1654)
!1686 = !DILocation(line: 980, column: 46, scope: !1654)
!1687 = !DILocation(line: 980, column: 12, scope: !1654)
!1688 = !DILocation(line: 980, column: 10, scope: !1654)
!1689 = !DILocation(line: 981, column: 3, scope: !1654)
!1690 = !DILocation(line: 981, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 981, column: 3)
!1692 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 981, column: 3)
!1693 = !DILocation(line: 981, column: 3, scope: !1692)
!1694 = !DILocation(line: 981, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 981, column: 3)
!1696 = !DILocation(line: 981, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 981, column: 3)
!1698 = !DILocation(line: 981, column: 3, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 981, column: 3)
!1700 = !{i64 2152880693, i64 2152880722, i64 2152880768, i64 2152880826, i64 2152880880, i64 2152880934, i64 2152880989, i64 2152881020}
!1701 = !DILocation(line: 983, column: 16, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 983, column: 7)
!1703 = !DILocation(line: 983, column: 24, scope: !1702)
!1704 = !DILocation(line: 983, column: 29, scope: !1702)
!1705 = !DILocation(line: 983, column: 8, scope: !1702)
!1706 = !DILocation(line: 983, column: 7, scope: !1654)
!1707 = !DILocation(line: 984, column: 12, scope: !1702)
!1708 = !DILocation(line: 984, column: 20, scope: !1702)
!1709 = !DILocation(line: 984, column: 25, scope: !1702)
!1710 = !DILocation(line: 984, column: 4, scope: !1702)
!1711 = !DILocation(line: 985, column: 2, scope: !1643)
!1712 = distinct !{!1712, !1677, !1711, !635, !636}
!1713 = !DILocation(line: 988, column: 20, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 988, column: 6)
!1715 = !DILocation(line: 988, column: 26, scope: !1714)
!1716 = !DILocation(line: 988, column: 7, scope: !1714)
!1717 = !DILocation(line: 988, column: 6, scope: !1643)
!1718 = !DILocation(line: 989, column: 16, scope: !1714)
!1719 = !DILocation(line: 989, column: 22, scope: !1714)
!1720 = !DILocation(line: 989, column: 3, scope: !1714)
!1721 = !DILocation(line: 991, column: 9, scope: !1643)
!1722 = !DILocation(line: 992, column: 1, scope: !1643)
!1723 = !DILocation(line: 991, column: 2, scope: !1643)
!1724 = distinct !DISubprogram(name: "tag_set", scope: !3, file: !3, line: 100, type: !1725, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !214, !7, !14}
!1727 = !{!1728, !1729, !1730}
!1728 = !DILocalVariable(name: "node", arg: 1, scope: !1724, file: !3, line: 100, type: !214)
!1729 = !DILocalVariable(name: "tag", arg: 2, scope: !1724, file: !3, line: 100, type: !7)
!1730 = !DILocalVariable(name: "offset", arg: 3, scope: !1724, file: !3, line: 101, type: !14)
!1731 = !DILocation(line: 100, column: 52, scope: !1724)
!1732 = !DILocation(line: 100, column: 71, scope: !1724)
!1733 = !DILocation(line: 101, column: 7, scope: !1724)
!1734 = !DILocation(line: 103, column: 2, scope: !1724)
!1735 = !DILocation(line: 104, column: 1, scope: !1724)
!1736 = distinct !DISubprogram(name: "root_tag_get", scope: !3, file: !3, line: 133, type: !1737, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!14, !1080, !7}
!1739 = !{!1740, !1741}
!1740 = !DILocalVariable(name: "root", arg: 1, scope: !1736, file: !3, line: 133, type: !1080)
!1741 = !DILocalVariable(name: "tag", arg: 2, scope: !1736, file: !3, line: 133, type: !7)
!1742 = !DILocation(line: 133, column: 62, scope: !1736)
!1743 = !DILocation(line: 133, column: 77, scope: !1736)
!1744 = !DILocation(line: 135, column: 22, scope: !1736)
!1745 = !DILocation(line: 135, column: 28, scope: !1736)
!1746 = !DILocation(line: 135, column: 46, scope: !1736)
!1747 = !DILocation(line: 135, column: 50, scope: !1736)
!1748 = !DILocation(line: 135, column: 42, scope: !1736)
!1749 = !DILocation(line: 135, column: 37, scope: !1736)
!1750 = !DILocation(line: 135, column: 2, scope: !1736)
!1751 = distinct !DISubprogram(name: "root_tag_set", scope: !3, file: !3, line: 118, type: !1752, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !225, !7}
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "root", arg: 1, scope: !1751, file: !3, line: 118, type: !225)
!1756 = !DILocalVariable(name: "tag", arg: 2, scope: !1751, file: !3, line: 118, type: !7)
!1757 = !DILocation(line: 118, column: 57, scope: !1751)
!1758 = !DILocation(line: 118, column: 72, scope: !1751)
!1759 = !DILocation(line: 120, column: 42, scope: !1751)
!1760 = !DILocation(line: 120, column: 46, scope: !1751)
!1761 = !DILocation(line: 120, column: 38, scope: !1751)
!1762 = !DILocation(line: 120, column: 2, scope: !1751)
!1763 = !DILocation(line: 120, column: 8, scope: !1751)
!1764 = !DILocation(line: 120, column: 17, scope: !1751)
!1765 = !DILocation(line: 121, column: 1, scope: !1751)
!1766 = distinct !DISubprogram(name: "radix_tree_tag_clear", scope: !3, file: !3, line: 1029, type: !1644, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1768 = !DILocalVariable(name: "root", arg: 1, scope: !1766, file: !3, line: 1029, type: !225)
!1769 = !DILocalVariable(name: "index", arg: 2, scope: !1766, file: !3, line: 1030, type: !301)
!1770 = !DILocalVariable(name: "tag", arg: 3, scope: !1766, file: !3, line: 1030, type: !7)
!1771 = !DILocalVariable(name: "node", scope: !1766, file: !3, line: 1032, type: !214)
!1772 = !DILocalVariable(name: "parent", scope: !1766, file: !3, line: 1032, type: !214)
!1773 = !DILocalVariable(name: "maxindex", scope: !1766, file: !3, line: 1033, type: !301)
!1774 = !DILocalVariable(name: "offset", scope: !1766, file: !3, line: 1034, type: !14)
!1775 = !DILocation(line: 1029, column: 52, scope: !1766)
!1776 = !DILocation(line: 1030, column: 18, scope: !1766)
!1777 = !DILocation(line: 1030, column: 38, scope: !1766)
!1778 = !DILocation(line: 1032, column: 2, scope: !1766)
!1779 = !DILocation(line: 1032, column: 26, scope: !1766)
!1780 = !DILocation(line: 1032, column: 33, scope: !1766)
!1781 = !DILocation(line: 1033, column: 2, scope: !1766)
!1782 = !DILocation(line: 1033, column: 16, scope: !1766)
!1783 = !DILocation(line: 1034, column: 2, scope: !1766)
!1784 = !DILocation(line: 1034, column: 6, scope: !1766)
!1785 = !DILocation(line: 1036, column: 23, scope: !1766)
!1786 = !DILocation(line: 1036, column: 2, scope: !1766)
!1787 = !DILocation(line: 1037, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1037, column: 6)
!1789 = !DILocation(line: 1037, column: 14, scope: !1788)
!1790 = !DILocation(line: 1037, column: 12, scope: !1788)
!1791 = !DILocation(line: 1037, column: 6, scope: !1766)
!1792 = !DILocation(line: 1038, column: 3, scope: !1788)
!1793 = !DILocation(line: 1040, column: 9, scope: !1766)
!1794 = !DILocation(line: 1042, column: 2, scope: !1766)
!1795 = !DILocation(line: 1042, column: 37, scope: !1766)
!1796 = !DILocation(line: 1042, column: 9, scope: !1766)
!1797 = !DILocation(line: 1043, column: 26, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1042, column: 44)
!1799 = !DILocation(line: 1043, column: 12, scope: !1798)
!1800 = !DILocation(line: 1043, column: 10, scope: !1798)
!1801 = !DILocation(line: 1044, column: 31, scope: !1798)
!1802 = !DILocation(line: 1044, column: 46, scope: !1798)
!1803 = !DILocation(line: 1044, column: 12, scope: !1798)
!1804 = !DILocation(line: 1044, column: 10, scope: !1798)
!1805 = distinct !{!1805, !1794, !1806, !635, !636}
!1806 = !DILocation(line: 1045, column: 2, scope: !1766)
!1807 = !DILocation(line: 1047, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1047, column: 6)
!1809 = !DILocation(line: 1047, column: 6, scope: !1766)
!1810 = !DILocation(line: 1048, column: 18, scope: !1808)
!1811 = !DILocation(line: 1048, column: 24, scope: !1808)
!1812 = !DILocation(line: 1048, column: 32, scope: !1808)
!1813 = !DILocation(line: 1048, column: 37, scope: !1808)
!1814 = !DILocation(line: 1048, column: 3, scope: !1808)
!1815 = !DILocation(line: 1050, column: 9, scope: !1766)
!1816 = !DILocation(line: 1050, column: 2, scope: !1766)
!1817 = !DILocation(line: 1051, column: 1, scope: !1766)
!1818 = distinct !DISubprogram(name: "node_tag_clear", scope: !3, file: !3, line: 995, type: !1819, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !225, !214, !7, !7}
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DILocalVariable(name: "root", arg: 1, scope: !1818, file: !3, line: 995, type: !225)
!1823 = !DILocalVariable(name: "node", arg: 2, scope: !1818, file: !3, line: 996, type: !214)
!1824 = !DILocalVariable(name: "tag", arg: 3, scope: !1818, file: !3, line: 997, type: !7)
!1825 = !DILocalVariable(name: "offset", arg: 4, scope: !1818, file: !3, line: 997, type: !7)
!1826 = !DILocation(line: 995, column: 52, scope: !1818)
!1827 = !DILocation(line: 996, column: 29, scope: !1818)
!1828 = !DILocation(line: 997, column: 18, scope: !1818)
!1829 = !DILocation(line: 997, column: 36, scope: !1818)
!1830 = !DILocation(line: 999, column: 2, scope: !1818)
!1831 = !DILocation(line: 999, column: 9, scope: !1818)
!1832 = !DILocation(line: 1000, column: 16, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 1000, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 999, column: 15)
!1835 = !DILocation(line: 1000, column: 22, scope: !1833)
!1836 = !DILocation(line: 1000, column: 27, scope: !1833)
!1837 = !DILocation(line: 1000, column: 8, scope: !1833)
!1838 = !DILocation(line: 1000, column: 7, scope: !1834)
!1839 = !DILocation(line: 1001, column: 4, scope: !1833)
!1840 = !DILocation(line: 1002, column: 13, scope: !1834)
!1841 = !DILocation(line: 1002, column: 19, scope: !1834)
!1842 = !DILocation(line: 1002, column: 24, scope: !1834)
!1843 = !DILocation(line: 1002, column: 3, scope: !1834)
!1844 = !DILocation(line: 1003, column: 19, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 1003, column: 7)
!1846 = !DILocation(line: 1003, column: 25, scope: !1845)
!1847 = !DILocation(line: 1003, column: 7, scope: !1845)
!1848 = !DILocation(line: 1003, column: 7, scope: !1834)
!1849 = !DILocation(line: 1004, column: 4, scope: !1845)
!1850 = !DILocation(line: 1006, column: 12, scope: !1834)
!1851 = !DILocation(line: 1006, column: 18, scope: !1834)
!1852 = !DILocation(line: 1006, column: 10, scope: !1834)
!1853 = !DILocation(line: 1007, column: 10, scope: !1834)
!1854 = !DILocation(line: 1007, column: 16, scope: !1834)
!1855 = !DILocation(line: 1007, column: 8, scope: !1834)
!1856 = distinct !{!1856, !1830, !1857, !635, !636}
!1857 = !DILocation(line: 1008, column: 2, scope: !1818)
!1858 = !DILocation(line: 1011, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1011, column: 6)
!1860 = !DILocation(line: 1011, column: 25, scope: !1859)
!1861 = !DILocation(line: 1011, column: 6, scope: !1859)
!1862 = !DILocation(line: 1011, column: 6, scope: !1818)
!1863 = !DILocation(line: 1012, column: 18, scope: !1859)
!1864 = !DILocation(line: 1012, column: 24, scope: !1859)
!1865 = !DILocation(line: 1012, column: 3, scope: !1859)
!1866 = !DILocation(line: 1013, column: 1, scope: !1818)
!1867 = distinct !DISubprogram(name: "radix_tree_iter_tag_clear", scope: !3, file: !3, line: 1060, type: !1868, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !225, !1619, !7}
!1870 = !{!1871, !1872, !1873}
!1871 = !DILocalVariable(name: "root", arg: 1, scope: !1867, file: !3, line: 1060, type: !225)
!1872 = !DILocalVariable(name: "iter", arg: 2, scope: !1867, file: !3, line: 1061, type: !1619)
!1873 = !DILocalVariable(name: "tag", arg: 3, scope: !1867, file: !3, line: 1061, type: !7)
!1874 = !DILocation(line: 1060, column: 56, scope: !1867)
!1875 = !DILocation(line: 1061, column: 34, scope: !1867)
!1876 = !DILocation(line: 1061, column: 53, scope: !1867)
!1877 = !DILocation(line: 1063, column: 17, scope: !1867)
!1878 = !DILocation(line: 1063, column: 23, scope: !1867)
!1879 = !DILocation(line: 1063, column: 29, scope: !1867)
!1880 = !DILocation(line: 1063, column: 35, scope: !1867)
!1881 = !DILocation(line: 1063, column: 52, scope: !1867)
!1882 = !DILocation(line: 1063, column: 40, scope: !1867)
!1883 = !DILocation(line: 1063, column: 2, scope: !1867)
!1884 = !DILocation(line: 1064, column: 1, scope: !1867)
!1885 = distinct !DISubprogram(name: "iter_offset", scope: !3, file: !3, line: 203, type: !1886, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!7, !1619}
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "iter", arg: 1, scope: !1885, file: !3, line: 203, type: !1619)
!1890 = !DILocation(line: 203, column: 63, scope: !1885)
!1891 = !DILocation(line: 205, column: 9, scope: !1885)
!1892 = !DILocation(line: 205, column: 15, scope: !1885)
!1893 = !DILocation(line: 205, column: 21, scope: !1885)
!1894 = !DILocation(line: 205, column: 2, scope: !1885)
!1895 = distinct !DISubprogram(name: "radix_tree_tag_get", scope: !3, file: !3, line: 1081, type: !1896, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!14, !1080, !301, !7}
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1899 = !DILocalVariable(name: "root", arg: 1, scope: !1895, file: !3, line: 1081, type: !1080)
!1900 = !DILocalVariable(name: "index", arg: 2, scope: !1895, file: !3, line: 1082, type: !301)
!1901 = !DILocalVariable(name: "tag", arg: 3, scope: !1895, file: !3, line: 1082, type: !7)
!1902 = !DILocalVariable(name: "node", scope: !1895, file: !3, line: 1084, type: !214)
!1903 = !DILocalVariable(name: "parent", scope: !1895, file: !3, line: 1084, type: !214)
!1904 = !DILocalVariable(name: "maxindex", scope: !1895, file: !3, line: 1085, type: !301)
!1905 = !DILocalVariable(name: "offset", scope: !1906, file: !3, line: 1095, type: !7)
!1906 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 1094, column: 44)
!1907 = !DILocation(line: 1081, column: 54, scope: !1895)
!1908 = !DILocation(line: 1082, column: 18, scope: !1895)
!1909 = !DILocation(line: 1082, column: 38, scope: !1895)
!1910 = !DILocation(line: 1084, column: 2, scope: !1895)
!1911 = !DILocation(line: 1084, column: 26, scope: !1895)
!1912 = !DILocation(line: 1084, column: 33, scope: !1895)
!1913 = !DILocation(line: 1085, column: 2, scope: !1895)
!1914 = !DILocation(line: 1085, column: 16, scope: !1895)
!1915 = !DILocation(line: 1087, column: 20, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 1087, column: 6)
!1917 = !DILocation(line: 1087, column: 26, scope: !1916)
!1918 = !DILocation(line: 1087, column: 7, scope: !1916)
!1919 = !DILocation(line: 1087, column: 6, scope: !1895)
!1920 = !DILocation(line: 1088, column: 3, scope: !1916)
!1921 = !DILocation(line: 1090, column: 23, scope: !1895)
!1922 = !DILocation(line: 1090, column: 2, scope: !1895)
!1923 = !DILocation(line: 1091, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 1091, column: 6)
!1925 = !DILocation(line: 1091, column: 14, scope: !1924)
!1926 = !DILocation(line: 1091, column: 12, scope: !1924)
!1927 = !DILocation(line: 1091, column: 6, scope: !1895)
!1928 = !DILocation(line: 1092, column: 3, scope: !1924)
!1929 = !DILocation(line: 1094, column: 2, scope: !1895)
!1930 = !DILocation(line: 1094, column: 37, scope: !1895)
!1931 = !DILocation(line: 1094, column: 9, scope: !1895)
!1932 = !DILocation(line: 1095, column: 3, scope: !1906)
!1933 = !DILocation(line: 1095, column: 12, scope: !1906)
!1934 = !DILocation(line: 1097, column: 26, scope: !1906)
!1935 = !DILocation(line: 1097, column: 12, scope: !1906)
!1936 = !DILocation(line: 1097, column: 10, scope: !1906)
!1937 = !DILocation(line: 1098, column: 31, scope: !1906)
!1938 = !DILocation(line: 1098, column: 46, scope: !1906)
!1939 = !DILocation(line: 1098, column: 12, scope: !1906)
!1940 = !DILocation(line: 1098, column: 10, scope: !1906)
!1941 = !DILocation(line: 1100, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1100, column: 7)
!1943 = !DILocation(line: 1100, column: 24, scope: !1942)
!1944 = !DILocation(line: 1100, column: 29, scope: !1942)
!1945 = !DILocation(line: 1100, column: 8, scope: !1942)
!1946 = !DILocation(line: 1100, column: 7, scope: !1906)
!1947 = !DILocation(line: 1101, column: 4, scope: !1942)
!1948 = !DILocation(line: 1102, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1102, column: 7)
!1950 = !DILocation(line: 1102, column: 15, scope: !1949)
!1951 = !DILocation(line: 1102, column: 12, scope: !1949)
!1952 = !DILocation(line: 1102, column: 7, scope: !1906)
!1953 = !DILocation(line: 1103, column: 4, scope: !1949)
!1954 = !DILocation(line: 1104, column: 2, scope: !1895)
!1955 = distinct !{!1955, !1929, !1954, !635, !636}
!1956 = !DILocation(line: 1106, column: 2, scope: !1895)
!1957 = !DILocation(line: 1107, column: 1, scope: !1895)
!1958 = distinct !DISubprogram(name: "radix_tree_iter_resume", scope: !3, file: !3, line: 1136, type: !1959, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!311, !311, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1962 = !{!1963, !1964}
!1963 = !DILocalVariable(name: "slot", arg: 1, scope: !1958, file: !3, line: 1136, type: !311)
!1964 = !DILocalVariable(name: "iter", arg: 2, scope: !1958, file: !3, line: 1137, type: !1961)
!1965 = !DILocation(line: 1136, column: 50, scope: !1958)
!1966 = !DILocation(line: 1137, column: 30, scope: !1958)
!1967 = !DILocation(line: 1139, column: 38, scope: !1958)
!1968 = !DILocation(line: 1139, column: 16, scope: !1958)
!1969 = !DILocation(line: 1139, column: 2, scope: !1958)
!1970 = !DILocation(line: 1139, column: 8, scope: !1958)
!1971 = !DILocation(line: 1139, column: 14, scope: !1958)
!1972 = !DILocation(line: 1140, column: 21, scope: !1958)
!1973 = !DILocation(line: 1140, column: 27, scope: !1958)
!1974 = !DILocation(line: 1140, column: 2, scope: !1958)
!1975 = !DILocation(line: 1140, column: 8, scope: !1958)
!1976 = !DILocation(line: 1140, column: 19, scope: !1958)
!1977 = !DILocation(line: 1141, column: 2, scope: !1958)
!1978 = !DILocation(line: 1141, column: 8, scope: !1958)
!1979 = !DILocation(line: 1141, column: 13, scope: !1958)
!1980 = !DILocation(line: 1142, column: 2, scope: !1958)
!1981 = distinct !DISubprogram(name: "__radix_tree_iter_add", scope: !6, file: !6, line: 348, type: !1982, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!301, !1961, !301}
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "iter", arg: 1, scope: !1981, file: !6, line: 348, type: !1961)
!1986 = !DILocalVariable(name: "slots", arg: 2, scope: !1981, file: !6, line: 348, type: !301)
!1987 = !DILocation(line: 348, column: 47, scope: !1981)
!1988 = !DILocation(line: 348, column: 67, scope: !1981)
!1989 = !DILocation(line: 350, column: 9, scope: !1981)
!1990 = !DILocation(line: 350, column: 15, scope: !1981)
!1991 = !DILocation(line: 350, column: 23, scope: !1981)
!1992 = !DILocation(line: 350, column: 21, scope: !1981)
!1993 = !DILocation(line: 350, column: 2, scope: !1981)
!1994 = distinct !DISubprogram(name: "radix_tree_next_chunk", scope: !3, file: !3, line: 1154, type: !1995, scopeLine: 1156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!311, !1080, !1961, !7}
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2014, !2016}
!1998 = !DILocalVariable(name: "root", arg: 1, scope: !1994, file: !3, line: 1154, type: !1080)
!1999 = !DILocalVariable(name: "iter", arg: 2, scope: !1994, file: !3, line: 1155, type: !1961)
!2000 = !DILocalVariable(name: "flags", arg: 3, scope: !1994, file: !3, line: 1155, type: !7)
!2001 = !DILocalVariable(name: "tag", scope: !1994, file: !3, line: 1157, type: !7)
!2002 = !DILocalVariable(name: "node", scope: !1994, file: !3, line: 1158, type: !214)
!2003 = !DILocalVariable(name: "child", scope: !1994, file: !3, line: 1158, type: !214)
!2004 = !DILocalVariable(name: "index", scope: !1994, file: !3, line: 1159, type: !301)
!2005 = !DILocalVariable(name: "offset", scope: !1994, file: !3, line: 1159, type: !301)
!2006 = !DILocalVariable(name: "maxindex", scope: !1994, file: !3, line: 1159, type: !301)
!2007 = !DILabel(scope: !1994, name: "restart", file: !3, line: 1177)
!2008 = !DILocalVariable(name: "slot", scope: !2009, file: !3, line: 1208, type: !213)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 1207, column: 44)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1203, column: 8)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1198, column: 43)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1197, column: 7)
!2013 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1193, column: 5)
!2014 = !DILocalVariable(name: "__UNIQUE_ID_rcu247", scope: !2015, file: !3, line: 1208, type: !213)
!2015 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1208, column: 19)
!2016 = !DILocalVariable(name: "__UNIQUE_ID_rcu249", scope: !2017, file: !3, line: 1220, type: !213)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1220, column: 12)
!2018 = !DILocation(line: 1154, column: 66, scope: !1994)
!2019 = !DILocation(line: 1155, column: 33, scope: !1994)
!2020 = !DILocation(line: 1155, column: 48, scope: !1994)
!2021 = !DILocation(line: 1157, column: 2, scope: !1994)
!2022 = !DILocation(line: 1157, column: 11, scope: !1994)
!2023 = !DILocation(line: 1157, column: 17, scope: !1994)
!2024 = !DILocation(line: 1157, column: 23, scope: !1994)
!2025 = !DILocation(line: 1158, column: 2, scope: !1994)
!2026 = !DILocation(line: 1158, column: 26, scope: !1994)
!2027 = !DILocation(line: 1158, column: 33, scope: !1994)
!2028 = !DILocation(line: 1159, column: 2, scope: !1994)
!2029 = !DILocation(line: 1159, column: 16, scope: !1994)
!2030 = !DILocation(line: 1159, column: 23, scope: !1994)
!2031 = !DILocation(line: 1159, column: 31, scope: !1994)
!2032 = !DILocation(line: 1161, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1161, column: 6)
!2034 = !DILocation(line: 1161, column: 13, scope: !2033)
!2035 = !DILocation(line: 1161, column: 39, scope: !2033)
!2036 = !DILocation(line: 1161, column: 56, scope: !2033)
!2037 = !DILocation(line: 1161, column: 62, scope: !2033)
!2038 = !DILocation(line: 1161, column: 43, scope: !2033)
!2039 = !DILocation(line: 1161, column: 6, scope: !1994)
!2040 = !DILocation(line: 1162, column: 3, scope: !2033)
!2041 = !DILocation(line: 1173, column: 10, scope: !1994)
!2042 = !DILocation(line: 1173, column: 16, scope: !1994)
!2043 = !DILocation(line: 1173, column: 8, scope: !1994)
!2044 = !DILocation(line: 1174, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1174, column: 6)
!2046 = !DILocation(line: 1174, column: 13, scope: !2045)
!2047 = !DILocation(line: 1174, column: 16, scope: !2045)
!2048 = !DILocation(line: 1174, column: 22, scope: !2045)
!2049 = !DILocation(line: 1174, column: 6, scope: !1994)
!2050 = !DILocation(line: 1175, column: 3, scope: !2045)
!2051 = !DILocation(line: 1177, column: 2, scope: !1994)
!2052 = !DILocation(line: 1178, column: 23, scope: !1994)
!2053 = !DILocation(line: 1178, column: 2, scope: !1994)
!2054 = !DILocation(line: 1179, column: 6, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1179, column: 6)
!2056 = !DILocation(line: 1179, column: 14, scope: !2055)
!2057 = !DILocation(line: 1179, column: 12, scope: !2055)
!2058 = !DILocation(line: 1179, column: 6, scope: !1994)
!2059 = !DILocation(line: 1180, column: 3, scope: !2055)
!2060 = !DILocation(line: 1181, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1181, column: 6)
!2062 = !DILocation(line: 1181, column: 6, scope: !1994)
!2063 = !DILocation(line: 1182, column: 3, scope: !2061)
!2064 = !DILocation(line: 1184, column: 35, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1184, column: 6)
!2066 = !DILocation(line: 1184, column: 7, scope: !2065)
!2067 = !DILocation(line: 1184, column: 6, scope: !1994)
!2068 = !DILocation(line: 1186, column: 17, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1184, column: 43)
!2070 = !DILocation(line: 1186, column: 3, scope: !2069)
!2071 = !DILocation(line: 1186, column: 9, scope: !2069)
!2072 = !DILocation(line: 1186, column: 15, scope: !2069)
!2073 = !DILocation(line: 1187, column: 22, scope: !2069)
!2074 = !DILocation(line: 1187, column: 31, scope: !2069)
!2075 = !DILocation(line: 1187, column: 3, scope: !2069)
!2076 = !DILocation(line: 1187, column: 9, scope: !2069)
!2077 = !DILocation(line: 1187, column: 20, scope: !2069)
!2078 = !DILocation(line: 1188, column: 3, scope: !2069)
!2079 = !DILocation(line: 1188, column: 9, scope: !2069)
!2080 = !DILocation(line: 1188, column: 14, scope: !2069)
!2081 = !DILocation(line: 1189, column: 3, scope: !2069)
!2082 = !DILocation(line: 1189, column: 9, scope: !2069)
!2083 = !DILocation(line: 1189, column: 14, scope: !2069)
!2084 = !DILocation(line: 1190, column: 26, scope: !2069)
!2085 = !DILocation(line: 1190, column: 32, scope: !2069)
!2086 = !DILocation(line: 1190, column: 3, scope: !2069)
!2087 = !DILocation(line: 1193, column: 2, scope: !1994)
!2088 = !DILocation(line: 1194, column: 24, scope: !2013)
!2089 = !DILocation(line: 1194, column: 10, scope: !2013)
!2090 = !DILocation(line: 1194, column: 8, scope: !2013)
!2091 = !DILocation(line: 1195, column: 31, scope: !2013)
!2092 = !DILocation(line: 1195, column: 45, scope: !2013)
!2093 = !DILocation(line: 1195, column: 12, scope: !2013)
!2094 = !DILocation(line: 1195, column: 10, scope: !2013)
!2095 = !DILocation(line: 1197, column: 8, scope: !2012)
!2096 = !DILocation(line: 1197, column: 14, scope: !2012)
!2097 = !DILocation(line: 1197, column: 7, scope: !2013)
!2098 = !DILocation(line: 1198, column: 14, scope: !2012)
!2099 = !DILocation(line: 1198, column: 20, scope: !2012)
!2100 = !DILocation(line: 1198, column: 25, scope: !2012)
!2101 = !DILocation(line: 1198, column: 6, scope: !2012)
!2102 = !DILocation(line: 1197, column: 7, scope: !2012)
!2103 = !DILocation(line: 1198, column: 36, scope: !2012)
!2104 = !DILocation(line: 1200, column: 8, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1200, column: 8)
!2106 = !DILocation(line: 1200, column: 14, scope: !2105)
!2107 = !DILocation(line: 1200, column: 8, scope: !2011)
!2108 = !DILocation(line: 1201, column: 5, scope: !2105)
!2109 = !DILocation(line: 1203, column: 8, scope: !2010)
!2110 = !DILocation(line: 1203, column: 14, scope: !2010)
!2111 = !DILocation(line: 1203, column: 8, scope: !2011)
!2112 = !DILocation(line: 1204, column: 39, scope: !2010)
!2113 = !DILocation(line: 1204, column: 45, scope: !2010)
!2114 = !DILocation(line: 1205, column: 7, scope: !2010)
!2115 = !DILocation(line: 1205, column: 14, scope: !2010)
!2116 = !DILocation(line: 1204, column: 14, scope: !2010)
!2117 = !DILocation(line: 1204, column: 12, scope: !2010)
!2118 = !DILocation(line: 1204, column: 5, scope: !2010)
!2119 = !DILocation(line: 1207, column: 5, scope: !2010)
!2120 = !DILocation(line: 1207, column: 12, scope: !2010)
!2121 = !DILocation(line: 1207, column: 21, scope: !2010)
!2122 = !DILocation(line: 1208, column: 6, scope: !2009)
!2123 = !DILocation(line: 1208, column: 12, scope: !2009)
!2124 = !DILocation(line: 1208, column: 19, scope: !2015)
!2125 = !DILocation(line: 1208, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 1208, column: 19)
!2127 = !DILocation(line: 1208, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1208, column: 19)
!2129 = !DILocation(line: 1208, column: 19, scope: !2009)
!2130 = !DILocation(line: 1210, column: 10, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1210, column: 10)
!2132 = !DILocation(line: 1210, column: 10, scope: !2009)
!2133 = !DILocation(line: 1211, column: 7, scope: !2131)
!2134 = !DILocation(line: 1212, column: 5, scope: !2010)
!2135 = distinct !{!2135, !2119, !2134, !635, !636}
!2136 = !DILocation(line: 1213, column: 28, scope: !2011)
!2137 = !DILocation(line: 1213, column: 14, scope: !2011)
!2138 = !DILocation(line: 1213, column: 13, scope: !2011)
!2139 = !DILocation(line: 1213, column: 10, scope: !2011)
!2140 = !DILocation(line: 1214, column: 13, scope: !2011)
!2141 = !DILocation(line: 1214, column: 23, scope: !2011)
!2142 = !DILocation(line: 1214, column: 29, scope: !2011)
!2143 = !DILocation(line: 1214, column: 20, scope: !2011)
!2144 = !DILocation(line: 1214, column: 10, scope: !2011)
!2145 = !DILocation(line: 1216, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1216, column: 8)
!2147 = !DILocation(line: 1216, column: 8, scope: !2011)
!2148 = !DILocation(line: 1217, column: 5, scope: !2146)
!2149 = !DILocation(line: 1218, column: 8, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1218, column: 8)
!2151 = !DILocation(line: 1218, column: 15, scope: !2150)
!2152 = !DILocation(line: 1218, column: 8, scope: !2011)
!2153 = !DILocation(line: 1219, column: 5, scope: !2150)
!2154 = !DILocation(line: 1220, column: 12, scope: !2017)
!2155 = !DILocation(line: 1220, column: 12, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1220, column: 12)
!2157 = !DILocation(line: 1220, column: 12, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 1220, column: 12)
!2159 = !DILocation(line: 1220, column: 12, scope: !2011)
!2160 = !DILocation(line: 1220, column: 10, scope: !2011)
!2161 = !DILocation(line: 1221, column: 3, scope: !2011)
!2162 = !DILocation(line: 1223, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1223, column: 7)
!2164 = !DILocation(line: 1223, column: 7, scope: !2013)
!2165 = !DILocation(line: 1224, column: 4, scope: !2163)
!2166 = !DILocation(line: 1225, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1225, column: 7)
!2168 = !DILocation(line: 1225, column: 16, scope: !2167)
!2169 = !DILocation(line: 1225, column: 13, scope: !2167)
!2170 = !DILocation(line: 1225, column: 7, scope: !2013)
!2171 = !DILocation(line: 1226, column: 4, scope: !2167)
!2172 = !DILocation(line: 1227, column: 2, scope: !2013)
!2173 = !DILocation(line: 1227, column: 11, scope: !1994)
!2174 = !DILocation(line: 1227, column: 17, scope: !1994)
!2175 = !DILocation(line: 1227, column: 23, scope: !1994)
!2176 = !DILocation(line: 1227, column: 54, scope: !1994)
!2177 = !DILocation(line: 1227, column: 26, scope: !1994)
!2178 = !DILocation(line: 0, scope: !1994)
!2179 = distinct !{!2179, !2087, !2180, !635, !636}
!2180 = !DILocation(line: 1227, column: 60, scope: !1994)
!2181 = !DILocation(line: 1230, column: 17, scope: !1994)
!2182 = !DILocation(line: 1230, column: 40, scope: !1994)
!2183 = !DILocation(line: 1230, column: 26, scope: !1994)
!2184 = !DILocation(line: 1230, column: 24, scope: !1994)
!2185 = !DILocation(line: 1230, column: 23, scope: !1994)
!2186 = !DILocation(line: 1230, column: 49, scope: !1994)
!2187 = !DILocation(line: 1230, column: 47, scope: !1994)
!2188 = !DILocation(line: 1230, column: 2, scope: !1994)
!2189 = !DILocation(line: 1230, column: 8, scope: !1994)
!2190 = !DILocation(line: 1230, column: 14, scope: !1994)
!2191 = !DILocation(line: 1231, column: 22, scope: !1994)
!2192 = !DILocation(line: 1231, column: 44, scope: !1994)
!2193 = !DILocation(line: 1231, column: 30, scope: !1994)
!2194 = !DILocation(line: 1231, column: 28, scope: !1994)
!2195 = !DILocation(line: 1231, column: 51, scope: !1994)
!2196 = !DILocation(line: 1231, column: 2, scope: !1994)
!2197 = !DILocation(line: 1231, column: 8, scope: !1994)
!2198 = !DILocation(line: 1231, column: 19, scope: !1994)
!2199 = !DILocation(line: 1232, column: 15, scope: !1994)
!2200 = !DILocation(line: 1232, column: 2, scope: !1994)
!2201 = !DILocation(line: 1232, column: 8, scope: !1994)
!2202 = !DILocation(line: 1232, column: 13, scope: !1994)
!2203 = !DILocation(line: 1234, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1234, column: 6)
!2205 = !DILocation(line: 1234, column: 12, scope: !2204)
!2206 = !DILocation(line: 1234, column: 6, scope: !1994)
!2207 = !DILocation(line: 1235, column: 17, scope: !2204)
!2208 = !DILocation(line: 1235, column: 23, scope: !2204)
!2209 = !DILocation(line: 1235, column: 29, scope: !2204)
!2210 = !DILocation(line: 1235, column: 37, scope: !2204)
!2211 = !DILocation(line: 1235, column: 3, scope: !2204)
!2212 = !DILocation(line: 1237, column: 9, scope: !1994)
!2213 = !DILocation(line: 1237, column: 15, scope: !1994)
!2214 = !DILocation(line: 1237, column: 23, scope: !1994)
!2215 = !DILocation(line: 1237, column: 21, scope: !1994)
!2216 = !DILocation(line: 1237, column: 2, scope: !1994)
!2217 = !DILocation(line: 1238, column: 1, scope: !1994)
!2218 = distinct !DISubprogram(name: "radix_tree_find_next_bit", scope: !3, file: !3, line: 180, type: !2219, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!301, !214, !7, !301}
!2221 = !{!2222, !2223, !2224, !2225, !2226}
!2222 = !DILocalVariable(name: "node", arg: 1, scope: !2218, file: !3, line: 180, type: !214)
!2223 = !DILocalVariable(name: "tag", arg: 2, scope: !2218, file: !3, line: 180, type: !7)
!2224 = !DILocalVariable(name: "offset", arg: 3, scope: !2218, file: !3, line: 181, type: !301)
!2225 = !DILocalVariable(name: "addr", scope: !2218, file: !3, line: 183, type: !328)
!2226 = !DILocalVariable(name: "tmp", scope: !2227, file: !3, line: 186, type: !301)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 185, column: 36)
!2228 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 185, column: 6)
!2229 = !DILocation(line: 180, column: 50, scope: !2218)
!2230 = !DILocation(line: 180, column: 69, scope: !2218)
!2231 = !DILocation(line: 181, column: 19, scope: !2218)
!2232 = !DILocation(line: 183, column: 2, scope: !2218)
!2233 = !DILocation(line: 183, column: 23, scope: !2218)
!2234 = !DILocation(line: 183, column: 30, scope: !2218)
!2235 = !DILocation(line: 183, column: 36, scope: !2218)
!2236 = !DILocation(line: 183, column: 41, scope: !2218)
!2237 = !DILocation(line: 185, column: 6, scope: !2228)
!2238 = !DILocation(line: 185, column: 13, scope: !2228)
!2239 = !DILocation(line: 185, column: 6, scope: !2218)
!2240 = !DILocation(line: 186, column: 3, scope: !2227)
!2241 = !DILocation(line: 186, column: 17, scope: !2227)
!2242 = !DILocation(line: 188, column: 11, scope: !2227)
!2243 = !DILocation(line: 188, column: 18, scope: !2227)
!2244 = !DILocation(line: 188, column: 8, scope: !2227)
!2245 = !DILocation(line: 189, column: 10, scope: !2227)
!2246 = !DILocation(line: 189, column: 9, scope: !2227)
!2247 = !DILocation(line: 189, column: 19, scope: !2227)
!2248 = !DILocation(line: 189, column: 26, scope: !2227)
!2249 = !DILocation(line: 189, column: 15, scope: !2227)
!2250 = !DILocation(line: 189, column: 7, scope: !2227)
!2251 = !DILocation(line: 190, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 190, column: 7)
!2253 = !DILocation(line: 190, column: 7, scope: !2227)
!2254 = !DILocation(line: 191, column: 11, scope: !2252)
!2255 = !DILocation(line: 191, column: 24, scope: !2252)
!2256 = !DILocation(line: 191, column: 22, scope: !2252)
!2257 = !DILocation(line: 191, column: 4, scope: !2252)
!2258 = !DILocation(line: 192, column: 13, scope: !2227)
!2259 = !DILocation(line: 192, column: 20, scope: !2227)
!2260 = !DILocation(line: 192, column: 37, scope: !2227)
!2261 = !DILocation(line: 192, column: 10, scope: !2227)
!2262 = !DILocation(line: 193, column: 3, scope: !2227)
!2263 = !DILocation(line: 193, column: 10, scope: !2227)
!2264 = !DILocation(line: 193, column: 17, scope: !2227)
!2265 = !DILocation(line: 194, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 193, column: 40)
!2267 = !DILocation(line: 194, column: 10, scope: !2266)
!2268 = !DILocation(line: 194, column: 8, scope: !2266)
!2269 = !DILocation(line: 195, column: 8, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 195, column: 8)
!2271 = !DILocation(line: 195, column: 8, scope: !2266)
!2272 = !DILocation(line: 196, column: 12, scope: !2270)
!2273 = !DILocation(line: 196, column: 25, scope: !2270)
!2274 = !DILocation(line: 196, column: 23, scope: !2270)
!2275 = !DILocation(line: 196, column: 5, scope: !2270)
!2276 = !DILocation(line: 197, column: 11, scope: !2266)
!2277 = distinct !{!2277, !2262, !2278, !635, !636}
!2278 = !DILocation(line: 198, column: 3, scope: !2227)
!2279 = !DILocation(line: 199, column: 2, scope: !2228)
!2280 = !DILocation(line: 199, column: 2, scope: !2227)
!2281 = !DILocation(line: 200, column: 2, scope: !2218)
!2282 = !DILocation(line: 201, column: 1, scope: !2218)
!2283 = distinct !DISubprogram(name: "node_maxindex", scope: !3, file: !3, line: 216, type: !2284, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!301, !1052}
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "node", arg: 1, scope: !2283, file: !3, line: 216, type: !1052)
!2288 = !DILocation(line: 216, column: 73, scope: !2283)
!2289 = !DILocation(line: 218, column: 24, scope: !2283)
!2290 = !DILocation(line: 218, column: 30, scope: !2283)
!2291 = !DILocation(line: 218, column: 9, scope: !2283)
!2292 = !DILocation(line: 218, column: 2, scope: !2283)
!2293 = distinct !DISubprogram(name: "set_iter_tags", scope: !3, file: !3, line: 1111, type: !2294, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !1961, !214, !7, !7}
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302}
!2297 = !DILocalVariable(name: "iter", arg: 1, scope: !2293, file: !3, line: 1111, type: !1961)
!2298 = !DILocalVariable(name: "node", arg: 2, scope: !2293, file: !3, line: 1112, type: !214)
!2299 = !DILocalVariable(name: "offset", arg: 3, scope: !2293, file: !3, line: 1112, type: !7)
!2300 = !DILocalVariable(name: "tag", arg: 4, scope: !2293, file: !3, line: 1113, type: !7)
!2301 = !DILocalVariable(name: "tag_long", scope: !2293, file: !3, line: 1115, type: !7)
!2302 = !DILocalVariable(name: "tag_bit", scope: !2293, file: !3, line: 1116, type: !7)
!2303 = !DILocation(line: 1111, column: 51, scope: !2293)
!2304 = !DILocation(line: 1112, column: 29, scope: !2293)
!2305 = !DILocation(line: 1112, column: 44, scope: !2293)
!2306 = !DILocation(line: 1113, column: 14, scope: !2293)
!2307 = !DILocation(line: 1115, column: 2, scope: !2293)
!2308 = !DILocation(line: 1115, column: 11, scope: !2293)
!2309 = !DILocation(line: 1115, column: 22, scope: !2293)
!2310 = !DILocation(line: 1115, column: 29, scope: !2293)
!2311 = !DILocation(line: 1116, column: 2, scope: !2293)
!2312 = !DILocation(line: 1116, column: 11, scope: !2293)
!2313 = !DILocation(line: 1116, column: 22, scope: !2293)
!2314 = !DILocation(line: 1116, column: 29, scope: !2293)
!2315 = !DILocation(line: 1118, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 1118, column: 6)
!2317 = !DILocation(line: 1118, column: 6, scope: !2293)
!2318 = !DILocation(line: 1119, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 1118, column: 13)
!2320 = !DILocation(line: 1119, column: 9, scope: !2319)
!2321 = !DILocation(line: 1119, column: 14, scope: !2319)
!2322 = !DILocation(line: 1120, column: 3, scope: !2319)
!2323 = !DILocation(line: 1123, column: 15, scope: !2293)
!2324 = !DILocation(line: 1123, column: 21, scope: !2293)
!2325 = !DILocation(line: 1123, column: 26, scope: !2293)
!2326 = !DILocation(line: 1123, column: 31, scope: !2293)
!2327 = !DILocation(line: 1123, column: 44, scope: !2293)
!2328 = !DILocation(line: 1123, column: 41, scope: !2293)
!2329 = !DILocation(line: 1123, column: 2, scope: !2293)
!2330 = !DILocation(line: 1123, column: 8, scope: !2293)
!2331 = !DILocation(line: 1123, column: 13, scope: !2293)
!2332 = !DILocation(line: 1126, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 1126, column: 6)
!2334 = !DILocation(line: 1126, column: 15, scope: !2333)
!2335 = !DILocation(line: 1126, column: 6, scope: !2293)
!2336 = !DILocation(line: 1128, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1128, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1126, column: 43)
!2339 = !DILocation(line: 1128, column: 7, scope: !2338)
!2340 = !DILocation(line: 1129, column: 18, scope: !2337)
!2341 = !DILocation(line: 1129, column: 24, scope: !2337)
!2342 = !DILocation(line: 1129, column: 29, scope: !2337)
!2343 = !DILocation(line: 1129, column: 34, scope: !2337)
!2344 = !DILocation(line: 1129, column: 43, scope: !2337)
!2345 = !DILocation(line: 1130, column: 24, scope: !2337)
!2346 = !DILocation(line: 1130, column: 22, scope: !2337)
!2347 = !DILocation(line: 1129, column: 48, scope: !2337)
!2348 = !DILocation(line: 1129, column: 4, scope: !2337)
!2349 = !DILocation(line: 1129, column: 10, scope: !2337)
!2350 = !DILocation(line: 1129, column: 15, scope: !2337)
!2351 = !DILocation(line: 1132, column: 44, scope: !2338)
!2352 = !DILocation(line: 1132, column: 22, scope: !2338)
!2353 = !DILocation(line: 1132, column: 3, scope: !2338)
!2354 = !DILocation(line: 1132, column: 9, scope: !2338)
!2355 = !DILocation(line: 1132, column: 20, scope: !2338)
!2356 = !DILocation(line: 1133, column: 2, scope: !2338)
!2357 = !DILocation(line: 1134, column: 1, scope: !2293)
!2358 = distinct !DISubprogram(name: "radix_tree_gang_lookup", scope: !3, file: !3, line: 1262, type: !2359, scopeLine: 1264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!7, !1080, !311, !301, !7}
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2362 = !DILocalVariable(name: "root", arg: 1, scope: !2358, file: !3, line: 1262, type: !1080)
!2363 = !DILocalVariable(name: "results", arg: 2, scope: !2358, file: !3, line: 1262, type: !311)
!2364 = !DILocalVariable(name: "first_index", arg: 3, scope: !2358, file: !3, line: 1263, type: !301)
!2365 = !DILocalVariable(name: "max_items", arg: 4, scope: !2358, file: !3, line: 1263, type: !7)
!2366 = !DILocalVariable(name: "iter", scope: !2358, file: !3, line: 1265, type: !1621)
!2367 = !DILocalVariable(name: "slot", scope: !2358, file: !3, line: 1266, type: !311)
!2368 = !DILocalVariable(name: "ret", scope: !2358, file: !3, line: 1267, type: !7)
!2369 = !DILocalVariable(name: "__UNIQUE_ID_rcu252", scope: !2370, file: !3, line: 1273, type: !213)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1273, column: 18)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 1272, column: 59)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1272, column: 2)
!2373 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 1272, column: 2)
!2374 = !DILocation(line: 1262, column: 54, scope: !2358)
!2375 = !DILocation(line: 1262, column: 67, scope: !2358)
!2376 = !DILocation(line: 1263, column: 18, scope: !2358)
!2377 = !DILocation(line: 1263, column: 44, scope: !2358)
!2378 = !DILocation(line: 1265, column: 2, scope: !2358)
!2379 = !DILocation(line: 1265, column: 25, scope: !2358)
!2380 = !DILocation(line: 1266, column: 2, scope: !2358)
!2381 = !DILocation(line: 1266, column: 15, scope: !2358)
!2382 = !DILocation(line: 1267, column: 2, scope: !2358)
!2383 = !DILocation(line: 1267, column: 15, scope: !2358)
!2384 = !DILocation(line: 1269, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 1269, column: 6)
!2386 = !DILocation(line: 1269, column: 6, scope: !2358)
!2387 = !DILocation(line: 1270, column: 3, scope: !2385)
!2388 = !DILocation(line: 1272, column: 2, scope: !2373)
!2389 = !DILocation(line: 1272, column: 2, scope: !2372)
!2390 = !DILocation(line: 1273, column: 18, scope: !2370)
!2391 = !DILocation(line: 1273, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 1273, column: 18)
!2393 = !DILocation(line: 1273, column: 18, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1273, column: 18)
!2395 = !DILocation(line: 1273, column: 18, scope: !2371)
!2396 = !DILocation(line: 1273, column: 3, scope: !2371)
!2397 = !DILocation(line: 1273, column: 11, scope: !2371)
!2398 = !DILocation(line: 1273, column: 16, scope: !2371)
!2399 = !DILocation(line: 1274, column: 8, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1274, column: 7)
!2401 = !DILocation(line: 1274, column: 16, scope: !2400)
!2402 = !DILocation(line: 1274, column: 7, scope: !2371)
!2403 = !DILocation(line: 1275, column: 4, scope: !2400)
!2404 = !DILocation(line: 1276, column: 35, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1276, column: 7)
!2406 = !DILocation(line: 1276, column: 43, scope: !2405)
!2407 = !DILocation(line: 1276, column: 7, scope: !2405)
!2408 = !DILocation(line: 1276, column: 7, scope: !2371)
!2409 = !DILocation(line: 1277, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 1276, column: 50)
!2411 = !DILocation(line: 1277, column: 9, scope: !2410)
!2412 = !DILocation(line: 1278, column: 4, scope: !2410)
!2413 = !DILocation(line: 1280, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1280, column: 7)
!2415 = !DILocation(line: 1280, column: 16, scope: !2414)
!2416 = !DILocation(line: 1280, column: 13, scope: !2414)
!2417 = !DILocation(line: 1280, column: 7, scope: !2371)
!2418 = !DILocation(line: 1281, column: 4, scope: !2414)
!2419 = !DILocation(line: 1282, column: 2, scope: !2371)
!2420 = distinct !{!2420, !2388, !2421, !635, !636}
!2421 = !DILocation(line: 1282, column: 2, scope: !2373)
!2422 = !DILocation(line: 1284, column: 9, scope: !2358)
!2423 = !DILocation(line: 1284, column: 2, scope: !2358)
!2424 = !DILocation(line: 1285, column: 1, scope: !2358)
!2425 = distinct !DISubprogram(name: "radix_tree_iter_init", scope: !6, file: !6, line: 281, type: !2426, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!311, !1961, !301}
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "iter", arg: 1, scope: !2425, file: !6, line: 281, type: !1961)
!2430 = !DILocalVariable(name: "start", arg: 2, scope: !2425, file: !6, line: 281, type: !301)
!2431 = !DILocation(line: 281, column: 46, scope: !2425)
!2432 = !DILocation(line: 281, column: 66, scope: !2425)
!2433 = !DILocation(line: 291, column: 2, scope: !2425)
!2434 = !DILocation(line: 291, column: 8, scope: !2425)
!2435 = !DILocation(line: 291, column: 14, scope: !2425)
!2436 = !DILocation(line: 292, column: 21, scope: !2425)
!2437 = !DILocation(line: 292, column: 2, scope: !2425)
!2438 = !DILocation(line: 292, column: 8, scope: !2425)
!2439 = !DILocation(line: 292, column: 19, scope: !2425)
!2440 = !DILocation(line: 293, column: 2, scope: !2425)
!2441 = distinct !DISubprogram(name: "radix_tree_iter_retry", scope: !6, file: !6, line: 340, type: !2442, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!311, !1961}
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "iter", arg: 1, scope: !2441, file: !6, line: 340, type: !1961)
!2446 = !DILocation(line: 340, column: 60, scope: !2441)
!2447 = !DILocation(line: 342, column: 21, scope: !2441)
!2448 = !DILocation(line: 342, column: 27, scope: !2441)
!2449 = !DILocation(line: 342, column: 2, scope: !2441)
!2450 = !DILocation(line: 342, column: 8, scope: !2441)
!2451 = !DILocation(line: 342, column: 19, scope: !2441)
!2452 = !DILocation(line: 343, column: 2, scope: !2441)
!2453 = !DILocation(line: 343, column: 8, scope: !2441)
!2454 = !DILocation(line: 343, column: 13, scope: !2441)
!2455 = !DILocation(line: 344, column: 2, scope: !2441)
!2456 = distinct !DISubprogram(name: "radix_tree_next_slot", scope: !6, file: !6, line: 397, type: !2457, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!311, !311, !1961, !7}
!2459 = !{!2460, !2461, !2462, !2463, !2468, !2470}
!2460 = !DILocalVariable(name: "slot", arg: 1, scope: !2456, file: !6, line: 397, type: !311)
!2461 = !DILocalVariable(name: "iter", arg: 2, scope: !2456, file: !6, line: 398, type: !1961)
!2462 = !DILocalVariable(name: "flags", arg: 3, scope: !2456, file: !6, line: 398, type: !7)
!2463 = !DILocalVariable(name: "offset", scope: !2464, file: !6, line: 410, type: !7)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !6, line: 409, column: 42)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !6, line: 409, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !6, line: 400, column: 38)
!2467 = distinct !DILexicalBlock(scope: !2456, file: !6, line: 400, column: 6)
!2468 = !DILocalVariable(name: "count", scope: !2469, file: !6, line: 418, type: !335)
!2469 = distinct !DILexicalBlock(scope: !2467, file: !6, line: 417, column: 9)
!2470 = !DILabel(scope: !2456, name: "found", file: !6, line: 435)
!2471 = !DILocation(line: 397, column: 71, scope: !2456)
!2472 = !DILocation(line: 398, column: 29, scope: !2456)
!2473 = !DILocation(line: 398, column: 44, scope: !2456)
!2474 = !DILocation(line: 400, column: 6, scope: !2467)
!2475 = !DILocation(line: 400, column: 12, scope: !2467)
!2476 = !DILocation(line: 400, column: 6, scope: !2456)
!2477 = !DILocation(line: 401, column: 3, scope: !2466)
!2478 = !DILocation(line: 401, column: 9, scope: !2466)
!2479 = !DILocation(line: 401, column: 14, scope: !2466)
!2480 = !DILocation(line: 402, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2466, file: !6, line: 402, column: 7)
!2482 = !DILocation(line: 402, column: 7, scope: !2466)
!2483 = !DILocation(line: 403, column: 4, scope: !2481)
!2484 = !DILocation(line: 404, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2466, file: !6, line: 404, column: 7)
!2486 = !DILocation(line: 404, column: 7, scope: !2466)
!2487 = !DILocation(line: 405, column: 40, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !6, line: 404, column: 33)
!2489 = !DILocation(line: 405, column: 18, scope: !2488)
!2490 = !DILocation(line: 405, column: 4, scope: !2488)
!2491 = !DILocation(line: 405, column: 10, scope: !2488)
!2492 = !DILocation(line: 405, column: 16, scope: !2488)
!2493 = !DILocation(line: 406, column: 8, scope: !2488)
!2494 = !DILocation(line: 407, column: 4, scope: !2488)
!2495 = !DILocation(line: 409, column: 9, scope: !2465)
!2496 = !DILocation(line: 409, column: 15, scope: !2465)
!2497 = !DILocation(line: 409, column: 7, scope: !2466)
!2498 = !DILocation(line: 410, column: 4, scope: !2464)
!2499 = !DILocation(line: 410, column: 13, scope: !2464)
!2500 = !DILocation(line: 410, column: 22, scope: !2464)
!2501 = !DILocation(line: 412, column: 25, scope: !2464)
!2502 = !DILocation(line: 412, column: 4, scope: !2464)
!2503 = !DILocation(line: 412, column: 10, scope: !2464)
!2504 = !DILocation(line: 412, column: 15, scope: !2464)
!2505 = !DILocation(line: 413, column: 40, scope: !2464)
!2506 = !DILocation(line: 413, column: 46, scope: !2464)
!2507 = !DILocation(line: 413, column: 18, scope: !2464)
!2508 = !DILocation(line: 413, column: 4, scope: !2464)
!2509 = !DILocation(line: 413, column: 10, scope: !2464)
!2510 = !DILocation(line: 413, column: 16, scope: !2464)
!2511 = !DILocation(line: 414, column: 12, scope: !2464)
!2512 = !DILocation(line: 414, column: 9, scope: !2464)
!2513 = !DILocation(line: 416, column: 3, scope: !2465)
!2514 = !DILocation(line: 417, column: 2, scope: !2466)
!2515 = !DILocation(line: 418, column: 3, scope: !2469)
!2516 = !DILocation(line: 418, column: 8, scope: !2469)
!2517 = !DILocation(line: 418, column: 38, scope: !2469)
!2518 = !DILocation(line: 418, column: 16, scope: !2469)
!2519 = !DILocation(line: 420, column: 3, scope: !2469)
!2520 = !DILocation(line: 420, column: 10, scope: !2469)
!2521 = !DILocation(line: 420, column: 18, scope: !2469)
!2522 = !DILocation(line: 421, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2469, file: !6, line: 420, column: 23)
!2524 = !DILocation(line: 422, column: 40, scope: !2523)
!2525 = !DILocation(line: 422, column: 18, scope: !2523)
!2526 = !DILocation(line: 422, column: 4, scope: !2523)
!2527 = !DILocation(line: 422, column: 10, scope: !2523)
!2528 = !DILocation(line: 422, column: 16, scope: !2523)
!2529 = !DILocation(line: 424, column: 8, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 424, column: 8)
!2531 = !DILocation(line: 424, column: 8, scope: !2523)
!2532 = !DILocation(line: 425, column: 5, scope: !2530)
!2533 = !DILocation(line: 426, column: 8, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 426, column: 8)
!2535 = !DILocation(line: 426, column: 14, scope: !2534)
!2536 = !DILocation(line: 426, column: 8, scope: !2523)
!2537 = !DILocation(line: 428, column: 5, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !6, line: 426, column: 40)
!2539 = !DILocation(line: 428, column: 11, scope: !2538)
!2540 = !DILocation(line: 428, column: 22, scope: !2538)
!2541 = !DILocation(line: 429, column: 5, scope: !2538)
!2542 = distinct !{!2542, !2519, !2543, !635, !636}
!2543 = !DILocation(line: 431, column: 3, scope: !2469)
!2544 = !DILocation(line: 432, column: 2, scope: !2467)
!2545 = !DILocation(line: 433, column: 2, scope: !2456)
!2546 = !DILocation(line: 435, column: 2, scope: !2456)
!2547 = !DILocation(line: 436, column: 9, scope: !2456)
!2548 = !DILocation(line: 436, column: 2, scope: !2456)
!2549 = !DILocation(line: 437, column: 1, scope: !2456)
!2550 = distinct !DISubprogram(name: "radix_tree_gang_lookup_tag", scope: !3, file: !3, line: 1302, type: !2551, scopeLine: 1305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!7, !1080, !311, !301, !7, !7}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2554 = !DILocalVariable(name: "root", arg: 1, scope: !2550, file: !3, line: 1302, type: !1080)
!2555 = !DILocalVariable(name: "results", arg: 2, scope: !2550, file: !3, line: 1302, type: !311)
!2556 = !DILocalVariable(name: "first_index", arg: 3, scope: !2550, file: !3, line: 1303, type: !301)
!2557 = !DILocalVariable(name: "max_items", arg: 4, scope: !2550, file: !3, line: 1303, type: !7)
!2558 = !DILocalVariable(name: "tag", arg: 5, scope: !2550, file: !3, line: 1304, type: !7)
!2559 = !DILocalVariable(name: "iter", scope: !2550, file: !3, line: 1306, type: !1621)
!2560 = !DILocalVariable(name: "slot", scope: !2550, file: !3, line: 1307, type: !311)
!2561 = !DILocalVariable(name: "ret", scope: !2550, file: !3, line: 1308, type: !7)
!2562 = !DILocalVariable(name: "__UNIQUE_ID_rcu255", scope: !2563, file: !3, line: 1314, type: !213)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1314, column: 18)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1313, column: 66)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 1313, column: 2)
!2566 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1313, column: 2)
!2567 = !DILocation(line: 1302, column: 58, scope: !2550)
!2568 = !DILocation(line: 1302, column: 71, scope: !2550)
!2569 = !DILocation(line: 1303, column: 17, scope: !2550)
!2570 = !DILocation(line: 1303, column: 43, scope: !2550)
!2571 = !DILocation(line: 1304, column: 16, scope: !2550)
!2572 = !DILocation(line: 1306, column: 2, scope: !2550)
!2573 = !DILocation(line: 1306, column: 25, scope: !2550)
!2574 = !DILocation(line: 1307, column: 2, scope: !2550)
!2575 = !DILocation(line: 1307, column: 15, scope: !2550)
!2576 = !DILocation(line: 1308, column: 2, scope: !2550)
!2577 = !DILocation(line: 1308, column: 15, scope: !2550)
!2578 = !DILocation(line: 1310, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1310, column: 6)
!2580 = !DILocation(line: 1310, column: 6, scope: !2550)
!2581 = !DILocation(line: 1311, column: 3, scope: !2579)
!2582 = !DILocation(line: 1313, column: 2, scope: !2566)
!2583 = !DILocation(line: 1313, column: 2, scope: !2565)
!2584 = !DILocation(line: 1314, column: 18, scope: !2563)
!2585 = !DILocation(line: 1314, column: 18, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1314, column: 18)
!2587 = !DILocation(line: 1314, column: 18, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1314, column: 18)
!2589 = !DILocation(line: 1314, column: 18, scope: !2564)
!2590 = !DILocation(line: 1314, column: 3, scope: !2564)
!2591 = !DILocation(line: 1314, column: 11, scope: !2564)
!2592 = !DILocation(line: 1314, column: 16, scope: !2564)
!2593 = !DILocation(line: 1315, column: 8, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1315, column: 7)
!2595 = !DILocation(line: 1315, column: 16, scope: !2594)
!2596 = !DILocation(line: 1315, column: 7, scope: !2564)
!2597 = !DILocation(line: 1316, column: 4, scope: !2594)
!2598 = !DILocation(line: 1317, column: 35, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1317, column: 7)
!2600 = !DILocation(line: 1317, column: 43, scope: !2599)
!2601 = !DILocation(line: 1317, column: 7, scope: !2599)
!2602 = !DILocation(line: 1317, column: 7, scope: !2564)
!2603 = !DILocation(line: 1318, column: 11, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 1317, column: 50)
!2605 = !DILocation(line: 1318, column: 9, scope: !2604)
!2606 = !DILocation(line: 1319, column: 4, scope: !2604)
!2607 = !DILocation(line: 1321, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1321, column: 7)
!2609 = !DILocation(line: 1321, column: 16, scope: !2608)
!2610 = !DILocation(line: 1321, column: 13, scope: !2608)
!2611 = !DILocation(line: 1321, column: 7, scope: !2564)
!2612 = !DILocation(line: 1322, column: 4, scope: !2608)
!2613 = !DILocation(line: 1323, column: 2, scope: !2564)
!2614 = distinct !{!2614, !2582, !2615, !635, !636}
!2615 = !DILocation(line: 1323, column: 2, scope: !2566)
!2616 = !DILocation(line: 1325, column: 9, scope: !2550)
!2617 = !DILocation(line: 1325, column: 2, scope: !2550)
!2618 = !DILocation(line: 1326, column: 1, scope: !2550)
!2619 = distinct !DISubprogram(name: "radix_tree_gang_lookup_tag_slot", scope: !3, file: !3, line: 1343, type: !2620, scopeLine: 1346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!7, !1080, !834, !301, !7, !7}
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2623 = !DILocalVariable(name: "root", arg: 1, scope: !2619, file: !3, line: 1343, type: !1080)
!2624 = !DILocalVariable(name: "results", arg: 2, scope: !2619, file: !3, line: 1344, type: !834)
!2625 = !DILocalVariable(name: "first_index", arg: 3, scope: !2619, file: !3, line: 1344, type: !301)
!2626 = !DILocalVariable(name: "max_items", arg: 4, scope: !2619, file: !3, line: 1345, type: !7)
!2627 = !DILocalVariable(name: "tag", arg: 5, scope: !2619, file: !3, line: 1345, type: !7)
!2628 = !DILocalVariable(name: "iter", scope: !2619, file: !3, line: 1347, type: !1621)
!2629 = !DILocalVariable(name: "slot", scope: !2619, file: !3, line: 1348, type: !311)
!2630 = !DILocalVariable(name: "ret", scope: !2619, file: !3, line: 1349, type: !7)
!2631 = !DILocation(line: 1343, column: 63, scope: !2619)
!2632 = !DILocation(line: 1344, column: 17, scope: !2619)
!2633 = !DILocation(line: 1344, column: 40, scope: !2619)
!2634 = !DILocation(line: 1345, column: 16, scope: !2619)
!2635 = !DILocation(line: 1345, column: 40, scope: !2619)
!2636 = !DILocation(line: 1347, column: 2, scope: !2619)
!2637 = !DILocation(line: 1347, column: 25, scope: !2619)
!2638 = !DILocation(line: 1348, column: 2, scope: !2619)
!2639 = !DILocation(line: 1348, column: 15, scope: !2619)
!2640 = !DILocation(line: 1349, column: 2, scope: !2619)
!2641 = !DILocation(line: 1349, column: 15, scope: !2619)
!2642 = !DILocation(line: 1351, column: 6, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 1351, column: 6)
!2644 = !DILocation(line: 1351, column: 6, scope: !2619)
!2645 = !DILocation(line: 1352, column: 3, scope: !2643)
!2646 = !DILocation(line: 1354, column: 2, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 1354, column: 2)
!2648 = !DILocation(line: 1354, column: 2, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1354, column: 2)
!2650 = !DILocation(line: 1355, column: 18, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1354, column: 66)
!2652 = !DILocation(line: 1355, column: 3, scope: !2651)
!2653 = !DILocation(line: 1355, column: 11, scope: !2651)
!2654 = !DILocation(line: 1355, column: 16, scope: !2651)
!2655 = !DILocation(line: 1356, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1356, column: 7)
!2657 = !DILocation(line: 1356, column: 16, scope: !2656)
!2658 = !DILocation(line: 1356, column: 13, scope: !2656)
!2659 = !DILocation(line: 1356, column: 7, scope: !2651)
!2660 = !DILocation(line: 1357, column: 4, scope: !2656)
!2661 = !DILocation(line: 1358, column: 2, scope: !2651)
!2662 = distinct !{!2662, !2646, !2663, !635, !636}
!2663 = !DILocation(line: 1358, column: 2, scope: !2647)
!2664 = !DILocation(line: 1360, column: 9, scope: !2619)
!2665 = !DILocation(line: 1360, column: 2, scope: !2619)
!2666 = !DILocation(line: 1361, column: 1, scope: !2619)
!2667 = distinct !DISubprogram(name: "radix_tree_iter_delete", scope: !3, file: !3, line: 1394, type: !2668, scopeLine: 1396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !225, !1961, !311}
!2670 = !{!2671, !2672, !2673}
!2671 = !DILocalVariable(name: "root", arg: 1, scope: !2667, file: !3, line: 1394, type: !225)
!2672 = !DILocalVariable(name: "iter", arg: 2, scope: !2667, file: !3, line: 1395, type: !1961)
!2673 = !DILocalVariable(name: "slot", arg: 3, scope: !2667, file: !3, line: 1395, type: !311)
!2674 = !DILocation(line: 1394, column: 53, scope: !2667)
!2675 = !DILocation(line: 1395, column: 29, scope: !2667)
!2676 = !DILocation(line: 1395, column: 48, scope: !2667)
!2677 = !DILocation(line: 1397, column: 26, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1397, column: 6)
!2679 = !DILocation(line: 1397, column: 32, scope: !2678)
!2680 = !DILocation(line: 1397, column: 38, scope: !2678)
!2681 = !DILocation(line: 1397, column: 44, scope: !2678)
!2682 = !DILocation(line: 1397, column: 6, scope: !2678)
!2683 = !DILocation(line: 1397, column: 6, scope: !2667)
!2684 = !DILocation(line: 1398, column: 17, scope: !2678)
!2685 = !DILocation(line: 1398, column: 23, scope: !2678)
!2686 = !DILocation(line: 1398, column: 3, scope: !2678)
!2687 = !DILocation(line: 1398, column: 9, scope: !2678)
!2688 = !DILocation(line: 1398, column: 15, scope: !2678)
!2689 = !DILocation(line: 1399, column: 1, scope: !2667)
!2690 = distinct !DISubprogram(name: "__radix_tree_delete", scope: !3, file: !3, line: 1364, type: !2691, scopeLine: 1366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!533, !225, !214, !311}
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2700, !2701, !2702}
!2694 = !DILocalVariable(name: "root", arg: 1, scope: !2690, file: !3, line: 1364, type: !225)
!2695 = !DILocalVariable(name: "node", arg: 2, scope: !2690, file: !3, line: 1365, type: !214)
!2696 = !DILocalVariable(name: "slot", arg: 3, scope: !2690, file: !3, line: 1365, type: !311)
!2697 = !DILocalVariable(name: "old", scope: !2690, file: !3, line: 1367, type: !213)
!2698 = !DILocalVariable(name: "__UNIQUE_ID_rcu259", scope: !2699, file: !3, line: 1367, type: !213)
!2699 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1367, column: 14)
!2700 = !DILocalVariable(name: "values", scope: !2690, file: !3, line: 1368, type: !14)
!2701 = !DILocalVariable(name: "offset", scope: !2690, file: !3, line: 1369, type: !7)
!2702 = !DILocalVariable(name: "tag", scope: !2690, file: !3, line: 1370, type: !14)
!2703 = !DILocation(line: 1364, column: 57, scope: !2690)
!2704 = !DILocation(line: 1365, column: 29, scope: !2690)
!2705 = !DILocation(line: 1365, column: 48, scope: !2690)
!2706 = !DILocation(line: 1367, column: 2, scope: !2690)
!2707 = !DILocation(line: 1367, column: 8, scope: !2690)
!2708 = !DILocation(line: 1367, column: 14, scope: !2699)
!2709 = !DILocation(line: 1367, column: 14, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1367, column: 14)
!2711 = !DILocation(line: 1367, column: 14, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1367, column: 14)
!2713 = !DILocation(line: 1367, column: 14, scope: !2690)
!2714 = !DILocation(line: 1368, column: 2, scope: !2690)
!2715 = !DILocation(line: 1368, column: 6, scope: !2690)
!2716 = !DILocation(line: 1368, column: 27, scope: !2690)
!2717 = !DILocation(line: 1368, column: 15, scope: !2690)
!2718 = !DILocation(line: 1369, column: 2, scope: !2690)
!2719 = !DILocation(line: 1369, column: 11, scope: !2690)
!2720 = !DILocation(line: 1369, column: 36, scope: !2690)
!2721 = !DILocation(line: 1369, column: 42, scope: !2690)
!2722 = !DILocation(line: 1369, column: 20, scope: !2690)
!2723 = !DILocation(line: 1370, column: 2, scope: !2690)
!2724 = !DILocation(line: 1370, column: 6, scope: !2690)
!2725 = !DILocation(line: 1372, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1372, column: 6)
!2727 = !DILocation(line: 1372, column: 6, scope: !2726)
!2728 = !DILocation(line: 1372, column: 6, scope: !2690)
!2729 = !DILocation(line: 1373, column: 16, scope: !2726)
!2730 = !DILocation(line: 1373, column: 22, scope: !2726)
!2731 = !DILocation(line: 1373, column: 38, scope: !2726)
!2732 = !DILocation(line: 1373, column: 3, scope: !2726)
!2733 = !DILocation(line: 1375, column: 12, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1375, column: 3)
!2735 = !DILocation(line: 1375, column: 8, scope: !2734)
!2736 = !DILocation(line: 1375, column: 17, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1375, column: 3)
!2738 = !DILocation(line: 1375, column: 21, scope: !2737)
!2739 = !DILocation(line: 1375, column: 3, scope: !2734)
!2740 = !DILocation(line: 1376, column: 19, scope: !2737)
!2741 = !DILocation(line: 1376, column: 25, scope: !2737)
!2742 = !DILocation(line: 1376, column: 31, scope: !2737)
!2743 = !DILocation(line: 1376, column: 36, scope: !2737)
!2744 = !DILocation(line: 1376, column: 4, scope: !2737)
!2745 = !DILocation(line: 1375, column: 47, scope: !2737)
!2746 = !DILocation(line: 1375, column: 3, scope: !2737)
!2747 = distinct !{!2747, !2739, !2748, !635, !636}
!2748 = !DILocation(line: 1376, column: 42, scope: !2734)
!2749 = !DILocation(line: 1378, column: 15, scope: !2690)
!2750 = !DILocation(line: 1378, column: 27, scope: !2690)
!2751 = !DILocation(line: 1378, column: 37, scope: !2690)
!2752 = !DILocation(line: 1378, column: 2, scope: !2690)
!2753 = !DILocation(line: 1379, column: 9, scope: !2690)
!2754 = !DILocation(line: 1379, column: 14, scope: !2690)
!2755 = !DILocation(line: 1379, column: 29, scope: !2690)
!2756 = !DILocation(line: 1379, column: 35, scope: !2690)
!2757 = !DILocation(line: 1379, column: 17, scope: !2690)
!2758 = !DILocation(line: 0, scope: !2690)
!2759 = !DILocation(line: 1380, column: 1, scope: !2690)
!2760 = !DILocation(line: 1379, column: 2, scope: !2690)
!2761 = distinct !DISubprogram(name: "radix_tree_delete_item", scope: !3, file: !3, line: 1413, type: !2762, scopeLine: 1415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!213, !225, !301, !213}
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770}
!2765 = !DILocalVariable(name: "root", arg: 1, scope: !2761, file: !3, line: 1413, type: !225)
!2766 = !DILocalVariable(name: "index", arg: 2, scope: !2761, file: !3, line: 1414, type: !301)
!2767 = !DILocalVariable(name: "item", arg: 3, scope: !2761, file: !3, line: 1414, type: !213)
!2768 = !DILocalVariable(name: "node", scope: !2761, file: !3, line: 1416, type: !214)
!2769 = !DILocalVariable(name: "slot", scope: !2761, file: !3, line: 1417, type: !311)
!2770 = !DILocalVariable(name: "entry", scope: !2761, file: !3, line: 1418, type: !213)
!2771 = !DILocation(line: 1413, column: 54, scope: !2761)
!2772 = !DILocation(line: 1414, column: 23, scope: !2761)
!2773 = !DILocation(line: 1414, column: 36, scope: !2761)
!2774 = !DILocation(line: 1416, column: 2, scope: !2761)
!2775 = !DILocation(line: 1416, column: 26, scope: !2761)
!2776 = !DILocation(line: 1417, column: 2, scope: !2761)
!2777 = !DILocation(line: 1417, column: 15, scope: !2761)
!2778 = !DILocation(line: 1418, column: 2, scope: !2761)
!2779 = !DILocation(line: 1418, column: 8, scope: !2761)
!2780 = !DILocation(line: 1420, column: 30, scope: !2761)
!2781 = !DILocation(line: 1420, column: 36, scope: !2761)
!2782 = !DILocation(line: 1420, column: 10, scope: !2761)
!2783 = !DILocation(line: 1420, column: 8, scope: !2761)
!2784 = !DILocation(line: 1421, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1421, column: 6)
!2786 = !DILocation(line: 1421, column: 6, scope: !2761)
!2787 = !DILocation(line: 1422, column: 3, scope: !2785)
!2788 = !DILocation(line: 1423, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1423, column: 6)
!2790 = !DILocation(line: 1423, column: 13, scope: !2789)
!2791 = !DILocation(line: 1423, column: 25, scope: !2789)
!2792 = !DILocation(line: 1423, column: 18, scope: !2789)
!2793 = !DILocation(line: 1423, column: 31, scope: !2789)
!2794 = !DILocation(line: 1423, column: 47, scope: !2789)
!2795 = !DILocation(line: 1423, column: 53, scope: !2789)
!2796 = !DILocation(line: 1424, column: 23, scope: !2789)
!2797 = !DILocation(line: 1424, column: 29, scope: !2789)
!2798 = !DILocation(line: 1424, column: 7, scope: !2789)
!2799 = !DILocation(line: 1423, column: 34, scope: !2789)
!2800 = !DILocation(line: 1423, column: 6, scope: !2761)
!2801 = !DILocation(line: 1425, column: 3, scope: !2789)
!2802 = !DILocation(line: 1427, column: 6, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1427, column: 6)
!2804 = !DILocation(line: 1427, column: 11, scope: !2803)
!2805 = !DILocation(line: 1427, column: 14, scope: !2803)
!2806 = !DILocation(line: 1427, column: 23, scope: !2803)
!2807 = !DILocation(line: 1427, column: 20, scope: !2803)
!2808 = !DILocation(line: 1427, column: 6, scope: !2761)
!2809 = !DILocation(line: 1428, column: 3, scope: !2803)
!2810 = !DILocation(line: 1430, column: 22, scope: !2761)
!2811 = !DILocation(line: 1430, column: 28, scope: !2761)
!2812 = !DILocation(line: 1430, column: 34, scope: !2761)
!2813 = !DILocation(line: 1430, column: 2, scope: !2761)
!2814 = !DILocation(line: 1432, column: 9, scope: !2761)
!2815 = !DILocation(line: 1432, column: 2, scope: !2761)
!2816 = !DILocation(line: 1433, column: 1, scope: !2761)
!2817 = distinct !DISubprogram(name: "is_idr", scope: !3, file: !3, line: 143, type: !2818, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!533, !1080}
!2820 = !{!2821}
!2821 = !DILocalVariable(name: "root", arg: 1, scope: !2817, file: !3, line: 143, type: !1080)
!2822 = !DILocation(line: 143, column: 57, scope: !2817)
!2823 = !DILocation(line: 145, column: 12, scope: !2817)
!2824 = !DILocation(line: 145, column: 18, scope: !2817)
!2825 = !DILocation(line: 145, column: 27, scope: !2817)
!2826 = !DILocation(line: 145, column: 10, scope: !2817)
!2827 = !DILocation(line: 145, column: 9, scope: !2817)
!2828 = !DILocation(line: 145, column: 2, scope: !2817)
!2829 = distinct !DISubprogram(name: "node_tag_get", scope: !3, file: !3, line: 834, type: !2830, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!533, !1080, !1052, !7, !7}
!2832 = !{!2833, !2834, !2835, !2836}
!2833 = !DILocalVariable(name: "root", arg: 1, scope: !2829, file: !3, line: 834, type: !1080)
!2834 = !DILocalVariable(name: "node", arg: 2, scope: !2829, file: !3, line: 835, type: !1052)
!2835 = !DILocalVariable(name: "tag", arg: 3, scope: !2829, file: !3, line: 836, type: !7)
!2836 = !DILocalVariable(name: "offset", arg: 4, scope: !2829, file: !3, line: 836, type: !7)
!2837 = !DILocation(line: 834, column: 56, scope: !2829)
!2838 = !DILocation(line: 835, column: 35, scope: !2829)
!2839 = !DILocation(line: 836, column: 18, scope: !2829)
!2840 = !DILocation(line: 836, column: 36, scope: !2829)
!2841 = !DILocation(line: 838, column: 6, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 838, column: 6)
!2843 = !DILocation(line: 838, column: 6, scope: !2829)
!2844 = !DILocation(line: 839, column: 18, scope: !2842)
!2845 = !DILocation(line: 839, column: 24, scope: !2842)
!2846 = !DILocation(line: 839, column: 29, scope: !2842)
!2847 = !DILocation(line: 839, column: 10, scope: !2842)
!2848 = !DILocation(line: 839, column: 3, scope: !2842)
!2849 = !DILocation(line: 840, column: 22, scope: !2829)
!2850 = !DILocation(line: 840, column: 28, scope: !2829)
!2851 = !DILocation(line: 840, column: 9, scope: !2829)
!2852 = !DILocation(line: 840, column: 2, scope: !2829)
!2853 = !DILocation(line: 841, column: 1, scope: !2829)
!2854 = distinct !DISubprogram(name: "radix_tree_delete", scope: !3, file: !3, line: 1445, type: !2855, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!213, !225, !301}
!2857 = !{!2858, !2859}
!2858 = !DILocalVariable(name: "root", arg: 1, scope: !2854, file: !3, line: 1445, type: !225)
!2859 = !DILocalVariable(name: "index", arg: 2, scope: !2854, file: !3, line: 1445, type: !301)
!2860 = !DILocation(line: 1445, column: 49, scope: !2854)
!2861 = !DILocation(line: 1445, column: 69, scope: !2854)
!2862 = !DILocation(line: 1447, column: 32, scope: !2854)
!2863 = !DILocation(line: 1447, column: 38, scope: !2854)
!2864 = !DILocation(line: 1447, column: 9, scope: !2854)
!2865 = !DILocation(line: 1447, column: 2, scope: !2854)
!2866 = distinct !DISubprogram(name: "radix_tree_tagged", scope: !3, file: !3, line: 1456, type: !1737, scopeLine: 1457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "root", arg: 1, scope: !2866, file: !3, line: 1456, type: !1080)
!2869 = !DILocalVariable(name: "tag", arg: 2, scope: !2866, file: !3, line: 1456, type: !7)
!2870 = !DILocation(line: 1456, column: 53, scope: !2866)
!2871 = !DILocation(line: 1456, column: 72, scope: !2866)
!2872 = !DILocation(line: 1458, column: 22, scope: !2866)
!2873 = !DILocation(line: 1458, column: 28, scope: !2866)
!2874 = !DILocation(line: 1458, column: 9, scope: !2866)
!2875 = !DILocation(line: 1458, column: 2, scope: !2866)
!2876 = distinct !DISubprogram(name: "idr_preload", scope: !3, file: !3, line: 1469, type: !2877, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !272}
!2879 = !{!2880, !2881, !2886}
!2880 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !2876, file: !3, line: 1469, type: !272)
!2881 = !DILocalVariable(name: "__vpp_verify", scope: !2882, file: !3, line: 1472, type: !415)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1472, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1472, column: 3)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1472, column: 3)
!2885 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1471, column: 6)
!2886 = !DILocalVariable(name: "tcp_ptr__", scope: !2887, file: !3, line: 1472, type: !301)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1472, column: 3)
!2888 = !DILocation(line: 1469, column: 24, scope: !2876)
!2889 = !DILocation(line: 1471, column: 27, scope: !2885)
!2890 = !DILocation(line: 1471, column: 6, scope: !2885)
!2891 = !DILocation(line: 1471, column: 6, scope: !2876)
!2892 = !DILocation(line: 1472, column: 3, scope: !2885)
!2893 = !DILocation(line: 1472, column: 3, scope: !2884)
!2894 = !DILocation(line: 1472, column: 3, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1472, column: 3)
!2896 = !{i64 2152926925}
!2897 = !DILocation(line: 1472, column: 3, scope: !2883)
!2898 = !DILocation(line: 1472, column: 3, scope: !2882)
!2899 = !DILocation(line: 1472, column: 3, scope: !2887)
!2900 = !{i64 2152927347}
!2901 = !DILocation(line: 1473, column: 1, scope: !2876)
!2902 = distinct !DISubprogram(name: "idr_get_free", scope: !3, file: !3, line: 1476, type: !2903, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!311, !225, !1961, !272, !301}
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2921, !2922, !2925, !2927, !2932, !2936, !2939}
!2906 = !DILocalVariable(name: "root", arg: 1, scope: !2902, file: !3, line: 1476, type: !225)
!2907 = !DILocalVariable(name: "iter", arg: 2, scope: !2902, file: !3, line: 1477, type: !1961)
!2908 = !DILocalVariable(name: "gfp", arg: 3, scope: !2902, file: !3, line: 1477, type: !272)
!2909 = !DILocalVariable(name: "max", arg: 4, scope: !2902, file: !3, line: 1478, type: !301)
!2910 = !DILocalVariable(name: "node", scope: !2902, file: !3, line: 1480, type: !214)
!2911 = !DILocalVariable(name: "child", scope: !2902, file: !3, line: 1480, type: !214)
!2912 = !DILocalVariable(name: "slot", scope: !2902, file: !3, line: 1481, type: !311)
!2913 = !DILocalVariable(name: "maxindex", scope: !2902, file: !3, line: 1482, type: !301)
!2914 = !DILocalVariable(name: "start", scope: !2902, file: !3, line: 1482, type: !301)
!2915 = !DILocalVariable(name: "shift", scope: !2902, file: !3, line: 1483, type: !7)
!2916 = !DILocalVariable(name: "offset", scope: !2902, file: !3, line: 1483, type: !7)
!2917 = !DILabel(scope: !2902, name: "grow", file: !3, line: 1485)
!2918 = !DILocalVariable(name: "__UNIQUE_ID___x266", scope: !2919, file: !3, line: 1488, type: !301)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1488, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1487, column: 6)
!2921 = !DILocalVariable(name: "__UNIQUE_ID___y267", scope: !2919, file: !3, line: 1488, type: !301)
!2922 = !DILocalVariable(name: "error", scope: !2923, file: !3, line: 1493, type: !14)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 1492, column: 24)
!2924 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1492, column: 6)
!2925 = !DILocalVariable(name: "__UNIQUE_ID_rcu268", scope: !2926, file: !3, line: 1497, type: !213)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1497, column: 11)
!2927 = !DILocalVariable(name: "_r_a_p__v", scope: !2928, file: !3, line: 1511, type: !315)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1511, column: 4)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1504, column: 22)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1504, column: 7)
!2931 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1502, column: 16)
!2932 = !DILocalVariable(name: "__UNIQUE_ID_rcu273", scope: !2933, file: !3, line: 1532, type: !213)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1532, column: 12)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1519, column: 41)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1519, column: 7)
!2936 = !DILocalVariable(name: "__UNIQUE_ID___x275", scope: !2937, file: !3, line: 1539, type: !301)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1539, column: 26)
!2938 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1538, column: 6)
!2939 = !DILocalVariable(name: "__UNIQUE_ID___y276", scope: !2937, file: !3, line: 1539, type: !301)
!2940 = !DILocation(line: 1476, column: 51, scope: !2902)
!2941 = !DILocation(line: 1477, column: 34, scope: !2902)
!2942 = !DILocation(line: 1477, column: 46, scope: !2902)
!2943 = !DILocation(line: 1478, column: 24, scope: !2902)
!2944 = !DILocation(line: 1480, column: 2, scope: !2902)
!2945 = !DILocation(line: 1480, column: 26, scope: !2902)
!2946 = !DILocation(line: 1480, column: 40, scope: !2902)
!2947 = !DILocation(line: 1481, column: 2, scope: !2902)
!2948 = !DILocation(line: 1481, column: 15, scope: !2902)
!2949 = !DILocation(line: 1481, column: 38, scope: !2902)
!2950 = !DILocation(line: 1481, column: 44, scope: !2902)
!2951 = !DILocation(line: 1482, column: 2, scope: !2902)
!2952 = !DILocation(line: 1482, column: 16, scope: !2902)
!2953 = !DILocation(line: 1482, column: 26, scope: !2902)
!2954 = !DILocation(line: 1482, column: 34, scope: !2902)
!2955 = !DILocation(line: 1482, column: 40, scope: !2902)
!2956 = !DILocation(line: 1483, column: 2, scope: !2902)
!2957 = !DILocation(line: 1483, column: 15, scope: !2902)
!2958 = !DILocation(line: 1483, column: 22, scope: !2902)
!2959 = !DILocation(line: 1485, column: 2, scope: !2902)
!2960 = !DILocation(line: 1486, column: 31, scope: !2902)
!2961 = !DILocation(line: 1486, column: 10, scope: !2902)
!2962 = !DILocation(line: 1486, column: 8, scope: !2902)
!2963 = !DILocation(line: 1487, column: 25, scope: !2920)
!2964 = !DILocation(line: 1487, column: 7, scope: !2920)
!2965 = !DILocation(line: 1487, column: 6, scope: !2902)
!2966 = !DILocation(line: 1488, column: 11, scope: !2919)
!2967 = !DILocation(line: 1488, column: 11, scope: !2920)
!2968 = !DILocation(line: 1488, column: 9, scope: !2920)
!2969 = !DILocation(line: 1488, column: 3, scope: !2920)
!2970 = !DILocation(line: 1489, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1489, column: 6)
!2972 = !DILocation(line: 1489, column: 14, scope: !2971)
!2973 = !DILocation(line: 1489, column: 12, scope: !2971)
!2974 = !DILocation(line: 1489, column: 6, scope: !2902)
!2975 = !DILocation(line: 1490, column: 10, scope: !2971)
!2976 = !DILocation(line: 1490, column: 3, scope: !2971)
!2977 = !DILocation(line: 1492, column: 6, scope: !2924)
!2978 = !DILocation(line: 1492, column: 14, scope: !2924)
!2979 = !DILocation(line: 1492, column: 12, scope: !2924)
!2980 = !DILocation(line: 1492, column: 6, scope: !2902)
!2981 = !DILocation(line: 1493, column: 3, scope: !2923)
!2982 = !DILocation(line: 1493, column: 7, scope: !2923)
!2983 = !DILocation(line: 1493, column: 33, scope: !2923)
!2984 = !DILocation(line: 1493, column: 39, scope: !2923)
!2985 = !DILocation(line: 1493, column: 44, scope: !2923)
!2986 = !DILocation(line: 1493, column: 51, scope: !2923)
!2987 = !DILocation(line: 1493, column: 15, scope: !2923)
!2988 = !DILocation(line: 1494, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1494, column: 7)
!2990 = !DILocation(line: 1494, column: 13, scope: !2989)
!2991 = !DILocation(line: 1494, column: 7, scope: !2923)
!2992 = !DILocation(line: 1495, column: 19, scope: !2989)
!2993 = !DILocation(line: 1495, column: 11, scope: !2989)
!2994 = !DILocation(line: 1495, column: 4, scope: !2989)
!2995 = !DILocation(line: 1496, column: 11, scope: !2923)
!2996 = !DILocation(line: 1496, column: 9, scope: !2923)
!2997 = !DILocation(line: 1497, column: 11, scope: !2926)
!2998 = !DILocation(line: 1497, column: 11, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1497, column: 11)
!3000 = !DILocation(line: 1497, column: 11, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1497, column: 11)
!3002 = !DILocation(line: 1497, column: 11, scope: !2923)
!3003 = !DILocation(line: 1497, column: 9, scope: !2923)
!3004 = !DILocation(line: 1498, column: 2, scope: !2924)
!3005 = !DILocation(line: 1498, column: 2, scope: !2923)
!3006 = !DILocation(line: 1499, column: 6, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1499, column: 6)
!3008 = !DILocation(line: 1499, column: 12, scope: !3007)
!3009 = !DILocation(line: 1499, column: 17, scope: !3007)
!3010 = !DILocation(line: 1499, column: 20, scope: !3007)
!3011 = !DILocation(line: 1499, column: 26, scope: !3007)
!3012 = !DILocation(line: 1499, column: 6, scope: !2902)
!3013 = !DILocation(line: 1500, column: 9, scope: !3007)
!3014 = !DILocation(line: 1500, column: 3, scope: !3007)
!3015 = !DILocation(line: 1502, column: 2, scope: !2902)
!3016 = !DILocation(line: 1502, column: 9, scope: !2902)
!3017 = !DILocation(line: 1503, column: 9, scope: !2931)
!3018 = !DILocation(line: 1504, column: 7, scope: !2930)
!3019 = !DILocation(line: 1504, column: 13, scope: !2930)
!3020 = !DILocation(line: 1504, column: 7, scope: !2931)
!3021 = !DILocation(line: 1506, column: 34, scope: !2929)
!3022 = !DILocation(line: 1506, column: 39, scope: !2929)
!3023 = !DILocation(line: 1506, column: 45, scope: !2929)
!3024 = !DILocation(line: 1506, column: 51, scope: !2929)
!3025 = !DILocation(line: 1507, column: 8, scope: !2929)
!3026 = !DILocation(line: 1506, column: 12, scope: !2929)
!3027 = !DILocation(line: 1506, column: 10, scope: !2929)
!3028 = !DILocation(line: 1508, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1508, column: 8)
!3030 = !DILocation(line: 1508, column: 8, scope: !2929)
!3031 = !DILocation(line: 1509, column: 12, scope: !3029)
!3032 = !DILocation(line: 1509, column: 5, scope: !3029)
!3033 = !DILocation(line: 1510, column: 16, scope: !2929)
!3034 = !DILocation(line: 1510, column: 4, scope: !2929)
!3035 = !DILocation(line: 1511, column: 4, scope: !2929)
!3036 = !DILocation(line: 1511, column: 4, scope: !2928)
!3037 = !DILocation(line: 1511, column: 4, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1511, column: 4)
!3039 = !DILocation(line: 1511, column: 4, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1511, column: 4)
!3041 = !DILocation(line: 1511, column: 4, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1511, column: 4)
!3043 = !DILocation(line: 1511, column: 4, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1511, column: 4)
!3045 = !DILocation(line: 1511, column: 4, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1511, column: 4)
!3047 = !{i64 2152945472}
!3048 = !DILocation(line: 1511, column: 4, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1511, column: 4)
!3050 = !DILocation(line: 1511, column: 4, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1511, column: 4)
!3052 = !DILocation(line: 1511, column: 4, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1511, column: 4)
!3054 = !DILocation(line: 1512, column: 8, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1512, column: 8)
!3056 = !DILocation(line: 1512, column: 8, scope: !2929)
!3057 = !DILocation(line: 1513, column: 5, scope: !3055)
!3058 = !DILocation(line: 1513, column: 11, scope: !3055)
!3059 = !DILocation(line: 1513, column: 16, scope: !3055)
!3060 = !DILocation(line: 1514, column: 3, scope: !2929)
!3061 = !DILocation(line: 1514, column: 43, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1514, column: 14)
!3063 = !DILocation(line: 1514, column: 15, scope: !3062)
!3064 = !DILocation(line: 1514, column: 14, scope: !2930)
!3065 = !DILocation(line: 1515, column: 4, scope: !3062)
!3066 = !DILocation(line: 1517, column: 24, scope: !2931)
!3067 = !DILocation(line: 1517, column: 10, scope: !2931)
!3068 = !DILocation(line: 1517, column: 8, scope: !2931)
!3069 = !DILocation(line: 1518, column: 31, scope: !2931)
!3070 = !DILocation(line: 1518, column: 45, scope: !2931)
!3071 = !DILocation(line: 1518, column: 12, scope: !2931)
!3072 = !DILocation(line: 1518, column: 10, scope: !2931)
!3073 = !DILocation(line: 1519, column: 16, scope: !2935)
!3074 = !DILocation(line: 1519, column: 32, scope: !2935)
!3075 = !DILocation(line: 1519, column: 8, scope: !2935)
!3076 = !DILocation(line: 1519, column: 7, scope: !2931)
!3077 = !DILocation(line: 1520, column: 38, scope: !2934)
!3078 = !DILocation(line: 1521, column: 8, scope: !2934)
!3079 = !DILocation(line: 1521, column: 15, scope: !2934)
!3080 = !DILocation(line: 1520, column: 13, scope: !2934)
!3081 = !DILocation(line: 1520, column: 11, scope: !2934)
!3082 = !DILocation(line: 1522, column: 23, scope: !2934)
!3083 = !DILocation(line: 1522, column: 30, scope: !2934)
!3084 = !DILocation(line: 1522, column: 36, scope: !2934)
!3085 = !DILocation(line: 1522, column: 12, scope: !2934)
!3086 = !DILocation(line: 1522, column: 10, scope: !2934)
!3087 = !DILocation(line: 1523, column: 8, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1523, column: 8)
!3089 = !DILocation(line: 1523, column: 16, scope: !3088)
!3090 = !DILocation(line: 1523, column: 14, scope: !3088)
!3091 = !DILocation(line: 1523, column: 20, scope: !3088)
!3092 = !DILocation(line: 1523, column: 23, scope: !3088)
!3093 = !DILocation(line: 1523, column: 29, scope: !3088)
!3094 = !DILocation(line: 1523, column: 8, scope: !2934)
!3095 = !DILocation(line: 1524, column: 12, scope: !3088)
!3096 = !DILocation(line: 1524, column: 5, scope: !3088)
!3097 = !DILocation(line: 1525, column: 4, scope: !2934)
!3098 = !DILocation(line: 1525, column: 11, scope: !2934)
!3099 = !DILocation(line: 1525, column: 18, scope: !2934)
!3100 = !DILocation(line: 1526, column: 14, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1525, column: 42)
!3102 = !DILocation(line: 1526, column: 20, scope: !3101)
!3103 = !DILocation(line: 1526, column: 27, scope: !3101)
!3104 = !DILocation(line: 1526, column: 12, scope: !3101)
!3105 = !DILocation(line: 1527, column: 12, scope: !3101)
!3106 = !DILocation(line: 1527, column: 18, scope: !3101)
!3107 = !DILocation(line: 1527, column: 10, scope: !3101)
!3108 = !DILocation(line: 1528, column: 10, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1528, column: 9)
!3110 = !DILocation(line: 1528, column: 9, scope: !3101)
!3111 = !DILocation(line: 1529, column: 6, scope: !3109)
!3112 = !DILocation(line: 1530, column: 13, scope: !3101)
!3113 = !DILocation(line: 1530, column: 19, scope: !3101)
!3114 = !DILocation(line: 1530, column: 11, scope: !3101)
!3115 = distinct !{!3115, !3097, !3116, !635, !636}
!3116 = !DILocation(line: 1531, column: 4, scope: !2934)
!3117 = !DILocation(line: 1532, column: 12, scope: !2933)
!3118 = !DILocation(line: 1532, column: 12, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1532, column: 12)
!3120 = !DILocation(line: 1532, column: 12, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1532, column: 12)
!3122 = !DILocation(line: 1532, column: 12, scope: !2934)
!3123 = !DILocation(line: 1532, column: 10, scope: !2934)
!3124 = !DILocation(line: 1533, column: 3, scope: !2934)
!3125 = !DILocation(line: 1534, column: 11, scope: !2931)
!3126 = !DILocation(line: 1534, column: 17, scope: !2931)
!3127 = !DILocation(line: 1534, column: 23, scope: !2931)
!3128 = !DILocation(line: 1534, column: 8, scope: !2931)
!3129 = distinct !{!3129, !3015, !3130, !635, !636}
!3130 = !DILocation(line: 1535, column: 2, scope: !2902)
!3131 = !DILocation(line: 1537, column: 16, scope: !2902)
!3132 = !DILocation(line: 1537, column: 2, scope: !2902)
!3133 = !DILocation(line: 1537, column: 8, scope: !2902)
!3134 = !DILocation(line: 1537, column: 14, scope: !2902)
!3135 = !DILocation(line: 1538, column: 6, scope: !2938)
!3136 = !DILocation(line: 1538, column: 6, scope: !2902)
!3137 = !DILocation(line: 1539, column: 26, scope: !2937)
!3138 = !DILocation(line: 1539, column: 26, scope: !2938)
!3139 = !DILocation(line: 1539, column: 24, scope: !2938)
!3140 = !DILocation(line: 1539, column: 3, scope: !2938)
!3141 = !DILocation(line: 1539, column: 9, scope: !2938)
!3142 = !DILocation(line: 1539, column: 20, scope: !2938)
!3143 = !DILocation(line: 1541, column: 3, scope: !2938)
!3144 = !DILocation(line: 1541, column: 9, scope: !2938)
!3145 = !DILocation(line: 1541, column: 20, scope: !2938)
!3146 = !DILocation(line: 1542, column: 15, scope: !2902)
!3147 = !DILocation(line: 1542, column: 2, scope: !2902)
!3148 = !DILocation(line: 1542, column: 8, scope: !2902)
!3149 = !DILocation(line: 1542, column: 13, scope: !2902)
!3150 = !DILocation(line: 1543, column: 16, scope: !2902)
!3151 = !DILocation(line: 1543, column: 22, scope: !2902)
!3152 = !DILocation(line: 1543, column: 28, scope: !2902)
!3153 = !DILocation(line: 1543, column: 2, scope: !2902)
!3154 = !DILocation(line: 1545, column: 9, scope: !2902)
!3155 = !DILocation(line: 1545, column: 2, scope: !2902)
!3156 = !DILocation(line: 1546, column: 1, scope: !2902)
!3157 = distinct !DISubprogram(name: "ERR_PTR", scope: !3158, file: !3158, line: 39, type: !3159, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3158 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!213, !335}
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "error", arg: 1, scope: !3157, file: !3158, line: 39, type: !335)
!3163 = !DILocation(line: 39, column: 48, scope: !3157)
!3164 = !DILocation(line: 41, column: 18, scope: !3157)
!3165 = !DILocation(line: 41, column: 9, scope: !3157)
!3166 = !DILocation(line: 41, column: 2, scope: !3157)
!3167 = distinct !DISubprogram(name: "radix_tree_extend", scope: !3, file: !3, line: 408, type: !3168, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!14, !225, !272, !301, !7}
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3180, !3182, !3184}
!3171 = !DILocalVariable(name: "root", arg: 1, scope: !3167, file: !3, line: 408, type: !225)
!3172 = !DILocalVariable(name: "gfp", arg: 2, scope: !3167, file: !3, line: 408, type: !272)
!3173 = !DILocalVariable(name: "index", arg: 3, scope: !3167, file: !3, line: 409, type: !301)
!3174 = !DILocalVariable(name: "shift", arg: 4, scope: !3167, file: !3, line: 409, type: !7)
!3175 = !DILocalVariable(name: "entry", scope: !3167, file: !3, line: 411, type: !213)
!3176 = !DILocalVariable(name: "maxshift", scope: !3167, file: !3, line: 412, type: !7)
!3177 = !DILocalVariable(name: "tag", scope: !3167, file: !3, line: 413, type: !14)
!3178 = !DILocalVariable(name: "__UNIQUE_ID_rcu213", scope: !3179, file: !3, line: 420, type: !213)
!3179 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 420, column: 10)
!3180 = !DILocalVariable(name: "node", scope: !3181, file: !3, line: 425, type: !214)
!3181 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 424, column: 5)
!3182 = !DILocalVariable(name: "_r_a_p__v", scope: !3183, file: !3, line: 457, type: !315)
!3183 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 457, column: 3)
!3184 = !DILabel(scope: !3167, name: "out", file: !3, line: 460)
!3185 = !DILocation(line: 408, column: 54, scope: !3167)
!3186 = !DILocation(line: 408, column: 66, scope: !3167)
!3187 = !DILocation(line: 409, column: 19, scope: !3167)
!3188 = !DILocation(line: 409, column: 39, scope: !3167)
!3189 = !DILocation(line: 411, column: 2, scope: !3167)
!3190 = !DILocation(line: 411, column: 8, scope: !3167)
!3191 = !DILocation(line: 412, column: 2, scope: !3167)
!3192 = !DILocation(line: 412, column: 15, scope: !3167)
!3193 = !DILocation(line: 413, column: 2, scope: !3167)
!3194 = !DILocation(line: 413, column: 6, scope: !3167)
!3195 = !DILocation(line: 416, column: 13, scope: !3167)
!3196 = !DILocation(line: 416, column: 11, scope: !3167)
!3197 = !DILocation(line: 417, column: 2, scope: !3167)
!3198 = !DILocation(line: 417, column: 9, scope: !3167)
!3199 = !DILocation(line: 417, column: 32, scope: !3167)
!3200 = !DILocation(line: 417, column: 17, scope: !3167)
!3201 = !DILocation(line: 417, column: 15, scope: !3167)
!3202 = !DILocation(line: 418, column: 12, scope: !3167)
!3203 = distinct !{!3203, !3197, !3204, !635, !636}
!3204 = !DILocation(line: 418, column: 15, scope: !3167)
!3205 = !DILocation(line: 420, column: 10, scope: !3179)
!3206 = !DILocation(line: 420, column: 10, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 420, column: 10)
!3208 = !DILocation(line: 420, column: 10, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 420, column: 10)
!3210 = !DILocation(line: 420, column: 10, scope: !3167)
!3211 = !DILocation(line: 420, column: 8, scope: !3167)
!3212 = !DILocation(line: 421, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 421, column: 6)
!3214 = !DILocation(line: 421, column: 13, scope: !3213)
!3215 = !DILocation(line: 421, column: 25, scope: !3213)
!3216 = !DILocation(line: 421, column: 18, scope: !3213)
!3217 = !DILocation(line: 421, column: 31, scope: !3213)
!3218 = !DILocation(line: 421, column: 47, scope: !3213)
!3219 = !DILocation(line: 421, column: 34, scope: !3213)
!3220 = !DILocation(line: 421, column: 6, scope: !3167)
!3221 = !DILocation(line: 422, column: 3, scope: !3213)
!3222 = !DILocation(line: 424, column: 2, scope: !3167)
!3223 = !DILocation(line: 425, column: 3, scope: !3181)
!3224 = !DILocation(line: 425, column: 27, scope: !3181)
!3225 = !DILocation(line: 425, column: 56, scope: !3181)
!3226 = !DILocation(line: 426, column: 8, scope: !3181)
!3227 = !DILocation(line: 426, column: 14, scope: !3181)
!3228 = !DILocation(line: 425, column: 34, scope: !3181)
!3229 = !DILocation(line: 427, column: 8, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 427, column: 7)
!3231 = !DILocation(line: 427, column: 7, scope: !3181)
!3232 = !DILocation(line: 428, column: 4, scope: !3230)
!3233 = !DILocation(line: 430, column: 14, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 430, column: 7)
!3235 = !DILocation(line: 430, column: 7, scope: !3234)
!3236 = !DILocation(line: 430, column: 7, scope: !3181)
!3237 = !DILocation(line: 431, column: 16, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 430, column: 21)
!3239 = !DILocation(line: 431, column: 4, scope: !3238)
!3240 = !DILocation(line: 432, column: 22, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 432, column: 8)
!3242 = !DILocation(line: 432, column: 9, scope: !3241)
!3243 = !DILocation(line: 432, column: 8, scope: !3238)
!3244 = !DILocation(line: 433, column: 15, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 432, column: 39)
!3246 = !DILocation(line: 433, column: 5, scope: !3245)
!3247 = !DILocation(line: 434, column: 18, scope: !3245)
!3248 = !DILocation(line: 434, column: 5, scope: !3245)
!3249 = !DILocation(line: 435, column: 4, scope: !3245)
!3250 = !DILocation(line: 436, column: 3, scope: !3238)
!3251 = !DILocation(line: 438, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 438, column: 4)
!3253 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 436, column: 10)
!3254 = !DILocation(line: 438, column: 9, scope: !3252)
!3255 = !DILocation(line: 438, column: 18, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 438, column: 4)
!3257 = !DILocation(line: 438, column: 22, scope: !3256)
!3258 = !DILocation(line: 438, column: 4, scope: !3252)
!3259 = !DILocation(line: 439, column: 22, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 439, column: 9)
!3261 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 438, column: 52)
!3262 = !DILocation(line: 439, column: 28, scope: !3260)
!3263 = !DILocation(line: 439, column: 9, scope: !3260)
!3264 = !DILocation(line: 439, column: 9, scope: !3261)
!3265 = !DILocation(line: 440, column: 14, scope: !3260)
!3266 = !DILocation(line: 440, column: 20, scope: !3260)
!3267 = !DILocation(line: 440, column: 6, scope: !3260)
!3268 = !DILocation(line: 441, column: 4, scope: !3261)
!3269 = !DILocation(line: 438, column: 48, scope: !3256)
!3270 = !DILocation(line: 438, column: 4, scope: !3256)
!3271 = distinct !{!3271, !3258, !3272, !635, !636}
!3272 = !DILocation(line: 441, column: 4, scope: !3252)
!3273 = !DILocation(line: 444, column: 3, scope: !3181)
!3274 = !DILocation(line: 444, column: 3, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 444, column: 3)
!3276 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 444, column: 3)
!3277 = !DILocation(line: 444, column: 3, scope: !3276)
!3278 = !DILocation(line: 444, column: 3, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 444, column: 3)
!3280 = !DILocation(line: 444, column: 3, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 444, column: 3)
!3282 = !DILocation(line: 444, column: 3, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 444, column: 3)
!3284 = !{i64 2152806709, i64 2152806738, i64 2152806784, i64 2152806842, i64 2152806896, i64 2152806950, i64 2152807005, i64 2152807036}
!3285 = !DILocation(line: 445, column: 35, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 445, column: 7)
!3287 = !DILocation(line: 445, column: 7, scope: !3286)
!3288 = !DILocation(line: 445, column: 7, scope: !3181)
!3289 = !DILocation(line: 446, column: 35, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 445, column: 43)
!3291 = !DILocation(line: 446, column: 18, scope: !3290)
!3292 = !DILocation(line: 446, column: 4, scope: !3290)
!3293 = !DILocation(line: 446, column: 26, scope: !3290)
!3294 = !DILocation(line: 446, column: 33, scope: !3290)
!3295 = !DILocation(line: 447, column: 3, scope: !3290)
!3296 = !DILocation(line: 447, column: 26, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 447, column: 14)
!3298 = !DILocation(line: 447, column: 14, scope: !3297)
!3299 = !DILocation(line: 447, column: 14, scope: !3286)
!3300 = !DILocation(line: 449, column: 4, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 447, column: 34)
!3302 = !DILocation(line: 449, column: 10, scope: !3301)
!3303 = !DILocation(line: 449, column: 20, scope: !3301)
!3304 = !DILocation(line: 450, column: 3, scope: !3301)
!3305 = !DILocation(line: 455, column: 34, scope: !3181)
!3306 = !DILocation(line: 455, column: 3, scope: !3181)
!3307 = !DILocation(line: 455, column: 9, scope: !3181)
!3308 = !DILocation(line: 455, column: 18, scope: !3181)
!3309 = !DILocation(line: 456, column: 25, scope: !3181)
!3310 = !DILocation(line: 456, column: 11, scope: !3181)
!3311 = !DILocation(line: 456, column: 9, scope: !3181)
!3312 = !DILocation(line: 457, column: 3, scope: !3181)
!3313 = !DILocation(line: 457, column: 3, scope: !3183)
!3314 = !DILocation(line: 457, column: 3, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 457, column: 3)
!3316 = !DILocation(line: 457, column: 3, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 457, column: 3)
!3318 = !DILocation(line: 457, column: 3, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 457, column: 3)
!3320 = !DILocation(line: 457, column: 3, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 457, column: 3)
!3322 = !DILocation(line: 457, column: 3, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 457, column: 3)
!3324 = !DILocation(line: 457, column: 3, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 457, column: 3)
!3326 = !DILocation(line: 457, column: 3, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 457, column: 3)
!3328 = !DILocation(line: 457, column: 3, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 457, column: 3)
!3330 = !{i64 2152812522}
!3331 = !DILocation(line: 457, column: 3, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 457, column: 3)
!3333 = !DILocation(line: 457, column: 3, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 457, column: 3)
!3335 = !DILocation(line: 457, column: 3, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 457, column: 3)
!3337 = !DILocation(line: 458, column: 9, scope: !3181)
!3338 = !DILocation(line: 459, column: 2, scope: !3167)
!3339 = !DILocation(line: 459, column: 2, scope: !3181)
!3340 = !DILocation(line: 459, column: 11, scope: !3167)
!3341 = !DILocation(line: 459, column: 20, scope: !3167)
!3342 = !DILocation(line: 459, column: 17, scope: !3167)
!3343 = distinct !{!3343, !3222, !3344, !635, !636}
!3344 = !DILocation(line: 459, column: 28, scope: !3167)
!3345 = !DILocation(line: 460, column: 1, scope: !3167)
!3346 = !DILocation(line: 461, column: 9, scope: !3167)
!3347 = !DILocation(line: 461, column: 18, scope: !3167)
!3348 = !DILocation(line: 461, column: 2, scope: !3167)
!3349 = !DILocation(line: 462, column: 1, scope: !3167)
!3350 = distinct !DISubprogram(name: "radix_tree_node_alloc", scope: !3, file: !3, line: 233, type: !3351, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!214, !272, !214, !225, !7, !7, !7, !7}
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3365, !3369, !3371}
!3354 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !3350, file: !3, line: 233, type: !272)
!3355 = !DILocalVariable(name: "parent", arg: 2, scope: !3350, file: !3, line: 233, type: !214)
!3356 = !DILocalVariable(name: "root", arg: 3, scope: !3350, file: !3, line: 234, type: !225)
!3357 = !DILocalVariable(name: "shift", arg: 4, scope: !3350, file: !3, line: 235, type: !7)
!3358 = !DILocalVariable(name: "offset", arg: 5, scope: !3350, file: !3, line: 235, type: !7)
!3359 = !DILocalVariable(name: "count", arg: 6, scope: !3350, file: !3, line: 236, type: !7)
!3360 = !DILocalVariable(name: "nr_values", arg: 7, scope: !3350, file: !3, line: 236, type: !7)
!3361 = !DILocalVariable(name: "ret", scope: !3350, file: !3, line: 238, type: !214)
!3362 = !DILocalVariable(name: "rtp", scope: !3363, file: !3, line: 246, type: !320)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 245, column: 61)
!3364 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 245, column: 6)
!3365 = !DILocalVariable(name: "__vpp_verify", scope: !3366, file: !3, line: 263, type: !415)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 263, column: 9)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 263, column: 9)
!3368 = !DILexicalBlockFile(scope: !3363, file: !3, discriminator: 0)
!3369 = !DILocalVariable(name: "tcp_ptr__", scope: !3370, file: !3, line: 263, type: !301)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 263, column: 9)
!3371 = !DILabel(scope: !3372, name: "out", file: !3, line: 277)
!3372 = !DILexicalBlockFile(scope: !3350, file: !3, discriminator: 0)
!3373 = !DILocation(line: 233, column: 29, scope: !3350)
!3374 = !DILocation(line: 233, column: 63, scope: !3350)
!3375 = !DILocation(line: 234, column: 28, scope: !3350)
!3376 = !DILocation(line: 235, column: 17, scope: !3350)
!3377 = !DILocation(line: 235, column: 37, scope: !3350)
!3378 = !DILocation(line: 236, column: 17, scope: !3350)
!3379 = !DILocation(line: 236, column: 37, scope: !3350)
!3380 = !DILocation(line: 238, column: 2, scope: !3350)
!3381 = !DILocation(line: 238, column: 26, scope: !3350)
!3382 = !DILocation(line: 245, column: 31, scope: !3364)
!3383 = !DILocation(line: 245, column: 7, scope: !3364)
!3384 = !DILocation(line: 245, column: 41, scope: !3364)
!3385 = !DILocation(line: 245, column: 45, scope: !3364)
!3386 = !DILocation(line: 245, column: 6, scope: !3350)
!3387 = !DILocation(line: 246, column: 3, scope: !3363)
!3388 = !DILocation(line: 246, column: 30, scope: !3363)
!3389 = !DILocation(line: 253, column: 26, scope: !3363)
!3390 = !DILocation(line: 254, column: 12, scope: !3363)
!3391 = !DILocation(line: 254, column: 21, scope: !3363)
!3392 = !DILocation(line: 253, column: 9, scope: !3363)
!3393 = !DILocation(line: 253, column: 7, scope: !3363)
!3394 = !DILocation(line: 255, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 255, column: 7)
!3396 = !DILocation(line: 255, column: 7, scope: !3368)
!3397 = !DILocation(line: 256, column: 4, scope: !3395)
!3398 = !DILocation(line: 263, column: 9, scope: !3367)
!3399 = !DILocation(line: 263, column: 9, scope: !3366)
!3400 = !DILocation(line: 263, column: 9, scope: !3370)
!3401 = !{i64 2152783655}
!3402 = !DILocation(line: 263, column: 7, scope: !3368)
!3403 = !DILocation(line: 264, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 264, column: 7)
!3405 = !DILocation(line: 264, column: 12, scope: !3404)
!3406 = !DILocation(line: 264, column: 7, scope: !3368)
!3407 = !DILocation(line: 265, column: 10, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 264, column: 16)
!3409 = !DILocation(line: 265, column: 15, scope: !3408)
!3410 = !DILocation(line: 265, column: 8, scope: !3408)
!3411 = !DILocation(line: 266, column: 17, scope: !3408)
!3412 = !DILocation(line: 266, column: 22, scope: !3408)
!3413 = !DILocation(line: 266, column: 4, scope: !3408)
!3414 = !DILocation(line: 266, column: 9, scope: !3408)
!3415 = !DILocation(line: 266, column: 15, scope: !3408)
!3416 = !DILocation(line: 267, column: 4, scope: !3408)
!3417 = !DILocation(line: 267, column: 9, scope: !3408)
!3418 = !DILocation(line: 267, column: 11, scope: !3408)
!3419 = !DILocation(line: 268, column: 3, scope: !3408)
!3420 = !DILocation(line: 273, column: 25, scope: !3368)
!3421 = !DILocation(line: 273, column: 3, scope: !3368)
!3422 = !DILocation(line: 274, column: 3, scope: !3368)
!3423 = !DILocation(line: 275, column: 2, scope: !3364)
!3424 = !DILocation(line: 276, column: 25, scope: !3350)
!3425 = !DILocation(line: 276, column: 49, scope: !3350)
!3426 = !DILocation(line: 276, column: 8, scope: !3350)
!3427 = !DILocation(line: 276, column: 6, scope: !3350)
!3428 = !DILocation(line: 276, column: 2, scope: !3350)
!3429 = !DILocation(line: 277, column: 1, scope: !3372)
!3430 = !DILocation(line: 278, column: 2, scope: !3372)
!3431 = !DILocation(line: 278, column: 2, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 278, column: 2)
!3433 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 278, column: 2)
!3434 = !DILocation(line: 278, column: 2, scope: !3433)
!3435 = !DILocation(line: 278, column: 2, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 278, column: 2)
!3437 = !DILocation(line: 278, column: 2, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 278, column: 2)
!3439 = !DILocation(line: 278, column: 2, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 278, column: 2)
!3441 = !{i64 2152784266, i64 2152784295, i64 2152784341, i64 2152784399, i64 2152784453, i64 2152784507, i64 2152784562, i64 2152784593}
!3442 = !DILocation(line: 279, column: 6, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 279, column: 6)
!3444 = !DILocation(line: 279, column: 6, scope: !3372)
!3445 = !DILocation(line: 280, column: 16, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 279, column: 11)
!3447 = !DILocation(line: 280, column: 3, scope: !3446)
!3448 = !DILocation(line: 280, column: 8, scope: !3446)
!3449 = !DILocation(line: 280, column: 14, scope: !3446)
!3450 = !DILocation(line: 281, column: 17, scope: !3446)
!3451 = !DILocation(line: 281, column: 3, scope: !3446)
!3452 = !DILocation(line: 281, column: 8, scope: !3446)
!3453 = !DILocation(line: 281, column: 15, scope: !3446)
!3454 = !DILocation(line: 282, column: 16, scope: !3446)
!3455 = !DILocation(line: 282, column: 3, scope: !3446)
!3456 = !DILocation(line: 282, column: 8, scope: !3446)
!3457 = !DILocation(line: 282, column: 14, scope: !3446)
!3458 = !DILocation(line: 283, column: 20, scope: !3446)
!3459 = !DILocation(line: 283, column: 3, scope: !3446)
!3460 = !DILocation(line: 283, column: 8, scope: !3446)
!3461 = !DILocation(line: 283, column: 18, scope: !3446)
!3462 = !DILocation(line: 284, column: 17, scope: !3446)
!3463 = !DILocation(line: 284, column: 3, scope: !3446)
!3464 = !DILocation(line: 284, column: 8, scope: !3446)
!3465 = !DILocation(line: 284, column: 15, scope: !3446)
!3466 = !DILocation(line: 285, column: 16, scope: !3446)
!3467 = !DILocation(line: 285, column: 3, scope: !3446)
!3468 = !DILocation(line: 285, column: 8, scope: !3446)
!3469 = !DILocation(line: 285, column: 14, scope: !3446)
!3470 = !DILocation(line: 286, column: 2, scope: !3446)
!3471 = !DILocation(line: 287, column: 9, scope: !3372)
!3472 = !DILocation(line: 287, column: 2, scope: !3372)
!3473 = !DILocation(line: 288, column: 1, scope: !3372)
!3474 = distinct !DISubprogram(name: "all_tag_set", scope: !3, file: !3, line: 163, type: !3475, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !214, !7}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "node", arg: 1, scope: !3474, file: !3, line: 163, type: !214)
!3479 = !DILocalVariable(name: "tag", arg: 2, scope: !3474, file: !3, line: 163, type: !7)
!3480 = !DILocation(line: 163, column: 56, scope: !3474)
!3481 = !DILocation(line: 163, column: 75, scope: !3474)
!3482 = !DILocation(line: 165, column: 14, scope: !3474)
!3483 = !DILocation(line: 165, column: 20, scope: !3474)
!3484 = !DILocation(line: 165, column: 25, scope: !3474)
!3485 = !DILocation(line: 165, column: 2, scope: !3474)
!3486 = !DILocation(line: 166, column: 1, scope: !3474)
!3487 = distinct !DISubprogram(name: "node_to_entry", scope: !3, file: !3, line: 72, type: !3488, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!213, !213}
!3490 = !{!3491}
!3491 = !DILocalVariable(name: "ptr", arg: 1, scope: !3487, file: !3, line: 72, type: !213)
!3492 = !DILocation(line: 72, column: 41, scope: !3487)
!3493 = !DILocation(line: 74, column: 33, scope: !3487)
!3494 = !DILocation(line: 74, column: 18, scope: !3487)
!3495 = !DILocation(line: 74, column: 37, scope: !3487)
!3496 = !DILocation(line: 74, column: 9, scope: !3487)
!3497 = !DILocation(line: 74, column: 2, scope: !3487)
!3498 = distinct !DISubprogram(name: "next_index", scope: !3, file: !3, line: 221, type: !3499, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!301, !301, !1052, !301}
!3501 = !{!3502, !3503, !3504}
!3502 = !DILocalVariable(name: "index", arg: 1, scope: !3498, file: !3, line: 221, type: !301)
!3503 = !DILocalVariable(name: "node", arg: 2, scope: !3498, file: !3, line: 222, type: !1052)
!3504 = !DILocalVariable(name: "offset", arg: 3, scope: !3498, file: !3, line: 223, type: !301)
!3505 = !DILocation(line: 221, column: 47, scope: !3498)
!3506 = !DILocation(line: 222, column: 35, scope: !3498)
!3507 = !DILocation(line: 223, column: 19, scope: !3498)
!3508 = !DILocation(line: 225, column: 10, scope: !3498)
!3509 = !DILocation(line: 225, column: 33, scope: !3498)
!3510 = !DILocation(line: 225, column: 19, scope: !3498)
!3511 = !DILocation(line: 225, column: 18, scope: !3498)
!3512 = !DILocation(line: 225, column: 16, scope: !3498)
!3513 = !DILocation(line: 225, column: 43, scope: !3498)
!3514 = !DILocation(line: 225, column: 53, scope: !3498)
!3515 = !DILocation(line: 225, column: 59, scope: !3498)
!3516 = !DILocation(line: 225, column: 50, scope: !3498)
!3517 = !DILocation(line: 225, column: 40, scope: !3498)
!3518 = !DILocation(line: 225, column: 2, scope: !3498)
!3519 = distinct !DISubprogram(name: "idr_destroy", scope: !3, file: !3, line: 1559, type: !3520, scopeLine: 1560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3529)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3524, line: 19, size: 192, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3523, file: !3524, line: 20, baseType: !226, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3523, file: !3524, line: 21, baseType: !7, size: 32, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3523, file: !3524, line: 22, baseType: !7, size: 32, offset: 160)
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "idr", arg: 1, scope: !3519, file: !3, line: 1559, type: !3522)
!3531 = !DILocalVariable(name: "node", scope: !3519, file: !3, line: 1561, type: !214)
!3532 = !DILocalVariable(name: "__UNIQUE_ID_rcu277", scope: !3533, file: !3, line: 1561, type: !213)
!3533 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1561, column: 33)
!3534 = !DILocation(line: 1559, column: 30, scope: !3519)
!3535 = !DILocation(line: 1561, column: 2, scope: !3519)
!3536 = !DILocation(line: 1561, column: 26, scope: !3519)
!3537 = !DILocation(line: 1561, column: 33, scope: !3533)
!3538 = !DILocation(line: 1561, column: 33, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1561, column: 33)
!3540 = !DILocation(line: 1561, column: 33, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1561, column: 33)
!3542 = !DILocation(line: 1561, column: 33, scope: !3519)
!3543 = !DILocation(line: 1562, column: 34, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1562, column: 6)
!3545 = !DILocation(line: 1562, column: 6, scope: !3544)
!3546 = !DILocation(line: 1562, column: 6, scope: !3519)
!3547 = !DILocation(line: 1563, column: 25, scope: !3544)
!3548 = !DILocation(line: 1563, column: 3, scope: !3544)
!3549 = !DILocation(line: 1564, column: 2, scope: !3519)
!3550 = !DILocation(line: 1564, column: 7, scope: !3519)
!3551 = !DILocation(line: 1564, column: 14, scope: !3519)
!3552 = !DILocation(line: 1564, column: 22, scope: !3519)
!3553 = !DILocation(line: 1565, column: 16, scope: !3519)
!3554 = !DILocation(line: 1565, column: 21, scope: !3519)
!3555 = !DILocation(line: 1565, column: 2, scope: !3519)
!3556 = !DILocation(line: 1566, column: 1, scope: !3519)
!3557 = distinct !DISubprogram(name: "radix_tree_free_nodes", scope: !3, file: !3, line: 656, type: !3558, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !214}
!3560 = !{!3561, !3562, !3563, !3564, !3568, !3570, !3572, !3574}
!3561 = !DILocalVariable(name: "node", arg: 1, scope: !3557, file: !3, line: 656, type: !214)
!3562 = !DILocalVariable(name: "offset", scope: !3557, file: !3, line: 658, type: !7)
!3563 = !DILocalVariable(name: "child", scope: !3557, file: !3, line: 659, type: !214)
!3564 = !DILocalVariable(name: "entry", scope: !3565, file: !3, line: 662, type: !213)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 661, column: 11)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 661, column: 2)
!3567 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 661, column: 2)
!3568 = !DILocalVariable(name: "__UNIQUE_ID_rcu229", scope: !3569, file: !3, line: 662, type: !213)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 662, column: 17)
!3570 = !DILocalVariable(name: "old", scope: !3571, file: !3, line: 670, type: !214)
!3571 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 669, column: 41)
!3572 = !DILocalVariable(name: "__ret_warn_on", scope: !3573, file: !3, line: 673, type: !14)
!3573 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 673, column: 4)
!3574 = !DILocalVariable(name: "__flags", scope: !3575, file: !3, line: 673, type: !14)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 673, column: 4)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 673, column: 4)
!3577 = !DILocation(line: 656, column: 59, scope: !3557)
!3578 = !DILocation(line: 658, column: 2, scope: !3557)
!3579 = !DILocation(line: 658, column: 11, scope: !3557)
!3580 = !DILocation(line: 659, column: 2, scope: !3557)
!3581 = !DILocation(line: 659, column: 26, scope: !3557)
!3582 = !DILocation(line: 659, column: 48, scope: !3557)
!3583 = !DILocation(line: 659, column: 34, scope: !3557)
!3584 = !DILocation(line: 661, column: 2, scope: !3557)
!3585 = !DILocation(line: 662, column: 3, scope: !3565)
!3586 = !DILocation(line: 662, column: 9, scope: !3565)
!3587 = !DILocation(line: 662, column: 17, scope: !3569)
!3588 = !DILocation(line: 662, column: 17, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 662, column: 17)
!3590 = !DILocation(line: 662, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 662, column: 17)
!3592 = !DILocation(line: 662, column: 17, scope: !3565)
!3593 = !DILocation(line: 663, column: 18, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 663, column: 7)
!3595 = !DILocation(line: 663, column: 7, scope: !3594)
!3596 = !DILocation(line: 663, column: 25, scope: !3594)
!3597 = !DILocation(line: 663, column: 28, scope: !3594)
!3598 = !DILocation(line: 663, column: 35, scope: !3594)
!3599 = !DILocation(line: 663, column: 7, scope: !3565)
!3600 = !DILocation(line: 664, column: 26, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 663, column: 42)
!3602 = !DILocation(line: 664, column: 12, scope: !3601)
!3603 = !DILocation(line: 664, column: 10, scope: !3601)
!3604 = !DILocation(line: 665, column: 11, scope: !3601)
!3605 = !DILocation(line: 666, column: 4, scope: !3601)
!3606 = distinct !{!3606, !3607, !3608, !636}
!3607 = !DILocation(line: 661, column: 2, scope: !3567)
!3608 = !DILocation(line: 678, column: 2, scope: !3567)
!3609 = !DILocation(line: 668, column: 9, scope: !3565)
!3610 = !DILocation(line: 669, column: 3, scope: !3565)
!3611 = !DILocation(line: 669, column: 10, scope: !3565)
!3612 = !DILocation(line: 669, column: 17, scope: !3565)
!3613 = !DILocation(line: 670, column: 4, scope: !3571)
!3614 = !DILocation(line: 670, column: 28, scope: !3571)
!3615 = !DILocation(line: 670, column: 34, scope: !3571)
!3616 = !DILocation(line: 671, column: 13, scope: !3571)
!3617 = !DILocation(line: 671, column: 20, scope: !3571)
!3618 = !DILocation(line: 671, column: 27, scope: !3571)
!3619 = !DILocation(line: 671, column: 11, scope: !3571)
!3620 = !DILocation(line: 672, column: 12, scope: !3571)
!3621 = !DILocation(line: 672, column: 19, scope: !3571)
!3622 = !DILocation(line: 672, column: 10, scope: !3571)
!3623 = !DILocation(line: 673, column: 4, scope: !3573)
!3624 = !DILocation(line: 673, column: 4, scope: !3576)
!3625 = !DILocation(line: 673, column: 4, scope: !3575)
!3626 = !DILocation(line: 673, column: 4, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 673, column: 4)
!3628 = !DILocation(line: 673, column: 4, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 673, column: 4)
!3630 = !{i64 2152847045, i64 2152847074, i64 2152847120, i64 2152847178, i64 2152847232, i64 2152847286, i64 2152847341, i64 2152847372, i64 2152847680, i64 2152847686, i64 2152847733, i64 2152847756, i64 2152847782}
!3631 = !DILocation(line: 673, column: 4, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 673, column: 4)
!3633 = !DILocation(line: 673, column: 4, scope: !3571)
!3634 = !DILocation(line: 674, column: 25, scope: !3571)
!3635 = !DILocation(line: 674, column: 4, scope: !3571)
!3636 = !DILocation(line: 675, column: 8, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 675, column: 8)
!3638 = !DILocation(line: 675, column: 29, scope: !3637)
!3639 = !DILocation(line: 675, column: 15, scope: !3637)
!3640 = !DILocation(line: 675, column: 12, scope: !3637)
!3641 = !DILocation(line: 675, column: 8, scope: !3571)
!3642 = !DILocation(line: 676, column: 5, scope: !3637)
!3643 = !DILocation(line: 677, column: 3, scope: !3565)
!3644 = distinct !{!3644, !3610, !3643, !635, !636}
!3645 = !DILocation(line: 678, column: 2, scope: !3566)
!3646 = !DILocation(line: 661, column: 2, scope: !3566)
!3647 = !DILocation(line: 679, column: 1, scope: !3557)
!3648 = distinct !DISubprogram(name: "radix_tree_init", scope: !3, file: !3, line: 1594, type: !3649, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null}
!3651 = !{!3652, !3653, !3655}
!3652 = !DILocalVariable(name: "ret", scope: !3648, file: !3, line: 1596, type: !14)
!3653 = !DILocalVariable(name: "__ret_warn_on", scope: !3654, file: !3, line: 1607, type: !14)
!3654 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1607, column: 2)
!3655 = !DILocalVariable(name: "__flags", scope: !3656, file: !3, line: 1607, type: !14)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1607, column: 2)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 1607, column: 2)
!3658 = !DILocation(line: 1596, column: 2, scope: !3648)
!3659 = !DILocation(line: 1596, column: 6, scope: !3648)
!3660 = !DILocation(line: 1598, column: 2, scope: !3648)
!3661 = !DILocation(line: 1598, column: 2, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1598, column: 2)
!3663 = !DILocation(line: 1599, column: 2, scope: !3648)
!3664 = !DILocation(line: 1599, column: 2, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1599, column: 2)
!3666 = !DILocation(line: 1600, column: 2, scope: !3648)
!3667 = !DILocation(line: 1600, column: 2, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1600, column: 2)
!3669 = !DILocation(line: 1601, column: 27, scope: !3648)
!3670 = !DILocation(line: 1601, column: 25, scope: !3648)
!3671 = !DILocation(line: 1605, column: 8, scope: !3648)
!3672 = !DILocation(line: 1605, column: 6, scope: !3648)
!3673 = !DILocation(line: 1607, column: 2, scope: !3654)
!3674 = !DILocation(line: 1607, column: 2, scope: !3657)
!3675 = !DILocation(line: 1607, column: 2, scope: !3656)
!3676 = !DILocation(line: 1607, column: 2, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1607, column: 2)
!3678 = !DILocation(line: 1607, column: 2, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1607, column: 2)
!3680 = !{i64 2152976547, i64 2152976576, i64 2152976622, i64 2152976680, i64 2152976734, i64 2152976788, i64 2152976843, i64 2152976874, i64 2152977182, i64 2152977188, i64 2152977235, i64 2152977258, i64 2152977284}
!3681 = !DILocation(line: 1607, column: 2, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1607, column: 2)
!3683 = !DILocation(line: 1607, column: 2, scope: !3648)
!3684 = !DILocation(line: 1608, column: 1, scope: !3648)
!3685 = !DISubprogram(name: "kmem_cache_create", scope: !501, file: !501, line: 189, type: !3686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!397, !3688, !7, !7, !317, !3690}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !213}
!3693 = distinct !DISubprogram(name: "radix_tree_node_ctor", scope: !3, file: !3, line: 1570, type: !3691, scopeLine: 1571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3694)
!3694 = !{!3695, !3696}
!3695 = !DILocalVariable(name: "arg", arg: 1, scope: !3693, file: !3, line: 1570, type: !213)
!3696 = !DILocalVariable(name: "node", scope: !3693, file: !3, line: 1572, type: !214)
!3697 = !DILocation(line: 1570, column: 28, scope: !3693)
!3698 = !DILocation(line: 1572, column: 2, scope: !3693)
!3699 = !DILocation(line: 1572, column: 26, scope: !3693)
!3700 = !DILocation(line: 1572, column: 33, scope: !3693)
!3701 = !DILocation(line: 1574, column: 9, scope: !3693)
!3702 = !DILocation(line: 1574, column: 2, scope: !3693)
!3703 = !DILocation(line: 1575, column: 18, scope: !3693)
!3704 = !DILocation(line: 1575, column: 24, scope: !3693)
!3705 = !DILocation(line: 1575, column: 2, scope: !3693)
!3706 = !DILocation(line: 1576, column: 1, scope: !3693)
!3707 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !13, file: !13, line: 323, type: !3708, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3713)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!14, !12, !3688, !3710, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!14, !7}
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "state", arg: 1, scope: !3707, file: !13, line: 323, type: !12)
!3715 = !DILocalVariable(name: "name", arg: 2, scope: !3707, file: !13, line: 324, type: !3688)
!3716 = !DILocalVariable(name: "startup", arg: 3, scope: !3707, file: !13, line: 325, type: !3710)
!3717 = !DILocalVariable(name: "teardown", arg: 4, scope: !3707, file: !13, line: 326, type: !3710)
!3718 = !DILocation(line: 323, column: 62, scope: !3707)
!3719 = !DILocation(line: 324, column: 22, scope: !3707)
!3720 = !DILocation(line: 325, column: 16, scope: !3707)
!3721 = !DILocation(line: 326, column: 16, scope: !3707)
!3722 = !DILocation(line: 328, column: 29, scope: !3707)
!3723 = !DILocation(line: 328, column: 36, scope: !3707)
!3724 = !DILocation(line: 328, column: 49, scope: !3707)
!3725 = !DILocation(line: 328, column: 58, scope: !3707)
!3726 = !DILocation(line: 328, column: 9, scope: !3707)
!3727 = !DILocation(line: 328, column: 2, scope: !3707)
!3728 = distinct !DISubprogram(name: "radix_tree_cpu_dead", scope: !3, file: !3, line: 1578, type: !3711, scopeLine: 1579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3736}
!3730 = !DILocalVariable(name: "cpu", arg: 1, scope: !3728, file: !3, line: 1578, type: !7)
!3731 = !DILocalVariable(name: "rtp", scope: !3728, file: !3, line: 1580, type: !320)
!3732 = !DILocalVariable(name: "node", scope: !3728, file: !3, line: 1581, type: !214)
!3733 = !DILocalVariable(name: "__vpp_verify", scope: !3734, file: !3, line: 1584, type: !415)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1584, column: 9)
!3735 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1584, column: 9)
!3736 = !DILocalVariable(name: "__ptr", scope: !3737, file: !3, line: 1584, type: !301)
!3737 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1584, column: 9)
!3738 = !DILocation(line: 1578, column: 45, scope: !3728)
!3739 = !DILocation(line: 1580, column: 2, scope: !3728)
!3740 = !DILocation(line: 1580, column: 29, scope: !3728)
!3741 = !DILocation(line: 1581, column: 2, scope: !3728)
!3742 = !DILocation(line: 1581, column: 26, scope: !3728)
!3743 = !DILocation(line: 1584, column: 9, scope: !3735)
!3744 = !DILocation(line: 1584, column: 9, scope: !3734)
!3745 = !DILocation(line: 1584, column: 9, scope: !3737)
!3746 = !DILocation(line: 1584, column: 6, scope: !3728)
!3747 = !DILocation(line: 1585, column: 2, scope: !3728)
!3748 = !DILocation(line: 1585, column: 9, scope: !3728)
!3749 = !DILocation(line: 1585, column: 14, scope: !3728)
!3750 = !DILocation(line: 1586, column: 10, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1585, column: 18)
!3752 = !DILocation(line: 1586, column: 15, scope: !3751)
!3753 = !DILocation(line: 1586, column: 8, scope: !3751)
!3754 = !DILocation(line: 1587, column: 16, scope: !3751)
!3755 = !DILocation(line: 1587, column: 22, scope: !3751)
!3756 = !DILocation(line: 1587, column: 3, scope: !3751)
!3757 = !DILocation(line: 1587, column: 8, scope: !3751)
!3758 = !DILocation(line: 1587, column: 14, scope: !3751)
!3759 = !DILocation(line: 1588, column: 19, scope: !3751)
!3760 = !DILocation(line: 1588, column: 43, scope: !3751)
!3761 = !DILocation(line: 1588, column: 3, scope: !3751)
!3762 = !DILocation(line: 1589, column: 3, scope: !3751)
!3763 = !DILocation(line: 1589, column: 8, scope: !3751)
!3764 = !DILocation(line: 1589, column: 10, scope: !3751)
!3765 = distinct !{!3765, !3747, !3766, !635, !636}
!3766 = !DILocation(line: 1590, column: 2, scope: !3728)
!3767 = !DILocation(line: 1592, column: 1, scope: !3728)
!3768 = !DILocation(line: 1591, column: 2, scope: !3728)
!3769 = distinct !DISubprogram(name: "local_lock_release", scope: !308, file: !308, line: 48, type: !699, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3770)
!3770 = !{!3771}
!3771 = !DILocalVariable(name: "l", arg: 1, scope: !3769, file: !308, line: 48, type: !306)
!3772 = !DILocation(line: 48, column: 53, scope: !3769)
!3773 = !DILocation(line: 48, column: 58, scope: !3769)
!3774 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !672, file: !672, line: 93, type: !3775, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!533}
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "c", scope: !3779, file: !672, line: 95, type: !533)
!3779 = distinct !DILexicalBlock(scope: !3774, file: !672, line: 95, column: 9)
!3780 = !DILocation(line: 95, column: 9, scope: !3779)
!3781 = !{i64 2149700991, i64 2149701084}
!3782 = !DILocation(line: 95, column: 9, scope: !3774)
!3783 = !DILocation(line: 95, column: 2, scope: !3774)
!3784 = !DISubprogram(name: "kmem_cache_alloc", scope: !501, file: !501, line: 500, type: !3785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!213, !397, !272}
!3787 = distinct !DISubprogram(name: "root_gfp_mask", scope: !3, file: !3, line: 95, type: !3788, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!272, !1080}
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "root", arg: 1, scope: !3787, file: !3, line: 95, type: !1080)
!3792 = !DILocation(line: 95, column: 65, scope: !3787)
!3793 = !DILocation(line: 97, column: 9, scope: !3787)
!3794 = !DILocation(line: 97, column: 15, scope: !3787)
!3795 = !DILocation(line: 97, column: 24, scope: !3787)
!3796 = !DILocation(line: 97, column: 2, scope: !3787)
!3797 = distinct !DISubprogram(name: "const_test_bit", scope: !3798, file: !3798, line: 166, type: !3799, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3798 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!533, !301, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !301)
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DILocalVariable(name: "nr", arg: 1, scope: !3797, file: !3798, line: 166, type: !301)
!3806 = !DILocalVariable(name: "addr", arg: 2, scope: !3797, file: !3798, line: 166, type: !3801)
!3807 = !DILocalVariable(name: "p", scope: !3797, file: !3798, line: 168, type: !328)
!3808 = !DILocalVariable(name: "mask", scope: !3797, file: !3798, line: 169, type: !301)
!3809 = !DILocalVariable(name: "val", scope: !3797, file: !3798, line: 170, type: !301)
!3810 = !DILocation(line: 166, column: 30, scope: !3797)
!3811 = !DILocation(line: 166, column: 64, scope: !3797)
!3812 = !DILocation(line: 168, column: 2, scope: !3797)
!3813 = !DILocation(line: 168, column: 23, scope: !3797)
!3814 = !DILocation(line: 168, column: 50, scope: !3797)
!3815 = !DILocation(line: 168, column: 57, scope: !3797)
!3816 = !DILocation(line: 168, column: 55, scope: !3797)
!3817 = !DILocation(line: 169, column: 2, scope: !3797)
!3818 = !DILocation(line: 169, column: 16, scope: !3797)
!3819 = !DILocation(line: 169, column: 23, scope: !3797)
!3820 = !DILocation(line: 170, column: 2, scope: !3797)
!3821 = !DILocation(line: 170, column: 16, scope: !3797)
!3822 = !DILocation(line: 170, column: 23, scope: !3797)
!3823 = !DILocation(line: 170, column: 22, scope: !3797)
!3824 = !DILocation(line: 172, column: 12, scope: !3797)
!3825 = !DILocation(line: 172, column: 18, scope: !3797)
!3826 = !DILocation(line: 172, column: 16, scope: !3797)
!3827 = !DILocation(line: 172, column: 10, scope: !3797)
!3828 = !DILocation(line: 172, column: 9, scope: !3797)
!3829 = !DILocation(line: 173, column: 1, scope: !3797)
!3830 = !DILocation(line: 172, column: 2, scope: !3797)
!3831 = distinct !DISubprogram(name: "_test_bit", scope: !3832, file: !3832, line: 139, type: !3799, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3832 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3833 = !{!3834, !3835}
!3834 = !DILocalVariable(name: "nr", arg: 1, scope: !3831, file: !3832, line: 139, type: !301)
!3835 = !DILocalVariable(name: "addr", arg: 2, scope: !3831, file: !3832, line: 139, type: !3801)
!3836 = !DILocation(line: 139, column: 25, scope: !3831)
!3837 = !DILocation(line: 139, column: 59, scope: !3831)
!3838 = !DILocation(line: 141, column: 25, scope: !3831)
!3839 = !DILocation(line: 141, column: 32, scope: !3831)
!3840 = !DILocation(line: 141, column: 30, scope: !3831)
!3841 = !DILocation(line: 141, column: 2, scope: !3831)
!3842 = !DILocation(line: 142, column: 23, scope: !3831)
!3843 = !DILocation(line: 142, column: 27, scope: !3831)
!3844 = !DILocation(line: 142, column: 9, scope: !3831)
!3845 = !DILocation(line: 142, column: 2, scope: !3831)
!3846 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3847, file: !3847, line: 66, type: !3848, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3847 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !3850, !3853}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !250, line: 61, baseType: !3854)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !3855, line: 72, baseType: !3856)
!3855 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3855, line: 16, baseType: !301)
!3857 = !{!3858, !3859}
!3858 = !DILocalVariable(name: "v", arg: 1, scope: !3846, file: !3847, line: 66, type: !3850)
!3859 = !DILocalVariable(name: "size", arg: 2, scope: !3846, file: !3847, line: 66, type: !3853)
!3860 = !DILocation(line: 66, column: 73, scope: !3846)
!3861 = !DILocation(line: 66, column: 83, scope: !3846)
!3862 = !DILocation(line: 68, column: 19, scope: !3846)
!3863 = !DILocation(line: 68, column: 22, scope: !3846)
!3864 = !DILocation(line: 68, column: 2, scope: !3846)
!3865 = !DILocation(line: 69, column: 2, scope: !3846)
!3866 = !DILocation(line: 70, column: 1, scope: !3846)
!3867 = distinct !DISubprogram(name: "arch_test_bit", scope: !3868, file: !3868, line: 237, type: !3799, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3869)
!3868 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3869 = !{!3870, !3871}
!3870 = !DILocalVariable(name: "nr", arg: 1, scope: !3867, file: !3868, line: 237, type: !301)
!3871 = !DILocalVariable(name: "addr", arg: 2, scope: !3867, file: !3868, line: 237, type: !3801)
!3872 = !DILocation(line: 237, column: 29, scope: !3867)
!3873 = !DILocation(line: 237, column: 63, scope: !3867)
!3874 = !DILocation(line: 239, column: 30, scope: !3867)
!3875 = !DILocation(line: 239, column: 9, scope: !3867)
!3876 = !DILocation(line: 239, column: 54, scope: !3867)
!3877 = !DILocation(line: 239, column: 58, scope: !3867)
!3878 = !DILocation(line: 239, column: 36, scope: !3867)
!3879 = !DILocation(line: 240, column: 26, scope: !3867)
!3880 = !DILocation(line: 240, column: 30, scope: !3867)
!3881 = !DILocation(line: 240, column: 8, scope: !3867)
!3882 = !DILocation(line: 239, column: 2, scope: !3867)
!3883 = distinct !DISubprogram(name: "kasan_check_read", scope: !3884, file: !3884, line: 40, type: !3885, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3887)
!3884 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!533, !3850, !7}
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "p", arg: 1, scope: !3883, file: !3884, line: 40, type: !3850)
!3889 = !DILocalVariable(name: "size", arg: 2, scope: !3883, file: !3884, line: 40, type: !7)
!3890 = !DILocation(line: 40, column: 58, scope: !3883)
!3891 = !DILocation(line: 40, column: 74, scope: !3883)
!3892 = !DILocation(line: 42, column: 2, scope: !3883)
!3893 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3894, file: !3894, line: 229, type: !3895, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3897)
!3894 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3850, !3853, !14}
!3897 = !{!3898, !3899, !3900}
!3898 = !DILocalVariable(name: "ptr", arg: 1, scope: !3893, file: !3894, line: 229, type: !3850)
!3899 = !DILocalVariable(name: "size", arg: 2, scope: !3893, file: !3894, line: 229, type: !3853)
!3900 = !DILocalVariable(name: "type", arg: 3, scope: !3893, file: !3894, line: 230, type: !14)
!3901 = !DILocation(line: 229, column: 60, scope: !3893)
!3902 = !DILocation(line: 229, column: 72, scope: !3893)
!3903 = !DILocation(line: 230, column: 15, scope: !3893)
!3904 = !DILocation(line: 230, column: 23, scope: !3893)
!3905 = distinct !DISubprogram(name: "constant_test_bit", scope: !3868, file: !3868, line: 204, type: !3906, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!533, !335, !3801}
!3908 = !{!3909, !3910}
!3909 = !DILocalVariable(name: "nr", arg: 1, scope: !3905, file: !3868, line: 204, type: !335)
!3910 = !DILocalVariable(name: "addr", arg: 2, scope: !3905, file: !3868, line: 204, type: !3801)
!3911 = !DILocation(line: 204, column: 52, scope: !3905)
!3912 = !DILocation(line: 204, column: 86, scope: !3905)
!3913 = !DILocation(line: 206, column: 19, scope: !3905)
!3914 = !DILocation(line: 206, column: 22, scope: !3905)
!3915 = !DILocation(line: 206, column: 15, scope: !3905)
!3916 = !DILocation(line: 207, column: 4, scope: !3905)
!3917 = !DILocation(line: 207, column: 9, scope: !3905)
!3918 = !DILocation(line: 207, column: 12, scope: !3905)
!3919 = !DILocation(line: 206, column: 44, scope: !3905)
!3920 = !DILocation(line: 207, column: 37, scope: !3905)
!3921 = !DILocation(line: 206, column: 2, scope: !3905)
!3922 = distinct !DISubprogram(name: "variable_test_bit", scope: !3868, file: !3868, line: 224, type: !3906, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3923)
!3923 = !{!3924, !3925, !3926}
!3924 = !DILocalVariable(name: "nr", arg: 1, scope: !3922, file: !3868, line: 224, type: !335)
!3925 = !DILocalVariable(name: "addr", arg: 2, scope: !3922, file: !3868, line: 224, type: !3801)
!3926 = !DILocalVariable(name: "oldbit", scope: !3922, file: !3868, line: 226, type: !533)
!3927 = !DILocation(line: 224, column: 52, scope: !3922)
!3928 = !DILocation(line: 224, column: 86, scope: !3922)
!3929 = !DILocation(line: 226, column: 2, scope: !3922)
!3930 = !DILocation(line: 226, column: 7, scope: !3922)
!3931 = !DILocation(line: 231, column: 33, scope: !3922)
!3932 = !DILocation(line: 231, column: 46, scope: !3922)
!3933 = !DILocation(line: 228, column: 2, scope: !3922)
!3934 = !{i64 2147819997, i64 2147820071}
!3935 = !DILocation(line: 233, column: 9, scope: !3922)
!3936 = !DILocation(line: 234, column: 1, scope: !3922)
!3937 = !DILocation(line: 233, column: 2, scope: !3922)
!3938 = distinct !DISubprogram(name: "radix_tree_shrink", scope: !3, file: !3, line: 468, type: !3939, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!533, !225}
!3941 = !{!3942, !3943, !3944, !3948, !3950, !3951, !3953, !3955}
!3942 = !DILocalVariable(name: "root", arg: 1, scope: !3938, file: !3, line: 468, type: !225)
!3943 = !DILocalVariable(name: "shrunk", scope: !3938, file: !3, line: 470, type: !533)
!3944 = !DILocalVariable(name: "node", scope: !3945, file: !3, line: 473, type: !214)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 472, column: 11)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 472, column: 2)
!3947 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 472, column: 2)
!3948 = !DILocalVariable(name: "__UNIQUE_ID_rcu218", scope: !3949, file: !3, line: 473, type: !213)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 473, column: 34)
!3950 = !DILocalVariable(name: "child", scope: !3945, file: !3, line: 474, type: !214)
!3951 = !DILocalVariable(name: "__UNIQUE_ID_rcu220", scope: !3952, file: !3, line: 486, type: !213)
!3952 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 486, column: 11)
!3953 = !DILocalVariable(name: "__ret_warn_on", scope: !3954, file: !3, line: 535, type: !14)
!3954 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 535, column: 3)
!3955 = !DILocalVariable(name: "__flags", scope: !3956, file: !3, line: 535, type: !14)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 535, column: 3)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 535, column: 3)
!3958 = !DILocation(line: 468, column: 62, scope: !3938)
!3959 = !DILocation(line: 470, column: 2, scope: !3938)
!3960 = !DILocation(line: 470, column: 7, scope: !3938)
!3961 = !DILocation(line: 472, column: 2, scope: !3938)
!3962 = !DILocation(line: 473, column: 3, scope: !3945)
!3963 = !DILocation(line: 473, column: 27, scope: !3945)
!3964 = !DILocation(line: 473, column: 34, scope: !3949)
!3965 = !DILocation(line: 473, column: 34, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 473, column: 34)
!3967 = !DILocation(line: 473, column: 34, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 473, column: 34)
!3969 = !DILocation(line: 473, column: 34, scope: !3945)
!3970 = !DILocation(line: 474, column: 3, scope: !3945)
!3971 = !DILocation(line: 474, column: 27, scope: !3945)
!3972 = !DILocation(line: 476, column: 36, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 476, column: 7)
!3974 = !DILocation(line: 476, column: 8, scope: !3973)
!3975 = !DILocation(line: 476, column: 7, scope: !3945)
!3976 = !DILocation(line: 477, column: 4, scope: !3973)
!3977 = !DILocation(line: 478, column: 24, scope: !3945)
!3978 = !DILocation(line: 478, column: 10, scope: !3945)
!3979 = !DILocation(line: 478, column: 8, scope: !3945)
!3980 = !DILocation(line: 484, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 484, column: 7)
!3982 = !DILocation(line: 484, column: 13, scope: !3981)
!3983 = !DILocation(line: 484, column: 19, scope: !3981)
!3984 = !DILocation(line: 484, column: 7, scope: !3945)
!3985 = !DILocation(line: 485, column: 4, scope: !3981)
!3986 = !DILocation(line: 486, column: 11, scope: !3952)
!3987 = !DILocation(line: 486, column: 11, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 486, column: 11)
!3989 = !DILocation(line: 486, column: 11, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 486, column: 11)
!3991 = !DILocation(line: 486, column: 11, scope: !3945)
!3992 = !DILocation(line: 486, column: 9, scope: !3945)
!3993 = !DILocation(line: 487, column: 8, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 487, column: 7)
!3995 = !DILocation(line: 487, column: 7, scope: !3945)
!3996 = !DILocation(line: 488, column: 4, scope: !3994)
!3997 = !DILocation(line: 495, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 495, column: 7)
!3999 = !DILocation(line: 495, column: 14, scope: !3998)
!4000 = !DILocation(line: 495, column: 20, scope: !3998)
!4001 = !DILocation(line: 495, column: 30, scope: !3998)
!4002 = !DILocation(line: 495, column: 23, scope: !3998)
!4003 = !DILocation(line: 495, column: 7, scope: !3945)
!4004 = !DILocation(line: 496, column: 4, scope: !3998)
!4005 = !DILocation(line: 498, column: 35, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 498, column: 7)
!4007 = !DILocation(line: 498, column: 7, scope: !4006)
!4008 = !DILocation(line: 498, column: 7, scope: !3945)
!4009 = !DILocation(line: 499, column: 18, scope: !4006)
!4010 = !DILocation(line: 499, column: 4, scope: !4006)
!4011 = !DILocation(line: 499, column: 26, scope: !4006)
!4012 = !DILocation(line: 499, column: 33, scope: !4006)
!4013 = !DILocation(line: 508, column: 33, scope: !3945)
!4014 = !DILocation(line: 508, column: 3, scope: !3945)
!4015 = !DILocation(line: 508, column: 9, scope: !3945)
!4016 = !DILocation(line: 508, column: 17, scope: !3945)
!4017 = !DILocation(line: 509, column: 14, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 509, column: 7)
!4019 = !DILocation(line: 509, column: 7, scope: !4018)
!4020 = !DILocation(line: 509, column: 20, scope: !4018)
!4021 = !DILocation(line: 509, column: 32, scope: !4018)
!4022 = !DILocation(line: 509, column: 24, scope: !4018)
!4023 = !DILocation(line: 509, column: 7, scope: !3945)
!4024 = !DILocation(line: 510, column: 19, scope: !4018)
!4025 = !DILocation(line: 510, column: 4, scope: !4018)
!4026 = !DILocation(line: 530, column: 3, scope: !3945)
!4027 = !DILocation(line: 530, column: 9, scope: !3945)
!4028 = !DILocation(line: 530, column: 15, scope: !3945)
!4029 = !DILocation(line: 531, column: 36, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 531, column: 7)
!4031 = !DILocation(line: 531, column: 8, scope: !4030)
!4032 = !DILocation(line: 531, column: 7, scope: !3945)
!4033 = !DILocation(line: 532, column: 35, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 531, column: 44)
!4035 = !DILocation(line: 532, column: 4, scope: !4034)
!4036 = !DILocation(line: 532, column: 10, scope: !4034)
!4037 = !DILocation(line: 532, column: 19, scope: !4034)
!4038 = !DILocation(line: 533, column: 3, scope: !4034)
!4039 = !DILocation(line: 535, column: 3, scope: !3954)
!4040 = !DILocation(line: 535, column: 3, scope: !3957)
!4041 = !DILocation(line: 535, column: 3, scope: !3956)
!4042 = !DILocation(line: 535, column: 3, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 535, column: 3)
!4044 = !DILocation(line: 535, column: 3, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 535, column: 3)
!4046 = !{i64 2152822563, i64 2152822592, i64 2152822638, i64 2152822696, i64 2152822750, i64 2152822804, i64 2152822859, i64 2152822890, i64 2152823198, i64 2152823204, i64 2152823251, i64 2152823274, i64 2152823300}
!4047 = !DILocation(line: 535, column: 3, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 535, column: 3)
!4049 = !DILocation(line: 535, column: 3, scope: !3945)
!4050 = !DILocation(line: 536, column: 24, scope: !3945)
!4051 = !DILocation(line: 536, column: 3, scope: !3945)
!4052 = !DILocation(line: 537, column: 10, scope: !3945)
!4053 = !DILocation(line: 538, column: 2, scope: !3946)
!4054 = !DILocation(line: 472, column: 2, scope: !3946)
!4055 = distinct !{!4055, !4056, !4057, !636}
!4056 = !DILocation(line: 472, column: 2, scope: !3947)
!4057 = !DILocation(line: 538, column: 2, scope: !3947)
!4058 = !DILocation(line: 540, column: 9, scope: !3938)
!4059 = !DILocation(line: 541, column: 1, scope: !3938)
!4060 = !DILocation(line: 540, column: 2, scope: !3938)
!4061 = distinct !DISubprogram(name: "root_tag_clear_all", scope: !3, file: !3, line: 128, type: !4062, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !225}
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "root", arg: 1, scope: !4061, file: !3, line: 128, type: !225)
!4066 = !DILocation(line: 128, column: 63, scope: !4061)
!4067 = !DILocation(line: 130, column: 2, scope: !4061)
!4068 = !DILocation(line: 130, column: 8, scope: !4061)
!4069 = !DILocation(line: 130, column: 17, scope: !4061)
!4070 = !DILocation(line: 131, column: 1, scope: !4061)
!4071 = distinct !DISubprogram(name: "list_empty", scope: !479, file: !479, line: 371, type: !4072, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4076)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!14, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "head", arg: 1, scope: !4071, file: !479, line: 371, type: !4074)
!4078 = !DILocation(line: 371, column: 54, scope: !4071)
!4079 = !DILocation(line: 373, column: 9, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4071, file: !479, line: 373, column: 9)
!4081 = !DILocation(line: 373, column: 9, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4080, file: !479, line: 373, column: 9)
!4083 = !DILocation(line: 373, column: 34, scope: !4071)
!4084 = !DILocation(line: 373, column: 31, scope: !4071)
!4085 = !DILocation(line: 373, column: 2, scope: !4071)
!4086 = distinct !DISubprogram(name: "radix_tree_node_free", scope: !3, file: !3, line: 308, type: !3558, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4087 = !{!4088}
!4088 = !DILocalVariable(name: "node", arg: 1, scope: !4086, file: !3, line: 308, type: !214)
!4089 = !DILocation(line: 308, column: 46, scope: !4086)
!4090 = !DILocation(line: 310, column: 12, scope: !4086)
!4091 = !DILocation(line: 310, column: 18, scope: !4086)
!4092 = !DILocation(line: 310, column: 2, scope: !4086)
!4093 = !DILocation(line: 311, column: 1, scope: !4086)
!4094 = distinct !DISubprogram(name: "root_tag_clear", scope: !3, file: !3, line: 123, type: !1752, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4095)
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "root", arg: 1, scope: !4094, file: !3, line: 123, type: !225)
!4097 = !DILocalVariable(name: "tag", arg: 2, scope: !4094, file: !3, line: 123, type: !7)
!4098 = !DILocation(line: 123, column: 59, scope: !4094)
!4099 = !DILocation(line: 123, column: 74, scope: !4094)
!4100 = !DILocation(line: 125, column: 43, scope: !4094)
!4101 = !DILocation(line: 125, column: 47, scope: !4094)
!4102 = !DILocation(line: 125, column: 39, scope: !4094)
!4103 = !DILocation(line: 125, column: 35, scope: !4094)
!4104 = !DILocation(line: 125, column: 2, scope: !4094)
!4105 = !DILocation(line: 125, column: 8, scope: !4094)
!4106 = !DILocation(line: 125, column: 17, scope: !4094)
!4107 = !DILocation(line: 126, column: 1, scope: !4094)
!4108 = !DISubprogram(name: "call_rcu", scope: !4109, file: !4109, line: 42, type: !4110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4109 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !287, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !250, line: 238, baseType: !289)
!4113 = distinct !DISubprogram(name: "generic___set_bit", scope: !3798, file: !3798, line: 28, type: !4114, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4117)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !301, !4116}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!4117 = !{!4118, !4119, !4120, !4121}
!4118 = !DILocalVariable(name: "nr", arg: 1, scope: !4113, file: !3798, line: 28, type: !301)
!4119 = !DILocalVariable(name: "addr", arg: 2, scope: !4113, file: !3798, line: 28, type: !4116)
!4120 = !DILocalVariable(name: "mask", scope: !4113, file: !3798, line: 30, type: !301)
!4121 = !DILocalVariable(name: "p", scope: !4113, file: !3798, line: 31, type: !330)
!4122 = !DILocation(line: 28, column: 33, scope: !4113)
!4123 = !DILocation(line: 28, column: 61, scope: !4113)
!4124 = !DILocation(line: 30, column: 2, scope: !4113)
!4125 = !DILocation(line: 30, column: 16, scope: !4113)
!4126 = !DILocation(line: 30, column: 23, scope: !4113)
!4127 = !DILocation(line: 31, column: 2, scope: !4113)
!4128 = !DILocation(line: 31, column: 17, scope: !4113)
!4129 = !DILocation(line: 31, column: 39, scope: !4113)
!4130 = !DILocation(line: 31, column: 47, scope: !4113)
!4131 = !DILocation(line: 31, column: 45, scope: !4113)
!4132 = !DILocation(line: 33, column: 9, scope: !4113)
!4133 = !DILocation(line: 33, column: 3, scope: !4113)
!4134 = !DILocation(line: 33, column: 6, scope: !4113)
!4135 = !DILocation(line: 34, column: 1, scope: !4113)
!4136 = distinct !DISubprogram(name: "___set_bit", scope: !3832, file: !3832, line: 26, type: !4114, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4137)
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "nr", arg: 1, scope: !4136, file: !3832, line: 26, type: !301)
!4139 = !DILocalVariable(name: "addr", arg: 2, scope: !4136, file: !3832, line: 26, type: !4116)
!4140 = !DILocation(line: 26, column: 26, scope: !4136)
!4141 = !DILocation(line: 26, column: 54, scope: !4136)
!4142 = !DILocation(line: 28, column: 19, scope: !4136)
!4143 = !DILocation(line: 28, column: 26, scope: !4136)
!4144 = !DILocation(line: 28, column: 24, scope: !4136)
!4145 = !DILocation(line: 28, column: 2, scope: !4136)
!4146 = !DILocation(line: 29, column: 17, scope: !4136)
!4147 = !DILocation(line: 29, column: 21, scope: !4136)
!4148 = !DILocation(line: 29, column: 2, scope: !4136)
!4149 = !DILocation(line: 30, column: 1, scope: !4136)
!4150 = distinct !DISubprogram(name: "instrument_write", scope: !3847, file: !3847, line: 38, type: !3848, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "v", arg: 1, scope: !4150, file: !3847, line: 38, type: !3850)
!4153 = !DILocalVariable(name: "size", arg: 2, scope: !4150, file: !3847, line: 38, type: !3853)
!4154 = !DILocation(line: 38, column: 67, scope: !4150)
!4155 = !DILocation(line: 38, column: 77, scope: !4150)
!4156 = !DILocation(line: 40, column: 20, scope: !4150)
!4157 = !DILocation(line: 40, column: 23, scope: !4150)
!4158 = !DILocation(line: 40, column: 2, scope: !4150)
!4159 = !DILocation(line: 41, column: 2, scope: !4150)
!4160 = !DILocation(line: 42, column: 1, scope: !4150)
!4161 = distinct !DISubprogram(name: "arch___set_bit", scope: !3868, file: !3868, line: 66, type: !4114, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4162)
!4162 = !{!4163, !4164}
!4163 = !DILocalVariable(name: "nr", arg: 1, scope: !4161, file: !3868, line: 66, type: !301)
!4164 = !DILocalVariable(name: "addr", arg: 2, scope: !4161, file: !3868, line: 66, type: !4116)
!4165 = !DILocation(line: 66, column: 30, scope: !4161)
!4166 = !DILocation(line: 66, column: 58, scope: !4161)
!4167 = !DILocation(line: 68, column: 44, scope: !4161)
!4168 = !DILocation(line: 68, column: 56, scope: !4161)
!4169 = !DILocation(line: 68, column: 2, scope: !4161)
!4170 = !{i64 2147807243}
!4171 = !DILocation(line: 69, column: 1, scope: !4161)
!4172 = distinct !DISubprogram(name: "kasan_check_write", scope: !3884, file: !3884, line: 44, type: !3885, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4173)
!4173 = !{!4174, !4175}
!4174 = !DILocalVariable(name: "p", arg: 1, scope: !4172, file: !3884, line: 44, type: !3850)
!4175 = !DILocalVariable(name: "size", arg: 2, scope: !4172, file: !3884, line: 44, type: !7)
!4176 = !DILocation(line: 44, column: 59, scope: !4172)
!4177 = !DILocation(line: 44, column: 75, scope: !4172)
!4178 = !DILocation(line: 46, column: 2, scope: !4172)
!4179 = distinct !DISubprogram(name: "tag_clear", scope: !3, file: !3, line: 106, type: !1725, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4180)
!4180 = !{!4181, !4182, !4183}
!4181 = !DILocalVariable(name: "node", arg: 1, scope: !4179, file: !3, line: 106, type: !214)
!4182 = !DILocalVariable(name: "tag", arg: 2, scope: !4179, file: !3, line: 106, type: !7)
!4183 = !DILocalVariable(name: "offset", arg: 3, scope: !4179, file: !3, line: 107, type: !14)
!4184 = !DILocation(line: 106, column: 54, scope: !4179)
!4185 = !DILocation(line: 106, column: 73, scope: !4179)
!4186 = !DILocation(line: 107, column: 7, scope: !4179)
!4187 = !DILocation(line: 109, column: 2, scope: !4179)
!4188 = !DILocation(line: 110, column: 1, scope: !4179)
!4189 = distinct !DISubprogram(name: "any_tag_set", scope: !3, file: !3, line: 152, type: !4190, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!14, !1052, !7}
!4192 = !{!4193, !4194, !4195}
!4193 = !DILocalVariable(name: "node", arg: 1, scope: !4189, file: !3, line: 152, type: !1052)
!4194 = !DILocalVariable(name: "tag", arg: 2, scope: !4189, file: !3, line: 153, type: !7)
!4195 = !DILocalVariable(name: "idx", scope: !4189, file: !3, line: 155, type: !7)
!4196 = !DILocation(line: 152, column: 61, scope: !4189)
!4197 = !DILocation(line: 153, column: 21, scope: !4189)
!4198 = !DILocation(line: 155, column: 2, scope: !4189)
!4199 = !DILocation(line: 155, column: 11, scope: !4189)
!4200 = !DILocation(line: 156, column: 11, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 156, column: 2)
!4202 = !DILocation(line: 156, column: 7, scope: !4201)
!4203 = !DILocation(line: 156, column: 16, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 156, column: 2)
!4205 = !DILocation(line: 156, column: 20, scope: !4204)
!4206 = !DILocation(line: 156, column: 2, scope: !4201)
!4207 = !DILocation(line: 157, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 157, column: 7)
!4209 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 156, column: 51)
!4210 = !DILocation(line: 157, column: 13, scope: !4208)
!4211 = !DILocation(line: 157, column: 18, scope: !4208)
!4212 = !DILocation(line: 157, column: 23, scope: !4208)
!4213 = !DILocation(line: 157, column: 7, scope: !4209)
!4214 = !DILocation(line: 158, column: 4, scope: !4208)
!4215 = !DILocation(line: 159, column: 2, scope: !4209)
!4216 = !DILocation(line: 156, column: 47, scope: !4204)
!4217 = !DILocation(line: 156, column: 2, scope: !4204)
!4218 = distinct !{!4218, !4206, !4219, !635, !636}
!4219 = !DILocation(line: 159, column: 2, scope: !4201)
!4220 = !DILocation(line: 160, column: 2, scope: !4189)
!4221 = !DILocation(line: 161, column: 1, scope: !4189)
!4222 = distinct !DISubprogram(name: "generic___clear_bit", scope: !3798, file: !3798, line: 37, type: !4114, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4223 = !{!4224, !4225, !4226, !4227}
!4224 = !DILocalVariable(name: "nr", arg: 1, scope: !4222, file: !3798, line: 37, type: !301)
!4225 = !DILocalVariable(name: "addr", arg: 2, scope: !4222, file: !3798, line: 37, type: !4116)
!4226 = !DILocalVariable(name: "mask", scope: !4222, file: !3798, line: 39, type: !301)
!4227 = !DILocalVariable(name: "p", scope: !4222, file: !3798, line: 40, type: !330)
!4228 = !DILocation(line: 37, column: 35, scope: !4222)
!4229 = !DILocation(line: 37, column: 63, scope: !4222)
!4230 = !DILocation(line: 39, column: 2, scope: !4222)
!4231 = !DILocation(line: 39, column: 16, scope: !4222)
!4232 = !DILocation(line: 39, column: 23, scope: !4222)
!4233 = !DILocation(line: 40, column: 2, scope: !4222)
!4234 = !DILocation(line: 40, column: 17, scope: !4222)
!4235 = !DILocation(line: 40, column: 39, scope: !4222)
!4236 = !DILocation(line: 40, column: 47, scope: !4222)
!4237 = !DILocation(line: 40, column: 45, scope: !4222)
!4238 = !DILocation(line: 42, column: 9, scope: !4222)
!4239 = !DILocation(line: 42, column: 8, scope: !4222)
!4240 = !DILocation(line: 42, column: 3, scope: !4222)
!4241 = !DILocation(line: 42, column: 5, scope: !4222)
!4242 = !DILocation(line: 43, column: 1, scope: !4222)
!4243 = distinct !DISubprogram(name: "___clear_bit", scope: !3832, file: !3832, line: 42, type: !4114, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4244)
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "nr", arg: 1, scope: !4243, file: !3832, line: 42, type: !301)
!4246 = !DILocalVariable(name: "addr", arg: 2, scope: !4243, file: !3832, line: 42, type: !4116)
!4247 = !DILocation(line: 42, column: 28, scope: !4243)
!4248 = !DILocation(line: 42, column: 56, scope: !4243)
!4249 = !DILocation(line: 44, column: 19, scope: !4243)
!4250 = !DILocation(line: 44, column: 26, scope: !4243)
!4251 = !DILocation(line: 44, column: 24, scope: !4243)
!4252 = !DILocation(line: 44, column: 2, scope: !4243)
!4253 = !DILocation(line: 45, column: 19, scope: !4243)
!4254 = !DILocation(line: 45, column: 23, scope: !4243)
!4255 = !DILocation(line: 45, column: 2, scope: !4243)
!4256 = !DILocation(line: 46, column: 1, scope: !4243)
!4257 = distinct !DISubprogram(name: "arch___clear_bit", scope: !3868, file: !3868, line: 92, type: !4114, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4258)
!4258 = !{!4259, !4260}
!4259 = !DILocalVariable(name: "nr", arg: 1, scope: !4257, file: !3868, line: 92, type: !301)
!4260 = !DILocalVariable(name: "addr", arg: 2, scope: !4257, file: !3868, line: 92, type: !4116)
!4261 = !DILocation(line: 92, column: 32, scope: !4257)
!4262 = !DILocation(line: 92, column: 60, scope: !4257)
!4263 = !DILocation(line: 94, column: 44, scope: !4257)
!4264 = !DILocation(line: 94, column: 56, scope: !4257)
!4265 = !DILocation(line: 94, column: 2, scope: !4257)
!4266 = !{i64 2147808788}
!4267 = !DILocation(line: 95, column: 1, scope: !4257)
!4268 = distinct !DISubprogram(name: "variable__ffs", scope: !3868, file: !3868, line: 250, type: !4269, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!301, !301}
!4271 = !{!4272}
!4272 = !DILocalVariable(name: "word", arg: 1, scope: !4268, file: !3868, line: 250, type: !301)
!4273 = !DILocation(line: 250, column: 66, scope: !4268)
!4274 = !DILocation(line: 254, column: 11, scope: !4268)
!4275 = !DILocation(line: 252, column: 2, scope: !4268)
!4276 = !{i64 314996}
!4277 = !DILocation(line: 255, column: 9, scope: !4268)
!4278 = !DILocation(line: 255, column: 2, scope: !4268)
!4279 = distinct !DISubprogram(name: "shift_maxindex", scope: !3, file: !3, line: 211, type: !4280, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!301, !7}
!4282 = !{!4283}
!4283 = !DILocalVariable(name: "shift", arg: 1, scope: !4279, file: !3, line: 211, type: !7)
!4284 = !DILocation(line: 211, column: 57, scope: !4279)
!4285 = !DILocation(line: 213, column: 33, scope: !4279)
!4286 = !DILocation(line: 213, column: 30, scope: !4279)
!4287 = !DILocation(line: 213, column: 40, scope: !4279)
!4288 = !DILocation(line: 213, column: 2, scope: !4279)
!4289 = distinct !DISubprogram(name: "radix_tree_chunk_size", scope: !6, file: !6, line: 373, type: !4290, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!335, !1961}
!4292 = !{!4293}
!4293 = !DILocalVariable(name: "iter", arg: 1, scope: !4289, file: !6, line: 373, type: !1961)
!4294 = !DILocation(line: 373, column: 47, scope: !4289)
!4295 = !DILocation(line: 375, column: 9, scope: !4289)
!4296 = !DILocation(line: 375, column: 15, scope: !4289)
!4297 = !DILocation(line: 375, column: 28, scope: !4289)
!4298 = !DILocation(line: 375, column: 34, scope: !4289)
!4299 = !DILocation(line: 375, column: 26, scope: !4289)
!4300 = !DILocation(line: 375, column: 2, scope: !4289)
!4301 = distinct !DISubprogram(name: "node_tag_set", scope: !3, file: !3, line: 938, type: !1819, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4302)
!4302 = !{!4303, !4304, !4305, !4306}
!4303 = !DILocalVariable(name: "root", arg: 1, scope: !4301, file: !3, line: 938, type: !225)
!4304 = !DILocalVariable(name: "node", arg: 2, scope: !4301, file: !3, line: 939, type: !214)
!4305 = !DILocalVariable(name: "tag", arg: 3, scope: !4301, file: !3, line: 940, type: !7)
!4306 = !DILocalVariable(name: "offset", arg: 4, scope: !4301, file: !3, line: 940, type: !7)
!4307 = !DILocation(line: 938, column: 50, scope: !4301)
!4308 = !DILocation(line: 939, column: 29, scope: !4301)
!4309 = !DILocation(line: 940, column: 18, scope: !4301)
!4310 = !DILocation(line: 940, column: 36, scope: !4301)
!4311 = !DILocation(line: 942, column: 2, scope: !4301)
!4312 = !DILocation(line: 942, column: 9, scope: !4301)
!4313 = !DILocation(line: 943, column: 15, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 943, column: 7)
!4315 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 942, column: 15)
!4316 = !DILocation(line: 943, column: 21, scope: !4314)
!4317 = !DILocation(line: 943, column: 26, scope: !4314)
!4318 = !DILocation(line: 943, column: 7, scope: !4314)
!4319 = !DILocation(line: 943, column: 7, scope: !4315)
!4320 = !DILocation(line: 944, column: 4, scope: !4314)
!4321 = !DILocation(line: 945, column: 11, scope: !4315)
!4322 = !DILocation(line: 945, column: 17, scope: !4315)
!4323 = !DILocation(line: 945, column: 22, scope: !4315)
!4324 = !DILocation(line: 945, column: 3, scope: !4315)
!4325 = !DILocation(line: 946, column: 12, scope: !4315)
!4326 = !DILocation(line: 946, column: 18, scope: !4315)
!4327 = !DILocation(line: 946, column: 10, scope: !4315)
!4328 = !DILocation(line: 947, column: 10, scope: !4315)
!4329 = !DILocation(line: 947, column: 16, scope: !4315)
!4330 = !DILocation(line: 947, column: 8, scope: !4315)
!4331 = distinct !{!4331, !4311, !4332, !635, !636}
!4332 = !DILocation(line: 948, column: 2, scope: !4301)
!4333 = !DILocation(line: 950, column: 20, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 950, column: 6)
!4335 = !DILocation(line: 950, column: 26, scope: !4334)
!4336 = !DILocation(line: 950, column: 7, scope: !4334)
!4337 = !DILocation(line: 950, column: 6, scope: !4301)
!4338 = !DILocation(line: 951, column: 16, scope: !4334)
!4339 = !DILocation(line: 951, column: 22, scope: !4334)
!4340 = !DILocation(line: 951, column: 3, scope: !4334)
!4341 = !DILocation(line: 952, column: 1, scope: !4301)
!4342 = distinct !DISubprogram(name: "preempt_count", scope: !672, file: !672, line: 25, type: !4343, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!14}
!4345 = !{!4346}
!4346 = !DILocalVariable(name: "pfo_val__", scope: !4347, file: !672, line: 27, type: !326)
!4347 = distinct !DILexicalBlock(scope: !4342, file: !672, line: 27, column: 9)
!4348 = !DILocation(line: 27, column: 9, scope: !4347)
!4349 = !{i64 2149686670}
!4350 = !DILocation(line: 27, column: 9, scope: !4342)
!4351 = !DILocation(line: 27, column: 48, scope: !4342)
!4352 = !DILocation(line: 27, column: 2, scope: !4342)
!4353 = distinct !DISubprogram(name: "kmemleak_update_trace", scope: !4354, file: !4354, line: 90, type: !4355, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4357)
!4354 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !415}
!4357 = !{!4358}
!4358 = !DILocalVariable(name: "ptr", arg: 1, scope: !4353, file: !4354, line: 90, type: !415)
!4359 = !DILocation(line: 90, column: 54, scope: !4353)
!4360 = !DILocation(line: 92, column: 1, scope: !4353)
!4361 = distinct !DISubprogram(name: "bitmap_fill", scope: !4362, file: !4362, line: 256, type: !4363, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4365)
!4362 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !330, !7}
!4365 = !{!4366, !4367, !4368}
!4366 = !DILocalVariable(name: "dst", arg: 1, scope: !4361, file: !4362, line: 256, type: !330)
!4367 = !DILocalVariable(name: "nbits", arg: 2, scope: !4361, file: !4362, line: 256, type: !7)
!4368 = !DILocalVariable(name: "len", scope: !4361, file: !4362, line: 258, type: !7)
!4369 = !DILocation(line: 256, column: 47, scope: !4361)
!4370 = !DILocation(line: 256, column: 65, scope: !4361)
!4371 = !DILocation(line: 258, column: 2, scope: !4361)
!4372 = !DILocation(line: 258, column: 15, scope: !4361)
!4373 = !DILocation(line: 258, column: 21, scope: !4361)
!4374 = !DILocation(line: 260, column: 6, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4361, file: !4362, line: 260, column: 6)
!4376 = !DILocation(line: 260, column: 6, scope: !4361)
!4377 = !DILocation(line: 261, column: 4, scope: !4375)
!4378 = !DILocation(line: 261, column: 8, scope: !4375)
!4379 = !DILocation(line: 261, column: 3, scope: !4375)
!4380 = !DILocation(line: 263, column: 10, scope: !4375)
!4381 = !DILocation(line: 263, column: 21, scope: !4375)
!4382 = !DILocation(line: 263, column: 3, scope: !4375)
!4383 = !DILocation(line: 264, column: 1, scope: !4361)
!4384 = distinct !DISubprogram(name: "xa_is_node", scope: !216, file: !216, line: 1258, type: !1386, scopeLine: 1259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4385 = !{!4386}
!4386 = !DILocalVariable(name: "entry", arg: 1, scope: !4384, file: !216, line: 1258, type: !415)
!4387 = !DILocation(line: 1258, column: 43, scope: !4384)
!4388 = !DILocation(line: 1260, column: 24, scope: !4384)
!4389 = !DILocation(line: 1260, column: 9, scope: !4384)
!4390 = !DILocation(line: 1260, column: 31, scope: !4384)
!4391 = !DILocation(line: 1260, column: 49, scope: !4384)
!4392 = !DILocation(line: 1260, column: 34, scope: !4384)
!4393 = !DILocation(line: 1260, column: 55, scope: !4384)
!4394 = !DILocation(line: 0, scope: !4384)
!4395 = !DILocation(line: 1260, column: 2, scope: !4384)
!4396 = distinct !DISubprogram(name: "xa_is_internal", scope: !216, file: !216, line: 169, type: !1386, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "entry", arg: 1, scope: !4396, file: !216, line: 169, type: !415)
!4399 = !DILocation(line: 169, column: 47, scope: !4396)
!4400 = !DILocation(line: 171, column: 25, scope: !4396)
!4401 = !DILocation(line: 171, column: 10, scope: !4396)
!4402 = !DILocation(line: 171, column: 31, scope: !4396)
!4403 = !DILocation(line: 171, column: 36, scope: !4396)
!4404 = !DILocation(line: 171, column: 2, scope: !4396)
!4405 = !DISubprogram(name: "__cpuhp_setup_state", scope: !13, file: !13, line: 263, type: !4406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!14, !12, !3688, !533, !3710, !3710, !533}
