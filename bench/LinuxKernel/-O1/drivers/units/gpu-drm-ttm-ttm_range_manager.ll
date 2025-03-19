; ModuleID = 'drivers/gpu/drm/ttm/ttm_range_manager.c'
source_filename = "drivers/gpu/drm/ttm/ttm_range_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_range_man_init_nocheck: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_range_man_init_nocheck ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ttm_range_man_fini_nocheck: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ttm_range_man_fini_nocheck ; .previous"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ttm_range_manager = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.16] }
%struct.anon.16 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.15, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.15 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.17, i64, i64, i64, %struct.kref, i32 }
%union.anon.17 = type { %struct.list_head }

@ttm_range_manager_func = internal constant %struct.ttm_resource_manager_func { ptr @ttm_range_man_alloc, ptr @ttm_range_man_free, ptr @ttm_range_man_intersects, ptr @ttm_range_man_compatible, ptr @ttm_range_man_debug }, align 8, !dbg !0
@__UNIQUE_ID___addressable_ttm_range_man_init_nocheck298 = internal global ptr @ttm_range_man_init_nocheck, section ".discard.addressable", align 8, !dbg !5071
@__UNIQUE_ID___addressable_ttm_range_man_fini_nocheck299 = internal global ptr @ttm_range_man_fini_nocheck, section ".discard.addressable", align 8, !dbg !5073
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5075
@.str.1 = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1, !dbg !5080
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_ttm_range_man_init_nocheck298, ptr @__UNIQUE_ID___addressable_ttm_range_man_fini_nocheck299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_range_man_init_nocheck(ptr noundef %bdev, i32 noundef %type, i1 noundef zeroext %use_tt, i64 noundef %p_size) #0 align 16 !dbg !5094 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %use_tt.addr = alloca i8, align 1
  %p_size.addr = alloca i64, align 8
  %man = alloca ptr, align 8
  %rman = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5098, metadata !DIExpression()), !dbg !5104
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5099, metadata !DIExpression()), !dbg !5105
  %frombool = zext i1 %use_tt to i8
  store i8 %frombool, ptr %use_tt.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_tt.addr, metadata !5100, metadata !DIExpression()), !dbg !5106
  store i64 %p_size, ptr %p_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_size.addr, metadata !5101, metadata !DIExpression()), !dbg !5107
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #16, !dbg !5108
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5102, metadata !DIExpression()), !dbg !5109
  call void @llvm.lifetime.start.p0(i64 8, ptr %rman) #16, !dbg !5110
  call void @llvm.dbg.declare(metadata ptr %rman, metadata !5103, metadata !DIExpression()), !dbg !5111
  %call = call noalias ptr @kzalloc(i64 noundef 368, i32 noundef 3264) #17, !dbg !5112
  store ptr %call, ptr %rman, align 8, !dbg !5113
  %0 = load ptr, ptr %rman, align 8, !dbg !5114
  %tobool = icmp ne ptr %0, null, !dbg !5114
  br i1 %tobool, label %if.end, label %if.then, !dbg !5116

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5117

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rman, align 8, !dbg !5118
  %manager = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 0, !dbg !5119
  store ptr %manager, ptr %man, align 8, !dbg !5120
  %2 = load i8, ptr %use_tt.addr, align 1, !dbg !5121, !range !5122, !noundef !1242
  %tobool1 = trunc i8 %2 to i1, !dbg !5121
  %3 = load ptr, ptr %man, align 8, !dbg !5123
  %use_tt2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 1, !dbg !5124
  %frombool3 = zext i1 %tobool1 to i8, !dbg !5125
  store i8 %frombool3, ptr %use_tt2, align 1, !dbg !5125
  %4 = load ptr, ptr %man, align 8, !dbg !5126
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %4, i32 0, i32 4, !dbg !5127
  store ptr @ttm_range_manager_func, ptr %func, align 8, !dbg !5128
  %5 = load ptr, ptr %man, align 8, !dbg !5129
  %6 = load ptr, ptr %bdev.addr, align 8, !dbg !5130
  %7 = load i64, ptr %p_size.addr, align 8, !dbg !5131
  call void @ttm_resource_manager_init(ptr noundef %5, ptr noundef %6, i64 noundef %7) #18, !dbg !5132
  %8 = load ptr, ptr %rman, align 8, !dbg !5133
  %mm = getelementptr inbounds %struct.ttm_range_manager, ptr %8, i32 0, i32 1, !dbg !5134
  %9 = load i64, ptr %p_size.addr, align 8, !dbg !5135
  call void @drm_mm_init(ptr noundef %mm, i64 noundef 0, i64 noundef %9) #18, !dbg !5136
  br label %do.body, !dbg !5137

do.body:                                          ; preds = %if.end
  %10 = load ptr, ptr %rman, align 8, !dbg !5138
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %10, i32 0, i32 2, !dbg !5138
  %call4 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5138
  %11 = load ptr, ptr %rman, align 8, !dbg !5138
  %lock5 = getelementptr inbounds %struct.ttm_range_manager, ptr %11, i32 0, i32 2, !dbg !5138
  %12 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5138
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %12, i32 0, i32 0, !dbg !5138
  %13 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5138
  %counter = getelementptr inbounds %struct.atomic_t, ptr %13, i32 0, i32 0, !dbg !5138
  store i32 0, ptr %counter, align 4, !dbg !5138
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock5, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5138
  br label %do.cond, !dbg !5138

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5138

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %bdev.addr, align 8, !dbg !5140
  %15 = load i32, ptr %type.addr, align 4, !dbg !5141
  %16 = load ptr, ptr %rman, align 8, !dbg !5142
  %manager6 = getelementptr inbounds %struct.ttm_range_manager, ptr %16, i32 0, i32 0, !dbg !5143
  call void @ttm_set_driver_manager(ptr noundef %14, i32 noundef %15, ptr noundef %manager6) #18, !dbg !5144
  %17 = load ptr, ptr %man, align 8, !dbg !5145
  call void @ttm_resource_manager_set_used(ptr noundef %17, i1 noundef zeroext true) #18, !dbg !5146
  store i32 0, ptr %retval, align 4, !dbg !5147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5147

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rman) #16, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #16, !dbg !5148
  %18 = load i32, ptr %retval, align 4, !dbg !5148
  ret i32 %18, !dbg !5148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5149 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5154, metadata !DIExpression()), !dbg !5156
  %0 = load i64, ptr %size.addr, align 8, !dbg !5157
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5158
  %or = or i32 %1, 256, !dbg !5159
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5160
  ret ptr %call, !dbg !5161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5162 dso_local void @ttm_resource_manager_init(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5165 dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5168 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5176
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5177
  ret ptr %1, !dbg !5178
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_set_driver_manager(ptr noundef %bdev, i32 noundef %type, ptr noundef %manager) #7 align 16 !dbg !5179 {
entry:
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %manager.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5183, metadata !DIExpression()), !dbg !5186
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5184, metadata !DIExpression()), !dbg !5187
  store ptr %manager, ptr %manager.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %manager.addr, metadata !5185, metadata !DIExpression()), !dbg !5188
  br label %do.body, !dbg !5189

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %type.addr, align 4, !dbg !5190
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5190
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5190

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %type.addr, align 4, !dbg !5190
  %cmp = icmp sge i32 %2, 8, !dbg !5190
  br i1 %cmp, label %if.then, label %if.end, !dbg !5193

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_272() #19, !dbg !5190, !srcloc !5194
  unreachable, !dbg !5190

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5193

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %manager.addr, align 8, !dbg !5195
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !5196
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 3, !dbg !5197
  %5 = load i32, ptr %type.addr, align 4, !dbg !5198
  %idxprom = sext i32 %5 to i64, !dbg !5196
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5196
  store ptr %3, ptr %arrayidx, align 8, !dbg !5199
  ret void, !dbg !5200
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_resource_manager_set_used(ptr noundef %man, i1 noundef zeroext %used) #7 align 16 !dbg !5201 {
entry:
  %man.addr = alloca ptr, align 8
  %used.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5205, metadata !DIExpression()), !dbg !5215
  %frombool = zext i1 %used to i8
  store i8 %frombool, ptr %used.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %used.addr, metadata !5206, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5207, metadata !DIExpression()), !dbg !5218
  store i32 0, ptr %i, align 4, !dbg !5219
  br label %for.cond, !dbg !5220

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5221
  %cmp = icmp ult i32 %0, 4, !dbg !5222
  br i1 %cmp, label %for.body, label %for.end, !dbg !5223

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5208, metadata !DIExpression()), !dbg !5224
  %1 = load ptr, ptr %man.addr, align 8, !dbg !5224
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 7, !dbg !5224
  %2 = load i32, ptr %i, align 4, !dbg !5224
  %idxprom = sext i32 %2 to i64, !dbg !5224
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !5224
  %call = call i32 @list_empty(ptr noundef %arrayidx) #18, !dbg !5224
  %tobool = icmp ne i32 %call, 0, !dbg !5224
  %lnot = xor i1 %tobool, true, !dbg !5224
  %lnot1 = xor i1 %lnot, true, !dbg !5224
  %lnot2 = xor i1 %lnot1, true, !dbg !5224
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5224
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5224
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5225
  %tobool3 = icmp ne i32 %3, 0, !dbg !5225
  %lnot4 = xor i1 %tobool3, true, !dbg !5225
  %lnot6 = xor i1 %lnot4, true, !dbg !5225
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5225
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5225
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5225
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5225
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5224

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !5225

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5212, metadata !DIExpression()), !dbg !5226
  store i32 2305, ptr %__flags, align 4, !dbg !5226
  br label %do.body9, !dbg !5226

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5227

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5227

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5226

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5229
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 313, i32 %4, i64 12) #16, !dbg !5229, !srcloc !5231
  br label %do.cond11, !dbg !5229

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5229

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5226

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5232

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5232

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5225
  br label %do.cond16, !dbg !5226

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5226

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5226

if.end:                                           ; preds = %do.end17, %for.body
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5224
  %tobool18 = icmp ne i32 %5, 0, !dbg !5224
  %lnot19 = xor i1 %tobool18, true, !dbg !5224
  %lnot21 = xor i1 %lnot19, true, !dbg !5224
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5224
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5224
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5224
  store i64 %expval24, ptr %tmp, align 8, !dbg !5225
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5234
  %6 = load i64, ptr %tmp, align 8, !dbg !5224
  br label %for.inc, !dbg !5234

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !5235
  %inc = add i32 %7, 1, !dbg !5235
  store i32 %inc, ptr %i, align 4, !dbg !5235
  br label %for.cond, !dbg !5236, !llvm.loop !5237

for.end:                                          ; preds = %for.cond
  %8 = load i8, ptr %used.addr, align 1, !dbg !5241, !range !5122, !noundef !1242
  %tobool25 = trunc i8 %8 to i1, !dbg !5241
  %9 = load ptr, ptr %man.addr, align 8, !dbg !5242
  %use_type = getelementptr inbounds %struct.ttm_resource_manager, ptr %9, i32 0, i32 0, !dbg !5243
  %frombool26 = zext i1 %tobool25 to i8, !dbg !5244
  store i8 %frombool26, ptr %use_type, align 8, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5245
  ret void, !dbg !5245
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ttm_range_man_fini_nocheck(ptr noundef %bdev, i32 noundef %type) #0 align 16 !dbg !5246 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %man = alloca ptr, align 8
  %rman = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5250, metadata !DIExpression()), !dbg !5256
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5251, metadata !DIExpression()), !dbg !5257
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #16, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5252, metadata !DIExpression()), !dbg !5259
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5260
  %1 = load i32, ptr %type.addr, align 4, !dbg !5261
  %call = call ptr @ttm_manager_type(ptr noundef %0, i32 noundef %1) #18, !dbg !5262
  store ptr %call, ptr %man, align 8, !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %rman) #16, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %rman, metadata !5253, metadata !DIExpression()), !dbg !5264
  %2 = load ptr, ptr %man, align 8, !dbg !5265
  %call1 = call ptr @to_range_manager(ptr noundef %2) #18, !dbg !5266
  store ptr %call1, ptr %rman, align 8, !dbg !5264
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #16, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5254, metadata !DIExpression()), !dbg !5268
  %3 = load ptr, ptr %rman, align 8, !dbg !5269
  %mm2 = getelementptr inbounds %struct.ttm_range_manager, ptr %3, i32 0, i32 1, !dbg !5270
  store ptr %mm2, ptr %mm, align 8, !dbg !5268
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5255, metadata !DIExpression()), !dbg !5272
  %4 = load ptr, ptr %man, align 8, !dbg !5273
  %tobool = icmp ne ptr %4, null, !dbg !5273
  br i1 %tobool, label %if.end, label %if.then, !dbg !5275

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %man, align 8, !dbg !5277
  call void @ttm_resource_manager_set_used(ptr noundef %5, i1 noundef zeroext false) #18, !dbg !5278
  %6 = load ptr, ptr %bdev.addr, align 8, !dbg !5279
  %7 = load ptr, ptr %man, align 8, !dbg !5280
  %call3 = call i32 @ttm_resource_manager_evict_all(ptr noundef %6, ptr noundef %7) #18, !dbg !5281
  store i32 %call3, ptr %ret, align 4, !dbg !5282
  %8 = load i32, ptr %ret, align 4, !dbg !5283
  %tobool4 = icmp ne i32 %8, 0, !dbg !5283
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5285

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !5286
  store i32 %9, ptr %retval, align 4, !dbg !5287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5287

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %rman, align 8, !dbg !5288
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %10, i32 0, i32 2, !dbg !5289
  call void @spin_lock(ptr noundef %lock) #18, !dbg !5290
  %11 = load ptr, ptr %mm, align 8, !dbg !5291
  call void @drm_mm_takedown(ptr noundef %11) #18, !dbg !5292
  %12 = load ptr, ptr %rman, align 8, !dbg !5293
  %lock7 = getelementptr inbounds %struct.ttm_range_manager, ptr %12, i32 0, i32 2, !dbg !5294
  call void @spin_unlock(ptr noundef %lock7) #18, !dbg !5295
  %13 = load ptr, ptr %man, align 8, !dbg !5296
  call void @ttm_resource_manager_cleanup(ptr noundef %13) #18, !dbg !5297
  %14 = load ptr, ptr %bdev.addr, align 8, !dbg !5298
  %15 = load i32, ptr %type.addr, align 4, !dbg !5299
  call void @ttm_set_driver_manager(ptr noundef %14, i32 noundef %15, ptr noundef null) #18, !dbg !5300
  %16 = load ptr, ptr %rman, align 8, !dbg !5301
  call void @kfree(ptr noundef %16) #18, !dbg !5302
  store i32 0, ptr %retval, align 4, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #16, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %rman) #16, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #16, !dbg !5304
  %17 = load i32, ptr %retval, align 4, !dbg !5304
  ret i32 %17, !dbg !5304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_manager_type(ptr noundef %bdev, i32 noundef %mem_type) #7 align 16 !dbg !5305 {
entry:
  %bdev.addr = alloca ptr, align 8
  %mem_type.addr = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5309, metadata !DIExpression()), !dbg !5311
  store i32 %mem_type, ptr %mem_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !5310, metadata !DIExpression()), !dbg !5312
  br label %do.body, !dbg !5313

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %mem_type.addr, align 4, !dbg !5314
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5314
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5314

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %mem_type.addr, align 4, !dbg !5314
  %cmp = icmp sge i32 %2, 8, !dbg !5314
  br i1 %cmp, label %if.then, label %if.end, !dbg !5317

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_271() #19, !dbg !5314, !srcloc !5318
  unreachable, !dbg !5314

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5317

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5319
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 3, !dbg !5320
  %4 = load i32, ptr %mem_type.addr, align 4, !dbg !5321
  %idxprom = sext i32 %4 to i64, !dbg !5319
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5319
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5319
  ret ptr %5, !dbg !5322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_range_manager(ptr noundef %man) #7 align 16 !dbg !5323 {
entry:
  %man.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5327, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5328, metadata !DIExpression()), !dbg !5331
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5331
  store ptr %0, ptr %__mptr, align 8, !dbg !5331
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5331
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5331
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5332
  %2 = load ptr, ptr %tmp, align 8, !dbg !5331
  ret ptr %2, !dbg !5333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5334 dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !5337 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5343
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5343
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !5343
  ret void, !dbg !5344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5345 dso_local void @drm_mm_takedown(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !5348 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5352
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5352
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !5352
  ret void, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_resource_manager_cleanup(ptr noundef %man) #7 align 16 !dbg !5354 {
entry:
  %man.addr = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5360
  %move = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 6, !dbg !5361
  %1 = load ptr, ptr %move, align 8, !dbg !5361
  call void @dma_fence_put(ptr noundef %1) #18, !dbg !5362
  %2 = load ptr, ptr %man.addr, align 8, !dbg !5363
  %move1 = getelementptr inbounds %struct.ttm_resource_manager, ptr %2, i32 0, i32 6, !dbg !5364
  store ptr null, ptr %move1, align 8, !dbg !5365
  ret void, !dbg !5366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5367 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5370 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5372, metadata !DIExpression()), !dbg !5377
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5373, metadata !DIExpression()), !dbg !5378
  %0 = load i64, ptr %size.addr, align 8, !dbg !5379
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5380
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5381

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5382
  %tobool = icmp ne i64 %2, 0, !dbg !5382
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5383

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5374, metadata !DIExpression()), !dbg !5385
  %3 = load i64, ptr %size.addr, align 8, !dbg !5386
  %cmp = icmp ugt i64 %3, 8192, !dbg !5388
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5389

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5390
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5391
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5392
  store ptr %call, ptr %retval, align 8, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5393

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5394
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5394
  store i32 %call2, ptr %index, align 4, !dbg !5395
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5396
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5397
  %9 = ptrtoint ptr %8 to i64, !dbg !5397
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5398
  %idxprom = zext i32 %call3 to i64, !dbg !5399
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5399
  %10 = load i32, ptr %index, align 4, !dbg !5400
  %idxprom4 = zext i32 %10 to i64, !dbg !5399
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5399
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5399
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5401
  %13 = load i64, ptr %size.addr, align 8, !dbg !5402
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5403
  store ptr %call6, ptr %retval, align 8, !dbg !5404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5404

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5405
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5406
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5407
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5408
  store ptr %call8, ptr %retval, align 8, !dbg !5409
  br label %return, !dbg !5409

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5410
  ret ptr %16, !dbg !5410
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5411 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5412 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5416, metadata !DIExpression()), !dbg !5418
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5417, metadata !DIExpression()), !dbg !5419
  %0 = load i64, ptr %size.addr, align 8, !dbg !5420
  %tobool = icmp ne i64 %0, 0, !dbg !5420
  br i1 %tobool, label %if.end, label %if.then, !dbg !5422

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5423
  br label %return, !dbg !5423

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5424
  %cmp = icmp ule i64 %1, 8, !dbg !5426
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5427

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5429
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5431
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5432

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp4 = icmp ule i64 %3, 96, !dbg !5434
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5435

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5437
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5439
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5440

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5441
  %cmp9 = icmp ule i64 %5, 192, !dbg !5442
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5443

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5445
  %cmp12 = icmp ule i64 %6, 8, !dbg !5447
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5448

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5450
  %cmp15 = icmp ule i64 %7, 16, !dbg !5452
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5453

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5455
  %cmp18 = icmp ule i64 %8, 32, !dbg !5457
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5458

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5459
  br label %return, !dbg !5459

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5460
  %cmp21 = icmp ule i64 %9, 64, !dbg !5462
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5463

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5465
  %cmp24 = icmp ule i64 %10, 128, !dbg !5467
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5468

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5469
  br label %return, !dbg !5469

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5470
  %cmp27 = icmp ule i64 %11, 256, !dbg !5472
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5473

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5475
  %cmp30 = icmp ule i64 %12, 512, !dbg !5477
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5478

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5480
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5482
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5483

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5484
  br label %return, !dbg !5484

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5485
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5487
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5488

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5489
  br label %return, !dbg !5489

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5490
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5492
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5493

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5494
  br label %return, !dbg !5494

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5495
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5497
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5498

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5500
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5502
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5503

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5504
  br label %return, !dbg !5504

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5505
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5507
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5508

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5510
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5512
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5513

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5515
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5517
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5518

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5519
  br label %return, !dbg !5519

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5520
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5522
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5523

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5524
  br label %return, !dbg !5524

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5525
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5527
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5528

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5529
  br label %return, !dbg !5529

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5530
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5532
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5533

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5534
  br label %return, !dbg !5534

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5535
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5537
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5538

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5540, !range !5122, !noundef !1242
  %tobool69 = trunc i8 %25 to i1, !dbg !5540
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5542

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5543

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_249() #19, !dbg !5544, !srcloc !5547
  unreachable, !dbg !5544

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5548

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5549

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5550

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5552

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5550

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !5554, !srcloc !5556
  br label %do.end75, !dbg !5554

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5550

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5557
  br label %return, !dbg !5557

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5558
  ret i32 %26, !dbg !5558
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5559 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5565 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5569, metadata !DIExpression()), !dbg !5571
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5570, metadata !DIExpression()), !dbg !5572
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5573
  %and = and i32 %0, 17, !dbg !5573
  %cmp = icmp eq i32 %and, 0, !dbg !5573
  %lnot = xor i1 %cmp, true, !dbg !5573
  %lnot1 = xor i1 %lnot, true, !dbg !5573
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5573
  %conv = sext i32 %lnot.ext to i64, !dbg !5573
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5573
  %tobool = icmp ne i64 %expval, 0, !dbg !5573
  br i1 %tobool, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5576
  br label %return, !dbg !5576

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5577
  %and2 = and i32 %1, 1, !dbg !5579
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5579
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5580

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5581
  br label %return, !dbg !5581

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5582
  br label %return, !dbg !5582

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5584
  ret i32 %2, !dbg !5584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5585 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5586 dso_local void @__compiletime_assert_249() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ttm_range_man_alloc(ptr noundef %man, ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 16 !dbg !5587 {
entry:
  %retval = alloca i32, align 4
  %man.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %rman = alloca ptr, align 8
  %node = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %mode = alloca i32, align 4
  %lpfn = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5589, metadata !DIExpression()), !dbg !5599
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !5590, metadata !DIExpression()), !dbg !5600
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5591, metadata !DIExpression()), !dbg !5601
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5592, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %rman) #16, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %rman, metadata !5593, metadata !DIExpression()), !dbg !5604
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5605
  %call = call ptr @to_range_manager(ptr noundef %0) #18, !dbg !5606
  store ptr %call, ptr %rman, align 8, !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5594, metadata !DIExpression()), !dbg !5608
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #16, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5595, metadata !DIExpression()), !dbg !5610
  %1 = load ptr, ptr %rman, align 8, !dbg !5611
  %mm1 = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 1, !dbg !5612
  store ptr %mm1, ptr %mm, align 8, !dbg !5610
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #16, !dbg !5613
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !5596, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpfn) #16, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %lpfn, metadata !5597, metadata !DIExpression()), !dbg !5616
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5617
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5598, metadata !DIExpression()), !dbg !5618
  %2 = load ptr, ptr %place.addr, align 8, !dbg !5619
  %lpfn2 = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 1, !dbg !5620
  %3 = load i32, ptr %lpfn2, align 4, !dbg !5620
  %conv = zext i32 %3 to i64, !dbg !5619
  store i64 %conv, ptr %lpfn, align 8, !dbg !5621
  %4 = load i64, ptr %lpfn, align 8, !dbg !5622
  %tobool = icmp ne i64 %4, 0, !dbg !5622
  br i1 %tobool, label %if.end, label %if.then, !dbg !5624

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %man.addr, align 8, !dbg !5625
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 3, !dbg !5626
  %6 = load i64, ptr %size, align 8, !dbg !5626
  store i64 %6, ptr %lpfn, align 8, !dbg !5627
  br label %if.end, !dbg !5628

if.end:                                           ; preds = %if.then, %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 240, i32 noundef 3264) #17, !dbg !5629
  store ptr %call3, ptr %node, align 8, !dbg !5630
  %7 = load ptr, ptr %node, align 8, !dbg !5631
  %tobool4 = icmp ne ptr %7, null, !dbg !5631
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5633

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5634

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %mode, align 4, !dbg !5635
  %8 = load ptr, ptr %place.addr, align 8, !dbg !5636
  %flags = getelementptr inbounds %struct.ttm_place, ptr %8, i32 0, i32 3, !dbg !5638
  %9 = load i32, ptr %flags, align 4, !dbg !5638
  %and = and i32 %9, 2, !dbg !5639
  %tobool7 = icmp ne i32 %and, 0, !dbg !5639
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5640

if.then8:                                         ; preds = %if.end6
  store i32 2, ptr %mode, align 4, !dbg !5641
  br label %if.end9, !dbg !5642

if.end9:                                          ; preds = %if.then8, %if.end6
  %10 = load ptr, ptr %bo.addr, align 8, !dbg !5643
  %11 = load ptr, ptr %place.addr, align 8, !dbg !5644
  %12 = load ptr, ptr %node, align 8, !dbg !5645
  %base = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %12, i32 0, i32 0, !dbg !5646
  call void @ttm_resource_init(ptr noundef %10, ptr noundef %11, ptr noundef %base) #18, !dbg !5647
  %13 = load ptr, ptr %rman, align 8, !dbg !5648
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %13, i32 0, i32 2, !dbg !5649
  call void @spin_lock(ptr noundef %lock) #18, !dbg !5650
  %14 = load ptr, ptr %mm, align 8, !dbg !5651
  %15 = load ptr, ptr %node, align 8, !dbg !5652
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %15, i32 0, i32 1, !dbg !5653
  %arrayidx = getelementptr [0 x %struct.drm_mm_node], ptr %mm_nodes, i64 0, i64 0, !dbg !5652
  %16 = load ptr, ptr %node, align 8, !dbg !5654
  %base10 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %16, i32 0, i32 0, !dbg !5654
  %size11 = getelementptr inbounds %struct.ttm_resource, ptr %base10, i32 0, i32 1, !dbg !5654
  %17 = load i64, ptr %size11, align 8, !dbg !5654
  %add = add i64 %17, 4096, !dbg !5654
  %sub = sub i64 %add, 1, !dbg !5654
  %shr = lshr i64 %sub, 12, !dbg !5654
  %18 = load ptr, ptr %bo.addr, align 8, !dbg !5655
  %page_alignment = getelementptr inbounds %struct.ttm_buffer_object, ptr %18, i32 0, i32 3, !dbg !5656
  %19 = load i32, ptr %page_alignment, align 4, !dbg !5656
  %conv12 = zext i32 %19 to i64, !dbg !5655
  %20 = load ptr, ptr %place.addr, align 8, !dbg !5657
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %20, i32 0, i32 0, !dbg !5658
  %21 = load i32, ptr %fpfn, align 4, !dbg !5658
  %conv13 = zext i32 %21 to i64, !dbg !5657
  %22 = load i64, ptr %lpfn, align 8, !dbg !5659
  %23 = load i32, ptr %mode, align 4, !dbg !5660
  %call14 = call i32 @drm_mm_insert_node_in_range(ptr noundef %14, ptr noundef %arrayidx, i64 noundef %shr, i64 noundef %conv12, i64 noundef 0, i64 noundef %conv13, i64 noundef %22, i32 noundef %23) #18, !dbg !5661
  store i32 %call14, ptr %ret, align 4, !dbg !5662
  %24 = load ptr, ptr %rman, align 8, !dbg !5663
  %lock15 = getelementptr inbounds %struct.ttm_range_manager, ptr %24, i32 0, i32 2, !dbg !5664
  call void @spin_unlock(ptr noundef %lock15) #18, !dbg !5665
  %25 = load i32, ptr %ret, align 4, !dbg !5666
  %tobool16 = icmp ne i32 %25, 0, !dbg !5666
  %lnot = xor i1 %tobool16, true, !dbg !5666
  %lnot17 = xor i1 %lnot, true, !dbg !5666
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !5666
  %conv18 = sext i32 %lnot.ext to i64, !dbg !5666
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !5666
  %tobool19 = icmp ne i64 %expval, 0, !dbg !5666
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5668

if.then20:                                        ; preds = %if.end9
  %26 = load ptr, ptr %man.addr, align 8, !dbg !5669
  %27 = load ptr, ptr %node, align 8, !dbg !5671
  %base21 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %27, i32 0, i32 0, !dbg !5672
  call void @ttm_resource_fini(ptr noundef %26, ptr noundef %base21) #18, !dbg !5673
  %28 = load ptr, ptr %node, align 8, !dbg !5674
  call void @kfree(ptr noundef %28) #18, !dbg !5675
  %29 = load i32, ptr %ret, align 4, !dbg !5676
  store i32 %29, ptr %retval, align 4, !dbg !5677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5677

if.end22:                                         ; preds = %if.end9
  %30 = load ptr, ptr %node, align 8, !dbg !5678
  %mm_nodes23 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %30, i32 0, i32 1, !dbg !5679
  %arrayidx24 = getelementptr [0 x %struct.drm_mm_node], ptr %mm_nodes23, i64 0, i64 0, !dbg !5678
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx24, i32 0, i32 1, !dbg !5680
  %31 = load i64, ptr %start, align 8, !dbg !5680
  %32 = load ptr, ptr %node, align 8, !dbg !5681
  %base25 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %32, i32 0, i32 0, !dbg !5682
  %start26 = getelementptr inbounds %struct.ttm_resource, ptr %base25, i32 0, i32 0, !dbg !5683
  store i64 %31, ptr %start26, align 8, !dbg !5684
  %33 = load ptr, ptr %node, align 8, !dbg !5685
  %base27 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %33, i32 0, i32 0, !dbg !5686
  %34 = load ptr, ptr %res.addr, align 8, !dbg !5687
  store ptr %base27, ptr %34, align 8, !dbg !5688
  store i32 0, ptr %retval, align 4, !dbg !5689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5689

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpfn) #16, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #16, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #16, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %rman) #16, !dbg !5690
  %35 = load i32, ptr %retval, align 4, !dbg !5690
  ret i32 %35, !dbg !5690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_range_man_free(ptr noundef %man, ptr noundef %res) #0 align 16 !dbg !5691 {
entry:
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %rman = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5693, metadata !DIExpression()), !dbg !5697
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5694, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5695, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5701
  %call = call ptr @to_ttm_range_mgr_node(ptr noundef %0) #18, !dbg !5702
  store ptr %call, ptr %node, align 8, !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %rman) #16, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %rman, metadata !5696, metadata !DIExpression()), !dbg !5704
  %1 = load ptr, ptr %man.addr, align 8, !dbg !5705
  %call1 = call ptr @to_range_manager(ptr noundef %1) #18, !dbg !5706
  store ptr %call1, ptr %rman, align 8, !dbg !5704
  %2 = load ptr, ptr %rman, align 8, !dbg !5707
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %2, i32 0, i32 2, !dbg !5708
  call void @spin_lock(ptr noundef %lock) #18, !dbg !5709
  %3 = load ptr, ptr %node, align 8, !dbg !5710
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 0, i32 1, !dbg !5711
  %arrayidx = getelementptr [0 x %struct.drm_mm_node], ptr %mm_nodes, i64 0, i64 0, !dbg !5710
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #18, !dbg !5712
  %4 = load ptr, ptr %rman, align 8, !dbg !5713
  %lock2 = getelementptr inbounds %struct.ttm_range_manager, ptr %4, i32 0, i32 2, !dbg !5714
  call void @spin_unlock(ptr noundef %lock2) #18, !dbg !5715
  %5 = load ptr, ptr %man.addr, align 8, !dbg !5716
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5717
  call void @ttm_resource_fini(ptr noundef %5, ptr noundef %6) #18, !dbg !5718
  %7 = load ptr, ptr %node, align 8, !dbg !5719
  call void @kfree(ptr noundef %7) #18, !dbg !5720
  call void @llvm.lifetime.end.p0(i64 8, ptr %rman) #16, !dbg !5721
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !5721
  ret void, !dbg !5721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ttm_range_man_intersects(ptr noundef %man, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !5722 {
entry:
  %retval = alloca i1, align 1
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %num_pages = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5724, metadata !DIExpression()), !dbg !5731
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5725, metadata !DIExpression()), !dbg !5732
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5726, metadata !DIExpression()), !dbg !5733
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5727, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5728, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5737
  %call = call ptr @to_ttm_range_mgr_node(ptr noundef %0) #18, !dbg !5738
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %call, i32 0, i32 1, !dbg !5739
  %arrayidx = getelementptr [0 x %struct.drm_mm_node], ptr %mm_nodes, i64 0, i64 0, !dbg !5738
  store ptr %arrayidx, ptr %node, align 8, !dbg !5736
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #16, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5730, metadata !DIExpression()), !dbg !5741
  %1 = load i64, ptr %size.addr, align 8, !dbg !5742
  %add = add i64 %1, 4096, !dbg !5742
  %sub = sub i64 %add, 1, !dbg !5742
  %shr = lshr i64 %sub, 12, !dbg !5742
  %conv = trunc i64 %shr to i32, !dbg !5742
  store i32 %conv, ptr %num_pages, align 4, !dbg !5741
  %2 = load ptr, ptr %place.addr, align 8, !dbg !5743
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 0, !dbg !5745
  %3 = load i32, ptr %fpfn, align 4, !dbg !5745
  %conv1 = zext i32 %3 to i64, !dbg !5743
  %4 = load ptr, ptr %node, align 8, !dbg !5746
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 1, !dbg !5747
  %5 = load i64, ptr %start, align 8, !dbg !5747
  %6 = load i32, ptr %num_pages, align 4, !dbg !5748
  %conv2 = zext i32 %6 to i64, !dbg !5748
  %add3 = add i64 %5, %conv2, !dbg !5749
  %cmp = icmp uge i64 %conv1, %add3, !dbg !5750
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5751

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %place.addr, align 8, !dbg !5752
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %7, i32 0, i32 1, !dbg !5753
  %8 = load i32, ptr %lpfn, align 4, !dbg !5753
  %tobool = icmp ne i32 %8, 0, !dbg !5752
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5754

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load ptr, ptr %place.addr, align 8, !dbg !5755
  %lpfn5 = getelementptr inbounds %struct.ttm_place, ptr %9, i32 0, i32 1, !dbg !5756
  %10 = load i32, ptr %lpfn5, align 4, !dbg !5756
  %conv6 = zext i32 %10 to i64, !dbg !5755
  %11 = load ptr, ptr %node, align 8, !dbg !5757
  %start7 = getelementptr inbounds %struct.drm_mm_node, ptr %11, i32 0, i32 1, !dbg !5758
  %12 = load i64, ptr %start7, align 8, !dbg !5758
  %cmp8 = icmp ule i64 %conv6, %12, !dbg !5759
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5760

if.then:                                          ; preds = %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1, !dbg !5761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5761

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i1 true, ptr %retval, align 1, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5762

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #16, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !5763
  %13 = load i1, ptr %retval, align 1, !dbg !5763
  ret i1 %13, !dbg !5763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ttm_range_man_compatible(ptr noundef %man, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !5764 {
entry:
  %retval = alloca i1, align 1
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %num_pages = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5766, metadata !DIExpression()), !dbg !5772
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5767, metadata !DIExpression()), !dbg !5773
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !5768, metadata !DIExpression()), !dbg !5774
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5769, metadata !DIExpression()), !dbg !5775
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5770, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5778
  %call = call ptr @to_ttm_range_mgr_node(ptr noundef %0) #18, !dbg !5779
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %call, i32 0, i32 1, !dbg !5780
  %arrayidx = getelementptr [0 x %struct.drm_mm_node], ptr %mm_nodes, i64 0, i64 0, !dbg !5779
  store ptr %arrayidx, ptr %node, align 8, !dbg !5777
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pages) #16, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %num_pages, metadata !5771, metadata !DIExpression()), !dbg !5782
  %1 = load i64, ptr %size.addr, align 8, !dbg !5783
  %add = add i64 %1, 4096, !dbg !5783
  %sub = sub i64 %add, 1, !dbg !5783
  %shr = lshr i64 %sub, 12, !dbg !5783
  %conv = trunc i64 %shr to i32, !dbg !5783
  store i32 %conv, ptr %num_pages, align 4, !dbg !5782
  %2 = load ptr, ptr %node, align 8, !dbg !5784
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 1, !dbg !5786
  %3 = load i64, ptr %start, align 8, !dbg !5786
  %4 = load ptr, ptr %place.addr, align 8, !dbg !5787
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %4, i32 0, i32 0, !dbg !5788
  %5 = load i32, ptr %fpfn, align 4, !dbg !5788
  %conv1 = zext i32 %5 to i64, !dbg !5787
  %cmp = icmp ult i64 %3, %conv1, !dbg !5789
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5790

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %place.addr, align 8, !dbg !5791
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %6, i32 0, i32 1, !dbg !5792
  %7 = load i32, ptr %lpfn, align 4, !dbg !5792
  %tobool = icmp ne i32 %7, 0, !dbg !5791
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5793

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %node, align 8, !dbg !5794
  %start3 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 1, !dbg !5795
  %9 = load i64, ptr %start3, align 8, !dbg !5795
  %10 = load i32, ptr %num_pages, align 4, !dbg !5796
  %conv4 = zext i32 %10 to i64, !dbg !5796
  %add5 = add i64 %9, %conv4, !dbg !5797
  %11 = load ptr, ptr %place.addr, align 8, !dbg !5798
  %lpfn6 = getelementptr inbounds %struct.ttm_place, ptr %11, i32 0, i32 1, !dbg !5799
  %12 = load i32, ptr %lpfn6, align 4, !dbg !5799
  %conv7 = zext i32 %12 to i64, !dbg !5798
  %cmp8 = icmp ugt i64 %add5, %conv7, !dbg !5800
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5801

if.then:                                          ; preds = %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1, !dbg !5802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5802

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i1 true, ptr %retval, align 1, !dbg !5803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5803

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pages) #16, !dbg !5804
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !5804
  %13 = load i1, ptr %retval, align 1, !dbg !5804
  ret i1 %13, !dbg !5804
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_range_man_debug(ptr noundef %man, ptr noundef %printer) #0 align 16 !dbg !5805 {
entry:
  %man.addr = alloca ptr, align 8
  %printer.addr = alloca ptr, align 8
  %rman = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5807, metadata !DIExpression()), !dbg !5810
  store ptr %printer, ptr %printer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %printer.addr, metadata !5808, metadata !DIExpression()), !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %rman) #16, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %rman, metadata !5809, metadata !DIExpression()), !dbg !5813
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5814
  %call = call ptr @to_range_manager(ptr noundef %0) #18, !dbg !5815
  store ptr %call, ptr %rman, align 8, !dbg !5813
  %1 = load ptr, ptr %rman, align 8, !dbg !5816
  %lock = getelementptr inbounds %struct.ttm_range_manager, ptr %1, i32 0, i32 2, !dbg !5817
  call void @spin_lock(ptr noundef %lock) #18, !dbg !5818
  %2 = load ptr, ptr %rman, align 8, !dbg !5819
  %mm = getelementptr inbounds %struct.ttm_range_manager, ptr %2, i32 0, i32 1, !dbg !5820
  %3 = load ptr, ptr %printer.addr, align 8, !dbg !5821
  call void @drm_mm_print(ptr noundef %mm, ptr noundef %3) #18, !dbg !5822
  %4 = load ptr, ptr %rman, align 8, !dbg !5823
  %lock1 = getelementptr inbounds %struct.ttm_range_manager, ptr %4, i32 0, i32 2, !dbg !5824
  call void @spin_unlock(ptr noundef %lock1) #18, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %rman) #16, !dbg !5826
  ret void, !dbg !5826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5827 dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5830 dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5833 dso_local void @ttm_resource_fini(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_ttm_range_mgr_node(ptr noundef %res) #7 align 16 !dbg !5834 {
entry:
  %res.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5838, metadata !DIExpression()), !dbg !5841
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5842
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5839, metadata !DIExpression()), !dbg !5842
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5842
  store ptr %0, ptr %__mptr, align 8, !dbg !5842
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5842
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5842
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5843
  %2 = load ptr, ptr %tmp, align 8, !dbg !5842
  ret ptr %2, !dbg !5844
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5845 dso_local void @drm_mm_remove_node(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5848 dso_local void @drm_mm_print(ptr noundef, ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5853 dso_local void @__compiletime_assert_272() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !5854 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  br label %do.body, !dbg !5863

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5865

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5863
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5863
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5863
  store ptr %1, ptr %tmp, align 8, !dbg !5865
  %2 = load ptr, ptr %tmp, align 8, !dbg !5863
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5867
  %cmp = icmp eq ptr %2, %3, !dbg !5868
  %conv = zext i1 %cmp to i32, !dbg !5868
  ret i32 %conv, !dbg !5869
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5870 dso_local void @__compiletime_assert_271() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5871 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5875 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #7 align 16 !dbg !5876 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !5880
  %tobool = icmp ne ptr %0, null, !dbg !5880
  br i1 %tobool, label %if.then, label %if.end, !dbg !5882

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !5883
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !5884
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #18, !dbg !5885
  br label %if.end, !dbg !5885

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #7 align 16 !dbg !5887 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5895, metadata !DIExpression()), !dbg !5897
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5896, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5899
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5901
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #18, !dbg !5902
  br i1 %call, label %if.then, label %if.end, !dbg !5903

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !5904
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !5906
  call void %1(ptr noundef %2) #18, !dbg !5904
  store i32 1, ptr %retval, align 4, !dbg !5907
  br label %return, !dbg !5907

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5909
  ret i32 %3, !dbg !5909
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #7 align 16 !dbg !5910 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5917
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #18, !dbg !5918
  ret i1 %call, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #7 align 16 !dbg !5920 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5924, metadata !DIExpression()), !dbg !5926
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5925, metadata !DIExpression()), !dbg !5927
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5928
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5929
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !5930
  ret i1 %call, !dbg !5931
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #7 align 16 !dbg !5932 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5936, metadata !DIExpression()), !dbg !5940
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5937, metadata !DIExpression()), !dbg !5941
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5938, metadata !DIExpression()), !dbg !5942
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5939, metadata !DIExpression()), !dbg !5944
  %0 = load i32, ptr %i.addr, align 4, !dbg !5945
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5946
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5947
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #18, !dbg !5948
  store i32 %call, ptr %old, align 4, !dbg !5944
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5949
  %tobool = icmp ne ptr %2, null, !dbg !5949
  br i1 %tobool, label %if.then, label %if.end, !dbg !5951

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5952
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5953
  store i32 %3, ptr %4, align 4, !dbg !5954
  br label %if.end, !dbg !5955

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5956
  %6 = load i32, ptr %i.addr, align 4, !dbg !5958
  %cmp = icmp eq i32 %5, %6, !dbg !5959
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5960

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5961

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5963

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5965

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5965

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5963

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5967

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5969

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5969

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5967, !srcloc !5971
  br label %do.cond7, !dbg !5967

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5967

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5963

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5963

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5972

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5973
  %cmp12 = icmp slt i32 %7, 0, !dbg !5973
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5973

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5973
  %9 = load i32, ptr %i.addr, align 4, !dbg !5973
  %sub = sub i32 %8, %9, !dbg !5973
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5973
  br label %lor.end, !dbg !5973

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5973
  %lnot14 = xor i1 %lnot, true, !dbg !5973
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5973
  %conv = sext i32 %lnot.ext to i64, !dbg !5973
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5973
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5973
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5975

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5976
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #18, !dbg !5977
  br label %if.end17, !dbg !5977

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5979
  %12 = load i1, ptr %retval, align 1, !dbg !5979
  ret i1 %12, !dbg !5979
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5980 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5986, metadata !DIExpression()), !dbg !5988
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5987, metadata !DIExpression()), !dbg !5989
  br label %do.body, !dbg !5990

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5991

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5993
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !5994
  %1 = load i32, ptr %i.addr, align 4, !dbg !5995
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5996
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #18, !dbg !5997
  ret i32 %call, !dbg !5998
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5999 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6002 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6010, metadata !DIExpression()), !dbg !6012
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6011, metadata !DIExpression()), !dbg !6013
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6014
  %1 = load i64, ptr %size.addr, align 8, !dbg !6015
  %conv = trunc i64 %1 to i32, !dbg !6015
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6016
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6017
  %3 = load i64, ptr %size.addr, align 8, !dbg !6017
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6017
  ret void, !dbg !6018
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6019 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6022, metadata !DIExpression()), !dbg !6024
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  %0 = load i32, ptr %i.addr, align 4, !dbg !6026
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6027
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #18, !dbg !6028
  ret i32 %call, !dbg !6029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !6030 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6035, metadata !DIExpression()), !dbg !6037
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  ret i1 true, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !6040 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6045, metadata !DIExpression()), !dbg !6048
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6046, metadata !DIExpression()), !dbg !6049
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6047, metadata !DIExpression()), !dbg !6050
  ret void, !dbg !6051
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6052 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6055, metadata !DIExpression()), !dbg !6059
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6056, metadata !DIExpression()), !dbg !6060
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6057, metadata !DIExpression()), !dbg !6061
  %0 = load i32, ptr %i.addr, align 4, !dbg !6061
  %sub = sub i32 0, %0, !dbg !6061
  store i32 %sub, ptr %__ret, align 4, !dbg !6061
  %1 = load i32, ptr %__ret, align 4, !dbg !6061
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6061
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6061
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !6061, !srcloc !6062
  store i32 %3, ptr %__ret, align 4, !dbg !6061
  %4 = load i32, ptr %__ret, align 4, !dbg !6061
  store i32 %4, ptr %tmp, align 4, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6063
  %5 = load i32, ptr %tmp, align 4, !dbg !6061
  ret i32 %5, !dbg !6064
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(type) && type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(mem_type) && mem_type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { noredzone noreturn }
attributes #20 = { noredzone allocsize(2) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092}
!llvm.ident = !{!5093}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ttm_range_manager_func", scope: !2, file: !3, line: 157, type: !4475, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/ttm/.ttm_range_manager.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/ttm/ttm\22 -D KBUILD_BASENAME=\22ttm_range_manager\22 -D KBUILD_MODNAME=\22ttm\22 -D __KBUILD_MODNAME=kmod_ttm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/ttm/ttm_range_manager.ll drivers/gpu/drm/ttm/ttm_range_manager.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191, globals: !5070, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/ttm/ttm_range_manager.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "995526632efe868418f4c5eb070f0e8f")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !92, !98, !104, !110, !117, !125, !133, !142, !147, !152, !158, !163, !173, !183}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !88, line: 61, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!91 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !93, line: 67, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!96 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!97 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !99, line: 33, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "ttm_uncached", value: 0)
!102 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!103 = !DIEnumerator(name: "ttm_cached", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !105, line: 45, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!108 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!109 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !111, line: 487, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!114 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!115 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!116 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !118, line: 620, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!121 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!122 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!123 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!124 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !118, line: 597, baseType: !126, size: 32, elements: !127)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!129 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!130 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!131 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!132 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !111, line: 547, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !111, line: 564, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !111, line: 577, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !111, line: 503, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0)
!162 = !DIEnumerator(name: "true", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !164, line: 364, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!170 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!171 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!172 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !174, line: 70, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!175 = !{!176, !177, !178, !179, !180, !181, !182}
!176 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0)
!177 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1)
!178 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2)
!179 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3)
!180 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!181 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!182 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !184, line: 119, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!185 = !{!186, !187, !188, !189, !190}
!186 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!187 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!188 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!189 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!190 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!191 = !{!192, !194, !195, !126, !196, !5061, !5064}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 154, baseType: !7)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_range_mgr_node", file: !198, line: 19, size: 576, elements: !199)
!198 = !DIFile(filename: "./include/drm/ttm/ttm_range_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f4a64e67eb8ecf0dc43c257c8f6100")
!199 = !{!200, !5059}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !197, file: !198, line: 20, baseType: !201, size: 576)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !202, line: 209, size: 576, elements: !203)
!202 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!203 = !{!204, !205, !210, !216, !217, !230, !5058}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !201, file: !202, line: 210, baseType: !195, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !202, line: 211, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 61, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !208, line: 72, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !208, line: 16, baseType: !195)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !201, file: !202, line: 212, baseType: !211, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 110, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !213, line: 21, baseType: !214)
!213 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !215, line: 27, baseType: !7)
!215 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !201, file: !202, line: 213, baseType: !211, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !201, file: !202, line: 214, baseType: !218, size: 192, offset: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !202, line: 189, size: 192, elements: !219)
!219 = !{!220, !221, !226, !229}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !218, file: !202, line: 190, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !218, file: !202, line: 191, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 159, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !213, line: 23, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !215, line: 31, baseType: !225)
!225 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !218, file: !202, line: 192, baseType: !227, size: 8, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 35, baseType: !228)
!228 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !218, file: !202, line: 193, baseType: !98, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !201, file: !202, line: 215, baseType: !231, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !93, line: 98, size: 3712, elements: !233)
!233 = !{!234, !4376, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5054, !5055, !5056, !5057}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !232, file: !93, line: 99, baseType: !235, size: 2816)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !88, line: 264, size: 2816, elements: !236)
!236 = !{!237, !250, !251, !254, !4193, !4232, !4233, !4234, !4237, !4240, !4262, !4263, !4267, !4367, !4368}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !235, file: !88, line: 274, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !239, line: 19, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !238, file: !239, line: 20, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !184, line: 113, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !184, line: 111, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !243, file: !184, line: 112, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 174, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 172, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !247, file: !193, line: 173, baseType: !126, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !235, file: !88, line: 287, baseType: !7, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !88, line: 292, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !88, line: 292, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !235, file: !88, line: 302, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !257)
!257 = !{!258, !277, !314, !316, !326, !344, !347, !348, !424, !643, !652, !4183, !4184, !4185, !4186, !4187, !4188, !4190, !4191, !4192}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !59, line: 995, baseType: !259, size: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !59, line: 995, size: 128, elements: !260)
!260 = !{!261, !267, !276}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !259, file: !59, line: 996, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !263, line: 60, size: 64, elements: !264)
!263 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !263, line: 61, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !259, file: !59, line: 997, baseType: !268, size: 128, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 232, size: 128, align: 64, elements: !269)
!269 = !{!270, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !193, line: 233, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !268, file: !193, line: 234, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !271}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !259, file: !59, line: 998, baseType: !7, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !256, file: !59, line: 1005, baseType: !278, size: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !279, line: 29, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !279, line: 17, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !279, line: 18, baseType: !283, size: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 18, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !283, file: !279, line: 19, baseType: !286, size: 32)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !287, line: 14, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !286, file: !287, line: 15, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !291, line: 44, baseType: !292)
!291 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !291, line: 14, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !291, line: 15, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !291, line: 15, size: 32, elements: !296)
!296 = !{!297, !298, !306}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !295, file: !291, line: 16, baseType: !246, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !291, line: 24, baseType: !299, size: 16)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !291, line: 24, size: 16, elements: !300)
!300 = !{!301, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !299, file: !291, line: 25, baseType: !302, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !213, line: 17, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !215, line: 21, baseType: !304)
!304 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !299, file: !291, line: 26, baseType: !302, size: 8, offset: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !291, line: 28, baseType: !307, size: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !291, line: 28, size: 32, elements: !308)
!308 = !{!309, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !307, file: !291, line: 29, baseType: !310, size: 16)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !213, line: 19, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !215, line: 24, baseType: !312)
!312 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !307, file: !291, line: 30, baseType: !310, size: 16, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !256, file: !59, line: 1006, baseType: !315, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 156, baseType: !7)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !256, file: !59, line: 1007, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !318, line: 13, baseType: !319)
!318 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 181, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 179, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !320, file: !193, line: 180, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !213, line: 22, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !215, line: 30, baseType: !325)
!325 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !256, file: !59, line: 1008, baseType: !327, size: 256, offset: 256)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !328, line: 66, size: 256, elements: !329)
!328 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!329 = !{!330, !331, !333, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !327, file: !328, line: 67, baseType: !317, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !327, file: !328, line: 68, baseType: !332, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !287, line: 23, baseType: !286)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !327, file: !328, line: 70, baseType: !334, size: 32, offset: 96)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !335, line: 15, size: 32, elements: !336)
!335 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !334, file: !335, line: 20, baseType: !246, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !327, file: !328, line: 72, baseType: !339, size: 128, offset: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 190, size: 128, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !193, line: 191, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !339, file: !193, line: 191, baseType: !342, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !256, file: !59, line: 1009, baseType: !345, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 52, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !208, line: 88, baseType: !325)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !256, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !256, file: !59, line: 1011, baseType: !349, size: 256, offset: 640)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !350)
!350 = !{!351, !374, !413, !414, !422, !423}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !59, line: 949, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !353, line: 34, baseType: !354)
!353 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 25, size: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !354, file: !353, line: 26, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !358, line: 27, baseType: !359)
!358 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !358, line: 13, size: 64, elements: !360)
!360 = !{!361, !373}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !358, line: 14, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !358, line: 14, size: 32, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !362, file: !358, line: 15, baseType: !246, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !358, line: 16, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !358, line: 16, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !366, file: !358, line: 18, baseType: !302, size: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !366, file: !358, line: 19, baseType: !370, size: 24, offset: 8)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 24, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 3)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !359, file: !358, line: 26, baseType: !290, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !349, file: !59, line: 950, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !377)
!377 = !{!378, !379, !380, !381, !394, !395, !402, !403}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !6, line: 61, baseType: !242, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !376, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !376, file: !6, line: 63, baseType: !278, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !376, file: !6, line: 65, baseType: !382, size: 256, offset: 128)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 256, elements: !392)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 194, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !383, file: !193, line: 195, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 198, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !193, line: 199, baseType: !386, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !387, file: !193, line: 199, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!392 = !{!393}
!393 = !DISubrange(count: 4)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !376, file: !6, line: 66, baseType: !383, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !376, file: !6, line: 68, baseType: !396, size: 192, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !397, line: 41, baseType: !398)
!397 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !397, line: 37, size: 192, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !398, file: !397, line: 38, baseType: !278, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !398, file: !397, line: 39, baseType: !339, size: 128, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !376, file: !6, line: 69, baseType: !268, size: 128, align: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !376, file: !6, line: 70, baseType: !404, offset: 768)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, elements: !411)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !405, file: !6, line: 55, baseType: !126, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !405, file: !6, line: 56, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!411 = !{!412}
!412 = !DISubrange(count: -1)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !349, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !349, file: !59, line: 952, baseType: !415, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !416, line: 23, baseType: !417)
!416 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 21, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !416, line: 22, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 37, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !208, line: 49, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !349, file: !59, line: 952, baseType: !415, size: 32, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !349, file: !59, line: 953, baseType: !126, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !256, file: !59, line: 1012, baseType: !425, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !428, line: 110, size: 1472, elements: !429)
!428 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!429 = !{!430, !431, !432, !439, !440, !441, !442, !443, !444, !445, !446, !452, !453, !454, !455, !456, !457, !588, !589, !590, !591, !592, !623, !626, !630, !638}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !427, file: !428, line: 111, baseType: !317, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !427, file: !428, line: 112, baseType: !415, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !427, file: !428, line: 113, baseType: !433, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !416, line: 28, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 26, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !416, line: 27, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 38, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !208, line: 50, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !427, file: !428, line: 114, baseType: !415, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !427, file: !428, line: 115, baseType: !433, size: 32, offset: 160)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !427, file: !428, line: 116, baseType: !415, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !427, file: !428, line: 117, baseType: !433, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !427, file: !428, line: 118, baseType: !415, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !427, file: !428, line: 119, baseType: !433, size: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !427, file: !428, line: 120, baseType: !7, size: 32, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !427, file: !428, line: 121, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !448, line: 24, baseType: !449)
!448 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 24, size: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !448, line: 24, baseType: !223, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !427, file: !428, line: 122, baseType: !447, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !427, file: !428, line: 123, baseType: !447, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !427, file: !428, line: 124, baseType: !447, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !427, file: !428, line: 125, baseType: !447, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !427, file: !428, line: 127, baseType: !304, size: 8, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !427, file: !428, line: 129, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !460, line: 195, size: 1728, elements: !461)
!460 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!461 = !{!462, !463, !468, !480, !489, !492, !493, !500, !501, !502, !503, !505, !506, !507, !509, !510, !552, !573}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !459, file: !460, line: 196, baseType: !242, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !459, file: !460, line: 197, baseType: !464, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !460, line: 28, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 104, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !213, line: 20, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !215, line: 26, baseType: !126)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 198, baseType: !469, size: 192, offset: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 198, size: 192, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !469, file: !460, line: 199, baseType: !339, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !469, file: !460, line: 200, baseType: !473, size: 192, align: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !474, line: 5, size: 192, align: 64, elements: !475)
!474 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!475 = !{!476, !477, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !473, file: !474, line: 6, baseType: !195, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !473, file: !474, line: 7, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !473, file: !474, line: 8, baseType: !478, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !459, file: !460, line: 205, baseType: !481, size: 320, offset: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !482, line: 48, size: 320, elements: !483)
!482 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!483 = !{!484, !485, !486, !487, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !481, file: !482, line: 49, baseType: !317, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 55, baseType: !317, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !481, file: !482, line: 57, baseType: !334, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !481, file: !482, line: 59, baseType: !332, size: 32, offset: 160)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !481, file: !482, line: 60, baseType: !339, size: 128, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !459, file: !460, line: 206, baseType: !490, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !460, line: 206, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !459, file: !460, line: 207, baseType: !194, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 208, baseType: !494, size: 64, offset: 704)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 208, size: 64, elements: !495)
!495 = !{!496, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !494, file: !460, line: 209, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !498, line: 8, baseType: !324)
!498 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !494, file: !460, line: 210, baseType: !497, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !459, file: !460, line: 212, baseType: !497, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !459, file: !460, line: 213, baseType: !415, size: 32, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !459, file: !460, line: 214, baseType: !433, size: 32, offset: 864)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !459, file: !460, line: 215, baseType: !504, size: 32, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !460, line: 31, baseType: !211)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !459, file: !460, line: 216, baseType: !312, size: 16, offset: 928)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !459, file: !460, line: 217, baseType: !312, size: 16, offset: 944)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !459, file: !460, line: 221, baseType: !508, size: 16, offset: 960)
!508 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !460, line: 228, baseType: !195, size: 64, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 245, baseType: !511, size: 320, offset: 1088)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 245, size: 320, elements: !512)
!512 = !{!513, !543}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !511, file: !460, line: 246, baseType: !514, size: 320)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !460, line: 114, size: 320, elements: !515)
!515 = !{!516, !517, !530, !533, !540}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !514, file: !460, line: 116, baseType: !195, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !460, line: 117, baseType: !518, size: 64, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !460, line: 117, size: 64, elements: !519)
!519 = !{!520, !529}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !460, line: 118, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !518, file: !460, line: 118, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !521, file: !460, line: 120, baseType: !310, size: 16)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !521, file: !460, line: 121, baseType: !525, size: 48, offset: 16)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 48, elements: !527)
!526 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!527 = !{!528}
!528 = !DISubrange(count: 6)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !518, file: !460, line: 127, baseType: !195, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !460, line: 129, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !460, line: 102, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !514, file: !460, line: 130, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !460, line: 108, size: 192, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !535, file: !460, line: 109, baseType: !268, size: 128, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !535, file: !460, line: 110, baseType: !242, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !535, file: !460, line: 111, baseType: !227, size: 8, offset: 160)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !514, file: !460, line: 131, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!543 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !460, line: 247, baseType: !544, size: 320)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !511, file: !460, line: 247, size: 320, elements: !545)
!545 = !{!546, !547, !548, !549, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !544, file: !460, line: 248, baseType: !195, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !544, file: !460, line: 249, baseType: !195, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !460, line: 250, baseType: !531, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !544, file: !460, line: 251, baseType: !534, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !544, file: !460, line: 252, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 260, baseType: !553, size: 256, offset: 1408)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 260, size: 256, elements: !554)
!554 = !{!555, !561}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !553, file: !460, line: 261, baseType: !556, size: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !460, line: 134, size: 256, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !556, file: !460, line: 135, baseType: !194, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !556, file: !460, line: 136, baseType: !560, size: 256)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !392)
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !460, line: 262, baseType: !562, size: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !460, line: 262, size: 256, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !562, file: !460, line: 264, baseType: !339, size: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !562, file: !460, line: 265, baseType: !566, size: 128, offset: 128)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !567, line: 22, size: 128, elements: !568)
!567 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!568 = !{!569, !572}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !566, file: !567, line: 23, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !567, line: 23, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !566, file: !567, line: 24, baseType: !195, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !459, file: !460, line: 280, baseType: !574, size: 64, offset: 1664)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !460, line: 176, size: 192, elements: !576)
!576 = !{!577, !586, !587}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !575, file: !460, line: 177, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !460, line: 171, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!126, !458, !582, !584, !458}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !575, file: !460, line: 178, baseType: !458, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !575, file: !460, line: 179, baseType: !531, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !427, file: !428, line: 130, baseType: !458, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !427, file: !428, line: 131, baseType: !458, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !427, file: !428, line: 132, baseType: !458, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !427, file: !428, line: 135, baseType: !194, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !427, file: !428, line: 137, baseType: !593, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !595, line: 14, size: 1088, elements: !596)
!595 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!596 = !{!597, !598, !607, !608, !609, !610, !611, !612}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !594, file: !595, line: 15, baseType: !242, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !594, file: !595, line: 17, baseType: !599, size: 320, offset: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !600, line: 22, size: 320, elements: !601)
!600 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!601 = !{!602, !603, !604, !605}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !599, file: !600, line: 23, baseType: !332, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !599, file: !600, line: 24, baseType: !323, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !599, file: !600, line: 26, baseType: !339, size: 128, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !599, file: !600, line: 28, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !594, file: !595, line: 19, baseType: !195, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !594, file: !595, line: 20, baseType: !317, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !594, file: !595, line: 23, baseType: !387, size: 128, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !594, file: !595, line: 24, baseType: !415, size: 32, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !594, file: !595, line: 29, baseType: !317, size: 64, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !594, file: !595, line: 36, baseType: !613, size: 320, offset: 768)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !614, line: 15, size: 320, elements: !615)
!614 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!615 = !{!616, !617, !618, !619, !620, !621, !622}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !614, line: 16, baseType: !332, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !613, file: !614, line: 18, baseType: !126, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !613, file: !614, line: 19, baseType: !126, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !613, file: !614, line: 20, baseType: !126, size: 32, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !613, file: !614, line: 21, baseType: !126, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !613, file: !614, line: 22, baseType: !195, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !614, line: 23, baseType: !195, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !427, file: !428, line: 138, baseType: !624, size: 64, offset: 1152)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !416, line: 18, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !427, file: !428, line: 139, baseType: !627, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !629, line: 16, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !427, file: !428, line: 140, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !428, line: 25, size: 64, elements: !633)
!633 = !{!634, !635, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !428, line: 26, baseType: !246, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !632, file: !428, line: 27, baseType: !126, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !632, file: !428, line: 28, baseType: !637, offset: 64)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !411)
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !428, line: 142, baseType: !639, size: 128, offset: 1344)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !428, line: 142, size: 128, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !639, file: !428, line: 143, baseType: !126, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !639, file: !428, line: 144, baseType: !268, size: 128, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !256, file: !59, line: 1013, baseType: !644, size: 256, offset: 960)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !644, file: !59, line: 971, baseType: !195, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !644, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !644, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !644, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !644, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !644, file: !59, line: 976, baseType: !345, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !256, file: !59, line: 1014, baseType: !653, size: 128, offset: 1216)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !654, line: 8, size: 128, elements: !655)
!654 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!655 = !{!656, !4182}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !653, file: !654, line: 9, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !659, line: 70, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!660 = !{!661, !4179, !4180, !4181}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !658, file: !659, line: 71, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !664, line: 82, size: 1536, elements: !665)
!664 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!665 = !{!666, !667, !677, !685, !686, !701, !4146, !4148, !4161, !4162, !4163, !4164, !4165, !4171, !4172, !4173}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !663, file: !664, line: 84, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !663, file: !664, line: 85, baseType: !668, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !669, line: 275, baseType: !670)
!669 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !669, line: 275, size: 32, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !670, file: !669, line: 275, baseType: !673, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !669, line: 69, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !669, line: 64, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !674, file: !669, line: 65, baseType: !7, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !663, file: !664, line: 86, baseType: !678, size: 128, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !679, line: 38, size: 128, elements: !680)
!679 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !679, line: 39, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !678, file: !679, line: 39, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !663, file: !664, line: 87, baseType: !662, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !663, file: !664, line: 88, baseType: !687, size: 128, offset: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !664, line: 49, size: 128, elements: !688)
!688 = !{!689, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !664, line: 50, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !664, line: 50, size: 64, elements: !691)
!691 = !{!692, !697}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !664, line: 51, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !690, file: !664, line: 51, size: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !693, file: !664, line: 52, baseType: !212, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !693, file: !664, line: 52, baseType: !212, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !690, file: !664, line: 54, baseType: !223, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !664, line: 56, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !663, file: !664, line: 89, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !704)
!704 = !{!705, !707, !708, !709, !710, !711, !712, !715, !716, !910, !3962, !3963, !3964, !3965, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4128, !4131, !4132, !4133, !4142, !4143, !4144, !4145}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !703, file: !59, line: 642, baseType: !706, size: 16)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 24, baseType: !312)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !703, file: !59, line: 643, baseType: !312, size: 16, offset: 16)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !703, file: !59, line: 644, baseType: !415, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !703, file: !59, line: 645, baseType: !339, size: 128, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !703, file: !59, line: 646, baseType: !433, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !703, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !703, file: !59, line: 650, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !703, file: !59, line: 651, baseType: !713, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !703, file: !59, line: 654, baseType: !717, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !720)
!720 = !{!721, !725, !738, !744, !748, !752, !756, !760, !764, !768, !772, !773, !779, !783, !821, !852, !859, !865, !869, !873, !877, !881, !885, !891, !895}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !719, file: !59, line: 1967, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!662, !702, !662, !7}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !719, file: !59, line: 1968, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!541, !662, !702, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !731, line: 10, size: 128, elements: !732)
!731 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!732 = !{!733, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !730, file: !731, line: 11, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !194}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !730, file: !731, line: 12, baseType: !194, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !719, file: !59, line: 1969, baseType: !739, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!126, !742, !702, !126}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !448, line: 42, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !719, file: !59, line: 1970, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!713, !702, !126, !227}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !719, file: !59, line: 1972, baseType: !749, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!126, !662, !551, !126}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !719, file: !59, line: 1974, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!126, !742, !702, !662, !706, !227}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !719, file: !59, line: 1976, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!126, !662, !702, !662}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !719, file: !59, line: 1977, baseType: !761, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!126, !702, !662}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !719, file: !59, line: 1978, baseType: !765, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!126, !742, !702, !662, !541}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !719, file: !59, line: 1980, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!126, !742, !702, !662, !706}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !719, file: !59, line: 1982, baseType: !761, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !719, file: !59, line: 1983, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!126, !742, !702, !662, !706, !777}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 21, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 18, baseType: !212)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !719, file: !59, line: 1985, baseType: !780, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!126, !742, !702, !662, !702, !662, !7}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !719, file: !59, line: 1987, baseType: !784, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!126, !742, !662, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !789)
!789 = !{!790, !791, !792, !802, !811, !812, !818, !819, !820}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !788, file: !59, line: 227, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !788, file: !59, line: 228, baseType: !706, size: 16, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !59, line: 241, baseType: !793, size: 32, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !59, line: 241, size: 32, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !793, file: !59, line: 242, baseType: !415, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !793, file: !59, line: 243, baseType: !797, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !798, line: 16, baseType: !799)
!798 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 14, size: 32, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !799, file: !798, line: 15, baseType: !420, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !59, line: 245, baseType: !803, size: 32, offset: 96)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !59, line: 245, size: 32, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !803, file: !59, line: 246, baseType: !433, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !803, file: !59, line: 247, baseType: !807, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !798, line: 20, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !798, line: 18, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !808, file: !798, line: 19, baseType: !437, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !788, file: !59, line: 249, baseType: !345, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !788, file: !59, line: 250, baseType: !813, size: 128, offset: 192)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !498, line: 13, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !813, file: !498, line: 14, baseType: !497, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !813, file: !498, line: 15, baseType: !817, size: 64, offset: 64)
!817 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !788, file: !59, line: 251, baseType: !813, size: 128, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !788, file: !59, line: 252, baseType: !813, size: 128, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !788, file: !59, line: 259, baseType: !255, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !719, file: !59, line: 1988, baseType: !822, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!126, !742, !825, !827, !212, !7}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !829, line: 22, size: 1280, elements: !830)
!829 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !828, file: !829, line: 23, baseType: !212, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !828, file: !829, line: 24, baseType: !706, size: 16, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !828, file: !829, line: 25, baseType: !7, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !828, file: !829, line: 26, baseType: !211, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !828, file: !829, line: 27, baseType: !223, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !828, file: !829, line: 28, baseType: !223, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !828, file: !829, line: 41, baseType: !223, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !828, file: !829, line: 42, baseType: !777, size: 32, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !828, file: !829, line: 43, baseType: !777, size: 32, offset: 352)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !828, file: !829, line: 44, baseType: !415, size: 32, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !828, file: !829, line: 45, baseType: !433, size: 32, offset: 416)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !828, file: !829, line: 46, baseType: !345, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !828, file: !829, line: 47, baseType: !813, size: 128, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !828, file: !829, line: 48, baseType: !813, size: 128, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !828, file: !829, line: 49, baseType: !813, size: 128, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !828, file: !829, line: 50, baseType: !813, size: 128, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !828, file: !829, line: 51, baseType: !223, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !828, file: !829, line: 52, baseType: !223, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !828, file: !829, line: 53, baseType: !212, size: 32, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !828, file: !829, line: 54, baseType: !212, size: 32, offset: 1184)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !828, file: !829, line: 55, baseType: !223, size: 64, offset: 1216)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !719, file: !59, line: 1990, baseType: !853, size: 64, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !662, !551, !206}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 66, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !208, line: 73, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !208, line: 15, baseType: !817)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !719, file: !59, line: 1991, baseType: !860, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!126, !702, !863, !223, !223}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !719, file: !59, line: 1993, baseType: !866, size: 64, offset: 1088)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!126, !702, !126}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !719, file: !59, line: 1994, baseType: !870, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!126, !702, !662, !255, !7, !706}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !719, file: !59, line: 1997, baseType: !874, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!126, !742, !702, !255, !706}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !719, file: !59, line: 1999, baseType: !878, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!713, !742, !662, !126}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !719, file: !59, line: 2001, baseType: !882, size: 64, offset: 1344)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!126, !742, !662, !713, !126}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !719, file: !59, line: 2003, baseType: !886, size: 64, offset: 1408)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!126, !742, !662, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !719, file: !59, line: 2005, baseType: !892, size: 64, offset: 1472)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!126, !662, !889}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !719, file: !59, line: 2006, baseType: !896, size: 64, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !702}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !901)
!901 = !{!902, !909}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !900, file: !59, line: 3193, baseType: !903, size: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !904, line: 296, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !903, file: !904, line: 297, baseType: !278, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !903, file: !904, line: 299, baseType: !192, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !903, file: !904, line: 300, baseType: !194, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !900, file: !59, line: 3194, baseType: !212, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !703, file: !59, line: 655, baseType: !911, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !919, !2293, !2425, !2465, !2548, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2565, !2569, !2570, !2573, !2576, !2579, !2582, !2583, !2584, !2625, !3837, !3838, !3839, !3840, !3841, !3842, !3845, !3847, !3854, !3855, !3856, !3857, !3916, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !912, file: !59, line: 1191, baseType: !339, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !912, file: !59, line: 1192, baseType: !777, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !912, file: !59, line: 1193, baseType: !304, size: 8, offset: 160)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !912, file: !59, line: 1194, baseType: !195, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !912, file: !59, line: 1195, baseType: !345, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !912, file: !59, line: 1196, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !922)
!922 = !{!923, !924, !925, !931, !935, !939, !943, !2281, !2282, !2283, !2285, !2286, !2287, !2289, !2290, !2291, !2292}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !921, file: !59, line: 2367, baseType: !541, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !921, file: !59, line: 2368, baseType: !126, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !921, file: !59, line: 2376, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!126, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !659, line: 21, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !921, file: !59, line: 2377, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !921, file: !59, line: 2378, baseType: !936, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!662, !920, !126, !541, !194}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !921, file: !59, line: 2380, baseType: !940, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !911}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !921, file: !59, line: 2381, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !946)
!946 = !{!947, !948, !949, !953, !1937, !1963, !1964, !1965, !1966, !1970, !1973, !1974, !1975, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2043, !2047, !2067, !2085, !2086, !2087, !2088, !2097, !2120, !2121, !2124, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2138, !2139, !2239, !2247, !2248, !2249, !2251, !2255, !2256, !2260, !2261, !2262, !2263, !2265, !2266, !2267, !2274, !2275, !2276, !2280}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !945, file: !15, line: 403, baseType: !14, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !945, file: !15, line: 406, baseType: !339, size: 128, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !15, line: 409, baseType: !950, size: 448, offset: 192)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 448, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 56)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !945, file: !15, line: 417, baseType: !954, size: 768, offset: 640)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !955)
!955 = !{!956, !1930, !1931, !1932, !1935}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !954, file: !15, line: 46, baseType: !957, size: 512)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !958, line: 64, size: 512, elements: !959)
!958 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!959 = !{!960, !961, !962, !964, !1008, !1789, !1924, !1925, !1926, !1927, !1928, !1929}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !957, file: !958, line: 65, baseType: !541, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !957, file: !958, line: 66, baseType: !339, size: 128, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !957, file: !958, line: 67, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !957, file: !958, line: 68, baseType: !965, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !958, line: 168, size: 768, elements: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !966, file: !958, line: 169, baseType: !339, size: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !966, file: !958, line: 170, baseType: !278, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !966, file: !958, line: 171, baseType: !957, size: 512, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !966, file: !958, line: 172, baseType: !972, size: 64, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !958, line: 133, size: 192, elements: !975)
!975 = !{!976, !983, !988}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !974, file: !958, line: 134, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!126, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !974, file: !958, line: 135, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!541, !981}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !974, file: !958, line: 136, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!126, !981, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !958, line: 125, size: 20736, elements: !995)
!995 = !{!996, !998, !1002, !1003, !1007}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !994, file: !958, line: 126, baseType: !997, size: 192)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 192, elements: !371)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !994, file: !958, line: 127, baseType: !999, size: 4096, offset: 192)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 4096, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !994, file: !958, line: 128, baseType: !126, size: 32, offset: 4288)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !994, file: !958, line: 129, baseType: !1004, size: 16384, offset: 4320)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 16384, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 2048)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !994, file: !958, line: 130, baseType: !126, size: 32, offset: 20704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !957, file: !958, line: 69, baseType: !1009, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !958, line: 116, size: 384, elements: !1012)
!1012 = !{!1013, !1017, !1036, !1751, !1779, !1783}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1011, file: !958, line: 117, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !963}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1011, file: !958, line: 118, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1021, line: 254, size: 128, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1022 = !{!1023, !1032}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1020, file: !1021, line: 255, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!856, !963, !1027, !551}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1021, line: 30, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1028, file: !1021, line: 31, baseType: !541, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1028, file: !1021, line: 32, baseType: !706, size: 16, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1020, file: !1021, line: 256, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!856, !963, !1027, !541, !206}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1011, file: !958, line: 119, baseType: !1037, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1021, line: 84, size: 320, elements: !1041)
!1041 = !{!1042, !1043, !1047, !1747, !1749}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !1021, line: 85, baseType: !541, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1040, file: !1021, line: 86, baseType: !1044, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!706, !963, !1027, !126}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1040, file: !1021, line: 88, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!706, !963, !1051, !126}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1021, line: 175, size: 512, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1738, !1742, !1743}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1052, file: !1021, line: 176, baseType: !1028, size: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1052, file: !1021, line: 177, baseType: !206, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1052, file: !1021, line: 178, baseType: !194, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1052, file: !1021, line: 179, baseType: !1058, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1077, !1078, !1079, !1730, !1731, !1732, !1735, !1736, !1737}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1062, file: !59, line: 473, baseType: !702, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1062, file: !59, line: 474, baseType: !903, size: 128, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1062, file: !59, line: 475, baseType: !481, size: 320, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1062, file: !59, line: 476, baseType: !192, size: 32, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1062, file: !59, line: 477, baseType: !246, size: 32, offset: 544)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1062, file: !59, line: 482, baseType: !1070, size: 128, offset: 576)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !474, line: 26, size: 128, elements: !1071)
!1071 = !{!1072, !1076}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1070, file: !474, line: 27, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !474, line: 12, size: 64, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1073, file: !474, line: 13, baseType: !478, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1070, file: !474, line: 28, baseType: !478, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1062, file: !59, line: 483, baseType: !195, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1062, file: !59, line: 484, baseType: !195, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1062, file: !59, line: 485, baseType: !1080, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !1083)
!1083 = !{!1084, !1554, !1624, !1628, !1632, !1638, !1644, !1648, !1653, !1657, !1661, !1665, !1694, !1698, !1702, !1706, !1711, !1715, !1722, !1726}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1082, file: !59, line: 405, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!126, !1088, !1552}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1090)
!1090 = !{!1091, !1092, !1546, !1551}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !30, line: 75, baseType: !195, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !30, line: 83, baseType: !1093, size: 320, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !30, line: 83, size: 320, elements: !1094)
!1094 = !{!1095, !1116, !1130, !1134, !1545}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !30, line: 84, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !30, line: 84, size: 320, elements: !1097)
!1097 = !{!1098, !1109, !1110, !1115}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !30, line: 90, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !30, line: 90, size: 128, elements: !1100)
!1100 = !{!1101, !1102, !1107, !1108}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1099, file: !30, line: 91, baseType: !339, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !30, line: 94, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1099, file: !30, line: 94, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1103, file: !30, line: 96, baseType: !194, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1103, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1099, file: !30, line: 102, baseType: !339, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1099, file: !30, line: 103, baseType: !339, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1096, file: !30, line: 106, baseType: !1061, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !30, line: 107, baseType: !1111, size: 64, offset: 192)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !30, line: 107, size: 64, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1111, file: !30, line: 108, baseType: !195, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1111, file: !30, line: 109, baseType: !195, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1096, file: !30, line: 117, baseType: !195, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !30, line: 119, baseType: !1117, size: 320)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !30, line: 119, size: 320, elements: !1118)
!1118 = !{!1119, !1120, !1123, !1124, !1125}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1117, file: !30, line: 124, baseType: !195, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1117, file: !30, line: 125, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1117, file: !30, line: 126, baseType: !195, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1117, file: !30, line: 127, baseType: !195, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !30, line: 128, baseType: !1126, size: 64, offset: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !30, line: 128, size: 64, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1126, file: !30, line: 133, baseType: !195, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1126, file: !30, line: 138, baseType: !317, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !30, line: 141, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !30, line: 141, size: 64, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1131, file: !30, line: 142, baseType: !195, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !30, line: 144, baseType: !1135, size: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !30, line: 144, size: 128, elements: !1136)
!1136 = !{!1137, !1544}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1135, file: !30, line: 146, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1140)
!1140 = !{!1141, !1151, !1172, !1183, !1184, !1185, !1186, !1526, !1527, !1528}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1139, file: !22, line: 127, baseType: !1142, size: 384)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !1147, !1148, !1149, !1150}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1142, file: !22, line: 22, baseType: !195, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1142, file: !22, line: 23, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1142, file: !22, line: 24, baseType: !1146, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1142, file: !22, line: 25, baseType: !195, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1142, file: !22, line: 26, baseType: !195, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1142, file: !22, line: 27, baseType: !195, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1139, file: !22, line: 128, baseType: !1152, size: 128, offset: 384)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1153, line: 105, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1152, file: !1153, line: 110, baseType: !195, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1152, file: !1153, line: 118, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1153, line: 95, size: 448, elements: !1159)
!1159 = !{!1160, !1161, !1167, !1168, !1169, !1170, !1171}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1158, file: !1153, line: 96, baseType: !317, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1158, file: !1153, line: 97, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1153, line: 60, baseType: !1164)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1158, file: !1153, line: 98, baseType: !1162, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1158, file: !1153, line: 99, baseType: !227, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1158, file: !1153, line: 100, baseType: !227, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1158, file: !1153, line: 101, baseType: !268, size: 128, align: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1158, file: !1153, line: 102, baseType: !1166, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1139, file: !22, line: 129, baseType: !1173, size: 256, offset: 512)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1174, line: 26, size: 256, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1173, file: !1174, line: 27, baseType: !7, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1173, file: !1174, line: 28, baseType: !1178, size: 192, offset: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1179, line: 43, size: 192, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1179, line: 44, baseType: !332, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1178, file: !1179, line: 45, baseType: !339, size: 128, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1139, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1139, file: !22, line: 132, baseType: !195, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1139, file: !22, line: 133, baseType: !1187, size: 64, offset: 896)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1190)
!1190 = !{!1191, !1195, !1522}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1189, file: !22, line: 83, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1088}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1189, file: !22, line: 89, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1202, line: 512, size: 896, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1203 = !{!1204, !1489, !1490, !1497, !1504, !1514, !1515, !1516, !1518, !1520}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 513, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !1202, line: 513, size: 320, elements: !1206)
!1206 = !{!1207, !1485, !1486, !1487, !1488}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1205, file: !1202, line: 514, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1210)
!1210 = !{!1211, !1220, !1389, !1395, !1402, !1403, !1408, !1409, !1414, !1415, !1418, !1478, !1479, !1480, !1481, !1482, !1483}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !30, line: 628, baseType: !1212, size: 128)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !30, line: 628, size: 128, elements: !1213)
!1213 = !{!1214, !1219}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !30, line: 629, baseType: !1215, size: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !30, line: 629, size: 128, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1215, file: !30, line: 631, baseType: !195, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1215, file: !30, line: 632, baseType: !195, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1212, file: !30, line: 635, baseType: !268, size: 128, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1209, file: !30, line: 639, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1223)
!1223 = !{!1224, !1387}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !30, line: 734, baseType: !1225, size: 10240)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !30, line: 734, size: 10240, elements: !1226)
!1226 = !{!1227, !1231, !1245, !1249, !1250, !1251, !1252, !1253, !1254, !1263, !1264, !1265, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304, !1306, !1309, !1356, !1357, !1358, !1361, !1362, !1363, !1366, !1367, !1368, !1374, !1375}
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !30, line: 739, baseType: !1228, size: 512, align: 512)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1225, file: !30, line: 739, size: 512, align: 512, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1228, file: !30, line: 747, baseType: !246, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1225, file: !30, line: 750, baseType: !1232, size: 128, offset: 512)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1233, line: 218, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1234 = !{!1235, !1243, !1244}
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1233, line: 219, baseType: !1236, size: 32)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1233, line: 219, size: 32, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1236, file: !1233, line: 220, baseType: !278, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1236, file: !1233, line: 221, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1233, line: 197, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1233, line: 197, elements: !1242)
!1242 = !{}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1232, file: !1233, line: 223, baseType: !7, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1232, file: !1233, line: 224, baseType: !194, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1225, file: !30, line: 752, baseType: !1246, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!195, !255, !195, !195, !195, !195}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1225, file: !30, line: 756, baseType: !195, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1225, file: !30, line: 757, baseType: !195, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1225, file: !30, line: 760, baseType: !195, size: 64, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1225, file: !30, line: 761, baseType: !195, size: 64, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1225, file: !30, line: 763, baseType: !195, size: 64, offset: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1225, file: !30, line: 764, baseType: !1255, size: 64, offset: 1024)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1257, line: 299, baseType: !1258)
!1257 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1257, line: 299, size: 64, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1258, file: !1257, line: 299, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1262, line: 18, baseType: !195)
!1262 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1225, file: !30, line: 773, baseType: !246, size: 32, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1225, file: !30, line: 785, baseType: !246, size: 32, offset: 1120)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1225, file: !30, line: 795, baseType: !1266, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1267, file: !30, line: 727, baseType: !223, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1267, file: !30, line: 728, baseType: !126, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1225, file: !30, line: 801, baseType: !195, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1225, file: !30, line: 804, baseType: !317, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1225, file: !30, line: 806, baseType: !126, size: 32, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1225, file: !30, line: 808, baseType: !278, size: 32, offset: 1376)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1225, file: !30, line: 823, baseType: !481, size: 320, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1225, file: !30, line: 825, baseType: !339, size: 128, offset: 1728)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1225, file: !30, line: 845, baseType: !126, size: 32, offset: 1856)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1225, file: !30, line: 849, baseType: !195, size: 64, offset: 1920)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1225, file: !30, line: 850, baseType: !195, size: 64, offset: 1984)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1225, file: !30, line: 852, baseType: !195, size: 64, offset: 2048)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1225, file: !30, line: 853, baseType: !195, size: 64, offset: 2112)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1225, file: !30, line: 854, baseType: !319, size: 64, offset: 2176)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1225, file: !30, line: 855, baseType: !195, size: 64, offset: 2240)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1225, file: !30, line: 856, baseType: !195, size: 64, offset: 2304)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1225, file: !30, line: 857, baseType: !195, size: 64, offset: 2368)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1225, file: !30, line: 858, baseType: !195, size: 64, offset: 2432)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1225, file: !30, line: 865, baseType: !673, size: 32, offset: 2496)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1225, file: !30, line: 867, baseType: !278, size: 32, offset: 2528)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1225, file: !30, line: 869, baseType: !195, size: 64, offset: 2560)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1225, file: !30, line: 869, baseType: !195, size: 64, offset: 2624)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1225, file: !30, line: 869, baseType: !195, size: 64, offset: 2688)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1225, file: !30, line: 869, baseType: !195, size: 64, offset: 2752)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1225, file: !30, line: 870, baseType: !195, size: 64, offset: 2816)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1225, file: !30, line: 870, baseType: !195, size: 64, offset: 2880)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1225, file: !30, line: 870, baseType: !195, size: 64, offset: 2944)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1225, file: !30, line: 871, baseType: !195, size: 64, offset: 3008)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1225, file: !30, line: 871, baseType: !195, size: 64, offset: 3072)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1225, file: !30, line: 871, baseType: !195, size: 64, offset: 3136)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1225, file: !30, line: 871, baseType: !195, size: 64, offset: 3200)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1225, file: !30, line: 873, baseType: !1301, size: 3328, offset: 3264)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 3328, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 52)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1225, file: !30, line: 875, baseType: !1305, size: 1280, offset: 6592)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 1280, elements: !392)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1225, file: !30, line: 877, baseType: !1307, size: 64, offset: 7872)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1225, file: !30, line: 880, baseType: !1310, size: 1088, offset: 7936)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1311, line: 72, baseType: !1312)
!1311 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1311, line: 23, size: 1088, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1321, !1322, !1323, !1324, !1351, !1352, !1353}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1312, file: !1311, line: 28, baseType: !223, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1312, file: !1311, line: 38, baseType: !319, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1312, file: !1311, line: 40, baseType: !195, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1312, file: !1311, line: 43, baseType: !481, size: 320, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1312, file: !1311, line: 44, baseType: !1319, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1311, line: 44, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !1311, line: 48, baseType: !195, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1312, file: !1311, line: 59, baseType: !327, size: 256, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1312, file: !1311, line: 60, baseType: !194, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1312, file: !1311, line: 61, baseType: !1325, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1328, line: 13, size: 1216, elements: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1327, file: !1328, line: 14, baseType: !194, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1327, file: !1328, line: 15, baseType: !195, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1327, file: !1328, line: 17, baseType: !195, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1327, file: !1328, line: 17, baseType: !195, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1327, file: !1328, line: 18, baseType: !195, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1327, file: !1328, line: 18, baseType: !195, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1327, file: !1328, line: 19, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1327, file: !1328, line: 21, baseType: !817, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1327, file: !1328, line: 23, baseType: !817, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1327, file: !1328, line: 24, baseType: !817, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1327, file: !1328, line: 25, baseType: !817, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1327, file: !1328, line: 26, baseType: !817, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1327, file: !1328, line: 27, baseType: !817, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1327, file: !1328, line: 28, baseType: !817, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1327, file: !1328, line: 29, baseType: !817, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1327, file: !1328, line: 30, baseType: !817, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1327, file: !1328, line: 31, baseType: !817, size: 64, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1327, file: !1328, line: 32, baseType: !817, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1327, file: !1328, line: 33, baseType: !817, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1312, file: !1311, line: 63, baseType: !246, size: 32, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1312, file: !1311, line: 69, baseType: !310, size: 16, offset: 1056)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1312, file: !1311, line: 70, baseType: !1354, size: 16, offset: 1072)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !213, line: 18, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !215, line: 23, baseType: !508)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !30, line: 882, baseType: !195, size: 64, offset: 9024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1225, file: !30, line: 885, baseType: !278, size: 32, offset: 9088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1225, file: !30, line: 886, baseType: !1359, size: 64, offset: 9152)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1225, file: !30, line: 901, baseType: !624, size: 64, offset: 9216)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1225, file: !30, line: 904, baseType: !255, size: 64, offset: 9280)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1225, file: !30, line: 906, baseType: !1364, size: 64, offset: 9344)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1225, file: !30, line: 930, baseType: !246, size: 32, offset: 9408)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1225, file: !30, line: 933, baseType: !246, size: 32, offset: 9440)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1225, file: !30, line: 935, baseType: !1369, size: 64, offset: 9472)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1369, file: !81, line: 104, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1225, file: !30, line: 940, baseType: !317, size: 64, offset: 9536)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1225, file: !30, line: 942, baseType: !1376, size: 256, offset: 9600)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1377, line: 98, size: 256, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1376, file: !1377, line: 99, baseType: !317, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1376, file: !1377, line: 100, baseType: !339, size: 128, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1376, file: !1377, line: 101, baseType: !1382, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1377, line: 21, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1222, file: !30, line: 986, baseType: !1388, offset: 10240)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, elements: !411)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1209, file: !30, line: 640, baseType: !1390, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1257, line: 297, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1257, line: 297, size: 64, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1391, file: !1257, line: 297, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1262, line: 19, baseType: !195)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !30, line: 646, baseType: !1396, size: 64, offset: 256)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !30, line: 646, size: 64, elements: !1397)
!1397 = !{!1398, !1401}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1396, file: !30, line: 647, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !195)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1396, file: !30, line: 648, baseType: !1400, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1209, file: !30, line: 666, baseType: !126, size: 32, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1209, file: !30, line: 667, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !30, line: 580, baseType: !481, size: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1209, file: !30, line: 670, baseType: !227, size: 8, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1209, file: !30, line: 681, baseType: !1410, size: 256, offset: 512)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !30, line: 678, size: 256, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1410, file: !30, line: 679, baseType: !473, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1410, file: !30, line: 680, baseType: !195, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1209, file: !30, line: 689, baseType: !339, size: 128, offset: 768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1209, file: !30, line: 691, baseType: !1416, size: 64, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1209, file: !30, line: 694, baseType: !1419, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1202, line: 563, size: 1024, elements: !1422)
!1422 = !{!1423, !1427, !1428, !1432, !1436, !1440, !1441, !1445, !1449, !1453, !1454, !1455, !1459, !1463, !1470, !1474}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1421, file: !1202, line: 564, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1208}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1421, file: !1202, line: 569, baseType: !1424, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1421, file: !1202, line: 571, baseType: !1429, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!126, !1208, !195}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1421, file: !1202, line: 572, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!126, !1208}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1421, file: !1202, line: 578, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!126, !1208, !195, !195, !195}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1421, file: !1202, line: 580, baseType: !1196, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1421, file: !1202, line: 581, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1199, !1200, !7}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1421, file: !1202, line: 582, baseType: !1446, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!1199, !1200, !195, !195}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1421, file: !1202, line: 584, baseType: !1450, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!195, !1208}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1421, file: !1202, line: 588, baseType: !1196, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1421, file: !1202, line: 591, baseType: !1196, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1421, file: !1202, line: 597, baseType: !1456, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!126, !1208, !195, !194, !126, !126}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1202, line: 603, baseType: !1460, size: 64, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!541, !1208}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1421, file: !1202, line: 613, baseType: !1464, size: 64, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!126, !1208, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1469, line: 54, flags: DIFlagFwdDecl)
!1469 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1421, file: !1202, line: 625, baseType: !1471, size: 64, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1467, !1208, !195}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1421, file: !1202, line: 633, baseType: !1475, size: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1088, !1208, !195}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1209, file: !30, line: 697, baseType: !195, size: 64, offset: 1024)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1209, file: !30, line: 699, baseType: !255, size: 64, offset: 1088)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1209, file: !30, line: 700, baseType: !194, size: 64, offset: 1152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1209, file: !30, line: 711, baseType: !317, size: 64, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1209, file: !30, line: 717, baseType: !1467, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1209, file: !30, line: 722, baseType: !1484, offset: 1344)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !1242)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1205, file: !1202, line: 515, baseType: !192, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1205, file: !1202, line: 516, baseType: !195, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1205, file: !1202, line: 517, baseType: !195, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1205, file: !1202, line: 518, baseType: !195, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1201, file: !1202, line: 520, baseType: !29, size: 32, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1201, file: !1202, line: 522, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1262, line: 22, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 22, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1493, file: !1262, line: 22, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1262, line: 15, baseType: !195)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1201, file: !1202, line: 524, baseType: !1498, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1257, line: 372, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1257, line: 372, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1500, file: !1257, line: 372, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1262, line: 16, baseType: !195)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 527, baseType: !1505, size: 64, offset: 512)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 527, size: 64, elements: !1506)
!1506 = !{!1507, !1513}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1505, file: !1202, line: 528, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1262, line: 21, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 21, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1509, file: !1262, line: 21, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1262, line: 14, baseType: !195)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1505, file: !1202, line: 529, baseType: !1492, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1201, file: !1202, line: 534, baseType: !1088, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1201, file: !1202, line: 535, baseType: !1088, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1201, file: !1202, line: 541, baseType: !1517, size: 64, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1201, file: !1202, line: 545, baseType: !1519, size: 64, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1201, file: !1202, line: 549, baseType: !1521, size: 64, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1257, line: 520, baseType: !1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1189, file: !22, line: 100, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!126, !1138, !195, !195, !126}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1139, file: !22, line: 134, baseType: !194, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1139, file: !22, line: 135, baseType: !126, size: 32, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !22, line: 136, baseType: !1529, size: 128, offset: 1088)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !22, line: 136, size: 128, elements: !1530)
!1530 = !{!1531, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1529, file: !22, line: 137, baseType: !1532, size: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1533, line: 6, size: 128, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1532, file: !1533, line: 7, baseType: !223, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1532, file: !1533, line: 8, baseType: !223, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !22, line: 138, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !22, line: 138, elements: !1539)
!1539 = !{!1540, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1538, file: !22, line: 138, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !22, line: 138, elements: !1242)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1538, file: !22, line: 138, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, elements: !411)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1135, file: !30, line: 147, baseType: !194, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1093, file: !30, line: 161, baseType: !268, size: 128, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !30, line: 164, baseType: !1547, size: 32, offset: 384)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !30, line: 164, size: 32, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1547, file: !30, line: 169, baseType: !246, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1547, file: !30, line: 177, baseType: !7, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1089, file: !30, line: 181, baseType: !246, size: 32, offset: 416)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1082, file: !59, line: 406, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!126, !255, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1560)
!1560 = !{!1561, !1591, !1605}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !30, line: 295, baseType: !1562, size: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !30, line: 295, size: 512, elements: !1563)
!1563 = !{!1564, !1590}
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !30, line: 296, baseType: !1565, size: 448)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !30, line: 296, size: 448, elements: !1566)
!1566 = !{!1567, !1568, !1577, !1578, !1579, !1588, !1589}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !30, line: 298, baseType: !195, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !30, line: 299, baseType: !1569, size: 128, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !30, line: 299, size: 128, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1569, file: !30, line: 300, baseType: !339, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !30, line: 302, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !30, line: 302, size: 128, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1573, file: !30, line: 303, baseType: !194, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1573, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1565, file: !30, line: 310, baseType: !1061, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1565, file: !30, line: 311, baseType: !195, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !30, line: 312, baseType: !1580, size: 64, offset: 320)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !30, line: 312, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1580, file: !30, line: 313, baseType: !194, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1580, file: !30, line: 314, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1585, file: !30, line: 256, baseType: !195, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1565, file: !30, line: 316, baseType: !246, size: 32, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1565, file: !30, line: 317, baseType: !246, size: 32, offset: 416)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1562, file: !30, line: 323, baseType: !1089, size: 512, align: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !30, line: 325, baseType: !1592, size: 512, offset: 512)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !30, line: 325, size: 512, elements: !1593)
!1593 = !{!1594, !1604}
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !30, line: 326, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1592, file: !30, line: 326, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1595, file: !30, line: 327, baseType: !195, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1595, file: !30, line: 328, baseType: !195, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1595, file: !30, line: 329, baseType: !195, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1595, file: !30, line: 331, baseType: !246, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1595, file: !30, line: 332, baseType: !246, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1595, file: !30, line: 333, baseType: !246, size: 32, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1595, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1592, file: !30, line: 339, baseType: !1089, size: 512, align: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !30, line: 341, baseType: !1606, size: 512, offset: 1024)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !30, line: 341, size: 512, elements: !1607)
!1607 = !{!1608, !1617, !1623}
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !30, line: 342, baseType: !1609, size: 384)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !30, line: 342, size: 384, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1609, file: !30, line: 343, baseType: !195, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1609, file: !30, line: 344, baseType: !195, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1609, file: !30, line: 346, baseType: !194, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1609, file: !30, line: 347, baseType: !194, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1609, file: !30, line: 348, baseType: !194, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1609, file: !30, line: 349, baseType: !194, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !30, line: 352, baseType: !1618, size: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !30, line: 352, size: 256, elements: !1619)
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1618, file: !30, line: 353, baseType: !195, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1618, file: !30, line: 354, baseType: !195, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1618, file: !30, line: 356, baseType: !339, size: 128, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1606, file: !30, line: 359, baseType: !1089, size: 512, align: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1082, file: !59, line: 409, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!126, !1061, !1552}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1082, file: !59, line: 412, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!227, !1061, !1558}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1082, file: !59, line: 414, baseType: !1633, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1082, file: !59, line: 416, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!126, !255, !1061, !345, !7, !1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1082, file: !59, line: 419, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!126, !255, !1061, !345, !7, !7, !1088, !194}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1082, file: !59, line: 424, baseType: !1649, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1652, !1061, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 131, baseType: !223)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1082, file: !59, line: 425, baseType: !1654, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1558, !206, !206}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1082, file: !59, line: 426, baseType: !1658, size: 64, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!227, !1558, !192}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1082, file: !59, line: 427, baseType: !1662, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1558}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1082, file: !59, line: 428, baseType: !1666, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!856, !1669, !1691}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1678, !1679, !1680, !1681}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1670, file: !59, line: 374, baseType: !255, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1670, file: !59, line: 375, baseType: !345, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1670, file: !59, line: 376, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1669, !817}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1670, file: !59, line: 377, baseType: !194, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1670, file: !59, line: 378, baseType: !126, size: 32, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1670, file: !59, line: 379, baseType: !310, size: 16, offset: 288)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !59, line: 380, baseType: !1682, size: 64, offset: 320)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !59, line: 380, size: 64, elements: !1683)
!1683 = !{!1684, !1687}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1682, file: !59, line: 386, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1682, file: !59, line: 395, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!856, !194}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1693, line: 17, flags: DIFlagFwdDecl)
!1693 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1082, file: !59, line: 433, baseType: !1695, size: 64, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!126, !1061, !1558, !1558, !45}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1082, file: !59, line: 435, baseType: !1699, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!126, !1558}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1082, file: !59, line: 436, baseType: !1703, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!227, !1558, !206, !206}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1082, file: !59, line: 438, baseType: !1707, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !1558, !1710, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1082, file: !59, line: 439, baseType: !1712, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!126, !1061, !1088}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1082, file: !59, line: 442, baseType: !1716, size: 64, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!126, !1719, !255, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1082, file: !59, line: 444, baseType: !1723, size: 64, offset: 1152)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !255}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1082, file: !59, line: 445, baseType: !1727, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!126, !1669, !1691}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1062, file: !59, line: 486, baseType: !195, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1062, file: !59, line: 487, baseType: !481, size: 320, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1062, file: !59, line: 488, baseType: !1733, size: 32, offset: 1280)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1734, line: 8, baseType: !212)
!1734 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1062, file: !59, line: 489, baseType: !278, size: 32, offset: 1312)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1062, file: !59, line: 490, baseType: !339, size: 128, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1062, file: !59, line: 491, baseType: !194, size: 64, offset: 1472)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1052, file: !1021, line: 180, baseType: !1739, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!856, !255, !963, !1051, !551, !345, !206}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1052, file: !1021, line: 182, baseType: !1739, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1052, file: !1021, line: 184, baseType: !1744, size: 64, offset: 448)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!126, !255, !963, !1051, !1208}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1040, file: !1021, line: 90, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1040, file: !1021, line: 91, baseType: !1750, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1011, file: !958, line: 120, baseType: !1752, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1755, !981}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1758)
!1758 = !{!1759, !1760, !1764, !1768, !1774, !1778}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1757, file: !53, line: 40, baseType: !52, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1757, file: !53, line: 41, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!227}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1757, file: !53, line: 42, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!194}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1757, file: !53, line: 43, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1337, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1757, file: !53, line: 44, baseType: !1775, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1337}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1757, file: !53, line: 45, baseType: !734, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1011, file: !958, line: 121, baseType: !1780, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1337, !981}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1011, file: !958, line: 122, baseType: !1784, size: 64, offset: 320)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !981, !1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !957, file: !958, line: 70, baseType: !1790, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1792, line: 190, size: 1152, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1916, !1917, !1918, !1919, !1920, !1923}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1791, file: !1792, line: 191, baseType: !246, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1791, file: !1792, line: 192, baseType: !246, size: 32, offset: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1791, file: !1792, line: 202, baseType: !1790, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1791, file: !1792, line: 203, baseType: !541, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1791, file: !1792, line: 205, baseType: !473, size: 192, align: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1791, file: !1792, line: 207, baseType: !1337, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1791, file: !1792, line: 208, baseType: !7, size: 32, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1792, line: 209, baseType: !1802, size: 256, offset: 512)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1791, file: !1792, line: 209, size: 256, elements: !1803)
!1803 = !{!1804, !1813, !1817}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1802, file: !1792, line: 210, baseType: !1805, size: 256)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1792, line: 153, size: 256, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1812}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1805, file: !1792, line: 154, baseType: !195, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1805, file: !1792, line: 156, baseType: !1073, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1805, file: !1792, line: 162, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1792, line: 162, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1805, file: !1792, line: 167, baseType: !195, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1802, file: !1792, line: 211, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1792, line: 170, size: 64, elements: !1815)
!1815 = !{!1816}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1814, file: !1792, line: 171, baseType: !1790, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1802, file: !1792, line: 212, baseType: !1818, size: 256)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1792, line: 174, size: 256, elements: !1819)
!1819 = !{!1820, !1911, !1914, !1915}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1818, file: !1792, line: 175, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1792, line: 271, size: 768, elements: !1824)
!1824 = !{!1825, !1884, !1888, !1889, !1890, !1891, !1892, !1896, !1897, !1898, !1899, !1907}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1823, file: !1792, line: 276, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!126, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1792, line: 251, size: 1216, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1830, file: !1792, line: 253, baseType: !1790, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1830, file: !1792, line: 254, baseType: !255, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1830, file: !1792, line: 255, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1837, line: 17, size: 960, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1869, !1870, !1873}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1836, file: !1837, line: 18, baseType: !551, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1836, file: !1837, line: 19, baseType: !206, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1836, file: !1837, line: 20, baseType: !206, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1836, file: !1837, line: 21, baseType: !206, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1836, file: !1837, line: 22, baseType: !206, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1836, file: !1837, line: 23, baseType: !345, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1836, file: !1837, line: 24, baseType: !345, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1836, file: !1837, line: 25, baseType: !327, size: 256, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1836, file: !1837, line: 26, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1837, line: 32, size: 256, elements: !1851)
!1851 = !{!1852, !1857, !1861, !1865}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1850, file: !1837, line: 33, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!194, !1835, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1850, file: !1837, line: 34, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1835, !194}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1850, file: !1837, line: 35, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!194, !1835, !194, !1856}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1850, file: !1837, line: 36, baseType: !1866, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!126, !1835, !194}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1836, file: !1837, line: 27, baseType: !126, size: 32, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1836, file: !1837, line: 28, baseType: !1871, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1836, file: !1837, line: 29, baseType: !194, size: 64, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1830, file: !1792, line: 256, baseType: !194, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1830, file: !1792, line: 259, baseType: !327, size: 256, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1830, file: !1792, line: 260, baseType: !327, size: 256, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1830, file: !1792, line: 261, baseType: !126, size: 32, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1830, file: !1792, line: 262, baseType: !339, size: 128, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1830, file: !1792, line: 263, baseType: !551, size: 64, offset: 960)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1830, file: !1792, line: 265, baseType: !206, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1830, file: !1792, line: 266, baseType: !227, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1830, file: !1792, line: 267, baseType: !227, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1830, file: !1792, line: 268, baseType: !1419, size: 64, offset: 1152)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1823, file: !1792, line: 277, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1829}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1823, file: !1792, line: 290, baseType: !1866, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1823, file: !1792, line: 292, baseType: !1853, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1823, file: !1792, line: 293, baseType: !1862, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1823, file: !1792, line: 294, baseType: !1858, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1823, file: !1792, line: 296, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!856, !1829, !551, !206, !345}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1823, file: !1792, line: 306, baseType: !206, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1823, file: !1792, line: 313, baseType: !227, size: 8, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1823, file: !1792, line: 314, baseType: !1893, size: 64, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1823, file: !1792, line: 317, baseType: !1900, size: 64, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1903, !1829, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1904, line: 59, baseType: !7)
!1904 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1823, file: !1792, line: 320, baseType: !1908, size: 64, offset: 704)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!126, !1829, !1208}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1818, file: !1792, line: 176, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1792, line: 35, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1818, file: !1792, line: 177, baseType: !345, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1818, file: !1792, line: 178, baseType: !1790, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1791, file: !1792, line: 215, baseType: !194, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1791, file: !1792, line: 221, baseType: !223, size: 64, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1791, file: !1792, line: 223, baseType: !312, size: 16, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1791, file: !1792, line: 224, baseType: !706, size: 16, offset: 912)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1791, file: !1792, line: 225, baseType: !1921, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1792, line: 36, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1791, file: !1792, line: 227, baseType: !268, size: 128, align: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !957, file: !958, line: 71, baseType: !238, size: 32, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !957, file: !958, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !957, file: !958, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !957, file: !958, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !957, file: !958, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !957, file: !958, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !954, file: !15, line: 47, baseType: !944, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !954, file: !15, line: 48, baseType: !963, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !954, file: !15, line: 49, baseType: !1933, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !954, file: !15, line: 50, baseType: !1936, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !945, file: !15, line: 418, baseType: !1938, size: 64, offset: 1408)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1940)
!1940 = !{!1941, !1942, !1947, !1951, !1955, !1959}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1939, file: !15, line: 54, baseType: !1028, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1939, file: !15, line: 55, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!856, !1938, !1946, !551}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1939, file: !15, line: 57, baseType: !1948, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!856, !1938, !1946, !541, !206}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1939, file: !15, line: 59, baseType: !1952, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !944, !541}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1939, file: !15, line: 60, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!126, !944}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1939, file: !15, line: 61, baseType: !1960, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !944}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !945, file: !15, line: 419, baseType: !541, size: 64, offset: 1472)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !945, file: !15, line: 420, baseType: !541, size: 64, offset: 1536)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !945, file: !15, line: 421, baseType: !963, size: 64, offset: 1600)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !945, file: !15, line: 424, baseType: !1967, size: 64, offset: 1664)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !945, file: !15, line: 425, baseType: !1971, size: 64, offset: 1728)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !945, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !945, file: !15, line: 435, baseType: !327, size: 256, offset: 1856)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !945, file: !15, line: 437, baseType: !1976, size: 64, offset: 2112)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1978, line: 69, size: 320, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1979 = !{!1980, !1981, !1982, !1999, !2001, !2005, !2006}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1977, file: !1978, line: 70, baseType: !541, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1977, file: !1978, line: 71, baseType: !944, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1977, file: !1978, line: 72, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1978, line: 47, size: 256, elements: !1986)
!1986 = !{!1987, !1988, !1994, !1998}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1978, line: 49, baseType: !7, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1985, file: !1978, line: 51, baseType: !1989, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!126, !541, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1985, file: !1978, line: 53, baseType: !1995, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!126, !551, !1992}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1985, file: !1978, line: 55, baseType: !734, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1977, file: !1978, line: 73, baseType: !2000, size: 16, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1977, file: !1978, line: 74, baseType: !2002, size: 8, offset: 208)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !213, line: 16, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !215, line: 20, baseType: !2004)
!2004 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1977, file: !1978, line: 75, baseType: !302, size: 8, offset: 216)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1978, line: 76, baseType: !2007, size: 64, offset: 256)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1978, line: 76, size: 64, elements: !2008)
!2008 = !{!2009, !2010, !2017}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2007, file: !1978, line: 77, baseType: !194, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2007, file: !1978, line: 78, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1978, line: 86, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2013, file: !1978, line: 87, baseType: !7, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2013, file: !1978, line: 88, baseType: !551, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2007, file: !1978, line: 79, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1978, line: 92, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2026, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2020, file: !1978, line: 94, baseType: !7, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2020, file: !1978, line: 95, baseType: !7, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2020, file: !1978, line: 96, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2020, file: !1978, line: 97, baseType: !1983, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2020, file: !1978, line: 98, baseType: !194, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !945, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !945, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !945, file: !15, line: 442, baseType: !1967, size: 64, offset: 2240)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !945, file: !15, line: 443, baseType: !1971, size: 64, offset: 2304)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !945, file: !15, line: 444, baseType: !227, size: 8, offset: 2368)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !945, file: !15, line: 451, baseType: !227, size: 8, offset: 2376)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !945, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !945, file: !15, line: 455, baseType: !2036, size: 64, offset: 2432)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2038, line: 23, size: 96, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2037, file: !2038, line: 24, baseType: !126, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2037, file: !2038, line: 24, baseType: !126, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2037, file: !2038, line: 24, baseType: !126, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !945, file: !15, line: 458, baseType: !2044, size: 64, offset: 2496)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!126}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !945, file: !15, line: 460, baseType: !2048, size: 4032, align: 512, offset: 2560)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, size: 4032, elements: !2065)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2049, file: !15, line: 363, baseType: !194, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2049, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2049, file: !15, line: 367, baseType: !2054, size: 448, offset: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2054, file: !15, line: 320, baseType: !944, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2054, file: !15, line: 321, baseType: !2058, size: 384, offset: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2059, line: 40, size: 384, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2058, file: !2059, line: 41, baseType: !2062, size: 384, align: 64)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 384, align: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 2)
!2065 = !{!2066}
!2066 = !DISubrange(count: 7)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !945, file: !15, line: 463, baseType: !2068, size: 192, offset: 6592)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2069, line: 8, size: 192, elements: !2070)
!2069 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2070 = !{!2071, !2072, !2074}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2068, file: !2069, line: 10, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2068, file: !2069, line: 11, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2068, file: !2069, line: 12, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2077, line: 59, size: 48, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2076, file: !2077, line: 60, baseType: !1354, size: 16)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2076, file: !2077, line: 61, baseType: !1354, size: 16, offset: 16)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2076, file: !2077, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2076, file: !2077, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2076, file: !2077, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2076, file: !2077, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !945, file: !15, line: 465, baseType: !195, size: 64, offset: 6784)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !945, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !945, file: !15, line: 470, baseType: !339, size: 128, offset: 6912)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !945, file: !15, line: 471, baseType: !2089, size: 64, offset: 7040)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2091, line: 33, size: 96, elements: !2092)
!2091 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2092 = !{!2093, !2094, !2095, !2096}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2090, file: !2091, line: 37, baseType: !126, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2090, file: !2091, line: 43, baseType: !126, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2090, file: !2091, line: 45, baseType: !312, size: 16, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2090, file: !2091, line: 47, baseType: !312, size: 16, offset: 80)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !945, file: !15, line: 476, baseType: !2098, size: 64, offset: 7104)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2100)
!2100 = !{!2101, !2117, !2118, !2119}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2099, file: !15, line: 379, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2104, line: 204, baseType: !2105)
!2104 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2104, line: 197, size: 192, elements: !2106)
!2106 = !{!2107, !2109, !2110, !2111, !2113, !2115}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2105, file: !2104, line: 198, baseType: !2108, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2104, line: 21, baseType: !214)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2105, file: !2104, line: 199, baseType: !304, size: 8, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2105, file: !2104, line: 200, baseType: !304, size: 8, offset: 40)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2105, file: !2104, line: 201, baseType: !2112, size: 16, offset: 48)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2104, line: 17, baseType: !311)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2105, file: !2104, line: 202, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2104, line: 16, baseType: !224)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2105, file: !2104, line: 203, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2104, line: 22, baseType: !224)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2099, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2099, file: !15, line: 381, baseType: !551, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2099, file: !15, line: 382, baseType: !551, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !945, file: !15, line: 477, baseType: !2099, size: 256, offset: 7168)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !945, file: !15, line: 480, baseType: !2122, size: 64, offset: 7424)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !945, file: !15, line: 483, baseType: !2125, size: 64, offset: 7488)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !945, file: !15, line: 488, baseType: !551, size: 64, offset: 7552)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !945, file: !15, line: 492, baseType: !194, size: 64, offset: 7616)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !945, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !945, file: !15, line: 495, baseType: !194, size: 64, offset: 7744)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !945, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !945, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !945, file: !15, line: 500, baseType: !2134, size: 64, offset: 7872)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2136, line: 45, baseType: !2137)
!2136 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !945, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !945, file: !15, line: 504, baseType: !2140, size: 64, offset: 8000)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2143, line: 96, size: 192, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2144 = !{!2145, !2146, !2200, !2203}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2142, file: !2143, line: 97, baseType: !7, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2142, file: !2143, line: 98, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2143, line: 24, size: 3072, elements: !2149)
!2149 = !{!2150, !2152, !2153, !2154, !2155, !2169, !2170, !2171, !2172, !2184, !2185, !2186, !2197, !2198, !2199}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2148, file: !2143, line: 26, baseType: !2151, size: 128)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !2063)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2148, file: !2143, line: 27, baseType: !2151, size: 128, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2148, file: !2143, line: 28, baseType: !126, size: 32, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2148, file: !2143, line: 31, baseType: !278, size: 32, align: 512, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2148, file: !2143, line: 32, baseType: !2156, size: 960, offset: 576)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2157, line: 206, size: 960, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2158 = !{!2159, !2160, !2163, !2165, !2166, !2168}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2156, file: !2157, line: 207, baseType: !271, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2156, file: !2157, line: 208, baseType: !2161, size: 256, offset: 64)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 256, elements: !392)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2156, file: !2157, line: 209, baseType: !2164, size: 256, offset: 320)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !392)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2156, file: !2157, line: 213, baseType: !817, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2156, file: !2157, line: 215, baseType: !2167, size: 256, offset: 640)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 256, elements: !392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2157, line: 216, baseType: !302, size: 8, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2148, file: !2143, line: 33, baseType: !195, size: 64, offset: 1536)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2148, file: !2143, line: 34, baseType: !195, size: 64, offset: 1600)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2148, file: !2143, line: 35, baseType: !227, size: 8, offset: 1664)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2148, file: !2143, line: 36, baseType: !2173, size: 320, offset: 1728)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2174, line: 11, size: 320, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2175 = !{!2176, !2177, !2178, !2183}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2173, file: !2174, line: 16, baseType: !387, size: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2173, file: !2174, line: 17, baseType: !195, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2173, file: !2174, line: 18, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 19, baseType: !212, size: 32, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2148, file: !2143, line: 37, baseType: !1376, size: 256, offset: 2048)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2148, file: !2143, line: 38, baseType: !268, size: 128, align: 64, offset: 2304)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2148, file: !2143, line: 39, baseType: !2187, size: 64, offset: 2432)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2143, line: 49, size: 768, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2188, file: !2143, line: 50, baseType: !278, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2188, file: !2143, line: 51, baseType: !2164, size: 256, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2188, file: !2143, line: 53, baseType: !2164, size: 256, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2188, file: !2143, line: 54, baseType: !195, size: 64, offset: 576)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2188, file: !2143, line: 55, baseType: !2187, size: 64, offset: 640)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2188, file: !2143, line: 56, baseType: !126, size: 32, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2188, file: !2143, line: 57, baseType: !126, size: 32, offset: 736)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2148, file: !2143, line: 40, baseType: !195, size: 64, offset: 2496)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2148, file: !2143, line: 42, baseType: !126, size: 32, offset: 2560)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2148, file: !2143, line: 43, baseType: !2141, size: 64, offset: 2624)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2142, file: !2143, line: 99, baseType: !2201, offset: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2202, line: 211, elements: !1242)
!2202 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2142, file: !2143, line: 100, baseType: !2204, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2143, line: 63, size: 3008, elements: !2206)
!2206 = !{!2207, !2208, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2238}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2205, file: !2143, line: 64, baseType: !2187, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2205, file: !2143, line: 65, baseType: !2209, size: 192, offset: 64)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 192, elements: !371)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2205, file: !2143, line: 67, baseType: !126, size: 32, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2205, file: !2143, line: 68, baseType: !327, size: 256, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2205, file: !2143, line: 69, baseType: !278, size: 32, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2205, file: !2143, line: 70, baseType: !327, size: 256, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2205, file: !2143, line: 71, baseType: !195, size: 64, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2205, file: !2143, line: 72, baseType: !195, size: 64, offset: 960)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2205, file: !2143, line: 73, baseType: !195, size: 64, offset: 1024)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2205, file: !2143, line: 74, baseType: !195, size: 64, offset: 1088)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2205, file: !2143, line: 75, baseType: !195, size: 64, offset: 1152)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2205, file: !2143, line: 76, baseType: !195, size: 64, offset: 1216)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2205, file: !2143, line: 77, baseType: !195, size: 64, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2205, file: !2143, line: 78, baseType: !195, size: 64, offset: 1344)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2205, file: !2143, line: 79, baseType: !227, size: 8, offset: 1408)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2205, file: !2143, line: 80, baseType: !195, size: 64, offset: 1472)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2205, file: !2143, line: 81, baseType: !327, size: 256, offset: 1536)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2205, file: !2143, line: 82, baseType: !1173, size: 256, offset: 1792)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2205, file: !2143, line: 84, baseType: !246, size: 32, offset: 2048)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2205, file: !2143, line: 87, baseType: !195, size: 64, offset: 2112)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2205, file: !2143, line: 88, baseType: !195, size: 64, offset: 2176)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2205, file: !2143, line: 89, baseType: !2230, size: 704, offset: 2240)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1377, line: 111, size: 704, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2237}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2230, file: !1377, line: 112, baseType: !1376, size: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2230, file: !1377, line: 113, baseType: !2173, size: 320, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2230, file: !1377, line: 116, baseType: !2235, size: 64, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1377, line: 18, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2230, file: !1377, line: 117, baseType: !126, size: 32, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2205, file: !2143, line: 90, baseType: !2141, size: 64, offset: 2944)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !945, file: !15, line: 515, baseType: !2240, size: 64, offset: 8064)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2242, line: 117, size: 128, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2241, file: !2242, line: 118, baseType: !466, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2241, file: !2242, line: 119, baseType: !466, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2241, file: !2242, line: 120, baseType: !817, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !945, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !945, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !945, file: !15, line: 520, baseType: !2250, size: 64, offset: 8192)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !945, file: !15, line: 523, baseType: !2252, size: 64, offset: 8256)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !945, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !945, file: !15, line: 525, baseType: !2257, size: 64, offset: 8384)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !945, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !945, file: !15, line: 533, baseType: !194, size: 64, offset: 8512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !945, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !945, file: !15, line: 535, baseType: !2264, size: 64, offset: 8640)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !945, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !945, file: !15, line: 539, baseType: !126, size: 32, offset: 8736)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !945, file: !15, line: 540, baseType: !2268, size: 64, offset: 8768)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2270, line: 32, size: 64, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2269, file: !2270, line: 33, baseType: !466, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2269, file: !2270, line: 34, baseType: !466, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !945, file: !15, line: 563, baseType: !339, size: 128, offset: 8832)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !945, file: !15, line: 565, baseType: !339, size: 128, offset: 8960)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !945, file: !15, line: 568, baseType: !2277, size: 64, offset: 9088)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !945, file: !15, line: 570, baseType: !246, size: 32, offset: 9152)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !921, file: !59, line: 2382, baseType: !920, size: 64, offset: 448)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !921, file: !59, line: 2383, baseType: !383, size: 64, offset: 512)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !921, file: !59, line: 2385, baseType: !2284, offset: 576)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2202, line: 206, elements: !1242)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !921, file: !59, line: 2386, baseType: !2284, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !921, file: !59, line: 2387, baseType: !2284, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !921, file: !59, line: 2388, baseType: !2288, offset: 576)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2284, elements: !371)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !921, file: !59, line: 2390, baseType: !2284, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !921, file: !59, line: 2391, baseType: !2284, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !921, file: !59, line: 2392, baseType: !2284, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !921, file: !59, line: 2393, baseType: !2284, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !912, file: !59, line: 1197, baseType: !2294, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2297)
!2297 = !{!2298, !2302, !2306, !2307, !2311, !2315, !2319, !2320, !2321, !2325, !2329, !2333, !2334, !2335, !2341, !2345, !2346, !2350, !2351, !2352, !2353, !2357, !2361, !2408, !2423, !2424}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2296, file: !59, line: 2058, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!702, !911}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2296, file: !59, line: 2059, baseType: !2303, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !702}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2296, file: !59, line: 2060, baseType: !2303, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2296, file: !59, line: 2062, baseType: !2308, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !702, !126}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2296, file: !59, line: 2063, baseType: !2312, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!126, !702, !1552}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2296, file: !59, line: 2064, baseType: !2316, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!126, !702}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2296, file: !59, line: 2065, baseType: !2303, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2296, file: !59, line: 2066, baseType: !940, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2296, file: !59, line: 2067, baseType: !2322, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!126, !911, !126}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2296, file: !59, line: 2068, baseType: !2326, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!126, !911, !58}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2296, file: !59, line: 2069, baseType: !2330, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!126, !911}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2296, file: !59, line: 2070, baseType: !2326, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2296, file: !59, line: 2071, baseType: !2330, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2296, file: !59, line: 2072, baseType: !2336, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!126, !662, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2296, file: !59, line: 2073, baseType: !2342, size: 64, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!126, !911, !2073, !551}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2296, file: !59, line: 2074, baseType: !940, size: 64, offset: 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2296, file: !59, line: 2076, baseType: !2347, size: 64, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!126, !1835, !662}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2296, file: !59, line: 2077, baseType: !2347, size: 64, offset: 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2296, file: !59, line: 2078, baseType: !2347, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2296, file: !59, line: 2079, baseType: !2347, size: 64, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2296, file: !59, line: 2081, baseType: !2354, size: 64, offset: 1280)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!856, !911, !126, !551, !206, !345}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2296, file: !59, line: 2082, baseType: !2358, size: 64, offset: 1344)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!856, !911, !126, !541, !206, !345}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2296, file: !59, line: 2083, baseType: !2362, size: 64, offset: 1408)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2365, !702}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2393, !2394, !2395}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2367, file: !64, line: 297, baseType: !387, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2367, file: !64, line: 298, baseType: !339, size: 128, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2367, file: !64, line: 299, baseType: !339, size: 128, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2367, file: !64, line: 300, baseType: !339, size: 128, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2367, file: !64, line: 301, baseType: !327, size: 256, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2367, file: !64, line: 302, baseType: !278, size: 32, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2367, file: !64, line: 303, baseType: !246, size: 32, offset: 800)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2367, file: !64, line: 304, baseType: !911, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2367, file: !64, line: 305, baseType: !2378, size: 64, offset: 896)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2379)
!2379 = !{!2380, !2392}
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !64, line: 69, baseType: !2381, size: 32)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !64, line: 69, size: 32, elements: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2381, file: !64, line: 70, baseType: !415, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2381, file: !64, line: 71, baseType: !433, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2381, file: !64, line: 72, baseType: !2386, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2387, line: 24, baseType: !2388)
!2387 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2387, line: 22, size: 32, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2388, file: !2387, line: 23, baseType: !2391, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2387, line: 20, baseType: !421)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2367, file: !64, line: 306, baseType: !345, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2367, file: !64, line: 307, baseType: !195, size: 64, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2367, file: !64, line: 308, baseType: !2396, size: 576, offset: 1088)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2397)
!2397 = !{!2398, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2396, file: !64, line: 206, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !325)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2396, file: !64, line: 207, baseType: !2399, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2396, file: !64, line: 208, baseType: !2399, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2396, file: !64, line: 209, baseType: !2399, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2396, file: !64, line: 210, baseType: !2399, size: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2396, file: !64, line: 211, baseType: !2399, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2396, file: !64, line: 212, baseType: !2399, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2396, file: !64, line: 213, baseType: !497, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2396, file: !64, line: 214, baseType: !497, size: 64, offset: 512)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2296, file: !59, line: 2085, baseType: !2409, size: 64, offset: 1472)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!817, !911, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2414, line: 15, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2415 = !{!2416, !2417, !2418, !2419, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2413, file: !2414, line: 16, baseType: !192, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2413, file: !2414, line: 19, baseType: !126, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2413, file: !2414, line: 26, baseType: !195, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2413, file: !2414, line: 33, baseType: !195, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2413, file: !2414, line: 36, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2414, line: 36, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2296, file: !59, line: 2087, baseType: !2409, size: 64, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2296, file: !59, line: 2089, baseType: !940, size: 64, offset: 1600)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !912, file: !59, line: 1198, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2429)
!2429 = !{!2430, !2434, !2438, !2442, !2443, !2444, !2445, !2446, !2451, !2456, !2460}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2428, file: !64, line: 325, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!126, !2366}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2428, file: !64, line: 326, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2366, !911, !126}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2428, file: !64, line: 327, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2366}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2428, file: !64, line: 328, baseType: !2431, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2428, file: !64, line: 329, baseType: !2431, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2428, file: !64, line: 330, baseType: !2431, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2428, file: !64, line: 331, baseType: !2322, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2428, file: !64, line: 334, baseType: !2447, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !702}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2428, file: !64, line: 335, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!126, !702, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2428, file: !64, line: 337, baseType: !2457, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!126, !702, !2450}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2428, file: !64, line: 339, baseType: !2461, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!126, !911, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !912, file: !59, line: 1199, baseType: !2466, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2469)
!2469 = !{!2470, !2474, !2475, !2479, !2480, !2481, !2496, !2519, !2523, !2524, !2547}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2468, file: !64, line: 431, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!126, !911, !126, !126, !825}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2468, file: !64, line: 432, baseType: !2322, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2468, file: !64, line: 433, baseType: !2476, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!126, !911, !7}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2468, file: !64, line: 434, baseType: !2476, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2468, file: !64, line: 435, baseType: !2322, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2468, file: !64, line: 436, baseType: !2482, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!126, !911, !126, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2486, file: !64, line: 418, baseType: !126, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2486, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2486, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2486, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2486, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2486, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2486, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2486, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2468, file: !64, line: 437, baseType: !2497, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!126, !911, !2378, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2501, file: !64, line: 346, baseType: !126, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2501, file: !64, line: 347, baseType: !223, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2501, file: !64, line: 348, baseType: !223, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2501, file: !64, line: 349, baseType: !223, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2501, file: !64, line: 350, baseType: !223, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2501, file: !64, line: 351, baseType: !223, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2501, file: !64, line: 352, baseType: !223, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2501, file: !64, line: 353, baseType: !323, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2501, file: !64, line: 355, baseType: !323, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2501, file: !64, line: 356, baseType: !126, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2501, file: !64, line: 357, baseType: !126, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2501, file: !64, line: 358, baseType: !223, size: 64, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2501, file: !64, line: 359, baseType: !223, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2501, file: !64, line: 360, baseType: !223, size: 64, offset: 768)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2501, file: !64, line: 361, baseType: !323, size: 64, offset: 832)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2501, file: !64, line: 362, baseType: !126, size: 32, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2468, file: !64, line: 438, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!126, !911, !2464, !2500}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2468, file: !64, line: 440, baseType: !2497, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2468, file: !64, line: 441, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!126, !911, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2529, file: !64, line: 412, baseType: !7, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2529, file: !64, line: 413, baseType: !2533, size: 1344, offset: 64)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 1344, elements: !371)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2546}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2534, file: !64, line: 398, baseType: !7, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2534, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2534, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2534, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2534, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2534, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2534, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2534, file: !64, line: 406, baseType: !225, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2534, file: !64, line: 407, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 132, baseType: !223)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2534, file: !64, line: 408, baseType: !2545, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2468, file: !64, line: 442, baseType: !2476, size: 64, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !912, file: !59, line: 1200, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !912, file: !59, line: 1201, baseType: !195, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !912, file: !59, line: 1202, baseType: !195, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !912, file: !59, line: 1203, baseType: !195, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !912, file: !59, line: 1204, baseType: !662, size: 64, offset: 832)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !912, file: !59, line: 1205, baseType: !481, size: 320, offset: 896)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !912, file: !59, line: 1206, baseType: !126, size: 32, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !912, file: !59, line: 1207, baseType: !246, size: 32, offset: 1248)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !912, file: !59, line: 1209, baseType: !194, size: 64, offset: 1280)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !912, file: !59, line: 1211, baseType: !2561, size: 64, offset: 1344)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !912, file: !59, line: 1223, baseType: !2566, size: 64, offset: 1408)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !679, line: 34, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2566, file: !679, line: 35, baseType: !682, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !912, file: !59, line: 1224, baseType: !339, size: 128, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !912, file: !59, line: 1225, baseType: !2571, size: 64, offset: 1600)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !912, file: !59, line: 1226, baseType: !2574, size: 64, offset: 1664)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !912, file: !59, line: 1227, baseType: !2577, size: 64, offset: 1728)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !912, file: !59, line: 1228, baseType: !2580, size: 64, offset: 1792)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !912, file: !59, line: 1229, baseType: !387, size: 128, offset: 1856)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !912, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !912, file: !59, line: 1231, baseType: !2585, size: 2496, offset: 2048)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2591, !2623}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !64, line: 522, baseType: !7, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2585, file: !64, line: 523, baseType: !481, size: 320, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2585, file: !64, line: 524, baseType: !2590, size: 192, offset: 384)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 192, elements: !371)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2585, file: !64, line: 525, baseType: !2592, size: 1728, offset: 576)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2593, size: 1728, elements: !371)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2594)
!2594 = !{!2595, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2593, file: !64, line: 223, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2598)
!2598 = !{!2599, !2600, !2613, !2614}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2597, file: !64, line: 446, baseType: !126, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2597, file: !64, line: 447, baseType: !2601, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2603, file: !64, line: 313, baseType: !2322, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2603, file: !64, line: 314, baseType: !2322, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2603, file: !64, line: 315, baseType: !2322, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2603, file: !64, line: 316, baseType: !2322, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2603, file: !64, line: 317, baseType: !2431, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2603, file: !64, line: 318, baseType: !2431, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2603, file: !64, line: 319, baseType: !2431, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2603, file: !64, line: 320, baseType: !2461, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2597, file: !64, line: 448, baseType: !944, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2597, file: !64, line: 449, baseType: !2596, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2593, file: !64, line: 224, baseType: !126, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2593, file: !64, line: 226, baseType: !339, size: 128, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2593, file: !64, line: 227, baseType: !195, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2593, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2593, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2593, file: !64, line: 230, baseType: !2399, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2593, file: !64, line: 231, baseType: !2399, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2593, file: !64, line: 232, baseType: !194, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2585, file: !64, line: 526, baseType: !2624, size: 192, offset: 2304)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2601, size: 192, elements: !371)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !912, file: !59, line: 1233, baseType: !2626, size: 2368, offset: 4544)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2626, file: !59, line: 1185, baseType: !312, size: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2626, file: !59, line: 1186, baseType: !312, size: 16, offset: 16)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2626, file: !59, line: 1187, baseType: !2631, size: 2304, offset: 64)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2632, size: 2304, elements: !371)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2633, line: 12, size: 768, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2634 = !{!2635, !2643, !2644, !3835, !3836}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2632, file: !2633, line: 13, baseType: !2636, size: 384)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2637, line: 17, size: 384, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2636, file: !2637, line: 18, baseType: !126, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2636, file: !2637, line: 19, baseType: !126, size: 32, offset: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2636, file: !2637, line: 20, baseType: !396, size: 192, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2636, file: !2637, line: 22, baseType: !268, size: 128, align: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2632, file: !2633, line: 14, baseType: !2025, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2632, file: !2633, line: 15, baseType: !2645, size: 64, offset: 448)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2646, line: 16, size: 64, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2647 = !{!2648}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2645, file: !2646, line: 17, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1469, line: 746, size: 58368, elements: !2651)
!2651 = !{!2652, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2732, !2743, !2831, !2835, !2838, !2869, !2870, !2871, !2872, !2883, !2885, !2886, !2887, !2888, !2889, !2890, !2901, !2902, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2919, !2920, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !3008, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3056, !3062, !3063, !3064, !3065, !3066, !3070, !3073, !3080, !3085, !3088, !3091, !3094, !3097, !3235, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3273, !3274, !3275, !3284, !3292, !3293, !3294, !3295, !3296, !3301, !3302, !3303, !3306, !3307, !3310, !3313, !3316, !3324, !3327, !3328, !3414, !3415, !3416, !3417, !3418, !3424, !3425, !3426, !3427, !3430, !3431, !3434, !3437, !3438, !3441, !3442, !3443, !3446, !3447, !3448, !3449, !3450, !3451, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3483, !3486, !3492, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3504, !3576, !3578, !3579, !3580, !3581, !3582, !3583, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3610, !3611, !3612}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2650, file: !1469, line: 752, baseType: !2653, size: 192)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2654, line: 56, size: 192, elements: !2655)
!2654 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !2654, line: 57, baseType: !195, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2653, file: !2654, line: 58, baseType: !195, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2653, file: !2654, line: 59, baseType: !212, size: 32, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2653, file: !2654, line: 61, baseType: !212, size: 32, offset: 160)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2650, file: !1469, line: 754, baseType: !7, size: 32, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2650, file: !1469, line: 767, baseType: !194, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2650, file: !1469, line: 768, baseType: !242, size: 32, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !1469, line: 770, baseType: !7, size: 32, offset: 352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2650, file: !1469, line: 771, baseType: !7, size: 32, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2650, file: !1469, line: 774, baseType: !126, size: 32, offset: 416)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2650, file: !1469, line: 775, baseType: !2667, size: 128, offset: 448)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2668, line: 58, size: 128, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2669 = !{!2670, !2671, !2676, !2677}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2667, file: !2668, line: 59, baseType: !262, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2668, line: 60, baseType: !2672, size: 32, offset: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2668, line: 60, size: 32, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2672, file: !2668, line: 61, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2672, file: !2668, line: 62, baseType: !246, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2667, file: !2668, line: 65, baseType: !310, size: 16, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2667, file: !2668, line: 65, baseType: !310, size: 16, offset: 112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2650, file: !1469, line: 776, baseType: !7, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2650, file: !1469, line: 777, baseType: !195, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2650, file: !1469, line: 778, baseType: !2649, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2650, file: !1469, line: 787, baseType: !126, size: 32, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2650, file: !1469, line: 788, baseType: !126, size: 32, offset: 800)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2650, file: !1469, line: 790, baseType: !126, size: 32, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2650, file: !1469, line: 792, baseType: !126, size: 32, offset: 864)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2650, file: !1469, line: 793, baseType: !126, size: 32, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2650, file: !1469, line: 794, baseType: !126, size: 32, offset: 928)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2650, file: !1469, line: 795, baseType: !7, size: 32, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2650, file: !1469, line: 797, baseType: !2689, size: 2048, offset: 1024)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1469, line: 551, size: 2048, elements: !2690)
!2690 = !{!2691, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2711, !2714, !2715, !2716}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2689, file: !1469, line: 553, baseType: !2692, size: 128)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1469, line: 411, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2692, file: !1469, line: 412, baseType: !195, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2692, file: !1469, line: 413, baseType: !212, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2689, file: !1469, line: 554, baseType: !473, size: 192, align: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2689, file: !1469, line: 555, baseType: !223, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2689, file: !1469, line: 556, baseType: !223, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2689, file: !1469, line: 558, baseType: !339, size: 128, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2689, file: !1469, line: 559, baseType: !7, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2689, file: !1469, line: 561, baseType: !223, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2689, file: !1469, line: 562, baseType: !223, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2689, file: !1469, line: 563, baseType: !223, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2689, file: !1469, line: 564, baseType: !223, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2689, file: !1469, line: 565, baseType: !323, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2689, file: !1469, line: 566, baseType: !223, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2689, file: !1469, line: 568, baseType: !223, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2689, file: !1469, line: 571, baseType: !126, size: 32, offset: 1088)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2689, file: !1469, line: 572, baseType: !2710, size: 64, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2689, file: !1469, line: 574, baseType: !2712, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1469, line: 49, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2689, file: !1469, line: 576, baseType: !2712, size: 64, offset: 1280)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2689, file: !1469, line: 578, baseType: !195, size: 64, offset: 1344)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2689, file: !1469, line: 588, baseType: !2717, size: 512, align: 512, offset: 1536)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1469, line: 497, size: 512, align: 512, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2717, file: !1469, line: 498, baseType: !223, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2717, file: !1469, line: 499, baseType: !223, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2717, file: !1469, line: 500, baseType: !223, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2717, file: !1469, line: 501, baseType: !212, size: 32, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2717, file: !1469, line: 502, baseType: !212, size: 32, offset: 224)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2717, file: !1469, line: 503, baseType: !195, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2717, file: !1469, line: 504, baseType: !195, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2717, file: !1469, line: 505, baseType: !195, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2717, file: !1469, line: 506, baseType: !2728, size: 64, align: 64, offset: 448)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1469, line: 445, size: 64, align: 64, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2728, file: !1469, line: 446, baseType: !7, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2728, file: !1469, line: 447, baseType: !7, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2650, file: !1469, line: 798, baseType: !2733, size: 384, offset: 3072)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1469, line: 592, size: 384, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2733, file: !1469, line: 593, baseType: !339, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2733, file: !1469, line: 594, baseType: !195, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2733, file: !1469, line: 595, baseType: !195, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2733, file: !1469, line: 596, baseType: !7, size: 32, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2733, file: !1469, line: 597, baseType: !312, size: 16, offset: 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2733, file: !1469, line: 598, baseType: !312, size: 16, offset: 304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2733, file: !1469, line: 600, baseType: !2742, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2650, file: !1469, line: 799, baseType: !2744, size: 1792, offset: 3456)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1469, line: 610, size: 1792, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2828, !2829}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2744, file: !1469, line: 611, baseType: !473, size: 192, align: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2744, file: !1469, line: 618, baseType: !223, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2744, file: !1469, line: 619, baseType: !223, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2744, file: !1469, line: 620, baseType: !223, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2744, file: !1469, line: 621, baseType: !223, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2744, file: !1469, line: 622, baseType: !223, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2744, file: !1469, line: 629, baseType: !323, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2744, file: !1469, line: 630, baseType: !223, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !1469, line: 631, baseType: !7, size: 32, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2744, file: !1469, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2744, file: !1469, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2744, file: !1469, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2744, file: !1469, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2744, file: !1469, line: 662, baseType: !2760, size: 512, offset: 704)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !2761)
!2761 = !{!2762, !2770, !2771, !2776, !2824, !2825, !2826, !2827}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2760, file: !70, line: 119, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2764, line: 9, size: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2763, file: !2764, line: 10, baseType: !473, size: 192, align: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2763, file: !2764, line: 11, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2769, line: 29, baseType: !323)
!2769 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2760, file: !70, line: 120, baseType: !2768, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2760, file: !70, line: 121, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!69, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2760, file: !70, line: 122, baseType: !2777, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !2779)
!2779 = !{!2780, !2805, !2806, !2809, !2814, !2815, !2819, !2823}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2778, file: !70, line: 160, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !70, line: 216, baseType: !332, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2782, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2782, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2782, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2782, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2782, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2782, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2782, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2782, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2782, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2782, file: !70, line: 227, baseType: !312, size: 16, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2782, file: !70, line: 228, baseType: !312, size: 16, offset: 208)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2782, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2782, file: !70, line: 235, baseType: !2768, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2782, file: !70, line: 236, baseType: !2775, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2782, file: !70, line: 237, baseType: !2768, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2782, file: !70, line: 238, baseType: !2775, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2782, file: !70, line: 239, baseType: !2802, size: 4096, align: 512, offset: 512)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 4096, align: 512, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2778, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2778, file: !70, line: 162, baseType: !2807, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 32, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !208, line: 96, baseType: !126)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2778, file: !70, line: 163, baseType: !2810, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !669, line: 274, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !669, line: 274, size: 32, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2811, file: !669, line: 274, baseType: !673, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2778, file: !70, line: 164, baseType: !2775, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2778, file: !70, line: 165, baseType: !2816, size: 128, offset: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2764, line: 14, size: 128, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2816, file: !2764, line: 15, baseType: !1070, size: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2778, file: !70, line: 166, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2768}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2778, file: !70, line: 167, baseType: !2768, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2760, file: !70, line: 123, baseType: !302, size: 8, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2760, file: !70, line: 124, baseType: !302, size: 8, offset: 456)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2760, file: !70, line: 125, baseType: !302, size: 8, offset: 464)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2760, file: !70, line: 126, baseType: !302, size: 8, offset: 472)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2744, file: !1469, line: 671, baseType: !2760, size: 512, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2744, file: !1469, line: 679, baseType: !2830, size: 64, offset: 1728)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2650, file: !1469, line: 800, baseType: !2832, size: 64, offset: 5248)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1469, line: 800, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2650, file: !1469, line: 809, baseType: !2836, size: 64, offset: 5312)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1469, line: 70, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2650, file: !1469, line: 825, baseType: !2839, size: 2048, align: 512, offset: 5632)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1469, line: 509, size: 2048, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2839, file: !1469, line: 511, baseType: !223, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2839, file: !1469, line: 512, baseType: !223, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2839, file: !1469, line: 513, baseType: !223, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2839, file: !1469, line: 514, baseType: !223, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2839, file: !1469, line: 515, baseType: !223, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2839, file: !1469, line: 516, baseType: !223, size: 64, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2839, file: !1469, line: 518, baseType: !223, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2839, file: !1469, line: 519, baseType: !223, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2839, file: !1469, line: 520, baseType: !323, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2839, file: !1469, line: 522, baseType: !223, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2839, file: !1469, line: 523, baseType: !223, size: 64, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2839, file: !1469, line: 524, baseType: !323, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2839, file: !1469, line: 526, baseType: !323, size: 64, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2839, file: !1469, line: 527, baseType: !223, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2839, file: !1469, line: 529, baseType: !223, size: 64, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2839, file: !1469, line: 530, baseType: !223, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2839, file: !1469, line: 531, baseType: !223, size: 64, offset: 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2839, file: !1469, line: 532, baseType: !223, size: 64, offset: 1088)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2839, file: !1469, line: 533, baseType: !223, size: 64, offset: 1152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2839, file: !1469, line: 535, baseType: !223, size: 64, offset: 1216)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2839, file: !1469, line: 536, baseType: !223, size: 64, offset: 1280)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2839, file: !1469, line: 537, baseType: !223, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2839, file: !1469, line: 538, baseType: !223, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2839, file: !1469, line: 539, baseType: !223, size: 64, offset: 1472)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2839, file: !1469, line: 540, baseType: !223, size: 64, offset: 1536)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2839, file: !1469, line: 541, baseType: !223, size: 64, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2839, file: !1469, line: 542, baseType: !223, size: 64, offset: 1664)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2839, file: !1469, line: 543, baseType: !223, size: 64, offset: 1728)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2650, file: !1469, line: 833, baseType: !7, size: 32, offset: 7680)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2650, file: !1469, line: 836, baseType: !7, size: 32, offset: 7712)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2650, file: !1469, line: 837, baseType: !126, size: 32, offset: 7744)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2650, file: !1469, line: 838, baseType: !2873, size: 64, offset: 7808)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2876, line: 19, baseType: !2877)
!2876 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2876, line: 19, size: 64, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2877, file: !2876, line: 19, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !2881)
!2881 = !{!2882}
!2882 = !DISubrange(count: 1)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2650, file: !1469, line: 839, baseType: !2884, size: 64, offset: 7872)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2650, file: !1469, line: 840, baseType: !2875, size: 64, offset: 7936)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2650, file: !1469, line: 841, baseType: !194, size: 64, offset: 8000)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2650, file: !1469, line: 843, baseType: !312, size: 16, offset: 8064)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2650, file: !1469, line: 845, baseType: !312, size: 16, offset: 8080)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2650, file: !1469, line: 848, baseType: !126, size: 32, offset: 8096)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2650, file: !1469, line: 849, baseType: !2891, size: 32, offset: 8128)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1469, line: 718, size: 32, elements: !2892)
!2892 = !{!2893, !2900}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2891, file: !1469, line: 724, baseType: !2894, size: 32)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2891, file: !1469, line: 719, size: 32, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2894, file: !1469, line: 720, baseType: !302, size: 8)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2894, file: !1469, line: 721, baseType: !302, size: 8, offset: 8)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2894, file: !1469, line: 722, baseType: !302, size: 8, offset: 16)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2894, file: !1469, line: 723, baseType: !302, size: 8, offset: 24)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2891, file: !1469, line: 725, baseType: !212, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2650, file: !1469, line: 850, baseType: !339, size: 128, offset: 8192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2650, file: !1469, line: 851, baseType: !2903, size: 64, offset: 8320)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1469, line: 60, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2650, file: !1469, line: 855, baseType: !195, size: 64, offset: 8384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2650, file: !1469, line: 856, baseType: !302, size: 8, offset: 8448)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2650, file: !1469, line: 857, baseType: !302, size: 8, offset: 8456)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2650, file: !1469, line: 858, baseType: !126, size: 32, offset: 8480)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2650, file: !1469, line: 859, baseType: !339, size: 128, offset: 8512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2650, file: !1469, line: 860, baseType: !126, size: 32, offset: 8640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2650, file: !1469, line: 861, baseType: !339, size: 128, offset: 8704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2650, file: !1469, line: 873, baseType: !2913, size: 256, offset: 8832)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1469, line: 376, size: 256, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2913, file: !1469, line: 381, baseType: !195, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2913, file: !1469, line: 384, baseType: !225, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2913, file: !1469, line: 389, baseType: !225, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2913, file: !1469, line: 392, baseType: !225, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2650, file: !1469, line: 875, baseType: !339, size: 128, offset: 9088)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2650, file: !1469, line: 877, baseType: !2921, size: 320, offset: 9216)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2922, line: 86, size: 320, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2923 = !{!2924, !2925, !2926}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2921, file: !2922, line: 87, baseType: !126, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2921, file: !2922, line: 88, baseType: !339, size: 128, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2921, file: !2922, line: 89, baseType: !339, size: 128, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2650, file: !1469, line: 878, baseType: !473, size: 192, align: 64, offset: 9536)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2650, file: !1469, line: 881, baseType: !1221, size: 64, offset: 9728)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2650, file: !1469, line: 882, baseType: !1221, size: 64, offset: 9792)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2650, file: !1469, line: 884, baseType: !126, size: 32, offset: 9856)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2650, file: !1469, line: 885, baseType: !126, size: 32, offset: 9888)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2650, file: !1469, line: 886, baseType: !126, size: 32, offset: 9920)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2650, file: !1469, line: 888, baseType: !126, size: 32, offset: 9952)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2650, file: !1469, line: 890, baseType: !195, size: 64, offset: 9984)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2650, file: !1469, line: 893, baseType: !7, size: 32, offset: 10048)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2650, file: !1469, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2650, file: !1469, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2650, file: !1469, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2650, file: !1469, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2650, file: !1469, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2650, file: !1469, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2650, file: !1469, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2650, file: !1469, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2650, file: !1469, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2650, file: !1469, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2650, file: !1469, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2650, file: !1469, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2650, file: !1469, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2650, file: !1469, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2650, file: !1469, line: 969, baseType: !195, size: 64, offset: 10176)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2650, file: !1469, line: 971, baseType: !2952, size: 448, offset: 10240)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2953)
!2953 = !{!2954, !2955, !2960}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2952, file: !75, line: 26, baseType: !195, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2952, file: !75, line: 27, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!817, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !75, line: 28, baseType: !2961, size: 320, offset: 128)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !75, line: 28, size: 320, elements: !2962)
!2962 = !{!2963, !2973, !2998}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2961, file: !75, line: 37, baseType: !2964, size: 320)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 30, size: 320, elements: !2965)
!2965 = !{!2966, !2968, !2969, !2970, !2971, !2972}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2964, file: !75, line: 31, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2964, file: !75, line: 32, baseType: !212, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2964, file: !75, line: 33, baseType: !212, size: 32, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2964, file: !75, line: 34, baseType: !212, size: 32, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2964, file: !75, line: 35, baseType: !223, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2964, file: !75, line: 36, baseType: !2967, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2961, file: !75, line: 47, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 39, size: 192, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2997}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2974, file: !75, line: 40, baseType: !2807, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2974, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !75, line: 42, baseType: !2979, size: 64, offset: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !75, line: 42, size: 64, elements: !2980)
!2980 = !{!2981, !2989}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2979, file: !75, line: 43, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2984, line: 7, size: 128, elements: !2985)
!2984 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2985 = !{!2986, !2988}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2983, file: !2984, line: 8, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !208, line: 93, baseType: !325)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2983, file: !2984, line: 9, baseType: !325, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2979, file: !75, line: 44, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2992, line: 7, size: 64, elements: !2993)
!2992 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2993 = !{!2994, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2991, file: !2992, line: 8, baseType: !2995, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2992, line: 5, baseType: !466)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2991, file: !2992, line: 9, baseType: !466, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2974, file: !75, line: 46, baseType: !223, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2961, file: !75, line: 55, baseType: !2999, size: 256)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2961, file: !75, line: 49, size: 256, elements: !3000)
!3000 = !{!3001, !3004, !3005, !3006, !3007}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2999, file: !75, line: 50, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2999, file: !75, line: 51, baseType: !126, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2999, file: !75, line: 52, baseType: !126, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2999, file: !75, line: 53, baseType: !195, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2999, file: !75, line: 54, baseType: !195, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2650, file: !1469, line: 973, baseType: !3009, size: 32, offset: 10688)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 27, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !208, line: 28, baseType: !126)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2650, file: !1469, line: 974, baseType: !3009, size: 32, offset: 10720)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2650, file: !1469, line: 978, baseType: !195, size: 64, offset: 10752)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2650, file: !1469, line: 987, baseType: !2649, size: 64, offset: 10816)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2650, file: !1469, line: 990, baseType: !2649, size: 64, offset: 10880)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2650, file: !1469, line: 995, baseType: !339, size: 128, offset: 10944)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2650, file: !1469, line: 996, baseType: !339, size: 128, offset: 11072)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2650, file: !1469, line: 997, baseType: !2649, size: 64, offset: 11200)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2650, file: !1469, line: 1005, baseType: !339, size: 128, offset: 11264)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2650, file: !1469, line: 1006, baseType: !339, size: 128, offset: 11392)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2650, file: !1469, line: 1009, baseType: !375, size: 64, offset: 11520)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2650, file: !1469, line: 1010, baseType: !3022, size: 512, offset: 11584)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 512, elements: !392)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2650, file: !1469, line: 1011, baseType: !339, size: 128, offset: 12096)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2650, file: !1469, line: 1012, baseType: !339, size: 128, offset: 12224)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2650, file: !1469, line: 1014, baseType: !1936, size: 64, offset: 12352)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2650, file: !1469, line: 1017, baseType: !2073, size: 64, offset: 12416)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2650, file: !1469, line: 1020, baseType: !2073, size: 64, offset: 12480)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2650, file: !1469, line: 1023, baseType: !194, size: 64, offset: 12544)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2650, file: !1469, line: 1025, baseType: !223, size: 64, offset: 12608)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2650, file: !1469, line: 1026, baseType: !223, size: 64, offset: 12672)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2650, file: !1469, line: 1031, baseType: !223, size: 64, offset: 12736)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2650, file: !1469, line: 1032, baseType: !3033, size: 192, offset: 12800)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1469, line: 324, size: 192, elements: !3034)
!3034 = !{!3035, !3036, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3033, file: !1469, line: 326, baseType: !223, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3033, file: !1469, line: 327, baseType: !223, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3033, file: !1469, line: 328, baseType: !332, size: 32, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2650, file: !1469, line: 1041, baseType: !195, size: 64, offset: 12992)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2650, file: !1469, line: 1042, baseType: !195, size: 64, offset: 13056)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2650, file: !1469, line: 1045, baseType: !223, size: 64, offset: 13120)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2650, file: !1469, line: 1048, baseType: !223, size: 64, offset: 13184)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2650, file: !1469, line: 1051, baseType: !195, size: 64, offset: 13248)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2650, file: !1469, line: 1052, baseType: !195, size: 64, offset: 13312)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2650, file: !1469, line: 1055, baseType: !3045, size: 640, offset: 13376)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3046, line: 132, size: 640, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3047 = !{!3048, !3054, !3055}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3045, file: !3046, line: 133, baseType: !3049, size: 576)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3050, size: 576, elements: !371)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3046, line: 117, size: 192, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3050, file: !3046, line: 118, baseType: !223, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3050, file: !3046, line: 119, baseType: !2816, size: 128, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3045, file: !3046, line: 134, baseType: !7, size: 32, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3045, file: !3046, line: 135, baseType: !7, size: 32, offset: 608)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2650, file: !1469, line: 1058, baseType: !3057, size: 448, offset: 14016)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3046, line: 144, size: 448, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3057, file: !3046, line: 145, baseType: !268, size: 128, align: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3057, file: !3046, line: 146, baseType: !327, size: 256, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3057, file: !3046, line: 147, baseType: !7, size: 32, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2650, file: !1469, line: 1064, baseType: !425, size: 64, offset: 14464)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2650, file: !1469, line: 1067, baseType: !425, size: 64, offset: 14528)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2650, file: !1469, line: 1070, baseType: !425, size: 64, offset: 14592)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2650, file: !1469, line: 1074, baseType: !458, size: 64, offset: 14656)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2650, file: !1469, line: 1084, baseType: !3067, size: 128, offset: 14720)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 128, elements: !3068)
!3068 = !{!3069}
!3069 = !DISubrange(count: 16)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2650, file: !1469, line: 1086, baseType: !3071, size: 64, offset: 14848)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1469, line: 55, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2650, file: !1469, line: 1089, baseType: !3074, size: 64, offset: 14912)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3075, line: 12, size: 64, elements: !3076)
!3075 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3074, file: !3075, line: 13, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3075, line: 8, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2650, file: !1469, line: 1090, baseType: !3081, size: 128, offset: 14976)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3082, line: 13, size: 128, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3081, file: !3082, line: 14, baseType: !339, size: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2650, file: !1469, line: 1097, baseType: !3086, size: 64, offset: 15104)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1469, line: 50, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2650, file: !1469, line: 1100, baseType: !3089, size: 64, offset: 15168)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1469, line: 1100, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2650, file: !1469, line: 1103, baseType: !3092, size: 64, offset: 15232)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1469, line: 53, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2650, file: !1469, line: 1107, baseType: !3095, size: 64, offset: 15296)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1469, line: 56, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2650, file: !1469, line: 1110, baseType: !3098, size: 64, offset: 15360)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3100, line: 93, size: 8768, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3149, !3158, !3159, !3161, !3162, !3163, !3166, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3204, !3205, !3212, !3222, !3225, !3226, !3229, !3230, !3231, !3232, !3233, !3234}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3099, file: !3100, line: 94, baseType: !242, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3099, file: !3100, line: 95, baseType: !246, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3099, file: !3100, line: 96, baseType: !126, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3099, file: !3100, line: 97, baseType: !126, size: 32, offset: 96)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3099, file: !3100, line: 98, baseType: !339, size: 128, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3099, file: !3100, line: 100, baseType: !396, size: 192, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3099, file: !3100, line: 103, baseType: !2649, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3099, file: !3100, line: 106, baseType: !3110, size: 192, offset: 512)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !629, line: 32, size: 192, elements: !3111)
!3111 = !{!3112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3110, file: !629, line: 33, baseType: !339, size: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3110, file: !629, line: 34, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3115, line: 25, baseType: !3116)
!3115 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3115, line: 23, size: 64, elements: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3116, file: !3115, line: 24, baseType: !2880, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3099, file: !3100, line: 109, baseType: !383, size: 64, offset: 704)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3099, file: !3100, line: 112, baseType: !126, size: 32, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3099, file: !3100, line: 114, baseType: !126, size: 32, offset: 800)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3099, file: !3100, line: 115, baseType: !2649, size: 64, offset: 832)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3099, file: !3100, line: 118, baseType: !126, size: 32, offset: 896)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3099, file: !3100, line: 119, baseType: !7, size: 32, offset: 928)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3099, file: !3100, line: 121, baseType: !3126, size: 64, offset: 960)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3100, line: 80, size: 448, elements: !3128)
!3128 = !{!3129, !3130, !3136}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3127, file: !3100, line: 81, baseType: !246, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3127, file: !3100, line: 82, baseType: !3131, size: 128, offset: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3100, line: 75, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3131, file: !3100, line: 76, baseType: !2649, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3131, file: !3100, line: 77, baseType: !3135, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3127, file: !3100, line: 83, baseType: !1173, size: 256, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3099, file: !3100, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3099, file: !3100, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3099, file: !3100, line: 138, baseType: !7, size: 32, offset: 1056)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3099, file: !3100, line: 139, baseType: !339, size: 128, offset: 1088)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3099, file: !3100, line: 142, baseType: !2760, size: 512, offset: 1216)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3099, file: !3100, line: 143, baseType: !2768, size: 64, offset: 1728)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3099, file: !3100, line: 150, baseType: !3144, size: 256, offset: 1792)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3145, size: 256, elements: !2063)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3100, line: 38, size: 128, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3145, file: !3100, line: 39, baseType: !223, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3145, file: !3100, line: 40, baseType: !223, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3099, file: !3100, line: 156, baseType: !3150, size: 192, offset: 2048)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3100, line: 66, size: 192, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3150, file: !3100, line: 67, baseType: !3153, size: 192)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3100, line: 47, size: 192, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3153, file: !3100, line: 48, baseType: !319, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3153, file: !3100, line: 49, baseType: !319, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3153, file: !3100, line: 50, baseType: !319, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3099, file: !3100, line: 160, baseType: !3045, size: 640, offset: 2240)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3099, file: !3100, line: 163, baseType: !3160, size: 256, offset: 2880)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !392)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3099, file: !3100, line: 169, baseType: !375, size: 64, offset: 3136)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3099, file: !3100, line: 172, baseType: !126, size: 32, offset: 3200)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3099, file: !3100, line: 174, baseType: !3164, size: 64, offset: 3264)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3100, line: 174, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3099, file: !3100, line: 185, baseType: !3167, size: 64, offset: 3328)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !669, line: 860, baseType: !3168)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 853, size: 64, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3168, file: !669, line: 858, baseType: !668, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3168, file: !669, line: 859, baseType: !278, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3099, file: !3100, line: 186, baseType: !223, size: 64, offset: 3392)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3099, file: !3100, line: 186, baseType: !223, size: 64, offset: 3456)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3099, file: !3100, line: 186, baseType: !223, size: 64, offset: 3520)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3099, file: !3100, line: 186, baseType: !223, size: 64, offset: 3584)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3099, file: !3100, line: 187, baseType: !223, size: 64, offset: 3648)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3099, file: !3100, line: 188, baseType: !223, size: 64, offset: 3712)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3099, file: !3100, line: 189, baseType: !3033, size: 192, offset: 3776)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3099, file: !3100, line: 190, baseType: !195, size: 64, offset: 3968)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3099, file: !3100, line: 190, baseType: !195, size: 64, offset: 4032)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3099, file: !3100, line: 190, baseType: !195, size: 64, offset: 4096)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3099, file: !3100, line: 190, baseType: !195, size: 64, offset: 4160)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3099, file: !3100, line: 191, baseType: !195, size: 64, offset: 4224)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3099, file: !3100, line: 191, baseType: !195, size: 64, offset: 4288)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3099, file: !3100, line: 191, baseType: !195, size: 64, offset: 4352)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3099, file: !3100, line: 191, baseType: !195, size: 64, offset: 4416)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3099, file: !3100, line: 192, baseType: !195, size: 64, offset: 4480)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3099, file: !3100, line: 192, baseType: !195, size: 64, offset: 4544)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3099, file: !3100, line: 192, baseType: !195, size: 64, offset: 4608)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3099, file: !3100, line: 192, baseType: !195, size: 64, offset: 4672)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3099, file: !3100, line: 193, baseType: !195, size: 64, offset: 4736)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3099, file: !3100, line: 193, baseType: !195, size: 64, offset: 4800)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3099, file: !3100, line: 194, baseType: !3194, size: 448, offset: 4864)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3195, line: 12, size: 448, elements: !3196)
!3195 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3194, file: !3195, line: 15, baseType: !223, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3194, file: !3195, line: 17, baseType: !223, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3194, file: !3195, line: 19, baseType: !223, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3194, file: !3195, line: 21, baseType: !223, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3194, file: !3195, line: 29, baseType: !223, size: 64, offset: 256)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3194, file: !3195, line: 35, baseType: !223, size: 64, offset: 320)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3194, file: !3195, line: 44, baseType: !223, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3099, file: !3100, line: 202, baseType: !225, size: 64, offset: 5312)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3099, file: !3100, line: 213, baseType: !3206, size: 2048, offset: 5376)
!3206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3207, size: 2048, elements: !3068)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3208, line: 43, size: 128, elements: !3209)
!3208 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3209 = !{!3210, !3211}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3207, file: !3208, line: 44, baseType: !209, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3207, file: !3208, line: 45, baseType: !209, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3099, file: !3100, line: 216, baseType: !3213, size: 448, offset: 7424)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3100, line: 30, size: 448, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3213, file: !3100, line: 31, baseType: !126, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3213, file: !3100, line: 32, baseType: !817, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3213, file: !3100, line: 33, baseType: !195, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3213, file: !3100, line: 34, baseType: !223, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3213, file: !3100, line: 34, baseType: !223, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3213, file: !3100, line: 35, baseType: !195, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3213, file: !3100, line: 35, baseType: !195, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3099, file: !3100, line: 219, baseType: !3223, size: 64, offset: 7872)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3100, line: 219, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3099, file: !3100, line: 222, baseType: !7, size: 32, offset: 7936)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3099, file: !3100, line: 223, baseType: !3227, size: 64, offset: 8000)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3100, line: 223, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3099, file: !3100, line: 230, baseType: !227, size: 8, offset: 8064)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3099, file: !3100, line: 231, baseType: !508, size: 16, offset: 8080)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3099, file: !3100, line: 232, baseType: !508, size: 16, offset: 8096)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3099, file: !3100, line: 234, baseType: !1221, size: 64, offset: 8128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3099, file: !3100, line: 237, baseType: !327, size: 256, offset: 8192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3099, file: !3100, line: 243, baseType: !481, size: 320, offset: 8448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2650, file: !1469, line: 1111, baseType: !3236, size: 64, offset: 15424)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3100, line: 20, size: 16640, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3237, file: !3100, line: 21, baseType: !278, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3237, file: !3100, line: 22, baseType: !242, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3237, file: !3100, line: 23, baseType: !396, size: 192, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3237, file: !3100, line: 24, baseType: !3243, size: 16384, offset: 256)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3244, size: 16384, elements: !1000)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !629, line: 51, size: 256, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3244, file: !629, line: 52, baseType: !3247, size: 256)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !629, line: 37, size: 256, elements: !3248)
!3248 = !{!3249, !3256, !3257, !3261}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3247, file: !629, line: 39, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3251, line: 83, baseType: !3252)
!3251 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3251, line: 82, baseType: !3254)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !126}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3247, file: !629, line: 40, baseType: !195, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3247, file: !629, line: 46, baseType: !3258, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3251, line: 86, baseType: !3259)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3251, line: 85, baseType: !2278)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3247, file: !629, line: 48, baseType: !3114, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2650, file: !1469, line: 1112, baseType: !3114, size: 64, offset: 15488)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2650, file: !1469, line: 1113, baseType: !3114, size: 64, offset: 15552)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2650, file: !1469, line: 1115, baseType: !3114, size: 64, offset: 15616)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2650, file: !1469, line: 1116, baseType: !3110, size: 192, offset: 15680)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2650, file: !1469, line: 1117, baseType: !195, size: 64, offset: 15872)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2650, file: !1469, line: 1118, baseType: !206, size: 64, offset: 15936)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2650, file: !1469, line: 1119, baseType: !7, size: 32, offset: 16000)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2650, file: !1469, line: 1121, baseType: !271, size: 64, offset: 16064)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2650, file: !1469, line: 1125, baseType: !3271, size: 64, offset: 16128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1469, line: 43, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2650, file: !1469, line: 1127, baseType: !415, size: 32, offset: 16192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2650, file: !1469, line: 1128, baseType: !7, size: 32, offset: 16224)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2650, file: !1469, line: 1130, baseType: !3276, size: 128, offset: 16256)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3277, line: 37, size: 128, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3276, file: !3277, line: 38, baseType: !126, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3276, file: !3277, line: 39, baseType: !246, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3276, file: !3277, line: 40, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3277, line: 24, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2650, file: !1469, line: 1131, baseType: !3285, size: 256, offset: 16384)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3286, line: 12, size: 256, elements: !3287)
!3286 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3287 = !{!3288, !3289, !3290, !3291}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3285, file: !3286, line: 13, baseType: !551, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3285, file: !3286, line: 14, baseType: !195, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3285, file: !3286, line: 15, baseType: !195, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3285, file: !3286, line: 16, baseType: !227, size: 8, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2650, file: !1469, line: 1134, baseType: !223, size: 64, offset: 16640)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2650, file: !1469, line: 1135, baseType: !223, size: 64, offset: 16704)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2650, file: !1469, line: 1138, baseType: !278, size: 32, offset: 16768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2650, file: !1469, line: 1141, baseType: !332, size: 32, offset: 16800)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2650, file: !1469, line: 1143, baseType: !3297, size: 64, offset: 16832)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1469, line: 735, size: 64, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3297, file: !1469, line: 736, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2650, file: !1469, line: 1147, baseType: !1070, size: 128, offset: 16896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2650, file: !1469, line: 1149, baseType: !2649, size: 64, offset: 17024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2650, file: !1469, line: 1151, baseType: !3304, size: 64, offset: 17088)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1469, line: 1151, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2650, file: !1469, line: 1188, baseType: !194, size: 64, offset: 17152)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2650, file: !1469, line: 1191, baseType: !3308, size: 64, offset: 17216)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1469, line: 44, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2650, file: !1469, line: 1194, baseType: !3311, size: 64, offset: 17280)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1469, line: 45, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2650, file: !1469, line: 1197, baseType: !3314, size: 64, offset: 17344)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1469, line: 61, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2650, file: !1469, line: 1199, baseType: !3317, size: 64, offset: 17408)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3319, line: 99, size: 128, elements: !3320)
!3319 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3320 = !{!3321, !3322, !3323}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3318, file: !3319, line: 100, baseType: !317, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3318, file: !3319, line: 101, baseType: !246, size: 32, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3318, file: !3319, line: 103, baseType: !312, size: 16, offset: 96)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2650, file: !1469, line: 1202, baseType: !3325, size: 64, offset: 17472)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1469, line: 48, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2650, file: !1469, line: 1205, baseType: !195, size: 64, offset: 17536)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2650, file: !1469, line: 1206, baseType: !3329, size: 64, offset: 17600)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !629, line: 14, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !629, line: 12, size: 384, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !629, line: 13, baseType: !3334, size: 384)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3331, file: !629, line: 13, size: 384, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3334, file: !629, line: 13, baseType: !126, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3334, file: !629, line: 13, baseType: !126, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3334, file: !629, line: 13, baseType: !126, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3334, file: !629, line: 13, baseType: !3340, size: 256, offset: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3341, line: 37, size: 256, elements: !3342)
!3341 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3342 = !{!3343, !3348, !3361, !3367, !3376, !3403, !3408}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3340, file: !3341, line: 42, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 39, size: 64, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3344, file: !3341, line: 40, baseType: !3010, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3344, file: !3341, line: 41, baseType: !421, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3340, file: !3341, line: 50, baseType: !3349, size: 192)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 45, size: 192, elements: !3350)
!3350 = !{!3351, !3353, !3354, !3360}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3349, file: !3341, line: 46, baseType: !3352, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !208, line: 95, baseType: !126)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3349, file: !3341, line: 47, baseType: !126, size: 32, offset: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3349, file: !3341, line: 48, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3341, line: 11, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3341, line: 8, size: 64, elements: !3357)
!3357 = !{!3358, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3356, file: !3341, line: 9, baseType: !126, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3356, file: !3341, line: 10, baseType: !194, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3349, file: !3341, line: 49, baseType: !126, size: 32, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3340, file: !3341, line: 57, baseType: !3362, size: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 53, size: 128, elements: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3362, file: !3341, line: 54, baseType: !3010, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3362, file: !3341, line: 55, baseType: !421, size: 32, offset: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3362, file: !3341, line: 56, baseType: !3355, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3340, file: !3341, line: 66, baseType: !3368, size: 256)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 60, size: 256, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3375}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3368, file: !3341, line: 61, baseType: !3010, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3368, file: !3341, line: 62, baseType: !421, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3368, file: !3341, line: 63, baseType: !126, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3368, file: !3341, line: 64, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !208, line: 94, baseType: !858)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3368, file: !3341, line: 65, baseType: !3374, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3340, file: !3341, line: 105, baseType: !3377, size: 256)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 69, size: 256, elements: !3378)
!3378 = !{!3379, !3380}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3377, file: !3341, line: 70, baseType: !194, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3341, line: 79, baseType: !3381, size: 192, offset: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3377, file: !3341, line: 79, size: 192, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3392, !3397}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3381, file: !3341, line: 81, baseType: !126, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3381, file: !3341, line: 86, baseType: !508, size: 16)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3381, file: !3341, line: 92, baseType: !3386, size: 192)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !3341, line: 88, size: 192, elements: !3387)
!3387 = !{!3388, !3390, !3391}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3386, file: !3341, line: 89, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 64, elements: !2803)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3386, file: !3341, line: 90, baseType: !194, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3386, file: !3341, line: 91, baseType: !194, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3381, file: !3341, line: 97, baseType: !3393, size: 96)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !3341, line: 94, size: 96, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3393, file: !3341, line: 95, baseType: !3389, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3393, file: !3341, line: 96, baseType: !214, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3381, file: !3341, line: 103, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !3341, line: 99, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3398, file: !3341, line: 100, baseType: !195, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3398, file: !3341, line: 101, baseType: !214, size: 32, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3398, file: !3341, line: 102, baseType: !214, size: 32, offset: 96)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3340, file: !3341, line: 111, baseType: !3404, size: 128)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 108, size: 128, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3404, file: !3341, line: 109, baseType: !817, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3404, file: !3341, line: 110, baseType: !126, size: 32, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3340, file: !3341, line: 118, baseType: !3409, size: 128)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3341, line: 114, size: 128, elements: !3410)
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3409, file: !3341, line: 115, baseType: !194, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3409, file: !3341, line: 116, baseType: !126, size: 32, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3409, file: !3341, line: 117, baseType: !7, size: 32, offset: 96)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2650, file: !1469, line: 1208, baseType: !3194, size: 448, offset: 17664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2650, file: !1469, line: 1215, baseType: !223, size: 64, offset: 18112)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2650, file: !1469, line: 1217, baseType: !223, size: 64, offset: 18176)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2650, file: !1469, line: 1219, baseType: !223, size: 64, offset: 18240)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2650, file: !1469, line: 1223, baseType: !3419, size: 64, offset: 18304)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3420, line: 99, baseType: !3421)
!3420 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3420, line: 99, size: 64, elements: !3422)
!3422 = !{!3423}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3421, file: !3420, line: 99, baseType: !2880, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2650, file: !1469, line: 1225, baseType: !668, size: 32, offset: 18368)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2650, file: !1469, line: 1226, baseType: !126, size: 32, offset: 18400)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2650, file: !1469, line: 1227, baseType: !126, size: 32, offset: 18432)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2650, file: !1469, line: 1231, baseType: !3428, size: 64, offset: 18496)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1469, line: 1231, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2650, file: !1469, line: 1233, baseType: !339, size: 128, offset: 18560)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2650, file: !1469, line: 1240, baseType: !3432, size: 64, offset: 18688)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1469, line: 62, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2650, file: !1469, line: 1242, baseType: !3435, size: 64, offset: 18752)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1469, line: 1242, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2650, file: !1469, line: 1244, baseType: !339, size: 128, offset: 18816)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2650, file: !1469, line: 1245, baseType: !3439, size: 64, offset: 18944)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1469, line: 51, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2650, file: !1469, line: 1246, baseType: !327, size: 256, offset: 19008)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2650, file: !1469, line: 1247, baseType: !7, size: 32, offset: 19264)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2650, file: !1469, line: 1250, baseType: !3444, size: 64, offset: 19328)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1469, line: 57, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2650, file: !1469, line: 1251, baseType: !327, size: 256, offset: 19392)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2650, file: !1469, line: 1252, baseType: !339, size: 128, offset: 19648)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2650, file: !1469, line: 1259, baseType: !1467, size: 64, offset: 19776)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2650, file: !1469, line: 1260, baseType: !508, size: 16, offset: 19840)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2650, file: !1469, line: 1261, baseType: !508, size: 16, offset: 19856)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2650, file: !1469, line: 1314, baseType: !3452, size: 64, offset: 19904)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3454, line: 62, size: 256, align: 256, elements: !3455)
!3454 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3453, file: !3454, line: 75, baseType: !214, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3453, file: !3454, line: 90, baseType: !214, size: 32, offset: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3453, file: !3454, line: 112, baseType: !224, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3453, file: !3454, line: 132, baseType: !214, size: 32, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3453, file: !3454, line: 140, baseType: !214, size: 32, offset: 160)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3453, file: !3454, line: 149, baseType: !214, size: 32, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3453, file: !3454, line: 154, baseType: !3463, offset: 224)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, elements: !411)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2650, file: !1469, line: 1315, baseType: !212, size: 32, offset: 19968)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2650, file: !1469, line: 1316, baseType: !212, size: 32, offset: 20000)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2650, file: !1469, line: 1321, baseType: !195, size: 64, offset: 20032)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2650, file: !1469, line: 1325, baseType: !126, size: 32, offset: 20096)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2650, file: !1469, line: 1326, baseType: !126, size: 32, offset: 20128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2650, file: !1469, line: 1327, baseType: !126, size: 32, offset: 20160)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2650, file: !1469, line: 1328, baseType: !126, size: 32, offset: 20192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2650, file: !1469, line: 1329, baseType: !268, size: 128, align: 64, offset: 20224)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2650, file: !1469, line: 1332, baseType: !3473, size: 128, offset: 20352)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3474, line: 51, size: 128, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3475 = !{!3476, !3481, !3482}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3473, file: !3474, line: 60, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3478, line: 7, size: 64, elements: !3479)
!3478 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3479 = !{!3480}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3477, file: !3478, line: 12, baseType: !2877, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3473, file: !3474, line: 63, baseType: !227, size: 8, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3473, file: !3474, line: 70, baseType: !227, size: 8, offset: 72)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2650, file: !1469, line: 1335, baseType: !3484, size: 64, offset: 20480)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1469, line: 59, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2650, file: !1469, line: 1337, baseType: !3487, size: 128, offset: 20544)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3474, line: 39, size: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3487, file: !3474, line: 40, baseType: !1088, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3487, file: !3474, line: 42, baseType: !214, size: 32, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3487, file: !3474, line: 43, baseType: !214, size: 32, offset: 96)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2650, file: !1469, line: 1340, baseType: !3493, size: 64, offset: 20672)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1469, line: 69, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2650, file: !1469, line: 1351, baseType: !126, size: 32, offset: 20736)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2650, file: !1469, line: 1352, baseType: !126, size: 32, offset: 20768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2650, file: !1469, line: 1354, baseType: !195, size: 64, offset: 20800)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2650, file: !1469, line: 1364, baseType: !223, size: 64, offset: 20864)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2650, file: !1469, line: 1365, baseType: !223, size: 64, offset: 20928)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2650, file: !1469, line: 1412, baseType: !195, size: 64, offset: 20992)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2650, file: !1469, line: 1453, baseType: !3502, size: 64, offset: 21056)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1469, line: 1453, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2650, file: !1469, line: 1457, baseType: !3505, size: 64, offset: 21120)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3507)
!3507 = !{!3508, !3509, !3528, !3531, !3532, !3565, !3575}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3506, file: !81, line: 62, baseType: !80, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3506, file: !81, line: 64, baseType: !3510, size: 192, offset: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3506, file: !81, line: 64, size: 192, elements: !3511)
!3511 = !{!3512, !3523}
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3510, file: !81, line: 65, baseType: !3513, size: 192)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !81, line: 65, size: 192, elements: !3514)
!3514 = !{!3515, !3522}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3513, file: !81, line: 66, baseType: !3516, size: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3517, line: 50, size: 128, elements: !3518)
!3517 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3516, file: !3517, line: 52, baseType: !195, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3516, file: !3517, line: 54, baseType: !7, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3516, file: !3517, line: 55, baseType: !7, size: 32, offset: 96)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3513, file: !81, line: 67, baseType: !195, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3510, file: !81, line: 70, baseType: !3524, size: 192)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3510, file: !81, line: 70, size: 192, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3524, file: !81, line: 71, baseType: !268, size: 128, align: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3524, file: !81, line: 72, baseType: !195, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3506, file: !81, line: 76, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3506, file: !81, line: 77, baseType: !195, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3506, file: !81, line: 79, baseType: !3533, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3517, line: 25, size: 256, elements: !3535)
!3535 = !{!3536, !3542, !3546}
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3534, file: !3517, line: 26, baseType: !3537, size: 128)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3534, file: !3517, line: 26, size: 128, elements: !3538)
!3538 = !{!3539, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3537, file: !3517, line: 27, baseType: !3540, size: 128)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !3068)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3537, file: !3517, line: 28, baseType: !3540, size: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3534, file: !3517, line: 31, baseType: !3543, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3517, line: 23, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, scope: !3534, file: !3517, line: 33, baseType: !3547, size: 64, offset: 192)
!3547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3534, file: !3517, line: 33, size: 64, elements: !3548)
!3548 = !{!3549, !3555, !3560}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3547, file: !3517, line: 38, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3547, file: !3517, line: 34, size: 64, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3550, file: !3517, line: 35, baseType: !466, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3550, file: !3517, line: 36, baseType: !302, size: 8, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3550, file: !3517, line: 37, baseType: !302, size: 8, offset: 40)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3547, file: !3517, line: 42, baseType: !3556, size: 16)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3547, file: !3517, line: 39, size: 16, elements: !3557)
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3556, file: !3517, line: 40, baseType: !302, size: 8)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3556, file: !3517, line: 41, baseType: !302, size: 8, offset: 8)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3547, file: !3517, line: 46, baseType: !3561, size: 16)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3547, file: !3517, line: 43, size: 16, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3561, file: !3517, line: 44, baseType: !302, size: 8)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3561, file: !3517, line: 45, baseType: !302, size: 8, offset: 8)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3506, file: !81, line: 81, baseType: !3566, size: 64, offset: 448)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3567, file: !81, line: 86, baseType: !3529, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3567, file: !81, line: 87, baseType: !195, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3567, file: !81, line: 88, baseType: !195, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3567, file: !81, line: 89, baseType: !195, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3567, file: !81, line: 90, baseType: !227, size: 8, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3567, file: !81, line: 92, baseType: !3566, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3506, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2650, file: !1469, line: 1463, baseType: !3577, offset: 21184)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1469, line: 739, elements: !1242)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2650, file: !1469, line: 1470, baseType: !268, size: 128, align: 64, offset: 21184)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2650, file: !1469, line: 1471, baseType: !242, size: 32, offset: 21312)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2650, file: !1469, line: 1472, baseType: !126, size: 32, offset: 21344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2650, file: !1469, line: 1474, baseType: !2649, size: 64, offset: 21376)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2650, file: !1469, line: 1475, baseType: !2173, size: 320, offset: 21440)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2650, file: !1469, line: 1478, baseType: !3584, size: 64, offset: 21760)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1693, line: 49, size: 512, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3585, file: !1693, line: 50, baseType: !3584, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3585, file: !1693, line: 51, baseType: !194, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3585, file: !1693, line: 52, baseType: !195, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3585, file: !1693, line: 53, baseType: !195, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3585, file: !1693, line: 54, baseType: !1642, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3585, file: !1693, line: 56, baseType: !7, size: 32, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3585, file: !1693, line: 58, baseType: !7, size: 32, offset: 352)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3585, file: !1693, line: 59, baseType: !222, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3585, file: !1693, line: 60, baseType: !1337, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2650, file: !1469, line: 1482, baseType: !242, size: 32, offset: 21824)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2650, file: !1469, line: 1489, baseType: !194, size: 64, offset: 21888)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2650, file: !1469, line: 1504, baseType: !194, size: 64, offset: 21952)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2650, file: !1469, line: 1505, baseType: !224, size: 64, offset: 22016)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2650, file: !1469, line: 1506, baseType: !223, size: 64, offset: 22080)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2650, file: !1469, line: 1507, baseType: !224, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2650, file: !1469, line: 1508, baseType: !224, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2650, file: !1469, line: 1509, baseType: !224, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2650, file: !1469, line: 1510, baseType: !268, size: 128, align: 64, offset: 22208)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2650, file: !1469, line: 1511, baseType: !126, size: 32, offset: 22336)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2650, file: !1469, line: 1515, baseType: !3607, size: 64, offset: 22400)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !263, line: 56, size: 64, elements: !3608)
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3607, file: !263, line: 57, baseType: !266, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2650, file: !1469, line: 1518, baseType: !3607, size: 64, offset: 22464)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2650, file: !1469, line: 1528, baseType: !268, size: 128, align: 64, offset: 22528)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2650, file: !1469, line: 1552, baseType: !3613, size: 35328, offset: 23040)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3614, line: 430, size: 35328, elements: !3615)
!3614 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3615 = !{!3616, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3645, !3646, !3647, !3648, !3649, !3650, !3653, !3654, !3655, !3656}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3613, file: !3614, line: 432, baseType: !3617, size: 192)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3618, size: 192, elements: !371)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3619, line: 16, size: 64, elements: !3620)
!3619 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3618, file: !3619, line: 17, baseType: !310, size: 16)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3618, file: !3619, line: 18, baseType: !310, size: 16, offset: 16)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3618, file: !3619, line: 19, baseType: !310, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3618, file: !3619, line: 19, baseType: !310, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3618, file: !3619, line: 19, baseType: !310, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3618, file: !3619, line: 19, baseType: !310, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3618, file: !3619, line: 19, baseType: !310, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3618, file: !3619, line: 20, baseType: !310, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3618, file: !3619, line: 20, baseType: !310, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3618, file: !3619, line: 20, baseType: !310, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3618, file: !3619, line: 20, baseType: !310, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3618, file: !3619, line: 20, baseType: !310, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3618, file: !3619, line: 20, baseType: !310, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3613, file: !3614, line: 436, baseType: !195, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3613, file: !3614, line: 440, baseType: !312, size: 16, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3613, file: !3614, line: 441, baseType: !312, size: 16, offset: 272)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3613, file: !3614, line: 442, baseType: !312, size: 16, offset: 288)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3613, file: !3614, line: 443, baseType: !312, size: 16, offset: 304)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3613, file: !3614, line: 447, baseType: !195, size: 64, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3613, file: !3614, line: 448, baseType: !195, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3613, file: !3614, line: 459, baseType: !3642, size: 256, offset: 448)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3643, size: 256, elements: !392)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3614, line: 428, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3613, file: !3614, line: 461, baseType: !195, size: 64, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3613, file: !3614, line: 463, baseType: !195, size: 64, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3613, file: !3614, line: 465, baseType: !195, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3613, file: !3614, line: 466, baseType: !195, size: 64, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3613, file: !3614, line: 467, baseType: !195, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3613, file: !3614, line: 473, baseType: !3651, size: 64, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3614, line: 10, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3613, file: !3614, line: 480, baseType: !195, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3613, file: !3614, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3613, file: !3614, line: 491, baseType: !212, size: 32, offset: 1184)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3613, file: !3614, line: 501, baseType: !3657, size: 33792, offset: 1536)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3658, line: 448, size: 33792, elements: !3659)
!3658 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3659 = !{!3660, !3661, !3662, !3826, !3827, !3833, !3834}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3657, file: !3658, line: 461, baseType: !7, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3657, file: !3658, line: 468, baseType: !195, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3657, file: !3658, line: 476, baseType: !3663, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3658, line: 356, size: 33280, align: 512, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3664, file: !3658, line: 358, baseType: !7, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3664, file: !3658, line: 361, baseType: !7, size: 32, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3664, file: !3658, line: 364, baseType: !223, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3664, file: !3658, line: 367, baseType: !223, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3664, file: !3658, line: 370, baseType: !223, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3664, file: !3658, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3664, file: !3658, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3664, file: !3658, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3664, file: !3658, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3664, file: !3658, line: 397, baseType: !3676, size: 32768, offset: 512)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3658, line: 348, size: 32768, elements: !3677)
!3677 = !{!3678, !3693, !3732, !3809, !3822}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3676, file: !3658, line: 349, baseType: !3679, size: 896)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3658, line: 12, size: 896, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3692}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3679, file: !3658, line: 13, baseType: !212, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3679, file: !3658, line: 14, baseType: !212, size: 32, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3679, file: !3658, line: 15, baseType: !212, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3679, file: !3658, line: 16, baseType: !212, size: 32, offset: 96)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3679, file: !3658, line: 17, baseType: !212, size: 32, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3679, file: !3658, line: 18, baseType: !212, size: 32, offset: 160)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3679, file: !3658, line: 19, baseType: !212, size: 32, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3679, file: !3658, line: 22, baseType: !3689, size: 640, offset: 224)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 640, elements: !3690)
!3690 = !{!3691}
!3691 = !DISubrange(count: 20)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3679, file: !3658, line: 25, baseType: !212, size: 32, offset: 864)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3676, file: !3658, line: 350, baseType: !3694, size: 4096, align: 128)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3658, line: 34, size: 4096, align: 128, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3715, !3716, !3717, !3721, !3723, !3727}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3694, file: !3658, line: 35, baseType: !310, size: 16)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3694, file: !3658, line: 36, baseType: !310, size: 16, offset: 16)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3694, file: !3658, line: 37, baseType: !310, size: 16, offset: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3694, file: !3658, line: 38, baseType: !310, size: 16, offset: 48)
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !3694, file: !3658, line: 39, baseType: !3701, size: 128, offset: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3694, file: !3658, line: 39, size: 128, elements: !3702)
!3702 = !{!3703, !3708}
!3703 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !3658, line: 40, baseType: !3704, size: 128)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3701, file: !3658, line: 40, size: 128, elements: !3705)
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3704, file: !3658, line: 41, baseType: !223, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3704, file: !3658, line: 42, baseType: !223, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !3658, line: 44, baseType: !3709, size: 128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3701, file: !3658, line: 44, size: 128, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3709, file: !3658, line: 45, baseType: !212, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3709, file: !3658, line: 46, baseType: !212, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3709, file: !3658, line: 47, baseType: !212, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3709, file: !3658, line: 48, baseType: !212, size: 32, offset: 96)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3694, file: !3658, line: 51, baseType: !212, size: 32, offset: 192)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3694, file: !3658, line: 52, baseType: !212, size: 32, offset: 224)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3694, file: !3658, line: 55, baseType: !3718, size: 1024, offset: 256)
!3718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !3719)
!3719 = !{!3720}
!3720 = !DISubrange(count: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3694, file: !3658, line: 58, baseType: !3722, size: 2048, offset: 1280)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 2048, elements: !1000)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3694, file: !3658, line: 60, baseType: !3724, size: 384, offset: 3328)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !3725)
!3725 = !{!3726}
!3726 = !DISubrange(count: 12)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3694, file: !3658, line: 62, baseType: !3728, size: 384, offset: 3712)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3694, file: !3658, line: 62, size: 384, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3728, file: !3658, line: 63, baseType: !3724, size: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3728, file: !3658, line: 64, baseType: !3724, size: 384)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3676, file: !3658, line: 351, baseType: !3733, size: 1088)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3658, line: 79, size: 1088, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3808}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3733, file: !3658, line: 80, baseType: !212, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3733, file: !3658, line: 81, baseType: !212, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3733, file: !3658, line: 82, baseType: !212, size: 32, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3733, file: !3658, line: 83, baseType: !212, size: 32, offset: 96)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3733, file: !3658, line: 84, baseType: !212, size: 32, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3733, file: !3658, line: 85, baseType: !212, size: 32, offset: 160)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3733, file: !3658, line: 86, baseType: !212, size: 32, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3733, file: !3658, line: 88, baseType: !3689, size: 640, offset: 224)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3733, file: !3658, line: 89, baseType: !302, size: 8, offset: 864)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3733, file: !3658, line: 90, baseType: !302, size: 8, offset: 872)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3733, file: !3658, line: 91, baseType: !302, size: 8, offset: 880)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3733, file: !3658, line: 92, baseType: !302, size: 8, offset: 888)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3733, file: !3658, line: 93, baseType: !302, size: 8, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3733, file: !3658, line: 94, baseType: !302, size: 8, offset: 904)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3733, file: !3658, line: 95, baseType: !3750, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3752, line: 11, size: 128, elements: !3753)
!3752 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3751, file: !3752, line: 12, baseType: !817, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3751, file: !3752, line: 13, baseType: !3756, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3758, line: 103, size: 1344, elements: !3759)
!3758 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3759 = !{!3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3788, !3789, !3790}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3757, file: !3758, line: 109, baseType: !195, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3757, file: !3758, line: 110, baseType: !195, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3757, file: !3758, line: 111, baseType: !195, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3757, file: !3758, line: 112, baseType: !195, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3757, file: !3758, line: 113, baseType: !195, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3757, file: !3758, line: 114, baseType: !195, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3757, file: !3758, line: 117, baseType: !195, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3757, file: !3758, line: 118, baseType: !195, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3757, file: !3758, line: 119, baseType: !195, size: 64, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3757, file: !3758, line: 120, baseType: !195, size: 64, offset: 576)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3757, file: !3758, line: 121, baseType: !195, size: 64, offset: 640)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3757, file: !3758, line: 122, baseType: !195, size: 64, offset: 704)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3757, file: !3758, line: 123, baseType: !195, size: 64, offset: 768)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3757, file: !3758, line: 124, baseType: !195, size: 64, offset: 832)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3757, file: !3758, line: 125, baseType: !195, size: 64, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3757, file: !3758, line: 139, baseType: !195, size: 64, offset: 960)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3757, file: !3758, line: 142, baseType: !195, size: 64, offset: 1024)
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3757, file: !3758, line: 144, baseType: !3778, size: 64, offset: 1088)
!3778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3757, file: !3758, line: 144, size: 64, elements: !3779)
!3779 = !{!3780, !3781, !3782}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3778, file: !3758, line: 146, baseType: !310, size: 16)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3778, file: !3758, line: 148, baseType: !223, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3778, file: !3758, line: 150, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3758, line: 59, size: 64, elements: !3784)
!3784 = !{!3785, !3786, !3787}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3783, file: !3758, line: 61, baseType: !223, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3783, file: !3758, line: 63, baseType: !223, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3783, file: !3758, line: 65, baseType: !223, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3757, file: !3758, line: 153, baseType: !195, size: 64, offset: 1152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3757, file: !3758, line: 154, baseType: !195, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !3757, file: !3758, line: 156, baseType: !3791, size: 64, offset: 1280)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3757, file: !3758, line: 156, size: 64, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3791, file: !3758, line: 158, baseType: !310, size: 16)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3791, file: !3758, line: 160, baseType: !223, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3791, file: !3758, line: 162, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3758, line: 69, size: 64, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3796, file: !3758, line: 71, baseType: !223, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3796, file: !3758, line: 73, baseType: !223, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3796, file: !3758, line: 75, baseType: !223, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3796, file: !3758, line: 77, baseType: !223, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3796, file: !3758, line: 80, baseType: !223, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3796, file: !3758, line: 83, baseType: !223, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3796, file: !3758, line: 86, baseType: !223, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3796, file: !3758, line: 88, baseType: !223, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3796, file: !3758, line: 93, baseType: !223, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3796, file: !3758, line: 100, baseType: !223, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3733, file: !3658, line: 96, baseType: !212, size: 32, offset: 1024)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3676, file: !3658, line: 352, baseType: !3810, size: 4608, align: 512)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3658, line: 333, size: 4608, align: 512, elements: !3811)
!3811 = !{!3812, !3813, !3820}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3810, file: !3658, line: 334, baseType: !3694, size: 4096, align: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3810, file: !3658, line: 335, baseType: !3814, size: 512, offset: 4096)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3658, line: 312, size: 512, elements: !3815)
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3814, file: !3658, line: 313, baseType: !223, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3814, file: !3658, line: 314, baseType: !223, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3814, file: !3658, line: 315, baseType: !3819, size: 384, offset: 128)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !527)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3810, file: !3658, line: 336, baseType: !3821, offset: 4608)
!3821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, elements: !411)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3676, file: !3658, line: 353, baseType: !3823, size: 32768)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 32768, elements: !3824)
!3824 = !{!3825}
!3825 = !DISubrange(count: 4096)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3657, file: !3658, line: 484, baseType: !3663, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3657, file: !3658, line: 491, baseType: !3828, size: 128, offset: 256)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3658, line: 404, size: 128, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3828, file: !3658, line: 424, baseType: !223, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3828, file: !3658, line: 432, baseType: !7, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3828, file: !3658, line: 440, baseType: !7, size: 32, offset: 96)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3657, file: !3658, line: 498, baseType: !3828, size: 128, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3657, file: !3658, line: 508, baseType: !3664, size: 33280, align: 512, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2632, file: !2633, line: 16, baseType: !396, size: 192, offset: 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2632, file: !2633, line: 17, baseType: !246, size: 32, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !912, file: !59, line: 1240, baseType: !194, size: 64, offset: 6912)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !912, file: !59, line: 1243, baseType: !212, size: 32, offset: 6976)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !912, file: !59, line: 1245, baseType: !497, size: 64, offset: 7040)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !912, file: !59, line: 1246, baseType: !497, size: 64, offset: 7104)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !912, file: !59, line: 1248, baseType: !214, size: 32, offset: 7168)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !912, file: !59, line: 1249, baseType: !3843, size: 64, offset: 7232)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !912, file: !59, line: 1252, baseType: !3846, size: 256, offset: 7296)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 256, elements: !3719)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !912, file: !59, line: 1253, baseType: !3848, size: 128, offset: 7552)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3849, line: 21, baseType: !3850)
!3849 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3849, line: 19, size: 128, elements: !3851)
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3850, file: !3849, line: 20, baseType: !3853, size: 128)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 128, elements: !3068)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !912, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !912, file: !59, line: 1261, baseType: !327, size: 256, offset: 7744)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !912, file: !59, line: 1267, baseType: !541, size: 64, offset: 8000)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !912, file: !59, line: 1269, baseType: !3858, size: 64, offset: 8064)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !664, line: 128, size: 1024, align: 512, elements: !3861)
!3861 = !{!3862, !3866, !3867, !3874, !3880, !3884, !3888, !3892, !3893, !3897, !3901, !3906, !3910}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3860, file: !664, line: 129, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!126, !662, !7}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3860, file: !664, line: 130, baseType: !3863, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3860, file: !664, line: 131, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!126, !3871, !3873}
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3860, file: !664, line: 132, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!126, !3871, !7, !541, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3860, file: !664, line: 134, baseType: !3881, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!126, !3871}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3860, file: !664, line: 135, baseType: !3885, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!126, !662}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3860, file: !664, line: 136, baseType: !3889, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !662}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3860, file: !664, line: 137, baseType: !3889, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3860, file: !664, line: 138, baseType: !3894, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !662, !702}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3860, file: !664, line: 139, baseType: !3898, size: 64, offset: 576)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!551, !662, !551, !126}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3860, file: !664, line: 140, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!657, !3905}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3860, file: !664, line: 141, baseType: !3907, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!126, !825, !227}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3860, file: !664, line: 142, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!662, !662, !3914}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !912, file: !59, line: 1271, baseType: !3917, size: 448, offset: 8128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2414, line: 63, size: 448, elements: !3918)
!3918 = !{!3919, !3924, !3925, !3926, !3927, !3928, !3929}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3917, file: !2414, line: 64, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!195, !3923, !2412}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3917, file: !2414, line: 66, baseType: !3920, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3917, file: !2414, line: 69, baseType: !817, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3917, file: !2414, line: 70, baseType: !126, size: 32, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3917, file: !2414, line: 71, baseType: !7, size: 32, offset: 224)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3917, file: !2414, line: 74, baseType: !339, size: 128, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3917, file: !2414, line: 85, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !912, file: !59, line: 1274, baseType: !317, size: 64, offset: 8576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !912, file: !59, line: 1280, baseType: !317, size: 64, offset: 8640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !912, file: !59, line: 1283, baseType: !126, size: 32, offset: 8704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !912, file: !59, line: 1286, baseType: !1733, size: 32, offset: 8736)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !912, file: !59, line: 1289, baseType: !2235, size: 64, offset: 8768)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !912, file: !59, line: 1290, baseType: !383, size: 64, offset: 8832)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !912, file: !59, line: 1297, baseType: !624, size: 64, offset: 8896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !912, file: !59, line: 1304, baseType: !3939, size: 64, offset: 8960)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3940, line: 49, size: 64, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3939, file: !3940, line: 50, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3940, line: 41, size: 512, align: 512, elements: !3945)
!3945 = !{!3946, !3947, !3952}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3944, file: !3940, line: 43, baseType: !278, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3944, file: !3940, line: 45, baseType: !3948, size: 192, offset: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3940, line: 29, size: 192, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3948, file: !3940, line: 30, baseType: !339, size: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3948, file: !3940, line: 32, baseType: !817, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3944, file: !3940, line: 46, baseType: !817, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !912, file: !59, line: 1305, baseType: !3939, size: 64, offset: 9024)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !912, file: !59, line: 1306, baseType: !268, size: 128, align: 64, offset: 9088)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !912, file: !59, line: 1307, baseType: !1376, size: 256, offset: 9216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !912, file: !59, line: 1309, baseType: !327, size: 256, offset: 9472)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !912, file: !59, line: 1314, baseType: !126, size: 32, offset: 9728)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !912, file: !59, line: 1317, baseType: !278, size: 32, align: 512, offset: 10240)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !912, file: !59, line: 1318, baseType: !339, size: 128, offset: 10304)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !912, file: !59, line: 1320, baseType: !278, size: 32, offset: 10432)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !912, file: !59, line: 1321, baseType: !339, size: 128, offset: 10496)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !703, file: !59, line: 656, baseType: !1061, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !703, file: !59, line: 659, baseType: !194, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !703, file: !59, line: 663, baseType: !195, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !59, line: 671, baseType: !3966, size: 32, offset: 704)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !59, line: 671, size: 32, elements: !3967)
!3967 = !{!3968, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3966, file: !59, line: 672, baseType: !3969, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3966, file: !59, line: 673, baseType: !7, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !703, file: !59, line: 675, baseType: !777, size: 32, offset: 736)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !703, file: !59, line: 676, baseType: !345, size: 64, offset: 768)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !703, file: !59, line: 677, baseType: !813, size: 128, offset: 832)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !703, file: !59, line: 678, baseType: !813, size: 128, offset: 960)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !703, file: !59, line: 679, baseType: !813, size: 128, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !703, file: !59, line: 680, baseType: !278, size: 32, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !703, file: !59, line: 681, baseType: !312, size: 16, offset: 1248)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !703, file: !59, line: 682, baseType: !302, size: 8, offset: 1264)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !703, file: !59, line: 683, baseType: !302, size: 8, offset: 1272)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !703, file: !59, line: 684, baseType: !2545, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !703, file: !59, line: 691, baseType: !195, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !703, file: !59, line: 692, baseType: !481, size: 320, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !703, file: !59, line: 694, baseType: !195, size: 64, offset: 1728)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !703, file: !59, line: 695, baseType: !195, size: 64, offset: 1792)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !703, file: !59, line: 697, baseType: !387, size: 128, offset: 1856)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !703, file: !59, line: 698, baseType: !339, size: 128, offset: 1984)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !703, file: !59, line: 707, baseType: !339, size: 128, offset: 2112)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !703, file: !59, line: 708, baseType: !339, size: 128, offset: 2240)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !59, line: 709, baseType: !3990, size: 128, offset: 2368)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !59, line: 709, size: 128, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3990, file: !59, line: 710, baseType: !383, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3990, file: !59, line: 711, baseType: !268, size: 128, align: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !703, file: !59, line: 713, baseType: !319, size: 64, offset: 2496)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !703, file: !59, line: 714, baseType: !319, size: 64, offset: 2560)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !703, file: !59, line: 715, baseType: !246, size: 32, offset: 2624)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !703, file: !59, line: 716, baseType: !246, size: 32, offset: 2656)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !703, file: !59, line: 717, baseType: !246, size: 32, offset: 2688)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !703, file: !59, line: 719, baseType: !246, size: 32, offset: 2720)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !59, line: 721, baseType: !4001, size: 64, offset: 2752)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !59, line: 721, size: 64, elements: !4002)
!4002 = !{!4003, !4127}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4001, file: !59, line: 722, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4006)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !4007)
!4007 = !{!4008, !4009, !4013, !4017, !4021, !4022, !4023, !4029, !4042, !4046, !4050, !4051, !4055, !4056, !4060, !4065, !4066, !4070, !4074, !4080, !4081, !4085, !4086, !4090, !4094, !4095, !4100, !4104, !4108, !4112, !4116, !4117, !4123}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4006, file: !59, line: 1915, baseType: !944, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4006, file: !59, line: 1916, baseType: !4010, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!345, !255, !345, !126}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4006, file: !59, line: 1917, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!856, !255, !551, !206, !1856}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4006, file: !59, line: 1918, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!856, !255, !541, !206, !1856}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4006, file: !59, line: 1919, baseType: !1666, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4006, file: !59, line: 1920, baseType: !1666, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4006, file: !59, line: 1921, baseType: !4024, size: 64, offset: 384)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!126, !1669, !4027, !7}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4006, file: !59, line: 1923, baseType: !4030, size: 64, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!126, !255, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !4035)
!4035 = !{!4036, !4041}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4034, file: !59, line: 1859, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !4038)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!227, !4033, !541, !126, !345, !223, !7}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4034, file: !59, line: 1860, baseType: !345, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4006, file: !59, line: 1924, baseType: !4043, size: 64, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!1903, !255, !1905}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4006, file: !59, line: 1925, baseType: !4047, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!817, !255, !7, !195}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4006, file: !59, line: 1926, baseType: !4047, size: 64, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4006, file: !59, line: 1927, baseType: !4052, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!126, !255, !1208}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4006, file: !59, line: 1928, baseType: !195, size: 64, offset: 768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4006, file: !59, line: 1929, baseType: !4057, size: 64, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!126, !702, !255}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4006, file: !59, line: 1930, baseType: !4061, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!126, !255, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !194)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4006, file: !59, line: 1931, baseType: !4057, size: 64, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4006, file: !59, line: 1932, baseType: !4067, size: 64, offset: 1024)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!126, !255, !345, !345, !126}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4006, file: !59, line: 1933, baseType: !4071, size: 64, offset: 1088)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!126, !126, !255, !126}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4006, file: !59, line: 1934, baseType: !4075, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!126, !255, !126, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4006, file: !59, line: 1935, baseType: !1246, size: 64, offset: 1216)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4006, file: !59, line: 1936, baseType: !4082, size: 64, offset: 1280)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!126, !126}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4006, file: !59, line: 1937, baseType: !4075, size: 64, offset: 1344)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4006, file: !59, line: 1938, baseType: !4087, size: 64, offset: 1408)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!856, !3484, !255, !1856, !206, !7}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4006, file: !59, line: 1939, baseType: !4091, size: 64, offset: 1472)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!856, !255, !1856, !3484, !206, !7}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4006, file: !59, line: 1940, baseType: !1723, size: 64, offset: 1536)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4006, file: !59, line: 1941, baseType: !4096, size: 64, offset: 1600)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!126, !255, !126, !4099, !1643}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4006, file: !59, line: 1942, baseType: !4101, size: 64, offset: 1664)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!817, !255, !126, !345, !345}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4006, file: !59, line: 1944, baseType: !4105, size: 64, offset: 1728)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !1835, !255}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4006, file: !59, line: 1948, baseType: !4109, size: 64, offset: 1792)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!856, !255, !345, !255, !345, !206, !7}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4006, file: !59, line: 1950, baseType: !4113, size: 64, offset: 1856)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!345, !255, !345, !255, !345, !345, !7}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4006, file: !59, line: 1953, baseType: !4067, size: 64, offset: 1920)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4006, file: !59, line: 1954, baseType: !4118, size: 64, offset: 1984)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!126, !4121, !7}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4006, file: !59, line: 1955, baseType: !4124, size: 64, offset: 2048)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!126, !4121, !4027, !7}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4001, file: !59, line: 723, baseType: !2303, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !703, file: !59, line: 725, baseType: !4129, size: 64, offset: 2816)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !703, file: !59, line: 726, baseType: !1062, size: 1536, align: 64, offset: 2880)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !703, file: !59, line: 727, baseType: !339, size: 128, offset: 4416)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !59, line: 728, baseType: !4134, size: 64, offset: 4544)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !59, line: 728, size: 64, elements: !4135)
!4135 = !{!4136, !4137, !4140, !4141}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4134, file: !59, line: 729, baseType: !3484, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4134, file: !59, line: 730, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4134, file: !59, line: 731, baseType: !551, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4134, file: !59, line: 732, baseType: !7, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !703, file: !59, line: 735, baseType: !214, size: 32, offset: 4608)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !703, file: !59, line: 738, baseType: !214, size: 32, offset: 4640)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !703, file: !59, line: 739, baseType: !3843, size: 64, offset: 4672)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !703, file: !59, line: 750, baseType: !194, size: 64, offset: 4736)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !663, file: !664, line: 91, baseType: !4147, size: 256, offset: 448)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !3719)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !663, file: !664, line: 94, baseType: !4149, size: 64, offset: 704)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4150, line: 25, size: 64, elements: !4151)
!4150 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, scope: !4149, file: !4150, line: 26, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4149, file: !4150, line: 26, size: 64, elements: !4154)
!4154 = !{!4155, !4156}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4153, file: !4150, line: 28, baseType: !224, size: 64, align: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !4153, file: !4150, line: 30, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4153, file: !4150, line: 30, size: 64, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4157, file: !4150, line: 31, baseType: !278, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4157, file: !4150, line: 32, baseType: !126, size: 32, offset: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !663, file: !664, line: 95, baseType: !3858, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !663, file: !664, line: 96, baseType: !911, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !663, file: !664, line: 97, baseType: !195, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !663, file: !664, line: 98, baseType: !194, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !664, line: 100, baseType: !4166, size: 128, offset: 1024)
!4166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 100, size: 128, elements: !4167)
!4167 = !{!4168, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4166, file: !664, line: 101, baseType: !339, size: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4166, file: !664, line: 102, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !663, file: !664, line: 104, baseType: !339, size: 128, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !663, file: !664, line: 105, baseType: !339, size: 128, offset: 1280)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !663, file: !664, line: 113, baseType: !4174, size: 128, offset: 1408)
!4174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !664, line: 109, size: 128, elements: !4175)
!4175 = !{!4176, !4177, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4174, file: !664, line: 110, baseType: !387, size: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4174, file: !664, line: 111, baseType: !678, size: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4174, file: !664, line: 112, baseType: !268, size: 128, align: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !658, file: !659, line: 72, baseType: !911, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !658, file: !659, line: 73, baseType: !126, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !658, file: !659, line: 74, baseType: !742, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !653, file: !654, line: 10, baseType: !662, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !256, file: !59, line: 1015, baseType: !702, size: 64, offset: 1344)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !256, file: !59, line: 1016, baseType: !4004, size: 64, offset: 1408)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !256, file: !59, line: 1018, baseType: !223, size: 64, offset: 1472)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !256, file: !59, line: 1020, baseType: !194, size: 64, offset: 1536)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !256, file: !59, line: 1023, baseType: !194, size: 64, offset: 1600)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !256, file: !59, line: 1027, baseType: !4189, size: 64, offset: 1664)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !256, file: !59, line: 1029, baseType: !1061, size: 64, offset: 1728)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !256, file: !59, line: 1030, baseType: !1733, size: 32, offset: 1792)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !256, file: !59, line: 1031, baseType: !1733, size: 32, offset: 1824)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !235, file: !88, line: 314, baseType: !4194, size: 1536, offset: 192)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4195, line: 52, size: 1536, elements: !4196)
!4195 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4196 = !{!4197, !4198, !4230, !4231}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4194, file: !4195, line: 53, baseType: !352, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !4194, file: !4195, line: 54, baseType: !4199, size: 1344, offset: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !174, line: 157, size: 1344, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4199, file: !174, line: 159, baseType: !195, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4199, file: !174, line: 161, baseType: !223, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4199, file: !174, line: 163, baseType: !223, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4199, file: !174, line: 165, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !174, line: 190, size: 1920, elements: !4207)
!4207 = !{!4208, !4215, !4216, !4217, !4218, !4219, !4220}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4206, file: !174, line: 200, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !4212, !195, !4214, !4214}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4206, file: !174, line: 206, baseType: !339, size: 128, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4206, file: !174, line: 209, baseType: !4199, size: 1344, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4206, file: !174, line: 211, baseType: !1070, size: 128, offset: 1536)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4206, file: !174, line: 212, baseType: !1070, size: 128, offset: 1664)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4206, file: !174, line: 213, baseType: !1073, size: 64, offset: 1792)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4206, file: !174, line: 215, baseType: !195, size: 64, offset: 1856)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4199, file: !174, line: 166, baseType: !339, size: 128, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4199, file: !174, line: 167, baseType: !339, size: 128, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4199, file: !174, line: 168, baseType: !473, size: 192, align: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4199, file: !174, line: 169, baseType: !473, size: 192, align: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4199, file: !174, line: 170, baseType: !473, size: 192, align: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4199, file: !174, line: 171, baseType: !223, size: 64, offset: 1088)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4199, file: !174, line: 172, baseType: !223, size: 64, offset: 1152)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4199, file: !174, line: 173, baseType: !223, size: 64, offset: 1216)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4199, file: !174, line: 174, baseType: !195, size: 64, offset: 1280)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !4194, file: !4195, line: 55, baseType: !1073, size: 64, offset: 1408)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !4194, file: !4195, line: 56, baseType: !194, size: 64, offset: 1472)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !88, line: 322, baseType: !206, size: 64, offset: 1728)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !88, line: 331, baseType: !126, size: 32, offset: 1792)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !235, file: !88, line: 344, baseType: !4235, size: 64, offset: 1856)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !88, line: 121, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !235, file: !88, line: 364, baseType: !4238, size: 64, offset: 1920)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !88, line: 364, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !235, file: !88, line: 373, baseType: !4241, size: 64, offset: 1984)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !4243, line: 155, size: 384, elements: !4244)
!4243 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!4244 = !{!4245, !4259}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4242, file: !4243, line: 166, baseType: !4246, size: 320)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4247, line: 47, size: 320, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4248 = !{!4249, !4250}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4246, file: !4247, line: 48, baseType: !327, size: 256)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4246, file: !4247, line: 49, baseType: !4251, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4247, line: 55, size: 192, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4252, file: !4247, line: 56, baseType: !2649, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4252, file: !4247, line: 57, baseType: !195, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4252, file: !4247, line: 58, baseType: !7, size: 32, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4252, file: !4247, line: 59, baseType: !312, size: 16, offset: 160)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4252, file: !4247, line: 60, baseType: !312, size: 16, offset: 176)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4242, file: !4243, line: 178, baseType: !4260, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !4243, line: 50, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !235, file: !88, line: 382, baseType: !4242, size: 384, offset: 2048)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !235, file: !88, line: 398, baseType: !4264, size: 128, offset: 2432)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !88, line: 392, size: 128, elements: !4265)
!4265 = !{!4266}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4264, file: !88, line: 393, baseType: !339, size: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !235, file: !88, line: 409, baseType: !4268, size: 64, offset: 2560)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !88, line: 69, size: 896, elements: !4271)
!4271 = !{!4272, !4277, !4283, !4287, !4324, !4328, !4332, !4333, !4339, !4353, !4357, !4361, !4362, !4366}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4270, file: !88, line: 77, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4270, file: !88, line: 86, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!126, !4276, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4195, line: 44, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4270, file: !88, line: 95, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !4276, !4281}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !4270, file: !88, line: 110, baseType: !4288, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !4291, !7, !4322}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4293, line: 76, size: 256, elements: !4294)
!4293 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4294 = !{!4295, !4316, !4320, !4321}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4292, file: !4293, line: 78, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !4291, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4301, line: 79, size: 128, elements: !4302)
!4301 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4302 = !{!4303, !4304}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4300, file: !4301, line: 80, baseType: !541, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4300, file: !4301, line: 81, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4307, line: 5, baseType: !4308)
!4307 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4309)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4310, size: 192, elements: !2881)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4310, file: !3, baseType: !7, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4310, file: !3, baseType: !7, size: 32, offset: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4310, file: !3, baseType: !194, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4310, file: !3, baseType: !194, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4292, file: !4293, line: 79, baseType: !4317, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{null, !4291, !541}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4292, file: !4293, line: 80, baseType: !194, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4292, file: !4293, line: 81, baseType: !541, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !4270, file: !88, line: 121, baseType: !4325, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!4235, !4276, !126}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4270, file: !88, line: 130, baseType: !4329, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!126, !4276}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !4270, file: !88, line: 139, baseType: !4273, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !4270, file: !88, line: 153, baseType: !4334, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4337, !4276}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !202, line: 49, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !4270, file: !88, line: 163, baseType: !4340, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!126, !4276, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !4345, line: 109, size: 128, elements: !4346)
!4345 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!4346 = !{!4347, !4352}
!4347 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !4345, line: 110, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4344, file: !4345, line: 110, size: 64, elements: !4349)
!4349 = !{!4350, !4351}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !4348, file: !4345, line: 111, baseType: !194, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4348, file: !4345, line: 112, baseType: !194, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4344, file: !4345, line: 114, baseType: !227, size: 8, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !4270, file: !88, line: 173, baseType: !4354, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4276, !4343}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4270, file: !88, line: 186, baseType: !4358, size: 64, offset: 640)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!126, !4276, !1208}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !4270, file: !88, line: 196, baseType: !4329, size: 64, offset: 704)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4270, file: !88, line: 209, baseType: !4363, size: 64, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!87, !4276}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4270, file: !88, line: 218, baseType: !1419, size: 64, offset: 832)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !235, file: !88, line: 416, baseType: !339, size: 128, offset: 2624)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !235, file: !88, line: 423, baseType: !4369, size: 64, offset: 2752)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !88, line: 230, size: 256, elements: !4371)
!4371 = !{!4372, !4374, !4375}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4370, file: !88, line: 238, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4370, file: !88, line: 246, baseType: !817, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4370, file: !88, line: 253, baseType: !339, size: 128, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !232, file: !93, line: 104, baseType: !4377, size: 64, offset: 2816)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !4379, line: 215, size: 16960, elements: !4380)
!4379 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!4380 = !{!4381, !4382, !4466, !4551, !4553, !4559, !5032, !5033, !5034, !5035}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4378, file: !4379, line: 220, baseType: !339, size: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4378, file: !4379, line: 226, baseType: !4383, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !4379, line: 61, size: 896, elements: !4386)
!4386 = !{!4387, !4394, !4409, !4413, !4414, !4427, !4438, !4444, !4448, !4449, !4453, !4457, !4461, !4465}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !4385, file: !4379, line: 73, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!4391, !231, !211}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !4393, line: 35, flags: DIFlagFwdDecl)
!4393 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !4385, file: !4379, line: 85, baseType: !4395, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!126, !4377, !4391, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !93, line: 178, size: 192, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4399, file: !93, line: 179, baseType: !227, size: 8)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !4399, file: !93, line: 180, baseType: !227, size: 8, offset: 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !4399, file: !93, line: 181, baseType: !227, size: 8, offset: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !4399, file: !93, line: 182, baseType: !227, size: 8, offset: 24)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !4399, file: !93, line: 183, baseType: !227, size: 8, offset: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4399, file: !93, line: 184, baseType: !4241, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !4399, file: !93, line: 185, baseType: !4408, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !193, line: 113, baseType: !223)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !4385, file: !4379, line: 96, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4377, !4391}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !4385, file: !4379, line: 108, baseType: !4410, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !4385, file: !4379, line: 119, baseType: !4415, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!227, !231, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !4421, line: 77, size: 128, elements: !4422)
!4421 = !DIFile(filename: "./include/drm/ttm/ttm_placement.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f863dfb010ab9adca021a04ffe4a884")
!4422 = !{!4423, !4424, !4425, !4426}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fpfn", scope: !4420, file: !4421, line: 78, baseType: !7, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lpfn", scope: !4420, file: !4421, line: 79, baseType: !7, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4420, file: !4421, line: 80, baseType: !211, size: 32, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4420, file: !4421, line: 81, baseType: !211, size: 32, offset: 96)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !4385, file: !4379, line: 133, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !231, !4431}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !4421, line: 94, size: 256, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "num_placement", scope: !4432, file: !4421, line: 95, baseType: !7, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4432, file: !4421, line: 96, baseType: !4418, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "num_busy_placement", scope: !4432, file: !4421, line: 97, baseType: !7, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "busy_placement", scope: !4432, file: !4421, line: 98, baseType: !4418, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4385, file: !4379, line: 149, baseType: !4439, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!126, !231, !227, !4398, !4442, !4443}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !4385, file: !4379, line: 157, baseType: !4445, size: 64, offset: 448)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !231}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !4385, file: !4379, line: 162, baseType: !4445, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !4385, file: !4379, line: 170, baseType: !4450, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!126, !4377, !4442}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !4385, file: !4379, line: 172, baseType: !4454, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !4377, !4442}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !4385, file: !4379, line: 181, baseType: !4458, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!195, !231, !195}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !4385, file: !4379, line: 198, baseType: !4462, size: 64, offset: 768)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!126, !231, !195, !194, !126, !126}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !4385, file: !4379, line: 209, baseType: !4445, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !4378, file: !4379, line: 232, baseType: !4467, size: 960, offset: 192)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !202, line: 151, size: 960, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4497, !4498, !4548, !4550}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !4467, file: !202, line: 155, baseType: !227, size: 8)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !4467, file: !202, line: 156, baseType: !227, size: 8, offset: 8)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4467, file: !202, line: 157, baseType: !4377, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4467, file: !202, line: 158, baseType: !4408, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4467, file: !202, line: 159, baseType: !4474, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4476)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !202, line: 52, size: 320, elements: !4477)
!4477 = !{!4478, !4484, !4488, !4492, !4493}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4476, file: !202, line: 74, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!126, !4482, !231, !4418, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4476, file: !202, line: 88, baseType: !4485, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4482, !4442}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !4476, file: !202, line: 102, baseType: !4489, size: 64, offset: 128)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!227, !4482, !4442, !4418, !206}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4476, file: !202, line: 118, baseType: !4489, size: 64, offset: 192)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !4476, file: !202, line: 133, baseType: !4494, size: 64, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !4482, !4291}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !4467, file: !202, line: 160, baseType: !278, size: 32, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !4467, file: !202, line: 165, baseType: !4499, size: 64, offset: 320)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !4501, line: 65, size: 512, elements: !4502)
!4501 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!4502 = !{!4503, !4504, !4537, !4543, !4544, !4545, !4546, !4547}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4500, file: !4501, line: 66, baseType: !1519, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4500, file: !4501, line: 67, baseType: !4505, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4507)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !4501, line: 125, size: 640, elements: !4508)
!4508 = !{!4509, !4510, !4514, !4515, !4519, !4520, !4524, !4528, !4532, !4533}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !4507, file: !4501, line: 132, baseType: !227, size: 8)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !4507, file: !4501, line: 143, baseType: !4511, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!541, !4499}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !4507, file: !4501, line: 155, baseType: !4511, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !4507, file: !4501, line: 192, baseType: !4516, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!227, !4499}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !4507, file: !4501, line: 209, baseType: !4516, size: 64, offset: 256)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4507, file: !4501, line: 227, baseType: !4521, size: 64, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!817, !4499, !227, !817}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4507, file: !4501, line: 238, baseType: !4525, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !4499}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !4507, file: !4501, line: 248, baseType: !4529, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{null, !4499, !551, !126}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !4507, file: !4501, line: 258, baseType: !4529, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !4507, file: !4501, line: 279, baseType: !4534, size: 64, offset: 576)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !4499, !2768}
!4537 = !DIDerivedType(tag: DW_TAG_member, scope: !4500, file: !4501, line: 84, baseType: !4538, size: 128, offset: 128)
!4538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4500, file: !4501, line: 84, size: 128, elements: !4539)
!4539 = !{!4540, !4541, !4542}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4538, file: !4501, line: 85, baseType: !339, size: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4538, file: !4501, line: 87, baseType: !2768, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4538, file: !4501, line: 89, baseType: !268, size: 128, align: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4500, file: !4501, line: 91, baseType: !223, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !4500, file: !4501, line: 92, baseType: !223, size: 64, offset: 320)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4500, file: !4501, line: 93, baseType: !195, size: 64, offset: 384)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4500, file: !4501, line: 94, baseType: !238, size: 32, offset: 448)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4500, file: !4501, line: 95, baseType: !126, size: 32, offset: 480)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4467, file: !202, line: 170, baseType: !4549, size: 512, offset: 384)
!4549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 512, elements: !392)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4467, file: !202, line: 176, baseType: !4408, size: 64, offset: 896)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !4378, file: !4379, line: 237, baseType: !4552, size: 512, offset: 1152)
!4552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 512, elements: !2803)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !4378, file: !4379, line: 242, baseType: !4554, size: 64, offset: 1664)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4195, line: 59, size: 1984, elements: !4556)
!4556 = !{!4557, !4558}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4555, file: !4195, line: 60, baseType: !352, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4555, file: !4195, line: 61, baseType: !4206, size: 1920, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4378, file: !4379, line: 247, baseType: !4560, size: 14912, offset: 1728)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !4393, line: 69, size: 14912, elements: !4561)
!4561 = !{!4562, !5012, !5013, !5014, !5015}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4560, file: !4393, line: 70, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !111, line: 705, size: 5824, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4571, !4572, !4625, !4695, !4696, !4697, !4698, !4699, !4706, !4798, !4811, !4821, !4825, !4826, !4827, !4828, !4832, !4839, !4840, !4843, !4846, !4850, !4954, !4955, !4956, !4957, !4958, !4959, !4989, !4990, !4991, !4994, !4997, !5006, !5007, !5008, !5009, !5010, !5011}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4564, file: !111, line: 706, baseType: !957, size: 512)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4564, file: !111, line: 707, baseType: !4563, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4564, file: !111, line: 709, baseType: !4569, size: 64, offset: 576)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !111, line: 37, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4564, file: !111, line: 711, baseType: !541, size: 64, offset: 640)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4564, file: !111, line: 712, baseType: !4573, size: 64, offset: 704)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !111, line: 89, size: 384, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4585, !4590, !4594}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4575, file: !111, line: 90, baseType: !541, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4575, file: !111, line: 91, baseType: !1037, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4575, file: !111, line: 92, baseType: !4580, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!126, !4583, !993}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4564)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4575, file: !111, line: 93, baseType: !4586, size: 64, offset: 192)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!551, !4583, !4589, !1787, !1788}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4575, file: !111, line: 95, baseType: !4591, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4563}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4575, file: !111, line: 97, baseType: !4595, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !118, line: 286, size: 1472, elements: !4598)
!4598 = !{!4599, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4597, file: !118, line: 287, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!126, !4563}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4597, file: !118, line: 288, baseType: !4591, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4597, file: !118, line: 289, baseType: !4600, size: 64, offset: 128)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4597, file: !118, line: 290, baseType: !4600, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4597, file: !118, line: 291, baseType: !4600, size: 64, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4597, file: !118, line: 292, baseType: !4600, size: 64, offset: 320)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4597, file: !118, line: 293, baseType: !4600, size: 64, offset: 384)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4597, file: !118, line: 294, baseType: !4600, size: 64, offset: 448)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4597, file: !118, line: 295, baseType: !4600, size: 64, offset: 512)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4597, file: !118, line: 296, baseType: !4600, size: 64, offset: 576)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4597, file: !118, line: 297, baseType: !4600, size: 64, offset: 640)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4597, file: !118, line: 298, baseType: !4600, size: 64, offset: 704)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4597, file: !118, line: 299, baseType: !4600, size: 64, offset: 768)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4597, file: !118, line: 300, baseType: !4600, size: 64, offset: 832)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4597, file: !118, line: 301, baseType: !4600, size: 64, offset: 896)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4597, file: !118, line: 302, baseType: !4600, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4597, file: !118, line: 303, baseType: !4600, size: 64, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4597, file: !118, line: 304, baseType: !4600, size: 64, offset: 1088)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4597, file: !118, line: 305, baseType: !4600, size: 64, offset: 1152)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4597, file: !118, line: 306, baseType: !4600, size: 64, offset: 1216)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4597, file: !118, line: 307, baseType: !4600, size: 64, offset: 1280)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4597, file: !118, line: 308, baseType: !4600, size: 64, offset: 1344)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4597, file: !118, line: 309, baseType: !4600, size: 64, offset: 1408)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4564, file: !111, line: 714, baseType: !4626, size: 64, offset: 768)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4629, line: 80, size: 1344, elements: !4630)
!4629 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4636, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4694}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4628, file: !4629, line: 81, baseType: !541, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4628, file: !4629, line: 82, baseType: !541, size: 64, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4628, file: !4629, line: 83, baseType: !1037, size: 64, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4628, file: !4629, line: 84, baseType: !1037, size: 64, offset: 192)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4628, file: !4629, line: 85, baseType: !1037, size: 64, offset: 256)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4628, file: !4629, line: 87, baseType: !4637, size: 64, offset: 320)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!126, !4563, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !105, line: 96, size: 1152, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4653, !4657, !4658, !4659, !4660, !4661, !4669, !4670, !4671, !4672, !4673, !4674}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4641, file: !105, line: 97, baseType: !541, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4641, file: !105, line: 98, baseType: !4626, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4641, file: !105, line: 100, baseType: !944, size: 64, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4641, file: !105, line: 101, baseType: !541, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4641, file: !105, line: 103, baseType: !227, size: 8, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4641, file: !105, line: 104, baseType: !104, size: 32, offset: 288)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4641, file: !105, line: 106, baseType: !4650, size: 64, offset: 320)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4652)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !105, line: 106, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4641, file: !105, line: 107, baseType: !4654, size: 64, offset: 384)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !105, line: 107, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4641, file: !105, line: 109, baseType: !4600, size: 64, offset: 448)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4641, file: !105, line: 110, baseType: !4591, size: 64, offset: 512)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4641, file: !105, line: 111, baseType: !4600, size: 64, offset: 576)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4641, file: !105, line: 112, baseType: !4591, size: 64, offset: 640)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4641, file: !105, line: 113, baseType: !4662, size: 64, offset: 704)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!126, !4563, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !118, line: 60, baseType: !4666)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !118, line: 58, size: 32, elements: !4667)
!4667 = !{!4668}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4666, file: !118, line: 59, baseType: !126, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4641, file: !105, line: 114, baseType: !4600, size: 64, offset: 768)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4641, file: !105, line: 115, baseType: !1037, size: 64, offset: 832)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4641, file: !105, line: 116, baseType: !1037, size: 64, offset: 896)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4641, file: !105, line: 118, baseType: !4595, size: 64, offset: 960)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4641, file: !105, line: 119, baseType: !4591, size: 64, offset: 1024)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4641, file: !105, line: 121, baseType: !4675, size: 64, offset: 1088)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !105, line: 121, flags: DIFlagFwdDecl)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4628, file: !4629, line: 88, baseType: !4580, size: 64, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4628, file: !4629, line: 89, baseType: !4600, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4628, file: !4629, line: 90, baseType: !4591, size: 64, offset: 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4628, file: !4629, line: 91, baseType: !4591, size: 64, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4628, file: !4629, line: 92, baseType: !4591, size: 64, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4628, file: !4629, line: 94, baseType: !4600, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4628, file: !4629, line: 95, baseType: !4600, size: 64, offset: 768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4628, file: !4629, line: 97, baseType: !4662, size: 64, offset: 832)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4628, file: !4629, line: 98, baseType: !4600, size: 64, offset: 896)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4628, file: !4629, line: 100, baseType: !4600, size: 64, offset: 960)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4628, file: !4629, line: 102, baseType: !4600, size: 64, offset: 1024)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4628, file: !4629, line: 103, baseType: !4591, size: 64, offset: 1088)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4628, file: !4629, line: 105, baseType: !4595, size: 64, offset: 1152)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4628, file: !4629, line: 107, baseType: !4691, size: 64, offset: 1216)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4693)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4629, line: 107, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4628, file: !4629, line: 109, baseType: !227, size: 8, offset: 1280)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4564, file: !111, line: 715, baseType: !4640, size: 64, offset: 832)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4564, file: !111, line: 717, baseType: !194, size: 64, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4564, file: !111, line: 719, baseType: !194, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4564, file: !111, line: 721, baseType: !327, size: 256, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4564, file: !111, line: 725, baseType: !4700, size: 448, offset: 1280)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !111, line: 517, size: 448, elements: !4701)
!4701 = !{!4702, !4703, !4704, !4705}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4700, file: !111, line: 518, baseType: !339, size: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4700, file: !111, line: 519, baseType: !339, size: 128, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4700, file: !111, line: 520, baseType: !339, size: 128, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4700, file: !111, line: 521, baseType: !110, size: 32, offset: 384)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4564, file: !111, line: 726, baseType: !4707, size: 2496, offset: 1728)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !118, line: 663, size: 2496, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4791, !4795}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4707, file: !118, line: 664, baseType: !4665, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4707, file: !118, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4707, file: !118, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4707, file: !118, line: 667, baseType: !227, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4707, file: !118, line: 668, baseType: !227, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4707, file: !118, line: 669, baseType: !227, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4707, file: !118, line: 670, baseType: !227, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4707, file: !118, line: 671, baseType: !227, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4707, file: !118, line: 672, baseType: !227, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4707, file: !118, line: 673, baseType: !227, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4707, file: !118, line: 674, baseType: !227, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4707, file: !118, line: 675, baseType: !212, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4707, file: !118, line: 676, baseType: !278, size: 32, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4707, file: !118, line: 678, baseType: !339, size: 128, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4707, file: !118, line: 679, baseType: !1173, size: 256, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4707, file: !118, line: 680, baseType: !4725, size: 64, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4727, line: 43, size: 1536, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4726, file: !4727, line: 44, baseType: !541, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4726, file: !4727, line: 45, baseType: !126, size: 32, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4726, file: !4727, line: 46, baseType: !339, size: 128, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4726, file: !4727, line: 47, baseType: !278, size: 32, offset: 256)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4726, file: !4727, line: 48, baseType: !4734, size: 64, offset: 320)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !118, line: 629, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4726, file: !4727, line: 49, baseType: !2173, size: 320, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4726, file: !4727, line: 50, baseType: !195, size: 64, offset: 704)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4726, file: !4727, line: 51, baseType: !2768, size: 64, offset: 768)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4726, file: !4727, line: 52, baseType: !2768, size: 64, offset: 832)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4726, file: !4727, line: 53, baseType: !2768, size: 64, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4726, file: !4727, line: 54, baseType: !2768, size: 64, offset: 960)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4726, file: !4727, line: 55, baseType: !2768, size: 64, offset: 1024)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4726, file: !4727, line: 56, baseType: !195, size: 64, offset: 1088)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4726, file: !4727, line: 57, baseType: !195, size: 64, offset: 1152)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4726, file: !4727, line: 58, baseType: !195, size: 64, offset: 1216)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4726, file: !4727, line: 59, baseType: !195, size: 64, offset: 1280)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4726, file: !4727, line: 60, baseType: !195, size: 64, offset: 1344)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4726, file: !4727, line: 61, baseType: !4563, size: 64, offset: 1408)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4726, file: !4727, line: 62, baseType: !227, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4726, file: !4727, line: 63, baseType: !227, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4707, file: !118, line: 681, baseType: !227, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4707, file: !118, line: 682, baseType: !227, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4707, file: !118, line: 683, baseType: !227, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4707, file: !118, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4707, file: !118, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4707, file: !118, line: 690, baseType: !2760, size: 512, offset: 640)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4707, file: !118, line: 691, baseType: !223, size: 64, offset: 1152)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4707, file: !118, line: 692, baseType: !1376, size: 256, offset: 1216)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4707, file: !118, line: 693, baseType: !396, size: 192, offset: 1472)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4707, file: !118, line: 694, baseType: !4734, size: 64, offset: 1664)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4707, file: !118, line: 695, baseType: !246, size: 32, offset: 1728)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4707, file: !118, line: 696, baseType: !246, size: 32, offset: 1760)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4707, file: !118, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4707, file: !118, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4707, file: !118, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4707, file: !118, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4707, file: !118, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4707, file: !118, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4707, file: !118, line: 703, baseType: !227, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4707, file: !118, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4707, file: !118, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4707, file: !118, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4707, file: !118, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4707, file: !118, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4707, file: !118, line: 709, baseType: !7, size: 32, offset: 1824)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4707, file: !118, line: 710, baseType: !117, size: 32, offset: 1856)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4707, file: !118, line: 711, baseType: !125, size: 32, offset: 1888)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4707, file: !118, line: 712, baseType: !125, size: 32, offset: 1920)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4707, file: !118, line: 713, baseType: !126, size: 32, offset: 1952)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4707, file: !118, line: 714, baseType: !126, size: 32, offset: 1984)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4707, file: !118, line: 715, baseType: !223, size: 64, offset: 2048)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4707, file: !118, line: 716, baseType: !223, size: 64, offset: 2112)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4707, file: !118, line: 717, baseType: !223, size: 64, offset: 2176)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4707, file: !118, line: 718, baseType: !223, size: 64, offset: 2240)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4707, file: !118, line: 720, baseType: !4786, size: 64, offset: 2304)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !118, line: 632, size: 64, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4787, file: !118, line: 633, baseType: !278, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4787, file: !118, line: 634, baseType: !7, size: 32, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4707, file: !118, line: 721, baseType: !4792, size: 64, offset: 2368)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !4563, !466}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4707, file: !118, line: 722, baseType: !4796, size: 64, offset: 2432)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !118, line: 722, flags: DIFlagFwdDecl)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4564, file: !111, line: 727, baseType: !4799, size: 64, offset: 4224)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !118, line: 742, size: 1792, elements: !4801)
!4801 = !{!4802, !4803, !4804, !4808, !4809, !4810}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4800, file: !118, line: 743, baseType: !4597, size: 1472)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4800, file: !118, line: 744, baseType: !4600, size: 64, offset: 1472)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4800, file: !118, line: 745, baseType: !4805, size: 64, offset: 1536)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !4563, !227}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4800, file: !118, line: 746, baseType: !4600, size: 64, offset: 1600)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4800, file: !118, line: 747, baseType: !4591, size: 64, offset: 1664)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4800, file: !118, line: 748, baseType: !4591, size: 64, offset: 1728)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4564, file: !111, line: 736, baseType: !4812, size: 128, offset: 4288)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !111, line: 529, size: 128, elements: !4813)
!4813 = !{!4814, !4818}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4812, file: !111, line: 531, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4817, line: 13, flags: DIFlagFwdDecl)
!4817 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4812, file: !111, line: 532, baseType: !4819, size: 64, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !111, line: 49, flags: DIFlagFwdDecl)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4564, file: !111, line: 738, baseType: !4822, size: 64, offset: 4416)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4824)
!4824 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !111, line: 738, flags: DIFlagFwdDecl)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4564, file: !111, line: 740, baseType: !4214, size: 64, offset: 4480)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4564, file: !111, line: 741, baseType: !223, size: 64, offset: 4544)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4564, file: !111, line: 746, baseType: !223, size: 64, offset: 4608)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4564, file: !111, line: 747, baseType: !4829, size: 64, offset: 4672)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4831)
!4831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !111, line: 747, flags: DIFlagFwdDecl)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4564, file: !111, line: 749, baseType: !4833, size: 64, offset: 4736)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !111, line: 428, size: 128, elements: !4835)
!4835 = !{!4836, !4837, !4838}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4834, file: !111, line: 433, baseType: !7, size: 32)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4834, file: !111, line: 434, baseType: !7, size: 32, offset: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4834, file: !111, line: 435, baseType: !195, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4564, file: !111, line: 751, baseType: !339, size: 128, offset: 4800)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4564, file: !111, line: 762, baseType: !4841, size: 64, offset: 4928)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !111, line: 762, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4564, file: !111, line: 770, baseType: !4844, offset: 4992)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4845, line: 5, elements: !1242)
!4845 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4564, file: !111, line: 772, baseType: !4847, size: 64, offset: 4992)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4849, line: 18, flags: DIFlagFwdDecl)
!4849 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4564, file: !111, line: 773, baseType: !4851, size: 64, offset: 5056)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4853, line: 41, size: 512, elements: !4854)
!4853 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4854 = !{!4855, !4856, !4950, !4951, !4952, !4953}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4852, file: !4853, line: 42, baseType: !4851, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4852, file: !4853, line: 43, baseType: !4857, size: 64, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4853, line: 125, size: 1408, elements: !4860)
!4860 = !{!4861, !4865, !4869, !4875, !4879, !4880, !4885, !4889, !4893, !4897, !4901, !4902, !4906, !4910, !4914, !4925, !4926, !4927, !4928, !4938, !4942, !4946}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4859, file: !4853, line: 126, baseType: !4862, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!4851, !4851}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4859, file: !4853, line: 127, baseType: !4866, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !4851}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4859, file: !4853, line: 128, baseType: !4870, size: 64, offset: 128)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!227, !4873}
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4859, file: !4853, line: 129, baseType: !4876, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!1337, !4873, !4583}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4859, file: !4853, line: 131, baseType: !4870, size: 64, offset: 256)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4859, file: !4853, line: 133, baseType: !4881, size: 64, offset: 320)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!4884, !4873}
!4884 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4853, line: 132, flags: DIFlagFwdDecl)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4859, file: !4853, line: 134, baseType: !4886, size: 64, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!227, !4873, !541}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4859, file: !4853, line: 136, baseType: !4890, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!126, !4873, !541, !7, !194, !206}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4859, file: !4853, line: 141, baseType: !4894, size: 64, offset: 512)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!126, !4873, !541, !2250, !206}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4859, file: !4853, line: 144, baseType: !4898, size: 64, offset: 576)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!541, !4873}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4859, file: !4853, line: 145, baseType: !4898, size: 64, offset: 640)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4859, file: !4853, line: 146, baseType: !4903, size: 64, offset: 704)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!4851, !4873}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4859, file: !4853, line: 148, baseType: !4907, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!4851, !4873, !4851}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4859, file: !4853, line: 151, baseType: !4911, size: 64, offset: 832)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!4851, !4873, !541}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4859, file: !4853, line: 153, baseType: !4915, size: 64, offset: 896)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!126, !4873, !541, !541, !7, !7, !4918}
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4853, line: 94, size: 640, elements: !4920)
!4920 = !{!4921, !4922, !4923}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4919, file: !4853, line: 95, baseType: !4851, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4919, file: !4853, line: 96, baseType: !7, size: 32, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4919, file: !4853, line: 97, baseType: !4924, size: 512, offset: 128)
!4924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !2803)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4859, file: !4853, line: 158, baseType: !4907, size: 64, offset: 960)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4859, file: !4853, line: 161, baseType: !4903, size: 64, offset: 1024)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4859, file: !4853, line: 163, baseType: !4862, size: 64, offset: 1088)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4859, file: !4853, line: 164, baseType: !4929, size: 64, offset: 1152)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!126, !4873, !4932}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4853, line: 73, size: 128, elements: !4934)
!4934 = !{!4935, !4936, !4937}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4933, file: !4853, line: 74, baseType: !7, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4933, file: !4853, line: 75, baseType: !7, size: 32, offset: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4933, file: !4853, line: 76, baseType: !4873, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4859, file: !4853, line: 166, baseType: !4939, size: 64, offset: 1216)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!194, !4851, !126}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4859, file: !4853, line: 167, baseType: !4943, size: 64, offset: 1280)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!126, !4873, !7}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4859, file: !4853, line: 168, baseType: !4947, size: 64, offset: 1344)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!126, !4851}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4852, file: !4853, line: 44, baseType: !4563, size: 64, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4852, file: !4853, line: 45, baseType: !339, size: 128, offset: 192)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4852, file: !4853, line: 46, baseType: !339, size: 128, offset: 320)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4852, file: !4853, line: 47, baseType: !302, size: 8, offset: 448)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4564, file: !111, line: 776, baseType: !126, size: 32, offset: 5120)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4564, file: !111, line: 778, baseType: !777, size: 32, offset: 5152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4564, file: !111, line: 779, baseType: !212, size: 32, offset: 5184)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4564, file: !111, line: 781, baseType: !278, size: 32, offset: 5216)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4564, file: !111, line: 782, baseType: !339, size: 128, offset: 5248)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4564, file: !111, line: 784, baseType: !4960, size: 64, offset: 5376)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4962)
!4962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4963, line: 52, size: 768, elements: !4964)
!4963 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4973, !4977, !4978, !4979, !4980, !4984, !4988}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4962, file: !4963, line: 53, baseType: !541, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4962, file: !4963, line: 55, baseType: !1037, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4962, file: !4963, line: 56, baseType: !1037, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4962, file: !4963, line: 58, baseType: !4580, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4962, file: !4963, line: 59, baseType: !4970, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!551, !4583, !4589}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4962, file: !4963, line: 61, baseType: !4974, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{null, !4960}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4962, file: !4963, line: 62, baseType: !4591, size: 64, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4962, file: !4963, line: 64, baseType: !4600, size: 64, offset: 448)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4962, file: !4963, line: 66, baseType: !1755, size: 64, offset: 512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4962, file: !4963, line: 67, baseType: !4981, size: 64, offset: 576)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!1337, !4583}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4962, file: !4963, line: 69, baseType: !4985, size: 64, offset: 640)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{null, !4583, !1787, !1788}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4962, file: !4963, line: 71, baseType: !4595, size: 64, offset: 704)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4564, file: !111, line: 785, baseType: !1037, size: 64, offset: 5440)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4564, file: !111, line: 787, baseType: !4591, size: 64, offset: 5504)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4564, file: !111, line: 788, baseType: !4992, size: 64, offset: 5568)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !111, line: 46, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4564, file: !111, line: 789, baseType: !4995, size: 64, offset: 5632)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !111, line: 48, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4564, file: !111, line: 791, baseType: !4998, size: 64, offset: 5696)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !111, line: 597, size: 128, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5004, !5005}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4999, file: !111, line: 598, baseType: !133, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4999, file: !111, line: 599, baseType: !142, size: 32, offset: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4999, file: !111, line: 600, baseType: !147, size: 32, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4999, file: !111, line: 601, baseType: !227, size: 8, offset: 96)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4999, file: !111, line: 602, baseType: !227, size: 8, offset: 104)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4564, file: !111, line: 793, baseType: !152, size: 32, offset: 5760)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4564, file: !111, line: 795, baseType: !227, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4564, file: !111, line: 796, baseType: !227, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4564, file: !111, line: 797, baseType: !227, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4564, file: !111, line: 798, baseType: !227, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4564, file: !111, line: 799, baseType: !227, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4560, file: !4393, line: 71, baseType: !126, size: 32, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !4560, file: !4393, line: 73, baseType: !227, size: 8, offset: 96)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !4560, file: !4393, line: 74, baseType: !227, size: 8, offset: 104)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4560, file: !4393, line: 78, baseType: !5016, size: 14784, offset: 128)
!5016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5017, size: 14784, elements: !371)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4560, file: !4393, line: 76, size: 4928, elements: !5018)
!5018 = !{!5019}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !5017, file: !4393, line: 77, baseType: !5020, size: 4928)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5021, size: 4928, elements: !5030)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !4393, line: 49, size: 448, elements: !5022)
!5022 = !{!5023, !5025, !5026, !5027, !5028, !5029}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5021, file: !4393, line: 50, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5021, file: !4393, line: 51, baseType: !7, size: 32, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5021, file: !4393, line: 52, baseType: !98, size: 32, offset: 96)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !5021, file: !4393, line: 54, baseType: !339, size: 128, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5021, file: !4393, line: 56, baseType: !278, size: 32, offset: 256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5021, file: !4393, line: 57, baseType: !339, size: 128, offset: 320)
!5030 = !{!5031}
!5031 = !DISubrange(count: 11)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !4378, file: !4379, line: 252, baseType: !278, size: 32, offset: 16640)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4378, file: !4379, line: 257, baseType: !339, size: 128, offset: 16704)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !4378, file: !4379, line: 263, baseType: !1061, size: 64, offset: 16832)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4378, file: !4379, line: 268, baseType: !2235, size: 64, offset: 16896)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !93, line: 105, baseType: !92, size: 32, offset: 2880)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !232, file: !93, line: 106, baseType: !211, size: 32, offset: 2912)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !232, file: !93, line: 107, baseType: !4445, size: 64, offset: 2944)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !232, file: !93, line: 112, baseType: !238, size: 32, offset: 3008)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !232, file: !93, line: 117, baseType: !4442, size: 64, offset: 3072)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !232, file: !93, line: 118, baseType: !4391, size: 64, offset: 3136)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !232, file: !93, line: 119, baseType: !227, size: 8, offset: 3200)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !232, file: !93, line: 120, baseType: !5044, size: 64, offset: 3264)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !202, line: 255, size: 4096, elements: !5046)
!5046 = !{!5047}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5045, file: !202, line: 256, baseType: !5048, size: 4096)
!5048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5049, size: 4096, elements: !5053)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !202, line: 242, size: 128, elements: !5050)
!5050 = !{!5051, !5052}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5049, file: !202, line: 243, baseType: !4442, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5049, file: !202, line: 244, baseType: !4442, size: 64, offset: 64)
!5053 = !{!2804, !393}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !232, file: !93, line: 121, baseType: !7, size: 32, offset: 3328)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !232, file: !93, line: 122, baseType: !7, size: 32, offset: 3360)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !232, file: !93, line: 128, baseType: !1376, size: 256, offset: 3392)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !232, file: !93, line: 135, baseType: !4337, size: 64, offset: 3648)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !201, file: !202, line: 220, baseType: !339, size: 128, offset: 448)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_nodes", scope: !197, file: !198, line: 21, baseType: !5060, offset: 576)
!5060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4199, elements: !411)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5063)
!5063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !342)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_range_manager", file: !3, line: 46, size: 2944, elements: !5066)
!5066 = !{!5067, !5068, !5069}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !5065, file: !3, line: 47, baseType: !4467, size: 960)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5065, file: !3, line: 48, baseType: !4206, size: 1920, offset: 960)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5065, file: !3, line: 49, baseType: !278, size: 32, offset: 2880)
!5070 = !{!5071, !5073, !5075, !0, !5080}
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_range_man_init_nocheck298", scope: !2, file: !3, line: 203, type: !194, isLocal: true, isDefinition: true)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ttm_range_man_fini_nocheck299", scope: !2, file: !3, line: 240, type: !194, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(scope: null, file: !164, line: 480, type: !5077, isLocal: true, isDefinition: true)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 168, elements: !5078)
!5078 = !{!5079}
!5079 = !DISubrange(count: 21)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(scope: null, file: !202, line: 313, type: !5082, isLocal: true, isDefinition: true)
!5082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 248, elements: !5083)
!5083 = !{!5084}
!5084 = !DISubrange(count: 31)
!5085 = !{i32 7, !"Dwarf Version", i32 5}
!5086 = !{i32 2, !"Debug Info Version", i32 3}
!5087 = !{i32 1, !"wchar_size", i32 2}
!5088 = !{i32 8, !"cf-protection-branch", i32 1}
!5089 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5090 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5091 = !{i32 1, !"Code Model", i32 2}
!5092 = !{i32 1, !"override-stack-alignment", i32 8}
!5093 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5094 = distinct !DISubprogram(name: "ttm_range_man_init_nocheck", scope: !3, file: !3, line: 178, type: !5095, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!126, !4377, !7, !227, !195}
!5097 = !{!5098, !5099, !5100, !5101, !5102, !5103}
!5098 = !DILocalVariable(name: "bdev", arg: 1, scope: !5094, file: !3, line: 178, type: !4377)
!5099 = !DILocalVariable(name: "type", arg: 2, scope: !5094, file: !3, line: 179, type: !7)
!5100 = !DILocalVariable(name: "use_tt", arg: 3, scope: !5094, file: !3, line: 179, type: !227)
!5101 = !DILocalVariable(name: "p_size", arg: 4, scope: !5094, file: !3, line: 180, type: !195)
!5102 = !DILocalVariable(name: "man", scope: !5094, file: !3, line: 182, type: !4482)
!5103 = !DILocalVariable(name: "rman", scope: !5094, file: !3, line: 183, type: !5064)
!5104 = !DILocation(line: 178, column: 51, scope: !5094)
!5105 = !DILocation(line: 179, column: 19, scope: !5094)
!5106 = !DILocation(line: 179, column: 30, scope: !5094)
!5107 = !DILocation(line: 180, column: 24, scope: !5094)
!5108 = !DILocation(line: 182, column: 2, scope: !5094)
!5109 = !DILocation(line: 182, column: 31, scope: !5094)
!5110 = !DILocation(line: 183, column: 2, scope: !5094)
!5111 = !DILocation(line: 183, column: 28, scope: !5094)
!5112 = !DILocation(line: 185, column: 9, scope: !5094)
!5113 = !DILocation(line: 185, column: 7, scope: !5094)
!5114 = !DILocation(line: 186, column: 7, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 186, column: 6)
!5116 = !DILocation(line: 186, column: 6, scope: !5094)
!5117 = !DILocation(line: 187, column: 3, scope: !5115)
!5118 = !DILocation(line: 189, column: 9, scope: !5094)
!5119 = !DILocation(line: 189, column: 15, scope: !5094)
!5120 = !DILocation(line: 189, column: 6, scope: !5094)
!5121 = !DILocation(line: 190, column: 16, scope: !5094)
!5122 = !{i8 0, i8 2}
!5123 = !DILocation(line: 190, column: 2, scope: !5094)
!5124 = !DILocation(line: 190, column: 7, scope: !5094)
!5125 = !DILocation(line: 190, column: 14, scope: !5094)
!5126 = !DILocation(line: 192, column: 2, scope: !5094)
!5127 = !DILocation(line: 192, column: 7, scope: !5094)
!5128 = !DILocation(line: 192, column: 12, scope: !5094)
!5129 = !DILocation(line: 194, column: 28, scope: !5094)
!5130 = !DILocation(line: 194, column: 33, scope: !5094)
!5131 = !DILocation(line: 194, column: 39, scope: !5094)
!5132 = !DILocation(line: 194, column: 2, scope: !5094)
!5133 = !DILocation(line: 196, column: 15, scope: !5094)
!5134 = !DILocation(line: 196, column: 21, scope: !5094)
!5135 = !DILocation(line: 196, column: 28, scope: !5094)
!5136 = !DILocation(line: 196, column: 2, scope: !5094)
!5137 = !DILocation(line: 197, column: 2, scope: !5094)
!5138 = !DILocation(line: 197, column: 2, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 197, column: 2)
!5140 = !DILocation(line: 199, column: 25, scope: !5094)
!5141 = !DILocation(line: 199, column: 31, scope: !5094)
!5142 = !DILocation(line: 199, column: 38, scope: !5094)
!5143 = !DILocation(line: 199, column: 44, scope: !5094)
!5144 = !DILocation(line: 199, column: 2, scope: !5094)
!5145 = !DILocation(line: 200, column: 32, scope: !5094)
!5146 = !DILocation(line: 200, column: 2, scope: !5094)
!5147 = !DILocation(line: 201, column: 2, scope: !5094)
!5148 = !DILocation(line: 202, column: 1, scope: !5094)
!5149 = distinct !DISubprogram(name: "kzalloc", scope: !164, file: !164, line: 719, type: !5150, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!194, !206, !192}
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "size", arg: 1, scope: !5149, file: !164, line: 719, type: !206)
!5154 = !DILocalVariable(name: "flags", arg: 2, scope: !5149, file: !164, line: 719, type: !192)
!5155 = !DILocation(line: 719, column: 52, scope: !5149)
!5156 = !DILocation(line: 719, column: 64, scope: !5149)
!5157 = !DILocation(line: 721, column: 17, scope: !5149)
!5158 = !DILocation(line: 721, column: 23, scope: !5149)
!5159 = !DILocation(line: 721, column: 29, scope: !5149)
!5160 = !DILocation(line: 721, column: 9, scope: !5149)
!5161 = !DILocation(line: 721, column: 2, scope: !5149)
!5162 = !DISubprogram(name: "ttm_resource_manager_init", scope: !202, file: !202, line: 377, type: !5163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !4482, !4377, !4408}
!5165 = !DISubprogram(name: "drm_mm_init", scope: !174, file: !174, line: 467, type: !5166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{null, !4205, !223, !223}
!5168 = distinct !DISubprogram(name: "spinlock_check", scope: !5169, file: !5169, line: 324, type: !5170, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5169 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!5172, !1519}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!5173 = !{!5174}
!5174 = !DILocalVariable(name: "lock", arg: 1, scope: !5168, file: !5169, line: 324, type: !1519)
!5175 = !DILocation(line: 324, column: 67, scope: !5168)
!5176 = !DILocation(line: 326, column: 10, scope: !5168)
!5177 = !DILocation(line: 326, column: 16, scope: !5168)
!5178 = !DILocation(line: 326, column: 2, scope: !5168)
!5179 = distinct !DISubprogram(name: "ttm_set_driver_manager", scope: !4379, file: !4379, line: 283, type: !5180, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5182)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{null, !4377, !126, !4482}
!5182 = !{!5183, !5184, !5185}
!5183 = !DILocalVariable(name: "bdev", arg: 1, scope: !5179, file: !4379, line: 283, type: !4377)
!5184 = !DILocalVariable(name: "type", arg: 2, scope: !5179, file: !4379, line: 283, type: !126)
!5185 = !DILocalVariable(name: "manager", arg: 3, scope: !5179, file: !4379, line: 284, type: !4482)
!5186 = !DILocation(line: 283, column: 62, scope: !5179)
!5187 = !DILocation(line: 283, column: 72, scope: !5179)
!5188 = !DILocation(line: 284, column: 37, scope: !5179)
!5189 = !DILocation(line: 286, column: 2, scope: !5179)
!5190 = !DILocation(line: 286, column: 2, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !4379, line: 286, column: 2)
!5192 = distinct !DILexicalBlock(scope: !5179, file: !4379, line: 286, column: 2)
!5193 = !DILocation(line: 286, column: 2, scope: !5192)
!5194 = !{i32 -2140694918}
!5195 = !DILocation(line: 287, column: 24, scope: !5179)
!5196 = !DILocation(line: 287, column: 2, scope: !5179)
!5197 = !DILocation(line: 287, column: 8, scope: !5179)
!5198 = !DILocation(line: 287, column: 16, scope: !5179)
!5199 = !DILocation(line: 287, column: 22, scope: !5179)
!5200 = !DILocation(line: 288, column: 1, scope: !5179)
!5201 = distinct !DISubprogram(name: "ttm_resource_manager_set_used", scope: !202, file: !202, line: 308, type: !5202, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{null, !4482, !227}
!5204 = !{!5205, !5206, !5207, !5208, !5212}
!5205 = !DILocalVariable(name: "man", arg: 1, scope: !5201, file: !202, line: 308, type: !4482)
!5206 = !DILocalVariable(name: "used", arg: 2, scope: !5201, file: !202, line: 308, type: !227)
!5207 = !DILocalVariable(name: "i", scope: !5201, file: !202, line: 310, type: !126)
!5208 = !DILocalVariable(name: "__ret_warn_on", scope: !5209, file: !202, line: 313, type: !126)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !202, line: 313, column: 3)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !202, line: 312, column: 2)
!5211 = distinct !DILexicalBlock(scope: !5201, file: !202, line: 312, column: 2)
!5212 = !DILocalVariable(name: "__flags", scope: !5213, file: !202, line: 313, type: !126)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !202, line: 313, column: 3)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !202, line: 313, column: 3)
!5215 = !DILocation(line: 308, column: 60, scope: !5201)
!5216 = !DILocation(line: 308, column: 70, scope: !5201)
!5217 = !DILocation(line: 310, column: 2, scope: !5201)
!5218 = !DILocation(line: 310, column: 6, scope: !5201)
!5219 = !DILocation(line: 312, column: 9, scope: !5211)
!5220 = !DILocation(line: 312, column: 7, scope: !5211)
!5221 = !DILocation(line: 312, column: 14, scope: !5210)
!5222 = !DILocation(line: 312, column: 16, scope: !5210)
!5223 = !DILocation(line: 312, column: 2, scope: !5211)
!5224 = !DILocation(line: 313, column: 3, scope: !5209)
!5225 = !DILocation(line: 313, column: 3, scope: !5214)
!5226 = !DILocation(line: 313, column: 3, scope: !5213)
!5227 = !DILocation(line: 313, column: 3, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5213, file: !202, line: 313, column: 3)
!5229 = !DILocation(line: 313, column: 3, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5213, file: !202, line: 313, column: 3)
!5231 = !{i64 2154264744, i64 2154264773, i64 2154264819, i64 2154264877, i64 2154264931, i64 2154264985, i64 2154265040, i64 2154265071, i64 2154265379, i64 2154265385, i64 2154265432, i64 2154265455, i64 2154265481}
!5232 = !DILocation(line: 313, column: 3, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5213, file: !202, line: 313, column: 3)
!5234 = !DILocation(line: 313, column: 3, scope: !5210)
!5235 = !DILocation(line: 312, column: 40, scope: !5210)
!5236 = !DILocation(line: 312, column: 2, scope: !5210)
!5237 = distinct !{!5237, !5223, !5238, !5239, !5240}
!5238 = !DILocation(line: 313, column: 3, scope: !5211)
!5239 = !{!"llvm.loop.mustprogress"}
!5240 = !{!"llvm.loop.unroll.disable"}
!5241 = !DILocation(line: 314, column: 18, scope: !5201)
!5242 = !DILocation(line: 314, column: 2, scope: !5201)
!5243 = !DILocation(line: 314, column: 7, scope: !5201)
!5244 = !DILocation(line: 314, column: 16, scope: !5201)
!5245 = !DILocation(line: 315, column: 1, scope: !5201)
!5246 = distinct !DISubprogram(name: "ttm_range_man_fini_nocheck", scope: !3, file: !3, line: 214, type: !5247, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5249)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!126, !4377, !7}
!5249 = !{!5250, !5251, !5252, !5253, !5254, !5255}
!5250 = !DILocalVariable(name: "bdev", arg: 1, scope: !5246, file: !3, line: 214, type: !4377)
!5251 = !DILocalVariable(name: "type", arg: 2, scope: !5246, file: !3, line: 215, type: !7)
!5252 = !DILocalVariable(name: "man", scope: !5246, file: !3, line: 217, type: !4482)
!5253 = !DILocalVariable(name: "rman", scope: !5246, file: !3, line: 218, type: !5064)
!5254 = !DILocalVariable(name: "mm", scope: !5246, file: !3, line: 219, type: !4205)
!5255 = !DILocalVariable(name: "ret", scope: !5246, file: !3, line: 220, type: !126)
!5256 = !DILocation(line: 214, column: 51, scope: !5246)
!5257 = !DILocation(line: 215, column: 19, scope: !5246)
!5258 = !DILocation(line: 217, column: 2, scope: !5246)
!5259 = !DILocation(line: 217, column: 31, scope: !5246)
!5260 = !DILocation(line: 217, column: 54, scope: !5246)
!5261 = !DILocation(line: 217, column: 60, scope: !5246)
!5262 = !DILocation(line: 217, column: 37, scope: !5246)
!5263 = !DILocation(line: 218, column: 2, scope: !5246)
!5264 = !DILocation(line: 218, column: 28, scope: !5246)
!5265 = !DILocation(line: 218, column: 52, scope: !5246)
!5266 = !DILocation(line: 218, column: 35, scope: !5246)
!5267 = !DILocation(line: 219, column: 2, scope: !5246)
!5268 = !DILocation(line: 219, column: 17, scope: !5246)
!5269 = !DILocation(line: 219, column: 23, scope: !5246)
!5270 = !DILocation(line: 219, column: 29, scope: !5246)
!5271 = !DILocation(line: 220, column: 2, scope: !5246)
!5272 = !DILocation(line: 220, column: 6, scope: !5246)
!5273 = !DILocation(line: 222, column: 7, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 222, column: 6)
!5275 = !DILocation(line: 222, column: 6, scope: !5246)
!5276 = !DILocation(line: 223, column: 3, scope: !5274)
!5277 = !DILocation(line: 225, column: 32, scope: !5246)
!5278 = !DILocation(line: 225, column: 2, scope: !5246)
!5279 = !DILocation(line: 227, column: 39, scope: !5246)
!5280 = !DILocation(line: 227, column: 45, scope: !5246)
!5281 = !DILocation(line: 227, column: 8, scope: !5246)
!5282 = !DILocation(line: 227, column: 6, scope: !5246)
!5283 = !DILocation(line: 228, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 228, column: 6)
!5285 = !DILocation(line: 228, column: 6, scope: !5246)
!5286 = !DILocation(line: 229, column: 10, scope: !5284)
!5287 = !DILocation(line: 229, column: 3, scope: !5284)
!5288 = !DILocation(line: 231, column: 13, scope: !5246)
!5289 = !DILocation(line: 231, column: 19, scope: !5246)
!5290 = !DILocation(line: 231, column: 2, scope: !5246)
!5291 = !DILocation(line: 232, column: 18, scope: !5246)
!5292 = !DILocation(line: 232, column: 2, scope: !5246)
!5293 = !DILocation(line: 233, column: 15, scope: !5246)
!5294 = !DILocation(line: 233, column: 21, scope: !5246)
!5295 = !DILocation(line: 233, column: 2, scope: !5246)
!5296 = !DILocation(line: 235, column: 31, scope: !5246)
!5297 = !DILocation(line: 235, column: 2, scope: !5246)
!5298 = !DILocation(line: 236, column: 25, scope: !5246)
!5299 = !DILocation(line: 236, column: 31, scope: !5246)
!5300 = !DILocation(line: 236, column: 2, scope: !5246)
!5301 = !DILocation(line: 237, column: 8, scope: !5246)
!5302 = !DILocation(line: 237, column: 2, scope: !5246)
!5303 = !DILocation(line: 238, column: 2, scope: !5246)
!5304 = !DILocation(line: 239, column: 1, scope: !5246)
!5305 = distinct !DISubprogram(name: "ttm_manager_type", scope: !4379, file: !4379, line: 276, type: !5306, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5308)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!4482, !4377, !126}
!5308 = !{!5309, !5310}
!5309 = !DILocalVariable(name: "bdev", arg: 1, scope: !5305, file: !4379, line: 276, type: !4377)
!5310 = !DILocalVariable(name: "mem_type", arg: 2, scope: !5305, file: !4379, line: 276, type: !126)
!5311 = !DILocation(line: 276, column: 37, scope: !5305)
!5312 = !DILocation(line: 276, column: 47, scope: !5305)
!5313 = !DILocation(line: 278, column: 2, scope: !5305)
!5314 = !DILocation(line: 278, column: 2, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !4379, line: 278, column: 2)
!5316 = distinct !DILexicalBlock(scope: !5305, file: !4379, line: 278, column: 2)
!5317 = !DILocation(line: 278, column: 2, scope: !5316)
!5318 = !{i32 -2140696543}
!5319 = !DILocation(line: 280, column: 9, scope: !5305)
!5320 = !DILocation(line: 280, column: 15, scope: !5305)
!5321 = !DILocation(line: 280, column: 23, scope: !5305)
!5322 = !DILocation(line: 280, column: 2, scope: !5305)
!5323 = distinct !DISubprogram(name: "to_range_manager", scope: !3, file: !3, line: 53, type: !5324, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!5064, !4482}
!5326 = !{!5327, !5328}
!5327 = !DILocalVariable(name: "man", arg: 1, scope: !5323, file: !3, line: 53, type: !4482)
!5328 = !DILocalVariable(name: "__mptr", scope: !5329, file: !3, line: 55, type: !194)
!5329 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 55, column: 9)
!5330 = !DILocation(line: 53, column: 47, scope: !5323)
!5331 = !DILocation(line: 55, column: 9, scope: !5329)
!5332 = !DILocation(line: 55, column: 9, scope: !5323)
!5333 = !DILocation(line: 55, column: 2, scope: !5323)
!5334 = !DISubprogram(name: "ttm_resource_manager_evict_all", scope: !202, file: !202, line: 381, type: !5335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!126, !4377, !4482}
!5337 = distinct !DISubprogram(name: "spin_lock", scope: !5169, file: !5169, line: 349, type: !5338, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5340)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{null, !1519}
!5340 = !{!5341}
!5341 = !DILocalVariable(name: "lock", arg: 1, scope: !5337, file: !5169, line: 349, type: !1519)
!5342 = !DILocation(line: 349, column: 51, scope: !5337)
!5343 = !DILocation(line: 351, column: 2, scope: !5337)
!5344 = !DILocation(line: 352, column: 1, scope: !5337)
!5345 = !DISubprogram(name: "drm_mm_takedown", scope: !174, file: !174, line: 468, type: !5346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !4205}
!5348 = distinct !DISubprogram(name: "spin_unlock", scope: !5169, file: !5169, line: 389, type: !5338, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5349)
!5349 = !{!5350}
!5350 = !DILocalVariable(name: "lock", arg: 1, scope: !5348, file: !5169, line: 389, type: !1519)
!5351 = !DILocation(line: 389, column: 53, scope: !5348)
!5352 = !DILocation(line: 391, column: 2, scope: !5348)
!5353 = !DILocation(line: 392, column: 1, scope: !5348)
!5354 = distinct !DISubprogram(name: "ttm_resource_manager_cleanup", scope: !202, file: !202, line: 339, type: !5355, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !4482}
!5357 = !{!5358}
!5358 = !DILocalVariable(name: "man", arg: 1, scope: !5354, file: !202, line: 339, type: !4482)
!5359 = !DILocation(line: 339, column: 59, scope: !5354)
!5360 = !DILocation(line: 341, column: 16, scope: !5354)
!5361 = !DILocation(line: 341, column: 21, scope: !5354)
!5362 = !DILocation(line: 341, column: 2, scope: !5354)
!5363 = !DILocation(line: 342, column: 2, scope: !5354)
!5364 = !DILocation(line: 342, column: 7, scope: !5354)
!5365 = !DILocation(line: 342, column: 12, scope: !5354)
!5366 = !DILocation(line: 343, column: 1, scope: !5354)
!5367 = !DISubprogram(name: "kfree", scope: !164, file: !164, line: 227, type: !5368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !1337}
!5370 = distinct !DISubprogram(name: "kmalloc", scope: !164, file: !164, line: 591, type: !5150, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5371 = !{!5372, !5373, !5374}
!5372 = !DILocalVariable(name: "size", arg: 1, scope: !5370, file: !164, line: 591, type: !206)
!5373 = !DILocalVariable(name: "flags", arg: 2, scope: !5370, file: !164, line: 591, type: !192)
!5374 = !DILocalVariable(name: "index", scope: !5375, file: !164, line: 594, type: !7)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !164, line: 593, column: 42)
!5376 = distinct !DILexicalBlock(scope: !5370, file: !164, line: 593, column: 6)
!5377 = !DILocation(line: 591, column: 61, scope: !5370)
!5378 = !DILocation(line: 591, column: 73, scope: !5370)
!5379 = !DILocation(line: 593, column: 27, scope: !5376)
!5380 = !DILocation(line: 593, column: 6, scope: !5376)
!5381 = !DILocation(line: 593, column: 33, scope: !5376)
!5382 = !DILocation(line: 593, column: 36, scope: !5376)
!5383 = !DILocation(line: 593, column: 6, scope: !5370)
!5384 = !DILocation(line: 594, column: 3, scope: !5375)
!5385 = !DILocation(line: 594, column: 16, scope: !5375)
!5386 = !DILocation(line: 596, column: 7, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5375, file: !164, line: 596, column: 7)
!5388 = !DILocation(line: 596, column: 12, scope: !5387)
!5389 = !DILocation(line: 596, column: 7, scope: !5375)
!5390 = !DILocation(line: 597, column: 25, scope: !5387)
!5391 = !DILocation(line: 597, column: 31, scope: !5387)
!5392 = !DILocation(line: 597, column: 11, scope: !5387)
!5393 = !DILocation(line: 597, column: 4, scope: !5387)
!5394 = !DILocation(line: 599, column: 11, scope: !5375)
!5395 = !DILocation(line: 599, column: 9, scope: !5375)
!5396 = !DILocation(line: 601, column: 33, scope: !5375)
!5397 = !DILocation(line: 601, column: 40, scope: !5375)
!5398 = !DILocation(line: 601, column: 20, scope: !5375)
!5399 = !DILocation(line: 601, column: 5, scope: !5375)
!5400 = !DILocation(line: 601, column: 51, scope: !5375)
!5401 = !DILocation(line: 602, column: 5, scope: !5375)
!5402 = !DILocation(line: 602, column: 12, scope: !5375)
!5403 = !DILocation(line: 600, column: 10, scope: !5375)
!5404 = !DILocation(line: 600, column: 3, scope: !5375)
!5405 = !DILocation(line: 603, column: 2, scope: !5376)
!5406 = !DILocation(line: 604, column: 19, scope: !5370)
!5407 = !DILocation(line: 604, column: 25, scope: !5370)
!5408 = !DILocation(line: 604, column: 9, scope: !5370)
!5409 = !DILocation(line: 604, column: 2, scope: !5370)
!5410 = !DILocation(line: 605, column: 1, scope: !5370)
!5411 = !DISubprogram(name: "kmalloc_large", scope: !164, file: !164, line: 531, type: !5150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5412 = distinct !DISubprogram(name: "__kmalloc_index", scope: !164, file: !164, line: 444, type: !5413, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!7, !206, !227}
!5415 = !{!5416, !5417}
!5416 = !DILocalVariable(name: "size", arg: 1, scope: !5412, file: !164, line: 444, type: !206)
!5417 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5412, file: !164, line: 445, type: !227)
!5418 = !DILocation(line: 444, column: 60, scope: !5412)
!5419 = !DILocation(line: 445, column: 16, scope: !5412)
!5420 = !DILocation(line: 447, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 447, column: 6)
!5422 = !DILocation(line: 447, column: 6, scope: !5412)
!5423 = !DILocation(line: 448, column: 3, scope: !5421)
!5424 = !DILocation(line: 450, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 450, column: 6)
!5426 = !DILocation(line: 450, column: 11, scope: !5425)
!5427 = !DILocation(line: 450, column: 6, scope: !5412)
!5428 = !DILocation(line: 451, column: 3, scope: !5425)
!5429 = !DILocation(line: 453, column: 32, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 453, column: 6)
!5431 = !DILocation(line: 453, column: 37, scope: !5430)
!5432 = !DILocation(line: 453, column: 42, scope: !5430)
!5433 = !DILocation(line: 453, column: 45, scope: !5430)
!5434 = !DILocation(line: 453, column: 50, scope: !5430)
!5435 = !DILocation(line: 453, column: 6, scope: !5412)
!5436 = !DILocation(line: 454, column: 3, scope: !5430)
!5437 = !DILocation(line: 455, column: 32, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 455, column: 6)
!5439 = !DILocation(line: 455, column: 37, scope: !5438)
!5440 = !DILocation(line: 455, column: 43, scope: !5438)
!5441 = !DILocation(line: 455, column: 46, scope: !5438)
!5442 = !DILocation(line: 455, column: 51, scope: !5438)
!5443 = !DILocation(line: 455, column: 6, scope: !5412)
!5444 = !DILocation(line: 456, column: 3, scope: !5438)
!5445 = !DILocation(line: 457, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 457, column: 6)
!5447 = !DILocation(line: 457, column: 11, scope: !5446)
!5448 = !DILocation(line: 457, column: 6, scope: !5412)
!5449 = !DILocation(line: 457, column: 26, scope: !5446)
!5450 = !DILocation(line: 458, column: 6, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 458, column: 6)
!5452 = !DILocation(line: 458, column: 11, scope: !5451)
!5453 = !DILocation(line: 458, column: 6, scope: !5412)
!5454 = !DILocation(line: 458, column: 26, scope: !5451)
!5455 = !DILocation(line: 459, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 459, column: 6)
!5457 = !DILocation(line: 459, column: 11, scope: !5456)
!5458 = !DILocation(line: 459, column: 6, scope: !5412)
!5459 = !DILocation(line: 459, column: 26, scope: !5456)
!5460 = !DILocation(line: 460, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 460, column: 6)
!5462 = !DILocation(line: 460, column: 11, scope: !5461)
!5463 = !DILocation(line: 460, column: 6, scope: !5412)
!5464 = !DILocation(line: 460, column: 26, scope: !5461)
!5465 = !DILocation(line: 461, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 461, column: 6)
!5467 = !DILocation(line: 461, column: 11, scope: !5466)
!5468 = !DILocation(line: 461, column: 6, scope: !5412)
!5469 = !DILocation(line: 461, column: 26, scope: !5466)
!5470 = !DILocation(line: 462, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 462, column: 6)
!5472 = !DILocation(line: 462, column: 11, scope: !5471)
!5473 = !DILocation(line: 462, column: 6, scope: !5412)
!5474 = !DILocation(line: 462, column: 26, scope: !5471)
!5475 = !DILocation(line: 463, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 463, column: 6)
!5477 = !DILocation(line: 463, column: 11, scope: !5476)
!5478 = !DILocation(line: 463, column: 6, scope: !5412)
!5479 = !DILocation(line: 463, column: 26, scope: !5476)
!5480 = !DILocation(line: 464, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 464, column: 6)
!5482 = !DILocation(line: 464, column: 11, scope: !5481)
!5483 = !DILocation(line: 464, column: 6, scope: !5412)
!5484 = !DILocation(line: 464, column: 26, scope: !5481)
!5485 = !DILocation(line: 465, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 465, column: 6)
!5487 = !DILocation(line: 465, column: 11, scope: !5486)
!5488 = !DILocation(line: 465, column: 6, scope: !5412)
!5489 = !DILocation(line: 465, column: 26, scope: !5486)
!5490 = !DILocation(line: 466, column: 6, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 466, column: 6)
!5492 = !DILocation(line: 466, column: 11, scope: !5491)
!5493 = !DILocation(line: 466, column: 6, scope: !5412)
!5494 = !DILocation(line: 466, column: 26, scope: !5491)
!5495 = !DILocation(line: 467, column: 6, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 467, column: 6)
!5497 = !DILocation(line: 467, column: 11, scope: !5496)
!5498 = !DILocation(line: 467, column: 6, scope: !5412)
!5499 = !DILocation(line: 467, column: 26, scope: !5496)
!5500 = !DILocation(line: 468, column: 6, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 468, column: 6)
!5502 = !DILocation(line: 468, column: 11, scope: !5501)
!5503 = !DILocation(line: 468, column: 6, scope: !5412)
!5504 = !DILocation(line: 468, column: 26, scope: !5501)
!5505 = !DILocation(line: 469, column: 6, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 469, column: 6)
!5507 = !DILocation(line: 469, column: 11, scope: !5506)
!5508 = !DILocation(line: 469, column: 6, scope: !5412)
!5509 = !DILocation(line: 469, column: 26, scope: !5506)
!5510 = !DILocation(line: 470, column: 6, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 470, column: 6)
!5512 = !DILocation(line: 470, column: 11, scope: !5511)
!5513 = !DILocation(line: 470, column: 6, scope: !5412)
!5514 = !DILocation(line: 470, column: 26, scope: !5511)
!5515 = !DILocation(line: 471, column: 6, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 471, column: 6)
!5517 = !DILocation(line: 471, column: 11, scope: !5516)
!5518 = !DILocation(line: 471, column: 6, scope: !5412)
!5519 = !DILocation(line: 471, column: 26, scope: !5516)
!5520 = !DILocation(line: 472, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 472, column: 6)
!5522 = !DILocation(line: 472, column: 11, scope: !5521)
!5523 = !DILocation(line: 472, column: 6, scope: !5412)
!5524 = !DILocation(line: 472, column: 26, scope: !5521)
!5525 = !DILocation(line: 473, column: 6, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 473, column: 6)
!5527 = !DILocation(line: 473, column: 11, scope: !5526)
!5528 = !DILocation(line: 473, column: 6, scope: !5412)
!5529 = !DILocation(line: 473, column: 26, scope: !5526)
!5530 = !DILocation(line: 474, column: 6, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 474, column: 6)
!5532 = !DILocation(line: 474, column: 11, scope: !5531)
!5533 = !DILocation(line: 474, column: 6, scope: !5412)
!5534 = !DILocation(line: 474, column: 27, scope: !5531)
!5535 = !DILocation(line: 475, column: 6, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 475, column: 6)
!5537 = !DILocation(line: 475, column: 11, scope: !5536)
!5538 = !DILocation(line: 475, column: 6, scope: !5412)
!5539 = !DILocation(line: 475, column: 32, scope: !5536)
!5540 = !DILocation(line: 477, column: 50, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5412, file: !164, line: 477, column: 6)
!5542 = !DILocation(line: 477, column: 6, scope: !5412)
!5543 = !DILocation(line: 478, column: 3, scope: !5541)
!5544 = !DILocation(line: 478, column: 3, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !164, line: 478, column: 3)
!5546 = distinct !DILexicalBlock(scope: !5541, file: !164, line: 478, column: 3)
!5547 = !{i32 -2141477968}
!5548 = !DILocation(line: 478, column: 3, scope: !5546)
!5549 = !DILocation(line: 480, column: 3, scope: !5541)
!5550 = !DILocation(line: 480, column: 3, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5541, file: !164, line: 480, column: 3)
!5552 = !DILocation(line: 480, column: 3, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5551, file: !164, line: 480, column: 3)
!5554 = !DILocation(line: 480, column: 3, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5551, file: !164, line: 480, column: 3)
!5556 = !{i64 2153489531, i64 2153489560, i64 2153489606, i64 2153489664, i64 2153489718, i64 2153489772, i64 2153489827, i64 2153489858}
!5557 = !DILocation(line: 483, column: 2, scope: !5412)
!5558 = !DILocation(line: 484, column: 1, scope: !5412)
!5559 = !DISubprogram(name: "kmalloc_trace", scope: !164, file: !164, line: 525, type: !5560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!194, !5562, !192, !206}
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5564, line: 325, flags: DIFlagFwdDecl)
!5564 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5565 = distinct !DISubprogram(name: "kmalloc_type", scope: !164, file: !164, line: 401, type: !5566, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5568)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!163, !192, !195}
!5568 = !{!5569, !5570}
!5569 = !DILocalVariable(name: "flags", arg: 1, scope: !5565, file: !164, line: 401, type: !192)
!5570 = !DILocalVariable(name: "caller", arg: 2, scope: !5565, file: !164, line: 401, type: !195)
!5571 = !DILocation(line: 401, column: 67, scope: !5565)
!5572 = !DILocation(line: 401, column: 88, scope: !5565)
!5573 = !DILocation(line: 407, column: 6, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5565, file: !164, line: 407, column: 6)
!5575 = !DILocation(line: 407, column: 6, scope: !5565)
!5576 = !DILocation(line: 413, column: 3, scope: !5574)
!5577 = !DILocation(line: 423, column: 38, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5565, file: !164, line: 423, column: 6)
!5579 = !DILocation(line: 423, column: 44, scope: !5578)
!5580 = !DILocation(line: 423, column: 6, scope: !5565)
!5581 = !DILocation(line: 424, column: 3, scope: !5578)
!5582 = !DILocation(line: 426, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5565, file: !164, line: 425, column: 6)
!5584 = !DILocation(line: 429, column: 1, scope: !5565)
!5585 = !DISubprogram(name: "__kmalloc", scope: !164, file: !164, line: 488, type: !5150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5586 = !DISubprogram(name: "__compiletime_assert_249", scope: !164, file: !164, line: 478, type: !2278, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5587 = distinct !DISubprogram(name: "ttm_range_man_alloc", scope: !3, file: !3, line: 58, type: !4480, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5588)
!5588 = !{!5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598}
!5589 = !DILocalVariable(name: "man", arg: 1, scope: !5587, file: !3, line: 58, type: !4482)
!5590 = !DILocalVariable(name: "bo", arg: 2, scope: !5587, file: !3, line: 59, type: !231)
!5591 = !DILocalVariable(name: "place", arg: 3, scope: !5587, file: !3, line: 60, type: !4418)
!5592 = !DILocalVariable(name: "res", arg: 4, scope: !5587, file: !3, line: 61, type: !4483)
!5593 = !DILocalVariable(name: "rman", scope: !5587, file: !3, line: 63, type: !5064)
!5594 = !DILocalVariable(name: "node", scope: !5587, file: !3, line: 64, type: !196)
!5595 = !DILocalVariable(name: "mm", scope: !5587, file: !3, line: 65, type: !4205)
!5596 = !DILocalVariable(name: "mode", scope: !5587, file: !3, line: 66, type: !173)
!5597 = !DILocalVariable(name: "lpfn", scope: !5587, file: !3, line: 67, type: !195)
!5598 = !DILocalVariable(name: "ret", scope: !5587, file: !3, line: 68, type: !126)
!5599 = !DILocation(line: 58, column: 61, scope: !5587)
!5600 = !DILocation(line: 59, column: 37, scope: !5587)
!5601 = !DILocation(line: 60, column: 35, scope: !5587)
!5602 = !DILocation(line: 61, column: 33, scope: !5587)
!5603 = !DILocation(line: 63, column: 2, scope: !5587)
!5604 = !DILocation(line: 63, column: 28, scope: !5587)
!5605 = !DILocation(line: 63, column: 52, scope: !5587)
!5606 = !DILocation(line: 63, column: 35, scope: !5587)
!5607 = !DILocation(line: 64, column: 2, scope: !5587)
!5608 = !DILocation(line: 64, column: 29, scope: !5587)
!5609 = !DILocation(line: 65, column: 2, scope: !5587)
!5610 = !DILocation(line: 65, column: 17, scope: !5587)
!5611 = !DILocation(line: 65, column: 23, scope: !5587)
!5612 = !DILocation(line: 65, column: 29, scope: !5587)
!5613 = !DILocation(line: 66, column: 2, scope: !5587)
!5614 = !DILocation(line: 66, column: 26, scope: !5587)
!5615 = !DILocation(line: 67, column: 2, scope: !5587)
!5616 = !DILocation(line: 67, column: 16, scope: !5587)
!5617 = !DILocation(line: 68, column: 2, scope: !5587)
!5618 = !DILocation(line: 68, column: 6, scope: !5587)
!5619 = !DILocation(line: 70, column: 9, scope: !5587)
!5620 = !DILocation(line: 70, column: 16, scope: !5587)
!5621 = !DILocation(line: 70, column: 7, scope: !5587)
!5622 = !DILocation(line: 71, column: 7, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 71, column: 6)
!5624 = !DILocation(line: 71, column: 6, scope: !5587)
!5625 = !DILocation(line: 72, column: 10, scope: !5623)
!5626 = !DILocation(line: 72, column: 15, scope: !5623)
!5627 = !DILocation(line: 72, column: 8, scope: !5623)
!5628 = !DILocation(line: 72, column: 3, scope: !5623)
!5629 = !DILocation(line: 74, column: 9, scope: !5587)
!5630 = !DILocation(line: 74, column: 7, scope: !5587)
!5631 = !DILocation(line: 75, column: 7, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 75, column: 6)
!5633 = !DILocation(line: 75, column: 6, scope: !5587)
!5634 = !DILocation(line: 76, column: 3, scope: !5632)
!5635 = !DILocation(line: 78, column: 7, scope: !5587)
!5636 = !DILocation(line: 79, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 79, column: 6)
!5638 = !DILocation(line: 79, column: 13, scope: !5637)
!5639 = !DILocation(line: 79, column: 19, scope: !5637)
!5640 = !DILocation(line: 79, column: 6, scope: !5587)
!5641 = !DILocation(line: 80, column: 8, scope: !5637)
!5642 = !DILocation(line: 80, column: 3, scope: !5637)
!5643 = !DILocation(line: 82, column: 20, scope: !5587)
!5644 = !DILocation(line: 82, column: 24, scope: !5587)
!5645 = !DILocation(line: 82, column: 32, scope: !5587)
!5646 = !DILocation(line: 82, column: 38, scope: !5587)
!5647 = !DILocation(line: 82, column: 2, scope: !5587)
!5648 = !DILocation(line: 84, column: 13, scope: !5587)
!5649 = !DILocation(line: 84, column: 19, scope: !5587)
!5650 = !DILocation(line: 84, column: 2, scope: !5587)
!5651 = !DILocation(line: 85, column: 36, scope: !5587)
!5652 = !DILocation(line: 85, column: 41, scope: !5587)
!5653 = !DILocation(line: 85, column: 47, scope: !5587)
!5654 = !DILocation(line: 86, column: 8, scope: !5587)
!5655 = !DILocation(line: 87, column: 8, scope: !5587)
!5656 = !DILocation(line: 87, column: 12, scope: !5587)
!5657 = !DILocation(line: 88, column: 8, scope: !5587)
!5658 = !DILocation(line: 88, column: 15, scope: !5587)
!5659 = !DILocation(line: 88, column: 21, scope: !5587)
!5660 = !DILocation(line: 88, column: 27, scope: !5587)
!5661 = !DILocation(line: 85, column: 8, scope: !5587)
!5662 = !DILocation(line: 85, column: 6, scope: !5587)
!5663 = !DILocation(line: 89, column: 15, scope: !5587)
!5664 = !DILocation(line: 89, column: 21, scope: !5587)
!5665 = !DILocation(line: 89, column: 2, scope: !5587)
!5666 = !DILocation(line: 91, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 91, column: 6)
!5668 = !DILocation(line: 91, column: 6, scope: !5587)
!5669 = !DILocation(line: 92, column: 21, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 91, column: 21)
!5671 = !DILocation(line: 92, column: 27, scope: !5670)
!5672 = !DILocation(line: 92, column: 33, scope: !5670)
!5673 = !DILocation(line: 92, column: 3, scope: !5670)
!5674 = !DILocation(line: 93, column: 9, scope: !5670)
!5675 = !DILocation(line: 93, column: 3, scope: !5670)
!5676 = !DILocation(line: 94, column: 10, scope: !5670)
!5677 = !DILocation(line: 94, column: 3, scope: !5670)
!5678 = !DILocation(line: 97, column: 21, scope: !5587)
!5679 = !DILocation(line: 97, column: 27, scope: !5587)
!5680 = !DILocation(line: 97, column: 39, scope: !5587)
!5681 = !DILocation(line: 97, column: 2, scope: !5587)
!5682 = !DILocation(line: 97, column: 8, scope: !5587)
!5683 = !DILocation(line: 97, column: 13, scope: !5587)
!5684 = !DILocation(line: 97, column: 19, scope: !5587)
!5685 = !DILocation(line: 98, column: 10, scope: !5587)
!5686 = !DILocation(line: 98, column: 16, scope: !5587)
!5687 = !DILocation(line: 98, column: 3, scope: !5587)
!5688 = !DILocation(line: 98, column: 7, scope: !5587)
!5689 = !DILocation(line: 99, column: 2, scope: !5587)
!5690 = !DILocation(line: 100, column: 1, scope: !5587)
!5691 = distinct !DISubprogram(name: "ttm_range_man_free", scope: !3, file: !3, line: 102, type: !4486, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5692)
!5692 = !{!5693, !5694, !5695, !5696}
!5693 = !DILocalVariable(name: "man", arg: 1, scope: !5691, file: !3, line: 102, type: !4482)
!5694 = !DILocalVariable(name: "res", arg: 2, scope: !5691, file: !3, line: 103, type: !4442)
!5695 = !DILocalVariable(name: "node", scope: !5691, file: !3, line: 105, type: !196)
!5696 = !DILocalVariable(name: "rman", scope: !5691, file: !3, line: 106, type: !5064)
!5697 = !DILocation(line: 102, column: 61, scope: !5691)
!5698 = !DILocation(line: 103, column: 32, scope: !5691)
!5699 = !DILocation(line: 105, column: 2, scope: !5691)
!5700 = !DILocation(line: 105, column: 29, scope: !5691)
!5701 = !DILocation(line: 105, column: 58, scope: !5691)
!5702 = !DILocation(line: 105, column: 36, scope: !5691)
!5703 = !DILocation(line: 106, column: 2, scope: !5691)
!5704 = !DILocation(line: 106, column: 28, scope: !5691)
!5705 = !DILocation(line: 106, column: 52, scope: !5691)
!5706 = !DILocation(line: 106, column: 35, scope: !5691)
!5707 = !DILocation(line: 108, column: 13, scope: !5691)
!5708 = !DILocation(line: 108, column: 19, scope: !5691)
!5709 = !DILocation(line: 108, column: 2, scope: !5691)
!5710 = !DILocation(line: 109, column: 22, scope: !5691)
!5711 = !DILocation(line: 109, column: 28, scope: !5691)
!5712 = !DILocation(line: 109, column: 2, scope: !5691)
!5713 = !DILocation(line: 110, column: 15, scope: !5691)
!5714 = !DILocation(line: 110, column: 21, scope: !5691)
!5715 = !DILocation(line: 110, column: 2, scope: !5691)
!5716 = !DILocation(line: 112, column: 20, scope: !5691)
!5717 = !DILocation(line: 112, column: 25, scope: !5691)
!5718 = !DILocation(line: 112, column: 2, scope: !5691)
!5719 = !DILocation(line: 113, column: 8, scope: !5691)
!5720 = !DILocation(line: 113, column: 2, scope: !5691)
!5721 = !DILocation(line: 114, column: 1, scope: !5691)
!5722 = distinct !DISubprogram(name: "ttm_range_man_intersects", scope: !3, file: !3, line: 116, type: !4490, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5723 = !{!5724, !5725, !5726, !5727, !5728, !5730}
!5724 = !DILocalVariable(name: "man", arg: 1, scope: !5722, file: !3, line: 116, type: !4482)
!5725 = !DILocalVariable(name: "res", arg: 2, scope: !5722, file: !3, line: 117, type: !4442)
!5726 = !DILocalVariable(name: "place", arg: 3, scope: !5722, file: !3, line: 118, type: !4418)
!5727 = !DILocalVariable(name: "size", arg: 4, scope: !5722, file: !3, line: 119, type: !206)
!5728 = !DILocalVariable(name: "node", scope: !5722, file: !3, line: 121, type: !5729)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!5730 = !DILocalVariable(name: "num_pages", scope: !5722, file: !3, line: 122, type: !212)
!5731 = !DILocation(line: 116, column: 67, scope: !5722)
!5732 = !DILocation(line: 117, column: 31, scope: !5722)
!5733 = !DILocation(line: 118, column: 34, scope: !5722)
!5734 = !DILocation(line: 119, column: 17, scope: !5722)
!5735 = !DILocation(line: 121, column: 2, scope: !5722)
!5736 = !DILocation(line: 121, column: 22, scope: !5722)
!5737 = !DILocation(line: 121, column: 52, scope: !5722)
!5738 = !DILocation(line: 121, column: 30, scope: !5722)
!5739 = !DILocation(line: 121, column: 58, scope: !5722)
!5740 = !DILocation(line: 122, column: 2, scope: !5722)
!5741 = !DILocation(line: 122, column: 6, scope: !5722)
!5742 = !DILocation(line: 122, column: 18, scope: !5722)
!5743 = !DILocation(line: 125, column: 6, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 125, column: 6)
!5745 = !DILocation(line: 125, column: 13, scope: !5744)
!5746 = !DILocation(line: 125, column: 22, scope: !5744)
!5747 = !DILocation(line: 125, column: 28, scope: !5744)
!5748 = !DILocation(line: 125, column: 36, scope: !5744)
!5749 = !DILocation(line: 125, column: 34, scope: !5744)
!5750 = !DILocation(line: 125, column: 18, scope: !5744)
!5751 = !DILocation(line: 125, column: 47, scope: !5744)
!5752 = !DILocation(line: 126, column: 7, scope: !5744)
!5753 = !DILocation(line: 126, column: 14, scope: !5744)
!5754 = !DILocation(line: 126, column: 19, scope: !5744)
!5755 = !DILocation(line: 126, column: 22, scope: !5744)
!5756 = !DILocation(line: 126, column: 29, scope: !5744)
!5757 = !DILocation(line: 126, column: 37, scope: !5744)
!5758 = !DILocation(line: 126, column: 43, scope: !5744)
!5759 = !DILocation(line: 126, column: 34, scope: !5744)
!5760 = !DILocation(line: 125, column: 6, scope: !5722)
!5761 = !DILocation(line: 127, column: 3, scope: !5744)
!5762 = !DILocation(line: 129, column: 2, scope: !5722)
!5763 = !DILocation(line: 130, column: 1, scope: !5722)
!5764 = distinct !DISubprogram(name: "ttm_range_man_compatible", scope: !3, file: !3, line: 132, type: !4490, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5765)
!5765 = !{!5766, !5767, !5768, !5769, !5770, !5771}
!5766 = !DILocalVariable(name: "man", arg: 1, scope: !5764, file: !3, line: 132, type: !4482)
!5767 = !DILocalVariable(name: "res", arg: 2, scope: !5764, file: !3, line: 133, type: !4442)
!5768 = !DILocalVariable(name: "place", arg: 3, scope: !5764, file: !3, line: 134, type: !4418)
!5769 = !DILocalVariable(name: "size", arg: 4, scope: !5764, file: !3, line: 135, type: !206)
!5770 = !DILocalVariable(name: "node", scope: !5764, file: !3, line: 137, type: !5729)
!5771 = !DILocalVariable(name: "num_pages", scope: !5764, file: !3, line: 138, type: !212)
!5772 = !DILocation(line: 132, column: 67, scope: !5764)
!5773 = !DILocation(line: 133, column: 31, scope: !5764)
!5774 = !DILocation(line: 134, column: 34, scope: !5764)
!5775 = !DILocation(line: 135, column: 17, scope: !5764)
!5776 = !DILocation(line: 137, column: 2, scope: !5764)
!5777 = !DILocation(line: 137, column: 22, scope: !5764)
!5778 = !DILocation(line: 137, column: 52, scope: !5764)
!5779 = !DILocation(line: 137, column: 30, scope: !5764)
!5780 = !DILocation(line: 137, column: 58, scope: !5764)
!5781 = !DILocation(line: 138, column: 2, scope: !5764)
!5782 = !DILocation(line: 138, column: 6, scope: !5764)
!5783 = !DILocation(line: 138, column: 18, scope: !5764)
!5784 = !DILocation(line: 140, column: 6, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 140, column: 6)
!5786 = !DILocation(line: 140, column: 12, scope: !5785)
!5787 = !DILocation(line: 140, column: 20, scope: !5785)
!5788 = !DILocation(line: 140, column: 27, scope: !5785)
!5789 = !DILocation(line: 140, column: 18, scope: !5785)
!5790 = !DILocation(line: 140, column: 32, scope: !5785)
!5791 = !DILocation(line: 141, column: 7, scope: !5785)
!5792 = !DILocation(line: 141, column: 14, scope: !5785)
!5793 = !DILocation(line: 141, column: 19, scope: !5785)
!5794 = !DILocation(line: 141, column: 23, scope: !5785)
!5795 = !DILocation(line: 141, column: 29, scope: !5785)
!5796 = !DILocation(line: 141, column: 37, scope: !5785)
!5797 = !DILocation(line: 141, column: 35, scope: !5785)
!5798 = !DILocation(line: 141, column: 50, scope: !5785)
!5799 = !DILocation(line: 141, column: 57, scope: !5785)
!5800 = !DILocation(line: 141, column: 48, scope: !5785)
!5801 = !DILocation(line: 140, column: 6, scope: !5764)
!5802 = !DILocation(line: 142, column: 3, scope: !5785)
!5803 = !DILocation(line: 144, column: 2, scope: !5764)
!5804 = !DILocation(line: 145, column: 1, scope: !5764)
!5805 = distinct !DISubprogram(name: "ttm_range_man_debug", scope: !3, file: !3, line: 147, type: !4495, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5806)
!5806 = !{!5807, !5808, !5809}
!5807 = !DILocalVariable(name: "man", arg: 1, scope: !5805, file: !3, line: 147, type: !4482)
!5808 = !DILocalVariable(name: "printer", arg: 2, scope: !5805, file: !3, line: 148, type: !4291)
!5809 = !DILocalVariable(name: "rman", scope: !5805, file: !3, line: 150, type: !5064)
!5810 = !DILocation(line: 147, column: 62, scope: !5805)
!5811 = !DILocation(line: 148, column: 25, scope: !5805)
!5812 = !DILocation(line: 150, column: 2, scope: !5805)
!5813 = !DILocation(line: 150, column: 28, scope: !5805)
!5814 = !DILocation(line: 150, column: 52, scope: !5805)
!5815 = !DILocation(line: 150, column: 35, scope: !5805)
!5816 = !DILocation(line: 152, column: 13, scope: !5805)
!5817 = !DILocation(line: 152, column: 19, scope: !5805)
!5818 = !DILocation(line: 152, column: 2, scope: !5805)
!5819 = !DILocation(line: 153, column: 16, scope: !5805)
!5820 = !DILocation(line: 153, column: 22, scope: !5805)
!5821 = !DILocation(line: 153, column: 26, scope: !5805)
!5822 = !DILocation(line: 153, column: 2, scope: !5805)
!5823 = !DILocation(line: 154, column: 15, scope: !5805)
!5824 = !DILocation(line: 154, column: 21, scope: !5805)
!5825 = !DILocation(line: 154, column: 2, scope: !5805)
!5826 = !DILocation(line: 155, column: 1, scope: !5805)
!5827 = !DISubprogram(name: "ttm_resource_init", scope: !202, file: !202, line: 354, type: !5828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{null, !231, !4418, !4442}
!5830 = !DISubprogram(name: "drm_mm_insert_node_in_range", scope: !174, file: !174, line: 407, type: !5831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!126, !4205, !5729, !223, !223, !195, !223, !223, !173}
!5833 = !DISubprogram(name: "ttm_resource_fini", scope: !202, file: !202, line: 357, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5834 = distinct !DISubprogram(name: "to_ttm_range_mgr_node", scope: !198, file: !198, line: 32, type: !5835, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!196, !4442}
!5837 = !{!5838, !5839}
!5838 = !DILocalVariable(name: "res", arg: 1, scope: !5834, file: !198, line: 32, type: !4442)
!5839 = !DILocalVariable(name: "__mptr", scope: !5840, file: !198, line: 34, type: !194)
!5840 = distinct !DILexicalBlock(scope: !5834, file: !198, line: 34, column: 9)
!5841 = !DILocation(line: 32, column: 44, scope: !5834)
!5842 = !DILocation(line: 34, column: 9, scope: !5840)
!5843 = !DILocation(line: 34, column: 9, scope: !5834)
!5844 = !DILocation(line: 34, column: 2, scope: !5834)
!5845 = !DISubprogram(name: "drm_mm_remove_node", scope: !174, file: !174, line: 465, type: !5846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{null, !5729}
!5848 = !DISubprogram(name: "drm_mm_print", scope: !174, file: !174, line: 551, type: !5849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{null, !5851, !4291}
!5851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5852, size: 64)
!5852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4206)
!5853 = !DISubprogram(name: "__compiletime_assert_272", scope: !4379, file: !4379, line: 286, type: !2278, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5854 = distinct !DISubprogram(name: "list_empty", scope: !5855, file: !5855, line: 371, type: !5856, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5855 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!126, !5858}
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!5860 = !{!5861}
!5861 = !DILocalVariable(name: "head", arg: 1, scope: !5854, file: !5855, line: 371, type: !5858)
!5862 = !DILocation(line: 371, column: 54, scope: !5854)
!5863 = !DILocation(line: 373, column: 9, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5854, file: !5855, line: 373, column: 9)
!5865 = !DILocation(line: 373, column: 9, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5864, file: !5855, line: 373, column: 9)
!5867 = !DILocation(line: 373, column: 34, scope: !5854)
!5868 = !DILocation(line: 373, column: 31, scope: !5854)
!5869 = !DILocation(line: 373, column: 2, scope: !5854)
!5870 = !DISubprogram(name: "__compiletime_assert_271", scope: !4379, file: !4379, line: 278, type: !2278, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5871 = !DISubprogram(name: "_raw_spin_lock", scope: !5872, file: !5872, line: 22, type: !5873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5872 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5873 = !DISubroutineType(types: !5874)
!5874 = !{null, !5172}
!5875 = !DISubprogram(name: "_raw_spin_unlock", scope: !5872, file: !5872, line: 39, type: !5873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5876 = distinct !DISubprogram(name: "dma_fence_put", scope: !4501, file: !4501, line: 293, type: !4526, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5877 = !{!5878}
!5878 = !DILocalVariable(name: "fence", arg: 1, scope: !5876, file: !4501, line: 293, type: !4499)
!5879 = !DILocation(line: 293, column: 52, scope: !5876)
!5880 = !DILocation(line: 295, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5876, file: !4501, line: 295, column: 6)
!5882 = !DILocation(line: 295, column: 6, scope: !5876)
!5883 = !DILocation(line: 296, column: 13, scope: !5881)
!5884 = !DILocation(line: 296, column: 20, scope: !5881)
!5885 = !DILocation(line: 296, column: 3, scope: !5881)
!5886 = !DILocation(line: 297, column: 1, scope: !5876)
!5887 = distinct !DISubprogram(name: "kref_put", scope: !239, file: !239, line: 62, type: !5888, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!126, !5890, !5891}
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{null, !5890}
!5894 = !{!5895, !5896}
!5895 = !DILocalVariable(name: "kref", arg: 1, scope: !5887, file: !239, line: 62, type: !5890)
!5896 = !DILocalVariable(name: "release", arg: 2, scope: !5887, file: !239, line: 62, type: !5891)
!5897 = !DILocation(line: 62, column: 41, scope: !5887)
!5898 = !DILocation(line: 62, column: 54, scope: !5887)
!5899 = !DILocation(line: 64, column: 29, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5887, file: !239, line: 64, column: 6)
!5901 = !DILocation(line: 64, column: 35, scope: !5900)
!5902 = !DILocation(line: 64, column: 6, scope: !5900)
!5903 = !DILocation(line: 64, column: 6, scope: !5887)
!5904 = !DILocation(line: 65, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5900, file: !239, line: 64, column: 46)
!5906 = !DILocation(line: 65, column: 11, scope: !5905)
!5907 = !DILocation(line: 66, column: 3, scope: !5905)
!5908 = !DILocation(line: 68, column: 2, scope: !5887)
!5909 = !DILocation(line: 69, column: 1, scope: !5887)
!5910 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !184, file: !184, line: 331, type: !5911, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!227, !5913}
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "r", arg: 1, scope: !5910, file: !184, line: 331, type: !5913)
!5916 = !DILocation(line: 331, column: 67, scope: !5910)
!5917 = !DILocation(line: 333, column: 33, scope: !5910)
!5918 = !DILocation(line: 333, column: 9, scope: !5910)
!5919 = !DILocation(line: 333, column: 2, scope: !5910)
!5920 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !184, file: !184, line: 313, type: !5921, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5923)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!227, !5913, !2073}
!5923 = !{!5924, !5925}
!5924 = !DILocalVariable(name: "r", arg: 1, scope: !5920, file: !184, line: 313, type: !5913)
!5925 = !DILocalVariable(name: "oldp", arg: 2, scope: !5920, file: !184, line: 313, type: !2073)
!5926 = !DILocation(line: 313, column: 69, scope: !5920)
!5927 = !DILocation(line: 313, column: 77, scope: !5920)
!5928 = !DILocation(line: 315, column: 36, scope: !5920)
!5929 = !DILocation(line: 315, column: 39, scope: !5920)
!5930 = !DILocation(line: 315, column: 9, scope: !5920)
!5931 = !DILocation(line: 315, column: 2, scope: !5920)
!5932 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !184, file: !184, line: 270, type: !5933, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5935)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!227, !126, !5913, !2073}
!5935 = !{!5936, !5937, !5938, !5939}
!5936 = !DILocalVariable(name: "i", arg: 1, scope: !5932, file: !184, line: 270, type: !126)
!5937 = !DILocalVariable(name: "r", arg: 2, scope: !5932, file: !184, line: 270, type: !5913)
!5938 = !DILocalVariable(name: "oldp", arg: 3, scope: !5932, file: !184, line: 270, type: !2073)
!5939 = !DILocalVariable(name: "old", scope: !5932, file: !184, line: 272, type: !126)
!5940 = !DILocation(line: 270, column: 61, scope: !5932)
!5941 = !DILocation(line: 270, column: 76, scope: !5932)
!5942 = !DILocation(line: 270, column: 84, scope: !5932)
!5943 = !DILocation(line: 272, column: 2, scope: !5932)
!5944 = !DILocation(line: 272, column: 6, scope: !5932)
!5945 = !DILocation(line: 272, column: 37, scope: !5932)
!5946 = !DILocation(line: 272, column: 41, scope: !5932)
!5947 = !DILocation(line: 272, column: 44, scope: !5932)
!5948 = !DILocation(line: 272, column: 12, scope: !5932)
!5949 = !DILocation(line: 274, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5932, file: !184, line: 274, column: 6)
!5951 = !DILocation(line: 274, column: 6, scope: !5932)
!5952 = !DILocation(line: 275, column: 11, scope: !5950)
!5953 = !DILocation(line: 275, column: 4, scope: !5950)
!5954 = !DILocation(line: 275, column: 9, scope: !5950)
!5955 = !DILocation(line: 275, column: 3, scope: !5950)
!5956 = !DILocation(line: 277, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5932, file: !184, line: 277, column: 6)
!5958 = !DILocation(line: 277, column: 13, scope: !5957)
!5959 = !DILocation(line: 277, column: 10, scope: !5957)
!5960 = !DILocation(line: 277, column: 6, scope: !5932)
!5961 = !DILocation(line: 278, column: 3, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5957, file: !184, line: 277, column: 16)
!5963 = !DILocation(line: 278, column: 3, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5962, file: !184, line: 278, column: 3)
!5965 = !DILocation(line: 278, column: 3, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5964, file: !184, line: 278, column: 3)
!5967 = !DILocation(line: 278, column: 3, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5964, file: !184, line: 278, column: 3)
!5969 = !DILocation(line: 278, column: 3, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5968, file: !184, line: 278, column: 3)
!5971 = !{i64 2150255590}
!5972 = !DILocation(line: 279, column: 3, scope: !5962)
!5973 = !DILocation(line: 282, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5932, file: !184, line: 282, column: 6)
!5975 = !DILocation(line: 282, column: 6, scope: !5932)
!5976 = !DILocation(line: 283, column: 26, scope: !5974)
!5977 = !DILocation(line: 283, column: 3, scope: !5974)
!5978 = !DILocation(line: 285, column: 2, scope: !5932)
!5979 = !DILocation(line: 286, column: 1, scope: !5932)
!5980 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5981, file: !5981, line: 397, type: !5982, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5985)
!5981 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!126, !126, !5984}
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!5985 = !{!5986, !5987}
!5986 = !DILocalVariable(name: "i", arg: 1, scope: !5980, file: !5981, line: 397, type: !126)
!5987 = !DILocalVariable(name: "v", arg: 2, scope: !5980, file: !5981, line: 397, type: !5984)
!5988 = !DILocation(line: 397, column: 30, scope: !5980)
!5989 = !DILocation(line: 397, column: 43, scope: !5980)
!5990 = !DILocation(line: 399, column: 2, scope: !5980)
!5991 = !DILocation(line: 399, column: 2, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5980, file: !5981, line: 399, column: 2)
!5993 = !DILocation(line: 400, column: 31, scope: !5980)
!5994 = !DILocation(line: 400, column: 2, scope: !5980)
!5995 = !DILocation(line: 401, column: 38, scope: !5980)
!5996 = !DILocation(line: 401, column: 41, scope: !5980)
!5997 = !DILocation(line: 401, column: 9, scope: !5980)
!5998 = !DILocation(line: 401, column: 2, scope: !5980)
!5999 = !DISubprogram(name: "refcount_warn_saturate", scope: !184, file: !184, line: 127, type: !6000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{null, !5913, !183}
!6002 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6003, file: !6003, line: 94, type: !6004, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6009)
!6003 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6004 = !DISubroutineType(types: !6005)
!6005 = !{null, !6006, !206}
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6008)
!6008 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6009 = !{!6010, !6011}
!6010 = !DILocalVariable(name: "v", arg: 1, scope: !6002, file: !6003, line: 94, type: !6006)
!6011 = !DILocalVariable(name: "size", arg: 2, scope: !6002, file: !6003, line: 94, type: !206)
!6012 = !DILocation(line: 94, column: 79, scope: !6002)
!6013 = !DILocation(line: 94, column: 89, scope: !6002)
!6014 = !DILocation(line: 96, column: 20, scope: !6002)
!6015 = !DILocation(line: 96, column: 23, scope: !6002)
!6016 = !DILocation(line: 96, column: 2, scope: !6002)
!6017 = !DILocation(line: 97, column: 2, scope: !6002)
!6018 = !DILocation(line: 98, column: 1, scope: !6002)
!6019 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6020, file: !6020, line: 928, type: !5982, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6020 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6021 = !{!6022, !6023}
!6022 = !DILocalVariable(name: "i", arg: 1, scope: !6019, file: !6020, line: 928, type: !126)
!6023 = !DILocalVariable(name: "v", arg: 2, scope: !6019, file: !6020, line: 928, type: !5984)
!6024 = !DILocation(line: 928, column: 34, scope: !6019)
!6025 = !DILocation(line: 928, column: 47, scope: !6019)
!6026 = !DILocation(line: 936, column: 31, scope: !6019)
!6027 = !DILocation(line: 936, column: 34, scope: !6019)
!6028 = !DILocation(line: 936, column: 9, scope: !6019)
!6029 = !DILocation(line: 936, column: 2, scope: !6019)
!6030 = distinct !DISubprogram(name: "kasan_check_write", scope: !6031, file: !6031, line: 44, type: !6032, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6034)
!6031 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!227, !6006, !7}
!6034 = !{!6035, !6036}
!6035 = !DILocalVariable(name: "p", arg: 1, scope: !6030, file: !6031, line: 44, type: !6006)
!6036 = !DILocalVariable(name: "size", arg: 2, scope: !6030, file: !6031, line: 44, type: !7)
!6037 = !DILocation(line: 44, column: 59, scope: !6030)
!6038 = !DILocation(line: 44, column: 75, scope: !6030)
!6039 = !DILocation(line: 46, column: 2, scope: !6030)
!6040 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6041, file: !6041, line: 229, type: !6042, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6044)
!6041 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6042 = !DISubroutineType(types: !6043)
!6043 = !{null, !6006, !206, !126}
!6044 = !{!6045, !6046, !6047}
!6045 = !DILocalVariable(name: "ptr", arg: 1, scope: !6040, file: !6041, line: 229, type: !6006)
!6046 = !DILocalVariable(name: "size", arg: 2, scope: !6040, file: !6041, line: 229, type: !206)
!6047 = !DILocalVariable(name: "type", arg: 3, scope: !6040, file: !6041, line: 230, type: !126)
!6048 = !DILocation(line: 229, column: 60, scope: !6040)
!6049 = !DILocation(line: 229, column: 72, scope: !6040)
!6050 = !DILocation(line: 230, column: 15, scope: !6040)
!6051 = !DILocation(line: 230, column: 23, scope: !6040)
!6052 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6053, file: !6053, line: 101, type: !5982, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6054)
!6053 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6054 = !{!6055, !6056, !6057}
!6055 = !DILocalVariable(name: "i", arg: 1, scope: !6052, file: !6053, line: 101, type: !126)
!6056 = !DILocalVariable(name: "v", arg: 2, scope: !6052, file: !6053, line: 101, type: !5984)
!6057 = !DILocalVariable(name: "__ret", scope: !6058, file: !6053, line: 103, type: !126)
!6058 = distinct !DILexicalBlock(scope: !6052, file: !6053, line: 103, column: 9)
!6059 = !DILocation(line: 101, column: 54, scope: !6052)
!6060 = !DILocation(line: 101, column: 67, scope: !6052)
!6061 = !DILocation(line: 103, column: 9, scope: !6058)
!6062 = !{i64 2148807388, i64 2148807427, i64 2148807448, i64 2148807485, i64 2148807508, i64 2148807517}
!6063 = !DILocation(line: 103, column: 9, scope: !6052)
!6064 = !DILocation(line: 103, column: 2, scope: !6052)
