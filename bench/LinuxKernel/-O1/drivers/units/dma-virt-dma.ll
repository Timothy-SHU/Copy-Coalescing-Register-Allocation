; ModuleID = 'drivers/dma/virt-dma.c'
source_filename = "drivers/dma/virt-dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vchan_tx_submit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vchan_tx_submit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vchan_tx_desc_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vchan_tx_desc_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vchan_find_desc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vchan_find_desc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vchan_dma_desc_free_list: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vchan_dma_desc_free_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vchan_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vchan_init ; .previous"

%struct.dma_async_tx_descriptor = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.13, i64 }
%struct.atomic_t = type { i32 }
%union.anon.13 = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dmaengine_desc_callback = type { ptr, ptr, ptr }

@__UNIQUE_ID___addressable_vchan_tx_submit288 = internal global ptr @vchan_tx_submit, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_vchan_tx_desc_free289 = internal global ptr @vchan_tx_desc_free, section ".discard.addressable", align 8, !dbg !5039
@__UNIQUE_ID___addressable_vchan_find_desc290 = internal global ptr @vchan_find_desc, section ".discard.addressable", align 8, !dbg !5041
@__UNIQUE_ID___addressable_vchan_dma_desc_free_list291 = internal global ptr @vchan_dma_desc_free_list, section ".discard.addressable", align 8, !dbg !5043
@__UNIQUE_ID___addressable_vchan_init292 = internal global ptr @vchan_init, section ".discard.addressable", align 8, !dbg !5045
@__UNIQUE_ID_author293 = internal constant [29 x i8] c"virt_dma.author=Russell King\00", section ".modinfo", align 1, !dbg !5047
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"virt_dma.file=drivers/dma/virt-dma\00", section ".modinfo", align 1, !dbg !5052
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"virt_dma.license=GPL\00", section ".modinfo", align 1, !dbg !5057
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_vchan_tx_submit288, ptr @__UNIQUE_ID___addressable_vchan_tx_desc_free289, ptr @__UNIQUE_ID___addressable_vchan_find_desc290, ptr @__UNIQUE_ID___addressable_vchan_dma_desc_free_list291, ptr @__UNIQUE_ID___addressable_vchan_init292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vchan_tx_submit(ptr noundef %tx) #0 align 16 !dbg !5071 {
entry:
  %tx.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cookie = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5073, metadata !DIExpression()), !dbg !5083
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #8, !dbg !5084
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5074, metadata !DIExpression()), !dbg !5085
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5086
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3, !dbg !5087
  %1 = load ptr, ptr %chan, align 8, !dbg !5087
  %call = call ptr @to_virt_chan(ptr noundef %1) #9, !dbg !5088
  store ptr %call, ptr %vc, align 8, !dbg !5085
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #8, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !5075, metadata !DIExpression()), !dbg !5090
  %2 = load ptr, ptr %tx.addr, align 8, !dbg !5091
  %call1 = call ptr @to_virt_desc(ptr noundef %2) #9, !dbg !5092
  store ptr %call1, ptr %vd, align 8, !dbg !5090
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5076, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 4, ptr %cookie) #8, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %cookie, metadata !5077, metadata !DIExpression()), !dbg !5096
  br label %do.body, !dbg !5097

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5098

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5078, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5082, metadata !DIExpression()), !dbg !5099
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5099
  %conv = zext i1 %cmp to i32, !dbg !5099
  store i32 1, ptr %tmp, align 4, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5100
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5100
  %3 = load i32, ptr %tmp, align 4, !dbg !5099
  %4 = load ptr, ptr %vc, align 8, !dbg !5100
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 3, !dbg !5100
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #9, !dbg !5100
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #9, !dbg !5100
  store i64 %call4, ptr %flags, align 8, !dbg !5100
  br label %do.cond, !dbg !5100

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5100

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5098

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5098

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %tx.addr, align 8, !dbg !5101
  %call7 = call i32 @dma_cookie_assign(ptr noundef %5) #9, !dbg !5102
  store i32 %call7, ptr %cookie, align 4, !dbg !5103
  %6 = load ptr, ptr %vd, align 8, !dbg !5104
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2, !dbg !5105
  %7 = load ptr, ptr %vc, align 8, !dbg !5106
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %7, i32 0, i32 5, !dbg !5107
  call void @list_move_tail(ptr noundef %node, ptr noundef %desc_submitted) #9, !dbg !5108
  %8 = load ptr, ptr %vc, align 8, !dbg !5109
  %lock8 = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 3, !dbg !5110
  %9 = load i64, ptr %flags, align 8, !dbg !5111
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %9) #9, !dbg !5112
  %10 = load i32, ptr %cookie, align 4, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 4, ptr %cookie) #8, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #8, !dbg !5114
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #8, !dbg !5114
  ret i32 %10, !dbg !5115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_virt_chan(ptr noundef %chan) #3 align 16 !dbg !5116 {
entry:
  %chan.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5120, metadata !DIExpression()), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5124
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5121, metadata !DIExpression()), !dbg !5124
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5124
  store ptr %0, ptr %__mptr, align 8, !dbg !5124
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5124
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5124
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5125
  %2 = load ptr, ptr %tmp, align 8, !dbg !5124
  ret ptr %2, !dbg !5126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_virt_desc(ptr noundef %tx) #0 align 16 !dbg !5127 {
entry:
  %tx.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5131, metadata !DIExpression()), !dbg !5134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5132, metadata !DIExpression()), !dbg !5135
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5135
  store ptr %0, ptr %__mptr, align 8, !dbg !5135
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5135
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5135
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5136
  %2 = load ptr, ptr %tmp, align 8, !dbg !5135
  ret ptr %2, !dbg !5137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5138 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5143 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5150
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5151
  ret ptr %1, !dbg !5152
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_cookie_assign(ptr noundef %tx) #3 align 16 !dbg !5153 {
entry:
  %tx.addr = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %cookie = alloca i32, align 4
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5156, metadata !DIExpression()), !dbg !5159
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #8, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !5157, metadata !DIExpression()), !dbg !5161
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5162
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3, !dbg !5163
  %1 = load ptr, ptr %chan1, align 8, !dbg !5163
  store ptr %1, ptr %chan, align 8, !dbg !5161
  call void @llvm.lifetime.start.p0(i64 4, ptr %cookie) #8, !dbg !5164
  call void @llvm.dbg.declare(metadata ptr %cookie, metadata !5158, metadata !DIExpression()), !dbg !5165
  %2 = load ptr, ptr %chan, align 8, !dbg !5166
  %cookie2 = getelementptr inbounds %struct.dma_chan, ptr %2, i32 0, i32 2, !dbg !5167
  %3 = load i32, ptr %cookie2, align 8, !dbg !5167
  %add = add i32 %3, 1, !dbg !5168
  store i32 %add, ptr %cookie, align 4, !dbg !5169
  %4 = load i32, ptr %cookie, align 4, !dbg !5170
  %cmp = icmp slt i32 %4, 1, !dbg !5172
  br i1 %cmp, label %if.then, label %if.end, !dbg !5173

if.then:                                          ; preds = %entry
  store i32 1, ptr %cookie, align 4, !dbg !5174
  br label %if.end, !dbg !5175

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %cookie, align 4, !dbg !5176
  %6 = load ptr, ptr %chan, align 8, !dbg !5177
  %cookie3 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2, !dbg !5178
  store i32 %5, ptr %cookie3, align 8, !dbg !5179
  %7 = load ptr, ptr %tx.addr, align 8, !dbg !5180
  %cookie4 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 0, !dbg !5181
  store i32 %5, ptr %cookie4, align 8, !dbg !5182
  %8 = load i32, ptr %cookie, align 4, !dbg !5183
  call void @llvm.lifetime.end.p0(i64 4, ptr %cookie) #8, !dbg !5184
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #8, !dbg !5184
  ret i32 %8, !dbg !5185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !5186 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5191, metadata !DIExpression()), !dbg !5193
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5192, metadata !DIExpression()), !dbg !5194
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5195
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5196
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5197
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5198
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #9, !dbg !5199
  ret void, !dbg !5200
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5201 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5205, metadata !DIExpression()), !dbg !5211
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5206, metadata !DIExpression()), !dbg !5212
  br label %do.body, !dbg !5213

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5207, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5210, metadata !DIExpression()), !dbg !5214
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5214
  %conv = zext i1 %cmp to i32, !dbg !5214
  store i32 1, ptr %tmp, align 4, !dbg !5214
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5215
  %0 = load i32, ptr %tmp, align 4, !dbg !5214
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5215
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5215
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5215
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #9, !dbg !5215
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.body
  ret void, !dbg !5216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vchan_tx_desc_free(ptr noundef %tx) #0 align 16 !dbg !5217 {
entry:
  %tx.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5219, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #8, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5220, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5231
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3, !dbg !5232
  %1 = load ptr, ptr %chan, align 8, !dbg !5232
  %call = call ptr @to_virt_chan(ptr noundef %1) #9, !dbg !5233
  store ptr %call, ptr %vc, align 8, !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #8, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !5221, metadata !DIExpression()), !dbg !5235
  %2 = load ptr, ptr %tx.addr, align 8, !dbg !5236
  %call1 = call ptr @to_virt_desc(ptr noundef %2) #9, !dbg !5237
  store ptr %call1, ptr %vd, align 8, !dbg !5235
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !5238
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5222, metadata !DIExpression()), !dbg !5239
  br label %do.body, !dbg !5240

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5241

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5223, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5227, metadata !DIExpression()), !dbg !5242
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5242
  %conv = zext i1 %cmp to i32, !dbg !5242
  store i32 1, ptr %tmp, align 4, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5243
  %3 = load i32, ptr %tmp, align 4, !dbg !5242
  %4 = load ptr, ptr %vc, align 8, !dbg !5243
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 3, !dbg !5243
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #9, !dbg !5243
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #9, !dbg !5243
  store i64 %call4, ptr %flags, align 8, !dbg !5243
  br label %do.cond, !dbg !5243

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5243

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5241

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5241

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %vd, align 8, !dbg !5244
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2, !dbg !5245
  call void @list_del(ptr noundef %node) #9, !dbg !5246
  %6 = load ptr, ptr %vc, align 8, !dbg !5247
  %lock7 = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 3, !dbg !5248
  %7 = load i64, ptr %flags, align 8, !dbg !5249
  call void @spin_unlock_irqrestore(ptr noundef %lock7, i64 noundef %7) #9, !dbg !5250
  %8 = load ptr, ptr %vc, align 8, !dbg !5251
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 2, !dbg !5252
  %9 = load ptr, ptr %desc_free, align 8, !dbg !5252
  %10 = load ptr, ptr %vd, align 8, !dbg !5253
  call void %9(ptr noundef %10) #9, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #8, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #8, !dbg !5254
  ret i32 0, !dbg !5255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5256 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5262
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5263
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5264
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5265
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5266
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5267
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5268
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5269
  ret void, !dbg !5270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vchan_find_desc(ptr noundef %vc, i32 noundef %cookie) #0 align 16 !dbg !5271 {
entry:
  %retval = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %vd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5275, metadata !DIExpression()), !dbg !5284
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5276, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #8, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !5277, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5278, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !5288
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, !dbg !5288
  %next = getelementptr inbounds %struct.list_head, ptr %desc_issued, i32 0, i32 0, !dbg !5288
  %1 = load ptr, ptr %next, align 8, !dbg !5288
  store ptr %1, ptr %__mptr, align 8, !dbg !5288
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5288
  %add.ptr = getelementptr i8, ptr %2, i64 -96, !dbg !5288
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5289
  %3 = load ptr, ptr %tmp, align 8, !dbg !5288
  store ptr %3, ptr %vd, align 8, !dbg !5289
  br label %for.cond, !dbg !5289

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %vd, align 8, !dbg !5290
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2, !dbg !5290
  %5 = load ptr, ptr %vc.addr, align 8, !dbg !5290
  %desc_issued1 = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 6, !dbg !5290
  %cmp = icmp eq ptr %node, %desc_issued1, !dbg !5290
  %lnot = xor i1 %cmp, true, !dbg !5290
  br i1 %lnot, label %for.body, label %for.end, !dbg !5289

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %vd, align 8, !dbg !5291
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 0, !dbg !5293
  %cookie2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 0, !dbg !5294
  %7 = load i32, ptr %cookie2, align 8, !dbg !5294
  %8 = load i32, ptr %cookie.addr, align 4, !dbg !5295
  %cmp3 = icmp eq i32 %7, %8, !dbg !5296
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5297

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %vd, align 8, !dbg !5298
  store ptr %9, ptr %retval, align 8, !dbg !5299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5299

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5295

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #8, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5281, metadata !DIExpression()), !dbg !5300
  %10 = load ptr, ptr %vd, align 8, !dbg !5300
  %node5 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, !dbg !5300
  %next6 = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 0, !dbg !5300
  %11 = load ptr, ptr %next6, align 8, !dbg !5300
  store ptr %11, ptr %__mptr4, align 8, !dbg !5300
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !5300
  %add.ptr8 = getelementptr i8, ptr %12, i64 -96, !dbg !5300
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #8, !dbg !5290
  %13 = load ptr, ptr %tmp7, align 8, !dbg !5300
  store ptr %13, ptr %vd, align 8, !dbg !5290
  br label %for.cond, !dbg !5290, !llvm.loop !5301

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5305

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #8, !dbg !5306
  %14 = load ptr, ptr %retval, align 8, !dbg !5306
  ret ptr %14, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vchan_dma_desc_free_list(ptr noundef %vc, ptr noundef %head) #0 align 16 !dbg !5307 {
entry:
  %vc.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %_vd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5311, metadata !DIExpression()), !dbg !5323
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5312, metadata !DIExpression()), !dbg !5324
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #8, !dbg !5325
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !5313, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 8, ptr %_vd) #8, !dbg !5325
  call void @llvm.dbg.declare(metadata ptr %_vd, metadata !5314, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5315, metadata !DIExpression()), !dbg !5328
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5328
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5328
  %1 = load ptr, ptr %next, align 8, !dbg !5328
  store ptr %1, ptr %__mptr, align 8, !dbg !5328
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5328
  %add.ptr = getelementptr i8, ptr %2, i64 -96, !dbg !5328
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5329
  %3 = load ptr, ptr %tmp, align 8, !dbg !5328
  store ptr %3, ptr %vd, align 8, !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #8, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5318, metadata !DIExpression()), !dbg !5330
  %4 = load ptr, ptr %vd, align 8, !dbg !5330
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2, !dbg !5330
  %next2 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5330
  %5 = load ptr, ptr %next2, align 8, !dbg !5330
  store ptr %5, ptr %__mptr1, align 8, !dbg !5330
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !5330
  %add.ptr4 = getelementptr i8, ptr %6, i64 -96, !dbg !5330
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #8, !dbg !5329
  %7 = load ptr, ptr %tmp3, align 8, !dbg !5330
  store ptr %7, ptr %_vd, align 8, !dbg !5329
  br label %for.cond, !dbg !5329

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %vd, align 8, !dbg !5331
  %node5 = getelementptr inbounds %struct.virt_dma_desc, ptr %8, i32 0, i32 2, !dbg !5331
  %9 = load ptr, ptr %head.addr, align 8, !dbg !5331
  %cmp = icmp eq ptr %node5, %9, !dbg !5331
  %lnot = xor i1 %cmp, true, !dbg !5331
  br i1 %lnot, label %for.body, label %for.end, !dbg !5329

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %vd, align 8, !dbg !5332
  %node6 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, !dbg !5334
  call void @list_del(ptr noundef %node6) #9, !dbg !5335
  %11 = load ptr, ptr %vd, align 8, !dbg !5336
  call void @vchan_vdesc_fini(ptr noundef %11) #9, !dbg !5337
  br label %for.inc, !dbg !5338

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %_vd, align 8, !dbg !5331
  store ptr %12, ptr %vd, align 8, !dbg !5331
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #8, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5320, metadata !DIExpression()), !dbg !5339
  %13 = load ptr, ptr %_vd, align 8, !dbg !5339
  %node8 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2, !dbg !5339
  %next9 = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 0, !dbg !5339
  %14 = load ptr, ptr %next9, align 8, !dbg !5339
  store ptr %14, ptr %__mptr7, align 8, !dbg !5339
  %15 = load ptr, ptr %__mptr7, align 8, !dbg !5339
  %add.ptr11 = getelementptr i8, ptr %15, i64 -96, !dbg !5339
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5339
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #8, !dbg !5331
  %16 = load ptr, ptr %tmp10, align 8, !dbg !5339
  store ptr %16, ptr %_vd, align 8, !dbg !5331
  br label %for.cond, !dbg !5331, !llvm.loop !5340

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %_vd) #8, !dbg !5342
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #8, !dbg !5342
  ret void, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_vdesc_fini(ptr noundef %vd) #3 align 16 !dbg !5343 {
entry:
  %vd.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !5345, metadata !DIExpression()), !dbg !5355
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #8, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5346, metadata !DIExpression()), !dbg !5357
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !5358
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 0, !dbg !5359
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3, !dbg !5360
  %1 = load ptr, ptr %chan, align 8, !dbg !5360
  %call = call ptr @to_virt_chan(ptr noundef %1) #9, !dbg !5361
  store ptr %call, ptr %vc, align 8, !dbg !5357
  %2 = load ptr, ptr %vd.addr, align 8, !dbg !5362
  %tx1 = getelementptr inbounds %struct.virt_dma_desc, ptr %2, i32 0, i32 0, !dbg !5363
  %call2 = call zeroext i1 @dmaengine_desc_test_reuse(ptr noundef %tx1) #9, !dbg !5364
  br i1 %call2, label %if.then, label %if.else, !dbg !5365

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5347, metadata !DIExpression()), !dbg !5367
  br label %do.body, !dbg !5368

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5369

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #8, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5350, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #8, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5354, metadata !DIExpression()), !dbg !5370
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5370
  %conv = zext i1 %cmp to i32, !dbg !5370
  store i32 1, ptr %tmp, align 4, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #8, !dbg !5371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #8, !dbg !5371
  %3 = load i32, ptr %tmp, align 4, !dbg !5370
  %4 = load ptr, ptr %vc, align 8, !dbg !5371
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 3, !dbg !5371
  %call4 = call ptr @spinlock_check(ptr noundef %lock) #9, !dbg !5371
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call4) #9, !dbg !5371
  store i64 %call5, ptr %flags, align 8, !dbg !5371
  br label %do.cond, !dbg !5371

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5371

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !5369

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !5369

do.end7:                                          ; preds = %do.cond6
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !5372
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2, !dbg !5373
  %6 = load ptr, ptr %vc, align 8, !dbg !5374
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 4, !dbg !5375
  call void @list_add(ptr noundef %node, ptr noundef %desc_allocated) #9, !dbg !5376
  %7 = load ptr, ptr %vc, align 8, !dbg !5377
  %lock8 = getelementptr inbounds %struct.virt_dma_chan, ptr %7, i32 0, i32 3, !dbg !5378
  %8 = load i64, ptr %flags, align 8, !dbg !5379
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %8) #9, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !5381
  br label %if.end, !dbg !5382

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %vc, align 8, !dbg !5383
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 2, !dbg !5385
  %10 = load ptr, ptr %desc_free, align 8, !dbg !5385
  %11 = load ptr, ptr %vd.addr, align 8, !dbg !5386
  call void %10(ptr noundef %11) #9, !dbg !5383
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #8, !dbg !5387
  ret void, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vchan_init(ptr noundef %vc, ptr noundef %dmadev) #0 align 16 !dbg !5388 {
entry:
  %vc.addr = alloca ptr, align 8
  %dmadev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !5392, metadata !DIExpression()), !dbg !5394
  store ptr %dmadev, ptr %dmadev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmadev.addr, metadata !5393, metadata !DIExpression()), !dbg !5395
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !5396
  %chan = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 0, !dbg !5397
  call void @dma_cookie_init(ptr noundef %chan) #9, !dbg !5398
  br label %do.body, !dbg !5399

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %vc.addr, align 8, !dbg !5400
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3, !dbg !5400
  %call = call ptr @spinlock_check(ptr noundef %lock) #9, !dbg !5400
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !5400
  %lock1 = getelementptr inbounds %struct.virt_dma_chan, ptr %2, i32 0, i32 3, !dbg !5400
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5400
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !5400
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5400
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5400
  store i32 0, ptr %counter, align 4, !dbg !5400
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5400
  br label %do.end, !dbg !5400

do.end:                                           ; preds = %do.body
  %5 = load ptr, ptr %vc.addr, align 8, !dbg !5402
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 4, !dbg !5403
  call void @INIT_LIST_HEAD(ptr noundef %desc_allocated) #9, !dbg !5404
  %6 = load ptr, ptr %vc.addr, align 8, !dbg !5405
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 5, !dbg !5406
  call void @INIT_LIST_HEAD(ptr noundef %desc_submitted) #9, !dbg !5407
  %7 = load ptr, ptr %vc.addr, align 8, !dbg !5408
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %7, i32 0, i32 6, !dbg !5409
  call void @INIT_LIST_HEAD(ptr noundef %desc_issued) #9, !dbg !5410
  %8 = load ptr, ptr %vc.addr, align 8, !dbg !5411
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 7, !dbg !5412
  call void @INIT_LIST_HEAD(ptr noundef %desc_completed) #9, !dbg !5413
  %9 = load ptr, ptr %vc.addr, align 8, !dbg !5414
  %desc_terminated = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 8, !dbg !5415
  call void @INIT_LIST_HEAD(ptr noundef %desc_terminated) #9, !dbg !5416
  %10 = load ptr, ptr %vc.addr, align 8, !dbg !5417
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %10, i32 0, i32 1, !dbg !5418
  call void @tasklet_setup(ptr noundef %task, ptr noundef @vchan_complete) #9, !dbg !5419
  %11 = load ptr, ptr %dmadev.addr, align 8, !dbg !5420
  %12 = load ptr, ptr %vc.addr, align 8, !dbg !5421
  %chan2 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 0, !dbg !5422
  %device = getelementptr inbounds %struct.dma_chan, ptr %chan2, i32 0, i32 0, !dbg !5423
  store ptr %11, ptr %device, align 8, !dbg !5424
  %13 = load ptr, ptr %vc.addr, align 8, !dbg !5425
  %chan3 = getelementptr inbounds %struct.virt_dma_chan, ptr %13, i32 0, i32 0, !dbg !5426
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %chan3, i32 0, i32 8, !dbg !5427
  %14 = load ptr, ptr %dmadev.addr, align 8, !dbg !5428
  %channels = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 3, !dbg !5429
  call void @list_add_tail(ptr noundef %device_node, ptr noundef %channels) #9, !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_cookie_init(ptr noundef %chan) #3 align 16 !dbg !5432 {
entry:
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5436
  %cookie = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2, !dbg !5437
  store i32 1, ptr %cookie, align 8, !dbg !5438
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !5439
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 3, !dbg !5440
  store i32 1, ptr %completed_cookie, align 4, !dbg !5441
  ret void, !dbg !5442
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5443 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  br label %do.body, !dbg !5447

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5448

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5450

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5448

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5452
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5452
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5452
  store volatile ptr %0, ptr %next, align 8, !dbg !5452
  br label %do.end3, !dbg !5452

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5448

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5454

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5455

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5457

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5455

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5459
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5459
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5459
  store volatile ptr %2, ptr %prev, align 8, !dbg !5459
  br label %do.end9, !dbg !5459

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5455

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5462 dso_local void @tasklet_setup(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_complete(ptr noundef %t) #0 align 16 !dbg !5465 {
entry:
  %t.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %_vd = alloca ptr, align 8
  %cb = alloca %struct.dmaengine_desc_callback, align 8
  %head = alloca %struct.list_head, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5467, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #8, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5468, metadata !DIExpression()), !dbg !5490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5469, metadata !DIExpression()), !dbg !5491
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5491
  store ptr %0, ptr %__mptr, align 8, !dbg !5491
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5491
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !5491
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5492
  %2 = load ptr, ptr %tmp, align 8, !dbg !5491
  store ptr %2, ptr %vc, align 8, !dbg !5490
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #8, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !5471, metadata !DIExpression()), !dbg !5494
  call void @llvm.lifetime.start.p0(i64 8, ptr %_vd) #8, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %_vd, metadata !5472, metadata !DIExpression()), !dbg !5495
  call void @llvm.lifetime.start.p0(i64 24, ptr %cb) #8, !dbg !5496
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !5473, metadata !DIExpression()), !dbg !5497
  call void @llvm.lifetime.start.p0(i64 16, ptr %head) #8, !dbg !5498
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5479, metadata !DIExpression()), !dbg !5498
  %next = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !5498
  store ptr %head, ptr %next, align 8, !dbg !5498
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1, !dbg !5498
  store ptr %head, ptr %prev, align 8, !dbg !5498
  %3 = load ptr, ptr %vc, align 8, !dbg !5499
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 3, !dbg !5500
  call void @spin_lock_irq(ptr noundef %lock) #9, !dbg !5501
  %4 = load ptr, ptr %vc, align 8, !dbg !5502
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 7, !dbg !5503
  call void @list_splice_tail_init(ptr noundef %desc_completed, ptr noundef %head) #9, !dbg !5504
  %5 = load ptr, ptr %vc, align 8, !dbg !5505
  %cyclic = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 9, !dbg !5506
  %6 = load ptr, ptr %cyclic, align 8, !dbg !5506
  store ptr %6, ptr %vd, align 8, !dbg !5507
  %7 = load ptr, ptr %vd, align 8, !dbg !5508
  %tobool = icmp ne ptr %7, null, !dbg !5508
  br i1 %tobool, label %if.then, label %if.else, !dbg !5510

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %vc, align 8, !dbg !5511
  %cyclic1 = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 9, !dbg !5513
  store ptr null, ptr %cyclic1, align 8, !dbg !5514
  %9 = load ptr, ptr %vd, align 8, !dbg !5515
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 0, !dbg !5516
  call void @dmaengine_desc_get_callback(ptr noundef %tx, ptr noundef %cb) #9, !dbg !5517
  br label %if.end, !dbg !5518

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %cb, i8 0, i64 24, i1 false), !dbg !5519
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %vc, align 8, !dbg !5521
  %lock2 = getelementptr inbounds %struct.virt_dma_chan, ptr %10, i32 0, i32 3, !dbg !5522
  call void @spin_unlock_irq(ptr noundef %lock2) #9, !dbg !5523
  %11 = load ptr, ptr %vd, align 8, !dbg !5524
  %tx_result = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1, !dbg !5525
  call void @dmaengine_desc_callback_invoke(ptr noundef %cb, ptr noundef %tx_result) #9, !dbg !5526
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #8, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5480, metadata !DIExpression()), !dbg !5527
  %next4 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !5527
  %12 = load ptr, ptr %next4, align 8, !dbg !5527
  store ptr %12, ptr %__mptr3, align 8, !dbg !5527
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !5527
  %add.ptr6 = getelementptr i8, ptr %13, i64 -96, !dbg !5527
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #8, !dbg !5528
  %14 = load ptr, ptr %tmp5, align 8, !dbg !5527
  store ptr %14, ptr %vd, align 8, !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #8, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5483, metadata !DIExpression()), !dbg !5529
  %15 = load ptr, ptr %vd, align 8, !dbg !5529
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %15, i32 0, i32 2, !dbg !5529
  %next8 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5529
  %16 = load ptr, ptr %next8, align 8, !dbg !5529
  store ptr %16, ptr %__mptr7, align 8, !dbg !5529
  %17 = load ptr, ptr %__mptr7, align 8, !dbg !5529
  %add.ptr10 = getelementptr i8, ptr %17, i64 -96, !dbg !5529
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #8, !dbg !5528
  %18 = load ptr, ptr %tmp9, align 8, !dbg !5529
  store ptr %18, ptr %_vd, align 8, !dbg !5528
  br label %for.cond, !dbg !5528

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load ptr, ptr %vd, align 8, !dbg !5530
  %node11 = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2, !dbg !5530
  %cmp = icmp eq ptr %node11, %head, !dbg !5530
  %lnot = xor i1 %cmp, true, !dbg !5530
  br i1 %lnot, label %for.body, label %for.end, !dbg !5528

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %vd, align 8, !dbg !5531
  %tx12 = getelementptr inbounds %struct.virt_dma_desc, ptr %20, i32 0, i32 0, !dbg !5533
  call void @dmaengine_desc_get_callback(ptr noundef %tx12, ptr noundef %cb) #9, !dbg !5534
  %21 = load ptr, ptr %vd, align 8, !dbg !5535
  %node13 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 2, !dbg !5536
  call void @list_del(ptr noundef %node13) #9, !dbg !5537
  %22 = load ptr, ptr %vd, align 8, !dbg !5538
  %tx_result14 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 1, !dbg !5539
  call void @dmaengine_desc_callback_invoke(ptr noundef %cb, ptr noundef %tx_result14) #9, !dbg !5540
  %23 = load ptr, ptr %vd, align 8, !dbg !5541
  call void @vchan_vdesc_fini(ptr noundef %23) #9, !dbg !5542
  br label %for.inc, !dbg !5543

for.inc:                                          ; preds = %for.body
  %24 = load ptr, ptr %_vd, align 8, !dbg !5530
  store ptr %24, ptr %vd, align 8, !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #8, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !5485, metadata !DIExpression()), !dbg !5544
  %25 = load ptr, ptr %_vd, align 8, !dbg !5544
  %node16 = getelementptr inbounds %struct.virt_dma_desc, ptr %25, i32 0, i32 2, !dbg !5544
  %next17 = getelementptr inbounds %struct.list_head, ptr %node16, i32 0, i32 0, !dbg !5544
  %26 = load ptr, ptr %next17, align 8, !dbg !5544
  store ptr %26, ptr %__mptr15, align 8, !dbg !5544
  %27 = load ptr, ptr %__mptr15, align 8, !dbg !5544
  %add.ptr19 = getelementptr i8, ptr %27, i64 -96, !dbg !5544
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #8, !dbg !5530
  %28 = load ptr, ptr %tmp18, align 8, !dbg !5544
  store ptr %28, ptr %_vd, align 8, !dbg !5530
  br label %for.cond, !dbg !5530, !llvm.loop !5545

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %head) #8, !dbg !5547
  call void @llvm.lifetime.end.p0(i64 24, ptr %cb) #8, !dbg !5547
  call void @llvm.lifetime.end.p0(i64 8, ptr %_vd) #8, !dbg !5547
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #8, !dbg !5547
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #8, !dbg !5547
  ret void, !dbg !5547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5548 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5550, metadata !DIExpression()), !dbg !5552
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5554
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5555
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5556
  %2 = load ptr, ptr %prev, align 8, !dbg !5556
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5557
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !5558
  ret void, !dbg !5559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5560 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5564
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !5566
  br i1 %call, label %if.end, label %if.then, !dbg !5567

if.then:                                          ; preds = %entry
  br label %return, !dbg !5568

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5569
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5570
  %2 = load ptr, ptr %prev, align 8, !dbg !5570
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5571
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5572
  %4 = load ptr, ptr %next, align 8, !dbg !5572
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !5573
  br label %return, !dbg !5574

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5575 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  ret i1 true, !dbg !5581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5582 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5584, metadata !DIExpression()), !dbg !5586
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5585, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5588
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5589
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5590
  store ptr %0, ptr %prev1, align 8, !dbg !5591
  br label %do.body, !dbg !5592

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5593

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5595

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5593

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5597
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5597
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5597
  store volatile ptr %2, ptr %next4, align 8, !dbg !5597
  br label %do.end5, !dbg !5597

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5593

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5600 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dmaengine_desc_test_reuse(ptr noundef %tx) #3 align 16 !dbg !5603 {
entry:
  %tx.addr = alloca ptr, align 8
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5609
  %flags = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 1, !dbg !5610
  %1 = load i32, ptr %flags, align 4, !dbg !5610
  %and = and i32 %1, 64, !dbg !5611
  %cmp = icmp eq i32 %and, 64, !dbg !5612
  ret i1 %cmp, !dbg !5613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5614 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5616, metadata !DIExpression()), !dbg !5618
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5617, metadata !DIExpression()), !dbg !5619
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5620
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5621
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5622
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5623
  %3 = load ptr, ptr %next, align 8, !dbg !5623
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !5624
  ret void, !dbg !5625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5626 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5630, metadata !DIExpression()), !dbg !5633
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5631, metadata !DIExpression()), !dbg !5634
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5632, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5636
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5638
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5639
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !5640
  br i1 %call, label %if.end, label %if.then, !dbg !5641

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5642

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5643
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5644
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5645
  store ptr %3, ptr %prev1, align 8, !dbg !5646
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5647
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5648
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5649
  store ptr %5, ptr %next2, align 8, !dbg !5650
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5651
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5652
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5653
  store ptr %7, ptr %prev3, align 8, !dbg !5654
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5656

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5658

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5656

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5660
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5660
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5660
  store volatile ptr %9, ptr %next6, align 8, !dbg !5660
  br label %do.end7, !dbg !5660

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5656

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5663 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5667, metadata !DIExpression()), !dbg !5670
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5668, metadata !DIExpression()), !dbg !5671
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5669, metadata !DIExpression()), !dbg !5672
  ret i1 true, !dbg !5673
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !5674 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5680
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5680
  call void @_raw_spin_lock_irq(ptr noundef %1) #9, !dbg !5680
  ret void, !dbg !5681
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail_init(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !5682 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5684, metadata !DIExpression()), !dbg !5686
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5685, metadata !DIExpression()), !dbg !5687
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5688
  %call = call i32 @list_empty(ptr noundef %0) #9, !dbg !5690
  %tobool = icmp ne i32 %call, 0, !dbg !5690
  br i1 %tobool, label %if.end, label %if.then, !dbg !5691

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5692
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5694
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5695
  %3 = load ptr, ptr %prev, align 8, !dbg !5695
  %4 = load ptr, ptr %head.addr, align 8, !dbg !5696
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #9, !dbg !5697
  %5 = load ptr, ptr %list.addr, align 8, !dbg !5698
  call void @INIT_LIST_HEAD(ptr noundef %5) #9, !dbg !5699
  br label %if.end, !dbg !5700

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmaengine_desc_get_callback(ptr noundef %tx, ptr noundef %cb) #3 align 16 !dbg !5702 {
entry:
  %tx.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !5707, metadata !DIExpression()), !dbg !5709
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5708, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !5711
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 6, !dbg !5712
  %1 = load ptr, ptr %callback, align 8, !dbg !5712
  %2 = load ptr, ptr %cb.addr, align 8, !dbg !5713
  %callback1 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %2, i32 0, i32 0, !dbg !5714
  store ptr %1, ptr %callback1, align 8, !dbg !5715
  %3 = load ptr, ptr %tx.addr, align 8, !dbg !5716
  %callback_result = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 7, !dbg !5717
  %4 = load ptr, ptr %callback_result, align 8, !dbg !5717
  %5 = load ptr, ptr %cb.addr, align 8, !dbg !5718
  %callback_result2 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %5, i32 0, i32 1, !dbg !5719
  store ptr %4, ptr %callback_result2, align 8, !dbg !5720
  %6 = load ptr, ptr %tx.addr, align 8, !dbg !5721
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 8, !dbg !5722
  %7 = load ptr, ptr %callback_param, align 8, !dbg !5722
  %8 = load ptr, ptr %cb.addr, align 8, !dbg !5723
  %callback_param3 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %8, i32 0, i32 2, !dbg !5724
  store ptr %7, ptr %callback_param3, align 8, !dbg !5725
  ret void, !dbg !5726
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !5727 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5731
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5731
  call void @_raw_spin_unlock_irq(ptr noundef %1) #9, !dbg !5731
  ret void, !dbg !5732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmaengine_desc_callback_invoke(ptr noundef %cb, ptr noundef %result) #3 align 16 !dbg !5733 {
entry:
  %cb.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %dummy_result = alloca %struct.dmaengine_result, align 4
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5737, metadata !DIExpression()), !dbg !5740
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !5738, metadata !DIExpression()), !dbg !5741
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy_result) #8, !dbg !5742
  call void @llvm.dbg.declare(metadata ptr %dummy_result, metadata !5739, metadata !DIExpression()), !dbg !5743
  call void @llvm.memset.p0.i64(ptr align 4 %dummy_result, i8 0, i64 8, i1 false), !dbg !5743
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !5744
  %callback_result = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %0, i32 0, i32 1, !dbg !5746
  %1 = load ptr, ptr %callback_result, align 8, !dbg !5746
  %tobool = icmp ne ptr %1, null, !dbg !5744
  br i1 %tobool, label %if.then, label %if.else, !dbg !5747

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %result.addr, align 8, !dbg !5748
  %tobool1 = icmp ne ptr %2, null, !dbg !5748
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5751

if.then2:                                         ; preds = %if.then
  store ptr %dummy_result, ptr %result.addr, align 8, !dbg !5752
  br label %if.end, !dbg !5753

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load ptr, ptr %cb.addr, align 8, !dbg !5754
  %callback_result3 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %3, i32 0, i32 1, !dbg !5755
  %4 = load ptr, ptr %callback_result3, align 8, !dbg !5755
  %5 = load ptr, ptr %cb.addr, align 8, !dbg !5756
  %callback_param = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %5, i32 0, i32 2, !dbg !5757
  %6 = load ptr, ptr %callback_param, align 8, !dbg !5757
  %7 = load ptr, ptr %result.addr, align 8, !dbg !5758
  call void %4(ptr noundef %6, ptr noundef %7) #9, !dbg !5754
  br label %if.end9, !dbg !5759

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %cb.addr, align 8, !dbg !5760
  %callback = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %8, i32 0, i32 0, !dbg !5762
  %9 = load ptr, ptr %callback, align 8, !dbg !5762
  %tobool4 = icmp ne ptr %9, null, !dbg !5760
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !5763

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %cb.addr, align 8, !dbg !5764
  %callback6 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %10, i32 0, i32 0, !dbg !5766
  %11 = load ptr, ptr %callback6, align 8, !dbg !5766
  %12 = load ptr, ptr %cb.addr, align 8, !dbg !5767
  %callback_param7 = getelementptr inbounds %struct.dmaengine_desc_callback, ptr %12, i32 0, i32 2, !dbg !5768
  %13 = load ptr, ptr %callback_param7, align 8, !dbg !5768
  call void %11(ptr noundef %13) #9, !dbg !5764
  br label %if.end8, !dbg !5769

if.end8:                                          ; preds = %if.then5, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy_result) #8, !dbg !5770
  ret void, !dbg !5770
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5774 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  br label %do.body, !dbg !5782

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5784

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5782
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5782
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5782
  store ptr %1, ptr %tmp, align 8, !dbg !5784
  %2 = load ptr, ptr %tmp, align 8, !dbg !5782
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5786
  %cmp = icmp eq ptr %2, %3, !dbg !5787
  %conv = zext i1 %cmp to i32, !dbg !5787
  ret i32 %conv, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5789 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5793, metadata !DIExpression()), !dbg !5798
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5794, metadata !DIExpression()), !dbg !5799
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5795, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #8, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5796, metadata !DIExpression()), !dbg !5802
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5803
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5804
  %1 = load ptr, ptr %next1, align 8, !dbg !5804
  store ptr %1, ptr %first, align 8, !dbg !5802
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #8, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5797, metadata !DIExpression()), !dbg !5806
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5807
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5808
  %3 = load ptr, ptr %prev2, align 8, !dbg !5808
  store ptr %3, ptr %last, align 8, !dbg !5806
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !5809
  %5 = load ptr, ptr %first, align 8, !dbg !5810
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !5811
  store ptr %4, ptr %prev3, align 8, !dbg !5812
  %6 = load ptr, ptr %first, align 8, !dbg !5813
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5814
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !5815
  store ptr %6, ptr %next4, align 8, !dbg !5816
  %8 = load ptr, ptr %next.addr, align 8, !dbg !5817
  %9 = load ptr, ptr %last, align 8, !dbg !5818
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !5819
  store ptr %8, ptr %next5, align 8, !dbg !5820
  %10 = load ptr, ptr %last, align 8, !dbg !5821
  %11 = load ptr, ptr %next.addr, align 8, !dbg !5822
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !5823
  store ptr %10, ptr %prev6, align 8, !dbg !5824
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #8, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #8, !dbg !5825
  ret void, !dbg !5825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5826 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069}
!llvm.ident = !{!5070}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vchan_tx_submit288", scope: !2, file: !3, line: 37, type: !217, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma/.virt-dma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma/virt-dma\22 -D KBUILD_BASENAME=\22virt_dma\22 -D KBUILD_MODNAME=\22virt_dma\22 -D __KBUILD_MODNAME=kmod_virt_dma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma/virt-dma.ll drivers/dma/virt-dma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !216, globals: !5038, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma/virt-dma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "452c251df2f1464d24f9315e7986cc57")
!4 = !{!5, !19, !24, !35, !42, !47, !55, !71, !79, !85, !90, !96, !103, !110, !116, !122, !129, !137, !145, !154, !159, !164, !170, !175, !179, !186, !198, !205, !211}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !6, line: 194, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0cbc91064c120734c9b4d09ca2ee7349")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1)
!10 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2)
!11 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4)
!12 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8)
!13 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16)
!14 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32)
!15 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64)
!16 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128)
!17 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256)
!18 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !6, line: 282, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0)
!22 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1)
!23 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !6, line: 736, baseType: !7, size: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0)
!27 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1)
!28 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2)
!29 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3)
!30 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4)
!31 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5)
!32 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6)
!33 = !DIEnumerator(name: "DMAENGINE_ALIGN_128_BYTES", value: 7)
!34 = !DIEnumerator(name: "DMAENGINE_ALIGN_256_BYTES", value: 8)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!39 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!40 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!41 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !43, line: 2052, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!46 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !48, line: 9, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!51 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!52 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!53 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!54 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !56, line: 1325, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!58 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!59 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!60 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!61 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!62 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!63 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!64 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!65 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!66 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!67 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!68 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!69 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!70 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !72, line: 68, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !86, line: 65, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!89 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !91, line: 16, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "TT_NONE", value: 0)
!94 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!95 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !97, line: 51, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!100 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!101 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!102 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !104, line: 15, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!107 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!108 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!109 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !111, line: 26, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!114 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!115 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !117, line: 45, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!120 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!121 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !123, line: 487, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!126 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!127 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!128 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !130, line: 620, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!133 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!134 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!135 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!136 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !130, line: 597, baseType: !138, size: 32, elements: !139)
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!141 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!142 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!143 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!144 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !123, line: 547, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153}
!147 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!148 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!149 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!150 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!151 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!152 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!153 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !123, line: 564, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!157 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!158 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !123, line: 577, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!162 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!163 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !123, line: 503, baseType: !7, size: 32, elements: !165)
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!167 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!168 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!169 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !6, line: 472, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0)
!173 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1)
!174 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !6, line: 220, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178}
!177 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1)
!178 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !6, line: 79, baseType: !7, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0)
!182 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1)
!183 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2)
!184 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3)
!185 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !6, line: 373, baseType: !7, size: 32, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!188 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0)
!189 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1)
!190 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2)
!191 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3)
!192 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4)
!193 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8)
!194 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16)
!195 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32)
!196 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64)
!197 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_128_BYTES", value: 128)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !6, line: 37, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIEnumerator(name: "DMA_COMPLETE", value: 0)
!201 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1)
!202 = !DIEnumerator(name: "DMA_PAUSED", value: 2)
!203 = !DIEnumerator(name: "DMA_ERROR", value: 3)
!204 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !6, line: 537, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0)
!208 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1)
!209 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2)
!210 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 10, baseType: !7, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!213 = !{!214, !215}
!214 = !DIEnumerator(name: "false", value: 0)
!215 = !DIEnumerator(name: "true", value: 1)
!216 = !{!217, !218, !4998, !5034, !5036}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virt_dma_desc", file: !220, line: 15, size: 896, elements: !221)
!220 = !DIFile(filename: "drivers/dma/virt-dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ebf769ed4158fa3a9ccd0a483deaa4f3")
!221 = !{!222, !4996, !4997}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !219, file: !220, line: 16, baseType: !223, size: 704)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !6, line: 602, size: 704, elements: !224)
!224 = !{!225, !231, !232, !238, !4943, !4947, !4951, !4953, !4964, !4965, !4978, !4979}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !223, file: !6, line: 603, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !6, line: 22, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !228, line: 20, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !230, line: 26, baseType: !138)
!230 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !6, line: 604, baseType: !5, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !223, file: !6, line: 605, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !234, line: 149, baseType: !235)
!234 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !228, line: 23, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !230, line: 31, baseType: !237)
!237 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !223, file: !6, line: 606, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !6, line: 328, size: 896, elements: !241)
!241 = !{!242, !4909, !4910, !4911, !4912, !4913, !4921, !4922, !4923, !4924, !4930, !4931, !4932, !4941, !4942}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !240, file: !6, line: 329, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !6, line: 854, size: 3072, elements: !245)
!245 = !{!246, !260, !261, !262, !268, !269, !291, !300, !301, !303, !304, !305, !306, !307, !308, !309, !4743, !4744, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4761, !4762, !4766, !4771, !4776, !4781, !4785, !4789, !4793, !4807, !4811, !4815, !4819, !4843, !4847, !4865, !4884, !4885, !4886, !4887, !4888, !4899, !4900, !4904, !4908}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !244, file: !6, line: 855, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !248, line: 19, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !247, file: !248, line: 20, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !252, line: 113, baseType: !253)
!252 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !252, line: 111, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !253, file: !252, line: 112, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !234, line: 174, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 172, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !257, file: !234, line: 173, baseType: !138, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !244, file: !6, line: 856, baseType: !7, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !244, file: !6, line: 857, baseType: !7, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !244, file: !6, line: 858, baseType: !263, size: 128, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !234, line: 190, size: 128, elements: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !234, line: 191, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !263, file: !234, line: 191, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !244, file: !6, line: 859, baseType: !263, size: 128, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !244, file: !6, line: 860, baseType: !270, size: 192, offset: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !6, line: 768, size: 192, elements: !271)
!271 = !{!272, !279, !280}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !270, file: !6, line: 769, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !6, line: 533, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !239, !217}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !234, line: 35, baseType: !278)
!278 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !270, file: !6, line: 770, baseType: !138, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !270, file: !6, line: 771, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !6, line: 755, size: 192, elements: !284)
!284 = !{!285, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !283, file: !6, line: 756, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !283, file: !6, line: 757, baseType: !286, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !283, file: !6, line: 758, baseType: !217, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !244, file: !6, line: 861, baseType: !292, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !6, line: 230, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 230, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !293, file: !6, line: 230, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !298)
!297 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!298 = !{!299}
!299 = !DISubrange(count: 1)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !244, file: !6, line: 862, baseType: !19, size: 32, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !244, file: !6, line: 863, baseType: !302, size: 16, offset: 672)
!302 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !244, file: !6, line: 864, baseType: !302, size: 16, offset: 688)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !244, file: !6, line: 865, baseType: !24, size: 32, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !244, file: !6, line: 866, baseType: !24, size: 32, offset: 736)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !244, file: !6, line: 867, baseType: !24, size: 32, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !244, file: !6, line: 868, baseType: !24, size: 32, offset: 800)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !244, file: !6, line: 871, baseType: !138, size: 32, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !244, file: !6, line: 872, baseType: !310, size: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !123, line: 705, size: 5824, elements: !312)
!312 = !{!313, !4297, !4298, !4301, !4302, !4355, !4425, !4426, !4427, !4428, !4429, !4436, !4528, !4541, !4551, !4555, !4557, !4558, !4559, !4563, !4570, !4571, !4574, !4577, !4581, !4685, !4686, !4687, !4688, !4689, !4690, !4720, !4721, !4722, !4725, !4728, !4737, !4738, !4739, !4740, !4741, !4742}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !311, file: !123, line: 706, baseType: !314, size: 512)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !315, line: 64, size: 512, elements: !316)
!315 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!316 = !{!317, !318, !319, !321, !403, !4200, !4291, !4292, !4293, !4294, !4295, !4296}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 65, baseType: !286, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !314, file: !315, line: 66, baseType: !263, size: 128, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !314, file: !315, line: 67, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !314, file: !315, line: 68, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !315, line: 168, size: 768, elements: !324)
!324 = !{!325, !326, !362, !363}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !323, file: !315, line: 169, baseType: !263, size: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !323, file: !315, line: 170, baseType: !327, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !328, line: 29, baseType: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !328, line: 17, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !328, line: 18, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 18, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !332, file: !328, line: 19, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !336, line: 14, size: 32, elements: !337)
!336 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !335, file: !336, line: 15, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !340, line: 44, baseType: !341)
!340 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !340, line: 14, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !340, line: 15, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !340, line: 15, size: 32, elements: !345)
!345 = !{!346, !347, !355}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !340, line: 16, baseType: !256, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !340, line: 24, baseType: !348, size: 16)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !340, line: 24, size: 16, elements: !349)
!349 = !{!350, !354}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !348, file: !340, line: 25, baseType: !351, size: 8)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !228, line: 17, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !230, line: 21, baseType: !353)
!353 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !348, file: !340, line: 26, baseType: !351, size: 8, offset: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !340, line: 28, baseType: !356, size: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !340, line: 28, size: 32, elements: !357)
!357 = !{!358, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !356, file: !340, line: 29, baseType: !359, size: 16)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !228, line: 19, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !230, line: 24, baseType: !302)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !356, file: !340, line: 30, baseType: !359, size: 16, offset: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !323, file: !315, line: 171, baseType: !314, size: 512, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !323, file: !315, line: 172, baseType: !364, size: 64, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !315, line: 133, size: 192, elements: !367)
!367 = !{!368, !375, !380}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !366, file: !315, line: 134, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!138, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !315, line: 135, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!286, !373}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !366, file: !315, line: 136, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!138, !373, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !315, line: 125, size: 20736, elements: !387)
!387 = !{!388, !393, !397, !398, !402}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !386, file: !315, line: 126, baseType: !389, size: 192)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !391)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!391 = !{!392}
!392 = !DISubrange(count: 3)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !386, file: !315, line: 127, baseType: !394, size: 4096, offset: 192)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 4096, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !386, file: !315, line: 128, baseType: !138, size: 32, offset: 4288)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !386, file: !315, line: 129, baseType: !399, size: 16384, offset: 4320)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 16384, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2048)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !386, file: !315, line: 130, baseType: !138, size: 32, offset: 20704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !314, file: !315, line: 69, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !315, line: 116, size: 384, elements: !407)
!407 = !{!408, !412, !440, !4162, !4190, !4194}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !406, file: !315, line: 117, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !320}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !406, file: !315, line: 118, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !416, line: 254, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!417 = !{!418, !433}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !415, file: !416, line: 255, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !320, !427, !390}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !234, line: 66, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !424, line: 73, baseType: !425)
!424 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !424, line: 15, baseType: !426)
!426 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !416, line: 30, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !428, file: !416, line: 31, baseType: !286, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !428, file: !416, line: 32, baseType: !432, size: 16, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !234, line: 24, baseType: !302)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !415, file: !416, line: 256, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!422, !320, !427, !286, !437}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 61, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !424, line: 72, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !424, line: 16, baseType: !297)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !406, file: !315, line: 119, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !416, line: 84, size: 320, elements: !445)
!445 = !{!446, !447, !451, !4158, !4160}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !444, file: !416, line: 85, baseType: !286, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !444, file: !416, line: 86, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!432, !320, !427, !138}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !444, file: !416, line: 88, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!432, !320, !455, !138}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !416, line: 175, size: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !4149, !4153, !4154}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !456, file: !416, line: 176, baseType: !428, size: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !456, file: !416, line: 177, baseType: !437, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !456, file: !416, line: 178, baseType: !217, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !456, file: !416, line: 179, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !43, line: 472, size: 1536, align: 64, elements: !467)
!467 = !{!468, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !4143, !4144, !4145, !4146, !4147, !4148}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !466, file: !43, line: 473, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !43, line: 641, size: 4800, elements: !471)
!471 = !{!472, !473, !474, !482, !483, !490, !491, !494, !495, !3922, !3923, !3924, !3925, !3926, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3966, !3969, !3970, !3971, !3980, !3981, !3982, !3983}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !470, file: !43, line: 642, baseType: !432, size: 16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !470, file: !43, line: 643, baseType: !302, size: 16, offset: 16)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !470, file: !43, line: 644, baseType: !475, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !476, line: 23, baseType: !477)
!476 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 21, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !477, file: !476, line: 22, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !234, line: 37, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !424, line: 49, baseType: !7)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !470, file: !43, line: 645, baseType: !263, size: 128, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !470, file: !43, line: 646, baseType: !484, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !476, line: 28, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 26, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !476, line: 27, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !234, line: 38, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !424, line: 50, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !470, file: !43, line: 647, baseType: !7, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !470, file: !43, line: 650, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !43, line: 607, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !470, file: !43, line: 651, baseType: !492, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !470, file: !43, line: 654, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !43, line: 1966, size: 2048, align: 512, elements: !499)
!499 = !{!500, !3756, !3766, !3770, !3774, !3778, !3782, !3786, !3790, !3794, !3798, !3799, !3803, !3807, !3844, !3873, !3877, !3883, !3887, !3891, !3895, !3899, !3903, !3909, !3913}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !498, file: !43, line: 1967, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !469, !504, !7}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !506, line: 82, size: 1536, elements: !507)
!506 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!507 = !{!508, !509, !519, !527, !528, !545, !546, !550, !563, !3739, !3740, !3741, !3742, !3748, !3749, !3750}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !505, file: !506, line: 84, baseType: !7, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !505, file: !506, line: 85, baseType: !510, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !511, line: 275, baseType: !512)
!511 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !511, line: 275, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !512, file: !511, line: 275, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !511, line: 69, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !511, line: 64, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !516, file: !511, line: 65, baseType: !7, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !505, file: !506, line: 86, baseType: !520, size: 128, offset: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !521, line: 38, size: 128, elements: !522)
!521 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!522 = !{!523, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !521, line: 39, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !520, file: !521, line: 39, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !505, file: !506, line: 87, baseType: !504, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !505, file: !506, line: 88, baseType: !529, size: 128, offset: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !506, line: 49, size: 128, elements: !530)
!530 = !{!531, !542}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !506, line: 50, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !506, line: 50, size: 64, elements: !533)
!533 = !{!534, !541}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !506, line: 51, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !532, file: !506, line: 51, size: 64, elements: !536)
!536 = !{!537, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !535, file: !506, line: 52, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !228, line: 21, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !230, line: 27, baseType: !7)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !535, file: !506, line: 52, baseType: !538, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !532, file: !506, line: 54, baseType: !235, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !529, file: !506, line: 56, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !505, file: !506, line: 89, baseType: !469, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !505, file: !506, line: 91, baseType: !547, size: 256, offset: 448)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !505, file: !506, line: 94, baseType: !551, size: 64, offset: 704)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !552, line: 25, size: 64, elements: !553)
!552 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 26, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 26, size: 64, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !555, file: !552, line: 28, baseType: !236, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !552, line: 30, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !555, file: !552, line: 30, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !552, line: 31, baseType: !327, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !559, file: !552, line: 32, baseType: !138, size: 32, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !505, file: !506, line: 95, baseType: !564, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !506, line: 128, size: 1024, align: 512, elements: !567)
!567 = !{!568, !572, !573, !580, !586, !590, !594, !598, !599, !603, !607, !3729, !3733}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !566, file: !506, line: 129, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!138, !504, !7}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !566, file: !506, line: 130, baseType: !569, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !566, file: !506, line: 131, baseType: !574, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!138, !577, !579}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !566, file: !506, line: 132, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!138, !577, !7, !286, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !566, file: !506, line: 134, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!138, !577}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !566, file: !506, line: 135, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!138, !504}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !566, file: !506, line: 136, baseType: !595, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !504}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !566, file: !506, line: 137, baseType: !595, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !566, file: !506, line: 138, baseType: !600, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !504, !469}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !566, file: !506, line: 139, baseType: !604, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!390, !504, !390, !138}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !566, file: !506, line: 140, baseType: !608, size: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !3728}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !613, line: 70, size: 256, elements: !614)
!613 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!614 = !{!615, !616, !3724, !3725}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !612, file: !613, line: 71, baseType: !504, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !612, file: !613, line: 72, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !43, line: 1190, size: 10752, elements: !619)
!619 = !{!620, !621, !624, !625, !626, !630, !1106, !2240, !2280, !2365, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2382, !2386, !2387, !2390, !2393, !2396, !2399, !2400, !2401, !2442, !3657, !3658, !3659, !3660, !3661, !3662, !3665, !3667, !3674, !3675, !3676, !3677, !3678, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !618, file: !43, line: 1191, baseType: !263, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !618, file: !43, line: 1192, baseType: !622, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !234, line: 21, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !234, line: 18, baseType: !538)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !618, file: !43, line: 1193, baseType: !353, size: 8, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !618, file: !43, line: 1194, baseType: !297, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !618, file: !43, line: 1195, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !234, line: 52, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !424, line: 88, baseType: !629)
!629 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !618, file: !43, line: 1196, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !43, line: 2366, size: 576, elements: !633)
!633 = !{!634, !635, !636, !643, !647, !651, !655, !1091, !1092, !1096, !1098, !1099, !1100, !1102, !1103, !1104, !1105}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !43, line: 2367, baseType: !286, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !632, file: !43, line: 2368, baseType: !138, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !632, file: !43, line: 2376, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!138, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !642, line: 32, flags: DIFlagFwdDecl)
!642 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !632, file: !43, line: 2377, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !43, line: 75, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !632, file: !43, line: 2378, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!504, !631, !138, !286, !217}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !632, file: !43, line: 2380, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !617}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !43, line: 2381, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !658)
!658 = !{!659, !660, !661, !665, !687, !713, !714, !715, !716, !720, !723, !724, !744, !800, !801, !802, !803, !804, !805, !806, !807, !815, !819, !846, !867, !868, !869, !870, !879, !902, !903, !906, !909, !910, !911, !912, !913, !914, !915, !920, !921, !1049, !1057, !1058, !1059, !1061, !1065, !1066, !1070, !1071, !1072, !1073, !1075, !1076, !1077, !1084, !1085, !1086, !1090}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !657, file: !36, line: 403, baseType: !35, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !657, file: !36, line: 406, baseType: !263, size: 128, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !36, line: 409, baseType: !662, size: 448, offset: 192)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 448, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 56)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !657, file: !36, line: 417, baseType: !666, size: 768, offset: 640)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !667)
!667 = !{!668, !669, !670, !671, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !666, file: !36, line: 46, baseType: !314, size: 512)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !666, file: !36, line: 47, baseType: !656, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !666, file: !36, line: 48, baseType: !320, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !666, file: !36, line: 49, baseType: !672, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !666, file: !36, line: 50, baseType: !675, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !677, line: 26, size: 256, elements: !678)
!677 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !676, file: !677, line: 27, baseType: !7, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !676, file: !677, line: 28, baseType: !681, size: 192, offset: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !682, line: 43, size: 192, elements: !683)
!682 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !681, file: !682, line: 44, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !336, line: 23, baseType: !335)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !681, file: !682, line: 45, baseType: !263, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !657, file: !36, line: 418, baseType: !688, size: 64, offset: 1408)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !690)
!690 = !{!691, !692, !697, !701, !705, !709}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !689, file: !36, line: 54, baseType: !428, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !689, file: !36, line: 55, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!422, !688, !696, !390}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !689, file: !36, line: 57, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!422, !688, !696, !286, !437}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !689, file: !36, line: 59, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !656, !286}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !689, file: !36, line: 60, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!138, !656}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !689, file: !36, line: 61, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !656}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !657, file: !36, line: 419, baseType: !286, size: 64, offset: 1472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !657, file: !36, line: 420, baseType: !286, size: 64, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !657, file: !36, line: 421, baseType: !320, size: 64, offset: 1600)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !657, file: !36, line: 424, baseType: !717, size: 64, offset: 1664)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !657, file: !36, line: 425, baseType: !721, size: 64, offset: 1728)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !657, file: !36, line: 426, baseType: !7, size: 32, offset: 1792)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !657, file: !36, line: 435, baseType: !725, size: 256, offset: 1856)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !726, line: 66, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!727 = !{!728, !737, !738, !743}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !725, file: !726, line: 67, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !730, line: 13, baseType: !731)
!730 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !234, line: 181, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 179, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !732, file: !234, line: 180, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !228, line: 22, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !230, line: 30, baseType: !629)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !725, file: !726, line: 68, baseType: !685, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !725, file: !726, line: 70, baseType: !739, size: 32, offset: 96)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !740, line: 15, size: 32, elements: !741)
!740 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !739, file: !740, line: 20, baseType: !256, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !725, file: !726, line: 72, baseType: !263, size: 128, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !657, file: !36, line: 437, baseType: !745, size: 64, offset: 2112)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !747, line: 69, size: 320, elements: !748)
!747 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!748 = !{!749, !750, !751, !771, !773, !777, !778}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !746, file: !747, line: 70, baseType: !286, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !746, file: !747, line: 71, baseType: !656, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !746, file: !747, line: 72, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !747, line: 47, size: 256, elements: !755)
!755 = !{!756, !757, !763, !767}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !747, line: 49, baseType: !7, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !754, file: !747, line: 51, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!138, !286, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !754, file: !747, line: 53, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!138, !390, !761}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !754, file: !747, line: 55, baseType: !768, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !217}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !746, file: !747, line: 73, baseType: !772, size: 16, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !746, file: !747, line: 74, baseType: !774, size: 8, offset: 208)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !228, line: 16, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !230, line: 20, baseType: !776)
!776 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !747, line: 75, baseType: !351, size: 8, offset: 216)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !747, line: 76, baseType: !779, size: 64, offset: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !747, line: 76, size: 64, elements: !780)
!780 = !{!781, !782, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !779, file: !747, line: 77, baseType: !217, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !779, file: !747, line: 78, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !747, line: 86, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !785, file: !747, line: 87, baseType: !7, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !785, file: !747, line: 88, baseType: !390, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !779, file: !747, line: 79, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !747, line: 92, size: 256, elements: !793)
!793 = !{!794, !795, !796, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !792, file: !747, line: 94, baseType: !7, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !792, file: !747, line: 95, baseType: !7, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !792, file: !747, line: 96, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !792, file: !747, line: 97, baseType: !752, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !792, file: !747, line: 98, baseType: !217, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !657, file: !36, line: 438, baseType: !7, size: 32, offset: 2176)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !657, file: !36, line: 441, baseType: !7, size: 32, offset: 2208)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !657, file: !36, line: 442, baseType: !717, size: 64, offset: 2240)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !657, file: !36, line: 443, baseType: !721, size: 64, offset: 2304)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !657, file: !36, line: 444, baseType: !277, size: 8, offset: 2368)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !657, file: !36, line: 451, baseType: !277, size: 8, offset: 2376)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !657, file: !36, line: 454, baseType: !7, size: 32, offset: 2400)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !657, file: !36, line: 455, baseType: !808, size: 64, offset: 2432)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !810, line: 23, size: 96, elements: !811)
!810 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !809, file: !810, line: 24, baseType: !138, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !809, file: !810, line: 24, baseType: !138, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !809, file: !810, line: 24, baseType: !138, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !657, file: !36, line: 458, baseType: !816, size: 64, offset: 2496)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!138}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !657, file: !36, line: 460, baseType: !820, size: 4032, align: 512, offset: 2560)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 4032, elements: !844)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !821, file: !36, line: 363, baseType: !217, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !821, file: !36, line: 364, baseType: !7, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !821, file: !36, line: 367, baseType: !826, size: 448, offset: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !826, file: !36, line: 320, baseType: !656, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !826, file: !36, line: 321, baseType: !830, size: 384, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !831, line: 40, size: 384, elements: !832)
!831 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !830, file: !831, line: 41, baseType: !834, size: 384, align: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 384, align: 64, elements: !842)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !836, line: 5, size: 192, align: 64, elements: !837)
!836 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!837 = !{!838, !839, !841}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !835, file: !836, line: 6, baseType: !297, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !835, file: !836, line: 7, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !835, file: !836, line: 8, baseType: !840, size: 64, offset: 128)
!842 = !{!843}
!843 = !DISubrange(count: 2)
!844 = !{!845}
!845 = !DISubrange(count: 7)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !657, file: !36, line: 463, baseType: !847, size: 192, offset: 6592)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !848, line: 8, size: 192, elements: !849)
!848 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!849 = !{!850, !851, !853}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !847, file: !848, line: 10, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !847, file: !848, line: 11, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !847, file: !848, line: 12, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !856, line: 59, size: 48, elements: !857)
!856 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!857 = !{!858, !862, !863, !864, !865, !866}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !855, file: !856, line: 60, baseType: !859, size: 16)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !228, line: 18, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !230, line: 23, baseType: !861)
!861 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !855, file: !856, line: 61, baseType: !859, size: 16, offset: 16)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !855, file: !856, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !855, file: !856, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !856, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !855, file: !856, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !657, file: !36, line: 465, baseType: !297, size: 64, offset: 6784)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !657, file: !36, line: 469, baseType: !7, size: 32, offset: 6848)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !657, file: !36, line: 470, baseType: !263, size: 128, offset: 6912)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !657, file: !36, line: 471, baseType: !871, size: 64, offset: 7040)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !873, line: 33, size: 96, elements: !874)
!873 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!874 = !{!875, !876, !877, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !872, file: !873, line: 37, baseType: !138, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !872, file: !873, line: 43, baseType: !138, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !872, file: !873, line: 45, baseType: !302, size: 16, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !873, line: 47, baseType: !302, size: 16, offset: 80)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !657, file: !36, line: 476, baseType: !880, size: 64, offset: 7104)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !882)
!882 = !{!883, !899, !900, !901}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !881, file: !36, line: 379, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !886, line: 204, baseType: !887)
!886 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !886, line: 197, size: 192, elements: !888)
!888 = !{!889, !891, !892, !893, !895, !897}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !887, file: !886, line: 198, baseType: !890, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !886, line: 21, baseType: !539)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !887, file: !886, line: 199, baseType: !353, size: 8, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !887, file: !886, line: 200, baseType: !353, size: 8, offset: 40)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !887, file: !886, line: 201, baseType: !894, size: 16, offset: 48)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !886, line: 17, baseType: !360)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !887, file: !886, line: 202, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !886, line: 16, baseType: !236)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !887, file: !886, line: 203, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !886, line: 22, baseType: !236)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !881, file: !36, line: 380, baseType: !7, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !881, file: !36, line: 381, baseType: !390, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !881, file: !36, line: 382, baseType: !390, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !657, file: !36, line: 477, baseType: !881, size: 256, offset: 7168)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !657, file: !36, line: 480, baseType: !904, size: 64, offset: 7424)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !657, file: !36, line: 483, baseType: !907, size: 64, offset: 7488)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !657, file: !36, line: 488, baseType: !390, size: 64, offset: 7552)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !657, file: !36, line: 492, baseType: !217, size: 64, offset: 7616)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !657, file: !36, line: 493, baseType: !7, size: 32, offset: 7680)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !657, file: !36, line: 495, baseType: !217, size: 64, offset: 7744)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !657, file: !36, line: 496, baseType: !7, size: 32, offset: 7808)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !657, file: !36, line: 499, baseType: !7, size: 32, offset: 7840)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !657, file: !36, line: 500, baseType: !916, size: 64, offset: 7872)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !918, line: 45, baseType: !919)
!918 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !657, file: !36, line: 503, baseType: !7, size: 32, offset: 7936)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !657, file: !36, line: 504, baseType: !922, size: 64, offset: 8000)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !925, line: 96, size: 192, elements: !926)
!925 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!926 = !{!927, !928, !1009, !1013}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !924, file: !925, line: 97, baseType: !7, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !924, file: !925, line: 98, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !925, line: 24, size: 3072, elements: !931)
!931 = !{!932, !934, !935, !936, !937, !961, !962, !963, !964, !982, !994, !995, !1006, !1007, !1008}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !930, file: !925, line: 26, baseType: !933, size: 128)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 128, elements: !842)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !930, file: !925, line: 27, baseType: !933, size: 128, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !930, file: !925, line: 28, baseType: !138, size: 32, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !930, file: !925, line: 31, baseType: !327, size: 32, align: 512, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !930, file: !925, line: 32, baseType: !938, size: 960, offset: 576)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !939, line: 206, size: 960, elements: !940)
!939 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!940 = !{!941, !950, !955, !957, !958, !960}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !938, file: !939, line: 207, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !234, line: 232, size: 128, align: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !943, file: !234, line: 233, baseType: !942, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !943, file: !234, line: 234, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !942}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !938, file: !939, line: 208, baseType: !951, size: 256, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 256, elements: !953)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!953 = !{!954}
!954 = !DISubrange(count: 4)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !938, file: !939, line: 209, baseType: !956, size: 256, offset: 320)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !953)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !938, file: !939, line: 213, baseType: !426, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !938, file: !939, line: 215, baseType: !959, size: 256, offset: 640)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !953)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !939, line: 216, baseType: !351, size: 8, offset: 896)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !930, file: !925, line: 33, baseType: !297, size: 64, offset: 1536)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !930, file: !925, line: 34, baseType: !297, size: 64, offset: 1600)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !930, file: !925, line: 35, baseType: !277, size: 8, offset: 1664)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !930, file: !925, line: 36, baseType: !965, size: 320, offset: 1728)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !966, line: 11, size: 320, elements: !967)
!966 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!967 = !{!968, !975, !976, !981}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !965, file: !966, line: 16, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !234, line: 198, size: 128, elements: !970)
!970 = !{!971, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !969, file: !234, line: 199, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !969, file: !234, line: 199, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !965, file: !966, line: 17, baseType: !297, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !965, file: !966, line: 18, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !966, line: 19, baseType: !538, size: 32, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !930, file: !925, line: 37, baseType: !983, size: 256, offset: 2048)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !984, line: 98, size: 256, elements: !985)
!984 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !983, file: !984, line: 99, baseType: !729, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !983, file: !984, line: 100, baseType: !263, size: 128, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !983, file: !984, line: 101, baseType: !989, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !984, line: 21, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !930, file: !925, line: 38, baseType: !943, size: 128, align: 64, offset: 2304)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !930, file: !925, line: 39, baseType: !996, size: 64, offset: 2432)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !925, line: 49, size: 768, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !925, line: 50, baseType: !327, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !997, file: !925, line: 51, baseType: !956, size: 256, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !997, file: !925, line: 53, baseType: !956, size: 256, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !997, file: !925, line: 54, baseType: !297, size: 64, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !997, file: !925, line: 55, baseType: !996, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !997, file: !925, line: 56, baseType: !138, size: 32, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !997, file: !925, line: 57, baseType: !138, size: 32, offset: 736)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !930, file: !925, line: 40, baseType: !297, size: 64, offset: 2496)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !930, file: !925, line: 42, baseType: !138, size: 32, offset: 2560)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !930, file: !925, line: 43, baseType: !923, size: 64, offset: 2624)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !924, file: !925, line: 99, baseType: !1010, offset: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1011, line: 211, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1012 = !{}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !924, file: !925, line: 100, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !925, line: 63, size: 3008, elements: !1016)
!1016 = !{!1017, !1018, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1048}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1015, file: !925, line: 64, baseType: !996, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1015, file: !925, line: 65, baseType: !1019, size: 192, offset: 64)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 192, elements: !391)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1015, file: !925, line: 67, baseType: !138, size: 32, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1015, file: !925, line: 68, baseType: !725, size: 256, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !925, line: 69, baseType: !327, size: 32, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1015, file: !925, line: 70, baseType: !725, size: 256, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1015, file: !925, line: 71, baseType: !297, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1015, file: !925, line: 72, baseType: !297, size: 64, offset: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1015, file: !925, line: 73, baseType: !297, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1015, file: !925, line: 74, baseType: !297, size: 64, offset: 1088)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1015, file: !925, line: 75, baseType: !297, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1015, file: !925, line: 76, baseType: !297, size: 64, offset: 1216)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1015, file: !925, line: 77, baseType: !297, size: 64, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1015, file: !925, line: 78, baseType: !297, size: 64, offset: 1344)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1015, file: !925, line: 79, baseType: !277, size: 8, offset: 1408)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1015, file: !925, line: 80, baseType: !297, size: 64, offset: 1472)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1015, file: !925, line: 81, baseType: !725, size: 256, offset: 1536)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1015, file: !925, line: 82, baseType: !676, size: 256, offset: 1792)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1015, file: !925, line: 84, baseType: !256, size: 32, offset: 2048)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1015, file: !925, line: 87, baseType: !297, size: 64, offset: 2112)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1015, file: !925, line: 88, baseType: !297, size: 64, offset: 2176)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1015, file: !925, line: 89, baseType: !1040, size: 704, offset: 2240)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !984, line: 111, size: 704, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1047}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1040, file: !984, line: 112, baseType: !983, size: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1040, file: !984, line: 113, baseType: !965, size: 320, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1040, file: !984, line: 116, baseType: !1045, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !984, line: 18, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1040, file: !984, line: 117, baseType: !138, size: 32, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1015, file: !925, line: 90, baseType: !923, size: 64, offset: 2944)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !657, file: !36, line: 515, baseType: !1050, size: 64, offset: 8064)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1052, line: 117, size: 128, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1051, file: !1052, line: 118, baseType: !227, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1051, file: !1052, line: 119, baseType: !227, size: 32, offset: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1051, file: !1052, line: 120, baseType: !426, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !657, file: !36, line: 516, baseType: !7, size: 32, offset: 8128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !657, file: !36, line: 519, baseType: !7, size: 32, offset: 8160)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !657, file: !36, line: 520, baseType: !1060, size: 64, offset: 8192)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !657, file: !36, line: 523, baseType: !1062, size: 64, offset: 8256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !36, line: 523, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !657, file: !36, line: 524, baseType: !7, size: 32, offset: 8320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !657, file: !36, line: 525, baseType: !1067, size: 64, offset: 8384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !36, line: 525, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !657, file: !36, line: 526, baseType: !7, size: 32, offset: 8448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !657, file: !36, line: 533, baseType: !217, size: 64, offset: 8512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !657, file: !36, line: 534, baseType: !7, size: 32, offset: 8576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !657, file: !36, line: 535, baseType: !1074, size: 64, offset: 8640)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !657, file: !36, line: 536, baseType: !7, size: 32, offset: 8704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !657, file: !36, line: 539, baseType: !138, size: 32, offset: 8736)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !657, file: !36, line: 540, baseType: !1078, size: 64, offset: 8768)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1080, line: 32, size: 64, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1079, file: !1080, line: 33, baseType: !227, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1079, file: !1080, line: 34, baseType: !227, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !657, file: !36, line: 563, baseType: !263, size: 128, offset: 8832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !657, file: !36, line: 565, baseType: !263, size: 128, offset: 8960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !657, file: !36, line: 568, baseType: !1087, size: 64, offset: 9088)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !657, file: !36, line: 570, baseType: !256, size: 32, offset: 9152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !43, line: 2382, baseType: !631, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !632, file: !43, line: 2383, baseType: !1093, size: 64, offset: 512)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !234, line: 194, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1093, file: !234, line: 195, baseType: !972, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !632, file: !43, line: 2385, baseType: !1097, offset: 576)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1011, line: 206, elements: !1012)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !632, file: !43, line: 2386, baseType: !1097, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !632, file: !43, line: 2387, baseType: !1097, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !632, file: !43, line: 2388, baseType: !1101, offset: 576)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, elements: !391)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !632, file: !43, line: 2390, baseType: !1097, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !632, file: !43, line: 2391, baseType: !1097, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !632, file: !43, line: 2392, baseType: !1097, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !632, file: !43, line: 2393, baseType: !1097, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !618, file: !43, line: 1197, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !43, line: 2057, size: 1664, elements: !1110)
!1110 = !{!1111, !1115, !1119, !1120, !1124, !1130, !1134, !1135, !1136, !1140, !1144, !1148, !1149, !1150, !1156, !1160, !1161, !2165, !2166, !2167, !2168, !2172, !2176, !2223, !2238, !2239}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1109, file: !43, line: 2058, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!469, !617}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1109, file: !43, line: 2059, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !469}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1109, file: !43, line: 2060, baseType: !1116, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1109, file: !43, line: 2062, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !469, !138}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1109, file: !43, line: 2063, baseType: !1125, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!138, !469, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !43, line: 309, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1109, file: !43, line: 2064, baseType: !1131, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!138, !469}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1109, file: !43, line: 2065, baseType: !1116, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1109, file: !43, line: 2066, baseType: !652, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1109, file: !43, line: 2067, baseType: !1137, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!138, !617, !138}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1109, file: !43, line: 2068, baseType: !1141, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!138, !617, !42}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1109, file: !43, line: 2069, baseType: !1145, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!138, !617}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1109, file: !43, line: 2070, baseType: !1141, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1109, file: !43, line: 2071, baseType: !1145, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1109, file: !43, line: 2072, baseType: !1151, size: 64, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!138, !504, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !43, line: 62, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1109, file: !43, line: 2073, baseType: !1157, size: 64, offset: 896)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!138, !617, !852, !390}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1109, file: !43, line: 2074, baseType: !652, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1109, file: !43, line: 2076, baseType: !1162, size: 64, offset: 1024)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!138, !1165, !504}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1167, line: 17, size: 960, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1199, !1200, !2164}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1166, file: !1167, line: 18, baseType: !390, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !1167, line: 19, baseType: !437, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1166, file: !1167, line: 20, baseType: !437, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1166, file: !1167, line: 21, baseType: !437, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1166, file: !1167, line: 22, baseType: !437, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1166, file: !1167, line: 23, baseType: !627, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1166, file: !1167, line: 24, baseType: !627, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1167, line: 25, baseType: !725, size: 256, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1166, file: !1167, line: 26, baseType: !1178, size: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1167, line: 32, size: 256, elements: !1181)
!1181 = !{!1182, !1187, !1191, !1195}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1180, file: !1167, line: 33, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!217, !1165, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1180, file: !1167, line: 34, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1165, !217}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1180, file: !1167, line: 35, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!217, !1165, !217, !1186}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1180, file: !1167, line: 36, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!138, !1165, !217}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1166, file: !1167, line: 27, baseType: !138, size: 32, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1166, file: !1167, line: 28, baseType: !1201, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !43, line: 994, size: 1856, align: 64, elements: !1204)
!1204 = !{!1205, !1216, !1217, !1219, !1220, !1221, !1222, !1223, !1279, !1479, !1488, !1494, !1495, !2154, !2155, !2156, !2157, !2159, !2160, !2163}
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !43, line: 995, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !43, line: 995, size: 128, elements: !1207)
!1207 = !{!1208, !1214, !1215}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1206, file: !43, line: 996, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1210, line: 60, size: 64, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1209, file: !1210, line: 61, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1206, file: !43, line: 997, baseType: !943, size: 128, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1206, file: !43, line: 998, baseType: !7, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1203, file: !43, line: 1005, baseType: !327, size: 32, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1203, file: !43, line: 1006, baseType: !1218, size: 32, offset: 160)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !234, line: 156, baseType: !7)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1203, file: !43, line: 1007, baseType: !729, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1203, file: !43, line: 1008, baseType: !725, size: 256, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1203, file: !43, line: 1009, baseType: !627, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1203, file: !43, line: 1010, baseType: !7, size: 32, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1203, file: !43, line: 1011, baseType: !1224, size: 256, offset: 640)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !43, line: 948, size: 256, elements: !1225)
!1225 = !{!1226, !1247, !1275, !1276, !1277, !1278}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1224, file: !43, line: 949, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1228, line: 34, baseType: !1229)
!1228 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 25, size: 64, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1229, file: !1228, line: 26, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1233, line: 27, baseType: !1234)
!1233 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1233, line: 13, size: 64, elements: !1235)
!1235 = !{!1236, !1246}
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1233, line: 14, baseType: !1237, size: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1233, line: 14, size: 32, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1237, file: !1233, line: 15, baseType: !256, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !1233, line: 16, baseType: !1241, size: 32)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !1233, line: 16, size: 32, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1241, file: !1233, line: 18, baseType: !351, size: 8)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1241, file: !1233, line: 19, baseType: !1245, size: 24, offset: 8)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 24, elements: !391)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1234, file: !1233, line: 26, baseType: !339, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1224, file: !43, line: 950, baseType: !1248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !48, line: 59, size: 768, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1256, !1257, !1264, !1265}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1249, file: !48, line: 61, baseType: !251, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1249, file: !48, line: 62, baseType: !7, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1249, file: !48, line: 63, baseType: !327, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1249, file: !48, line: 65, baseType: !1255, size: 256, offset: 128)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 256, elements: !953)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1249, file: !48, line: 66, baseType: !1093, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1249, file: !48, line: 68, baseType: !1258, size: 192, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1259, line: 41, baseType: !1260)
!1259 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1259, line: 37, size: 192, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1260, file: !1259, line: 38, baseType: !327, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1260, file: !1259, line: 39, baseType: !263, size: 128, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1249, file: !48, line: 69, baseType: !943, size: 128, align: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1249, file: !48, line: 70, baseType: !1266, offset: 768)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1267, elements: !1273)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !48, line: 54, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1267, file: !48, line: 55, baseType: !138, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1267, file: !48, line: 56, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !48, line: 56, flags: DIFlagFwdDecl)
!1273 = !{!1274}
!1274 = !DISubrange(count: -1)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1224, file: !43, line: 951, baseType: !47, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1224, file: !43, line: 952, baseType: !475, size: 32, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1224, file: !43, line: 952, baseType: !475, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1224, file: !43, line: 953, baseType: !138, size: 32, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1203, file: !43, line: 1012, baseType: !1280, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1283, line: 110, size: 1472, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1301, !1302, !1303, !1304, !1305, !1306, !1424, !1425, !1426, !1427, !1428, !1459, !1462, !1466, !1474}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1282, file: !1283, line: 111, baseType: !729, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1282, file: !1283, line: 112, baseType: !475, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1282, file: !1283, line: 113, baseType: !484, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1282, file: !1283, line: 114, baseType: !475, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1282, file: !1283, line: 115, baseType: !484, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1282, file: !1283, line: 116, baseType: !475, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1282, file: !1283, line: 117, baseType: !484, size: 32, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1282, file: !1283, line: 118, baseType: !475, size: 32, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1282, file: !1283, line: 119, baseType: !484, size: 32, offset: 288)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1282, file: !1283, line: 120, baseType: !7, size: 32, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1282, file: !1283, line: 121, baseType: !1296, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1297, line: 24, baseType: !1298)
!1297 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 24, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1298, file: !1297, line: 24, baseType: !235, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1282, file: !1283, line: 122, baseType: !1296, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1282, file: !1283, line: 123, baseType: !1296, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1282, file: !1283, line: 124, baseType: !1296, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1282, file: !1283, line: 125, baseType: !1296, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1282, file: !1283, line: 127, baseType: !353, size: 8, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1282, file: !1283, line: 129, baseType: !1307, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1309, line: 195, size: 1728, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1310 = !{!1311, !1312, !1315, !1320, !1329, !1332, !1333, !1340, !1341, !1342, !1343, !1346, !1347, !1348, !1349, !1350, !1388, !1409}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1308, file: !1309, line: 196, baseType: !251, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1308, file: !1309, line: 197, baseType: !1313, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1309, line: 28, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !234, line: 104, baseType: !227)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 198, baseType: !1316, size: 192, offset: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 198, size: 192, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1316, file: !1309, line: 199, baseType: !263, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1316, file: !1309, line: 200, baseType: !835, size: 192, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1308, file: !1309, line: 205, baseType: !1321, size: 320, offset: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1322, line: 48, size: 320, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1323 = !{!1324, !1325, !1326, !1327, !1328}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1321, file: !1322, line: 49, baseType: !729, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1321, file: !1322, line: 55, baseType: !729, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1321, file: !1322, line: 57, baseType: !739, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1321, file: !1322, line: 59, baseType: !685, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1321, file: !1322, line: 60, baseType: !263, size: 128, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1308, file: !1309, line: 206, baseType: !1330, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1309, line: 206, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1308, file: !1309, line: 207, baseType: !217, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 208, baseType: !1334, size: 64, offset: 704)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 208, size: 64, elements: !1335)
!1335 = !{!1336, !1339}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1334, file: !1309, line: 209, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1338, line: 8, baseType: !736)
!1338 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1334, file: !1309, line: 210, baseType: !1337, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1308, file: !1309, line: 212, baseType: !1337, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1308, file: !1309, line: 213, baseType: !475, size: 32, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1308, file: !1309, line: 214, baseType: !484, size: 32, offset: 864)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1308, file: !1309, line: 215, baseType: !1344, size: 32, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1309, line: 31, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !234, line: 110, baseType: !538)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1308, file: !1309, line: 216, baseType: !302, size: 16, offset: 928)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1308, file: !1309, line: 217, baseType: !302, size: 16, offset: 944)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1308, file: !1309, line: 221, baseType: !861, size: 16, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1309, line: 228, baseType: !297, size: 64, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 245, baseType: !1351, size: 320, offset: 1088)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 245, size: 320, elements: !1352)
!1352 = !{!1353, !1380}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1351, file: !1309, line: 246, baseType: !1354, size: 320)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1309, line: 114, size: 320, elements: !1355)
!1355 = !{!1356, !1357, !1369, !1372, !1379}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1354, file: !1309, line: 116, baseType: !297, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1309, line: 117, baseType: !1358, size: 64, offset: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !1309, line: 117, size: 64, elements: !1359)
!1359 = !{!1360, !1368}
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !1309, line: 118, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1358, file: !1309, line: 118, size: 64, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1361, file: !1309, line: 120, baseType: !359, size: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1361, file: !1309, line: 121, baseType: !1365, size: 48, offset: 16)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 48, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 6)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1358, file: !1309, line: 127, baseType: !297, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1354, file: !1309, line: 129, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1309, line: 102, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1354, file: !1309, line: 130, baseType: !1373, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1309, line: 108, size: 192, elements: !1375)
!1375 = !{!1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1374, file: !1309, line: 109, baseType: !943, size: 128, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1374, file: !1309, line: 110, baseType: !251, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1374, file: !1309, line: 111, baseType: !277, size: 8, offset: 160)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1354, file: !1309, line: 131, baseType: !286, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !1309, line: 247, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !1309, line: 247, size: 320, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1381, file: !1309, line: 248, baseType: !297, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1381, file: !1309, line: 249, baseType: !297, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1381, file: !1309, line: 250, baseType: !1370, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1381, file: !1309, line: 251, baseType: !1373, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1381, file: !1309, line: 252, baseType: !390, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 260, baseType: !1389, size: 256, offset: 1408)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 260, size: 256, elements: !1390)
!1390 = !{!1391, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1389, file: !1309, line: 261, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1309, line: 134, size: 256, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1392, file: !1309, line: 135, baseType: !217, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1392, file: !1309, line: 136, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !953)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1309, line: 262, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1389, file: !1309, line: 262, size: 256, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1398, file: !1309, line: 264, baseType: !263, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1398, file: !1309, line: 265, baseType: !1402, size: 128, offset: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1403, line: 22, size: 128, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1404 = !{!1405, !1408}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1402, file: !1403, line: 23, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1403, line: 23, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1402, file: !1403, line: 24, baseType: !297, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1308, file: !1309, line: 280, baseType: !1410, size: 64, offset: 1664)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1309, line: 176, size: 192, elements: !1412)
!1412 = !{!1413, !1422, !1423}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1411, file: !1309, line: 177, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1309, line: 171, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!138, !1307, !1418, !1420, !1307}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1411, file: !1309, line: 178, baseType: !1307, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1411, file: !1309, line: 179, baseType: !1370, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1282, file: !1283, line: 130, baseType: !1307, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1282, file: !1283, line: 131, baseType: !1307, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1282, file: !1283, line: 132, baseType: !1307, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1282, file: !1283, line: 135, baseType: !217, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1282, file: !1283, line: 137, baseType: !1429, size: 64, offset: 1088)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1431, line: 14, size: 1088, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1432 = !{!1433, !1434, !1443, !1444, !1445, !1446, !1447, !1448}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1430, file: !1431, line: 15, baseType: !251, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1430, file: !1431, line: 17, baseType: !1435, size: 320, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1436, line: 22, size: 320, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1436, line: 23, baseType: !685, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1435, file: !1436, line: 24, baseType: !735, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1435, file: !1436, line: 26, baseType: !263, size: 128, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1435, file: !1436, line: 28, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1430, file: !1431, line: 19, baseType: !297, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1430, file: !1431, line: 20, baseType: !729, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1430, file: !1431, line: 23, baseType: !969, size: 128, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1430, file: !1431, line: 24, baseType: !475, size: 32, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1430, file: !1431, line: 29, baseType: !729, size: 64, offset: 704)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1430, file: !1431, line: 36, baseType: !1449, size: 320, offset: 768)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1450, line: 15, size: 320, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !1450, line: 16, baseType: !685, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1449, file: !1450, line: 18, baseType: !138, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1449, file: !1450, line: 19, baseType: !138, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1449, file: !1450, line: 20, baseType: !138, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1449, file: !1450, line: 21, baseType: !138, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1449, file: !1450, line: 22, baseType: !297, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 23, baseType: !297, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1282, file: !1283, line: 138, baseType: !1460, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !476, line: 18, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1282, file: !1283, line: 139, baseType: !1463, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1465, line: 16, flags: DIFlagFwdDecl)
!1465 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1282, file: !1283, line: 140, baseType: !1467, size: 64, offset: 1280)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1283, line: 25, size: 64, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1468, file: !1283, line: 26, baseType: !256, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1468, file: !1283, line: 27, baseType: !138, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1468, file: !1283, line: 28, baseType: !1473, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, elements: !1273)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1283, line: 142, baseType: !1475, size: 128, offset: 1344)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1283, line: 142, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1475, file: !1283, line: 143, baseType: !138, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1475, file: !1283, line: 144, baseType: !943, size: 128, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1203, file: !43, line: 1013, baseType: !1480, size: 256, offset: 960)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !43, line: 970, size: 256, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1480, file: !43, line: 971, baseType: !297, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1480, file: !43, line: 972, baseType: !7, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1480, file: !43, line: 973, baseType: !7, size: 32, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1480, file: !43, line: 974, baseType: !7, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1480, file: !43, line: 975, baseType: !7, size: 32, offset: 160)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1480, file: !43, line: 976, baseType: !627, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1203, file: !43, line: 1014, baseType: !1489, size: 128, offset: 1216)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1490, line: 8, size: 128, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1489, file: !1490, line: 9, baseType: !611, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1489, file: !1490, line: 10, baseType: !504, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1203, file: !43, line: 1015, baseType: !469, size: 64, offset: 1344)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1203, file: !43, line: 1016, baseType: !1496, size: 64, offset: 1408)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !43, line: 1914, size: 2112, elements: !1499)
!1499 = !{!1500, !1501, !1506, !1510, !1514, !1599, !1600, !1606, !1619, !1627, !1631, !1632, !2076, !2077, !2081, !2086, !2087, !2091, !2095, !2101, !2102, !2106, !2107, !2113, !2117, !2121, !2127, !2131, !2135, !2139, !2143, !2144, !2150}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1498, file: !43, line: 1915, baseType: !656, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1498, file: !43, line: 1916, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!627, !1505, !627, !138}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1498, file: !43, line: 1917, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!422, !1505, !390, !437, !1186}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1498, file: !43, line: 1918, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!422, !1505, !286, !437, !1186}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1498, file: !43, line: 1919, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!422, !1518, !1540}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !43, line: 373, size: 384, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1527, !1528, !1529, !1530}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1519, file: !43, line: 374, baseType: !1505, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1519, file: !43, line: 375, baseType: !627, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1519, file: !43, line: 376, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1518, !426}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1519, file: !43, line: 377, baseType: !217, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1519, file: !43, line: 378, baseType: !138, size: 32, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1519, file: !43, line: 379, baseType: !359, size: 16, offset: 288)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !43, line: 380, baseType: !1531, size: 64, offset: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !43, line: 380, size: 64, elements: !1532)
!1532 = !{!1533, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1531, file: !43, line: 386, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !43, line: 386, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1531, file: !43, line: 395, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!422, !217}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1542, line: 41, size: 320, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1554, !1594}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1541, file: !1542, line: 42, baseType: !351, size: 8)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1541, file: !1542, line: 43, baseType: !277, size: 8, offset: 8)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1541, file: !1542, line: 44, baseType: !277, size: 8, offset: 16)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1541, file: !1542, line: 45, baseType: !277, size: 8, offset: 24)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1541, file: !1542, line: 46, baseType: !277, size: 8, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 47, baseType: !1550, size: 64, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 47, size: 64, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1550, file: !1542, line: 48, baseType: !437, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1550, file: !1542, line: 49, baseType: !138, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 61, baseType: !1555, size: 128, offset: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 61, size: 128, elements: !1556)
!1556 = !{!1557, !1563}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1555, file: !1542, line: 67, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1559, line: 17, size: 128, elements: !1560)
!1559 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1558, file: !1559, line: 19, baseType: !217, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1558, file: !1559, line: 20, baseType: !438, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1542, line: 68, baseType: !1564, size: 128)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !1542, line: 68, size: 128, elements: !1565)
!1565 = !{!1566, !1593}
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1542, line: 69, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1542, line: 69, size: 64, elements: !1568)
!1568 = !{!1569, !1572, !1579, !1583, !1592}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1567, file: !1542, line: 71, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1567, file: !1542, line: 72, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1542, line: 17, size: 128, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1575, file: !1542, line: 18, baseType: !217, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1575, file: !1542, line: 19, baseType: !437, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1567, file: !1542, line: 73, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1542, line: 73, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1567, file: !1542, line: 74, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1586, line: 296, size: 128, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1587 = !{!1588, !1589, !1591}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1585, file: !1586, line: 297, baseType: !327, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1585, file: !1586, line: 299, baseType: !1590, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !234, line: 154, baseType: !7)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1585, file: !1586, line: 300, baseType: !217, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1567, file: !1542, line: 75, baseType: !217, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1564, file: !1542, line: 77, baseType: !437, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 80, baseType: !1595, size: 64, offset: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 80, size: 64, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1595, file: !1542, line: 81, baseType: !297, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1595, file: !1542, line: 82, baseType: !627, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1498, file: !43, line: 1920, baseType: !1515, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1498, file: !43, line: 1921, baseType: !1601, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!138, !1518, !1604, !7}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !43, line: 53, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1498, file: !43, line: 1923, baseType: !1607, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!138, !1505, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !43, line: 1858, size: 128, elements: !1612)
!1612 = !{!1613, !1618}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1611, file: !43, line: 1859, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !43, line: 1855, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!277, !1610, !286, !138, !627, !235, !7}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1611, file: !43, line: 1860, baseType: !627, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1498, file: !43, line: 1924, baseType: !1620, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !1505, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1624, line: 59, baseType: !7)
!1624 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !642, line: 31, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1498, file: !43, line: 1925, baseType: !1628, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!426, !1505, !7, !297}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1498, file: !43, line: 1926, baseType: !1628, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1498, file: !43, line: 1927, baseType: !1633, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!138, !1505, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !56, line: 625, size: 1344, elements: !1638)
!1638 = !{!1639, !1648, !1803, !1809, !1816, !1817, !1822, !1823, !1828, !1829, !1832, !2069, !2070, !2071, !2072, !2073, !2074}
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !56, line: 628, baseType: !1640, size: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !56, line: 628, size: 128, elements: !1641)
!1641 = !{!1642, !1647}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !56, line: 629, baseType: !1643, size: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !56, line: 629, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1643, file: !56, line: 631, baseType: !297, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1643, file: !56, line: 632, baseType: !297, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1640, file: !56, line: 635, baseType: !943, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1637, file: !56, line: 639, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !56, line: 733, size: 10240, elements: !1651)
!1651 = !{!1652, !1801}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !56, line: 734, baseType: !1653, size: 10240)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !56, line: 734, size: 10240, elements: !1654)
!1654 = !{!1655, !1659, !1672, !1676, !1677, !1678, !1679, !1680, !1681, !1690, !1691, !1692, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1731, !1733, !1736, !1781, !1782, !1783, !1786, !1787, !1788, !1791, !1792, !1793, !1799, !1800}
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !56, line: 739, baseType: !1656, size: 512, align: 512)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !56, line: 739, size: 512, align: 512, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1656, file: !56, line: 747, baseType: !256, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1653, file: !56, line: 750, baseType: !1660, size: 128, offset: 512)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1661, line: 218, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1662 = !{!1663, !1670, !1671}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1661, line: 219, baseType: !1664, size: 32)
!1664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1660, file: !1661, line: 219, size: 32, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1664, file: !1661, line: 220, baseType: !327, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1664, file: !1661, line: 221, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1661, line: 197, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 197, elements: !1012)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1660, file: !1661, line: 223, baseType: !7, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1660, file: !1661, line: 224, baseType: !217, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1653, file: !56, line: 752, baseType: !1673, size: 64, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!297, !1505, !297, !297, !297, !297}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1653, file: !56, line: 756, baseType: !297, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1653, file: !56, line: 757, baseType: !297, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1653, file: !56, line: 760, baseType: !297, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1653, file: !56, line: 761, baseType: !297, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1653, file: !56, line: 763, baseType: !297, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1653, file: !56, line: 764, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1684, line: 299, baseType: !1685)
!1684 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1684, line: 299, size: 64, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1685, file: !1684, line: 299, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1689, line: 18, baseType: !297)
!1689 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1653, file: !56, line: 773, baseType: !256, size: 32, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1653, file: !56, line: 785, baseType: !256, size: 32, offset: 1120)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1653, file: !56, line: 795, baseType: !1693, size: 64, offset: 1152)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !56, line: 726, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1694, file: !56, line: 727, baseType: !235, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1694, file: !56, line: 728, baseType: !138, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1653, file: !56, line: 801, baseType: !297, size: 64, offset: 1216)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1653, file: !56, line: 804, baseType: !729, size: 64, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1653, file: !56, line: 806, baseType: !138, size: 32, offset: 1344)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1653, file: !56, line: 808, baseType: !327, size: 32, offset: 1376)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1653, file: !56, line: 823, baseType: !1321, size: 320, offset: 1408)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1653, file: !56, line: 825, baseType: !263, size: 128, offset: 1728)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1653, file: !56, line: 845, baseType: !138, size: 32, offset: 1856)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1653, file: !56, line: 849, baseType: !297, size: 64, offset: 1920)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1653, file: !56, line: 850, baseType: !297, size: 64, offset: 1984)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1653, file: !56, line: 852, baseType: !297, size: 64, offset: 2048)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1653, file: !56, line: 853, baseType: !297, size: 64, offset: 2112)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1653, file: !56, line: 854, baseType: !731, size: 64, offset: 2176)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1653, file: !56, line: 855, baseType: !297, size: 64, offset: 2240)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1653, file: !56, line: 856, baseType: !297, size: 64, offset: 2304)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1653, file: !56, line: 857, baseType: !297, size: 64, offset: 2368)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1653, file: !56, line: 858, baseType: !297, size: 64, offset: 2432)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1653, file: !56, line: 865, baseType: !515, size: 32, offset: 2496)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1653, file: !56, line: 867, baseType: !327, size: 32, offset: 2528)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1653, file: !56, line: 869, baseType: !297, size: 64, offset: 2560)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1653, file: !56, line: 869, baseType: !297, size: 64, offset: 2624)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1653, file: !56, line: 869, baseType: !297, size: 64, offset: 2688)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1653, file: !56, line: 869, baseType: !297, size: 64, offset: 2752)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1653, file: !56, line: 870, baseType: !297, size: 64, offset: 2816)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1653, file: !56, line: 870, baseType: !297, size: 64, offset: 2880)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1653, file: !56, line: 870, baseType: !297, size: 64, offset: 2944)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1653, file: !56, line: 871, baseType: !297, size: 64, offset: 3008)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1653, file: !56, line: 871, baseType: !297, size: 64, offset: 3072)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1653, file: !56, line: 871, baseType: !297, size: 64, offset: 3136)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1653, file: !56, line: 871, baseType: !297, size: 64, offset: 3200)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1653, file: !56, line: 873, baseType: !1728, size: 3328, offset: 3264)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 3328, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 52)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1653, file: !56, line: 875, baseType: !1732, size: 1280, offset: 6592)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 1280, elements: !953)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1653, file: !56, line: 877, baseType: !1734, size: 64, offset: 7872)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !56, line: 877, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1653, file: !56, line: 880, baseType: !1737, size: 1088, offset: 7936)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1738, line: 72, baseType: !1739)
!1738 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1738, line: 23, size: 1088, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1748, !1749, !1750, !1751, !1778, !1779, !1780}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1739, file: !1738, line: 28, baseType: !235, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1739, file: !1738, line: 38, baseType: !731, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1739, file: !1738, line: 40, baseType: !297, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1739, file: !1738, line: 43, baseType: !1321, size: 320, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1739, file: !1738, line: 44, baseType: !1746, size: 64, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1738, line: 44, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1739, file: !1738, line: 48, baseType: !297, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !1738, line: 59, baseType: !725, size: 256, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1739, file: !1738, line: 60, baseType: !217, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1739, file: !1738, line: 61, baseType: !1752, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1755, line: 13, size: 1216, elements: !1756)
!1755 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1754, file: !1755, line: 14, baseType: !217, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1754, file: !1755, line: 15, baseType: !297, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1754, file: !1755, line: 17, baseType: !297, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1754, file: !1755, line: 17, baseType: !297, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1754, file: !1755, line: 18, baseType: !297, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1754, file: !1755, line: 18, baseType: !297, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1754, file: !1755, line: 19, baseType: !1764, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1754, file: !1755, line: 21, baseType: !426, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1754, file: !1755, line: 23, baseType: !426, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1754, file: !1755, line: 24, baseType: !426, size: 64, offset: 576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1754, file: !1755, line: 25, baseType: !426, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1754, file: !1755, line: 26, baseType: !426, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1754, file: !1755, line: 27, baseType: !426, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1754, file: !1755, line: 28, baseType: !426, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1754, file: !1755, line: 29, baseType: !426, size: 64, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1754, file: !1755, line: 30, baseType: !426, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1754, file: !1755, line: 31, baseType: !426, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1754, file: !1755, line: 32, baseType: !426, size: 64, offset: 1088)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1754, file: !1755, line: 33, baseType: !426, size: 64, offset: 1152)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1739, file: !1738, line: 63, baseType: !256, size: 32, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1739, file: !1738, line: 69, baseType: !359, size: 16, offset: 1056)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1739, file: !1738, line: 70, baseType: !859, size: 16, offset: 1072)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !56, line: 882, baseType: !297, size: 64, offset: 9024)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1653, file: !56, line: 885, baseType: !327, size: 32, offset: 9088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1653, file: !56, line: 886, baseType: !1784, size: 64, offset: 9152)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !56, line: 732, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1653, file: !56, line: 901, baseType: !1460, size: 64, offset: 9216)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1653, file: !56, line: 904, baseType: !1505, size: 64, offset: 9280)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1653, file: !56, line: 906, baseType: !1789, size: 64, offset: 9344)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !56, line: 906, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1653, file: !56, line: 930, baseType: !256, size: 32, offset: 9408)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1653, file: !56, line: 933, baseType: !256, size: 32, offset: 9440)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1653, file: !56, line: 935, baseType: !1794, size: 64, offset: 9472)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !97, line: 103, size: 64, elements: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1794, file: !97, line: 104, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !97, line: 101, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1653, file: !56, line: 940, baseType: !729, size: 64, offset: 9536)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1653, file: !56, line: 942, baseType: !983, size: 256, offset: 9600)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1650, file: !56, line: 986, baseType: !1802, offset: 10240)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !1273)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1637, file: !56, line: 640, baseType: !1804, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1684, line: 297, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1684, line: 297, size: 64, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1805, file: !1684, line: 297, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1689, line: 19, baseType: !297)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !56, line: 646, baseType: !1810, size: 64, offset: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !56, line: 646, size: 64, elements: !1811)
!1811 = !{!1812, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1810, file: !56, line: 647, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !56, line: 542, baseType: !297)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1810, file: !56, line: 648, baseType: !1814, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1637, file: !56, line: 666, baseType: !138, size: 32, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1637, file: !56, line: 667, baseType: !1818, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !56, line: 579, size: 320, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1819, file: !56, line: 580, baseType: !1321, size: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1637, file: !56, line: 670, baseType: !277, size: 8, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1637, file: !56, line: 681, baseType: !1824, size: 256, offset: 512)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !56, line: 678, size: 256, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1824, file: !56, line: 679, baseType: !835, size: 192, align: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1824, file: !56, line: 680, baseType: !297, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1637, file: !56, line: 689, baseType: !263, size: 128, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1637, file: !56, line: 691, baseType: !1830, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !56, line: 691, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1637, file: !56, line: 694, baseType: !1833, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1836, line: 563, size: 1024, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1837 = !{!1838, !1842, !1843, !1847, !1851, !1855, !2032, !2036, !2040, !2044, !2045, !2046, !2050, !2054, !2061, !2065}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1835, file: !1836, line: 564, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1636}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1835, file: !1836, line: 569, baseType: !1839, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1835, file: !1836, line: 571, baseType: !1844, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!138, !1636, !297}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1835, file: !1836, line: 572, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!138, !1636}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1835, file: !1836, line: 578, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!138, !1636, !297, !297, !297}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1835, file: !1836, line: 580, baseType: !1856, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !56, line: 1184, baseType: !7)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1836, line: 512, size: 896, elements: !1862)
!1862 = !{!1863, !1871, !1872, !1879, !1886, !1896, !2025, !2026, !2028, !2030}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !1836, line: 513, baseType: !1864, size: 320)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !1836, line: 513, size: 320, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1864, file: !1836, line: 514, baseType: !1636, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1864, file: !1836, line: 515, baseType: !1590, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1864, file: !1836, line: 516, baseType: !297, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1864, file: !1836, line: 517, baseType: !297, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1864, file: !1836, line: 518, baseType: !297, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1836, line: 520, baseType: !55, size: 32, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1861, file: !1836, line: 522, baseType: !1873, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1689, line: 22, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 22, size: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1875, file: !1689, line: 22, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1689, line: 15, baseType: !297)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1861, file: !1836, line: 524, baseType: !1880, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1684, line: 372, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1684, line: 372, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1882, file: !1684, line: 372, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1689, line: 16, baseType: !297)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !1836, line: 527, baseType: !1887, size: 64, offset: 512)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !1836, line: 527, size: 64, elements: !1888)
!1888 = !{!1889, !1895}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1887, file: !1836, line: 528, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1689, line: 21, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 21, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1891, file: !1689, line: 21, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1689, line: 14, baseType: !297)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1887, file: !1836, line: 529, baseType: !1874, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1861, file: !1836, line: 534, baseType: !1897, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !56, line: 74, size: 512, align: 128, elements: !1899)
!1899 = !{!1900, !1901, !2019, !2024}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !56, line: 75, baseType: !297, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !56, line: 83, baseType: !1902, size: 320, offset: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !56, line: 83, size: 320, elements: !1903)
!1903 = !{!1904, !1925, !1939, !1943, !2018}
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !56, line: 84, baseType: !1905, size: 320)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !56, line: 84, size: 320, elements: !1906)
!1906 = !{!1907, !1918, !1919, !1924}
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !56, line: 90, baseType: !1908, size: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !56, line: 90, size: 128, elements: !1909)
!1909 = !{!1910, !1911, !1916, !1917}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1908, file: !56, line: 91, baseType: !263, size: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !56, line: 94, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !56, line: 94, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1912, file: !56, line: 96, baseType: !217, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1912, file: !56, line: 98, baseType: !7, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1908, file: !56, line: 102, baseType: !263, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1908, file: !56, line: 103, baseType: !263, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1905, file: !56, line: 106, baseType: !465, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !56, line: 107, baseType: !1920, size: 64, offset: 192)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !56, line: 107, size: 64, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1920, file: !56, line: 108, baseType: !297, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1920, file: !56, line: 109, baseType: !297, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1905, file: !56, line: 117, baseType: !297, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !56, line: 119, baseType: !1926, size: 320)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !56, line: 119, size: 320, elements: !1927)
!1927 = !{!1928, !1929, !1932, !1933, !1934}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1926, file: !56, line: 124, baseType: !297, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1926, file: !56, line: 125, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !56, line: 125, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1926, file: !56, line: 126, baseType: !297, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1926, file: !56, line: 127, baseType: !297, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !56, line: 128, baseType: !1935, size: 64, offset: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !56, line: 128, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1935, file: !56, line: 133, baseType: !297, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1935, file: !56, line: 138, baseType: !729, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !56, line: 141, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !56, line: 141, size: 64, elements: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1940, file: !56, line: 142, baseType: !297, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !56, line: 144, baseType: !1944, size: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !56, line: 144, size: 128, elements: !1945)
!1945 = !{!1946, !2017}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1944, file: !56, line: 146, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !72, line: 126, size: 1216, elements: !1949)
!1949 = !{!1950, !1960, !1981, !1982, !1983, !1984, !1985, !1999, !2000, !2001}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1948, file: !72, line: 127, baseType: !1951, size: 384)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !72, line: 21, size: 384, elements: !1952)
!1952 = !{!1953, !1954, !1956, !1957, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1951, file: !72, line: 22, baseType: !297, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1951, file: !72, line: 23, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1951, file: !72, line: 24, baseType: !1955, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1951, file: !72, line: 25, baseType: !297, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1951, file: !72, line: 26, baseType: !297, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1951, file: !72, line: 27, baseType: !297, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1948, file: !72, line: 128, baseType: !1961, size: 128, offset: 384)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1962, line: 105, size: 128, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1961, file: !1962, line: 110, baseType: !297, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1961, file: !1962, line: 118, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1962, line: 95, size: 448, elements: !1968)
!1968 = !{!1969, !1970, !1976, !1977, !1978, !1979, !1980}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1967, file: !1962, line: 96, baseType: !729, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1967, file: !1962, line: 97, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1962, line: 60, baseType: !1973)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1967, file: !1962, line: 98, baseType: !1971, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1967, file: !1962, line: 99, baseType: !277, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1967, file: !1962, line: 100, baseType: !277, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1962, line: 101, baseType: !943, size: 128, align: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1967, file: !1962, line: 102, baseType: !1975, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1948, file: !72, line: 129, baseType: !676, size: 256, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1948, file: !72, line: 130, baseType: !71, size: 32, offset: 768)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !72, line: 131, baseType: !7, size: 32, offset: 800)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1948, file: !72, line: 132, baseType: !297, size: 64, offset: 832)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1948, file: !72, line: 133, baseType: !1986, size: 64, offset: 896)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !72, line: 77, size: 192, elements: !1989)
!1989 = !{!1990, !1994, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1988, file: !72, line: 83, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1897}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1988, file: !72, line: 89, baseType: !1856, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1988, file: !72, line: 100, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!138, !1947, !297, !297, !138}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1948, file: !72, line: 134, baseType: !217, size: 64, offset: 960)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1948, file: !72, line: 135, baseType: !138, size: 32, offset: 1024)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !72, line: 136, baseType: !2002, size: 128, offset: 1088)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !72, line: 136, size: 128, elements: !2003)
!2003 = !{!2004, !2010}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2002, file: !72, line: 137, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2006, line: 6, size: 128, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2005, file: !2006, line: 7, baseType: !235, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2005, file: !2006, line: 8, baseType: !235, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !72, line: 138, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !72, line: 138, elements: !2012)
!2012 = !{!2013, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2011, file: !72, line: 138, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !72, line: 138, elements: !1012)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2011, file: !72, line: 138, baseType: !2016)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, elements: !1273)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1944, file: !56, line: 147, baseType: !217, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1902, file: !56, line: 161, baseType: !943, size: 128, align: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !56, line: 164, baseType: !2020, size: 32, offset: 384)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !56, line: 164, size: 32, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2020, file: !56, line: 169, baseType: !256, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2020, file: !56, line: 177, baseType: !7, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1898, file: !56, line: 181, baseType: !256, size: 32, offset: 416)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1861, file: !1836, line: 535, baseType: !1897, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1861, file: !1836, line: 541, baseType: !2027, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1861, file: !1836, line: 545, baseType: !2029, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1861, file: !1836, line: 549, baseType: !2031, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1684, line: 520, baseType: !1897)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1835, file: !1836, line: 581, baseType: !2033, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!1859, !1860, !7}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1835, file: !1836, line: 582, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1859, !1860, !297, !297}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1835, file: !1836, line: 584, baseType: !2041, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!297, !1636}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1835, file: !1836, line: 588, baseType: !1856, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1835, file: !1836, line: 591, baseType: !1856, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1835, file: !1836, line: 597, baseType: !2047, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!138, !1636, !297, !217, !138, !138}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !1836, line: 603, baseType: !2051, size: 64, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!286, !1636}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1835, file: !1836, line: 613, baseType: !2055, size: 64, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!138, !1636, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !2060, line: 54, flags: DIFlagFwdDecl)
!2060 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1835, file: !1836, line: 625, baseType: !2062, size: 64, offset: 896)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2058, !1636, !297}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1835, file: !1836, line: 633, baseType: !2066, size: 64, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!1897, !1636, !297}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1637, file: !56, line: 697, baseType: !297, size: 64, offset: 1024)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1637, file: !56, line: 699, baseType: !1505, size: 64, offset: 1088)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1637, file: !56, line: 700, baseType: !217, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1637, file: !56, line: 711, baseType: !729, size: 64, offset: 1216)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1637, file: !56, line: 717, baseType: !2058, size: 64, offset: 1280)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1637, file: !56, line: 722, baseType: !2075, offset: 1344)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !56, line: 570, elements: !1012)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1498, file: !43, line: 1928, baseType: !297, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !43, line: 1929, baseType: !2078, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!138, !469, !1505}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1498, file: !43, line: 1930, baseType: !2082, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!138, !1505, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !43, line: 1061, baseType: !217)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !43, line: 1931, baseType: !2078, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1498, file: !43, line: 1932, baseType: !2088, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!138, !1505, !627, !627, !138}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1498, file: !43, line: 1933, baseType: !2092, size: 64, offset: 1088)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!138, !138, !1505, !138}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1498, file: !43, line: 1934, baseType: !2096, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!138, !1505, !138, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !43, line: 1063, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1498, file: !43, line: 1935, baseType: !1673, size: 64, offset: 1216)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1498, file: !43, line: 1936, baseType: !2103, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!138, !138}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1498, file: !43, line: 1937, baseType: !2096, size: 64, offset: 1344)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1498, file: !43, line: 1938, baseType: !2108, size: 64, offset: 1408)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!422, !2111, !1505, !1186, !437, !7}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2060, line: 59, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1498, file: !43, line: 1939, baseType: !2114, size: 64, offset: 1472)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!422, !1505, !1186, !2111, !437, !7}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1498, file: !43, line: 1940, baseType: !2118, size: 64, offset: 1536)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !1505}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1498, file: !43, line: 1941, baseType: !2122, size: 64, offset: 1600)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!138, !1505, !138, !2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1498, file: !43, line: 1942, baseType: !2128, size: 64, offset: 1664)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!426, !1505, !138, !627, !627}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1498, file: !43, line: 1944, baseType: !2132, size: 64, offset: 1728)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !1165, !1505}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1498, file: !43, line: 1948, baseType: !2136, size: 64, offset: 1792)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!422, !1505, !627, !1505, !627, !437, !7}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1498, file: !43, line: 1950, baseType: !2140, size: 64, offset: 1856)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!627, !1505, !627, !1505, !627, !627, !7}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1498, file: !43, line: 1953, baseType: !2088, size: 64, offset: 1920)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1498, file: !43, line: 1954, baseType: !2145, size: 64, offset: 1984)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!138, !2148, !7}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !43, line: 1911, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1498, file: !43, line: 1955, baseType: !2151, size: 64, offset: 2048)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!138, !2148, !1604, !7}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1203, file: !43, line: 1018, baseType: !235, size: 64, offset: 1472)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1203, file: !43, line: 1020, baseType: !217, size: 64, offset: 1536)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1203, file: !43, line: 1023, baseType: !217, size: 64, offset: 1600)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1203, file: !43, line: 1027, baseType: !2158, size: 64, offset: 1664)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1203, file: !43, line: 1029, baseType: !465, size: 64, offset: 1728)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1203, file: !43, line: 1030, baseType: !2161, size: 32, offset: 1792)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2162, line: 8, baseType: !538)
!2162 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1203, file: !43, line: 1031, baseType: !2161, size: 32, offset: 1824)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1166, file: !1167, line: 29, baseType: !217, size: 64, offset: 896)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1109, file: !43, line: 2077, baseType: !1162, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1109, file: !43, line: 2078, baseType: !1162, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1109, file: !43, line: 2079, baseType: !1162, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1109, file: !43, line: 2081, baseType: !2169, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!422, !617, !138, !390, !437, !627}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1109, file: !43, line: 2082, baseType: !2173, size: 64, offset: 1344)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!422, !617, !138, !286, !437, !627}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1109, file: !43, line: 2083, baseType: !2177, size: 64, offset: 1408)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2180, !469}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 296, size: 1664, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2208, !2209, !2210}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2182, file: !80, line: 297, baseType: !969, size: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2182, file: !80, line: 298, baseType: !263, size: 128, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2182, file: !80, line: 299, baseType: !263, size: 128, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2182, file: !80, line: 300, baseType: !263, size: 128, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2182, file: !80, line: 301, baseType: !725, size: 256, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2182, file: !80, line: 302, baseType: !327, size: 32, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2182, file: !80, line: 303, baseType: !256, size: 32, offset: 800)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2182, file: !80, line: 304, baseType: !617, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2182, file: !80, line: 305, baseType: !2193, size: 64, offset: 896)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !2194)
!2194 = !{!2195, !2207}
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !80, line: 69, baseType: !2196, size: 32)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !80, line: 69, size: 32, elements: !2197)
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2196, file: !80, line: 70, baseType: !475, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2196, file: !80, line: 71, baseType: !484, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2196, file: !80, line: 72, baseType: !2201, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2202, line: 24, baseType: !2203)
!2202 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2202, line: 22, size: 32, elements: !2204)
!2204 = !{!2205}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2203, file: !2202, line: 23, baseType: !2206, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2202, line: 20, baseType: !481)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2193, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2182, file: !80, line: 306, baseType: !627, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2182, file: !80, line: 307, baseType: !297, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2182, file: !80, line: 308, baseType: !2211, size: 576, offset: 1088)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !2212)
!2212 = !{!2213, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2211, file: !80, line: 206, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !629)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2211, file: !80, line: 207, baseType: !2214, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2211, file: !80, line: 208, baseType: !2214, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2211, file: !80, line: 209, baseType: !2214, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2211, file: !80, line: 210, baseType: !2214, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2211, file: !80, line: 211, baseType: !2214, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2211, file: !80, line: 212, baseType: !2214, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2211, file: !80, line: 213, baseType: !1337, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2211, file: !80, line: 214, baseType: !1337, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1109, file: !43, line: 2085, baseType: !2224, size: 64, offset: 1472)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!426, !617, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2229, line: 15, size: 256, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2230 = !{!2231, !2232, !2233, !2234, !2235}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2228, file: !2229, line: 16, baseType: !1590, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2228, file: !2229, line: 19, baseType: !138, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2228, file: !2229, line: 26, baseType: !297, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2228, file: !2229, line: 33, baseType: !297, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2228, file: !2229, line: 36, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !56, line: 33, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1109, file: !43, line: 2087, baseType: !2224, size: 64, offset: 1536)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1109, file: !43, line: 2089, baseType: !652, size: 64, offset: 1600)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !618, file: !43, line: 1198, baseType: !2241, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 324, size: 704, elements: !2244)
!2244 = !{!2245, !2249, !2253, !2257, !2258, !2259, !2260, !2261, !2266, !2271, !2275}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2243, file: !80, line: 325, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!138, !2181}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2243, file: !80, line: 326, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2181, !617, !138}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2243, file: !80, line: 327, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2181}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2243, file: !80, line: 328, baseType: !2246, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2243, file: !80, line: 329, baseType: !2246, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2243, file: !80, line: 330, baseType: !2246, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2243, file: !80, line: 331, baseType: !1137, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2243, file: !80, line: 334, baseType: !2262, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2265, !469}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2243, file: !80, line: 335, baseType: !2267, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!138, !469, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2243, file: !80, line: 337, baseType: !2272, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!138, !469, !2265}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2243, file: !80, line: 339, baseType: !2276, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!138, !617, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !618, file: !43, line: 1199, baseType: !2281, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 430, size: 704, elements: !2284)
!2284 = !{!2285, !2291, !2292, !2296, !2297, !2298, !2313, !2336, !2340, !2341, !2364}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2283, file: !80, line: 431, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!138, !617, !138, !138, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2283, file: !80, line: 432, baseType: !1137, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2283, file: !80, line: 433, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!138, !617, !7}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2283, file: !80, line: 434, baseType: !2293, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2283, file: !80, line: 435, baseType: !1137, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2283, file: !80, line: 436, baseType: !2299, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!138, !617, !138, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 417, size: 256, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2303, file: !80, line: 418, baseType: !138, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2303, file: !80, line: 419, baseType: !7, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2303, file: !80, line: 420, baseType: !7, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2303, file: !80, line: 422, baseType: !7, size: 32, offset: 96)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2303, file: !80, line: 423, baseType: !7, size: 32, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2303, file: !80, line: 424, baseType: !7, size: 32, offset: 160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2303, file: !80, line: 425, baseType: !7, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2303, file: !80, line: 426, baseType: !7, size: 32, offset: 224)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2283, file: !80, line: 437, baseType: !2314, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!138, !617, !2193, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 345, size: 960, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2318, file: !80, line: 346, baseType: !138, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2318, file: !80, line: 347, baseType: !235, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2318, file: !80, line: 348, baseType: !235, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2318, file: !80, line: 349, baseType: !235, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2318, file: !80, line: 350, baseType: !235, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2318, file: !80, line: 351, baseType: !235, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2318, file: !80, line: 352, baseType: !235, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2318, file: !80, line: 353, baseType: !735, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2318, file: !80, line: 355, baseType: !735, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2318, file: !80, line: 356, baseType: !138, size: 32, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2318, file: !80, line: 357, baseType: !138, size: 32, offset: 608)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2318, file: !80, line: 358, baseType: !235, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2318, file: !80, line: 359, baseType: !235, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2318, file: !80, line: 360, baseType: !235, size: 64, offset: 768)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2318, file: !80, line: 361, baseType: !735, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2318, file: !80, line: 362, baseType: !138, size: 32, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2283, file: !80, line: 438, baseType: !2337, size: 64, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!138, !617, !2279, !2317}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2283, file: !80, line: 440, baseType: !2314, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2283, file: !80, line: 441, baseType: !2342, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!138, !617, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 411, size: 1408, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2346, file: !80, line: 412, baseType: !7, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2346, file: !80, line: 413, baseType: !2350, size: 1344, offset: 64)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 1344, elements: !391)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 397, size: 448, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2363}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2351, file: !80, line: 398, baseType: !7, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2351, file: !80, line: 399, baseType: !7, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2351, file: !80, line: 401, baseType: !7, size: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2351, file: !80, line: 402, baseType: !7, size: 32, offset: 96)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2351, file: !80, line: 403, baseType: !7, size: 32, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2351, file: !80, line: 404, baseType: !7, size: 32, offset: 160)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2351, file: !80, line: 405, baseType: !7, size: 32, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2351, file: !80, line: 406, baseType: !237, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2351, file: !80, line: 407, baseType: !2362, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !234, line: 132, baseType: !235)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2351, file: !80, line: 408, baseType: !2362, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2283, file: !80, line: 442, baseType: !2293, size: 64, offset: 640)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !618, file: !43, line: 1200, baseType: !2366, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !43, line: 54, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !618, file: !43, line: 1201, baseType: !297, size: 64, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !618, file: !43, line: 1202, baseType: !297, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !618, file: !43, line: 1203, baseType: !297, size: 64, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !618, file: !43, line: 1204, baseType: !504, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !618, file: !43, line: 1205, baseType: !1321, size: 320, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !618, file: !43, line: 1206, baseType: !138, size: 32, offset: 1216)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !618, file: !43, line: 1207, baseType: !256, size: 32, offset: 1248)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !618, file: !43, line: 1209, baseType: !217, size: 64, offset: 1280)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !618, file: !43, line: 1211, baseType: !2378, size: 64, offset: 1344)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2381)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !43, line: 1211, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !618, file: !43, line: 1223, baseType: !2383, size: 64, offset: 1408)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !521, line: 34, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2383, file: !521, line: 35, baseType: !524, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !618, file: !43, line: 1224, baseType: !263, size: 128, offset: 1472)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !618, file: !43, line: 1225, baseType: !2388, size: 64, offset: 1600)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !43, line: 1225, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !618, file: !43, line: 1226, baseType: !2391, size: 64, offset: 1664)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !43, line: 1226, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !618, file: !43, line: 1227, baseType: !2394, size: 64, offset: 1728)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !43, line: 50, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !618, file: !43, line: 1228, baseType: !2397, size: 64, offset: 1792)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !43, line: 1228, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !618, file: !43, line: 1229, baseType: !969, size: 128, offset: 1856)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !618, file: !43, line: 1230, baseType: !7, size: 32, offset: 1984)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !618, file: !43, line: 1231, baseType: !2402, size: 2496, offset: 2048)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 521, size: 2496, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2408, !2440}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2402, file: !80, line: 522, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2402, file: !80, line: 523, baseType: !1321, size: 320, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2402, file: !80, line: 524, baseType: !2407, size: 192, offset: 384)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 192, elements: !391)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2402, file: !80, line: 525, baseType: !2409, size: 1728, offset: 576)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2410, size: 1728, elements: !391)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !2411)
!2411 = !{!2412, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2410, file: !80, line: 223, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 445, size: 256, elements: !2415)
!2415 = !{!2416, !2417, !2430, !2431}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2414, file: !80, line: 446, baseType: !138, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2414, file: !80, line: 447, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 312, size: 512, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2420, file: !80, line: 313, baseType: !1137, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2420, file: !80, line: 314, baseType: !1137, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2420, file: !80, line: 315, baseType: !1137, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2420, file: !80, line: 316, baseType: !1137, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2420, file: !80, line: 317, baseType: !2246, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2420, file: !80, line: 318, baseType: !2246, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2420, file: !80, line: 319, baseType: !2246, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2420, file: !80, line: 320, baseType: !2276, size: 64, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2414, file: !80, line: 448, baseType: !656, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2414, file: !80, line: 449, baseType: !2413, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2410, file: !80, line: 224, baseType: !138, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2410, file: !80, line: 226, baseType: !263, size: 128, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2410, file: !80, line: 227, baseType: !297, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2410, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2410, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2410, file: !80, line: 230, baseType: !2214, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2410, file: !80, line: 231, baseType: !2214, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2410, file: !80, line: 232, baseType: !217, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !80, line: 526, baseType: !2441, size: 192, offset: 2304)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 192, elements: !391)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !618, file: !43, line: 1233, baseType: !2443, size: 2368, offset: 4544)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !43, line: 1184, size: 2368, elements: !2444)
!2444 = !{!2445, !2446, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2443, file: !43, line: 1185, baseType: !302, size: 16)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2443, file: !43, line: 1186, baseType: !302, size: 16, offset: 16)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2443, file: !43, line: 1187, baseType: !2448, size: 2304, offset: 64)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 2304, elements: !391)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2450, line: 12, size: 768, elements: !2451)
!2450 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2451 = !{!2452, !2460, !2461, !3655, !3656}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2449, file: !2450, line: 13, baseType: !2453, size: 384)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2454, line: 17, size: 384, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2453, file: !2454, line: 18, baseType: !138, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2453, file: !2454, line: 19, baseType: !138, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2453, file: !2454, line: 20, baseType: !1258, size: 192, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2453, file: !2454, line: 22, baseType: !943, size: 128, align: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2449, file: !2450, line: 14, baseType: !797, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2449, file: !2450, line: 15, baseType: !2462, size: 64, offset: 448)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2463, line: 16, size: 64, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2464 = !{!2465}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2462, file: !2463, line: 17, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2060, line: 746, size: 58368, elements: !2468)
!2468 = !{!2469, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2549, !2560, !2655, !2659, !2662, !2693, !2694, !2695, !2696, !2704, !2706, !2707, !2708, !2709, !2710, !2711, !2722, !2723, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2740, !2741, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2829, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2877, !2883, !2884, !2885, !2886, !2887, !2891, !2894, !2901, !2906, !2909, !2912, !2915, !2918, !3056, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3094, !3095, !3096, !3105, !3113, !3114, !3115, !3116, !3117, !3122, !3123, !3124, !3127, !3128, !3131, !3134, !3137, !3145, !3148, !3149, !3235, !3236, !3237, !3238, !3239, !3245, !3246, !3247, !3248, !3251, !3252, !3255, !3258, !3259, !3262, !3263, !3264, !3267, !3268, !3269, !3270, !3271, !3272, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3304, !3305, !3311, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3323, !3395, !3397, !3398, !3399, !3400, !3401, !3402, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3432, !3433, !3434}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2467, file: !2060, line: 752, baseType: !2470, size: 192)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2471, line: 56, size: 192, elements: !2472)
!2471 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2472 = !{!2473, !2474, !2475, !2476}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2470, file: !2471, line: 57, baseType: !297, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2470, file: !2471, line: 58, baseType: !297, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2470, file: !2471, line: 59, baseType: !538, size: 32, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2470, file: !2471, line: 61, baseType: !538, size: 32, offset: 160)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2467, file: !2060, line: 754, baseType: !7, size: 32, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2467, file: !2060, line: 767, baseType: !217, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2467, file: !2060, line: 768, baseType: !251, size: 32, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2060, line: 770, baseType: !7, size: 32, offset: 352)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2467, file: !2060, line: 771, baseType: !7, size: 32, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2467, file: !2060, line: 774, baseType: !138, size: 32, offset: 416)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2467, file: !2060, line: 775, baseType: !2484, size: 128, offset: 448)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2485, line: 58, size: 128, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2486 = !{!2487, !2488, !2493, !2494}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2484, file: !2485, line: 59, baseType: !1209, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !2485, line: 60, baseType: !2489, size: 32, offset: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !2485, line: 60, size: 32, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2489, file: !2485, line: 61, baseType: !7, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2489, file: !2485, line: 62, baseType: !256, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2484, file: !2485, line: 65, baseType: !359, size: 16, offset: 96)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2484, file: !2485, line: 65, baseType: !359, size: 16, offset: 112)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2467, file: !2060, line: 776, baseType: !7, size: 32, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2467, file: !2060, line: 777, baseType: !297, size: 64, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2467, file: !2060, line: 778, baseType: !2466, size: 64, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2467, file: !2060, line: 787, baseType: !138, size: 32, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2467, file: !2060, line: 788, baseType: !138, size: 32, offset: 800)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2467, file: !2060, line: 790, baseType: !138, size: 32, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2467, file: !2060, line: 792, baseType: !138, size: 32, offset: 864)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2467, file: !2060, line: 793, baseType: !138, size: 32, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2467, file: !2060, line: 794, baseType: !138, size: 32, offset: 928)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2467, file: !2060, line: 795, baseType: !7, size: 32, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2467, file: !2060, line: 797, baseType: !2506, size: 2048, offset: 1024)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2060, line: 551, size: 2048, elements: !2507)
!2507 = !{!2508, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2528, !2531, !2532, !2533}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2506, file: !2060, line: 553, baseType: !2509, size: 128)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2060, line: 411, size: 128, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2509, file: !2060, line: 412, baseType: !297, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2509, file: !2060, line: 413, baseType: !538, size: 32, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2506, file: !2060, line: 554, baseType: !835, size: 192, align: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2506, file: !2060, line: 555, baseType: !235, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2506, file: !2060, line: 556, baseType: !235, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2506, file: !2060, line: 558, baseType: !263, size: 128, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2506, file: !2060, line: 559, baseType: !7, size: 32, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2506, file: !2060, line: 561, baseType: !235, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2506, file: !2060, line: 562, baseType: !235, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2506, file: !2060, line: 563, baseType: !235, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2506, file: !2060, line: 564, baseType: !235, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2506, file: !2060, line: 565, baseType: !735, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2506, file: !2060, line: 566, baseType: !235, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2506, file: !2060, line: 568, baseType: !235, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2506, file: !2060, line: 571, baseType: !138, size: 32, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2506, file: !2060, line: 572, baseType: !2527, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2506, file: !2060, line: 574, baseType: !2529, size: 64, offset: 1216)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2060, line: 49, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2506, file: !2060, line: 576, baseType: !2529, size: 64, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2506, file: !2060, line: 578, baseType: !297, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2506, file: !2060, line: 588, baseType: !2534, size: 512, align: 512, offset: 1536)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2060, line: 497, size: 512, align: 512, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2534, file: !2060, line: 498, baseType: !235, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2534, file: !2060, line: 499, baseType: !235, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2534, file: !2060, line: 500, baseType: !235, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2534, file: !2060, line: 501, baseType: !538, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2534, file: !2060, line: 502, baseType: !538, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2534, file: !2060, line: 503, baseType: !297, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2534, file: !2060, line: 504, baseType: !297, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2534, file: !2060, line: 505, baseType: !297, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2534, file: !2060, line: 506, baseType: !2545, size: 64, align: 64, offset: 448)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2060, line: 445, size: 64, align: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2545, file: !2060, line: 446, baseType: !7, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2545, file: !2060, line: 447, baseType: !7, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2467, file: !2060, line: 798, baseType: !2550, size: 384, offset: 3072)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2060, line: 592, size: 384, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2550, file: !2060, line: 593, baseType: !263, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2550, file: !2060, line: 594, baseType: !297, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2550, file: !2060, line: 595, baseType: !297, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2550, file: !2060, line: 596, baseType: !7, size: 32, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2550, file: !2060, line: 597, baseType: !302, size: 16, offset: 288)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2550, file: !2060, line: 598, baseType: !302, size: 16, offset: 304)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2550, file: !2060, line: 600, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2467, file: !2060, line: 799, baseType: !2561, size: 1792, offset: 3456)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2060, line: 610, size: 1792, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2652, !2653}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2561, file: !2060, line: 611, baseType: !835, size: 192, align: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2561, file: !2060, line: 618, baseType: !235, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2561, file: !2060, line: 619, baseType: !235, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2561, file: !2060, line: 620, baseType: !235, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2561, file: !2060, line: 621, baseType: !235, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2561, file: !2060, line: 622, baseType: !235, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2561, file: !2060, line: 629, baseType: !735, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2561, file: !2060, line: 630, baseType: !235, size: 64, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !2060, line: 631, baseType: !7, size: 32, offset: 640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2561, file: !2060, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2561, file: !2060, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2561, file: !2060, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2561, file: !2060, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2561, file: !2060, line: 662, baseType: !2577, size: 512, offset: 704)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !86, line: 118, size: 512, elements: !2578)
!2578 = !{!2579, !2587, !2588, !2593, !2648, !2649, !2650, !2651}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2577, file: !86, line: 119, baseType: !2580, size: 256)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2581, line: 9, size: 256, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2580, file: !2581, line: 10, baseType: !835, size: 192, align: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2580, file: !2581, line: 11, baseType: !2585, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2586, line: 29, baseType: !735)
!2586 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2577, file: !86, line: 120, baseType: !2585, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2577, file: !86, line: 121, baseType: !2589, size: 64, offset: 320)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!85, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2577, file: !86, line: 122, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !86, line: 159, size: 512, align: 512, elements: !2596)
!2596 = !{!2597, !2622, !2623, !2626, !2631, !2632, !2643, !2647}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2595, file: !86, line: 160, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !86, line: 215, size: 4608, align: 512, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2599, file: !86, line: 216, baseType: !685, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2599, file: !86, line: 217, baseType: !7, size: 32, offset: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2599, file: !86, line: 218, baseType: !7, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2599, file: !86, line: 219, baseType: !7, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2599, file: !86, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2599, file: !86, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2599, file: !86, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2599, file: !86, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2599, file: !86, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2599, file: !86, line: 226, baseType: !7, size: 32, offset: 160)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2599, file: !86, line: 227, baseType: !302, size: 16, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2599, file: !86, line: 228, baseType: !302, size: 16, offset: 208)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2599, file: !86, line: 229, baseType: !7, size: 32, offset: 224)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2599, file: !86, line: 235, baseType: !2585, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2599, file: !86, line: 236, baseType: !2592, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2599, file: !86, line: 237, baseType: !2585, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2599, file: !86, line: 238, baseType: !2592, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2599, file: !86, line: 239, baseType: !2619, size: 4096, align: 512, offset: 512)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2595, size: 4096, align: 512, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 8)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2595, file: !86, line: 161, baseType: !7, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2595, file: !86, line: 162, baseType: !2624, size: 32, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !234, line: 32, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !424, line: 96, baseType: !138)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2595, file: !86, line: 163, baseType: !2627, size: 32, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !511, line: 274, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !511, line: 274, size: 32, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2628, file: !511, line: 274, baseType: !515, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2595, file: !86, line: 164, baseType: !2592, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2595, file: !86, line: 165, baseType: !2633, size: 128, offset: 256)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2581, line: 14, size: 128, elements: !2634)
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2633, file: !2581, line: 15, baseType: !2636, size: 128)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !836, line: 26, size: 128, elements: !2637)
!2637 = !{!2638, !2642}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2636, file: !836, line: 27, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !836, line: 12, size: 64, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2639, file: !836, line: 13, baseType: !840, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2636, file: !836, line: 28, baseType: !840, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2595, file: !86, line: 166, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2585}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2595, file: !86, line: 167, baseType: !2585, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2577, file: !86, line: 123, baseType: !351, size: 8, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2577, file: !86, line: 124, baseType: !351, size: 8, offset: 456)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2577, file: !86, line: 125, baseType: !351, size: 8, offset: 464)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2577, file: !86, line: 126, baseType: !351, size: 8, offset: 472)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2561, file: !2060, line: 671, baseType: !2577, size: 512, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2561, file: !2060, line: 679, baseType: !2654, size: 64, offset: 1728)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2467, file: !2060, line: 800, baseType: !2656, size: 64, offset: 5248)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2060, line: 800, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2467, file: !2060, line: 809, baseType: !2660, size: 64, offset: 5312)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2060, line: 70, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2467, file: !2060, line: 825, baseType: !2663, size: 2048, align: 512, offset: 5632)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2060, line: 509, size: 2048, align: 512, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2663, file: !2060, line: 511, baseType: !235, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2663, file: !2060, line: 512, baseType: !235, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2663, file: !2060, line: 513, baseType: !235, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2663, file: !2060, line: 514, baseType: !235, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2663, file: !2060, line: 515, baseType: !235, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2663, file: !2060, line: 516, baseType: !235, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2663, file: !2060, line: 518, baseType: !235, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2663, file: !2060, line: 519, baseType: !235, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2663, file: !2060, line: 520, baseType: !735, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2663, file: !2060, line: 522, baseType: !235, size: 64, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2663, file: !2060, line: 523, baseType: !235, size: 64, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2663, file: !2060, line: 524, baseType: !735, size: 64, offset: 704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2663, file: !2060, line: 526, baseType: !735, size: 64, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2663, file: !2060, line: 527, baseType: !235, size: 64, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2663, file: !2060, line: 529, baseType: !235, size: 64, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2663, file: !2060, line: 530, baseType: !235, size: 64, offset: 960)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2663, file: !2060, line: 531, baseType: !235, size: 64, offset: 1024)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2663, file: !2060, line: 532, baseType: !235, size: 64, offset: 1088)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2663, file: !2060, line: 533, baseType: !235, size: 64, offset: 1152)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2663, file: !2060, line: 535, baseType: !235, size: 64, offset: 1216)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2663, file: !2060, line: 536, baseType: !235, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2663, file: !2060, line: 537, baseType: !235, size: 64, offset: 1344)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2663, file: !2060, line: 538, baseType: !235, size: 64, offset: 1408)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2663, file: !2060, line: 539, baseType: !235, size: 64, offset: 1472)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2663, file: !2060, line: 540, baseType: !235, size: 64, offset: 1536)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2663, file: !2060, line: 541, baseType: !235, size: 64, offset: 1600)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2663, file: !2060, line: 542, baseType: !235, size: 64, offset: 1664)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2663, file: !2060, line: 543, baseType: !235, size: 64, offset: 1728)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2467, file: !2060, line: 833, baseType: !7, size: 32, offset: 7680)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2467, file: !2060, line: 836, baseType: !7, size: 32, offset: 7712)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2467, file: !2060, line: 837, baseType: !138, size: 32, offset: 7744)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2467, file: !2060, line: 838, baseType: !2697, size: 64, offset: 7808)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2700, line: 19, baseType: !2701)
!2700 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2700, line: 19, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2701, file: !2700, line: 19, baseType: !296, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2467, file: !2060, line: 839, baseType: !2705, size: 64, offset: 7872)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2467, file: !2060, line: 840, baseType: !2699, size: 64, offset: 7936)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2467, file: !2060, line: 841, baseType: !217, size: 64, offset: 8000)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2467, file: !2060, line: 843, baseType: !302, size: 16, offset: 8064)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2467, file: !2060, line: 845, baseType: !302, size: 16, offset: 8080)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2467, file: !2060, line: 848, baseType: !138, size: 32, offset: 8096)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2467, file: !2060, line: 849, baseType: !2712, size: 32, offset: 8128)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2060, line: 718, size: 32, elements: !2713)
!2713 = !{!2714, !2721}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2712, file: !2060, line: 724, baseType: !2715, size: 32)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !2060, line: 719, size: 32, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2715, file: !2060, line: 720, baseType: !351, size: 8)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2715, file: !2060, line: 721, baseType: !351, size: 8, offset: 8)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2715, file: !2060, line: 722, baseType: !351, size: 8, offset: 16)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2715, file: !2060, line: 723, baseType: !351, size: 8, offset: 24)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2712, file: !2060, line: 725, baseType: !538, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2467, file: !2060, line: 850, baseType: !263, size: 128, offset: 8192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2467, file: !2060, line: 851, baseType: !2724, size: 64, offset: 8320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2060, line: 60, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2467, file: !2060, line: 855, baseType: !297, size: 64, offset: 8384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2467, file: !2060, line: 856, baseType: !351, size: 8, offset: 8448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2467, file: !2060, line: 857, baseType: !351, size: 8, offset: 8456)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2467, file: !2060, line: 858, baseType: !138, size: 32, offset: 8480)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2467, file: !2060, line: 859, baseType: !263, size: 128, offset: 8512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2467, file: !2060, line: 860, baseType: !138, size: 32, offset: 8640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2467, file: !2060, line: 861, baseType: !263, size: 128, offset: 8704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2467, file: !2060, line: 873, baseType: !2734, size: 256, offset: 8832)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2060, line: 376, size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2734, file: !2060, line: 381, baseType: !297, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2734, file: !2060, line: 384, baseType: !237, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2734, file: !2060, line: 389, baseType: !237, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2734, file: !2060, line: 392, baseType: !237, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2467, file: !2060, line: 875, baseType: !263, size: 128, offset: 9088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2467, file: !2060, line: 877, baseType: !2742, size: 320, offset: 9216)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2743, line: 86, size: 320, elements: !2744)
!2743 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2744 = !{!2745, !2746, !2747}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2742, file: !2743, line: 87, baseType: !138, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2742, file: !2743, line: 88, baseType: !263, size: 128, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2742, file: !2743, line: 89, baseType: !263, size: 128, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2467, file: !2060, line: 878, baseType: !835, size: 192, align: 64, offset: 9536)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2467, file: !2060, line: 881, baseType: !1649, size: 64, offset: 9728)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2467, file: !2060, line: 882, baseType: !1649, size: 64, offset: 9792)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2467, file: !2060, line: 884, baseType: !138, size: 32, offset: 9856)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2467, file: !2060, line: 885, baseType: !138, size: 32, offset: 9888)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2467, file: !2060, line: 886, baseType: !138, size: 32, offset: 9920)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2467, file: !2060, line: 888, baseType: !138, size: 32, offset: 9952)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2467, file: !2060, line: 890, baseType: !297, size: 64, offset: 9984)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2467, file: !2060, line: 893, baseType: !7, size: 32, offset: 10048)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2467, file: !2060, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2467, file: !2060, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2467, file: !2060, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2467, file: !2060, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2467, file: !2060, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2467, file: !2060, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2467, file: !2060, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2467, file: !2060, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2467, file: !2060, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2467, file: !2060, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2467, file: !2060, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2467, file: !2060, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2467, file: !2060, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2467, file: !2060, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2467, file: !2060, line: 969, baseType: !297, size: 64, offset: 10176)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2467, file: !2060, line: 971, baseType: !2773, size: 448, offset: 10240)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !91, line: 25, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2773, file: !91, line: 26, baseType: !297, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2773, file: !91, line: 27, baseType: !2777, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!426, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !91, line: 28, baseType: !2782, size: 320, offset: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2773, file: !91, line: 28, size: 320, elements: !2783)
!2783 = !{!2784, !2794, !2819}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2782, file: !91, line: 37, baseType: !2785, size: 320)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !91, line: 30, size: 320, elements: !2786)
!2786 = !{!2787, !2789, !2790, !2791, !2792, !2793}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2785, file: !91, line: 31, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2785, file: !91, line: 32, baseType: !538, size: 32, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2785, file: !91, line: 33, baseType: !538, size: 32, offset: 96)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2785, file: !91, line: 34, baseType: !538, size: 32, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2785, file: !91, line: 35, baseType: !235, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2785, file: !91, line: 36, baseType: !2788, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2782, file: !91, line: 47, baseType: !2795, size: 192)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !91, line: 39, size: 192, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2818}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2795, file: !91, line: 40, baseType: !2624, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2795, file: !91, line: 41, baseType: !90, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !91, line: 42, baseType: !2800, size: 64, offset: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !91, line: 42, size: 64, elements: !2801)
!2801 = !{!2802, !2810}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2800, file: !91, line: 43, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2805, line: 7, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2806 = !{!2807, !2809}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2804, file: !2805, line: 8, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !424, line: 93, baseType: !629)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2804, file: !2805, line: 9, baseType: !629, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2800, file: !91, line: 44, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2813, line: 7, size: 64, elements: !2814)
!2813 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2814 = !{!2815, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2812, file: !2813, line: 8, baseType: !2816, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2813, line: 5, baseType: !227)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2812, file: !2813, line: 9, baseType: !227, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2795, file: !91, line: 46, baseType: !235, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2782, file: !91, line: 55, baseType: !2820, size: 256)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !91, line: 49, size: 256, elements: !2821)
!2821 = !{!2822, !2825, !2826, !2827, !2828}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2820, file: !91, line: 50, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !91, line: 14, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2820, file: !91, line: 51, baseType: !138, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2820, file: !91, line: 52, baseType: !138, size: 32, offset: 96)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2820, file: !91, line: 53, baseType: !297, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2820, file: !91, line: 54, baseType: !297, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2467, file: !2060, line: 973, baseType: !2830, size: 32, offset: 10688)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !234, line: 27, baseType: !2831)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !424, line: 28, baseType: !138)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2467, file: !2060, line: 974, baseType: !2830, size: 32, offset: 10720)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2467, file: !2060, line: 978, baseType: !297, size: 64, offset: 10752)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2467, file: !2060, line: 987, baseType: !2466, size: 64, offset: 10816)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2467, file: !2060, line: 990, baseType: !2466, size: 64, offset: 10880)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2467, file: !2060, line: 995, baseType: !263, size: 128, offset: 10944)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2467, file: !2060, line: 996, baseType: !263, size: 128, offset: 11072)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2467, file: !2060, line: 997, baseType: !2466, size: 64, offset: 11200)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2467, file: !2060, line: 1005, baseType: !263, size: 128, offset: 11264)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2467, file: !2060, line: 1006, baseType: !263, size: 128, offset: 11392)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2467, file: !2060, line: 1009, baseType: !1248, size: 64, offset: 11520)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2467, file: !2060, line: 1010, baseType: !2843, size: 512, offset: 11584)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 512, elements: !953)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2467, file: !2060, line: 1011, baseType: !263, size: 128, offset: 12096)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2467, file: !2060, line: 1012, baseType: !263, size: 128, offset: 12224)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2467, file: !2060, line: 1014, baseType: !675, size: 64, offset: 12352)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2467, file: !2060, line: 1017, baseType: !852, size: 64, offset: 12416)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2467, file: !2060, line: 1020, baseType: !852, size: 64, offset: 12480)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2467, file: !2060, line: 1023, baseType: !217, size: 64, offset: 12544)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2467, file: !2060, line: 1025, baseType: !235, size: 64, offset: 12608)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2467, file: !2060, line: 1026, baseType: !235, size: 64, offset: 12672)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2467, file: !2060, line: 1031, baseType: !235, size: 64, offset: 12736)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2467, file: !2060, line: 1032, baseType: !2854, size: 192, offset: 12800)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2060, line: 324, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2854, file: !2060, line: 326, baseType: !235, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2854, file: !2060, line: 327, baseType: !235, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2854, file: !2060, line: 328, baseType: !685, size: 32, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2467, file: !2060, line: 1041, baseType: !297, size: 64, offset: 12992)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2467, file: !2060, line: 1042, baseType: !297, size: 64, offset: 13056)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2467, file: !2060, line: 1045, baseType: !235, size: 64, offset: 13120)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2467, file: !2060, line: 1048, baseType: !235, size: 64, offset: 13184)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2467, file: !2060, line: 1051, baseType: !297, size: 64, offset: 13248)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2467, file: !2060, line: 1052, baseType: !297, size: 64, offset: 13312)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2467, file: !2060, line: 1055, baseType: !2866, size: 640, offset: 13376)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2867, line: 132, size: 640, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2868 = !{!2869, !2875, !2876}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2866, file: !2867, line: 133, baseType: !2870, size: 576)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2871, size: 576, elements: !391)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2867, line: 117, size: 192, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2871, file: !2867, line: 118, baseType: !235, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2871, file: !2867, line: 119, baseType: !2633, size: 128, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2866, file: !2867, line: 134, baseType: !7, size: 32, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2866, file: !2867, line: 135, baseType: !7, size: 32, offset: 608)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2467, file: !2060, line: 1058, baseType: !2878, size: 448, offset: 14016)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2867, line: 144, size: 448, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2878, file: !2867, line: 145, baseType: !943, size: 128, align: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2878, file: !2867, line: 146, baseType: !725, size: 256, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2878, file: !2867, line: 147, baseType: !7, size: 32, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2467, file: !2060, line: 1064, baseType: !1280, size: 64, offset: 14464)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2467, file: !2060, line: 1067, baseType: !1280, size: 64, offset: 14528)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2467, file: !2060, line: 1070, baseType: !1280, size: 64, offset: 14592)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2467, file: !2060, line: 1074, baseType: !1307, size: 64, offset: 14656)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2467, file: !2060, line: 1084, baseType: !2888, size: 128, offset: 14720)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 128, elements: !2889)
!2889 = !{!2890}
!2890 = !DISubrange(count: 16)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2467, file: !2060, line: 1086, baseType: !2892, size: 64, offset: 14848)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2060, line: 55, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2467, file: !2060, line: 1089, baseType: !2895, size: 64, offset: 14912)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2896, line: 12, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2895, file: !2896, line: 13, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2896, line: 8, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2467, file: !2060, line: 1090, baseType: !2902, size: 128, offset: 14976)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2903, line: 13, size: 128, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2904 = !{!2905}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2902, file: !2903, line: 14, baseType: !263, size: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2467, file: !2060, line: 1097, baseType: !2907, size: 64, offset: 15104)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2060, line: 50, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2467, file: !2060, line: 1100, baseType: !2910, size: 64, offset: 15168)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2060, line: 1100, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2467, file: !2060, line: 1103, baseType: !2913, size: 64, offset: 15232)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2060, line: 53, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2467, file: !2060, line: 1107, baseType: !2916, size: 64, offset: 15296)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2060, line: 56, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2467, file: !2060, line: 1110, baseType: !2919, size: 64, offset: 15360)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2921, line: 93, size: 8768, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2970, !2979, !2980, !2982, !2983, !2984, !2987, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3025, !3026, !3033, !3043, !3046, !3047, !3050, !3051, !3052, !3053, !3054, !3055}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2920, file: !2921, line: 94, baseType: !251, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2920, file: !2921, line: 95, baseType: !256, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2920, file: !2921, line: 96, baseType: !138, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2920, file: !2921, line: 97, baseType: !138, size: 32, offset: 96)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2920, file: !2921, line: 98, baseType: !263, size: 128, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2920, file: !2921, line: 100, baseType: !1258, size: 192, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2920, file: !2921, line: 103, baseType: !2466, size: 64, offset: 448)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2920, file: !2921, line: 106, baseType: !2931, size: 192, offset: 512)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1465, line: 32, size: 192, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2931, file: !1465, line: 33, baseType: !263, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2931, file: !1465, line: 34, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2936, line: 25, baseType: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 23, size: 64, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2937, file: !2936, line: 24, baseType: !296, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2920, file: !2921, line: 109, baseType: !1093, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2920, file: !2921, line: 112, baseType: !138, size: 32, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2920, file: !2921, line: 114, baseType: !138, size: 32, offset: 800)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2920, file: !2921, line: 115, baseType: !2466, size: 64, offset: 832)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2920, file: !2921, line: 118, baseType: !138, size: 32, offset: 896)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2920, file: !2921, line: 119, baseType: !7, size: 32, offset: 928)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2920, file: !2921, line: 121, baseType: !2947, size: 64, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2921, line: 80, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2957}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2948, file: !2921, line: 81, baseType: !256, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2948, file: !2921, line: 82, baseType: !2952, size: 128, offset: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2921, line: 75, size: 128, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2952, file: !2921, line: 76, baseType: !2466, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2952, file: !2921, line: 77, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2948, file: !2921, line: 83, baseType: !676, size: 256, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2920, file: !2921, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2920, file: !2921, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2920, file: !2921, line: 138, baseType: !7, size: 32, offset: 1056)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2920, file: !2921, line: 139, baseType: !263, size: 128, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2920, file: !2921, line: 142, baseType: !2577, size: 512, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2920, file: !2921, line: 143, baseType: !2585, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2920, file: !2921, line: 150, baseType: !2965, size: 256, offset: 1792)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2966, size: 256, elements: !842)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2921, line: 38, size: 128, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2966, file: !2921, line: 39, baseType: !235, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2966, file: !2921, line: 40, baseType: !235, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2920, file: !2921, line: 156, baseType: !2971, size: 192, offset: 2048)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2921, line: 66, size: 192, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2971, file: !2921, line: 67, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2921, line: 47, size: 192, elements: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2974, file: !2921, line: 48, baseType: !731, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2974, file: !2921, line: 49, baseType: !731, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2974, file: !2921, line: 50, baseType: !731, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2920, file: !2921, line: 160, baseType: !2866, size: 640, offset: 2240)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2920, file: !2921, line: 163, baseType: !2981, size: 256, offset: 2880)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1248, size: 256, elements: !953)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2920, file: !2921, line: 169, baseType: !1248, size: 64, offset: 3136)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2920, file: !2921, line: 172, baseType: !138, size: 32, offset: 3200)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2920, file: !2921, line: 174, baseType: !2985, size: 64, offset: 3264)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2921, line: 174, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2920, file: !2921, line: 185, baseType: !2988, size: 64, offset: 3328)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !511, line: 860, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 853, size: 64, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2989, file: !511, line: 858, baseType: !510, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2989, file: !511, line: 859, baseType: !327, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2920, file: !2921, line: 186, baseType: !235, size: 64, offset: 3392)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2920, file: !2921, line: 186, baseType: !235, size: 64, offset: 3456)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2920, file: !2921, line: 186, baseType: !235, size: 64, offset: 3520)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2920, file: !2921, line: 186, baseType: !235, size: 64, offset: 3584)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2920, file: !2921, line: 187, baseType: !235, size: 64, offset: 3648)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2920, file: !2921, line: 188, baseType: !235, size: 64, offset: 3712)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2920, file: !2921, line: 189, baseType: !2854, size: 192, offset: 3776)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2920, file: !2921, line: 190, baseType: !297, size: 64, offset: 3968)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2920, file: !2921, line: 190, baseType: !297, size: 64, offset: 4032)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2920, file: !2921, line: 190, baseType: !297, size: 64, offset: 4096)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2920, file: !2921, line: 190, baseType: !297, size: 64, offset: 4160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2920, file: !2921, line: 191, baseType: !297, size: 64, offset: 4224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2920, file: !2921, line: 191, baseType: !297, size: 64, offset: 4288)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2920, file: !2921, line: 191, baseType: !297, size: 64, offset: 4352)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2920, file: !2921, line: 191, baseType: !297, size: 64, offset: 4416)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2920, file: !2921, line: 192, baseType: !297, size: 64, offset: 4480)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2920, file: !2921, line: 192, baseType: !297, size: 64, offset: 4544)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2920, file: !2921, line: 192, baseType: !297, size: 64, offset: 4608)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2920, file: !2921, line: 192, baseType: !297, size: 64, offset: 4672)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2920, file: !2921, line: 193, baseType: !297, size: 64, offset: 4736)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2920, file: !2921, line: 193, baseType: !297, size: 64, offset: 4800)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2920, file: !2921, line: 194, baseType: !3015, size: 448, offset: 4864)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3016, line: 12, size: 448, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3015, file: !3016, line: 15, baseType: !235, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3015, file: !3016, line: 17, baseType: !235, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3015, file: !3016, line: 19, baseType: !235, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3015, file: !3016, line: 21, baseType: !235, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3015, file: !3016, line: 29, baseType: !235, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3015, file: !3016, line: 35, baseType: !235, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3015, file: !3016, line: 44, baseType: !235, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2920, file: !2921, line: 202, baseType: !237, size: 64, offset: 5312)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2920, file: !2921, line: 213, baseType: !3027, size: 2048, offset: 5376)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, size: 2048, elements: !2889)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3029, line: 43, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3028, file: !3029, line: 44, baseType: !439, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3028, file: !3029, line: 45, baseType: !439, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2920, file: !2921, line: 216, baseType: !3034, size: 448, offset: 7424)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2921, line: 30, size: 448, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3034, file: !2921, line: 31, baseType: !138, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3034, file: !2921, line: 32, baseType: !426, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3034, file: !2921, line: 33, baseType: !297, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3034, file: !2921, line: 34, baseType: !235, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3034, file: !2921, line: 34, baseType: !235, size: 64, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3034, file: !2921, line: 35, baseType: !297, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3034, file: !2921, line: 35, baseType: !297, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2920, file: !2921, line: 219, baseType: !3044, size: 64, offset: 7872)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2921, line: 219, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2920, file: !2921, line: 222, baseType: !7, size: 32, offset: 7936)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2920, file: !2921, line: 223, baseType: !3048, size: 64, offset: 8000)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2921, line: 223, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2920, file: !2921, line: 230, baseType: !277, size: 8, offset: 8064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2920, file: !2921, line: 231, baseType: !861, size: 16, offset: 8080)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2920, file: !2921, line: 232, baseType: !861, size: 16, offset: 8096)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2920, file: !2921, line: 234, baseType: !1649, size: 64, offset: 8128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2920, file: !2921, line: 237, baseType: !725, size: 256, offset: 8192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2920, file: !2921, line: 243, baseType: !1321, size: 320, offset: 8448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2467, file: !2060, line: 1111, baseType: !3057, size: 64, offset: 15424)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2921, line: 20, size: 16640, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3058, file: !2921, line: 21, baseType: !327, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3058, file: !2921, line: 22, baseType: !251, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3058, file: !2921, line: 23, baseType: !1258, size: 192, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3058, file: !2921, line: 24, baseType: !3064, size: 16384, offset: 256)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3065, size: 16384, elements: !395)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1465, line: 51, size: 256, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3065, file: !1465, line: 52, baseType: !3068, size: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1465, line: 37, size: 256, elements: !3069)
!3069 = !{!3070, !3077, !3078, !3082}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3068, file: !1465, line: 39, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3072, line: 83, baseType: !3073)
!3072 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3072, line: 82, baseType: !3075)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !138}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3068, file: !1465, line: 40, baseType: !297, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3068, file: !1465, line: 46, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3072, line: 86, baseType: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3072, line: 85, baseType: !1088)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3068, file: !1465, line: 48, baseType: !2935, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2467, file: !2060, line: 1112, baseType: !2935, size: 64, offset: 15488)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2467, file: !2060, line: 1113, baseType: !2935, size: 64, offset: 15552)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2467, file: !2060, line: 1115, baseType: !2935, size: 64, offset: 15616)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2467, file: !2060, line: 1116, baseType: !2931, size: 192, offset: 15680)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2467, file: !2060, line: 1117, baseType: !297, size: 64, offset: 15872)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2467, file: !2060, line: 1118, baseType: !437, size: 64, offset: 15936)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2467, file: !2060, line: 1119, baseType: !7, size: 32, offset: 16000)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2467, file: !2060, line: 1121, baseType: !942, size: 64, offset: 16064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2467, file: !2060, line: 1125, baseType: !3092, size: 64, offset: 16128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2060, line: 43, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2467, file: !2060, line: 1127, baseType: !475, size: 32, offset: 16192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2467, file: !2060, line: 1128, baseType: !7, size: 32, offset: 16224)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2467, file: !2060, line: 1130, baseType: !3097, size: 128, offset: 16256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3098, line: 37, size: 128, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3097, file: !3098, line: 38, baseType: !138, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3097, file: !3098, line: 39, baseType: !256, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3097, file: !3098, line: 40, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3098, line: 24, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2467, file: !2060, line: 1131, baseType: !3106, size: 256, offset: 16384)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3107, line: 12, size: 256, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3106, file: !3107, line: 13, baseType: !390, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3106, file: !3107, line: 14, baseType: !297, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3106, file: !3107, line: 15, baseType: !297, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3106, file: !3107, line: 16, baseType: !277, size: 8, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2467, file: !2060, line: 1134, baseType: !235, size: 64, offset: 16640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2467, file: !2060, line: 1135, baseType: !235, size: 64, offset: 16704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2467, file: !2060, line: 1138, baseType: !327, size: 32, offset: 16768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2467, file: !2060, line: 1141, baseType: !685, size: 32, offset: 16800)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2467, file: !2060, line: 1143, baseType: !3118, size: 64, offset: 16832)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2060, line: 735, size: 64, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3118, file: !2060, line: 736, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2467, file: !2060, line: 1147, baseType: !2636, size: 128, offset: 16896)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2467, file: !2060, line: 1149, baseType: !2466, size: 64, offset: 17024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2467, file: !2060, line: 1151, baseType: !3125, size: 64, offset: 17088)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2060, line: 1151, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2467, file: !2060, line: 1188, baseType: !217, size: 64, offset: 17152)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2467, file: !2060, line: 1191, baseType: !3129, size: 64, offset: 17216)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2060, line: 44, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2467, file: !2060, line: 1194, baseType: !3132, size: 64, offset: 17280)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2060, line: 45, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2467, file: !2060, line: 1197, baseType: !3135, size: 64, offset: 17344)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2060, line: 61, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2467, file: !2060, line: 1199, baseType: !3138, size: 64, offset: 17408)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3140, line: 99, size: 128, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3139, file: !3140, line: 100, baseType: !729, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3139, file: !3140, line: 101, baseType: !256, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3139, file: !3140, line: 103, baseType: !302, size: 16, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2467, file: !2060, line: 1202, baseType: !3146, size: 64, offset: 17472)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2060, line: 48, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2467, file: !2060, line: 1205, baseType: !297, size: 64, offset: 17536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2467, file: !2060, line: 1206, baseType: !3150, size: 64, offset: 17600)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1465, line: 14, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1465, line: 12, size: 384, elements: !3153)
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !1465, line: 13, baseType: !3155, size: 384)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !1465, line: 13, size: 384, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3155, file: !1465, line: 13, baseType: !138, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3155, file: !1465, line: 13, baseType: !138, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3155, file: !1465, line: 13, baseType: !138, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3155, file: !1465, line: 13, baseType: !3161, size: 256, offset: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3162, line: 37, size: 256, elements: !3163)
!3162 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3163 = !{!3164, !3169, !3182, !3188, !3197, !3224, !3229}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3161, file: !3162, line: 42, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 39, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3165, file: !3162, line: 40, baseType: !2831, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3165, file: !3162, line: 41, baseType: !481, size: 32, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3161, file: !3162, line: 50, baseType: !3170, size: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 45, size: 192, elements: !3171)
!3171 = !{!3172, !3174, !3175, !3181}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3170, file: !3162, line: 46, baseType: !3173, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !424, line: 95, baseType: !138)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3170, file: !3162, line: 47, baseType: !138, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3170, file: !3162, line: 48, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3162, line: 11, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3162, line: 8, size: 64, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3177, file: !3162, line: 9, baseType: !138, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3177, file: !3162, line: 10, baseType: !217, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3170, file: !3162, line: 49, baseType: !138, size: 32, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3161, file: !3162, line: 57, baseType: !3183, size: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 53, size: 128, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3183, file: !3162, line: 54, baseType: !2831, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3183, file: !3162, line: 55, baseType: !481, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3183, file: !3162, line: 56, baseType: !3176, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3161, file: !3162, line: 66, baseType: !3189, size: 256)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 60, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3196}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3189, file: !3162, line: 61, baseType: !2831, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3189, file: !3162, line: 62, baseType: !481, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3189, file: !3162, line: 63, baseType: !138, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3189, file: !3162, line: 64, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !424, line: 94, baseType: !425)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3189, file: !3162, line: 65, baseType: !3195, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3161, file: !3162, line: 105, baseType: !3198, size: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 69, size: 256, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3198, file: !3162, line: 70, baseType: !217, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3162, line: 79, baseType: !3202, size: 192, offset: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !3162, line: 79, size: 192, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3213, !3218}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3202, file: !3162, line: 81, baseType: !138, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3202, file: !3162, line: 86, baseType: !861, size: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3202, file: !3162, line: 92, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 88, size: 192, elements: !3208)
!3208 = !{!3209, !3211, !3212}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3207, file: !3162, line: 89, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 64, elements: !2620)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3207, file: !3162, line: 90, baseType: !217, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3207, file: !3162, line: 91, baseType: !217, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3202, file: !3162, line: 97, baseType: !3214, size: 96)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 94, size: 96, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3214, file: !3162, line: 95, baseType: !3210, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3214, file: !3162, line: 96, baseType: !539, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3202, file: !3162, line: 103, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 99, size: 128, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3219, file: !3162, line: 100, baseType: !297, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3219, file: !3162, line: 101, baseType: !539, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3219, file: !3162, line: 102, baseType: !539, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3161, file: !3162, line: 111, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 108, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3225, file: !3162, line: 109, baseType: !426, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3225, file: !3162, line: 110, baseType: !138, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3161, file: !3162, line: 118, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 114, size: 128, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3230, file: !3162, line: 115, baseType: !217, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3230, file: !3162, line: 116, baseType: !138, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3230, file: !3162, line: 117, baseType: !7, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2467, file: !2060, line: 1208, baseType: !3015, size: 448, offset: 17664)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2467, file: !2060, line: 1215, baseType: !235, size: 64, offset: 18112)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2467, file: !2060, line: 1217, baseType: !235, size: 64, offset: 18176)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2467, file: !2060, line: 1219, baseType: !235, size: 64, offset: 18240)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2467, file: !2060, line: 1223, baseType: !3240, size: 64, offset: 18304)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3241, line: 99, baseType: !3242)
!3241 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3241, line: 99, size: 64, elements: !3243)
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3242, file: !3241, line: 99, baseType: !296, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2467, file: !2060, line: 1225, baseType: !510, size: 32, offset: 18368)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2467, file: !2060, line: 1226, baseType: !138, size: 32, offset: 18400)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2467, file: !2060, line: 1227, baseType: !138, size: 32, offset: 18432)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2467, file: !2060, line: 1231, baseType: !3249, size: 64, offset: 18496)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2060, line: 1231, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2467, file: !2060, line: 1233, baseType: !263, size: 128, offset: 18560)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2467, file: !2060, line: 1240, baseType: !3253, size: 64, offset: 18688)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2060, line: 62, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2467, file: !2060, line: 1242, baseType: !3256, size: 64, offset: 18752)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2060, line: 1242, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2467, file: !2060, line: 1244, baseType: !263, size: 128, offset: 18816)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2467, file: !2060, line: 1245, baseType: !3260, size: 64, offset: 18944)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2060, line: 51, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2467, file: !2060, line: 1246, baseType: !725, size: 256, offset: 19008)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2467, file: !2060, line: 1247, baseType: !7, size: 32, offset: 19264)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2467, file: !2060, line: 1250, baseType: !3265, size: 64, offset: 19328)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2060, line: 57, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2467, file: !2060, line: 1251, baseType: !725, size: 256, offset: 19392)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2467, file: !2060, line: 1252, baseType: !263, size: 128, offset: 19648)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2467, file: !2060, line: 1259, baseType: !2058, size: 64, offset: 19776)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2467, file: !2060, line: 1260, baseType: !861, size: 16, offset: 19840)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2467, file: !2060, line: 1261, baseType: !861, size: 16, offset: 19856)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2467, file: !2060, line: 1314, baseType: !3273, size: 64, offset: 19904)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3275, line: 62, size: 256, align: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3274, file: !3275, line: 75, baseType: !539, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3274, file: !3275, line: 90, baseType: !539, size: 32, offset: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3274, file: !3275, line: 112, baseType: !236, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !3275, line: 132, baseType: !539, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3274, file: !3275, line: 140, baseType: !539, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3274, file: !3275, line: 149, baseType: !539, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3274, file: !3275, line: 154, baseType: !3284, offset: 224)
!3284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, elements: !1273)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2467, file: !2060, line: 1315, baseType: !538, size: 32, offset: 19968)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2467, file: !2060, line: 1316, baseType: !538, size: 32, offset: 20000)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2467, file: !2060, line: 1321, baseType: !297, size: 64, offset: 20032)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2467, file: !2060, line: 1325, baseType: !138, size: 32, offset: 20096)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2467, file: !2060, line: 1326, baseType: !138, size: 32, offset: 20128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2467, file: !2060, line: 1327, baseType: !138, size: 32, offset: 20160)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2467, file: !2060, line: 1328, baseType: !138, size: 32, offset: 20192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2467, file: !2060, line: 1329, baseType: !943, size: 128, align: 64, offset: 20224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2467, file: !2060, line: 1332, baseType: !3294, size: 128, offset: 20352)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3295, line: 51, size: 128, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3296 = !{!3297, !3302, !3303}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3294, file: !3295, line: 60, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3299, line: 7, size: 64, elements: !3300)
!3299 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3298, file: !3299, line: 12, baseType: !2701, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3294, file: !3295, line: 63, baseType: !277, size: 8, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3294, file: !3295, line: 70, baseType: !277, size: 8, offset: 72)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2467, file: !2060, line: 1335, baseType: !2111, size: 64, offset: 20480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2467, file: !2060, line: 1337, baseType: !3306, size: 128, offset: 20544)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3295, line: 39, size: 128, elements: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3306, file: !3295, line: 40, baseType: !1897, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3306, file: !3295, line: 42, baseType: !539, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3306, file: !3295, line: 43, baseType: !539, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2467, file: !2060, line: 1340, baseType: !3312, size: 64, offset: 20672)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2060, line: 69, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2467, file: !2060, line: 1351, baseType: !138, size: 32, offset: 20736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2467, file: !2060, line: 1352, baseType: !138, size: 32, offset: 20768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2467, file: !2060, line: 1354, baseType: !297, size: 64, offset: 20800)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2467, file: !2060, line: 1364, baseType: !235, size: 64, offset: 20864)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2467, file: !2060, line: 1365, baseType: !235, size: 64, offset: 20928)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2467, file: !2060, line: 1412, baseType: !297, size: 64, offset: 20992)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2467, file: !2060, line: 1453, baseType: !3321, size: 64, offset: 21056)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2060, line: 1453, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2467, file: !2060, line: 1457, baseType: !3324, size: 64, offset: 21120)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !97, line: 61, size: 576, elements: !3326)
!3326 = !{!3327, !3328, !3347, !3350, !3351, !3384, !3394}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3325, file: !97, line: 62, baseType: !96, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !97, line: 64, baseType: !3329, size: 192, offset: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3325, file: !97, line: 64, size: 192, elements: !3330)
!3330 = !{!3331, !3342}
!3331 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !97, line: 65, baseType: !3332, size: 192)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !97, line: 65, size: 192, elements: !3333)
!3333 = !{!3334, !3341}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3332, file: !97, line: 66, baseType: !3335, size: 128)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3336, line: 50, size: 128, elements: !3337)
!3336 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3335, file: !3336, line: 52, baseType: !297, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3335, file: !3336, line: 54, baseType: !7, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3335, file: !3336, line: 55, baseType: !7, size: 32, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3332, file: !97, line: 67, baseType: !297, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !97, line: 70, baseType: !3343, size: 192)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !97, line: 70, size: 192, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3343, file: !97, line: 71, baseType: !943, size: 128, align: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3343, file: !97, line: 72, baseType: !297, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3325, file: !97, line: 76, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !97, line: 76, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3325, file: !97, line: 77, baseType: !297, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3325, file: !97, line: 79, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3336, line: 25, size: 256, elements: !3354)
!3354 = !{!3355, !3361, !3365}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 26, baseType: !3356, size: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 26, size: 128, elements: !3357)
!3357 = !{!3358, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3356, file: !3336, line: 27, baseType: !3359, size: 128)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !2889)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3356, file: !3336, line: 28, baseType: !3359, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3353, file: !3336, line: 31, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3336, line: 23, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 33, baseType: !3366, size: 64, offset: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 33, size: 64, elements: !3367)
!3367 = !{!3368, !3374, !3379}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3366, file: !3336, line: 38, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 34, size: 64, elements: !3370)
!3370 = !{!3371, !3372, !3373}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3369, file: !3336, line: 35, baseType: !227, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3369, file: !3336, line: 36, baseType: !351, size: 8, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3369, file: !3336, line: 37, baseType: !351, size: 8, offset: 40)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3366, file: !3336, line: 42, baseType: !3375, size: 16)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 39, size: 16, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3375, file: !3336, line: 40, baseType: !351, size: 8)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3375, file: !3336, line: 41, baseType: !351, size: 8, offset: 8)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3366, file: !3336, line: 46, baseType: !3380, size: 16)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 43, size: 16, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3380, file: !3336, line: 44, baseType: !351, size: 8)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3380, file: !3336, line: 45, baseType: !351, size: 8, offset: 8)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3325, file: !97, line: 81, baseType: !3385, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !97, line: 85, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3386, file: !97, line: 86, baseType: !3348, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3386, file: !97, line: 87, baseType: !297, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3386, file: !97, line: 88, baseType: !297, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3386, file: !97, line: 89, baseType: !297, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3386, file: !97, line: 90, baseType: !277, size: 8, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3386, file: !97, line: 92, baseType: !3385, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3325, file: !97, line: 82, baseType: !7, size: 32, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2467, file: !2060, line: 1463, baseType: !3396, offset: 21184)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2060, line: 739, elements: !1012)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2467, file: !2060, line: 1470, baseType: !943, size: 128, align: 64, offset: 21184)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2467, file: !2060, line: 1471, baseType: !251, size: 32, offset: 21312)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2467, file: !2060, line: 1472, baseType: !138, size: 32, offset: 21344)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2467, file: !2060, line: 1474, baseType: !2466, size: 64, offset: 21376)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2467, file: !2060, line: 1475, baseType: !965, size: 320, offset: 21440)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2467, file: !2060, line: 1478, baseType: !3403, size: 64, offset: 21760)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3405, line: 49, size: 512, elements: !3406)
!3405 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3413, !3414, !3415, !3417}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3404, file: !3405, line: 50, baseType: !3403, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3404, file: !3405, line: 51, baseType: !217, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3404, file: !3405, line: 52, baseType: !297, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3404, file: !3405, line: 53, baseType: !297, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3404, file: !3405, line: 54, baseType: !3412, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3404, file: !3405, line: 56, baseType: !7, size: 32, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3404, file: !3405, line: 58, baseType: !7, size: 32, offset: 352)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3404, file: !3405, line: 59, baseType: !3416, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !234, line: 159, baseType: !235)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3404, file: !3405, line: 60, baseType: !1764, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2467, file: !2060, line: 1482, baseType: !251, size: 32, offset: 21824)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2467, file: !2060, line: 1489, baseType: !217, size: 64, offset: 21888)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2467, file: !2060, line: 1504, baseType: !217, size: 64, offset: 21952)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2467, file: !2060, line: 1505, baseType: !236, size: 64, offset: 22016)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2467, file: !2060, line: 1506, baseType: !235, size: 64, offset: 22080)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2467, file: !2060, line: 1507, baseType: !236, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2467, file: !2060, line: 1508, baseType: !236, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2467, file: !2060, line: 1509, baseType: !236, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2467, file: !2060, line: 1510, baseType: !943, size: 128, align: 64, offset: 22208)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2467, file: !2060, line: 1511, baseType: !138, size: 32, offset: 22336)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2467, file: !2060, line: 1515, baseType: !3429, size: 64, offset: 22400)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1210, line: 56, size: 64, elements: !3430)
!3430 = !{!3431}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3429, file: !1210, line: 57, baseType: !1213, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2467, file: !2060, line: 1518, baseType: !3429, size: 64, offset: 22464)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2467, file: !2060, line: 1528, baseType: !943, size: 128, align: 64, offset: 22528)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2467, file: !2060, line: 1552, baseType: !3435, size: 35328, offset: 23040)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3436, line: 430, size: 35328, elements: !3437)
!3436 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3437 = !{!3438, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3467, !3468, !3469, !3470, !3471, !3472, !3475, !3476, !3477, !3478}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3435, file: !3436, line: 432, baseType: !3439, size: 192)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3440, size: 192, elements: !391)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3441, line: 16, size: 64, elements: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3440, file: !3441, line: 17, baseType: !359, size: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3440, file: !3441, line: 18, baseType: !359, size: 16, offset: 16)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3440, file: !3441, line: 19, baseType: !359, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3440, file: !3441, line: 19, baseType: !359, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3440, file: !3441, line: 19, baseType: !359, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3440, file: !3441, line: 19, baseType: !359, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3440, file: !3441, line: 19, baseType: !359, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3440, file: !3441, line: 20, baseType: !359, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3440, file: !3441, line: 20, baseType: !359, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3440, file: !3441, line: 20, baseType: !359, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3440, file: !3441, line: 20, baseType: !359, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3440, file: !3441, line: 20, baseType: !359, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3440, file: !3441, line: 20, baseType: !359, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3435, file: !3436, line: 436, baseType: !297, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3435, file: !3436, line: 440, baseType: !302, size: 16, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3435, file: !3436, line: 441, baseType: !302, size: 16, offset: 272)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3435, file: !3436, line: 442, baseType: !302, size: 16, offset: 288)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3435, file: !3436, line: 443, baseType: !302, size: 16, offset: 304)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3435, file: !3436, line: 447, baseType: !297, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3435, file: !3436, line: 448, baseType: !297, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3435, file: !3436, line: 459, baseType: !3464, size: 256, offset: 448)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3465, size: 256, elements: !953)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3436, line: 428, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3435, file: !3436, line: 461, baseType: !297, size: 64, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3435, file: !3436, line: 463, baseType: !297, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3435, file: !3436, line: 465, baseType: !297, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3435, file: !3436, line: 466, baseType: !297, size: 64, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3435, file: !3436, line: 467, baseType: !297, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3435, file: !3436, line: 473, baseType: !3473, size: 64, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3436, line: 10, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3435, file: !3436, line: 480, baseType: !297, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3435, file: !3436, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3435, file: !3436, line: 491, baseType: !538, size: 32, offset: 1184)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3435, file: !3436, line: 501, baseType: !3479, size: 33792, offset: 1536)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3480, line: 448, size: 33792, elements: !3481)
!3480 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3481 = !{!3482, !3483, !3484, !3646, !3647, !3653, !3654}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3479, file: !3480, line: 461, baseType: !7, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3479, file: !3480, line: 468, baseType: !297, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3479, file: !3480, line: 476, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3480, line: 356, size: 33280, align: 512, elements: !3487)
!3487 = !{!3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3486, file: !3480, line: 358, baseType: !7, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3486, file: !3480, line: 361, baseType: !7, size: 32, offset: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3486, file: !3480, line: 364, baseType: !235, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3486, file: !3480, line: 367, baseType: !235, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3486, file: !3480, line: 370, baseType: !235, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3486, file: !3480, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3486, file: !3480, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3486, file: !3480, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3486, file: !3480, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3486, file: !3480, line: 397, baseType: !3498, size: 32768, offset: 512)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3480, line: 348, size: 32768, elements: !3499)
!3499 = !{!3500, !3515, !3552, !3629, !3642}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3498, file: !3480, line: 349, baseType: !3501, size: 896)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3480, line: 12, size: 896, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3514}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3501, file: !3480, line: 13, baseType: !538, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3501, file: !3480, line: 14, baseType: !538, size: 32, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3501, file: !3480, line: 15, baseType: !538, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3501, file: !3480, line: 16, baseType: !538, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3501, file: !3480, line: 17, baseType: !538, size: 32, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3501, file: !3480, line: 18, baseType: !538, size: 32, offset: 160)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3501, file: !3480, line: 19, baseType: !538, size: 32, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3501, file: !3480, line: 22, baseType: !3511, size: 640, offset: 224)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 640, elements: !3512)
!3512 = !{!3513}
!3513 = !DISubrange(count: 20)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3501, file: !3480, line: 25, baseType: !538, size: 32, offset: 864)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3498, file: !3480, line: 350, baseType: !3516, size: 4096, align: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3480, line: 34, size: 4096, align: 128, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3537, !3538, !3539, !3541, !3543, !3547}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3516, file: !3480, line: 35, baseType: !359, size: 16)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3516, file: !3480, line: 36, baseType: !359, size: 16, offset: 16)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3516, file: !3480, line: 37, baseType: !359, size: 16, offset: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3516, file: !3480, line: 38, baseType: !359, size: 16, offset: 48)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3516, file: !3480, line: 39, baseType: !3523, size: 128, offset: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3516, file: !3480, line: 39, size: 128, elements: !3524)
!3524 = !{!3525, !3530}
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3523, file: !3480, line: 40, baseType: !3526, size: 128)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3523, file: !3480, line: 40, size: 128, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3526, file: !3480, line: 41, baseType: !235, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3526, file: !3480, line: 42, baseType: !235, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3523, file: !3480, line: 44, baseType: !3531, size: 128)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3523, file: !3480, line: 44, size: 128, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3531, file: !3480, line: 45, baseType: !538, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3531, file: !3480, line: 46, baseType: !538, size: 32, offset: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3531, file: !3480, line: 47, baseType: !538, size: 32, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3531, file: !3480, line: 48, baseType: !538, size: 32, offset: 96)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3516, file: !3480, line: 51, baseType: !538, size: 32, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3516, file: !3480, line: 52, baseType: !538, size: 32, offset: 224)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3516, file: !3480, line: 55, baseType: !3540, size: 1024, offset: 256)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 1024, elements: !548)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3516, file: !3480, line: 58, baseType: !3542, size: 2048, offset: 1280)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 2048, elements: !395)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3516, file: !3480, line: 60, baseType: !3544, size: 384, offset: 3328)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 384, elements: !3545)
!3545 = !{!3546}
!3546 = !DISubrange(count: 12)
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3516, file: !3480, line: 62, baseType: !3548, size: 384, offset: 3712)
!3548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3516, file: !3480, line: 62, size: 384, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3548, file: !3480, line: 63, baseType: !3544, size: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3548, file: !3480, line: 64, baseType: !3544, size: 384)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3498, file: !3480, line: 351, baseType: !3553, size: 1088)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3480, line: 79, size: 1088, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3628}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3553, file: !3480, line: 80, baseType: !538, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3553, file: !3480, line: 81, baseType: !538, size: 32, offset: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3553, file: !3480, line: 82, baseType: !538, size: 32, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3553, file: !3480, line: 83, baseType: !538, size: 32, offset: 96)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3553, file: !3480, line: 84, baseType: !538, size: 32, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3553, file: !3480, line: 85, baseType: !538, size: 32, offset: 160)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3553, file: !3480, line: 86, baseType: !538, size: 32, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3553, file: !3480, line: 88, baseType: !3511, size: 640, offset: 224)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3553, file: !3480, line: 89, baseType: !351, size: 8, offset: 864)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3553, file: !3480, line: 90, baseType: !351, size: 8, offset: 872)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3553, file: !3480, line: 91, baseType: !351, size: 8, offset: 880)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3553, file: !3480, line: 92, baseType: !351, size: 8, offset: 888)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3553, file: !3480, line: 93, baseType: !351, size: 8, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3553, file: !3480, line: 94, baseType: !351, size: 8, offset: 904)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3553, file: !3480, line: 95, baseType: !3570, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3572, line: 11, size: 128, elements: !3573)
!3572 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3571, file: !3572, line: 12, baseType: !426, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3571, file: !3572, line: 13, baseType: !3576, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3578, line: 103, size: 1344, elements: !3579)
!3578 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3608, !3609, !3610}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3577, file: !3578, line: 109, baseType: !297, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3577, file: !3578, line: 110, baseType: !297, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3577, file: !3578, line: 111, baseType: !297, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3577, file: !3578, line: 112, baseType: !297, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3577, file: !3578, line: 113, baseType: !297, size: 64, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3577, file: !3578, line: 114, baseType: !297, size: 64, offset: 320)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3577, file: !3578, line: 117, baseType: !297, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3577, file: !3578, line: 118, baseType: !297, size: 64, offset: 448)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3577, file: !3578, line: 119, baseType: !297, size: 64, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3577, file: !3578, line: 120, baseType: !297, size: 64, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3577, file: !3578, line: 121, baseType: !297, size: 64, offset: 640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3577, file: !3578, line: 122, baseType: !297, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3577, file: !3578, line: 123, baseType: !297, size: 64, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3577, file: !3578, line: 124, baseType: !297, size: 64, offset: 832)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3577, file: !3578, line: 125, baseType: !297, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3577, file: !3578, line: 139, baseType: !297, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3577, file: !3578, line: 142, baseType: !297, size: 64, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3577, file: !3578, line: 144, baseType: !3598, size: 64, offset: 1088)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3577, file: !3578, line: 144, size: 64, elements: !3599)
!3599 = !{!3600, !3601, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3598, file: !3578, line: 146, baseType: !359, size: 16)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3598, file: !3578, line: 148, baseType: !235, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3598, file: !3578, line: 150, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3578, line: 59, size: 64, elements: !3604)
!3604 = !{!3605, !3606, !3607}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3603, file: !3578, line: 61, baseType: !235, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3603, file: !3578, line: 63, baseType: !235, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3603, file: !3578, line: 65, baseType: !235, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !3578, line: 153, baseType: !297, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3577, file: !3578, line: 154, baseType: !297, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3577, file: !3578, line: 156, baseType: !3611, size: 64, offset: 1280)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3577, file: !3578, line: 156, size: 64, elements: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3611, file: !3578, line: 158, baseType: !359, size: 16)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3611, file: !3578, line: 160, baseType: !235, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3611, file: !3578, line: 162, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3578, line: 69, size: 64, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3616, file: !3578, line: 71, baseType: !235, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3616, file: !3578, line: 73, baseType: !235, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3616, file: !3578, line: 75, baseType: !235, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3616, file: !3578, line: 77, baseType: !235, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3616, file: !3578, line: 80, baseType: !235, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3616, file: !3578, line: 83, baseType: !235, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3616, file: !3578, line: 86, baseType: !235, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3616, file: !3578, line: 88, baseType: !235, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3616, file: !3578, line: 93, baseType: !235, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3616, file: !3578, line: 100, baseType: !235, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3553, file: !3480, line: 96, baseType: !538, size: 32, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3498, file: !3480, line: 352, baseType: !3630, size: 4608, align: 512)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3480, line: 333, size: 4608, align: 512, elements: !3631)
!3631 = !{!3632, !3633, !3640}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3630, file: !3480, line: 334, baseType: !3516, size: 4096, align: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3630, file: !3480, line: 335, baseType: !3634, size: 512, offset: 4096)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3480, line: 312, size: 512, elements: !3635)
!3635 = !{!3636, !3637, !3638}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3634, file: !3480, line: 313, baseType: !235, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3634, file: !3480, line: 314, baseType: !235, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3634, file: !3480, line: 315, baseType: !3639, size: 384, offset: 128)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !1366)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3630, file: !3480, line: 336, baseType: !3641, offset: 4608)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !1273)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3498, file: !3480, line: 353, baseType: !3643, size: 32768)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 32768, elements: !3644)
!3644 = !{!3645}
!3645 = !DISubrange(count: 4096)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3479, file: !3480, line: 484, baseType: !3485, size: 64, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3479, file: !3480, line: 491, baseType: !3648, size: 128, offset: 256)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3480, line: 404, size: 128, elements: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3648, file: !3480, line: 424, baseType: !235, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3648, file: !3480, line: 432, baseType: !7, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3648, file: !3480, line: 440, baseType: !7, size: 32, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3479, file: !3480, line: 498, baseType: !3648, size: 128, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3479, file: !3480, line: 508, baseType: !3486, size: 33280, align: 512, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2449, file: !2450, line: 16, baseType: !1258, size: 192, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2449, file: !2450, line: 17, baseType: !256, size: 32, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !618, file: !43, line: 1240, baseType: !217, size: 64, offset: 6912)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !618, file: !43, line: 1243, baseType: !538, size: 32, offset: 6976)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !618, file: !43, line: 1245, baseType: !1337, size: 64, offset: 7040)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !618, file: !43, line: 1246, baseType: !1337, size: 64, offset: 7104)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !618, file: !43, line: 1248, baseType: !539, size: 32, offset: 7168)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !618, file: !43, line: 1249, baseType: !3663, size: 64, offset: 7232)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !43, line: 634, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !618, file: !43, line: 1252, baseType: !3666, size: 256, offset: 7296)
!3666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !548)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !618, file: !43, line: 1253, baseType: !3668, size: 128, offset: 7552)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3669, line: 21, baseType: !3670)
!3669 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3669, line: 19, size: 128, elements: !3671)
!3671 = !{!3672}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3670, file: !3669, line: 20, baseType: !3673, size: 128)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 128, elements: !2889)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !618, file: !43, line: 1255, baseType: !7, size: 32, offset: 7680)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !618, file: !43, line: 1261, baseType: !725, size: 256, offset: 7744)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !618, file: !43, line: 1267, baseType: !286, size: 64, offset: 8000)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !618, file: !43, line: 1269, baseType: !564, size: 64, offset: 8064)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !618, file: !43, line: 1271, baseType: !3679, size: 448, offset: 8128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2229, line: 63, size: 448, elements: !3680)
!3680 = !{!3681, !3686, !3687, !3688, !3689, !3690, !3691}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3679, file: !2229, line: 64, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!297, !3685, !2227}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3679, file: !2229, line: 66, baseType: !3682, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3679, file: !2229, line: 69, baseType: !426, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3679, file: !2229, line: 70, baseType: !138, size: 32, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3679, file: !2229, line: 71, baseType: !7, size: 32, offset: 224)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3679, file: !2229, line: 74, baseType: !263, size: 128, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3679, file: !2229, line: 85, baseType: !3692, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !618, file: !43, line: 1274, baseType: !729, size: 64, offset: 8576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !618, file: !43, line: 1280, baseType: !729, size: 64, offset: 8640)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !618, file: !43, line: 1283, baseType: !138, size: 32, offset: 8704)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !618, file: !43, line: 1286, baseType: !2161, size: 32, offset: 8736)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !618, file: !43, line: 1289, baseType: !1045, size: 64, offset: 8768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !618, file: !43, line: 1290, baseType: !1093, size: 64, offset: 8832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !618, file: !43, line: 1297, baseType: !1460, size: 64, offset: 8896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !618, file: !43, line: 1304, baseType: !3701, size: 64, offset: 8960)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3702, line: 49, size: 64, elements: !3703)
!3702 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3703 = !{!3704}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3701, file: !3702, line: 50, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3702, line: 41, size: 512, align: 512, elements: !3707)
!3707 = !{!3708, !3709, !3714}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3706, file: !3702, line: 43, baseType: !327, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3706, file: !3702, line: 45, baseType: !3710, size: 192, offset: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3702, line: 29, size: 192, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3710, file: !3702, line: 30, baseType: !263, size: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3710, file: !3702, line: 32, baseType: !426, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3706, file: !3702, line: 46, baseType: !426, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !618, file: !43, line: 1305, baseType: !3701, size: 64, offset: 9024)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !618, file: !43, line: 1306, baseType: !943, size: 128, align: 64, offset: 9088)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !618, file: !43, line: 1307, baseType: !983, size: 256, offset: 9216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !618, file: !43, line: 1309, baseType: !725, size: 256, offset: 9472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !618, file: !43, line: 1314, baseType: !138, size: 32, offset: 9728)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !618, file: !43, line: 1317, baseType: !327, size: 32, align: 512, offset: 10240)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !618, file: !43, line: 1318, baseType: !263, size: 128, offset: 10304)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !618, file: !43, line: 1320, baseType: !327, size: 32, offset: 10432)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !618, file: !43, line: 1321, baseType: !263, size: 128, offset: 10496)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !612, file: !613, line: 73, baseType: !138, size: 32, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !612, file: !613, line: 74, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1297, line: 42, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !566, file: !506, line: 141, baseType: !3730, size: 64, offset: 704)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!138, !2289, !277}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !566, file: !506, line: 142, baseType: !3734, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!504, !504, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !505, file: !506, line: 96, baseType: !617, size: 64, offset: 832)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !505, file: !506, line: 97, baseType: !297, size: 64, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !505, file: !506, line: 98, baseType: !217, size: 64, offset: 960)
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !506, line: 100, baseType: !3743, size: 128, offset: 1024)
!3743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 100, size: 128, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3743, file: !506, line: 101, baseType: !263, size: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3743, file: !506, line: 102, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !505, file: !506, line: 104, baseType: !263, size: 128, offset: 1152)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !505, file: !506, line: 105, baseType: !263, size: 128, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !505, file: !506, line: 113, baseType: !3751, size: 128, offset: 1408)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 109, size: 128, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3751, file: !506, line: 110, baseType: !969, size: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3751, file: !506, line: 111, baseType: !520, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3751, file: !506, line: 112, baseType: !943, size: 128, align: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !498, file: !43, line: 1968, baseType: !3757, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!286, !504, !469, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3762, line: 10, size: 128, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3763 = !{!3764, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3761, file: !3762, line: 11, baseType: !768, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3761, file: !3762, line: 12, baseType: !217, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !498, file: !43, line: 1969, baseType: !3767, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!138, !3726, !469, !138}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !498, file: !43, line: 1970, baseType: !3771, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!492, !469, !138, !277}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !498, file: !43, line: 1972, baseType: !3775, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!138, !504, !390, !138}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !498, file: !43, line: 1974, baseType: !3779, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!138, !3726, !469, !504, !432, !277}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !498, file: !43, line: 1976, baseType: !3783, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!138, !504, !469, !504}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !498, file: !43, line: 1977, baseType: !3787, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!138, !469, !504}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !498, file: !43, line: 1978, baseType: !3791, size: 64, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!138, !3726, !469, !504, !286}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !498, file: !43, line: 1980, baseType: !3795, size: 64, offset: 576)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!138, !3726, !469, !504, !432}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !498, file: !43, line: 1982, baseType: !3787, size: 64, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !498, file: !43, line: 1983, baseType: !3800, size: 64, offset: 704)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!138, !3726, !469, !504, !432, !622}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !498, file: !43, line: 1985, baseType: !3804, size: 64, offset: 768)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!138, !3726, !469, !504, !469, !504, !7}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !498, file: !43, line: 1987, baseType: !3808, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!138, !3726, !504, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !43, line: 226, size: 640, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3826, !3835, !3836, !3841, !3842, !3843}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3812, file: !43, line: 227, baseType: !7, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3812, file: !43, line: 228, baseType: !432, size: 16, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !43, line: 241, baseType: !3817, size: 32, offset: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3812, file: !43, line: 241, size: 32, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3817, file: !43, line: 242, baseType: !475, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3817, file: !43, line: 243, baseType: !3821, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3822, line: 16, baseType: !3823)
!3822 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3822, line: 14, size: 32, elements: !3824)
!3824 = !{!3825}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3823, file: !3822, line: 15, baseType: !480, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !43, line: 245, baseType: !3827, size: 32, offset: 96)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3812, file: !43, line: 245, size: 32, elements: !3828)
!3828 = !{!3829, !3830}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3827, file: !43, line: 246, baseType: !484, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3827, file: !43, line: 247, baseType: !3831, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3822, line: 20, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3822, line: 18, size: 32, elements: !3833)
!3833 = !{!3834}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3832, file: !3822, line: 19, baseType: !488, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3812, file: !43, line: 249, baseType: !627, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3812, file: !43, line: 250, baseType: !3837, size: 128, offset: 192)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1338, line: 13, size: 128, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3837, file: !1338, line: 14, baseType: !1337, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3837, file: !1338, line: 15, baseType: !426, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3812, file: !43, line: 251, baseType: !3837, size: 128, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3812, file: !43, line: 252, baseType: !3837, size: 128, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3812, file: !43, line: 259, baseType: !1505, size: 64, offset: 576)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !498, file: !43, line: 1988, baseType: !3845, size: 64, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!138, !3726, !2289, !3848, !538, !7}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3850, line: 22, size: 1280, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3849, file: !3850, line: 23, baseType: !538, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3849, file: !3850, line: 24, baseType: !432, size: 16, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3849, file: !3850, line: 25, baseType: !7, size: 32, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3849, file: !3850, line: 26, baseType: !1345, size: 32, offset: 96)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3849, file: !3850, line: 27, baseType: !235, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3849, file: !3850, line: 28, baseType: !235, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3849, file: !3850, line: 41, baseType: !235, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3849, file: !3850, line: 42, baseType: !622, size: 32, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3849, file: !3850, line: 43, baseType: !622, size: 32, offset: 352)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3849, file: !3850, line: 44, baseType: !475, size: 32, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3849, file: !3850, line: 45, baseType: !484, size: 32, offset: 416)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3849, file: !3850, line: 46, baseType: !627, size: 64, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3849, file: !3850, line: 47, baseType: !3837, size: 128, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3849, file: !3850, line: 48, baseType: !3837, size: 128, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3849, file: !3850, line: 49, baseType: !3837, size: 128, offset: 768)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3849, file: !3850, line: 50, baseType: !3837, size: 128, offset: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3849, file: !3850, line: 51, baseType: !235, size: 64, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3849, file: !3850, line: 52, baseType: !235, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3849, file: !3850, line: 53, baseType: !538, size: 32, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3849, file: !3850, line: 54, baseType: !538, size: 32, offset: 1184)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3849, file: !3850, line: 55, baseType: !235, size: 64, offset: 1216)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !498, file: !43, line: 1990, baseType: !3874, size: 64, offset: 960)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!422, !504, !390, !437}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !498, file: !43, line: 1991, baseType: !3878, size: 64, offset: 1024)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!138, !469, !3881, !235, !235}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !43, line: 55, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !498, file: !43, line: 1993, baseType: !3884, size: 64, offset: 1088)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!138, !469, !138}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !498, file: !43, line: 1994, baseType: !3888, size: 64, offset: 1152)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!138, !469, !504, !1505, !7, !432}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !498, file: !43, line: 1997, baseType: !3892, size: 64, offset: 1216)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!138, !3726, !469, !1505, !432}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !498, file: !43, line: 1999, baseType: !3896, size: 64, offset: 1280)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!492, !3726, !504, !138}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !498, file: !43, line: 2001, baseType: !3900, size: 64, offset: 1344)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!138, !3726, !504, !492, !138}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !498, file: !43, line: 2003, baseType: !3904, size: 64, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!138, !3726, !504, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !43, line: 76, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !498, file: !43, line: 2005, baseType: !3910, size: 64, offset: 1472)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!138, !504, !3907}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !498, file: !43, line: 2006, baseType: !3914, size: 64, offset: 1536)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3917, !469}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !43, line: 3192, size: 192, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3918, file: !43, line: 3193, baseType: !1585, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3918, file: !43, line: 3194, baseType: !538, size: 32, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !470, file: !43, line: 655, baseType: !617, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !470, file: !43, line: 656, baseType: !465, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !470, file: !43, line: 659, baseType: !217, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !470, file: !43, line: 663, baseType: !297, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !43, line: 671, baseType: !3927, size: 32, offset: 704)
!3927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !43, line: 671, size: 32, elements: !3928)
!3928 = !{!3929, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3927, file: !43, line: 672, baseType: !3930, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3927, file: !43, line: 673, baseType: !7, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !470, file: !43, line: 675, baseType: !622, size: 32, offset: 736)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !470, file: !43, line: 676, baseType: !627, size: 64, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !470, file: !43, line: 677, baseType: !3837, size: 128, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !470, file: !43, line: 678, baseType: !3837, size: 128, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !470, file: !43, line: 679, baseType: !3837, size: 128, offset: 1088)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !470, file: !43, line: 680, baseType: !327, size: 32, offset: 1216)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !470, file: !43, line: 681, baseType: !302, size: 16, offset: 1248)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !470, file: !43, line: 682, baseType: !351, size: 8, offset: 1264)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !470, file: !43, line: 683, baseType: !351, size: 8, offset: 1272)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !470, file: !43, line: 684, baseType: !2362, size: 64, offset: 1280)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !470, file: !43, line: 691, baseType: !297, size: 64, offset: 1344)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !470, file: !43, line: 692, baseType: !1321, size: 320, offset: 1408)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !470, file: !43, line: 694, baseType: !297, size: 64, offset: 1728)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !470, file: !43, line: 695, baseType: !297, size: 64, offset: 1792)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !470, file: !43, line: 697, baseType: !969, size: 128, offset: 1856)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !470, file: !43, line: 698, baseType: !263, size: 128, offset: 1984)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !470, file: !43, line: 707, baseType: !263, size: 128, offset: 2112)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !470, file: !43, line: 708, baseType: !263, size: 128, offset: 2240)
!3950 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !43, line: 709, baseType: !3951, size: 128, offset: 2368)
!3951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !43, line: 709, size: 128, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3951, file: !43, line: 710, baseType: !1093, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3951, file: !43, line: 711, baseType: !943, size: 128, align: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !470, file: !43, line: 713, baseType: !731, size: 64, offset: 2496)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !470, file: !43, line: 714, baseType: !731, size: 64, offset: 2560)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !470, file: !43, line: 715, baseType: !256, size: 32, offset: 2624)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !470, file: !43, line: 716, baseType: !256, size: 32, offset: 2656)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !470, file: !43, line: 717, baseType: !256, size: 32, offset: 2688)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !470, file: !43, line: 719, baseType: !256, size: 32, offset: 2720)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !43, line: 721, baseType: !3962, size: 64, offset: 2752)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !43, line: 721, size: 64, elements: !3963)
!3963 = !{!3964, !3965}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3962, file: !43, line: 722, baseType: !1496, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3962, file: !43, line: 723, baseType: !1116, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !470, file: !43, line: 725, baseType: !3967, size: 64, offset: 2816)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !43, line: 725, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !470, file: !43, line: 726, baseType: !466, size: 1536, align: 64, offset: 2880)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !470, file: !43, line: 727, baseType: !263, size: 128, offset: 4416)
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !43, line: 728, baseType: !3972, size: 64, offset: 4544)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !43, line: 728, size: 64, elements: !3973)
!3973 = !{!3974, !3975, !3978, !3979}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3972, file: !43, line: 729, baseType: !2111, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3972, file: !43, line: 730, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !43, line: 730, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3972, file: !43, line: 731, baseType: !390, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3972, file: !43, line: 732, baseType: !7, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !470, file: !43, line: 735, baseType: !539, size: 32, offset: 4608)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !470, file: !43, line: 738, baseType: !539, size: 32, offset: 4640)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !470, file: !43, line: 739, baseType: !3663, size: 64, offset: 4672)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !470, file: !43, line: 750, baseType: !217, size: 64, offset: 4736)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !466, file: !43, line: 474, baseType: !1585, size: 128, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !466, file: !43, line: 475, baseType: !1321, size: 320, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !466, file: !43, line: 476, baseType: !1590, size: 32, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !466, file: !43, line: 477, baseType: !256, size: 32, offset: 544)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !466, file: !43, line: 482, baseType: !2636, size: 128, offset: 576)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !466, file: !43, line: 483, baseType: !297, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !466, file: !43, line: 484, baseType: !297, size: 64, offset: 768)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !466, file: !43, line: 485, baseType: !3992, size: 64, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !43, line: 404, size: 1280, elements: !3995)
!3995 = !{!3996, !4000, !4070, !4074, !4078, !4084, !4088, !4092, !4097, !4101, !4105, !4109, !4110, !4114, !4118, !4122, !4127, !4131, !4138, !4139}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3994, file: !43, line: 405, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!138, !1897, !1128}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3994, file: !43, line: 406, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!138, !1505, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !56, line: 293, size: 1536, elements: !4006)
!4006 = !{!4007, !4037, !4051}
!4007 = !DIDerivedType(tag: DW_TAG_member, scope: !4005, file: !56, line: 295, baseType: !4008, size: 512)
!4008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4005, file: !56, line: 295, size: 512, elements: !4009)
!4009 = !{!4010, !4036}
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !4008, file: !56, line: 296, baseType: !4011, size: 448)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !56, line: 296, size: 448, elements: !4012)
!4012 = !{!4013, !4014, !4023, !4024, !4025, !4034, !4035}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4011, file: !56, line: 298, baseType: !297, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !56, line: 299, baseType: !4015, size: 128, offset: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !56, line: 299, size: 128, elements: !4016)
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4015, file: !56, line: 300, baseType: !263, size: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !56, line: 302, baseType: !4019, size: 128)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4015, file: !56, line: 302, size: 128, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4019, file: !56, line: 303, baseType: !217, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4019, file: !56, line: 305, baseType: !7, size: 32, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4011, file: !56, line: 310, baseType: !465, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4011, file: !56, line: 311, baseType: !297, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !56, line: 312, baseType: !4026, size: 64, offset: 320)
!4026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !56, line: 312, size: 64, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4026, file: !56, line: 313, baseType: !217, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4026, file: !56, line: 314, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !56, line: 257, baseType: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 255, size: 64, elements: !4032)
!4032 = !{!4033}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4031, file: !56, line: 256, baseType: !297, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4011, file: !56, line: 316, baseType: !256, size: 32, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4011, file: !56, line: 317, baseType: !256, size: 32, offset: 416)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4008, file: !56, line: 323, baseType: !1898, size: 512, align: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !4005, file: !56, line: 325, baseType: !4038, size: 512, offset: 512)
!4038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4005, file: !56, line: 325, size: 512, elements: !4039)
!4039 = !{!4040, !4050}
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !56, line: 326, baseType: !4041, size: 320)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !56, line: 326, size: 320, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048, !4049}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4041, file: !56, line: 327, baseType: !297, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4041, file: !56, line: 328, baseType: !297, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4041, file: !56, line: 329, baseType: !297, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4041, file: !56, line: 331, baseType: !256, size: 32, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4041, file: !56, line: 332, baseType: !256, size: 32, offset: 224)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4041, file: !56, line: 333, baseType: !256, size: 32, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4041, file: !56, line: 335, baseType: !7, size: 32, offset: 288)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4038, file: !56, line: 339, baseType: !1898, size: 512, align: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, scope: !4005, file: !56, line: 341, baseType: !4052, size: 512, offset: 1024)
!4052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4005, file: !56, line: 341, size: 512, elements: !4053)
!4053 = !{!4054, !4063, !4069}
!4054 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !56, line: 342, baseType: !4055, size: 384)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4052, file: !56, line: 342, size: 384, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4055, file: !56, line: 343, baseType: !297, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4055, file: !56, line: 344, baseType: !297, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4055, file: !56, line: 346, baseType: !217, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4055, file: !56, line: 347, baseType: !217, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4055, file: !56, line: 348, baseType: !217, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4055, file: !56, line: 349, baseType: !217, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !56, line: 352, baseType: !4064, size: 256)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4052, file: !56, line: 352, size: 256, elements: !4065)
!4065 = !{!4066, !4067, !4068}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4064, file: !56, line: 353, baseType: !297, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4064, file: !56, line: 354, baseType: !297, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4064, file: !56, line: 356, baseType: !263, size: 128, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4052, file: !56, line: 359, baseType: !1898, size: 512, align: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3994, file: !43, line: 409, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!138, !465, !1128}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3994, file: !43, line: 412, baseType: !4075, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!277, !465, !4004}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3994, file: !43, line: 414, baseType: !4079, size: 64, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !4082}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !43, line: 310, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3994, file: !43, line: 416, baseType: !4085, size: 64, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!138, !1505, !465, !627, !7, !3412, !2126}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3994, file: !43, line: 419, baseType: !4089, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!138, !1505, !465, !627, !7, !7, !1897, !217}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3994, file: !43, line: 424, baseType: !4093, size: 64, offset: 448)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!4096, !465, !4096}
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !234, line: 131, baseType: !235)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3994, file: !43, line: 425, baseType: !4098, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4004, !437, !437}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3994, file: !43, line: 426, baseType: !4102, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!277, !4004, !1590}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3994, file: !43, line: 427, baseType: !4106, size: 64, offset: 640)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !4004}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3994, file: !43, line: 428, baseType: !1515, size: 64, offset: 704)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3994, file: !43, line: 433, baseType: !4111, size: 64, offset: 768)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!138, !465, !4004, !4004, !103}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3994, file: !43, line: 435, baseType: !4115, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!138, !4004}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3994, file: !43, line: 436, baseType: !4119, size: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!277, !4004, !437, !437}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3994, file: !43, line: 438, baseType: !4123, size: 64, offset: 960)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4004, !4126, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3994, file: !43, line: 439, baseType: !4128, size: 64, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!138, !465, !1897}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3994, file: !43, line: 442, baseType: !4132, size: 64, offset: 1088)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!138, !4135, !1505, !4137}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !43, line: 66, flags: DIFlagFwdDecl)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3994, file: !43, line: 444, baseType: !2118, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3994, file: !43, line: 445, baseType: !4140, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!138, !1518, !1540}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !43, line: 486, baseType: !297, size: 64, offset: 896)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !466, file: !43, line: 487, baseType: !1321, size: 320, offset: 960)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !466, file: !43, line: 488, baseType: !2161, size: 32, offset: 1280)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !466, file: !43, line: 489, baseType: !327, size: 32, offset: 1312)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !466, file: !43, line: 490, baseType: !263, size: 128, offset: 1344)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !466, file: !43, line: 491, baseType: !217, size: 64, offset: 1472)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !456, file: !416, line: 180, baseType: !4150, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!422, !1505, !320, !455, !390, !627, !437}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !456, file: !416, line: 182, baseType: !4150, size: 64, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !456, file: !416, line: 184, baseType: !4155, size: 64, offset: 448)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!138, !1505, !320, !455, !1636}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !444, file: !416, line: 90, baseType: !4159, size: 64, offset: 192)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !444, file: !416, line: 91, baseType: !4161, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !406, file: !315, line: 120, baseType: !4163, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!4166, !373}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !111, line: 39, size: 384, elements: !4169)
!4169 = !{!4170, !4171, !4175, !4179, !4185, !4189}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4168, file: !111, line: 40, baseType: !110, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4168, file: !111, line: 41, baseType: !4172, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!277}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4168, file: !111, line: 42, baseType: !4176, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!217}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4168, file: !111, line: 43, baseType: !4180, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!1764, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !111, line: 19, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4168, file: !111, line: 44, baseType: !4186, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!1764}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4168, file: !111, line: 45, baseType: !768, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !406, file: !315, line: 121, baseType: !4191, size: 64, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!1764, !373}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !406, file: !315, line: 122, baseType: !4195, size: 64, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !373, !4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !314, file: !315, line: 70, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !642, line: 190, size: 1152, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4283, !4284, !4285, !4286, !4287, !4290}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4202, file: !642, line: 191, baseType: !256, size: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4202, file: !642, line: 192, baseType: !256, size: 32, offset: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4202, file: !642, line: 202, baseType: !4201, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4202, file: !642, line: 203, baseType: !286, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4202, file: !642, line: 205, baseType: !835, size: 192, align: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4202, file: !642, line: 207, baseType: !1764, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4202, file: !642, line: 208, baseType: !7, size: 32, offset: 448)
!4211 = !DIDerivedType(tag: DW_TAG_member, scope: !4202, file: !642, line: 209, baseType: !4212, size: 256, offset: 512)
!4212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4202, file: !642, line: 209, size: 256, elements: !4213)
!4213 = !{!4214, !4223, !4227}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4212, file: !642, line: 210, baseType: !4215, size: 256)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !642, line: 153, size: 256, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4222}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4215, file: !642, line: 154, baseType: !297, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4215, file: !642, line: 156, baseType: !2639, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4215, file: !642, line: 162, baseType: !4220, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !642, line: 162, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4215, file: !642, line: 167, baseType: !297, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4212, file: !642, line: 211, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !642, line: 170, size: 64, elements: !4225)
!4225 = !{!4226}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4224, file: !642, line: 171, baseType: !4201, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4212, file: !642, line: 212, baseType: !4228, size: 256)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !642, line: 174, size: 256, elements: !4229)
!4229 = !{!4230, !4278, !4281, !4282}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4228, file: !642, line: 175, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !642, line: 271, size: 768, elements: !4234)
!4234 = !{!4235, !4255, !4259, !4260, !4261, !4262, !4263, !4267, !4268, !4269, !4270, !4274}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4233, file: !642, line: 276, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!138, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !642, line: 251, size: 1216, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4240, file: !642, line: 253, baseType: !4201, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4240, file: !642, line: 254, baseType: !1505, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4240, file: !642, line: 255, baseType: !1165, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4240, file: !642, line: 256, baseType: !217, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4240, file: !642, line: 259, baseType: !725, size: 256, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4240, file: !642, line: 260, baseType: !725, size: 256, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4240, file: !642, line: 261, baseType: !138, size: 32, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4240, file: !642, line: 262, baseType: !263, size: 128, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4240, file: !642, line: 263, baseType: !390, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4240, file: !642, line: 265, baseType: !437, size: 64, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4240, file: !642, line: 266, baseType: !277, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4240, file: !642, line: 267, baseType: !277, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4240, file: !642, line: 268, baseType: !1833, size: 64, offset: 1152)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4233, file: !642, line: 277, baseType: !4256, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4239}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4233, file: !642, line: 290, baseType: !1196, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4233, file: !642, line: 292, baseType: !1183, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4233, file: !642, line: 293, baseType: !1192, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4233, file: !642, line: 294, baseType: !1188, size: 64, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4233, file: !642, line: 296, baseType: !4264, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!422, !4239, !390, !437, !627}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4233, file: !642, line: 306, baseType: !437, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4233, file: !642, line: 313, baseType: !277, size: 8, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4233, file: !642, line: 314, baseType: !4264, size: 64, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4233, file: !642, line: 317, baseType: !4271, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!1623, !4239, !1625}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4233, file: !642, line: 320, baseType: !4275, size: 64, offset: 704)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!138, !4239, !1636}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4228, file: !642, line: 176, baseType: !4279, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !642, line: 35, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4228, file: !642, line: 177, baseType: !627, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4228, file: !642, line: 178, baseType: !4201, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4202, file: !642, line: 215, baseType: !217, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4202, file: !642, line: 221, baseType: !235, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4202, file: !642, line: 223, baseType: !302, size: 16, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4202, file: !642, line: 224, baseType: !432, size: 16, offset: 912)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4202, file: !642, line: 225, baseType: !4288, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !642, line: 36, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4202, file: !642, line: 227, baseType: !943, size: 128, align: 64, offset: 1024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !314, file: !315, line: 71, baseType: !247, size: 32, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !314, file: !315, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !314, file: !315, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !314, file: !315, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !314, file: !315, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !314, file: !315, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !311, file: !123, line: 707, baseType: !310, size: 64, offset: 512)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !311, file: !123, line: 709, baseType: !4299, size: 64, offset: 576)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !123, line: 37, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !311, file: !123, line: 711, baseType: !286, size: 64, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !123, line: 712, baseType: !4303, size: 64, offset: 704)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !123, line: 89, size: 384, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4315, !4320, !4324}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4305, file: !123, line: 90, baseType: !286, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4305, file: !123, line: 91, baseType: !441, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4305, file: !123, line: 92, baseType: !4310, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!138, !4313, !385}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4305, file: !123, line: 93, baseType: !4316, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!390, !4313, !4319, !4198, !4199}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4305, file: !123, line: 95, baseType: !4321, size: 64, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !310}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4305, file: !123, line: 97, baseType: !4325, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !130, line: 286, size: 1472, elements: !4328)
!4328 = !{!4329, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4327, file: !130, line: 287, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!138, !310}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4327, file: !130, line: 288, baseType: !4321, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4327, file: !130, line: 289, baseType: !4330, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4327, file: !130, line: 290, baseType: !4330, size: 64, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4327, file: !130, line: 291, baseType: !4330, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4327, file: !130, line: 292, baseType: !4330, size: 64, offset: 320)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4327, file: !130, line: 293, baseType: !4330, size: 64, offset: 384)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4327, file: !130, line: 294, baseType: !4330, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4327, file: !130, line: 295, baseType: !4330, size: 64, offset: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4327, file: !130, line: 296, baseType: !4330, size: 64, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4327, file: !130, line: 297, baseType: !4330, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4327, file: !130, line: 298, baseType: !4330, size: 64, offset: 704)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4327, file: !130, line: 299, baseType: !4330, size: 64, offset: 768)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4327, file: !130, line: 300, baseType: !4330, size: 64, offset: 832)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4327, file: !130, line: 301, baseType: !4330, size: 64, offset: 896)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4327, file: !130, line: 302, baseType: !4330, size: 64, offset: 960)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4327, file: !130, line: 303, baseType: !4330, size: 64, offset: 1024)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4327, file: !130, line: 304, baseType: !4330, size: 64, offset: 1088)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4327, file: !130, line: 305, baseType: !4330, size: 64, offset: 1152)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4327, file: !130, line: 306, baseType: !4330, size: 64, offset: 1216)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4327, file: !130, line: 307, baseType: !4330, size: 64, offset: 1280)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4327, file: !130, line: 308, baseType: !4330, size: 64, offset: 1344)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4327, file: !130, line: 309, baseType: !4330, size: 64, offset: 1408)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !311, file: !123, line: 714, baseType: !4356, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4359, line: 80, size: 1344, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4424}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4358, file: !4359, line: 81, baseType: !286, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4358, file: !4359, line: 82, baseType: !286, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4358, file: !4359, line: 83, baseType: !441, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4358, file: !4359, line: 84, baseType: !441, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4358, file: !4359, line: 85, baseType: !441, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4358, file: !4359, line: 87, baseType: !4367, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!138, !310, !4370}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !117, line: 96, size: 1152, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4383, !4387, !4388, !4389, !4390, !4391, !4399, !4400, !4401, !4402, !4403, !4404}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !117, line: 97, baseType: !286, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4371, file: !117, line: 98, baseType: !4356, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4371, file: !117, line: 100, baseType: !656, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4371, file: !117, line: 101, baseType: !286, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4371, file: !117, line: 103, baseType: !277, size: 8, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4371, file: !117, line: 104, baseType: !116, size: 32, offset: 288)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4371, file: !117, line: 106, baseType: !4380, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4382)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !117, line: 106, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4371, file: !117, line: 107, baseType: !4384, size: 64, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !117, line: 107, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4371, file: !117, line: 109, baseType: !4330, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4371, file: !117, line: 110, baseType: !4321, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4371, file: !117, line: 111, baseType: !4330, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4371, file: !117, line: 112, baseType: !4321, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4371, file: !117, line: 113, baseType: !4392, size: 64, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!138, !310, !4395}
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !130, line: 60, baseType: !4396)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !130, line: 58, size: 32, elements: !4397)
!4397 = !{!4398}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4396, file: !130, line: 59, baseType: !138, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4371, file: !117, line: 114, baseType: !4330, size: 64, offset: 768)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4371, file: !117, line: 115, baseType: !441, size: 64, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4371, file: !117, line: 116, baseType: !441, size: 64, offset: 896)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4371, file: !117, line: 118, baseType: !4325, size: 64, offset: 960)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4371, file: !117, line: 119, baseType: !4321, size: 64, offset: 1024)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4371, file: !117, line: 121, baseType: !4405, size: 64, offset: 1088)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !117, line: 121, flags: DIFlagFwdDecl)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4358, file: !4359, line: 88, baseType: !4310, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4358, file: !4359, line: 89, baseType: !4330, size: 64, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4358, file: !4359, line: 90, baseType: !4321, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4358, file: !4359, line: 91, baseType: !4321, size: 64, offset: 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4358, file: !4359, line: 92, baseType: !4321, size: 64, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4358, file: !4359, line: 94, baseType: !4330, size: 64, offset: 704)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4358, file: !4359, line: 95, baseType: !4330, size: 64, offset: 768)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4358, file: !4359, line: 97, baseType: !4392, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4358, file: !4359, line: 98, baseType: !4330, size: 64, offset: 896)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4358, file: !4359, line: 100, baseType: !4330, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4358, file: !4359, line: 102, baseType: !4330, size: 64, offset: 1024)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4358, file: !4359, line: 103, baseType: !4321, size: 64, offset: 1088)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4358, file: !4359, line: 105, baseType: !4325, size: 64, offset: 1152)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4358, file: !4359, line: 107, baseType: !4421, size: 64, offset: 1216)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4359, line: 107, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4358, file: !4359, line: 109, baseType: !277, size: 8, offset: 1280)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !311, file: !123, line: 715, baseType: !4370, size: 64, offset: 832)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !311, file: !123, line: 717, baseType: !217, size: 64, offset: 896)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !311, file: !123, line: 719, baseType: !217, size: 64, offset: 960)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !311, file: !123, line: 721, baseType: !725, size: 256, offset: 1024)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !311, file: !123, line: 725, baseType: !4430, size: 448, offset: 1280)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !123, line: 517, size: 448, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4430, file: !123, line: 518, baseType: !263, size: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4430, file: !123, line: 519, baseType: !263, size: 128, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4430, file: !123, line: 520, baseType: !263, size: 128, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4430, file: !123, line: 521, baseType: !122, size: 32, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !311, file: !123, line: 726, baseType: !4437, size: 2496, offset: 1728)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !130, line: 663, size: 2496, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4521, !4525}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4437, file: !130, line: 664, baseType: !4395, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4437, file: !130, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4437, file: !130, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4437, file: !130, line: 667, baseType: !277, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4437, file: !130, line: 668, baseType: !277, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4437, file: !130, line: 669, baseType: !277, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4437, file: !130, line: 670, baseType: !277, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4437, file: !130, line: 671, baseType: !277, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4437, file: !130, line: 672, baseType: !277, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4437, file: !130, line: 673, baseType: !277, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4437, file: !130, line: 674, baseType: !277, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4437, file: !130, line: 675, baseType: !538, size: 32, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4437, file: !130, line: 676, baseType: !327, size: 32, offset: 96)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4437, file: !130, line: 678, baseType: !263, size: 128, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4437, file: !130, line: 679, baseType: !676, size: 256, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4437, file: !130, line: 680, baseType: !4455, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4457, line: 43, size: 1536, elements: !4458)
!4457 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4458 = !{!4459, !4460, !4461, !4462, !4463, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !4457, line: 44, baseType: !286, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4456, file: !4457, line: 45, baseType: !138, size: 32, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4456, file: !4457, line: 46, baseType: !263, size: 128, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4456, file: !4457, line: 47, baseType: !327, size: 32, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4456, file: !4457, line: 48, baseType: !4464, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !130, line: 629, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4456, file: !4457, line: 49, baseType: !965, size: 320, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4456, file: !4457, line: 50, baseType: !297, size: 64, offset: 704)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4456, file: !4457, line: 51, baseType: !2585, size: 64, offset: 768)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4456, file: !4457, line: 52, baseType: !2585, size: 64, offset: 832)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4456, file: !4457, line: 53, baseType: !2585, size: 64, offset: 896)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4456, file: !4457, line: 54, baseType: !2585, size: 64, offset: 960)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4456, file: !4457, line: 55, baseType: !2585, size: 64, offset: 1024)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4456, file: !4457, line: 56, baseType: !297, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4456, file: !4457, line: 57, baseType: !297, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4456, file: !4457, line: 58, baseType: !297, size: 64, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4456, file: !4457, line: 59, baseType: !297, size: 64, offset: 1280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4456, file: !4457, line: 60, baseType: !297, size: 64, offset: 1344)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4456, file: !4457, line: 61, baseType: !310, size: 64, offset: 1408)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4456, file: !4457, line: 62, baseType: !277, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4456, file: !4457, line: 63, baseType: !277, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4437, file: !130, line: 681, baseType: !277, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4437, file: !130, line: 682, baseType: !277, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4437, file: !130, line: 683, baseType: !277, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4437, file: !130, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4437, file: !130, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4437, file: !130, line: 690, baseType: !2577, size: 512, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4437, file: !130, line: 691, baseType: !235, size: 64, offset: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4437, file: !130, line: 692, baseType: !983, size: 256, offset: 1216)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4437, file: !130, line: 693, baseType: !1258, size: 192, offset: 1472)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4437, file: !130, line: 694, baseType: !4464, size: 64, offset: 1664)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4437, file: !130, line: 695, baseType: !256, size: 32, offset: 1728)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4437, file: !130, line: 696, baseType: !256, size: 32, offset: 1760)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4437, file: !130, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4437, file: !130, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4437, file: !130, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4437, file: !130, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4437, file: !130, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4437, file: !130, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4437, file: !130, line: 703, baseType: !277, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4437, file: !130, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4437, file: !130, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4437, file: !130, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4437, file: !130, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4437, file: !130, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4437, file: !130, line: 709, baseType: !7, size: 32, offset: 1824)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4437, file: !130, line: 710, baseType: !129, size: 32, offset: 1856)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4437, file: !130, line: 711, baseType: !137, size: 32, offset: 1888)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4437, file: !130, line: 712, baseType: !137, size: 32, offset: 1920)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4437, file: !130, line: 713, baseType: !138, size: 32, offset: 1952)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4437, file: !130, line: 714, baseType: !138, size: 32, offset: 1984)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4437, file: !130, line: 715, baseType: !235, size: 64, offset: 2048)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4437, file: !130, line: 716, baseType: !235, size: 64, offset: 2112)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4437, file: !130, line: 717, baseType: !235, size: 64, offset: 2176)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4437, file: !130, line: 718, baseType: !235, size: 64, offset: 2240)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4437, file: !130, line: 720, baseType: !4516, size: 64, offset: 2304)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !130, line: 632, size: 64, elements: !4518)
!4518 = !{!4519, !4520}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4517, file: !130, line: 633, baseType: !327, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4517, file: !130, line: 634, baseType: !7, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4437, file: !130, line: 721, baseType: !4522, size: 64, offset: 2368)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !310, !227}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4437, file: !130, line: 722, baseType: !4526, size: 64, offset: 2432)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !130, line: 722, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !311, file: !123, line: 727, baseType: !4529, size: 64, offset: 4224)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !130, line: 742, size: 1792, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4538, !4539, !4540}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !130, line: 743, baseType: !4327, size: 1472)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4530, file: !130, line: 744, baseType: !4330, size: 64, offset: 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4530, file: !130, line: 745, baseType: !4535, size: 64, offset: 1536)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !310, !277}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4530, file: !130, line: 746, baseType: !4330, size: 64, offset: 1600)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4530, file: !130, line: 747, baseType: !4321, size: 64, offset: 1664)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4530, file: !130, line: 748, baseType: !4321, size: 64, offset: 1728)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !311, file: !123, line: 736, baseType: !4542, size: 128, offset: 4288)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !123, line: 529, size: 128, elements: !4543)
!4543 = !{!4544, !4548}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4542, file: !123, line: 531, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4547, line: 13, flags: DIFlagFwdDecl)
!4547 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4542, file: !123, line: 532, baseType: !4549, size: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !123, line: 49, flags: DIFlagFwdDecl)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !311, file: !123, line: 738, baseType: !4552, size: 64, offset: 4416)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4554)
!4554 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !123, line: 738, flags: DIFlagFwdDecl)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !311, file: !123, line: 740, baseType: !4556, size: 64, offset: 4480)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !311, file: !123, line: 741, baseType: !235, size: 64, offset: 4544)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !311, file: !123, line: 746, baseType: !235, size: 64, offset: 4608)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !311, file: !123, line: 747, baseType: !4560, size: 64, offset: 4672)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4562)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !123, line: 747, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !311, file: !123, line: 749, baseType: !4564, size: 64, offset: 4736)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !123, line: 428, size: 128, elements: !4566)
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4565, file: !123, line: 433, baseType: !7, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4565, file: !123, line: 434, baseType: !7, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4565, file: !123, line: 435, baseType: !297, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !311, file: !123, line: 751, baseType: !263, size: 128, offset: 4800)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !311, file: !123, line: 762, baseType: !4572, size: 64, offset: 4928)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !123, line: 762, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !311, file: !123, line: 770, baseType: !4575, offset: 4992)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4576, line: 5, elements: !1012)
!4576 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !311, file: !123, line: 772, baseType: !4578, size: 64, offset: 4992)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4580, line: 18, flags: DIFlagFwdDecl)
!4580 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !311, file: !123, line: 773, baseType: !4582, size: 64, offset: 5056)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4584, line: 41, size: 512, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4585 = !{!4586, !4587, !4681, !4682, !4683, !4684}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4583, file: !4584, line: 42, baseType: !4582, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4583, file: !4584, line: 43, baseType: !4588, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4590)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4584, line: 125, size: 1408, elements: !4591)
!4591 = !{!4592, !4596, !4600, !4606, !4610, !4611, !4616, !4620, !4624, !4628, !4632, !4633, !4637, !4641, !4645, !4656, !4657, !4658, !4659, !4669, !4673, !4677}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4590, file: !4584, line: 126, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!4582, !4582}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4590, file: !4584, line: 127, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4582}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4590, file: !4584, line: 128, baseType: !4601, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!277, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4590, file: !4584, line: 129, baseType: !4607, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!1764, !4604, !4313}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4590, file: !4584, line: 131, baseType: !4601, size: 64, offset: 256)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4590, file: !4584, line: 133, baseType: !4612, size: 64, offset: 320)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!4615, !4604}
!4615 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4584, line: 132, flags: DIFlagFwdDecl)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4590, file: !4584, line: 134, baseType: !4617, size: 64, offset: 384)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!277, !4604, !286}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4590, file: !4584, line: 136, baseType: !4621, size: 64, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!138, !4604, !286, !7, !217, !437}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4590, file: !4584, line: 141, baseType: !4625, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!138, !4604, !286, !1060, !437}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4590, file: !4584, line: 144, baseType: !4629, size: 64, offset: 576)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!286, !4604}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4590, file: !4584, line: 145, baseType: !4629, size: 64, offset: 640)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4590, file: !4584, line: 146, baseType: !4634, size: 64, offset: 704)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!4582, !4604}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4590, file: !4584, line: 148, baseType: !4638, size: 64, offset: 768)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!4582, !4604, !4582}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4590, file: !4584, line: 151, baseType: !4642, size: 64, offset: 832)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!4582, !4604, !286}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4590, file: !4584, line: 153, baseType: !4646, size: 64, offset: 896)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!138, !4604, !286, !286, !7, !7, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4584, line: 94, size: 640, elements: !4651)
!4651 = !{!4652, !4653, !4654}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4650, file: !4584, line: 95, baseType: !4582, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4650, file: !4584, line: 96, baseType: !7, size: 32, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4650, file: !4584, line: 97, baseType: !4655, size: 512, offset: 128)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 512, elements: !2620)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4590, file: !4584, line: 158, baseType: !4638, size: 64, offset: 960)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4590, file: !4584, line: 161, baseType: !4634, size: 64, offset: 1024)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4590, file: !4584, line: 163, baseType: !4593, size: 64, offset: 1088)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4590, file: !4584, line: 164, baseType: !4660, size: 64, offset: 1152)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!138, !4604, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4584, line: 73, size: 128, elements: !4665)
!4665 = !{!4666, !4667, !4668}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4664, file: !4584, line: 74, baseType: !7, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4664, file: !4584, line: 75, baseType: !7, size: 32, offset: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4664, file: !4584, line: 76, baseType: !4604, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4590, file: !4584, line: 166, baseType: !4670, size: 64, offset: 1216)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!217, !4582, !138}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4590, file: !4584, line: 167, baseType: !4674, size: 64, offset: 1280)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!138, !4604, !7}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4590, file: !4584, line: 168, baseType: !4678, size: 64, offset: 1344)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!138, !4582}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4583, file: !4584, line: 44, baseType: !310, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4583, file: !4584, line: 45, baseType: !263, size: 128, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4583, file: !4584, line: 46, baseType: !263, size: 128, offset: 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4583, file: !4584, line: 47, baseType: !351, size: 8, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !311, file: !123, line: 776, baseType: !138, size: 32, offset: 5120)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !311, file: !123, line: 778, baseType: !622, size: 32, offset: 5152)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !311, file: !123, line: 779, baseType: !538, size: 32, offset: 5184)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !311, file: !123, line: 781, baseType: !327, size: 32, offset: 5216)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !311, file: !123, line: 782, baseType: !263, size: 128, offset: 5248)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !311, file: !123, line: 784, baseType: !4691, size: 64, offset: 5376)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4693)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4694, line: 52, size: 768, elements: !4695)
!4694 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4695 = !{!4696, !4697, !4698, !4699, !4700, !4704, !4708, !4709, !4710, !4711, !4715, !4719}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4693, file: !4694, line: 53, baseType: !286, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4693, file: !4694, line: 55, baseType: !441, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4693, file: !4694, line: 56, baseType: !441, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4693, file: !4694, line: 58, baseType: !4310, size: 64, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4693, file: !4694, line: 59, baseType: !4701, size: 64, offset: 256)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!390, !4313, !4319}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4693, file: !4694, line: 61, baseType: !4705, size: 64, offset: 320)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4691}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4693, file: !4694, line: 62, baseType: !4321, size: 64, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4693, file: !4694, line: 64, baseType: !4330, size: 64, offset: 448)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4693, file: !4694, line: 66, baseType: !4166, size: 64, offset: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4693, file: !4694, line: 67, baseType: !4712, size: 64, offset: 576)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!1764, !4313}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4693, file: !4694, line: 69, baseType: !4716, size: 64, offset: 640)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{null, !4313, !4198, !4199}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4693, file: !4694, line: 71, baseType: !4325, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !311, file: !123, line: 785, baseType: !441, size: 64, offset: 5440)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !311, file: !123, line: 787, baseType: !4321, size: 64, offset: 5504)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !311, file: !123, line: 788, baseType: !4723, size: 64, offset: 5568)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !123, line: 46, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !311, file: !123, line: 789, baseType: !4726, size: 64, offset: 5632)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !123, line: 48, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !311, file: !123, line: 791, baseType: !4729, size: 64, offset: 5696)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !123, line: 597, size: 128, elements: !4731)
!4731 = !{!4732, !4733, !4734, !4735, !4736}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4730, file: !123, line: 598, baseType: !145, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4730, file: !123, line: 599, baseType: !154, size: 32, offset: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4730, file: !123, line: 600, baseType: !159, size: 32, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4730, file: !123, line: 601, baseType: !277, size: 8, offset: 96)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4730, file: !123, line: 602, baseType: !277, size: 8, offset: 104)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !311, file: !123, line: 793, baseType: !164, size: 32, offset: 5760)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !311, file: !123, line: 795, baseType: !277, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !311, file: !123, line: 796, baseType: !277, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !311, file: !123, line: 797, baseType: !277, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !311, file: !123, line: 798, baseType: !277, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !311, file: !123, line: 799, baseType: !277, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !244, file: !6, line: 873, baseType: !656, size: 64, offset: 960)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !244, file: !6, line: 874, baseType: !4745, size: 128, offset: 1024)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4746, line: 246, size: 128, elements: !4747)
!4746 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4747 = !{!4748}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4745, file: !4746, line: 247, baseType: !1585, size: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !244, file: !6, line: 876, baseType: !538, size: 32, offset: 1152)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !244, file: !6, line: 877, baseType: !538, size: 32, offset: 1184)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !244, file: !6, line: 878, baseType: !538, size: 32, offset: 1216)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !244, file: !6, line: 879, baseType: !538, size: 32, offset: 1248)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !244, file: !6, line: 880, baseType: !538, size: 32, offset: 1280)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !244, file: !6, line: 881, baseType: !538, size: 32, offset: 1312)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !244, file: !6, line: 882, baseType: !277, size: 8, offset: 1344)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !244, file: !6, line: 883, baseType: !170, size: 32, offset: 1376)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !244, file: !6, line: 885, baseType: !4758, size: 64, offset: 1408)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!138, !239}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "device_router_config", scope: !244, file: !6, line: 886, baseType: !4758, size: 64, offset: 1472)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !244, file: !6, line: 887, baseType: !4763, size: 64, offset: 1536)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !239}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !244, file: !6, line: 889, baseType: !4767, size: 64, offset: 1600)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!4770, !239, !233, !233, !437, !297}
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !244, file: !6, line: 892, baseType: !4772, size: 64, offset: 1664)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!4770, !239, !233, !4775, !7, !437, !297}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !244, file: !6, line: 895, baseType: !4777, size: 64, offset: 1728)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!4770, !239, !4775, !7, !437, !4780, !297}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !244, file: !6, line: 898, baseType: !4782, size: 64, offset: 1792)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!4770, !239, !4775, !4775, !7, !543, !437, !297}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !244, file: !6, line: 902, baseType: !4786, size: 64, offset: 1856)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4770, !239, !4775, !4775, !7, !543, !437, !4780, !297}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !244, file: !6, line: 906, baseType: !4790, size: 64, offset: 1920)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!4770, !239, !233, !138, !437, !297}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !244, file: !6, line: 909, baseType: !4794, size: 64, offset: 1984)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!4770, !239, !4797, !7, !138, !297}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4799, line: 11, size: 256, elements: !4800)
!4799 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4800 = !{!4801, !4802, !4803, !4804, !4805, !4806}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4798, file: !4799, line: 12, baseType: !297, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4798, file: !4799, line: 13, baseType: !7, size: 32, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4798, file: !4799, line: 14, baseType: !7, size: 32, offset: 96)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4798, file: !4799, line: 15, baseType: !233, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4798, file: !4799, line: 17, baseType: !7, size: 32, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4798, file: !4799, line: 20, baseType: !7, size: 32, offset: 224)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !244, file: !6, line: 912, baseType: !4808, size: 64, offset: 2048)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!4770, !239, !297}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !244, file: !6, line: 915, baseType: !4812, size: 64, offset: 2112)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!4770, !239, !4797, !7, !179, !297, !217}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !244, file: !6, line: 919, baseType: !4816, size: 64, offset: 2176)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!4770, !239, !233, !437, !437, !179, !297}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !244, file: !6, line: 923, baseType: !4820, size: 64, offset: 2240)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!4770, !239, !4823, !297}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !6, line: 150, size: 320, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !4824, file: !6, line: 151, baseType: !233, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !4824, file: !6, line: 152, baseType: !233, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4824, file: !6, line: 153, baseType: !179, size: 32, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !4824, file: !6, line: 154, baseType: !277, size: 8, offset: 160)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !4824, file: !6, line: 155, baseType: !277, size: 8, offset: 168)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !4824, file: !6, line: 156, baseType: !277, size: 8, offset: 176)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !4824, file: !6, line: 157, baseType: !277, size: 8, offset: 184)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !4824, file: !6, line: 158, baseType: !437, size: 64, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !4824, file: !6, line: 159, baseType: !437, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4824, file: !6, line: 160, baseType: !4836, offset: 320)
!4836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4837, elements: !1273)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !6, line: 125, size: 256, elements: !4838)
!4838 = !{!4839, !4840, !4841, !4842}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4837, file: !6, line: 126, baseType: !437, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !4837, file: !6, line: 127, baseType: !437, size: 64, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !4837, file: !6, line: 128, baseType: !437, size: 64, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !4837, file: !6, line: 129, baseType: !437, size: 64, offset: 192)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !244, file: !6, line: 926, baseType: !4844, size: 64, offset: 2304)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!4770, !239, !233, !235, !297}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !244, file: !6, line: 930, baseType: !4848, size: 64, offset: 2368)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{null, !239, !4851}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !6, line: 501, size: 288, elements: !4853)
!4853 = !{!4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4852, file: !6, line: 502, baseType: !538, size: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4852, file: !6, line: 503, baseType: !538, size: 32, offset: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4852, file: !6, line: 504, baseType: !538, size: 32, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4852, file: !6, line: 505, baseType: !538, size: 32, offset: 96)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4852, file: !6, line: 506, baseType: !538, size: 32, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4852, file: !6, line: 507, baseType: !538, size: 32, offset: 160)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !4852, file: !6, line: 508, baseType: !277, size: 8, offset: 192)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !4852, file: !6, line: 509, baseType: !277, size: 8, offset: 200)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !4852, file: !6, line: 510, baseType: !277, size: 8, offset: 208)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4852, file: !6, line: 511, baseType: !170, size: 32, offset: 224)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4852, file: !6, line: 512, baseType: !277, size: 8, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !244, file: !6, line: 931, baseType: !4866, size: 64, offset: 2432)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!138, !239, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !6, line: 437, size: 576, elements: !4871)
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4870, file: !6, line: 438, baseType: !179, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !4870, file: !6, line: 439, baseType: !3416, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !4870, file: !6, line: 440, baseType: !3416, size: 64, offset: 128)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !4870, file: !6, line: 441, baseType: !186, size: 32, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !4870, file: !6, line: 442, baseType: !186, size: 32, offset: 224)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !4870, file: !6, line: 443, baseType: !538, size: 32, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !4870, file: !6, line: 444, baseType: !538, size: 32, offset: 288)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !4870, file: !6, line: 445, baseType: !538, size: 32, offset: 320)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !4870, file: !6, line: 446, baseType: !538, size: 32, offset: 352)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !4870, file: !6, line: 447, baseType: !277, size: 8, offset: 384)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_config", scope: !4870, file: !6, line: 448, baseType: !217, size: 64, offset: 448)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_size", scope: !4870, file: !6, line: 449, baseType: !437, size: 64, offset: 512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !244, file: !6, line: 932, baseType: !4758, size: 64, offset: 2496)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !244, file: !6, line: 933, baseType: !4758, size: 64, offset: 2560)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !244, file: !6, line: 934, baseType: !4758, size: 64, offset: 2624)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !244, file: !6, line: 935, baseType: !4763, size: 64, offset: 2688)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !244, file: !6, line: 937, baseType: !4889, size: 64, offset: 2752)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!198, !239, !226, !4892}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !6, line: 725, size: 128, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4893, file: !6, line: 726, baseType: !226, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4893, file: !6, line: 727, baseType: !226, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4893, file: !6, line: 728, baseType: !538, size: 32, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !4893, file: !6, line: 729, baseType: !538, size: 32, offset: 96)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !244, file: !6, line: 940, baseType: !4763, size: 64, offset: 2816)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !244, file: !6, line: 941, baseType: !4901, size: 64, offset: 2880)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{null, !243}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_summary_show", scope: !244, file: !6, line: 943, baseType: !4905, size: 64, offset: 2944)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{null, !1165, !243}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_dev_root", scope: !244, file: !6, line: 944, baseType: !504, size: 64, offset: 3008)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !240, file: !6, line: 330, baseType: !310, size: 64, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !240, file: !6, line: 331, baseType: !226, size: 32, offset: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !240, file: !6, line: 332, baseType: !226, size: 32, offset: 160)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !240, file: !6, line: 335, baseType: !138, size: 32, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !240, file: !6, line: 336, baseType: !4914, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !6, line: 362, size: 5952, elements: !4916)
!4916 = !{!4917, !4918, !4919, !4920}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4915, file: !6, line: 363, baseType: !239, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4915, file: !6, line: 364, baseType: !311, size: 5824, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4915, file: !6, line: 365, baseType: !138, size: 32, offset: 5888)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "chan_dma_dev", scope: !4915, file: !6, line: 366, baseType: !277, size: 8, offset: 5920)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !6, line: 337, baseType: !286, size: 64, offset: 320)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_client_name", scope: !240, file: !6, line: 339, baseType: !390, size: 64, offset: 384)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !240, file: !6, line: 342, baseType: !263, size: 128, offset: 448)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !240, file: !6, line: 343, baseType: !4925, size: 64, offset: 576)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !6, line: 293, size: 128, elements: !4927)
!4927 = !{!4928, !4929}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !4926, file: !6, line: 295, baseType: !297, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !4926, file: !6, line: 296, baseType: !297, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !240, file: !6, line: 344, baseType: !138, size: 32, offset: 640)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !240, file: !6, line: 345, baseType: !138, size: 32, offset: 672)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !240, file: !6, line: 348, baseType: !4933, size: 64, offset: 704)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !6, line: 304, size: 128, elements: !4935)
!4935 = !{!4936, !4937}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4934, file: !6, line: 305, baseType: !310, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !4934, file: !6, line: 306, baseType: !4938, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !310, !217}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !240, file: !6, line: 349, baseType: !217, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !240, file: !6, line: 351, baseType: !217, size: 64, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !223, file: !6, line: 607, baseType: !4944, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!226, !4770}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !223, file: !6, line: 608, baseType: !4948, size: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!138, !4770}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !223, file: !6, line: 609, baseType: !4952, size: 64, offset: 320)
!4952 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !6, line: 535, baseType: !768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !223, file: !6, line: 610, baseType: !4954, size: 64, offset: 384)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !6, line: 549, baseType: !4955)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !217, !4958}
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4960)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !6, line: 544, size: 64, elements: !4961)
!4961 = !{!4962, !4963}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4960, file: !6, line: 545, baseType: !205, size: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4960, file: !6, line: 546, baseType: !538, size: 32, offset: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !223, file: !6, line: 611, baseType: !217, size: 64, offset: 448)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !223, file: !6, line: 612, baseType: !4966, size: 64, offset: 512)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !6, line: 552, size: 256, elements: !4968)
!4968 = !{!4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !4967, file: !6, line: 556, baseType: !351, size: 8)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !4967, file: !6, line: 558, baseType: !351, size: 8, offset: 8)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !4967, file: !6, line: 559, baseType: !351, size: 8, offset: 16)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !4967, file: !6, line: 560, baseType: !351, size: 8, offset: 24)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4967, file: !6, line: 561, baseType: !310, size: 64, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4967, file: !6, line: 562, baseType: !247, size: 32, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4967, file: !6, line: 563, baseType: !437, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4967, file: !6, line: 564, baseType: !4977, offset: 256)
!4977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !1273)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !223, file: !6, line: 613, baseType: !19, size: 32, offset: 576)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !223, file: !6, line: 614, baseType: !4980, size: 64, offset: 640)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !6, line: 569, size: 192, elements: !4982)
!4982 = !{!4983, !4987, !4992}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4981, file: !6, line: 570, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!138, !4770, !217, !437}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !4981, file: !6, line: 573, baseType: !4988, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!217, !4770, !4991, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !4981, file: !6, line: 575, baseType: !4993, size: 64, offset: 128)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!138, !4770, !437}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "tx_result", scope: !219, file: !220, line: 17, baseType: !4960, size: 64, offset: 704)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !220, line: 19, baseType: !263, size: 128, offset: 768)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virt_dma_chan", file: !220, line: 22, size: 2048, elements: !5000)
!5000 = !{!5001, !5002, !5023, !5027, !5028, !5029, !5030, !5031, !5032, !5033}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4999, file: !220, line: 23, baseType: !240, size: 896)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4999, file: !220, line: 24, baseType: !5003, size: 320, offset: 896)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !5004, line: 642, size: 320, elements: !5005)
!5004 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!5005 = !{!5006, !5008, !5009, !5010, !5011, !5022}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5003, file: !5004, line: 644, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5003, file: !5004, line: 645, baseType: !297, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5003, file: !5004, line: 646, baseType: !256, size: 32, offset: 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5003, file: !5004, line: 647, baseType: !277, size: 8, offset: 160)
!5011 = !DIDerivedType(tag: DW_TAG_member, scope: !5003, file: !5004, line: 648, baseType: !5012, size: 64, offset: 192)
!5012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5003, file: !5004, line: 648, size: 64, elements: !5013)
!5013 = !{!5014, !5018}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5012, file: !5004, line: 649, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{null, !297}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5012, file: !5004, line: 650, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{null, !5007}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5003, file: !5004, line: 652, baseType: !297, size: 64, offset: 256)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !4999, file: !220, line: 25, baseType: !5024, size: 64, offset: 1216)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !218}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4999, file: !220, line: 27, baseType: !327, size: 32, offset: 1280)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "desc_allocated", scope: !4999, file: !220, line: 30, baseType: !263, size: 128, offset: 1344)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "desc_submitted", scope: !4999, file: !220, line: 31, baseType: !263, size: 128, offset: 1472)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "desc_issued", scope: !4999, file: !220, line: 32, baseType: !263, size: 128, offset: 1600)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "desc_completed", scope: !4999, file: !220, line: 33, baseType: !263, size: 128, offset: 1728)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "desc_terminated", scope: !4999, file: !220, line: 34, baseType: !263, size: 128, offset: 1856)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic", scope: !4999, file: !220, line: 36, baseType: !218, size: 64, offset: 1984)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !266)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5035)
!5038 = !{!0, !5039, !5041, !5043, !5045, !5047, !5052, !5057}
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vchan_tx_desc_free289", scope: !2, file: !3, line: 64, type: !217, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vchan_find_desc290", scope: !2, file: !3, line: 77, type: !217, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vchan_dma_desc_free_list291", scope: !2, file: !3, line: 121, type: !217, isLocal: true, isDefinition: true)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vchan_init292", scope: !2, file: !3, line: 139, type: !217, isLocal: true, isDefinition: true)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author293", scope: !2, file: !3, line: 141, type: !5049, isLocal: true, isDefinition: true, align: 8)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 232, elements: !5050)
!5050 = !{!5051}
!5051 = !DISubrange(count: 29)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file294", scope: !2, file: !3, line: 142, type: !5054, isLocal: true, isDefinition: true, align: 8)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 280, elements: !5055)
!5055 = !{!5056}
!5056 = !DISubrange(count: 35)
!5057 = !DIGlobalVariableExpression(var: !5058, expr: !DIExpression())
!5058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license295", scope: !2, file: !3, line: 142, type: !5059, isLocal: true, isDefinition: true, align: 8)
!5059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 168, elements: !5060)
!5060 = !{!5061}
!5061 = !DISubrange(count: 21)
!5062 = !{i32 7, !"Dwarf Version", i32 5}
!5063 = !{i32 2, !"Debug Info Version", i32 3}
!5064 = !{i32 1, !"wchar_size", i32 2}
!5065 = !{i32 8, !"cf-protection-branch", i32 1}
!5066 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5067 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5068 = !{i32 1, !"Code Model", i32 2}
!5069 = !{i32 1, !"override-stack-alignment", i32 8}
!5070 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5071 = distinct !DISubprogram(name: "vchan_tx_submit", scope: !3, file: !3, line: 19, type: !4945, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077, !5078, !5082}
!5073 = !DILocalVariable(name: "tx", arg: 1, scope: !5071, file: !3, line: 19, type: !4770)
!5074 = !DILocalVariable(name: "vc", scope: !5071, file: !3, line: 21, type: !4998)
!5075 = !DILocalVariable(name: "vd", scope: !5071, file: !3, line: 22, type: !218)
!5076 = !DILocalVariable(name: "flags", scope: !5071, file: !3, line: 23, type: !297)
!5077 = !DILocalVariable(name: "cookie", scope: !5071, file: !3, line: 24, type: !226)
!5078 = !DILocalVariable(name: "__dummy", scope: !5079, file: !3, line: 26, type: !297)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 26, column: 2)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 26, column: 2)
!5081 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 26, column: 2)
!5082 = !DILocalVariable(name: "__dummy2", scope: !5079, file: !3, line: 26, type: !297)
!5083 = !DILocation(line: 19, column: 62, scope: !5071)
!5084 = !DILocation(line: 21, column: 2, scope: !5071)
!5085 = !DILocation(line: 21, column: 24, scope: !5071)
!5086 = !DILocation(line: 21, column: 42, scope: !5071)
!5087 = !DILocation(line: 21, column: 46, scope: !5071)
!5088 = !DILocation(line: 21, column: 29, scope: !5071)
!5089 = !DILocation(line: 22, column: 2, scope: !5071)
!5090 = !DILocation(line: 22, column: 24, scope: !5071)
!5091 = !DILocation(line: 22, column: 42, scope: !5071)
!5092 = !DILocation(line: 22, column: 29, scope: !5071)
!5093 = !DILocation(line: 23, column: 2, scope: !5071)
!5094 = !DILocation(line: 23, column: 16, scope: !5071)
!5095 = !DILocation(line: 24, column: 2, scope: !5071)
!5096 = !DILocation(line: 24, column: 15, scope: !5071)
!5097 = !DILocation(line: 26, column: 2, scope: !5071)
!5098 = !DILocation(line: 26, column: 2, scope: !5081)
!5099 = !DILocation(line: 26, column: 2, scope: !5079)
!5100 = !DILocation(line: 26, column: 2, scope: !5080)
!5101 = !DILocation(line: 27, column: 29, scope: !5071)
!5102 = !DILocation(line: 27, column: 11, scope: !5071)
!5103 = !DILocation(line: 27, column: 9, scope: !5071)
!5104 = !DILocation(line: 29, column: 18, scope: !5071)
!5105 = !DILocation(line: 29, column: 22, scope: !5071)
!5106 = !DILocation(line: 29, column: 29, scope: !5071)
!5107 = !DILocation(line: 29, column: 33, scope: !5071)
!5108 = !DILocation(line: 29, column: 2, scope: !5071)
!5109 = !DILocation(line: 30, column: 26, scope: !5071)
!5110 = !DILocation(line: 30, column: 30, scope: !5071)
!5111 = !DILocation(line: 30, column: 36, scope: !5071)
!5112 = !DILocation(line: 30, column: 2, scope: !5071)
!5113 = !DILocation(line: 35, column: 9, scope: !5071)
!5114 = !DILocation(line: 36, column: 1, scope: !5071)
!5115 = !DILocation(line: 35, column: 2, scope: !5071)
!5116 = distinct !DISubprogram(name: "to_virt_chan", scope: !220, file: !220, line: 39, type: !5117, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5119)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!4998, !239}
!5119 = !{!5120, !5121}
!5120 = !DILocalVariable(name: "chan", arg: 1, scope: !5116, file: !220, line: 39, type: !239)
!5121 = !DILocalVariable(name: "__mptr", scope: !5122, file: !220, line: 41, type: !217)
!5122 = distinct !DILexicalBlock(scope: !5116, file: !220, line: 41, column: 9)
!5123 = !DILocation(line: 39, column: 67, scope: !5116)
!5124 = !DILocation(line: 41, column: 9, scope: !5122)
!5125 = !DILocation(line: 41, column: 9, scope: !5116)
!5126 = !DILocation(line: 41, column: 2, scope: !5116)
!5127 = distinct !DISubprogram(name: "to_virt_desc", scope: !3, file: !3, line: 14, type: !5128, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!218, !4770}
!5130 = !{!5131, !5132}
!5131 = !DILocalVariable(name: "tx", arg: 1, scope: !5127, file: !3, line: 14, type: !4770)
!5132 = !DILocalVariable(name: "__mptr", scope: !5133, file: !3, line: 16, type: !217)
!5133 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 16, column: 9)
!5134 = !DILocation(line: 14, column: 75, scope: !5127)
!5135 = !DILocation(line: 16, column: 9, scope: !5133)
!5136 = !DILocation(line: 16, column: 9, scope: !5127)
!5137 = !DILocation(line: 16, column: 2, scope: !5127)
!5138 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5139, file: !5139, line: 32, type: !5140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5139 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!297, !5142}
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!5143 = distinct !DISubprogram(name: "spinlock_check", scope: !5144, file: !5144, line: 324, type: !5145, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5147)
!5144 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!5142, !2029}
!5147 = !{!5148}
!5148 = !DILocalVariable(name: "lock", arg: 1, scope: !5143, file: !5144, line: 324, type: !2029)
!5149 = !DILocation(line: 324, column: 67, scope: !5143)
!5150 = !DILocation(line: 326, column: 10, scope: !5143)
!5151 = !DILocation(line: 326, column: 16, scope: !5143)
!5152 = !DILocation(line: 326, column: 2, scope: !5143)
!5153 = distinct !DISubprogram(name: "dma_cookie_assign", scope: !5154, file: !5154, line: 29, type: !4945, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5155)
!5154 = !DIFile(filename: "drivers/dma/dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dfb176701a955c85c3a565a775e4e441")
!5155 = !{!5156, !5157, !5158}
!5156 = !DILocalVariable(name: "tx", arg: 1, scope: !5153, file: !5154, line: 29, type: !4770)
!5157 = !DILocalVariable(name: "chan", scope: !5153, file: !5154, line: 31, type: !239)
!5158 = !DILocalVariable(name: "cookie", scope: !5153, file: !5154, line: 32, type: !226)
!5159 = !DILocation(line: 29, column: 78, scope: !5153)
!5160 = !DILocation(line: 31, column: 2, scope: !5153)
!5161 = !DILocation(line: 31, column: 19, scope: !5153)
!5162 = !DILocation(line: 31, column: 26, scope: !5153)
!5163 = !DILocation(line: 31, column: 30, scope: !5153)
!5164 = !DILocation(line: 32, column: 2, scope: !5153)
!5165 = !DILocation(line: 32, column: 15, scope: !5153)
!5166 = !DILocation(line: 34, column: 11, scope: !5153)
!5167 = !DILocation(line: 34, column: 17, scope: !5153)
!5168 = !DILocation(line: 34, column: 24, scope: !5153)
!5169 = !DILocation(line: 34, column: 9, scope: !5153)
!5170 = !DILocation(line: 35, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5153, file: !5154, line: 35, column: 6)
!5172 = !DILocation(line: 35, column: 13, scope: !5171)
!5173 = !DILocation(line: 35, column: 6, scope: !5153)
!5174 = !DILocation(line: 36, column: 10, scope: !5171)
!5175 = !DILocation(line: 36, column: 3, scope: !5171)
!5176 = !DILocation(line: 37, column: 30, scope: !5153)
!5177 = !DILocation(line: 37, column: 15, scope: !5153)
!5178 = !DILocation(line: 37, column: 21, scope: !5153)
!5179 = !DILocation(line: 37, column: 28, scope: !5153)
!5180 = !DILocation(line: 37, column: 2, scope: !5153)
!5181 = !DILocation(line: 37, column: 6, scope: !5153)
!5182 = !DILocation(line: 37, column: 13, scope: !5153)
!5183 = !DILocation(line: 39, column: 9, scope: !5153)
!5184 = !DILocation(line: 40, column: 1, scope: !5153)
!5185 = !DILocation(line: 39, column: 2, scope: !5153)
!5186 = distinct !DISubprogram(name: "list_move_tail", scope: !5187, file: !5187, line: 307, type: !5188, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5190)
!5187 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{null, !266, !266}
!5190 = !{!5191, !5192}
!5191 = !DILocalVariable(name: "list", arg: 1, scope: !5186, file: !5187, line: 307, type: !266)
!5192 = !DILocalVariable(name: "head", arg: 2, scope: !5186, file: !5187, line: 308, type: !266)
!5193 = !DILocation(line: 307, column: 53, scope: !5186)
!5194 = !DILocation(line: 308, column: 25, scope: !5186)
!5195 = !DILocation(line: 310, column: 19, scope: !5186)
!5196 = !DILocation(line: 310, column: 2, scope: !5186)
!5197 = !DILocation(line: 311, column: 16, scope: !5186)
!5198 = !DILocation(line: 311, column: 22, scope: !5186)
!5199 = !DILocation(line: 311, column: 2, scope: !5186)
!5200 = !DILocation(line: 312, column: 1, scope: !5186)
!5201 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5144, file: !5144, line: 404, type: !5202, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{null, !2029, !297}
!5204 = !{!5205, !5206, !5207, !5210}
!5205 = !DILocalVariable(name: "lock", arg: 1, scope: !5201, file: !5144, line: 404, type: !2029)
!5206 = !DILocalVariable(name: "flags", arg: 2, scope: !5201, file: !5144, line: 404, type: !297)
!5207 = !DILocalVariable(name: "__dummy", scope: !5208, file: !5144, line: 406, type: !297)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !5144, line: 406, column: 2)
!5209 = distinct !DILexicalBlock(scope: !5201, file: !5144, line: 406, column: 2)
!5210 = !DILocalVariable(name: "__dummy2", scope: !5208, file: !5144, line: 406, type: !297)
!5211 = !DILocation(line: 404, column: 64, scope: !5201)
!5212 = !DILocation(line: 404, column: 84, scope: !5201)
!5213 = !DILocation(line: 406, column: 2, scope: !5201)
!5214 = !DILocation(line: 406, column: 2, scope: !5208)
!5215 = !DILocation(line: 406, column: 2, scope: !5209)
!5216 = !DILocation(line: 407, column: 1, scope: !5201)
!5217 = distinct !DISubprogram(name: "vchan_tx_desc_free", scope: !3, file: !3, line: 49, type: !4949, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5218)
!5218 = !{!5219, !5220, !5221, !5222, !5223, !5227}
!5219 = !DILocalVariable(name: "tx", arg: 1, scope: !5217, file: !3, line: 49, type: !4770)
!5220 = !DILocalVariable(name: "vc", scope: !5217, file: !3, line: 51, type: !4998)
!5221 = !DILocalVariable(name: "vd", scope: !5217, file: !3, line: 52, type: !218)
!5222 = !DILocalVariable(name: "flags", scope: !5217, file: !3, line: 53, type: !297)
!5223 = !DILocalVariable(name: "__dummy", scope: !5224, file: !3, line: 55, type: !297)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 55, column: 2)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 55, column: 2)
!5226 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 55, column: 2)
!5227 = !DILocalVariable(name: "__dummy2", scope: !5224, file: !3, line: 55, type: !297)
!5228 = !DILocation(line: 49, column: 56, scope: !5217)
!5229 = !DILocation(line: 51, column: 2, scope: !5217)
!5230 = !DILocation(line: 51, column: 24, scope: !5217)
!5231 = !DILocation(line: 51, column: 42, scope: !5217)
!5232 = !DILocation(line: 51, column: 46, scope: !5217)
!5233 = !DILocation(line: 51, column: 29, scope: !5217)
!5234 = !DILocation(line: 52, column: 2, scope: !5217)
!5235 = !DILocation(line: 52, column: 24, scope: !5217)
!5236 = !DILocation(line: 52, column: 42, scope: !5217)
!5237 = !DILocation(line: 52, column: 29, scope: !5217)
!5238 = !DILocation(line: 53, column: 2, scope: !5217)
!5239 = !DILocation(line: 53, column: 16, scope: !5217)
!5240 = !DILocation(line: 55, column: 2, scope: !5217)
!5241 = !DILocation(line: 55, column: 2, scope: !5226)
!5242 = !DILocation(line: 55, column: 2, scope: !5224)
!5243 = !DILocation(line: 55, column: 2, scope: !5225)
!5244 = !DILocation(line: 56, column: 12, scope: !5217)
!5245 = !DILocation(line: 56, column: 16, scope: !5217)
!5246 = !DILocation(line: 56, column: 2, scope: !5217)
!5247 = !DILocation(line: 57, column: 26, scope: !5217)
!5248 = !DILocation(line: 57, column: 30, scope: !5217)
!5249 = !DILocation(line: 57, column: 36, scope: !5217)
!5250 = !DILocation(line: 57, column: 2, scope: !5217)
!5251 = !DILocation(line: 61, column: 2, scope: !5217)
!5252 = !DILocation(line: 61, column: 6, scope: !5217)
!5253 = !DILocation(line: 61, column: 16, scope: !5217)
!5254 = !DILocation(line: 63, column: 1, scope: !5217)
!5255 = !DILocation(line: 62, column: 2, scope: !5217)
!5256 = distinct !DISubprogram(name: "list_del", scope: !5187, file: !5187, line: 227, type: !5257, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !266}
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "entry", arg: 1, scope: !5256, file: !5187, line: 227, type: !266)
!5261 = !DILocation(line: 227, column: 47, scope: !5256)
!5262 = !DILocation(line: 229, column: 19, scope: !5256)
!5263 = !DILocation(line: 229, column: 2, scope: !5256)
!5264 = !DILocation(line: 230, column: 2, scope: !5256)
!5265 = !DILocation(line: 230, column: 9, scope: !5256)
!5266 = !DILocation(line: 230, column: 14, scope: !5256)
!5267 = !DILocation(line: 231, column: 2, scope: !5256)
!5268 = !DILocation(line: 231, column: 9, scope: !5256)
!5269 = !DILocation(line: 231, column: 14, scope: !5256)
!5270 = !DILocation(line: 232, column: 1, scope: !5256)
!5271 = distinct !DISubprogram(name: "vchan_find_desc", scope: !3, file: !3, line: 66, type: !5272, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5274)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!218, !4998, !226}
!5274 = !{!5275, !5276, !5277, !5278, !5281}
!5275 = !DILocalVariable(name: "vc", arg: 1, scope: !5271, file: !3, line: 66, type: !4998)
!5276 = !DILocalVariable(name: "cookie", arg: 2, scope: !5271, file: !3, line: 67, type: !226)
!5277 = !DILocalVariable(name: "vd", scope: !5271, file: !3, line: 69, type: !218)
!5278 = !DILocalVariable(name: "__mptr", scope: !5279, file: !3, line: 71, type: !217)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 71, column: 2)
!5280 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 71, column: 2)
!5281 = !DILocalVariable(name: "__mptr", scope: !5282, file: !3, line: 71, type: !217)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 71, column: 2)
!5283 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 71, column: 2)
!5284 = !DILocation(line: 66, column: 61, scope: !5271)
!5285 = !DILocation(line: 67, column: 15, scope: !5271)
!5286 = !DILocation(line: 69, column: 2, scope: !5271)
!5287 = !DILocation(line: 69, column: 24, scope: !5271)
!5288 = !DILocation(line: 71, column: 2, scope: !5279)
!5289 = !DILocation(line: 71, column: 2, scope: !5280)
!5290 = !DILocation(line: 71, column: 2, scope: !5283)
!5291 = !DILocation(line: 72, column: 7, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 72, column: 7)
!5293 = !DILocation(line: 72, column: 11, scope: !5292)
!5294 = !DILocation(line: 72, column: 14, scope: !5292)
!5295 = !DILocation(line: 72, column: 24, scope: !5292)
!5296 = !DILocation(line: 72, column: 21, scope: !5292)
!5297 = !DILocation(line: 72, column: 7, scope: !5283)
!5298 = !DILocation(line: 73, column: 11, scope: !5292)
!5299 = !DILocation(line: 73, column: 4, scope: !5292)
!5300 = !DILocation(line: 71, column: 2, scope: !5282)
!5301 = distinct !{!5301, !5289, !5302, !5303, !5304}
!5302 = !DILocation(line: 73, column: 11, scope: !5280)
!5303 = !{!"llvm.loop.mustprogress"}
!5304 = !{!"llvm.loop.unroll.disable"}
!5305 = !DILocation(line: 75, column: 2, scope: !5271)
!5306 = !DILocation(line: 76, column: 1, scope: !5271)
!5307 = distinct !DISubprogram(name: "vchan_dma_desc_free_list", scope: !3, file: !3, line: 112, type: !5308, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !4998, !266}
!5310 = !{!5311, !5312, !5313, !5314, !5315, !5318, !5320}
!5311 = !DILocalVariable(name: "vc", arg: 1, scope: !5307, file: !3, line: 112, type: !4998)
!5312 = !DILocalVariable(name: "head", arg: 2, scope: !5307, file: !3, line: 112, type: !266)
!5313 = !DILocalVariable(name: "vd", scope: !5307, file: !3, line: 114, type: !218)
!5314 = !DILocalVariable(name: "_vd", scope: !5307, file: !3, line: 114, type: !218)
!5315 = !DILocalVariable(name: "__mptr", scope: !5316, file: !3, line: 116, type: !217)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 116, column: 2)
!5317 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 116, column: 2)
!5318 = !DILocalVariable(name: "__mptr", scope: !5319, file: !3, line: 116, type: !217)
!5319 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 116, column: 2)
!5320 = !DILocalVariable(name: "__mptr", scope: !5321, file: !3, line: 116, type: !217)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 116, column: 2)
!5322 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 116, column: 2)
!5323 = !DILocation(line: 112, column: 53, scope: !5307)
!5324 = !DILocation(line: 112, column: 75, scope: !5307)
!5325 = !DILocation(line: 114, column: 2, scope: !5307)
!5326 = !DILocation(line: 114, column: 24, scope: !5307)
!5327 = !DILocation(line: 114, column: 29, scope: !5307)
!5328 = !DILocation(line: 116, column: 2, scope: !5316)
!5329 = !DILocation(line: 116, column: 2, scope: !5317)
!5330 = !DILocation(line: 116, column: 2, scope: !5319)
!5331 = !DILocation(line: 116, column: 2, scope: !5322)
!5332 = !DILocation(line: 117, column: 13, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 116, column: 48)
!5334 = !DILocation(line: 117, column: 17, scope: !5333)
!5335 = !DILocation(line: 117, column: 3, scope: !5333)
!5336 = !DILocation(line: 118, column: 20, scope: !5333)
!5337 = !DILocation(line: 118, column: 3, scope: !5333)
!5338 = !DILocation(line: 119, column: 2, scope: !5333)
!5339 = !DILocation(line: 116, column: 2, scope: !5321)
!5340 = distinct !{!5340, !5329, !5341, !5303, !5304}
!5341 = !DILocation(line: 119, column: 2, scope: !5317)
!5342 = !DILocation(line: 120, column: 1, scope: !5307)
!5343 = distinct !DISubprogram(name: "vchan_vdesc_fini", scope: !220, file: !220, line: 112, type: !5025, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5344 = !{!5345, !5346, !5347, !5350, !5354}
!5345 = !DILocalVariable(name: "vd", arg: 1, scope: !5343, file: !220, line: 112, type: !218)
!5346 = !DILocalVariable(name: "vc", scope: !5343, file: !220, line: 114, type: !4998)
!5347 = !DILocalVariable(name: "flags", scope: !5348, file: !220, line: 117, type: !297)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !220, line: 116, column: 42)
!5349 = distinct !DILexicalBlock(scope: !5343, file: !220, line: 116, column: 6)
!5350 = !DILocalVariable(name: "__dummy", scope: !5351, file: !220, line: 119, type: !297)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !220, line: 119, column: 3)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !220, line: 119, column: 3)
!5353 = distinct !DILexicalBlock(scope: !5348, file: !220, line: 119, column: 3)
!5354 = !DILocalVariable(name: "__dummy2", scope: !5351, file: !220, line: 119, type: !297)
!5355 = !DILocation(line: 112, column: 59, scope: !5343)
!5356 = !DILocation(line: 114, column: 2, scope: !5343)
!5357 = !DILocation(line: 114, column: 24, scope: !5343)
!5358 = !DILocation(line: 114, column: 42, scope: !5343)
!5359 = !DILocation(line: 114, column: 46, scope: !5343)
!5360 = !DILocation(line: 114, column: 49, scope: !5343)
!5361 = !DILocation(line: 114, column: 29, scope: !5343)
!5362 = !DILocation(line: 116, column: 33, scope: !5349)
!5363 = !DILocation(line: 116, column: 37, scope: !5349)
!5364 = !DILocation(line: 116, column: 6, scope: !5349)
!5365 = !DILocation(line: 116, column: 6, scope: !5343)
!5366 = !DILocation(line: 117, column: 3, scope: !5348)
!5367 = !DILocation(line: 117, column: 17, scope: !5348)
!5368 = !DILocation(line: 119, column: 3, scope: !5348)
!5369 = !DILocation(line: 119, column: 3, scope: !5353)
!5370 = !DILocation(line: 119, column: 3, scope: !5351)
!5371 = !DILocation(line: 119, column: 3, scope: !5352)
!5372 = !DILocation(line: 120, column: 13, scope: !5348)
!5373 = !DILocation(line: 120, column: 17, scope: !5348)
!5374 = !DILocation(line: 120, column: 24, scope: !5348)
!5375 = !DILocation(line: 120, column: 28, scope: !5348)
!5376 = !DILocation(line: 120, column: 3, scope: !5348)
!5377 = !DILocation(line: 121, column: 27, scope: !5348)
!5378 = !DILocation(line: 121, column: 31, scope: !5348)
!5379 = !DILocation(line: 121, column: 37, scope: !5348)
!5380 = !DILocation(line: 121, column: 3, scope: !5348)
!5381 = !DILocation(line: 122, column: 2, scope: !5349)
!5382 = !DILocation(line: 122, column: 2, scope: !5348)
!5383 = !DILocation(line: 123, column: 3, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5349, file: !220, line: 122, column: 9)
!5385 = !DILocation(line: 123, column: 7, scope: !5384)
!5386 = !DILocation(line: 123, column: 17, scope: !5384)
!5387 = !DILocation(line: 125, column: 1, scope: !5343)
!5388 = distinct !DISubprogram(name: "vchan_init", scope: !3, file: !3, line: 123, type: !5389, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !4998, !243}
!5391 = !{!5392, !5393}
!5392 = !DILocalVariable(name: "vc", arg: 1, scope: !5388, file: !3, line: 123, type: !4998)
!5393 = !DILocalVariable(name: "dmadev", arg: 2, scope: !5388, file: !3, line: 123, type: !243)
!5394 = !DILocation(line: 123, column: 39, scope: !5388)
!5395 = !DILocation(line: 123, column: 62, scope: !5388)
!5396 = !DILocation(line: 125, column: 19, scope: !5388)
!5397 = !DILocation(line: 125, column: 23, scope: !5388)
!5398 = !DILocation(line: 125, column: 2, scope: !5388)
!5399 = !DILocation(line: 127, column: 2, scope: !5388)
!5400 = !DILocation(line: 127, column: 2, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 127, column: 2)
!5402 = !DILocation(line: 128, column: 18, scope: !5388)
!5403 = !DILocation(line: 128, column: 22, scope: !5388)
!5404 = !DILocation(line: 128, column: 2, scope: !5388)
!5405 = !DILocation(line: 129, column: 18, scope: !5388)
!5406 = !DILocation(line: 129, column: 22, scope: !5388)
!5407 = !DILocation(line: 129, column: 2, scope: !5388)
!5408 = !DILocation(line: 130, column: 18, scope: !5388)
!5409 = !DILocation(line: 130, column: 22, scope: !5388)
!5410 = !DILocation(line: 130, column: 2, scope: !5388)
!5411 = !DILocation(line: 131, column: 18, scope: !5388)
!5412 = !DILocation(line: 131, column: 22, scope: !5388)
!5413 = !DILocation(line: 131, column: 2, scope: !5388)
!5414 = !DILocation(line: 132, column: 18, scope: !5388)
!5415 = !DILocation(line: 132, column: 22, scope: !5388)
!5416 = !DILocation(line: 132, column: 2, scope: !5388)
!5417 = !DILocation(line: 134, column: 17, scope: !5388)
!5418 = !DILocation(line: 134, column: 21, scope: !5388)
!5419 = !DILocation(line: 134, column: 2, scope: !5388)
!5420 = !DILocation(line: 136, column: 20, scope: !5388)
!5421 = !DILocation(line: 136, column: 2, scope: !5388)
!5422 = !DILocation(line: 136, column: 6, scope: !5388)
!5423 = !DILocation(line: 136, column: 11, scope: !5388)
!5424 = !DILocation(line: 136, column: 18, scope: !5388)
!5425 = !DILocation(line: 137, column: 17, scope: !5388)
!5426 = !DILocation(line: 137, column: 21, scope: !5388)
!5427 = !DILocation(line: 137, column: 26, scope: !5388)
!5428 = !DILocation(line: 137, column: 40, scope: !5388)
!5429 = !DILocation(line: 137, column: 48, scope: !5388)
!5430 = !DILocation(line: 137, column: 2, scope: !5388)
!5431 = !DILocation(line: 138, column: 1, scope: !5388)
!5432 = distinct !DISubprogram(name: "dma_cookie_init", scope: !5154, file: !5154, line: 16, type: !4764, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5433 = !{!5434}
!5434 = !DILocalVariable(name: "chan", arg: 1, scope: !5432, file: !5154, line: 16, type: !239)
!5435 = !DILocation(line: 16, column: 53, scope: !5432)
!5436 = !DILocation(line: 18, column: 2, scope: !5432)
!5437 = !DILocation(line: 18, column: 8, scope: !5432)
!5438 = !DILocation(line: 18, column: 15, scope: !5432)
!5439 = !DILocation(line: 19, column: 2, scope: !5432)
!5440 = !DILocation(line: 19, column: 8, scope: !5432)
!5441 = !DILocation(line: 19, column: 25, scope: !5432)
!5442 = !DILocation(line: 20, column: 1, scope: !5432)
!5443 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5187, file: !5187, line: 35, type: !5257, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "list", arg: 1, scope: !5443, file: !5187, line: 35, type: !266)
!5446 = !DILocation(line: 35, column: 53, scope: !5443)
!5447 = !DILocation(line: 37, column: 2, scope: !5443)
!5448 = !DILocation(line: 37, column: 2, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5443, file: !5187, line: 37, column: 2)
!5450 = !DILocation(line: 37, column: 2, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5449, file: !5187, line: 37, column: 2)
!5452 = !DILocation(line: 37, column: 2, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5449, file: !5187, line: 37, column: 2)
!5454 = !DILocation(line: 38, column: 2, scope: !5443)
!5455 = !DILocation(line: 38, column: 2, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5443, file: !5187, line: 38, column: 2)
!5457 = !DILocation(line: 38, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5456, file: !5187, line: 38, column: 2)
!5459 = !DILocation(line: 38, column: 2, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !5187, line: 38, column: 2)
!5461 = !DILocation(line: 39, column: 1, scope: !5443)
!5462 = !DISubprogram(name: "tasklet_setup", scope: !5004, file: !5004, line: 756, type: !5463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{null, !5007, !5019}
!5465 = distinct !DISubprogram(name: "vchan_complete", scope: !3, file: !3, line: 83, type: !5020, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5466)
!5466 = !{!5467, !5468, !5469, !5471, !5472, !5473, !5479, !5480, !5483, !5485}
!5467 = !DILocalVariable(name: "t", arg: 1, scope: !5465, file: !3, line: 83, type: !5007)
!5468 = !DILocalVariable(name: "vc", scope: !5465, file: !3, line: 85, type: !4998)
!5469 = !DILocalVariable(name: "__mptr", scope: !5470, file: !3, line: 85, type: !217)
!5470 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 85, column: 29)
!5471 = !DILocalVariable(name: "vd", scope: !5465, file: !3, line: 86, type: !218)
!5472 = !DILocalVariable(name: "_vd", scope: !5465, file: !3, line: 86, type: !218)
!5473 = !DILocalVariable(name: "cb", scope: !5465, file: !3, line: 87, type: !5474)
!5474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_desc_callback", file: !5154, line: 98, size: 192, elements: !5475)
!5475 = !{!5476, !5477, !5478}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5474, file: !5154, line: 99, baseType: !4952, size: 64)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !5474, file: !5154, line: 100, baseType: !4954, size: 64, offset: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !5474, file: !5154, line: 101, baseType: !217, size: 64, offset: 128)
!5479 = !DILocalVariable(name: "head", scope: !5465, file: !3, line: 88, type: !263)
!5480 = !DILocalVariable(name: "__mptr", scope: !5481, file: !3, line: 103, type: !217)
!5481 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 103, column: 2)
!5482 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 103, column: 2)
!5483 = !DILocalVariable(name: "__mptr", scope: !5484, file: !3, line: 103, type: !217)
!5484 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 103, column: 2)
!5485 = !DILocalVariable(name: "__mptr", scope: !5486, file: !3, line: 103, type: !217)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 103, column: 2)
!5487 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 103, column: 2)
!5488 = !DILocation(line: 83, column: 51, scope: !5465)
!5489 = !DILocation(line: 85, column: 2, scope: !5465)
!5490 = !DILocation(line: 85, column: 24, scope: !5465)
!5491 = !DILocation(line: 85, column: 29, scope: !5470)
!5492 = !DILocation(line: 85, column: 29, scope: !5465)
!5493 = !DILocation(line: 86, column: 2, scope: !5465)
!5494 = !DILocation(line: 86, column: 24, scope: !5465)
!5495 = !DILocation(line: 86, column: 29, scope: !5465)
!5496 = !DILocation(line: 87, column: 2, scope: !5465)
!5497 = !DILocation(line: 87, column: 33, scope: !5465)
!5498 = !DILocation(line: 88, column: 2, scope: !5465)
!5499 = !DILocation(line: 90, column: 17, scope: !5465)
!5500 = !DILocation(line: 90, column: 21, scope: !5465)
!5501 = !DILocation(line: 90, column: 2, scope: !5465)
!5502 = !DILocation(line: 91, column: 25, scope: !5465)
!5503 = !DILocation(line: 91, column: 29, scope: !5465)
!5504 = !DILocation(line: 91, column: 2, scope: !5465)
!5505 = !DILocation(line: 92, column: 7, scope: !5465)
!5506 = !DILocation(line: 92, column: 11, scope: !5465)
!5507 = !DILocation(line: 92, column: 5, scope: !5465)
!5508 = !DILocation(line: 93, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 93, column: 6)
!5510 = !DILocation(line: 93, column: 6, scope: !5465)
!5511 = !DILocation(line: 94, column: 3, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 93, column: 10)
!5513 = !DILocation(line: 94, column: 7, scope: !5512)
!5514 = !DILocation(line: 94, column: 14, scope: !5512)
!5515 = !DILocation(line: 95, column: 32, scope: !5512)
!5516 = !DILocation(line: 95, column: 36, scope: !5512)
!5517 = !DILocation(line: 95, column: 3, scope: !5512)
!5518 = !DILocation(line: 96, column: 2, scope: !5512)
!5519 = !DILocation(line: 97, column: 3, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 96, column: 9)
!5521 = !DILocation(line: 99, column: 19, scope: !5465)
!5522 = !DILocation(line: 99, column: 23, scope: !5465)
!5523 = !DILocation(line: 99, column: 2, scope: !5465)
!5524 = !DILocation(line: 101, column: 39, scope: !5465)
!5525 = !DILocation(line: 101, column: 43, scope: !5465)
!5526 = !DILocation(line: 101, column: 2, scope: !5465)
!5527 = !DILocation(line: 103, column: 2, scope: !5481)
!5528 = !DILocation(line: 103, column: 2, scope: !5482)
!5529 = !DILocation(line: 103, column: 2, scope: !5484)
!5530 = !DILocation(line: 103, column: 2, scope: !5487)
!5531 = !DILocation(line: 104, column: 32, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 103, column: 49)
!5533 = !DILocation(line: 104, column: 36, scope: !5532)
!5534 = !DILocation(line: 104, column: 3, scope: !5532)
!5535 = !DILocation(line: 106, column: 13, scope: !5532)
!5536 = !DILocation(line: 106, column: 17, scope: !5532)
!5537 = !DILocation(line: 106, column: 3, scope: !5532)
!5538 = !DILocation(line: 107, column: 40, scope: !5532)
!5539 = !DILocation(line: 107, column: 44, scope: !5532)
!5540 = !DILocation(line: 107, column: 3, scope: !5532)
!5541 = !DILocation(line: 108, column: 20, scope: !5532)
!5542 = !DILocation(line: 108, column: 3, scope: !5532)
!5543 = !DILocation(line: 109, column: 2, scope: !5532)
!5544 = !DILocation(line: 103, column: 2, scope: !5486)
!5545 = distinct !{!5545, !5528, !5546, !5303, !5304}
!5546 = !DILocation(line: 109, column: 2, scope: !5482)
!5547 = !DILocation(line: 110, column: 1, scope: !5465)
!5548 = distinct !DISubprogram(name: "list_add_tail", scope: !5187, file: !5187, line: 181, type: !5188, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5549 = !{!5550, !5551}
!5550 = !DILocalVariable(name: "new", arg: 1, scope: !5548, file: !5187, line: 181, type: !266)
!5551 = !DILocalVariable(name: "head", arg: 2, scope: !5548, file: !5187, line: 181, type: !266)
!5552 = !DILocation(line: 181, column: 52, scope: !5548)
!5553 = !DILocation(line: 181, column: 75, scope: !5548)
!5554 = !DILocation(line: 183, column: 13, scope: !5548)
!5555 = !DILocation(line: 183, column: 18, scope: !5548)
!5556 = !DILocation(line: 183, column: 24, scope: !5548)
!5557 = !DILocation(line: 183, column: 30, scope: !5548)
!5558 = !DILocation(line: 183, column: 2, scope: !5548)
!5559 = !DILocation(line: 184, column: 1, scope: !5548)
!5560 = distinct !DISubprogram(name: "__list_del_entry", scope: !5187, file: !5187, line: 213, type: !5257, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5561 = !{!5562}
!5562 = !DILocalVariable(name: "entry", arg: 1, scope: !5560, file: !5187, line: 213, type: !266)
!5563 = !DILocation(line: 213, column: 55, scope: !5560)
!5564 = !DILocation(line: 215, column: 30, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5560, file: !5187, line: 215, column: 6)
!5566 = !DILocation(line: 215, column: 7, scope: !5565)
!5567 = !DILocation(line: 215, column: 6, scope: !5560)
!5568 = !DILocation(line: 216, column: 3, scope: !5565)
!5569 = !DILocation(line: 218, column: 13, scope: !5560)
!5570 = !DILocation(line: 218, column: 20, scope: !5560)
!5571 = !DILocation(line: 218, column: 26, scope: !5560)
!5572 = !DILocation(line: 218, column: 33, scope: !5560)
!5573 = !DILocation(line: 218, column: 2, scope: !5560)
!5574 = !DILocation(line: 219, column: 1, scope: !5560)
!5575 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5187, file: !5187, line: 134, type: !5576, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5578)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!277, !266}
!5578 = !{!5579}
!5579 = !DILocalVariable(name: "entry", arg: 1, scope: !5575, file: !5187, line: 134, type: !266)
!5580 = !DILocation(line: 134, column: 61, scope: !5575)
!5581 = !DILocation(line: 136, column: 2, scope: !5575)
!5582 = distinct !DISubprogram(name: "__list_del", scope: !5187, file: !5187, line: 193, type: !5188, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5583)
!5583 = !{!5584, !5585}
!5584 = !DILocalVariable(name: "prev", arg: 1, scope: !5582, file: !5187, line: 193, type: !266)
!5585 = !DILocalVariable(name: "next", arg: 2, scope: !5582, file: !5187, line: 193, type: !266)
!5586 = !DILocation(line: 193, column: 50, scope: !5582)
!5587 = !DILocation(line: 193, column: 75, scope: !5582)
!5588 = !DILocation(line: 195, column: 15, scope: !5582)
!5589 = !DILocation(line: 195, column: 2, scope: !5582)
!5590 = !DILocation(line: 195, column: 8, scope: !5582)
!5591 = !DILocation(line: 195, column: 13, scope: !5582)
!5592 = !DILocation(line: 196, column: 2, scope: !5582)
!5593 = !DILocation(line: 196, column: 2, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5582, file: !5187, line: 196, column: 2)
!5595 = !DILocation(line: 196, column: 2, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5594, file: !5187, line: 196, column: 2)
!5597 = !DILocation(line: 196, column: 2, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5594, file: !5187, line: 196, column: 2)
!5599 = !DILocation(line: 197, column: 1, scope: !5582)
!5600 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5139, file: !5139, line: 43, type: !5601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{null, !5142, !297}
!5603 = distinct !DISubprogram(name: "dmaengine_desc_test_reuse", scope: !6, file: !6, line: 1560, type: !5604, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5606)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!277, !4770}
!5606 = !{!5607}
!5607 = !DILocalVariable(name: "tx", arg: 1, scope: !5603, file: !6, line: 1560, type: !4770)
!5608 = !DILocation(line: 1560, column: 78, scope: !5603)
!5609 = !DILocation(line: 1562, column: 10, scope: !5603)
!5610 = !DILocation(line: 1562, column: 14, scope: !5603)
!5611 = !DILocation(line: 1562, column: 20, scope: !5603)
!5612 = !DILocation(line: 1562, column: 38, scope: !5603)
!5613 = !DILocation(line: 1562, column: 2, scope: !5603)
!5614 = distinct !DISubprogram(name: "list_add", scope: !5187, file: !5187, line: 167, type: !5188, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5615)
!5615 = !{!5616, !5617}
!5616 = !DILocalVariable(name: "new", arg: 1, scope: !5614, file: !5187, line: 167, type: !266)
!5617 = !DILocalVariable(name: "head", arg: 2, scope: !5614, file: !5187, line: 167, type: !266)
!5618 = !DILocation(line: 167, column: 47, scope: !5614)
!5619 = !DILocation(line: 167, column: 70, scope: !5614)
!5620 = !DILocation(line: 169, column: 13, scope: !5614)
!5621 = !DILocation(line: 169, column: 18, scope: !5614)
!5622 = !DILocation(line: 169, column: 24, scope: !5614)
!5623 = !DILocation(line: 169, column: 30, scope: !5614)
!5624 = !DILocation(line: 169, column: 2, scope: !5614)
!5625 = !DILocation(line: 170, column: 1, scope: !5614)
!5626 = distinct !DISubprogram(name: "__list_add", scope: !5187, file: !5187, line: 146, type: !5627, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5629)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{null, !266, !266, !266}
!5629 = !{!5630, !5631, !5632}
!5630 = !DILocalVariable(name: "new", arg: 1, scope: !5626, file: !5187, line: 146, type: !266)
!5631 = !DILocalVariable(name: "prev", arg: 2, scope: !5626, file: !5187, line: 147, type: !266)
!5632 = !DILocalVariable(name: "next", arg: 3, scope: !5626, file: !5187, line: 148, type: !266)
!5633 = !DILocation(line: 146, column: 49, scope: !5626)
!5634 = !DILocation(line: 147, column: 28, scope: !5626)
!5635 = !DILocation(line: 148, column: 28, scope: !5626)
!5636 = !DILocation(line: 150, column: 24, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5626, file: !5187, line: 150, column: 6)
!5638 = !DILocation(line: 150, column: 29, scope: !5637)
!5639 = !DILocation(line: 150, column: 35, scope: !5637)
!5640 = !DILocation(line: 150, column: 7, scope: !5637)
!5641 = !DILocation(line: 150, column: 6, scope: !5626)
!5642 = !DILocation(line: 151, column: 3, scope: !5637)
!5643 = !DILocation(line: 153, column: 15, scope: !5626)
!5644 = !DILocation(line: 153, column: 2, scope: !5626)
!5645 = !DILocation(line: 153, column: 8, scope: !5626)
!5646 = !DILocation(line: 153, column: 13, scope: !5626)
!5647 = !DILocation(line: 154, column: 14, scope: !5626)
!5648 = !DILocation(line: 154, column: 2, scope: !5626)
!5649 = !DILocation(line: 154, column: 7, scope: !5626)
!5650 = !DILocation(line: 154, column: 12, scope: !5626)
!5651 = !DILocation(line: 155, column: 14, scope: !5626)
!5652 = !DILocation(line: 155, column: 2, scope: !5626)
!5653 = !DILocation(line: 155, column: 7, scope: !5626)
!5654 = !DILocation(line: 155, column: 12, scope: !5626)
!5655 = !DILocation(line: 156, column: 2, scope: !5626)
!5656 = !DILocation(line: 156, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5626, file: !5187, line: 156, column: 2)
!5658 = !DILocation(line: 156, column: 2, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5657, file: !5187, line: 156, column: 2)
!5660 = !DILocation(line: 156, column: 2, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !5187, line: 156, column: 2)
!5662 = !DILocation(line: 157, column: 1, scope: !5626)
!5663 = distinct !DISubprogram(name: "__list_add_valid", scope: !5187, file: !5187, line: 128, type: !5664, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5666)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!277, !266, !266, !266}
!5666 = !{!5667, !5668, !5669}
!5667 = !DILocalVariable(name: "new", arg: 1, scope: !5663, file: !5187, line: 128, type: !266)
!5668 = !DILocalVariable(name: "prev", arg: 2, scope: !5663, file: !5187, line: 129, type: !266)
!5669 = !DILocalVariable(name: "next", arg: 3, scope: !5663, file: !5187, line: 130, type: !266)
!5670 = !DILocation(line: 128, column: 55, scope: !5663)
!5671 = !DILocation(line: 129, column: 23, scope: !5663)
!5672 = !DILocation(line: 130, column: 23, scope: !5663)
!5673 = !DILocation(line: 132, column: 2, scope: !5663)
!5674 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5144, file: !5144, line: 374, type: !5675, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5677)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{null, !2029}
!5677 = !{!5678}
!5678 = !DILocalVariable(name: "lock", arg: 1, scope: !5674, file: !5144, line: 374, type: !2029)
!5679 = !DILocation(line: 374, column: 55, scope: !5674)
!5680 = !DILocation(line: 376, column: 2, scope: !5674)
!5681 = !DILocation(line: 377, column: 1, scope: !5674)
!5682 = distinct !DISubprogram(name: "list_splice_tail_init", scope: !5187, file: !5187, line: 585, type: !5188, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5683 = !{!5684, !5685}
!5684 = !DILocalVariable(name: "list", arg: 1, scope: !5682, file: !5187, line: 585, type: !266)
!5685 = !DILocalVariable(name: "head", arg: 2, scope: !5682, file: !5187, line: 586, type: !266)
!5686 = !DILocation(line: 585, column: 60, scope: !5682)
!5687 = !DILocation(line: 586, column: 25, scope: !5682)
!5688 = !DILocation(line: 588, column: 18, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5682, file: !5187, line: 588, column: 6)
!5690 = !DILocation(line: 588, column: 7, scope: !5689)
!5691 = !DILocation(line: 588, column: 6, scope: !5682)
!5692 = !DILocation(line: 589, column: 17, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5689, file: !5187, line: 588, column: 25)
!5694 = !DILocation(line: 589, column: 23, scope: !5693)
!5695 = !DILocation(line: 589, column: 29, scope: !5693)
!5696 = !DILocation(line: 589, column: 35, scope: !5693)
!5697 = !DILocation(line: 589, column: 3, scope: !5693)
!5698 = !DILocation(line: 590, column: 18, scope: !5693)
!5699 = !DILocation(line: 590, column: 3, scope: !5693)
!5700 = !DILocation(line: 591, column: 2, scope: !5693)
!5701 = !DILocation(line: 592, column: 1, scope: !5682)
!5702 = distinct !DISubprogram(name: "dmaengine_desc_get_callback", scope: !5154, file: !5154, line: 114, type: !5703, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5706)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{null, !4770, !5705}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5706 = !{!5707, !5708}
!5707 = !DILocalVariable(name: "tx", arg: 1, scope: !5702, file: !5154, line: 114, type: !4770)
!5708 = !DILocalVariable(name: "cb", arg: 2, scope: !5702, file: !5154, line: 115, type: !5705)
!5709 = !DILocation(line: 114, column: 61, scope: !5702)
!5710 = !DILocation(line: 115, column: 40, scope: !5702)
!5711 = !DILocation(line: 117, column: 17, scope: !5702)
!5712 = !DILocation(line: 117, column: 21, scope: !5702)
!5713 = !DILocation(line: 117, column: 2, scope: !5702)
!5714 = !DILocation(line: 117, column: 6, scope: !5702)
!5715 = !DILocation(line: 117, column: 15, scope: !5702)
!5716 = !DILocation(line: 118, column: 24, scope: !5702)
!5717 = !DILocation(line: 118, column: 28, scope: !5702)
!5718 = !DILocation(line: 118, column: 2, scope: !5702)
!5719 = !DILocation(line: 118, column: 6, scope: !5702)
!5720 = !DILocation(line: 118, column: 22, scope: !5702)
!5721 = !DILocation(line: 119, column: 23, scope: !5702)
!5722 = !DILocation(line: 119, column: 27, scope: !5702)
!5723 = !DILocation(line: 119, column: 2, scope: !5702)
!5724 = !DILocation(line: 119, column: 6, scope: !5702)
!5725 = !DILocation(line: 119, column: 21, scope: !5702)
!5726 = !DILocation(line: 120, column: 1, scope: !5702)
!5727 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5144, file: !5144, line: 399, type: !5675, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5728 = !{!5729}
!5729 = !DILocalVariable(name: "lock", arg: 1, scope: !5727, file: !5144, line: 399, type: !2029)
!5730 = !DILocation(line: 399, column: 57, scope: !5727)
!5731 = !DILocation(line: 401, column: 2, scope: !5727)
!5732 = !DILocation(line: 402, column: 1, scope: !5727)
!5733 = distinct !DISubprogram(name: "dmaengine_desc_callback_invoke", scope: !5154, file: !5154, line: 132, type: !5734, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5736)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5705, !4958}
!5736 = !{!5737, !5738, !5739}
!5737 = !DILocalVariable(name: "cb", arg: 1, scope: !5733, file: !5154, line: 132, type: !5705)
!5738 = !DILocalVariable(name: "result", arg: 2, scope: !5733, file: !5154, line: 133, type: !4958)
!5739 = !DILocalVariable(name: "dummy_result", scope: !5733, file: !5154, line: 135, type: !4960)
!5740 = !DILocation(line: 132, column: 64, scope: !5733)
!5741 = !DILocation(line: 133, column: 42, scope: !5733)
!5742 = !DILocation(line: 135, column: 2, scope: !5733)
!5743 = !DILocation(line: 135, column: 26, scope: !5733)
!5744 = !DILocation(line: 140, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5733, file: !5154, line: 140, column: 6)
!5746 = !DILocation(line: 140, column: 10, scope: !5745)
!5747 = !DILocation(line: 140, column: 6, scope: !5733)
!5748 = !DILocation(line: 141, column: 8, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !5154, line: 141, column: 7)
!5750 = distinct !DILexicalBlock(scope: !5745, file: !5154, line: 140, column: 27)
!5751 = !DILocation(line: 141, column: 7, scope: !5750)
!5752 = !DILocation(line: 142, column: 11, scope: !5749)
!5753 = !DILocation(line: 142, column: 4, scope: !5749)
!5754 = !DILocation(line: 143, column: 3, scope: !5750)
!5755 = !DILocation(line: 143, column: 7, scope: !5750)
!5756 = !DILocation(line: 143, column: 23, scope: !5750)
!5757 = !DILocation(line: 143, column: 27, scope: !5750)
!5758 = !DILocation(line: 143, column: 43, scope: !5750)
!5759 = !DILocation(line: 144, column: 2, scope: !5750)
!5760 = !DILocation(line: 144, column: 13, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5745, file: !5154, line: 144, column: 13)
!5762 = !DILocation(line: 144, column: 17, scope: !5761)
!5763 = !DILocation(line: 144, column: 13, scope: !5745)
!5764 = !DILocation(line: 145, column: 3, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5761, file: !5154, line: 144, column: 27)
!5766 = !DILocation(line: 145, column: 7, scope: !5765)
!5767 = !DILocation(line: 145, column: 16, scope: !5765)
!5768 = !DILocation(line: 145, column: 20, scope: !5765)
!5769 = !DILocation(line: 146, column: 2, scope: !5765)
!5770 = !DILocation(line: 147, column: 1, scope: !5733)
!5771 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5139, file: !5139, line: 29, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !5142}
!5774 = distinct !DISubprogram(name: "list_empty", scope: !5187, file: !5187, line: 371, type: !5775, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5779)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!138, !5777}
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!5779 = !{!5780}
!5780 = !DILocalVariable(name: "head", arg: 1, scope: !5774, file: !5187, line: 371, type: !5777)
!5781 = !DILocation(line: 371, column: 54, scope: !5774)
!5782 = !DILocation(line: 373, column: 9, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5774, file: !5187, line: 373, column: 9)
!5784 = !DILocation(line: 373, column: 9, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5783, file: !5187, line: 373, column: 9)
!5786 = !DILocation(line: 373, column: 34, scope: !5774)
!5787 = !DILocation(line: 373, column: 31, scope: !5774)
!5788 = !DILocation(line: 373, column: 2, scope: !5774)
!5789 = distinct !DISubprogram(name: "__list_splice", scope: !5187, file: !5187, line: 523, type: !5790, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5792)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !5777, !266, !266}
!5792 = !{!5793, !5794, !5795, !5796, !5797}
!5793 = !DILocalVariable(name: "list", arg: 1, scope: !5789, file: !5187, line: 523, type: !5777)
!5794 = !DILocalVariable(name: "prev", arg: 2, scope: !5789, file: !5187, line: 524, type: !266)
!5795 = !DILocalVariable(name: "next", arg: 3, scope: !5789, file: !5187, line: 525, type: !266)
!5796 = !DILocalVariable(name: "first", scope: !5789, file: !5187, line: 527, type: !266)
!5797 = !DILocalVariable(name: "last", scope: !5789, file: !5187, line: 528, type: !266)
!5798 = !DILocation(line: 523, column: 58, scope: !5789)
!5799 = !DILocation(line: 524, column: 24, scope: !5789)
!5800 = !DILocation(line: 525, column: 24, scope: !5789)
!5801 = !DILocation(line: 527, column: 2, scope: !5789)
!5802 = !DILocation(line: 527, column: 20, scope: !5789)
!5803 = !DILocation(line: 527, column: 28, scope: !5789)
!5804 = !DILocation(line: 527, column: 34, scope: !5789)
!5805 = !DILocation(line: 528, column: 2, scope: !5789)
!5806 = !DILocation(line: 528, column: 20, scope: !5789)
!5807 = !DILocation(line: 528, column: 27, scope: !5789)
!5808 = !DILocation(line: 528, column: 33, scope: !5789)
!5809 = !DILocation(line: 530, column: 16, scope: !5789)
!5810 = !DILocation(line: 530, column: 2, scope: !5789)
!5811 = !DILocation(line: 530, column: 9, scope: !5789)
!5812 = !DILocation(line: 530, column: 14, scope: !5789)
!5813 = !DILocation(line: 531, column: 15, scope: !5789)
!5814 = !DILocation(line: 531, column: 2, scope: !5789)
!5815 = !DILocation(line: 531, column: 8, scope: !5789)
!5816 = !DILocation(line: 531, column: 13, scope: !5789)
!5817 = !DILocation(line: 533, column: 15, scope: !5789)
!5818 = !DILocation(line: 533, column: 2, scope: !5789)
!5819 = !DILocation(line: 533, column: 8, scope: !5789)
!5820 = !DILocation(line: 533, column: 13, scope: !5789)
!5821 = !DILocation(line: 534, column: 15, scope: !5789)
!5822 = !DILocation(line: 534, column: 2, scope: !5789)
!5823 = !DILocation(line: 534, column: 8, scope: !5789)
!5824 = !DILocation(line: 534, column: 13, scope: !5789)
!5825 = !DILocation(line: 535, column: 1, scope: !5789)
!5826 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5139, file: !5139, line: 41, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
