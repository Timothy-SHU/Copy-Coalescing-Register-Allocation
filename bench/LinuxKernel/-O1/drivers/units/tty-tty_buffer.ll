; ModuleID = 'drivers/tty/tty_buffer.c'
source_filename = "drivers/tty/tty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_buffer_lock_exclusive: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_buffer_lock_exclusive ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_buffer_unlock_exclusive: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_buffer_unlock_exclusive ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_buffer_space_avail: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_buffer_space_avail ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_buffer_request_room: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_buffer_request_room ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___tty_insert_flip_string_flags: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __tty_insert_flip_string_flags ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_prepare_flip_string: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_prepare_flip_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_ldisc_receive_buf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_ldisc_receive_buf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_flip_buffer_push: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_flip_buffer_push ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tty_buffer_set_limit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tty_buffer_set_limit ; .previous"

%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19, [16 x i8] }
%struct.anon.19 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, ptr, %struct.anon.14, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.tty_buffer = type { %union.anon.13, i32, i32, i32, i32, i32, i8, [3 x i8], [0 x i8] }
%union.anon.13 = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.14 = type { %union.anon.15, [0 x i8] }
%union.anon.15 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.tty_ldisc = type { ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_client_operations = type { ptr, ptr, ptr }
%struct.thread_info = type { i64, i64, i32, i32 }

@__UNIQUE_ID___addressable_tty_buffer_lock_exclusive287 = internal global ptr @tty_buffer_lock_exclusive, section ".discard.addressable", align 8, !dbg !0
@system_unbound_wq = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_tty_buffer_unlock_exclusive288 = internal global ptr @tty_buffer_unlock_exclusive, section ".discard.addressable", align 8, !dbg !5025
@__UNIQUE_ID___addressable_tty_buffer_space_avail291 = internal global ptr @tty_buffer_space_avail, section ".discard.addressable", align 8, !dbg !5027
@.str = private unnamed_addr constant [34 x i8] c"we still have not freed %d bytes!\00", align 1, !dbg !5029
@.str.1 = private unnamed_addr constant [25 x i8] c"drivers/tty/tty_buffer.c\00", align 1, !dbg !5034
@__UNIQUE_ID___addressable_tty_buffer_request_room298 = internal global ptr @tty_buffer_request_room, section ".discard.addressable", align 8, !dbg !5039
@__UNIQUE_ID___addressable___tty_insert_flip_string_flags301 = internal global ptr @__tty_insert_flip_string_flags, section ".discard.addressable", align 8, !dbg !5041
@__UNIQUE_ID___addressable_tty_prepare_flip_string302 = internal global ptr @tty_prepare_flip_string, section ".discard.addressable", align 8, !dbg !5043
@__UNIQUE_ID___addressable_tty_ldisc_receive_buf305 = internal global ptr @tty_ldisc_receive_buf, section ".discard.addressable", align 8, !dbg !5045
@__UNIQUE_ID___addressable_tty_flip_buffer_push318 = internal global ptr @tty_flip_buffer_push, section ".discard.addressable", align 8, !dbg !5047
@tty_buffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5049
@.str.2 = private unnamed_addr constant [11 x i8] c"&buf->lock\00", align 1, !dbg !5056
@tty_buffer_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5061
@__UNIQUE_ID___addressable_tty_buffer_set_limit319 = internal global ptr @tty_buffer_set_limit, section ".discard.addressable", align 8, !dbg !5063
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5065
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !5070
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_tty_buffer_lock_exclusive287, ptr @__UNIQUE_ID___addressable_tty_buffer_unlock_exclusive288, ptr @__UNIQUE_ID___addressable_tty_buffer_space_avail291, ptr @__UNIQUE_ID___addressable_tty_buffer_request_room298, ptr @__UNIQUE_ID___addressable___tty_insert_flip_string_flags301, ptr @__UNIQUE_ID___addressable_tty_prepare_flip_string302, ptr @__UNIQUE_ID___addressable_tty_ldisc_receive_buf305, ptr @__UNIQUE_ID___addressable_tty_flip_buffer_push318, ptr @__UNIQUE_ID___addressable_tty_buffer_set_limit319, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched181], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_lock_exclusive(ptr noundef %port) #0 align 16 !dbg !5082 {
entry:
  %port.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5085, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5089
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5090
  store ptr %buf1, ptr %buf, align 8, !dbg !5088
  %1 = load ptr, ptr %buf, align 8, !dbg !5091
  %priority = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 3, !dbg !5092
  call void @atomic_inc(ptr noundef %priority) #16, !dbg !5093
  %2 = load ptr, ptr %buf, align 8, !dbg !5094
  %lock = getelementptr inbounds %struct.tty_bufhead, ptr %2, i32 0, i32 2, !dbg !5095
  call void @mutex_lock(ptr noundef %lock) #16, !dbg !5096
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5097
  ret void, !dbg !5097
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #3 align 16 !dbg !5098 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5106
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5107
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5108
  call void @raw_atomic_inc(ptr noundef %1) #16, !dbg !5109
  ret void, !dbg !5110
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5111 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_unlock_exclusive(ptr noundef %port) #0 align 16 !dbg !5115 {
entry:
  %port.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %restart = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5117, metadata !DIExpression()), !dbg !5120
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5118, metadata !DIExpression()), !dbg !5122
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5123
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5124
  store ptr %buf1, ptr %buf, align 8, !dbg !5122
  call void @llvm.lifetime.start.p0(i64 4, ptr %restart) #15, !dbg !5125
  call void @llvm.dbg.declare(metadata ptr %restart, metadata !5119, metadata !DIExpression()), !dbg !5126
  %1 = load ptr, ptr %buf, align 8, !dbg !5127
  %head = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 0, !dbg !5128
  %2 = load ptr, ptr %head, align 8, !dbg !5128
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 3, !dbg !5129
  %3 = load i32, ptr %commit, align 8, !dbg !5129
  %4 = load ptr, ptr %buf, align 8, !dbg !5130
  %head2 = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 0, !dbg !5131
  %5 = load ptr, ptr %head2, align 8, !dbg !5131
  %read = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 5, !dbg !5132
  %6 = load i32, ptr %read, align 8, !dbg !5132
  %cmp = icmp ne i32 %3, %6, !dbg !5133
  %conv = zext i1 %cmp to i32, !dbg !5133
  store i32 %conv, ptr %restart, align 4, !dbg !5134
  %7 = load ptr, ptr %buf, align 8, !dbg !5135
  %priority = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 3, !dbg !5136
  call void @atomic_dec(ptr noundef %priority) #16, !dbg !5137
  %8 = load ptr, ptr %buf, align 8, !dbg !5138
  %lock = getelementptr inbounds %struct.tty_bufhead, ptr %8, i32 0, i32 2, !dbg !5139
  call void @mutex_unlock(ptr noundef %lock) #16, !dbg !5140
  %9 = load i32, ptr %restart, align 4, !dbg !5141
  %tobool = icmp ne i32 %9, 0, !dbg !5141
  br i1 %tobool, label %if.then, label %if.end, !dbg !5143

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5144
  %11 = load ptr, ptr %buf, align 8, !dbg !5145
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %11, i32 0, i32 1, !dbg !5146
  %call = call zeroext i1 @queue_work(ptr noundef %10, ptr noundef %work) #16, !dbg !5147
  br label %if.end, !dbg !5147

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %restart) #15, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5148
  ret void, !dbg !5148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #3 align 16 !dbg !5149 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5153
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5154
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5155
  call void @raw_atomic_dec(ptr noundef %1) #16, !dbg !5156
  ret void, !dbg !5157
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5158 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #5 align 16 !dbg !5159 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5163, metadata !DIExpression()), !dbg !5165
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5164, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5167
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5168
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #16, !dbg !5169
  ret i1 %call, !dbg !5170
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_buffer_space_avail(ptr noundef %port) #0 align 16 !dbg !5171 {
entry:
  %port.addr = alloca ptr, align 8
  %space = alloca i32, align 4
  %__UNIQUE_ID___x289 = alloca i32, align 4
  %__UNIQUE_ID___y290 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5175, metadata !DIExpression()), !dbg !5180
  call void @llvm.lifetime.start.p0(i64 4, ptr %space) #15, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %space, metadata !5176, metadata !DIExpression()), !dbg !5182
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5183
  %buf = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5184
  %mem_limit = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 7, !dbg !5185
  %1 = load i32, ptr %mem_limit, align 4, !dbg !5185
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5186
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 0, !dbg !5187
  %mem_used = getelementptr inbounds %struct.tty_bufhead, ptr %buf1, i32 0, i32 6, !dbg !5188
  %call = call i32 @atomic_read(ptr noundef %mem_used) #16, !dbg !5189
  %sub = sub i32 %1, %call, !dbg !5190
  store i32 %sub, ptr %space, align 4, !dbg !5182
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x289) #15, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x289, metadata !5177, metadata !DIExpression()), !dbg !5191
  %3 = load i32, ptr %space, align 4, !dbg !5191
  store i32 %3, ptr %__UNIQUE_ID___x289, align 4, !dbg !5191
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y290) #15, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y290, metadata !5179, metadata !DIExpression()), !dbg !5191
  store i32 0, ptr %__UNIQUE_ID___y290, align 4, !dbg !5191
  %4 = load i32, ptr %__UNIQUE_ID___x289, align 4, !dbg !5191
  %5 = load i32, ptr %__UNIQUE_ID___y290, align 4, !dbg !5191
  %cmp = icmp sgt i32 %4, %5, !dbg !5191
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5191

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___x289, align 4, !dbg !5191
  br label %cond.end, !dbg !5191

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___y290, align 4, !dbg !5191
  br label %cond.end, !dbg !5191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5191
  store i32 %cond, ptr %tmp, align 4, !dbg !5191
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y290) #15, !dbg !5192
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x289) #15, !dbg !5192
  %8 = load i32, ptr %tmp, align 4, !dbg !5191
  call void @llvm.lifetime.end.p0(i64 4, ptr %space) #15, !dbg !5193
  ret i32 %8, !dbg !5194
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !5195 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5203
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !5204
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5205
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !5206
  ret i32 %call, !dbg !5207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_free_all(ptr noundef %port) #0 align 16 !dbg !5208 {
entry:
  %port.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %next = alloca ptr, align 8
  %llist = alloca ptr, align 8
  %freed = alloca i32, align 4
  %still_used = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5210, metadata !DIExpression()), !dbg !5229
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5230
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5211, metadata !DIExpression()), !dbg !5231
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5232
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5233
  store ptr %buf1, ptr %buf, align 8, !dbg !5231
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5212, metadata !DIExpression()), !dbg !5235
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5213, metadata !DIExpression()), !dbg !5236
  call void @llvm.lifetime.start.p0(i64 8, ptr %llist) #15, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %llist, metadata !5214, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 4, ptr %freed) #15, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %freed, metadata !5215, metadata !DIExpression()), !dbg !5240
  store i32 0, ptr %freed, align 4, !dbg !5240
  call void @llvm.lifetime.start.p0(i64 4, ptr %still_used) #15, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %still_used, metadata !5216, metadata !DIExpression()), !dbg !5242
  br label %while.cond, !dbg !5243

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %buf, align 8, !dbg !5244
  %head = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 0, !dbg !5245
  %2 = load ptr, ptr %head, align 8, !dbg !5245
  store ptr %2, ptr %p, align 8, !dbg !5246
  %cmp = icmp ne ptr %2, null, !dbg !5247
  br i1 %cmp, label %while.body, label %while.end, !dbg !5243

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !dbg !5248
  %4 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 0, !dbg !5250
  %5 = load ptr, ptr %4, align 8, !dbg !5250
  %6 = load ptr, ptr %buf, align 8, !dbg !5251
  %head2 = getelementptr inbounds %struct.tty_bufhead, ptr %6, i32 0, i32 0, !dbg !5252
  store ptr %5, ptr %head2, align 8, !dbg !5253
  %7 = load ptr, ptr %p, align 8, !dbg !5254
  %size = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 2, !dbg !5255
  %8 = load i32, ptr %size, align 4, !dbg !5255
  %9 = load i32, ptr %freed, align 4, !dbg !5256
  %add = add i32 %9, %8, !dbg !5256
  store i32 %add, ptr %freed, align 4, !dbg !5256
  %10 = load ptr, ptr %p, align 8, !dbg !5257
  %size3 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 2, !dbg !5259
  %11 = load i32, ptr %size3, align 4, !dbg !5259
  %cmp4 = icmp ugt i32 %11, 0, !dbg !5260
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5261

if.then:                                          ; preds = %while.body
  %12 = load ptr, ptr %p, align 8, !dbg !5262
  call void @kfree(ptr noundef %12) #16, !dbg !5263
  br label %if.end, !dbg !5263

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !5243, !llvm.loop !5264

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %buf, align 8, !dbg !5268
  %free = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 5, !dbg !5269
  %call = call ptr @llist_del_all(ptr noundef %free) #16, !dbg !5270
  store ptr %call, ptr %llist, align 8, !dbg !5271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5217, metadata !DIExpression()), !dbg !5272
  %14 = load ptr, ptr %llist, align 8, !dbg !5272
  store ptr %14, ptr %__mptr, align 8, !dbg !5272
  %15 = load ptr, ptr %__mptr, align 8, !dbg !5272
  %add.ptr = getelementptr i8, ptr %15, i64 0, !dbg !5272
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5273
  %16 = load ptr, ptr %tmp, align 8, !dbg !5272
  store ptr %16, ptr %p, align 8, !dbg !5273
  br label %for.cond, !dbg !5273

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load ptr, ptr %p, align 8, !dbg !5274
  %18 = ptrtoint ptr %17 to i64, !dbg !5274
  %add5 = add i64 %18, 0, !dbg !5274
  %cmp6 = icmp ne i64 %add5, 0, !dbg !5274
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !5274

land.rhs:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #15, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5220, metadata !DIExpression()), !dbg !5275
  %19 = load ptr, ptr %p, align 8, !dbg !5275
  %20 = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 0, !dbg !5275
  %next8 = getelementptr inbounds %struct.llist_node, ptr %20, i32 0, i32 0, !dbg !5275
  %21 = load ptr, ptr %next8, align 8, !dbg !5275
  store ptr %21, ptr %__mptr7, align 8, !dbg !5275
  %22 = load ptr, ptr %__mptr7, align 8, !dbg !5275
  %add.ptr10 = getelementptr i8, ptr %22, i64 0, !dbg !5275
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #15, !dbg !5274
  %23 = load ptr, ptr %tmp9, align 8, !dbg !5275
  store ptr %23, ptr %next, align 8, !dbg !5274
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !5276
  br i1 %24, label %for.body, label %for.end, !dbg !5273

for.body:                                         ; preds = %land.end
  %25 = load ptr, ptr %p, align 8, !dbg !5277
  call void @kfree(ptr noundef %25) #16, !dbg !5278
  br label %for.inc, !dbg !5278

for.inc:                                          ; preds = %for.body
  %26 = load ptr, ptr %next, align 8, !dbg !5274
  store ptr %26, ptr %p, align 8, !dbg !5274
  br label %for.cond, !dbg !5274, !llvm.loop !5279

for.end:                                          ; preds = %land.end
  %27 = load ptr, ptr %buf, align 8, !dbg !5281
  %sentinel = getelementptr inbounds %struct.tty_bufhead, ptr %27, i32 0, i32 4, !dbg !5282
  call void @tty_buffer_reset(ptr noundef %sentinel, i64 noundef 0) #16, !dbg !5283
  %28 = load ptr, ptr %buf, align 8, !dbg !5284
  %sentinel11 = getelementptr inbounds %struct.tty_bufhead, ptr %28, i32 0, i32 4, !dbg !5285
  %29 = load ptr, ptr %buf, align 8, !dbg !5286
  %head12 = getelementptr inbounds %struct.tty_bufhead, ptr %29, i32 0, i32 0, !dbg !5287
  store ptr %sentinel11, ptr %head12, align 8, !dbg !5288
  %30 = load ptr, ptr %buf, align 8, !dbg !5289
  %sentinel13 = getelementptr inbounds %struct.tty_bufhead, ptr %30, i32 0, i32 4, !dbg !5290
  %31 = load ptr, ptr %buf, align 8, !dbg !5291
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %31, i32 0, i32 8, !dbg !5292
  store ptr %sentinel13, ptr %tail, align 8, !dbg !5293
  %32 = load ptr, ptr %buf, align 8, !dbg !5294
  %mem_used = getelementptr inbounds %struct.tty_bufhead, ptr %32, i32 0, i32 6, !dbg !5295
  %call14 = call i32 @atomic_xchg(ptr noundef %mem_used, i32 noundef 0) #16, !dbg !5296
  store i32 %call14, ptr %still_used, align 4, !dbg !5297
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5223, metadata !DIExpression()), !dbg !5298
  %33 = load i32, ptr %still_used, align 4, !dbg !5298
  %34 = load i32, ptr %freed, align 4, !dbg !5298
  %cmp15 = icmp ne i32 %33, %34, !dbg !5298
  %lnot = xor i1 %cmp15, true, !dbg !5298
  %lnot16 = xor i1 %lnot, true, !dbg !5298
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !5298
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5298
  %35 = load i32, ptr %__ret_warn_on, align 4, !dbg !5299
  %tobool = icmp ne i32 %35, 0, !dbg !5299
  %lnot17 = xor i1 %tobool, true, !dbg !5299
  %lnot19 = xor i1 %lnot17, true, !dbg !5299
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5299
  %conv = sext i32 %lnot.ext20 to i64, !dbg !5299
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5299
  %tobool21 = icmp ne i64 %expval, 0, !dbg !5299
  br i1 %tobool21, label %if.then22, label %if.end41, !dbg !5298

if.then22:                                        ; preds = %for.end
  br label %do.body, !dbg !5299

do.body:                                          ; preds = %if.then22
  br label %do.body23, !dbg !5300

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !5301

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !5301

do.end:                                           ; preds = %do.cond
  %36 = load i32, ptr %still_used, align 4, !dbg !5300
  %37 = load i32, ptr %freed, align 4, !dbg !5300
  %sub = sub i32 %36, %37, !dbg !5300
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %sub) #16, !dbg !5300
  br label %do.body24, !dbg !5300

do.body24:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5225, metadata !DIExpression()), !dbg !5303
  store i32 2313, ptr %__flags, align 4, !dbg !5303
  br label %do.body25, !dbg !5303

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !5304

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5304

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5303

do.body28:                                        ; preds = %do.end27
  %38 = load i32, ptr %__flags, align 4, !dbg !5306
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 144, i32 %38, i64 12) #15, !dbg !5306, !srcloc !5308
  br label %do.cond29, !dbg !5306

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5306

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !5303

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !5309

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5309

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5300
  br label %do.cond34, !dbg !5303

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5303

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !5300

do.body36:                                        ; preds = %do.end35
  br label %do.cond37, !dbg !5311

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5311

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !5300

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !5300

do.end40:                                         ; preds = %do.cond39
  br label %if.end41, !dbg !5300

if.end41:                                         ; preds = %do.end40, %for.end
  %39 = load i32, ptr %__ret_warn_on, align 4, !dbg !5298
  %tobool43 = icmp ne i32 %39, 0, !dbg !5298
  %lnot44 = xor i1 %tobool43, true, !dbg !5298
  %lnot46 = xor i1 %lnot44, true, !dbg !5298
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5298
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5298
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !5298
  store i64 %expval49, ptr %tmp42, align 8, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5313
  %40 = load i64, ptr %tmp42, align 8, !dbg !5298
  call void @llvm.lifetime.end.p0(i64 4, ptr %still_used) #15, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 4, ptr %freed) #15, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 8, ptr %llist) #15, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5314
  ret void, !dbg !5314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5315 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @llist_del_all(ptr noundef %head) #5 align 16 !dbg !5318 {
entry:
  %head.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5323, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #15, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5324, metadata !DIExpression()), !dbg !5330
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5330
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !5330
  store ptr %first, ptr %__ai_ptr, align 8, !dbg !5330
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5331

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !5330
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #16, !dbg !5330
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5327, metadata !DIExpression()), !dbg !5333
  store ptr null, ptr %__ret, align 8, !dbg !5333
  %2 = load ptr, ptr %__ret, align 8, !dbg !5333
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !5333
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #15, !dbg !5333, !srcloc !5334
  store ptr %4, ptr %__ret, align 8, !dbg !5333
  %5 = load ptr, ptr %__ret, align 8, !dbg !5333
  store ptr %5, ptr %tmp1, align 8, !dbg !5333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !5330
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5333
  store ptr %6, ptr %tmp, align 8, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #15, !dbg !5335
  %7 = load ptr, ptr %tmp, align 8, !dbg !5330
  ret ptr %7, !dbg !5336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_buffer_reset(ptr noundef %p, i64 noundef %size) #0 align 16 !dbg !5337 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5341, metadata !DIExpression()), !dbg !5343
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5342, metadata !DIExpression()), !dbg !5344
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5345
  %used = getelementptr inbounds %struct.tty_buffer, ptr %0, i32 0, i32 1, !dbg !5346
  store i32 0, ptr %used, align 8, !dbg !5347
  %1 = load i64, ptr %size.addr, align 8, !dbg !5348
  %conv = trunc i64 %1 to i32, !dbg !5348
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5349
  %size1 = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 2, !dbg !5350
  store i32 %conv, ptr %size1, align 4, !dbg !5351
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5352
  %4 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 0, !dbg !5353
  store ptr null, ptr %4, align 8, !dbg !5354
  %5 = load ptr, ptr %p.addr, align 8, !dbg !5355
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 3, !dbg !5356
  store i32 0, ptr %commit, align 8, !dbg !5357
  %6 = load ptr, ptr %p.addr, align 8, !dbg !5358
  %lookahead = getelementptr inbounds %struct.tty_buffer, ptr %6, i32 0, i32 4, !dbg !5359
  store i32 0, ptr %lookahead, align 4, !dbg !5360
  %7 = load ptr, ptr %p.addr, align 8, !dbg !5361
  %read = getelementptr inbounds %struct.tty_buffer, ptr %7, i32 0, i32 5, !dbg !5362
  store i32 0, ptr %read, align 8, !dbg !5363
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5364
  %flags = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 6, !dbg !5365
  store i8 1, ptr %flags, align 4, !dbg !5366
  ret void, !dbg !5367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_xchg(ptr noundef %v, i32 noundef %new) #3 align 16 !dbg !5368 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5372, metadata !DIExpression()), !dbg !5374
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5373, metadata !DIExpression()), !dbg !5375
  br label %do.body, !dbg !5376

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5377

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5379
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5380
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5381
  %2 = load i32, ptr %new.addr, align 4, !dbg !5382
  %call = call i32 @raw_atomic_xchg(ptr noundef %1, i32 noundef %2) #16, !dbg !5383
  ret i32 %call, !dbg !5384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5385 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_flush(ptr noundef %tty, ptr noundef %ld) #0 align 16 !dbg !5388 {
entry:
  %tty.addr = alloca ptr, align 8
  %ld.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %next = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5392, metadata !DIExpression()), !dbg !5399
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5393, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5394, metadata !DIExpression()), !dbg !5402
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5403
  %port1 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4, !dbg !5404
  %1 = load ptr, ptr %port1, align 8, !dbg !5404
  store ptr %1, ptr %port, align 8, !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5395, metadata !DIExpression()), !dbg !5406
  %2 = load ptr, ptr %port, align 8, !dbg !5407
  %buf2 = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 0, !dbg !5408
  store ptr %buf2, ptr %buf, align 8, !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5396, metadata !DIExpression()), !dbg !5410
  %3 = load ptr, ptr %buf, align 8, !dbg !5411
  %priority = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 3, !dbg !5412
  call void @atomic_inc(ptr noundef %priority) #16, !dbg !5413
  %4 = load ptr, ptr %buf, align 8, !dbg !5414
  %lock = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 2, !dbg !5415
  call void @mutex_lock(ptr noundef %lock) #16, !dbg !5416
  br label %while.cond, !dbg !5417

while.cond:                                       ; preds = %while.body, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #15, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5397, metadata !DIExpression()), !dbg !5418
  br label %do.body, !dbg !5419

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !5421

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %buf, align 8, !dbg !5419
  %head = getelementptr inbounds %struct.tty_bufhead, ptr %5, i32 0, i32 0, !dbg !5419
  %6 = load ptr, ptr %head, align 8, !dbg !5419
  %7 = getelementptr inbounds %struct.tty_buffer, ptr %6, i32 0, i32 0, !dbg !5419
  %8 = load volatile ptr, ptr %7, align 8, !dbg !5419
  store ptr %8, ptr %tmp, align 8, !dbg !5421
  %9 = load ptr, ptr %tmp, align 8, !dbg !5419
  store ptr %9, ptr %___p1, align 8, !dbg !5418
  br label %do.body3, !dbg !5418

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !5423

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5423

do.end5:                                          ; preds = %do.cond4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5418, !srcloc !5425
  %10 = load ptr, ptr %___p1, align 8, !dbg !5418
  store ptr %10, ptr %tmp6, align 8, !dbg !5418
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #15, !dbg !5426
  %11 = load ptr, ptr %tmp6, align 8, !dbg !5418
  store ptr %11, ptr %next, align 8, !dbg !5427
  %cmp = icmp ne ptr %11, null, !dbg !5428
  br i1 %cmp, label %while.body, label %while.end, !dbg !5417

while.body:                                       ; preds = %do.end5
  %12 = load ptr, ptr %port, align 8, !dbg !5429
  %13 = load ptr, ptr %buf, align 8, !dbg !5431
  %head7 = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 0, !dbg !5432
  %14 = load ptr, ptr %head7, align 8, !dbg !5432
  call void @tty_buffer_free(ptr noundef %12, ptr noundef %14) #16, !dbg !5433
  %15 = load ptr, ptr %next, align 8, !dbg !5434
  %16 = load ptr, ptr %buf, align 8, !dbg !5435
  %head8 = getelementptr inbounds %struct.tty_bufhead, ptr %16, i32 0, i32 0, !dbg !5436
  store ptr %15, ptr %head8, align 8, !dbg !5437
  br label %while.cond, !dbg !5417, !llvm.loop !5438

while.end:                                        ; preds = %do.end5
  %17 = load ptr, ptr %buf, align 8, !dbg !5440
  %head9 = getelementptr inbounds %struct.tty_bufhead, ptr %17, i32 0, i32 0, !dbg !5441
  %18 = load ptr, ptr %head9, align 8, !dbg !5441
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 3, !dbg !5442
  %19 = load i32, ptr %commit, align 8, !dbg !5442
  %20 = load ptr, ptr %buf, align 8, !dbg !5443
  %head10 = getelementptr inbounds %struct.tty_bufhead, ptr %20, i32 0, i32 0, !dbg !5444
  %21 = load ptr, ptr %head10, align 8, !dbg !5444
  %read = getelementptr inbounds %struct.tty_buffer, ptr %21, i32 0, i32 5, !dbg !5445
  store i32 %19, ptr %read, align 8, !dbg !5446
  %22 = load ptr, ptr %buf, align 8, !dbg !5447
  %head11 = getelementptr inbounds %struct.tty_bufhead, ptr %22, i32 0, i32 0, !dbg !5448
  %23 = load ptr, ptr %head11, align 8, !dbg !5448
  %read12 = getelementptr inbounds %struct.tty_buffer, ptr %23, i32 0, i32 5, !dbg !5449
  %24 = load i32, ptr %read12, align 8, !dbg !5449
  %25 = load ptr, ptr %buf, align 8, !dbg !5450
  %head13 = getelementptr inbounds %struct.tty_bufhead, ptr %25, i32 0, i32 0, !dbg !5451
  %26 = load ptr, ptr %head13, align 8, !dbg !5451
  %lookahead = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 4, !dbg !5452
  store i32 %24, ptr %lookahead, align 4, !dbg !5453
  %27 = load ptr, ptr %ld.addr, align 8, !dbg !5454
  %tobool = icmp ne ptr %27, null, !dbg !5454
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5456

land.lhs.true:                                    ; preds = %while.end
  %28 = load ptr, ptr %ld.addr, align 8, !dbg !5457
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %28, i32 0, i32 0, !dbg !5458
  %29 = load ptr, ptr %ops, align 8, !dbg !5458
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %29, i32 0, i32 4, !dbg !5459
  %30 = load ptr, ptr %flush_buffer, align 8, !dbg !5459
  %tobool14 = icmp ne ptr %30, null, !dbg !5457
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5460

if.then:                                          ; preds = %land.lhs.true
  %31 = load ptr, ptr %ld.addr, align 8, !dbg !5461
  %ops15 = getelementptr inbounds %struct.tty_ldisc, ptr %31, i32 0, i32 0, !dbg !5462
  %32 = load ptr, ptr %ops15, align 8, !dbg !5462
  %flush_buffer16 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %32, i32 0, i32 4, !dbg !5463
  %33 = load ptr, ptr %flush_buffer16, align 8, !dbg !5463
  %34 = load ptr, ptr %tty.addr, align 8, !dbg !5464
  call void %33(ptr noundef %34) #16, !dbg !5461
  br label %if.end, !dbg !5461

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  %35 = load ptr, ptr %buf, align 8, !dbg !5465
  %priority17 = getelementptr inbounds %struct.tty_bufhead, ptr %35, i32 0, i32 3, !dbg !5466
  call void @atomic_dec(ptr noundef %priority17) #16, !dbg !5467
  %36 = load ptr, ptr %buf, align 8, !dbg !5468
  %lock18 = getelementptr inbounds %struct.tty_bufhead, ptr %36, i32 0, i32 2, !dbg !5469
  call void @mutex_unlock(ptr noundef %lock18) #16, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !5471
  ret void, !dbg !5471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_buffer_free(ptr noundef %port, ptr noundef %b) #0 align 16 !dbg !5472 {
entry:
  %port.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5476, metadata !DIExpression()), !dbg !5484
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5477, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5478, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5488
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5489
  store ptr %buf1, ptr %buf, align 8, !dbg !5487
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5490
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5479, metadata !DIExpression()), !dbg !5490
  %1 = load ptr, ptr %b.addr, align 8, !dbg !5490
  %size = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 2, !dbg !5490
  %2 = load i32, ptr %size, align 4, !dbg !5490
  %3 = load ptr, ptr %buf, align 8, !dbg !5490
  %mem_used = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 6, !dbg !5490
  %call = call i32 @atomic_sub_return(i32 noundef %2, ptr noundef %mem_used) #16, !dbg !5490
  %cmp = icmp slt i32 %call, 0, !dbg !5490
  %lnot = xor i1 %cmp, true, !dbg !5490
  %lnot2 = xor i1 %lnot, true, !dbg !5490
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5490
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5490
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5491
  %tobool = icmp ne i32 %4, 0, !dbg !5491
  %lnot3 = xor i1 %tobool, true, !dbg !5491
  %lnot5 = xor i1 %lnot3, true, !dbg !5491
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5491
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5491
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5491
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5491
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5491

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5481, metadata !DIExpression()), !dbg !5492
  store i32 2305, ptr %__flags, align 4, !dbg !5492
  br label %do.body8, !dbg !5492

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5493

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5493

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5492

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5495
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 203, i32 %5, i64 12) #15, !dbg !5495, !srcloc !5497
  br label %do.cond10, !dbg !5495

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5495

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5492

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5498

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5498

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5491
  br label %do.cond15, !dbg !5492

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5492

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5492

if.end:                                           ; preds = %do.end16, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5490
  %tobool17 = icmp ne i32 %6, 0, !dbg !5490
  %lnot18 = xor i1 %tobool17, true, !dbg !5490
  %lnot20 = xor i1 %lnot18, true, !dbg !5490
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5490
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5490
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5490
  store i64 %expval23, ptr %tmp, align 8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5500
  %7 = load i64, ptr %tmp, align 8, !dbg !5490
  %8 = load ptr, ptr %b.addr, align 8, !dbg !5501
  %size24 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 2, !dbg !5503
  %9 = load i32, ptr %size24, align 4, !dbg !5503
  %cmp25 = icmp ugt i32 %9, 256, !dbg !5504
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !5505

if.then27:                                        ; preds = %if.end
  %10 = load ptr, ptr %b.addr, align 8, !dbg !5506
  call void @kfree(ptr noundef %10) #16, !dbg !5507
  br label %if.end34, !dbg !5507

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %b.addr, align 8, !dbg !5508
  %size28 = getelementptr inbounds %struct.tty_buffer, ptr %11, i32 0, i32 2, !dbg !5510
  %12 = load i32, ptr %size28, align 4, !dbg !5510
  %cmp29 = icmp ugt i32 %12, 0, !dbg !5511
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !5512

if.then31:                                        ; preds = %if.else
  %13 = load ptr, ptr %b.addr, align 8, !dbg !5513
  %14 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 0, !dbg !5514
  %15 = load ptr, ptr %buf, align 8, !dbg !5515
  %free = getelementptr inbounds %struct.tty_bufhead, ptr %15, i32 0, i32 5, !dbg !5516
  %call32 = call zeroext i1 @llist_add(ptr noundef %14, ptr noundef %free) #16, !dbg !5517
  br label %if.end33, !dbg !5517

if.end33:                                         ; preds = %if.then31, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5518
  ret void, !dbg !5518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_buffer_request_room(ptr noundef %port, i64 noundef %size) #0 align 16 !dbg !5519 {
entry:
  %port.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5523, metadata !DIExpression()), !dbg !5525
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5524, metadata !DIExpression()), !dbg !5526
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5527
  %1 = load i64, ptr %size.addr, align 8, !dbg !5528
  %call = call i32 @__tty_buffer_request_room(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #16, !dbg !5529
  ret i32 %call, !dbg !5530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__tty_buffer_request_room(ptr noundef %port, i64 noundef %size, i1 noundef zeroext %flags) #0 align 16 !dbg !5531 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %buf = alloca ptr, align 8
  %n = alloca ptr, align 8
  %b = alloca ptr, align 8
  %left = alloca i64, align 8
  %change = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5535, metadata !DIExpression()), !dbg !5543
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5536, metadata !DIExpression()), !dbg !5544
  %frombool = zext i1 %flags to i8
  store i8 %frombool, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5537, metadata !DIExpression()), !dbg !5545
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5546
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5538, metadata !DIExpression()), !dbg !5547
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5548
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5549
  store ptr %buf1, ptr %buf, align 8, !dbg !5547
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5539, metadata !DIExpression()), !dbg !5551
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5540, metadata !DIExpression()), !dbg !5552
  %1 = load ptr, ptr %buf, align 8, !dbg !5553
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8, !dbg !5554
  %2 = load ptr, ptr %tail, align 8, !dbg !5554
  store ptr %2, ptr %b, align 8, !dbg !5552
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #15, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5541, metadata !DIExpression()), !dbg !5556
  %3 = load ptr, ptr %b, align 8, !dbg !5557
  %flags2 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 6, !dbg !5558
  %4 = load i8, ptr %flags2, align 4, !dbg !5558, !range !5559, !noundef !982
  %tobool = trunc i8 %4 to i1, !dbg !5558
  %5 = zext i1 %tobool to i64, !dbg !5557
  %cond = select i1 %tobool, i32 1, i32 2, !dbg !5557
  %6 = load ptr, ptr %b, align 8, !dbg !5560
  %size3 = getelementptr inbounds %struct.tty_buffer, ptr %6, i32 0, i32 2, !dbg !5561
  %7 = load i32, ptr %size3, align 4, !dbg !5561
  %mul = mul i32 %cond, %7, !dbg !5562
  %8 = load ptr, ptr %b, align 8, !dbg !5563
  %used = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 1, !dbg !5564
  %9 = load i32, ptr %used, align 8, !dbg !5564
  %sub = sub i32 %mul, %9, !dbg !5565
  %conv = zext i32 %sub to i64, !dbg !5566
  store i64 %conv, ptr %left, align 8, !dbg !5556
  call void @llvm.lifetime.start.p0(i64 1, ptr %change) #15, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %change, metadata !5542, metadata !DIExpression()), !dbg !5568
  %10 = load ptr, ptr %b, align 8, !dbg !5569
  %flags4 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 6, !dbg !5570
  %11 = load i8, ptr %flags4, align 4, !dbg !5570, !range !5559, !noundef !982
  %tobool5 = trunc i8 %11 to i1, !dbg !5570
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !5571

land.rhs:                                         ; preds = %entry
  %12 = load i8, ptr %flags.addr, align 1, !dbg !5572, !range !5559, !noundef !982
  %tobool6 = trunc i8 %12 to i1, !dbg !5572
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !5573
  %frombool8 = zext i1 %13 to i8, !dbg !5568
  store i8 %frombool8, ptr %change, align 1, !dbg !5568
  %14 = load i8, ptr %change, align 1, !dbg !5574, !range !5559, !noundef !982
  %tobool9 = trunc i8 %14 to i1, !dbg !5574
  br i1 %tobool9, label %if.end, label %land.lhs.true, !dbg !5576

land.lhs.true:                                    ; preds = %land.end
  %15 = load i64, ptr %left, align 8, !dbg !5577
  %16 = load i64, ptr %size.addr, align 8, !dbg !5578
  %cmp = icmp uge i64 %15, %16, !dbg !5579
  br i1 %cmp, label %if.then, label %if.end, !dbg !5580

if.then:                                          ; preds = %land.lhs.true
  %17 = load i64, ptr %size.addr, align 8, !dbg !5581
  %conv11 = trunc i64 %17 to i32, !dbg !5581
  store i32 %conv11, ptr %retval, align 4, !dbg !5582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5582

if.end:                                           ; preds = %land.lhs.true, %land.end
  %18 = load ptr, ptr %port.addr, align 8, !dbg !5583
  %19 = load i64, ptr %size.addr, align 8, !dbg !5584
  %call = call ptr @tty_buffer_alloc(ptr noundef %18, i64 noundef %19) #16, !dbg !5585
  store ptr %call, ptr %n, align 8, !dbg !5586
  %20 = load ptr, ptr %n, align 8, !dbg !5587
  %cmp12 = icmp eq ptr %20, null, !dbg !5589
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !5590

if.then14:                                        ; preds = %if.end
  %21 = load i8, ptr %change, align 1, !dbg !5591, !range !5559, !noundef !982
  %tobool15 = trunc i8 %21 to i1, !dbg !5591
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !5591

cond.true:                                        ; preds = %if.then14
  br label %cond.end, !dbg !5591

cond.false:                                       ; preds = %if.then14
  %22 = load i64, ptr %left, align 8, !dbg !5592
  br label %cond.end, !dbg !5591

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i64 [ 0, %cond.true ], [ %22, %cond.false ], !dbg !5591
  %conv18 = trunc i64 %cond17 to i32, !dbg !5591
  store i32 %conv18, ptr %retval, align 4, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

if.end19:                                         ; preds = %if.end
  %23 = load i8, ptr %flags.addr, align 1, !dbg !5594, !range !5559, !noundef !982
  %tobool20 = trunc i8 %23 to i1, !dbg !5594
  %24 = load ptr, ptr %n, align 8, !dbg !5595
  %flags21 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 6, !dbg !5596
  %frombool22 = zext i1 %tobool20 to i8, !dbg !5597
  store i8 %frombool22, ptr %flags21, align 4, !dbg !5597
  %25 = load ptr, ptr %n, align 8, !dbg !5598
  %26 = load ptr, ptr %buf, align 8, !dbg !5599
  %tail23 = getelementptr inbounds %struct.tty_bufhead, ptr %26, i32 0, i32 8, !dbg !5600
  store ptr %25, ptr %tail23, align 8, !dbg !5601
  br label %do.body, !dbg !5602

do.body:                                          ; preds = %if.end19
  br label %do.body24, !dbg !5603

do.body24:                                        ; preds = %do.body
  br label %do.cond, !dbg !5605

do.cond:                                          ; preds = %do.body24
  br label %do.end, !dbg !5605

do.end:                                           ; preds = %do.cond
  br label %do.body25, !dbg !5603

do.body25:                                        ; preds = %do.end
  br label %do.body26, !dbg !5607

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !5609

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5609

do.end28:                                         ; preds = %do.cond27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5607, !srcloc !5611
  br label %do.body29, !dbg !5607

do.body29:                                        ; preds = %do.end28
  br label %do.body30, !dbg !5612

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !5614

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5614

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !5612

do.body33:                                        ; preds = %do.end32
  %27 = load ptr, ptr %b, align 8, !dbg !5616
  %used34 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 1, !dbg !5616
  %28 = load i32, ptr %used34, align 8, !dbg !5616
  %29 = load ptr, ptr %b, align 8, !dbg !5616
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 3, !dbg !5616
  store volatile i32 %28, ptr %commit, align 8, !dbg !5616
  br label %do.cond35, !dbg !5616

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !5616

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !5612

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !5612

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !5607

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !5607

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !5603

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5603

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !5618

do.body43:                                        ; preds = %do.end42
  br label %do.body44, !dbg !5619

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !5621

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5621

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !5619

do.body47:                                        ; preds = %do.end46
  br label %do.body48, !dbg !5623

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !5625

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5625

do.end50:                                         ; preds = %do.cond49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5623, !srcloc !5627
  br label %do.body51, !dbg !5623

do.body51:                                        ; preds = %do.end50
  br label %do.body52, !dbg !5628

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !5630

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5630

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !5628

do.body55:                                        ; preds = %do.end54
  %30 = load ptr, ptr %n, align 8, !dbg !5632
  %31 = load ptr, ptr %b, align 8, !dbg !5632
  %32 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 0, !dbg !5632
  store volatile ptr %30, ptr %32, align 8, !dbg !5632
  br label %do.cond56, !dbg !5632

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5632

do.end57:                                         ; preds = %do.cond56
  br label %do.cond58, !dbg !5628

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !5628

do.end59:                                         ; preds = %do.cond58
  br label %do.cond60, !dbg !5623

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !5623

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !5619

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !5619

do.end63:                                         ; preds = %do.cond62
  %33 = load i64, ptr %size.addr, align 8, !dbg !5634
  %conv64 = trunc i64 %33 to i32, !dbg !5634
  store i32 %conv64, ptr %retval, align 4, !dbg !5635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5635

cleanup:                                          ; preds = %do.end63, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %change) #15, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #15, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5636
  %34 = load i32, ptr %retval, align 4, !dbg !5636
  ret i32 %34, !dbg !5636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__tty_insert_flip_string_flags(ptr noundef %port, ptr noundef %chars, ptr noundef %flags, i1 noundef zeroext %mutable_flags, i64 noundef %size) #0 align 16 !dbg !5637 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %mutable_flags.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  %need_flags = alloca i8, align 1
  %copied = alloca i64, align 8
  %goal = alloca i64, align 8
  %__UNIQUE_ID___x299 = alloca i64, align 8
  %__UNIQUE_ID___y300 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %space = alloca i64, align 8
  %tb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp50 = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5641, metadata !DIExpression()), !dbg !5663
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !5642, metadata !DIExpression()), !dbg !5664
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5643, metadata !DIExpression()), !dbg !5665
  %frombool = zext i1 %mutable_flags to i8
  store i8 %frombool, ptr %mutable_flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mutable_flags.addr, metadata !5644, metadata !DIExpression()), !dbg !5666
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5645, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_flags) #15, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %need_flags, metadata !5646, metadata !DIExpression()), !dbg !5669
  %0 = load i8, ptr %mutable_flags.addr, align 1, !dbg !5670, !range !5559, !noundef !982
  %tobool = trunc i8 %0 to i1, !dbg !5670
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5671

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !5672
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !5672
  %2 = load i8, ptr %arrayidx, align 1, !dbg !5672
  %conv = zext i8 %2 to i32, !dbg !5672
  %cmp = icmp ne i32 %conv, 0, !dbg !5673
  br label %lor.end, !dbg !5671

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %frombool2 = zext i1 %3 to i8, !dbg !5669
  store i8 %frombool2, ptr %need_flags, align 1, !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %copied) #15, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !5647, metadata !DIExpression()), !dbg !5675
  store i64 0, ptr %copied, align 8, !dbg !5675
  br label %do.body, !dbg !5676

do.body:                                          ; preds = %do.cond67, %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %goal) #15, !dbg !5677
  call void @llvm.dbg.declare(metadata ptr %goal, metadata !5648, metadata !DIExpression()), !dbg !5678
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x299) #15, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x299, metadata !5650, metadata !DIExpression()), !dbg !5679
  %4 = load i64, ptr %size.addr, align 8, !dbg !5679
  %5 = load i64, ptr %copied, align 8, !dbg !5679
  %sub = sub i64 %4, %5, !dbg !5679
  store i64 %sub, ptr %__UNIQUE_ID___x299, align 8, !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y300) #15, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y300, metadata !5652, metadata !DIExpression()), !dbg !5679
  store i64 1792, ptr %__UNIQUE_ID___y300, align 8, !dbg !5679
  %6 = load i64, ptr %__UNIQUE_ID___x299, align 8, !dbg !5679
  %7 = load i64, ptr %__UNIQUE_ID___y300, align 8, !dbg !5679
  %cmp3 = icmp ult i64 %6, %7, !dbg !5679
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5679

cond.true:                                        ; preds = %do.body
  %8 = load i64, ptr %__UNIQUE_ID___x299, align 8, !dbg !5679
  br label %cond.end, !dbg !5679

cond.false:                                       ; preds = %do.body
  %9 = load i64, ptr %__UNIQUE_ID___y300, align 8, !dbg !5679
  br label %cond.end, !dbg !5679

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5679
  store i64 %cond, ptr %tmp, align 8, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y300) #15, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x299) #15, !dbg !5680
  %10 = load i64, ptr %tmp, align 8, !dbg !5679
  store i64 %10, ptr %goal, align 8, !dbg !5678
  call void @llvm.lifetime.start.p0(i64 8, ptr %space) #15, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %space, metadata !5653, metadata !DIExpression()), !dbg !5682
  %11 = load ptr, ptr %port.addr, align 8, !dbg !5683
  %12 = load i64, ptr %goal, align 8, !dbg !5684
  %13 = load i8, ptr %need_flags, align 1, !dbg !5685, !range !5559, !noundef !982
  %tobool5 = trunc i8 %13 to i1, !dbg !5685
  %call = call i32 @__tty_buffer_request_room(ptr noundef %11, i64 noundef %12, i1 noundef zeroext %tobool5) #16, !dbg !5686
  %conv6 = sext i32 %call to i64, !dbg !5686
  store i64 %conv6, ptr %space, align 8, !dbg !5682
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb) #15, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %tb, metadata !5654, metadata !DIExpression()), !dbg !5688
  %14 = load ptr, ptr %port.addr, align 8, !dbg !5689
  %buf = getelementptr inbounds %struct.tty_port, ptr %14, i32 0, i32 0, !dbg !5690
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 8, !dbg !5691
  %15 = load ptr, ptr %tail, align 8, !dbg !5691
  store ptr %15, ptr %tb, align 8, !dbg !5688
  %16 = load i64, ptr %space, align 8, !dbg !5692
  %cmp7 = icmp eq i64 %16, 0, !dbg !5692
  %lnot = xor i1 %cmp7, true, !dbg !5692
  %lnot9 = xor i1 %lnot, true, !dbg !5692
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5692
  %conv10 = sext i32 %lnot.ext to i64, !dbg !5692
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !5692
  %tobool11 = icmp ne i64 %expval, 0, !dbg !5692
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5694

if.then:                                          ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

if.end:                                           ; preds = %cond.end
  %17 = load ptr, ptr %tb, align 8, !dbg !5696
  %18 = load ptr, ptr %tb, align 8, !dbg !5697
  %used = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 1, !dbg !5698
  %19 = load i32, ptr %used, align 8, !dbg !5698
  %call12 = call ptr @char_buf_ptr(ptr noundef %17, i32 noundef %19) #16, !dbg !5699
  %20 = load ptr, ptr %chars.addr, align 8, !dbg !5700
  %21 = load i64, ptr %space, align 8, !dbg !5701
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call12, ptr align 1 %20, i64 %21, i1 false), !dbg !5702
  %22 = load i8, ptr %mutable_flags.addr, align 1, !dbg !5703, !range !5559, !noundef !982
  %tobool13 = trunc i8 %22 to i1, !dbg !5703
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !5704

if.then14:                                        ; preds = %if.end
  %23 = load ptr, ptr %tb, align 8, !dbg !5705
  %24 = load ptr, ptr %tb, align 8, !dbg !5707
  %used15 = getelementptr inbounds %struct.tty_buffer, ptr %24, i32 0, i32 1, !dbg !5708
  %25 = load i32, ptr %used15, align 8, !dbg !5708
  %call16 = call ptr @flag_buf_ptr(ptr noundef %23, i32 noundef %25) #16, !dbg !5709
  %26 = load ptr, ptr %flags.addr, align 8, !dbg !5710
  %27 = load i64, ptr %space, align 8, !dbg !5711
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call16, ptr align 1 %26, i64 %27, i1 false), !dbg !5712
  %28 = load i64, ptr %space, align 8, !dbg !5713
  %29 = load ptr, ptr %flags.addr, align 8, !dbg !5714
  %add.ptr = getelementptr i8, ptr %29, i64 %28, !dbg !5714
  store ptr %add.ptr, ptr %flags.addr, align 8, !dbg !5714
  br label %if.end59, !dbg !5715

if.else:                                          ; preds = %if.end
  %30 = load ptr, ptr %tb, align 8, !dbg !5716
  %flags17 = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6, !dbg !5717
  %31 = load i8, ptr %flags17, align 4, !dbg !5717, !range !5559, !noundef !982
  %tobool18 = trunc i8 %31 to i1, !dbg !5717
  br i1 %tobool18, label %if.then19, label %if.else24, !dbg !5718

if.then19:                                        ; preds = %if.else
  %32 = load ptr, ptr %tb, align 8, !dbg !5719
  %33 = load ptr, ptr %tb, align 8, !dbg !5721
  %used20 = getelementptr inbounds %struct.tty_buffer, ptr %33, i32 0, i32 1, !dbg !5722
  %34 = load i32, ptr %used20, align 8, !dbg !5722
  %call21 = call ptr @flag_buf_ptr(ptr noundef %32, i32 noundef %34) #16, !dbg !5723
  %35 = load ptr, ptr %flags.addr, align 8, !dbg !5724
  %arrayidx22 = getelementptr i8, ptr %35, i64 0, !dbg !5724
  %36 = load i8, ptr %arrayidx22, align 1, !dbg !5724
  %conv23 = zext i8 %36 to i32, !dbg !5724
  %37 = trunc i32 %conv23 to i8, !dbg !5725
  %38 = load i64, ptr %space, align 8, !dbg !5726
  call void @llvm.memset.p0.i64(ptr align 1 %call21, i8 %37, i64 %38, i1 false), !dbg !5725
  br label %if.end58, !dbg !5727

if.else24:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5728
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5655, metadata !DIExpression()), !dbg !5728
  %39 = load i8, ptr %need_flags, align 1, !dbg !5728, !range !5559, !noundef !982
  %tobool25 = trunc i8 %39 to i1, !dbg !5728
  %lnot26 = xor i1 %tobool25, true, !dbg !5728
  %lnot28 = xor i1 %lnot26, true, !dbg !5728
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5728
  store i32 %lnot.ext29, ptr %__ret_warn_on, align 4, !dbg !5728
  %40 = load i32, ptr %__ret_warn_on, align 4, !dbg !5729
  %tobool30 = icmp ne i32 %40, 0, !dbg !5729
  %lnot31 = xor i1 %tobool30, true, !dbg !5729
  %lnot33 = xor i1 %lnot31, true, !dbg !5729
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5729
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !5729
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !5729
  %tobool37 = icmp ne i64 %expval36, 0, !dbg !5729
  br i1 %tobool37, label %if.then38, label %if.end49, !dbg !5728

if.then38:                                        ; preds = %if.else24
  br label %do.body39, !dbg !5729

do.body39:                                        ; preds = %if.then38
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5660, metadata !DIExpression()), !dbg !5730
  store i32 2307, ptr %__flags, align 4, !dbg !5730
  br label %do.body40, !dbg !5730

do.body40:                                        ; preds = %do.body39
  br label %do.cond, !dbg !5731

do.cond:                                          ; preds = %do.body40
  br label %do.end, !dbg !5731

do.end:                                           ; preds = %do.cond
  br label %do.body41, !dbg !5730

do.body41:                                        ; preds = %do.end
  %41 = load i32, ptr %__flags, align 4, !dbg !5733
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 324, i32 %41, i64 12) #15, !dbg !5733, !srcloc !5735
  br label %do.cond42, !dbg !5733

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5733

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5730

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !5736

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5736

do.end46:                                         ; preds = %do.cond45
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5729
  br label %do.cond47, !dbg !5730

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5730

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !5730

if.end49:                                         ; preds = %do.end48, %if.else24
  %42 = load i32, ptr %__ret_warn_on, align 4, !dbg !5728
  %tobool51 = icmp ne i32 %42, 0, !dbg !5728
  %lnot52 = xor i1 %tobool51, true, !dbg !5728
  %lnot54 = xor i1 %lnot52, true, !dbg !5728
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5728
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5728
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5728
  store i64 %expval57, ptr %tmp50, align 8, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5738
  %43 = load i64, ptr %tmp50, align 8, !dbg !5728
  br label %if.end58

if.end58:                                         ; preds = %if.end49, %if.then19
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then14
  %44 = load i64, ptr %space, align 8, !dbg !5739
  %45 = load ptr, ptr %tb, align 8, !dbg !5740
  %used60 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 1, !dbg !5741
  %46 = load i32, ptr %used60, align 8, !dbg !5742
  %conv61 = zext i32 %46 to i64, !dbg !5742
  %add = add i64 %conv61, %44, !dbg !5742
  %conv62 = trunc i64 %add to i32, !dbg !5742
  store i32 %conv62, ptr %used60, align 8, !dbg !5742
  %47 = load i64, ptr %space, align 8, !dbg !5743
  %48 = load i64, ptr %copied, align 8, !dbg !5744
  %add63 = add i64 %48, %47, !dbg !5744
  store i64 %add63, ptr %copied, align 8, !dbg !5744
  %49 = load i64, ptr %space, align 8, !dbg !5745
  %50 = load ptr, ptr %chars.addr, align 8, !dbg !5746
  %add.ptr64 = getelementptr i8, ptr %50, i64 %49, !dbg !5746
  store ptr %add.ptr64, ptr %chars.addr, align 8, !dbg !5746
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5747
  br label %cleanup, !dbg !5747

cleanup:                                          ; preds = %if.end59, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb) #15, !dbg !5747
  call void @llvm.lifetime.end.p0(i64 8, ptr %space) #15, !dbg !5747
  call void @llvm.lifetime.end.p0(i64 8, ptr %goal) #15, !dbg !5747
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %do.end77
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond67, !dbg !5748

do.cond67:                                        ; preds = %cleanup.cont
  %51 = load i64, ptr %size.addr, align 8, !dbg !5749
  %52 = load i64, ptr %copied, align 8, !dbg !5749
  %cmp68 = icmp ugt i64 %51, %52, !dbg !5749
  %lnot70 = xor i1 %cmp68, true, !dbg !5749
  %lnot72 = xor i1 %lnot70, true, !dbg !5749
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !5749
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !5749
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !5749
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !5748
  br i1 %tobool76, label %do.body, label %do.end77, !dbg !5748, !llvm.loop !5750

do.end77:                                         ; preds = %do.cond67, %cleanup
  %53 = load i64, ptr %copied, align 8, !dbg !5752
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %copied) #15, !dbg !5753
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_flags) #15, !dbg !5753
  ret i64 %53, !dbg !5754

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @char_buf_ptr(ptr noundef %b, i32 noundef %ofs) #5 align 16 !dbg !5755 {
entry:
  %b.addr = alloca ptr, align 8
  %ofs.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5759, metadata !DIExpression()), !dbg !5761
  store i32 %ofs, ptr %ofs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ofs.addr, metadata !5760, metadata !DIExpression()), !dbg !5762
  %0 = load ptr, ptr %b.addr, align 8, !dbg !5763
  %data = getelementptr inbounds %struct.tty_buffer, ptr %0, i32 0, i32 8, !dbg !5764
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data, i64 0, i64 0, !dbg !5763
  %1 = load i32, ptr %ofs.addr, align 4, !dbg !5765
  %idx.ext = zext i32 %1 to i64, !dbg !5766
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !5766
  ret ptr %add.ptr, !dbg !5767
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @flag_buf_ptr(ptr noundef %b, i32 noundef %ofs) #5 align 16 !dbg !5768 {
entry:
  %b.addr = alloca ptr, align 8
  %ofs.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5770, metadata !DIExpression()), !dbg !5772
  store i32 %ofs, ptr %ofs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ofs.addr, metadata !5771, metadata !DIExpression()), !dbg !5773
  %0 = load ptr, ptr %b.addr, align 8, !dbg !5774
  %1 = load i32, ptr %ofs.addr, align 4, !dbg !5775
  %call = call ptr @char_buf_ptr(ptr noundef %0, i32 noundef %1) #16, !dbg !5776
  %2 = load ptr, ptr %b.addr, align 8, !dbg !5777
  %size = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 2, !dbg !5778
  %3 = load i32, ptr %size, align 4, !dbg !5778
  %idx.ext = zext i32 %3 to i64, !dbg !5779
  %add.ptr = getelementptr i8, ptr %call, i64 %idx.ext, !dbg !5779
  ret ptr %add.ptr, !dbg !5780
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @tty_prepare_flip_string(ptr noundef %port, ptr noundef %chars, i64 noundef %size) #0 align 16 !dbg !5781 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %space = alloca i64, align 8
  %tb = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5786, metadata !DIExpression()), !dbg !5793
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !5787, metadata !DIExpression()), !dbg !5794
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5788, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %space) #15, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %space, metadata !5789, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5798
  %1 = load i64, ptr %size.addr, align 8, !dbg !5799
  %call = call i32 @__tty_buffer_request_room(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !5800
  %conv = sext i32 %call to i64, !dbg !5800
  store i64 %conv, ptr %space, align 8, !dbg !5797
  %2 = load i64, ptr %space, align 8, !dbg !5801
  %tobool = icmp ne i64 %2, 0, !dbg !5801
  %lnot = xor i1 %tobool, true, !dbg !5801
  %lnot1 = xor i1 %lnot, true, !dbg !5801
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5801
  %conv2 = sext i32 %lnot.ext to i64, !dbg !5801
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 1), !dbg !5801
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5801
  br i1 %tobool3, label %if.then, label %if.end12, !dbg !5802

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb) #15, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %tb, metadata !5790, metadata !DIExpression()), !dbg !5804
  %3 = load ptr, ptr %port.addr, align 8, !dbg !5805
  %buf = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 0, !dbg !5806
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 8, !dbg !5807
  %4 = load ptr, ptr %tail, align 8, !dbg !5807
  store ptr %4, ptr %tb, align 8, !dbg !5804
  %5 = load ptr, ptr %tb, align 8, !dbg !5808
  %6 = load ptr, ptr %tb, align 8, !dbg !5809
  %used = getelementptr inbounds %struct.tty_buffer, ptr %6, i32 0, i32 1, !dbg !5810
  %7 = load i32, ptr %used, align 8, !dbg !5810
  %call4 = call ptr @char_buf_ptr(ptr noundef %5, i32 noundef %7) #16, !dbg !5811
  %8 = load ptr, ptr %chars.addr, align 8, !dbg !5812
  store ptr %call4, ptr %8, align 8, !dbg !5813
  %9 = load ptr, ptr %tb, align 8, !dbg !5814
  %flags = getelementptr inbounds %struct.tty_buffer, ptr %9, i32 0, i32 6, !dbg !5816
  %10 = load i8, ptr %flags, align 4, !dbg !5816, !range !5559, !noundef !982
  %tobool5 = trunc i8 %10 to i1, !dbg !5816
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5817

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %tb, align 8, !dbg !5818
  %12 = load ptr, ptr %tb, align 8, !dbg !5819
  %used7 = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 1, !dbg !5820
  %13 = load i32, ptr %used7, align 8, !dbg !5820
  %call8 = call ptr @flag_buf_ptr(ptr noundef %11, i32 noundef %13) #16, !dbg !5821
  %14 = load i64, ptr %space, align 8, !dbg !5822
  call void @llvm.memset.p0.i64(ptr align 1 %call8, i8 0, i64 %14, i1 false), !dbg !5823
  br label %if.end, !dbg !5823

if.end:                                           ; preds = %if.then6, %if.then
  %15 = load i64, ptr %space, align 8, !dbg !5824
  %16 = load ptr, ptr %tb, align 8, !dbg !5825
  %used9 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 1, !dbg !5826
  %17 = load i32, ptr %used9, align 8, !dbg !5827
  %conv10 = zext i32 %17 to i64, !dbg !5827
  %add = add i64 %conv10, %15, !dbg !5827
  %conv11 = trunc i64 %add to i32, !dbg !5827
  store i32 %conv11, ptr %used9, align 8, !dbg !5827
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb) #15, !dbg !5828
  br label %if.end12, !dbg !5829

if.end12:                                         ; preds = %if.end, %entry
  %18 = load i64, ptr %space, align 8, !dbg !5830
  call void @llvm.lifetime.end.p0(i64 8, ptr %space) #15, !dbg !5831
  ret i64 %18, !dbg !5832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @tty_ldisc_receive_buf(ptr noundef %ld, ptr noundef %p, ptr noundef %f, i64 noundef %count) #0 align 16 !dbg !5833 {
entry:
  %ld.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %__UNIQUE_ID___x303 = alloca i64, align 8
  %__UNIQUE_ID___y304 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %ld, ptr %ld.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ld.addr, metadata !5837, metadata !DIExpression()), !dbg !5846
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5838, metadata !DIExpression()), !dbg !5847
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5839, metadata !DIExpression()), !dbg !5848
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5840, metadata !DIExpression()), !dbg !5849
  %0 = load ptr, ptr %ld.addr, align 8, !dbg !5850
  %ops = getelementptr inbounds %struct.tty_ldisc, ptr %0, i32 0, i32 0, !dbg !5851
  %1 = load ptr, ptr %ops, align 8, !dbg !5851
  %receive_buf2 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %1, i32 0, i32 15, !dbg !5852
  %2 = load ptr, ptr %receive_buf2, align 8, !dbg !5852
  %tobool = icmp ne ptr %2, null, !dbg !5850
  br i1 %tobool, label %if.then, label %if.else, !dbg !5853

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ld.addr, align 8, !dbg !5854
  %ops1 = getelementptr inbounds %struct.tty_ldisc, ptr %3, i32 0, i32 0, !dbg !5855
  %4 = load ptr, ptr %ops1, align 8, !dbg !5855
  %receive_buf22 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %4, i32 0, i32 15, !dbg !5856
  %5 = load ptr, ptr %receive_buf22, align 8, !dbg !5856
  %6 = load ptr, ptr %ld.addr, align 8, !dbg !5857
  %tty = getelementptr inbounds %struct.tty_ldisc, ptr %6, i32 0, i32 1, !dbg !5858
  %7 = load ptr, ptr %tty, align 8, !dbg !5858
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5859
  %9 = load ptr, ptr %f.addr, align 8, !dbg !5860
  %10 = load i64, ptr %count.addr, align 8, !dbg !5861
  %call = call i64 %5(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) #16, !dbg !5854
  store i64 %call, ptr %count.addr, align 8, !dbg !5862
  br label %if.end12, !dbg !5863

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x303) #15, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x303, metadata !5841, metadata !DIExpression()), !dbg !5864
  %11 = load i64, ptr %count.addr, align 8, !dbg !5864
  store i64 %11, ptr %__UNIQUE_ID___x303, align 8, !dbg !5864
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y304) #15, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y304, metadata !5845, metadata !DIExpression()), !dbg !5864
  %12 = load ptr, ptr %ld.addr, align 8, !dbg !5864
  %tty3 = getelementptr inbounds %struct.tty_ldisc, ptr %12, i32 0, i32 1, !dbg !5864
  %13 = load ptr, ptr %tty3, align 8, !dbg !5864
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 18, !dbg !5864
  %14 = load i32, ptr %receive_room, align 4, !dbg !5864
  %conv = zext i32 %14 to i64, !dbg !5864
  store i64 %conv, ptr %__UNIQUE_ID___y304, align 8, !dbg !5864
  %15 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !5864
  %16 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !5864
  %cmp = icmp ult i64 %15, %16, !dbg !5864
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5864

cond.true:                                        ; preds = %if.else
  %17 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !5864
  br label %cond.end, !dbg !5864

cond.false:                                       ; preds = %if.else
  %18 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !5864
  br label %cond.end, !dbg !5864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !5864
  store i64 %cond, ptr %tmp, align 8, !dbg !5864
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y304) #15, !dbg !5865
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x303) #15, !dbg !5865
  %19 = load i64, ptr %tmp, align 8, !dbg !5864
  store i64 %19, ptr %count.addr, align 8, !dbg !5866
  %20 = load i64, ptr %count.addr, align 8, !dbg !5867
  %tobool5 = icmp ne i64 %20, 0, !dbg !5867
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !5869

land.lhs.true:                                    ; preds = %cond.end
  %21 = load ptr, ptr %ld.addr, align 8, !dbg !5870
  %ops6 = getelementptr inbounds %struct.tty_ldisc, ptr %21, i32 0, i32 0, !dbg !5871
  %22 = load ptr, ptr %ops6, align 8, !dbg !5871
  %receive_buf = getelementptr inbounds %struct.tty_ldisc_ops, ptr %22, i32 0, i32 12, !dbg !5872
  %23 = load ptr, ptr %receive_buf, align 8, !dbg !5872
  %tobool7 = icmp ne ptr %23, null, !dbg !5870
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5873

if.then8:                                         ; preds = %land.lhs.true
  %24 = load ptr, ptr %ld.addr, align 8, !dbg !5874
  %ops9 = getelementptr inbounds %struct.tty_ldisc, ptr %24, i32 0, i32 0, !dbg !5875
  %25 = load ptr, ptr %ops9, align 8, !dbg !5875
  %receive_buf10 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %25, i32 0, i32 12, !dbg !5876
  %26 = load ptr, ptr %receive_buf10, align 8, !dbg !5876
  %27 = load ptr, ptr %ld.addr, align 8, !dbg !5877
  %tty11 = getelementptr inbounds %struct.tty_ldisc, ptr %27, i32 0, i32 1, !dbg !5878
  %28 = load ptr, ptr %tty11, align 8, !dbg !5878
  %29 = load ptr, ptr %p.addr, align 8, !dbg !5879
  %30 = load ptr, ptr %f.addr, align 8, !dbg !5880
  %31 = load i64, ptr %count.addr, align 8, !dbg !5881
  call void %26(ptr noundef %28, ptr noundef %29, ptr noundef %30, i64 noundef %31) #16, !dbg !5874
  br label %if.end, !dbg !5874

if.end:                                           ; preds = %if.then8, %land.lhs.true, %cond.end
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %32 = load i64, ptr %count.addr, align 8, !dbg !5882
  ret i64 %32, !dbg !5883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_flip_buffer_push(ptr noundef %port) #0 align 16 !dbg !5884 {
entry:
  %port.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5886, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5887, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5891
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5892
  store ptr %buf1, ptr %buf, align 8, !dbg !5890
  %1 = load ptr, ptr %buf, align 8, !dbg !5893
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 8, !dbg !5894
  %2 = load ptr, ptr %tail, align 8, !dbg !5894
  call void @tty_flip_buffer_commit(ptr noundef %2) #16, !dbg !5895
  %3 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5896
  %4 = load ptr, ptr %buf, align 8, !dbg !5897
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 1, !dbg !5898
  %call = call zeroext i1 @queue_work(ptr noundef %3, ptr noundef %work) #16, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5900
  ret void, !dbg !5900
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tty_flip_buffer_commit(ptr noundef %tail) #5 align 16 !dbg !5901 {
entry:
  %tail.addr = alloca ptr, align 8
  store ptr %tail, ptr %tail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !5905, metadata !DIExpression()), !dbg !5906
  br label %do.body, !dbg !5907

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5908

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5910

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5908

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5912

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5914

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5912, !srcloc !5916
  br label %do.body5, !dbg !5912

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5917

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5919

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5917

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %tail.addr, align 8, !dbg !5921
  %used = getelementptr inbounds %struct.tty_buffer, ptr %0, i32 0, i32 1, !dbg !5921
  %1 = load i32, ptr %used, align 8, !dbg !5921
  %2 = load ptr, ptr %tail.addr, align 8, !dbg !5921
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 3, !dbg !5921
  store volatile i32 %1, ptr %commit, align 8, !dbg !5921
  br label %do.end9, !dbg !5921

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5917

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !5912

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !5908

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !5923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_insert_flip_string_and_push_buffer(ptr noundef %port, ptr noundef %chars, i64 noundef %size) #0 align 16 !dbg !5924 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5928, metadata !DIExpression()), !dbg !5938
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !5929, metadata !DIExpression()), !dbg !5939
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5930, metadata !DIExpression()), !dbg !5940
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5931, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5943
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !5944
  store ptr %buf1, ptr %buf, align 8, !dbg !5942
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5945
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5932, metadata !DIExpression()), !dbg !5946
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5948

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5933, metadata !DIExpression()), !dbg !5949
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5937, metadata !DIExpression()), !dbg !5949
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5949
  %conv = zext i1 %cmp to i32, !dbg !5949
  store i32 1, ptr %tmp, align 4, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5950
  %1 = load i32, ptr %tmp, align 4, !dbg !5949
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5950
  %lock = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 5, !dbg !5950
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !5950
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5950
  store i64 %call3, ptr %flags, align 8, !dbg !5950
  br label %do.cond, !dbg !5950

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5950

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5948

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5948

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %port.addr, align 8, !dbg !5951
  %4 = load ptr, ptr %chars.addr, align 8, !dbg !5952
  %5 = load i64, ptr %size.addr, align 8, !dbg !5953
  %call6 = call i64 @tty_insert_flip_string(ptr noundef %3, ptr noundef %4, i64 noundef %5) #16, !dbg !5954
  store i64 %call6, ptr %size.addr, align 8, !dbg !5955
  %6 = load i64, ptr %size.addr, align 8, !dbg !5956
  %tobool = icmp ne i64 %6, 0, !dbg !5956
  br i1 %tobool, label %if.then, label %if.end, !dbg !5958

if.then:                                          ; preds = %do.end5
  %7 = load ptr, ptr %buf, align 8, !dbg !5959
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8, !dbg !5960
  %8 = load ptr, ptr %tail, align 8, !dbg !5960
  call void @tty_flip_buffer_commit(ptr noundef %8) #16, !dbg !5961
  br label %if.end, !dbg !5961

if.end:                                           ; preds = %if.then, %do.end5
  %9 = load ptr, ptr %port.addr, align 8, !dbg !5962
  %lock7 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 5, !dbg !5963
  %10 = load i64, ptr %flags, align 8, !dbg !5964
  call void @spin_unlock_irqrestore(ptr noundef %lock7, i64 noundef %10) #16, !dbg !5965
  %11 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5966
  %12 = load ptr, ptr %buf, align 8, !dbg !5967
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %12, i32 0, i32 1, !dbg !5968
  %call8 = call zeroext i1 @queue_work(ptr noundef %11, ptr noundef %work) #16, !dbg !5969
  %13 = load i64, ptr %size.addr, align 8, !dbg !5970
  %conv9 = trunc i64 %13 to i32, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5971
  ret i32 %conv9, !dbg !5972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !5978 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5985
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5986
  ret ptr %1, !dbg !5987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tty_insert_flip_string(ptr noundef %port, ptr noundef %chars, i64 noundef %size) #5 align 16 !dbg !5988 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5993, metadata !DIExpression()), !dbg !5996
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !5994, metadata !DIExpression()), !dbg !5997
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5995, metadata !DIExpression()), !dbg !5998
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5999
  %1 = load ptr, ptr %chars.addr, align 8, !dbg !6000
  %2 = load i64, ptr %size.addr, align 8, !dbg !6001
  %call = call i64 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i64 noundef %2) #16, !dbg !6002
  ret i64 %call, !dbg !6003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !6004 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6008, metadata !DIExpression()), !dbg !6014
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6009, metadata !DIExpression()), !dbg !6015
  br label %do.body, !dbg !6016

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6010, metadata !DIExpression()), !dbg !6017
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6013, metadata !DIExpression()), !dbg !6017
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6017
  %conv = zext i1 %cmp to i32, !dbg !6017
  store i32 1, ptr %tmp, align 4, !dbg !6017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !6018
  %0 = load i32, ptr %tmp, align 4, !dbg !6017
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6018
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6018
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6018
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !6018
  br label %do.end, !dbg !6018

do.end:                                           ; preds = %do.body
  ret void, !dbg !6019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_init(ptr noundef %port) #0 align 16 !dbg !5051 {
entry:
  %port.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5053, metadata !DIExpression()), !dbg !6020
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5054, metadata !DIExpression()), !dbg !6022
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6023
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !6024
  store ptr %buf1, ptr %buf, align 8, !dbg !6022
  br label %do.body, !dbg !6025

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %buf, align 8, !dbg !6026
  %lock = getelementptr inbounds %struct.tty_bufhead, ptr %1, i32 0, i32 2, !dbg !6026
  call void @__mutex_init(ptr noundef %lock, ptr noundef @.str.2, ptr noundef @tty_buffer_init.__key) #16, !dbg !6026
  br label %do.cond, !dbg !6026

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6026

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %buf, align 8, !dbg !6028
  %sentinel = getelementptr inbounds %struct.tty_bufhead, ptr %2, i32 0, i32 4, !dbg !6029
  call void @tty_buffer_reset(ptr noundef %sentinel, i64 noundef 0) #16, !dbg !6030
  %3 = load ptr, ptr %buf, align 8, !dbg !6031
  %sentinel2 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 4, !dbg !6032
  %4 = load ptr, ptr %buf, align 8, !dbg !6033
  %head = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 0, !dbg !6034
  store ptr %sentinel2, ptr %head, align 8, !dbg !6035
  %5 = load ptr, ptr %buf, align 8, !dbg !6036
  %sentinel3 = getelementptr inbounds %struct.tty_bufhead, ptr %5, i32 0, i32 4, !dbg !6037
  %6 = load ptr, ptr %buf, align 8, !dbg !6038
  %tail = getelementptr inbounds %struct.tty_bufhead, ptr %6, i32 0, i32 8, !dbg !6039
  store ptr %sentinel3, ptr %tail, align 8, !dbg !6040
  %7 = load ptr, ptr %buf, align 8, !dbg !6041
  %free = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 5, !dbg !6042
  call void @init_llist_head(ptr noundef %free) #16, !dbg !6043
  %8 = load ptr, ptr %buf, align 8, !dbg !6044
  %mem_used = getelementptr inbounds %struct.tty_bufhead, ptr %8, i32 0, i32 6, !dbg !6045
  call void @atomic_set(ptr noundef %mem_used, i32 noundef 0) #16, !dbg !6046
  %9 = load ptr, ptr %buf, align 8, !dbg !6047
  %priority = getelementptr inbounds %struct.tty_bufhead, ptr %9, i32 0, i32 3, !dbg !6048
  call void @atomic_set(ptr noundef %priority, i32 noundef 0) #16, !dbg !6049
  br label %do.body4, !dbg !6050

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6051

do.body5:                                         ; preds = %do.body4
  %10 = load ptr, ptr %buf, align 8, !dbg !6053
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %10, i32 0, i32 1, !dbg !6053
  call void @__init_work(ptr noundef %work, i32 noundef 0) #16, !dbg !6053
  %11 = load ptr, ptr %buf, align 8, !dbg !6053
  %work6 = getelementptr inbounds %struct.tty_bufhead, ptr %11, i32 0, i32 1, !dbg !6053
  %data = getelementptr inbounds %struct.work_struct, ptr %work6, i32 0, i32 0, !dbg !6053
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6053
  store i64 68719476704, ptr %counter, align 8, !dbg !6053
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6053
  %12 = load ptr, ptr %buf, align 8, !dbg !6053
  %work7 = getelementptr inbounds %struct.tty_bufhead, ptr %12, i32 0, i32 1, !dbg !6053
  %entry8 = getelementptr inbounds %struct.work_struct, ptr %work7, i32 0, i32 1, !dbg !6053
  call void @INIT_LIST_HEAD(ptr noundef %entry8) #16, !dbg !6053
  %13 = load ptr, ptr %buf, align 8, !dbg !6053
  %work9 = getelementptr inbounds %struct.tty_bufhead, ptr %13, i32 0, i32 1, !dbg !6053
  %func = getelementptr inbounds %struct.work_struct, ptr %work9, i32 0, i32 2, !dbg !6053
  store ptr @flush_to_ldisc, ptr %func, align 8, !dbg !6053
  br label %do.cond10, !dbg !6053

do.cond10:                                        ; preds = %do.body5
  br label %do.end11, !dbg !6053

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !6051

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6051

do.end13:                                         ; preds = %do.cond12
  %14 = load ptr, ptr %buf, align 8, !dbg !6055
  %mem_limit = getelementptr inbounds %struct.tty_bufhead, ptr %14, i32 0, i32 7, !dbg !6056
  store i32 655360, ptr %mem_limit, align 4, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6058
  ret void, !dbg !6058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_llist_head(ptr noundef %list) #5 align 16 !dbg !6063 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6067, metadata !DIExpression()), !dbg !6068
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6069
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !6070
  store ptr null, ptr %first, align 8, !dbg !6071
  ret void, !dbg !6072
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6073 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6078, metadata !DIExpression()), !dbg !6080
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6081
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6082
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6083
  %2 = load i32, ptr %i.addr, align 4, !dbg !6084
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #16, !dbg !6085
  ret void, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #5 align 16 !dbg !6087 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6091, metadata !DIExpression()), !dbg !6093
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6092, metadata !DIExpression()), !dbg !6094
  ret void, !dbg !6095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !6096 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  br label %do.body, !dbg !6103

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6104

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6106

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6104

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6108
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6108
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6108
  store volatile ptr %0, ptr %next, align 8, !dbg !6108
  br label %do.end3, !dbg !6108

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6104

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6110

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6111

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6113

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6111

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6115
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6115
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6115
  store volatile ptr %2, ptr %prev, align 8, !dbg !6115
  br label %do.end9, !dbg !6115

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6111

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_to_ldisc(ptr noundef %work) #0 align 16 !dbg !6118 {
entry:
  %work.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  %count = alloca i64, align 8
  %rcvd = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %___p18 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6120, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %port, metadata !6121, metadata !DIExpression()), !dbg !6136
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6137
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6122, metadata !DIExpression()), !dbg !6137
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6137
  store ptr %0, ptr %__mptr, align 8, !dbg !6137
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6137
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !6137
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6138
  %2 = load ptr, ptr %tmp, align 8, !dbg !6137
  store ptr %2, ptr %port, align 8, !dbg !6136
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6124, metadata !DIExpression()), !dbg !6140
  %3 = load ptr, ptr %port, align 8, !dbg !6141
  %buf1 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 0, !dbg !6142
  store ptr %buf1, ptr %buf, align 8, !dbg !6140
  %4 = load ptr, ptr %buf, align 8, !dbg !6143
  %lock = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 2, !dbg !6144
  call void @mutex_lock(ptr noundef %lock) #16, !dbg !6145
  br label %while.cond, !dbg !6146

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  br label %while.body, !dbg !6146

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #15, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6125, metadata !DIExpression()), !dbg !6148
  %5 = load ptr, ptr %buf, align 8, !dbg !6149
  %head2 = getelementptr inbounds %struct.tty_bufhead, ptr %5, i32 0, i32 0, !dbg !6150
  %6 = load ptr, ptr %head2, align 8, !dbg !6150
  store ptr %6, ptr %head, align 8, !dbg !6148
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !6151
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6127, metadata !DIExpression()), !dbg !6152
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #15, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6128, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcvd) #15, !dbg !6153
  call void @llvm.dbg.declare(metadata ptr %rcvd, metadata !6129, metadata !DIExpression()), !dbg !6155
  %7 = load ptr, ptr %buf, align 8, !dbg !6156
  %priority = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 3, !dbg !6158
  %call = call i32 @atomic_read(ptr noundef %priority) #16, !dbg !6159
  %tobool = icmp ne i32 %call, 0, !dbg !6159
  br i1 %tobool, label %if.then, label %if.end, !dbg !6160

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6161

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #15, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6130, metadata !DIExpression()), !dbg !6162
  br label %do.body, !dbg !6163

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6165

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6165

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %head, align 8, !dbg !6163
  %9 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 0, !dbg !6163
  %10 = load volatile ptr, ptr %9, align 8, !dbg !6163
  store ptr %10, ptr %tmp3, align 8, !dbg !6165
  %11 = load ptr, ptr %tmp3, align 8, !dbg !6163
  store ptr %11, ptr %___p1, align 8, !dbg !6162
  br label %do.body4, !dbg !6162

do.body4:                                         ; preds = %do.end
  br label %do.cond5, !dbg !6167

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6167

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6162, !srcloc !6169
  %12 = load ptr, ptr %___p1, align 8, !dbg !6162
  store ptr %12, ptr %tmp7, align 8, !dbg !6162
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #15, !dbg !6170
  %13 = load ptr, ptr %tmp7, align 8, !dbg !6162
  store ptr %13, ptr %next, align 8, !dbg !6171
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p18) #15, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %___p18, metadata !6132, metadata !DIExpression()), !dbg !6172
  br label %do.body9, !dbg !6173

do.body9:                                         ; preds = %do.end6
  br label %do.cond10, !dbg !6175

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6175

do.end11:                                         ; preds = %do.cond10
  %14 = load ptr, ptr %head, align 8, !dbg !6173
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 3, !dbg !6173
  %15 = load volatile i32, ptr %commit, align 8, !dbg !6173
  store i32 %15, ptr %tmp12, align 4, !dbg !6175
  %16 = load i32, ptr %tmp12, align 4, !dbg !6173
  store i32 %16, ptr %___p18, align 4, !dbg !6172
  br label %do.body13, !dbg !6172

do.body13:                                        ; preds = %do.end11
  br label %do.cond14, !dbg !6177

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6177

do.end15:                                         ; preds = %do.cond14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6172, !srcloc !6179
  %17 = load i32, ptr %___p18, align 4, !dbg !6172
  store i32 %17, ptr %tmp16, align 4, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p18) #15, !dbg !6180
  %18 = load i32, ptr %tmp16, align 4, !dbg !6172
  %19 = load ptr, ptr %head, align 8, !dbg !6181
  %read = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 5, !dbg !6182
  %20 = load i32, ptr %read, align 8, !dbg !6182
  %sub = sub i32 %18, %20, !dbg !6183
  %conv = zext i32 %sub to i64, !dbg !6180
  store i64 %conv, ptr %count, align 8, !dbg !6184
  %21 = load i64, ptr %count, align 8, !dbg !6185
  %tobool17 = icmp ne i64 %21, 0, !dbg !6185
  br i1 %tobool17, label %if.end23, label %if.then18, !dbg !6187

if.then18:                                        ; preds = %do.end15
  %22 = load ptr, ptr %next, align 8, !dbg !6188
  %cmp = icmp eq ptr %22, null, !dbg !6191
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !6192

if.then20:                                        ; preds = %if.then18
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6193

if.end21:                                         ; preds = %if.then18
  %23 = load ptr, ptr %next, align 8, !dbg !6194
  %24 = load ptr, ptr %buf, align 8, !dbg !6195
  %head22 = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 0, !dbg !6196
  store ptr %23, ptr %head22, align 8, !dbg !6197
  %25 = load ptr, ptr %port, align 8, !dbg !6198
  %26 = load ptr, ptr %head, align 8, !dbg !6199
  call void @tty_buffer_free(ptr noundef %25, ptr noundef %26) #16, !dbg !6200
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6201, !llvm.loop !6202

if.end23:                                         ; preds = %do.end15
  %27 = load ptr, ptr %port, align 8, !dbg !6204
  %28 = load ptr, ptr %head, align 8, !dbg !6205
  %29 = load i64, ptr %count, align 8, !dbg !6206
  %call24 = call i64 @receive_buf(ptr noundef %27, ptr noundef %28, i64 noundef %29) #16, !dbg !6207
  store i64 %call24, ptr %rcvd, align 8, !dbg !6208
  %30 = load i64, ptr %rcvd, align 8, !dbg !6209
  %31 = load ptr, ptr %head, align 8, !dbg !6210
  %read25 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 5, !dbg !6211
  %32 = load i32, ptr %read25, align 8, !dbg !6212
  %conv26 = zext i32 %32 to i64, !dbg !6212
  %add = add i64 %conv26, %30, !dbg !6212
  %conv27 = trunc i64 %add to i32, !dbg !6212
  store i32 %conv27, ptr %read25, align 8, !dbg !6212
  %33 = load i64, ptr %rcvd, align 8, !dbg !6213
  %34 = load i64, ptr %count, align 8, !dbg !6215
  %cmp28 = icmp ult i64 %33, %34, !dbg !6216
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !6217

if.then30:                                        ; preds = %if.end23
  %35 = load ptr, ptr %port, align 8, !dbg !6218
  %36 = load ptr, ptr %head, align 8, !dbg !6219
  call void @lookahead_bufs(ptr noundef %35, ptr noundef %36) #16, !dbg !6220
  br label %if.end31, !dbg !6220

if.end31:                                         ; preds = %if.then30, %if.end23
  %37 = load i64, ptr %rcvd, align 8, !dbg !6221
  %tobool32 = icmp ne i64 %37, 0, !dbg !6221
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !6223

if.then33:                                        ; preds = %if.end31
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6224

if.end34:                                         ; preds = %if.end31
  %call35 = call zeroext i1 @need_resched() #16, !dbg !6225
  br i1 %call35, label %if.then36, label %if.end39, !dbg !6227

if.then36:                                        ; preds = %if.end34
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 503, i32 noundef 0) #16, !dbg !6228
  %call38 = call i32 @_cond_resched() #16, !dbg !6228
  store i32 %call38, ptr %tmp37, align 4, !dbg !6228
  %38 = load i32, ptr %tmp37, align 4, !dbg !6228
  br label %if.end39, !dbg !6230

if.end39:                                         ; preds = %if.then36, %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6203
  br label %cleanup, !dbg !6203

cleanup:                                          ; preds = %if.end39, %if.then33, %if.end21, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcvd) #15, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #15, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #15, !dbg !6203
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6146, !llvm.loop !6202

while.end:                                        ; preds = %cleanup
  %39 = load ptr, ptr %buf, align 8, !dbg !6231
  %lock43 = getelementptr inbounds %struct.tty_bufhead, ptr %39, i32 0, i32 2, !dbg !6232
  call void @mutex_unlock(ptr noundef %lock43) #16, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6234
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !6234
  ret void, !dbg !6234

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tty_buffer_set_limit(ptr noundef %port, i32 noundef %limit) #0 align 16 !dbg !6235 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6239, metadata !DIExpression()), !dbg !6241
  store i32 %limit, ptr %limit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !6240, metadata !DIExpression()), !dbg !6242
  %0 = load i32, ptr %limit.addr, align 4, !dbg !6243
  %cmp = icmp slt i32 %0, 256, !dbg !6245
  br i1 %cmp, label %if.then, label %if.end, !dbg !6246

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %limit.addr, align 4, !dbg !6248
  %2 = load ptr, ptr %port.addr, align 8, !dbg !6249
  %buf = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 0, !dbg !6250
  %mem_limit = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 7, !dbg !6251
  store i32 %1, ptr %mem_limit, align 4, !dbg !6252
  store i32 0, ptr %retval, align 4, !dbg !6253
  br label %return, !dbg !6253

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6254
  ret i32 %3, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_set_lock_subclass(ptr noundef %port) #0 align 16 !dbg !6255 {
entry:
  %port.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6257, metadata !DIExpression()), !dbg !6258
  br label %do.body, !dbg !6259

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6260

do.end:                                           ; preds = %do.body
  ret void, !dbg !6262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tty_buffer_restart_work(ptr noundef %port) #0 align 16 !dbg !6263 {
entry:
  %port.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6265, metadata !DIExpression()), !dbg !6266
  %0 = load ptr, ptr @system_unbound_wq, align 8, !dbg !6267
  %1 = load ptr, ptr %port.addr, align 8, !dbg !6268
  %buf = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 0, !dbg !6269
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 1, !dbg !6270
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %work) #16, !dbg !6271
  ret i1 %call, !dbg !6272
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tty_buffer_cancel_work(ptr noundef %port) #0 align 16 !dbg !6273 {
entry:
  %port.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6275, metadata !DIExpression()), !dbg !6276
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6277
  %buf = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !6278
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 1, !dbg !6279
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %work) #16, !dbg !6280
  ret i1 %call, !dbg !6281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6282 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tty_buffer_flush_work(ptr noundef %port) #0 align 16 !dbg !6285 {
entry:
  %port.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6289
  %buf = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 0, !dbg !6290
  %work = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 1, !dbg !6291
  %call = call zeroext i1 @flush_work(ptr noundef %work) #16, !dbg !6292
  ret void, !dbg !6293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6294 dso_local zeroext i1 @flush_work(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6295 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6303, metadata !DIExpression()), !dbg !6305
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6304, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6307
  %1 = load i64, ptr %size.addr, align 8, !dbg !6308
  %conv = trunc i64 %1 to i32, !dbg !6308
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6309
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6310
  %3 = load i64, ptr %size.addr, align 8, !dbg !6310
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6310
  ret void, !dbg !6311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #3 align 16 !dbg !6312 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6317
  call void @arch_atomic_inc(ptr noundef %0) #16, !dbg !6318
  ret void, !dbg !6319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6320 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6325, metadata !DIExpression()), !dbg !6327
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6326, metadata !DIExpression()), !dbg !6328
  ret i1 true, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6330 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6335, metadata !DIExpression()), !dbg !6338
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6336, metadata !DIExpression()), !dbg !6339
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6337, metadata !DIExpression()), !dbg !6340
  ret void, !dbg !6341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #3 align 16 !dbg !6342 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6347
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6348
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6349, !srcloc !6350
  ret void, !dbg !6351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #3 align 16 !dbg !6352 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6356
  call void @arch_atomic_dec(ptr noundef %0) #16, !dbg !6357
  ret void, !dbg !6358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #3 align 16 !dbg !6359 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6361, metadata !DIExpression()), !dbg !6362
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6363
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6364
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6365, !srcloc !6366
  ret void, !dbg !6367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6368 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6371 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6374, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6377
  %1 = load i64, ptr %size.addr, align 8, !dbg !6378
  %conv = trunc i64 %1 to i32, !dbg !6378
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !6379
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6380
  %3 = load i64, ptr %size.addr, align 8, !dbg !6380
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !6380
  ret void, !dbg !6381
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !6382 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6386
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !6387
  ret i32 %call, !dbg !6388
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6389 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6392, metadata !DIExpression()), !dbg !6394
  ret i1 true, !dbg !6395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !6396 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6400
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6400
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6400
  ret i32 %1, !dbg !6401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_xchg(ptr noundef %v, i32 noundef %new) #3 align 16 !dbg !6402 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6404, metadata !DIExpression()), !dbg !6406
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6405, metadata !DIExpression()), !dbg !6407
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6408
  %1 = load i32, ptr %new.addr, align 4, !dbg !6409
  %call = call i32 @arch_atomic_xchg(ptr noundef %0, i32 noundef %1) #16, !dbg !6410
  ret i32 %call, !dbg !6411
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_xchg(ptr noundef %v, i32 noundef %new) #3 align 16 !dbg !6412 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6414, metadata !DIExpression()), !dbg !6418
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6415, metadata !DIExpression()), !dbg !6419
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6416, metadata !DIExpression()), !dbg !6420
  %0 = load i32, ptr %new.addr, align 4, !dbg !6420
  store i32 %0, ptr %__ret, align 4, !dbg !6420
  %1 = load i32, ptr %__ret, align 4, !dbg !6420
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6420
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6420
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !6420, !srcloc !6421
  store i32 %3, ptr %__ret, align 4, !dbg !6420
  %4 = load i32, ptr %__ret, align 4, !dbg !6420
  store i32 %4, ptr %tmp, align 4, !dbg !6420
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !6422
  %5 = load i32, ptr %tmp, align 4, !dbg !6420
  ret i32 %5, !dbg !6423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_sub_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6424 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6428, metadata !DIExpression()), !dbg !6430
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6429, metadata !DIExpression()), !dbg !6431
  br label %do.body, !dbg !6432

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6433

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6435
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6436
  %1 = load i32, ptr %i.addr, align 4, !dbg !6437
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6438
  %call = call i32 @raw_atomic_sub_return(i32 noundef %1, ptr noundef %2) #16, !dbg !6439
  ret i32 %call, !dbg !6440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @llist_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6441 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6445, metadata !DIExpression()), !dbg !6447
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6446, metadata !DIExpression()), !dbg !6448
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6449
  %1 = load ptr, ptr %new.addr, align 8, !dbg !6450
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6451
  %call = call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !6452
  ret i1 %call, !dbg !6453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6454 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6456, metadata !DIExpression()), !dbg !6458
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6457, metadata !DIExpression()), !dbg !6459
  %0 = load i32, ptr %i.addr, align 4, !dbg !6460
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6461
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #16, !dbg !6462
  ret i32 %call, !dbg !6463
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6464 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6466, metadata !DIExpression()), !dbg !6468
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6467, metadata !DIExpression()), !dbg !6469
  %0 = load i32, ptr %i.addr, align 4, !dbg !6470
  %sub = sub i32 0, %0, !dbg !6471
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6472
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #16, !dbg !6473
  ret i32 %call, !dbg !6474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6475 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6477, metadata !DIExpression()), !dbg !6481
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6478, metadata !DIExpression()), !dbg !6482
  %0 = load i32, ptr %i.addr, align 4, !dbg !6483
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6479, metadata !DIExpression()), !dbg !6484
  %1 = load i32, ptr %i.addr, align 4, !dbg !6484
  store i32 %1, ptr %__ret, align 4, !dbg !6484
  %2 = load i32, ptr %__ret, align 4, !dbg !6484
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6484
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6484
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #15, !dbg !6484, !srcloc !6485
  store i32 %4, ptr %__ret, align 4, !dbg !6484
  %5 = load i32, ptr %__ret, align 4, !dbg !6484
  store i32 %5, ptr %tmp, align 4, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !6486
  %6 = load i32, ptr %tmp, align 4, !dbg !6484
  %add = add i32 %0, %6, !dbg !6487
  ret i32 %add, !dbg !6488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6489 dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tty_buffer_alloc(ptr noundef %port, i64 noundef %size) #0 align 16 !dbg !6492 {
entry:
  %retval = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %free = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6496, metadata !DIExpression()), !dbg !6507
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6497, metadata !DIExpression()), !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %free) #15, !dbg !6509
  call void @llvm.dbg.declare(metadata ptr %free, metadata !6498, metadata !DIExpression()), !dbg !6510
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6499, metadata !DIExpression()), !dbg !6512
  %0 = load i64, ptr %size.addr, align 8, !dbg !6513
  %add = add i64 %0, 255, !dbg !6513
  %and = and i64 %add, -256, !dbg !6513
  store i64 %and, ptr %size.addr, align 8, !dbg !6514
  %1 = load i64, ptr %size.addr, align 8, !dbg !6515
  %cmp = icmp ule i64 %1, 256, !dbg !6516
  br i1 %cmp, label %if.then, label %if.end3, !dbg !6517

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %port.addr, align 8, !dbg !6518
  %buf = getelementptr inbounds %struct.tty_port, ptr %2, i32 0, i32 0, !dbg !6519
  %free1 = getelementptr inbounds %struct.tty_bufhead, ptr %buf, i32 0, i32 5, !dbg !6520
  %call = call ptr @llist_del_first(ptr noundef %free1) #16, !dbg !6521
  store ptr %call, ptr %free, align 8, !dbg !6522
  %3 = load ptr, ptr %free, align 8, !dbg !6523
  %tobool = icmp ne ptr %3, null, !dbg !6523
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6524

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6500, metadata !DIExpression()), !dbg !6525
  %4 = load ptr, ptr %free, align 8, !dbg !6525
  store ptr %4, ptr %__mptr, align 8, !dbg !6525
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6525
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !6525
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6526
  %6 = load ptr, ptr %tmp, align 8, !dbg !6525
  store ptr %6, ptr %p, align 8, !dbg !6527
  br label %found, !dbg !6528

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !6529

if.end3:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %port.addr, align 8, !dbg !6530
  %buf4 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 0, !dbg !6532
  %mem_used = getelementptr inbounds %struct.tty_bufhead, ptr %buf4, i32 0, i32 6, !dbg !6533
  %call5 = call i32 @atomic_read(ptr noundef %mem_used) #16, !dbg !6534
  %8 = load ptr, ptr %port.addr, align 8, !dbg !6535
  %buf6 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 0, !dbg !6536
  %mem_limit = getelementptr inbounds %struct.tty_bufhead, ptr %buf6, i32 0, i32 7, !dbg !6537
  %9 = load i32, ptr %mem_limit, align 4, !dbg !6537
  %cmp7 = icmp sgt i32 %call5, %9, !dbg !6538
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6539

if.then8:                                         ; preds = %if.end3
  store ptr null, ptr %retval, align 8, !dbg !6540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6540

if.end9:                                          ; preds = %if.end3
  %10 = load i64, ptr %size.addr, align 8, !dbg !6541
  %mul = mul i64 2, %10, !dbg !6541
  %call10 = call i64 @size_mul(i64 noundef %mul, i64 noundef 1) #16, !dbg !6541
  %call11 = call i64 @size_add(i64 noundef 32, i64 noundef %call10) #16, !dbg !6541
  %call12 = call noalias ptr @kmalloc(i64 noundef %call11, i32 noundef 10272) #17, !dbg !6542
  store ptr %call12, ptr %p, align 8, !dbg !6543
  %11 = load ptr, ptr %p, align 8, !dbg !6544
  %cmp13 = icmp eq ptr %11, null, !dbg !6546
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6547

if.then14:                                        ; preds = %if.end9
  store ptr null, ptr %retval, align 8, !dbg !6548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6548

if.end15:                                         ; preds = %if.end9
  br label %found, !dbg !6549

found:                                            ; preds = %if.end15, %if.then2
  call void @llvm.dbg.label(metadata !6506), !dbg !6550
  %12 = load ptr, ptr %p, align 8, !dbg !6551
  %13 = load i64, ptr %size.addr, align 8, !dbg !6552
  call void @tty_buffer_reset(ptr noundef %12, i64 noundef %13) #16, !dbg !6553
  %14 = load i64, ptr %size.addr, align 8, !dbg !6554
  %conv = trunc i64 %14 to i32, !dbg !6554
  %15 = load ptr, ptr %port.addr, align 8, !dbg !6555
  %buf16 = getelementptr inbounds %struct.tty_port, ptr %15, i32 0, i32 0, !dbg !6556
  %mem_used17 = getelementptr inbounds %struct.tty_bufhead, ptr %buf16, i32 0, i32 6, !dbg !6557
  call void @atomic_add(i32 noundef %conv, ptr noundef %mem_used17) #16, !dbg !6558
  %16 = load ptr, ptr %p, align 8, !dbg !6559
  store ptr %16, ptr %retval, align 8, !dbg !6560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6560

cleanup:                                          ; preds = %found, %if.then14, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6561
  call void @llvm.lifetime.end.p0(i64 8, ptr %free) #15, !dbg !6561
  %17 = load ptr, ptr %retval, align 8, !dbg !6561
  ret ptr %17, !dbg !6561
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6562 dso_local ptr @llist_del_first(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6563 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6567, metadata !DIExpression()), !dbg !6572
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6568, metadata !DIExpression()), !dbg !6573
  %0 = load i64, ptr %size.addr, align 8, !dbg !6574
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6575
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6576

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6577
  %tobool = icmp ne i64 %2, 0, !dbg !6577
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6578

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6579
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6569, metadata !DIExpression()), !dbg !6580
  %3 = load i64, ptr %size.addr, align 8, !dbg !6581
  %cmp = icmp ugt i64 %3, 8192, !dbg !6583
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6584

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6585
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6586
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6587
  store ptr %call, ptr %retval, align 8, !dbg !6588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6588

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6589
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6589
  store i32 %call2, ptr %index, align 4, !dbg !6590
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6591
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6592
  %9 = ptrtoint ptr %8 to i64, !dbg !6592
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6593
  %idxprom = zext i32 %call3 to i64, !dbg !6594
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6594
  %10 = load i32, ptr %index, align 4, !dbg !6595
  %idxprom4 = zext i32 %10 to i64, !dbg !6594
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6594
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6594
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6596
  %13 = load i64, ptr %size.addr, align 8, !dbg !6597
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6598
  store ptr %call6, ptr %retval, align 8, !dbg !6599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6599

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6600
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6601
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6602
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6603
  store ptr %call8, ptr %retval, align 8, !dbg !6604
  br label %return, !dbg !6604

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6605
  ret ptr %16, !dbg !6605
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #5 align 16 !dbg !6606 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !6611, metadata !DIExpression()), !dbg !6614
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !6612, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6613, metadata !DIExpression()), !dbg !6617
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !6618
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !6618
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !6618
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6618
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6618
  store i64 %4, ptr %bytes, align 8, !dbg !6618
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6618
  br i1 %call, label %if.then, label %if.end, !dbg !6620

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6622
  store i64 %5, ptr %retval, align 8, !dbg !6623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6623

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6624
  %6 = load i64, ptr %retval, align 8, !dbg !6624
  ret i64 %6, !dbg !6624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #5 align 16 !dbg !6625 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !6627, metadata !DIExpression()), !dbg !6630
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !6628, metadata !DIExpression()), !dbg !6631
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6632
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6629, metadata !DIExpression()), !dbg !6633
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !6634
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !6634
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6634
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6634
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6634
  store i64 %4, ptr %bytes, align 8, !dbg !6634
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6634
  br i1 %call, label %if.then, label %if.end, !dbg !6636

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6637

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6638
  store i64 %5, ptr %retval, align 8, !dbg !6639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6639

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6640
  %6 = load i64, ptr %retval, align 8, !dbg !6640
  ret i64 %6, !dbg !6640
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6641 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6649
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6650
  %1 = load i32, ptr %i.addr, align 4, !dbg !6651
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6652
  call void @raw_atomic_add(i32 noundef %1, ptr noundef %2) #16, !dbg !6653
  ret void, !dbg !6654
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6655 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6656 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  %0 = load i64, ptr %size.addr, align 8, !dbg !6664
  %tobool = icmp ne i64 %0, 0, !dbg !6664
  br i1 %tobool, label %if.end, label %if.then, !dbg !6666

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6667
  br label %return, !dbg !6667

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6668
  %cmp = icmp ule i64 %1, 8, !dbg !6670
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6671

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6672
  br label %return, !dbg !6672

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6673
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6675
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6676

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp4 = icmp ule i64 %3, 96, !dbg !6678
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6679

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6680
  br label %return, !dbg !6680

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6681
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6683
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6684

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6685
  %cmp9 = icmp ule i64 %5, 192, !dbg !6686
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6687

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6688
  br label %return, !dbg !6688

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6689
  %cmp12 = icmp ule i64 %6, 8, !dbg !6691
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6692

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6693
  br label %return, !dbg !6693

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp15 = icmp ule i64 %7, 16, !dbg !6696
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6697

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp18 = icmp ule i64 %8, 32, !dbg !6701
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6702

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6704
  %cmp21 = icmp ule i64 %9, 64, !dbg !6706
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6707

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6708
  br label %return, !dbg !6708

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6709
  %cmp24 = icmp ule i64 %10, 128, !dbg !6711
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6712

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6713
  br label %return, !dbg !6713

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6714
  %cmp27 = icmp ule i64 %11, 256, !dbg !6716
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6717

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6718
  br label %return, !dbg !6718

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6719
  %cmp30 = icmp ule i64 %12, 512, !dbg !6721
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6722

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6724
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6726
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6727

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6728
  br label %return, !dbg !6728

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6729
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6731
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6732

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6733
  br label %return, !dbg !6733

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6734
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6736
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6737

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6738
  br label %return, !dbg !6738

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6739
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6741
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6742

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6743
  br label %return, !dbg !6743

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6744
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6746
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6747

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6748
  br label %return, !dbg !6748

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6749
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6751
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6752

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6753
  br label %return, !dbg !6753

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6754
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6756
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6757

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6758
  br label %return, !dbg !6758

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6759
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6761
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6762

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6763
  br label %return, !dbg !6763

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6764
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6766
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6767

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6768
  br label %return, !dbg !6768

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6769
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6771
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6772

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6773
  br label %return, !dbg !6773

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6774
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6776
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6777

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6778
  br label %return, !dbg !6778

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6779
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6781
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6782

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6783
  br label %return, !dbg !6783

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6784, !range !5559, !noundef !982
  %tobool69 = trunc i8 %25 to i1, !dbg !6784
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6786

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6787

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !6788, !srcloc !6791
  unreachable, !dbg !6788

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6792

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6793

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6794

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6796

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6794

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !6798, !srcloc !6800
  br label %do.end75, !dbg !6798

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6794

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6801
  br label %return, !dbg !6801

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6802
  ret i32 %26, !dbg !6802
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6803 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6809 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6813, metadata !DIExpression()), !dbg !6815
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6814, metadata !DIExpression()), !dbg !6816
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6817
  %and = and i32 %0, 17, !dbg !6817
  %cmp = icmp eq i32 %and, 0, !dbg !6817
  %lnot = xor i1 %cmp, true, !dbg !6817
  %lnot1 = xor i1 %lnot, true, !dbg !6817
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6817
  %conv = sext i32 %lnot.ext to i64, !dbg !6817
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6817
  %tobool = icmp ne i64 %expval, 0, !dbg !6817
  br i1 %tobool, label %if.then, label %if.end, !dbg !6819

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6820
  br label %return, !dbg !6820

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6821
  %and2 = and i32 %1, 1, !dbg !6823
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6823
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6824

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6825
  br label %return, !dbg !6825

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6826
  br label %return, !dbg !6826

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6828
  ret i32 %2, !dbg !6828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6829 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6830 dso_local void @__compiletime_assert_245() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !6831 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6835, metadata !DIExpression()), !dbg !6836
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6837, !range !5559, !noundef !982
  %tobool = trunc i8 %0 to i1, !dbg !6837
  %lnot = xor i1 %tobool, true, !dbg !6837
  %lnot1 = xor i1 %lnot, true, !dbg !6837
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6837
  %conv = sext i32 %lnot.ext to i64, !dbg !6837
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6837
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6837
  ret i1 %tobool2, !dbg !6838
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6839 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6842, metadata !DIExpression()), !dbg !6844
  %0 = load i32, ptr %i.addr, align 4, !dbg !6845
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6846
  call void @arch_atomic_add(i32 noundef %0, ptr noundef %1) #16, !dbg !6847
  ret void, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !6849 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6851, metadata !DIExpression()), !dbg !6853
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6852, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6855
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6856
  %1 = load i32, ptr %i.addr, align 4, !dbg !6857
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !6858, !srcloc !6859
  ret void, !dbg !6860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tty_insert_flip_string_fixed_flag(ptr noundef %port, ptr noundef %chars, i8 noundef zeroext %flag, i64 noundef %size) #5 align 16 !dbg !6861 {
entry:
  %port.addr = alloca ptr, align 8
  %chars.addr = alloca ptr, align 8
  %flag.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6865, metadata !DIExpression()), !dbg !6869
  store ptr %chars, ptr %chars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !6866, metadata !DIExpression()), !dbg !6870
  store i8 %flag, ptr %flag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6867, metadata !DIExpression()), !dbg !6871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6868, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6873
  %1 = load ptr, ptr %chars.addr, align 8, !dbg !6874
  %2 = load i64, ptr %size.addr, align 8, !dbg !6875
  %call = call i64 @__tty_insert_flip_string_flags(ptr noundef %0, ptr noundef %1, ptr noundef %flag.addr, i1 noundef zeroext false, i64 noundef %2) #16, !dbg !6876
  ret i64 %call, !dbg !6877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6878 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !6881 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6883, metadata !DIExpression()), !dbg !6885
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6884, metadata !DIExpression()), !dbg !6886
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6887
  %1 = load i64, ptr %size.addr, align 8, !dbg !6888
  %conv = trunc i64 %1 to i32, !dbg !6888
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6889
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6890
  %3 = load i64, ptr %size.addr, align 8, !dbg !6890
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !6890
  ret void, !dbg !6891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6892 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6894, metadata !DIExpression()), !dbg !6896
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6895, metadata !DIExpression()), !dbg !6897
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6898
  %1 = load i32, ptr %i.addr, align 4, !dbg !6899
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #16, !dbg !6900
  ret void, !dbg !6901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !6902 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6904, metadata !DIExpression()), !dbg !6906
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6905, metadata !DIExpression()), !dbg !6907
  br label %do.body, !dbg !6908

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6909
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6909
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6909
  store volatile i32 %0, ptr %counter, align 4, !dbg !6909
  br label %do.end, !dbg !6909

do.end:                                           ; preds = %do.body
  ret void, !dbg !6911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @receive_buf(ptr noundef %port, ptr noundef %head, i64 noundef %count) #0 align 16 !dbg !6912 {
entry:
  %port.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %f = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6916, metadata !DIExpression()), !dbg !6922
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6917, metadata !DIExpression()), !dbg !6923
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6918, metadata !DIExpression()), !dbg !6924
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6925
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6919, metadata !DIExpression()), !dbg !6926
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6927
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6928
  %read = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 5, !dbg !6929
  %2 = load i32, ptr %read, align 8, !dbg !6929
  %call = call ptr @char_buf_ptr(ptr noundef %0, i32 noundef %2) #16, !dbg !6930
  store ptr %call, ptr %p, align 8, !dbg !6926
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !6931
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6920, metadata !DIExpression()), !dbg !6932
  store ptr null, ptr %f, align 8, !dbg !6932
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !6933
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6921, metadata !DIExpression()), !dbg !6934
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6935
  %flags = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 6, !dbg !6937
  %4 = load i8, ptr %flags, align 4, !dbg !6937, !range !5559, !noundef !982
  %tobool = trunc i8 %4 to i1, !dbg !6937
  br i1 %tobool, label %if.then, label %if.end, !dbg !6938

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %head.addr, align 8, !dbg !6939
  %6 = load ptr, ptr %head.addr, align 8, !dbg !6940
  %read1 = getelementptr inbounds %struct.tty_buffer, ptr %6, i32 0, i32 5, !dbg !6941
  %7 = load i32, ptr %read1, align 8, !dbg !6941
  %call2 = call ptr @flag_buf_ptr(ptr noundef %5, i32 noundef %7) #16, !dbg !6942
  store ptr %call2, ptr %f, align 8, !dbg !6943
  br label %if.end, !dbg !6944

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %port.addr, align 8, !dbg !6945
  %client_ops = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 4, !dbg !6946
  %9 = load ptr, ptr %client_ops, align 8, !dbg !6946
  %receive_buf = getelementptr inbounds %struct.tty_port_client_operations, ptr %9, i32 0, i32 0, !dbg !6947
  %10 = load ptr, ptr %receive_buf, align 8, !dbg !6947
  %11 = load ptr, ptr %port.addr, align 8, !dbg !6948
  %12 = load ptr, ptr %p, align 8, !dbg !6949
  %13 = load ptr, ptr %f, align 8, !dbg !6950
  %14 = load i64, ptr %count.addr, align 8, !dbg !6951
  %call3 = call i64 %10(ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14) #16, !dbg !6945
  store i64 %call3, ptr %n, align 8, !dbg !6952
  %15 = load i64, ptr %n, align 8, !dbg !6953
  %cmp = icmp ugt i64 %15, 0, !dbg !6955
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6956

if.then4:                                         ; preds = %if.end
  %16 = load ptr, ptr %p, align 8, !dbg !6957
  %17 = load i64, ptr %n, align 8, !dbg !6958
  call void @llvm.memset.p0.i64(ptr align 1 %16, i8 0, i64 %17, i1 false), !dbg !6959
  br label %if.end5, !dbg !6959

if.end5:                                          ; preds = %if.then4, %if.end
  %18 = load i64, ptr %n, align 8, !dbg !6960
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6961
  ret i64 %18, !dbg !6962
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lookahead_bufs(ptr noundef %port, ptr noundef %head) #0 align 16 !dbg !6963 {
entry:
  %port.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %__UNIQUE_ID___x306 = alloca i32, align 4
  %__UNIQUE_ID___y307 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %next = alloca ptr, align 8
  %count = alloca i32, align 4
  %___p1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %___p17 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6965, metadata !DIExpression()), !dbg !6981
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6966, metadata !DIExpression()), !dbg !6982
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x306) #15, !dbg !6983
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x306, metadata !6967, metadata !DIExpression()), !dbg !6983
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6983
  %lookahead = getelementptr inbounds %struct.tty_buffer, ptr %0, i32 0, i32 4, !dbg !6983
  %1 = load i32, ptr %lookahead, align 4, !dbg !6983
  store i32 %1, ptr %__UNIQUE_ID___x306, align 4, !dbg !6983
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y307) #15, !dbg !6983
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y307, metadata !6969, metadata !DIExpression()), !dbg !6983
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6983
  %read = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 5, !dbg !6983
  %3 = load i32, ptr %read, align 8, !dbg !6983
  store i32 %3, ptr %__UNIQUE_ID___y307, align 4, !dbg !6983
  %4 = load i32, ptr %__UNIQUE_ID___x306, align 4, !dbg !6983
  %5 = load i32, ptr %__UNIQUE_ID___y307, align 4, !dbg !6983
  %cmp = icmp ugt i32 %4, %5, !dbg !6983
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6983

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___x306, align 4, !dbg !6983
  br label %cond.end, !dbg !6983

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___y307, align 4, !dbg !6983
  br label %cond.end, !dbg !6983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !6983
  store i32 %cond, ptr %tmp, align 4, !dbg !6983
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y307) #15, !dbg !6984
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x306) #15, !dbg !6984
  %8 = load i32, ptr %tmp, align 4, !dbg !6983
  %9 = load ptr, ptr %head.addr, align 8, !dbg !6985
  %lookahead1 = getelementptr inbounds %struct.tty_buffer, ptr %9, i32 0, i32 4, !dbg !6986
  store i32 %8, ptr %lookahead1, align 4, !dbg !6987
  br label %while.cond, !dbg !6988

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %cond.end
  %10 = load ptr, ptr %head.addr, align 8, !dbg !6989
  %tobool = icmp ne ptr %10, null, !dbg !6988
  br i1 %tobool, label %while.body, label %while.end, !dbg !6988

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !6990
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6970, metadata !DIExpression()), !dbg !6991
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !6992
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6972, metadata !DIExpression()), !dbg !6993
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #15, !dbg !6994
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6973, metadata !DIExpression()), !dbg !6994
  br label %do.body, !dbg !6995

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !6997

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6997

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %head.addr, align 8, !dbg !6995
  %12 = getelementptr inbounds %struct.tty_buffer, ptr %11, i32 0, i32 0, !dbg !6995
  %13 = load volatile ptr, ptr %12, align 8, !dbg !6995
  store ptr %13, ptr %tmp2, align 8, !dbg !6997
  %14 = load ptr, ptr %tmp2, align 8, !dbg !6995
  store ptr %14, ptr %___p1, align 8, !dbg !6994
  br label %do.body3, !dbg !6994

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !6999

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6999

do.end5:                                          ; preds = %do.cond4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6994, !srcloc !7001
  %15 = load ptr, ptr %___p1, align 8, !dbg !6994
  store ptr %15, ptr %tmp6, align 8, !dbg !6994
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #15, !dbg !7002
  %16 = load ptr, ptr %tmp6, align 8, !dbg !6994
  store ptr %16, ptr %next, align 8, !dbg !7003
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p17) #15, !dbg !7004
  call void @llvm.dbg.declare(metadata ptr %___p17, metadata !6975, metadata !DIExpression()), !dbg !7004
  br label %do.body8, !dbg !7005

do.body8:                                         ; preds = %do.end5
  br label %do.cond9, !dbg !7007

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7007

do.end10:                                         ; preds = %do.cond9
  %17 = load ptr, ptr %head.addr, align 8, !dbg !7005
  %commit = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 3, !dbg !7005
  %18 = load volatile i32, ptr %commit, align 8, !dbg !7005
  store i32 %18, ptr %tmp11, align 4, !dbg !7007
  %19 = load i32, ptr %tmp11, align 4, !dbg !7005
  store i32 %19, ptr %___p17, align 4, !dbg !7004
  br label %do.body12, !dbg !7004

do.body12:                                        ; preds = %do.end10
  br label %do.cond13, !dbg !7009

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !7009

do.end14:                                         ; preds = %do.cond13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7004, !srcloc !7011
  %20 = load i32, ptr %___p17, align 4, !dbg !7004
  store i32 %20, ptr %tmp15, align 4, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p17) #15, !dbg !7012
  %21 = load i32, ptr %tmp15, align 4, !dbg !7004
  %22 = load ptr, ptr %head.addr, align 8, !dbg !7013
  %lookahead16 = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 4, !dbg !7014
  %23 = load i32, ptr %lookahead16, align 4, !dbg !7014
  %sub = sub i32 %21, %23, !dbg !7015
  store i32 %sub, ptr %count, align 4, !dbg !7016
  %24 = load i32, ptr %count, align 4, !dbg !7017
  %tobool17 = icmp ne i32 %24, 0, !dbg !7017
  br i1 %tobool17, label %if.end, label %if.then, !dbg !7019

if.then:                                          ; preds = %do.end14
  %25 = load ptr, ptr %next, align 8, !dbg !7020
  store ptr %25, ptr %head.addr, align 8, !dbg !7022
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7023, !llvm.loop !7024

if.end:                                           ; preds = %do.end14
  %26 = load ptr, ptr %port.addr, align 8, !dbg !7026
  %client_ops = getelementptr inbounds %struct.tty_port, ptr %26, i32 0, i32 4, !dbg !7027
  %27 = load ptr, ptr %client_ops, align 8, !dbg !7027
  %lookahead_buf = getelementptr inbounds %struct.tty_port_client_operations, ptr %27, i32 0, i32 1, !dbg !7028
  %28 = load ptr, ptr %lookahead_buf, align 8, !dbg !7028
  %tobool18 = icmp ne ptr %28, null, !dbg !7026
  br i1 %tobool18, label %if.then19, label %if.end28, !dbg !7029

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !7030
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6977, metadata !DIExpression()), !dbg !7031
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #15, !dbg !7030
  call void @llvm.dbg.declare(metadata ptr %f, metadata !6980, metadata !DIExpression()), !dbg !7032
  store ptr null, ptr %f, align 8, !dbg !7032
  %29 = load ptr, ptr %head.addr, align 8, !dbg !7033
  %30 = load ptr, ptr %head.addr, align 8, !dbg !7034
  %lookahead20 = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 4, !dbg !7035
  %31 = load i32, ptr %lookahead20, align 4, !dbg !7035
  %call = call ptr @char_buf_ptr(ptr noundef %29, i32 noundef %31) #16, !dbg !7036
  store ptr %call, ptr %p, align 8, !dbg !7037
  %32 = load ptr, ptr %head.addr, align 8, !dbg !7038
  %flags = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6, !dbg !7040
  %33 = load i8, ptr %flags, align 4, !dbg !7040, !range !5559, !noundef !982
  %tobool21 = trunc i8 %33 to i1, !dbg !7040
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !7041

if.then22:                                        ; preds = %if.then19
  %34 = load ptr, ptr %head.addr, align 8, !dbg !7042
  %35 = load ptr, ptr %head.addr, align 8, !dbg !7043
  %lookahead23 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 4, !dbg !7044
  %36 = load i32, ptr %lookahead23, align 4, !dbg !7044
  %call24 = call ptr @flag_buf_ptr(ptr noundef %34, i32 noundef %36) #16, !dbg !7045
  store ptr %call24, ptr %f, align 8, !dbg !7046
  br label %if.end25, !dbg !7047

if.end25:                                         ; preds = %if.then22, %if.then19
  %37 = load ptr, ptr %port.addr, align 8, !dbg !7048
  %client_ops26 = getelementptr inbounds %struct.tty_port, ptr %37, i32 0, i32 4, !dbg !7049
  %38 = load ptr, ptr %client_ops26, align 8, !dbg !7049
  %lookahead_buf27 = getelementptr inbounds %struct.tty_port_client_operations, ptr %38, i32 0, i32 1, !dbg !7050
  %39 = load ptr, ptr %lookahead_buf27, align 8, !dbg !7050
  %40 = load ptr, ptr %port.addr, align 8, !dbg !7051
  %41 = load ptr, ptr %p, align 8, !dbg !7052
  %42 = load ptr, ptr %f, align 8, !dbg !7053
  %43 = load i32, ptr %count, align 4, !dbg !7054
  %conv = zext i32 %43 to i64, !dbg !7054
  call void %39(ptr noundef %40, ptr noundef %41, ptr noundef %42, i64 noundef %conv) #16, !dbg !7048
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #15, !dbg !7055
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !7055
  br label %if.end28, !dbg !7056

if.end28:                                         ; preds = %if.end25, %if.end
  %44 = load i32, ptr %count, align 4, !dbg !7057
  %45 = load ptr, ptr %head.addr, align 8, !dbg !7058
  %lookahead29 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 4, !dbg !7059
  %46 = load i32, ptr %lookahead29, align 4, !dbg !7060
  %add = add i32 %46, %44, !dbg !7060
  store i32 %add, ptr %lookahead29, align 4, !dbg !7060
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7025
  br label %cleanup, !dbg !7025

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !7025
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !7025
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6988, !llvm.loop !7024

while.end:                                        ; preds = %while.cond
  ret void, !dbg !7061

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #3 align 16 !dbg !7062 {
entry:
  %call = call zeroext i1 @tif_need_resched() #16, !dbg !7063
  %lnot = xor i1 %call, true, !dbg !7063
  %lnot1 = xor i1 %lnot, true, !dbg !7063
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7063
  %conv = sext i32 %lnot.ext to i64, !dbg !7063
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7063
  %tobool = icmp ne i64 %expval, 0, !dbg !7063
  ret i1 %tobool, !dbg !7064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !7065 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7070, metadata !DIExpression()), !dbg !7073
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !7071, metadata !DIExpression()), !dbg !7074
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !7072, metadata !DIExpression()), !dbg !7075
  ret void, !dbg !7076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !5072 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !7077
  %0 = load ptr, ptr %tmp, align 8, !dbg !7077
  %call = call i32 %0() #16, !dbg !7079
  ret i32 %call, !dbg !7080
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #3 align 16 !dbg !7081 {
entry:
  %call = call ptr @get_current() #16, !dbg !7083
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !7084
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #16, !dbg !7085
  ret i1 %call1, !dbg !7086
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7087 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7096, metadata !DIExpression()), !dbg !7098
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7099
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7100
  br i1 %1, label %cond.true, label %cond.false, !dbg !7100

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7101
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7102
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7103
  %conv = zext i1 %call to i32, !dbg !7103
  br label %cond.end, !dbg !7100

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7104
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7105
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !7106
  %conv2 = zext i1 %call1 to i32, !dbg !7106
  br label %cond.end, !dbg !7100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7100
  %tobool = icmp ne i32 %cond, 0, !dbg !7100
  ret i1 %tobool, !dbg !7107
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !7108 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7113, metadata !DIExpression()), !dbg !7119
  br label %do.body, !dbg !7119

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !7120
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7115, metadata !DIExpression()), !dbg !7120
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7120
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !7119
  br label %do.cond, !dbg !7120

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7120

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !7121
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7117, metadata !DIExpression()), !dbg !7121
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !7121, !srcloc !7122
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7121
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7121
  %3 = inttoptr i64 %2 to ptr, !dbg !7121
  store ptr %3, ptr %tmp, align 8, !dbg !7121
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !7119
  %4 = load ptr, ptr %tmp, align 8, !dbg !7121
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7119
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7119
  store ptr %5, ptr %tmp1, align 8, !dbg !7119
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !7123
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7119
  ret ptr %6, !dbg !7124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7125 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7129, metadata !DIExpression()), !dbg !7131
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7130, metadata !DIExpression()), !dbg !7132
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7133
  %and = and i64 %0, 63, !dbg !7134
  %shl = shl i64 1, %and, !dbg !7135
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7136
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7137
  %shr = ashr i64 %2, 6, !dbg !7138
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7136
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7136
  %and1 = and i64 %shl, %3, !dbg !7139
  %cmp = icmp ne i64 %and1, 0, !dbg !7140
  ret i1 %cmp, !dbg !7141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7142 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7144, metadata !DIExpression()), !dbg !7147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7145, metadata !DIExpression()), !dbg !7148
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !7149
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7146, metadata !DIExpression()), !dbg !7150
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7151
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7152
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !7153, !srcloc !7154
  %3 = icmp ult i8 %2, 2, !dbg !7153
  call void @llvm.assume(i1 %3), !dbg !7153
  store i8 %2, ptr %oldbit, align 1, !dbg !7153
  %4 = load i8, ptr %oldbit, align 1, !dbg !7155, !range !5559, !noundef !982
  %tobool = trunc i8 %4 to i1, !dbg !7155
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !7156
  ret i1 %tobool, !dbg !7157
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080}
!llvm.ident = !{!5081}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_buffer_lock_exclusive287", scope: !2, file: !3, line: 59, type: !183, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/.tty_buffer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/tty_buffer\22 -D KBUILD_BASENAME=\22tty_buffer\22 -D KBUILD_MODNAME=\22tty_buffer\22 -D __KBUILD_MODNAME=kmod_tty_buffer -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/tty_buffer.ll drivers/tty/tty_buffer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182, globals: !5024, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/tty_buffer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "860c3c365f9ce27fb81af996774a350b")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !172}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 30, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!149 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!150 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!151 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!152 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!153 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!154 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!155 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!156 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!157 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!158 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!159 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!160 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!161 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!162 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!163 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!164 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!165 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!166 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!167 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!168 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!169 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!170 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!171 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !173, line: 364, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!180 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!181 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!182 = !{!183, !184, !216, !218, !221, !217, !225, !228, !230, !109, !231, !232, !233, !240, !5020, !1044, !5022, !5023, !2372}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !186, line: 10, size: 256, elements: !187)
!186 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!187 = !{!188, !198, !199, !200, !201, !202, !203, !207}
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !186, line: 11, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !186, line: 11, size: 64, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !186, line: 12, baseType: !184, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !189, file: !186, line: 13, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !194, line: 60, size: 64, elements: !195)
!194 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !194, line: 61, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !185, file: !186, line: 15, baseType: !7, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !185, file: !186, line: 16, baseType: !7, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !185, file: !186, line: 17, baseType: !7, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !185, file: !186, line: 18, baseType: !7, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !185, file: !186, line: 19, baseType: !7, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !186, line: 20, baseType: !204, size: 8, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !205, line: 35, baseType: !206)
!205 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!206 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !185, file: !186, line: 22, baseType: !208, align: 64, offset: 256)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !214)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !210, line: 17, baseType: !211)
!210 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !212, line: 21, baseType: !213)
!212 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!213 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !{!215}
!215 = !DISubrange(count: -1)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !205, line: 42, baseType: !217)
!217 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !205, line: 61, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !223, line: 72, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !223, line: 16, baseType: !217)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !205, line: 154, baseType: !7)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !205, line: 190, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !205, line: 191, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !205, line: 191, baseType: !235, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !242, line: 101, size: 3008, elements: !243)
!242 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!243 = !{!244, !319, !4943, !4944, !4966, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !5015, !5016, !5017, !5018, !5019}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !241, file: !242, line: 102, baseType: !245, size: 1088)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !186, line: 35, size: 1088, elements: !246)
!246 = !{!247, !248, !268, !310, !311, !312, !316, !317, !318}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !245, file: !186, line: 36, baseType: !184, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !245, file: !186, line: 37, baseType: !249, size: 256, offset: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !147, line: 98, size: 256, elements: !250)
!250 = !{!251, !261, !262}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !249, file: !147, line: 99, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !253, line: 13, baseType: !254)
!253 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !205, line: 181, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 179, size: 64, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !205, line: 180, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !210, line: 22, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !212, line: 30, baseType: !260)
!260 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !249, file: !147, line: 100, baseType: !236, size: 128, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !249, file: !147, line: 101, baseType: !263, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !147, line: 21, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !245, file: !186, line: 38, baseType: !269, size: 256, offset: 320)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !270, line: 66, size: 256, elements: !271)
!270 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!271 = !{!272, !273, !304, !309}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !269, file: !270, line: 67, baseType: !252, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !269, file: !270, line: 68, baseType: !274, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !275, line: 23, baseType: !276)
!275 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !275, line: 14, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !275, line: 15, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !280, line: 44, baseType: !281)
!280 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !280, line: 14, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !280, line: 15, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !280, line: 15, size: 32, elements: !285)
!285 = !{!286, !291, !296}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !284, file: !280, line: 16, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !205, line: 174, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 172, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !205, line: 173, baseType: !109, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !280, line: 24, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !280, line: 24, size: 16, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !280, line: 25, baseType: !209, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !292, file: !280, line: 26, baseType: !209, size: 8, offset: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !280, line: 28, baseType: !297, size: 32)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !280, line: 28, size: 32, elements: !298)
!298 = !{!299, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !297, file: !280, line: 29, baseType: !300, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !210, line: 19, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !212, line: 24, baseType: !302)
!302 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !297, file: !280, line: 30, baseType: !300, size: 16, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !269, file: !270, line: 70, baseType: !305, size: 32, offset: 96)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !306, line: 15, size: 32, elements: !307)
!306 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !305, file: !306, line: 20, baseType: !287, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !269, file: !270, line: 72, baseType: !236, size: 128, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !245, file: !186, line: 39, baseType: !287, size: 32, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !245, file: !186, line: 40, baseType: !185, size: 256, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !245, file: !186, line: 41, baseType: !313, size: 64, offset: 896)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !194, line: 56, size: 64, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !313, file: !194, line: 57, baseType: !197, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !245, file: !186, line: 42, baseType: !287, size: 32, offset: 960)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !245, file: !186, line: 43, baseType: !109, size: 32, offset: 992)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !245, file: !186, line: 44, baseType: !184, size: 64, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !241, file: !242, line: 103, baseType: !320, size: 64, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !322, line: 193, size: 5248, elements: !323)
!322 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!323 = !{!324, !334, !335, !4661, !4829, !4830, !4831, !4878, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4895, !4896, !4897, !4898, !4899, !4909, !4918, !4919, !4920, !4921, !4922, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4941, !4942}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !321, file: !322, line: 194, baseType: !325, size: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !326, line: 19, size: 32, elements: !327)
!326 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !325, file: !326, line: 20, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !330, line: 113, baseType: !331)
!330 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !330, line: 111, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !331, file: !330, line: 112, baseType: !287, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !321, file: !322, line: 195, baseType: !109, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !321, file: !322, line: 196, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !338)
!338 = !{!339, !4215, !4216, !4219, !4220, !4273, !4343, !4344, !4345, !4346, !4347, !4354, !4446, !4459, !4469, !4473, !4475, !4476, !4477, !4481, !4488, !4489, !4492, !4495, !4499, !4603, !4604, !4605, !4606, !4607, !4608, !4638, !4639, !4640, !4643, !4646, !4655, !4656, !4657, !4658, !4659, !4660}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !337, file: !94, line: 706, baseType: !340, size: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !341, line: 64, size: 512, elements: !342)
!341 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!342 = !{!343, !347, !348, !350, !405, !4117, !4209, !4210, !4211, !4212, !4213, !4214}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !341, line: 65, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !340, file: !341, line: 66, baseType: !236, size: 128, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !340, file: !341, line: 67, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !340, file: !341, line: 68, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !341, line: 168, size: 768, elements: !353)
!353 = !{!354, !355, !364, !365}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !352, file: !341, line: 169, baseType: !236, size: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !352, file: !341, line: 170, baseType: !356, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !357, line: 29, baseType: !358)
!357 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !357, line: 17, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !357, line: 18, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !357, line: 18, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !361, file: !357, line: 19, baseType: !276, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !352, file: !341, line: 171, baseType: !340, size: 512, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !352, file: !341, line: 172, baseType: !366, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !341, line: 133, size: 192, elements: !369)
!369 = !{!370, !377, !382}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !368, file: !341, line: 134, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!109, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !341, line: 135, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!344, !375}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !368, file: !341, line: 136, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!109, !375, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !341, line: 125, size: 20736, elements: !389)
!389 = !{!390, !395, !399, !400, !404}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !388, file: !341, line: 126, baseType: !391, size: 192)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 192, elements: !393)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!393 = !{!394}
!394 = !DISubrange(count: 3)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !388, file: !341, line: 127, baseType: !396, size: 4096, offset: 192)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 4096, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !388, file: !341, line: 128, baseType: !109, size: 32, offset: 4288)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !388, file: !341, line: 129, baseType: !401, size: 16384, offset: 4320)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 16384, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 2048)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !388, file: !341, line: 130, baseType: !109, size: 32, offset: 20704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !340, file: !341, line: 69, baseType: !406, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !341, line: 116, size: 384, elements: !409)
!409 = !{!410, !414, !438, !4079, !4107, !4111}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !408, file: !341, line: 117, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !349}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !408, file: !341, line: 118, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !418, line: 254, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!419 = !{!420, !434}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !417, file: !418, line: 255, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!424, !349, !428, !392}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !205, line: 66, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !223, line: 73, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !223, line: 15, baseType: !427)
!427 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !418, line: 30, size: 128, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !429, file: !418, line: 31, baseType: !344, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !429, file: !418, line: 32, baseType: !433, size: 16, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !205, line: 24, baseType: !302)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !417, file: !418, line: 256, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!424, !349, !428, !344, !221}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !408, file: !341, line: 119, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !418, line: 84, size: 320, elements: !443)
!443 = !{!444, !445, !449, !4075, !4077}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !418, line: 85, baseType: !344, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !442, file: !418, line: 86, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!433, !349, !428, !109}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !442, file: !418, line: 88, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!433, !349, !453, !109}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !418, line: 175, size: 512, elements: !455)
!455 = !{!456, !457, !458, !459, !4066, !4070, !4071}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !454, file: !418, line: 176, baseType: !429, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !418, line: 177, baseType: !221, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !454, file: !418, line: 178, baseType: !183, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !454, file: !418, line: 179, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !465)
!465 = !{!466, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !4060, !4061, !4062, !4063, !4064, !4065}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !464, file: !14, line: 473, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !469)
!469 = !{!470, !471, !472, !480, !481, !488, !489, !492, !493, !3831, !3832, !3833, !3834, !3835, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3875, !3878, !3879, !3880, !3897, !3898, !3899, !3900}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !468, file: !14, line: 642, baseType: !433, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !468, file: !14, line: 643, baseType: !302, size: 16, offset: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !468, file: !14, line: 644, baseType: !473, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !474, line: 23, baseType: !475)
!474 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 21, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !474, line: 22, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !205, line: 37, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !223, line: 49, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !468, file: !14, line: 645, baseType: !236, size: 128, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !468, file: !14, line: 646, baseType: !482, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !474, line: 28, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 26, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !483, file: !474, line: 27, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !205, line: 38, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !223, line: 50, baseType: !7)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !468, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !468, file: !14, line: 650, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !468, file: !14, line: 651, baseType: !490, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !468, file: !14, line: 654, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !497)
!497 = !{!498, !3659, !3669, !3673, !3677, !3681, !3685, !3689, !3693, !3697, !3701, !3702, !3706, !3710, !3747, !3776, !3780, !3786, !3790, !3794, !3798, !3802, !3806, !3812, !3816}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !496, file: !14, line: 1967, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !467, !502, !7}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !504, line: 82, size: 1536, elements: !505)
!504 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!505 = !{!506, !507, !517, !525, !526, !546, !547, !551, !564, !3642, !3643, !3644, !3645, !3651, !3652, !3653}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !503, file: !504, line: 84, baseType: !7, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !503, file: !504, line: 85, baseType: !508, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !509, line: 275, baseType: !510)
!509 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !509, line: 275, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !510, file: !509, line: 275, baseType: !513, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !509, line: 69, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !509, line: 64, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !514, file: !509, line: 65, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !503, file: !504, line: 86, baseType: !518, size: 128, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !519, line: 38, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!520 = !{!521, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !519, line: 39, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !518, file: !519, line: 39, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !503, file: !504, line: 87, baseType: !502, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !503, file: !504, line: 88, baseType: !527, size: 128, offset: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !504, line: 49, size: 128, elements: !528)
!528 = !{!529, !543}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !504, line: 50, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !504, line: 50, size: 64, elements: !531)
!531 = !{!532, !539}
!532 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !504, line: 51, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !530, file: !504, line: 51, size: 64, elements: !534)
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !533, file: !504, line: 52, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !210, line: 21, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !212, line: 27, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !533, file: !504, line: 52, baseType: !536, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !530, file: !504, line: 54, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !210, line: 23, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !212, line: 31, baseType: !542)
!542 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !527, file: !504, line: 56, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !503, file: !504, line: 89, baseType: !467, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !503, file: !504, line: 91, baseType: !548, size: 256, offset: 448)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 256, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !503, file: !504, line: 94, baseType: !552, size: 64, offset: 704)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !553, line: 25, size: 64, elements: !554)
!553 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 26, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 26, size: 64, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !556, file: !553, line: 28, baseType: !541, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !553, line: 30, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !553, line: 30, size: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !553, line: 31, baseType: !356, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !553, line: 32, baseType: !109, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !503, file: !504, line: 95, baseType: !565, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !504, line: 128, size: 1024, align: 512, elements: !568)
!568 = !{!569, !573, !574, !581, !587, !591, !595, !599, !600, !604, !608, !3632, !3636}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !567, file: !504, line: 129, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!109, !502, !7}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !567, file: !504, line: 130, baseType: !570, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !567, file: !504, line: 131, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !578, !580}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !567, file: !504, line: 132, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!109, !578, !7, !344, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !567, file: !504, line: 134, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!109, !578}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !567, file: !504, line: 135, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!109, !502}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !567, file: !504, line: 136, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !502}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !567, file: !504, line: 137, baseType: !596, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !567, file: !504, line: 138, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !502, !467}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !567, file: !504, line: 139, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!392, !502, !392, !109}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !567, file: !504, line: 140, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !3631}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !614, line: 70, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!615 = !{!616, !617, !3627, !3628}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !613, file: !614, line: 71, baseType: !502, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !613, file: !614, line: 72, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !620)
!620 = !{!621, !622, !625, !626, !627, !630, !1076, !2146, !2186, !2271, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2288, !2292, !2293, !2296, !2299, !2302, !2305, !2306, !2307, !2348, !3560, !3561, !3562, !3563, !3564, !3565, !3568, !3570, !3577, !3578, !3579, !3580, !3581, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !619, file: !14, line: 1191, baseType: !236, size: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !619, file: !14, line: 1192, baseType: !623, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !205, line: 21, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !205, line: 18, baseType: !536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !619, file: !14, line: 1193, baseType: !213, size: 8, offset: 160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !619, file: !14, line: 1194, baseType: !217, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !619, file: !14, line: 1195, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !205, line: 52, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !223, line: 88, baseType: !260)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !619, file: !14, line: 1196, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !633)
!633 = !{!634, !635, !636, !642, !646, !650, !654, !1061, !1062, !1066, !1068, !1069, !1070, !1072, !1073, !1074, !1075}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !14, line: 2367, baseType: !344, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !632, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !632, file: !14, line: 2376, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !614, line: 21, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !632, file: !14, line: 2377, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !632, file: !14, line: 2378, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!502, !631, !109, !344, !183}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !632, file: !14, line: 2380, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !618}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !14, line: 2381, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !657)
!657 = !{!658, !659, !660, !664, !685, !711, !712, !713, !714, !718, !723, !724, !725, !781, !782, !783, !784, !785, !786, !787, !788, !796, !800, !827, !848, !849, !850, !851, !860, !883, !884, !887, !890, !891, !892, !893, !894, !895, !896, !901, !902, !1019, !1027, !1028, !1029, !1031, !1035, !1036, !1040, !1041, !1042, !1043, !1045, !1046, !1047, !1054, !1055, !1056, !1060}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !656, file: !6, line: 403, baseType: !5, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !656, file: !6, line: 406, baseType: !236, size: 128, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !6, line: 409, baseType: !661, size: 448, offset: 192)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 448, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 56)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !656, file: !6, line: 417, baseType: !665, size: 768, offset: 640)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !666)
!666 = !{!667, !668, !669, !670, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !665, file: !6, line: 46, baseType: !340, size: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !665, file: !6, line: 47, baseType: !655, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !665, file: !6, line: 48, baseType: !349, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !665, file: !6, line: 49, baseType: !671, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !665, file: !6, line: 50, baseType: !674, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !676, line: 26, size: 256, elements: !677)
!676 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !675, file: !676, line: 27, baseType: !7, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !675, file: !676, line: 28, baseType: !680, size: 192, offset: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !681, line: 43, size: 192, elements: !682)
!681 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !680, file: !681, line: 44, baseType: !274, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !680, file: !681, line: 45, baseType: !236, size: 128, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !656, file: !6, line: 418, baseType: !686, size: 64, offset: 1408)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !688)
!688 = !{!689, !690, !695, !699, !703, !707}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !687, file: !6, line: 54, baseType: !429, size: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !687, file: !6, line: 55, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!424, !686, !694, !392}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !687, file: !6, line: 57, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!424, !686, !694, !344, !221}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !687, file: !6, line: 59, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !655, !344}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !687, file: !6, line: 60, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!109, !655}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !687, file: !6, line: 61, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !655}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !656, file: !6, line: 419, baseType: !344, size: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !656, file: !6, line: 420, baseType: !344, size: 64, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !656, file: !6, line: 421, baseType: !349, size: 64, offset: 1600)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !656, file: !6, line: 424, baseType: !715, size: 64, offset: 1664)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !656, file: !6, line: 425, baseType: !719, size: 64, offset: 1728)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !210, line: 20, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !212, line: 26, baseType: !109)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !656, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !656, file: !6, line: 435, baseType: !269, size: 256, offset: 1856)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !656, file: !6, line: 437, baseType: !726, size: 64, offset: 2112)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !728, line: 69, size: 320, elements: !729)
!728 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!729 = !{!730, !731, !732, !752, !754, !758, !759}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !727, file: !728, line: 70, baseType: !344, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !727, file: !728, line: 71, baseType: !655, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !727, file: !728, line: 72, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !728, line: 47, size: 256, elements: !736)
!736 = !{!737, !738, !744, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !728, line: 49, baseType: !7, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !735, file: !728, line: 51, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!109, !344, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !735, file: !728, line: 53, baseType: !745, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!109, !392, !742}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !735, file: !728, line: 55, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !183}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !727, file: !728, line: 73, baseType: !753, size: 16, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !727, file: !728, line: 74, baseType: !755, size: 8, offset: 208)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !210, line: 16, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !212, line: 20, baseType: !757)
!757 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !728, line: 75, baseType: !209, size: 8, offset: 216)
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 76, baseType: !760, size: 64, offset: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 76, size: 64, elements: !761)
!761 = !{!762, !763, !770}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !760, file: !728, line: 77, baseType: !183, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !760, file: !728, line: 78, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !728, line: 86, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !766, file: !728, line: 87, baseType: !7, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !766, file: !728, line: 88, baseType: !392, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !760, file: !728, line: 79, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !728, line: 92, size: 256, elements: !774)
!774 = !{!775, !776, !777, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !773, file: !728, line: 94, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !773, file: !728, line: 95, baseType: !7, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !773, file: !728, line: 96, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !773, file: !728, line: 97, baseType: !733, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !773, file: !728, line: 98, baseType: !183, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !656, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !656, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !656, file: !6, line: 442, baseType: !715, size: 64, offset: 2240)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !656, file: !6, line: 443, baseType: !719, size: 64, offset: 2304)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !656, file: !6, line: 444, baseType: !204, size: 8, offset: 2368)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !656, file: !6, line: 451, baseType: !204, size: 8, offset: 2376)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !656, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !656, file: !6, line: 455, baseType: !789, size: 64, offset: 2432)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !791, line: 23, size: 96, elements: !792)
!791 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !790, file: !791, line: 24, baseType: !109, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !790, file: !791, line: 24, baseType: !109, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !790, file: !791, line: 24, baseType: !109, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !656, file: !6, line: 458, baseType: !797, size: 64, offset: 2496)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!109}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !656, file: !6, line: 460, baseType: !801, size: 4032, align: 512, offset: 2560)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 4032, elements: !825)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !802, file: !6, line: 363, baseType: !183, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !802, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !802, file: !6, line: 367, baseType: !807, size: 448, offset: 128)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !807, file: !6, line: 320, baseType: !655, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !807, file: !6, line: 321, baseType: !811, size: 384, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !812, line: 40, size: 384, elements: !813)
!812 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !811, file: !812, line: 41, baseType: !815, size: 384, align: 64)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 384, align: 64, elements: !823)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !817, line: 5, size: 192, align: 64, elements: !818)
!817 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!818 = !{!819, !820, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !816, file: !817, line: 6, baseType: !217, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !816, file: !817, line: 7, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !816, file: !817, line: 8, baseType: !821, size: 64, offset: 128)
!823 = !{!824}
!824 = !DISubrange(count: 2)
!825 = !{!826}
!826 = !DISubrange(count: 7)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !656, file: !6, line: 463, baseType: !828, size: 192, offset: 6592)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !829, line: 8, size: 192, elements: !830)
!829 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!830 = !{!831, !832, !834}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !828, file: !829, line: 10, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !828, file: !829, line: 11, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !828, file: !829, line: 12, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !837, line: 59, size: 48, elements: !838)
!837 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!838 = !{!839, !843, !844, !845, !846, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !836, file: !837, line: 60, baseType: !840, size: 16)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !210, line: 18, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !212, line: 23, baseType: !842)
!842 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !836, file: !837, line: 61, baseType: !840, size: 16, offset: 16)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !836, file: !837, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !836, file: !837, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !837, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !836, file: !837, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !656, file: !6, line: 465, baseType: !217, size: 64, offset: 6784)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !656, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !656, file: !6, line: 470, baseType: !236, size: 128, offset: 6912)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !656, file: !6, line: 471, baseType: !852, size: 64, offset: 7040)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !854, line: 33, size: 96, elements: !855)
!854 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!855 = !{!856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !853, file: !854, line: 37, baseType: !109, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !853, file: !854, line: 43, baseType: !109, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !853, file: !854, line: 45, baseType: !302, size: 16, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !854, line: 47, baseType: !302, size: 16, offset: 80)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !656, file: !6, line: 476, baseType: !861, size: 64, offset: 7104)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !863)
!863 = !{!864, !880, !881, !882}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !862, file: !6, line: 379, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !867, line: 204, baseType: !868)
!867 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !867, line: 197, size: 192, elements: !869)
!869 = !{!870, !872, !873, !874, !876, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !868, file: !867, line: 198, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !867, line: 21, baseType: !537)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !868, file: !867, line: 199, baseType: !213, size: 8, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !868, file: !867, line: 200, baseType: !213, size: 8, offset: 40)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !868, file: !867, line: 201, baseType: !875, size: 16, offset: 48)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !867, line: 17, baseType: !301)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !868, file: !867, line: 202, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !867, line: 16, baseType: !541)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !868, file: !867, line: 203, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !867, line: 22, baseType: !541)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !862, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !862, file: !6, line: 381, baseType: !392, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !862, file: !6, line: 382, baseType: !392, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !656, file: !6, line: 477, baseType: !862, size: 256, offset: 7168)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !656, file: !6, line: 480, baseType: !885, size: 64, offset: 7424)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !656, file: !6, line: 483, baseType: !888, size: 64, offset: 7488)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !656, file: !6, line: 488, baseType: !392, size: 64, offset: 7552)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !656, file: !6, line: 492, baseType: !183, size: 64, offset: 7616)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !656, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !656, file: !6, line: 495, baseType: !183, size: 64, offset: 7744)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !656, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !656, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !656, file: !6, line: 500, baseType: !897, size: 64, offset: 7872)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !899, line: 45, baseType: !900)
!899 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !656, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !656, file: !6, line: 504, baseType: !903, size: 64, offset: 8000)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !906, line: 96, size: 192, elements: !907)
!906 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!907 = !{!908, !909, !979, !983}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !905, file: !906, line: 97, baseType: !7, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !905, file: !906, line: 98, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !906, line: 24, size: 3072, elements: !912)
!912 = !{!913, !915, !916, !917, !918, !942, !943, !944, !945, !963, !964, !965, !976, !977, !978}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !911, file: !906, line: 26, baseType: !914, size: 128)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !823)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !911, file: !906, line: 27, baseType: !914, size: 128, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !911, file: !906, line: 28, baseType: !109, size: 32, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !911, file: !906, line: 31, baseType: !356, size: 32, align: 512, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !911, file: !906, line: 32, baseType: !919, size: 960, offset: 576)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !920, line: 206, size: 960, elements: !921)
!920 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!921 = !{!922, !931, !936, !938, !939, !941}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !919, file: !920, line: 207, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !205, line: 232, size: 128, align: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !205, line: 233, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !924, file: !205, line: 234, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !923}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !919, file: !920, line: 208, baseType: !932, size: 256, offset: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 256, elements: !934)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!934 = !{!935}
!935 = !DISubrange(count: 4)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !919, file: !920, line: 209, baseType: !937, size: 256, offset: 320)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !934)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !919, file: !920, line: 213, baseType: !427, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !919, file: !920, line: 215, baseType: !940, size: 256, offset: 640)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 256, elements: !934)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !919, file: !920, line: 216, baseType: !209, size: 8, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !911, file: !906, line: 33, baseType: !217, size: 64, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !911, file: !906, line: 34, baseType: !217, size: 64, offset: 1600)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !911, file: !906, line: 35, baseType: !204, size: 8, offset: 1664)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !911, file: !906, line: 36, baseType: !946, size: 320, offset: 1728)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !947, line: 11, size: 320, elements: !948)
!947 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!948 = !{!949, !956, !957, !962}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !946, file: !947, line: 16, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !205, line: 198, size: 128, elements: !951)
!951 = !{!952, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !205, line: 199, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !950, file: !205, line: 199, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !946, file: !947, line: 17, baseType: !217, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !946, file: !947, line: 18, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 19, baseType: !536, size: 32, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !911, file: !906, line: 37, baseType: !249, size: 256, offset: 2048)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !911, file: !906, line: 38, baseType: !924, size: 128, align: 64, offset: 2304)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !911, file: !906, line: 39, baseType: !966, size: 64, offset: 2432)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !906, line: 49, size: 768, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !967, file: !906, line: 50, baseType: !356, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !967, file: !906, line: 51, baseType: !937, size: 256, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !967, file: !906, line: 53, baseType: !937, size: 256, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !967, file: !906, line: 54, baseType: !217, size: 64, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !967, file: !906, line: 55, baseType: !966, size: 64, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !967, file: !906, line: 56, baseType: !109, size: 32, offset: 704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !967, file: !906, line: 57, baseType: !109, size: 32, offset: 736)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !911, file: !906, line: 40, baseType: !217, size: 64, offset: 2496)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !911, file: !906, line: 42, baseType: !109, size: 32, offset: 2560)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !911, file: !906, line: 43, baseType: !904, size: 64, offset: 2624)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !905, file: !906, line: 99, baseType: !980, offset: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !981, line: 211, elements: !982)
!981 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!982 = !{}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !905, file: !906, line: 100, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !906, line: 63, size: 3008, elements: !986)
!986 = !{!987, !988, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1018}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !985, file: !906, line: 64, baseType: !966, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !985, file: !906, line: 65, baseType: !989, size: 192, offset: 64)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 192, elements: !393)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !985, file: !906, line: 67, baseType: !109, size: 32, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !985, file: !906, line: 68, baseType: !269, size: 256, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !985, file: !906, line: 69, baseType: !356, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !985, file: !906, line: 70, baseType: !269, size: 256, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !985, file: !906, line: 71, baseType: !217, size: 64, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !985, file: !906, line: 72, baseType: !217, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !985, file: !906, line: 73, baseType: !217, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !985, file: !906, line: 74, baseType: !217, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !985, file: !906, line: 75, baseType: !217, size: 64, offset: 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !985, file: !906, line: 76, baseType: !217, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !985, file: !906, line: 77, baseType: !217, size: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !985, file: !906, line: 78, baseType: !217, size: 64, offset: 1344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !985, file: !906, line: 79, baseType: !204, size: 8, offset: 1408)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !985, file: !906, line: 80, baseType: !217, size: 64, offset: 1472)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !985, file: !906, line: 81, baseType: !269, size: 256, offset: 1536)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !985, file: !906, line: 82, baseType: !675, size: 256, offset: 1792)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !985, file: !906, line: 84, baseType: !287, size: 32, offset: 2048)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !985, file: !906, line: 87, baseType: !217, size: 64, offset: 2112)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !985, file: !906, line: 88, baseType: !217, size: 64, offset: 2176)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !985, file: !906, line: 89, baseType: !1010, size: 704, offset: 2240)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !147, line: 111, size: 704, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1010, file: !147, line: 112, baseType: !249, size: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1010, file: !147, line: 113, baseType: !946, size: 320, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1010, file: !147, line: 116, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !147, line: 18, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1010, file: !147, line: 117, baseType: !109, size: 32, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !985, file: !906, line: 90, baseType: !904, size: 64, offset: 2944)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !656, file: !6, line: 515, baseType: !1020, size: 64, offset: 8064)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1022, line: 117, size: 128, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1021, file: !1022, line: 118, baseType: !721, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1021, file: !1022, line: 119, baseType: !721, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1021, file: !1022, line: 120, baseType: !427, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !656, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !656, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !656, file: !6, line: 520, baseType: !1030, size: 64, offset: 8192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !656, file: !6, line: 523, baseType: !1032, size: 64, offset: 8256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !656, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !656, file: !6, line: 525, baseType: !1037, size: 64, offset: 8384)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !656, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !656, file: !6, line: 533, baseType: !183, size: 64, offset: 8512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !656, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !656, file: !6, line: 535, baseType: !1044, size: 64, offset: 8640)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !656, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !656, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !656, file: !6, line: 540, baseType: !1048, size: 64, offset: 8768)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1050, line: 32, size: 64, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1049, file: !1050, line: 33, baseType: !721, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1049, file: !1050, line: 34, baseType: !721, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !656, file: !6, line: 563, baseType: !236, size: 128, offset: 8832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !656, file: !6, line: 565, baseType: !236, size: 128, offset: 8960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !656, file: !6, line: 568, baseType: !1057, size: 64, offset: 9088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !656, file: !6, line: 570, baseType: !287, size: 32, offset: 9152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !14, line: 2382, baseType: !631, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !632, file: !14, line: 2383, baseType: !1063, size: 64, offset: 512)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !205, line: 194, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1063, file: !205, line: 195, baseType: !953, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !632, file: !14, line: 2385, baseType: !1067, offset: 576)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !981, line: 206, elements: !982)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !632, file: !14, line: 2386, baseType: !1067, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !632, file: !14, line: 2387, baseType: !1067, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !632, file: !14, line: 2388, baseType: !1071, offset: 576)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, elements: !393)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !632, file: !14, line: 2390, baseType: !1067, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !632, file: !14, line: 2391, baseType: !1067, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !632, file: !14, line: 2392, baseType: !1067, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !632, file: !14, line: 2393, baseType: !1067, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !619, file: !14, line: 1197, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1080)
!1080 = !{!1081, !1085, !1089, !1090, !1094, !1100, !1104, !1105, !1106, !1110, !1114, !1118, !1119, !1120, !1126, !1130, !1131, !2071, !2072, !2073, !2074, !2078, !2082, !2129, !2144, !2145}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1079, file: !14, line: 2058, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!467, !618}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1079, file: !14, line: 2059, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !467}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1079, file: !14, line: 2060, baseType: !1086, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1079, file: !14, line: 2062, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !467, !109}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1079, file: !14, line: 2063, baseType: !1095, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!109, !467, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1079, file: !14, line: 2064, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!109, !467}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1079, file: !14, line: 2065, baseType: !1086, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1079, file: !14, line: 2066, baseType: !651, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1079, file: !14, line: 2067, baseType: !1107, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!109, !618, !109}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1079, file: !14, line: 2068, baseType: !1111, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!109, !618, !13}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1079, file: !14, line: 2069, baseType: !1115, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!109, !618}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1079, file: !14, line: 2070, baseType: !1111, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1079, file: !14, line: 2071, baseType: !1115, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1079, file: !14, line: 2072, baseType: !1121, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!109, !502, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1079, file: !14, line: 2073, baseType: !1127, size: 64, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!109, !618, !833, !392}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1079, file: !14, line: 2074, baseType: !651, size: 64, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1079, file: !14, line: 2076, baseType: !1132, size: 64, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!109, !1135, !502}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1137, line: 17, size: 960, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1169, !1170, !2070}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1136, file: !1137, line: 18, baseType: !392, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1136, file: !1137, line: 19, baseType: !221, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1136, file: !1137, line: 20, baseType: !221, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1136, file: !1137, line: 21, baseType: !221, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1136, file: !1137, line: 22, baseType: !221, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1136, file: !1137, line: 23, baseType: !628, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1136, file: !1137, line: 24, baseType: !628, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !1137, line: 25, baseType: !269, size: 256, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1136, file: !1137, line: 26, baseType: !1148, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1137, line: 32, size: 256, elements: !1151)
!1151 = !{!1152, !1157, !1161, !1165}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1150, file: !1137, line: 33, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!183, !1135, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1150, file: !1137, line: 34, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1135, !183}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !1137, line: 35, baseType: !1162, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!183, !1135, !183, !1156}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1150, file: !1137, line: 36, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!109, !1135, !183}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1136, file: !1137, line: 27, baseType: !109, size: 32, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1136, file: !1137, line: 28, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1174)
!1174 = !{!1175, !1181, !1182, !1184, !1185, !1186, !1187, !1188, !1242, !1442, !1451, !1457, !1458, !2060, !2061, !2062, !2063, !2065, !2066, !2069}
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !14, line: 995, baseType: !1176, size: 128)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !14, line: 995, size: 128, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1176, file: !14, line: 996, baseType: !193, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1176, file: !14, line: 997, baseType: !924, size: 128, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1176, file: !14, line: 998, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1173, file: !14, line: 1005, baseType: !356, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1173, file: !14, line: 1006, baseType: !1183, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !205, line: 156, baseType: !7)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1173, file: !14, line: 1007, baseType: !252, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1173, file: !14, line: 1008, baseType: !269, size: 256, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1173, file: !14, line: 1009, baseType: !628, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1173, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1173, file: !14, line: 1011, baseType: !1189, size: 256, offset: 640)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1190)
!1190 = !{!1191, !1212, !1238, !1239, !1240, !1241}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1189, file: !14, line: 949, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1193, line: 34, baseType: !1194)
!1193 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 25, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1194, file: !1193, line: 26, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1198, line: 27, baseType: !1199)
!1198 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1198, line: 13, size: 64, elements: !1200)
!1200 = !{!1201, !1211}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1198, line: 14, baseType: !1202, size: 32)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1198, line: 14, size: 32, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1202, file: !1198, line: 15, baseType: !287, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 16, baseType: !1206, size: 32)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 16, size: 32, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1206, file: !1198, line: 18, baseType: !209, size: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1206, file: !1198, line: 19, baseType: !1210, size: 24, offset: 8)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24, elements: !393)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1199, file: !1198, line: 26, baseType: !279, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1189, file: !14, line: 950, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1221, !1222, !1229, !1230}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1214, file: !19, line: 61, baseType: !329, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1214, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1214, file: !19, line: 63, baseType: !356, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1214, file: !19, line: 65, baseType: !1220, size: 256, offset: 128)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 256, elements: !934)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1214, file: !19, line: 66, baseType: !1063, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1214, file: !19, line: 68, baseType: !1223, size: 192, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1224, line: 41, baseType: !1225)
!1224 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1224, line: 37, size: 192, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !1224, line: 38, baseType: !356, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1225, file: !1224, line: 39, baseType: !236, size: 128, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1214, file: !19, line: 69, baseType: !924, size: 128, align: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1214, file: !19, line: 70, baseType: !1231, offset: 768)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, elements: !214)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1232, file: !19, line: 55, baseType: !109, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1232, file: !19, line: 56, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1189, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1189, file: !14, line: 952, baseType: !473, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1189, file: !14, line: 952, baseType: !473, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1189, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1173, file: !14, line: 1012, baseType: !1243, size: 64, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1246, line: 110, size: 1472, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1264, !1265, !1266, !1267, !1268, !1269, !1387, !1388, !1389, !1390, !1391, !1422, !1425, !1429, !1437}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1245, file: !1246, line: 111, baseType: !252, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1245, file: !1246, line: 112, baseType: !473, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1245, file: !1246, line: 113, baseType: !482, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1245, file: !1246, line: 114, baseType: !473, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1245, file: !1246, line: 115, baseType: !482, size: 32, offset: 160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1245, file: !1246, line: 116, baseType: !473, size: 32, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1245, file: !1246, line: 117, baseType: !482, size: 32, offset: 224)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1245, file: !1246, line: 118, baseType: !473, size: 32, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1245, file: !1246, line: 119, baseType: !482, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1245, file: !1246, line: 120, baseType: !7, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1245, file: !1246, line: 121, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1260, line: 24, baseType: !1261)
!1260 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1260, line: 24, size: 64, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1261, file: !1260, line: 24, baseType: !540, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1245, file: !1246, line: 122, baseType: !1259, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1245, file: !1246, line: 123, baseType: !1259, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1245, file: !1246, line: 124, baseType: !1259, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1245, file: !1246, line: 125, baseType: !1259, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1245, file: !1246, line: 127, baseType: !213, size: 8, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1245, file: !1246, line: 129, baseType: !1270, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1272, line: 195, size: 1728, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1273 = !{!1274, !1275, !1278, !1283, !1292, !1295, !1296, !1303, !1304, !1305, !1306, !1309, !1310, !1311, !1312, !1313, !1351, !1372}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1271, file: !1272, line: 196, baseType: !329, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1271, file: !1272, line: 197, baseType: !1276, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1272, line: 28, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !205, line: 104, baseType: !721)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 198, baseType: !1279, size: 192, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 198, size: 192, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1279, file: !1272, line: 199, baseType: !236, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1279, file: !1272, line: 200, baseType: !816, size: 192, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1271, file: !1272, line: 205, baseType: !1284, size: 320, offset: 256)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1285, line: 48, size: 320, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1284, file: !1285, line: 49, baseType: !252, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1284, file: !1285, line: 55, baseType: !252, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1284, file: !1285, line: 57, baseType: !305, size: 32, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1284, file: !1285, line: 59, baseType: !274, size: 32, offset: 160)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1284, file: !1285, line: 60, baseType: !236, size: 128, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1271, file: !1272, line: 206, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1272, line: 206, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1271, file: !1272, line: 207, baseType: !183, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 208, baseType: !1297, size: 64, offset: 704)
!1297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 208, size: 64, elements: !1298)
!1298 = !{!1299, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1297, file: !1272, line: 209, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1301, line: 8, baseType: !259)
!1301 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1297, file: !1272, line: 210, baseType: !1300, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1271, file: !1272, line: 212, baseType: !1300, size: 64, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1271, file: !1272, line: 213, baseType: !473, size: 32, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1271, file: !1272, line: 214, baseType: !482, size: 32, offset: 864)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1271, file: !1272, line: 215, baseType: !1307, size: 32, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1272, line: 31, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !205, line: 110, baseType: !536)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1271, file: !1272, line: 216, baseType: !302, size: 16, offset: 928)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1271, file: !1272, line: 217, baseType: !302, size: 16, offset: 944)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1271, file: !1272, line: 221, baseType: !842, size: 16, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1272, line: 228, baseType: !217, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 245, baseType: !1314, size: 320, offset: 1088)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 245, size: 320, elements: !1315)
!1315 = !{!1316, !1343}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1314, file: !1272, line: 246, baseType: !1317, size: 320)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1272, line: 114, size: 320, elements: !1318)
!1318 = !{!1319, !1320, !1332, !1335, !1342}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1317, file: !1272, line: 116, baseType: !217, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1272, line: 117, baseType: !1321, size: 64, offset: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !1272, line: 117, size: 64, elements: !1322)
!1322 = !{!1323, !1331}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1272, line: 118, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1272, line: 118, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1324, file: !1272, line: 120, baseType: !300, size: 16)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1324, file: !1272, line: 121, baseType: !1328, size: 48, offset: 16)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 48, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 6)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1321, file: !1272, line: 127, baseType: !217, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1317, file: !1272, line: 129, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1272, line: 102, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1317, file: !1272, line: 130, baseType: !1336, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1272, line: 108, size: 192, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1337, file: !1272, line: 109, baseType: !924, size: 128, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1337, file: !1272, line: 110, baseType: !329, size: 32, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1337, file: !1272, line: 111, baseType: !204, size: 8, offset: 160)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1317, file: !1272, line: 131, baseType: !344, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1272, line: 247, baseType: !1344, size: 320)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1314, file: !1272, line: 247, size: 320, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1344, file: !1272, line: 248, baseType: !217, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1344, file: !1272, line: 249, baseType: !217, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1344, file: !1272, line: 250, baseType: !1333, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1344, file: !1272, line: 251, baseType: !1336, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1344, file: !1272, line: 252, baseType: !392, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 260, baseType: !1352, size: 256, offset: 1408)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 260, size: 256, elements: !1353)
!1353 = !{!1354, !1360}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1352, file: !1272, line: 261, baseType: !1355, size: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1272, line: 134, size: 256, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1355, file: !1272, line: 135, baseType: !183, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1355, file: !1272, line: 136, baseType: !1359, size: 256)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !934)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1272, line: 262, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1352, file: !1272, line: 262, size: 256, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1361, file: !1272, line: 264, baseType: !236, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1361, file: !1272, line: 265, baseType: !1365, size: 128, offset: 128)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1366, line: 22, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1367 = !{!1368, !1371}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1365, file: !1366, line: 23, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1366, line: 23, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1365, file: !1366, line: 24, baseType: !217, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1271, file: !1272, line: 280, baseType: !1373, size: 64, offset: 1664)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1272, line: 176, size: 192, elements: !1375)
!1375 = !{!1376, !1385, !1386}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1374, file: !1272, line: 177, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1272, line: 171, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!109, !1270, !1381, !1383, !1270}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1374, file: !1272, line: 178, baseType: !1270, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1374, file: !1272, line: 179, baseType: !1333, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1245, file: !1246, line: 130, baseType: !1270, size: 64, offset: 832)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1245, file: !1246, line: 131, baseType: !1270, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1245, file: !1246, line: 132, baseType: !1270, size: 64, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1245, file: !1246, line: 135, baseType: !183, size: 64, offset: 1024)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1245, file: !1246, line: 137, baseType: !1392, size: 64, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1394, line: 14, size: 1088, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1395 = !{!1396, !1397, !1406, !1407, !1408, !1409, !1410, !1411}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1393, file: !1394, line: 15, baseType: !329, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1393, file: !1394, line: 17, baseType: !1398, size: 320, offset: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1399, line: 22, size: 320, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1400 = !{!1401, !1402, !1403, !1404}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !1399, line: 23, baseType: !274, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1398, file: !1399, line: 24, baseType: !258, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1398, file: !1399, line: 26, baseType: !236, size: 128, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1398, file: !1399, line: 28, baseType: !1405, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1393, file: !1394, line: 19, baseType: !217, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1393, file: !1394, line: 20, baseType: !252, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1393, file: !1394, line: 23, baseType: !950, size: 128, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1393, file: !1394, line: 24, baseType: !473, size: 32, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1393, file: !1394, line: 29, baseType: !252, size: 64, offset: 704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1393, file: !1394, line: 36, baseType: !1412, size: 320, offset: 768)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1413, line: 15, size: 320, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1413, line: 16, baseType: !274, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1412, file: !1413, line: 18, baseType: !109, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1412, file: !1413, line: 19, baseType: !109, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1412, file: !1413, line: 20, baseType: !109, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1412, file: !1413, line: 21, baseType: !109, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1412, file: !1413, line: 22, baseType: !217, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !1413, line: 23, baseType: !217, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1245, file: !1246, line: 138, baseType: !1423, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !474, line: 18, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1245, file: !1246, line: 139, baseType: !1426, size: 64, offset: 1216)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1428, line: 16, flags: DIFlagFwdDecl)
!1428 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1245, file: !1246, line: 140, baseType: !1430, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1246, line: 25, size: 64, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1431, file: !1246, line: 26, baseType: !287, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1431, file: !1246, line: 27, baseType: !109, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1431, file: !1246, line: 28, baseType: !1436, offset: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, elements: !214)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1246, line: 142, baseType: !1438, size: 128, offset: 1344)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1246, line: 142, size: 128, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1438, file: !1246, line: 143, baseType: !109, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1438, file: !1246, line: 144, baseType: !924, size: 128, align: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1173, file: !14, line: 1013, baseType: !1443, size: 256, offset: 960)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1443, file: !14, line: 971, baseType: !217, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1443, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1443, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1443, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1443, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1443, file: !14, line: 976, baseType: !628, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1173, file: !14, line: 1014, baseType: !1452, size: 128, offset: 1216)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1453, line: 8, size: 128, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1452, file: !1453, line: 9, baseType: !612, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1452, file: !1453, line: 10, baseType: !502, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1173, file: !14, line: 1015, baseType: !467, size: 64, offset: 1344)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1173, file: !14, line: 1016, baseType: !1459, size: 64, offset: 1408)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1462)
!1462 = !{!1463, !1464, !1469, !1473, !1477, !1505, !1506, !1512, !1525, !1533, !1537, !1538, !1981, !1982, !1986, !1991, !1992, !1996, !2000, !2006, !2007, !2011, !2012, !2019, !2023, !2027, !2033, !2037, !2041, !2045, !2049, !2050, !2056}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1461, file: !14, line: 1915, baseType: !655, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1461, file: !14, line: 1916, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!628, !1468, !628, !109}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1461, file: !14, line: 1917, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!424, !1468, !392, !221, !1156}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1461, file: !14, line: 1918, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!424, !1468, !344, !221, !1156}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1461, file: !14, line: 1919, baseType: !1478, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!424, !1481, !1503}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1490, !1491, !1492, !1493}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1482, file: !14, line: 374, baseType: !1468, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1482, file: !14, line: 375, baseType: !628, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1482, file: !14, line: 376, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1481, !427}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1482, file: !14, line: 377, baseType: !183, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1482, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1482, file: !14, line: 379, baseType: !300, size: 16, offset: 288)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !14, line: 380, baseType: !1494, size: 64, offset: 320)
!1494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !14, line: 380, size: 64, elements: !1495)
!1495 = !{!1496, !1499}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1494, file: !14, line: 386, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1494, file: !14, line: 395, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!424, !183}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1461, file: !14, line: 1920, baseType: !1478, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1461, file: !14, line: 1921, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!109, !1481, !1510, !7}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1461, file: !14, line: 1923, baseType: !1513, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!109, !1468, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1518)
!1518 = !{!1519, !1524}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1517, file: !14, line: 1859, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!204, !1516, !344, !109, !628, !540, !7}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1517, file: !14, line: 1860, baseType: !628, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1461, file: !14, line: 1924, baseType: !1526, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!1529, !1468, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1530, line: 59, baseType: !7)
!1530 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1461, file: !14, line: 1925, baseType: !1534, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!427, !1468, !7, !217}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1461, file: !14, line: 1926, baseType: !1534, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1461, file: !14, line: 1927, baseType: !1539, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!109, !1468, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1544)
!1544 = !{!1545, !1554, !1709, !1715, !1722, !1723, !1728, !1729, !1734, !1735, !1738, !1974, !1975, !1976, !1977, !1978, !1979}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 628, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !27, line: 628, size: 128, elements: !1547)
!1547 = !{!1548, !1553}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !27, line: 629, baseType: !1549, size: 128)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !27, line: 629, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1549, file: !27, line: 631, baseType: !217, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1549, file: !27, line: 632, baseType: !217, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1546, file: !27, line: 635, baseType: !924, size: 128, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1543, file: !27, line: 639, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1557)
!1557 = !{!1558, !1707}
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !27, line: 734, baseType: !1559, size: 10240)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !27, line: 734, size: 10240, elements: !1560)
!1560 = !{!1561, !1565, !1578, !1582, !1583, !1584, !1585, !1586, !1587, !1596, !1597, !1598, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1637, !1639, !1642, !1687, !1688, !1689, !1692, !1693, !1694, !1697, !1698, !1699, !1705, !1706}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !27, line: 739, baseType: !1562, size: 512, align: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !27, line: 739, size: 512, align: 512, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1562, file: !27, line: 747, baseType: !287, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1559, file: !27, line: 750, baseType: !1566, size: 128, offset: 512)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1567, line: 218, size: 128, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1568 = !{!1569, !1576, !1577}
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !1567, line: 219, baseType: !1570, size: 32)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !1567, line: 219, size: 32, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1570, file: !1567, line: 220, baseType: !356, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1570, file: !1567, line: 221, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1567, line: 197, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 197, elements: !982)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1566, file: !1567, line: 223, baseType: !7, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1566, file: !1567, line: 224, baseType: !183, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1559, file: !27, line: 752, baseType: !1579, size: 64, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!217, !1468, !217, !217, !217, !217}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1559, file: !27, line: 756, baseType: !217, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1559, file: !27, line: 757, baseType: !217, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1559, file: !27, line: 760, baseType: !217, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1559, file: !27, line: 761, baseType: !217, size: 64, offset: 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1559, file: !27, line: 763, baseType: !217, size: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1559, file: !27, line: 764, baseType: !1588, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1590, line: 299, baseType: !1591)
!1590 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1590, line: 299, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1591, file: !1590, line: 299, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1595, line: 18, baseType: !217)
!1595 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1559, file: !27, line: 773, baseType: !287, size: 32, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1559, file: !27, line: 785, baseType: !287, size: 32, offset: 1120)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1559, file: !27, line: 795, baseType: !1599, size: 64, offset: 1152)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1600, file: !27, line: 727, baseType: !540, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1600, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1559, file: !27, line: 801, baseType: !217, size: 64, offset: 1216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1559, file: !27, line: 804, baseType: !252, size: 64, offset: 1280)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1559, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1559, file: !27, line: 808, baseType: !356, size: 32, offset: 1376)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1559, file: !27, line: 823, baseType: !1284, size: 320, offset: 1408)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1559, file: !27, line: 825, baseType: !236, size: 128, offset: 1728)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1559, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1559, file: !27, line: 849, baseType: !217, size: 64, offset: 1920)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1559, file: !27, line: 850, baseType: !217, size: 64, offset: 1984)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1559, file: !27, line: 852, baseType: !217, size: 64, offset: 2048)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1559, file: !27, line: 853, baseType: !217, size: 64, offset: 2112)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1559, file: !27, line: 854, baseType: !254, size: 64, offset: 2176)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1559, file: !27, line: 855, baseType: !217, size: 64, offset: 2240)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1559, file: !27, line: 856, baseType: !217, size: 64, offset: 2304)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1559, file: !27, line: 857, baseType: !217, size: 64, offset: 2368)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1559, file: !27, line: 858, baseType: !217, size: 64, offset: 2432)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1559, file: !27, line: 865, baseType: !513, size: 32, offset: 2496)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1559, file: !27, line: 867, baseType: !356, size: 32, offset: 2528)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1559, file: !27, line: 869, baseType: !217, size: 64, offset: 2560)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1559, file: !27, line: 869, baseType: !217, size: 64, offset: 2624)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1559, file: !27, line: 869, baseType: !217, size: 64, offset: 2688)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1559, file: !27, line: 869, baseType: !217, size: 64, offset: 2752)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1559, file: !27, line: 870, baseType: !217, size: 64, offset: 2816)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1559, file: !27, line: 870, baseType: !217, size: 64, offset: 2880)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1559, file: !27, line: 870, baseType: !217, size: 64, offset: 2944)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1559, file: !27, line: 871, baseType: !217, size: 64, offset: 3008)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1559, file: !27, line: 871, baseType: !217, size: 64, offset: 3072)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1559, file: !27, line: 871, baseType: !217, size: 64, offset: 3136)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1559, file: !27, line: 871, baseType: !217, size: 64, offset: 3200)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1559, file: !27, line: 873, baseType: !1634, size: 3328, offset: 3264)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 3328, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 52)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1559, file: !27, line: 875, baseType: !1638, size: 1280, offset: 6592)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 1280, elements: !934)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1559, file: !27, line: 877, baseType: !1640, size: 64, offset: 7872)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1559, file: !27, line: 880, baseType: !1643, size: 1088, offset: 7936)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1644, line: 72, baseType: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 23, size: 1088, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1654, !1655, !1656, !1657, !1684, !1685, !1686}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1645, file: !1644, line: 28, baseType: !540, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1645, file: !1644, line: 38, baseType: !254, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1645, file: !1644, line: 40, baseType: !217, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1645, file: !1644, line: 43, baseType: !1284, size: 320, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1645, file: !1644, line: 44, baseType: !1652, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1644, line: 44, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1645, file: !1644, line: 48, baseType: !217, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1645, file: !1644, line: 59, baseType: !269, size: 256, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1645, file: !1644, line: 60, baseType: !183, size: 64, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1645, file: !1644, line: 61, baseType: !1658, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1661, line: 13, size: 1216, elements: !1662)
!1661 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1660, file: !1661, line: 14, baseType: !183, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1660, file: !1661, line: 15, baseType: !217, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1660, file: !1661, line: 17, baseType: !217, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1660, file: !1661, line: 17, baseType: !217, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1660, file: !1661, line: 18, baseType: !217, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1660, file: !1661, line: 18, baseType: !217, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1660, file: !1661, line: 19, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1660, file: !1661, line: 21, baseType: !427, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1660, file: !1661, line: 23, baseType: !427, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1660, file: !1661, line: 24, baseType: !427, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1660, file: !1661, line: 25, baseType: !427, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1660, file: !1661, line: 26, baseType: !427, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1660, file: !1661, line: 27, baseType: !427, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1660, file: !1661, line: 28, baseType: !427, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1660, file: !1661, line: 29, baseType: !427, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1660, file: !1661, line: 30, baseType: !427, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1660, file: !1661, line: 31, baseType: !427, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1660, file: !1661, line: 32, baseType: !427, size: 64, offset: 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1660, file: !1661, line: 33, baseType: !427, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1645, file: !1644, line: 63, baseType: !287, size: 32, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1645, file: !1644, line: 69, baseType: !300, size: 16, offset: 1056)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1645, file: !1644, line: 70, baseType: !840, size: 16, offset: 1072)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1559, file: !27, line: 882, baseType: !217, size: 64, offset: 9024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1559, file: !27, line: 885, baseType: !356, size: 32, offset: 9088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1559, file: !27, line: 886, baseType: !1690, size: 64, offset: 9152)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1559, file: !27, line: 901, baseType: !1423, size: 64, offset: 9216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1559, file: !27, line: 904, baseType: !1468, size: 64, offset: 9280)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1559, file: !27, line: 906, baseType: !1695, size: 64, offset: 9344)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1559, file: !27, line: 930, baseType: !287, size: 32, offset: 9408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1559, file: !27, line: 933, baseType: !287, size: 32, offset: 9440)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1559, file: !27, line: 935, baseType: !1700, size: 64, offset: 9472)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1700, file: !68, line: 104, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1559, file: !27, line: 940, baseType: !252, size: 64, offset: 9536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1559, file: !27, line: 942, baseType: !249, size: 256, offset: 9600)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1556, file: !27, line: 986, baseType: !1708, offset: 10240)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !214)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1543, file: !27, line: 640, baseType: !1710, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1590, line: 297, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1590, line: 297, size: 64, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1711, file: !1590, line: 297, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1595, line: 19, baseType: !217)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 646, baseType: !1716, size: 64, offset: 256)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !27, line: 646, size: 64, elements: !1717)
!1717 = !{!1718, !1721}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1716, file: !27, line: 647, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !217)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1716, file: !27, line: 648, baseType: !1720, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1543, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1543, file: !27, line: 667, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1725, file: !27, line: 580, baseType: !1284, size: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1543, file: !27, line: 670, baseType: !204, size: 8, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1543, file: !27, line: 681, baseType: !1730, size: 256, offset: 512)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 678, size: 256, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1730, file: !27, line: 679, baseType: !816, size: 192, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1730, file: !27, line: 680, baseType: !217, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1543, file: !27, line: 689, baseType: !236, size: 128, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1543, file: !27, line: 691, baseType: !1736, size: 64, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1543, file: !27, line: 694, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1742, line: 563, size: 1024, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1743 = !{!1744, !1748, !1749, !1753, !1757, !1761, !1938, !1942, !1946, !1950, !1951, !1952, !1956, !1960, !1966, !1970}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1741, file: !1742, line: 564, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1542}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1741, file: !1742, line: 569, baseType: !1745, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1741, file: !1742, line: 571, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!109, !1542, !217}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1741, file: !1742, line: 572, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!109, !1542}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1741, file: !1742, line: 578, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!109, !1542, !217, !217, !217}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1741, file: !1742, line: 580, baseType: !1762, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1742, line: 512, size: 896, elements: !1768)
!1768 = !{!1769, !1777, !1778, !1785, !1792, !1802, !1931, !1932, !1934, !1936}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1742, line: 513, baseType: !1770, size: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1742, line: 513, size: 320, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1770, file: !1742, line: 514, baseType: !1542, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1770, file: !1742, line: 515, baseType: !231, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1770, file: !1742, line: 516, baseType: !217, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1770, file: !1742, line: 517, baseType: !217, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1770, file: !1742, line: 518, baseType: !217, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1742, line: 520, baseType: !26, size: 32, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1767, file: !1742, line: 522, baseType: !1779, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1595, line: 22, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 22, size: 64, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1781, file: !1595, line: 22, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1595, line: 15, baseType: !217)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1767, file: !1742, line: 524, baseType: !1786, size: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1590, line: 372, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1590, line: 372, size: 64, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1788, file: !1590, line: 372, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1595, line: 16, baseType: !217)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1742, line: 527, baseType: !1793, size: 64, offset: 512)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !1742, line: 527, size: 64, elements: !1794)
!1794 = !{!1795, !1801}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1793, file: !1742, line: 528, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1595, line: 21, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 21, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1797, file: !1595, line: 21, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1595, line: 14, baseType: !217)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1793, file: !1742, line: 529, baseType: !1780, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1767, file: !1742, line: 534, baseType: !1803, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1805)
!1805 = !{!1806, !1807, !1925, !1930}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !27, line: 75, baseType: !217, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 83, baseType: !1808, size: 320, offset: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !27, line: 83, size: 320, elements: !1809)
!1809 = !{!1810, !1831, !1845, !1849, !1924}
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !27, line: 84, baseType: !1811, size: 320)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !27, line: 84, size: 320, elements: !1812)
!1812 = !{!1813, !1824, !1825, !1830}
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !27, line: 90, baseType: !1814, size: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !27, line: 90, size: 128, elements: !1815)
!1815 = !{!1816, !1817, !1822, !1823}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1814, file: !27, line: 91, baseType: !236, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !27, line: 94, baseType: !1818, size: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !27, line: 94, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1818, file: !27, line: 96, baseType: !183, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1818, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1814, file: !27, line: 102, baseType: !236, size: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1814, file: !27, line: 103, baseType: !236, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1811, file: !27, line: 106, baseType: !463, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !27, line: 107, baseType: !1826, size: 64, offset: 192)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !27, line: 107, size: 64, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1826, file: !27, line: 108, baseType: !217, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1826, file: !27, line: 109, baseType: !217, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1811, file: !27, line: 117, baseType: !217, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !27, line: 119, baseType: !1832, size: 320)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !27, line: 119, size: 320, elements: !1833)
!1833 = !{!1834, !1835, !1838, !1839, !1840}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1832, file: !27, line: 124, baseType: !217, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1832, file: !27, line: 125, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1832, file: !27, line: 126, baseType: !217, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1832, file: !27, line: 127, baseType: !217, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !27, line: 128, baseType: !1841, size: 64, offset: 256)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1832, file: !27, line: 128, size: 64, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1841, file: !27, line: 133, baseType: !217, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1841, file: !27, line: 138, baseType: !252, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !27, line: 141, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !27, line: 141, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1846, file: !27, line: 142, baseType: !217, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !27, line: 144, baseType: !1850, size: 128)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1808, file: !27, line: 144, size: 128, elements: !1851)
!1851 = !{!1852, !1923}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1850, file: !27, line: 146, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1855)
!1855 = !{!1856, !1866, !1887, !1888, !1889, !1890, !1891, !1905, !1906, !1907}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1854, file: !43, line: 127, baseType: !1857, size: 384)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1858)
!1858 = !{!1859, !1860, !1862, !1863, !1864, !1865}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1857, file: !43, line: 22, baseType: !217, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1857, file: !43, line: 23, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1857, file: !43, line: 24, baseType: !1861, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1857, file: !43, line: 25, baseType: !217, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1857, file: !43, line: 26, baseType: !217, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1857, file: !43, line: 27, baseType: !217, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1854, file: !43, line: 128, baseType: !1867, size: 128, offset: 384)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1868, line: 105, size: 128, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1867, file: !1868, line: 110, baseType: !217, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1867, file: !1868, line: 118, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1868, line: 95, size: 448, elements: !1874)
!1874 = !{!1875, !1876, !1882, !1883, !1884, !1885, !1886}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1873, file: !1868, line: 96, baseType: !252, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1873, file: !1868, line: 97, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1868, line: 60, baseType: !1879)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1873, file: !1868, line: 98, baseType: !1877, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1873, file: !1868, line: 99, baseType: !204, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1873, file: !1868, line: 100, baseType: !204, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1873, file: !1868, line: 101, baseType: !924, size: 128, align: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1873, file: !1868, line: 102, baseType: !1881, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1854, file: !43, line: 129, baseType: !675, size: 256, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1854, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1854, file: !43, line: 132, baseType: !217, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1854, file: !43, line: 133, baseType: !1892, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1895)
!1895 = !{!1896, !1900, !1901}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1894, file: !43, line: 83, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1803}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1894, file: !43, line: 89, baseType: !1762, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1894, file: !43, line: 100, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!109, !1853, !217, !217, !109}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1854, file: !43, line: 134, baseType: !183, size: 64, offset: 960)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1854, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !43, line: 136, baseType: !1908, size: 128, offset: 1088)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !43, line: 136, size: 128, elements: !1909)
!1909 = !{!1910, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1908, file: !43, line: 137, baseType: !1911, size: 128)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1912, line: 6, size: 128, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1911, file: !1912, line: 7, baseType: !540, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1911, file: !1912, line: 8, baseType: !540, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !43, line: 138, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !43, line: 138, elements: !1918)
!1918 = !{!1919, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1917, file: !43, line: 138, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1917, file: !43, line: 138, elements: !982)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1917, file: !43, line: 138, baseType: !1922)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1911, elements: !214)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1850, file: !27, line: 147, baseType: !183, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1808, file: !27, line: 161, baseType: !924, size: 128, align: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !27, line: 164, baseType: !1926, size: 32, offset: 384)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !27, line: 164, size: 32, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1926, file: !27, line: 169, baseType: !287, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1926, file: !27, line: 177, baseType: !7, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1804, file: !27, line: 181, baseType: !287, size: 32, offset: 416)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1767, file: !1742, line: 535, baseType: !1803, size: 64, offset: 640)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1767, file: !1742, line: 541, baseType: !1933, size: 64, offset: 704)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1767, file: !1742, line: 545, baseType: !1935, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1767, file: !1742, line: 549, baseType: !1937, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1590, line: 520, baseType: !1803)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1741, file: !1742, line: 581, baseType: !1939, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1765, !1766, !7}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1741, file: !1742, line: 582, baseType: !1943, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1765, !1766, !217, !217}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1741, file: !1742, line: 584, baseType: !1947, size: 64, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!217, !1542}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1741, file: !1742, line: 588, baseType: !1762, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1741, file: !1742, line: 591, baseType: !1762, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1741, file: !1742, line: 597, baseType: !1953, size: 64, offset: 704)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!109, !1542, !217, !183, !109, !109}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1742, line: 603, baseType: !1957, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!344, !1542}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1741, file: !1742, line: 613, baseType: !1961, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!109, !1542, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1741, file: !1742, line: 625, baseType: !1967, size: 64, offset: 896)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1964, !1542, !217}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1741, file: !1742, line: 633, baseType: !1971, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1803, !1542, !217}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1543, file: !27, line: 697, baseType: !217, size: 64, offset: 1024)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1543, file: !27, line: 699, baseType: !1468, size: 64, offset: 1088)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1543, file: !27, line: 700, baseType: !183, size: 64, offset: 1152)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1543, file: !27, line: 711, baseType: !252, size: 64, offset: 1216)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1543, file: !27, line: 717, baseType: !1964, size: 64, offset: 1280)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1543, file: !27, line: 722, baseType: !1980, offset: 1344)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !982)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1461, file: !14, line: 1928, baseType: !217, size: 64, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1461, file: !14, line: 1929, baseType: !1983, size: 64, offset: 832)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!109, !467, !1468}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1461, file: !14, line: 1930, baseType: !1987, size: 64, offset: 896)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!109, !1468, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !183)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1461, file: !14, line: 1931, baseType: !1983, size: 64, offset: 960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1461, file: !14, line: 1932, baseType: !1993, size: 64, offset: 1024)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!109, !1468, !628, !628, !109}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1461, file: !14, line: 1933, baseType: !1997, size: 64, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!109, !109, !1468, !109}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1461, file: !14, line: 1934, baseType: !2001, size: 64, offset: 1152)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!109, !1468, !109, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1461, file: !14, line: 1935, baseType: !1579, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1461, file: !14, line: 1936, baseType: !2008, size: 64, offset: 1280)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!109, !109}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1461, file: !14, line: 1937, baseType: !2001, size: 64, offset: 1344)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1461, file: !14, line: 1938, baseType: !2013, size: 64, offset: 1408)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!424, !2016, !1468, !1156, !221, !7}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2018, line: 59, flags: DIFlagFwdDecl)
!2018 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1461, file: !14, line: 1939, baseType: !2020, size: 64, offset: 1472)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!424, !1468, !1156, !2016, !221, !7}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1461, file: !14, line: 1940, baseType: !2024, size: 64, offset: 1536)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !1468}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1461, file: !14, line: 1941, baseType: !2028, size: 64, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!109, !1468, !109, !2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1461, file: !14, line: 1942, baseType: !2034, size: 64, offset: 1664)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!427, !1468, !109, !628, !628}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1461, file: !14, line: 1944, baseType: !2038, size: 64, offset: 1728)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !1135, !1468}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1461, file: !14, line: 1948, baseType: !2042, size: 64, offset: 1792)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!424, !1468, !628, !1468, !628, !221, !7}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1461, file: !14, line: 1950, baseType: !2046, size: 64, offset: 1856)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!628, !1468, !628, !1468, !628, !628, !7}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1461, file: !14, line: 1953, baseType: !1993, size: 64, offset: 1920)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1461, file: !14, line: 1954, baseType: !2051, size: 64, offset: 1984)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!109, !2054, !7}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1461, file: !14, line: 1955, baseType: !2057, size: 64, offset: 2048)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!109, !2054, !1510, !7}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1173, file: !14, line: 1018, baseType: !540, size: 64, offset: 1472)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1173, file: !14, line: 1020, baseType: !183, size: 64, offset: 1536)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1173, file: !14, line: 1023, baseType: !183, size: 64, offset: 1600)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1173, file: !14, line: 1027, baseType: !2064, size: 64, offset: 1664)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1173, file: !14, line: 1029, baseType: !463, size: 64, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1173, file: !14, line: 1030, baseType: !2067, size: 32, offset: 1792)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2068, line: 8, baseType: !536)
!2068 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1173, file: !14, line: 1031, baseType: !2067, size: 32, offset: 1824)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1136, file: !1137, line: 29, baseType: !183, size: 64, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1079, file: !14, line: 2077, baseType: !1132, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1079, file: !14, line: 2078, baseType: !1132, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1079, file: !14, line: 2079, baseType: !1132, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1079, file: !14, line: 2081, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!424, !618, !109, !392, !221, !628}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1079, file: !14, line: 2082, baseType: !2079, size: 64, offset: 1344)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!424, !618, !109, !344, !221, !628}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1079, file: !14, line: 2083, baseType: !2083, size: 64, offset: 1408)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2086, !467}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2114, !2115, !2116}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2088, file: !51, line: 297, baseType: !950, size: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2088, file: !51, line: 298, baseType: !236, size: 128, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2088, file: !51, line: 299, baseType: !236, size: 128, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2088, file: !51, line: 300, baseType: !236, size: 128, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2088, file: !51, line: 301, baseType: !269, size: 256, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2088, file: !51, line: 302, baseType: !356, size: 32, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2088, file: !51, line: 303, baseType: !287, size: 32, offset: 800)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2088, file: !51, line: 304, baseType: !618, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2088, file: !51, line: 305, baseType: !2099, size: 64, offset: 896)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2100)
!2100 = !{!2101, !2113}
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2099, file: !51, line: 69, baseType: !2102, size: 32)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2099, file: !51, line: 69, size: 32, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2102, file: !51, line: 70, baseType: !473, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2102, file: !51, line: 71, baseType: !482, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2102, file: !51, line: 72, baseType: !2107, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2108, line: 24, baseType: !2109)
!2108 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2108, line: 22, size: 32, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2109, file: !2108, line: 23, baseType: !2112, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2108, line: 20, baseType: !479)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2088, file: !51, line: 306, baseType: !628, size: 64, offset: 960)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2088, file: !51, line: 307, baseType: !217, size: 64, offset: 1024)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2088, file: !51, line: 308, baseType: !2117, size: 576, offset: 1088)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2118)
!2118 = !{!2119, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2117, file: !51, line: 206, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !260)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2117, file: !51, line: 207, baseType: !2120, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2117, file: !51, line: 208, baseType: !2120, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2117, file: !51, line: 209, baseType: !2120, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2117, file: !51, line: 210, baseType: !2120, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2117, file: !51, line: 211, baseType: !2120, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2117, file: !51, line: 212, baseType: !2120, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2117, file: !51, line: 213, baseType: !1300, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2117, file: !51, line: 214, baseType: !1300, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1079, file: !14, line: 2085, baseType: !2130, size: 64, offset: 1472)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!427, !618, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2135, line: 15, size: 256, elements: !2136)
!2135 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2136 = !{!2137, !2138, !2139, !2140, !2141}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2134, file: !2135, line: 16, baseType: !231, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2134, file: !2135, line: 19, baseType: !109, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2134, file: !2135, line: 26, baseType: !217, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2134, file: !2135, line: 33, baseType: !217, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2134, file: !2135, line: 36, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2135, line: 36, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1079, file: !14, line: 2087, baseType: !2130, size: 64, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1079, file: !14, line: 2089, baseType: !651, size: 64, offset: 1600)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !619, file: !14, line: 1198, baseType: !2147, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2150)
!2150 = !{!2151, !2155, !2159, !2163, !2164, !2165, !2166, !2167, !2172, !2177, !2181}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2149, file: !51, line: 325, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!109, !2087}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2149, file: !51, line: 326, baseType: !2156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!2087, !618, !109}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2149, file: !51, line: 327, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !2087}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2149, file: !51, line: 328, baseType: !2152, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2149, file: !51, line: 329, baseType: !2152, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2149, file: !51, line: 330, baseType: !2152, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2149, file: !51, line: 331, baseType: !1107, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2149, file: !51, line: 334, baseType: !2168, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2171, !467}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2149, file: !51, line: 335, baseType: !2173, size: 64, offset: 512)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!109, !467, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2149, file: !51, line: 337, baseType: !2178, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!109, !467, !2171}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2149, file: !51, line: 339, baseType: !2182, size: 64, offset: 640)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!109, !618, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !619, file: !14, line: 1199, baseType: !2187, size: 64, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2190)
!2190 = !{!2191, !2197, !2198, !2202, !2203, !2204, !2219, !2242, !2246, !2247, !2270}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2189, file: !51, line: 431, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!109, !618, !109, !109, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2189, file: !51, line: 432, baseType: !1107, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2189, file: !51, line: 433, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!109, !618, !7}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2189, file: !51, line: 434, baseType: !2199, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2189, file: !51, line: 435, baseType: !1107, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2189, file: !51, line: 436, baseType: !2205, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!109, !618, !109, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2209, file: !51, line: 418, baseType: !109, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2209, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2209, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2209, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2209, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2209, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2209, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2209, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2189, file: !51, line: 437, baseType: !2220, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!109, !618, !2099, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2224, file: !51, line: 346, baseType: !109, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2224, file: !51, line: 347, baseType: !540, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2224, file: !51, line: 348, baseType: !540, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2224, file: !51, line: 349, baseType: !540, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2224, file: !51, line: 350, baseType: !540, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2224, file: !51, line: 351, baseType: !540, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2224, file: !51, line: 352, baseType: !540, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2224, file: !51, line: 353, baseType: !258, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2224, file: !51, line: 355, baseType: !258, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2224, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2224, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2224, file: !51, line: 358, baseType: !540, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2224, file: !51, line: 359, baseType: !540, size: 64, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2224, file: !51, line: 360, baseType: !540, size: 64, offset: 768)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2224, file: !51, line: 361, baseType: !258, size: 64, offset: 832)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2224, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2189, file: !51, line: 438, baseType: !2243, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!109, !618, !2185, !2223}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2189, file: !51, line: 440, baseType: !2220, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2189, file: !51, line: 441, baseType: !2248, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!109, !618, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2252, file: !51, line: 412, baseType: !7, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2252, file: !51, line: 413, baseType: !2256, size: 1344, offset: 64)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2257, size: 1344, elements: !393)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !51, line: 398, baseType: !7, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2257, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2257, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2257, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2257, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2257, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2257, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2257, file: !51, line: 406, baseType: !542, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2257, file: !51, line: 407, baseType: !2268, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !205, line: 132, baseType: !540)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2257, file: !51, line: 408, baseType: !2268, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2189, file: !51, line: 442, baseType: !2199, size: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !619, file: !14, line: 1200, baseType: !2272, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !619, file: !14, line: 1201, baseType: !217, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !619, file: !14, line: 1202, baseType: !217, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !619, file: !14, line: 1203, baseType: !217, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !619, file: !14, line: 1204, baseType: !502, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !619, file: !14, line: 1205, baseType: !1284, size: 320, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !619, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !619, file: !14, line: 1207, baseType: !287, size: 32, offset: 1248)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !619, file: !14, line: 1209, baseType: !183, size: 64, offset: 1280)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !619, file: !14, line: 1211, baseType: !2284, size: 64, offset: 1344)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !619, file: !14, line: 1223, baseType: !2289, size: 64, offset: 1408)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !519, line: 34, size: 64, elements: !2290)
!2290 = !{!2291}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2289, file: !519, line: 35, baseType: !522, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !619, file: !14, line: 1224, baseType: !236, size: 128, offset: 1472)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !619, file: !14, line: 1225, baseType: !2294, size: 64, offset: 1600)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !619, file: !14, line: 1226, baseType: !2297, size: 64, offset: 1664)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !619, file: !14, line: 1227, baseType: !2300, size: 64, offset: 1728)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !619, file: !14, line: 1228, baseType: !2303, size: 64, offset: 1792)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !619, file: !14, line: 1229, baseType: !950, size: 128, offset: 1856)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !619, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !619, file: !14, line: 1231, baseType: !2308, size: 2496, offset: 2048)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2314, !2346}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2308, file: !51, line: 522, baseType: !7, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2308, file: !51, line: 523, baseType: !1284, size: 320, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2308, file: !51, line: 524, baseType: !2313, size: 192, offset: 384)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, elements: !393)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2308, file: !51, line: 525, baseType: !2315, size: 1728, offset: 576)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, size: 1728, elements: !393)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2317)
!2317 = !{!2318, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2316, file: !51, line: 223, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2321)
!2321 = !{!2322, !2323, !2336, !2337}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2320, file: !51, line: 446, baseType: !109, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2320, file: !51, line: 447, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2326, file: !51, line: 313, baseType: !1107, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2326, file: !51, line: 314, baseType: !1107, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2326, file: !51, line: 315, baseType: !1107, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2326, file: !51, line: 316, baseType: !1107, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2326, file: !51, line: 317, baseType: !2152, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2326, file: !51, line: 318, baseType: !2152, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2326, file: !51, line: 319, baseType: !2152, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2326, file: !51, line: 320, baseType: !2182, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2320, file: !51, line: 448, baseType: !655, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2320, file: !51, line: 449, baseType: !2319, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2316, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2316, file: !51, line: 226, baseType: !236, size: 128, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2316, file: !51, line: 227, baseType: !217, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2316, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2316, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2316, file: !51, line: 230, baseType: !2120, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2316, file: !51, line: 231, baseType: !2120, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2316, file: !51, line: 232, baseType: !183, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2308, file: !51, line: 526, baseType: !2347, size: 192, offset: 2304)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2324, size: 192, elements: !393)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !619, file: !14, line: 1233, baseType: !2349, size: 2368, offset: 4544)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2350)
!2350 = !{!2351, !2352, !2353}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2349, file: !14, line: 1185, baseType: !302, size: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2349, file: !14, line: 1186, baseType: !302, size: 16, offset: 16)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2349, file: !14, line: 1187, baseType: !2354, size: 2304, offset: 64)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2355, size: 2304, elements: !393)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2356, line: 12, size: 768, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2357 = !{!2358, !2366, !2367, !3558, !3559}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2355, file: !2356, line: 13, baseType: !2359, size: 384)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2360, line: 17, size: 384, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2359, file: !2360, line: 18, baseType: !109, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2359, file: !2360, line: 19, baseType: !109, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2359, file: !2360, line: 20, baseType: !1223, size: 192, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2359, file: !2360, line: 22, baseType: !924, size: 128, align: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2355, file: !2356, line: 14, baseType: !778, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2355, file: !2356, line: 15, baseType: !2368, size: 64, offset: 448)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2369, line: 16, size: 64, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2368, file: !2369, line: 17, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2018, line: 746, size: 58368, elements: !2374)
!2374 = !{!2375, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2455, !2466, !2561, !2565, !2568, !2599, !2600, !2601, !2602, !2613, !2615, !2616, !2617, !2618, !2619, !2620, !2631, !2632, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2649, !2650, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2738, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2786, !2792, !2793, !2794, !2795, !2796, !2800, !2803, !2810, !2815, !2818, !2821, !2824, !2827, !2963, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !3001, !3002, !3003, !3012, !3020, !3021, !3022, !3023, !3024, !3029, !3030, !3031, !3034, !3035, !3038, !3041, !3044, !3052, !3055, !3056, !3142, !3143, !3144, !3145, !3146, !3152, !3153, !3154, !3155, !3158, !3159, !3162, !3165, !3166, !3169, !3170, !3171, !3174, !3175, !3176, !3177, !3178, !3179, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3211, !3212, !3218, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3230, !3302, !3304, !3305, !3306, !3307, !3308, !3309, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2373, file: !2018, line: 752, baseType: !2376, size: 192)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2377, line: 56, size: 192, elements: !2378)
!2377 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !2377, line: 57, baseType: !217, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2376, file: !2377, line: 58, baseType: !217, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2376, file: !2377, line: 59, baseType: !536, size: 32, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2376, file: !2377, line: 61, baseType: !536, size: 32, offset: 160)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2373, file: !2018, line: 754, baseType: !7, size: 32, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2373, file: !2018, line: 767, baseType: !183, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2373, file: !2018, line: 768, baseType: !329, size: 32, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2373, file: !2018, line: 770, baseType: !7, size: 32, offset: 352)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2373, file: !2018, line: 771, baseType: !7, size: 32, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2373, file: !2018, line: 774, baseType: !109, size: 32, offset: 416)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2373, file: !2018, line: 775, baseType: !2390, size: 128, offset: 448)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2391, line: 58, size: 128, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2392 = !{!2393, !2394, !2399, !2400}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2390, file: !2391, line: 59, baseType: !193, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !2391, line: 60, baseType: !2395, size: 32, offset: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !2391, line: 60, size: 32, elements: !2396)
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2395, file: !2391, line: 61, baseType: !7, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2395, file: !2391, line: 62, baseType: !287, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2390, file: !2391, line: 65, baseType: !300, size: 16, offset: 96)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2390, file: !2391, line: 65, baseType: !300, size: 16, offset: 112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2373, file: !2018, line: 776, baseType: !7, size: 32, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2373, file: !2018, line: 777, baseType: !217, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2373, file: !2018, line: 778, baseType: !2372, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2373, file: !2018, line: 787, baseType: !109, size: 32, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2373, file: !2018, line: 788, baseType: !109, size: 32, offset: 800)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2373, file: !2018, line: 790, baseType: !109, size: 32, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2373, file: !2018, line: 792, baseType: !109, size: 32, offset: 864)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2373, file: !2018, line: 793, baseType: !109, size: 32, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2373, file: !2018, line: 794, baseType: !109, size: 32, offset: 928)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2373, file: !2018, line: 795, baseType: !7, size: 32, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2373, file: !2018, line: 797, baseType: !2412, size: 2048, offset: 1024)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2018, line: 551, size: 2048, elements: !2413)
!2413 = !{!2414, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2434, !2437, !2438, !2439}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2412, file: !2018, line: 553, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2018, line: 411, size: 128, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2415, file: !2018, line: 412, baseType: !217, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2415, file: !2018, line: 413, baseType: !536, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2412, file: !2018, line: 554, baseType: !816, size: 192, align: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2412, file: !2018, line: 555, baseType: !540, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2412, file: !2018, line: 556, baseType: !540, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2412, file: !2018, line: 558, baseType: !236, size: 128, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2412, file: !2018, line: 559, baseType: !7, size: 32, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2412, file: !2018, line: 561, baseType: !540, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2412, file: !2018, line: 562, baseType: !540, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2412, file: !2018, line: 563, baseType: !540, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2412, file: !2018, line: 564, baseType: !540, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2412, file: !2018, line: 565, baseType: !258, size: 64, offset: 896)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2412, file: !2018, line: 566, baseType: !540, size: 64, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2412, file: !2018, line: 568, baseType: !540, size: 64, offset: 1024)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2412, file: !2018, line: 571, baseType: !109, size: 32, offset: 1088)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2412, file: !2018, line: 572, baseType: !2433, size: 64, offset: 1152)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2412, file: !2018, line: 574, baseType: !2435, size: 64, offset: 1216)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2018, line: 49, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2412, file: !2018, line: 576, baseType: !2435, size: 64, offset: 1280)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2412, file: !2018, line: 578, baseType: !217, size: 64, offset: 1344)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2412, file: !2018, line: 588, baseType: !2440, size: 512, align: 512, offset: 1536)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2018, line: 497, size: 512, align: 512, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2440, file: !2018, line: 498, baseType: !540, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2440, file: !2018, line: 499, baseType: !540, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2440, file: !2018, line: 500, baseType: !540, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2440, file: !2018, line: 501, baseType: !536, size: 32, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2440, file: !2018, line: 502, baseType: !536, size: 32, offset: 224)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2440, file: !2018, line: 503, baseType: !217, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2440, file: !2018, line: 504, baseType: !217, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2440, file: !2018, line: 505, baseType: !217, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2440, file: !2018, line: 506, baseType: !2451, size: 64, align: 64, offset: 448)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2018, line: 445, size: 64, align: 64, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2451, file: !2018, line: 446, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2451, file: !2018, line: 447, baseType: !7, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2373, file: !2018, line: 798, baseType: !2456, size: 384, offset: 3072)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2018, line: 592, size: 384, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2456, file: !2018, line: 593, baseType: !236, size: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2456, file: !2018, line: 594, baseType: !217, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2456, file: !2018, line: 595, baseType: !217, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2456, file: !2018, line: 596, baseType: !7, size: 32, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2456, file: !2018, line: 597, baseType: !302, size: 16, offset: 288)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2456, file: !2018, line: 598, baseType: !302, size: 16, offset: 304)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2456, file: !2018, line: 600, baseType: !2465, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2373, file: !2018, line: 799, baseType: !2467, size: 1792, offset: 3456)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2018, line: 610, size: 1792, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2558, !2559}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2467, file: !2018, line: 611, baseType: !816, size: 192, align: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2467, file: !2018, line: 618, baseType: !540, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2467, file: !2018, line: 619, baseType: !540, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2467, file: !2018, line: 620, baseType: !540, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2467, file: !2018, line: 621, baseType: !540, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2467, file: !2018, line: 622, baseType: !540, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2467, file: !2018, line: 629, baseType: !258, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2467, file: !2018, line: 630, baseType: !540, size: 64, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2018, line: 631, baseType: !7, size: 32, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2467, file: !2018, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2467, file: !2018, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2467, file: !2018, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2467, file: !2018, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2467, file: !2018, line: 662, baseType: !2483, size: 512, offset: 704)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2484)
!2484 = !{!2485, !2493, !2494, !2499, !2554, !2555, !2556, !2557}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2483, file: !57, line: 119, baseType: !2486, size: 256)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2487, line: 9, size: 256, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2486, file: !2487, line: 10, baseType: !816, size: 192, align: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2486, file: !2487, line: 11, baseType: !2491, size: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2492, line: 29, baseType: !258)
!2492 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2483, file: !57, line: 120, baseType: !2491, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2483, file: !57, line: 121, baseType: !2495, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!56, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2483, file: !57, line: 122, baseType: !2500, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2502)
!2502 = !{!2503, !2528, !2529, !2532, !2537, !2538, !2549, !2553}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2501, file: !57, line: 160, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2505, file: !57, line: 216, baseType: !274, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2505, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2505, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2505, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2505, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2505, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2505, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2505, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2505, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2505, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2505, file: !57, line: 227, baseType: !302, size: 16, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2505, file: !57, line: 228, baseType: !302, size: 16, offset: 208)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2505, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2505, file: !57, line: 235, baseType: !2491, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2505, file: !57, line: 236, baseType: !2498, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2505, file: !57, line: 237, baseType: !2491, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2505, file: !57, line: 238, baseType: !2498, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2505, file: !57, line: 239, baseType: !2525, size: 4096, align: 512, offset: 512)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2501, size: 4096, align: 512, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: 8)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2501, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2501, file: !57, line: 162, baseType: !2530, size: 32, offset: 96)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !205, line: 32, baseType: !2531)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !223, line: 96, baseType: !109)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2501, file: !57, line: 163, baseType: !2533, size: 32, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !509, line: 274, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !509, line: 274, size: 32, elements: !2535)
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2534, file: !509, line: 274, baseType: !513, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2501, file: !57, line: 164, baseType: !2498, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2501, file: !57, line: 165, baseType: !2539, size: 128, offset: 256)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2487, line: 14, size: 128, elements: !2540)
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2539, file: !2487, line: 15, baseType: !2542, size: 128)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !817, line: 26, size: 128, elements: !2543)
!2543 = !{!2544, !2548}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2542, file: !817, line: 27, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !817, line: 12, size: 64, elements: !2546)
!2546 = !{!2547}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2545, file: !817, line: 13, baseType: !821, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2542, file: !817, line: 28, baseType: !821, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2501, file: !57, line: 166, baseType: !2550, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2491}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2501, file: !57, line: 167, baseType: !2491, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2483, file: !57, line: 123, baseType: !209, size: 8, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2483, file: !57, line: 124, baseType: !209, size: 8, offset: 456)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2483, file: !57, line: 125, baseType: !209, size: 8, offset: 464)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2483, file: !57, line: 126, baseType: !209, size: 8, offset: 472)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2467, file: !2018, line: 671, baseType: !2483, size: 512, offset: 1216)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2467, file: !2018, line: 679, baseType: !2560, size: 64, offset: 1728)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2373, file: !2018, line: 800, baseType: !2562, size: 64, offset: 5248)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2018, line: 800, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2373, file: !2018, line: 809, baseType: !2566, size: 64, offset: 5312)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2018, line: 70, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2373, file: !2018, line: 825, baseType: !2569, size: 2048, align: 512, offset: 5632)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2018, line: 509, size: 2048, align: 512, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2569, file: !2018, line: 511, baseType: !540, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2569, file: !2018, line: 512, baseType: !540, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2569, file: !2018, line: 513, baseType: !540, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2569, file: !2018, line: 514, baseType: !540, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2569, file: !2018, line: 515, baseType: !540, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2569, file: !2018, line: 516, baseType: !540, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2569, file: !2018, line: 518, baseType: !540, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2569, file: !2018, line: 519, baseType: !540, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2569, file: !2018, line: 520, baseType: !258, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2569, file: !2018, line: 522, baseType: !540, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2569, file: !2018, line: 523, baseType: !540, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2569, file: !2018, line: 524, baseType: !258, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2569, file: !2018, line: 526, baseType: !258, size: 64, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2569, file: !2018, line: 527, baseType: !540, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2569, file: !2018, line: 529, baseType: !540, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2569, file: !2018, line: 530, baseType: !540, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2569, file: !2018, line: 531, baseType: !540, size: 64, offset: 1024)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2569, file: !2018, line: 532, baseType: !540, size: 64, offset: 1088)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2569, file: !2018, line: 533, baseType: !540, size: 64, offset: 1152)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2569, file: !2018, line: 535, baseType: !540, size: 64, offset: 1216)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2569, file: !2018, line: 536, baseType: !540, size: 64, offset: 1280)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2569, file: !2018, line: 537, baseType: !540, size: 64, offset: 1344)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2569, file: !2018, line: 538, baseType: !540, size: 64, offset: 1408)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2569, file: !2018, line: 539, baseType: !540, size: 64, offset: 1472)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2569, file: !2018, line: 540, baseType: !540, size: 64, offset: 1536)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2569, file: !2018, line: 541, baseType: !540, size: 64, offset: 1600)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2569, file: !2018, line: 542, baseType: !540, size: 64, offset: 1664)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2569, file: !2018, line: 543, baseType: !540, size: 64, offset: 1728)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2373, file: !2018, line: 833, baseType: !7, size: 32, offset: 7680)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2373, file: !2018, line: 836, baseType: !7, size: 32, offset: 7712)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2373, file: !2018, line: 837, baseType: !109, size: 32, offset: 7744)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2373, file: !2018, line: 838, baseType: !2603, size: 64, offset: 7808)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2606, line: 19, baseType: !2607)
!2606 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2606, line: 19, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2607, file: !2606, line: 19, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !2611)
!2611 = !{!2612}
!2612 = !DISubrange(count: 1)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2373, file: !2018, line: 839, baseType: !2614, size: 64, offset: 7872)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2373, file: !2018, line: 840, baseType: !2605, size: 64, offset: 7936)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2373, file: !2018, line: 841, baseType: !183, size: 64, offset: 8000)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2373, file: !2018, line: 843, baseType: !302, size: 16, offset: 8064)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2373, file: !2018, line: 845, baseType: !302, size: 16, offset: 8080)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2373, file: !2018, line: 848, baseType: !109, size: 32, offset: 8096)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2373, file: !2018, line: 849, baseType: !2621, size: 32, offset: 8128)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2018, line: 718, size: 32, elements: !2622)
!2622 = !{!2623, !2630}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2621, file: !2018, line: 724, baseType: !2624, size: 32)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !2018, line: 719, size: 32, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2624, file: !2018, line: 720, baseType: !209, size: 8)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2624, file: !2018, line: 721, baseType: !209, size: 8, offset: 8)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2624, file: !2018, line: 722, baseType: !209, size: 8, offset: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2624, file: !2018, line: 723, baseType: !209, size: 8, offset: 24)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2621, file: !2018, line: 725, baseType: !536, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2373, file: !2018, line: 850, baseType: !236, size: 128, offset: 8192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2373, file: !2018, line: 851, baseType: !2633, size: 64, offset: 8320)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2018, line: 60, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2373, file: !2018, line: 855, baseType: !217, size: 64, offset: 8384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2373, file: !2018, line: 856, baseType: !209, size: 8, offset: 8448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2373, file: !2018, line: 857, baseType: !209, size: 8, offset: 8456)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2373, file: !2018, line: 858, baseType: !109, size: 32, offset: 8480)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2373, file: !2018, line: 859, baseType: !236, size: 128, offset: 8512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2373, file: !2018, line: 860, baseType: !109, size: 32, offset: 8640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2373, file: !2018, line: 861, baseType: !236, size: 128, offset: 8704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2373, file: !2018, line: 873, baseType: !2643, size: 256, offset: 8832)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2018, line: 376, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2643, file: !2018, line: 381, baseType: !217, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2643, file: !2018, line: 384, baseType: !542, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2643, file: !2018, line: 389, baseType: !542, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2643, file: !2018, line: 392, baseType: !542, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2373, file: !2018, line: 875, baseType: !236, size: 128, offset: 9088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2373, file: !2018, line: 877, baseType: !2651, size: 320, offset: 9216)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2652, line: 86, size: 320, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2651, file: !2652, line: 87, baseType: !109, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2651, file: !2652, line: 88, baseType: !236, size: 128, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2651, file: !2652, line: 89, baseType: !236, size: 128, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2373, file: !2018, line: 878, baseType: !816, size: 192, align: 64, offset: 9536)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2373, file: !2018, line: 881, baseType: !1555, size: 64, offset: 9728)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2373, file: !2018, line: 882, baseType: !1555, size: 64, offset: 9792)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2373, file: !2018, line: 884, baseType: !109, size: 32, offset: 9856)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2373, file: !2018, line: 885, baseType: !109, size: 32, offset: 9888)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2373, file: !2018, line: 886, baseType: !109, size: 32, offset: 9920)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2373, file: !2018, line: 888, baseType: !109, size: 32, offset: 9952)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2373, file: !2018, line: 890, baseType: !217, size: 64, offset: 9984)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2373, file: !2018, line: 893, baseType: !7, size: 32, offset: 10048)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2373, file: !2018, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2373, file: !2018, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2373, file: !2018, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2373, file: !2018, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2373, file: !2018, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2373, file: !2018, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2373, file: !2018, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2373, file: !2018, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2373, file: !2018, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2373, file: !2018, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2373, file: !2018, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2373, file: !2018, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2373, file: !2018, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2373, file: !2018, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2373, file: !2018, line: 969, baseType: !217, size: 64, offset: 10176)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2373, file: !2018, line: 971, baseType: !2682, size: 448, offset: 10240)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2683)
!2683 = !{!2684, !2685, !2690}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2682, file: !62, line: 26, baseType: !217, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2682, file: !62, line: 27, baseType: !2686, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!427, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !2682, file: !62, line: 28, baseType: !2691, size: 320, offset: 128)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !62, line: 28, size: 320, elements: !2692)
!2692 = !{!2693, !2703, !2728}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2691, file: !62, line: 37, baseType: !2694, size: 320)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !62, line: 30, size: 320, elements: !2695)
!2695 = !{!2696, !2698, !2699, !2700, !2701, !2702}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2694, file: !62, line: 31, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2694, file: !62, line: 32, baseType: !536, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !62, line: 33, baseType: !536, size: 32, offset: 96)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2694, file: !62, line: 34, baseType: !536, size: 32, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2694, file: !62, line: 35, baseType: !540, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2694, file: !62, line: 36, baseType: !2697, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2691, file: !62, line: 47, baseType: !2704, size: 192)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !62, line: 39, size: 192, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2727}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2704, file: !62, line: 40, baseType: !2530, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2704, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !62, line: 42, baseType: !2709, size: 64, offset: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !62, line: 42, size: 64, elements: !2710)
!2710 = !{!2711, !2719}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2709, file: !62, line: 43, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2714, line: 7, size: 128, elements: !2715)
!2714 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2715 = !{!2716, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2713, file: !2714, line: 8, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !223, line: 93, baseType: !260)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2713, file: !2714, line: 9, baseType: !260, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2709, file: !62, line: 44, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2722, line: 7, size: 64, elements: !2723)
!2722 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2723 = !{!2724, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2721, file: !2722, line: 8, baseType: !2725, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2722, line: 5, baseType: !721)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2721, file: !2722, line: 9, baseType: !721, size: 32, offset: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2704, file: !62, line: 46, baseType: !540, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2691, file: !62, line: 55, baseType: !2729, size: 256)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !62, line: 49, size: 256, elements: !2730)
!2730 = !{!2731, !2734, !2735, !2736, !2737}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2729, file: !62, line: 50, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2729, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2729, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2729, file: !62, line: 53, baseType: !217, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2729, file: !62, line: 54, baseType: !217, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2373, file: !2018, line: 973, baseType: !2739, size: 32, offset: 10688)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !205, line: 27, baseType: !2740)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !223, line: 28, baseType: !109)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2373, file: !2018, line: 974, baseType: !2739, size: 32, offset: 10720)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2373, file: !2018, line: 978, baseType: !217, size: 64, offset: 10752)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2373, file: !2018, line: 987, baseType: !2372, size: 64, offset: 10816)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2373, file: !2018, line: 990, baseType: !2372, size: 64, offset: 10880)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2373, file: !2018, line: 995, baseType: !236, size: 128, offset: 10944)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2373, file: !2018, line: 996, baseType: !236, size: 128, offset: 11072)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2373, file: !2018, line: 997, baseType: !2372, size: 64, offset: 11200)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2373, file: !2018, line: 1005, baseType: !236, size: 128, offset: 11264)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2373, file: !2018, line: 1006, baseType: !236, size: 128, offset: 11392)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2373, file: !2018, line: 1009, baseType: !1213, size: 64, offset: 11520)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2373, file: !2018, line: 1010, baseType: !2752, size: 512, offset: 11584)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 512, elements: !934)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2373, file: !2018, line: 1011, baseType: !236, size: 128, offset: 12096)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2373, file: !2018, line: 1012, baseType: !236, size: 128, offset: 12224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2373, file: !2018, line: 1014, baseType: !674, size: 64, offset: 12352)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2373, file: !2018, line: 1017, baseType: !833, size: 64, offset: 12416)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2373, file: !2018, line: 1020, baseType: !833, size: 64, offset: 12480)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2373, file: !2018, line: 1023, baseType: !183, size: 64, offset: 12544)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2373, file: !2018, line: 1025, baseType: !540, size: 64, offset: 12608)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2373, file: !2018, line: 1026, baseType: !540, size: 64, offset: 12672)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2373, file: !2018, line: 1031, baseType: !540, size: 64, offset: 12736)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2373, file: !2018, line: 1032, baseType: !2763, size: 192, offset: 12800)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2018, line: 324, size: 192, elements: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2763, file: !2018, line: 326, baseType: !540, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2763, file: !2018, line: 327, baseType: !540, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2763, file: !2018, line: 328, baseType: !274, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2373, file: !2018, line: 1041, baseType: !217, size: 64, offset: 12992)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2373, file: !2018, line: 1042, baseType: !217, size: 64, offset: 13056)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2373, file: !2018, line: 1045, baseType: !540, size: 64, offset: 13120)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2373, file: !2018, line: 1048, baseType: !540, size: 64, offset: 13184)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2373, file: !2018, line: 1051, baseType: !217, size: 64, offset: 13248)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2373, file: !2018, line: 1052, baseType: !217, size: 64, offset: 13312)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2373, file: !2018, line: 1055, baseType: !2775, size: 640, offset: 13376)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2776, line: 132, size: 640, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2777 = !{!2778, !2784, !2785}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2775, file: !2776, line: 133, baseType: !2779, size: 576)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 576, elements: !393)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2776, line: 117, size: 192, elements: !2781)
!2781 = !{!2782, !2783}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2780, file: !2776, line: 118, baseType: !540, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2780, file: !2776, line: 119, baseType: !2539, size: 128, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2775, file: !2776, line: 134, baseType: !7, size: 32, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2775, file: !2776, line: 135, baseType: !7, size: 32, offset: 608)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2373, file: !2018, line: 1058, baseType: !2787, size: 448, offset: 14016)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2776, line: 144, size: 448, elements: !2788)
!2788 = !{!2789, !2790, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2787, file: !2776, line: 145, baseType: !924, size: 128, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2787, file: !2776, line: 146, baseType: !269, size: 256, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2787, file: !2776, line: 147, baseType: !7, size: 32, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2373, file: !2018, line: 1064, baseType: !1243, size: 64, offset: 14464)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2373, file: !2018, line: 1067, baseType: !1243, size: 64, offset: 14528)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2373, file: !2018, line: 1070, baseType: !1243, size: 64, offset: 14592)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2373, file: !2018, line: 1074, baseType: !1270, size: 64, offset: 14656)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2373, file: !2018, line: 1084, baseType: !2797, size: 128, offset: 14720)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 128, elements: !2798)
!2798 = !{!2799}
!2799 = !DISubrange(count: 16)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2373, file: !2018, line: 1086, baseType: !2801, size: 64, offset: 14848)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2018, line: 55, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2373, file: !2018, line: 1089, baseType: !2804, size: 64, offset: 14912)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2805, line: 12, size: 64, elements: !2806)
!2805 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2804, file: !2805, line: 13, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2805, line: 8, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2373, file: !2018, line: 1090, baseType: !2811, size: 128, offset: 14976)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2812, line: 13, size: 128, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2813 = !{!2814}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2811, file: !2812, line: 14, baseType: !236, size: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2373, file: !2018, line: 1097, baseType: !2816, size: 64, offset: 15104)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2018, line: 50, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2373, file: !2018, line: 1100, baseType: !2819, size: 64, offset: 15168)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2018, line: 1100, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2373, file: !2018, line: 1103, baseType: !2822, size: 64, offset: 15232)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2018, line: 53, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2373, file: !2018, line: 1107, baseType: !2825, size: 64, offset: 15296)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2018, line: 56, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2373, file: !2018, line: 1110, baseType: !2828, size: 64, offset: 15360)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2830, line: 93, size: 8768, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2879, !2888, !2889, !2891, !2892, !2893, !2894, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2932, !2933, !2940, !2950, !2953, !2954, !2957, !2958, !2959, !2960, !2961, !2962}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2829, file: !2830, line: 94, baseType: !329, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2829, file: !2830, line: 95, baseType: !287, size: 32, offset: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2829, file: !2830, line: 96, baseType: !109, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2829, file: !2830, line: 97, baseType: !109, size: 32, offset: 96)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2829, file: !2830, line: 98, baseType: !236, size: 128, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2829, file: !2830, line: 100, baseType: !1223, size: 192, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2829, file: !2830, line: 103, baseType: !2372, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2829, file: !2830, line: 106, baseType: !2840, size: 192, offset: 512)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1428, line: 32, size: 192, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2840, file: !1428, line: 33, baseType: !236, size: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2840, file: !1428, line: 34, baseType: !2844, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2845, line: 25, baseType: !2846)
!2845 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2845, line: 23, size: 64, elements: !2847)
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2846, file: !2845, line: 24, baseType: !2610, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2829, file: !2830, line: 109, baseType: !1063, size: 64, offset: 704)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2829, file: !2830, line: 112, baseType: !109, size: 32, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2829, file: !2830, line: 114, baseType: !109, size: 32, offset: 800)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2829, file: !2830, line: 115, baseType: !2372, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2829, file: !2830, line: 118, baseType: !109, size: 32, offset: 896)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2829, file: !2830, line: 119, baseType: !7, size: 32, offset: 928)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2829, file: !2830, line: 121, baseType: !2856, size: 64, offset: 960)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2830, line: 80, size: 448, elements: !2858)
!2858 = !{!2859, !2860, !2866}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2857, file: !2830, line: 81, baseType: !287, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2857, file: !2830, line: 82, baseType: !2861, size: 128, offset: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2830, line: 75, size: 128, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2861, file: !2830, line: 76, baseType: !2372, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2861, file: !2830, line: 77, baseType: !2865, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2857, file: !2830, line: 83, baseType: !675, size: 256, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2829, file: !2830, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2829, file: !2830, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2829, file: !2830, line: 138, baseType: !7, size: 32, offset: 1056)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2829, file: !2830, line: 139, baseType: !236, size: 128, offset: 1088)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2829, file: !2830, line: 142, baseType: !2483, size: 512, offset: 1216)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2829, file: !2830, line: 143, baseType: !2491, size: 64, offset: 1728)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2829, file: !2830, line: 150, baseType: !2874, size: 256, offset: 1792)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2875, size: 256, elements: !823)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2830, line: 38, size: 128, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2875, file: !2830, line: 39, baseType: !540, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2875, file: !2830, line: 40, baseType: !540, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2829, file: !2830, line: 156, baseType: !2880, size: 192, offset: 2048)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2830, line: 66, size: 192, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2880, file: !2830, line: 67, baseType: !2883, size: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2830, line: 47, size: 192, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2883, file: !2830, line: 48, baseType: !254, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2883, file: !2830, line: 49, baseType: !254, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2883, file: !2830, line: 50, baseType: !254, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2829, file: !2830, line: 160, baseType: !2775, size: 640, offset: 2240)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2829, file: !2830, line: 163, baseType: !2890, size: 256, offset: 2880)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 256, elements: !934)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2829, file: !2830, line: 169, baseType: !1213, size: 64, offset: 3136)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2829, file: !2830, line: 172, baseType: !109, size: 32, offset: 3200)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2829, file: !2830, line: 174, baseType: !320, size: 64, offset: 3264)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2829, file: !2830, line: 185, baseType: !2895, size: 64, offset: 3328)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !509, line: 860, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 853, size: 64, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2896, file: !509, line: 858, baseType: !508, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !509, line: 859, baseType: !356, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2829, file: !2830, line: 186, baseType: !540, size: 64, offset: 3392)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2829, file: !2830, line: 186, baseType: !540, size: 64, offset: 3456)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2829, file: !2830, line: 186, baseType: !540, size: 64, offset: 3520)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2829, file: !2830, line: 186, baseType: !540, size: 64, offset: 3584)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2829, file: !2830, line: 187, baseType: !540, size: 64, offset: 3648)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2829, file: !2830, line: 188, baseType: !540, size: 64, offset: 3712)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2829, file: !2830, line: 189, baseType: !2763, size: 192, offset: 3776)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2829, file: !2830, line: 190, baseType: !217, size: 64, offset: 3968)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2829, file: !2830, line: 190, baseType: !217, size: 64, offset: 4032)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2829, file: !2830, line: 190, baseType: !217, size: 64, offset: 4096)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2829, file: !2830, line: 190, baseType: !217, size: 64, offset: 4160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2829, file: !2830, line: 191, baseType: !217, size: 64, offset: 4224)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2829, file: !2830, line: 191, baseType: !217, size: 64, offset: 4288)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2829, file: !2830, line: 191, baseType: !217, size: 64, offset: 4352)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2829, file: !2830, line: 191, baseType: !217, size: 64, offset: 4416)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2829, file: !2830, line: 192, baseType: !217, size: 64, offset: 4480)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2829, file: !2830, line: 192, baseType: !217, size: 64, offset: 4544)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2829, file: !2830, line: 192, baseType: !217, size: 64, offset: 4608)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2829, file: !2830, line: 192, baseType: !217, size: 64, offset: 4672)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2829, file: !2830, line: 193, baseType: !217, size: 64, offset: 4736)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2829, file: !2830, line: 193, baseType: !217, size: 64, offset: 4800)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2829, file: !2830, line: 194, baseType: !2922, size: 448, offset: 4864)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2923, line: 12, size: 448, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2922, file: !2923, line: 15, baseType: !540, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2922, file: !2923, line: 17, baseType: !540, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2922, file: !2923, line: 19, baseType: !540, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2922, file: !2923, line: 21, baseType: !540, size: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2922, file: !2923, line: 29, baseType: !540, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2922, file: !2923, line: 35, baseType: !540, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2922, file: !2923, line: 44, baseType: !540, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2829, file: !2830, line: 202, baseType: !542, size: 64, offset: 5312)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2829, file: !2830, line: 213, baseType: !2934, size: 2048, offset: 5376)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 2048, elements: !2798)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2936, line: 43, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2935, file: !2936, line: 44, baseType: !224, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2935, file: !2936, line: 45, baseType: !224, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2829, file: !2830, line: 216, baseType: !2941, size: 448, offset: 7424)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2830, line: 30, size: 448, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2941, file: !2830, line: 31, baseType: !109, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2941, file: !2830, line: 32, baseType: !427, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2941, file: !2830, line: 33, baseType: !217, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2941, file: !2830, line: 34, baseType: !540, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2941, file: !2830, line: 34, baseType: !540, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2941, file: !2830, line: 35, baseType: !217, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2941, file: !2830, line: 35, baseType: !217, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2829, file: !2830, line: 219, baseType: !2951, size: 64, offset: 7872)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2830, line: 219, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2829, file: !2830, line: 222, baseType: !7, size: 32, offset: 7936)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2829, file: !2830, line: 223, baseType: !2955, size: 64, offset: 8000)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2830, line: 223, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2829, file: !2830, line: 230, baseType: !204, size: 8, offset: 8064)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2829, file: !2830, line: 231, baseType: !842, size: 16, offset: 8080)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2829, file: !2830, line: 232, baseType: !842, size: 16, offset: 8096)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2829, file: !2830, line: 234, baseType: !1555, size: 64, offset: 8128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2829, file: !2830, line: 237, baseType: !269, size: 256, offset: 8192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2829, file: !2830, line: 243, baseType: !1284, size: 320, offset: 8448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2373, file: !2018, line: 1111, baseType: !2964, size: 64, offset: 15424)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2830, line: 20, size: 16640, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2965, file: !2830, line: 21, baseType: !356, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2965, file: !2830, line: 22, baseType: !329, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2965, file: !2830, line: 23, baseType: !1223, size: 192, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2965, file: !2830, line: 24, baseType: !2971, size: 16384, offset: 256)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2972, size: 16384, elements: !397)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1428, line: 51, size: 256, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2972, file: !1428, line: 52, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1428, line: 37, size: 256, elements: !2976)
!2976 = !{!2977, !2984, !2985, !2989}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2975, file: !1428, line: 39, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2979, line: 83, baseType: !2980)
!2979 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2979, line: 82, baseType: !2982)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !109}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2975, file: !1428, line: 40, baseType: !217, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2975, file: !1428, line: 46, baseType: !2986, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2979, line: 86, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2979, line: 85, baseType: !1058)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2975, file: !1428, line: 48, baseType: !2844, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2373, file: !2018, line: 1112, baseType: !2844, size: 64, offset: 15488)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2373, file: !2018, line: 1113, baseType: !2844, size: 64, offset: 15552)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2373, file: !2018, line: 1115, baseType: !2844, size: 64, offset: 15616)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2373, file: !2018, line: 1116, baseType: !2840, size: 192, offset: 15680)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2373, file: !2018, line: 1117, baseType: !217, size: 64, offset: 15872)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2373, file: !2018, line: 1118, baseType: !221, size: 64, offset: 15936)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2373, file: !2018, line: 1119, baseType: !7, size: 32, offset: 16000)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2373, file: !2018, line: 1121, baseType: !923, size: 64, offset: 16064)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2373, file: !2018, line: 1125, baseType: !2999, size: 64, offset: 16128)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2018, line: 43, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2373, file: !2018, line: 1127, baseType: !473, size: 32, offset: 16192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2373, file: !2018, line: 1128, baseType: !7, size: 32, offset: 16224)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2373, file: !2018, line: 1130, baseType: !3004, size: 128, offset: 16256)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3005, line: 37, size: 128, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3004, file: !3005, line: 38, baseType: !109, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3004, file: !3005, line: 39, baseType: !287, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3004, file: !3005, line: 40, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3005, line: 24, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2373, file: !2018, line: 1131, baseType: !3013, size: 256, offset: 16384)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3014, line: 12, size: 256, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3013, file: !3014, line: 13, baseType: !392, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3013, file: !3014, line: 14, baseType: !217, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3013, file: !3014, line: 15, baseType: !217, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3013, file: !3014, line: 16, baseType: !204, size: 8, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2373, file: !2018, line: 1134, baseType: !540, size: 64, offset: 16640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2373, file: !2018, line: 1135, baseType: !540, size: 64, offset: 16704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2373, file: !2018, line: 1138, baseType: !356, size: 32, offset: 16768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2373, file: !2018, line: 1141, baseType: !274, size: 32, offset: 16800)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2373, file: !2018, line: 1143, baseType: !3025, size: 64, offset: 16832)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2018, line: 735, size: 64, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3025, file: !2018, line: 736, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2373, file: !2018, line: 1147, baseType: !2542, size: 128, offset: 16896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2373, file: !2018, line: 1149, baseType: !2372, size: 64, offset: 17024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2373, file: !2018, line: 1151, baseType: !3032, size: 64, offset: 17088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2018, line: 1151, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2373, file: !2018, line: 1188, baseType: !183, size: 64, offset: 17152)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2373, file: !2018, line: 1191, baseType: !3036, size: 64, offset: 17216)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2018, line: 44, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2373, file: !2018, line: 1194, baseType: !3039, size: 64, offset: 17280)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2018, line: 45, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2373, file: !2018, line: 1197, baseType: !3042, size: 64, offset: 17344)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2018, line: 61, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2373, file: !2018, line: 1199, baseType: !3045, size: 64, offset: 17408)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3047, line: 99, size: 128, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3046, file: !3047, line: 100, baseType: !252, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3046, file: !3047, line: 101, baseType: !287, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3046, file: !3047, line: 103, baseType: !302, size: 16, offset: 96)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2373, file: !2018, line: 1202, baseType: !3053, size: 64, offset: 17472)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2018, line: 48, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2373, file: !2018, line: 1205, baseType: !217, size: 64, offset: 17536)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2373, file: !2018, line: 1206, baseType: !3057, size: 64, offset: 17600)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1428, line: 14, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1428, line: 12, size: 384, elements: !3060)
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !1428, line: 13, baseType: !3062, size: 384)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3059, file: !1428, line: 13, size: 384, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3062, file: !1428, line: 13, baseType: !109, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3062, file: !1428, line: 13, baseType: !109, size: 32, offset: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3062, file: !1428, line: 13, baseType: !109, size: 32, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3062, file: !1428, line: 13, baseType: !3068, size: 256, offset: 128)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3069, line: 37, size: 256, elements: !3070)
!3069 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3070 = !{!3071, !3076, !3089, !3095, !3104, !3131, !3136}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3068, file: !3069, line: 42, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 39, size: 64, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3072, file: !3069, line: 40, baseType: !2740, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3072, file: !3069, line: 41, baseType: !479, size: 32, offset: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3068, file: !3069, line: 50, baseType: !3077, size: 192)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 45, size: 192, elements: !3078)
!3078 = !{!3079, !3081, !3082, !3088}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3077, file: !3069, line: 46, baseType: !3080, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !223, line: 95, baseType: !109)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3077, file: !3069, line: 47, baseType: !109, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3077, file: !3069, line: 48, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3069, line: 11, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3069, line: 8, size: 64, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3084, file: !3069, line: 9, baseType: !109, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3084, file: !3069, line: 10, baseType: !183, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3077, file: !3069, line: 49, baseType: !109, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3068, file: !3069, line: 57, baseType: !3090, size: 128)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 53, size: 128, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3090, file: !3069, line: 54, baseType: !2740, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3090, file: !3069, line: 55, baseType: !479, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3090, file: !3069, line: 56, baseType: !3083, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3068, file: !3069, line: 66, baseType: !3096, size: 256)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 60, size: 256, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3103}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3096, file: !3069, line: 61, baseType: !2740, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3096, file: !3069, line: 62, baseType: !479, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3096, file: !3069, line: 63, baseType: !109, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3096, file: !3069, line: 64, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !223, line: 94, baseType: !426)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3096, file: !3069, line: 65, baseType: !3102, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3068, file: !3069, line: 105, baseType: !3105, size: 256)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 69, size: 256, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3105, file: !3069, line: 70, baseType: !183, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !3069, line: 79, baseType: !3109, size: 192, offset: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3105, file: !3069, line: 79, size: 192, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3120, !3125}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3109, file: !3069, line: 81, baseType: !109, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3109, file: !3069, line: 86, baseType: !842, size: 16)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3109, file: !3069, line: 92, baseType: !3114, size: 192)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 88, size: 192, elements: !3115)
!3115 = !{!3116, !3118, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3114, file: !3069, line: 89, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 64, elements: !2526)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3114, file: !3069, line: 90, baseType: !183, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3114, file: !3069, line: 91, baseType: !183, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3109, file: !3069, line: 97, baseType: !3121, size: 96)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 94, size: 96, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3121, file: !3069, line: 95, baseType: !3117, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3121, file: !3069, line: 96, baseType: !537, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3109, file: !3069, line: 103, baseType: !3126, size: 128)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 99, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3126, file: !3069, line: 100, baseType: !217, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3126, file: !3069, line: 101, baseType: !537, size: 32, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3126, file: !3069, line: 102, baseType: !537, size: 32, offset: 96)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3068, file: !3069, line: 111, baseType: !3132, size: 128)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 108, size: 128, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3132, file: !3069, line: 109, baseType: !427, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3132, file: !3069, line: 110, baseType: !109, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3068, file: !3069, line: 118, baseType: !3137, size: 128)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 114, size: 128, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3137, file: !3069, line: 115, baseType: !183, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3137, file: !3069, line: 116, baseType: !109, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3137, file: !3069, line: 117, baseType: !7, size: 32, offset: 96)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2373, file: !2018, line: 1208, baseType: !2922, size: 448, offset: 17664)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2373, file: !2018, line: 1215, baseType: !540, size: 64, offset: 18112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2373, file: !2018, line: 1217, baseType: !540, size: 64, offset: 18176)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2373, file: !2018, line: 1219, baseType: !540, size: 64, offset: 18240)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2373, file: !2018, line: 1223, baseType: !3147, size: 64, offset: 18304)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3148, line: 99, baseType: !3149)
!3148 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3148, line: 99, size: 64, elements: !3150)
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3149, file: !3148, line: 99, baseType: !2610, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2373, file: !2018, line: 1225, baseType: !508, size: 32, offset: 18368)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2373, file: !2018, line: 1226, baseType: !109, size: 32, offset: 18400)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2373, file: !2018, line: 1227, baseType: !109, size: 32, offset: 18432)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2373, file: !2018, line: 1231, baseType: !3156, size: 64, offset: 18496)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2018, line: 1231, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2373, file: !2018, line: 1233, baseType: !236, size: 128, offset: 18560)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2373, file: !2018, line: 1240, baseType: !3160, size: 64, offset: 18688)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2018, line: 62, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2373, file: !2018, line: 1242, baseType: !3163, size: 64, offset: 18752)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2018, line: 1242, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2373, file: !2018, line: 1244, baseType: !236, size: 128, offset: 18816)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2373, file: !2018, line: 1245, baseType: !3167, size: 64, offset: 18944)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2018, line: 51, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2373, file: !2018, line: 1246, baseType: !269, size: 256, offset: 19008)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2373, file: !2018, line: 1247, baseType: !7, size: 32, offset: 19264)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2373, file: !2018, line: 1250, baseType: !3172, size: 64, offset: 19328)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2018, line: 57, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2373, file: !2018, line: 1251, baseType: !269, size: 256, offset: 19392)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2373, file: !2018, line: 1252, baseType: !236, size: 128, offset: 19648)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2373, file: !2018, line: 1259, baseType: !1964, size: 64, offset: 19776)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2373, file: !2018, line: 1260, baseType: !842, size: 16, offset: 19840)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2373, file: !2018, line: 1261, baseType: !842, size: 16, offset: 19856)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2373, file: !2018, line: 1314, baseType: !3180, size: 64, offset: 19904)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3182, line: 62, size: 256, align: 256, elements: !3183)
!3182 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3181, file: !3182, line: 75, baseType: !537, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3181, file: !3182, line: 90, baseType: !537, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3181, file: !3182, line: 112, baseType: !541, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !3182, line: 132, baseType: !537, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3181, file: !3182, line: 140, baseType: !537, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3181, file: !3182, line: 149, baseType: !537, size: 32, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3181, file: !3182, line: 154, baseType: !3191, offset: 224)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !214)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2373, file: !2018, line: 1315, baseType: !536, size: 32, offset: 19968)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2373, file: !2018, line: 1316, baseType: !536, size: 32, offset: 20000)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2373, file: !2018, line: 1321, baseType: !217, size: 64, offset: 20032)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2373, file: !2018, line: 1325, baseType: !109, size: 32, offset: 20096)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2373, file: !2018, line: 1326, baseType: !109, size: 32, offset: 20128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2373, file: !2018, line: 1327, baseType: !109, size: 32, offset: 20160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2373, file: !2018, line: 1328, baseType: !109, size: 32, offset: 20192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2373, file: !2018, line: 1329, baseType: !924, size: 128, align: 64, offset: 20224)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2373, file: !2018, line: 1332, baseType: !3201, size: 128, offset: 20352)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3202, line: 51, size: 128, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3203 = !{!3204, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3201, file: !3202, line: 60, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3206, line: 7, size: 64, elements: !3207)
!3206 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3205, file: !3206, line: 12, baseType: !2607, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3201, file: !3202, line: 63, baseType: !204, size: 8, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3201, file: !3202, line: 70, baseType: !204, size: 8, offset: 72)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2373, file: !2018, line: 1335, baseType: !2016, size: 64, offset: 20480)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2373, file: !2018, line: 1337, baseType: !3213, size: 128, offset: 20544)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3202, line: 39, size: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3213, file: !3202, line: 40, baseType: !1803, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3213, file: !3202, line: 42, baseType: !537, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3213, file: !3202, line: 43, baseType: !537, size: 32, offset: 96)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2373, file: !2018, line: 1340, baseType: !3219, size: 64, offset: 20672)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2018, line: 69, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2373, file: !2018, line: 1351, baseType: !109, size: 32, offset: 20736)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2373, file: !2018, line: 1352, baseType: !109, size: 32, offset: 20768)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2373, file: !2018, line: 1354, baseType: !217, size: 64, offset: 20800)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2373, file: !2018, line: 1364, baseType: !540, size: 64, offset: 20864)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2373, file: !2018, line: 1365, baseType: !540, size: 64, offset: 20928)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2373, file: !2018, line: 1412, baseType: !217, size: 64, offset: 20992)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2373, file: !2018, line: 1453, baseType: !3228, size: 64, offset: 21056)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2018, line: 1453, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2373, file: !2018, line: 1457, baseType: !3231, size: 64, offset: 21120)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3233)
!3233 = !{!3234, !3235, !3254, !3257, !3258, !3291, !3301}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3232, file: !68, line: 62, baseType: !67, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !68, line: 64, baseType: !3236, size: 192, offset: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !68, line: 64, size: 192, elements: !3237)
!3237 = !{!3238, !3249}
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !68, line: 65, baseType: !3239, size: 192)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !68, line: 65, size: 192, elements: !3240)
!3240 = !{!3241, !3248}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3239, file: !68, line: 66, baseType: !3242, size: 128)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3243, line: 50, size: 128, elements: !3244)
!3243 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3242, file: !3243, line: 52, baseType: !217, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3242, file: !3243, line: 54, baseType: !7, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3242, file: !3243, line: 55, baseType: !7, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3239, file: !68, line: 67, baseType: !217, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !68, line: 70, baseType: !3250, size: 192)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !68, line: 70, size: 192, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3250, file: !68, line: 71, baseType: !924, size: 128, align: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3250, file: !68, line: 72, baseType: !217, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3232, file: !68, line: 76, baseType: !3255, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3232, file: !68, line: 77, baseType: !217, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3232, file: !68, line: 79, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3243, line: 25, size: 256, elements: !3261)
!3261 = !{!3262, !3268, !3272}
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !3243, line: 26, baseType: !3263, size: 128)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3260, file: !3243, line: 26, size: 128, elements: !3264)
!3264 = !{!3265, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3263, file: !3243, line: 27, baseType: !3266, size: 128)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !2798)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3263, file: !3243, line: 28, baseType: !3266, size: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3260, file: !3243, line: 31, baseType: !3269, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3271)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3243, line: 23, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !3243, line: 33, baseType: !3273, size: 64, offset: 192)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3260, file: !3243, line: 33, size: 64, elements: !3274)
!3274 = !{!3275, !3281, !3286}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3273, file: !3243, line: 38, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 34, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3276, file: !3243, line: 35, baseType: !721, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3276, file: !3243, line: 36, baseType: !209, size: 8, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3276, file: !3243, line: 37, baseType: !209, size: 8, offset: 40)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3273, file: !3243, line: 42, baseType: !3282, size: 16)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 39, size: 16, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3282, file: !3243, line: 40, baseType: !209, size: 8)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3282, file: !3243, line: 41, baseType: !209, size: 8, offset: 8)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3273, file: !3243, line: 46, baseType: !3287, size: 16)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 43, size: 16, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3287, file: !3243, line: 44, baseType: !209, size: 8)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3287, file: !3243, line: 45, baseType: !209, size: 8, offset: 8)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3232, file: !68, line: 81, baseType: !3292, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3293, file: !68, line: 86, baseType: !3255, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3293, file: !68, line: 87, baseType: !217, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3293, file: !68, line: 88, baseType: !217, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3293, file: !68, line: 89, baseType: !217, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3293, file: !68, line: 90, baseType: !204, size: 8, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3293, file: !68, line: 92, baseType: !3292, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3232, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2373, file: !2018, line: 1463, baseType: !3303, offset: 21184)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2018, line: 739, elements: !982)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2373, file: !2018, line: 1470, baseType: !924, size: 128, align: 64, offset: 21184)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2373, file: !2018, line: 1471, baseType: !329, size: 32, offset: 21312)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2373, file: !2018, line: 1472, baseType: !109, size: 32, offset: 21344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2373, file: !2018, line: 1474, baseType: !2372, size: 64, offset: 21376)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2373, file: !2018, line: 1475, baseType: !946, size: 320, offset: 21440)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2373, file: !2018, line: 1478, baseType: !3310, size: 64, offset: 21760)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3312, line: 49, size: 512, elements: !3313)
!3312 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3320, !3321, !3322, !3324}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3311, file: !3312, line: 50, baseType: !3310, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3311, file: !3312, line: 51, baseType: !183, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3311, file: !3312, line: 52, baseType: !217, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !3312, line: 53, baseType: !217, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3311, file: !3312, line: 54, baseType: !3319, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3311, file: !3312, line: 56, baseType: !7, size: 32, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3311, file: !3312, line: 58, baseType: !7, size: 32, offset: 352)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3311, file: !3312, line: 59, baseType: !3323, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !205, line: 159, baseType: !540)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3311, file: !3312, line: 60, baseType: !1670, size: 64, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2373, file: !2018, line: 1482, baseType: !329, size: 32, offset: 21824)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2373, file: !2018, line: 1489, baseType: !183, size: 64, offset: 21888)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2373, file: !2018, line: 1504, baseType: !183, size: 64, offset: 21952)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2373, file: !2018, line: 1505, baseType: !541, size: 64, offset: 22016)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2373, file: !2018, line: 1506, baseType: !540, size: 64, offset: 22080)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2373, file: !2018, line: 1507, baseType: !541, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2373, file: !2018, line: 1508, baseType: !541, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2373, file: !2018, line: 1509, baseType: !541, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2373, file: !2018, line: 1510, baseType: !924, size: 128, align: 64, offset: 22208)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2373, file: !2018, line: 1511, baseType: !109, size: 32, offset: 22336)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2373, file: !2018, line: 1515, baseType: !313, size: 64, offset: 22400)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2373, file: !2018, line: 1518, baseType: !313, size: 64, offset: 22464)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2373, file: !2018, line: 1528, baseType: !924, size: 128, align: 64, offset: 22528)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2373, file: !2018, line: 1552, baseType: !3339, size: 35328, offset: 23040)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3340, line: 430, size: 35328, elements: !3341)
!3340 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3341 = !{!3342, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3371, !3372, !3373, !3374, !3375, !3376, !3379, !3380, !3381, !3382}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3339, file: !3340, line: 432, baseType: !3343, size: 192)
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3344, size: 192, elements: !393)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3345, line: 16, size: 64, elements: !3346)
!3345 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3344, file: !3345, line: 17, baseType: !300, size: 16)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3344, file: !3345, line: 18, baseType: !300, size: 16, offset: 16)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3344, file: !3345, line: 19, baseType: !300, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3344, file: !3345, line: 19, baseType: !300, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3344, file: !3345, line: 19, baseType: !300, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3344, file: !3345, line: 19, baseType: !300, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3344, file: !3345, line: 19, baseType: !300, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3344, file: !3345, line: 20, baseType: !300, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3344, file: !3345, line: 20, baseType: !300, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3344, file: !3345, line: 20, baseType: !300, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3344, file: !3345, line: 20, baseType: !300, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3344, file: !3345, line: 20, baseType: !300, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3344, file: !3345, line: 20, baseType: !300, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3339, file: !3340, line: 436, baseType: !217, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3339, file: !3340, line: 440, baseType: !302, size: 16, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3339, file: !3340, line: 441, baseType: !302, size: 16, offset: 272)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3339, file: !3340, line: 442, baseType: !302, size: 16, offset: 288)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3339, file: !3340, line: 443, baseType: !302, size: 16, offset: 304)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3339, file: !3340, line: 447, baseType: !217, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3339, file: !3340, line: 448, baseType: !217, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3339, file: !3340, line: 459, baseType: !3368, size: 256, offset: 448)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3369, size: 256, elements: !934)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3340, line: 428, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3339, file: !3340, line: 461, baseType: !217, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3339, file: !3340, line: 463, baseType: !217, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3339, file: !3340, line: 465, baseType: !217, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3339, file: !3340, line: 466, baseType: !217, size: 64, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3339, file: !3340, line: 467, baseType: !217, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3339, file: !3340, line: 473, baseType: !3377, size: 64, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3340, line: 10, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3339, file: !3340, line: 480, baseType: !217, size: 64, offset: 1088)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3339, file: !3340, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3339, file: !3340, line: 491, baseType: !536, size: 32, offset: 1184)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3339, file: !3340, line: 501, baseType: !3383, size: 33792, offset: 1536)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3384, line: 448, size: 33792, elements: !3385)
!3384 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3385 = !{!3386, !3387, !3388, !3549, !3550, !3556, !3557}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3383, file: !3384, line: 461, baseType: !7, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3383, file: !3384, line: 468, baseType: !217, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3383, file: !3384, line: 476, baseType: !3389, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3384, line: 356, size: 33280, align: 512, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !3384, line: 358, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3390, file: !3384, line: 361, baseType: !7, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3390, file: !3384, line: 364, baseType: !540, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3390, file: !3384, line: 367, baseType: !540, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3390, file: !3384, line: 370, baseType: !540, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3390, file: !3384, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3390, file: !3384, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3390, file: !3384, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3390, file: !3384, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3390, file: !3384, line: 397, baseType: !3402, size: 32768, offset: 512)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3384, line: 348, size: 32768, elements: !3403)
!3403 = !{!3404, !3419, !3456, !3533, !3545}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3402, file: !3384, line: 349, baseType: !3405, size: 896)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3384, line: 12, size: 896, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3418}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3405, file: !3384, line: 13, baseType: !536, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3405, file: !3384, line: 14, baseType: !536, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3405, file: !3384, line: 15, baseType: !536, size: 32, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3405, file: !3384, line: 16, baseType: !536, size: 32, offset: 96)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3405, file: !3384, line: 17, baseType: !536, size: 32, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3405, file: !3384, line: 18, baseType: !536, size: 32, offset: 160)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3405, file: !3384, line: 19, baseType: !536, size: 32, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3405, file: !3384, line: 22, baseType: !3415, size: 640, offset: 224)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 640, elements: !3416)
!3416 = !{!3417}
!3417 = !DISubrange(count: 20)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3405, file: !3384, line: 25, baseType: !536, size: 32, offset: 864)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3402, file: !3384, line: 350, baseType: !3420, size: 4096, align: 128)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3384, line: 34, size: 4096, align: 128, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3441, !3442, !3443, !3445, !3447, !3451}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3384, line: 35, baseType: !300, size: 16)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3384, line: 36, baseType: !300, size: 16, offset: 16)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3384, line: 37, baseType: !300, size: 16, offset: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3420, file: !3384, line: 38, baseType: !300, size: 16, offset: 48)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3384, line: 39, baseType: !3427, size: 128, offset: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3420, file: !3384, line: 39, size: 128, elements: !3428)
!3428 = !{!3429, !3434}
!3429 = !DIDerivedType(tag: DW_TAG_member, scope: !3427, file: !3384, line: 40, baseType: !3430, size: 128)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3427, file: !3384, line: 40, size: 128, elements: !3431)
!3431 = !{!3432, !3433}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3430, file: !3384, line: 41, baseType: !540, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3430, file: !3384, line: 42, baseType: !540, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3427, file: !3384, line: 44, baseType: !3435, size: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3427, file: !3384, line: 44, size: 128, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3435, file: !3384, line: 45, baseType: !536, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3435, file: !3384, line: 46, baseType: !536, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3435, file: !3384, line: 47, baseType: !536, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3435, file: !3384, line: 48, baseType: !536, size: 32, offset: 96)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3420, file: !3384, line: 51, baseType: !536, size: 32, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3420, file: !3384, line: 52, baseType: !536, size: 32, offset: 224)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3384, line: 55, baseType: !3444, size: 1024, offset: 256)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 1024, elements: !549)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3420, file: !3384, line: 58, baseType: !3446, size: 2048, offset: 1280)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 2048, elements: !397)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3420, file: !3384, line: 60, baseType: !3448, size: 384, offset: 3328)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 384, elements: !3449)
!3449 = !{!3450}
!3450 = !DISubrange(count: 12)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3384, line: 62, baseType: !3452, size: 384, offset: 3712)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3420, file: !3384, line: 62, size: 384, elements: !3453)
!3453 = !{!3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3452, file: !3384, line: 63, baseType: !3448, size: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3452, file: !3384, line: 64, baseType: !3448, size: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3402, file: !3384, line: 351, baseType: !3457, size: 1088)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3384, line: 79, size: 1088, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3532}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3457, file: !3384, line: 80, baseType: !536, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3457, file: !3384, line: 81, baseType: !536, size: 32, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3457, file: !3384, line: 82, baseType: !536, size: 32, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3457, file: !3384, line: 83, baseType: !536, size: 32, offset: 96)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3457, file: !3384, line: 84, baseType: !536, size: 32, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3457, file: !3384, line: 85, baseType: !536, size: 32, offset: 160)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3457, file: !3384, line: 86, baseType: !536, size: 32, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3457, file: !3384, line: 88, baseType: !3415, size: 640, offset: 224)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3457, file: !3384, line: 89, baseType: !209, size: 8, offset: 864)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3457, file: !3384, line: 90, baseType: !209, size: 8, offset: 872)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3457, file: !3384, line: 91, baseType: !209, size: 8, offset: 880)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3457, file: !3384, line: 92, baseType: !209, size: 8, offset: 888)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3457, file: !3384, line: 93, baseType: !209, size: 8, offset: 896)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3457, file: !3384, line: 94, baseType: !209, size: 8, offset: 904)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3457, file: !3384, line: 95, baseType: !3474, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3476, line: 11, size: 128, elements: !3477)
!3476 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3475, file: !3476, line: 12, baseType: !427, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3475, file: !3476, line: 13, baseType: !3480, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3482, line: 103, size: 1344, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3512, !3513, !3514}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3481, file: !3482, line: 109, baseType: !217, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3481, file: !3482, line: 110, baseType: !217, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3481, file: !3482, line: 111, baseType: !217, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3481, file: !3482, line: 112, baseType: !217, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3481, file: !3482, line: 113, baseType: !217, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3481, file: !3482, line: 114, baseType: !217, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3481, file: !3482, line: 117, baseType: !217, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3481, file: !3482, line: 118, baseType: !217, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3481, file: !3482, line: 119, baseType: !217, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3481, file: !3482, line: 120, baseType: !217, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3481, file: !3482, line: 121, baseType: !217, size: 64, offset: 640)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3481, file: !3482, line: 122, baseType: !217, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3481, file: !3482, line: 123, baseType: !217, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3481, file: !3482, line: 124, baseType: !217, size: 64, offset: 832)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3481, file: !3482, line: 125, baseType: !217, size: 64, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3481, file: !3482, line: 139, baseType: !217, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3481, file: !3482, line: 142, baseType: !217, size: 64, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3482, line: 144, baseType: !3502, size: 64, offset: 1088)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3482, line: 144, size: 64, elements: !3503)
!3503 = !{!3504, !3505, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3502, file: !3482, line: 146, baseType: !300, size: 16)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3502, file: !3482, line: 148, baseType: !540, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3502, file: !3482, line: 150, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3482, line: 59, size: 64, elements: !3508)
!3508 = !{!3509, !3510, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3507, file: !3482, line: 61, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3507, file: !3482, line: 63, baseType: !540, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3507, file: !3482, line: 65, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3481, file: !3482, line: 153, baseType: !217, size: 64, offset: 1152)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3481, file: !3482, line: 154, baseType: !217, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3482, line: 156, baseType: !3515, size: 64, offset: 1280)
!3515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3482, line: 156, size: 64, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3515, file: !3482, line: 158, baseType: !300, size: 16)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3515, file: !3482, line: 160, baseType: !540, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3515, file: !3482, line: 162, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3482, line: 69, size: 64, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3520, file: !3482, line: 71, baseType: !540, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3520, file: !3482, line: 73, baseType: !540, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3520, file: !3482, line: 75, baseType: !540, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3520, file: !3482, line: 77, baseType: !540, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3520, file: !3482, line: 80, baseType: !540, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3520, file: !3482, line: 83, baseType: !540, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3520, file: !3482, line: 86, baseType: !540, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3520, file: !3482, line: 88, baseType: !540, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3520, file: !3482, line: 93, baseType: !540, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3520, file: !3482, line: 100, baseType: !540, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3457, file: !3384, line: 96, baseType: !536, size: 32, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3402, file: !3384, line: 352, baseType: !3534, size: 4608, align: 512)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3384, line: 333, size: 4608, align: 512, elements: !3535)
!3535 = !{!3536, !3537, !3544}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3534, file: !3384, line: 334, baseType: !3420, size: 4096, align: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3534, file: !3384, line: 335, baseType: !3538, size: 512, offset: 4096)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3384, line: 312, size: 512, elements: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3538, file: !3384, line: 313, baseType: !540, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3538, file: !3384, line: 314, baseType: !540, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3538, file: !3384, line: 315, baseType: !3543, size: 384, offset: 128)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 384, elements: !1329)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3534, file: !3384, line: 336, baseType: !208, offset: 4608)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3402, file: !3384, line: 353, baseType: !3546, size: 32768)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32768, elements: !3547)
!3547 = !{!3548}
!3548 = !DISubrange(count: 4096)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3383, file: !3384, line: 484, baseType: !3389, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3383, file: !3384, line: 491, baseType: !3551, size: 128, offset: 256)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3384, line: 404, size: 128, elements: !3552)
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3551, file: !3384, line: 424, baseType: !540, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3551, file: !3384, line: 432, baseType: !7, size: 32, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3551, file: !3384, line: 440, baseType: !7, size: 32, offset: 96)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3383, file: !3384, line: 498, baseType: !3551, size: 128, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3383, file: !3384, line: 508, baseType: !3390, size: 33280, align: 512, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2355, file: !2356, line: 16, baseType: !1223, size: 192, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2355, file: !2356, line: 17, baseType: !287, size: 32, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !619, file: !14, line: 1240, baseType: !183, size: 64, offset: 6912)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !619, file: !14, line: 1243, baseType: !536, size: 32, offset: 6976)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !619, file: !14, line: 1245, baseType: !1300, size: 64, offset: 7040)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !619, file: !14, line: 1246, baseType: !1300, size: 64, offset: 7104)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !619, file: !14, line: 1248, baseType: !537, size: 32, offset: 7168)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !619, file: !14, line: 1249, baseType: !3566, size: 64, offset: 7232)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !619, file: !14, line: 1252, baseType: !3569, size: 256, offset: 7296)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !549)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !619, file: !14, line: 1253, baseType: !3571, size: 128, offset: 7552)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3572, line: 21, baseType: !3573)
!3572 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3572, line: 19, size: 128, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3573, file: !3572, line: 20, baseType: !3576, size: 128)
!3576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 128, elements: !2798)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !619, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !619, file: !14, line: 1261, baseType: !269, size: 256, offset: 7744)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !619, file: !14, line: 1267, baseType: !344, size: 64, offset: 8000)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !619, file: !14, line: 1269, baseType: !565, size: 64, offset: 8064)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !619, file: !14, line: 1271, baseType: !3582, size: 448, offset: 8128)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2135, line: 63, size: 448, elements: !3583)
!3583 = !{!3584, !3589, !3590, !3591, !3592, !3593, !3594}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3582, file: !2135, line: 64, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!217, !3588, !2133}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3582, file: !2135, line: 66, baseType: !3585, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3582, file: !2135, line: 69, baseType: !427, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3582, file: !2135, line: 70, baseType: !109, size: 32, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3582, file: !2135, line: 71, baseType: !7, size: 32, offset: 224)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3582, file: !2135, line: 74, baseType: !236, size: 128, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3582, file: !2135, line: 85, baseType: !3595, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !619, file: !14, line: 1274, baseType: !252, size: 64, offset: 8576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !619, file: !14, line: 1280, baseType: !252, size: 64, offset: 8640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !619, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !619, file: !14, line: 1286, baseType: !2067, size: 32, offset: 8736)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !619, file: !14, line: 1289, baseType: !1015, size: 64, offset: 8768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !619, file: !14, line: 1290, baseType: !1063, size: 64, offset: 8832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !619, file: !14, line: 1297, baseType: !1423, size: 64, offset: 8896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !619, file: !14, line: 1304, baseType: !3604, size: 64, offset: 8960)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3605, line: 49, size: 64, elements: !3606)
!3605 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3606 = !{!3607}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3604, file: !3605, line: 50, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3605, line: 41, size: 512, align: 512, elements: !3610)
!3610 = !{!3611, !3612, !3617}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3609, file: !3605, line: 43, baseType: !356, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3609, file: !3605, line: 45, baseType: !3613, size: 192, offset: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3605, line: 29, size: 192, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3613, file: !3605, line: 30, baseType: !236, size: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3613, file: !3605, line: 32, baseType: !427, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3609, file: !3605, line: 46, baseType: !427, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !619, file: !14, line: 1305, baseType: !3604, size: 64, offset: 9024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !619, file: !14, line: 1306, baseType: !924, size: 128, align: 64, offset: 9088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !619, file: !14, line: 1307, baseType: !249, size: 256, offset: 9216)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !619, file: !14, line: 1309, baseType: !269, size: 256, offset: 9472)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !619, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !619, file: !14, line: 1317, baseType: !356, size: 32, align: 512, offset: 10240)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !619, file: !14, line: 1318, baseType: !236, size: 128, offset: 10304)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !619, file: !14, line: 1320, baseType: !356, size: 32, offset: 10432)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !619, file: !14, line: 1321, baseType: !236, size: 128, offset: 10496)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !613, file: !614, line: 73, baseType: !109, size: 32, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !613, file: !614, line: 74, baseType: !3629, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1260, line: 42, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !567, file: !504, line: 141, baseType: !3633, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!109, !2195, !204}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !567, file: !504, line: 142, baseType: !3637, size: 64, offset: 768)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!502, !502, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !503, file: !504, line: 96, baseType: !618, size: 64, offset: 832)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !503, file: !504, line: 97, baseType: !217, size: 64, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !503, file: !504, line: 98, baseType: !183, size: 64, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 100, baseType: !3646, size: 128, offset: 1024)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 100, size: 128, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3646, file: !504, line: 101, baseType: !236, size: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3646, file: !504, line: 102, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !503, file: !504, line: 104, baseType: !236, size: 128, offset: 1152)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !503, file: !504, line: 105, baseType: !236, size: 128, offset: 1280)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !503, file: !504, line: 113, baseType: !3654, size: 128, offset: 1408)
!3654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 109, size: 128, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3654, file: !504, line: 110, baseType: !950, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3654, file: !504, line: 111, baseType: !518, size: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3654, file: !504, line: 112, baseType: !924, size: 128, align: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !496, file: !14, line: 1968, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!344, !502, !467, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3665, line: 10, size: 128, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3664, file: !3665, line: 11, baseType: !749, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3664, file: !3665, line: 12, baseType: !183, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !496, file: !14, line: 1969, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!109, !3629, !467, !109}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !496, file: !14, line: 1970, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!490, !467, !109, !204}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !496, file: !14, line: 1972, baseType: !3678, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !502, !392, !109}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !496, file: !14, line: 1974, baseType: !3682, size: 64, offset: 320)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !3629, !467, !502, !433, !204}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !496, file: !14, line: 1976, baseType: !3686, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !502, !467, !502}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !496, file: !14, line: 1977, baseType: !3690, size: 64, offset: 448)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!109, !467, !502}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !496, file: !14, line: 1978, baseType: !3694, size: 64, offset: 512)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3629, !467, !502, !344}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !496, file: !14, line: 1980, baseType: !3698, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3629, !467, !502, !433}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !496, file: !14, line: 1982, baseType: !3690, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !496, file: !14, line: 1983, baseType: !3703, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!109, !3629, !467, !502, !433, !623}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !496, file: !14, line: 1985, baseType: !3707, size: 64, offset: 768)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!109, !3629, !467, !502, !467, !502, !7}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !496, file: !14, line: 1987, baseType: !3711, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!109, !3629, !502, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3729, !3738, !3739, !3744, !3745, !3746}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3715, file: !14, line: 227, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3715, file: !14, line: 228, baseType: !433, size: 16, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !14, line: 241, baseType: !3720, size: 32, offset: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3715, file: !14, line: 241, size: 32, elements: !3721)
!3721 = !{!3722, !3723}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3720, file: !14, line: 242, baseType: !473, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3720, file: !14, line: 243, baseType: !3724, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3725, line: 16, baseType: !3726)
!3725 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3725, line: 14, size: 32, elements: !3727)
!3727 = !{!3728}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3726, file: !3725, line: 15, baseType: !478, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, scope: !3715, file: !14, line: 245, baseType: !3730, size: 32, offset: 96)
!3730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3715, file: !14, line: 245, size: 32, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3730, file: !14, line: 246, baseType: !482, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3730, file: !14, line: 247, baseType: !3734, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3725, line: 20, baseType: !3735)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3725, line: 18, size: 32, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3735, file: !3725, line: 19, baseType: !486, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3715, file: !14, line: 249, baseType: !628, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3715, file: !14, line: 250, baseType: !3740, size: 128, offset: 192)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1301, line: 13, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3740, file: !1301, line: 14, baseType: !1300, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3740, file: !1301, line: 15, baseType: !427, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3715, file: !14, line: 251, baseType: !3740, size: 128, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3715, file: !14, line: 252, baseType: !3740, size: 128, offset: 448)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3715, file: !14, line: 259, baseType: !1468, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !496, file: !14, line: 1988, baseType: !3748, size: 64, offset: 896)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!109, !3629, !2195, !3751, !536, !7}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3753, line: 22, size: 1280, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3752, file: !3753, line: 23, baseType: !536, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3752, file: !3753, line: 24, baseType: !433, size: 16, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3752, file: !3753, line: 25, baseType: !7, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3752, file: !3753, line: 26, baseType: !1308, size: 32, offset: 96)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3752, file: !3753, line: 27, baseType: !540, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3752, file: !3753, line: 28, baseType: !540, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3752, file: !3753, line: 41, baseType: !540, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3752, file: !3753, line: 42, baseType: !623, size: 32, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3752, file: !3753, line: 43, baseType: !623, size: 32, offset: 352)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3752, file: !3753, line: 44, baseType: !473, size: 32, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3752, file: !3753, line: 45, baseType: !482, size: 32, offset: 416)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3752, file: !3753, line: 46, baseType: !628, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3752, file: !3753, line: 47, baseType: !3740, size: 128, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3752, file: !3753, line: 48, baseType: !3740, size: 128, offset: 640)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3752, file: !3753, line: 49, baseType: !3740, size: 128, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3752, file: !3753, line: 50, baseType: !3740, size: 128, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3752, file: !3753, line: 51, baseType: !540, size: 64, offset: 1024)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3752, file: !3753, line: 52, baseType: !540, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3752, file: !3753, line: 53, baseType: !536, size: 32, offset: 1152)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3752, file: !3753, line: 54, baseType: !536, size: 32, offset: 1184)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3752, file: !3753, line: 55, baseType: !540, size: 64, offset: 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !496, file: !14, line: 1990, baseType: !3777, size: 64, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!424, !502, !392, !221}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !496, file: !14, line: 1991, baseType: !3781, size: 64, offset: 1024)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !467, !3784, !540, !540}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !496, file: !14, line: 1993, baseType: !3787, size: 64, offset: 1088)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!109, !467, !109}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !496, file: !14, line: 1994, baseType: !3791, size: 64, offset: 1152)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!109, !467, !502, !1468, !7, !433}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !496, file: !14, line: 1997, baseType: !3795, size: 64, offset: 1216)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!109, !3629, !467, !1468, !433}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !496, file: !14, line: 1999, baseType: !3799, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!490, !3629, !502, !109}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !496, file: !14, line: 2001, baseType: !3803, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!109, !3629, !502, !490, !109}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !496, file: !14, line: 2003, baseType: !3807, size: 64, offset: 1408)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !3629, !502, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !496, file: !14, line: 2005, baseType: !3813, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!109, !502, !3810}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !496, file: !14, line: 2006, baseType: !3817, size: 64, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3820, !467}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3822)
!3822 = !{!3823, !3830}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3821, file: !14, line: 3193, baseType: !3824, size: 128)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3825, line: 296, size: 128, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3824, file: !3825, line: 297, baseType: !356, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3824, file: !3825, line: 299, baseType: !231, size: 32, offset: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3824, file: !3825, line: 300, baseType: !183, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3821, file: !14, line: 3194, baseType: !536, size: 32, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !468, file: !14, line: 655, baseType: !618, size: 64, offset: 448)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !468, file: !14, line: 656, baseType: !463, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !468, file: !14, line: 659, baseType: !183, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !468, file: !14, line: 663, baseType: !217, size: 64, offset: 640)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !14, line: 671, baseType: !3836, size: 32, offset: 704)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !14, line: 671, size: 32, elements: !3837)
!3837 = !{!3838, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3836, file: !14, line: 672, baseType: !3839, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3836, file: !14, line: 673, baseType: !7, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !468, file: !14, line: 675, baseType: !623, size: 32, offset: 736)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !468, file: !14, line: 676, baseType: !628, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !468, file: !14, line: 677, baseType: !3740, size: 128, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !468, file: !14, line: 678, baseType: !3740, size: 128, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !468, file: !14, line: 679, baseType: !3740, size: 128, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !468, file: !14, line: 680, baseType: !356, size: 32, offset: 1216)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !468, file: !14, line: 681, baseType: !302, size: 16, offset: 1248)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !468, file: !14, line: 682, baseType: !209, size: 8, offset: 1264)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !468, file: !14, line: 683, baseType: !209, size: 8, offset: 1272)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !468, file: !14, line: 684, baseType: !2268, size: 64, offset: 1280)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !468, file: !14, line: 691, baseType: !217, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !468, file: !14, line: 692, baseType: !1284, size: 320, offset: 1408)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !468, file: !14, line: 694, baseType: !217, size: 64, offset: 1728)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !468, file: !14, line: 695, baseType: !217, size: 64, offset: 1792)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !468, file: !14, line: 697, baseType: !950, size: 128, offset: 1856)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !468, file: !14, line: 698, baseType: !236, size: 128, offset: 1984)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !468, file: !14, line: 707, baseType: !236, size: 128, offset: 2112)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !468, file: !14, line: 708, baseType: !236, size: 128, offset: 2240)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !14, line: 709, baseType: !3860, size: 128, offset: 2368)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !14, line: 709, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3860, file: !14, line: 710, baseType: !1063, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3860, file: !14, line: 711, baseType: !924, size: 128, align: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !468, file: !14, line: 713, baseType: !254, size: 64, offset: 2496)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !468, file: !14, line: 714, baseType: !254, size: 64, offset: 2560)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !468, file: !14, line: 715, baseType: !287, size: 32, offset: 2624)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !468, file: !14, line: 716, baseType: !287, size: 32, offset: 2656)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !468, file: !14, line: 717, baseType: !287, size: 32, offset: 2688)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !468, file: !14, line: 719, baseType: !287, size: 32, offset: 2720)
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !14, line: 721, baseType: !3871, size: 64, offset: 2752)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !14, line: 721, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3871, file: !14, line: 722, baseType: !1459, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3871, file: !14, line: 723, baseType: !1086, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !468, file: !14, line: 725, baseType: !3876, size: 64, offset: 2816)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !468, file: !14, line: 726, baseType: !464, size: 1536, align: 64, offset: 2880)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !468, file: !14, line: 727, baseType: !236, size: 128, offset: 4416)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !14, line: 728, baseType: !3881, size: 64, offset: 4544)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !14, line: 728, size: 64, elements: !3882)
!3882 = !{!3883, !3884, !3895, !3896}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3881, file: !14, line: 729, baseType: !2016, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3881, file: !14, line: 730, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3887, line: 14, size: 832, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3886, file: !3887, line: 15, baseType: !340, size: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3886, file: !3887, line: 16, baseType: !655, size: 64, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3886, file: !3887, line: 17, baseType: !1459, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3886, file: !3887, line: 18, baseType: !236, size: 128, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3886, file: !3887, line: 19, baseType: !623, size: 32, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3886, file: !3887, line: 20, baseType: !7, size: 32, offset: 800)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3881, file: !14, line: 731, baseType: !392, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3881, file: !14, line: 732, baseType: !7, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !468, file: !14, line: 735, baseType: !537, size: 32, offset: 4608)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !468, file: !14, line: 738, baseType: !537, size: 32, offset: 4640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !468, file: !14, line: 739, baseType: !3566, size: 64, offset: 4672)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !468, file: !14, line: 750, baseType: !183, size: 64, offset: 4736)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !464, file: !14, line: 474, baseType: !3824, size: 128, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !464, file: !14, line: 475, baseType: !1284, size: 320, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !464, file: !14, line: 476, baseType: !231, size: 32, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !464, file: !14, line: 477, baseType: !287, size: 32, offset: 544)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !464, file: !14, line: 482, baseType: !2542, size: 128, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !464, file: !14, line: 483, baseType: !217, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !464, file: !14, line: 484, baseType: !217, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !464, file: !14, line: 485, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3912)
!3912 = !{!3913, !3917, !3987, !3991, !3995, !4001, !4005, !4009, !4014, !4018, !4022, !4026, !4027, !4031, !4035, !4039, !4044, !4048, !4055, !4056}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3911, file: !14, line: 405, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !1803, !1098}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3911, file: !14, line: 406, baseType: !3918, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!109, !1468, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !3923)
!3923 = !{!3924, !3954, !3968}
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 295, baseType: !3925, size: 512)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 295, size: 512, elements: !3926)
!3926 = !{!3927, !3953}
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !27, line: 296, baseType: !3928, size: 448)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !27, line: 296, size: 448, elements: !3929)
!3929 = !{!3930, !3931, !3940, !3941, !3942, !3951, !3952}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3928, file: !27, line: 298, baseType: !217, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !27, line: 299, baseType: !3932, size: 128, offset: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !27, line: 299, size: 128, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3932, file: !27, line: 300, baseType: !236, size: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !27, line: 302, baseType: !3936, size: 128)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !27, line: 302, size: 128, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3936, file: !27, line: 303, baseType: !183, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3936, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3928, file: !27, line: 310, baseType: !463, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3928, file: !27, line: 311, baseType: !217, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !27, line: 312, baseType: !3943, size: 64, offset: 320)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !27, line: 312, size: 64, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3943, file: !27, line: 313, baseType: !183, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3943, file: !27, line: 314, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3948)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3949)
!3949 = !{!3950}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3948, file: !27, line: 256, baseType: !217, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3928, file: !27, line: 316, baseType: !287, size: 32, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3928, file: !27, line: 317, baseType: !287, size: 32, offset: 416)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3925, file: !27, line: 323, baseType: !1804, size: 512, align: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 325, baseType: !3955, size: 512, offset: 512)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 325, size: 512, elements: !3956)
!3956 = !{!3957, !3967}
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !27, line: 326, baseType: !3958, size: 320)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !27, line: 326, size: 320, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965, !3966}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3958, file: !27, line: 327, baseType: !217, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3958, file: !27, line: 328, baseType: !217, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3958, file: !27, line: 329, baseType: !217, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3958, file: !27, line: 331, baseType: !287, size: 32, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3958, file: !27, line: 332, baseType: !287, size: 32, offset: 224)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3958, file: !27, line: 333, baseType: !287, size: 32, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3958, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3955, file: !27, line: 339, baseType: !1804, size: 512, align: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !27, line: 341, baseType: !3969, size: 512, offset: 1024)
!3969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !27, line: 341, size: 512, elements: !3970)
!3970 = !{!3971, !3980, !3986}
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !27, line: 342, baseType: !3972, size: 384)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !27, line: 342, size: 384, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3972, file: !27, line: 343, baseType: !217, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3972, file: !27, line: 344, baseType: !217, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3972, file: !27, line: 346, baseType: !183, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3972, file: !27, line: 347, baseType: !183, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3972, file: !27, line: 348, baseType: !183, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3972, file: !27, line: 349, baseType: !183, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !27, line: 352, baseType: !3981, size: 256)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !27, line: 352, size: 256, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3981, file: !27, line: 353, baseType: !217, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3981, file: !27, line: 354, baseType: !217, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3981, file: !27, line: 356, baseType: !236, size: 128, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3969, file: !27, line: 359, baseType: !1804, size: 512, align: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3911, file: !14, line: 409, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !463, !1098}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3911, file: !14, line: 412, baseType: !3992, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!204, !463, !3921}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3911, file: !14, line: 414, baseType: !3996, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3911, file: !14, line: 416, baseType: !4002, size: 64, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !1468, !463, !628, !7, !3319, !2032}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3911, file: !14, line: 419, baseType: !4006, size: 64, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !1468, !463, !628, !7, !7, !1803, !183}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3911, file: !14, line: 424, baseType: !4010, size: 64, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!4013, !463, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !205, line: 131, baseType: !540)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3911, file: !14, line: 425, baseType: !4015, size: 64, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !3921, !221, !221}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3911, file: !14, line: 426, baseType: !4019, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!204, !3921, !231}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3911, file: !14, line: 427, baseType: !4023, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3921}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3911, file: !14, line: 428, baseType: !1478, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3911, file: !14, line: 433, baseType: !4028, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !463, !3921, !3921, !74}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3911, file: !14, line: 435, baseType: !4032, size: 64, offset: 832)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!109, !3921}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3911, file: !14, line: 436, baseType: !4036, size: 64, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!204, !3921, !221, !221}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3911, file: !14, line: 438, baseType: !4040, size: 64, offset: 960)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{null, !3921, !4043, !4043}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3911, file: !14, line: 439, baseType: !4045, size: 64, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!109, !463, !1803}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3911, file: !14, line: 442, baseType: !4049, size: 64, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!109, !4052, !1468, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3911, file: !14, line: 444, baseType: !2024, size: 64, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3911, file: !14, line: 445, baseType: !4057, size: 64, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!109, !1481, !1503}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !14, line: 486, baseType: !217, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !464, file: !14, line: 487, baseType: !1284, size: 320, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !464, file: !14, line: 488, baseType: !2067, size: 32, offset: 1280)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !464, file: !14, line: 489, baseType: !356, size: 32, offset: 1312)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !464, file: !14, line: 490, baseType: !236, size: 128, offset: 1344)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !464, file: !14, line: 491, baseType: !183, size: 64, offset: 1472)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !454, file: !418, line: 180, baseType: !4067, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!424, !1468, !349, !453, !392, !628, !221}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !454, file: !418, line: 182, baseType: !4067, size: 64, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !454, file: !418, line: 184, baseType: !4072, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!109, !1468, !349, !453, !1542}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !442, file: !418, line: 90, baseType: !4076, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !442, file: !418, line: 91, baseType: !4078, size: 64, offset: 256)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !408, file: !341, line: 120, baseType: !4080, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!4083, !375}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4086)
!4086 = !{!4087, !4088, !4092, !4096, !4102, !4106}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4085, file: !82, line: 40, baseType: !81, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4085, file: !82, line: 41, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!204}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4085, file: !82, line: 42, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!183}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4085, file: !82, line: 43, baseType: !4097, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!1670, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4085, file: !82, line: 44, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!1670}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4085, file: !82, line: 45, baseType: !749, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !408, file: !341, line: 121, baseType: !4108, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1670, !375}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !408, file: !341, line: 122, baseType: !4112, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !375, !4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !340, file: !341, line: 70, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4120, line: 190, size: 1152, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4201, !4202, !4203, !4204, !4205, !4208}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4119, file: !4120, line: 191, baseType: !287, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4119, file: !4120, line: 192, baseType: !287, size: 32, offset: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4119, file: !4120, line: 202, baseType: !4118, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4119, file: !4120, line: 203, baseType: !344, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4119, file: !4120, line: 205, baseType: !816, size: 192, align: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4119, file: !4120, line: 207, baseType: !1670, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4119, file: !4120, line: 208, baseType: !7, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !4120, line: 209, baseType: !4130, size: 256, offset: 512)
!4130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4119, file: !4120, line: 209, size: 256, elements: !4131)
!4131 = !{!4132, !4141, !4145}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4130, file: !4120, line: 210, baseType: !4133, size: 256)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4120, line: 153, size: 256, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4133, file: !4120, line: 154, baseType: !217, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4133, file: !4120, line: 156, baseType: !2545, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4133, file: !4120, line: 162, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4120, line: 162, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4133, file: !4120, line: 167, baseType: !217, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4130, file: !4120, line: 211, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4120, line: 170, size: 64, elements: !4143)
!4143 = !{!4144}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4142, file: !4120, line: 171, baseType: !4118, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4130, file: !4120, line: 212, baseType: !4146, size: 256)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4120, line: 174, size: 256, elements: !4147)
!4147 = !{!4148, !4196, !4199, !4200}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4146, file: !4120, line: 175, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4120, line: 271, size: 768, elements: !4152)
!4152 = !{!4153, !4173, !4177, !4178, !4179, !4180, !4181, !4185, !4186, !4187, !4188, !4192}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4151, file: !4120, line: 276, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!109, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4120, line: 251, size: 1216, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4158, file: !4120, line: 253, baseType: !4118, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4158, file: !4120, line: 254, baseType: !1468, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4158, file: !4120, line: 255, baseType: !1135, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4158, file: !4120, line: 256, baseType: !183, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4158, file: !4120, line: 259, baseType: !269, size: 256, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4158, file: !4120, line: 260, baseType: !269, size: 256, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4158, file: !4120, line: 261, baseType: !109, size: 32, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4158, file: !4120, line: 262, baseType: !236, size: 128, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4158, file: !4120, line: 263, baseType: !392, size: 64, offset: 960)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4158, file: !4120, line: 265, baseType: !221, size: 64, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4158, file: !4120, line: 266, baseType: !204, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4158, file: !4120, line: 267, baseType: !204, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4158, file: !4120, line: 268, baseType: !1739, size: 64, offset: 1152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4151, file: !4120, line: 277, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4157}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4151, file: !4120, line: 290, baseType: !1166, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4151, file: !4120, line: 292, baseType: !1153, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4151, file: !4120, line: 293, baseType: !1162, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4151, file: !4120, line: 294, baseType: !1158, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4151, file: !4120, line: 296, baseType: !4182, size: 64, offset: 384)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!424, !4157, !392, !221, !628}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4151, file: !4120, line: 306, baseType: !221, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4151, file: !4120, line: 313, baseType: !204, size: 8, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4151, file: !4120, line: 314, baseType: !4182, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4151, file: !4120, line: 317, baseType: !4189, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!1529, !4157, !1531}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4151, file: !4120, line: 320, baseType: !4193, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!109, !4157, !1542}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4146, file: !4120, line: 176, baseType: !4197, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4120, line: 35, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4146, file: !4120, line: 177, baseType: !628, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4146, file: !4120, line: 178, baseType: !4118, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4119, file: !4120, line: 215, baseType: !183, size: 64, offset: 768)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4119, file: !4120, line: 221, baseType: !540, size: 64, offset: 832)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4119, file: !4120, line: 223, baseType: !302, size: 16, offset: 896)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4119, file: !4120, line: 224, baseType: !433, size: 16, offset: 912)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4119, file: !4120, line: 225, baseType: !4206, size: 64, offset: 960)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4120, line: 36, flags: DIFlagFwdDecl)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4119, file: !4120, line: 227, baseType: !924, size: 128, align: 64, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !340, file: !341, line: 71, baseType: !325, size: 32, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !340, file: !341, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !340, file: !341, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !340, file: !341, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !340, file: !341, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !340, file: !341, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !337, file: !94, line: 707, baseType: !336, size: 64, offset: 512)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !337, file: !94, line: 709, baseType: !4217, size: 64, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !337, file: !94, line: 711, baseType: !344, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !94, line: 712, baseType: !4221, size: 64, offset: 704)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4233, !4238, !4242}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4223, file: !94, line: 90, baseType: !344, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4223, file: !94, line: 91, baseType: !439, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4223, file: !94, line: 92, baseType: !4228, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!109, !4231, !387}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4223, file: !94, line: 93, baseType: !4234, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!392, !4231, !4237, !4115, !4116}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4223, file: !94, line: 95, baseType: !4239, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !336}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4223, file: !94, line: 97, baseType: !4243, size: 64, offset: 320)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4246)
!4246 = !{!4247, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4245, file: !101, line: 287, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!109, !336}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4245, file: !101, line: 288, baseType: !4239, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4245, file: !101, line: 289, baseType: !4248, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4245, file: !101, line: 290, baseType: !4248, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4245, file: !101, line: 291, baseType: !4248, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4245, file: !101, line: 292, baseType: !4248, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4245, file: !101, line: 293, baseType: !4248, size: 64, offset: 384)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4245, file: !101, line: 294, baseType: !4248, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4245, file: !101, line: 295, baseType: !4248, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4245, file: !101, line: 296, baseType: !4248, size: 64, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4245, file: !101, line: 297, baseType: !4248, size: 64, offset: 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4245, file: !101, line: 298, baseType: !4248, size: 64, offset: 704)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4245, file: !101, line: 299, baseType: !4248, size: 64, offset: 768)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4245, file: !101, line: 300, baseType: !4248, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4245, file: !101, line: 301, baseType: !4248, size: 64, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4245, file: !101, line: 302, baseType: !4248, size: 64, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4245, file: !101, line: 303, baseType: !4248, size: 64, offset: 1024)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4245, file: !101, line: 304, baseType: !4248, size: 64, offset: 1088)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4245, file: !101, line: 305, baseType: !4248, size: 64, offset: 1152)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4245, file: !101, line: 306, baseType: !4248, size: 64, offset: 1216)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4245, file: !101, line: 307, baseType: !4248, size: 64, offset: 1280)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4245, file: !101, line: 308, baseType: !4248, size: 64, offset: 1344)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4245, file: !101, line: 309, baseType: !4248, size: 64, offset: 1408)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !337, file: !94, line: 714, baseType: !4274, size: 64, offset: 768)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4277, line: 80, size: 1344, elements: !4278)
!4277 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4342}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4276, file: !4277, line: 81, baseType: !344, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4276, file: !4277, line: 82, baseType: !344, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4276, file: !4277, line: 83, baseType: !439, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4276, file: !4277, line: 84, baseType: !439, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4276, file: !4277, line: 85, baseType: !439, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4276, file: !4277, line: 87, baseType: !4285, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!109, !336, !4288}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4297, !4301, !4305, !4306, !4307, !4308, !4309, !4317, !4318, !4319, !4320, !4321, !4322}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4289, file: !88, line: 97, baseType: !344, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4289, file: !88, line: 98, baseType: !4274, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4289, file: !88, line: 100, baseType: !655, size: 64, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4289, file: !88, line: 101, baseType: !344, size: 64, offset: 192)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4289, file: !88, line: 103, baseType: !204, size: 8, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4289, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4289, file: !88, line: 106, baseType: !4298, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4300)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4289, file: !88, line: 107, baseType: !4302, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4289, file: !88, line: 109, baseType: !4248, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4289, file: !88, line: 110, baseType: !4239, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4289, file: !88, line: 111, baseType: !4248, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4289, file: !88, line: 112, baseType: !4239, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4289, file: !88, line: 113, baseType: !4310, size: 64, offset: 704)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!109, !336, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4315)
!4315 = !{!4316}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4314, file: !101, line: 59, baseType: !109, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4289, file: !88, line: 114, baseType: !4248, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4289, file: !88, line: 115, baseType: !439, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4289, file: !88, line: 116, baseType: !439, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4289, file: !88, line: 118, baseType: !4243, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4289, file: !88, line: 119, baseType: !4239, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4289, file: !88, line: 121, baseType: !4323, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4276, file: !4277, line: 88, baseType: !4228, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4276, file: !4277, line: 89, baseType: !4248, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4276, file: !4277, line: 90, baseType: !4239, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4276, file: !4277, line: 91, baseType: !4239, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4276, file: !4277, line: 92, baseType: !4239, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4276, file: !4277, line: 94, baseType: !4248, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4276, file: !4277, line: 95, baseType: !4248, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4276, file: !4277, line: 97, baseType: !4310, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4276, file: !4277, line: 98, baseType: !4248, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4276, file: !4277, line: 100, baseType: !4248, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4276, file: !4277, line: 102, baseType: !4248, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4276, file: !4277, line: 103, baseType: !4239, size: 64, offset: 1088)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4276, file: !4277, line: 105, baseType: !4243, size: 64, offset: 1152)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4276, file: !4277, line: 107, baseType: !4339, size: 64, offset: 1216)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4277, line: 107, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4276, file: !4277, line: 109, baseType: !204, size: 8, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !337, file: !94, line: 715, baseType: !4288, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !337, file: !94, line: 717, baseType: !183, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !337, file: !94, line: 719, baseType: !183, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !337, file: !94, line: 721, baseType: !269, size: 256, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !337, file: !94, line: 725, baseType: !4348, size: 448, offset: 1280)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4348, file: !94, line: 518, baseType: !236, size: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4348, file: !94, line: 519, baseType: !236, size: 128, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4348, file: !94, line: 520, baseType: !236, size: 128, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4348, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !337, file: !94, line: 726, baseType: !4355, size: 2496, offset: 1728)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4439, !4443}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4355, file: !101, line: 664, baseType: !4313, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4355, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4355, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4355, file: !101, line: 667, baseType: !204, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4355, file: !101, line: 668, baseType: !204, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4355, file: !101, line: 669, baseType: !204, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4355, file: !101, line: 670, baseType: !204, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4355, file: !101, line: 671, baseType: !204, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4355, file: !101, line: 672, baseType: !204, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4355, file: !101, line: 673, baseType: !204, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4355, file: !101, line: 674, baseType: !204, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4355, file: !101, line: 675, baseType: !536, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4355, file: !101, line: 676, baseType: !356, size: 32, offset: 96)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4355, file: !101, line: 678, baseType: !236, size: 128, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4355, file: !101, line: 679, baseType: !675, size: 256, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4355, file: !101, line: 680, baseType: !4373, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4375, line: 43, size: 1536, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4376 = !{!4377, !4378, !4379, !4380, !4381, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4374, file: !4375, line: 44, baseType: !344, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4374, file: !4375, line: 45, baseType: !109, size: 32, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4374, file: !4375, line: 46, baseType: !236, size: 128, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4374, file: !4375, line: 47, baseType: !356, size: 32, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4374, file: !4375, line: 48, baseType: !4382, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4374, file: !4375, line: 49, baseType: !946, size: 320, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4374, file: !4375, line: 50, baseType: !217, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4374, file: !4375, line: 51, baseType: !2491, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4374, file: !4375, line: 52, baseType: !2491, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4374, file: !4375, line: 53, baseType: !2491, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4374, file: !4375, line: 54, baseType: !2491, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4374, file: !4375, line: 55, baseType: !2491, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4374, file: !4375, line: 56, baseType: !217, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4374, file: !4375, line: 57, baseType: !217, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4374, file: !4375, line: 58, baseType: !217, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4374, file: !4375, line: 59, baseType: !217, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4374, file: !4375, line: 60, baseType: !217, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4374, file: !4375, line: 61, baseType: !336, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4374, file: !4375, line: 62, baseType: !204, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4374, file: !4375, line: 63, baseType: !204, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4355, file: !101, line: 681, baseType: !204, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4355, file: !101, line: 682, baseType: !204, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4355, file: !101, line: 683, baseType: !204, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4355, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4355, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4355, file: !101, line: 690, baseType: !2483, size: 512, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4355, file: !101, line: 691, baseType: !540, size: 64, offset: 1152)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4355, file: !101, line: 692, baseType: !249, size: 256, offset: 1216)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4355, file: !101, line: 693, baseType: !1223, size: 192, offset: 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4355, file: !101, line: 694, baseType: !4382, size: 64, offset: 1664)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4355, file: !101, line: 695, baseType: !287, size: 32, offset: 1728)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4355, file: !101, line: 696, baseType: !287, size: 32, offset: 1760)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4355, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4355, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4355, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4355, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4355, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4355, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4355, file: !101, line: 703, baseType: !204, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4355, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4355, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4355, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4355, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4355, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4355, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4355, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4355, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4355, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4355, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4355, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4355, file: !101, line: 715, baseType: !540, size: 64, offset: 2048)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4355, file: !101, line: 716, baseType: !540, size: 64, offset: 2112)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4355, file: !101, line: 717, baseType: !540, size: 64, offset: 2176)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4355, file: !101, line: 718, baseType: !540, size: 64, offset: 2240)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4355, file: !101, line: 720, baseType: !4434, size: 64, offset: 2304)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4436)
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4435, file: !101, line: 633, baseType: !356, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4435, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4355, file: !101, line: 721, baseType: !4440, size: 64, offset: 2368)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !336, !721}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4355, file: !101, line: 722, baseType: !4444, size: 64, offset: 2432)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !337, file: !94, line: 727, baseType: !4447, size: 64, offset: 4224)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4449)
!4449 = !{!4450, !4451, !4452, !4456, !4457, !4458}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4448, file: !101, line: 743, baseType: !4245, size: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4448, file: !101, line: 744, baseType: !4248, size: 64, offset: 1472)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4448, file: !101, line: 745, baseType: !4453, size: 64, offset: 1536)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !336, !204}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4448, file: !101, line: 746, baseType: !4248, size: 64, offset: 1600)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4448, file: !101, line: 747, baseType: !4239, size: 64, offset: 1664)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4448, file: !101, line: 748, baseType: !4239, size: 64, offset: 1728)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !337, file: !94, line: 736, baseType: !4460, size: 128, offset: 4288)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4461)
!4461 = !{!4462, !4466}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4460, file: !94, line: 531, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4465, line: 13, flags: DIFlagFwdDecl)
!4465 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4460, file: !94, line: 532, baseType: !4467, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !337, file: !94, line: 738, baseType: !4470, size: 64, offset: 4416)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4472)
!4472 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !337, file: !94, line: 740, baseType: !4474, size: 64, offset: 4480)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !337, file: !94, line: 741, baseType: !540, size: 64, offset: 4544)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !337, file: !94, line: 746, baseType: !540, size: 64, offset: 4608)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !337, file: !94, line: 747, baseType: !4478, size: 64, offset: 4672)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !337, file: !94, line: 749, baseType: !4482, size: 64, offset: 4736)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4484)
!4484 = !{!4485, !4486, !4487}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4483, file: !94, line: 433, baseType: !7, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4483, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4483, file: !94, line: 435, baseType: !217, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !337, file: !94, line: 751, baseType: !236, size: 128, offset: 4800)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !337, file: !94, line: 762, baseType: !4490, size: 64, offset: 4928)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !337, file: !94, line: 770, baseType: !4493, offset: 4992)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4494, line: 5, elements: !982)
!4494 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !337, file: !94, line: 772, baseType: !4496, size: 64, offset: 4992)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4498, line: 18, flags: DIFlagFwdDecl)
!4498 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !337, file: !94, line: 773, baseType: !4500, size: 64, offset: 5056)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4502, line: 41, size: 512, elements: !4503)
!4502 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4503 = !{!4504, !4505, !4599, !4600, !4601, !4602}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4501, file: !4502, line: 42, baseType: !4500, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4501, file: !4502, line: 43, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4502, line: 125, size: 1408, elements: !4509)
!4509 = !{!4510, !4514, !4518, !4524, !4528, !4529, !4534, !4538, !4542, !4546, !4550, !4551, !4555, !4559, !4563, !4574, !4575, !4576, !4577, !4587, !4591, !4595}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4508, file: !4502, line: 126, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!4500, !4500}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4508, file: !4502, line: 127, baseType: !4515, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{null, !4500}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4508, file: !4502, line: 128, baseType: !4519, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!204, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4508, file: !4502, line: 129, baseType: !4525, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!1670, !4522, !4231}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4508, file: !4502, line: 131, baseType: !4519, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4508, file: !4502, line: 133, baseType: !4530, size: 64, offset: 320)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!4533, !4522}
!4533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4502, line: 132, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4508, file: !4502, line: 134, baseType: !4535, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!204, !4522, !344}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4508, file: !4502, line: 136, baseType: !4539, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!109, !4522, !344, !7, !183, !221}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4508, file: !4502, line: 141, baseType: !4543, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!109, !4522, !344, !1030, !221}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4508, file: !4502, line: 144, baseType: !4547, size: 64, offset: 576)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!344, !4522}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4508, file: !4502, line: 145, baseType: !4547, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4508, file: !4502, line: 146, baseType: !4552, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4500, !4522}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4508, file: !4502, line: 148, baseType: !4556, size: 64, offset: 768)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4500, !4522, !4500}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4508, file: !4502, line: 151, baseType: !4560, size: 64, offset: 832)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!4500, !4522, !344}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4508, file: !4502, line: 153, baseType: !4564, size: 64, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4522, !344, !344, !7, !7, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4502, line: 94, size: 640, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4568, file: !4502, line: 95, baseType: !4500, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4568, file: !4502, line: 96, baseType: !7, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4568, file: !4502, line: 97, baseType: !4573, size: 512, offset: 128)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 512, elements: !2526)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4508, file: !4502, line: 158, baseType: !4556, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4508, file: !4502, line: 161, baseType: !4552, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4508, file: !4502, line: 163, baseType: !4511, size: 64, offset: 1088)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4508, file: !4502, line: 164, baseType: !4578, size: 64, offset: 1152)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!109, !4522, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4502, line: 73, size: 128, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4582, file: !4502, line: 74, baseType: !7, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4582, file: !4502, line: 75, baseType: !7, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4582, file: !4502, line: 76, baseType: !4522, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4508, file: !4502, line: 166, baseType: !4588, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!183, !4500, !109}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4508, file: !4502, line: 167, baseType: !4592, size: 64, offset: 1280)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !4522, !7}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4508, file: !4502, line: 168, baseType: !4596, size: 64, offset: 1344)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!109, !4500}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4501, file: !4502, line: 44, baseType: !336, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4501, file: !4502, line: 45, baseType: !236, size: 128, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4501, file: !4502, line: 46, baseType: !236, size: 128, offset: 320)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4501, file: !4502, line: 47, baseType: !209, size: 8, offset: 448)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !337, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !337, file: !94, line: 778, baseType: !623, size: 32, offset: 5152)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !337, file: !94, line: 779, baseType: !536, size: 32, offset: 5184)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !337, file: !94, line: 781, baseType: !356, size: 32, offset: 5216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !337, file: !94, line: 782, baseType: !236, size: 128, offset: 5248)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !337, file: !94, line: 784, baseType: !4609, size: 64, offset: 5376)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4611)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4612, line: 52, size: 768, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4622, !4626, !4627, !4628, !4629, !4633, !4637}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4611, file: !4612, line: 53, baseType: !344, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4611, file: !4612, line: 55, baseType: !439, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4611, file: !4612, line: 56, baseType: !439, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4611, file: !4612, line: 58, baseType: !4228, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4611, file: !4612, line: 59, baseType: !4619, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!392, !4231, !4237}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4611, file: !4612, line: 61, baseType: !4623, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4609}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4611, file: !4612, line: 62, baseType: !4239, size: 64, offset: 384)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4611, file: !4612, line: 64, baseType: !4248, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4611, file: !4612, line: 66, baseType: !4083, size: 64, offset: 512)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4611, file: !4612, line: 67, baseType: !4630, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!1670, !4231}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4611, file: !4612, line: 69, baseType: !4634, size: 64, offset: 640)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !4231, !4115, !4116}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4611, file: !4612, line: 71, baseType: !4243, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !337, file: !94, line: 785, baseType: !439, size: 64, offset: 5440)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !337, file: !94, line: 787, baseType: !4239, size: 64, offset: 5504)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !337, file: !94, line: 788, baseType: !4641, size: 64, offset: 5568)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !337, file: !94, line: 789, baseType: !4644, size: 64, offset: 5632)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !337, file: !94, line: 791, baseType: !4647, size: 64, offset: 5696)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4648, file: !94, line: 598, baseType: !116, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4648, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4648, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4648, file: !94, line: 601, baseType: !204, size: 8, offset: 96)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4648, file: !94, line: 602, baseType: !204, size: 8, offset: 104)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !337, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !337, file: !94, line: 795, baseType: !204, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !337, file: !94, line: 796, baseType: !204, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !337, file: !94, line: 797, baseType: !204, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !337, file: !94, line: 798, baseType: !204, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !337, file: !94, line: 799, baseType: !204, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !321, file: !322, line: 197, baseType: !4662, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !4664, line: 441, size: 1472, elements: !4665)
!4664 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!4665 = !{!4666, !4667, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4697, !4698, !4701, !4702, !4704, !4706, !4709, !4710, !4828}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4663, file: !4664, line: 442, baseType: !325, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !4663, file: !4664, line: 443, baseType: !4668, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4663, file: !4664, line: 444, baseType: !655, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4663, file: !4664, line: 445, baseType: !344, size: 64, offset: 192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4663, file: !4664, line: 446, baseType: !344, size: 64, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !4663, file: !4664, line: 447, baseType: !109, size: 32, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4663, file: !4664, line: 448, baseType: !109, size: 32, offset: 352)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !4663, file: !4664, line: 449, baseType: !109, size: 32, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4663, file: !4664, line: 450, baseType: !7, size: 32, offset: 416)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4663, file: !4664, line: 451, baseType: !842, size: 16, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !4663, file: !4664, line: 452, baseType: !842, size: 16, offset: 464)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4663, file: !4664, line: 453, baseType: !4679, size: 352, offset: 480)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4680, line: 30, size: 352, elements: !4681)
!4680 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!4681 = !{!4682, !4684, !4685, !4686, !4687, !4690, !4694, !4696}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4679, file: !4680, line: 31, baseType: !4683, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4680, line: 7, baseType: !7)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4679, file: !4680, line: 32, baseType: !4683, size: 32, offset: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4679, file: !4680, line: 33, baseType: !4683, size: 32, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4679, file: !4680, line: 34, baseType: !4683, size: 32, offset: 96)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4679, file: !4680, line: 35, baseType: !4688, size: 8, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4689, line: 5, baseType: !213)
!4689 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4679, file: !4680, line: 36, baseType: !4691, size: 152, offset: 136)
!4691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4688, size: 152, elements: !4692)
!4692 = !{!4693}
!4693 = !DISubrange(count: 19)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4679, file: !4680, line: 37, baseType: !4695, size: 32, offset: 288)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4689, line: 6, baseType: !7)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4679, file: !4680, line: 38, baseType: !4695, size: 32, offset: 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4663, file: !4664, line: 454, baseType: !217, size: 64, offset: 832)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !4663, file: !4664, line: 455, baseType: !4699, size: 64, offset: 896)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4664, line: 455, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !4663, file: !4664, line: 456, baseType: !4662, size: 64, offset: 960)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !4663, file: !4664, line: 461, baseType: !4703, size: 64, offset: 1024)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4663, file: !4664, line: 462, baseType: !4705, size: 64, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !4663, file: !4664, line: 463, baseType: !4707, size: 64, offset: 1152)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !4663, file: !4664, line: 464, baseType: !183, size: 64, offset: 1216)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4663, file: !4664, line: 470, baseType: !4711, size: 64, offset: 1280)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4713)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !4664, line: 357, size: 2176, elements: !4714)
!4714 = !{!4715, !4719, !4723, !4727, !4731, !4735, !4739, !4740, !4746, !4750, !4751, !4755, !4756, !4760, !4764, !4770, !4771, !4772, !4773, !4774, !4775, !4779, !4780, !4781, !4782, !4786, !4790, !4794, !4798, !4810, !4816, !4822, !4823, !4827}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4713, file: !4664, line: 358, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!320, !4662, !1468, !109}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4713, file: !4664, line: 360, baseType: !4720, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!109, !4662, !320}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4713, file: !4664, line: 361, baseType: !4724, size: 64, offset: 128)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4662, !320}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4713, file: !4664, line: 362, baseType: !4728, size: 64, offset: 192)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!109, !320, !1468}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4713, file: !4664, line: 363, baseType: !4732, size: 64, offset: 256)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{null, !320, !1468}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4713, file: !4664, line: 364, baseType: !4736, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !320}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4713, file: !4664, line: 365, baseType: !4736, size: 64, offset: 384)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4713, file: !4664, line: 366, baseType: !4741, size: 64, offset: 448)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!424, !320, !4744, !221}
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4713, file: !4664, line: 367, baseType: !4747, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!109, !320, !209}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4713, file: !4664, line: 368, baseType: !4736, size: 64, offset: 576)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4713, file: !4664, line: 369, baseType: !4752, size: 64, offset: 640)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!7, !320}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4713, file: !4664, line: 370, baseType: !4752, size: 64, offset: 704)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4713, file: !4664, line: 371, baseType: !4757, size: 64, offset: 768)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!109, !320, !7, !217}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4713, file: !4664, line: 373, baseType: !4761, size: 64, offset: 832)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!427, !320, !7, !217}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4713, file: !4664, line: 375, baseType: !4765, size: 64, offset: 896)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{null, !320, !4768}
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4679)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4713, file: !4664, line: 376, baseType: !4736, size: 64, offset: 960)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4713, file: !4664, line: 377, baseType: !4736, size: 64, offset: 1024)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4713, file: !4664, line: 378, baseType: !4736, size: 64, offset: 1088)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4713, file: !4664, line: 379, baseType: !4736, size: 64, offset: 1152)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4713, file: !4664, line: 380, baseType: !4736, size: 64, offset: 1216)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4713, file: !4664, line: 381, baseType: !4776, size: 64, offset: 1280)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!109, !320, !109}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4713, file: !4664, line: 382, baseType: !4736, size: 64, offset: 1344)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4713, file: !4664, line: 383, baseType: !4776, size: 64, offset: 1408)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4713, file: !4664, line: 384, baseType: !4736, size: 64, offset: 1472)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4713, file: !4664, line: 385, baseType: !4783, size: 64, offset: 1536)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !320, !109}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4713, file: !4664, line: 386, baseType: !4787, size: 64, offset: 1600)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{null, !320, !346}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4713, file: !4664, line: 387, baseType: !4791, size: 64, offset: 1664)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !320}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4713, file: !4664, line: 388, baseType: !4795, size: 64, offset: 1728)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!109, !320, !7, !7}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4713, file: !4664, line: 390, baseType: !4799, size: 64, offset: 1792)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!109, !320, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4804, line: 15, size: 64, elements: !4805)
!4804 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4805 = !{!4806, !4807, !4808, !4809}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4803, file: !4804, line: 16, baseType: !302, size: 16)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4803, file: !4804, line: 17, baseType: !302, size: 16, offset: 16)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4803, file: !4804, line: 18, baseType: !302, size: 16, offset: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4803, file: !4804, line: 19, baseType: !302, size: 16, offset: 48)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4713, file: !4664, line: 391, baseType: !4811, size: 64, offset: 1856)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!109, !320, !4814}
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !4664, line: 16, flags: DIFlagFwdDecl)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4713, file: !4664, line: 393, baseType: !4817, size: 64, offset: 1920)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!109, !320, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !4664, line: 17, flags: DIFlagFwdDecl)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4713, file: !4664, line: 394, baseType: !4817, size: 64, offset: 1984)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4713, file: !4664, line: 395, baseType: !4824, size: 64, offset: 2048)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{null, !320, !1135}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4713, file: !4664, line: 401, baseType: !1166, size: 64, offset: 2112)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !4663, file: !4664, line: 471, baseType: !236, size: 128, offset: 1344)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !321, file: !322, line: 198, baseType: !240, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !321, file: !322, line: 199, baseType: !4711, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !321, file: !322, line: 201, baseType: !4832, size: 64, offset: 320)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4834, line: 269, size: 128, elements: !4835)
!4834 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4835 = !{!4836, !4877}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4833, file: !4834, line: 270, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4834, line: 231, size: 1152, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4850, !4854, !4855, !4856, !4857, !4861, !4862, !4866, !4867, !4871, !4875, !4876}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4838, file: !4834, line: 232, baseType: !392, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4838, file: !4834, line: 233, baseType: !109, size: 32, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4838, file: !4834, line: 238, baseType: !4791, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4838, file: !4834, line: 239, baseType: !4736, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4838, file: !4834, line: 240, baseType: !4736, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4838, file: !4834, line: 241, baseType: !4846, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!424, !320, !1468, !4849, !221, !2032, !217}
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4838, file: !4834, line: 243, baseType: !4851, size: 64, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!424, !320, !1468, !4744, !221}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4838, file: !4834, line: 245, baseType: !4757, size: 64, offset: 448)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4838, file: !4834, line: 247, baseType: !4757, size: 64, offset: 512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4838, file: !4834, line: 249, baseType: !4765, size: 64, offset: 576)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4838, file: !4834, line: 250, baseType: !4858, size: 64, offset: 640)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!1529, !320, !1468, !1531}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4838, file: !4834, line: 252, baseType: !4736, size: 64, offset: 704)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4838, file: !4834, line: 257, baseType: !4863, size: 64, offset: 768)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !320, !4744, !4744, !221}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4838, file: !4834, line: 259, baseType: !4736, size: 64, offset: 832)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4838, file: !4834, line: 260, baseType: !4868, size: 64, offset: 896)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !320, !204}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4838, file: !4834, line: 261, baseType: !4872, size: 64, offset: 960)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!221, !320, !4744, !4744, !221}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4838, file: !4834, line: 263, baseType: !4863, size: 64, offset: 1024)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4838, file: !4834, line: 266, baseType: !655, size: 64, offset: 1088)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4833, file: !4834, line: 271, baseType: !320, size: 64, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !321, file: !322, line: 202, baseType: !4879, size: 384, offset: 384)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4834, line: 17, size: 384, elements: !4880)
!4880 = !{!4881, !4882, !4883, !4884, !4885}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4879, file: !4834, line: 18, baseType: !252, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4879, file: !4834, line: 19, baseType: !274, size: 32, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4879, file: !4834, line: 20, baseType: !7, size: 32, offset: 96)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4879, file: !4834, line: 21, baseType: !236, size: 128, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4879, file: !4834, line: 22, baseType: !236, size: 128, offset: 256)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !321, file: !322, line: 204, baseType: !269, size: 256, offset: 768)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !321, file: !322, line: 205, baseType: !269, size: 256, offset: 1024)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !321, file: !322, line: 206, baseType: !269, size: 256, offset: 1280)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !321, file: !322, line: 207, baseType: !1284, size: 320, offset: 1536)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !321, file: !322, line: 208, baseType: !269, size: 256, offset: 1856)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !321, file: !322, line: 209, baseType: !4679, size: 352, offset: 2112)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !321, file: !322, line: 209, baseType: !4679, size: 352, offset: 2464)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !322, line: 210, baseType: !4894, size: 512, offset: 2816)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 512, elements: !397)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !322, line: 211, baseType: !217, size: 64, offset: 3328)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !321, file: !322, line: 212, baseType: !109, size: 32, offset: 3392)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !321, file: !322, line: 213, baseType: !7, size: 32, offset: 3424)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !321, file: !322, line: 214, baseType: !4803, size: 64, offset: 3456)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !321, file: !322, line: 221, baseType: !4900, size: 64, align: 64, offset: 3520)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !322, line: 216, size: 64, align: 64, elements: !4901)
!4901 = !{!4902, !4903, !4904, !4905}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4900, file: !322, line: 217, baseType: !356, size: 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4900, file: !322, line: 218, baseType: !204, size: 8, offset: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4900, file: !322, line: 219, baseType: !204, size: 8, offset: 40)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4900, file: !322, line: 220, baseType: !4906, offset: 64)
!4906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !4907)
!4907 = !{!4908}
!4908 = !DISubrange(count: 0)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !321, file: !322, line: 230, baseType: !4910, size: 192, align: 64, offset: 3584)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !322, line: 223, size: 192, align: 64, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4910, file: !322, line: 224, baseType: !1213, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4910, file: !322, line: 225, baseType: !1213, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4910, file: !322, line: 226, baseType: !356, size: 32, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4910, file: !322, line: 227, baseType: !213, size: 8, offset: 160)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4910, file: !322, line: 228, baseType: !204, size: 8, offset: 168)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4910, file: !322, line: 229, baseType: !4906, offset: 192)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !321, file: !322, line: 232, baseType: !204, size: 8, offset: 3776)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !321, file: !322, line: 233, baseType: !204, size: 8, offset: 3784)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !321, file: !322, line: 234, baseType: !109, size: 32, offset: 3808)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !321, file: !322, line: 236, baseType: !320, size: 64, offset: 3840)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !321, file: !322, line: 237, baseType: !4923, size: 64, offset: 3904)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4925)
!4925 = !{!4926, !4927, !4928, !4929, !4930, !4931}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4924, file: !14, line: 1084, baseType: !1192, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4924, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4924, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4924, file: !14, line: 1087, baseType: !4923, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4924, file: !14, line: 1088, baseType: !1468, size: 64, offset: 192)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4924, file: !14, line: 1089, baseType: !924, size: 128, align: 64, offset: 256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !321, file: !322, line: 238, baseType: !1223, size: 192, offset: 3968)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !321, file: !322, line: 239, baseType: !1223, size: 192, offset: 4160)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !321, file: !322, line: 240, baseType: !249, size: 256, offset: 4352)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !321, file: !322, line: 241, baseType: !183, size: 64, offset: 4608)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !321, file: !322, line: 242, baseType: !183, size: 64, offset: 4672)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !321, file: !322, line: 243, baseType: !356, size: 32, offset: 4736)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !321, file: !322, line: 244, baseType: !109, size: 32, offset: 4768)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !321, file: !322, line: 245, baseType: !4940, size: 64, offset: 4800)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !321, file: !322, line: 247, baseType: !236, size: 128, offset: 4864)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !321, file: !322, line: 250, baseType: !249, size: 256, offset: 4992)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !241, file: !242, line: 104, baseType: !320, size: 64, offset: 1152)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !241, file: !242, line: 105, baseType: !4945, size: 64, offset: 1216)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4947)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !242, line: 33, size: 320, elements: !4948)
!4948 = !{!4949, !4953, !4957, !4961, !4965}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4947, file: !242, line: 34, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!204, !240}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4947, file: !242, line: 35, baseType: !4954, size: 64, offset: 64)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !240, !204}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4947, file: !242, line: 36, baseType: !4958, size: 64, offset: 128)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{null, !240}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4947, file: !242, line: 37, baseType: !4962, size: 64, offset: 192)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!109, !240, !320}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4947, file: !242, line: 38, baseType: !4958, size: 64, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !241, file: !242, line: 106, baseType: !4967, size: 64, offset: 1280)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4969)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !242, line: 41, size: 192, elements: !4970)
!4970 = !{!4971, !4975, !4979}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4969, file: !242, line: 42, baseType: !4972, size: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!221, !240, !4744, !4744, !221}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4969, file: !242, line: 44, baseType: !4976, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{null, !240, !4744, !4744, !221}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4969, file: !242, line: 46, baseType: !4958, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !241, file: !242, line: 107, baseType: !356, size: 32, offset: 1344)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !241, file: !242, line: 108, baseType: !109, size: 32, offset: 1376)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !241, file: !242, line: 109, baseType: !109, size: 32, offset: 1408)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !241, file: !242, line: 110, baseType: !1223, size: 192, offset: 1472)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !241, file: !242, line: 111, baseType: !1223, size: 192, offset: 1664)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !242, line: 112, baseType: !217, size: 64, offset: 1856)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !241, file: !242, line: 113, baseType: !217, size: 64, offset: 1920)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !241, file: !242, line: 114, baseType: !213, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !241, file: !242, line: 115, baseType: !269, size: 256, offset: 2048)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !241, file: !242, line: 116, baseType: !269, size: 256, offset: 2304)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !241, file: !242, line: 117, baseType: !4940, size: 64, offset: 2560)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !241, file: !242, line: 118, baseType: !4992, size: 192, offset: 2624)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !242, line: 118, size: 192, elements: !4993)
!4993 = !{!4994, !5013}
!4994 = !DIDerivedType(tag: DW_TAG_member, scope: !4992, file: !242, line: 118, baseType: !4995, size: 192)
!4995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4992, file: !242, line: 118, size: 192, elements: !4996)
!4996 = !{!4997, !5006, !5007, !5008, !5011, !5012}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4995, file: !242, line: 118, baseType: !4998, size: 192)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4999, line: 44, size: 192, elements: !5000)
!4999 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!5000 = !{!5001, !5002, !5003, !5004, !5005}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4998, file: !4999, line: 45, baseType: !7, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4998, file: !4999, line: 46, baseType: !7, size: 32, offset: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4998, file: !4999, line: 47, baseType: !7, size: 32, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4998, file: !4999, line: 48, baseType: !7, size: 32, offset: 96)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4998, file: !4999, line: 49, baseType: !183, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4995, file: !242, line: 118, baseType: !4940, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4995, file: !242, line: 118, baseType: !544, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4995, file: !242, line: 118, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !4907)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4995, file: !242, line: 118, baseType: !4940, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4995, file: !242, line: 118, baseType: !544, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4992, file: !242, line: 118, baseType: !5014, offset: 192)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, elements: !4907)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !241, file: !242, line: 119, baseType: !7, size: 32, offset: 2816)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !241, file: !242, line: 120, baseType: !7, size: 32, offset: 2848)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !241, file: !242, line: 121, baseType: !109, size: 32, offset: 2880)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !241, file: !242, line: 122, baseType: !325, size: 32, offset: 2912)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !241, file: !242, line: 123, baseType: !183, size: 64, offset: 2944)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!5024 = !{!0, !5025, !5027, !5029, !5034, !5039, !5041, !5043, !5045, !5047, !5049, !5056, !5061, !5063, !5065, !5070}
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_buffer_unlock_exclusive288", scope: !2, file: !3, line: 81, type: !183, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_buffer_space_avail291", scope: !2, file: !3, line: 100, type: !183, isLocal: true, isDefinition: true)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !5031, isLocal: true, isDefinition: true)
!5031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 272, elements: !5032)
!5032 = !{!5033}
!5033 = !DISubrange(count: 34)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !5036, isLocal: true, isDefinition: true)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 200, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 25)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_buffer_request_room298", scope: !2, file: !3, line: 298, type: !183, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___tty_insert_flip_string_flags301", scope: !2, file: !3, line: 338, type: !183, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_prepare_flip_string302", scope: !2, file: !3, line: 369, type: !183, isLocal: true, isDefinition: true)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_ldisc_receive_buf305", scope: !2, file: !3, line: 395, type: !183, isLocal: true, isDefinition: true)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_flip_buffer_push318", scope: !2, file: !3, line: 536, type: !183, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(name: "__key", scope: !5051, file: !3, line: 580, type: !1067, isLocal: true, isDefinition: true)
!5051 = distinct !DISubprogram(name: "tty_buffer_init", scope: !3, file: !3, line: 576, type: !4959, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5052 = !{!5053, !5054}
!5053 = !DILocalVariable(name: "port", arg: 1, scope: !5051, file: !3, line: 576, type: !240)
!5054 = !DILocalVariable(name: "buf", scope: !5051, file: !3, line: 578, type: !5055)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(scope: null, file: !3, line: 580, type: !5058, isLocal: true, isDefinition: true)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 88, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 11)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(name: "__key", scope: !5051, file: !3, line: 587, type: !1067, isLocal: true, isDefinition: true)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tty_buffer_set_limit319", scope: !2, file: !3, line: 607, type: !183, isLocal: true, isDefinition: true)
!5065 = !DIGlobalVariableExpression(var: !5066, expr: !DIExpression())
!5066 = distinct !DIGlobalVariable(scope: null, file: !173, line: 480, type: !5067, isLocal: true, isDefinition: true)
!5067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 168, elements: !5068)
!5068 = !{!5069}
!5069 = !DISubrange(count: 21)
!5070 = !DIGlobalVariableExpression(var: !5071, expr: !DIExpression())
!5071 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched181", scope: !5072, file: !2018, line: 2104, type: !183, isLocal: true, isDefinition: true)
!5072 = distinct !DISubprogram(name: "_cond_resched", scope: !2018, file: !2018, line: 2102, type: !798, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5073 = !{i32 7, !"Dwarf Version", i32 5}
!5074 = !{i32 2, !"Debug Info Version", i32 3}
!5075 = !{i32 1, !"wchar_size", i32 2}
!5076 = !{i32 8, !"cf-protection-branch", i32 1}
!5077 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5078 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5079 = !{i32 1, !"Code Model", i32 2}
!5080 = !{i32 1, !"override-stack-alignment", i32 8}
!5081 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5082 = distinct !DISubprogram(name: "tty_buffer_lock_exclusive", scope: !3, file: !3, line: 52, type: !4959, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5083 = !{!5084, !5085}
!5084 = !DILocalVariable(name: "port", arg: 1, scope: !5082, file: !3, line: 52, type: !240)
!5085 = !DILocalVariable(name: "buf", scope: !5082, file: !3, line: 54, type: !5055)
!5086 = !DILocation(line: 52, column: 49, scope: !5082)
!5087 = !DILocation(line: 54, column: 2, scope: !5082)
!5088 = !DILocation(line: 54, column: 22, scope: !5082)
!5089 = !DILocation(line: 54, column: 29, scope: !5082)
!5090 = !DILocation(line: 54, column: 35, scope: !5082)
!5091 = !DILocation(line: 56, column: 14, scope: !5082)
!5092 = !DILocation(line: 56, column: 19, scope: !5082)
!5093 = !DILocation(line: 56, column: 2, scope: !5082)
!5094 = !DILocation(line: 57, column: 14, scope: !5082)
!5095 = !DILocation(line: 57, column: 19, scope: !5082)
!5096 = !DILocation(line: 57, column: 2, scope: !5082)
!5097 = !DILocation(line: 58, column: 1, scope: !5082)
!5098 = distinct !DISubprogram(name: "atomic_inc", scope: !5099, file: !5099, line: 433, type: !5100, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5099 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5100 = !DISubroutineType(types: !5101)
!5101 = !{null, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!5103 = !{!5104}
!5104 = !DILocalVariable(name: "v", arg: 1, scope: !5098, file: !5099, line: 433, type: !5102)
!5105 = !DILocation(line: 433, column: 22, scope: !5098)
!5106 = !DILocation(line: 435, column: 31, scope: !5098)
!5107 = !DILocation(line: 435, column: 2, scope: !5098)
!5108 = !DILocation(line: 436, column: 17, scope: !5098)
!5109 = !DILocation(line: 436, column: 2, scope: !5098)
!5110 = !DILocation(line: 437, column: 1, scope: !5098)
!5111 = !DISubprogram(name: "mutex_lock", scope: !270, file: !270, line: 227, type: !5112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !5114}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!5115 = distinct !DISubprogram(name: "tty_buffer_unlock_exclusive", scope: !3, file: !3, line: 69, type: !4959, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5116)
!5116 = !{!5117, !5118, !5119}
!5117 = !DILocalVariable(name: "port", arg: 1, scope: !5115, file: !3, line: 69, type: !240)
!5118 = !DILocalVariable(name: "buf", scope: !5115, file: !3, line: 71, type: !5055)
!5119 = !DILocalVariable(name: "restart", scope: !5115, file: !3, line: 72, type: !109)
!5120 = !DILocation(line: 69, column: 51, scope: !5115)
!5121 = !DILocation(line: 71, column: 2, scope: !5115)
!5122 = !DILocation(line: 71, column: 22, scope: !5115)
!5123 = !DILocation(line: 71, column: 29, scope: !5115)
!5124 = !DILocation(line: 71, column: 35, scope: !5115)
!5125 = !DILocation(line: 72, column: 2, scope: !5115)
!5126 = !DILocation(line: 72, column: 6, scope: !5115)
!5127 = !DILocation(line: 74, column: 12, scope: !5115)
!5128 = !DILocation(line: 74, column: 17, scope: !5115)
!5129 = !DILocation(line: 74, column: 23, scope: !5115)
!5130 = !DILocation(line: 74, column: 33, scope: !5115)
!5131 = !DILocation(line: 74, column: 38, scope: !5115)
!5132 = !DILocation(line: 74, column: 44, scope: !5115)
!5133 = !DILocation(line: 74, column: 30, scope: !5115)
!5134 = !DILocation(line: 74, column: 10, scope: !5115)
!5135 = !DILocation(line: 76, column: 14, scope: !5115)
!5136 = !DILocation(line: 76, column: 19, scope: !5115)
!5137 = !DILocation(line: 76, column: 2, scope: !5115)
!5138 = !DILocation(line: 77, column: 16, scope: !5115)
!5139 = !DILocation(line: 77, column: 21, scope: !5115)
!5140 = !DILocation(line: 77, column: 2, scope: !5115)
!5141 = !DILocation(line: 78, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 78, column: 6)
!5143 = !DILocation(line: 78, column: 6, scope: !5115)
!5144 = !DILocation(line: 79, column: 14, scope: !5142)
!5145 = !DILocation(line: 79, column: 34, scope: !5142)
!5146 = !DILocation(line: 79, column: 39, scope: !5142)
!5147 = !DILocation(line: 79, column: 3, scope: !5142)
!5148 = !DILocation(line: 80, column: 1, scope: !5115)
!5149 = distinct !DISubprogram(name: "atomic_dec", scope: !5099, file: !5099, line: 590, type: !5100, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5150)
!5150 = !{!5151}
!5151 = !DILocalVariable(name: "v", arg: 1, scope: !5149, file: !5099, line: 590, type: !5102)
!5152 = !DILocation(line: 590, column: 22, scope: !5149)
!5153 = !DILocation(line: 592, column: 31, scope: !5149)
!5154 = !DILocation(line: 592, column: 2, scope: !5149)
!5155 = !DILocation(line: 593, column: 17, scope: !5149)
!5156 = !DILocation(line: 593, column: 2, scope: !5149)
!5157 = !DILocation(line: 594, column: 1, scope: !5149)
!5158 = !DISubprogram(name: "mutex_unlock", scope: !270, file: !270, line: 246, type: !5112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5159 = distinct !DISubprogram(name: "queue_work", scope: !147, file: !147, line: 559, type: !5160, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5162)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!204, !1015, !267}
!5162 = !{!5163, !5164}
!5163 = !DILocalVariable(name: "wq", arg: 1, scope: !5159, file: !147, line: 559, type: !1015)
!5164 = !DILocalVariable(name: "work", arg: 2, scope: !5159, file: !147, line: 560, type: !267)
!5165 = !DILocation(line: 559, column: 56, scope: !5159)
!5166 = !DILocation(line: 560, column: 30, scope: !5159)
!5167 = !DILocation(line: 562, column: 41, scope: !5159)
!5168 = !DILocation(line: 562, column: 45, scope: !5159)
!5169 = !DILocation(line: 562, column: 9, scope: !5159)
!5170 = !DILocation(line: 562, column: 2, scope: !5159)
!5171 = distinct !DISubprogram(name: "tty_buffer_space_avail", scope: !3, file: !3, line: 94, type: !5172, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5174)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!7, !240}
!5174 = !{!5175, !5176, !5177, !5179}
!5175 = !DILocalVariable(name: "port", arg: 1, scope: !5171, file: !3, line: 94, type: !240)
!5176 = !DILocalVariable(name: "space", scope: !5171, file: !3, line: 96, type: !109)
!5177 = !DILocalVariable(name: "__UNIQUE_ID___x289", scope: !5178, file: !3, line: 98, type: !109)
!5178 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 98, column: 9)
!5179 = !DILocalVariable(name: "__UNIQUE_ID___y290", scope: !5178, file: !3, line: 98, type: !109)
!5180 = !DILocation(line: 94, column: 54, scope: !5171)
!5181 = !DILocation(line: 96, column: 2, scope: !5171)
!5182 = !DILocation(line: 96, column: 6, scope: !5171)
!5183 = !DILocation(line: 96, column: 14, scope: !5171)
!5184 = !DILocation(line: 96, column: 20, scope: !5171)
!5185 = !DILocation(line: 96, column: 24, scope: !5171)
!5186 = !DILocation(line: 96, column: 49, scope: !5171)
!5187 = !DILocation(line: 96, column: 55, scope: !5171)
!5188 = !DILocation(line: 96, column: 59, scope: !5171)
!5189 = !DILocation(line: 96, column: 36, scope: !5171)
!5190 = !DILocation(line: 96, column: 34, scope: !5171)
!5191 = !DILocation(line: 98, column: 9, scope: !5178)
!5192 = !DILocation(line: 98, column: 9, scope: !5171)
!5193 = !DILocation(line: 99, column: 1, scope: !5171)
!5194 = !DILocation(line: 98, column: 2, scope: !5171)
!5195 = distinct !DISubprogram(name: "atomic_read", scope: !5099, file: !5099, line: 30, type: !5196, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!109, !5198}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!5200 = !{!5201}
!5201 = !DILocalVariable(name: "v", arg: 1, scope: !5195, file: !5099, line: 30, type: !5198)
!5202 = !DILocation(line: 30, column: 29, scope: !5195)
!5203 = !DILocation(line: 32, column: 25, scope: !5195)
!5204 = !DILocation(line: 32, column: 2, scope: !5195)
!5205 = !DILocation(line: 33, column: 25, scope: !5195)
!5206 = !DILocation(line: 33, column: 9, scope: !5195)
!5207 = !DILocation(line: 33, column: 2, scope: !5195)
!5208 = distinct !DISubprogram(name: "tty_buffer_free_all", scope: !3, file: !3, line: 120, type: !4959, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5209)
!5209 = !{!5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5220, !5223, !5225}
!5210 = !DILocalVariable(name: "port", arg: 1, scope: !5208, file: !3, line: 120, type: !240)
!5211 = !DILocalVariable(name: "buf", scope: !5208, file: !3, line: 122, type: !5055)
!5212 = !DILocalVariable(name: "p", scope: !5208, file: !3, line: 123, type: !184)
!5213 = !DILocalVariable(name: "next", scope: !5208, file: !3, line: 123, type: !184)
!5214 = !DILocalVariable(name: "llist", scope: !5208, file: !3, line: 124, type: !197)
!5215 = !DILocalVariable(name: "freed", scope: !5208, file: !3, line: 125, type: !7)
!5216 = !DILocalVariable(name: "still_used", scope: !5208, file: !3, line: 126, type: !109)
!5217 = !DILocalVariable(name: "__mptr", scope: !5218, file: !3, line: 135, type: !183)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 135, column: 2)
!5219 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 135, column: 2)
!5220 = !DILocalVariable(name: "__mptr", scope: !5221, file: !3, line: 135, type: !183)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 135, column: 2)
!5222 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 135, column: 2)
!5223 = !DILocalVariable(name: "__ret_warn_on", scope: !5224, file: !3, line: 143, type: !109)
!5224 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 143, column: 2)
!5225 = !DILocalVariable(name: "__flags", scope: !5226, file: !3, line: 143, type: !109)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 143, column: 2)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 143, column: 2)
!5228 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 143, column: 2)
!5229 = !DILocation(line: 120, column: 43, scope: !5208)
!5230 = !DILocation(line: 122, column: 2, scope: !5208)
!5231 = !DILocation(line: 122, column: 22, scope: !5208)
!5232 = !DILocation(line: 122, column: 29, scope: !5208)
!5233 = !DILocation(line: 122, column: 35, scope: !5208)
!5234 = !DILocation(line: 123, column: 2, scope: !5208)
!5235 = !DILocation(line: 123, column: 21, scope: !5208)
!5236 = !DILocation(line: 123, column: 25, scope: !5208)
!5237 = !DILocation(line: 124, column: 2, scope: !5208)
!5238 = !DILocation(line: 124, column: 21, scope: !5208)
!5239 = !DILocation(line: 125, column: 2, scope: !5208)
!5240 = !DILocation(line: 125, column: 15, scope: !5208)
!5241 = !DILocation(line: 126, column: 2, scope: !5208)
!5242 = !DILocation(line: 126, column: 6, scope: !5208)
!5243 = !DILocation(line: 128, column: 2, scope: !5208)
!5244 = !DILocation(line: 128, column: 14, scope: !5208)
!5245 = !DILocation(line: 128, column: 19, scope: !5208)
!5246 = !DILocation(line: 128, column: 12, scope: !5208)
!5247 = !DILocation(line: 128, column: 25, scope: !5208)
!5248 = !DILocation(line: 129, column: 15, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 128, column: 34)
!5250 = !DILocation(line: 129, column: 18, scope: !5249)
!5251 = !DILocation(line: 129, column: 3, scope: !5249)
!5252 = !DILocation(line: 129, column: 8, scope: !5249)
!5253 = !DILocation(line: 129, column: 13, scope: !5249)
!5254 = !DILocation(line: 130, column: 12, scope: !5249)
!5255 = !DILocation(line: 130, column: 15, scope: !5249)
!5256 = !DILocation(line: 130, column: 9, scope: !5249)
!5257 = !DILocation(line: 131, column: 7, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 131, column: 7)
!5259 = !DILocation(line: 131, column: 10, scope: !5258)
!5260 = !DILocation(line: 131, column: 15, scope: !5258)
!5261 = !DILocation(line: 131, column: 7, scope: !5249)
!5262 = !DILocation(line: 132, column: 10, scope: !5258)
!5263 = !DILocation(line: 132, column: 4, scope: !5258)
!5264 = distinct !{!5264, !5243, !5265, !5266, !5267}
!5265 = !DILocation(line: 133, column: 2, scope: !5208)
!5266 = !{!"llvm.loop.mustprogress"}
!5267 = !{!"llvm.loop.unroll.disable"}
!5268 = !DILocation(line: 134, column: 25, scope: !5208)
!5269 = !DILocation(line: 134, column: 30, scope: !5208)
!5270 = !DILocation(line: 134, column: 10, scope: !5208)
!5271 = !DILocation(line: 134, column: 8, scope: !5208)
!5272 = !DILocation(line: 135, column: 2, scope: !5218)
!5273 = !DILocation(line: 135, column: 2, scope: !5219)
!5274 = !DILocation(line: 135, column: 2, scope: !5222)
!5275 = !DILocation(line: 135, column: 2, scope: !5221)
!5276 = !DILocation(line: 0, scope: !5222)
!5277 = !DILocation(line: 136, column: 9, scope: !5222)
!5278 = !DILocation(line: 136, column: 3, scope: !5222)
!5279 = distinct !{!5279, !5273, !5280, !5266, !5267}
!5280 = !DILocation(line: 136, column: 10, scope: !5219)
!5281 = !DILocation(line: 138, column: 20, scope: !5208)
!5282 = !DILocation(line: 138, column: 25, scope: !5208)
!5283 = !DILocation(line: 138, column: 2, scope: !5208)
!5284 = !DILocation(line: 139, column: 15, scope: !5208)
!5285 = !DILocation(line: 139, column: 20, scope: !5208)
!5286 = !DILocation(line: 139, column: 2, scope: !5208)
!5287 = !DILocation(line: 139, column: 7, scope: !5208)
!5288 = !DILocation(line: 139, column: 12, scope: !5208)
!5289 = !DILocation(line: 140, column: 15, scope: !5208)
!5290 = !DILocation(line: 140, column: 20, scope: !5208)
!5291 = !DILocation(line: 140, column: 2, scope: !5208)
!5292 = !DILocation(line: 140, column: 7, scope: !5208)
!5293 = !DILocation(line: 140, column: 12, scope: !5208)
!5294 = !DILocation(line: 142, column: 28, scope: !5208)
!5295 = !DILocation(line: 142, column: 33, scope: !5208)
!5296 = !DILocation(line: 142, column: 15, scope: !5208)
!5297 = !DILocation(line: 142, column: 13, scope: !5208)
!5298 = !DILocation(line: 143, column: 2, scope: !5224)
!5299 = !DILocation(line: 143, column: 2, scope: !5228)
!5300 = !DILocation(line: 143, column: 2, scope: !5227)
!5301 = !DILocation(line: 143, column: 2, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 143, column: 2)
!5303 = !DILocation(line: 143, column: 2, scope: !5226)
!5304 = !DILocation(line: 143, column: 2, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 143, column: 2)
!5306 = !DILocation(line: 143, column: 2, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 143, column: 2)
!5308 = !{i64 2154675689, i64 2154675718, i64 2154675764, i64 2154675822, i64 2154675876, i64 2154675930, i64 2154675985, i64 2154676016, i64 2154676324, i64 2154676330, i64 2154676377, i64 2154676400, i64 2154676426}
!5309 = !DILocation(line: 143, column: 2, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 143, column: 2)
!5311 = !DILocation(line: 143, column: 2, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 143, column: 2)
!5313 = !DILocation(line: 143, column: 2, scope: !5208)
!5314 = !DILocation(line: 145, column: 1, scope: !5208)
!5315 = !DISubprogram(name: "kfree", scope: !173, file: !173, line: 227, type: !5316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !1670}
!5318 = distinct !DISubprogram(name: "llist_del_all", scope: !194, file: !194, line: 237, type: !5319, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5322)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!197, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!5322 = !{!5323, !5324, !5327}
!5323 = !DILocalVariable(name: "head", arg: 1, scope: !5318, file: !194, line: 237, type: !5321)
!5324 = !DILocalVariable(name: "__ai_ptr", scope: !5325, file: !194, line: 239, type: !5326)
!5325 = distinct !DILexicalBlock(scope: !5318, file: !194, line: 239, column: 9)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!5327 = !DILocalVariable(name: "__ret", scope: !5328, file: !194, line: 239, type: !197)
!5328 = distinct !DILexicalBlock(scope: !5325, file: !194, line: 239, column: 9)
!5329 = !DILocation(line: 237, column: 67, scope: !5318)
!5330 = !DILocation(line: 239, column: 9, scope: !5325)
!5331 = !DILocation(line: 239, column: 9, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5325, file: !194, line: 239, column: 9)
!5333 = !DILocation(line: 239, column: 9, scope: !5328)
!5334 = !{i64 2149726916}
!5335 = !DILocation(line: 239, column: 9, scope: !5318)
!5336 = !DILocation(line: 239, column: 2, scope: !5318)
!5337 = distinct !DISubprogram(name: "tty_buffer_reset", scope: !3, file: !3, line: 102, type: !5338, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5340)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{null, !184, !221}
!5340 = !{!5341, !5342}
!5341 = !DILocalVariable(name: "p", arg: 1, scope: !5337, file: !3, line: 102, type: !184)
!5342 = !DILocalVariable(name: "size", arg: 2, scope: !5337, file: !3, line: 102, type: !221)
!5343 = !DILocation(line: 102, column: 49, scope: !5337)
!5344 = !DILocation(line: 102, column: 59, scope: !5337)
!5345 = !DILocation(line: 104, column: 2, scope: !5337)
!5346 = !DILocation(line: 104, column: 5, scope: !5337)
!5347 = !DILocation(line: 104, column: 10, scope: !5337)
!5348 = !DILocation(line: 105, column: 12, scope: !5337)
!5349 = !DILocation(line: 105, column: 2, scope: !5337)
!5350 = !DILocation(line: 105, column: 5, scope: !5337)
!5351 = !DILocation(line: 105, column: 10, scope: !5337)
!5352 = !DILocation(line: 106, column: 2, scope: !5337)
!5353 = !DILocation(line: 106, column: 5, scope: !5337)
!5354 = !DILocation(line: 106, column: 10, scope: !5337)
!5355 = !DILocation(line: 107, column: 2, scope: !5337)
!5356 = !DILocation(line: 107, column: 5, scope: !5337)
!5357 = !DILocation(line: 107, column: 12, scope: !5337)
!5358 = !DILocation(line: 108, column: 2, scope: !5337)
!5359 = !DILocation(line: 108, column: 5, scope: !5337)
!5360 = !DILocation(line: 108, column: 15, scope: !5337)
!5361 = !DILocation(line: 109, column: 2, scope: !5337)
!5362 = !DILocation(line: 109, column: 5, scope: !5337)
!5363 = !DILocation(line: 109, column: 10, scope: !5337)
!5364 = !DILocation(line: 110, column: 2, scope: !5337)
!5365 = !DILocation(line: 110, column: 5, scope: !5337)
!5366 = !DILocation(line: 110, column: 11, scope: !5337)
!5367 = !DILocation(line: 111, column: 1, scope: !5337)
!5368 = distinct !DISubprogram(name: "atomic_xchg", scope: !5099, file: !5099, line: 1116, type: !5369, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!109, !5102, !109}
!5371 = !{!5372, !5373}
!5372 = !DILocalVariable(name: "v", arg: 1, scope: !5368, file: !5099, line: 1116, type: !5102)
!5373 = !DILocalVariable(name: "new", arg: 2, scope: !5368, file: !5099, line: 1116, type: !109)
!5374 = !DILocation(line: 1116, column: 23, scope: !5368)
!5375 = !DILocation(line: 1116, column: 30, scope: !5368)
!5376 = !DILocation(line: 1118, column: 2, scope: !5368)
!5377 = !DILocation(line: 1118, column: 2, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5368, file: !5099, line: 1118, column: 2)
!5379 = !DILocation(line: 1119, column: 31, scope: !5368)
!5380 = !DILocation(line: 1119, column: 2, scope: !5368)
!5381 = !DILocation(line: 1120, column: 25, scope: !5368)
!5382 = !DILocation(line: 1120, column: 28, scope: !5368)
!5383 = !DILocation(line: 1120, column: 9, scope: !5368)
!5384 = !DILocation(line: 1120, column: 2, scope: !5368)
!5385 = !DISubprogram(name: "__warn_printk", scope: !854, file: !854, line: 93, type: !5386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !344, null}
!5388 = distinct !DISubprogram(name: "tty_buffer_flush", scope: !3, file: !3, line: 221, type: !5389, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !320, !4832}
!5391 = !{!5392, !5393, !5394, !5395, !5396, !5397}
!5392 = !DILocalVariable(name: "tty", arg: 1, scope: !5388, file: !3, line: 221, type: !320)
!5393 = !DILocalVariable(name: "ld", arg: 2, scope: !5388, file: !3, line: 221, type: !4832)
!5394 = !DILocalVariable(name: "port", scope: !5388, file: !3, line: 223, type: !240)
!5395 = !DILocalVariable(name: "buf", scope: !5388, file: !3, line: 224, type: !5055)
!5396 = !DILocalVariable(name: "next", scope: !5388, file: !3, line: 225, type: !184)
!5397 = !DILocalVariable(name: "___p1", scope: !5398, file: !3, line: 233, type: !184)
!5398 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 233, column: 17)
!5399 = !DILocation(line: 221, column: 42, scope: !5388)
!5400 = !DILocation(line: 221, column: 65, scope: !5388)
!5401 = !DILocation(line: 223, column: 2, scope: !5388)
!5402 = !DILocation(line: 223, column: 19, scope: !5388)
!5403 = !DILocation(line: 223, column: 26, scope: !5388)
!5404 = !DILocation(line: 223, column: 31, scope: !5388)
!5405 = !DILocation(line: 224, column: 2, scope: !5388)
!5406 = !DILocation(line: 224, column: 22, scope: !5388)
!5407 = !DILocation(line: 224, column: 29, scope: !5388)
!5408 = !DILocation(line: 224, column: 35, scope: !5388)
!5409 = !DILocation(line: 225, column: 2, scope: !5388)
!5410 = !DILocation(line: 225, column: 21, scope: !5388)
!5411 = !DILocation(line: 227, column: 14, scope: !5388)
!5412 = !DILocation(line: 227, column: 19, scope: !5388)
!5413 = !DILocation(line: 227, column: 2, scope: !5388)
!5414 = !DILocation(line: 229, column: 14, scope: !5388)
!5415 = !DILocation(line: 229, column: 19, scope: !5388)
!5416 = !DILocation(line: 229, column: 2, scope: !5388)
!5417 = !DILocation(line: 233, column: 2, scope: !5388)
!5418 = !DILocation(line: 233, column: 17, scope: !5398)
!5419 = !DILocation(line: 233, column: 17, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 233, column: 17)
!5421 = !DILocation(line: 233, column: 17, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 233, column: 17)
!5423 = !DILocation(line: 233, column: 17, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 233, column: 17)
!5425 = !{i64 2154686803}
!5426 = !DILocation(line: 233, column: 17, scope: !5388)
!5427 = !DILocation(line: 233, column: 15, scope: !5388)
!5428 = !DILocation(line: 233, column: 53, scope: !5388)
!5429 = !DILocation(line: 234, column: 19, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 233, column: 62)
!5431 = !DILocation(line: 234, column: 25, scope: !5430)
!5432 = !DILocation(line: 234, column: 30, scope: !5430)
!5433 = !DILocation(line: 234, column: 3, scope: !5430)
!5434 = !DILocation(line: 235, column: 15, scope: !5430)
!5435 = !DILocation(line: 235, column: 3, scope: !5430)
!5436 = !DILocation(line: 235, column: 8, scope: !5430)
!5437 = !DILocation(line: 235, column: 13, scope: !5430)
!5438 = distinct !{!5438, !5417, !5439, !5266, !5267}
!5439 = !DILocation(line: 236, column: 2, scope: !5388)
!5440 = !DILocation(line: 237, column: 20, scope: !5388)
!5441 = !DILocation(line: 237, column: 25, scope: !5388)
!5442 = !DILocation(line: 237, column: 31, scope: !5388)
!5443 = !DILocation(line: 237, column: 2, scope: !5388)
!5444 = !DILocation(line: 237, column: 7, scope: !5388)
!5445 = !DILocation(line: 237, column: 13, scope: !5388)
!5446 = !DILocation(line: 237, column: 18, scope: !5388)
!5447 = !DILocation(line: 238, column: 25, scope: !5388)
!5448 = !DILocation(line: 238, column: 30, scope: !5388)
!5449 = !DILocation(line: 238, column: 36, scope: !5388)
!5450 = !DILocation(line: 238, column: 2, scope: !5388)
!5451 = !DILocation(line: 238, column: 7, scope: !5388)
!5452 = !DILocation(line: 238, column: 13, scope: !5388)
!5453 = !DILocation(line: 238, column: 23, scope: !5388)
!5454 = !DILocation(line: 240, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 240, column: 6)
!5456 = !DILocation(line: 240, column: 9, scope: !5455)
!5457 = !DILocation(line: 240, column: 12, scope: !5455)
!5458 = !DILocation(line: 240, column: 16, scope: !5455)
!5459 = !DILocation(line: 240, column: 21, scope: !5455)
!5460 = !DILocation(line: 240, column: 6, scope: !5388)
!5461 = !DILocation(line: 241, column: 3, scope: !5455)
!5462 = !DILocation(line: 241, column: 7, scope: !5455)
!5463 = !DILocation(line: 241, column: 12, scope: !5455)
!5464 = !DILocation(line: 241, column: 25, scope: !5455)
!5465 = !DILocation(line: 243, column: 14, scope: !5388)
!5466 = !DILocation(line: 243, column: 19, scope: !5388)
!5467 = !DILocation(line: 243, column: 2, scope: !5388)
!5468 = !DILocation(line: 244, column: 16, scope: !5388)
!5469 = !DILocation(line: 244, column: 21, scope: !5388)
!5470 = !DILocation(line: 244, column: 2, scope: !5388)
!5471 = !DILocation(line: 245, column: 1, scope: !5388)
!5472 = distinct !DISubprogram(name: "tty_buffer_free", scope: !3, file: !3, line: 198, type: !5473, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5475)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{null, !240, !184}
!5475 = !{!5476, !5477, !5478, !5479, !5481}
!5476 = !DILocalVariable(name: "port", arg: 1, scope: !5472, file: !3, line: 198, type: !240)
!5477 = !DILocalVariable(name: "b", arg: 2, scope: !5472, file: !3, line: 198, type: !184)
!5478 = !DILocalVariable(name: "buf", scope: !5472, file: !3, line: 200, type: !5055)
!5479 = !DILocalVariable(name: "__ret_warn_on", scope: !5480, file: !3, line: 203, type: !109)
!5480 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 203, column: 2)
!5481 = !DILocalVariable(name: "__flags", scope: !5482, file: !3, line: 203, type: !109)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 203, column: 2)
!5483 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 203, column: 2)
!5484 = !DILocation(line: 198, column: 46, scope: !5472)
!5485 = !DILocation(line: 198, column: 71, scope: !5472)
!5486 = !DILocation(line: 200, column: 2, scope: !5472)
!5487 = !DILocation(line: 200, column: 22, scope: !5472)
!5488 = !DILocation(line: 200, column: 29, scope: !5472)
!5489 = !DILocation(line: 200, column: 35, scope: !5472)
!5490 = !DILocation(line: 203, column: 2, scope: !5480)
!5491 = !DILocation(line: 203, column: 2, scope: !5483)
!5492 = !DILocation(line: 203, column: 2, scope: !5482)
!5493 = !DILocation(line: 203, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 203, column: 2)
!5495 = !DILocation(line: 203, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 203, column: 2)
!5497 = !{i64 2154680799, i64 2154680828, i64 2154680874, i64 2154680932, i64 2154680986, i64 2154681040, i64 2154681095, i64 2154681126, i64 2154681434, i64 2154681440, i64 2154681487, i64 2154681510, i64 2154681536}
!5498 = !DILocation(line: 203, column: 2, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 203, column: 2)
!5500 = !DILocation(line: 203, column: 2, scope: !5472)
!5501 = !DILocation(line: 205, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 205, column: 6)
!5503 = !DILocation(line: 205, column: 9, scope: !5502)
!5504 = !DILocation(line: 205, column: 14, scope: !5502)
!5505 = !DILocation(line: 205, column: 6, scope: !5472)
!5506 = !DILocation(line: 206, column: 9, scope: !5502)
!5507 = !DILocation(line: 206, column: 3, scope: !5502)
!5508 = !DILocation(line: 207, column: 11, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 207, column: 11)
!5510 = !DILocation(line: 207, column: 14, scope: !5509)
!5511 = !DILocation(line: 207, column: 19, scope: !5509)
!5512 = !DILocation(line: 207, column: 11, scope: !5502)
!5513 = !DILocation(line: 208, column: 14, scope: !5509)
!5514 = !DILocation(line: 208, column: 17, scope: !5509)
!5515 = !DILocation(line: 208, column: 24, scope: !5509)
!5516 = !DILocation(line: 208, column: 29, scope: !5509)
!5517 = !DILocation(line: 208, column: 3, scope: !5509)
!5518 = !DILocation(line: 209, column: 1, scope: !5472)
!5519 = distinct !DISubprogram(name: "tty_buffer_request_room", scope: !3, file: !3, line: 294, type: !5520, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!109, !240, !221}
!5522 = !{!5523, !5524}
!5523 = !DILocalVariable(name: "port", arg: 1, scope: !5519, file: !3, line: 294, type: !240)
!5524 = !DILocalVariable(name: "size", arg: 2, scope: !5519, file: !3, line: 294, type: !221)
!5525 = !DILocation(line: 294, column: 46, scope: !5519)
!5526 = !DILocation(line: 294, column: 59, scope: !5519)
!5527 = !DILocation(line: 296, column: 35, scope: !5519)
!5528 = !DILocation(line: 296, column: 41, scope: !5519)
!5529 = !DILocation(line: 296, column: 9, scope: !5519)
!5530 = !DILocation(line: 296, column: 2, scope: !5519)
!5531 = distinct !DISubprogram(name: "__tty_buffer_request_room", scope: !3, file: !3, line: 261, type: !5532, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!109, !240, !221, !204}
!5534 = !{!5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542}
!5535 = !DILocalVariable(name: "port", arg: 1, scope: !5531, file: !3, line: 261, type: !240)
!5536 = !DILocalVariable(name: "size", arg: 2, scope: !5531, file: !3, line: 261, type: !221)
!5537 = !DILocalVariable(name: "flags", arg: 3, scope: !5531, file: !3, line: 262, type: !204)
!5538 = !DILocalVariable(name: "buf", scope: !5531, file: !3, line: 264, type: !5055)
!5539 = !DILocalVariable(name: "n", scope: !5531, file: !3, line: 265, type: !184)
!5540 = !DILocalVariable(name: "b", scope: !5531, file: !3, line: 265, type: !184)
!5541 = !DILocalVariable(name: "left", scope: !5531, file: !3, line: 266, type: !221)
!5542 = !DILocalVariable(name: "change", scope: !5531, file: !3, line: 267, type: !204)
!5543 = !DILocation(line: 261, column: 55, scope: !5531)
!5544 = !DILocation(line: 261, column: 68, scope: !5531)
!5545 = !DILocation(line: 262, column: 15, scope: !5531)
!5546 = !DILocation(line: 264, column: 2, scope: !5531)
!5547 = !DILocation(line: 264, column: 22, scope: !5531)
!5548 = !DILocation(line: 264, column: 29, scope: !5531)
!5549 = !DILocation(line: 264, column: 35, scope: !5531)
!5550 = !DILocation(line: 265, column: 2, scope: !5531)
!5551 = !DILocation(line: 265, column: 21, scope: !5531)
!5552 = !DILocation(line: 265, column: 25, scope: !5531)
!5553 = !DILocation(line: 265, column: 29, scope: !5531)
!5554 = !DILocation(line: 265, column: 34, scope: !5531)
!5555 = !DILocation(line: 266, column: 2, scope: !5531)
!5556 = !DILocation(line: 266, column: 9, scope: !5531)
!5557 = !DILocation(line: 266, column: 17, scope: !5531)
!5558 = !DILocation(line: 266, column: 20, scope: !5531)
!5559 = !{i8 0, i8 2}
!5560 = !DILocation(line: 266, column: 37, scope: !5531)
!5561 = !DILocation(line: 266, column: 40, scope: !5531)
!5562 = !DILocation(line: 266, column: 35, scope: !5531)
!5563 = !DILocation(line: 266, column: 47, scope: !5531)
!5564 = !DILocation(line: 266, column: 50, scope: !5531)
!5565 = !DILocation(line: 266, column: 45, scope: !5531)
!5566 = !DILocation(line: 266, column: 16, scope: !5531)
!5567 = !DILocation(line: 267, column: 2, scope: !5531)
!5568 = !DILocation(line: 267, column: 7, scope: !5531)
!5569 = !DILocation(line: 267, column: 17, scope: !5531)
!5570 = !DILocation(line: 267, column: 20, scope: !5531)
!5571 = !DILocation(line: 267, column: 26, scope: !5531)
!5572 = !DILocation(line: 267, column: 29, scope: !5531)
!5573 = !DILocation(line: 0, scope: !5531)
!5574 = !DILocation(line: 269, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 269, column: 6)
!5576 = !DILocation(line: 269, column: 14, scope: !5575)
!5577 = !DILocation(line: 269, column: 17, scope: !5575)
!5578 = !DILocation(line: 269, column: 25, scope: !5575)
!5579 = !DILocation(line: 269, column: 22, scope: !5575)
!5580 = !DILocation(line: 269, column: 6, scope: !5531)
!5581 = !DILocation(line: 270, column: 10, scope: !5575)
!5582 = !DILocation(line: 270, column: 3, scope: !5575)
!5583 = !DILocation(line: 273, column: 23, scope: !5531)
!5584 = !DILocation(line: 273, column: 29, scope: !5531)
!5585 = !DILocation(line: 273, column: 6, scope: !5531)
!5586 = !DILocation(line: 273, column: 4, scope: !5531)
!5587 = !DILocation(line: 274, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 274, column: 6)
!5589 = !DILocation(line: 274, column: 8, scope: !5588)
!5590 = !DILocation(line: 274, column: 6, scope: !5531)
!5591 = !DILocation(line: 275, column: 10, scope: !5588)
!5592 = !DILocation(line: 275, column: 23, scope: !5588)
!5593 = !DILocation(line: 275, column: 3, scope: !5588)
!5594 = !DILocation(line: 277, column: 13, scope: !5531)
!5595 = !DILocation(line: 277, column: 2, scope: !5531)
!5596 = !DILocation(line: 277, column: 5, scope: !5531)
!5597 = !DILocation(line: 277, column: 11, scope: !5531)
!5598 = !DILocation(line: 278, column: 14, scope: !5531)
!5599 = !DILocation(line: 278, column: 2, scope: !5531)
!5600 = !DILocation(line: 278, column: 7, scope: !5531)
!5601 = !DILocation(line: 278, column: 12, scope: !5531)
!5602 = !DILocation(line: 283, column: 2, scope: !5531)
!5603 = !DILocation(line: 283, column: 2, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 283, column: 2)
!5605 = !DILocation(line: 283, column: 2, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 283, column: 2)
!5607 = !DILocation(line: 283, column: 2, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 283, column: 2)
!5609 = !DILocation(line: 283, column: 2, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 283, column: 2)
!5611 = !{i64 2154688795}
!5612 = !DILocation(line: 283, column: 2, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 283, column: 2)
!5614 = !DILocation(line: 283, column: 2, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 283, column: 2)
!5616 = !DILocation(line: 283, column: 2, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 283, column: 2)
!5618 = !DILocation(line: 289, column: 2, scope: !5531)
!5619 = !DILocation(line: 289, column: 2, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 289, column: 2)
!5621 = !DILocation(line: 289, column: 2, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 289, column: 2)
!5623 = !DILocation(line: 289, column: 2, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 289, column: 2)
!5625 = !DILocation(line: 289, column: 2, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 289, column: 2)
!5627 = !{i64 2154692811}
!5628 = !DILocation(line: 289, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 289, column: 2)
!5630 = !DILocation(line: 289, column: 2, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 289, column: 2)
!5632 = !DILocation(line: 289, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 289, column: 2)
!5634 = !DILocation(line: 291, column: 9, scope: !5531)
!5635 = !DILocation(line: 291, column: 2, scope: !5531)
!5636 = !DILocation(line: 292, column: 1, scope: !5531)
!5637 = distinct !DISubprogram(name: "__tty_insert_flip_string_flags", scope: !3, file: !3, line: 300, type: !5638, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5640)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!221, !240, !4744, !4744, !204, !221}
!5640 = !{!5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5650, !5652, !5653, !5654, !5655, !5660}
!5641 = !DILocalVariable(name: "port", arg: 1, scope: !5637, file: !3, line: 300, type: !240)
!5642 = !DILocalVariable(name: "chars", arg: 2, scope: !5637, file: !3, line: 300, type: !4744)
!5643 = !DILocalVariable(name: "flags", arg: 3, scope: !5637, file: !3, line: 301, type: !4744)
!5644 = !DILocalVariable(name: "mutable_flags", arg: 4, scope: !5637, file: !3, line: 301, type: !204)
!5645 = !DILocalVariable(name: "size", arg: 5, scope: !5637, file: !3, line: 302, type: !221)
!5646 = !DILocalVariable(name: "need_flags", scope: !5637, file: !3, line: 304, type: !204)
!5647 = !DILocalVariable(name: "copied", scope: !5637, file: !3, line: 305, type: !221)
!5648 = !DILocalVariable(name: "goal", scope: !5649, file: !3, line: 308, type: !221)
!5649 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 307, column: 5)
!5650 = !DILocalVariable(name: "__UNIQUE_ID___x299", scope: !5651, file: !3, line: 308, type: !221)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 308, column: 17)
!5652 = !DILocalVariable(name: "__UNIQUE_ID___y300", scope: !5651, file: !3, line: 308, type: !221)
!5653 = !DILocalVariable(name: "space", scope: !5649, file: !3, line: 309, type: !221)
!5654 = !DILocalVariable(name: "tb", scope: !5649, file: !3, line: 310, type: !184)
!5655 = !DILocalVariable(name: "__ret_warn_on", scope: !5656, file: !3, line: 324, type: !109)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 324, column: 4)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 322, column: 10)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 320, column: 14)
!5659 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 317, column: 7)
!5660 = !DILocalVariable(name: "__flags", scope: !5661, file: !3, line: 324, type: !109)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 324, column: 4)
!5662 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 324, column: 4)
!5663 = !DILocation(line: 300, column: 56, scope: !5637)
!5664 = !DILocation(line: 300, column: 72, scope: !5637)
!5665 = !DILocation(line: 301, column: 21, scope: !5637)
!5666 = !DILocation(line: 301, column: 33, scope: !5637)
!5667 = !DILocation(line: 302, column: 18, scope: !5637)
!5668 = !DILocation(line: 304, column: 2, scope: !5637)
!5669 = !DILocation(line: 304, column: 7, scope: !5637)
!5670 = !DILocation(line: 304, column: 20, scope: !5637)
!5671 = !DILocation(line: 304, column: 34, scope: !5637)
!5672 = !DILocation(line: 304, column: 37, scope: !5637)
!5673 = !DILocation(line: 304, column: 46, scope: !5637)
!5674 = !DILocation(line: 305, column: 2, scope: !5637)
!5675 = !DILocation(line: 305, column: 9, scope: !5637)
!5676 = !DILocation(line: 307, column: 2, scope: !5637)
!5677 = !DILocation(line: 308, column: 3, scope: !5649)
!5678 = !DILocation(line: 308, column: 10, scope: !5649)
!5679 = !DILocation(line: 308, column: 17, scope: !5651)
!5680 = !DILocation(line: 308, column: 17, scope: !5649)
!5681 = !DILocation(line: 309, column: 3, scope: !5649)
!5682 = !DILocation(line: 309, column: 10, scope: !5649)
!5683 = !DILocation(line: 309, column: 44, scope: !5649)
!5684 = !DILocation(line: 309, column: 50, scope: !5649)
!5685 = !DILocation(line: 309, column: 56, scope: !5649)
!5686 = !DILocation(line: 309, column: 18, scope: !5649)
!5687 = !DILocation(line: 310, column: 3, scope: !5649)
!5688 = !DILocation(line: 310, column: 22, scope: !5649)
!5689 = !DILocation(line: 310, column: 27, scope: !5649)
!5690 = !DILocation(line: 310, column: 33, scope: !5649)
!5691 = !DILocation(line: 310, column: 37, scope: !5649)
!5692 = !DILocation(line: 312, column: 7, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 312, column: 7)
!5694 = !DILocation(line: 312, column: 7, scope: !5649)
!5695 = !DILocation(line: 313, column: 4, scope: !5693)
!5696 = !DILocation(line: 315, column: 23, scope: !5649)
!5697 = !DILocation(line: 315, column: 27, scope: !5649)
!5698 = !DILocation(line: 315, column: 31, scope: !5649)
!5699 = !DILocation(line: 315, column: 10, scope: !5649)
!5700 = !DILocation(line: 315, column: 38, scope: !5649)
!5701 = !DILocation(line: 315, column: 45, scope: !5649)
!5702 = !DILocation(line: 315, column: 3, scope: !5649)
!5703 = !DILocation(line: 317, column: 7, scope: !5659)
!5704 = !DILocation(line: 317, column: 7, scope: !5649)
!5705 = !DILocation(line: 318, column: 24, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 317, column: 22)
!5707 = !DILocation(line: 318, column: 28, scope: !5706)
!5708 = !DILocation(line: 318, column: 32, scope: !5706)
!5709 = !DILocation(line: 318, column: 11, scope: !5706)
!5710 = !DILocation(line: 318, column: 39, scope: !5706)
!5711 = !DILocation(line: 318, column: 46, scope: !5706)
!5712 = !DILocation(line: 318, column: 4, scope: !5706)
!5713 = !DILocation(line: 319, column: 13, scope: !5706)
!5714 = !DILocation(line: 319, column: 10, scope: !5706)
!5715 = !DILocation(line: 320, column: 3, scope: !5706)
!5716 = !DILocation(line: 320, column: 14, scope: !5658)
!5717 = !DILocation(line: 320, column: 18, scope: !5658)
!5718 = !DILocation(line: 320, column: 14, scope: !5659)
!5719 = !DILocation(line: 321, column: 24, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 320, column: 25)
!5721 = !DILocation(line: 321, column: 28, scope: !5720)
!5722 = !DILocation(line: 321, column: 32, scope: !5720)
!5723 = !DILocation(line: 321, column: 11, scope: !5720)
!5724 = !DILocation(line: 321, column: 39, scope: !5720)
!5725 = !DILocation(line: 321, column: 4, scope: !5720)
!5726 = !DILocation(line: 321, column: 49, scope: !5720)
!5727 = !DILocation(line: 322, column: 3, scope: !5720)
!5728 = !DILocation(line: 324, column: 4, scope: !5656)
!5729 = !DILocation(line: 324, column: 4, scope: !5662)
!5730 = !DILocation(line: 324, column: 4, scope: !5661)
!5731 = !DILocation(line: 324, column: 4, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 324, column: 4)
!5733 = !DILocation(line: 324, column: 4, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 324, column: 4)
!5735 = !{i64 2154716145, i64 2154716174, i64 2154716220, i64 2154716278, i64 2154716332, i64 2154716386, i64 2154716441, i64 2154716472, i64 2154716780, i64 2154716786, i64 2154716833, i64 2154716856, i64 2154716882}
!5736 = !DILocation(line: 324, column: 4, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 324, column: 4)
!5738 = !DILocation(line: 324, column: 4, scope: !5657)
!5739 = !DILocation(line: 327, column: 15, scope: !5649)
!5740 = !DILocation(line: 327, column: 3, scope: !5649)
!5741 = !DILocation(line: 327, column: 7, scope: !5649)
!5742 = !DILocation(line: 327, column: 12, scope: !5649)
!5743 = !DILocation(line: 328, column: 13, scope: !5649)
!5744 = !DILocation(line: 328, column: 10, scope: !5649)
!5745 = !DILocation(line: 329, column: 12, scope: !5649)
!5746 = !DILocation(line: 329, column: 9, scope: !5649)
!5747 = !DILocation(line: 334, column: 2, scope: !5637)
!5748 = !DILocation(line: 334, column: 2, scope: !5649)
!5749 = !DILocation(line: 334, column: 11, scope: !5637)
!5750 = distinct !{!5750, !5676, !5751, !5266, !5267}
!5751 = !DILocation(line: 334, column: 34, scope: !5637)
!5752 = !DILocation(line: 336, column: 9, scope: !5637)
!5753 = !DILocation(line: 337, column: 1, scope: !5637)
!5754 = !DILocation(line: 336, column: 2, scope: !5637)
!5755 = distinct !DISubprogram(name: "char_buf_ptr", scope: !186, file: !186, line: 25, type: !5756, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5758)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!4849, !184, !7}
!5758 = !{!5759, !5760}
!5759 = !DILocalVariable(name: "b", arg: 1, scope: !5755, file: !186, line: 25, type: !184)
!5760 = !DILocalVariable(name: "ofs", arg: 2, scope: !5755, file: !186, line: 25, type: !7)
!5761 = !DILocation(line: 25, column: 51, scope: !5755)
!5762 = !DILocation(line: 25, column: 67, scope: !5755)
!5763 = !DILocation(line: 27, column: 9, scope: !5755)
!5764 = !DILocation(line: 27, column: 12, scope: !5755)
!5765 = !DILocation(line: 27, column: 19, scope: !5755)
!5766 = !DILocation(line: 27, column: 17, scope: !5755)
!5767 = !DILocation(line: 27, column: 2, scope: !5755)
!5768 = distinct !DISubprogram(name: "flag_buf_ptr", scope: !186, file: !186, line: 30, type: !5756, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5769)
!5769 = !{!5770, !5771}
!5770 = !DILocalVariable(name: "b", arg: 1, scope: !5768, file: !186, line: 30, type: !184)
!5771 = !DILocalVariable(name: "ofs", arg: 2, scope: !5768, file: !186, line: 30, type: !7)
!5772 = !DILocation(line: 30, column: 51, scope: !5768)
!5773 = !DILocation(line: 30, column: 67, scope: !5768)
!5774 = !DILocation(line: 32, column: 22, scope: !5768)
!5775 = !DILocation(line: 32, column: 25, scope: !5768)
!5776 = !DILocation(line: 32, column: 9, scope: !5768)
!5777 = !DILocation(line: 32, column: 32, scope: !5768)
!5778 = !DILocation(line: 32, column: 35, scope: !5768)
!5779 = !DILocation(line: 32, column: 30, scope: !5768)
!5780 = !DILocation(line: 32, column: 2, scope: !5768)
!5781 = distinct !DISubprogram(name: "tty_prepare_flip_string", scope: !3, file: !3, line: 354, type: !5782, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!221, !240, !5784, !221}
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!5785 = !{!5786, !5787, !5788, !5789, !5790}
!5786 = !DILocalVariable(name: "port", arg: 1, scope: !5781, file: !3, line: 354, type: !240)
!5787 = !DILocalVariable(name: "chars", arg: 2, scope: !5781, file: !3, line: 354, type: !5784)
!5788 = !DILocalVariable(name: "size", arg: 3, scope: !5781, file: !3, line: 354, type: !221)
!5789 = !DILocalVariable(name: "space", scope: !5781, file: !3, line: 356, type: !221)
!5790 = !DILocalVariable(name: "tb", scope: !5791, file: !3, line: 359, type: !184)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 358, column: 21)
!5792 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 358, column: 6)
!5793 = !DILocation(line: 354, column: 49, scope: !5781)
!5794 = !DILocation(line: 354, column: 60, scope: !5781)
!5795 = !DILocation(line: 354, column: 74, scope: !5781)
!5796 = !DILocation(line: 356, column: 2, scope: !5781)
!5797 = !DILocation(line: 356, column: 9, scope: !5781)
!5798 = !DILocation(line: 356, column: 43, scope: !5781)
!5799 = !DILocation(line: 356, column: 49, scope: !5781)
!5800 = !DILocation(line: 356, column: 17, scope: !5781)
!5801 = !DILocation(line: 358, column: 6, scope: !5792)
!5802 = !DILocation(line: 358, column: 6, scope: !5781)
!5803 = !DILocation(line: 359, column: 3, scope: !5791)
!5804 = !DILocation(line: 359, column: 22, scope: !5791)
!5805 = !DILocation(line: 359, column: 27, scope: !5791)
!5806 = !DILocation(line: 359, column: 33, scope: !5791)
!5807 = !DILocation(line: 359, column: 37, scope: !5791)
!5808 = !DILocation(line: 361, column: 25, scope: !5791)
!5809 = !DILocation(line: 361, column: 29, scope: !5791)
!5810 = !DILocation(line: 361, column: 33, scope: !5791)
!5811 = !DILocation(line: 361, column: 12, scope: !5791)
!5812 = !DILocation(line: 361, column: 4, scope: !5791)
!5813 = !DILocation(line: 361, column: 10, scope: !5791)
!5814 = !DILocation(line: 362, column: 7, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 362, column: 7)
!5816 = !DILocation(line: 362, column: 11, scope: !5815)
!5817 = !DILocation(line: 362, column: 7, scope: !5791)
!5818 = !DILocation(line: 363, column: 24, scope: !5815)
!5819 = !DILocation(line: 363, column: 28, scope: !5815)
!5820 = !DILocation(line: 363, column: 32, scope: !5815)
!5821 = !DILocation(line: 363, column: 11, scope: !5815)
!5822 = !DILocation(line: 363, column: 51, scope: !5815)
!5823 = !DILocation(line: 363, column: 4, scope: !5815)
!5824 = !DILocation(line: 364, column: 15, scope: !5791)
!5825 = !DILocation(line: 364, column: 3, scope: !5791)
!5826 = !DILocation(line: 364, column: 7, scope: !5791)
!5827 = !DILocation(line: 364, column: 12, scope: !5791)
!5828 = !DILocation(line: 365, column: 2, scope: !5792)
!5829 = !DILocation(line: 365, column: 2, scope: !5791)
!5830 = !DILocation(line: 367, column: 9, scope: !5781)
!5831 = !DILocation(line: 368, column: 1, scope: !5781)
!5832 = !DILocation(line: 367, column: 2, scope: !5781)
!5833 = distinct !DISubprogram(name: "tty_ldisc_receive_buf", scope: !3, file: !3, line: 383, type: !5834, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5836)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!221, !4832, !4744, !4744, !221}
!5836 = !{!5837, !5838, !5839, !5840, !5841, !5845}
!5837 = !DILocalVariable(name: "ld", arg: 1, scope: !5833, file: !3, line: 383, type: !4832)
!5838 = !DILocalVariable(name: "p", arg: 2, scope: !5833, file: !3, line: 383, type: !4744)
!5839 = !DILocalVariable(name: "f", arg: 3, scope: !5833, file: !3, line: 383, type: !4744)
!5840 = !DILocalVariable(name: "count", arg: 4, scope: !5833, file: !3, line: 384, type: !221)
!5841 = !DILocalVariable(name: "__UNIQUE_ID___x303", scope: !5842, file: !3, line: 389, type: !221)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 389, column: 11)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 388, column: 7)
!5844 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 386, column: 6)
!5845 = !DILocalVariable(name: "__UNIQUE_ID___y304", scope: !5842, file: !3, line: 389, type: !221)
!5846 = !DILocation(line: 383, column: 48, scope: !5833)
!5847 = !DILocation(line: 383, column: 62, scope: !5833)
!5848 = !DILocation(line: 383, column: 75, scope: !5833)
!5849 = !DILocation(line: 384, column: 16, scope: !5833)
!5850 = !DILocation(line: 386, column: 6, scope: !5844)
!5851 = !DILocation(line: 386, column: 10, scope: !5844)
!5852 = !DILocation(line: 386, column: 15, scope: !5844)
!5853 = !DILocation(line: 386, column: 6, scope: !5833)
!5854 = !DILocation(line: 387, column: 11, scope: !5844)
!5855 = !DILocation(line: 387, column: 15, scope: !5844)
!5856 = !DILocation(line: 387, column: 20, scope: !5844)
!5857 = !DILocation(line: 387, column: 33, scope: !5844)
!5858 = !DILocation(line: 387, column: 37, scope: !5844)
!5859 = !DILocation(line: 387, column: 42, scope: !5844)
!5860 = !DILocation(line: 387, column: 45, scope: !5844)
!5861 = !DILocation(line: 387, column: 48, scope: !5844)
!5862 = !DILocation(line: 387, column: 9, scope: !5844)
!5863 = !DILocation(line: 387, column: 3, scope: !5844)
!5864 = !DILocation(line: 389, column: 11, scope: !5842)
!5865 = !DILocation(line: 389, column: 11, scope: !5843)
!5866 = !DILocation(line: 389, column: 9, scope: !5843)
!5867 = !DILocation(line: 390, column: 7, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 390, column: 7)
!5869 = !DILocation(line: 390, column: 13, scope: !5868)
!5870 = !DILocation(line: 390, column: 16, scope: !5868)
!5871 = !DILocation(line: 390, column: 20, scope: !5868)
!5872 = !DILocation(line: 390, column: 25, scope: !5868)
!5873 = !DILocation(line: 390, column: 7, scope: !5843)
!5874 = !DILocation(line: 391, column: 4, scope: !5868)
!5875 = !DILocation(line: 391, column: 8, scope: !5868)
!5876 = !DILocation(line: 391, column: 13, scope: !5868)
!5877 = !DILocation(line: 391, column: 25, scope: !5868)
!5878 = !DILocation(line: 391, column: 29, scope: !5868)
!5879 = !DILocation(line: 391, column: 34, scope: !5868)
!5880 = !DILocation(line: 391, column: 37, scope: !5868)
!5881 = !DILocation(line: 391, column: 40, scope: !5868)
!5882 = !DILocation(line: 393, column: 9, scope: !5833)
!5883 = !DILocation(line: 393, column: 2, scope: !5833)
!5884 = distinct !DISubprogram(name: "tty_flip_buffer_push", scope: !3, file: !3, line: 529, type: !4959, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5885)
!5885 = !{!5886, !5887}
!5886 = !DILocalVariable(name: "port", arg: 1, scope: !5884, file: !3, line: 529, type: !240)
!5887 = !DILocalVariable(name: "buf", scope: !5884, file: !3, line: 531, type: !5055)
!5888 = !DILocation(line: 529, column: 44, scope: !5884)
!5889 = !DILocation(line: 531, column: 2, scope: !5884)
!5890 = !DILocation(line: 531, column: 22, scope: !5884)
!5891 = !DILocation(line: 531, column: 29, scope: !5884)
!5892 = !DILocation(line: 531, column: 35, scope: !5884)
!5893 = !DILocation(line: 533, column: 25, scope: !5884)
!5894 = !DILocation(line: 533, column: 30, scope: !5884)
!5895 = !DILocation(line: 533, column: 2, scope: !5884)
!5896 = !DILocation(line: 534, column: 13, scope: !5884)
!5897 = !DILocation(line: 534, column: 33, scope: !5884)
!5898 = !DILocation(line: 534, column: 38, scope: !5884)
!5899 = !DILocation(line: 534, column: 2, scope: !5884)
!5900 = !DILocation(line: 535, column: 1, scope: !5884)
!5901 = distinct !DISubprogram(name: "tty_flip_buffer_commit", scope: !3, file: !3, line: 510, type: !5902, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5904)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !184}
!5904 = !{!5905}
!5905 = !DILocalVariable(name: "tail", arg: 1, scope: !5901, file: !3, line: 510, type: !184)
!5906 = !DILocation(line: 510, column: 62, scope: !5901)
!5907 = !DILocation(line: 516, column: 2, scope: !5901)
!5908 = !DILocation(line: 516, column: 2, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 516, column: 2)
!5910 = !DILocation(line: 516, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 516, column: 2)
!5912 = !DILocation(line: 516, column: 2, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 516, column: 2)
!5914 = !DILocation(line: 516, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 516, column: 2)
!5916 = !{i64 2154765328}
!5917 = !DILocation(line: 516, column: 2, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 516, column: 2)
!5919 = !DILocation(line: 516, column: 2, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 516, column: 2)
!5921 = !DILocation(line: 516, column: 2, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 516, column: 2)
!5923 = !DILocation(line: 517, column: 1, scope: !5901)
!5924 = distinct !DISubprogram(name: "tty_insert_flip_string_and_push_buffer", scope: !3, file: !3, line: 552, type: !5925, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5927)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{!109, !240, !4744, !221}
!5927 = !{!5928, !5929, !5930, !5931, !5932, !5933, !5937}
!5928 = !DILocalVariable(name: "port", arg: 1, scope: !5924, file: !3, line: 552, type: !240)
!5929 = !DILocalVariable(name: "chars", arg: 2, scope: !5924, file: !3, line: 553, type: !4744)
!5930 = !DILocalVariable(name: "size", arg: 3, scope: !5924, file: !3, line: 553, type: !221)
!5931 = !DILocalVariable(name: "buf", scope: !5924, file: !3, line: 555, type: !5055)
!5932 = !DILocalVariable(name: "flags", scope: !5924, file: !3, line: 556, type: !217)
!5933 = !DILocalVariable(name: "__dummy", scope: !5934, file: !3, line: 558, type: !217)
!5934 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 558, column: 2)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 558, column: 2)
!5936 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 558, column: 2)
!5937 = !DILocalVariable(name: "__dummy2", scope: !5934, file: !3, line: 558, type: !217)
!5938 = !DILocation(line: 552, column: 61, scope: !5924)
!5939 = !DILocation(line: 553, column: 19, scope: !5924)
!5940 = !DILocation(line: 553, column: 33, scope: !5924)
!5941 = !DILocation(line: 555, column: 2, scope: !5924)
!5942 = !DILocation(line: 555, column: 22, scope: !5924)
!5943 = !DILocation(line: 555, column: 29, scope: !5924)
!5944 = !DILocation(line: 555, column: 35, scope: !5924)
!5945 = !DILocation(line: 556, column: 2, scope: !5924)
!5946 = !DILocation(line: 556, column: 16, scope: !5924)
!5947 = !DILocation(line: 558, column: 2, scope: !5924)
!5948 = !DILocation(line: 558, column: 2, scope: !5936)
!5949 = !DILocation(line: 558, column: 2, scope: !5934)
!5950 = !DILocation(line: 558, column: 2, scope: !5935)
!5951 = !DILocation(line: 559, column: 32, scope: !5924)
!5952 = !DILocation(line: 559, column: 38, scope: !5924)
!5953 = !DILocation(line: 559, column: 45, scope: !5924)
!5954 = !DILocation(line: 559, column: 9, scope: !5924)
!5955 = !DILocation(line: 559, column: 7, scope: !5924)
!5956 = !DILocation(line: 560, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 560, column: 6)
!5958 = !DILocation(line: 560, column: 6, scope: !5924)
!5959 = !DILocation(line: 561, column: 26, scope: !5957)
!5960 = !DILocation(line: 561, column: 31, scope: !5957)
!5961 = !DILocation(line: 561, column: 3, scope: !5957)
!5962 = !DILocation(line: 562, column: 26, scope: !5924)
!5963 = !DILocation(line: 562, column: 32, scope: !5924)
!5964 = !DILocation(line: 562, column: 38, scope: !5924)
!5965 = !DILocation(line: 562, column: 2, scope: !5924)
!5966 = !DILocation(line: 564, column: 13, scope: !5924)
!5967 = !DILocation(line: 564, column: 33, scope: !5924)
!5968 = !DILocation(line: 564, column: 38, scope: !5924)
!5969 = !DILocation(line: 564, column: 2, scope: !5924)
!5970 = !DILocation(line: 566, column: 9, scope: !5924)
!5971 = !DILocation(line: 567, column: 1, scope: !5924)
!5972 = !DILocation(line: 566, column: 2, scope: !5924)
!5973 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5974, file: !5974, line: 32, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!217, !5977}
!5977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!5978 = distinct !DISubprogram(name: "spinlock_check", scope: !5979, file: !5979, line: 324, type: !5980, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5982)
!5979 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!5977, !1935}
!5982 = !{!5983}
!5983 = !DILocalVariable(name: "lock", arg: 1, scope: !5978, file: !5979, line: 324, type: !1935)
!5984 = !DILocation(line: 324, column: 67, scope: !5978)
!5985 = !DILocation(line: 326, column: 10, scope: !5978)
!5986 = !DILocation(line: 326, column: 16, scope: !5978)
!5987 = !DILocation(line: 326, column: 2, scope: !5978)
!5988 = distinct !DISubprogram(name: "tty_insert_flip_string", scope: !5989, file: !5989, line: 80, type: !5990, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5992)
!5989 = !DIFile(filename: "./include/linux/tty_flip.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04380b3f455bbeb1733f22cd11e51be3")
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!221, !240, !4744, !221}
!5992 = !{!5993, !5994, !5995}
!5993 = !DILocalVariable(name: "port", arg: 1, scope: !5988, file: !5989, line: 80, type: !240)
!5994 = !DILocalVariable(name: "chars", arg: 2, scope: !5988, file: !5989, line: 81, type: !4744)
!5995 = !DILocalVariable(name: "size", arg: 3, scope: !5988, file: !5989, line: 81, type: !221)
!5996 = !DILocation(line: 80, column: 62, scope: !5988)
!5997 = !DILocation(line: 81, column: 20, scope: !5988)
!5998 = !DILocation(line: 81, column: 34, scope: !5988)
!5999 = !DILocation(line: 83, column: 43, scope: !5988)
!6000 = !DILocation(line: 83, column: 49, scope: !5988)
!6001 = !DILocation(line: 83, column: 68, scope: !5988)
!6002 = !DILocation(line: 83, column: 9, scope: !5988)
!6003 = !DILocation(line: 83, column: 2, scope: !5988)
!6004 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5979, file: !5979, line: 404, type: !6005, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !1935, !217}
!6007 = !{!6008, !6009, !6010, !6013}
!6008 = !DILocalVariable(name: "lock", arg: 1, scope: !6004, file: !5979, line: 404, type: !1935)
!6009 = !DILocalVariable(name: "flags", arg: 2, scope: !6004, file: !5979, line: 404, type: !217)
!6010 = !DILocalVariable(name: "__dummy", scope: !6011, file: !5979, line: 406, type: !217)
!6011 = distinct !DILexicalBlock(scope: !6012, file: !5979, line: 406, column: 2)
!6012 = distinct !DILexicalBlock(scope: !6004, file: !5979, line: 406, column: 2)
!6013 = !DILocalVariable(name: "__dummy2", scope: !6011, file: !5979, line: 406, type: !217)
!6014 = !DILocation(line: 404, column: 64, scope: !6004)
!6015 = !DILocation(line: 404, column: 84, scope: !6004)
!6016 = !DILocation(line: 406, column: 2, scope: !6004)
!6017 = !DILocation(line: 406, column: 2, scope: !6011)
!6018 = !DILocation(line: 406, column: 2, scope: !6012)
!6019 = !DILocation(line: 407, column: 1, scope: !6004)
!6020 = !DILocation(line: 576, column: 39, scope: !5051)
!6021 = !DILocation(line: 578, column: 2, scope: !5051)
!6022 = !DILocation(line: 578, column: 22, scope: !5051)
!6023 = !DILocation(line: 578, column: 29, scope: !5051)
!6024 = !DILocation(line: 578, column: 35, scope: !5051)
!6025 = !DILocation(line: 580, column: 2, scope: !5051)
!6026 = !DILocation(line: 580, column: 2, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 580, column: 2)
!6028 = !DILocation(line: 581, column: 20, scope: !5051)
!6029 = !DILocation(line: 581, column: 25, scope: !5051)
!6030 = !DILocation(line: 581, column: 2, scope: !5051)
!6031 = !DILocation(line: 582, column: 15, scope: !5051)
!6032 = !DILocation(line: 582, column: 20, scope: !5051)
!6033 = !DILocation(line: 582, column: 2, scope: !5051)
!6034 = !DILocation(line: 582, column: 7, scope: !5051)
!6035 = !DILocation(line: 582, column: 12, scope: !5051)
!6036 = !DILocation(line: 583, column: 15, scope: !5051)
!6037 = !DILocation(line: 583, column: 20, scope: !5051)
!6038 = !DILocation(line: 583, column: 2, scope: !5051)
!6039 = !DILocation(line: 583, column: 7, scope: !5051)
!6040 = !DILocation(line: 583, column: 12, scope: !5051)
!6041 = !DILocation(line: 584, column: 19, scope: !5051)
!6042 = !DILocation(line: 584, column: 24, scope: !5051)
!6043 = !DILocation(line: 584, column: 2, scope: !5051)
!6044 = !DILocation(line: 585, column: 14, scope: !5051)
!6045 = !DILocation(line: 585, column: 19, scope: !5051)
!6046 = !DILocation(line: 585, column: 2, scope: !5051)
!6047 = !DILocation(line: 586, column: 14, scope: !5051)
!6048 = !DILocation(line: 586, column: 19, scope: !5051)
!6049 = !DILocation(line: 586, column: 2, scope: !5051)
!6050 = !DILocation(line: 587, column: 2, scope: !5051)
!6051 = !DILocation(line: 587, column: 2, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 587, column: 2)
!6053 = !DILocation(line: 587, column: 2, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 587, column: 2)
!6055 = !DILocation(line: 588, column: 2, scope: !5051)
!6056 = !DILocation(line: 588, column: 7, scope: !5051)
!6057 = !DILocation(line: 588, column: 17, scope: !5051)
!6058 = !DILocation(line: 589, column: 1, scope: !5051)
!6059 = !DISubprogram(name: "__mutex_init", scope: !270, file: !270, line: 121, type: !6060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{null, !5114, !344, !6062}
!6062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!6063 = distinct !DISubprogram(name: "init_llist_head", scope: !194, file: !194, line: 71, type: !6064, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6066)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{null, !5321}
!6066 = !{!6067}
!6067 = !DILocalVariable(name: "list", arg: 1, scope: !6063, file: !194, line: 71, type: !5321)
!6068 = !DILocation(line: 71, column: 55, scope: !6063)
!6069 = !DILocation(line: 73, column: 2, scope: !6063)
!6070 = !DILocation(line: 73, column: 8, scope: !6063)
!6071 = !DILocation(line: 73, column: 14, scope: !6063)
!6072 = !DILocation(line: 74, column: 1, scope: !6063)
!6073 = distinct !DISubprogram(name: "atomic_set", scope: !5099, file: !5099, line: 65, type: !6074, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6076)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{null, !5102, !109}
!6076 = !{!6077, !6078}
!6077 = !DILocalVariable(name: "v", arg: 1, scope: !6073, file: !5099, line: 65, type: !5102)
!6078 = !DILocalVariable(name: "i", arg: 2, scope: !6073, file: !5099, line: 65, type: !109)
!6079 = !DILocation(line: 65, column: 22, scope: !6073)
!6080 = !DILocation(line: 65, column: 29, scope: !6073)
!6081 = !DILocation(line: 67, column: 26, scope: !6073)
!6082 = !DILocation(line: 67, column: 2, scope: !6073)
!6083 = !DILocation(line: 68, column: 17, scope: !6073)
!6084 = !DILocation(line: 68, column: 20, scope: !6073)
!6085 = !DILocation(line: 68, column: 2, scope: !6073)
!6086 = !DILocation(line: 69, column: 1, scope: !6073)
!6087 = distinct !DISubprogram(name: "__init_work", scope: !147, file: !147, line: 263, type: !6088, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{null, !267, !109}
!6090 = !{!6091, !6092}
!6091 = !DILocalVariable(name: "work", arg: 1, scope: !6087, file: !147, line: 263, type: !267)
!6092 = !DILocalVariable(name: "onstack", arg: 2, scope: !6087, file: !147, line: 263, type: !109)
!6093 = !DILocation(line: 263, column: 52, scope: !6087)
!6094 = !DILocation(line: 263, column: 62, scope: !6087)
!6095 = !DILocation(line: 263, column: 73, scope: !6087)
!6096 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6097, file: !6097, line: 35, type: !6098, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6097 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6098 = !DISubroutineType(types: !6099)
!6099 = !{null, !235}
!6100 = !{!6101}
!6101 = !DILocalVariable(name: "list", arg: 1, scope: !6096, file: !6097, line: 35, type: !235)
!6102 = !DILocation(line: 35, column: 53, scope: !6096)
!6103 = !DILocation(line: 37, column: 2, scope: !6096)
!6104 = !DILocation(line: 37, column: 2, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6096, file: !6097, line: 37, column: 2)
!6106 = !DILocation(line: 37, column: 2, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6105, file: !6097, line: 37, column: 2)
!6108 = !DILocation(line: 37, column: 2, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6105, file: !6097, line: 37, column: 2)
!6110 = !DILocation(line: 38, column: 2, scope: !6096)
!6111 = !DILocation(line: 38, column: 2, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6096, file: !6097, line: 38, column: 2)
!6113 = !DILocation(line: 38, column: 2, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6112, file: !6097, line: 38, column: 2)
!6115 = !DILocation(line: 38, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6112, file: !6097, line: 38, column: 2)
!6117 = !DILocation(line: 39, column: 1, scope: !6096)
!6118 = distinct !DISubprogram(name: "flush_to_ldisc", scope: !3, file: !3, line: 462, type: !265, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6119)
!6119 = !{!6120, !6121, !6122, !6124, !6125, !6127, !6128, !6129, !6130, !6132}
!6120 = !DILocalVariable(name: "work", arg: 1, scope: !6118, file: !3, line: 462, type: !267)
!6121 = !DILocalVariable(name: "port", scope: !6118, file: !3, line: 464, type: !240)
!6122 = !DILocalVariable(name: "__mptr", scope: !6123, file: !3, line: 464, type: !183)
!6123 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 464, column: 26)
!6124 = !DILocalVariable(name: "buf", scope: !6118, file: !3, line: 465, type: !5055)
!6125 = !DILocalVariable(name: "head", scope: !6126, file: !3, line: 470, type: !184)
!6126 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 469, column: 12)
!6127 = !DILocalVariable(name: "next", scope: !6126, file: !3, line: 471, type: !184)
!6128 = !DILocalVariable(name: "count", scope: !6126, file: !3, line: 472, type: !221)
!6129 = !DILocalVariable(name: "rcvd", scope: !6126, file: !3, line: 472, type: !221)
!6130 = !DILocalVariable(name: "___p1", scope: !6131, file: !3, line: 482, type: !184)
!6131 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 482, column: 10)
!6132 = !DILocalVariable(name: "___p1", scope: !6133, file: !3, line: 486, type: !7)
!6133 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 486, column: 11)
!6134 = !DILocation(line: 462, column: 48, scope: !6118)
!6135 = !DILocation(line: 464, column: 2, scope: !6118)
!6136 = !DILocation(line: 464, column: 19, scope: !6118)
!6137 = !DILocation(line: 464, column: 26, scope: !6123)
!6138 = !DILocation(line: 464, column: 26, scope: !6118)
!6139 = !DILocation(line: 465, column: 2, scope: !6118)
!6140 = !DILocation(line: 465, column: 22, scope: !6118)
!6141 = !DILocation(line: 465, column: 29, scope: !6118)
!6142 = !DILocation(line: 465, column: 35, scope: !6118)
!6143 = !DILocation(line: 467, column: 14, scope: !6118)
!6144 = !DILocation(line: 467, column: 19, scope: !6118)
!6145 = !DILocation(line: 467, column: 2, scope: !6118)
!6146 = !DILocation(line: 469, column: 2, scope: !6118)
!6147 = !DILocation(line: 470, column: 3, scope: !6126)
!6148 = !DILocation(line: 470, column: 22, scope: !6126)
!6149 = !DILocation(line: 470, column: 29, scope: !6126)
!6150 = !DILocation(line: 470, column: 34, scope: !6126)
!6151 = !DILocation(line: 471, column: 3, scope: !6126)
!6152 = !DILocation(line: 471, column: 22, scope: !6126)
!6153 = !DILocation(line: 472, column: 3, scope: !6126)
!6154 = !DILocation(line: 472, column: 10, scope: !6126)
!6155 = !DILocation(line: 472, column: 17, scope: !6126)
!6156 = !DILocation(line: 475, column: 20, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 475, column: 7)
!6158 = !DILocation(line: 475, column: 25, scope: !6157)
!6159 = !DILocation(line: 475, column: 7, scope: !6157)
!6160 = !DILocation(line: 475, column: 7, scope: !6126)
!6161 = !DILocation(line: 476, column: 4, scope: !6157)
!6162 = !DILocation(line: 482, column: 10, scope: !6131)
!6163 = !DILocation(line: 482, column: 10, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 482, column: 10)
!6165 = !DILocation(line: 482, column: 10, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 482, column: 10)
!6167 = !DILocation(line: 482, column: 10, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 482, column: 10)
!6169 = !{i64 2154758119}
!6170 = !DILocation(line: 482, column: 10, scope: !6126)
!6171 = !DILocation(line: 482, column: 8, scope: !6126)
!6172 = !DILocation(line: 486, column: 11, scope: !6133)
!6173 = !DILocation(line: 486, column: 11, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 486, column: 11)
!6175 = !DILocation(line: 486, column: 11, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 486, column: 11)
!6177 = !DILocation(line: 486, column: 11, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 486, column: 11)
!6179 = !{i64 2154763011}
!6180 = !DILocation(line: 486, column: 11, scope: !6126)
!6181 = !DILocation(line: 486, column: 45, scope: !6126)
!6182 = !DILocation(line: 486, column: 51, scope: !6126)
!6183 = !DILocation(line: 486, column: 43, scope: !6126)
!6184 = !DILocation(line: 486, column: 9, scope: !6126)
!6185 = !DILocation(line: 487, column: 8, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 487, column: 7)
!6187 = !DILocation(line: 487, column: 7, scope: !6126)
!6188 = !DILocation(line: 488, column: 8, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 488, column: 8)
!6190 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 487, column: 15)
!6191 = !DILocation(line: 488, column: 13, scope: !6189)
!6192 = !DILocation(line: 488, column: 8, scope: !6190)
!6193 = !DILocation(line: 489, column: 5, scope: !6189)
!6194 = !DILocation(line: 490, column: 16, scope: !6190)
!6195 = !DILocation(line: 490, column: 4, scope: !6190)
!6196 = !DILocation(line: 490, column: 9, scope: !6190)
!6197 = !DILocation(line: 490, column: 14, scope: !6190)
!6198 = !DILocation(line: 491, column: 20, scope: !6190)
!6199 = !DILocation(line: 491, column: 26, scope: !6190)
!6200 = !DILocation(line: 491, column: 4, scope: !6190)
!6201 = !DILocation(line: 492, column: 4, scope: !6190)
!6202 = distinct !{!6202, !6146, !6203, !5267}
!6203 = !DILocation(line: 504, column: 2, scope: !6118)
!6204 = !DILocation(line: 495, column: 22, scope: !6126)
!6205 = !DILocation(line: 495, column: 28, scope: !6126)
!6206 = !DILocation(line: 495, column: 34, scope: !6126)
!6207 = !DILocation(line: 495, column: 10, scope: !6126)
!6208 = !DILocation(line: 495, column: 8, scope: !6126)
!6209 = !DILocation(line: 496, column: 17, scope: !6126)
!6210 = !DILocation(line: 496, column: 3, scope: !6126)
!6211 = !DILocation(line: 496, column: 9, scope: !6126)
!6212 = !DILocation(line: 496, column: 14, scope: !6126)
!6213 = !DILocation(line: 497, column: 7, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 497, column: 7)
!6215 = !DILocation(line: 497, column: 14, scope: !6214)
!6216 = !DILocation(line: 497, column: 12, scope: !6214)
!6217 = !DILocation(line: 497, column: 7, scope: !6126)
!6218 = !DILocation(line: 498, column: 19, scope: !6214)
!6219 = !DILocation(line: 498, column: 25, scope: !6214)
!6220 = !DILocation(line: 498, column: 4, scope: !6214)
!6221 = !DILocation(line: 499, column: 8, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 499, column: 7)
!6223 = !DILocation(line: 499, column: 7, scope: !6126)
!6224 = !DILocation(line: 500, column: 4, scope: !6222)
!6225 = !DILocation(line: 502, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 502, column: 7)
!6227 = !DILocation(line: 502, column: 7, scope: !6126)
!6228 = !DILocation(line: 503, column: 4, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 503, column: 4)
!6230 = !DILocation(line: 503, column: 4, scope: !6226)
!6231 = !DILocation(line: 506, column: 16, scope: !6118)
!6232 = !DILocation(line: 506, column: 21, scope: !6118)
!6233 = !DILocation(line: 506, column: 2, scope: !6118)
!6234 = !DILocation(line: 508, column: 1, scope: !6118)
!6235 = distinct !DISubprogram(name: "tty_buffer_set_limit", scope: !3, file: !3, line: 600, type: !6236, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6238)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!109, !240, !109}
!6238 = !{!6239, !6240}
!6239 = !DILocalVariable(name: "port", arg: 1, scope: !6235, file: !3, line: 600, type: !240)
!6240 = !DILocalVariable(name: "limit", arg: 2, scope: !6235, file: !3, line: 600, type: !109)
!6241 = !DILocation(line: 600, column: 43, scope: !6235)
!6242 = !DILocation(line: 600, column: 53, scope: !6235)
!6243 = !DILocation(line: 602, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6235, file: !3, line: 602, column: 6)
!6245 = !DILocation(line: 602, column: 12, scope: !6244)
!6246 = !DILocation(line: 602, column: 6, scope: !6235)
!6247 = !DILocation(line: 603, column: 3, scope: !6244)
!6248 = !DILocation(line: 604, column: 24, scope: !6235)
!6249 = !DILocation(line: 604, column: 2, scope: !6235)
!6250 = !DILocation(line: 604, column: 8, scope: !6235)
!6251 = !DILocation(line: 604, column: 12, scope: !6235)
!6252 = !DILocation(line: 604, column: 22, scope: !6235)
!6253 = !DILocation(line: 605, column: 2, scope: !6235)
!6254 = !DILocation(line: 606, column: 1, scope: !6235)
!6255 = distinct !DISubprogram(name: "tty_buffer_set_lock_subclass", scope: !3, file: !3, line: 610, type: !4959, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6256)
!6256 = !{!6257}
!6257 = !DILocalVariable(name: "port", arg: 1, scope: !6255, file: !3, line: 610, type: !240)
!6258 = !DILocation(line: 610, column: 52, scope: !6255)
!6259 = !DILocation(line: 612, column: 2, scope: !6255)
!6260 = !DILocation(line: 612, column: 2, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 612, column: 2)
!6262 = !DILocation(line: 613, column: 1, scope: !6255)
!6263 = distinct !DISubprogram(name: "tty_buffer_restart_work", scope: !3, file: !3, line: 615, type: !4951, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6264)
!6264 = !{!6265}
!6265 = !DILocalVariable(name: "port", arg: 1, scope: !6263, file: !3, line: 615, type: !240)
!6266 = !DILocation(line: 615, column: 47, scope: !6263)
!6267 = !DILocation(line: 617, column: 20, scope: !6263)
!6268 = !DILocation(line: 617, column: 40, scope: !6263)
!6269 = !DILocation(line: 617, column: 46, scope: !6263)
!6270 = !DILocation(line: 617, column: 50, scope: !6263)
!6271 = !DILocation(line: 617, column: 9, scope: !6263)
!6272 = !DILocation(line: 617, column: 2, scope: !6263)
!6273 = distinct !DISubprogram(name: "tty_buffer_cancel_work", scope: !3, file: !3, line: 620, type: !4951, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6274)
!6274 = !{!6275}
!6275 = !DILocalVariable(name: "port", arg: 1, scope: !6273, file: !3, line: 620, type: !240)
!6276 = !DILocation(line: 620, column: 46, scope: !6273)
!6277 = !DILocation(line: 622, column: 27, scope: !6273)
!6278 = !DILocation(line: 622, column: 33, scope: !6273)
!6279 = !DILocation(line: 622, column: 37, scope: !6273)
!6280 = !DILocation(line: 622, column: 9, scope: !6273)
!6281 = !DILocation(line: 622, column: 2, scope: !6273)
!6282 = !DISubprogram(name: "cancel_work_sync", scope: !147, file: !147, line: 515, type: !6283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!204, !267}
!6285 = distinct !DISubprogram(name: "tty_buffer_flush_work", scope: !3, file: !3, line: 625, type: !4959, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6286 = !{!6287}
!6287 = !DILocalVariable(name: "port", arg: 1, scope: !6285, file: !3, line: 625, type: !240)
!6288 = !DILocation(line: 625, column: 45, scope: !6285)
!6289 = !DILocation(line: 627, column: 14, scope: !6285)
!6290 = !DILocation(line: 627, column: 20, scope: !6285)
!6291 = !DILocation(line: 627, column: 24, scope: !6285)
!6292 = !DILocation(line: 627, column: 2, scope: !6285)
!6293 = !DILocation(line: 628, column: 1, scope: !6285)
!6294 = !DISubprogram(name: "flush_work", scope: !147, file: !147, line: 513, type: !6283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6295 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6296, file: !6296, line: 94, type: !6297, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6296 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6297 = !DISubroutineType(types: !6298)
!6298 = !{null, !6299, !221}
!6299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6300, size: 64)
!6300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6301)
!6301 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6302 = !{!6303, !6304}
!6303 = !DILocalVariable(name: "v", arg: 1, scope: !6295, file: !6296, line: 94, type: !6299)
!6304 = !DILocalVariable(name: "size", arg: 2, scope: !6295, file: !6296, line: 94, type: !221)
!6305 = !DILocation(line: 94, column: 79, scope: !6295)
!6306 = !DILocation(line: 94, column: 89, scope: !6295)
!6307 = !DILocation(line: 96, column: 20, scope: !6295)
!6308 = !DILocation(line: 96, column: 23, scope: !6295)
!6309 = !DILocation(line: 96, column: 2, scope: !6295)
!6310 = !DILocation(line: 97, column: 2, scope: !6295)
!6311 = !DILocation(line: 98, column: 1, scope: !6295)
!6312 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6313, file: !6313, line: 976, type: !5100, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6313 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6314 = !{!6315}
!6315 = !DILocalVariable(name: "v", arg: 1, scope: !6312, file: !6313, line: 976, type: !5102)
!6316 = !DILocation(line: 976, column: 26, scope: !6312)
!6317 = !DILocation(line: 979, column: 18, scope: !6312)
!6318 = !DILocation(line: 979, column: 2, scope: !6312)
!6319 = !DILocation(line: 983, column: 1, scope: !6312)
!6320 = distinct !DISubprogram(name: "kasan_check_write", scope: !6321, file: !6321, line: 44, type: !6322, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6324)
!6321 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!204, !6299, !7}
!6324 = !{!6325, !6326}
!6325 = !DILocalVariable(name: "p", arg: 1, scope: !6320, file: !6321, line: 44, type: !6299)
!6326 = !DILocalVariable(name: "size", arg: 2, scope: !6320, file: !6321, line: 44, type: !7)
!6327 = !DILocation(line: 44, column: 59, scope: !6320)
!6328 = !DILocation(line: 44, column: 75, scope: !6320)
!6329 = !DILocation(line: 46, column: 2, scope: !6320)
!6330 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6331, file: !6331, line: 229, type: !6332, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6331 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{null, !6299, !221, !109}
!6334 = !{!6335, !6336, !6337}
!6335 = !DILocalVariable(name: "ptr", arg: 1, scope: !6330, file: !6331, line: 229, type: !6299)
!6336 = !DILocalVariable(name: "size", arg: 2, scope: !6330, file: !6331, line: 229, type: !221)
!6337 = !DILocalVariable(name: "type", arg: 3, scope: !6330, file: !6331, line: 230, type: !109)
!6338 = !DILocation(line: 229, column: 60, scope: !6330)
!6339 = !DILocation(line: 229, column: 72, scope: !6330)
!6340 = !DILocation(line: 230, column: 15, scope: !6330)
!6341 = !DILocation(line: 230, column: 23, scope: !6330)
!6342 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6343, file: !6343, line: 51, type: !5100, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6343 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6344 = !{!6345}
!6345 = !DILocalVariable(name: "v", arg: 1, scope: !6342, file: !6343, line: 51, type: !5102)
!6346 = !DILocation(line: 51, column: 55, scope: !6342)
!6347 = !DILocation(line: 54, column: 16, scope: !6342)
!6348 = !DILocation(line: 54, column: 19, scope: !6342)
!6349 = !DILocation(line: 53, column: 2, scope: !6342)
!6350 = !{i64 2149006431, i64 2149006470, i64 2149006491, i64 2149006528, i64 2149006551, i64 2149006421}
!6351 = !DILocation(line: 55, column: 1, scope: !6342)
!6352 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6313, file: !6313, line: 1194, type: !5100, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6353 = !{!6354}
!6354 = !DILocalVariable(name: "v", arg: 1, scope: !6352, file: !6313, line: 1194, type: !5102)
!6355 = !DILocation(line: 1194, column: 26, scope: !6352)
!6356 = !DILocation(line: 1197, column: 18, scope: !6352)
!6357 = !DILocation(line: 1197, column: 2, scope: !6352)
!6358 = !DILocation(line: 1201, column: 1, scope: !6352)
!6359 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6343, file: !6343, line: 58, type: !5100, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6360)
!6360 = !{!6361}
!6361 = !DILocalVariable(name: "v", arg: 1, scope: !6359, file: !6343, line: 58, type: !5102)
!6362 = !DILocation(line: 58, column: 55, scope: !6359)
!6363 = !DILocation(line: 61, column: 16, scope: !6359)
!6364 = !DILocation(line: 61, column: 19, scope: !6359)
!6365 = !DILocation(line: 60, column: 2, scope: !6359)
!6366 = !{i64 2149006794, i64 2149006833, i64 2149006854, i64 2149006891, i64 2149006914, i64 2149006784}
!6367 = !DILocation(line: 62, column: 1, scope: !6359)
!6368 = !DISubprogram(name: "queue_work_on", scope: !147, file: !147, line: 496, type: !6369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6369 = !DISubroutineType(types: !6370)
!6370 = !{!204, !109, !1015, !267}
!6371 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6296, file: !6296, line: 66, type: !6297, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6372 = !{!6373, !6374}
!6373 = !DILocalVariable(name: "v", arg: 1, scope: !6371, file: !6296, line: 66, type: !6299)
!6374 = !DILocalVariable(name: "size", arg: 2, scope: !6371, file: !6296, line: 66, type: !221)
!6375 = !DILocation(line: 66, column: 73, scope: !6371)
!6376 = !DILocation(line: 66, column: 83, scope: !6371)
!6377 = !DILocation(line: 68, column: 19, scope: !6371)
!6378 = !DILocation(line: 68, column: 22, scope: !6371)
!6379 = !DILocation(line: 68, column: 2, scope: !6371)
!6380 = !DILocation(line: 69, column: 2, scope: !6371)
!6381 = !DILocation(line: 70, column: 1, scope: !6371)
!6382 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6313, file: !6313, line: 442, type: !5196, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6383 = !{!6384}
!6384 = !DILocalVariable(name: "v", arg: 1, scope: !6382, file: !6313, line: 442, type: !5198)
!6385 = !DILocation(line: 442, column: 33, scope: !6382)
!6386 = !DILocation(line: 444, column: 26, scope: !6382)
!6387 = !DILocation(line: 444, column: 9, scope: !6382)
!6388 = !DILocation(line: 444, column: 2, scope: !6382)
!6389 = distinct !DISubprogram(name: "kasan_check_read", scope: !6321, file: !6321, line: 40, type: !6322, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6390 = !{!6391, !6392}
!6391 = !DILocalVariable(name: "p", arg: 1, scope: !6389, file: !6321, line: 40, type: !6299)
!6392 = !DILocalVariable(name: "size", arg: 2, scope: !6389, file: !6321, line: 40, type: !7)
!6393 = !DILocation(line: 40, column: 58, scope: !6389)
!6394 = !DILocation(line: 40, column: 74, scope: !6389)
!6395 = !DILocation(line: 42, column: 2, scope: !6389)
!6396 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6343, file: !6343, line: 17, type: !5196, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6397)
!6397 = !{!6398}
!6398 = !DILocalVariable(name: "v", arg: 1, scope: !6396, file: !6343, line: 17, type: !5198)
!6399 = !DILocation(line: 17, column: 61, scope: !6396)
!6400 = !DILocation(line: 23, column: 9, scope: !6396)
!6401 = !DILocation(line: 23, column: 2, scope: !6396)
!6402 = distinct !DISubprogram(name: "raw_atomic_xchg", scope: !6313, file: !6313, line: 1897, type: !5369, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6403)
!6403 = !{!6404, !6405}
!6404 = !DILocalVariable(name: "v", arg: 1, scope: !6402, file: !6313, line: 1897, type: !5102)
!6405 = !DILocalVariable(name: "new", arg: 2, scope: !6402, file: !6313, line: 1897, type: !109)
!6406 = !DILocation(line: 1897, column: 27, scope: !6402)
!6407 = !DILocation(line: 1897, column: 34, scope: !6402)
!6408 = !DILocation(line: 1900, column: 26, scope: !6402)
!6409 = !DILocation(line: 1900, column: 29, scope: !6402)
!6410 = !DILocation(line: 1900, column: 9, scope: !6402)
!6411 = !DILocation(line: 1900, column: 2, scope: !6402)
!6412 = distinct !DISubprogram(name: "arch_atomic_xchg", scope: !6343, file: !6343, line: 119, type: !5369, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6413)
!6413 = !{!6414, !6415, !6416}
!6414 = !DILocalVariable(name: "v", arg: 1, scope: !6412, file: !6343, line: 119, type: !5102)
!6415 = !DILocalVariable(name: "new", arg: 2, scope: !6412, file: !6343, line: 119, type: !109)
!6416 = !DILocalVariable(name: "__ret", scope: !6417, file: !6343, line: 121, type: !109)
!6417 = distinct !DILexicalBlock(scope: !6412, file: !6343, line: 121, column: 9)
!6418 = !DILocation(line: 119, column: 55, scope: !6412)
!6419 = !DILocation(line: 119, column: 62, scope: !6412)
!6420 = !DILocation(line: 121, column: 9, scope: !6417)
!6421 = !{i64 2149026604}
!6422 = !DILocation(line: 121, column: 9, scope: !6412)
!6423 = !DILocation(line: 121, column: 2, scope: !6412)
!6424 = distinct !DISubprogram(name: "atomic_sub_return", scope: !5099, file: !5099, line: 286, type: !6425, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!109, !109, !5102}
!6427 = !{!6428, !6429}
!6428 = !DILocalVariable(name: "i", arg: 1, scope: !6424, file: !5099, line: 286, type: !109)
!6429 = !DILocalVariable(name: "v", arg: 2, scope: !6424, file: !5099, line: 286, type: !5102)
!6430 = !DILocation(line: 286, column: 23, scope: !6424)
!6431 = !DILocation(line: 286, column: 36, scope: !6424)
!6432 = !DILocation(line: 288, column: 2, scope: !6424)
!6433 = !DILocation(line: 288, column: 2, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6424, file: !5099, line: 288, column: 2)
!6435 = !DILocation(line: 289, column: 31, scope: !6424)
!6436 = !DILocation(line: 289, column: 2, scope: !6424)
!6437 = !DILocation(line: 290, column: 31, scope: !6424)
!6438 = !DILocation(line: 290, column: 34, scope: !6424)
!6439 = !DILocation(line: 290, column: 9, scope: !6424)
!6440 = !DILocation(line: 290, column: 2, scope: !6424)
!6441 = distinct !DISubprogram(name: "llist_add", scope: !194, file: !194, line: 219, type: !6442, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6444)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!204, !197, !5321}
!6444 = !{!6445, !6446}
!6445 = !DILocalVariable(name: "new", arg: 1, scope: !6441, file: !194, line: 219, type: !197)
!6446 = !DILocalVariable(name: "head", arg: 2, scope: !6441, file: !194, line: 219, type: !5321)
!6447 = !DILocation(line: 219, column: 49, scope: !6441)
!6448 = !DILocation(line: 219, column: 73, scope: !6441)
!6449 = !DILocation(line: 221, column: 25, scope: !6441)
!6450 = !DILocation(line: 221, column: 30, scope: !6441)
!6451 = !DILocation(line: 221, column: 35, scope: !6441)
!6452 = !DILocation(line: 221, column: 9, scope: !6441)
!6453 = !DILocation(line: 221, column: 2, scope: !6441)
!6454 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !6313, file: !6313, line: 771, type: !6425, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6455)
!6455 = !{!6456, !6457}
!6456 = !DILocalVariable(name: "i", arg: 1, scope: !6454, file: !6313, line: 771, type: !109)
!6457 = !DILocalVariable(name: "v", arg: 2, scope: !6454, file: !6313, line: 771, type: !5102)
!6458 = !DILocation(line: 771, column: 27, scope: !6454)
!6459 = !DILocation(line: 771, column: 40, scope: !6454)
!6460 = !DILocation(line: 774, column: 32, scope: !6454)
!6461 = !DILocation(line: 774, column: 35, scope: !6454)
!6462 = !DILocation(line: 774, column: 9, scope: !6454)
!6463 = !DILocation(line: 774, column: 2, scope: !6454)
!6464 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !6343, file: !6343, line: 89, type: !6425, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6465)
!6465 = !{!6466, !6467}
!6466 = !DILocalVariable(name: "i", arg: 1, scope: !6464, file: !6343, line: 89, type: !109)
!6467 = !DILocalVariable(name: "v", arg: 2, scope: !6464, file: !6343, line: 89, type: !5102)
!6468 = !DILocation(line: 89, column: 55, scope: !6464)
!6469 = !DILocation(line: 89, column: 68, scope: !6464)
!6470 = !DILocation(line: 91, column: 33, scope: !6464)
!6471 = !DILocation(line: 91, column: 32, scope: !6464)
!6472 = !DILocation(line: 91, column: 36, scope: !6464)
!6473 = !DILocation(line: 91, column: 9, scope: !6464)
!6474 = !DILocation(line: 91, column: 2, scope: !6464)
!6475 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6343, file: !6343, line: 83, type: !6425, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6476)
!6476 = !{!6477, !6478, !6479}
!6477 = !DILocalVariable(name: "i", arg: 1, scope: !6475, file: !6343, line: 83, type: !109)
!6478 = !DILocalVariable(name: "v", arg: 2, scope: !6475, file: !6343, line: 83, type: !5102)
!6479 = !DILocalVariable(name: "__ret", scope: !6480, file: !6343, line: 85, type: !109)
!6480 = distinct !DILexicalBlock(scope: !6475, file: !6343, line: 85, column: 13)
!6481 = !DILocation(line: 83, column: 55, scope: !6475)
!6482 = !DILocation(line: 83, column: 68, scope: !6475)
!6483 = !DILocation(line: 85, column: 9, scope: !6475)
!6484 = !DILocation(line: 85, column: 13, scope: !6480)
!6485 = !{i64 2149014507, i64 2149014546, i64 2149014567, i64 2149014604, i64 2149014627, i64 2149014636}
!6486 = !DILocation(line: 85, column: 13, scope: !6475)
!6487 = !DILocation(line: 85, column: 11, scope: !6475)
!6488 = !DILocation(line: 85, column: 2, scope: !6475)
!6489 = !DISubprogram(name: "llist_add_batch", scope: !194, file: !194, line: 199, type: !6490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{!204, !197, !197, !5321}
!6492 = distinct !DISubprogram(name: "tty_buffer_alloc", scope: !3, file: !3, line: 159, type: !6493, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{!184, !240, !221}
!6495 = !{!6496, !6497, !6498, !6499, !6500, !6506}
!6496 = !DILocalVariable(name: "port", arg: 1, scope: !6492, file: !3, line: 159, type: !240)
!6497 = !DILocalVariable(name: "size", arg: 2, scope: !6492, file: !3, line: 159, type: !221)
!6498 = !DILocalVariable(name: "free", scope: !6492, file: !3, line: 161, type: !197)
!6499 = !DILocalVariable(name: "p", scope: !6492, file: !3, line: 162, type: !184)
!6500 = !DILocalVariable(name: "__mptr", scope: !6501, file: !3, line: 170, type: !183)
!6501 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 170, column: 8)
!6502 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 169, column: 13)
!6503 = distinct !DILexicalBlock(scope: !6504, file: !3, line: 169, column: 7)
!6504 = distinct !DILexicalBlock(scope: !6505, file: !3, line: 167, column: 29)
!6505 = distinct !DILexicalBlock(scope: !6492, file: !3, line: 167, column: 6)
!6506 = !DILabel(scope: !6492, name: "found", file: !3, line: 184)
!6507 = !DILocation(line: 159, column: 61, scope: !6492)
!6508 = !DILocation(line: 159, column: 74, scope: !6492)
!6509 = !DILocation(line: 161, column: 2, scope: !6492)
!6510 = !DILocation(line: 161, column: 21, scope: !6492)
!6511 = !DILocation(line: 162, column: 2, scope: !6492)
!6512 = !DILocation(line: 162, column: 21, scope: !6492)
!6513 = !DILocation(line: 165, column: 9, scope: !6492)
!6514 = !DILocation(line: 165, column: 7, scope: !6492)
!6515 = !DILocation(line: 167, column: 6, scope: !6505)
!6516 = !DILocation(line: 167, column: 11, scope: !6505)
!6517 = !DILocation(line: 167, column: 6, scope: !6492)
!6518 = !DILocation(line: 168, column: 27, scope: !6504)
!6519 = !DILocation(line: 168, column: 33, scope: !6504)
!6520 = !DILocation(line: 168, column: 37, scope: !6504)
!6521 = !DILocation(line: 168, column: 10, scope: !6504)
!6522 = !DILocation(line: 168, column: 8, scope: !6504)
!6523 = !DILocation(line: 169, column: 7, scope: !6503)
!6524 = !DILocation(line: 169, column: 7, scope: !6504)
!6525 = !DILocation(line: 170, column: 8, scope: !6501)
!6526 = !DILocation(line: 170, column: 8, scope: !6502)
!6527 = !DILocation(line: 170, column: 6, scope: !6502)
!6528 = !DILocation(line: 171, column: 4, scope: !6502)
!6529 = !DILocation(line: 173, column: 2, scope: !6504)
!6530 = !DILocation(line: 178, column: 19, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6492, file: !3, line: 178, column: 6)
!6532 = !DILocation(line: 178, column: 25, scope: !6531)
!6533 = !DILocation(line: 178, column: 29, scope: !6531)
!6534 = !DILocation(line: 178, column: 6, scope: !6531)
!6535 = !DILocation(line: 178, column: 41, scope: !6531)
!6536 = !DILocation(line: 178, column: 47, scope: !6531)
!6537 = !DILocation(line: 178, column: 51, scope: !6531)
!6538 = !DILocation(line: 178, column: 39, scope: !6531)
!6539 = !DILocation(line: 178, column: 6, scope: !6492)
!6540 = !DILocation(line: 179, column: 3, scope: !6531)
!6541 = !DILocation(line: 180, column: 14, scope: !6492)
!6542 = !DILocation(line: 180, column: 6, scope: !6492)
!6543 = !DILocation(line: 180, column: 4, scope: !6492)
!6544 = !DILocation(line: 181, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6492, file: !3, line: 181, column: 6)
!6546 = !DILocation(line: 181, column: 8, scope: !6545)
!6547 = !DILocation(line: 181, column: 6, scope: !6492)
!6548 = !DILocation(line: 182, column: 3, scope: !6545)
!6549 = !DILocation(line: 181, column: 11, scope: !6545)
!6550 = !DILocation(line: 184, column: 1, scope: !6492)
!6551 = !DILocation(line: 185, column: 19, scope: !6492)
!6552 = !DILocation(line: 185, column: 22, scope: !6492)
!6553 = !DILocation(line: 185, column: 2, scope: !6492)
!6554 = !DILocation(line: 186, column: 13, scope: !6492)
!6555 = !DILocation(line: 186, column: 20, scope: !6492)
!6556 = !DILocation(line: 186, column: 26, scope: !6492)
!6557 = !DILocation(line: 186, column: 30, scope: !6492)
!6558 = !DILocation(line: 186, column: 2, scope: !6492)
!6559 = !DILocation(line: 187, column: 9, scope: !6492)
!6560 = !DILocation(line: 187, column: 2, scope: !6492)
!6561 = !DILocation(line: 188, column: 1, scope: !6492)
!6562 = !DISubprogram(name: "llist_del_first", scope: !194, file: !194, line: 250, type: !5319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6563 = distinct !DISubprogram(name: "kmalloc", scope: !173, file: !173, line: 591, type: !6564, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6566)
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!183, !221, !231}
!6566 = !{!6567, !6568, !6569}
!6567 = !DILocalVariable(name: "size", arg: 1, scope: !6563, file: !173, line: 591, type: !221)
!6568 = !DILocalVariable(name: "flags", arg: 2, scope: !6563, file: !173, line: 591, type: !231)
!6569 = !DILocalVariable(name: "index", scope: !6570, file: !173, line: 594, type: !7)
!6570 = distinct !DILexicalBlock(scope: !6571, file: !173, line: 593, column: 42)
!6571 = distinct !DILexicalBlock(scope: !6563, file: !173, line: 593, column: 6)
!6572 = !DILocation(line: 591, column: 61, scope: !6563)
!6573 = !DILocation(line: 591, column: 73, scope: !6563)
!6574 = !DILocation(line: 593, column: 27, scope: !6571)
!6575 = !DILocation(line: 593, column: 6, scope: !6571)
!6576 = !DILocation(line: 593, column: 33, scope: !6571)
!6577 = !DILocation(line: 593, column: 36, scope: !6571)
!6578 = !DILocation(line: 593, column: 6, scope: !6563)
!6579 = !DILocation(line: 594, column: 3, scope: !6570)
!6580 = !DILocation(line: 594, column: 16, scope: !6570)
!6581 = !DILocation(line: 596, column: 7, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6570, file: !173, line: 596, column: 7)
!6583 = !DILocation(line: 596, column: 12, scope: !6582)
!6584 = !DILocation(line: 596, column: 7, scope: !6570)
!6585 = !DILocation(line: 597, column: 25, scope: !6582)
!6586 = !DILocation(line: 597, column: 31, scope: !6582)
!6587 = !DILocation(line: 597, column: 11, scope: !6582)
!6588 = !DILocation(line: 597, column: 4, scope: !6582)
!6589 = !DILocation(line: 599, column: 11, scope: !6570)
!6590 = !DILocation(line: 599, column: 9, scope: !6570)
!6591 = !DILocation(line: 601, column: 33, scope: !6570)
!6592 = !DILocation(line: 601, column: 40, scope: !6570)
!6593 = !DILocation(line: 601, column: 20, scope: !6570)
!6594 = !DILocation(line: 601, column: 5, scope: !6570)
!6595 = !DILocation(line: 601, column: 51, scope: !6570)
!6596 = !DILocation(line: 602, column: 5, scope: !6570)
!6597 = !DILocation(line: 602, column: 12, scope: !6570)
!6598 = !DILocation(line: 600, column: 10, scope: !6570)
!6599 = !DILocation(line: 600, column: 3, scope: !6570)
!6600 = !DILocation(line: 603, column: 2, scope: !6571)
!6601 = !DILocation(line: 604, column: 19, scope: !6563)
!6602 = !DILocation(line: 604, column: 25, scope: !6563)
!6603 = !DILocation(line: 604, column: 9, scope: !6563)
!6604 = !DILocation(line: 604, column: 2, scope: !6563)
!6605 = !DILocation(line: 605, column: 1, scope: !6563)
!6606 = distinct !DISubprogram(name: "size_add", scope: !6607, file: !6607, line: 208, type: !6608, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6607 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!221, !221, !221}
!6610 = !{!6611, !6612, !6613}
!6611 = !DILocalVariable(name: "addend1", arg: 1, scope: !6606, file: !6607, line: 208, type: !221)
!6612 = !DILocalVariable(name: "addend2", arg: 2, scope: !6606, file: !6607, line: 208, type: !221)
!6613 = !DILocalVariable(name: "bytes", scope: !6606, file: !6607, line: 210, type: !221)
!6614 = !DILocation(line: 208, column: 51, scope: !6606)
!6615 = !DILocation(line: 208, column: 67, scope: !6606)
!6616 = !DILocation(line: 210, column: 2, scope: !6606)
!6617 = !DILocation(line: 210, column: 9, scope: !6606)
!6618 = !DILocation(line: 212, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6606, file: !6607, line: 212, column: 6)
!6620 = !DILocation(line: 212, column: 6, scope: !6606)
!6621 = !DILocation(line: 213, column: 3, scope: !6619)
!6622 = !DILocation(line: 215, column: 9, scope: !6606)
!6623 = !DILocation(line: 215, column: 2, scope: !6606)
!6624 = !DILocation(line: 216, column: 1, scope: !6606)
!6625 = distinct !DISubprogram(name: "size_mul", scope: !6607, file: !6607, line: 189, type: !6608, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6626)
!6626 = !{!6627, !6628, !6629}
!6627 = !DILocalVariable(name: "factor1", arg: 1, scope: !6625, file: !6607, line: 189, type: !221)
!6628 = !DILocalVariable(name: "factor2", arg: 2, scope: !6625, file: !6607, line: 189, type: !221)
!6629 = !DILocalVariable(name: "bytes", scope: !6625, file: !6607, line: 191, type: !221)
!6630 = !DILocation(line: 189, column: 51, scope: !6625)
!6631 = !DILocation(line: 189, column: 67, scope: !6625)
!6632 = !DILocation(line: 191, column: 2, scope: !6625)
!6633 = !DILocation(line: 191, column: 9, scope: !6625)
!6634 = !DILocation(line: 193, column: 6, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6625, file: !6607, line: 193, column: 6)
!6636 = !DILocation(line: 193, column: 6, scope: !6625)
!6637 = !DILocation(line: 194, column: 3, scope: !6635)
!6638 = !DILocation(line: 196, column: 9, scope: !6625)
!6639 = !DILocation(line: 196, column: 2, scope: !6625)
!6640 = !DILocation(line: 197, column: 1, scope: !6625)
!6641 = distinct !DISubprogram(name: "atomic_add", scope: !5099, file: !5099, line: 102, type: !6642, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{null, !109, !5102}
!6644 = !{!6645, !6646}
!6645 = !DILocalVariable(name: "i", arg: 1, scope: !6641, file: !5099, line: 102, type: !109)
!6646 = !DILocalVariable(name: "v", arg: 2, scope: !6641, file: !5099, line: 102, type: !5102)
!6647 = !DILocation(line: 102, column: 16, scope: !6641)
!6648 = !DILocation(line: 102, column: 29, scope: !6641)
!6649 = !DILocation(line: 104, column: 31, scope: !6641)
!6650 = !DILocation(line: 104, column: 2, scope: !6641)
!6651 = !DILocation(line: 105, column: 17, scope: !6641)
!6652 = !DILocation(line: 105, column: 20, scope: !6641)
!6653 = !DILocation(line: 105, column: 2, scope: !6641)
!6654 = !DILocation(line: 106, column: 1, scope: !6641)
!6655 = !DISubprogram(name: "kmalloc_large", scope: !173, file: !173, line: 531, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = distinct !DISubprogram(name: "__kmalloc_index", scope: !173, file: !173, line: 444, type: !6657, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6657 = !DISubroutineType(types: !6658)
!6658 = !{!7, !221, !204}
!6659 = !{!6660, !6661}
!6660 = !DILocalVariable(name: "size", arg: 1, scope: !6656, file: !173, line: 444, type: !221)
!6661 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6656, file: !173, line: 445, type: !204)
!6662 = !DILocation(line: 444, column: 60, scope: !6656)
!6663 = !DILocation(line: 445, column: 16, scope: !6656)
!6664 = !DILocation(line: 447, column: 7, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 447, column: 6)
!6666 = !DILocation(line: 447, column: 6, scope: !6656)
!6667 = !DILocation(line: 448, column: 3, scope: !6665)
!6668 = !DILocation(line: 450, column: 6, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 450, column: 6)
!6670 = !DILocation(line: 450, column: 11, scope: !6669)
!6671 = !DILocation(line: 450, column: 6, scope: !6656)
!6672 = !DILocation(line: 451, column: 3, scope: !6669)
!6673 = !DILocation(line: 453, column: 32, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 453, column: 6)
!6675 = !DILocation(line: 453, column: 37, scope: !6674)
!6676 = !DILocation(line: 453, column: 42, scope: !6674)
!6677 = !DILocation(line: 453, column: 45, scope: !6674)
!6678 = !DILocation(line: 453, column: 50, scope: !6674)
!6679 = !DILocation(line: 453, column: 6, scope: !6656)
!6680 = !DILocation(line: 454, column: 3, scope: !6674)
!6681 = !DILocation(line: 455, column: 32, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 455, column: 6)
!6683 = !DILocation(line: 455, column: 37, scope: !6682)
!6684 = !DILocation(line: 455, column: 43, scope: !6682)
!6685 = !DILocation(line: 455, column: 46, scope: !6682)
!6686 = !DILocation(line: 455, column: 51, scope: !6682)
!6687 = !DILocation(line: 455, column: 6, scope: !6656)
!6688 = !DILocation(line: 456, column: 3, scope: !6682)
!6689 = !DILocation(line: 457, column: 6, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 457, column: 6)
!6691 = !DILocation(line: 457, column: 11, scope: !6690)
!6692 = !DILocation(line: 457, column: 6, scope: !6656)
!6693 = !DILocation(line: 457, column: 26, scope: !6690)
!6694 = !DILocation(line: 458, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 458, column: 6)
!6696 = !DILocation(line: 458, column: 11, scope: !6695)
!6697 = !DILocation(line: 458, column: 6, scope: !6656)
!6698 = !DILocation(line: 458, column: 26, scope: !6695)
!6699 = !DILocation(line: 459, column: 6, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 459, column: 6)
!6701 = !DILocation(line: 459, column: 11, scope: !6700)
!6702 = !DILocation(line: 459, column: 6, scope: !6656)
!6703 = !DILocation(line: 459, column: 26, scope: !6700)
!6704 = !DILocation(line: 460, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 460, column: 6)
!6706 = !DILocation(line: 460, column: 11, scope: !6705)
!6707 = !DILocation(line: 460, column: 6, scope: !6656)
!6708 = !DILocation(line: 460, column: 26, scope: !6705)
!6709 = !DILocation(line: 461, column: 6, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 461, column: 6)
!6711 = !DILocation(line: 461, column: 11, scope: !6710)
!6712 = !DILocation(line: 461, column: 6, scope: !6656)
!6713 = !DILocation(line: 461, column: 26, scope: !6710)
!6714 = !DILocation(line: 462, column: 6, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 462, column: 6)
!6716 = !DILocation(line: 462, column: 11, scope: !6715)
!6717 = !DILocation(line: 462, column: 6, scope: !6656)
!6718 = !DILocation(line: 462, column: 26, scope: !6715)
!6719 = !DILocation(line: 463, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 463, column: 6)
!6721 = !DILocation(line: 463, column: 11, scope: !6720)
!6722 = !DILocation(line: 463, column: 6, scope: !6656)
!6723 = !DILocation(line: 463, column: 26, scope: !6720)
!6724 = !DILocation(line: 464, column: 6, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 464, column: 6)
!6726 = !DILocation(line: 464, column: 11, scope: !6725)
!6727 = !DILocation(line: 464, column: 6, scope: !6656)
!6728 = !DILocation(line: 464, column: 26, scope: !6725)
!6729 = !DILocation(line: 465, column: 6, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 465, column: 6)
!6731 = !DILocation(line: 465, column: 11, scope: !6730)
!6732 = !DILocation(line: 465, column: 6, scope: !6656)
!6733 = !DILocation(line: 465, column: 26, scope: !6730)
!6734 = !DILocation(line: 466, column: 6, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 466, column: 6)
!6736 = !DILocation(line: 466, column: 11, scope: !6735)
!6737 = !DILocation(line: 466, column: 6, scope: !6656)
!6738 = !DILocation(line: 466, column: 26, scope: !6735)
!6739 = !DILocation(line: 467, column: 6, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 467, column: 6)
!6741 = !DILocation(line: 467, column: 11, scope: !6740)
!6742 = !DILocation(line: 467, column: 6, scope: !6656)
!6743 = !DILocation(line: 467, column: 26, scope: !6740)
!6744 = !DILocation(line: 468, column: 6, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 468, column: 6)
!6746 = !DILocation(line: 468, column: 11, scope: !6745)
!6747 = !DILocation(line: 468, column: 6, scope: !6656)
!6748 = !DILocation(line: 468, column: 26, scope: !6745)
!6749 = !DILocation(line: 469, column: 6, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 469, column: 6)
!6751 = !DILocation(line: 469, column: 11, scope: !6750)
!6752 = !DILocation(line: 469, column: 6, scope: !6656)
!6753 = !DILocation(line: 469, column: 26, scope: !6750)
!6754 = !DILocation(line: 470, column: 6, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 470, column: 6)
!6756 = !DILocation(line: 470, column: 11, scope: !6755)
!6757 = !DILocation(line: 470, column: 6, scope: !6656)
!6758 = !DILocation(line: 470, column: 26, scope: !6755)
!6759 = !DILocation(line: 471, column: 6, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 471, column: 6)
!6761 = !DILocation(line: 471, column: 11, scope: !6760)
!6762 = !DILocation(line: 471, column: 6, scope: !6656)
!6763 = !DILocation(line: 471, column: 26, scope: !6760)
!6764 = !DILocation(line: 472, column: 6, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 472, column: 6)
!6766 = !DILocation(line: 472, column: 11, scope: !6765)
!6767 = !DILocation(line: 472, column: 6, scope: !6656)
!6768 = !DILocation(line: 472, column: 26, scope: !6765)
!6769 = !DILocation(line: 473, column: 6, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 473, column: 6)
!6771 = !DILocation(line: 473, column: 11, scope: !6770)
!6772 = !DILocation(line: 473, column: 6, scope: !6656)
!6773 = !DILocation(line: 473, column: 26, scope: !6770)
!6774 = !DILocation(line: 474, column: 6, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 474, column: 6)
!6776 = !DILocation(line: 474, column: 11, scope: !6775)
!6777 = !DILocation(line: 474, column: 6, scope: !6656)
!6778 = !DILocation(line: 474, column: 27, scope: !6775)
!6779 = !DILocation(line: 475, column: 6, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 475, column: 6)
!6781 = !DILocation(line: 475, column: 11, scope: !6780)
!6782 = !DILocation(line: 475, column: 6, scope: !6656)
!6783 = !DILocation(line: 475, column: 32, scope: !6780)
!6784 = !DILocation(line: 477, column: 50, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6656, file: !173, line: 477, column: 6)
!6786 = !DILocation(line: 477, column: 6, scope: !6656)
!6787 = !DILocation(line: 478, column: 3, scope: !6785)
!6788 = !DILocation(line: 478, column: 3, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !173, line: 478, column: 3)
!6790 = distinct !DILexicalBlock(scope: !6785, file: !173, line: 478, column: 3)
!6791 = !{i32 -2141690474}
!6792 = !DILocation(line: 478, column: 3, scope: !6790)
!6793 = !DILocation(line: 480, column: 3, scope: !6785)
!6794 = !DILocation(line: 480, column: 3, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6785, file: !173, line: 480, column: 3)
!6796 = !DILocation(line: 480, column: 3, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6795, file: !173, line: 480, column: 3)
!6798 = !DILocation(line: 480, column: 3, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6795, file: !173, line: 480, column: 3)
!6800 = !{i64 2153277025, i64 2153277054, i64 2153277100, i64 2153277158, i64 2153277212, i64 2153277266, i64 2153277321, i64 2153277352}
!6801 = !DILocation(line: 483, column: 2, scope: !6656)
!6802 = !DILocation(line: 484, column: 1, scope: !6656)
!6803 = !DISubprogram(name: "kmalloc_trace", scope: !173, file: !173, line: 525, type: !6804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6804 = !DISubroutineType(types: !6805)
!6805 = !{!183, !6806, !231, !221}
!6806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6807, size: 64)
!6807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6808, line: 325, flags: DIFlagFwdDecl)
!6808 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6809 = distinct !DISubprogram(name: "kmalloc_type", scope: !173, file: !173, line: 401, type: !6810, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6812)
!6810 = !DISubroutineType(types: !6811)
!6811 = !{!172, !231, !217}
!6812 = !{!6813, !6814}
!6813 = !DILocalVariable(name: "flags", arg: 1, scope: !6809, file: !173, line: 401, type: !231)
!6814 = !DILocalVariable(name: "caller", arg: 2, scope: !6809, file: !173, line: 401, type: !217)
!6815 = !DILocation(line: 401, column: 67, scope: !6809)
!6816 = !DILocation(line: 401, column: 88, scope: !6809)
!6817 = !DILocation(line: 407, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6809, file: !173, line: 407, column: 6)
!6819 = !DILocation(line: 407, column: 6, scope: !6809)
!6820 = !DILocation(line: 413, column: 3, scope: !6818)
!6821 = !DILocation(line: 423, column: 38, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6809, file: !173, line: 423, column: 6)
!6823 = !DILocation(line: 423, column: 44, scope: !6822)
!6824 = !DILocation(line: 423, column: 6, scope: !6809)
!6825 = !DILocation(line: 424, column: 3, scope: !6822)
!6826 = !DILocation(line: 426, column: 3, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6809, file: !173, line: 425, column: 6)
!6828 = !DILocation(line: 429, column: 1, scope: !6809)
!6829 = !DISubprogram(name: "__kmalloc", scope: !173, file: !173, line: 488, type: !6564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6830 = !DISubprogram(name: "__compiletime_assert_245", scope: !173, file: !173, line: 478, type: !1058, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6831 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6607, file: !6607, line: 51, type: !6832, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6834)
!6832 = !DISubroutineType(types: !6833)
!6833 = !{!204, !204}
!6834 = !{!6835}
!6835 = !DILocalVariable(name: "overflow", arg: 1, scope: !6831, file: !6607, line: 51, type: !204)
!6836 = !DILocation(line: 51, column: 60, scope: !6831)
!6837 = !DILocation(line: 53, column: 9, scope: !6831)
!6838 = !DILocation(line: 53, column: 2, scope: !6831)
!6839 = distinct !DISubprogram(name: "raw_atomic_add", scope: !6313, file: !6313, line: 531, type: !6642, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "i", arg: 1, scope: !6839, file: !6313, line: 531, type: !109)
!6842 = !DILocalVariable(name: "v", arg: 2, scope: !6839, file: !6313, line: 531, type: !5102)
!6843 = !DILocation(line: 531, column: 20, scope: !6839)
!6844 = !DILocation(line: 531, column: 33, scope: !6839)
!6845 = !DILocation(line: 533, column: 18, scope: !6839)
!6846 = !DILocation(line: 533, column: 21, scope: !6839)
!6847 = !DILocation(line: 533, column: 2, scope: !6839)
!6848 = !DILocation(line: 534, column: 1, scope: !6839)
!6849 = distinct !DISubprogram(name: "arch_atomic_add", scope: !6343, file: !6343, line: 31, type: !6642, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6850)
!6850 = !{!6851, !6852}
!6851 = !DILocalVariable(name: "i", arg: 1, scope: !6849, file: !6343, line: 31, type: !109)
!6852 = !DILocalVariable(name: "v", arg: 2, scope: !6849, file: !6343, line: 31, type: !5102)
!6853 = !DILocation(line: 31, column: 49, scope: !6849)
!6854 = !DILocation(line: 31, column: 62, scope: !6849)
!6855 = !DILocation(line: 34, column: 16, scope: !6849)
!6856 = !DILocation(line: 34, column: 19, scope: !6849)
!6857 = !DILocation(line: 35, column: 16, scope: !6849)
!6858 = !DILocation(line: 33, column: 2, scope: !6849)
!6859 = !{i64 2149003703, i64 2149003742, i64 2149003763, i64 2149003800, i64 2149003823, i64 2149003693}
!6860 = !DILocation(line: 36, column: 1, scope: !6849)
!6861 = distinct !DISubprogram(name: "tty_insert_flip_string_fixed_flag", scope: !5989, file: !5989, line: 31, type: !6862, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6864)
!6862 = !DISubroutineType(types: !6863)
!6863 = !{!221, !240, !4744, !209, !221}
!6864 = !{!6865, !6866, !6867, !6868}
!6865 = !DILocalVariable(name: "port", arg: 1, scope: !6861, file: !5989, line: 31, type: !240)
!6866 = !DILocalVariable(name: "chars", arg: 2, scope: !6861, file: !5989, line: 32, type: !4744)
!6867 = !DILocalVariable(name: "flag", arg: 3, scope: !6861, file: !5989, line: 32, type: !209)
!6868 = !DILocalVariable(name: "size", arg: 4, scope: !6861, file: !5989, line: 33, type: !221)
!6869 = !DILocation(line: 31, column: 73, scope: !6861)
!6870 = !DILocation(line: 32, column: 24, scope: !6861)
!6871 = !DILocation(line: 32, column: 34, scope: !6861)
!6872 = !DILocation(line: 33, column: 21, scope: !6861)
!6873 = !DILocation(line: 35, column: 40, scope: !6861)
!6874 = !DILocation(line: 35, column: 46, scope: !6861)
!6875 = !DILocation(line: 35, column: 67, scope: !6861)
!6876 = !DILocation(line: 35, column: 9, scope: !6861)
!6877 = !DILocation(line: 35, column: 2, scope: !6861)
!6878 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5974, file: !5974, line: 43, type: !6879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6879 = !DISubroutineType(types: !6880)
!6880 = !{null, !5977, !217}
!6881 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6296, file: !6296, line: 80, type: !6297, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884}
!6883 = !DILocalVariable(name: "v", arg: 1, scope: !6881, file: !6296, line: 80, type: !6299)
!6884 = !DILocalVariable(name: "size", arg: 2, scope: !6881, file: !6296, line: 80, type: !221)
!6885 = !DILocation(line: 80, column: 74, scope: !6881)
!6886 = !DILocation(line: 80, column: 84, scope: !6881)
!6887 = !DILocation(line: 82, column: 20, scope: !6881)
!6888 = !DILocation(line: 82, column: 23, scope: !6881)
!6889 = !DILocation(line: 82, column: 2, scope: !6881)
!6890 = !DILocation(line: 83, column: 2, scope: !6881)
!6891 = !DILocation(line: 84, column: 1, scope: !6881)
!6892 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6313, file: !6313, line: 488, type: !6074, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6893)
!6893 = !{!6894, !6895}
!6894 = !DILocalVariable(name: "v", arg: 1, scope: !6892, file: !6313, line: 488, type: !5102)
!6895 = !DILocalVariable(name: "i", arg: 2, scope: !6892, file: !6313, line: 488, type: !109)
!6896 = !DILocation(line: 488, column: 26, scope: !6892)
!6897 = !DILocation(line: 488, column: 33, scope: !6892)
!6898 = !DILocation(line: 490, column: 18, scope: !6892)
!6899 = !DILocation(line: 490, column: 21, scope: !6892)
!6900 = !DILocation(line: 490, column: 2, scope: !6892)
!6901 = !DILocation(line: 491, column: 1, scope: !6892)
!6902 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6343, file: !6343, line: 26, type: !6074, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6903)
!6903 = !{!6904, !6905}
!6904 = !DILocalVariable(name: "v", arg: 1, scope: !6902, file: !6343, line: 26, type: !5102)
!6905 = !DILocalVariable(name: "i", arg: 2, scope: !6902, file: !6343, line: 26, type: !109)
!6906 = !DILocation(line: 26, column: 55, scope: !6902)
!6907 = !DILocation(line: 26, column: 62, scope: !6902)
!6908 = !DILocation(line: 28, column: 2, scope: !6902)
!6909 = !DILocation(line: 28, column: 2, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6902, file: !6343, line: 28, column: 2)
!6911 = !DILocation(line: 29, column: 1, scope: !6902)
!6912 = distinct !DISubprogram(name: "receive_buf", scope: !3, file: !3, line: 436, type: !6913, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6913 = !DISubroutineType(types: !6914)
!6914 = !{!221, !240, !184, !221}
!6915 = !{!6916, !6917, !6918, !6919, !6920, !6921}
!6916 = !DILocalVariable(name: "port", arg: 1, scope: !6912, file: !3, line: 436, type: !240)
!6917 = !DILocalVariable(name: "head", arg: 2, scope: !6912, file: !3, line: 436, type: !184)
!6918 = !DILocalVariable(name: "count", arg: 3, scope: !6912, file: !3, line: 436, type: !221)
!6919 = !DILocalVariable(name: "p", scope: !6912, file: !3, line: 438, type: !4849)
!6920 = !DILocalVariable(name: "f", scope: !6912, file: !3, line: 439, type: !4744)
!6921 = !DILocalVariable(name: "n", scope: !6912, file: !3, line: 440, type: !221)
!6922 = !DILocation(line: 436, column: 30, scope: !6912)
!6923 = !DILocation(line: 436, column: 55, scope: !6912)
!6924 = !DILocation(line: 436, column: 68, scope: !6912)
!6925 = !DILocation(line: 438, column: 2, scope: !6912)
!6926 = !DILocation(line: 438, column: 6, scope: !6912)
!6927 = !DILocation(line: 438, column: 23, scope: !6912)
!6928 = !DILocation(line: 438, column: 29, scope: !6912)
!6929 = !DILocation(line: 438, column: 35, scope: !6912)
!6930 = !DILocation(line: 438, column: 10, scope: !6912)
!6931 = !DILocation(line: 439, column: 2, scope: !6912)
!6932 = !DILocation(line: 439, column: 12, scope: !6912)
!6933 = !DILocation(line: 440, column: 2, scope: !6912)
!6934 = !DILocation(line: 440, column: 9, scope: !6912)
!6935 = !DILocation(line: 442, column: 6, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 442, column: 6)
!6937 = !DILocation(line: 442, column: 12, scope: !6936)
!6938 = !DILocation(line: 442, column: 6, scope: !6912)
!6939 = !DILocation(line: 443, column: 20, scope: !6936)
!6940 = !DILocation(line: 443, column: 26, scope: !6936)
!6941 = !DILocation(line: 443, column: 32, scope: !6936)
!6942 = !DILocation(line: 443, column: 7, scope: !6936)
!6943 = !DILocation(line: 443, column: 5, scope: !6936)
!6944 = !DILocation(line: 443, column: 3, scope: !6936)
!6945 = !DILocation(line: 445, column: 6, scope: !6912)
!6946 = !DILocation(line: 445, column: 12, scope: !6912)
!6947 = !DILocation(line: 445, column: 24, scope: !6912)
!6948 = !DILocation(line: 445, column: 36, scope: !6912)
!6949 = !DILocation(line: 445, column: 42, scope: !6912)
!6950 = !DILocation(line: 445, column: 45, scope: !6912)
!6951 = !DILocation(line: 445, column: 48, scope: !6912)
!6952 = !DILocation(line: 445, column: 4, scope: !6912)
!6953 = !DILocation(line: 446, column: 6, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 446, column: 6)
!6955 = !DILocation(line: 446, column: 8, scope: !6954)
!6956 = !DILocation(line: 446, column: 6, scope: !6912)
!6957 = !DILocation(line: 447, column: 10, scope: !6954)
!6958 = !DILocation(line: 447, column: 16, scope: !6954)
!6959 = !DILocation(line: 447, column: 3, scope: !6954)
!6960 = !DILocation(line: 448, column: 9, scope: !6912)
!6961 = !DILocation(line: 449, column: 1, scope: !6912)
!6962 = !DILocation(line: 448, column: 2, scope: !6912)
!6963 = distinct !DISubprogram(name: "lookahead_bufs", scope: !3, file: !3, line: 397, type: !5473, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6964)
!6964 = !{!6965, !6966, !6967, !6969, !6970, !6972, !6973, !6975, !6977, !6980}
!6965 = !DILocalVariable(name: "port", arg: 1, scope: !6963, file: !3, line: 397, type: !240)
!6966 = !DILocalVariable(name: "head", arg: 2, scope: !6963, file: !3, line: 397, type: !184)
!6967 = !DILocalVariable(name: "__UNIQUE_ID___x306", scope: !6968, file: !3, line: 399, type: !7)
!6968 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 399, column: 20)
!6969 = !DILocalVariable(name: "__UNIQUE_ID___y307", scope: !6968, file: !3, line: 399, type: !7)
!6970 = !DILocalVariable(name: "next", scope: !6971, file: !3, line: 402, type: !184)
!6971 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 401, column: 15)
!6972 = !DILocalVariable(name: "count", scope: !6971, file: !3, line: 403, type: !7)
!6973 = !DILocalVariable(name: "___p1", scope: !6974, file: !3, line: 410, type: !184)
!6974 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 410, column: 10)
!6975 = !DILocalVariable(name: "___p1", scope: !6976, file: !3, line: 415, type: !7)
!6976 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 415, column: 11)
!6977 = !DILocalVariable(name: "p", scope: !6978, file: !3, line: 422, type: !4849)
!6978 = distinct !DILexicalBlock(scope: !6979, file: !3, line: 421, column: 40)
!6979 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 421, column: 7)
!6980 = !DILocalVariable(name: "f", scope: !6978, file: !3, line: 422, type: !4849)
!6981 = !DILocation(line: 397, column: 45, scope: !6963)
!6982 = !DILocation(line: 397, column: 70, scope: !6963)
!6983 = !DILocation(line: 399, column: 20, scope: !6968)
!6984 = !DILocation(line: 399, column: 20, scope: !6963)
!6985 = !DILocation(line: 399, column: 2, scope: !6963)
!6986 = !DILocation(line: 399, column: 8, scope: !6963)
!6987 = !DILocation(line: 399, column: 18, scope: !6963)
!6988 = !DILocation(line: 401, column: 2, scope: !6963)
!6989 = !DILocation(line: 401, column: 9, scope: !6963)
!6990 = !DILocation(line: 402, column: 3, scope: !6971)
!6991 = !DILocation(line: 402, column: 22, scope: !6971)
!6992 = !DILocation(line: 403, column: 3, scope: !6971)
!6993 = !DILocation(line: 403, column: 16, scope: !6971)
!6994 = !DILocation(line: 410, column: 10, scope: !6974)
!6995 = !DILocation(line: 410, column: 10, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6974, file: !3, line: 410, column: 10)
!6997 = !DILocation(line: 410, column: 10, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6996, file: !3, line: 410, column: 10)
!6999 = !DILocation(line: 410, column: 10, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6974, file: !3, line: 410, column: 10)
!7001 = !{i64 2154747287}
!7002 = !DILocation(line: 410, column: 10, scope: !6971)
!7003 = !DILocation(line: 410, column: 8, scope: !6971)
!7004 = !DILocation(line: 415, column: 11, scope: !6976)
!7005 = !DILocation(line: 415, column: 11, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !6976, file: !3, line: 415, column: 11)
!7007 = !DILocation(line: 415, column: 11, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !7006, file: !3, line: 415, column: 11)
!7009 = !DILocation(line: 415, column: 11, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !6976, file: !3, line: 415, column: 11)
!7011 = !{i64 2154752179}
!7012 = !DILocation(line: 415, column: 11, scope: !6971)
!7013 = !DILocation(line: 415, column: 45, scope: !6971)
!7014 = !DILocation(line: 415, column: 51, scope: !6971)
!7015 = !DILocation(line: 415, column: 43, scope: !6971)
!7016 = !DILocation(line: 415, column: 9, scope: !6971)
!7017 = !DILocation(line: 416, column: 8, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 416, column: 7)
!7019 = !DILocation(line: 416, column: 7, scope: !6971)
!7020 = !DILocation(line: 417, column: 11, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !7018, file: !3, line: 416, column: 15)
!7022 = !DILocation(line: 417, column: 9, scope: !7021)
!7023 = !DILocation(line: 418, column: 4, scope: !7021)
!7024 = distinct !{!7024, !6988, !7025, !5266, !5267}
!7025 = !DILocation(line: 432, column: 2, scope: !6963)
!7026 = !DILocation(line: 421, column: 7, scope: !6979)
!7027 = !DILocation(line: 421, column: 13, scope: !6979)
!7028 = !DILocation(line: 421, column: 25, scope: !6979)
!7029 = !DILocation(line: 421, column: 7, scope: !6971)
!7030 = !DILocation(line: 422, column: 4, scope: !6978)
!7031 = !DILocation(line: 422, column: 8, scope: !6978)
!7032 = !DILocation(line: 422, column: 12, scope: !6978)
!7033 = !DILocation(line: 424, column: 21, scope: !6978)
!7034 = !DILocation(line: 424, column: 27, scope: !6978)
!7035 = !DILocation(line: 424, column: 33, scope: !6978)
!7036 = !DILocation(line: 424, column: 8, scope: !6978)
!7037 = !DILocation(line: 424, column: 6, scope: !6978)
!7038 = !DILocation(line: 425, column: 8, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 425, column: 8)
!7040 = !DILocation(line: 425, column: 14, scope: !7039)
!7041 = !DILocation(line: 425, column: 8, scope: !6978)
!7042 = !DILocation(line: 426, column: 22, scope: !7039)
!7043 = !DILocation(line: 426, column: 28, scope: !7039)
!7044 = !DILocation(line: 426, column: 34, scope: !7039)
!7045 = !DILocation(line: 426, column: 9, scope: !7039)
!7046 = !DILocation(line: 426, column: 7, scope: !7039)
!7047 = !DILocation(line: 426, column: 5, scope: !7039)
!7048 = !DILocation(line: 428, column: 4, scope: !6978)
!7049 = !DILocation(line: 428, column: 10, scope: !6978)
!7050 = !DILocation(line: 428, column: 22, scope: !6978)
!7051 = !DILocation(line: 428, column: 36, scope: !6978)
!7052 = !DILocation(line: 428, column: 42, scope: !6978)
!7053 = !DILocation(line: 428, column: 45, scope: !6978)
!7054 = !DILocation(line: 428, column: 48, scope: !6978)
!7055 = !DILocation(line: 429, column: 3, scope: !6979)
!7056 = !DILocation(line: 429, column: 3, scope: !6978)
!7057 = !DILocation(line: 431, column: 22, scope: !6971)
!7058 = !DILocation(line: 431, column: 3, scope: !6971)
!7059 = !DILocation(line: 431, column: 9, scope: !6971)
!7060 = !DILocation(line: 431, column: 19, scope: !6971)
!7061 = !DILocation(line: 433, column: 1, scope: !6963)
!7062 = distinct !DISubprogram(name: "need_resched", scope: !2018, file: !2018, line: 2260, type: !4090, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7063 = !DILocation(line: 2262, column: 9, scope: !7062)
!7064 = !DILocation(line: 2262, column: 2, scope: !7062)
!7065 = distinct !DISubprogram(name: "__might_resched", scope: !7066, file: !7066, line: 184, type: !7067, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7069)
!7066 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!7067 = !DISubroutineType(types: !7068)
!7068 = !{null, !344, !109, !7}
!7069 = !{!7070, !7071, !7072}
!7070 = !DILocalVariable(name: "file", arg: 1, scope: !7065, file: !7066, line: 184, type: !344)
!7071 = !DILocalVariable(name: "line", arg: 2, scope: !7065, file: !7066, line: 184, type: !109)
!7072 = !DILocalVariable(name: "offsets", arg: 3, scope: !7065, file: !7066, line: 185, type: !7)
!7073 = !DILocation(line: 184, column: 50, scope: !7065)
!7074 = !DILocation(line: 184, column: 60, scope: !7065)
!7075 = !DILocation(line: 185, column: 23, scope: !7065)
!7076 = !DILocation(line: 185, column: 34, scope: !7065)
!7077 = !DILocation(line: 2104, column: 9, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !5072, file: !2018, line: 2104, column: 9)
!7079 = !DILocation(line: 2104, column: 9, scope: !5072)
!7080 = !DILocation(line: 2104, column: 2, scope: !5072)
!7081 = distinct !DISubprogram(name: "tif_need_resched", scope: !7082, file: !7082, line: 182, type: !4090, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7082 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!7083 = !DILocation(line: 185, column: 28, scope: !7081)
!7084 = !DILocation(line: 185, column: 51, scope: !7081)
!7085 = !DILocation(line: 184, column: 9, scope: !7081)
!7086 = !DILocation(line: 184, column: 2, scope: !7081)
!7087 = distinct !DISubprogram(name: "arch_test_bit", scope: !7088, file: !7088, line: 237, type: !7089, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7094)
!7088 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7089 = !DISubroutineType(types: !7090)
!7090 = !{!204, !217, !7091}
!7091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7092, size: 64)
!7092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7093)
!7093 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !217)
!7094 = !{!7095, !7096}
!7095 = !DILocalVariable(name: "nr", arg: 1, scope: !7087, file: !7088, line: 237, type: !217)
!7096 = !DILocalVariable(name: "addr", arg: 2, scope: !7087, file: !7088, line: 237, type: !7091)
!7097 = !DILocation(line: 237, column: 29, scope: !7087)
!7098 = !DILocation(line: 237, column: 63, scope: !7087)
!7099 = !DILocation(line: 239, column: 30, scope: !7087)
!7100 = !DILocation(line: 239, column: 9, scope: !7087)
!7101 = !DILocation(line: 239, column: 54, scope: !7087)
!7102 = !DILocation(line: 239, column: 58, scope: !7087)
!7103 = !DILocation(line: 239, column: 36, scope: !7087)
!7104 = !DILocation(line: 240, column: 26, scope: !7087)
!7105 = !DILocation(line: 240, column: 30, scope: !7087)
!7106 = !DILocation(line: 240, column: 8, scope: !7087)
!7107 = !DILocation(line: 239, column: 2, scope: !7087)
!7108 = distinct !DISubprogram(name: "get_current", scope: !7109, file: !7109, line: 39, type: !7110, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7112)
!7109 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7110 = !DISubroutineType(types: !7111)
!7111 = !{!2372}
!7112 = !{!7113, !7115, !7117}
!7113 = !DILocalVariable(name: "pscr_ret__", scope: !7114, file: !7109, line: 41, type: !2372)
!7114 = distinct !DILexicalBlock(scope: !7108, file: !7109, line: 41, column: 9)
!7115 = !DILocalVariable(name: "__vpp_verify", scope: !7116, file: !7109, line: 41, type: !1670)
!7116 = distinct !DILexicalBlock(scope: !7114, file: !7109, line: 41, column: 9)
!7117 = !DILocalVariable(name: "pfo_val__", scope: !7118, file: !7109, line: 41, type: !540)
!7118 = distinct !DILexicalBlock(scope: !7114, file: !7109, line: 41, column: 9)
!7119 = !DILocation(line: 41, column: 9, scope: !7114)
!7120 = !DILocation(line: 41, column: 9, scope: !7116)
!7121 = !DILocation(line: 41, column: 9, scope: !7118)
!7122 = !{i64 2148476777}
!7123 = !DILocation(line: 41, column: 9, scope: !7108)
!7124 = !DILocation(line: 41, column: 2, scope: !7108)
!7125 = distinct !DISubprogram(name: "constant_test_bit", scope: !7088, file: !7088, line: 204, type: !7126, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7128)
!7126 = !DISubroutineType(types: !7127)
!7127 = !{!204, !427, !7091}
!7128 = !{!7129, !7130}
!7129 = !DILocalVariable(name: "nr", arg: 1, scope: !7125, file: !7088, line: 204, type: !427)
!7130 = !DILocalVariable(name: "addr", arg: 2, scope: !7125, file: !7088, line: 204, type: !7091)
!7131 = !DILocation(line: 204, column: 52, scope: !7125)
!7132 = !DILocation(line: 204, column: 86, scope: !7125)
!7133 = !DILocation(line: 206, column: 19, scope: !7125)
!7134 = !DILocation(line: 206, column: 22, scope: !7125)
!7135 = !DILocation(line: 206, column: 15, scope: !7125)
!7136 = !DILocation(line: 207, column: 4, scope: !7125)
!7137 = !DILocation(line: 207, column: 9, scope: !7125)
!7138 = !DILocation(line: 207, column: 12, scope: !7125)
!7139 = !DILocation(line: 206, column: 44, scope: !7125)
!7140 = !DILocation(line: 207, column: 37, scope: !7125)
!7141 = !DILocation(line: 206, column: 2, scope: !7125)
!7142 = distinct !DISubprogram(name: "variable_test_bit", scope: !7088, file: !7088, line: 224, type: !7126, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7143)
!7143 = !{!7144, !7145, !7146}
!7144 = !DILocalVariable(name: "nr", arg: 1, scope: !7142, file: !7088, line: 224, type: !427)
!7145 = !DILocalVariable(name: "addr", arg: 2, scope: !7142, file: !7088, line: 224, type: !7091)
!7146 = !DILocalVariable(name: "oldbit", scope: !7142, file: !7088, line: 226, type: !204)
!7147 = !DILocation(line: 224, column: 52, scope: !7142)
!7148 = !DILocation(line: 224, column: 86, scope: !7142)
!7149 = !DILocation(line: 226, column: 2, scope: !7142)
!7150 = !DILocation(line: 226, column: 7, scope: !7142)
!7151 = !DILocation(line: 231, column: 33, scope: !7142)
!7152 = !DILocation(line: 231, column: 46, scope: !7142)
!7153 = !DILocation(line: 228, column: 2, scope: !7142)
!7154 = !{i64 2148188791, i64 2148188865}
!7155 = !DILocation(line: 233, column: 9, scope: !7142)
!7156 = !DILocation(line: 234, column: 1, scope: !7142)
!7157 = !DILocation(line: 233, column: 2, scope: !7142)
