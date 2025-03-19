; ModuleID = 'fs/netfs/objects.c'
source_filename = "fs/netfs/objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.20 }
%union.anon.20 = type { i64 }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.netfs_io_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i8, i64, i64, i64, %struct.refcount_struct, i64, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.netfs_inode = type { %struct.inode, ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%union.anon.16 = type { ptr }
%struct.netfs_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.netfs_io_subrequest = type { ptr, %struct.list_head, i64, i64, i64, %struct.refcount_struct, i16, i16, i8, i64 }
%struct.netfs_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@netfs_alloc_request.debug_ids = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !0
@system_unbound_wq = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"fs/netfs/objects.c\00", align 1, !dbg !4898
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4903
@__tracepoint_netfs_rreq_ref = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [29 x i8] c"include/trace/events/netfs.h\00", align 1, !dbg !4908
@trace_netfs_rreq_ref.__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq_ref354 = internal global ptr @__SCK__tp_func_netfs_rreq_ref, section ".discard.addressable", align 8, !dbg !4913
@__SCK__tp_func_netfs_rreq_ref = external dso_local global %struct.static_call_key, align 8
@trace_netfs_rreq_ref.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace355 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4943
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_netfs_rreq = external dso_local global %struct.tracepoint, align 8
@trace_netfs_rreq.__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq330 = internal global ptr @__SCK__tp_func_netfs_rreq, section ".discard.addressable", align 8, !dbg !4945
@__SCK__tp_func_netfs_rreq = external dso_local global %struct.static_call_key, align 8
@trace_netfs_rreq.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace331 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4974
@__tracepoint_netfs_sreq_ref = external dso_local global %struct.tracepoint, align 8
@trace_netfs_sreq_ref.__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq_ref362 = internal global ptr @__SCK__tp_func_netfs_sreq_ref, section ".discard.addressable", align 8, !dbg !4976
@__SCK__tp_func_netfs_sreq_ref = external dso_local global %struct.static_call_key, align 8
@trace_netfs_sreq_ref.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace363 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5007
@__tracepoint_netfs_sreq = external dso_local global %struct.tracepoint, align 8
@trace_netfs_sreq.__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq338 = internal global ptr @__SCK__tp_func_netfs_sreq, section ".discard.addressable", align 8, !dbg !5009
@__SCK__tp_func_netfs_sreq = external dso_local global %struct.static_call_key, align 8
@trace_netfs_sreq.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace339 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5038
@llvm.compiler.used = appending global [8 x ptr] [ptr @trace_netfs_rreq_ref.__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq_ref354, ptr @trace_netfs_rreq_ref.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace355, ptr @trace_netfs_rreq.__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq330, ptr @trace_netfs_rreq.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace331, ptr @trace_netfs_sreq_ref.__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq_ref362, ptr @trace_netfs_sreq_ref.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace363, ptr @trace_netfs_sreq.__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq338, ptr @trace_netfs_sreq.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace339], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netfs_alloc_request(ptr noundef %mapping, ptr noundef %file, i64 noundef %start, i64 noundef %len, i8 noundef signext %origin) #0 align 16 !dbg !2 {
entry:
  %retval = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %origin.addr = alloca i8, align 1
  %inode = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %rreq = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mapping, ptr %mapping.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !5041, metadata !DIExpression()), !dbg !5060
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5042, metadata !DIExpression()), !dbg !5061
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5043, metadata !DIExpression()), !dbg !5062
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5044, metadata !DIExpression()), !dbg !5063
  store i8 %origin, ptr %origin.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !5045, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5046, metadata !DIExpression()), !dbg !5066
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5067
  %tobool = icmp ne ptr %0, null, !dbg !5067
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5067

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5068
  %call = call ptr @file_inode(ptr noundef %1) #17, !dbg !5069
  br label %cond.end, !dbg !5067

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %mapping.addr, align 8, !dbg !5070
  %host = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 0, !dbg !5071
  %3 = load ptr, ptr %host, align 8, !dbg !5071
  br label %cond.end, !dbg !5067

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %3, %cond.false ], !dbg !5067
  store ptr %cond, ptr %inode, align 8, !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #16, !dbg !5072
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5047, metadata !DIExpression()), !dbg !5073
  %4 = load ptr, ptr %inode, align 8, !dbg !5074
  %call1 = call ptr @netfs_inode(ptr noundef %4) #17, !dbg !5075
  store ptr %call1, ptr %ctx, align 8, !dbg !5073
  call void @llvm.lifetime.start.p0(i64 8, ptr %rreq) #16, !dbg !5076
  call void @llvm.dbg.declare(metadata ptr %rreq, metadata !5048, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5078
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5049, metadata !DIExpression()), !dbg !5079
  %call2 = call noalias ptr @kzalloc(i64 noundef 192, i32 noundef 3264) #18, !dbg !5080
  store ptr %call2, ptr %rreq, align 8, !dbg !5081
  %5 = load ptr, ptr %rreq, align 8, !dbg !5082
  %tobool3 = icmp ne ptr %5, null, !dbg !5082
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5084

if.then:                                          ; preds = %cond.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5085
  store ptr %call4, ptr %retval, align 8, !dbg !5086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5086

if.end:                                           ; preds = %cond.end
  %6 = load i64, ptr %start.addr, align 8, !dbg !5087
  %7 = load ptr, ptr %rreq, align 8, !dbg !5088
  %start5 = getelementptr inbounds %struct.netfs_io_request, ptr %7, i32 0, i32 14, !dbg !5089
  store i64 %6, ptr %start5, align 8, !dbg !5090
  %8 = load i64, ptr %len.addr, align 8, !dbg !5091
  %9 = load ptr, ptr %rreq, align 8, !dbg !5092
  %len6 = getelementptr inbounds %struct.netfs_io_request, ptr %9, i32 0, i32 10, !dbg !5093
  store i64 %8, ptr %len6, align 8, !dbg !5094
  %10 = load i8, ptr %origin.addr, align 1, !dbg !5095
  %11 = load ptr, ptr %rreq, align 8, !dbg !5096
  %origin7 = getelementptr inbounds %struct.netfs_io_request, ptr %11, i32 0, i32 12, !dbg !5097
  store i8 %10, ptr %origin7, align 2, !dbg !5098
  %12 = load ptr, ptr %ctx, align 8, !dbg !5099
  %ops = getelementptr inbounds %struct.netfs_inode, ptr %12, i32 0, i32 1, !dbg !5100
  %13 = load ptr, ptr %ops, align 8, !dbg !5100
  %14 = load ptr, ptr %rreq, align 8, !dbg !5101
  %netfs_ops = getelementptr inbounds %struct.netfs_io_request, ptr %14, i32 0, i32 18, !dbg !5102
  store ptr %13, ptr %netfs_ops, align 8, !dbg !5103
  %15 = load ptr, ptr %mapping.addr, align 8, !dbg !5104
  %16 = load ptr, ptr %rreq, align 8, !dbg !5105
  %mapping8 = getelementptr inbounds %struct.netfs_io_request, ptr %16, i32 0, i32 2, !dbg !5106
  store ptr %15, ptr %mapping8, align 8, !dbg !5107
  %17 = load ptr, ptr %inode, align 8, !dbg !5108
  %18 = load ptr, ptr %rreq, align 8, !dbg !5109
  %inode9 = getelementptr inbounds %struct.netfs_io_request, ptr %18, i32 0, i32 1, !dbg !5110
  store ptr %17, ptr %inode9, align 8, !dbg !5111
  %19 = load ptr, ptr %inode, align 8, !dbg !5112
  %call10 = call i64 @i_size_read(ptr noundef %19) #17, !dbg !5113
  %20 = load ptr, ptr %rreq, align 8, !dbg !5114
  %i_size = getelementptr inbounds %struct.netfs_io_request, ptr %20, i32 0, i32 13, !dbg !5115
  store i64 %call10, ptr %i_size, align 8, !dbg !5116
  %call11 = call i32 @atomic_inc_return(ptr noundef @netfs_alloc_request.debug_ids) #17, !dbg !5117
  %21 = load ptr, ptr %rreq, align 8, !dbg !5118
  %debug_id = getelementptr inbounds %struct.netfs_io_request, ptr %21, i32 0, i32 6, !dbg !5119
  store i32 %call11, ptr %debug_id, align 8, !dbg !5120
  %22 = load ptr, ptr %rreq, align 8, !dbg !5121
  %subrequests = getelementptr inbounds %struct.netfs_io_request, ptr %22, i32 0, i32 4, !dbg !5122
  call void @INIT_LIST_HEAD(ptr noundef %subrequests) #17, !dbg !5123
  %23 = load ptr, ptr %rreq, align 8, !dbg !5124
  %ref = getelementptr inbounds %struct.netfs_io_request, ptr %23, i32 0, i32 16, !dbg !5125
  call void @refcount_set(ptr noundef %ref, i32 noundef 1) #17, !dbg !5126
  %24 = load ptr, ptr %rreq, align 8, !dbg !5127
  %flags = getelementptr inbounds %struct.netfs_io_request, ptr %24, i32 0, i32 17, !dbg !5127
  %25 = ptrtoint ptr %flags to i64, !dbg !5127
  %cmp = icmp ne i64 %25, 0, !dbg !5127
  %conv = zext i1 %cmp to i32, !dbg !5127
  %26 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5127
  br i1 %26, label %land.lhs.true, label %cond.false19, !dbg !5127

land.lhs.true:                                    ; preds = %if.end
  %27 = load ptr, ptr %rreq, align 8, !dbg !5127
  %flags12 = getelementptr inbounds %struct.netfs_io_request, ptr %27, i32 0, i32 17, !dbg !5127
  %28 = ptrtoint ptr %flags12 to i64, !dbg !5127
  %cmp13 = icmp ne i64 %28, 0, !dbg !5127
  br i1 %cmp13, label %land.lhs.true15, label %cond.false19, !dbg !5127

land.lhs.true15:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %rreq, align 8, !dbg !5127
  %flags16 = getelementptr inbounds %struct.netfs_io_request, ptr %29, i32 0, i32 17, !dbg !5127
  %30 = load i64, ptr %flags16, align 8, !dbg !5127
  %31 = call i1 @llvm.is.constant.i64(i64 %30), !dbg !5127
  br i1 %31, label %cond.true17, label %cond.false19, !dbg !5127

cond.true17:                                      ; preds = %land.lhs.true15
  %32 = load ptr, ptr %rreq, align 8, !dbg !5127
  %flags18 = getelementptr inbounds %struct.netfs_io_request, ptr %32, i32 0, i32 17, !dbg !5127
  call void @generic___set_bit(i64 noundef 5, ptr noundef %flags18) #17, !dbg !5127
  br label %cond.end21, !dbg !5127

cond.false19:                                     ; preds = %land.lhs.true15, %land.lhs.true, %if.end
  %33 = load ptr, ptr %rreq, align 8, !dbg !5127
  %flags20 = getelementptr inbounds %struct.netfs_io_request, ptr %33, i32 0, i32 17, !dbg !5127
  call void @___set_bit(i64 noundef 5, ptr noundef %flags20) #17, !dbg !5127
  br label %cond.end21, !dbg !5127

cond.end21:                                       ; preds = %cond.false19, %cond.true17
  %34 = load ptr, ptr %rreq, align 8, !dbg !5128
  %netfs_ops22 = getelementptr inbounds %struct.netfs_io_request, ptr %34, i32 0, i32 18, !dbg !5130
  %35 = load ptr, ptr %netfs_ops22, align 8, !dbg !5130
  %init_request = getelementptr inbounds %struct.netfs_request_ops, ptr %35, i32 0, i32 0, !dbg !5131
  %36 = load ptr, ptr %init_request, align 8, !dbg !5131
  %tobool23 = icmp ne ptr %36, null, !dbg !5128
  br i1 %tobool23, label %if.then24, label %if.end34, !dbg !5132

if.then24:                                        ; preds = %cond.end21
  %37 = load ptr, ptr %rreq, align 8, !dbg !5133
  %netfs_ops25 = getelementptr inbounds %struct.netfs_io_request, ptr %37, i32 0, i32 18, !dbg !5135
  %38 = load ptr, ptr %netfs_ops25, align 8, !dbg !5135
  %init_request26 = getelementptr inbounds %struct.netfs_request_ops, ptr %38, i32 0, i32 0, !dbg !5136
  %39 = load ptr, ptr %init_request26, align 8, !dbg !5136
  %40 = load ptr, ptr %rreq, align 8, !dbg !5137
  %41 = load ptr, ptr %file.addr, align 8, !dbg !5138
  %call27 = call i32 %39(ptr noundef %40, ptr noundef %41) #17, !dbg !5133
  store i32 %call27, ptr %ret, align 4, !dbg !5139
  %42 = load i32, ptr %ret, align 4, !dbg !5140
  %cmp28 = icmp slt i32 %42, 0, !dbg !5142
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !5143

if.then30:                                        ; preds = %if.then24
  %43 = load ptr, ptr %rreq, align 8, !dbg !5144
  call void @kfree(ptr noundef %43) #17, !dbg !5146
  %44 = load i32, ptr %ret, align 4, !dbg !5147
  %conv31 = sext i32 %44 to i64, !dbg !5147
  %call32 = call ptr @ERR_PTR(i64 noundef %conv31) #17, !dbg !5148
  store ptr %call32, ptr %retval, align 8, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5149

if.end33:                                         ; preds = %if.then24
  br label %if.end34, !dbg !5150

if.end34:                                         ; preds = %if.end33, %cond.end21
  br label %do.body, !dbg !5151

do.body:                                          ; preds = %if.end34
  br label %do.cond, !dbg !5152

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5152

do.end:                                           ; preds = %do.cond
  %45 = load ptr, ptr %rreq, align 8, !dbg !5154
  store ptr %45, ptr %retval, align 8, !dbg !5155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5155

cleanup:                                          ; preds = %do.end, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %rreq) #16, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #16, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5156
  %46 = load ptr, ptr %retval, align 8, !dbg !5156
  ret ptr %46, !dbg !5156
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !5157 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5165
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5166
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5166
  ret ptr %1, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @netfs_inode(ptr noundef %inode) #3 align 16 !dbg !5168 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5173, metadata !DIExpression()), !dbg !5176
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5176
  store ptr %0, ptr %__mptr, align 8, !dbg !5176
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5176
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5176
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5177
  %2 = load ptr, ptr %tmp, align 8, !dbg !5176
  ret ptr %2, !dbg !5178
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5179 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5183, metadata !DIExpression()), !dbg !5185
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5184, metadata !DIExpression()), !dbg !5186
  %0 = load i64, ptr %size.addr, align 8, !dbg !5187
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5188
  %or = or i32 %1, 256, !dbg !5189
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5190
  ret ptr %call, !dbg !5191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5192 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5197, metadata !DIExpression()), !dbg !5198
  %0 = load i64, ptr %error.addr, align 8, !dbg !5199
  %1 = inttoptr i64 %0 to ptr, !dbg !5200
  ret ptr %1, !dbg !5201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @i_size_read(ptr noundef %inode) #3 align 16 !dbg !5202 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5208
  %i_size = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, !dbg !5209
  %1 = load i64, ptr %i_size, align 8, !dbg !5209
  ret i64 %1, !dbg !5210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #5 align 16 !dbg !5211 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  br label %do.body, !dbg !5219

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5220

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5222
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5223
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5224
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #17, !dbg !5225
  ret i32 %call, !dbg !5226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5227 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  br label %do.body, !dbg !5234

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5235

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5237

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5235

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5239
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5239
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5239
  store volatile ptr %0, ptr %next, align 8, !dbg !5239
  br label %do.end3, !dbg !5239

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5235

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5241

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5242

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5244

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5242

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5246
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5246
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5246
  store volatile ptr %2, ptr %prev, align 8, !dbg !5246
  br label %do.end9, !dbg !5246

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5242

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #3 align 16 !dbg !5249 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5254, metadata !DIExpression()), !dbg !5256
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5255, metadata !DIExpression()), !dbg !5257
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5258
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !5259
  %1 = load i32, ptr %n.addr, align 4, !dbg !5260
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #17, !dbg !5261
  ret void, !dbg !5262
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5263 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5270, metadata !DIExpression()), !dbg !5274
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5271, metadata !DIExpression()), !dbg !5275
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5276
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5272, metadata !DIExpression()), !dbg !5277
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5278
  %rem = urem i64 %0, 64, !dbg !5278
  %shl = shl i64 1, %rem, !dbg !5278
  store i64 %shl, ptr %mask, align 8, !dbg !5277
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5273, metadata !DIExpression()), !dbg !5280
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5281
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5282
  %div = udiv i64 %2, 64, !dbg !5282
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5283
  store ptr %add.ptr, ptr %p, align 8, !dbg !5280
  %3 = load i64, ptr %mask, align 8, !dbg !5284
  %4 = load ptr, ptr %p, align 8, !dbg !5285
  %5 = load i64, ptr %4, align 8, !dbg !5286
  %or = or i64 %5, %3, !dbg !5286
  store i64 %or, ptr %4, align 8, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5287
  ret void, !dbg !5287
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5288 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5291, metadata !DIExpression()), !dbg !5293
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5292, metadata !DIExpression()), !dbg !5294
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5295
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5296
  %div = udiv i64 %1, 64, !dbg !5296
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5297
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5298
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5299
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5300
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5301
  ret void, !dbg !5302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5303 dso_local void @kfree(ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netfs_get_request(ptr noundef %rreq, i8 noundef signext %what) #0 align 16 !dbg !5306 {
entry:
  %rreq.addr = alloca ptr, align 8
  %what.addr = alloca i8, align 1
  %r = alloca i32, align 4
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5310, metadata !DIExpression()), !dbg !5313
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5312, metadata !DIExpression()), !dbg !5316
  %0 = load ptr, ptr %rreq.addr, align 8, !dbg !5317
  %ref = getelementptr inbounds %struct.netfs_io_request, ptr %0, i32 0, i32 16, !dbg !5318
  call void @__refcount_inc(ptr noundef %ref, ptr noundef %r) #17, !dbg !5319
  %1 = load ptr, ptr %rreq.addr, align 8, !dbg !5320
  %debug_id = getelementptr inbounds %struct.netfs_io_request, ptr %1, i32 0, i32 6, !dbg !5321
  %2 = load i32, ptr %debug_id, align 8, !dbg !5321
  %3 = load i32, ptr %r, align 4, !dbg !5322
  %add = add i32 %3, 1, !dbg !5323
  %4 = load i8, ptr %what.addr, align 1, !dbg !5324
  call void @trace_netfs_rreq_ref(i32 noundef %2, i32 noundef %add, i8 noundef signext %4) #17, !dbg !5325
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5326
  ret void, !dbg !5326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5327 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5331, metadata !DIExpression()), !dbg !5333
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5332, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5335
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5336
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5337
  ret void, !dbg !5338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_netfs_rreq_ref(i32 noundef %rreq_debug_id, i32 noundef %ref, i8 noundef signext %what) #3 align 16 !dbg !4915 {
entry:
  %rreq_debug_id.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %what.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu352 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %rreq_debug_id, ptr %rreq_debug_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rreq_debug_id.addr, metadata !4919, metadata !DIExpression()), !dbg !5339
  store i32 %ref, ptr %ref.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4920, metadata !DIExpression()), !dbg !5339
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !4921, metadata !DIExpression()), !dbg !5339
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_rreq_ref, i32 0, i32 1)) #17, !dbg !5340
  br i1 %call, label %if.then, label %if.end68, !dbg !5339

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5340

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #16, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4922, metadata !DIExpression()), !dbg !5341
  store i32 0, ptr %__idx, align 4, !dbg !5341
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !5342
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4925, metadata !DIExpression()), !dbg !5342
  br label %do.body1, !dbg !5342

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5343
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4928, metadata !DIExpression()), !dbg !5343
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5343
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5342
  br label %do.cond, !dbg !5343

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5343

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4930, metadata !DIExpression()), !dbg !5344
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !5344, !srcloc !5345
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5344
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5344
  %conv = zext i32 %2 to i64, !dbg !5344
  %conv2 = trunc i64 %conv to i32, !dbg !5344
  store i32 %conv2, ptr %tmp, align 4, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !5342
  %3 = load i32, ptr %tmp, align 4, !dbg !5344
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5342
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5342
  store i32 %4, ptr %tmp3, align 4, !dbg !5342
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !5346
  %5 = load i32, ptr %tmp3, align 4, !dbg !5342
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #17, !dbg !5346
  br i1 %call4, label %if.end, label %if.then5, !dbg !5341

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5346

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4932, metadata !DIExpression()), !dbg !5347
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5347
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5348
  %tobool = icmp ne i32 %6, 0, !dbg !5348
  %lnot = xor i1 %tobool, true, !dbg !5348
  %lnot6 = xor i1 %lnot, true, !dbg !5348
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5348
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5348
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5348
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5348
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5347

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5348

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4935, metadata !DIExpression()), !dbg !5349
  store i32 2307, ptr %__flags, align 4, !dbg !5349
  br label %do.body11, !dbg !5349

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5350

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5350

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5349

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5352
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 288, i32 %7, i64 12) #16, !dbg !5352, !srcloc !5354
  br label %do.cond15, !dbg !5352

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5352

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5349

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5355

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5355

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5348
  br label %do.cond20, !dbg !5349

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5349

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5349

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5347
  %tobool24 = icmp ne i32 %8, 0, !dbg !5347
  %lnot25 = xor i1 %tobool24, true, !dbg !5347
  %lnot27 = xor i1 %lnot25, true, !dbg !5347
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5347
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5347
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5347
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5357
  %9 = load i64, ptr %tmp23, align 8, !dbg !5347
  %tobool31 = icmp ne i64 %9, 0, !dbg !5357
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5341

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5357

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5341

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !5358
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5358, !srcloc !5360
  br label %do.cond35, !dbg !5358

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5358

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5341

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #16, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4938, metadata !DIExpression()), !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #16, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4940, metadata !DIExpression()), !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #16, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu352, metadata !4941, metadata !DIExpression()), !dbg !5362
  br label %do.body38, !dbg !5363

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5365

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5365

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_rreq_ref, i32 0, i32 8), align 8, !dbg !5363
  store ptr %10, ptr %tmp41, align 8, !dbg !5365
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5363
  store ptr %11, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !5362
  %12 = load ptr, ptr %__UNIQUE_ID_rcu352, align 8, !dbg !5362
  store ptr %12, ptr %tmp42, align 8, !dbg !5362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu352) #16, !dbg !5361
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5362
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5361
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5367
  %tobool43 = icmp ne ptr %14, null, !dbg !5367
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5361

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5369
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5369
  %16 = load ptr, ptr %data, align 8, !dbg !5369
  store ptr %16, ptr %__data, align 8, !dbg !5369
  store ptr @__SCT__tp_func_netfs_rreq_ref, ptr %tmp45, align 8, !dbg !5371
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5371
  %18 = load ptr, ptr %__data, align 8, !dbg !5369
  %19 = load i32, ptr %rreq_debug_id.addr, align 4, !dbg !5369
  %20 = load i32, ptr %ref.addr, align 4, !dbg !5369
  %21 = load i8, ptr %what.addr, align 1, !dbg !5369
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i32 noundef %20, i8 noundef signext %21) #17, !dbg !5369
  br label %if.end47, !dbg !5369

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #16, !dbg !5341
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #16, !dbg !5341
  br label %do.cond48, !dbg !5361

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5361

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5341

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5373, !srcloc !5375
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !5376
  %lnot52 = xor i1 %call51, true, !dbg !5376
  %lnot54 = xor i1 %lnot52, true, !dbg !5376
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5376
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5376
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5376
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5376
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5373

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5376

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !5050), !dbg !5378
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #16, !dbg !5378, !srcloc !5380
  call void @llvm.write_register.i64(metadata !5050, i64 %23), !dbg !5378
  br label %do.cond61, !dbg !5378

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5378

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5378

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5373

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5373

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5340
  br label %cleanup, !dbg !5340

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #16, !dbg !5340
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5341

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5341

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5339

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netfs_clear_subrequests(ptr noundef %rreq, i1 noundef zeroext %was_async) #0 align 16 !dbg !5381 {
entry:
  %rreq.addr = alloca ptr, align 8
  %was_async.addr = alloca i8, align 1
  %subreq = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5385, metadata !DIExpression()), !dbg !5391
  %frombool = zext i1 %was_async to i8
  store i8 %frombool, ptr %was_async.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %was_async.addr, metadata !5386, metadata !DIExpression()), !dbg !5392
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #16, !dbg !5393
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !5387, metadata !DIExpression()), !dbg !5394
  br label %while.cond, !dbg !5395

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %rreq.addr, align 8, !dbg !5396
  %subrequests = getelementptr inbounds %struct.netfs_io_request, ptr %0, i32 0, i32 4, !dbg !5397
  %call = call i32 @list_empty(ptr noundef %subrequests) #17, !dbg !5398
  %tobool = icmp ne i32 %call, 0, !dbg !5399
  %lnot = xor i1 %tobool, true, !dbg !5399
  br i1 %lnot, label %while.body, label %while.end, !dbg !5395

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5388, metadata !DIExpression()), !dbg !5400
  %1 = load ptr, ptr %rreq.addr, align 8, !dbg !5400
  %subrequests1 = getelementptr inbounds %struct.netfs_io_request, ptr %1, i32 0, i32 4, !dbg !5400
  %next = getelementptr inbounds %struct.list_head, ptr %subrequests1, i32 0, i32 0, !dbg !5400
  %2 = load ptr, ptr %next, align 8, !dbg !5400
  store ptr %2, ptr %__mptr, align 8, !dbg !5400
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5400
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !5400
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5401
  %4 = load ptr, ptr %tmp, align 8, !dbg !5400
  store ptr %4, ptr %subreq, align 8, !dbg !5402
  %5 = load ptr, ptr %subreq, align 8, !dbg !5403
  %rreq_link = getelementptr inbounds %struct.netfs_io_subrequest, ptr %5, i32 0, i32 1, !dbg !5404
  call void @list_del(ptr noundef %rreq_link) #17, !dbg !5405
  %6 = load ptr, ptr %subreq, align 8, !dbg !5406
  %7 = load i8, ptr %was_async.addr, align 1, !dbg !5407, !range !5408, !noundef !639
  %tobool2 = trunc i8 %7 to i1, !dbg !5407
  call void @netfs_put_subrequest(ptr noundef %6, i1 noundef zeroext %tobool2, i8 noundef signext 4) #17, !dbg !5409
  br label %while.cond, !dbg !5395, !llvm.loop !5410

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #16, !dbg !5414
  ret void, !dbg !5414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5415 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  br label %do.body, !dbg !5423

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5425

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5423
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5423
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5423
  store ptr %1, ptr %tmp, align 8, !dbg !5425
  %2 = load ptr, ptr %tmp, align 8, !dbg !5423
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5427
  %cmp = icmp eq ptr %2, %3, !dbg !5428
  %conv = zext i1 %cmp to i32, !dbg !5428
  ret i32 %conv, !dbg !5429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5430 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5434
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5435
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5436
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5437
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5438
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5439
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5440
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5441
  ret void, !dbg !5442
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netfs_put_subrequest(ptr noundef %subreq, i1 noundef zeroext %was_async, i8 noundef signext %what) #0 align 16 !dbg !5443 {
entry:
  %subreq.addr = alloca ptr, align 8
  %was_async.addr = alloca i8, align 1
  %what.addr = alloca i8, align 1
  %debug_index = alloca i32, align 4
  %debug_id = alloca i32, align 4
  %dead = alloca i8, align 1
  %r = alloca i32, align 4
  store ptr %subreq, ptr %subreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subreq.addr, metadata !5447, metadata !DIExpression()), !dbg !5454
  %frombool = zext i1 %was_async to i8
  store i8 %frombool, ptr %was_async.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %was_async.addr, metadata !5448, metadata !DIExpression()), !dbg !5455
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !5449, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 4, ptr %debug_index) #16, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %debug_index, metadata !5450, metadata !DIExpression()), !dbg !5458
  %0 = load ptr, ptr %subreq.addr, align 8, !dbg !5459
  %debug_index1 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %0, i32 0, i32 7, !dbg !5460
  %1 = load i16, ptr %debug_index1, align 2, !dbg !5460
  %conv = zext i16 %1 to i32, !dbg !5459
  store i32 %conv, ptr %debug_index, align 4, !dbg !5458
  call void @llvm.lifetime.start.p0(i64 4, ptr %debug_id) #16, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %debug_id, metadata !5451, metadata !DIExpression()), !dbg !5462
  %2 = load ptr, ptr %subreq.addr, align 8, !dbg !5463
  %rreq = getelementptr inbounds %struct.netfs_io_subrequest, ptr %2, i32 0, i32 0, !dbg !5464
  %3 = load ptr, ptr %rreq, align 8, !dbg !5464
  %debug_id2 = getelementptr inbounds %struct.netfs_io_request, ptr %3, i32 0, i32 6, !dbg !5465
  %4 = load i32, ptr %debug_id2, align 8, !dbg !5465
  store i32 %4, ptr %debug_id, align 4, !dbg !5462
  call void @llvm.lifetime.start.p0(i64 1, ptr %dead) #16, !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %dead, metadata !5452, metadata !DIExpression()), !dbg !5467
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5468
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5453, metadata !DIExpression()), !dbg !5469
  %5 = load ptr, ptr %subreq.addr, align 8, !dbg !5470
  %ref = getelementptr inbounds %struct.netfs_io_subrequest, ptr %5, i32 0, i32 5, !dbg !5471
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %ref, ptr noundef %r) #17, !dbg !5472
  %frombool3 = zext i1 %call to i8, !dbg !5473
  store i8 %frombool3, ptr %dead, align 1, !dbg !5473
  %6 = load i32, ptr %debug_id, align 4, !dbg !5474
  %7 = load i32, ptr %debug_index, align 4, !dbg !5475
  %8 = load i32, ptr %r, align 4, !dbg !5476
  %sub = sub i32 %8, 1, !dbg !5477
  %9 = load i8, ptr %what.addr, align 1, !dbg !5478
  call void @trace_netfs_sreq_ref(i32 noundef %6, i32 noundef %7, i32 noundef %sub, i8 noundef signext %9) #17, !dbg !5479
  %10 = load i8, ptr %dead, align 1, !dbg !5480, !range !5408, !noundef !639
  %tobool = trunc i8 %10 to i1, !dbg !5480
  br i1 %tobool, label %if.then, label %if.end, !dbg !5482

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %subreq.addr, align 8, !dbg !5483
  %12 = load i8, ptr %was_async.addr, align 1, !dbg !5484, !range !5408, !noundef !639
  %tobool4 = trunc i8 %12 to i1, !dbg !5484
  call void @netfs_free_subrequest(ptr noundef %11, i1 noundef zeroext %tobool4) #17, !dbg !5485
  br label %if.end, !dbg !5485

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5486
  call void @llvm.lifetime.end.p0(i64 1, ptr %dead) #16, !dbg !5486
  call void @llvm.lifetime.end.p0(i64 4, ptr %debug_id) #16, !dbg !5486
  call void @llvm.lifetime.end.p0(i64 4, ptr %debug_index) #16, !dbg !5486
  ret void, !dbg !5486
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netfs_put_request(ptr noundef %rreq, i1 noundef zeroext %was_async, i8 noundef signext %what) #0 align 16 !dbg !5487 {
entry:
  %rreq.addr = alloca ptr, align 8
  %was_async.addr = alloca i8, align 1
  %what.addr = alloca i8, align 1
  %debug_id = alloca i32, align 4
  %dead = alloca i8, align 1
  %r = alloca i32, align 4
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5491, metadata !DIExpression()), !dbg !5497
  %frombool = zext i1 %was_async to i8
  store i8 %frombool, ptr %was_async.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %was_async.addr, metadata !5492, metadata !DIExpression()), !dbg !5498
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !5493, metadata !DIExpression()), !dbg !5499
  call void @llvm.lifetime.start.p0(i64 4, ptr %debug_id) #16, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %debug_id, metadata !5494, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %rreq.addr, align 8, !dbg !5502
  %debug_id1 = getelementptr inbounds %struct.netfs_io_request, ptr %0, i32 0, i32 6, !dbg !5503
  %1 = load i32, ptr %debug_id1, align 8, !dbg !5503
  store i32 %1, ptr %debug_id, align 4, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 1, ptr %dead) #16, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %dead, metadata !5495, metadata !DIExpression()), !dbg !5505
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5496, metadata !DIExpression()), !dbg !5507
  %2 = load ptr, ptr %rreq.addr, align 8, !dbg !5508
  %ref = getelementptr inbounds %struct.netfs_io_request, ptr %2, i32 0, i32 16, !dbg !5509
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %ref, ptr noundef %r) #17, !dbg !5510
  %frombool2 = zext i1 %call to i8, !dbg !5511
  store i8 %frombool2, ptr %dead, align 1, !dbg !5511
  %3 = load i32, ptr %debug_id, align 4, !dbg !5512
  %4 = load i32, ptr %r, align 4, !dbg !5513
  %sub = sub i32 %4, 1, !dbg !5514
  %5 = load i8, ptr %what.addr, align 1, !dbg !5515
  call void @trace_netfs_rreq_ref(i32 noundef %3, i32 noundef %sub, i8 noundef signext %5) #17, !dbg !5516
  %6 = load i8, ptr %dead, align 1, !dbg !5517, !range !5408, !noundef !639
  %tobool = trunc i8 %6 to i1, !dbg !5517
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5519

if.then:                                          ; preds = %entry
  %7 = load i8, ptr %was_async.addr, align 1, !dbg !5520, !range !5408, !noundef !639
  %tobool3 = trunc i8 %7 to i1, !dbg !5520
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5523

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %rreq.addr, align 8, !dbg !5524
  %work = getelementptr inbounds %struct.netfs_io_request, ptr %8, i32 0, i32 0, !dbg !5526
  %func = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 2, !dbg !5527
  store ptr @netfs_free_request, ptr %func, align 8, !dbg !5528
  %9 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5529
  %10 = load ptr, ptr %rreq.addr, align 8, !dbg !5531
  %work5 = getelementptr inbounds %struct.netfs_io_request, ptr %10, i32 0, i32 0, !dbg !5532
  %call6 = call zeroext i1 @queue_work(ptr noundef %9, ptr noundef %work5) #17, !dbg !5533
  br i1 %call6, label %if.end, label %if.then7, !dbg !5534

if.then7:                                         ; preds = %if.then4
  br label %do.body, !dbg !5535

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !5536

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5538

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5538

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5536

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 101, i32 0, i64 12) #16, !dbg !5540, !srcloc !5542
  br label %do.cond10, !dbg !5540

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5540

do.end11:                                         ; preds = %do.cond10
  unreachable, !dbg !5536

do.cond12:                                        ; No predecessors!
  br label %do.end13, !dbg !5536

do.end13:                                         ; preds = %do.cond12
  br label %if.end, !dbg !5536

if.end:                                           ; preds = %do.end13, %if.then4
  br label %if.end15, !dbg !5543

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %rreq.addr, align 8, !dbg !5544
  %work14 = getelementptr inbounds %struct.netfs_io_request, ptr %11, i32 0, i32 0, !dbg !5546
  call void @netfs_free_request(ptr noundef %work14) #17, !dbg !5547
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end
  br label %if.end16, !dbg !5548

if.end16:                                         ; preds = %if.end15, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 1, ptr %dead) #16, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 4, ptr %debug_id) #16, !dbg !5549
  ret void, !dbg !5549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5550 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5554, metadata !DIExpression()), !dbg !5556
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5555, metadata !DIExpression()), !dbg !5557
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5558
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5559
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !5560
  ret i1 %call, !dbg !5561
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netfs_free_request(ptr noundef %work) #0 align 16 !dbg !5562 {
entry:
  %work.addr = alloca ptr, align 8
  %rreq = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5564, metadata !DIExpression()), !dbg !5568
  call void @llvm.lifetime.start.p0(i64 8, ptr %rreq) #16, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %rreq, metadata !5565, metadata !DIExpression()), !dbg !5570
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5571
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5566, metadata !DIExpression()), !dbg !5571
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5571
  store ptr %0, ptr %__mptr, align 8, !dbg !5571
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5571
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5571
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5572
  %2 = load ptr, ptr %tmp, align 8, !dbg !5571
  store ptr %2, ptr %rreq, align 8, !dbg !5570
  %3 = load ptr, ptr %rreq, align 8, !dbg !5573
  call void @trace_netfs_rreq(ptr noundef %3, i8 noundef signext 3) #17, !dbg !5574
  %4 = load ptr, ptr %rreq, align 8, !dbg !5575
  call void @netfs_clear_subrequests(ptr noundef %4, i1 noundef zeroext false) #17, !dbg !5576
  %5 = load ptr, ptr %rreq, align 8, !dbg !5577
  %netfs_ops = getelementptr inbounds %struct.netfs_io_request, ptr %5, i32 0, i32 18, !dbg !5579
  %6 = load ptr, ptr %netfs_ops, align 8, !dbg !5579
  %free_request = getelementptr inbounds %struct.netfs_request_ops, ptr %6, i32 0, i32 1, !dbg !5580
  %7 = load ptr, ptr %free_request, align 8, !dbg !5580
  %tobool = icmp ne ptr %7, null, !dbg !5577
  br i1 %tobool, label %if.then, label %if.end, !dbg !5581

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %rreq, align 8, !dbg !5582
  %netfs_ops1 = getelementptr inbounds %struct.netfs_io_request, ptr %8, i32 0, i32 18, !dbg !5583
  %9 = load ptr, ptr %netfs_ops1, align 8, !dbg !5583
  %free_request2 = getelementptr inbounds %struct.netfs_request_ops, ptr %9, i32 0, i32 1, !dbg !5584
  %10 = load ptr, ptr %free_request2, align 8, !dbg !5584
  %11 = load ptr, ptr %rreq, align 8, !dbg !5585
  call void %10(ptr noundef %11) #17, !dbg !5582
  br label %if.end, !dbg !5582

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %rreq, align 8, !dbg !5586
  %cache_resources = getelementptr inbounds %struct.netfs_io_request, ptr %12, i32 0, i32 3, !dbg !5588
  %ops = getelementptr inbounds %struct.netfs_cache_resources, ptr %cache_resources, i32 0, i32 0, !dbg !5589
  %13 = load ptr, ptr %ops, align 8, !dbg !5589
  %tobool3 = icmp ne ptr %13, null, !dbg !5586
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5590

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %rreq, align 8, !dbg !5591
  %cache_resources5 = getelementptr inbounds %struct.netfs_io_request, ptr %14, i32 0, i32 3, !dbg !5592
  %ops6 = getelementptr inbounds %struct.netfs_cache_resources, ptr %cache_resources5, i32 0, i32 0, !dbg !5593
  %15 = load ptr, ptr %ops6, align 8, !dbg !5593
  %end_operation = getelementptr inbounds %struct.netfs_cache_ops, ptr %15, i32 0, i32 0, !dbg !5594
  %16 = load ptr, ptr %end_operation, align 8, !dbg !5594
  %17 = load ptr, ptr %rreq, align 8, !dbg !5595
  %cache_resources7 = getelementptr inbounds %struct.netfs_io_request, ptr %17, i32 0, i32 3, !dbg !5596
  call void %16(ptr noundef %cache_resources7) #17, !dbg !5591
  br label %if.end8, !dbg !5591

if.end8:                                          ; preds = %if.then4, %if.end
  %18 = load ptr, ptr %rreq, align 8, !dbg !5597
  call void @kfree(ptr noundef %18) #17, !dbg !5598
  br label %do.body, !dbg !5599

do.body:                                          ; preds = %if.end8
  br label %do.cond, !dbg !5600

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5600

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %rreq) #16, !dbg !5602
  ret void, !dbg !5602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !5603 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5607, metadata !DIExpression()), !dbg !5609
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5608, metadata !DIExpression()), !dbg !5610
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5611
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5612
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #17, !dbg !5613
  ret i1 %call, !dbg !5614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netfs_alloc_subrequest(ptr noundef %rreq) #0 align 16 !dbg !5615 {
entry:
  %rreq.addr = alloca ptr, align 8
  %subreq = alloca ptr, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !5619, metadata !DIExpression()), !dbg !5621
  call void @llvm.lifetime.start.p0(i64 8, ptr %subreq) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %subreq, metadata !5620, metadata !DIExpression()), !dbg !5623
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !5624
  store ptr %call, ptr %subreq, align 8, !dbg !5625
  %0 = load ptr, ptr %subreq, align 8, !dbg !5626
  %tobool = icmp ne ptr %0, null, !dbg !5626
  br i1 %tobool, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %subreq, align 8, !dbg !5629
  %rreq_link = getelementptr inbounds %struct.netfs_io_subrequest, ptr %1, i32 0, i32 1, !dbg !5631
  call void @INIT_LIST_HEAD(ptr noundef %rreq_link) #17, !dbg !5632
  %2 = load ptr, ptr %subreq, align 8, !dbg !5633
  %ref = getelementptr inbounds %struct.netfs_io_subrequest, ptr %2, i32 0, i32 5, !dbg !5634
  call void @refcount_set(ptr noundef %ref, i32 noundef 2) #17, !dbg !5635
  %3 = load ptr, ptr %rreq.addr, align 8, !dbg !5636
  %4 = load ptr, ptr %subreq, align 8, !dbg !5637
  %rreq1 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %4, i32 0, i32 0, !dbg !5638
  store ptr %3, ptr %rreq1, align 8, !dbg !5639
  %5 = load ptr, ptr %rreq.addr, align 8, !dbg !5640
  call void @netfs_get_request(ptr noundef %5, i8 noundef signext 1) #17, !dbg !5641
  br label %do.body, !dbg !5642

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5643

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5643

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !5645

if.end:                                           ; preds = %do.end, %entry
  %6 = load ptr, ptr %subreq, align 8, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %subreq) #16, !dbg !5647
  ret ptr %6, !dbg !5648
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netfs_get_subrequest(ptr noundef %subreq, i8 noundef signext %what) #0 align 16 !dbg !5649 {
entry:
  %subreq.addr = alloca ptr, align 8
  %what.addr = alloca i8, align 1
  %r = alloca i32, align 4
  store ptr %subreq, ptr %subreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subreq.addr, metadata !5653, metadata !DIExpression()), !dbg !5656
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !5654, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #16, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5655, metadata !DIExpression()), !dbg !5659
  %0 = load ptr, ptr %subreq.addr, align 8, !dbg !5660
  %ref = getelementptr inbounds %struct.netfs_io_subrequest, ptr %0, i32 0, i32 5, !dbg !5661
  call void @__refcount_inc(ptr noundef %ref, ptr noundef %r) #17, !dbg !5662
  %1 = load ptr, ptr %subreq.addr, align 8, !dbg !5663
  %rreq = getelementptr inbounds %struct.netfs_io_subrequest, ptr %1, i32 0, i32 0, !dbg !5664
  %2 = load ptr, ptr %rreq, align 8, !dbg !5664
  %debug_id = getelementptr inbounds %struct.netfs_io_request, ptr %2, i32 0, i32 6, !dbg !5665
  %3 = load i32, ptr %debug_id, align 8, !dbg !5665
  %4 = load ptr, ptr %subreq.addr, align 8, !dbg !5666
  %debug_index = getelementptr inbounds %struct.netfs_io_subrequest, ptr %4, i32 0, i32 7, !dbg !5667
  %5 = load i16, ptr %debug_index, align 2, !dbg !5667
  %conv = zext i16 %5 to i32, !dbg !5666
  %6 = load i32, ptr %r, align 4, !dbg !5668
  %add = add i32 %6, 1, !dbg !5669
  %7 = load i8, ptr %what.addr, align 1, !dbg !5670
  call void @trace_netfs_sreq_ref(i32 noundef %3, i32 noundef %conv, i32 noundef %add, i8 noundef signext %7) #17, !dbg !5671
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #16, !dbg !5672
  ret void, !dbg !5672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_netfs_sreq_ref(i32 noundef %rreq_debug_id, i32 noundef %subreq_debug_index, i32 noundef %ref, i8 noundef signext %what) #3 align 16 !dbg !4978 {
entry:
  %rreq_debug_id.addr = alloca i32, align 4
  %subreq_debug_index.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %what.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu360 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %rreq_debug_id, ptr %rreq_debug_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rreq_debug_id.addr, metadata !4982, metadata !DIExpression()), !dbg !5673
  store i32 %subreq_debug_index, ptr %subreq_debug_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subreq_debug_index.addr, metadata !4983, metadata !DIExpression()), !dbg !5673
  store i32 %ref, ptr %ref.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4984, metadata !DIExpression()), !dbg !5673
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !4985, metadata !DIExpression()), !dbg !5673
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_sreq_ref, i32 0, i32 1)) #17, !dbg !5674
  br i1 %call, label %if.then, label %if.end68, !dbg !5673

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5674

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #16, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4986, metadata !DIExpression()), !dbg !5675
  store i32 0, ptr %__idx, align 4, !dbg !5675
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4989, metadata !DIExpression()), !dbg !5676
  br label %do.body1, !dbg !5676

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5677
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4992, metadata !DIExpression()), !dbg !5677
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5677
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5677
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5676
  br label %do.cond, !dbg !5677

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5677

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4994, metadata !DIExpression()), !dbg !5678
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !5678, !srcloc !5679
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5678
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5678
  %conv = zext i32 %2 to i64, !dbg !5678
  %conv2 = trunc i64 %conv to i32, !dbg !5678
  store i32 %conv2, ptr %tmp, align 4, !dbg !5678
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !5676
  %3 = load i32, ptr %tmp, align 4, !dbg !5678
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5676
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5676
  store i32 %4, ptr %tmp3, align 4, !dbg !5676
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !5680
  %5 = load i32, ptr %tmp3, align 4, !dbg !5676
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #17, !dbg !5680
  br i1 %call4, label %if.end, label %if.then5, !dbg !5675

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5680

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4996, metadata !DIExpression()), !dbg !5681
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5681
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5682
  %tobool = icmp ne i32 %6, 0, !dbg !5682
  %lnot = xor i1 %tobool, true, !dbg !5682
  %lnot6 = xor i1 %lnot, true, !dbg !5682
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5682
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5682
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5682
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5682
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5681

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5682

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5683
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4999, metadata !DIExpression()), !dbg !5683
  store i32 2307, ptr %__flags, align 4, !dbg !5683
  br label %do.body11, !dbg !5683

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5684

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5684

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5683

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5686
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 315, i32 %7, i64 12) #16, !dbg !5686, !srcloc !5688
  br label %do.cond15, !dbg !5686

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5686

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5683

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5689

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5689

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5682
  br label %do.cond20, !dbg !5683

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5683

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5683

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5681
  %tobool24 = icmp ne i32 %8, 0, !dbg !5681
  %lnot25 = xor i1 %tobool24, true, !dbg !5681
  %lnot27 = xor i1 %lnot25, true, !dbg !5681
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5681
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5681
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5681
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5691
  %9 = load i64, ptr %tmp23, align 8, !dbg !5681
  %tobool31 = icmp ne i64 %9, 0, !dbg !5691
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5675

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5691

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5675

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !5692
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5692, !srcloc !5694
  br label %do.cond35, !dbg !5692

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5692

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5675

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #16, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5002, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #16, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5004, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu360) #16, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu360, metadata !5005, metadata !DIExpression()), !dbg !5696
  br label %do.body38, !dbg !5697

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5699

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5699

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_sreq_ref, i32 0, i32 8), align 8, !dbg !5697
  store ptr %10, ptr %tmp41, align 8, !dbg !5699
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5697
  store ptr %11, ptr %__UNIQUE_ID_rcu360, align 8, !dbg !5696
  %12 = load ptr, ptr %__UNIQUE_ID_rcu360, align 8, !dbg !5696
  store ptr %12, ptr %tmp42, align 8, !dbg !5696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu360) #16, !dbg !5695
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5696
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5695
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5701
  %tobool43 = icmp ne ptr %14, null, !dbg !5701
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5695

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5703
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5703
  %16 = load ptr, ptr %data, align 8, !dbg !5703
  store ptr %16, ptr %__data, align 8, !dbg !5703
  store ptr @__SCT__tp_func_netfs_sreq_ref, ptr %tmp45, align 8, !dbg !5705
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5705
  %18 = load ptr, ptr %__data, align 8, !dbg !5703
  %19 = load i32, ptr %rreq_debug_id.addr, align 4, !dbg !5703
  %20 = load i32, ptr %subreq_debug_index.addr, align 4, !dbg !5703
  %21 = load i32, ptr %ref.addr, align 4, !dbg !5703
  %22 = load i8, ptr %what.addr, align 1, !dbg !5703
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i8 noundef signext %22) #17, !dbg !5703
  br label %if.end47, !dbg !5703

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #16, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #16, !dbg !5675
  br label %do.cond48, !dbg !5695

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5695

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5675

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5707, !srcloc !5709
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !5710
  %lnot52 = xor i1 %call51, true, !dbg !5710
  %lnot54 = xor i1 %lnot52, true, !dbg !5710
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5710
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5710
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5710
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5710
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5707

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5710

do.body60:                                        ; preds = %if.then59
  %23 = call i64 @llvm.read_register.i64(metadata !5050), !dbg !5712
  %24 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %23) #16, !dbg !5712, !srcloc !5714
  call void @llvm.write_register.i64(metadata !5050, i64 %24), !dbg !5712
  br label %do.cond61, !dbg !5712

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5712

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5712

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5707

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5707

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5674
  br label %cleanup, !dbg !5674

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #16, !dbg !5674
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5675

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5675

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5673

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netfs_free_subrequest(ptr noundef %subreq, i1 noundef zeroext %was_async) #0 align 16 !dbg !5715 {
entry:
  %subreq.addr = alloca ptr, align 8
  %was_async.addr = alloca i8, align 1
  %rreq = alloca ptr, align 8
  store ptr %subreq, ptr %subreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subreq.addr, metadata !5719, metadata !DIExpression()), !dbg !5722
  %frombool = zext i1 %was_async to i8
  store i8 %frombool, ptr %was_async.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %was_async.addr, metadata !5720, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 8, ptr %rreq) #16, !dbg !5724
  call void @llvm.dbg.declare(metadata ptr %rreq, metadata !5721, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %subreq.addr, align 8, !dbg !5726
  %rreq1 = getelementptr inbounds %struct.netfs_io_subrequest, ptr %0, i32 0, i32 0, !dbg !5727
  %1 = load ptr, ptr %rreq1, align 8, !dbg !5727
  store ptr %1, ptr %rreq, align 8, !dbg !5725
  %2 = load ptr, ptr %subreq.addr, align 8, !dbg !5728
  call void @trace_netfs_sreq(ptr noundef %2, i8 noundef signext 1) #17, !dbg !5729
  %3 = load ptr, ptr %subreq.addr, align 8, !dbg !5730
  call void @kfree(ptr noundef %3) #17, !dbg !5731
  br label %do.body, !dbg !5732

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5733

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5733

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %rreq, align 8, !dbg !5735
  %5 = load i8, ptr %was_async.addr, align 1, !dbg !5736, !range !5408, !noundef !639
  %tobool = trunc i8 %5 to i1, !dbg !5736
  call void @netfs_put_request(ptr noundef %4, i1 noundef zeroext %tobool, i8 noundef signext 6) #17, !dbg !5737
  call void @llvm.lifetime.end.p0(i64 8, ptr %rreq) #16, !dbg !5738
  ret void, !dbg !5738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5739 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5741, metadata !DIExpression()), !dbg !5746
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5742, metadata !DIExpression()), !dbg !5747
  %0 = load i64, ptr %size.addr, align 8, !dbg !5748
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5749
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5750

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5751
  %tobool = icmp ne i64 %2, 0, !dbg !5751
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5752

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5743, metadata !DIExpression()), !dbg !5754
  %3 = load i64, ptr %size.addr, align 8, !dbg !5755
  %cmp = icmp ugt i64 %3, 8192, !dbg !5757
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5758

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5759
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5760
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5761
  store ptr %call, ptr %retval, align 8, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5762

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5763
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5763
  store i32 %call2, ptr %index, align 4, !dbg !5764
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5765
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5766
  %9 = ptrtoint ptr %8 to i64, !dbg !5766
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5767
  %idxprom = zext i32 %call3 to i64, !dbg !5768
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5768
  %10 = load i32, ptr %index, align 4, !dbg !5769
  %idxprom4 = zext i32 %10 to i64, !dbg !5768
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5768
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5768
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5770
  %13 = load i64, ptr %size.addr, align 8, !dbg !5771
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5772
  store ptr %call6, ptr %retval, align 8, !dbg !5773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5773

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5774
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5775
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5776
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5777
  store ptr %call8, ptr %retval, align 8, !dbg !5778
  br label %return, !dbg !5778

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5779
  ret ptr %16, !dbg !5779
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5780 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5781 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5785, metadata !DIExpression()), !dbg !5787
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5786, metadata !DIExpression()), !dbg !5788
  %0 = load i64, ptr %size.addr, align 8, !dbg !5789
  %tobool = icmp ne i64 %0, 0, !dbg !5789
  br i1 %tobool, label %if.end, label %if.then, !dbg !5791

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5793
  %cmp = icmp ule i64 %1, 8, !dbg !5795
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5796

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5798
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5800
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5801

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5802
  %cmp4 = icmp ule i64 %3, 96, !dbg !5803
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5804

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5805
  br label %return, !dbg !5805

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5806
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5808
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5809

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5810
  %cmp9 = icmp ule i64 %5, 192, !dbg !5811
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5812

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5814
  %cmp12 = icmp ule i64 %6, 8, !dbg !5816
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5817

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5819
  %cmp15 = icmp ule i64 %7, 16, !dbg !5821
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5822

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5823
  br label %return, !dbg !5823

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5824
  %cmp18 = icmp ule i64 %8, 32, !dbg !5826
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5827

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5828
  br label %return, !dbg !5828

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5829
  %cmp21 = icmp ule i64 %9, 64, !dbg !5831
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5832

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5833
  br label %return, !dbg !5833

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5834
  %cmp24 = icmp ule i64 %10, 128, !dbg !5836
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5837

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5838
  br label %return, !dbg !5838

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5839
  %cmp27 = icmp ule i64 %11, 256, !dbg !5841
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5842

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5843
  br label %return, !dbg !5843

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5844
  %cmp30 = icmp ule i64 %12, 512, !dbg !5846
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5847

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5849
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5851
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5852

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5854
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5856
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5857

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5858
  br label %return, !dbg !5858

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5859
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5861
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5862

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5863
  br label %return, !dbg !5863

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5864
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5866
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5867

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5868
  br label %return, !dbg !5868

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5869
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5871
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5872

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5874
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5876
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5877

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5878
  br label %return, !dbg !5878

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5879
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5881
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5882

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5883
  br label %return, !dbg !5883

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5884
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5886
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5887

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5889
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5891
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5892

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5894
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5896
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5897

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5899
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5901
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5902

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5903
  br label %return, !dbg !5903

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5904
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5906
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5907

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5909, !range !5408, !noundef !639
  %tobool69 = trunc i8 %25 to i1, !dbg !5909
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5911

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5912

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !5913, !srcloc !5916
  unreachable, !dbg !5913

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5917

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5918

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5919

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5921

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5919

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !5923, !srcloc !5925
  br label %do.end75, !dbg !5923

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5919

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5926
  br label %return, !dbg !5926

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5927
  ret i32 %26, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5928 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5933 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5937, metadata !DIExpression()), !dbg !5939
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5938, metadata !DIExpression()), !dbg !5940
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5941
  %and = and i32 %0, 17, !dbg !5941
  %cmp = icmp eq i32 %and, 0, !dbg !5941
  %lnot = xor i1 %cmp, true, !dbg !5941
  %lnot1 = xor i1 %lnot, true, !dbg !5941
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5941
  %conv = sext i32 %lnot.ext to i64, !dbg !5941
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5941
  %tobool = icmp ne i64 %expval, 0, !dbg !5941
  br i1 %tobool, label %if.then, label %if.end, !dbg !5943

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5944
  br label %return, !dbg !5944

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5945
  %and2 = and i32 %1, 1, !dbg !5947
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5947
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5948

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5949
  br label %return, !dbg !5949

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5950
  br label %return, !dbg !5950

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5952
  ret i32 %2, !dbg !5952
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5953 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5954 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5955 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5963, metadata !DIExpression()), !dbg !5965
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5964, metadata !DIExpression()), !dbg !5966
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5967
  %1 = load i64, ptr %size.addr, align 8, !dbg !5968
  %conv = trunc i64 %1 to i32, !dbg !5968
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5969
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5970
  %3 = load i64, ptr %size.addr, align 8, !dbg !5970
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5970
  ret void, !dbg !5971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #5 align 16 !dbg !5972 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5977
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #17, !dbg !5978
  ret i32 %call, !dbg !5979
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5980 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5985, metadata !DIExpression()), !dbg !5987
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5986, metadata !DIExpression()), !dbg !5988
  ret i1 true, !dbg !5989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5990 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5995, metadata !DIExpression()), !dbg !5998
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5996, metadata !DIExpression()), !dbg !5999
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  ret void, !dbg !6001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6002 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6006, metadata !DIExpression()), !dbg !6008
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6007, metadata !DIExpression()), !dbg !6009
  %0 = load i32, ptr %i.addr, align 4, !dbg !6010
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6011
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #17, !dbg !6012
  ret i32 %call, !dbg !6013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6014 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6017, metadata !DIExpression()), !dbg !6021
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6018, metadata !DIExpression()), !dbg !6022
  %0 = load i32, ptr %i.addr, align 4, !dbg !6023
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6024
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6019, metadata !DIExpression()), !dbg !6024
  %1 = load i32, ptr %i.addr, align 4, !dbg !6024
  store i32 %1, ptr %__ret, align 4, !dbg !6024
  %2 = load i32, ptr %__ret, align 4, !dbg !6024
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6024
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6024
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #16, !dbg !6024, !srcloc !6025
  store i32 %4, ptr %__ret, align 4, !dbg !6024
  %5 = load i32, ptr %__ret, align 4, !dbg !6024
  store i32 %5, ptr %tmp, align 4, !dbg !6024
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6026
  %6 = load i32, ptr %tmp, align 4, !dbg !6024
  %add = add i32 %0, %6, !dbg !6027
  ret i32 %add, !dbg !6028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6029 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6037
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6038
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6039
  %2 = load i32, ptr %i.addr, align 4, !dbg !6040
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6043 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6045, metadata !DIExpression()), !dbg !6047
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6046, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6049
  %1 = load i64, ptr %size.addr, align 8, !dbg !6050
  %conv = trunc i64 %1 to i32, !dbg !6050
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6051
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6052
  %3 = load i64, ptr %size.addr, align 8, !dbg !6052
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6052
  ret void, !dbg !6053
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6054 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6060
  %1 = load i32, ptr %i.addr, align 4, !dbg !6061
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !6062
  ret void, !dbg !6063
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !6064 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6066, metadata !DIExpression()), !dbg !6068
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  br label %do.body, !dbg !6070

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6071
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6071
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6071
  store volatile i32 %0, ptr %counter, align 4, !dbg !6071
  br label %do.end, !dbg !6071

do.end:                                           ; preds = %do.body
  ret void, !dbg !6073
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6074 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6076, metadata !DIExpression()), !dbg !6078
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6080
  %1 = load i64, ptr %size.addr, align 8, !dbg !6081
  %conv = trunc i64 %1 to i32, !dbg !6081
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6082
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6083
  %3 = load i64, ptr %size.addr, align 8, !dbg !6083
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !6083
  ret void, !dbg !6084
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6085 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6088, metadata !DIExpression()), !dbg !6090
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6089, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6092
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6093
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6094, !srcloc !6095
  ret void, !dbg !6096
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6097 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6101, metadata !DIExpression()), !dbg !6105
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6102, metadata !DIExpression()), !dbg !6106
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6103, metadata !DIExpression()), !dbg !6107
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6104, metadata !DIExpression()), !dbg !6109
  %0 = load i32, ptr %i.addr, align 4, !dbg !6110
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6111
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6112
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !6113
  store i32 %call, ptr %old, align 4, !dbg !6109
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6114
  %tobool = icmp ne ptr %2, null, !dbg !6114
  br i1 %tobool, label %if.then, label %if.end, !dbg !6116

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6117
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6118
  store i32 %3, ptr %4, align 4, !dbg !6119
  br label %if.end, !dbg !6120

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6121
  %tobool1 = icmp ne i32 %5, 0, !dbg !6121
  %lnot = xor i1 %tobool1, true, !dbg !6121
  %lnot2 = xor i1 %lnot, true, !dbg !6121
  %lnot3 = xor i1 %lnot2, true, !dbg !6121
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6121
  %conv = sext i32 %lnot.ext to i64, !dbg !6121
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6121
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6121
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6123

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6124
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !6125
  br label %if.end18, !dbg !6125

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6126
  %cmp = icmp slt i32 %7, 0, !dbg !6126
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6126

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6126
  %9 = load i32, ptr %i.addr, align 4, !dbg !6126
  %add = add i32 %8, %9, !dbg !6126
  %cmp7 = icmp slt i32 %add, 0, !dbg !6126
  br label %lor.end, !dbg !6126

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6126
  %lnot11 = xor i1 %lnot9, true, !dbg !6126
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6126
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6126
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6126
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6126
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6128

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6129
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !6130
  br label %if.end17, !dbg !6130

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !6131
  ret void, !dbg !6131
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6132 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6134, metadata !DIExpression()), !dbg !6136
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6135, metadata !DIExpression()), !dbg !6137
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6138
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6139
  %1 = load i32, ptr %i.addr, align 4, !dbg !6140
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6141
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !6142
  ret i32 %call, !dbg !6143
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6144 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6147 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6149, metadata !DIExpression()), !dbg !6151
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6150, metadata !DIExpression()), !dbg !6152
  %0 = load i32, ptr %i.addr, align 4, !dbg !6153
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6154
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !6155
  ret i32 %call, !dbg !6156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6157 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6159, metadata !DIExpression()), !dbg !6163
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6160, metadata !DIExpression()), !dbg !6164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6165
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6161, metadata !DIExpression()), !dbg !6165
  %0 = load i32, ptr %i.addr, align 4, !dbg !6165
  store i32 %0, ptr %__ret, align 4, !dbg !6165
  %1 = load i32, ptr %__ret, align 4, !dbg !6165
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6165
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6165
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !6165, !srcloc !6166
  store i32 %3, ptr %__ret, align 4, !dbg !6165
  %4 = load i32, ptr %__ret, align 4, !dbg !6165
  store i32 %4, ptr %tmp, align 4, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6167
  %5 = load i32, ptr %tmp, align 4, !dbg !6165
  ret i32 %5, !dbg !6168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !6169 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6187
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !6188
  ret i1 %call, !dbg !6189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !6190 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6196
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #17, !dbg !6197
  ret i1 %call, !dbg !6198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !6199 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6202, metadata !DIExpression()), !dbg !6209
  br label %do.body, !dbg !6210

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #16, !dbg !6211
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6203, metadata !DIExpression()), !dbg !6211
  %0 = load i32, ptr %val.addr, align 4, !dbg !6211
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6211
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6211

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6211
  %cmp = icmp eq i32 %2, 1, !dbg !6211
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6211

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6211
  %cmp1 = icmp eq i32 %3, -1, !dbg !6211
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6211

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6211
  br label %cond.end, !dbg !6211

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6211
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6211
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6212
  %cmp2 = icmp eq i32 %5, 1, !dbg !6212
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6211

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !6213, !srcloc !6215
  br label %if.end8, !dbg !6212

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6216
  %cmp3 = icmp eq i32 %6, -1, !dbg !6216
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6212

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !6217, !srcloc !6219
  br label %if.end, !dbg !6216

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6216

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #16, !dbg !6220
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6205, metadata !DIExpression()), !dbg !6220
  %7 = load i32, ptr %val.addr, align 4, !dbg !6220
  %conv = sext i32 %7 to i64, !dbg !6220
  %and = and i64 %conv, 4294967295, !dbg !6220
  %conv7 = trunc i64 %and to i32, !dbg !6220
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6220
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6220
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !6220, !srcloc !6221
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #16, !dbg !6216
  br label %do.cond, !dbg !6220

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6220

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #16, !dbg !6210
  br label %do.end10, !dbg !6211

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6222
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_netfs_rreq_ref(ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !6223 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !6227
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6225, metadata !DIExpression()), !dbg !6227
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !6227, !srcloc !6228
  %1 = icmp ult i8 %0, 2, !dbg !6227
  call void @llvm.assume(i1 %1), !dbg !6227
  store i8 %0, ptr %c, align 1, !dbg !6227
  %2 = load i8, ptr %c, align 1, !dbg !6227, !range !5408, !noundef !639
  %tobool = trunc i8 %2 to i1, !dbg !6227
  %frombool = zext i1 %tobool to i8, !dbg !6227
  store i8 %frombool, ptr %tmp, align 1, !dbg !6227
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !6229
  %3 = load i8, ptr %tmp, align 1, !dbg !6227, !range !5408, !noundef !639
  %tobool1 = trunc i8 %3 to i1, !dbg !6227
  ret i1 %tobool1, !dbg !6230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !6231 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6236, metadata !DIExpression()), !dbg !6239
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6237, metadata !DIExpression()), !dbg !6240
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6241
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6242, !range !5408, !noundef !639
  %tobool = trunc i8 %1 to i1, !dbg !6242
  %conv = zext i1 %tobool to i32, !dbg !6242
  %or = or i32 2, %conv, !dbg !6243
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6244, !srcloc !6245

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6246
  br label %return, !dbg !6246

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6238), !dbg !6247
  store i1 true, ptr %retval, align 1, !dbg !6248
  br label %return, !dbg !6248

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6249
  ret i1 %2, !dbg !6249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !6250 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6258
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !6258
  %conv = zext i32 %call to i64, !dbg !6258
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6258
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6258
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6258
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !6258
  ret i1 %call1, !dbg !6259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6260 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6266, metadata !DIExpression()), !dbg !6268
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6270
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6271
  %div = udiv i64 %1, 64, !dbg !6271
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6272
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6273
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6274
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6275
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6276
  ret i1 %call, !dbg !6277
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !6278 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6284
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !6285
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6286
  ret i32 %1, !dbg !6287
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6288 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6290, metadata !DIExpression()), !dbg !6292
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6291, metadata !DIExpression()), !dbg !6293
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6294
  %1 = load i64, ptr %size.addr, align 8, !dbg !6295
  %conv = trunc i64 %1 to i32, !dbg !6295
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6296
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6297
  %3 = load i64, ptr %size.addr, align 8, !dbg !6297
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6297
  ret void, !dbg !6298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6299 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6302, metadata !DIExpression()), !dbg !6304
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6305
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6306
  br i1 %1, label %cond.true, label %cond.false, !dbg !6306

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6307
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6308
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6309
  %conv = zext i1 %call to i32, !dbg !6309
  br label %cond.end, !dbg !6306

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6310
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6311
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6312
  %conv2 = zext i1 %call1 to i32, !dbg !6312
  br label %cond.end, !dbg !6306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6306
  %tobool = icmp ne i32 %cond, 0, !dbg !6306
  ret i1 %tobool, !dbg !6313
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6314 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6316, metadata !DIExpression()), !dbg !6318
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6317, metadata !DIExpression()), !dbg !6319
  ret i1 true, !dbg !6320
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6321 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6325, metadata !DIExpression()), !dbg !6327
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6326, metadata !DIExpression()), !dbg !6328
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6329
  %and = and i64 %0, 63, !dbg !6330
  %shl = shl i64 1, %and, !dbg !6331
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6332
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6333
  %shr = ashr i64 %2, 6, !dbg !6334
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6332
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6332
  %and1 = and i64 %shl, %3, !dbg !6335
  %cmp = icmp ne i64 %and1, 0, !dbg !6336
  ret i1 %cmp, !dbg !6337
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6338 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6340, metadata !DIExpression()), !dbg !6343
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6342, metadata !DIExpression()), !dbg !6346
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6347
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6348
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6349, !srcloc !6350
  %3 = icmp ult i8 %2, 2, !dbg !6349
  call void @llvm.assume(i1 %3), !dbg !6349
  store i8 %2, ptr %oldbit, align 1, !dbg !6349
  %4 = load i8, ptr %oldbit, align 1, !dbg !6351, !range !5408, !noundef !639
  %tobool = trunc i8 %4 to i1, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6352
  ret i1 %tobool, !dbg !6353
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !6354 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  ret void, !dbg !6362
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6363 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6365, metadata !DIExpression()), !dbg !6366
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6367
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6369
  br i1 %call, label %if.end, label %if.then, !dbg !6370

if.then:                                          ; preds = %entry
  br label %return, !dbg !6371

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6372
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6373
  %2 = load ptr, ptr %prev, align 8, !dbg !6373
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6374
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6375
  %4 = load ptr, ptr %next, align 8, !dbg !6375
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6376
  br label %return, !dbg !6377

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6378 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6382, metadata !DIExpression()), !dbg !6383
  ret i1 true, !dbg !6384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6385 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6389, metadata !DIExpression()), !dbg !6391
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6393
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6394
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6395
  store ptr %0, ptr %prev1, align 8, !dbg !6396
  br label %do.body, !dbg !6397

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6398

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6400

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6398

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6402
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6402
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6402
  store volatile ptr %2, ptr %next4, align 8, !dbg !6402
  br label %do.end5, !dbg !6402

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6398

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6405 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6409, metadata !DIExpression()), !dbg !6413
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6410, metadata !DIExpression()), !dbg !6414
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6411, metadata !DIExpression()), !dbg !6415
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6412, metadata !DIExpression()), !dbg !6417
  %0 = load i32, ptr %i.addr, align 4, !dbg !6418
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6419
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6420
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !6421
  store i32 %call, ptr %old, align 4, !dbg !6417
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6422
  %tobool = icmp ne ptr %2, null, !dbg !6422
  br i1 %tobool, label %if.then, label %if.end, !dbg !6424

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6425
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6426
  store i32 %3, ptr %4, align 4, !dbg !6427
  br label %if.end, !dbg !6428

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6429
  %6 = load i32, ptr %i.addr, align 4, !dbg !6431
  %cmp = icmp eq i32 %5, %6, !dbg !6432
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6433

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6434

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6436

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6438

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6438

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6436

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6440

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6442

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6442

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6440, !srcloc !6444
  br label %do.cond7, !dbg !6440

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6440

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6436

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6436

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6445

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6446
  %cmp12 = icmp slt i32 %7, 0, !dbg !6446
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6446

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6446
  %9 = load i32, ptr %i.addr, align 4, !dbg !6446
  %sub = sub i32 %8, %9, !dbg !6446
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6446
  br label %lor.end, !dbg !6446

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6446
  %lnot14 = xor i1 %lnot, true, !dbg !6446
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6446
  %conv = sext i32 %lnot.ext to i64, !dbg !6446
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6446
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6446
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6448

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6449
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !6450
  br label %if.end17, !dbg !6450

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6451

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !6452
  %12 = load i1, ptr %retval, align 1, !dbg !6452
  ret i1 %12, !dbg !6452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6453 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6455, metadata !DIExpression()), !dbg !6457
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6456, metadata !DIExpression()), !dbg !6458
  br label %do.body, !dbg !6459

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6460

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6462
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6463
  %1 = load i32, ptr %i.addr, align 4, !dbg !6464
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6465
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !6466
  ret i32 %call, !dbg !6467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6468 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load i32, ptr %i.addr, align 4, !dbg !6474
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6475
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !6476
  ret i32 %call, !dbg !6477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !6478 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6480, metadata !DIExpression()), !dbg !6484
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6481, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6482, metadata !DIExpression()), !dbg !6486
  %0 = load i32, ptr %i.addr, align 4, !dbg !6486
  %sub = sub i32 0, %0, !dbg !6486
  store i32 %sub, ptr %__ret, align 4, !dbg !6486
  %1 = load i32, ptr %__ret, align 4, !dbg !6486
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6486
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6486
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !6486, !srcloc !6487
  store i32 %3, ptr %__ret, align 4, !dbg !6486
  %4 = load i32, ptr %__ret, align 4, !dbg !6486
  store i32 %4, ptr %tmp, align 4, !dbg !6486
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6488
  %5 = load i32, ptr %tmp, align 4, !dbg !6486
  ret i32 %5, !dbg !6489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_netfs_rreq(ptr noundef %rreq, i8 noundef signext %what) #3 align 16 !dbg !4947 {
entry:
  %rreq.addr = alloca ptr, align 8
  %what.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu328 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %rreq, ptr %rreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rreq.addr, metadata !4951, metadata !DIExpression()), !dbg !6490
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !4952, metadata !DIExpression()), !dbg !6490
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_rreq, i32 0, i32 1)) #17, !dbg !6491
  br i1 %call, label %if.then, label %if.end68, !dbg !6490

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6491

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #16, !dbg !6492
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4953, metadata !DIExpression()), !dbg !6492
  store i32 0, ptr %__idx, align 4, !dbg !6492
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4956, metadata !DIExpression()), !dbg !6493
  br label %do.body1, !dbg !6493

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4959, metadata !DIExpression()), !dbg !6494
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6494
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6493
  br label %do.cond, !dbg !6494

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6494

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4961, metadata !DIExpression()), !dbg !6495
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !6495, !srcloc !6496
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6495
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6495
  %conv = zext i32 %2 to i64, !dbg !6495
  %conv2 = trunc i64 %conv to i32, !dbg !6495
  store i32 %conv2, ptr %tmp, align 4, !dbg !6495
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !6493
  %3 = load i32, ptr %tmp, align 4, !dbg !6495
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6493
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6493
  store i32 %4, ptr %tmp3, align 4, !dbg !6493
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6497
  %5 = load i32, ptr %tmp3, align 4, !dbg !6493
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #17, !dbg !6497
  br i1 %call4, label %if.end, label %if.then5, !dbg !6492

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6497

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4963, metadata !DIExpression()), !dbg !6498
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6498
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6499
  %tobool = icmp ne i32 %6, 0, !dbg !6499
  %lnot = xor i1 %tobool, true, !dbg !6499
  %lnot6 = xor i1 %lnot, true, !dbg !6499
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6499
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6499
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6499
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6499
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6498

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6499

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4966, metadata !DIExpression()), !dbg !6500
  store i32 2307, ptr %__flags, align 4, !dbg !6500
  br label %do.body11, !dbg !6500

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6501

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6501

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6500

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6503
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 185, i32 %7, i64 12) #16, !dbg !6503, !srcloc !6505
  br label %do.cond15, !dbg !6503

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6503

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6500

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6506

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6506

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6499
  br label %do.cond20, !dbg !6500

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6500

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6500

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6498
  %tobool24 = icmp ne i32 %8, 0, !dbg !6498
  %lnot25 = xor i1 %tobool24, true, !dbg !6498
  %lnot27 = xor i1 %lnot25, true, !dbg !6498
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6498
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6498
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6498
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6508
  %9 = load i64, ptr %tmp23, align 8, !dbg !6498
  %tobool31 = icmp ne i64 %9, 0, !dbg !6508
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6492

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6508

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6492

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !6509
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6509, !srcloc !6511
  br label %do.cond35, !dbg !6509

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6509

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6492

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #16, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4969, metadata !DIExpression()), !dbg !6512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #16, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4971, metadata !DIExpression()), !dbg !6512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #16, !dbg !6513
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu328, metadata !4972, metadata !DIExpression()), !dbg !6513
  br label %do.body38, !dbg !6514

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6516

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6516

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_rreq, i32 0, i32 8), align 8, !dbg !6514
  store ptr %10, ptr %tmp41, align 8, !dbg !6516
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6514
  store ptr %11, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !6513
  %12 = load ptr, ptr %__UNIQUE_ID_rcu328, align 8, !dbg !6513
  store ptr %12, ptr %tmp42, align 8, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu328) #16, !dbg !6512
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6513
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6512
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6518
  %tobool43 = icmp ne ptr %14, null, !dbg !6518
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6512

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6520
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6520
  %16 = load ptr, ptr %data, align 8, !dbg !6520
  store ptr %16, ptr %__data, align 8, !dbg !6520
  store ptr @__SCT__tp_func_netfs_rreq, ptr %tmp45, align 8, !dbg !6522
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6522
  %18 = load ptr, ptr %__data, align 8, !dbg !6520
  %19 = load ptr, ptr %rreq.addr, align 8, !dbg !6520
  %20 = load i8, ptr %what.addr, align 1, !dbg !6520
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i8 noundef signext %20) #17, !dbg !6520
  br label %if.end47, !dbg !6520

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #16, !dbg !6492
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #16, !dbg !6492
  br label %do.cond48, !dbg !6512

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6512

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6492

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6524, !srcloc !6526
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !6527
  %lnot52 = xor i1 %call51, true, !dbg !6527
  %lnot54 = xor i1 %lnot52, true, !dbg !6527
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6527
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6527
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6527
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6527
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6524

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6527

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5050), !dbg !6529
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #16, !dbg !6529, !srcloc !6531
  call void @llvm.write_register.i64(metadata !5050, i64 %22), !dbg !6529
  br label %do.cond61, !dbg !6529

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6529

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6529

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6524

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6524

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6491
  br label %cleanup, !dbg !6491

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #16, !dbg !6491
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6492

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6492

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6490

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_netfs_rreq(ptr noundef, ptr noundef, i8 noundef signext) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6532 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_netfs_sreq_ref(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_netfs_sreq(ptr noundef %sreq, i8 noundef signext %what) #3 align 16 !dbg !5011 {
entry:
  %sreq.addr = alloca ptr, align 8
  %what.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu336 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %sreq, ptr %sreq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sreq.addr, metadata !5015, metadata !DIExpression()), !dbg !6535
  store i8 %what, ptr %what.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %what.addr, metadata !5016, metadata !DIExpression()), !dbg !6535
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_sreq, i32 0, i32 1)) #17, !dbg !6536
  br i1 %call, label %if.then, label %if.end68, !dbg !6535

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6536

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #16, !dbg !6537
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5017, metadata !DIExpression()), !dbg !6537
  store i32 0, ptr %__idx, align 4, !dbg !6537
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5020, metadata !DIExpression()), !dbg !6538
  br label %do.body1, !dbg !6538

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6539
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5023, metadata !DIExpression()), !dbg !6539
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6539
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6538
  br label %do.cond, !dbg !6539

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6539

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5025, metadata !DIExpression()), !dbg !6540
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #16, !dbg !6540, !srcloc !6541
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6540
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6540
  %conv = zext i32 %2 to i64, !dbg !6540
  %conv2 = trunc i64 %conv to i32, !dbg !6540
  store i32 %conv2, ptr %tmp, align 4, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !6538
  %3 = load i32, ptr %tmp, align 4, !dbg !6540
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6538
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6538
  store i32 %4, ptr %tmp3, align 4, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6542
  %5 = load i32, ptr %tmp3, align 4, !dbg !6538
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #17, !dbg !6542
  br i1 %call4, label %if.end, label %if.then5, !dbg !6537

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6542

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6543
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5027, metadata !DIExpression()), !dbg !6543
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6543
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6544
  %tobool = icmp ne i32 %6, 0, !dbg !6544
  %lnot = xor i1 %tobool, true, !dbg !6544
  %lnot6 = xor i1 %lnot, true, !dbg !6544
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6544
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6544
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6544
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6544
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6543

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6544

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5030, metadata !DIExpression()), !dbg !6545
  store i32 2307, ptr %__flags, align 4, !dbg !6545
  br label %do.body11, !dbg !6545

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6546

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6546

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6545

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6548
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 224, i32 %7, i64 12) #16, !dbg !6548, !srcloc !6550
  br label %do.cond15, !dbg !6548

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6548

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6545

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6551

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6551

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6544
  br label %do.cond20, !dbg !6545

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6545

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6545

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6543
  %tobool24 = icmp ne i32 %8, 0, !dbg !6543
  %lnot25 = xor i1 %tobool24, true, !dbg !6543
  %lnot27 = xor i1 %lnot25, true, !dbg !6543
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6543
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6543
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6543
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6553
  %9 = load i64, ptr %tmp23, align 8, !dbg !6543
  %tobool31 = icmp ne i64 %9, 0, !dbg !6553
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6537

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6553

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6537

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #17, !dbg !6554
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6554, !srcloc !6556
  br label %do.cond35, !dbg !6554

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6554

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6537

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #16, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5033, metadata !DIExpression()), !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #16, !dbg !6557
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5035, metadata !DIExpression()), !dbg !6557
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu336) #16, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu336, metadata !5036, metadata !DIExpression()), !dbg !6558
  br label %do.body38, !dbg !6559

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6561

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6561

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_netfs_sreq, i32 0, i32 8), align 8, !dbg !6559
  store ptr %10, ptr %tmp41, align 8, !dbg !6561
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6559
  store ptr %11, ptr %__UNIQUE_ID_rcu336, align 8, !dbg !6558
  %12 = load ptr, ptr %__UNIQUE_ID_rcu336, align 8, !dbg !6558
  store ptr %12, ptr %tmp42, align 8, !dbg !6558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu336) #16, !dbg !6557
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6558
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6557
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6563
  %tobool43 = icmp ne ptr %14, null, !dbg !6563
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6557

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6565
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6565
  %16 = load ptr, ptr %data, align 8, !dbg !6565
  store ptr %16, ptr %__data, align 8, !dbg !6565
  store ptr @__SCT__tp_func_netfs_sreq, ptr %tmp45, align 8, !dbg !6567
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6567
  %18 = load ptr, ptr %__data, align 8, !dbg !6565
  %19 = load ptr, ptr %sreq.addr, align 8, !dbg !6565
  %20 = load i8, ptr %what.addr, align 1, !dbg !6565
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i8 noundef signext %20) #17, !dbg !6565
  br label %if.end47, !dbg !6565

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #16, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #16, !dbg !6537
  br label %do.cond48, !dbg !6557

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6557

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6537

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6569, !srcloc !6571
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #17, !dbg !6572
  %lnot52 = xor i1 %call51, true, !dbg !6572
  %lnot54 = xor i1 %lnot52, true, !dbg !6572
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6572
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6572
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6572
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6572
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6569

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6572

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5050), !dbg !6574
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #16, !dbg !6574, !srcloc !6576
  call void @llvm.write_register.i64(metadata !5050, i64 %22), !dbg !6574
  br label %do.cond61, !dbg !6574

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6574

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6574

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6569

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6569

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6536
  br label %cleanup, !dbg !6536

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #16, !dbg !6536
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6537

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6537

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6535

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_netfs_sreq(ptr noundef, ptr noundef, i8 noundef signext) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!4777}
!llvm.named.register.rsp = !{!5050}
!llvm.module.flags = !{!5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058}
!llvm.ident = !{!5059}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug_ids", scope: !2, file: !3, line: 19, type: !162, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "netfs_alloc_request", scope: !3, file: !3, line: 14, type: !4, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5040)
!3 = !DIFile(filename: "fs/netfs/objects.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3119539cec93ce99c3a3cb24f3dd3065")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !412, !646, !251, !384, !4731}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_request", file: !8, line: 177, size: 1536, elements: !9)
!8 = !DIFile(filename: "./include/linux/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f990c1c7c591a5358345b001c6d554e")
!9 = !{!10, !39, !4646, !4647, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4736, !4737, !4738, !4739, !4740, !4741}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !7, file: !8, line: 178, baseType: !11, size: 256)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !27, !33}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !11, file: !12, line: 99, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !16, line: 13, baseType: !17)
!16 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !18, line: 181, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 179, size: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !19, file: !18, line: 180, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !23, line: 22, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !25, line: 30, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !11, file: !12, line: 100, baseType: !28, size: 128, offset: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !18, line: 190, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !18, line: 191, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !18, line: 191, baseType: !31, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !11, file: !12, line: 101, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !7, file: !8, line: 179, baseType: !40, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 641, size: 4800, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!43 = !{!44, !47, !48, !58, !59, !66, !67, !70, !71, !4584, !4585, !4586, !4587, !4588, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4628, !4631, !4632, !4633, !4642, !4643, !4644, !4645}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !41, file: !42, line: 642, baseType: !45, size: 16)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !18, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !41, file: !42, line: 643, baseType: !46, size: 16, offset: 16)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !41, file: !42, line: 644, baseType: !49, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !50, line: 23, baseType: !51)
!50 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 21, size: 32, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !50, line: 22, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 37, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !56, line: 49, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !41, file: !42, line: 645, baseType: !28, size: 128, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !41, file: !42, line: 646, baseType: !60, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !50, line: 28, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 26, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !50, line: 27, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 38, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !56, line: 50, baseType: !57)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !41, file: !42, line: 647, baseType: !57, size: 32, offset: 224)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !41, file: !42, line: 650, baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 607, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !41, file: !42, line: 651, baseType: !68, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !41, file: !42, line: 654, baseType: !72, size: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1966, size: 2048, align: 512, elements: !75)
!75 = !{!76, !4418, !4428, !4432, !4436, !4440, !4444, !4448, !4452, !4456, !4460, !4461, !4465, !4469, !4506, !4535, !4539, !4545, !4549, !4553, !4557, !4561, !4565, !4571, !4575}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !74, file: !42, line: 1967, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !40, !80, !57}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !82, line: 82, size: 1536, elements: !83)
!82 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!83 = !{!84, !85, !95, !103, !104, !125, !126, !130, !182, !4401, !4402, !4403, !4404, !4410, !4411, !4412}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !81, file: !82, line: 84, baseType: !57, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !81, file: !82, line: 85, baseType: !86, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !87, line: 275, baseType: !88)
!87 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !87, line: 275, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !88, file: !87, line: 275, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !87, line: 69, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !87, line: 64, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !92, file: !87, line: 65, baseType: !57, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !81, file: !82, line: 86, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !97, line: 38, size: 128, elements: !98)
!97 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !97, line: 39, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !96, file: !97, line: 39, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !81, file: !82, line: 87, baseType: !80, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !81, file: !82, line: 88, baseType: !105, size: 128, offset: 256)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !82, line: 49, size: 128, elements: !106)
!106 = !{!107, !121}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !82, line: 50, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !82, line: 50, size: 64, elements: !109)
!109 = !{!110, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !82, line: 51, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !82, line: 51, size: 64, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !111, file: !82, line: 52, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !57)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !111, file: !82, line: 52, baseType: !114, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !108, file: !82, line: 54, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !120)
!120 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !82, line: 56, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !81, file: !82, line: 89, baseType: !40, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !81, file: !82, line: 91, baseType: !127, size: 256, offset: 448)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !81, file: !82, line: 94, baseType: !131, size: 64, offset: 704)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !132, line: 25, size: 64, elements: !133)
!132 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !132, line: 26, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 26, size: 64, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !135, file: !132, line: 28, baseType: !119, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !132, line: 30, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !132, line: 30, size: 64, elements: !140)
!140 = !{!141, !181}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !139, file: !132, line: 31, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !143, line: 29, baseType: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !143, line: 17, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !143, line: 18, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !143, line: 18, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !147, file: !143, line: 19, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !151, line: 14, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !150, file: !151, line: 15, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !155, line: 44, baseType: !156)
!155 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !155, line: 14, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !155, line: 15, baseType: !159, size: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !155, line: 15, size: 32, elements: !160)
!160 = !{!161, !167, !174}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !159, file: !155, line: 16, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !18, line: 174, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 172, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !18, line: 173, baseType: !166, size: 32)
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !155, line: 24, baseType: !168, size: 16)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !155, line: 24, size: 16, elements: !169)
!169 = !{!170, !173}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !168, file: !155, line: 25, baseType: !171, size: 8)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !124)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !168, file: !155, line: 26, baseType: !171, size: 8, offset: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !155, line: 28, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !155, line: 28, size: 32, elements: !176)
!176 = !{!177, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !175, file: !155, line: 29, baseType: !178, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !46)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !175, file: !155, line: 30, baseType: !178, size: 16, offset: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !132, line: 32, baseType: !166, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !81, file: !82, line: 95, baseType: !183, size: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !82, line: 128, size: 1024, align: 512, elements: !186)
!186 = !{!187, !191, !192, !199, !208, !212, !216, !220, !221, !225, !230, !4391, !4395}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !185, file: !82, line: 129, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!166, !80, !57}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !185, file: !82, line: 130, baseType: !188, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !185, file: !82, line: 131, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!166, !196, !198}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !185, file: !82, line: 132, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!166, !196, !57, !203, !206}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !185, file: !82, line: 134, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!166, !196}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !185, file: !82, line: 135, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!166, !80}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !185, file: !82, line: 136, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !80}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !185, file: !82, line: 137, baseType: !217, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !185, file: !82, line: 138, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !80, !40}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !185, file: !82, line: 139, baseType: !226, size: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !80, !229, !166}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !185, file: !82, line: 140, baseType: !231, size: 64, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !4390}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !236, line: 70, size: 256, elements: !237)
!236 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!237 = !{!238, !239, !4386, !4387}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !235, file: !236, line: 71, baseType: !80, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !235, file: !236, line: 72, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1190, size: 10752, elements: !242)
!242 = !{!243, !244, !247, !248, !250, !253, !2253, !2395, !2435, !2520, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2537, !2541, !2542, !3060, !3063, !3133, !3136, !3137, !3138, !3179, !4319, !4320, !4321, !4322, !4323, !4324, !4327, !4329, !4336, !4337, !4338, !4339, !4340, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !241, file: !42, line: 1191, baseType: !28, size: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !241, file: !42, line: 1192, baseType: !245, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !18, line: 21, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !18, line: 18, baseType: !114)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !241, file: !42, line: 1193, baseType: !124, size: 8, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !241, file: !42, line: 1194, baseType: !249, size: 64, offset: 192)
!249 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !241, file: !42, line: 1195, baseType: !251, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !18, line: 52, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !56, line: 88, baseType: !26)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !241, file: !42, line: 1196, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2366, size: 576, elements: !256)
!256 = !{!257, !258, !259, !265, !269, !274, !278, !2241, !2242, !2243, !2245, !2246, !2247, !2249, !2250, !2251, !2252}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !42, line: 2367, baseType: !203, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !255, file: !42, line: 2368, baseType: !166, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !255, file: !42, line: 2376, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!166, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !236, line: 21, flags: DIFlagFwdDecl)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !255, file: !42, line: 2377, baseType: !266, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 75, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !255, file: !42, line: 2378, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!80, !254, !166, !203, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !255, file: !42, line: 2380, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !240}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !255, file: !42, line: 2381, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !281, line: 402, size: 9216, align: 512, elements: !282)
!281 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!282 = !{!283, !290, !291, !295, !1892, !1918, !1919, !1920, !1921, !1925, !1928, !1929, !1930, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1998, !2002, !2022, !2040, !2041, !2042, !2043, !2052, !2075, !2076, !2079, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2093, !2094, !2194, !2202, !2203, !2204, !2206, !2210, !2211, !2220, !2221, !2222, !2223, !2225, !2226, !2227, !2234, !2235, !2236, !2240}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !281, line: 403, baseType: !284, size: 32)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !281, line: 312, baseType: !57, size: 32, elements: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!287 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!288 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!289 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !280, file: !281, line: 406, baseType: !28, size: 128, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !281, line: 409, baseType: !292, size: 448, offset: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 448, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 56)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !280, file: !281, line: 417, baseType: !296, size: 768, offset: 640)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !281, line: 45, size: 768, elements: !297)
!297 = !{!298, !1885, !1886, !1887, !1890}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !296, file: !281, line: 46, baseType: !299, size: 512)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !300, line: 64, size: 512, elements: !301)
!300 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!301 = !{!302, !303, !304, !306, !352, !1771, !1875, !1880, !1881, !1882, !1883, !1884}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 65, baseType: !203, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !299, file: !300, line: 66, baseType: !28, size: 128, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !300, line: 67, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !299, file: !300, line: 68, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !300, line: 168, size: 768, elements: !309)
!309 = !{!310, !311, !312, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !308, file: !300, line: 169, baseType: !28, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !308, file: !300, line: 170, baseType: !142, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !308, file: !300, line: 171, baseType: !299, size: 512, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !308, file: !300, line: 172, baseType: !314, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !300, line: 133, size: 192, elements: !317)
!317 = !{!318, !325, !330}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !316, file: !300, line: 134, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!166, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !300, line: 135, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!203, !323}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !316, file: !300, line: 136, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!166, !323, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !300, line: 125, size: 20736, elements: !337)
!337 = !{!338, !342, !346, !347, !351}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !336, file: !300, line: 126, baseType: !339, size: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 3)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !336, file: !300, line: 127, baseType: !343, size: 4096, offset: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !336, file: !300, line: 128, baseType: !166, size: 32, offset: 4288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !336, file: !300, line: 129, baseType: !348, size: 16384, offset: 4320)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 16384, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 2048)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !336, file: !300, line: 130, baseType: !166, size: 32, offset: 20704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !299, file: !300, line: 69, baseType: !353, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !300, line: 116, size: 384, elements: !356)
!356 = !{!357, !361, !387, !1724, !1761, !1765}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !355, file: !300, line: 117, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !305}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !355, file: !300, line: 118, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !365, line: 254, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!366 = !{!367, !380}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !364, file: !365, line: 255, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !305, !375, !229}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 66, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !56, line: 73, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !56, line: 15, baseType: !374)
!374 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !365, line: 30, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !365, line: 31, baseType: !203, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !376, file: !365, line: 32, baseType: !45, size: 16, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !364, file: !365, line: 256, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!371, !305, !375, !203, !384}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 61, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !56, line: 72, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !56, line: 16, baseType: !249)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !355, file: !300, line: 119, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !365, line: 84, size: 320, elements: !392)
!392 = !{!393, !394, !398, !1720, !1722}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !365, line: 85, baseType: !203, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !391, file: !365, line: 86, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!45, !305, !375, !166}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !391, file: !365, line: 88, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!45, !305, !402, !166}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !365, line: 175, size: 512, elements: !404)
!404 = !{!405, !406, !407, !408, !1711, !1715, !1716}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !403, file: !365, line: 176, baseType: !376, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !403, file: !365, line: 177, baseType: !384, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !403, file: !365, line: 178, baseType: !273, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !403, file: !365, line: 179, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 472, size: 1536, align: 64, elements: !414)
!414 = !{!415, !416, !424, !438, !439, !440, !455, !456, !457, !1705, !1706, !1707, !1708, !1709, !1710}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !413, file: !42, line: 473, baseType: !40, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !413, file: !42, line: 474, baseType: !417, size: 128, offset: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !418, line: 296, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!419 = !{!420, !421, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !417, file: !418, line: 297, baseType: !142, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !417, file: !418, line: 299, baseType: !422, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !18, line: 154, baseType: !57)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !417, file: !418, line: 300, baseType: !273, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !413, file: !42, line: 475, baseType: !425, size: 320, offset: 192)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !426, line: 48, size: 320, elements: !427)
!426 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!427 = !{!428, !429, !430, !435, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !426, line: 49, baseType: !15, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !426, line: 55, baseType: !15, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !425, file: !426, line: 57, baseType: !431, size: 32, offset: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !432, line: 15, size: 32, elements: !433)
!432 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !431, file: !432, line: 20, baseType: !162, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !425, file: !426, line: 59, baseType: !436, size: 32, offset: 160)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !151, line: 23, baseType: !150)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !425, file: !426, line: 60, baseType: !28, size: 128, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !413, file: !42, line: 476, baseType: !422, size: 32, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !413, file: !42, line: 477, baseType: !162, size: 32, offset: 544)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !413, file: !42, line: 482, baseType: !441, size: 128, offset: 576)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !442, line: 26, size: 128, elements: !443)
!442 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!443 = !{!444, !454}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !441, file: !442, line: 27, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !442, line: 12, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !445, file: !442, line: 13, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !442, line: 5, size: 192, align: 64, elements: !450)
!450 = !{!451, !452, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !449, file: !442, line: 6, baseType: !249, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !449, file: !442, line: 7, baseType: !448, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !449, file: !442, line: 8, baseType: !448, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !441, file: !442, line: 28, baseType: !448, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !413, file: !42, line: 483, baseType: !249, size: 64, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !413, file: !42, line: 484, baseType: !249, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !413, file: !42, line: 485, baseType: !458, size: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 404, size: 1280, elements: !461)
!461 = !{!462, !1610, !1614, !1618, !1622, !1638, !1643, !1647, !1652, !1656, !1660, !1664, !1665, !1676, !1680, !1684, !1689, !1693, !1700, !1701}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !460, file: !42, line: 405, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!166, !466, !1585}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !468, line: 74, size: 512, align: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!469 = !{!470, !471, !1579, !1584}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !468, line: 75, baseType: !249, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 83, baseType: !472, size: 320, offset: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 83, size: 320, elements: !473)
!473 = !{!474, !495, !509, !513, !1578}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !468, line: 84, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !468, line: 84, size: 320, elements: !476)
!476 = !{!477, !488, !489, !494}
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !468, line: 90, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !468, line: 90, size: 128, elements: !479)
!479 = !{!480, !481, !486, !487}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !478, file: !468, line: 91, baseType: !28, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !468, line: 94, baseType: !482, size: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !468, line: 94, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !482, file: !468, line: 96, baseType: !273, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !482, file: !468, line: 98, baseType: !57, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !478, file: !468, line: 102, baseType: !28, size: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !478, file: !468, line: 103, baseType: !28, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !475, file: !468, line: 106, baseType: !412, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !468, line: 107, baseType: !490, size: 64, offset: 192)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !468, line: 107, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !490, file: !468, line: 108, baseType: !249, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !490, file: !468, line: 109, baseType: !249, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !475, file: !468, line: 117, baseType: !249, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !468, line: 119, baseType: !496, size: 320)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !468, line: 119, size: 320, elements: !497)
!497 = !{!498, !499, !502, !503, !504}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !496, file: !468, line: 124, baseType: !249, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !496, file: !468, line: 125, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !468, line: 125, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !496, file: !468, line: 126, baseType: !249, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !496, file: !468, line: 127, baseType: !249, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !468, line: 128, baseType: !505, size: 64, offset: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !468, line: 128, size: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !505, file: !468, line: 133, baseType: !249, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !505, file: !468, line: 138, baseType: !15, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !468, line: 141, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !468, line: 141, size: 64, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !510, file: !468, line: 142, baseType: !249, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !468, line: 144, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !468, line: 144, size: 128, elements: !515)
!515 = !{!516, !1577}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !514, file: !468, line: 146, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !519, line: 126, size: 1216, elements: !520)
!519 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!520 = !{!521, !531, !562, !573, !581, !582, !583, !1559, !1560, !1561}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !518, file: !519, line: 127, baseType: !522, size: 384)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !519, line: 21, size: 384, elements: !523)
!523 = !{!524, !525, !527, !528, !529, !530}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !522, file: !519, line: 22, baseType: !249, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !522, file: !519, line: 23, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !522, file: !519, line: 24, baseType: !526, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !522, file: !519, line: 25, baseType: !249, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !522, file: !519, line: 26, baseType: !249, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !522, file: !519, line: 27, baseType: !249, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !518, file: !519, line: 128, baseType: !532, size: 128, offset: 384)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !533, line: 105, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !532, file: !533, line: 110, baseType: !249, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !532, file: !533, line: 118, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !533, line: 95, size: 448, elements: !539)
!539 = !{!540, !541, !547, !548, !551, !552, !561}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !538, file: !533, line: 96, baseType: !15, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !538, file: !533, line: 97, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !533, line: 60, baseType: !544)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !538, file: !533, line: 98, baseType: !542, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !538, file: !533, line: 99, baseType: !549, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !550)
!550 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !538, file: !533, line: 100, baseType: !549, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !538, file: !533, line: 101, baseType: !553, size: 128, align: 64, offset: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !18, line: 232, size: 128, align: 64, elements: !554)
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !18, line: 233, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !553, file: !18, line: 234, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !556}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !538, file: !533, line: 102, baseType: !546, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !518, file: !519, line: 129, baseType: !563, size: 256, offset: 512)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !564, line: 26, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !563, file: !564, line: 27, baseType: !57, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !563, file: !564, line: 28, baseType: !568, size: 192, offset: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !569, line: 43, size: 192, elements: !570)
!569 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !568, file: !569, line: 44, baseType: !436, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !568, file: !569, line: 45, baseType: !28, size: 128, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !519, line: 130, baseType: !574, size: 32, offset: 768)
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !519, line: 68, baseType: !57, size: 32, elements: !575)
!575 = !{!576, !577, !578, !579, !580}
!576 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!577 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!578 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!579 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!580 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !519, line: 131, baseType: !57, size: 32, offset: 800)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !518, file: !519, line: 132, baseType: !249, size: 64, offset: 832)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !518, file: !519, line: 133, baseType: !584, size: 64, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !519, line: 77, size: 192, elements: !587)
!587 = !{!588, !592, !1555}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !586, file: !519, line: 83, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !466}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !586, file: !519, line: 89, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !468, line: 1184, baseType: !57)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !599, line: 512, size: 896, elements: !600)
!599 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!600 = !{!601, !1507, !1523, !1530, !1537, !1547, !1548, !1549, !1551, !1553}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !599, line: 513, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !599, line: 513, size: 320, elements: !603)
!603 = !{!604, !1503, !1504, !1505, !1506}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !602, file: !599, line: 514, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !468, line: 625, size: 1344, elements: !607)
!607 = !{!608, !617, !1408, !1414, !1421, !1422, !1427, !1428, !1433, !1434, !1437, !1496, !1497, !1498, !1499, !1500, !1501}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !468, line: 628, baseType: !609, size: 128)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !468, line: 628, size: 128, elements: !610)
!610 = !{!611, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !468, line: 629, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !468, line: 629, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !612, file: !468, line: 631, baseType: !249, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !612, file: !468, line: 632, baseType: !249, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !609, file: !468, line: 635, baseType: !553, size: 128, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !606, file: !468, line: 639, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !468, line: 733, size: 10240, elements: !620)
!620 = !{!621, !1406}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !468, line: 734, baseType: !622, size: 10240)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !468, line: 734, size: 10240, elements: !623)
!623 = !{!624, !628, !642, !1278, !1279, !1280, !1281, !1282, !1283, !1292, !1293, !1294, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1333, !1335, !1338, !1385, !1386, !1387, !1390, !1391, !1392, !1395, !1396, !1397, !1404, !1405}
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !468, line: 739, baseType: !625, size: 512, align: 512)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !622, file: !468, line: 739, size: 512, align: 512, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !625, file: !468, line: 747, baseType: !162, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !622, file: !468, line: 750, baseType: !629, size: 128, offset: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !630, line: 218, size: 128, elements: !631)
!630 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!631 = !{!632, !640, !641}
!632 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !630, line: 219, baseType: !633, size: 32)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !630, line: 219, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !633, file: !630, line: 220, baseType: !142, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !633, file: !630, line: 221, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !630, line: 197, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 197, elements: !639)
!639 = !{}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !629, file: !630, line: 223, baseType: !57, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !629, file: !630, line: 224, baseType: !273, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !622, file: !468, line: 752, baseType: !643, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!249, !646, !249, !249, !249, !249}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 994, size: 1856, align: 64, elements: !648)
!648 = !{!649, !660, !661, !663, !664, !672, !673, !674, !754, !949, !958, !964, !965, !1268, !1269, !1270, !1271, !1273, !1274, !1277}
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !42, line: 995, baseType: !650, size: 128)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !42, line: 995, size: 128, elements: !651)
!651 = !{!652, !658, !659}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !650, file: !42, line: 996, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !654, line: 60, size: 64, elements: !655)
!654 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !654, line: 61, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !650, file: !42, line: 997, baseType: !553, size: 128, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !650, file: !42, line: 998, baseType: !57, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !647, file: !42, line: 1005, baseType: !142, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !647, file: !42, line: 1006, baseType: !662, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !18, line: 156, baseType: !57)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !647, file: !42, line: 1007, baseType: !15, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !647, file: !42, line: 1008, baseType: !665, size: 256, offset: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !666, line: 66, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !666, line: 67, baseType: !15, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !666, line: 68, baseType: !436, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !665, file: !666, line: 70, baseType: !431, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !665, file: !666, line: 72, baseType: !28, size: 128, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !647, file: !42, line: 1009, baseType: !251, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !647, file: !42, line: 1010, baseType: !57, size: 32, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !647, file: !42, line: 1011, baseType: !675, size: 256, offset: 640)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 948, size: 256, elements: !676)
!676 = !{!677, !698, !743, !751, !752, !753}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !675, file: !42, line: 949, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !679, line: 34, baseType: !680)
!679 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 25, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !680, file: !679, line: 26, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !684, line: 27, baseType: !685)
!684 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !684, line: 13, size: 64, elements: !686)
!686 = !{!687, !697}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !684, line: 14, baseType: !688, size: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !684, line: 14, size: 32, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !688, file: !684, line: 15, baseType: !162, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !684, line: 16, baseType: !692, size: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !684, line: 16, size: 32, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !692, file: !684, line: 18, baseType: !171, size: 8)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !692, file: !684, line: 19, baseType: !696, size: 24, offset: 8)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 24, elements: !340)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !685, file: !684, line: 26, baseType: !154, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !675, file: !42, line: 950, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !701, line: 59, size: 768, elements: !702)
!701 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!702 = !{!703, !709, !710, !711, !724, !725, !732, !733}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !700, file: !701, line: 61, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !705, line: 113, baseType: !706)
!705 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !705, line: 111, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !706, file: !705, line: 112, baseType: !162, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !700, file: !701, line: 62, baseType: !57, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !700, file: !701, line: 63, baseType: !142, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !700, file: !701, line: 65, baseType: !712, size: 256, offset: 128)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 256, elements: !722)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !18, line: 194, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !713, file: !18, line: 195, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !18, line: 198, size: 128, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !18, line: 199, baseType: !716, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !717, file: !18, line: 199, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!722 = !{!723}
!723 = !DISubrange(count: 4)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !700, file: !701, line: 66, baseType: !713, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !700, file: !701, line: 68, baseType: !726, size: 192, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !727, line: 41, baseType: !728)
!727 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !727, line: 37, size: 192, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !727, line: 38, baseType: !142, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !728, file: !727, line: 39, baseType: !28, size: 128, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !700, file: !701, line: 69, baseType: !553, size: 128, align: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !700, file: !701, line: 70, baseType: !734, offset: 768)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, elements: !741)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !701, line: 54, size: 128, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !735, file: !701, line: 55, baseType: !166, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !735, file: !701, line: 56, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !701, line: 56, flags: DIFlagFwdDecl)
!741 = !{!742}
!742 = !DISubrange(count: -1)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !675, file: !42, line: 951, baseType: !744, size: 32, offset: 128)
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !701, line: 9, baseType: !57, size: 32, elements: !745)
!745 = !{!746, !747, !748, !749, !750}
!746 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!747 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!748 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!749 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!750 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !675, file: !42, line: 952, baseType: !49, size: 32, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !675, file: !42, line: 952, baseType: !49, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !675, file: !42, line: 953, baseType: !166, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !647, file: !42, line: 1012, baseType: !755, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !758, line: 110, size: 1472, elements: !759)
!758 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !776, !777, !778, !779, !780, !781, !894, !895, !896, !897, !898, !929, !932, !936, !944}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !757, file: !758, line: 111, baseType: !15, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !757, file: !758, line: 112, baseType: !49, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !757, file: !758, line: 113, baseType: !60, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !757, file: !758, line: 114, baseType: !49, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !757, file: !758, line: 115, baseType: !60, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !757, file: !758, line: 116, baseType: !49, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !757, file: !758, line: 117, baseType: !60, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !757, file: !758, line: 118, baseType: !49, size: 32, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !757, file: !758, line: 119, baseType: !60, size: 32, offset: 288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !757, file: !758, line: 120, baseType: !57, size: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !757, file: !758, line: 121, baseType: !771, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !772, line: 24, baseType: !773)
!772 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !772, line: 24, size: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !773, file: !772, line: 24, baseType: !118, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !757, file: !758, line: 122, baseType: !771, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !757, file: !758, line: 123, baseType: !771, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !757, file: !758, line: 124, baseType: !771, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !757, file: !758, line: 125, baseType: !771, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !757, file: !758, line: 127, baseType: !124, size: 8, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !757, file: !758, line: 129, baseType: !782, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !784, line: 195, size: 1728, elements: !785)
!784 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!785 = !{!786, !787, !792, !797, !798, !801, !802, !809, !810, !811, !812, !815, !816, !817, !819, !820, !858, !879}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !783, file: !784, line: 196, baseType: !704, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !783, file: !784, line: 197, baseType: !788, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !784, line: 28, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 104, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !23, line: 20, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !25, line: 26, baseType: !166)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !784, line: 198, baseType: !793, size: 192, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !784, line: 198, size: 192, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !793, file: !784, line: 199, baseType: !28, size: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !793, file: !784, line: 200, baseType: !449, size: 192, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !783, file: !784, line: 205, baseType: !425, size: 320, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !783, file: !784, line: 206, baseType: !799, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !784, line: 206, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !783, file: !784, line: 207, baseType: !273, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !784, line: 208, baseType: !803, size: 64, offset: 704)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !784, line: 208, size: 64, elements: !804)
!804 = !{!805, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !803, file: !784, line: 209, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !807, line: 8, baseType: !24)
!807 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!808 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !803, file: !784, line: 210, baseType: !806, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !783, file: !784, line: 212, baseType: !806, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !783, file: !784, line: 213, baseType: !49, size: 32, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !783, file: !784, line: 214, baseType: !60, size: 32, offset: 864)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !783, file: !784, line: 215, baseType: !813, size: 32, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !784, line: 31, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 110, baseType: !114)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !783, file: !784, line: 216, baseType: !46, size: 16, offset: 928)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !783, file: !784, line: 217, baseType: !46, size: 16, offset: 944)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !783, file: !784, line: 221, baseType: !818, size: 16, offset: 960)
!818 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !784, line: 228, baseType: !249, size: 64, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !784, line: 245, baseType: !821, size: 320, offset: 1088)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !784, line: 245, size: 320, elements: !822)
!822 = !{!823, !850}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !821, file: !784, line: 246, baseType: !824, size: 320)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !784, line: 114, size: 320, elements: !825)
!825 = !{!826, !827, !839, !842, !849}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !824, file: !784, line: 116, baseType: !249, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !784, line: 117, baseType: !828, size: 64, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !784, line: 117, size: 64, elements: !829)
!829 = !{!830, !838}
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !784, line: 118, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !784, line: 118, size: 64, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !831, file: !784, line: 120, baseType: !178, size: 16)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !831, file: !784, line: 121, baseType: !835, size: 48, offset: 16)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 48, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 6)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !828, file: !784, line: 127, baseType: !249, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !784, line: 129, baseType: !840, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !784, line: 102, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !824, file: !784, line: 130, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !784, line: 108, size: 192, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !844, file: !784, line: 109, baseType: !553, size: 128, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !844, file: !784, line: 110, baseType: !704, size: 32, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !844, file: !784, line: 111, baseType: !549, size: 8, offset: 160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !824, file: !784, line: 131, baseType: !203, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !784, line: 247, baseType: !851, size: 320)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !784, line: 247, size: 320, elements: !852)
!852 = !{!853, !854, !855, !856, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !851, file: !784, line: 248, baseType: !249, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !851, file: !784, line: 249, baseType: !249, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !851, file: !784, line: 250, baseType: !840, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !851, file: !784, line: 251, baseType: !843, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !851, file: !784, line: 252, baseType: !229, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !784, line: 260, baseType: !859, size: 256, offset: 1408)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !784, line: 260, size: 256, elements: !860)
!860 = !{!861, !867}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !859, file: !784, line: 261, baseType: !862, size: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !784, line: 134, size: 256, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !862, file: !784, line: 135, baseType: !273, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !862, file: !784, line: 136, baseType: !866, size: 256)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !722)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !784, line: 262, baseType: !868, size: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !784, line: 262, size: 256, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !868, file: !784, line: 264, baseType: !28, size: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !868, file: !784, line: 265, baseType: !872, size: 128, offset: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !873, line: 22, size: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!874 = !{!875, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !872, file: !873, line: 23, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !873, line: 23, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !872, file: !873, line: 24, baseType: !249, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !783, file: !784, line: 280, baseType: !880, size: 64, offset: 1664)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !784, line: 176, size: 192, elements: !882)
!882 = !{!883, !892, !893}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !881, file: !784, line: 177, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !784, line: 171, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!166, !782, !888, !890, !782}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !881, file: !784, line: 178, baseType: !782, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !881, file: !784, line: 179, baseType: !840, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !757, file: !758, line: 130, baseType: !782, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !757, file: !758, line: 131, baseType: !782, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !757, file: !758, line: 132, baseType: !782, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !757, file: !758, line: 135, baseType: !273, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !757, file: !758, line: 137, baseType: !899, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !901, line: 14, size: 1088, elements: !902)
!901 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!902 = !{!903, !904, !913, !914, !915, !916, !917, !918}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !900, file: !901, line: 15, baseType: !704, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !900, file: !901, line: 17, baseType: !905, size: 320, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !906, line: 22, size: 320, elements: !907)
!906 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!907 = !{!908, !909, !910, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !906, line: 23, baseType: !436, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !905, file: !906, line: 24, baseType: !22, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !905, file: !906, line: 26, baseType: !28, size: 128, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !905, file: !906, line: 28, baseType: !912, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !900, file: !901, line: 19, baseType: !249, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !900, file: !901, line: 20, baseType: !15, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !900, file: !901, line: 23, baseType: !717, size: 128, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !900, file: !901, line: 24, baseType: !49, size: 32, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !900, file: !901, line: 29, baseType: !15, size: 64, offset: 704)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !900, file: !901, line: 36, baseType: !919, size: 320, offset: 768)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !920, line: 15, size: 320, elements: !921)
!920 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !919, file: !920, line: 16, baseType: !436, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !919, file: !920, line: 18, baseType: !166, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !919, file: !920, line: 19, baseType: !166, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !919, file: !920, line: 20, baseType: !166, size: 32, offset: 96)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !919, file: !920, line: 21, baseType: !166, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !919, file: !920, line: 22, baseType: !249, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !919, file: !920, line: 23, baseType: !249, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !757, file: !758, line: 138, baseType: !930, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !468, line: 901, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !757, file: !758, line: 139, baseType: !933, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !935, line: 16, flags: DIFlagFwdDecl)
!935 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!936 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !757, file: !758, line: 140, baseType: !937, size: 64, offset: 1280)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !758, line: 25, size: 64, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !938, file: !758, line: 26, baseType: !162, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !938, file: !758, line: 27, baseType: !166, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !938, file: !758, line: 28, baseType: !943, offset: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !741)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !758, line: 142, baseType: !945, size: 128, offset: 1344)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !757, file: !758, line: 142, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !945, file: !758, line: 143, baseType: !166, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !945, file: !758, line: 144, baseType: !553, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !647, file: !42, line: 1013, baseType: !950, size: 256, offset: 960)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 970, size: 256, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !950, file: !42, line: 971, baseType: !249, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !950, file: !42, line: 972, baseType: !57, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !950, file: !42, line: 973, baseType: !57, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !950, file: !42, line: 974, baseType: !57, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !950, file: !42, line: 975, baseType: !57, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !950, file: !42, line: 976, baseType: !251, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !647, file: !42, line: 1014, baseType: !959, size: 128, offset: 1216)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !960, line: 8, size: 128, elements: !961)
!960 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !959, file: !960, line: 9, baseType: !234, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !959, file: !960, line: 10, baseType: !80, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !647, file: !42, line: 1015, baseType: !40, size: 64, offset: 1344)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !647, file: !42, line: 1016, baseType: !966, size: 64, offset: 1408)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1914, size: 2112, elements: !969)
!969 = !{!970, !971, !975, !980, !984, !1150, !1151, !1157, !1170, !1178, !1182, !1183, !1187, !1188, !1192, !1197, !1198, !1202, !1206, !1212, !1213, !1217, !1218, !1225, !1229, !1233, !1239, !1243, !1249, !1253, !1257, !1258, !1264}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !968, file: !42, line: 1915, baseType: !279, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !968, file: !42, line: 1916, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!251, !646, !251, !166}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !968, file: !42, line: 1917, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!371, !646, !229, !384, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !968, file: !42, line: 1918, baseType: !981, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!371, !646, !203, !384, !979}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !968, file: !42, line: 1919, baseType: !985, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!371, !988, !1093}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 373, size: 384, elements: !990)
!990 = !{!991, !992, !993, !997, !998, !999, !1000}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !989, file: !42, line: 374, baseType: !646, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !989, file: !42, line: 375, baseType: !251, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !989, file: !42, line: 376, baseType: !994, size: 64, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !988, !374}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !989, file: !42, line: 377, baseType: !273, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !989, file: !42, line: 378, baseType: !166, size: 32, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !989, file: !42, line: 379, baseType: !178, size: 16, offset: 288)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !42, line: 380, baseType: !1001, size: 64, offset: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !42, line: 380, size: 64, elements: !1002)
!1002 = !{!1003, !1089}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1001, file: !42, line: 386, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1006, line: 998, size: 448, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1007 = !{!1008, !1075, !1076}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1005, file: !1006, line: 999, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !468, line: 293, size: 1536, elements: !1011)
!1011 = !{!1012, !1042, !1056}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !468, line: 295, baseType: !1013, size: 512)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !468, line: 295, size: 512, elements: !1014)
!1014 = !{!1015, !1041}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !468, line: 296, baseType: !1016, size: 448)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !468, line: 296, size: 448, elements: !1017)
!1017 = !{!1018, !1019, !1028, !1029, !1030, !1039, !1040}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !468, line: 298, baseType: !249, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !468, line: 299, baseType: !1020, size: 128, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !468, line: 299, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1020, file: !468, line: 300, baseType: !28, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !468, line: 302, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !468, line: 302, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1024, file: !468, line: 303, baseType: !273, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1024, file: !468, line: 305, baseType: !57, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1016, file: !468, line: 310, baseType: !412, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1016, file: !468, line: 311, baseType: !249, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !468, line: 312, baseType: !1031, size: 64, offset: 320)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !468, line: 312, size: 64, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1031, file: !468, line: 313, baseType: !273, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1031, file: !468, line: 314, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !468, line: 257, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !468, line: 255, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1036, file: !468, line: 256, baseType: !249, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1016, file: !468, line: 316, baseType: !162, size: 32, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1016, file: !468, line: 317, baseType: !162, size: 32, offset: 416)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1013, file: !468, line: 323, baseType: !467, size: 512, align: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !468, line: 325, baseType: !1043, size: 512, offset: 512)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !468, line: 325, size: 512, elements: !1044)
!1044 = !{!1045, !1055}
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !468, line: 326, baseType: !1046, size: 320)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !468, line: 326, size: 320, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1046, file: !468, line: 327, baseType: !249, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1046, file: !468, line: 328, baseType: !249, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1046, file: !468, line: 329, baseType: !249, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1046, file: !468, line: 331, baseType: !162, size: 32, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1046, file: !468, line: 332, baseType: !162, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1046, file: !468, line: 333, baseType: !162, size: 32, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1046, file: !468, line: 335, baseType: !57, size: 32, offset: 288)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1043, file: !468, line: 339, baseType: !467, size: 512, align: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !468, line: 341, baseType: !1057, size: 512, offset: 1024)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !468, line: 341, size: 512, elements: !1058)
!1058 = !{!1059, !1068, !1074}
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !468, line: 342, baseType: !1060, size: 384)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !468, line: 342, size: 384, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1060, file: !468, line: 343, baseType: !249, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1060, file: !468, line: 344, baseType: !249, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1060, file: !468, line: 346, baseType: !273, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1060, file: !468, line: 347, baseType: !273, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1060, file: !468, line: 348, baseType: !273, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1060, file: !468, line: 349, baseType: !273, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !468, line: 352, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !468, line: 352, size: 256, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1069, file: !468, line: 353, baseType: !249, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1069, file: !468, line: 354, baseType: !249, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1069, file: !468, line: 356, baseType: !28, size: 128, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1057, file: !468, line: 359, baseType: !467, size: 512, align: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1005, file: !1006, line: 1000, baseType: !166, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1005, file: !1006, line: 1001, baseType: !1077, size: 320, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !727, line: 14, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !727, line: 30, size: 320, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1088}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1078, file: !727, line: 31, baseType: !57, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1078, file: !727, line: 32, baseType: !273, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1078, file: !727, line: 33, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !727, line: 16, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!166, !1087, !57, !166, !273}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1078, file: !727, line: 34, baseType: !28, size: 128, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1001, file: !42, line: 395, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!371, !273}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1095, line: 41, size: 320, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1107, !1145}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1094, file: !1095, line: 42, baseType: !171, size: 8)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1094, file: !1095, line: 43, baseType: !549, size: 8, offset: 8)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1094, file: !1095, line: 44, baseType: !549, size: 8, offset: 16)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1094, file: !1095, line: 45, baseType: !549, size: 8, offset: 24)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1094, file: !1095, line: 46, baseType: !549, size: 8, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 47, baseType: !1103, size: 64, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 47, size: 64, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1103, file: !1095, line: 48, baseType: !384, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1103, file: !1095, line: 49, baseType: !166, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 61, baseType: !1108, size: 128, offset: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 61, size: 128, elements: !1109)
!1109 = !{!1110, !1116}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1108, file: !1095, line: 67, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1112, line: 17, size: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1111, file: !1112, line: 19, baseType: !273, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1111, file: !1112, line: 20, baseType: !385, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !1095, line: 68, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !1095, line: 68, size: 128, elements: !1118)
!1118 = !{!1119, !1144}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !1095, line: 69, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !1095, line: 69, size: 64, elements: !1121)
!1121 = !{!1122, !1125, !1132, !1141, !1143}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1120, file: !1095, line: 71, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1120, file: !1095, line: 72, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1095, line: 17, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1128, file: !1095, line: 18, baseType: !273, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1128, file: !1095, line: 19, baseType: !384, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1120, file: !1095, line: 73, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1136, line: 31, size: 128, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1137 = !{!1138, !1139, !1140}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1135, file: !1136, line: 32, baseType: !466, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1135, file: !1136, line: 33, baseType: !57, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1135, file: !1136, line: 34, baseType: !57, size: 32, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1120, file: !1095, line: 74, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1120, file: !1095, line: 75, baseType: !273, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1117, file: !1095, line: 77, baseType: !384, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 80, baseType: !1146, size: 64, offset: 256)
!1146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 80, size: 64, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1146, file: !1095, line: 81, baseType: !249, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1146, file: !1095, line: 82, baseType: !251, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !968, file: !42, line: 1920, baseType: !985, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !968, file: !42, line: 1921, baseType: !1152, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!166, !988, !1155, !57}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !42, line: 53, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !968, file: !42, line: 1923, baseType: !1158, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!166, !646, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1858, size: 128, elements: !1163)
!1163 = !{!1164, !1169}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1162, file: !42, line: 1859, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1855, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!549, !1161, !203, !166, !251, !118, !57}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1162, file: !42, line: 1860, baseType: !251, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !968, file: !42, line: 1924, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1174, !646, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1175, line: 59, baseType: !57)
!1175 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !968, file: !42, line: 1925, baseType: !1179, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!374, !646, !57, !249}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !968, file: !42, line: 1926, baseType: !1179, size: 64, offset: 640)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !968, file: !42, line: 1927, baseType: !1184, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!166, !646, !605}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !968, file: !42, line: 1928, baseType: !249, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !968, file: !42, line: 1929, baseType: !1189, size: 64, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!166, !40, !646}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !968, file: !42, line: 1930, baseType: !1193, size: 64, offset: 896)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!166, !646, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1061, baseType: !273)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !968, file: !42, line: 1931, baseType: !1189, size: 64, offset: 960)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !968, file: !42, line: 1932, baseType: !1199, size: 64, offset: 1024)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!166, !646, !251, !251, !166}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !968, file: !42, line: 1933, baseType: !1203, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!166, !166, !646, !166}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !968, file: !42, line: 1934, baseType: !1207, size: 64, offset: 1152)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!166, !646, !166, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1063, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !968, file: !42, line: 1935, baseType: !643, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !968, file: !42, line: 1936, baseType: !1214, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!166, !166}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !968, file: !42, line: 1937, baseType: !1207, size: 64, offset: 1344)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !968, file: !42, line: 1938, baseType: !1219, size: 64, offset: 1408)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!371, !1222, !646, !979, !384, !57}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1224, line: 59, flags: DIFlagFwdDecl)
!1224 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !968, file: !42, line: 1939, baseType: !1226, size: 64, offset: 1472)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!371, !646, !979, !1222, !384, !57}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !968, file: !42, line: 1940, baseType: !1230, size: 64, offset: 1536)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !646}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !968, file: !42, line: 1941, baseType: !1234, size: 64, offset: 1600)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!166, !646, !166, !1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !968, file: !42, line: 1942, baseType: !1240, size: 64, offset: 1664)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!374, !646, !166, !251, !251}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !968, file: !42, line: 1944, baseType: !1244, size: 64, offset: 1728)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !1247, !646}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1224, line: 66, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !968, file: !42, line: 1948, baseType: !1250, size: 64, offset: 1792)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!371, !646, !251, !646, !251, !384, !57}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !968, file: !42, line: 1950, baseType: !1254, size: 64, offset: 1856)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!251, !646, !251, !646, !251, !251, !57}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !968, file: !42, line: 1953, baseType: !1199, size: 64, offset: 1920)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !968, file: !42, line: 1954, baseType: !1259, size: 64, offset: 1984)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!166, !1262, !57}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !42, line: 1911, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !968, file: !42, line: 1955, baseType: !1265, size: 64, offset: 2048)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!166, !1262, !1155, !57}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !647, file: !42, line: 1018, baseType: !118, size: 64, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !647, file: !42, line: 1020, baseType: !273, size: 64, offset: 1536)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !647, file: !42, line: 1023, baseType: !273, size: 64, offset: 1600)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !647, file: !42, line: 1027, baseType: !1272, size: 64, offset: 1664)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !647, file: !42, line: 1029, baseType: !412, size: 64, offset: 1728)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !647, file: !42, line: 1030, baseType: !1275, size: 32, offset: 1792)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1276, line: 8, baseType: !114)
!1276 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !647, file: !42, line: 1031, baseType: !1275, size: 32, offset: 1824)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !622, file: !468, line: 756, baseType: !249, size: 64, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !622, file: !468, line: 757, baseType: !249, size: 64, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !622, file: !468, line: 760, baseType: !249, size: 64, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !622, file: !468, line: 761, baseType: !249, size: 64, offset: 896)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !622, file: !468, line: 763, baseType: !249, size: 64, offset: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !622, file: !468, line: 764, baseType: !1284, size: 64, offset: 1024)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1286, line: 299, baseType: !1287)
!1286 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 299, size: 64, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1287, file: !1286, line: 299, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1291, line: 18, baseType: !249)
!1291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !622, file: !468, line: 773, baseType: !162, size: 32, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !622, file: !468, line: 785, baseType: !162, size: 32, offset: 1120)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !622, file: !468, line: 795, baseType: !1295, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !468, line: 726, size: 128, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1296, file: !468, line: 727, baseType: !118, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1296, file: !468, line: 728, baseType: !166, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !622, file: !468, line: 801, baseType: !249, size: 64, offset: 1216)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !622, file: !468, line: 804, baseType: !15, size: 64, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !622, file: !468, line: 806, baseType: !166, size: 32, offset: 1344)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !622, file: !468, line: 808, baseType: !142, size: 32, offset: 1376)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !622, file: !468, line: 823, baseType: !425, size: 320, offset: 1408)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !622, file: !468, line: 825, baseType: !28, size: 128, offset: 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !622, file: !468, line: 845, baseType: !166, size: 32, offset: 1856)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !622, file: !468, line: 849, baseType: !249, size: 64, offset: 1920)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !622, file: !468, line: 850, baseType: !249, size: 64, offset: 1984)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !622, file: !468, line: 852, baseType: !249, size: 64, offset: 2048)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !622, file: !468, line: 853, baseType: !249, size: 64, offset: 2112)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !622, file: !468, line: 854, baseType: !17, size: 64, offset: 2176)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !622, file: !468, line: 855, baseType: !249, size: 64, offset: 2240)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !622, file: !468, line: 856, baseType: !249, size: 64, offset: 2304)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !622, file: !468, line: 857, baseType: !249, size: 64, offset: 2368)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !622, file: !468, line: 858, baseType: !249, size: 64, offset: 2432)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !622, file: !468, line: 865, baseType: !91, size: 32, offset: 2496)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !622, file: !468, line: 867, baseType: !142, size: 32, offset: 2528)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !622, file: !468, line: 869, baseType: !249, size: 64, offset: 2560)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !622, file: !468, line: 869, baseType: !249, size: 64, offset: 2624)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !622, file: !468, line: 869, baseType: !249, size: 64, offset: 2688)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !622, file: !468, line: 869, baseType: !249, size: 64, offset: 2752)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !622, file: !468, line: 870, baseType: !249, size: 64, offset: 2816)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !622, file: !468, line: 870, baseType: !249, size: 64, offset: 2880)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !622, file: !468, line: 870, baseType: !249, size: 64, offset: 2944)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !622, file: !468, line: 871, baseType: !249, size: 64, offset: 3008)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !622, file: !468, line: 871, baseType: !249, size: 64, offset: 3072)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !622, file: !468, line: 871, baseType: !249, size: 64, offset: 3136)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !622, file: !468, line: 871, baseType: !249, size: 64, offset: 3200)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !622, file: !468, line: 873, baseType: !1330, size: 3328, offset: 3264)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 3328, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 52)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !622, file: !468, line: 875, baseType: !1334, size: 1280, offset: 6592)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 1280, elements: !722)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !622, file: !468, line: 877, baseType: !1336, size: 64, offset: 7872)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !468, line: 877, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !622, file: !468, line: 880, baseType: !1339, size: 1088, offset: 7936)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1340, line: 72, baseType: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 23, size: 1088, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1350, !1351, !1352, !1353, !1380, !1381, !1382}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1341, file: !1340, line: 28, baseType: !118, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1341, file: !1340, line: 38, baseType: !17, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1341, file: !1340, line: 40, baseType: !249, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1341, file: !1340, line: 43, baseType: !425, size: 320, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1341, file: !1340, line: 44, baseType: !1348, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1340, line: 44, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !1340, line: 48, baseType: !249, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !1340, line: 59, baseType: !665, size: 256, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1341, file: !1340, line: 60, baseType: !273, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1341, file: !1340, line: 61, baseType: !1354, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1357, line: 13, size: 1216, elements: !1358)
!1357 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1356, file: !1357, line: 14, baseType: !273, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1356, file: !1357, line: 15, baseType: !249, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1356, file: !1357, line: 17, baseType: !249, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1356, file: !1357, line: 17, baseType: !249, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1356, file: !1357, line: 18, baseType: !249, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1356, file: !1357, line: 18, baseType: !249, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1356, file: !1357, line: 19, baseType: !1366, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1356, file: !1357, line: 21, baseType: !374, size: 64, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1356, file: !1357, line: 23, baseType: !374, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1356, file: !1357, line: 24, baseType: !374, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1356, file: !1357, line: 25, baseType: !374, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1356, file: !1357, line: 26, baseType: !374, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1356, file: !1357, line: 27, baseType: !374, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1356, file: !1357, line: 28, baseType: !374, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1356, file: !1357, line: 29, baseType: !374, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1356, file: !1357, line: 30, baseType: !374, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1356, file: !1357, line: 31, baseType: !374, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1356, file: !1357, line: 32, baseType: !374, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1356, file: !1357, line: 33, baseType: !374, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1341, file: !1340, line: 63, baseType: !162, size: 32, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1341, file: !1340, line: 69, baseType: !178, size: 16, offset: 1056)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1341, file: !1340, line: 70, baseType: !1383, size: 16, offset: 1072)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !23, line: 18, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !25, line: 23, baseType: !818)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !468, line: 882, baseType: !249, size: 64, offset: 9024)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !622, file: !468, line: 885, baseType: !142, size: 32, offset: 9088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !622, file: !468, line: 886, baseType: !1388, size: 64, offset: 9152)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !468, line: 732, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !622, file: !468, line: 901, baseType: !930, size: 64, offset: 9216)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !622, file: !468, line: 904, baseType: !646, size: 64, offset: 9280)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !622, file: !468, line: 906, baseType: !1393, size: 64, offset: 9344)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !468, line: 906, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !622, file: !468, line: 930, baseType: !162, size: 32, offset: 9408)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !622, file: !468, line: 933, baseType: !162, size: 32, offset: 9440)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !622, file: !468, line: 935, baseType: !1398, size: 64, offset: 9472)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1399, line: 103, size: 64, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1398, file: !1399, line: 104, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1399, line: 101, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !622, file: !468, line: 940, baseType: !15, size: 64, offset: 9536)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !622, file: !468, line: 942, baseType: !11, size: 256, offset: 9600)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !619, file: !468, line: 986, baseType: !1407, offset: 10240)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !741)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !606, file: !468, line: 640, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1286, line: 297, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1286, line: 297, size: 64, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1410, file: !1286, line: 297, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1291, line: 19, baseType: !249)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !468, line: 646, baseType: !1415, size: 64, offset: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !468, line: 646, size: 64, elements: !1416)
!1416 = !{!1417, !1420}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1415, file: !468, line: 647, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !468, line: 542, baseType: !249)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1415, file: !468, line: 648, baseType: !1419, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !606, file: !468, line: 666, baseType: !166, size: 32, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !606, file: !468, line: 667, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !468, line: 579, size: 320, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !468, line: 580, baseType: !425, size: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !606, file: !468, line: 670, baseType: !549, size: 8, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !606, file: !468, line: 681, baseType: !1429, size: 256, offset: 512)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !606, file: !468, line: 678, size: 256, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1429, file: !468, line: 679, baseType: !449, size: 192, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1429, file: !468, line: 680, baseType: !249, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !606, file: !468, line: 689, baseType: !28, size: 128, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !606, file: !468, line: 691, baseType: !1435, size: 64, offset: 896)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !468, line: 691, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !606, file: !468, line: 694, baseType: !1438, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !599, line: 563, size: 1024, elements: !1441)
!1441 = !{!1442, !1446, !1447, !1451, !1455, !1459, !1460, !1464, !1468, !1472, !1473, !1474, !1478, !1482, !1488, !1492}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1440, file: !599, line: 564, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !605}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1440, file: !599, line: 569, baseType: !1443, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1440, file: !599, line: 571, baseType: !1448, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!166, !605, !249}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1440, file: !599, line: 572, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!166, !605}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1440, file: !599, line: 578, baseType: !1456, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!166, !605, !249, !249, !249}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1440, file: !599, line: 580, baseType: !593, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1440, file: !599, line: 581, baseType: !1461, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!596, !597, !57}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1440, file: !599, line: 582, baseType: !1465, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!596, !597, !249, !249}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1440, file: !599, line: 584, baseType: !1469, size: 64, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!249, !605}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1440, file: !599, line: 588, baseType: !593, size: 64, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1440, file: !599, line: 591, baseType: !593, size: 64, offset: 640)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1440, file: !599, line: 597, baseType: !1475, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!166, !605, !249, !273, !166, !166}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1440, file: !599, line: 603, baseType: !1479, size: 64, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!203, !605}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1440, file: !599, line: 613, baseType: !1483, size: 64, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!166, !605, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !468, line: 717, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1440, file: !599, line: 625, baseType: !1489, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1486, !605, !249}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1440, file: !599, line: 633, baseType: !1493, size: 64, offset: 960)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!466, !605, !249}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !606, file: !468, line: 697, baseType: !249, size: 64, offset: 1024)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !606, file: !468, line: 699, baseType: !646, size: 64, offset: 1088)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !606, file: !468, line: 700, baseType: !273, size: 64, offset: 1152)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !606, file: !468, line: 711, baseType: !15, size: 64, offset: 1216)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !606, file: !468, line: 717, baseType: !1486, size: 64, offset: 1280)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !606, file: !468, line: 722, baseType: !1502, offset: 1344)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !468, line: 570, elements: !639)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !602, file: !599, line: 515, baseType: !422, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !602, file: !599, line: 516, baseType: !249, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !602, file: !599, line: 517, baseType: !249, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !602, file: !599, line: 518, baseType: !249, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !599, line: 520, baseType: !1508, size: 32, offset: 320)
!1508 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !468, line: 1325, baseType: !57, size: 32, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1510 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1511 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1512 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1513 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1514 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1515 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1516 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1517 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1518 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1519 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1520 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1521 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1522 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !598, file: !599, line: 522, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1291, line: 22, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 22, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1526, file: !1291, line: 22, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1291, line: 15, baseType: !249)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !598, file: !599, line: 524, baseType: !1531, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1286, line: 372, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 372, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1533, file: !1286, line: 372, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1291, line: 16, baseType: !249)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !599, line: 527, baseType: !1538, size: 64, offset: 512)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !599, line: 527, size: 64, elements: !1539)
!1539 = !{!1540, !1546}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1538, file: !599, line: 528, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1291, line: 21, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1291, line: 21, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1542, file: !1291, line: 21, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1291, line: 14, baseType: !249)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1538, file: !599, line: 529, baseType: !1525, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !598, file: !599, line: 534, baseType: !466, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !598, file: !599, line: 535, baseType: !466, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !598, file: !599, line: 541, baseType: !1550, size: 64, offset: 704)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !598, file: !599, line: 545, baseType: !1552, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !598, file: !599, line: 549, baseType: !1554, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1286, line: 520, baseType: !466)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !586, file: !519, line: 100, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!166, !517, !249, !249, !166}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !518, file: !519, line: 134, baseType: !273, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !518, file: !519, line: 135, baseType: !166, size: 32, offset: 1024)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !519, line: 136, baseType: !1562, size: 128, offset: 1088)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !519, line: 136, size: 128, elements: !1563)
!1563 = !{!1564, !1570}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1562, file: !519, line: 137, baseType: !1565, size: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1566, line: 6, size: 128, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1565, file: !1566, line: 7, baseType: !118, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1565, file: !1566, line: 8, baseType: !118, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !519, line: 138, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !519, line: 138, elements: !1572)
!1572 = !{!1573, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1571, file: !519, line: 138, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !519, line: 138, elements: !639)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1571, file: !519, line: 138, baseType: !1576)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, elements: !741)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !514, file: !468, line: 147, baseType: !273, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !472, file: !468, line: 161, baseType: !553, size: 128, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !468, line: 164, baseType: !1580, size: 32, offset: 384)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !468, line: 164, size: 32, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1580, file: !468, line: 169, baseType: !162, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1580, file: !468, line: 177, baseType: !57, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !467, file: !468, line: 181, baseType: !162, size: 32, offset: 416)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !1587, line: 42, size: 384, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1586, file: !1587, line: 43, baseType: !374, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1586, file: !1587, line: 45, baseType: !374, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1586, file: !1587, line: 52, baseType: !251, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1586, file: !1587, line: 53, baseType: !251, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1586, file: !1587, line: 55, baseType: !1594, size: 32, offset: 256)
!1594 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !1587, line: 32, baseType: !57, size: 32, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!1597 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1586, file: !1587, line: 57, baseType: !57, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1586, file: !1587, line: 58, baseType: !57, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1586, file: !1587, line: 59, baseType: !57, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1586, file: !1587, line: 60, baseType: !57, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1586, file: !1587, line: 61, baseType: !57, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1586, file: !1587, line: 62, baseType: !57, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1586, file: !1587, line: 63, baseType: !57, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1586, file: !1587, line: 71, baseType: !57, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1586, file: !1587, line: 78, baseType: !1607, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !1587, line: 78, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !460, file: !42, line: 406, baseType: !1611, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!166, !646, !1009}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !460, file: !42, line: 409, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!166, !412, !1585}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !460, file: !42, line: 412, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!549, !412, !1009}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !460, file: !42, line: 414, baseType: !1623, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1006, line: 1276, size: 448, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1633, !1634, !1635, !1636, !1637}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1627, file: !1006, line: 1277, baseType: !646, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1627, file: !1006, line: 1278, baseType: !412, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1627, file: !1006, line: 1279, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1627, file: !1006, line: 1281, baseType: !249, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1627, file: !1006, line: 1282, baseType: !57, size: 32, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1627, file: !1006, line: 1283, baseType: !57, size: 32, offset: 288)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1627, file: !1006, line: 1284, baseType: !549, size: 8, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1627, file: !1006, line: 1285, baseType: !249, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !460, file: !42, line: 416, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!166, !646, !412, !251, !57, !1642, !1238}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !460, file: !42, line: 419, baseType: !1644, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!166, !646, !412, !251, !57, !57, !466, !273}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !460, file: !42, line: 424, baseType: !1648, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1651, !412, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !18, line: 131, baseType: !118)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !460, file: !42, line: 425, baseType: !1653, size: 64, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1009, !384, !384}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !460, file: !42, line: 426, baseType: !1657, size: 64, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!549, !1009, !422}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !460, file: !42, line: 427, baseType: !1661, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !1009}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !460, file: !42, line: 428, baseType: !985, size: 64, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !460, file: !42, line: 433, baseType: !1666, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!166, !412, !1009, !1009, !1669}
!1669 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1670, line: 15, baseType: !57, size: 32, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1673 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1674 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1675 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !460, file: !42, line: 435, baseType: !1677, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!166, !1009}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !460, file: !42, line: 436, baseType: !1681, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!549, !1009, !384, !384}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !460, file: !42, line: 438, baseType: !1685, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1009, !1688, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !460, file: !42, line: 439, baseType: !1690, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!166, !412, !466}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !460, file: !42, line: 442, baseType: !1694, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!166, !1697, !646, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 66, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !460, file: !42, line: 444, baseType: !1230, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !460, file: !42, line: 445, baseType: !1702, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!166, !988, !1093}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !42, line: 486, baseType: !249, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !413, file: !42, line: 487, baseType: !425, size: 320, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !413, file: !42, line: 488, baseType: !1275, size: 32, offset: 1280)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !413, file: !42, line: 489, baseType: !142, size: 32, offset: 1312)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !413, file: !42, line: 490, baseType: !28, size: 128, offset: 1344)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !413, file: !42, line: 491, baseType: !273, size: 64, offset: 1472)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !403, file: !365, line: 180, baseType: !1712, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!371, !646, !305, !402, !229, !251, !384}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !403, file: !365, line: 182, baseType: !1712, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !403, file: !365, line: 184, baseType: !1717, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!166, !646, !305, !402, !605}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !391, file: !365, line: 90, baseType: !1721, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !391, file: !365, line: 91, baseType: !1723, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !355, file: !300, line: 120, baseType: !1725, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !323}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1731, line: 39, size: 384, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1732 = !{!1733, !1739, !1743, !1747, !1753, !1757}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !1731, line: 40, baseType: !1734, size: 32)
!1734 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1731, line: 26, baseType: !57, size: 32, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1737 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1738 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1730, file: !1731, line: 41, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!549}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1730, file: !1731, line: 42, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!273}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1730, file: !1731, line: 43, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1366, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1731, line: 19, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1730, file: !1731, line: 44, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1366}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1730, file: !1731, line: 45, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !273}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !355, file: !300, line: 121, baseType: !1762, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!1366, !323}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !355, file: !300, line: 122, baseType: !1766, size: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !323, !1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !299, file: !300, line: 70, baseType: !1772, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1774, line: 190, size: 1152, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1867, !1868, !1869, !1870, !1871, !1874}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1773, file: !1774, line: 191, baseType: !162, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1773, file: !1774, line: 192, baseType: !162, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1773, file: !1774, line: 202, baseType: !1772, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !1774, line: 203, baseType: !203, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1773, file: !1774, line: 205, baseType: !449, size: 192, align: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1773, file: !1774, line: 207, baseType: !1366, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1773, file: !1774, line: 208, baseType: !57, size: 32, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 209, baseType: !1784, size: 256, offset: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 209, size: 256, elements: !1785)
!1785 = !{!1786, !1795, !1799}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1784, file: !1774, line: 210, baseType: !1787, size: 256)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1774, line: 153, size: 256, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1794}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1787, file: !1774, line: 154, baseType: !249, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1787, file: !1774, line: 156, baseType: !445, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1787, file: !1774, line: 162, baseType: !1792, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1774, line: 162, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1787, file: !1774, line: 167, baseType: !249, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1784, file: !1774, line: 211, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1774, line: 170, size: 64, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1796, file: !1774, line: 171, baseType: !1772, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1784, file: !1774, line: 212, baseType: !1800, size: 256)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1774, line: 174, size: 256, elements: !1801)
!1801 = !{!1802, !1862, !1865, !1866}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1800, file: !1774, line: 175, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1774, line: 271, size: 768, elements: !1806)
!1806 = !{!1807, !1827, !1831, !1835, !1839, !1843, !1847, !1851, !1852, !1853, !1854, !1858}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1805, file: !1774, line: 276, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!166, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1774, line: 251, size: 1216, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1812, file: !1774, line: 253, baseType: !1772, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1812, file: !1774, line: 254, baseType: !646, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1812, file: !1774, line: 255, baseType: !1247, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1812, file: !1774, line: 256, baseType: !273, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1812, file: !1774, line: 259, baseType: !665, size: 256, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1812, file: !1774, line: 260, baseType: !665, size: 256, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1812, file: !1774, line: 261, baseType: !166, size: 32, offset: 768)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1812, file: !1774, line: 262, baseType: !28, size: 128, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1812, file: !1774, line: 263, baseType: !229, size: 64, offset: 960)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1812, file: !1774, line: 265, baseType: !384, size: 64, offset: 1024)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1812, file: !1774, line: 266, baseType: !549, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1812, file: !1774, line: 267, baseType: !549, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1812, file: !1774, line: 268, baseType: !1438, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1805, file: !1774, line: 277, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1811}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1805, file: !1774, line: 290, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!166, !1247, !273}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1805, file: !1774, line: 292, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!273, !1247, !979}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1805, file: !1774, line: 293, baseType: !1840, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!273, !1247, !273, !979}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1805, file: !1774, line: 294, baseType: !1844, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1247, !273}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1805, file: !1774, line: 296, baseType: !1848, size: 64, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!371, !1811, !229, !384, !251}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1805, file: !1774, line: 306, baseType: !384, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1805, file: !1774, line: 313, baseType: !549, size: 8, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1805, file: !1774, line: 314, baseType: !1848, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1805, file: !1774, line: 317, baseType: !1855, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1174, !1811, !1176}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1805, file: !1774, line: 320, baseType: !1859, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!166, !1811, !605}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1800, file: !1774, line: 176, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1774, line: 35, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1800, file: !1774, line: 177, baseType: !251, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1800, file: !1774, line: 178, baseType: !1772, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1773, file: !1774, line: 215, baseType: !273, size: 64, offset: 768)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1773, file: !1774, line: 221, baseType: !118, size: 64, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 223, baseType: !46, size: 16, offset: 896)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1773, file: !1774, line: 224, baseType: !45, size: 16, offset: 912)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1773, file: !1774, line: 225, baseType: !1872, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1774, line: 36, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1773, file: !1774, line: 227, baseType: !553, size: 128, align: 64, offset: 1024)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !299, file: !300, line: 71, baseType: !1876, size: 32, offset: 448)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1877, line: 19, size: 32, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1876, file: !1877, line: 20, baseType: !704, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !299, file: !300, line: 73, baseType: !57, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !299, file: !300, line: 74, baseType: !57, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !299, file: !300, line: 75, baseType: !57, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !299, file: !300, line: 76, baseType: !57, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !299, file: !300, line: 77, baseType: !57, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !296, file: !281, line: 47, baseType: !279, size: 64, offset: 512)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !296, file: !281, line: 48, baseType: !305, size: 64, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !296, file: !281, line: 49, baseType: !1888, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !281, line: 49, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !296, file: !281, line: 50, baseType: !1891, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !280, file: !281, line: 418, baseType: !1893, size: 64, offset: 1408)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !281, line: 53, size: 448, elements: !1895)
!1895 = !{!1896, !1897, !1902, !1906, !1910, !1914}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1894, file: !281, line: 54, baseType: !376, size: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1894, file: !281, line: 55, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!371, !1893, !1901, !229}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1894, file: !281, line: 57, baseType: !1903, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!371, !1893, !1901, !203, !384}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1894, file: !281, line: 59, baseType: !1907, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !279, !203}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1894, file: !281, line: 60, baseType: !1911, size: 64, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!166, !279}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1894, file: !281, line: 61, baseType: !1915, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !279}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !280, file: !281, line: 419, baseType: !203, size: 64, offset: 1472)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !280, file: !281, line: 420, baseType: !203, size: 64, offset: 1536)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !280, file: !281, line: 421, baseType: !305, size: 64, offset: 1600)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !280, file: !281, line: 424, baseType: !1922, size: 64, offset: 1664)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !281, line: 424, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !280, file: !281, line: 425, baseType: !1926, size: 64, offset: 1728)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !280, file: !281, line: 426, baseType: !57, size: 32, offset: 1792)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !280, file: !281, line: 435, baseType: !665, size: 256, offset: 1856)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !280, file: !281, line: 437, baseType: !1931, size: 64, offset: 2112)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1933, line: 69, size: 320, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1934 = !{!1935, !1936, !1937, !1954, !1956, !1960, !1961}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1932, file: !1933, line: 70, baseType: !203, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1932, file: !1933, line: 71, baseType: !279, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1932, file: !1933, line: 72, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1933, line: 47, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1949, !1953}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1933, line: 49, baseType: !57, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1940, file: !1933, line: 51, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!166, !203, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1940, file: !1933, line: 53, baseType: !1950, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!166, !229, !1947}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1940, file: !1933, line: 55, baseType: !1758, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1932, file: !1933, line: 73, baseType: !1955, size: 16, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1932, file: !1933, line: 74, baseType: !1957, size: 8, offset: 208)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !23, line: 16, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !25, line: 20, baseType: !1959)
!1959 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !1933, line: 75, baseType: !171, size: 8, offset: 216)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !1933, line: 76, baseType: !1962, size: 64, offset: 256)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !1933, line: 76, size: 64, elements: !1963)
!1963 = !{!1964, !1965, !1972}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1962, file: !1933, line: 77, baseType: !273, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1962, file: !1933, line: 78, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1933, line: 86, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1968, file: !1933, line: 87, baseType: !57, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1968, file: !1933, line: 88, baseType: !229, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1962, file: !1933, line: 79, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1933, line: 92, size: 256, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1981, !1982}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1975, file: !1933, line: 94, baseType: !57, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1975, file: !1933, line: 95, baseType: !57, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1975, file: !1933, line: 96, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1975, file: !1933, line: 97, baseType: !1938, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1975, file: !1933, line: 98, baseType: !273, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !280, file: !281, line: 438, baseType: !57, size: 32, offset: 2176)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !280, file: !281, line: 441, baseType: !57, size: 32, offset: 2208)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !280, file: !281, line: 442, baseType: !1922, size: 64, offset: 2240)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !280, file: !281, line: 443, baseType: !1926, size: 64, offset: 2304)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !280, file: !281, line: 444, baseType: !549, size: 8, offset: 2368)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !280, file: !281, line: 451, baseType: !549, size: 8, offset: 2376)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !280, file: !281, line: 454, baseType: !57, size: 32, offset: 2400)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !280, file: !281, line: 455, baseType: !1991, size: 64, offset: 2432)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1993, line: 23, size: 96, elements: !1994)
!1993 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1994 = !{!1995, !1996, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1992, file: !1993, line: 24, baseType: !166, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1992, file: !1993, line: 24, baseType: !166, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1992, file: !1993, line: 24, baseType: !166, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !280, file: !281, line: 458, baseType: !1999, size: 64, offset: 2496)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!166}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !280, file: !281, line: 460, baseType: !2003, size: 4032, align: 512, offset: 2560)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2004, size: 4032, elements: !2020)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !281, line: 362, size: 576, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2004, file: !281, line: 363, baseType: !273, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2004, file: !281, line: 364, baseType: !57, size: 32, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2004, file: !281, line: 367, baseType: !2009, size: 448, offset: 128)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !281, line: 319, size: 448, elements: !2010)
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2009, file: !281, line: 320, baseType: !279, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2009, file: !281, line: 321, baseType: !2013, size: 384, offset: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2014, line: 40, size: 384, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2013, file: !2014, line: 41, baseType: !2017, size: 384, align: 64)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 384, align: 64, elements: !2018)
!2018 = !{!2019}
!2019 = !DISubrange(count: 2)
!2020 = !{!2021}
!2021 = !DISubrange(count: 7)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !280, file: !281, line: 463, baseType: !2023, size: 192, offset: 6592)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2024, line: 8, size: 192, elements: !2025)
!2024 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2025 = !{!2026, !2027, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2023, file: !2024, line: 10, baseType: !57, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2023, file: !2024, line: 11, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2023, file: !2024, line: 12, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2032, line: 59, size: 48, elements: !2033)
!2032 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2031, file: !2032, line: 60, baseType: !1383, size: 16)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2031, file: !2032, line: 61, baseType: !1383, size: 16, offset: 16)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2031, file: !2032, line: 63, baseType: !57, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2031, file: !2032, line: 64, baseType: !57, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2031, file: !2032, line: 65, baseType: !57, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2031, file: !2032, line: 66, baseType: !57, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !280, file: !281, line: 465, baseType: !249, size: 64, offset: 6784)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !280, file: !281, line: 469, baseType: !57, size: 32, offset: 6848)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !280, file: !281, line: 470, baseType: !28, size: 128, offset: 6912)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !280, file: !281, line: 471, baseType: !2044, size: 64, offset: 7040)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2046, line: 33, size: 96, elements: !2047)
!2046 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2047 = !{!2048, !2049, !2050, !2051}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2045, file: !2046, line: 37, baseType: !166, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2045, file: !2046, line: 43, baseType: !166, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2045, file: !2046, line: 45, baseType: !46, size: 16, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !2046, line: 47, baseType: !46, size: 16, offset: 80)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !280, file: !281, line: 476, baseType: !2053, size: 64, offset: 7104)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !281, line: 378, size: 256, elements: !2055)
!2055 = !{!2056, !2072, !2073, !2074}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2054, file: !281, line: 379, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2059, line: 204, baseType: !2060)
!2059 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2059, line: 197, size: 192, elements: !2061)
!2061 = !{!2062, !2064, !2065, !2066, !2068, !2070}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2060, file: !2059, line: 198, baseType: !2063, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2059, line: 21, baseType: !115)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2060, file: !2059, line: 199, baseType: !124, size: 8, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2060, file: !2059, line: 200, baseType: !124, size: 8, offset: 40)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2060, file: !2059, line: 201, baseType: !2067, size: 16, offset: 48)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2059, line: 17, baseType: !179)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2060, file: !2059, line: 202, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2059, line: 16, baseType: !119)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2060, file: !2059, line: 203, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2059, line: 22, baseType: !119)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2054, file: !281, line: 380, baseType: !57, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2054, file: !281, line: 381, baseType: !229, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2054, file: !281, line: 382, baseType: !229, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !280, file: !281, line: 477, baseType: !2054, size: 256, offset: 7168)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !280, file: !281, line: 480, baseType: !2077, size: 64, offset: 7424)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !281, line: 480, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !280, file: !281, line: 483, baseType: !2080, size: 64, offset: 7488)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !281, line: 483, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !280, file: !281, line: 488, baseType: !229, size: 64, offset: 7552)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !280, file: !281, line: 492, baseType: !273, size: 64, offset: 7616)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !280, file: !281, line: 493, baseType: !57, size: 32, offset: 7680)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !280, file: !281, line: 495, baseType: !273, size: 64, offset: 7744)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !280, file: !281, line: 496, baseType: !57, size: 32, offset: 7808)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !280, file: !281, line: 499, baseType: !57, size: 32, offset: 7840)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !280, file: !281, line: 500, baseType: !2089, size: 64, offset: 7872)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2091, line: 45, baseType: !2092)
!2091 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !280, file: !281, line: 503, baseType: !57, size: 32, offset: 7936)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !280, file: !281, line: 504, baseType: !2095, size: 64, offset: 8000)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2098, line: 96, size: 192, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2099 = !{!2100, !2101, !2155, !2158}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2097, file: !2098, line: 97, baseType: !57, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2097, file: !2098, line: 98, baseType: !2102, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2098, line: 24, size: 3072, elements: !2104)
!2104 = !{!2105, !2107, !2108, !2109, !2110, !2124, !2125, !2126, !2127, !2139, !2140, !2141, !2152, !2153, !2154}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2103, file: !2098, line: 26, baseType: !2106, size: 128)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !2018)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2103, file: !2098, line: 27, baseType: !2106, size: 128, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2103, file: !2098, line: 28, baseType: !166, size: 32, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2103, file: !2098, line: 31, baseType: !142, size: 32, align: 512, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2103, file: !2098, line: 32, baseType: !2111, size: 960, offset: 576)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2112, line: 206, size: 960, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2113 = !{!2114, !2115, !2118, !2120, !2121, !2123}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2111, file: !2112, line: 207, baseType: !556, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2111, file: !2112, line: 208, baseType: !2116, size: 256, offset: 64)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2117, size: 256, elements: !722)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2111, file: !2112, line: 209, baseType: !2119, size: 256, offset: 320)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !722)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2111, file: !2112, line: 213, baseType: !374, size: 64, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2111, file: !2112, line: 215, baseType: !2122, size: 256, offset: 640)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 256, elements: !722)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2111, file: !2112, line: 216, baseType: !171, size: 8, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2103, file: !2098, line: 33, baseType: !249, size: 64, offset: 1536)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2103, file: !2098, line: 34, baseType: !249, size: 64, offset: 1600)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2103, file: !2098, line: 35, baseType: !549, size: 8, offset: 1664)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2103, file: !2098, line: 36, baseType: !2128, size: 320, offset: 1728)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2129, line: 11, size: 320, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2130 = !{!2131, !2132, !2133, !2138}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2128, file: !2129, line: 16, baseType: !717, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2128, file: !2129, line: 17, baseType: !249, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2128, file: !2129, line: 18, baseType: !2134, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2128, file: !2129, line: 19, baseType: !114, size: 32, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2103, file: !2098, line: 37, baseType: !11, size: 256, offset: 2048)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2103, file: !2098, line: 38, baseType: !553, size: 128, align: 64, offset: 2304)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2103, file: !2098, line: 39, baseType: !2142, size: 64, offset: 2432)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2098, line: 49, size: 768, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2143, file: !2098, line: 50, baseType: !142, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2143, file: !2098, line: 51, baseType: !2119, size: 256, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2143, file: !2098, line: 53, baseType: !2119, size: 256, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2143, file: !2098, line: 54, baseType: !249, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2143, file: !2098, line: 55, baseType: !2142, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2143, file: !2098, line: 56, baseType: !166, size: 32, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2143, file: !2098, line: 57, baseType: !166, size: 32, offset: 736)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2103, file: !2098, line: 40, baseType: !249, size: 64, offset: 2496)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2103, file: !2098, line: 42, baseType: !166, size: 32, offset: 2560)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2103, file: !2098, line: 43, baseType: !2096, size: 64, offset: 2624)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2097, file: !2098, line: 99, baseType: !2156, offset: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2157, line: 211, elements: !639)
!2157 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2097, file: !2098, line: 100, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2098, line: 63, size: 3008, elements: !2161)
!2161 = !{!2162, !2163, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2193}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2160, file: !2098, line: 64, baseType: !2142, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2160, file: !2098, line: 65, baseType: !2164, size: 192, offset: 64)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2142, size: 192, elements: !340)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2160, file: !2098, line: 67, baseType: !166, size: 32, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2160, file: !2098, line: 68, baseType: !665, size: 256, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !2098, line: 69, baseType: !142, size: 32, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2160, file: !2098, line: 70, baseType: !665, size: 256, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2160, file: !2098, line: 71, baseType: !249, size: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2160, file: !2098, line: 72, baseType: !249, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2160, file: !2098, line: 73, baseType: !249, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2160, file: !2098, line: 74, baseType: !249, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2160, file: !2098, line: 75, baseType: !249, size: 64, offset: 1152)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2160, file: !2098, line: 76, baseType: !249, size: 64, offset: 1216)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2160, file: !2098, line: 77, baseType: !249, size: 64, offset: 1280)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2160, file: !2098, line: 78, baseType: !249, size: 64, offset: 1344)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2160, file: !2098, line: 79, baseType: !549, size: 8, offset: 1408)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2160, file: !2098, line: 80, baseType: !249, size: 64, offset: 1472)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2160, file: !2098, line: 81, baseType: !665, size: 256, offset: 1536)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2160, file: !2098, line: 82, baseType: !563, size: 256, offset: 1792)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2160, file: !2098, line: 84, baseType: !162, size: 32, offset: 2048)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2160, file: !2098, line: 87, baseType: !249, size: 64, offset: 2112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2160, file: !2098, line: 88, baseType: !249, size: 64, offset: 2176)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2160, file: !2098, line: 89, baseType: !2185, size: 704, offset: 2240)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !12, line: 111, size: 704, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2192}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2185, file: !12, line: 112, baseType: !11, size: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2185, file: !12, line: 113, baseType: !2128, size: 320, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2185, file: !12, line: 116, baseType: !2190, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2185, file: !12, line: 117, baseType: !166, size: 32, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2160, file: !2098, line: 90, baseType: !2096, size: 64, offset: 2944)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !280, file: !281, line: 515, baseType: !2195, size: 64, offset: 8064)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2197, line: 117, size: 128, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2198 = !{!2199, !2200, !2201}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2196, file: !2197, line: 118, baseType: !790, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2196, file: !2197, line: 119, baseType: !790, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2196, file: !2197, line: 120, baseType: !374, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !280, file: !281, line: 516, baseType: !57, size: 32, offset: 8128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !280, file: !281, line: 519, baseType: !57, size: 32, offset: 8160)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !280, file: !281, line: 520, baseType: !2205, size: 64, offset: 8192)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !280, file: !281, line: 523, baseType: !2207, size: 64, offset: 8256)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !281, line: 523, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !280, file: !281, line: 524, baseType: !57, size: 32, offset: 8320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !280, file: !281, line: 525, baseType: !2212, size: 64, offset: 8384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2215, line: 28, size: 192, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2214, file: !2215, line: 29, baseType: !203, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2214, file: !2215, line: 30, baseType: !203, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2214, file: !2215, line: 31, baseType: !249, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !280, file: !281, line: 526, baseType: !57, size: 32, offset: 8448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !280, file: !281, line: 533, baseType: !273, size: 64, offset: 8512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !280, file: !281, line: 534, baseType: !57, size: 32, offset: 8576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !280, file: !281, line: 535, baseType: !2224, size: 64, offset: 8640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !280, file: !281, line: 536, baseType: !57, size: 32, offset: 8704)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !280, file: !281, line: 539, baseType: !166, size: 32, offset: 8736)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !280, file: !281, line: 540, baseType: !2228, size: 64, offset: 8768)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2230, line: 32, size: 64, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2229, file: !2230, line: 33, baseType: !790, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2229, file: !2230, line: 34, baseType: !790, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !280, file: !281, line: 563, baseType: !28, size: 128, offset: 8832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !280, file: !281, line: 565, baseType: !28, size: 128, offset: 8960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !280, file: !281, line: 568, baseType: !2237, size: 64, offset: 9088)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !280, file: !281, line: 570, baseType: !162, size: 32, offset: 9152)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !42, line: 2382, baseType: !254, size: 64, offset: 448)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !255, file: !42, line: 2383, baseType: !713, size: 64, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !255, file: !42, line: 2385, baseType: !2244, offset: 576)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2157, line: 206, elements: !639)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !255, file: !42, line: 2386, baseType: !2244, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !255, file: !42, line: 2387, baseType: !2244, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !255, file: !42, line: 2388, baseType: !2248, offset: 576)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2244, elements: !340)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !255, file: !42, line: 2390, baseType: !2244, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !255, file: !42, line: 2391, baseType: !2244, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !255, file: !42, line: 2392, baseType: !2244, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !255, file: !42, line: 2393, baseType: !2244, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !241, file: !42, line: 1197, baseType: !2254, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 2057, size: 1664, elements: !2257)
!2257 = !{!2258, !2262, !2266, !2267, !2271, !2275, !2279, !2280, !2281, !2285, !2293, !2297, !2298, !2299, !2305, !2309, !2310, !2314, !2315, !2316, !2317, !2321, !2325, !2378, !2393, !2394}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2256, file: !42, line: 2058, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!40, !240}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2256, file: !42, line: 2059, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !40}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2256, file: !42, line: 2060, baseType: !2263, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2256, file: !42, line: 2062, baseType: !2268, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !40, !166}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2256, file: !42, line: 2063, baseType: !2272, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!166, !40, !1585}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2256, file: !42, line: 2064, baseType: !2276, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!166, !40}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2256, file: !42, line: 2065, baseType: !2263, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2256, file: !42, line: 2066, baseType: !275, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2256, file: !42, line: 2067, baseType: !2282, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!166, !240, !166}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2256, file: !42, line: 2068, baseType: !2286, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!166, !240, !2289}
!2289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !42, line: 2052, baseType: !57, size: 32, elements: !2290)
!2290 = !{!2291, !2292}
!2291 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2292 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2256, file: !42, line: 2069, baseType: !2294, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!166, !240}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2256, file: !42, line: 2070, baseType: !2286, size: 64, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2256, file: !42, line: 2071, baseType: !2294, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2256, file: !42, line: 2072, baseType: !2300, size: 64, offset: 832)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!166, !80, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 62, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2256, file: !42, line: 2073, baseType: !2306, size: 64, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!166, !240, !2028, !229}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2256, file: !42, line: 2074, baseType: !275, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2256, file: !42, line: 2076, baseType: !2311, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!166, !1247, !80}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2256, file: !42, line: 2077, baseType: !2311, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2256, file: !42, line: 2078, baseType: !2311, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2256, file: !42, line: 2079, baseType: !2311, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2256, file: !42, line: 2081, baseType: !2318, size: 64, offset: 1280)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!371, !240, !166, !229, !384, !251}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2256, file: !42, line: 2082, baseType: !2322, size: 64, offset: 1344)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!371, !240, !166, !203, !384, !251}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2256, file: !42, line: 2083, baseType: !2326, size: 64, offset: 1408)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!2329, !40}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2332, line: 296, size: 1664, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2363, !2364, !2365}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2331, file: !2332, line: 297, baseType: !717, size: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2331, file: !2332, line: 298, baseType: !28, size: 128, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2331, file: !2332, line: 299, baseType: !28, size: 128, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2331, file: !2332, line: 300, baseType: !28, size: 128, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2331, file: !2332, line: 301, baseType: !665, size: 256, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2331, file: !2332, line: 302, baseType: !142, size: 32, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2331, file: !2332, line: 303, baseType: !162, size: 32, offset: 800)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2331, file: !2332, line: 304, baseType: !240, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2331, file: !2332, line: 305, baseType: !2343, size: 64, offset: 896)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2332, line: 68, size: 64, elements: !2344)
!2344 = !{!2345, !2357}
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !2343, file: !2332, line: 69, baseType: !2346, size: 32)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !2332, line: 69, size: 32, elements: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2346, file: !2332, line: 70, baseType: !49, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2346, file: !2332, line: 71, baseType: !60, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2346, file: !2332, line: 72, baseType: !2351, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2352, line: 24, baseType: !2353)
!2352 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2352, line: 22, size: 32, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2353, file: !2352, line: 23, baseType: !2356, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2352, line: 20, baseType: !55)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2343, file: !2332, line: 74, baseType: !2358, size: 32, offset: 32)
!2358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2332, line: 54, baseType: !57, size: 32, elements: !2359)
!2359 = !{!2360, !2361, !2362}
!2360 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2361 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2362 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2331, file: !2332, line: 306, baseType: !251, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2331, file: !2332, line: 307, baseType: !249, size: 64, offset: 1024)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2331, file: !2332, line: 308, baseType: !2366, size: 576, offset: 1088)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2332, line: 205, size: 576, elements: !2367)
!2367 = !{!2368, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2366, file: !2332, line: 206, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2332, line: 66, baseType: !26)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2366, file: !2332, line: 207, baseType: !2369, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2366, file: !2332, line: 208, baseType: !2369, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2366, file: !2332, line: 209, baseType: !2369, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2366, file: !2332, line: 210, baseType: !2369, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2366, file: !2332, line: 211, baseType: !2369, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2366, file: !2332, line: 212, baseType: !2369, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2366, file: !2332, line: 213, baseType: !806, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2366, file: !2332, line: 214, baseType: !806, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2256, file: !42, line: 2085, baseType: !2379, size: 64, offset: 1472)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!374, !240, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2384, line: 15, size: 256, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2385 = !{!2386, !2387, !2388, !2389, !2390}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2383, file: !2384, line: 16, baseType: !422, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2383, file: !2384, line: 19, baseType: !166, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2383, file: !2384, line: 26, baseType: !249, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2383, file: !2384, line: 33, baseType: !249, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2383, file: !2384, line: 36, baseType: !2391, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !468, line: 33, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2256, file: !42, line: 2087, baseType: !2379, size: 64, offset: 1536)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2256, file: !42, line: 2089, baseType: !275, size: 64, offset: 1600)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !241, file: !42, line: 1198, baseType: !2396, size: 64, offset: 448)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2332, line: 324, size: 704, elements: !2399)
!2399 = !{!2400, !2404, !2408, !2412, !2413, !2414, !2415, !2416, !2421, !2426, !2430}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2398, file: !2332, line: 325, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!166, !2330}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2398, file: !2332, line: 326, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2330, !240, !166}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2398, file: !2332, line: 327, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2330}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2398, file: !2332, line: 328, baseType: !2401, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2398, file: !2332, line: 329, baseType: !2401, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2398, file: !2332, line: 330, baseType: !2401, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2398, file: !2332, line: 331, baseType: !2282, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2398, file: !2332, line: 334, baseType: !2417, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2420, !40}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2398, file: !2332, line: 335, baseType: !2422, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!166, !40, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2398, file: !2332, line: 337, baseType: !2427, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!166, !40, !2420}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2398, file: !2332, line: 339, baseType: !2431, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!166, !240, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !241, file: !42, line: 1199, baseType: !2436, size: 64, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2332, line: 430, size: 704, elements: !2439)
!2439 = !{!2440, !2446, !2447, !2451, !2452, !2453, !2468, !2491, !2495, !2496, !2519}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2438, file: !2332, line: 431, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!166, !240, !166, !166, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2438, file: !2332, line: 432, baseType: !2282, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2438, file: !2332, line: 433, baseType: !2448, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!166, !240, !57}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2438, file: !2332, line: 434, baseType: !2448, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2438, file: !2332, line: 435, baseType: !2282, size: 64, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2438, file: !2332, line: 436, baseType: !2454, size: 64, offset: 320)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!166, !240, !166, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2332, line: 417, size: 256, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2458, file: !2332, line: 418, baseType: !166, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2458, file: !2332, line: 419, baseType: !57, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2458, file: !2332, line: 420, baseType: !57, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2458, file: !2332, line: 422, baseType: !57, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2458, file: !2332, line: 423, baseType: !57, size: 32, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2458, file: !2332, line: 424, baseType: !57, size: 32, offset: 160)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2458, file: !2332, line: 425, baseType: !57, size: 32, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2458, file: !2332, line: 426, baseType: !57, size: 32, offset: 224)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2438, file: !2332, line: 437, baseType: !2469, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!166, !240, !2343, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2332, line: 345, size: 960, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2473, file: !2332, line: 346, baseType: !166, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2473, file: !2332, line: 347, baseType: !118, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2473, file: !2332, line: 348, baseType: !118, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2473, file: !2332, line: 349, baseType: !118, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2473, file: !2332, line: 350, baseType: !118, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2473, file: !2332, line: 351, baseType: !118, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2473, file: !2332, line: 352, baseType: !118, size: 64, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2473, file: !2332, line: 353, baseType: !22, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2473, file: !2332, line: 355, baseType: !22, size: 64, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2473, file: !2332, line: 356, baseType: !166, size: 32, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2473, file: !2332, line: 357, baseType: !166, size: 32, offset: 608)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2473, file: !2332, line: 358, baseType: !118, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2473, file: !2332, line: 359, baseType: !118, size: 64, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2473, file: !2332, line: 360, baseType: !118, size: 64, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2473, file: !2332, line: 361, baseType: !22, size: 64, offset: 832)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2473, file: !2332, line: 362, baseType: !166, size: 32, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2438, file: !2332, line: 438, baseType: !2492, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!166, !240, !2434, !2472}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2438, file: !2332, line: 440, baseType: !2469, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2438, file: !2332, line: 441, baseType: !2497, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!166, !240, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2332, line: 411, size: 1408, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2501, file: !2332, line: 412, baseType: !57, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2501, file: !2332, line: 413, baseType: !2505, size: 1344, offset: 64)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2506, size: 1344, elements: !340)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2332, line: 397, size: 448, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2518}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2506, file: !2332, line: 398, baseType: !57, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2506, file: !2332, line: 399, baseType: !57, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2506, file: !2332, line: 401, baseType: !57, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2506, file: !2332, line: 402, baseType: !57, size: 32, offset: 96)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2506, file: !2332, line: 403, baseType: !57, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2506, file: !2332, line: 404, baseType: !57, size: 32, offset: 160)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2506, file: !2332, line: 405, baseType: !57, size: 32, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2506, file: !2332, line: 406, baseType: !120, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2506, file: !2332, line: 407, baseType: !2517, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !18, line: 132, baseType: !118)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2506, file: !2332, line: 408, baseType: !2517, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2438, file: !2332, line: 442, baseType: !2448, size: 64, offset: 640)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !241, file: !42, line: 1200, baseType: !2521, size: 64, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 54, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !241, file: !42, line: 1201, baseType: !249, size: 64, offset: 640)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !241, file: !42, line: 1202, baseType: !249, size: 64, offset: 704)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !241, file: !42, line: 1203, baseType: !249, size: 64, offset: 768)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !241, file: !42, line: 1204, baseType: !80, size: 64, offset: 832)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !241, file: !42, line: 1205, baseType: !425, size: 320, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !241, file: !42, line: 1206, baseType: !166, size: 32, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !241, file: !42, line: 1207, baseType: !162, size: 32, offset: 1248)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !241, file: !42, line: 1209, baseType: !273, size: 64, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !241, file: !42, line: 1211, baseType: !2533, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1211, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !241, file: !42, line: 1223, baseType: !2538, size: 64, offset: 1408)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !97, line: 34, size: 64, elements: !2539)
!2539 = !{!2540}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2538, file: !97, line: 35, baseType: !100, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !241, file: !42, line: 1224, baseType: !28, size: 128, offset: 1472)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !241, file: !42, line: 1225, baseType: !2543, size: 64, offset: 1600)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2545, line: 40, size: 7424, elements: !2546)
!2545 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2546 = !{!2547, !2548, !2549, !2552, !2556, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2583, !2584}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2544, file: !2545, line: 41, baseType: !1651, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2544, file: !2545, line: 42, baseType: !1651, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2544, file: !2545, line: 43, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1224, line: 1453, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2544, file: !2545, line: 44, baseType: !2553, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2555, line: 74, flags: DIFlagFwdDecl)
!2555 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2544, file: !2545, line: 45, baseType: !2557, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2545, line: 45, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2544, file: !2545, line: 46, baseType: !249, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2544, file: !2545, line: 47, baseType: !549, size: 8, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2544, file: !2545, line: 48, baseType: !171, size: 8, offset: 392)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2544, file: !2545, line: 49, baseType: !549, size: 8, offset: 400)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2544, file: !2545, line: 50, baseType: !549, size: 8, offset: 408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2544, file: !2545, line: 51, baseType: !245, size: 32, offset: 416)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2544, file: !2545, line: 52, baseType: !162, size: 32, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2544, file: !2545, line: 53, baseType: !142, size: 32, offset: 480)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2544, file: !2545, line: 54, baseType: !40, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2544, file: !2545, line: 55, baseType: !273, size: 64, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2544, file: !2545, line: 56, baseType: !273, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2544, file: !2545, line: 57, baseType: !2571, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2545, line: 57, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2544, file: !2545, line: 58, baseType: !665, size: 256, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2544, file: !2545, line: 60, baseType: !166, size: 32, offset: 1024)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2544, file: !2545, line: 61, baseType: !166, size: 32, offset: 1056)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2544, file: !2545, line: 62, baseType: !305, size: 64, offset: 1088)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2544, file: !2545, line: 65, baseType: !665, size: 256, offset: 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2544, file: !2545, line: 66, baseType: !240, size: 64, offset: 1408)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2544, file: !2545, line: 68, baseType: !2581, size: 64, offset: 1472)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2545, line: 68, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2544, file: !2545, line: 72, baseType: !549, size: 8, offset: 1536)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2544, file: !2545, line: 77, baseType: !2585, size: 5824, offset: 1600)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2586, line: 705, size: 5824, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2587 = !{!2588, !2589, !2591, !2594, !2595, !2649, !2725, !2726, !2727, !2728, !2729, !2742, !2921, !2934, !2944, !2948, !2950, !2951, !2952, !2956, !2963, !2964, !2967, !2970, !2974, !2977, !2978, !2979, !2980, !2981, !2982, !3012, !3013, !3014, !3017, !3020, !3048, !3055, !3056, !3057, !3058, !3059}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2585, file: !2586, line: 706, baseType: !299, size: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2585, file: !2586, line: 707, baseType: !2590, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2585, file: !2586, line: 709, baseType: !2592, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2586, line: 37, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2585, file: !2586, line: 711, baseType: !203, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2585, file: !2586, line: 712, baseType: !2596, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2598)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2586, line: 89, size: 384, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2608, !2613, !2617}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2598, file: !2586, line: 90, baseType: !203, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2598, file: !2586, line: 91, baseType: !388, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2598, file: !2586, line: 92, baseType: !2603, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!166, !2606, !335}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2598, file: !2586, line: 93, baseType: !2609, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!229, !2606, !2612, !1769, !1770}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2598, file: !2586, line: 95, baseType: !2614, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2590}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2598, file: !2586, line: 97, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2620)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2621, line: 286, size: 1472, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2622 = !{!2623, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2620, file: !2621, line: 287, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!166, !2590}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2620, file: !2621, line: 288, baseType: !2614, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2620, file: !2621, line: 289, baseType: !2624, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2620, file: !2621, line: 290, baseType: !2624, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2620, file: !2621, line: 291, baseType: !2624, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2620, file: !2621, line: 292, baseType: !2624, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2620, file: !2621, line: 293, baseType: !2624, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2620, file: !2621, line: 294, baseType: !2624, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2620, file: !2621, line: 295, baseType: !2624, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2620, file: !2621, line: 296, baseType: !2624, size: 64, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2620, file: !2621, line: 297, baseType: !2624, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2620, file: !2621, line: 298, baseType: !2624, size: 64, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2620, file: !2621, line: 299, baseType: !2624, size: 64, offset: 768)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2620, file: !2621, line: 300, baseType: !2624, size: 64, offset: 832)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2620, file: !2621, line: 301, baseType: !2624, size: 64, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2620, file: !2621, line: 302, baseType: !2624, size: 64, offset: 960)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2620, file: !2621, line: 303, baseType: !2624, size: 64, offset: 1024)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2620, file: !2621, line: 304, baseType: !2624, size: 64, offset: 1088)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2620, file: !2621, line: 305, baseType: !2624, size: 64, offset: 1152)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2620, file: !2621, line: 306, baseType: !2624, size: 64, offset: 1216)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2620, file: !2621, line: 307, baseType: !2624, size: 64, offset: 1280)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2620, file: !2621, line: 308, baseType: !2624, size: 64, offset: 1344)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2620, file: !2621, line: 309, baseType: !2624, size: 64, offset: 1408)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2585, file: !2586, line: 714, baseType: !2650, size: 64, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2653, line: 80, size: 1344, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2724}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2652, file: !2653, line: 81, baseType: !203, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2652, file: !2653, line: 82, baseType: !203, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2652, file: !2653, line: 83, baseType: !388, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2652, file: !2653, line: 84, baseType: !388, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2652, file: !2653, line: 85, baseType: !388, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2652, file: !2653, line: 87, baseType: !2661, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!166, !2590, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2666, line: 96, size: 1152, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2679, !2683, !2687, !2688, !2689, !2690, !2691, !2699, !2700, !2701, !2702, !2703, !2704}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2665, file: !2666, line: 97, baseType: !203, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2665, file: !2666, line: 98, baseType: !2650, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2665, file: !2666, line: 100, baseType: !279, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2665, file: !2666, line: 101, baseType: !203, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2665, file: !2666, line: 103, baseType: !549, size: 8, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2665, file: !2666, line: 104, baseType: !2674, size: 32, offset: 288)
!2674 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2666, line: 45, baseType: !57, size: 32, elements: !2675)
!2675 = !{!2676, !2677, !2678}
!2676 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2677 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2678 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2665, file: !2666, line: 106, baseType: !2680, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2666, line: 106, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2665, file: !2666, line: 107, baseType: !2684, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2666, line: 107, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2665, file: !2666, line: 109, baseType: !2624, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2665, file: !2666, line: 110, baseType: !2614, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2665, file: !2666, line: 111, baseType: !2624, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2665, file: !2666, line: 112, baseType: !2614, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2665, file: !2666, line: 113, baseType: !2692, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!166, !2590, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2621, line: 60, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2621, line: 58, size: 32, elements: !2697)
!2697 = !{!2698}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2696, file: !2621, line: 59, baseType: !166, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2665, file: !2666, line: 114, baseType: !2624, size: 64, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2665, file: !2666, line: 115, baseType: !388, size: 64, offset: 832)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2665, file: !2666, line: 116, baseType: !388, size: 64, offset: 896)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2665, file: !2666, line: 118, baseType: !2618, size: 64, offset: 960)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2665, file: !2666, line: 119, baseType: !2614, size: 64, offset: 1024)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2665, file: !2666, line: 121, baseType: !2705, size: 64, offset: 1088)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2666, line: 121, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2652, file: !2653, line: 88, baseType: !2603, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2652, file: !2653, line: 89, baseType: !2624, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2652, file: !2653, line: 90, baseType: !2614, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2652, file: !2653, line: 91, baseType: !2614, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2652, file: !2653, line: 92, baseType: !2614, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2652, file: !2653, line: 94, baseType: !2624, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2652, file: !2653, line: 95, baseType: !2624, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2652, file: !2653, line: 97, baseType: !2692, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2652, file: !2653, line: 98, baseType: !2624, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2652, file: !2653, line: 100, baseType: !2624, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2652, file: !2653, line: 102, baseType: !2624, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2652, file: !2653, line: 103, baseType: !2614, size: 64, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2652, file: !2653, line: 105, baseType: !2618, size: 64, offset: 1152)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2652, file: !2653, line: 107, baseType: !2721, size: 64, offset: 1216)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2653, line: 107, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2652, file: !2653, line: 109, baseType: !549, size: 8, offset: 1280)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2585, file: !2586, line: 715, baseType: !2664, size: 64, offset: 832)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2585, file: !2586, line: 717, baseType: !273, size: 64, offset: 896)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2585, file: !2586, line: 719, baseType: !273, size: 64, offset: 960)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2585, file: !2586, line: 721, baseType: !665, size: 256, offset: 1024)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2585, file: !2586, line: 725, baseType: !2730, size: 448, offset: 1280)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2586, line: 517, size: 448, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2730, file: !2586, line: 518, baseType: !28, size: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2730, file: !2586, line: 519, baseType: !28, size: 128, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2730, file: !2586, line: 520, baseType: !28, size: 128, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2730, file: !2586, line: 521, baseType: !2736, size: 32, offset: 384)
!2736 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2586, line: 487, baseType: !57, size: 32, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2739 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2740 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2741 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2585, file: !2586, line: 726, baseType: !2743, size: 2496, offset: 1728)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2621, line: 663, size: 2496, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2789, !2790, !2791, !2792, !2793, !2794, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2893, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2914, !2918}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2743, file: !2621, line: 664, baseType: !2695, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2743, file: !2621, line: 665, baseType: !57, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2743, file: !2621, line: 666, baseType: !57, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2743, file: !2621, line: 667, baseType: !549, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2743, file: !2621, line: 668, baseType: !549, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2743, file: !2621, line: 669, baseType: !549, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2743, file: !2621, line: 670, baseType: !549, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2743, file: !2621, line: 671, baseType: !549, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2743, file: !2621, line: 672, baseType: !549, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2743, file: !2621, line: 673, baseType: !549, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2743, file: !2621, line: 674, baseType: !549, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2743, file: !2621, line: 675, baseType: !114, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2743, file: !2621, line: 676, baseType: !142, size: 32, offset: 96)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2743, file: !2621, line: 678, baseType: !28, size: 128, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2743, file: !2621, line: 679, baseType: !563, size: 256, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2743, file: !2621, line: 680, baseType: !2761, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2763, line: 43, size: 1536, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2772, !2773, !2774, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2762, file: !2763, line: 44, baseType: !203, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2762, file: !2763, line: 45, baseType: !166, size: 32, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2762, file: !2763, line: 46, baseType: !28, size: 128, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !2763, line: 47, baseType: !142, size: 32, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2762, file: !2763, line: 48, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2621, line: 629, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2762, file: !2763, line: 49, baseType: !2128, size: 320, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2762, file: !2763, line: 50, baseType: !249, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2762, file: !2763, line: 51, baseType: !2775, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2776, line: 29, baseType: !22)
!2776 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2762, file: !2763, line: 52, baseType: !2775, size: 64, offset: 832)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2762, file: !2763, line: 53, baseType: !2775, size: 64, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2762, file: !2763, line: 54, baseType: !2775, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2762, file: !2763, line: 55, baseType: !2775, size: 64, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2762, file: !2763, line: 56, baseType: !249, size: 64, offset: 1088)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2762, file: !2763, line: 57, baseType: !249, size: 64, offset: 1152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2762, file: !2763, line: 58, baseType: !249, size: 64, offset: 1216)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2762, file: !2763, line: 59, baseType: !249, size: 64, offset: 1280)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2762, file: !2763, line: 60, baseType: !249, size: 64, offset: 1344)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2762, file: !2763, line: 61, baseType: !2590, size: 64, offset: 1408)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2762, file: !2763, line: 62, baseType: !549, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2762, file: !2763, line: 63, baseType: !549, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2743, file: !2621, line: 681, baseType: !549, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2743, file: !2621, line: 682, baseType: !549, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2743, file: !2621, line: 683, baseType: !549, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2743, file: !2621, line: 684, baseType: !57, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2743, file: !2621, line: 685, baseType: !57, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2743, file: !2621, line: 690, baseType: !2795, size: 512, offset: 640)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2796, line: 118, size: 512, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2797 = !{!2798, !2804, !2805, !2814, !2862, !2863, !2864, !2865}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2795, file: !2796, line: 119, baseType: !2799, size: 256)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2800, line: 9, size: 256, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2799, file: !2800, line: 10, baseType: !449, size: 192, align: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2799, file: !2800, line: 11, baseType: !2775, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2795, file: !2796, line: 120, baseType: !2775, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2795, file: !2796, line: 121, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2809, !2813}
!2809 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2796, line: 65, baseType: !57, size: 32, elements: !2810)
!2810 = !{!2811, !2812}
!2811 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2812 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2795, file: !2796, line: 122, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2796, line: 159, size: 512, align: 512, elements: !2817)
!2817 = !{!2818, !2843, !2844, !2847, !2852, !2853, !2857, !2861}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2816, file: !2796, line: 160, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2796, line: 215, size: 4608, align: 512, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2820, file: !2796, line: 216, baseType: !436, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2820, file: !2796, line: 217, baseType: !57, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2820, file: !2796, line: 218, baseType: !57, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2820, file: !2796, line: 219, baseType: !57, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2820, file: !2796, line: 220, baseType: !57, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2820, file: !2796, line: 221, baseType: !57, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2820, file: !2796, line: 222, baseType: !57, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2820, file: !2796, line: 223, baseType: !57, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2820, file: !2796, line: 224, baseType: !57, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2820, file: !2796, line: 226, baseType: !57, size: 32, offset: 160)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2820, file: !2796, line: 227, baseType: !46, size: 16, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2820, file: !2796, line: 228, baseType: !46, size: 16, offset: 208)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2820, file: !2796, line: 229, baseType: !57, size: 32, offset: 224)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2820, file: !2796, line: 235, baseType: !2775, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2820, file: !2796, line: 236, baseType: !2813, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2820, file: !2796, line: 237, baseType: !2775, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2820, file: !2796, line: 238, baseType: !2813, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2820, file: !2796, line: 239, baseType: !2840, size: 4096, align: 512, offset: 512)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 4096, align: 512, elements: !2841)
!2841 = !{!2842}
!2842 = !DISubrange(count: 8)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2816, file: !2796, line: 161, baseType: !57, size: 32, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2816, file: !2796, line: 162, baseType: !2845, size: 32, offset: 96)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !18, line: 32, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !56, line: 96, baseType: !166)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2816, file: !2796, line: 163, baseType: !2848, size: 32, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !87, line: 274, baseType: !2849)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !87, line: 274, size: 32, elements: !2850)
!2850 = !{!2851}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2849, file: !87, line: 274, baseType: !91, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2816, file: !2796, line: 164, baseType: !2813, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2816, file: !2796, line: 165, baseType: !2854, size: 128, offset: 256)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2800, line: 14, size: 128, elements: !2855)
!2855 = !{!2856}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2854, file: !2800, line: 15, baseType: !441, size: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2816, file: !2796, line: 166, baseType: !2858, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!2775}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2816, file: !2796, line: 167, baseType: !2775, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2795, file: !2796, line: 123, baseType: !171, size: 8, offset: 448)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2795, file: !2796, line: 124, baseType: !171, size: 8, offset: 456)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2795, file: !2796, line: 125, baseType: !171, size: 8, offset: 464)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2795, file: !2796, line: 126, baseType: !171, size: 8, offset: 472)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2743, file: !2621, line: 691, baseType: !118, size: 64, offset: 1152)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2743, file: !2621, line: 692, baseType: !11, size: 256, offset: 1216)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2743, file: !2621, line: 693, baseType: !726, size: 192, offset: 1472)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2743, file: !2621, line: 694, baseType: !2770, size: 64, offset: 1664)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2743, file: !2621, line: 695, baseType: !162, size: 32, offset: 1728)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2743, file: !2621, line: 696, baseType: !162, size: 32, offset: 1760)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2743, file: !2621, line: 697, baseType: !57, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2743, file: !2621, line: 698, baseType: !57, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2743, file: !2621, line: 699, baseType: !57, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2743, file: !2621, line: 700, baseType: !57, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2743, file: !2621, line: 701, baseType: !57, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2743, file: !2621, line: 702, baseType: !57, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2743, file: !2621, line: 703, baseType: !549, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2743, file: !2621, line: 704, baseType: !57, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2743, file: !2621, line: 705, baseType: !57, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2743, file: !2621, line: 706, baseType: !57, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2743, file: !2621, line: 707, baseType: !57, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2743, file: !2621, line: 708, baseType: !57, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2743, file: !2621, line: 709, baseType: !57, size: 32, offset: 1824)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2743, file: !2621, line: 710, baseType: !2886, size: 32, offset: 1856)
!2886 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2621, line: 620, baseType: !57, size: 32, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892}
!2888 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2889 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2890 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2891 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2892 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2743, file: !2621, line: 711, baseType: !2894, size: 32, offset: 1888)
!2894 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2621, line: 597, baseType: !166, size: 32, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900}
!2896 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2897 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2898 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2899 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2900 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2743, file: !2621, line: 712, baseType: !2894, size: 32, offset: 1920)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2743, file: !2621, line: 713, baseType: !166, size: 32, offset: 1952)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2743, file: !2621, line: 714, baseType: !166, size: 32, offset: 1984)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2743, file: !2621, line: 715, baseType: !118, size: 64, offset: 2048)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2743, file: !2621, line: 716, baseType: !118, size: 64, offset: 2112)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2743, file: !2621, line: 717, baseType: !118, size: 64, offset: 2176)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2743, file: !2621, line: 718, baseType: !118, size: 64, offset: 2240)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2743, file: !2621, line: 720, baseType: !2909, size: 64, offset: 2304)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2621, line: 632, size: 64, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2910, file: !2621, line: 633, baseType: !142, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2910, file: !2621, line: 634, baseType: !57, size: 32, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2743, file: !2621, line: 721, baseType: !2915, size: 64, offset: 2368)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2590, !790}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2743, file: !2621, line: 722, baseType: !2919, size: 64, offset: 2432)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2621, line: 722, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2585, file: !2586, line: 727, baseType: !2922, size: 64, offset: 4224)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2621, line: 742, size: 1792, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2931, !2932, !2933}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2923, file: !2621, line: 743, baseType: !2620, size: 1472)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2923, file: !2621, line: 744, baseType: !2624, size: 64, offset: 1472)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2923, file: !2621, line: 745, baseType: !2928, size: 64, offset: 1536)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2590, !549}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2923, file: !2621, line: 746, baseType: !2624, size: 64, offset: 1600)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2923, file: !2621, line: 747, baseType: !2614, size: 64, offset: 1664)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2923, file: !2621, line: 748, baseType: !2614, size: 64, offset: 1728)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2585, file: !2586, line: 736, baseType: !2935, size: 128, offset: 4288)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2586, line: 529, size: 128, elements: !2936)
!2936 = !{!2937, !2941}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2935, file: !2586, line: 531, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2940, line: 13, flags: DIFlagFwdDecl)
!2940 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2935, file: !2586, line: 532, baseType: !2942, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2586, line: 49, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2585, file: !2586, line: 738, baseType: !2945, size: 64, offset: 4416)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2947)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2586, line: 738, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2585, file: !2586, line: 740, baseType: !2949, size: 64, offset: 4480)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2585, file: !2586, line: 741, baseType: !118, size: 64, offset: 4544)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2585, file: !2586, line: 746, baseType: !118, size: 64, offset: 4608)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2585, file: !2586, line: 747, baseType: !2953, size: 64, offset: 4672)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2586, line: 747, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2585, file: !2586, line: 749, baseType: !2957, size: 64, offset: 4736)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2586, line: 428, size: 128, elements: !2959)
!2959 = !{!2960, !2961, !2962}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2958, file: !2586, line: 433, baseType: !57, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2958, file: !2586, line: 434, baseType: !57, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2958, file: !2586, line: 435, baseType: !249, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2585, file: !2586, line: 751, baseType: !28, size: 128, offset: 4800)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2585, file: !2586, line: 762, baseType: !2965, size: 64, offset: 4928)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2586, line: 762, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2585, file: !2586, line: 770, baseType: !2968, offset: 4992)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2969, line: 5, elements: !639)
!2969 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2585, file: !2586, line: 772, baseType: !2971, size: 64, offset: 4992)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2973, line: 18, flags: DIFlagFwdDecl)
!2973 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2585, file: !2586, line: 773, baseType: !2975, size: 64, offset: 5056)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2653, line: 22, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2585, file: !2586, line: 776, baseType: !166, size: 32, offset: 5120)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2585, file: !2586, line: 778, baseType: !245, size: 32, offset: 5152)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2585, file: !2586, line: 779, baseType: !114, size: 32, offset: 5184)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2585, file: !2586, line: 781, baseType: !142, size: 32, offset: 5216)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2585, file: !2586, line: 782, baseType: !28, size: 128, offset: 5248)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2585, file: !2586, line: 784, baseType: !2983, size: 64, offset: 5376)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2986, line: 52, size: 768, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2996, !3000, !3001, !3002, !3003, !3007, !3011}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2985, file: !2986, line: 53, baseType: !203, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2985, file: !2986, line: 55, baseType: !388, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2985, file: !2986, line: 56, baseType: !388, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2985, file: !2986, line: 58, baseType: !2603, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2985, file: !2986, line: 59, baseType: !2993, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!229, !2606, !2612}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2985, file: !2986, line: 61, baseType: !2997, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2983}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2985, file: !2986, line: 62, baseType: !2614, size: 64, offset: 384)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2985, file: !2986, line: 64, baseType: !2624, size: 64, offset: 448)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2985, file: !2986, line: 66, baseType: !1728, size: 64, offset: 512)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2985, file: !2986, line: 67, baseType: !3004, size: 64, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!1366, !2606}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2985, file: !2986, line: 69, baseType: !3008, size: 64, offset: 640)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2606, !1769, !1770}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2985, file: !2986, line: 71, baseType: !2618, size: 64, offset: 704)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2585, file: !2586, line: 785, baseType: !388, size: 64, offset: 5440)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2585, file: !2586, line: 787, baseType: !2614, size: 64, offset: 5504)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2585, file: !2586, line: 788, baseType: !3015, size: 64, offset: 5568)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2586, line: 46, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2585, file: !2586, line: 789, baseType: !3018, size: 64, offset: 5632)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2586, line: 48, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2585, file: !2586, line: 791, baseType: !3021, size: 64, offset: 5696)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2586, line: 597, size: 128, elements: !3023)
!3023 = !{!3024, !3034, !3040, !3046, !3047}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3022, file: !2586, line: 598, baseType: !3025, size: 32)
!3025 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2586, line: 547, baseType: !57, size: 32, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033}
!3027 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3028 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3029 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3030 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3031 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3032 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3033 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3022, file: !2586, line: 599, baseType: !3035, size: 32, offset: 32)
!3035 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2586, line: 564, baseType: !57, size: 32, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3038 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3039 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3022, file: !2586, line: 600, baseType: !3041, size: 32, offset: 64)
!3041 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2586, line: 577, baseType: !57, size: 32, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3044 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3045 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3022, file: !2586, line: 601, baseType: !549, size: 8, offset: 96)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3022, file: !2586, line: 602, baseType: !549, size: 8, offset: 104)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2585, file: !2586, line: 793, baseType: !3049, size: 32, offset: 5760)
!3049 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2586, line: 503, baseType: !57, size: 32, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3052 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3053 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3054 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2585, file: !2586, line: 795, baseType: !549, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2585, file: !2586, line: 796, baseType: !549, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2585, file: !2586, line: 797, baseType: !549, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2585, file: !2586, line: 798, baseType: !549, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2585, file: !2586, line: 799, baseType: !549, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !241, file: !42, line: 1226, baseType: !3061, size: 64, offset: 1664)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !42, line: 1226, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !241, file: !42, line: 1227, baseType: !3064, size: 64, offset: 1728)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !3066, line: 163, size: 6848, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3125, !3126, !3127, !3128, !3130, !3131, !3132}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3065, file: !3066, line: 164, baseType: !118, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3065, file: !3066, line: 165, baseType: !449, size: 192, align: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3065, file: !3066, line: 166, baseType: !28, size: 128, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3065, file: !3066, line: 167, baseType: !249, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3065, file: !3066, line: 168, baseType: !249, size: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3065, file: !3066, line: 170, baseType: !1876, size: 32, offset: 512)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3065, file: !3066, line: 171, baseType: !57, size: 32, offset: 544)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3065, file: !3066, line: 172, baseType: !57, size: 32, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3065, file: !3066, line: 173, baseType: !57, size: 32, offset: 608)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3065, file: !3066, line: 173, baseType: !57, size: 32, offset: 640)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3065, file: !3066, line: 179, baseType: !15, size: 64, offset: 704)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3065, file: !3066, line: 184, baseType: !249, size: 64, offset: 768)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3065, file: !3066, line: 186, baseType: !3081, size: 4672, offset: 832)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !3066, line: 105, size: 4672, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3107, !3108, !3120, !3121, !3122, !3123, !3124}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3081, file: !3066, line: 106, baseType: !3064, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3081, file: !3066, line: 108, baseType: !249, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3081, file: !3066, line: 109, baseType: !249, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3081, file: !3066, line: 111, baseType: !28, size: 128, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3081, file: !3066, line: 112, baseType: !28, size: 128, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3081, file: !3066, line: 113, baseType: !28, size: 128, offset: 448)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3081, file: !3066, line: 114, baseType: !28, size: 128, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3081, file: !3066, line: 115, baseType: !142, size: 32, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3081, file: !3066, line: 117, baseType: !162, size: 32, offset: 736)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3081, file: !3066, line: 118, baseType: !1334, size: 1280, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3081, file: !3066, line: 120, baseType: !249, size: 64, offset: 2048)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3081, file: !3066, line: 121, baseType: !249, size: 64, offset: 2112)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3081, file: !3066, line: 122, baseType: !249, size: 64, offset: 2176)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3081, file: !3066, line: 123, baseType: !249, size: 64, offset: 2240)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3081, file: !3066, line: 124, baseType: !249, size: 64, offset: 2304)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3081, file: !3066, line: 132, baseType: !249, size: 64, offset: 2368)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3081, file: !3066, line: 133, baseType: !249, size: 64, offset: 2432)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3081, file: !3066, line: 135, baseType: !3101, size: 384, offset: 2496)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3102, line: 76, size: 384, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3101, file: !3102, line: 78, baseType: !905, size: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3101, file: !3102, line: 80, baseType: !57, size: 32, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3101, file: !3102, line: 81, baseType: !436, size: 32, offset: 352)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3081, file: !3066, line: 136, baseType: !166, size: 32, offset: 2880)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3081, file: !3066, line: 137, baseType: !3109, size: 32, offset: 2912)
!3109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !3066, line: 44, baseType: !57, size: 32, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3111 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!3112 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!3113 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!3114 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!3115 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!3116 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!3117 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!3118 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!3119 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3081, file: !3066, line: 139, baseType: !142, size: 32, offset: 2944)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3081, file: !3066, line: 140, baseType: !28, size: 128, offset: 3008)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3081, file: !3066, line: 141, baseType: !2185, size: 704, offset: 3136)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3081, file: !3066, line: 142, baseType: !2185, size: 704, offset: 3840)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3081, file: !3066, line: 144, baseType: !28, size: 128, offset: 4544)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3065, file: !3066, line: 187, baseType: !28, size: 128, offset: 5504)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3065, file: !3066, line: 193, baseType: !726, size: 192, offset: 5632)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3065, file: !3066, line: 195, baseType: !2590, size: 64, offset: 5824)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3065, file: !3066, line: 196, baseType: !3129, size: 512, offset: 5888)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 512, elements: !344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3065, file: !3066, line: 197, baseType: !2590, size: 64, offset: 6400)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3065, file: !3066, line: 199, baseType: !2128, size: 320, offset: 6464)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3065, file: !3066, line: 202, baseType: !80, size: 64, offset: 6784)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !241, file: !42, line: 1228, baseType: !3134, size: 64, offset: 1792)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1228, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !241, file: !42, line: 1229, baseType: !717, size: 128, offset: 1856)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !241, file: !42, line: 1230, baseType: !57, size: 32, offset: 1984)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !241, file: !42, line: 1231, baseType: !3139, size: 2496, offset: 2048)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2332, line: 521, size: 2496, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3145, !3177}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3139, file: !2332, line: 522, baseType: !57, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3139, file: !2332, line: 523, baseType: !425, size: 320, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3139, file: !2332, line: 524, baseType: !3144, size: 192, offset: 384)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !340)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3139, file: !2332, line: 525, baseType: !3146, size: 1728, offset: 576)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3147, size: 1728, elements: !340)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2332, line: 222, size: 576, elements: !3148)
!3148 = !{!3149, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3147, file: !2332, line: 223, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2332, line: 445, size: 256, elements: !3152)
!3152 = !{!3153, !3154, !3167, !3168}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3151, file: !2332, line: 446, baseType: !166, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3151, file: !2332, line: 447, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2332, line: 312, size: 512, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3157, file: !2332, line: 313, baseType: !2282, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3157, file: !2332, line: 314, baseType: !2282, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3157, file: !2332, line: 315, baseType: !2282, size: 64, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3157, file: !2332, line: 316, baseType: !2282, size: 64, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3157, file: !2332, line: 317, baseType: !2401, size: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3157, file: !2332, line: 318, baseType: !2401, size: 64, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3157, file: !2332, line: 319, baseType: !2401, size: 64, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3157, file: !2332, line: 320, baseType: !2431, size: 64, offset: 448)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3151, file: !2332, line: 448, baseType: !279, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3151, file: !2332, line: 449, baseType: !3150, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3147, file: !2332, line: 224, baseType: !166, size: 32, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3147, file: !2332, line: 226, baseType: !28, size: 128, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3147, file: !2332, line: 227, baseType: !249, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3147, file: !2332, line: 228, baseType: !57, size: 32, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3147, file: !2332, line: 229, baseType: !57, size: 32, offset: 352)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3147, file: !2332, line: 230, baseType: !2369, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3147, file: !2332, line: 231, baseType: !2369, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3147, file: !2332, line: 232, baseType: !273, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3139, file: !2332, line: 526, baseType: !3178, size: 192, offset: 2304)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3155, size: 192, elements: !340)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !241, file: !42, line: 1233, baseType: !3180, size: 2368, offset: 4544)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1184, size: 2368, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3180, file: !42, line: 1185, baseType: !46, size: 16)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3180, file: !42, line: 1186, baseType: !46, size: 16, offset: 16)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3180, file: !42, line: 1187, baseType: !3185, size: 2304, offset: 64)
!3185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3186, size: 2304, elements: !340)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3187, line: 12, size: 768, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3188 = !{!3189, !3197, !3198, !4317, !4318}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3186, file: !3187, line: 13, baseType: !3190, size: 384)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3191, line: 17, size: 384, elements: !3192)
!3191 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3192 = !{!3193, !3194, !3195, !3196}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3190, file: !3191, line: 18, baseType: !166, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3190, file: !3191, line: 19, baseType: !166, size: 32, offset: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3190, file: !3191, line: 20, baseType: !726, size: 192, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3190, file: !3191, line: 22, baseType: !553, size: 128, align: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3186, file: !3187, line: 14, baseType: !1980, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3186, file: !3187, line: 15, baseType: !3199, size: 64, offset: 448)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3200, line: 16, size: 64, elements: !3201)
!3200 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3201 = !{!3202}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3199, file: !3200, line: 17, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1224, line: 746, size: 58368, elements: !3205)
!3205 = !{!3206, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3286, !3297, !3317, !3321, !3324, !3355, !3356, !3357, !3358, !3369, !3371, !3372, !3373, !3374, !3375, !3376, !3387, !3388, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3405, !3406, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3500, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3548, !3554, !3555, !3556, !3557, !3558, !3562, !3565, !3572, !3577, !3580, !3583, !3586, !3589, !3727, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3765, !3766, !3767, !3776, !3784, !3785, !3786, !3787, !3788, !3793, !3794, !3795, !3798, !3799, !3802, !3805, !3808, !3815, !3818, !3819, !3905, !3906, !3907, !3908, !3909, !3915, !3916, !3917, !3918, !3921, !3922, !3925, !3928, !3929, !3932, !3933, !3934, !3937, !3938, !3939, !3940, !3941, !3942, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3974, !3975, !3981, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !4069, !4071, !4072, !4073, !4074, !4075, !4076, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4094, !4095, !4096}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3204, file: !1224, line: 752, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3208, line: 56, size: 192, elements: !3209)
!3208 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3209 = !{!3210, !3211, !3212, !3213}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3207, file: !3208, line: 57, baseType: !249, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3207, file: !3208, line: 58, baseType: !249, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3207, file: !3208, line: 59, baseType: !114, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3207, file: !3208, line: 61, baseType: !114, size: 32, offset: 160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3204, file: !1224, line: 754, baseType: !57, size: 32, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3204, file: !1224, line: 767, baseType: !273, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3204, file: !1224, line: 768, baseType: !704, size: 32, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3204, file: !1224, line: 770, baseType: !57, size: 32, offset: 352)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3204, file: !1224, line: 771, baseType: !57, size: 32, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3204, file: !1224, line: 774, baseType: !166, size: 32, offset: 416)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3204, file: !1224, line: 775, baseType: !3221, size: 128, offset: 448)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3222, line: 58, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3223 = !{!3224, !3225, !3230, !3231}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3221, file: !3222, line: 59, baseType: !653, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 60, baseType: !3226, size: 32, offset: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 60, size: 32, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3226, file: !3222, line: 61, baseType: !57, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3226, file: !3222, line: 62, baseType: !162, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3221, file: !3222, line: 65, baseType: !178, size: 16, offset: 96)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3221, file: !3222, line: 65, baseType: !178, size: 16, offset: 112)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3204, file: !1224, line: 776, baseType: !57, size: 32, offset: 576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3204, file: !1224, line: 777, baseType: !249, size: 64, offset: 640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3204, file: !1224, line: 778, baseType: !3203, size: 64, offset: 704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3204, file: !1224, line: 787, baseType: !166, size: 32, offset: 768)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3204, file: !1224, line: 788, baseType: !166, size: 32, offset: 800)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3204, file: !1224, line: 790, baseType: !166, size: 32, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3204, file: !1224, line: 792, baseType: !166, size: 32, offset: 864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3204, file: !1224, line: 793, baseType: !166, size: 32, offset: 896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3204, file: !1224, line: 794, baseType: !166, size: 32, offset: 928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3204, file: !1224, line: 795, baseType: !57, size: 32, offset: 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3204, file: !1224, line: 797, baseType: !3243, size: 2048, offset: 1024)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1224, line: 551, size: 2048, elements: !3244)
!3244 = !{!3245, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3265, !3268, !3269, !3270}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3243, file: !1224, line: 553, baseType: !3246, size: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1224, line: 411, size: 128, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3246, file: !1224, line: 412, baseType: !249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3246, file: !1224, line: 413, baseType: !114, size: 32, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3243, file: !1224, line: 554, baseType: !449, size: 192, align: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3243, file: !1224, line: 555, baseType: !118, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3243, file: !1224, line: 556, baseType: !118, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3243, file: !1224, line: 558, baseType: !28, size: 128, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3243, file: !1224, line: 559, baseType: !57, size: 32, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3243, file: !1224, line: 561, baseType: !118, size: 64, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3243, file: !1224, line: 562, baseType: !118, size: 64, offset: 704)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3243, file: !1224, line: 563, baseType: !118, size: 64, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3243, file: !1224, line: 564, baseType: !118, size: 64, offset: 832)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3243, file: !1224, line: 565, baseType: !22, size: 64, offset: 896)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3243, file: !1224, line: 566, baseType: !118, size: 64, offset: 960)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3243, file: !1224, line: 568, baseType: !118, size: 64, offset: 1024)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3243, file: !1224, line: 571, baseType: !166, size: 32, offset: 1088)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3243, file: !1224, line: 572, baseType: !3264, size: 64, offset: 1152)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3243, file: !1224, line: 574, baseType: !3266, size: 64, offset: 1216)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1224, line: 49, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3243, file: !1224, line: 576, baseType: !3266, size: 64, offset: 1280)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3243, file: !1224, line: 578, baseType: !249, size: 64, offset: 1344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3243, file: !1224, line: 588, baseType: !3271, size: 512, align: 512, offset: 1536)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1224, line: 497, size: 512, align: 512, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3271, file: !1224, line: 498, baseType: !118, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3271, file: !1224, line: 499, baseType: !118, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3271, file: !1224, line: 500, baseType: !118, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3271, file: !1224, line: 501, baseType: !114, size: 32, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3271, file: !1224, line: 502, baseType: !114, size: 32, offset: 224)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3271, file: !1224, line: 503, baseType: !249, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3271, file: !1224, line: 504, baseType: !249, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3271, file: !1224, line: 505, baseType: !249, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3271, file: !1224, line: 506, baseType: !3282, size: 64, align: 64, offset: 448)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1224, line: 445, size: 64, align: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3282, file: !1224, line: 446, baseType: !57, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3282, file: !1224, line: 447, baseType: !57, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3204, file: !1224, line: 798, baseType: !3287, size: 384, offset: 3072)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1224, line: 592, size: 384, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3287, file: !1224, line: 593, baseType: !28, size: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3287, file: !1224, line: 594, baseType: !249, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3287, file: !1224, line: 595, baseType: !249, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3287, file: !1224, line: 596, baseType: !57, size: 32, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3287, file: !1224, line: 597, baseType: !46, size: 16, offset: 288)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3287, file: !1224, line: 598, baseType: !46, size: 16, offset: 304)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3287, file: !1224, line: 600, baseType: !3296, size: 64, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3204, file: !1224, line: 799, baseType: !3298, size: 1792, offset: 3456)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1224, line: 610, size: 1792, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3298, file: !1224, line: 611, baseType: !449, size: 192, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3298, file: !1224, line: 618, baseType: !118, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3298, file: !1224, line: 619, baseType: !118, size: 64, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3298, file: !1224, line: 620, baseType: !118, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3298, file: !1224, line: 621, baseType: !118, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3298, file: !1224, line: 622, baseType: !118, size: 64, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3298, file: !1224, line: 629, baseType: !22, size: 64, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3298, file: !1224, line: 630, baseType: !118, size: 64, offset: 576)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3298, file: !1224, line: 631, baseType: !57, size: 32, offset: 640)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3298, file: !1224, line: 653, baseType: !57, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3298, file: !1224, line: 654, baseType: !57, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3298, file: !1224, line: 655, baseType: !57, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3298, file: !1224, line: 656, baseType: !57, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3298, file: !1224, line: 662, baseType: !2795, size: 512, offset: 704)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3298, file: !1224, line: 671, baseType: !2795, size: 512, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3298, file: !1224, line: 679, baseType: !3316, size: 64, offset: 1728)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3204, file: !1224, line: 800, baseType: !3318, size: 64, offset: 5248)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1224, line: 800, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3204, file: !1224, line: 809, baseType: !3322, size: 64, offset: 5312)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1224, line: 70, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3204, file: !1224, line: 825, baseType: !3325, size: 2048, align: 512, offset: 5632)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1224, line: 509, size: 2048, align: 512, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3325, file: !1224, line: 511, baseType: !118, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3325, file: !1224, line: 512, baseType: !118, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3325, file: !1224, line: 513, baseType: !118, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3325, file: !1224, line: 514, baseType: !118, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3325, file: !1224, line: 515, baseType: !118, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3325, file: !1224, line: 516, baseType: !118, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3325, file: !1224, line: 518, baseType: !118, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3325, file: !1224, line: 519, baseType: !118, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3325, file: !1224, line: 520, baseType: !22, size: 64, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3325, file: !1224, line: 522, baseType: !118, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3325, file: !1224, line: 523, baseType: !118, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3325, file: !1224, line: 524, baseType: !22, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3325, file: !1224, line: 526, baseType: !22, size: 64, offset: 768)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3325, file: !1224, line: 527, baseType: !118, size: 64, offset: 832)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3325, file: !1224, line: 529, baseType: !118, size: 64, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3325, file: !1224, line: 530, baseType: !118, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3325, file: !1224, line: 531, baseType: !118, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3325, file: !1224, line: 532, baseType: !118, size: 64, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3325, file: !1224, line: 533, baseType: !118, size: 64, offset: 1152)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3325, file: !1224, line: 535, baseType: !118, size: 64, offset: 1216)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3325, file: !1224, line: 536, baseType: !118, size: 64, offset: 1280)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3325, file: !1224, line: 537, baseType: !118, size: 64, offset: 1344)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3325, file: !1224, line: 538, baseType: !118, size: 64, offset: 1408)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3325, file: !1224, line: 539, baseType: !118, size: 64, offset: 1472)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3325, file: !1224, line: 540, baseType: !118, size: 64, offset: 1536)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3325, file: !1224, line: 541, baseType: !118, size: 64, offset: 1600)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3325, file: !1224, line: 542, baseType: !118, size: 64, offset: 1664)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3325, file: !1224, line: 543, baseType: !118, size: 64, offset: 1728)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3204, file: !1224, line: 833, baseType: !57, size: 32, offset: 7680)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3204, file: !1224, line: 836, baseType: !57, size: 32, offset: 7712)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3204, file: !1224, line: 837, baseType: !166, size: 32, offset: 7744)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3204, file: !1224, line: 838, baseType: !3359, size: 64, offset: 7808)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3361)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3362, line: 19, baseType: !3363)
!3362 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3362, line: 19, size: 64, elements: !3364)
!3364 = !{!3365}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3363, file: !3362, line: 19, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !3367)
!3367 = !{!3368}
!3368 = !DISubrange(count: 1)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3204, file: !1224, line: 839, baseType: !3370, size: 64, offset: 7872)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3204, file: !1224, line: 840, baseType: !3361, size: 64, offset: 7936)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3204, file: !1224, line: 841, baseType: !273, size: 64, offset: 8000)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3204, file: !1224, line: 843, baseType: !46, size: 16, offset: 8064)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3204, file: !1224, line: 845, baseType: !46, size: 16, offset: 8080)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3204, file: !1224, line: 848, baseType: !166, size: 32, offset: 8096)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3204, file: !1224, line: 849, baseType: !3377, size: 32, offset: 8128)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1224, line: 718, size: 32, elements: !3378)
!3378 = !{!3379, !3386}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3377, file: !1224, line: 724, baseType: !3380, size: 32)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !1224, line: 719, size: 32, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3380, file: !1224, line: 720, baseType: !171, size: 8)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3380, file: !1224, line: 721, baseType: !171, size: 8, offset: 8)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3380, file: !1224, line: 722, baseType: !171, size: 8, offset: 16)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3380, file: !1224, line: 723, baseType: !171, size: 8, offset: 24)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3377, file: !1224, line: 725, baseType: !114, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3204, file: !1224, line: 850, baseType: !28, size: 128, offset: 8192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3204, file: !1224, line: 851, baseType: !3389, size: 64, offset: 8320)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1224, line: 60, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3204, file: !1224, line: 855, baseType: !249, size: 64, offset: 8384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3204, file: !1224, line: 856, baseType: !171, size: 8, offset: 8448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3204, file: !1224, line: 857, baseType: !171, size: 8, offset: 8456)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3204, file: !1224, line: 858, baseType: !166, size: 32, offset: 8480)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3204, file: !1224, line: 859, baseType: !28, size: 128, offset: 8512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3204, file: !1224, line: 860, baseType: !166, size: 32, offset: 8640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3204, file: !1224, line: 861, baseType: !28, size: 128, offset: 8704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3204, file: !1224, line: 873, baseType: !3399, size: 256, offset: 8832)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1224, line: 376, size: 256, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3399, file: !1224, line: 381, baseType: !249, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3399, file: !1224, line: 384, baseType: !120, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3399, file: !1224, line: 389, baseType: !120, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3399, file: !1224, line: 392, baseType: !120, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3204, file: !1224, line: 875, baseType: !28, size: 128, offset: 9088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3204, file: !1224, line: 877, baseType: !3407, size: 320, offset: 9216)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3408, line: 86, size: 320, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3409 = !{!3410, !3411, !3412}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3407, file: !3408, line: 87, baseType: !166, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3407, file: !3408, line: 88, baseType: !28, size: 128, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3407, file: !3408, line: 89, baseType: !28, size: 128, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3204, file: !1224, line: 878, baseType: !449, size: 192, align: 64, offset: 9536)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3204, file: !1224, line: 881, baseType: !618, size: 64, offset: 9728)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3204, file: !1224, line: 882, baseType: !618, size: 64, offset: 9792)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3204, file: !1224, line: 884, baseType: !166, size: 32, offset: 9856)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3204, file: !1224, line: 885, baseType: !166, size: 32, offset: 9888)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3204, file: !1224, line: 886, baseType: !166, size: 32, offset: 9920)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3204, file: !1224, line: 888, baseType: !166, size: 32, offset: 9952)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3204, file: !1224, line: 890, baseType: !249, size: 64, offset: 9984)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3204, file: !1224, line: 893, baseType: !57, size: 32, offset: 10048)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3204, file: !1224, line: 896, baseType: !57, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3204, file: !1224, line: 897, baseType: !57, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3204, file: !1224, line: 898, baseType: !57, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3204, file: !1224, line: 899, baseType: !57, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3204, file: !1224, line: 919, baseType: !57, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3204, file: !1224, line: 922, baseType: !57, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3204, file: !1224, line: 923, baseType: !57, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3204, file: !1224, line: 925, baseType: !57, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3204, file: !1224, line: 939, baseType: !57, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3204, file: !1224, line: 941, baseType: !57, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3204, file: !1224, line: 944, baseType: !57, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3204, file: !1224, line: 956, baseType: !57, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3204, file: !1224, line: 962, baseType: !57, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3204, file: !1224, line: 966, baseType: !57, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3204, file: !1224, line: 969, baseType: !249, size: 64, offset: 10176)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3204, file: !1224, line: 971, baseType: !3438, size: 448, offset: 10240)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3439, line: 25, size: 448, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3440 = !{!3441, !3442, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3438, file: !3439, line: 26, baseType: !249, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3438, file: !3439, line: 27, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!374, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3439, line: 28, baseType: !3448, size: 320, offset: 128)
!3448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3438, file: !3439, line: 28, size: 320, elements: !3449)
!3449 = !{!3450, !3460, !3490}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3448, file: !3439, line: 37, baseType: !3451, size: 320)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3439, line: 30, size: 320, elements: !3452)
!3452 = !{!3453, !3455, !3456, !3457, !3458, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3451, file: !3439, line: 31, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3451, file: !3439, line: 32, baseType: !114, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3451, file: !3439, line: 33, baseType: !114, size: 32, offset: 96)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3451, file: !3439, line: 34, baseType: !114, size: 32, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3451, file: !3439, line: 35, baseType: !118, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3451, file: !3439, line: 36, baseType: !3454, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3448, file: !3439, line: 47, baseType: !3461, size: 192)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3439, line: 39, size: 192, elements: !3462)
!3462 = !{!3463, !3464, !3470, !3489}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3461, file: !3439, line: 40, baseType: !2845, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3461, file: !3439, line: 41, baseType: !3465, size: 32, offset: 32)
!3465 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3439, line: 16, baseType: !57, size: 32, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIEnumerator(name: "TT_NONE", value: 0)
!3468 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3469 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !3439, line: 42, baseType: !3471, size: 64, offset: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3461, file: !3439, line: 42, size: 64, elements: !3472)
!3472 = !{!3473, !3481}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3471, file: !3439, line: 43, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3476, line: 7, size: 128, elements: !3477)
!3476 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3477 = !{!3478, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3475, file: !3476, line: 8, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !56, line: 93, baseType: !26)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3475, file: !3476, line: 9, baseType: !26, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3471, file: !3439, line: 44, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3484, line: 7, size: 64, elements: !3485)
!3484 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3485 = !{!3486, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3483, file: !3484, line: 8, baseType: !3487, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3484, line: 5, baseType: !790)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3483, file: !3484, line: 9, baseType: !790, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3461, file: !3439, line: 46, baseType: !118, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3448, file: !3439, line: 55, baseType: !3491, size: 256)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3439, line: 49, size: 256, elements: !3492)
!3492 = !{!3493, !3496, !3497, !3498, !3499}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3491, file: !3439, line: 50, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3439, line: 14, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3491, file: !3439, line: 51, baseType: !166, size: 32, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3491, file: !3439, line: 52, baseType: !166, size: 32, offset: 96)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3491, file: !3439, line: 53, baseType: !249, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3491, file: !3439, line: 54, baseType: !249, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3204, file: !1224, line: 973, baseType: !3501, size: 32, offset: 10688)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !18, line: 27, baseType: !3502)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !56, line: 28, baseType: !166)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3204, file: !1224, line: 974, baseType: !3501, size: 32, offset: 10720)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3204, file: !1224, line: 978, baseType: !249, size: 64, offset: 10752)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3204, file: !1224, line: 987, baseType: !3203, size: 64, offset: 10816)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3204, file: !1224, line: 990, baseType: !3203, size: 64, offset: 10880)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3204, file: !1224, line: 995, baseType: !28, size: 128, offset: 10944)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3204, file: !1224, line: 996, baseType: !28, size: 128, offset: 11072)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3204, file: !1224, line: 997, baseType: !3203, size: 64, offset: 11200)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3204, file: !1224, line: 1005, baseType: !28, size: 128, offset: 11264)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3204, file: !1224, line: 1006, baseType: !28, size: 128, offset: 11392)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3204, file: !1224, line: 1009, baseType: !699, size: 64, offset: 11520)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3204, file: !1224, line: 1010, baseType: !3514, size: 512, offset: 11584)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 512, elements: !722)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3204, file: !1224, line: 1011, baseType: !28, size: 128, offset: 12096)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3204, file: !1224, line: 1012, baseType: !28, size: 128, offset: 12224)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3204, file: !1224, line: 1014, baseType: !1891, size: 64, offset: 12352)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3204, file: !1224, line: 1017, baseType: !2028, size: 64, offset: 12416)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3204, file: !1224, line: 1020, baseType: !2028, size: 64, offset: 12480)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3204, file: !1224, line: 1023, baseType: !273, size: 64, offset: 12544)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3204, file: !1224, line: 1025, baseType: !118, size: 64, offset: 12608)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3204, file: !1224, line: 1026, baseType: !118, size: 64, offset: 12672)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3204, file: !1224, line: 1031, baseType: !118, size: 64, offset: 12736)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3204, file: !1224, line: 1032, baseType: !3525, size: 192, offset: 12800)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1224, line: 324, size: 192, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3525, file: !1224, line: 326, baseType: !118, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3525, file: !1224, line: 327, baseType: !118, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3525, file: !1224, line: 328, baseType: !436, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3204, file: !1224, line: 1041, baseType: !249, size: 64, offset: 12992)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3204, file: !1224, line: 1042, baseType: !249, size: 64, offset: 13056)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3204, file: !1224, line: 1045, baseType: !118, size: 64, offset: 13120)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3204, file: !1224, line: 1048, baseType: !118, size: 64, offset: 13184)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3204, file: !1224, line: 1051, baseType: !249, size: 64, offset: 13248)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3204, file: !1224, line: 1052, baseType: !249, size: 64, offset: 13312)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3204, file: !1224, line: 1055, baseType: !3537, size: 640, offset: 13376)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3538, line: 132, size: 640, elements: !3539)
!3538 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3539 = !{!3540, !3546, !3547}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3537, file: !3538, line: 133, baseType: !3541, size: 576)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3542, size: 576, elements: !340)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3538, line: 117, size: 192, elements: !3543)
!3543 = !{!3544, !3545}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3542, file: !3538, line: 118, baseType: !118, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3542, file: !3538, line: 119, baseType: !2854, size: 128, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3537, file: !3538, line: 134, baseType: !57, size: 32, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3537, file: !3538, line: 135, baseType: !57, size: 32, offset: 608)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3204, file: !1224, line: 1058, baseType: !3549, size: 448, offset: 14016)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3538, line: 144, size: 448, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3549, file: !3538, line: 145, baseType: !553, size: 128, align: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3549, file: !3538, line: 146, baseType: !665, size: 256, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3549, file: !3538, line: 147, baseType: !57, size: 32, offset: 384)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3204, file: !1224, line: 1064, baseType: !755, size: 64, offset: 14464)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3204, file: !1224, line: 1067, baseType: !755, size: 64, offset: 14528)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3204, file: !1224, line: 1070, baseType: !755, size: 64, offset: 14592)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3204, file: !1224, line: 1074, baseType: !782, size: 64, offset: 14656)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3204, file: !1224, line: 1084, baseType: !3559, size: 128, offset: 14720)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !3560)
!3560 = !{!3561}
!3561 = !DISubrange(count: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3204, file: !1224, line: 1086, baseType: !3563, size: 64, offset: 14848)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1224, line: 55, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3204, file: !1224, line: 1089, baseType: !3566, size: 64, offset: 14912)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3567, line: 12, size: 64, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3566, file: !3567, line: 13, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3567, line: 8, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3204, file: !1224, line: 1090, baseType: !3573, size: 128, offset: 14976)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3574, line: 13, size: 128, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3575 = !{!3576}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3573, file: !3574, line: 14, baseType: !28, size: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3204, file: !1224, line: 1097, baseType: !3578, size: 64, offset: 15104)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1224, line: 50, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3204, file: !1224, line: 1100, baseType: !3581, size: 64, offset: 15168)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1224, line: 1100, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3204, file: !1224, line: 1103, baseType: !3584, size: 64, offset: 15232)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1224, line: 53, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3204, file: !1224, line: 1107, baseType: !3587, size: 64, offset: 15296)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1224, line: 56, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3204, file: !1224, line: 1110, baseType: !3590, size: 64, offset: 15360)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3592, line: 93, size: 8768, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3641, !3650, !3651, !3653, !3654, !3655, !3658, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3696, !3697, !3704, !3714, !3717, !3718, !3721, !3722, !3723, !3724, !3725, !3726}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3591, file: !3592, line: 94, baseType: !704, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3591, file: !3592, line: 95, baseType: !162, size: 32, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3591, file: !3592, line: 96, baseType: !166, size: 32, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3591, file: !3592, line: 97, baseType: !166, size: 32, offset: 96)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3591, file: !3592, line: 98, baseType: !28, size: 128, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3591, file: !3592, line: 100, baseType: !726, size: 192, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3591, file: !3592, line: 103, baseType: !3203, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3591, file: !3592, line: 106, baseType: !3602, size: 192, offset: 512)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !935, line: 32, size: 192, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3602, file: !935, line: 33, baseType: !28, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3602, file: !935, line: 34, baseType: !3606, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3607, line: 25, baseType: !3608)
!3607 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3607, line: 23, size: 64, elements: !3609)
!3609 = !{!3610}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3608, file: !3607, line: 24, baseType: !3366, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3591, file: !3592, line: 109, baseType: !713, size: 64, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3591, file: !3592, line: 112, baseType: !166, size: 32, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3591, file: !3592, line: 114, baseType: !166, size: 32, offset: 800)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3591, file: !3592, line: 115, baseType: !3203, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3591, file: !3592, line: 118, baseType: !166, size: 32, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3591, file: !3592, line: 119, baseType: !57, size: 32, offset: 928)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3591, file: !3592, line: 121, baseType: !3618, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3592, line: 80, size: 448, elements: !3620)
!3620 = !{!3621, !3622, !3628}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3619, file: !3592, line: 81, baseType: !162, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3619, file: !3592, line: 82, baseType: !3623, size: 128, offset: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3592, line: 75, size: 128, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3623, file: !3592, line: 76, baseType: !3203, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3623, file: !3592, line: 77, baseType: !3627, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3619, file: !3592, line: 83, baseType: !563, size: 256, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3591, file: !3592, line: 132, baseType: !57, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3591, file: !3592, line: 133, baseType: !57, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3591, file: !3592, line: 138, baseType: !57, size: 32, offset: 1056)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3591, file: !3592, line: 139, baseType: !28, size: 128, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3591, file: !3592, line: 142, baseType: !2795, size: 512, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3591, file: !3592, line: 143, baseType: !2775, size: 64, offset: 1728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3591, file: !3592, line: 150, baseType: !3636, size: 256, offset: 1792)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, size: 256, elements: !2018)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3592, line: 38, size: 128, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3637, file: !3592, line: 39, baseType: !118, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3637, file: !3592, line: 40, baseType: !118, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3591, file: !3592, line: 156, baseType: !3642, size: 192, offset: 2048)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3592, line: 66, size: 192, elements: !3643)
!3643 = !{!3644}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3642, file: !3592, line: 67, baseType: !3645, size: 192)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3592, line: 47, size: 192, elements: !3646)
!3646 = !{!3647, !3648, !3649}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3645, file: !3592, line: 48, baseType: !17, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3645, file: !3592, line: 49, baseType: !17, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3645, file: !3592, line: 50, baseType: !17, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3591, file: !3592, line: 160, baseType: !3537, size: 640, offset: 2240)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3591, file: !3592, line: 163, baseType: !3652, size: 256, offset: 2880)
!3652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 256, elements: !722)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3591, file: !3592, line: 169, baseType: !699, size: 64, offset: 3136)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3591, file: !3592, line: 172, baseType: !166, size: 32, offset: 3200)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3591, file: !3592, line: 174, baseType: !3656, size: 64, offset: 3264)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3592, line: 174, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3591, file: !3592, line: 185, baseType: !3659, size: 64, offset: 3328)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !87, line: 860, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 853, size: 64, elements: !3661)
!3661 = !{!3662, !3663}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3660, file: !87, line: 858, baseType: !86, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3660, file: !87, line: 859, baseType: !142, size: 32, offset: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3591, file: !3592, line: 186, baseType: !118, size: 64, offset: 3392)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3591, file: !3592, line: 186, baseType: !118, size: 64, offset: 3456)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3591, file: !3592, line: 186, baseType: !118, size: 64, offset: 3520)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3591, file: !3592, line: 186, baseType: !118, size: 64, offset: 3584)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3591, file: !3592, line: 187, baseType: !118, size: 64, offset: 3648)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3591, file: !3592, line: 188, baseType: !118, size: 64, offset: 3712)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3591, file: !3592, line: 189, baseType: !3525, size: 192, offset: 3776)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3591, file: !3592, line: 190, baseType: !249, size: 64, offset: 3968)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3591, file: !3592, line: 190, baseType: !249, size: 64, offset: 4032)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3591, file: !3592, line: 190, baseType: !249, size: 64, offset: 4096)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3591, file: !3592, line: 190, baseType: !249, size: 64, offset: 4160)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3591, file: !3592, line: 191, baseType: !249, size: 64, offset: 4224)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3591, file: !3592, line: 191, baseType: !249, size: 64, offset: 4288)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3591, file: !3592, line: 191, baseType: !249, size: 64, offset: 4352)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3591, file: !3592, line: 191, baseType: !249, size: 64, offset: 4416)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3591, file: !3592, line: 192, baseType: !249, size: 64, offset: 4480)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3591, file: !3592, line: 192, baseType: !249, size: 64, offset: 4544)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3591, file: !3592, line: 192, baseType: !249, size: 64, offset: 4608)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3591, file: !3592, line: 192, baseType: !249, size: 64, offset: 4672)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3591, file: !3592, line: 193, baseType: !249, size: 64, offset: 4736)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3591, file: !3592, line: 193, baseType: !249, size: 64, offset: 4800)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3591, file: !3592, line: 194, baseType: !3686, size: 448, offset: 4864)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3687, line: 12, size: 448, elements: !3688)
!3687 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3686, file: !3687, line: 15, baseType: !118, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3686, file: !3687, line: 17, baseType: !118, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3686, file: !3687, line: 19, baseType: !118, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3686, file: !3687, line: 21, baseType: !118, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3686, file: !3687, line: 29, baseType: !118, size: 64, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3686, file: !3687, line: 35, baseType: !118, size: 64, offset: 320)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3686, file: !3687, line: 44, baseType: !118, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3591, file: !3592, line: 202, baseType: !120, size: 64, offset: 5312)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3591, file: !3592, line: 213, baseType: !3698, size: 2048, offset: 5376)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3699, size: 2048, elements: !3560)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3700, line: 43, size: 128, elements: !3701)
!3700 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3699, file: !3700, line: 44, baseType: !386, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3699, file: !3700, line: 45, baseType: !386, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3591, file: !3592, line: 216, baseType: !3705, size: 448, offset: 7424)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3592, line: 30, size: 448, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3705, file: !3592, line: 31, baseType: !166, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3705, file: !3592, line: 32, baseType: !374, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3705, file: !3592, line: 33, baseType: !249, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3705, file: !3592, line: 34, baseType: !118, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3705, file: !3592, line: 34, baseType: !118, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3705, file: !3592, line: 35, baseType: !249, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3705, file: !3592, line: 35, baseType: !249, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3591, file: !3592, line: 219, baseType: !3715, size: 64, offset: 7872)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3592, line: 219, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3591, file: !3592, line: 222, baseType: !57, size: 32, offset: 7936)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3591, file: !3592, line: 223, baseType: !3719, size: 64, offset: 8000)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3592, line: 223, flags: DIFlagFwdDecl)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3591, file: !3592, line: 230, baseType: !549, size: 8, offset: 8064)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3591, file: !3592, line: 231, baseType: !818, size: 16, offset: 8080)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3591, file: !3592, line: 232, baseType: !818, size: 16, offset: 8096)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3591, file: !3592, line: 234, baseType: !618, size: 64, offset: 8128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3591, file: !3592, line: 237, baseType: !665, size: 256, offset: 8192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3591, file: !3592, line: 243, baseType: !425, size: 320, offset: 8448)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3204, file: !1224, line: 1111, baseType: !3728, size: 64, offset: 15424)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3592, line: 20, size: 16640, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3729, file: !3592, line: 21, baseType: !142, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3729, file: !3592, line: 22, baseType: !704, size: 32, offset: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3729, file: !3592, line: 23, baseType: !726, size: 192, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3729, file: !3592, line: 24, baseType: !3735, size: 16384, offset: 256)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3736, size: 16384, elements: !344)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !935, line: 51, size: 256, elements: !3737)
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3736, file: !935, line: 52, baseType: !3739, size: 256)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !935, line: 37, size: 256, elements: !3740)
!3740 = !{!3741, !3748, !3749, !3753}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3739, file: !935, line: 39, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3743, line: 83, baseType: !3744)
!3743 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3743, line: 82, baseType: !3746)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !166}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3739, file: !935, line: 40, baseType: !249, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3739, file: !935, line: 46, baseType: !3750, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3743, line: 86, baseType: !3751)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3743, line: 85, baseType: !2238)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3739, file: !935, line: 48, baseType: !3606, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3204, file: !1224, line: 1112, baseType: !3606, size: 64, offset: 15488)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3204, file: !1224, line: 1113, baseType: !3606, size: 64, offset: 15552)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3204, file: !1224, line: 1115, baseType: !3606, size: 64, offset: 15616)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3204, file: !1224, line: 1116, baseType: !3602, size: 192, offset: 15680)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3204, file: !1224, line: 1117, baseType: !249, size: 64, offset: 15872)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3204, file: !1224, line: 1118, baseType: !384, size: 64, offset: 15936)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3204, file: !1224, line: 1119, baseType: !57, size: 32, offset: 16000)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3204, file: !1224, line: 1121, baseType: !556, size: 64, offset: 16064)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3204, file: !1224, line: 1125, baseType: !3763, size: 64, offset: 16128)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1224, line: 43, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3204, file: !1224, line: 1127, baseType: !49, size: 32, offset: 16192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3204, file: !1224, line: 1128, baseType: !57, size: 32, offset: 16224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3204, file: !1224, line: 1130, baseType: !3768, size: 128, offset: 16256)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3769, line: 37, size: 128, elements: !3770)
!3769 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3770 = !{!3771, !3772, !3773}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3768, file: !3769, line: 38, baseType: !166, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3768, file: !3769, line: 39, baseType: !162, size: 32, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3768, file: !3769, line: 40, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3769, line: 24, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3204, file: !1224, line: 1131, baseType: !3777, size: 256, offset: 16384)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3778, line: 12, size: 256, elements: !3779)
!3778 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3777, file: !3778, line: 13, baseType: !229, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3777, file: !3778, line: 14, baseType: !249, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3777, file: !3778, line: 15, baseType: !249, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3777, file: !3778, line: 16, baseType: !549, size: 8, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3204, file: !1224, line: 1134, baseType: !118, size: 64, offset: 16640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3204, file: !1224, line: 1135, baseType: !118, size: 64, offset: 16704)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3204, file: !1224, line: 1138, baseType: !142, size: 32, offset: 16768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3204, file: !1224, line: 1141, baseType: !436, size: 32, offset: 16800)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3204, file: !1224, line: 1143, baseType: !3789, size: 64, offset: 16832)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1224, line: 735, size: 64, elements: !3790)
!3790 = !{!3791}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3789, file: !1224, line: 736, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3204, file: !1224, line: 1147, baseType: !441, size: 128, offset: 16896)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3204, file: !1224, line: 1149, baseType: !3203, size: 64, offset: 17024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3204, file: !1224, line: 1151, baseType: !3796, size: 64, offset: 17088)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1224, line: 1151, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3204, file: !1224, line: 1188, baseType: !273, size: 64, offset: 17152)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3204, file: !1224, line: 1191, baseType: !3800, size: 64, offset: 17216)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1224, line: 44, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3204, file: !1224, line: 1194, baseType: !3803, size: 64, offset: 17280)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1224, line: 45, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3204, file: !1224, line: 1197, baseType: !3806, size: 64, offset: 17344)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1224, line: 61, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3204, file: !1224, line: 1199, baseType: !3809, size: 64, offset: 17408)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2555, line: 99, size: 128, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3810, file: !2555, line: 100, baseType: !15, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3810, file: !2555, line: 101, baseType: !162, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3810, file: !2555, line: 103, baseType: !46, size: 16, offset: 96)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3204, file: !1224, line: 1202, baseType: !3816, size: 64, offset: 17472)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1224, line: 48, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3204, file: !1224, line: 1205, baseType: !249, size: 64, offset: 17536)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3204, file: !1224, line: 1206, baseType: !3820, size: 64, offset: 17600)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !935, line: 14, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !935, line: 12, size: 384, elements: !3823)
!3823 = !{!3824}
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3822, file: !935, line: 13, baseType: !3825, size: 384)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3822, file: !935, line: 13, size: 384, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3825, file: !935, line: 13, baseType: !166, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3825, file: !935, line: 13, baseType: !166, size: 32, offset: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3825, file: !935, line: 13, baseType: !166, size: 32, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3825, file: !935, line: 13, baseType: !3831, size: 256, offset: 128)
!3831 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3832, line: 37, size: 256, elements: !3833)
!3832 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3833 = !{!3834, !3839, !3852, !3858, !3867, !3894, !3899}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3831, file: !3832, line: 42, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 39, size: 64, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3835, file: !3832, line: 40, baseType: !3502, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3835, file: !3832, line: 41, baseType: !55, size: 32, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3831, file: !3832, line: 50, baseType: !3840, size: 192)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 45, size: 192, elements: !3841)
!3841 = !{!3842, !3844, !3845, !3851}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3840, file: !3832, line: 46, baseType: !3843, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !56, line: 95, baseType: !166)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3840, file: !3832, line: 47, baseType: !166, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3840, file: !3832, line: 48, baseType: !3846, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3832, line: 11, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3832, line: 8, size: 64, elements: !3848)
!3848 = !{!3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3847, file: !3832, line: 9, baseType: !166, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3847, file: !3832, line: 10, baseType: !273, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3840, file: !3832, line: 49, baseType: !166, size: 32, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3831, file: !3832, line: 57, baseType: !3853, size: 128)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 53, size: 128, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3853, file: !3832, line: 54, baseType: !3502, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3853, file: !3832, line: 55, baseType: !55, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3853, file: !3832, line: 56, baseType: !3846, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3831, file: !3832, line: 66, baseType: !3859, size: 256)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 60, size: 256, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3866}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3859, file: !3832, line: 61, baseType: !3502, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3859, file: !3832, line: 62, baseType: !55, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3859, file: !3832, line: 63, baseType: !166, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3859, file: !3832, line: 64, baseType: !3865, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !56, line: 94, baseType: !373)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3859, file: !3832, line: 65, baseType: !3865, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3831, file: !3832, line: 105, baseType: !3868, size: 256)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 69, size: 256, elements: !3869)
!3869 = !{!3870, !3871}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3868, file: !3832, line: 70, baseType: !273, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3832, line: 79, baseType: !3872, size: 192, offset: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3832, line: 79, size: 192, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3883, !3888}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3872, file: !3832, line: 81, baseType: !166, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3872, file: !3832, line: 86, baseType: !818, size: 16)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3872, file: !3832, line: 92, baseType: !3877, size: 192)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !3832, line: 88, size: 192, elements: !3878)
!3878 = !{!3879, !3881, !3882}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3877, file: !3832, line: 89, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !2841)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3877, file: !3832, line: 90, baseType: !273, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3877, file: !3832, line: 91, baseType: !273, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3872, file: !3832, line: 97, baseType: !3884, size: 96)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !3832, line: 94, size: 96, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3884, file: !3832, line: 95, baseType: !3880, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3884, file: !3832, line: 96, baseType: !115, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3872, file: !3832, line: 103, baseType: !3889, size: 128)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !3832, line: 99, size: 128, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3889, file: !3832, line: 100, baseType: !249, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3889, file: !3832, line: 101, baseType: !115, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3889, file: !3832, line: 102, baseType: !115, size: 32, offset: 96)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3831, file: !3832, line: 111, baseType: !3895, size: 128)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 108, size: 128, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3895, file: !3832, line: 109, baseType: !374, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3895, file: !3832, line: 110, baseType: !166, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3831, file: !3832, line: 118, baseType: !3900, size: 128)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3831, file: !3832, line: 114, size: 128, elements: !3901)
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3900, file: !3832, line: 115, baseType: !273, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3900, file: !3832, line: 116, baseType: !166, size: 32, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3900, file: !3832, line: 117, baseType: !57, size: 32, offset: 96)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3204, file: !1224, line: 1208, baseType: !3686, size: 448, offset: 17664)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3204, file: !1224, line: 1215, baseType: !118, size: 64, offset: 18112)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3204, file: !1224, line: 1217, baseType: !118, size: 64, offset: 18176)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3204, file: !1224, line: 1219, baseType: !118, size: 64, offset: 18240)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3204, file: !1224, line: 1223, baseType: !3910, size: 64, offset: 18304)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3911, line: 99, baseType: !3912)
!3911 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3911, line: 99, size: 64, elements: !3913)
!3913 = !{!3914}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3912, file: !3911, line: 99, baseType: !3366, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3204, file: !1224, line: 1225, baseType: !86, size: 32, offset: 18368)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3204, file: !1224, line: 1226, baseType: !166, size: 32, offset: 18400)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3204, file: !1224, line: 1227, baseType: !166, size: 32, offset: 18432)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3204, file: !1224, line: 1231, baseType: !3919, size: 64, offset: 18496)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1224, line: 1231, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3204, file: !1224, line: 1233, baseType: !28, size: 128, offset: 18560)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3204, file: !1224, line: 1240, baseType: !3923, size: 64, offset: 18688)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1224, line: 62, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3204, file: !1224, line: 1242, baseType: !3926, size: 64, offset: 18752)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1224, line: 1242, flags: DIFlagFwdDecl)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3204, file: !1224, line: 1244, baseType: !28, size: 128, offset: 18816)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3204, file: !1224, line: 1245, baseType: !3930, size: 64, offset: 18944)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1224, line: 51, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3204, file: !1224, line: 1246, baseType: !665, size: 256, offset: 19008)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3204, file: !1224, line: 1247, baseType: !57, size: 32, offset: 19264)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3204, file: !1224, line: 1250, baseType: !3935, size: 64, offset: 19328)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1224, line: 57, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3204, file: !1224, line: 1251, baseType: !665, size: 256, offset: 19392)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3204, file: !1224, line: 1252, baseType: !28, size: 128, offset: 19648)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3204, file: !1224, line: 1259, baseType: !1486, size: 64, offset: 19776)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3204, file: !1224, line: 1260, baseType: !818, size: 16, offset: 19840)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3204, file: !1224, line: 1261, baseType: !818, size: 16, offset: 19856)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3204, file: !1224, line: 1314, baseType: !3943, size: 64, offset: 19904)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3945, line: 62, size: 256, align: 256, elements: !3946)
!3945 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3944, file: !3945, line: 75, baseType: !115, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3944, file: !3945, line: 90, baseType: !115, size: 32, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3944, file: !3945, line: 112, baseType: !119, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3944, file: !3945, line: 132, baseType: !115, size: 32, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3944, file: !3945, line: 140, baseType: !115, size: 32, offset: 160)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3944, file: !3945, line: 149, baseType: !115, size: 32, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3944, file: !3945, line: 154, baseType: !3954, offset: 224)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !741)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3204, file: !1224, line: 1315, baseType: !114, size: 32, offset: 19968)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3204, file: !1224, line: 1316, baseType: !114, size: 32, offset: 20000)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3204, file: !1224, line: 1321, baseType: !249, size: 64, offset: 20032)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3204, file: !1224, line: 1325, baseType: !166, size: 32, offset: 20096)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3204, file: !1224, line: 1326, baseType: !166, size: 32, offset: 20128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3204, file: !1224, line: 1327, baseType: !166, size: 32, offset: 20160)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3204, file: !1224, line: 1328, baseType: !166, size: 32, offset: 20192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3204, file: !1224, line: 1329, baseType: !553, size: 128, align: 64, offset: 20224)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3204, file: !1224, line: 1332, baseType: !3964, size: 128, offset: 20352)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3965, line: 51, size: 128, elements: !3966)
!3965 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3966 = !{!3967, !3972, !3973}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3964, file: !3965, line: 60, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3969, line: 7, size: 64, elements: !3970)
!3969 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3970 = !{!3971}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3968, file: !3969, line: 12, baseType: !3363, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3964, file: !3965, line: 63, baseType: !549, size: 8, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3964, file: !3965, line: 70, baseType: !549, size: 8, offset: 72)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3204, file: !1224, line: 1335, baseType: !1222, size: 64, offset: 20480)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3204, file: !1224, line: 1337, baseType: !3976, size: 128, offset: 20544)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3965, line: 39, size: 128, elements: !3977)
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3976, file: !3965, line: 40, baseType: !466, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3976, file: !3965, line: 42, baseType: !115, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3976, file: !3965, line: 43, baseType: !115, size: 32, offset: 96)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3204, file: !1224, line: 1340, baseType: !3982, size: 64, offset: 20672)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1224, line: 69, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3204, file: !1224, line: 1351, baseType: !166, size: 32, offset: 20736)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3204, file: !1224, line: 1352, baseType: !166, size: 32, offset: 20768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3204, file: !1224, line: 1354, baseType: !249, size: 64, offset: 20800)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3204, file: !1224, line: 1364, baseType: !118, size: 64, offset: 20864)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3204, file: !1224, line: 1365, baseType: !118, size: 64, offset: 20928)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3204, file: !1224, line: 1412, baseType: !249, size: 64, offset: 20992)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3204, file: !1224, line: 1453, baseType: !2550, size: 64, offset: 21056)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3204, file: !1224, line: 1457, baseType: !3992, size: 64, offset: 21120)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1399, line: 61, size: 576, elements: !3994)
!3994 = !{!3995, !4002, !4021, !4024, !4025, !4058, !4068}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3993, file: !1399, line: 62, baseType: !3996, size: 32)
!3996 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1399, line: 51, baseType: !57, size: 32, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3999 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!4000 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!4001 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3993, file: !1399, line: 64, baseType: !4003, size: 192, offset: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3993, file: !1399, line: 64, size: 192, elements: !4004)
!4004 = !{!4005, !4016}
!4005 = !DIDerivedType(tag: DW_TAG_member, scope: !4003, file: !1399, line: 65, baseType: !4006, size: 192)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !1399, line: 65, size: 192, elements: !4007)
!4007 = !{!4008, !4015}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4006, file: !1399, line: 66, baseType: !4009, size: 128)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4010, line: 50, size: 128, elements: !4011)
!4010 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4011 = !{!4012, !4013, !4014}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4009, file: !4010, line: 52, baseType: !249, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4009, file: !4010, line: 54, baseType: !57, size: 32, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4009, file: !4010, line: 55, baseType: !57, size: 32, offset: 96)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4006, file: !1399, line: 67, baseType: !249, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !4003, file: !1399, line: 70, baseType: !4017, size: 192)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4003, file: !1399, line: 70, size: 192, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4017, file: !1399, line: 71, baseType: !553, size: 128, align: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4017, file: !1399, line: 72, baseType: !249, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3993, file: !1399, line: 76, baseType: !4022, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1399, line: 76, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3993, file: !1399, line: 77, baseType: !249, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3993, file: !1399, line: 79, baseType: !4026, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4010, line: 25, size: 256, elements: !4028)
!4028 = !{!4029, !4035, !4039}
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !4010, line: 26, baseType: !4030, size: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !4010, line: 26, size: 128, elements: !4031)
!4031 = !{!4032, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4030, file: !4010, line: 27, baseType: !4033, size: 128)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !3560)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4030, file: !4010, line: 28, baseType: !4033, size: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4027, file: !4010, line: 31, baseType: !4036, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4038)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4010, line: 23, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !4010, line: 33, baseType: !4040, size: 64, offset: 192)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !4010, line: 33, size: 64, elements: !4041)
!4041 = !{!4042, !4048, !4053}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4040, file: !4010, line: 38, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 34, size: 64, elements: !4044)
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4043, file: !4010, line: 35, baseType: !790, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4043, file: !4010, line: 36, baseType: !171, size: 8, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4043, file: !4010, line: 37, baseType: !171, size: 8, offset: 40)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4040, file: !4010, line: 42, baseType: !4049, size: 16)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 39, size: 16, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4049, file: !4010, line: 40, baseType: !171, size: 8)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4049, file: !4010, line: 41, baseType: !171, size: 8, offset: 8)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4040, file: !4010, line: 46, baseType: !4054, size: 16)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !4010, line: 43, size: 16, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4054, file: !4010, line: 44, baseType: !171, size: 8)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4054, file: !4010, line: 45, baseType: !171, size: 8, offset: 8)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3993, file: !1399, line: 81, baseType: !4059, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1399, line: 85, size: 384, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4060, file: !1399, line: 86, baseType: !4022, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4060, file: !1399, line: 87, baseType: !249, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4060, file: !1399, line: 88, baseType: !249, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4060, file: !1399, line: 89, baseType: !249, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4060, file: !1399, line: 90, baseType: !549, size: 8, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4060, file: !1399, line: 92, baseType: !4059, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3993, file: !1399, line: 82, baseType: !57, size: 32, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3204, file: !1224, line: 1463, baseType: !4070, offset: 21184)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1224, line: 739, elements: !639)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3204, file: !1224, line: 1470, baseType: !553, size: 128, align: 64, offset: 21184)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3204, file: !1224, line: 1471, baseType: !704, size: 32, offset: 21312)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3204, file: !1224, line: 1472, baseType: !166, size: 32, offset: 21344)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3204, file: !1224, line: 1474, baseType: !3203, size: 64, offset: 21376)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3204, file: !1224, line: 1475, baseType: !2128, size: 320, offset: 21440)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3204, file: !1224, line: 1478, baseType: !4077, size: 64, offset: 21760)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4079, line: 14, flags: DIFlagFwdDecl)
!4079 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3204, file: !1224, line: 1482, baseType: !704, size: 32, offset: 21824)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3204, file: !1224, line: 1489, baseType: !273, size: 64, offset: 21888)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3204, file: !1224, line: 1504, baseType: !273, size: 64, offset: 21952)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3204, file: !1224, line: 1505, baseType: !119, size: 64, offset: 22016)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3204, file: !1224, line: 1506, baseType: !118, size: 64, offset: 22080)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3204, file: !1224, line: 1507, baseType: !119, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3204, file: !1224, line: 1508, baseType: !119, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3204, file: !1224, line: 1509, baseType: !119, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3204, file: !1224, line: 1510, baseType: !553, size: 128, align: 64, offset: 22208)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3204, file: !1224, line: 1511, baseType: !166, size: 32, offset: 22336)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3204, file: !1224, line: 1515, baseType: !4091, size: 64, offset: 22400)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !654, line: 56, size: 64, elements: !4092)
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4091, file: !654, line: 57, baseType: !657, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3204, file: !1224, line: 1518, baseType: !4091, size: 64, offset: 22464)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3204, file: !1224, line: 1528, baseType: !553, size: 128, align: 64, offset: 22528)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3204, file: !1224, line: 1552, baseType: !4097, size: 35328, offset: 23040)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4098, line: 430, size: 35328, elements: !4099)
!4098 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4099 = !{!4100, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4129, !4130, !4131, !4132, !4133, !4134, !4137, !4138, !4139, !4140}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4097, file: !4098, line: 432, baseType: !4101, size: 192)
!4101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4102, size: 192, elements: !340)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4103, line: 16, size: 64, elements: !4104)
!4103 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4102, file: !4103, line: 17, baseType: !178, size: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4102, file: !4103, line: 18, baseType: !178, size: 16, offset: 16)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4102, file: !4103, line: 19, baseType: !178, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4102, file: !4103, line: 19, baseType: !178, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4102, file: !4103, line: 19, baseType: !178, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4102, file: !4103, line: 19, baseType: !178, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4102, file: !4103, line: 19, baseType: !178, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4102, file: !4103, line: 20, baseType: !178, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4102, file: !4103, line: 20, baseType: !178, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4102, file: !4103, line: 20, baseType: !178, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4102, file: !4103, line: 20, baseType: !178, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4102, file: !4103, line: 20, baseType: !178, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4102, file: !4103, line: 20, baseType: !178, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4097, file: !4098, line: 436, baseType: !249, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4097, file: !4098, line: 440, baseType: !46, size: 16, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4097, file: !4098, line: 441, baseType: !46, size: 16, offset: 272)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4097, file: !4098, line: 442, baseType: !46, size: 16, offset: 288)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4097, file: !4098, line: 443, baseType: !46, size: 16, offset: 304)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4097, file: !4098, line: 447, baseType: !249, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4097, file: !4098, line: 448, baseType: !249, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4097, file: !4098, line: 459, baseType: !4126, size: 256, offset: 448)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4127, size: 256, elements: !722)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4098, line: 428, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4097, file: !4098, line: 461, baseType: !249, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4097, file: !4098, line: 463, baseType: !249, size: 64, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4097, file: !4098, line: 465, baseType: !249, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4097, file: !4098, line: 466, baseType: !249, size: 64, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4097, file: !4098, line: 467, baseType: !249, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4097, file: !4098, line: 473, baseType: !4135, size: 64, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4098, line: 10, flags: DIFlagFwdDecl)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4097, file: !4098, line: 480, baseType: !249, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4097, file: !4098, line: 482, baseType: !57, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4097, file: !4098, line: 491, baseType: !114, size: 32, offset: 1184)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4097, file: !4098, line: 501, baseType: !4141, size: 33792, offset: 1536)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4142, line: 448, size: 33792, elements: !4143)
!4142 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4143 = !{!4144, !4145, !4146, !4308, !4309, !4315, !4316}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4141, file: !4142, line: 461, baseType: !57, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4141, file: !4142, line: 468, baseType: !249, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4141, file: !4142, line: 476, baseType: !4147, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4142, line: 356, size: 33280, align: 512, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4148, file: !4142, line: 358, baseType: !57, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4148, file: !4142, line: 361, baseType: !57, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4148, file: !4142, line: 364, baseType: !118, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4148, file: !4142, line: 367, baseType: !118, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4148, file: !4142, line: 370, baseType: !118, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4148, file: !4142, line: 373, baseType: !57, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4148, file: !4142, line: 376, baseType: !57, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4148, file: !4142, line: 391, baseType: !57, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4148, file: !4142, line: 394, baseType: !57, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4148, file: !4142, line: 397, baseType: !4160, size: 32768, offset: 512)
!4160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4142, line: 348, size: 32768, elements: !4161)
!4161 = !{!4162, !4177, !4214, !4291, !4304}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4160, file: !4142, line: 349, baseType: !4163, size: 896)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4142, line: 12, size: 896, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4176}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4163, file: !4142, line: 13, baseType: !114, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4163, file: !4142, line: 14, baseType: !114, size: 32, offset: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4163, file: !4142, line: 15, baseType: !114, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4163, file: !4142, line: 16, baseType: !114, size: 32, offset: 96)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4163, file: !4142, line: 17, baseType: !114, size: 32, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4163, file: !4142, line: 18, baseType: !114, size: 32, offset: 160)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4163, file: !4142, line: 19, baseType: !114, size: 32, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4163, file: !4142, line: 22, baseType: !4173, size: 640, offset: 224)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 640, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 20)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4163, file: !4142, line: 25, baseType: !114, size: 32, offset: 864)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4160, file: !4142, line: 350, baseType: !4178, size: 4096, align: 128)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4142, line: 34, size: 4096, align: 128, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4183, !4184, !4199, !4200, !4201, !4203, !4205, !4209}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4178, file: !4142, line: 35, baseType: !178, size: 16)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4178, file: !4142, line: 36, baseType: !178, size: 16, offset: 16)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4178, file: !4142, line: 37, baseType: !178, size: 16, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4178, file: !4142, line: 38, baseType: !178, size: 16, offset: 48)
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !4178, file: !4142, line: 39, baseType: !4185, size: 128, offset: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4178, file: !4142, line: 39, size: 128, elements: !4186)
!4186 = !{!4187, !4192}
!4187 = !DIDerivedType(tag: DW_TAG_member, scope: !4185, file: !4142, line: 40, baseType: !4188, size: 128)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4185, file: !4142, line: 40, size: 128, elements: !4189)
!4189 = !{!4190, !4191}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4188, file: !4142, line: 41, baseType: !118, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4188, file: !4142, line: 42, baseType: !118, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4185, file: !4142, line: 44, baseType: !4193, size: 128)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4185, file: !4142, line: 44, size: 128, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4193, file: !4142, line: 45, baseType: !114, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4193, file: !4142, line: 46, baseType: !114, size: 32, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4193, file: !4142, line: 47, baseType: !114, size: 32, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4193, file: !4142, line: 48, baseType: !114, size: 32, offset: 96)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4178, file: !4142, line: 51, baseType: !114, size: 32, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4178, file: !4142, line: 52, baseType: !114, size: 32, offset: 224)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4178, file: !4142, line: 55, baseType: !4202, size: 1024, offset: 256)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4178, file: !4142, line: 58, baseType: !4204, size: 2048, offset: 1280)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, elements: !344)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4178, file: !4142, line: 60, baseType: !4206, size: 384, offset: 3328)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 384, elements: !4207)
!4207 = !{!4208}
!4208 = !DISubrange(count: 12)
!4209 = !DIDerivedType(tag: DW_TAG_member, scope: !4178, file: !4142, line: 62, baseType: !4210, size: 384, offset: 3712)
!4210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4178, file: !4142, line: 62, size: 384, elements: !4211)
!4211 = !{!4212, !4213}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4210, file: !4142, line: 63, baseType: !4206, size: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4210, file: !4142, line: 64, baseType: !4206, size: 384)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4160, file: !4142, line: 351, baseType: !4215, size: 1088)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4142, line: 79, size: 1088, elements: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4290}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4215, file: !4142, line: 80, baseType: !114, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4215, file: !4142, line: 81, baseType: !114, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4215, file: !4142, line: 82, baseType: !114, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4215, file: !4142, line: 83, baseType: !114, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4215, file: !4142, line: 84, baseType: !114, size: 32, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4215, file: !4142, line: 85, baseType: !114, size: 32, offset: 160)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4215, file: !4142, line: 86, baseType: !114, size: 32, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4215, file: !4142, line: 88, baseType: !4173, size: 640, offset: 224)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4215, file: !4142, line: 89, baseType: !171, size: 8, offset: 864)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4215, file: !4142, line: 90, baseType: !171, size: 8, offset: 872)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4215, file: !4142, line: 91, baseType: !171, size: 8, offset: 880)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4215, file: !4142, line: 92, baseType: !171, size: 8, offset: 888)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4215, file: !4142, line: 93, baseType: !171, size: 8, offset: 896)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4215, file: !4142, line: 94, baseType: !171, size: 8, offset: 904)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4215, file: !4142, line: 95, baseType: !4232, size: 64, offset: 960)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4234, line: 11, size: 128, elements: !4235)
!4234 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4235 = !{!4236, !4237}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4233, file: !4234, line: 12, baseType: !374, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4233, file: !4234, line: 13, baseType: !4238, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4240, line: 103, size: 1344, elements: !4241)
!4240 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4270, !4271, !4272}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4239, file: !4240, line: 109, baseType: !249, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4239, file: !4240, line: 110, baseType: !249, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4239, file: !4240, line: 111, baseType: !249, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4239, file: !4240, line: 112, baseType: !249, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4239, file: !4240, line: 113, baseType: !249, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4239, file: !4240, line: 114, baseType: !249, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4239, file: !4240, line: 117, baseType: !249, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4239, file: !4240, line: 118, baseType: !249, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4239, file: !4240, line: 119, baseType: !249, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4239, file: !4240, line: 120, baseType: !249, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4239, file: !4240, line: 121, baseType: !249, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4239, file: !4240, line: 122, baseType: !249, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4239, file: !4240, line: 123, baseType: !249, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4239, file: !4240, line: 124, baseType: !249, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4239, file: !4240, line: 125, baseType: !249, size: 64, offset: 896)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4239, file: !4240, line: 139, baseType: !249, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4239, file: !4240, line: 142, baseType: !249, size: 64, offset: 1024)
!4259 = !DIDerivedType(tag: DW_TAG_member, scope: !4239, file: !4240, line: 144, baseType: !4260, size: 64, offset: 1088)
!4260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4239, file: !4240, line: 144, size: 64, elements: !4261)
!4261 = !{!4262, !4263, !4264}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4260, file: !4240, line: 146, baseType: !178, size: 16)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4260, file: !4240, line: 148, baseType: !118, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4260, file: !4240, line: 150, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4240, line: 59, size: 64, elements: !4266)
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4265, file: !4240, line: 61, baseType: !118, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4265, file: !4240, line: 63, baseType: !118, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4265, file: !4240, line: 65, baseType: !118, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4239, file: !4240, line: 153, baseType: !249, size: 64, offset: 1152)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4239, file: !4240, line: 154, baseType: !249, size: 64, offset: 1216)
!4272 = !DIDerivedType(tag: DW_TAG_member, scope: !4239, file: !4240, line: 156, baseType: !4273, size: 64, offset: 1280)
!4273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4239, file: !4240, line: 156, size: 64, elements: !4274)
!4274 = !{!4275, !4276, !4277}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4273, file: !4240, line: 158, baseType: !178, size: 16)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4273, file: !4240, line: 160, baseType: !118, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4273, file: !4240, line: 162, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4240, line: 69, size: 64, elements: !4279)
!4279 = !{!4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4278, file: !4240, line: 71, baseType: !118, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4278, file: !4240, line: 73, baseType: !118, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4278, file: !4240, line: 75, baseType: !118, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4278, file: !4240, line: 77, baseType: !118, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4278, file: !4240, line: 80, baseType: !118, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4278, file: !4240, line: 83, baseType: !118, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4278, file: !4240, line: 86, baseType: !118, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4278, file: !4240, line: 88, baseType: !118, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4278, file: !4240, line: 93, baseType: !118, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4278, file: !4240, line: 100, baseType: !118, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4215, file: !4142, line: 96, baseType: !114, size: 32, offset: 1024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4160, file: !4142, line: 352, baseType: !4292, size: 4608, align: 512)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4142, line: 333, size: 4608, align: 512, elements: !4293)
!4293 = !{!4294, !4295, !4302}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4292, file: !4142, line: 334, baseType: !4178, size: 4096, align: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4292, file: !4142, line: 335, baseType: !4296, size: 512, offset: 4096)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4142, line: 312, size: 512, elements: !4297)
!4297 = !{!4298, !4299, !4300}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4296, file: !4142, line: 313, baseType: !118, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4296, file: !4142, line: 314, baseType: !118, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4296, file: !4142, line: 315, baseType: !4301, size: 384, offset: 128)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 384, elements: !836)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4292, file: !4142, line: 336, baseType: !4303, offset: 4608)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !741)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4160, file: !4142, line: 353, baseType: !4305, size: 32768)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 32768, elements: !4306)
!4306 = !{!4307}
!4307 = !DISubrange(count: 4096)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4141, file: !4142, line: 484, baseType: !4147, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4141, file: !4142, line: 491, baseType: !4310, size: 128, offset: 256)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4142, line: 404, size: 128, elements: !4311)
!4311 = !{!4312, !4313, !4314}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4310, file: !4142, line: 424, baseType: !118, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4310, file: !4142, line: 432, baseType: !57, size: 32, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4310, file: !4142, line: 440, baseType: !57, size: 32, offset: 96)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4141, file: !4142, line: 498, baseType: !4310, size: 128, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4141, file: !4142, line: 508, baseType: !4148, size: 33280, align: 512, offset: 512)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3186, file: !3187, line: 16, baseType: !726, size: 192, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3186, file: !3187, line: 17, baseType: !162, size: 32, offset: 704)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !241, file: !42, line: 1240, baseType: !273, size: 64, offset: 6912)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !241, file: !42, line: 1243, baseType: !114, size: 32, offset: 6976)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !241, file: !42, line: 1245, baseType: !806, size: 64, offset: 7040)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !241, file: !42, line: 1246, baseType: !806, size: 64, offset: 7104)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !241, file: !42, line: 1248, baseType: !115, size: 32, offset: 7168)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !241, file: !42, line: 1249, baseType: !4325, size: 64, offset: 7232)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 634, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !241, file: !42, line: 1252, baseType: !4328, size: 256, offset: 7296)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !241, file: !42, line: 1253, baseType: !4330, size: 128, offset: 7552)
!4330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4331, line: 21, baseType: !4332)
!4331 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4331, line: 19, size: 128, elements: !4333)
!4333 = !{!4334}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4332, file: !4331, line: 20, baseType: !4335, size: 128)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, elements: !3560)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !241, file: !42, line: 1255, baseType: !57, size: 32, offset: 7680)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !241, file: !42, line: 1261, baseType: !665, size: 256, offset: 7744)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !241, file: !42, line: 1267, baseType: !203, size: 64, offset: 8000)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !241, file: !42, line: 1269, baseType: !183, size: 64, offset: 8064)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !241, file: !42, line: 1271, baseType: !4341, size: 448, offset: 8128)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2384, line: 63, size: 448, elements: !4342)
!4342 = !{!4343, !4348, !4349, !4350, !4351, !4352, !4353}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4341, file: !2384, line: 64, baseType: !4344, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!249, !4347, !2382}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4341, file: !2384, line: 66, baseType: !4344, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4341, file: !2384, line: 69, baseType: !374, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4341, file: !2384, line: 70, baseType: !166, size: 32, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !2384, line: 71, baseType: !57, size: 32, offset: 224)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4341, file: !2384, line: 74, baseType: !28, size: 128, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4341, file: !2384, line: 85, baseType: !4354, size: 64, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !241, file: !42, line: 1274, baseType: !15, size: 64, offset: 8576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !241, file: !42, line: 1280, baseType: !15, size: 64, offset: 8640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !241, file: !42, line: 1283, baseType: !166, size: 32, offset: 8704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !241, file: !42, line: 1286, baseType: !1275, size: 32, offset: 8736)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !241, file: !42, line: 1289, baseType: !2190, size: 64, offset: 8768)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !241, file: !42, line: 1290, baseType: !713, size: 64, offset: 8832)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !241, file: !42, line: 1297, baseType: !930, size: 64, offset: 8896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !241, file: !42, line: 1304, baseType: !4363, size: 64, offset: 8960)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4364, line: 49, size: 64, elements: !4365)
!4364 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4365 = !{!4366}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4363, file: !4364, line: 50, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4364, line: 41, size: 512, align: 512, elements: !4369)
!4369 = !{!4370, !4371, !4376}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4368, file: !4364, line: 43, baseType: !142, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4368, file: !4364, line: 45, baseType: !4372, size: 192, offset: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4364, line: 29, size: 192, elements: !4373)
!4373 = !{!4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4372, file: !4364, line: 30, baseType: !28, size: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4372, file: !4364, line: 32, baseType: !374, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4368, file: !4364, line: 46, baseType: !374, size: 64, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !241, file: !42, line: 1305, baseType: !4363, size: 64, offset: 9024)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !241, file: !42, line: 1306, baseType: !553, size: 128, align: 64, offset: 9088)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !241, file: !42, line: 1307, baseType: !11, size: 256, offset: 9216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !241, file: !42, line: 1309, baseType: !665, size: 256, offset: 9472)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !241, file: !42, line: 1314, baseType: !166, size: 32, offset: 9728)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !241, file: !42, line: 1317, baseType: !142, size: 32, align: 512, offset: 10240)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !241, file: !42, line: 1318, baseType: !28, size: 128, offset: 10304)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !241, file: !42, line: 1320, baseType: !142, size: 32, offset: 10432)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !241, file: !42, line: 1321, baseType: !28, size: 128, offset: 10496)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !235, file: !236, line: 73, baseType: !166, size: 32, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !235, file: !236, line: 74, baseType: !4388, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !772, line: 42, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !185, file: !82, line: 141, baseType: !4392, size: 64, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!166, !2444, !549}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !185, file: !82, line: 142, baseType: !4396, size: 64, offset: 768)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!80, !80, !4399}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !81, file: !82, line: 96, baseType: !240, size: 64, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !81, file: !82, line: 97, baseType: !249, size: 64, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !81, file: !82, line: 98, baseType: !273, size: 64, offset: 960)
!4404 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !82, line: 100, baseType: !4405, size: 128, offset: 1024)
!4405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 100, size: 128, elements: !4406)
!4406 = !{!4407, !4408}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4405, file: !82, line: 101, baseType: !28, size: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4405, file: !82, line: 102, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !81, file: !82, line: 104, baseType: !28, size: 128, offset: 1152)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !81, file: !82, line: 105, baseType: !28, size: 128, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !81, file: !82, line: 113, baseType: !4413, size: 128, offset: 1408)
!4413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 109, size: 128, elements: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4413, file: !82, line: 110, baseType: !717, size: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4413, file: !82, line: 111, baseType: !96, size: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4413, file: !82, line: 112, baseType: !553, size: 128, align: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !74, file: !42, line: 1968, baseType: !4419, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!203, !80, !40, !4422}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4424, line: 10, size: 128, elements: !4425)
!4424 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4425 = !{!4426, !4427}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4423, file: !4424, line: 11, baseType: !1758, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4423, file: !4424, line: 12, baseType: !273, size: 64, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !74, file: !42, line: 1969, baseType: !4429, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!166, !4388, !40, !166}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !74, file: !42, line: 1970, baseType: !4433, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!68, !40, !166, !549}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !74, file: !42, line: 1972, baseType: !4437, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!166, !80, !229, !166}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !74, file: !42, line: 1974, baseType: !4441, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!166, !4388, !40, !80, !45, !549}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !74, file: !42, line: 1976, baseType: !4445, size: 64, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!166, !80, !40, !80}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !74, file: !42, line: 1977, baseType: !4449, size: 64, offset: 448)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!166, !40, !80}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !74, file: !42, line: 1978, baseType: !4453, size: 64, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!166, !4388, !40, !80, !203}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !74, file: !42, line: 1980, baseType: !4457, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!166, !4388, !40, !80, !45}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !74, file: !42, line: 1982, baseType: !4449, size: 64, offset: 640)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !74, file: !42, line: 1983, baseType: !4462, size: 64, offset: 704)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!166, !4388, !40, !80, !45, !245}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !74, file: !42, line: 1985, baseType: !4466, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!166, !4388, !40, !80, !40, !80, !57}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !74, file: !42, line: 1987, baseType: !4470, size: 64, offset: 832)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!166, !4388, !80, !4473}
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 226, size: 640, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4488, !4497, !4498, !4503, !4504, !4505}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4474, file: !42, line: 227, baseType: !57, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4474, file: !42, line: 228, baseType: !45, size: 16, offset: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, scope: !4474, file: !42, line: 241, baseType: !4479, size: 32, offset: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4474, file: !42, line: 241, size: 32, elements: !4480)
!4480 = !{!4481, !4482}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4479, file: !42, line: 242, baseType: !49, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4479, file: !42, line: 243, baseType: !4483, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4484, line: 16, baseType: !4485)
!4484 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4484, line: 14, size: 32, elements: !4486)
!4486 = !{!4487}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4485, file: !4484, line: 15, baseType: !54, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, scope: !4474, file: !42, line: 245, baseType: !4489, size: 32, offset: 96)
!4489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4474, file: !42, line: 245, size: 32, elements: !4490)
!4490 = !{!4491, !4492}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4489, file: !42, line: 246, baseType: !60, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4489, file: !42, line: 247, baseType: !4493, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4484, line: 20, baseType: !4494)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4484, line: 18, size: 32, elements: !4495)
!4495 = !{!4496}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4494, file: !4484, line: 19, baseType: !64, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4474, file: !42, line: 249, baseType: !251, size: 64, offset: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4474, file: !42, line: 250, baseType: !4499, size: 128, offset: 192)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !807, line: 13, size: 128, elements: !4500)
!4500 = !{!4501, !4502}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4499, file: !807, line: 14, baseType: !806, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4499, file: !807, line: 15, baseType: !374, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4474, file: !42, line: 251, baseType: !4499, size: 128, offset: 320)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4474, file: !42, line: 252, baseType: !4499, size: 128, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4474, file: !42, line: 259, baseType: !646, size: 64, offset: 576)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !74, file: !42, line: 1988, baseType: !4507, size: 64, offset: 896)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!166, !4388, !2444, !4510, !114, !57}
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4512, line: 22, size: 1280, elements: !4513)
!4512 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4511, file: !4512, line: 23, baseType: !114, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4511, file: !4512, line: 24, baseType: !45, size: 16, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4511, file: !4512, line: 25, baseType: !57, size: 32, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4511, file: !4512, line: 26, baseType: !814, size: 32, offset: 96)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4511, file: !4512, line: 27, baseType: !118, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4511, file: !4512, line: 28, baseType: !118, size: 64, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4511, file: !4512, line: 41, baseType: !118, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4511, file: !4512, line: 42, baseType: !245, size: 32, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4511, file: !4512, line: 43, baseType: !245, size: 32, offset: 352)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4511, file: !4512, line: 44, baseType: !49, size: 32, offset: 384)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4511, file: !4512, line: 45, baseType: !60, size: 32, offset: 416)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4511, file: !4512, line: 46, baseType: !251, size: 64, offset: 448)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4511, file: !4512, line: 47, baseType: !4499, size: 128, offset: 512)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4511, file: !4512, line: 48, baseType: !4499, size: 128, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4511, file: !4512, line: 49, baseType: !4499, size: 128, offset: 768)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4511, file: !4512, line: 50, baseType: !4499, size: 128, offset: 896)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4511, file: !4512, line: 51, baseType: !118, size: 64, offset: 1024)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4511, file: !4512, line: 52, baseType: !118, size: 64, offset: 1088)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4511, file: !4512, line: 53, baseType: !114, size: 32, offset: 1152)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4511, file: !4512, line: 54, baseType: !114, size: 32, offset: 1184)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4511, file: !4512, line: 55, baseType: !118, size: 64, offset: 1216)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !74, file: !42, line: 1990, baseType: !4536, size: 64, offset: 960)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!371, !80, !229, !384}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !74, file: !42, line: 1991, baseType: !4540, size: 64, offset: 1024)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!166, !40, !4543, !118, !118}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 55, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !74, file: !42, line: 1993, baseType: !4546, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!166, !40, !166}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !74, file: !42, line: 1994, baseType: !4550, size: 64, offset: 1152)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!166, !40, !80, !646, !57, !45}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !74, file: !42, line: 1997, baseType: !4554, size: 64, offset: 1216)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!166, !4388, !40, !646, !45}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !74, file: !42, line: 1999, baseType: !4558, size: 64, offset: 1280)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!68, !4388, !80, !166}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !74, file: !42, line: 2001, baseType: !4562, size: 64, offset: 1344)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!166, !4388, !80, !68, !166}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !74, file: !42, line: 2003, baseType: !4566, size: 64, offset: 1408)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!166, !4388, !80, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !42, line: 76, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !74, file: !42, line: 2005, baseType: !4572, size: 64, offset: 1472)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!166, !80, !4569}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !74, file: !42, line: 2006, baseType: !4576, size: 64, offset: 1536)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4579, !40}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !42, line: 3192, size: 192, elements: !4581)
!4581 = !{!4582, !4583}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4580, file: !42, line: 3193, baseType: !417, size: 128)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4580, file: !42, line: 3194, baseType: !114, size: 32, offset: 128)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !41, file: !42, line: 655, baseType: !240, size: 64, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !41, file: !42, line: 656, baseType: !412, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !41, file: !42, line: 659, baseType: !273, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !41, file: !42, line: 663, baseType: !249, size: 64, offset: 640)
!4588 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 671, baseType: !4589, size: 32, offset: 704)
!4589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 671, size: 32, elements: !4590)
!4590 = !{!4591, !4593}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4589, file: !42, line: 672, baseType: !4592, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4589, file: !42, line: 673, baseType: !57, size: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !41, file: !42, line: 675, baseType: !245, size: 32, offset: 736)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !41, file: !42, line: 676, baseType: !251, size: 64, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !41, file: !42, line: 677, baseType: !4499, size: 128, offset: 832)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !41, file: !42, line: 678, baseType: !4499, size: 128, offset: 960)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !41, file: !42, line: 679, baseType: !4499, size: 128, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !41, file: !42, line: 680, baseType: !142, size: 32, offset: 1216)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !41, file: !42, line: 681, baseType: !46, size: 16, offset: 1248)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !41, file: !42, line: 682, baseType: !171, size: 8, offset: 1264)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !41, file: !42, line: 683, baseType: !171, size: 8, offset: 1272)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !41, file: !42, line: 684, baseType: !2517, size: 64, offset: 1280)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !41, file: !42, line: 691, baseType: !249, size: 64, offset: 1344)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !41, file: !42, line: 692, baseType: !425, size: 320, offset: 1408)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !41, file: !42, line: 694, baseType: !249, size: 64, offset: 1728)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !41, file: !42, line: 695, baseType: !249, size: 64, offset: 1792)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !41, file: !42, line: 697, baseType: !717, size: 128, offset: 1856)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !41, file: !42, line: 698, baseType: !28, size: 128, offset: 1984)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !41, file: !42, line: 707, baseType: !28, size: 128, offset: 2112)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !41, file: !42, line: 708, baseType: !28, size: 128, offset: 2240)
!4612 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 709, baseType: !4613, size: 128, offset: 2368)
!4613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 709, size: 128, elements: !4614)
!4614 = !{!4615, !4616}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4613, file: !42, line: 710, baseType: !713, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4613, file: !42, line: 711, baseType: !553, size: 128, align: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !41, file: !42, line: 713, baseType: !17, size: 64, offset: 2496)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !41, file: !42, line: 714, baseType: !17, size: 64, offset: 2560)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !41, file: !42, line: 715, baseType: !162, size: 32, offset: 2624)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !41, file: !42, line: 716, baseType: !162, size: 32, offset: 2656)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !41, file: !42, line: 717, baseType: !162, size: 32, offset: 2688)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !41, file: !42, line: 719, baseType: !162, size: 32, offset: 2720)
!4623 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 721, baseType: !4624, size: 64, offset: 2752)
!4624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 721, size: 64, elements: !4625)
!4625 = !{!4626, !4627}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4624, file: !42, line: 722, baseType: !966, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4624, file: !42, line: 723, baseType: !2263, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !41, file: !42, line: 725, baseType: !4629, size: 64, offset: 2816)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 725, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !41, file: !42, line: 726, baseType: !413, size: 1536, align: 64, offset: 2880)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !41, file: !42, line: 727, baseType: !28, size: 128, offset: 4416)
!4633 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 728, baseType: !4634, size: 64, offset: 4544)
!4634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 728, size: 64, elements: !4635)
!4635 = !{!4636, !4637, !4640, !4641}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4634, file: !42, line: 729, baseType: !1222, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4634, file: !42, line: 730, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 730, flags: DIFlagFwdDecl)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4634, file: !42, line: 731, baseType: !229, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4634, file: !42, line: 732, baseType: !57, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !41, file: !42, line: 735, baseType: !115, size: 32, offset: 4608)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !41, file: !42, line: 738, baseType: !115, size: 32, offset: 4640)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !41, file: !42, line: 739, baseType: !4325, size: 64, offset: 4672)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !41, file: !42, line: 750, baseType: !273, size: 64, offset: 4736)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !7, file: !8, line: 180, baseType: !412, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "cache_resources", scope: !7, file: !8, line: 181, baseType: !4648, size: 256, offset: 384)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_resources", file: !8, line: 137, size: 256, elements: !4649)
!4649 = !{!4650, !4718, !4719, !4720, !4721}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4648, file: !8, line: 138, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_cache_ops", file: !8, line: 235, size: 512, elements: !4654)
!4654 = !{!4655, !4660, !4673, !4677, !4682, !4705, !4709, !4714}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "end_operation", scope: !4653, file: !8, line: 237, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{null, !4659}
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4653, file: !8, line: 240, baseType: !4661, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!166, !4659, !251, !1093, !4664, !4669, !273}
!4664 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_read_from_hole", file: !8, line: 225, baseType: !57, size: 32, elements: !4665)
!4665 = !{!4666, !4667, !4668}
!4666 = !DIEnumerator(name: "NETFS_READ_HOLE_IGNORE", value: 0)
!4667 = !DIEnumerator(name: "NETFS_READ_HOLE_CLEAR", value: 1)
!4668 = !DIEnumerator(name: "NETFS_READ_HOLE_FAIL", value: 2)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "netfs_io_terminated_t", file: !8, line: 119, baseType: !4670)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{null, !273, !371, !549}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4653, file: !8, line: 248, baseType: !4674, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!166, !4659, !251, !1093, !4669, !273}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4653, file: !8, line: 255, baseType: !4678, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4659, !979, !4681, !251}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_read", scope: !4653, file: !8, line: 261, baseType: !4683, size: 64, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!4686, !4692, !251}
!4686 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_source", file: !8, line: 112, baseType: !1959, size: 8, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DIEnumerator(name: "NETFS_FILL_WITH_ZEROES", value: 0)
!4689 = !DIEnumerator(name: "NETFS_DOWNLOAD_FROM_SERVER", value: 1)
!4690 = !DIEnumerator(name: "NETFS_READ_FROM_CACHE", value: 2)
!4691 = !DIEnumerator(name: "NETFS_INVALID_READ", value: 3)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_io_subrequest", file: !8, line: 148, size: 576, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rreq", scope: !4693, file: !8, line: 149, baseType: !6, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "rreq_link", scope: !4693, file: !8, line: 150, baseType: !28, size: 128, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4693, file: !8, line: 151, baseType: !251, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4693, file: !8, line: 152, baseType: !384, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "transferred", scope: !4693, file: !8, line: 153, baseType: !384, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4693, file: !8, line: 154, baseType: !704, size: 32, offset: 384)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4693, file: !8, line: 155, baseType: !818, size: 16, offset: 416)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "debug_index", scope: !4693, file: !8, line: 156, baseType: !46, size: 16, offset: 432)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4693, file: !8, line: 157, baseType: !4686, size: 8, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4693, file: !8, line: 158, baseType: !249, size: 64, offset: 512)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_write", scope: !4653, file: !8, line: 267, baseType: !4706, size: 64, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!166, !4659, !979, !4681, !251, !549}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_ondemand_read", scope: !4653, file: !8, line: 274, baseType: !4710, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!4686, !4659, !251, !4681, !251, !2224, !4713}
!4713 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !18, line: 22, baseType: !386)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "query_occupancy", scope: !4653, file: !8, line: 282, baseType: !4715, size: 64, offset: 448)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!166, !4659, !251, !384, !384, !979, !4681}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv", scope: !4648, file: !8, line: 139, baseType: !273, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "cache_priv2", scope: !4648, file: !8, line: 140, baseType: !273, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !4648, file: !8, line: 141, baseType: !57, size: 32, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "inval_counter", scope: !4648, file: !8, line: 142, baseType: !57, size: 32, offset: 224)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !7, file: !8, line: 182, baseType: !28, size: 128, offset: 640)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_priv", scope: !7, file: !8, line: 183, baseType: !273, size: 64, offset: 768)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !7, file: !8, line: 184, baseType: !57, size: 32, offset: 832)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_outstanding", scope: !7, file: !8, line: 185, baseType: !162, size: 32, offset: 864)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_copy_ops", scope: !7, file: !8, line: 186, baseType: !162, size: 32, offset: 896)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !7, file: !8, line: 187, baseType: !384, size: 64, offset: 960)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !7, file: !8, line: 188, baseType: !384, size: 64, offset: 1024)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !7, file: !8, line: 189, baseType: !818, size: 16, offset: 1088)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !7, file: !8, line: 190, baseType: !4731, size: 8, offset: 1104)
!4731 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_io_origin", file: !8, line: 167, baseType: !1959, size: 8, elements: !4732)
!4732 = !{!4733, !4734, !4735}
!4733 = !DIEnumerator(name: "NETFS_READAHEAD", value: 0)
!4734 = !DIEnumerator(name: "NETFS_READPAGE", value: 1)
!4735 = !DIEnumerator(name: "NETFS_READ_FOR_WRITE", value: 2)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !7, file: !8, line: 191, baseType: !251, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !7, file: !8, line: 192, baseType: !251, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "no_unlock_folio", scope: !7, file: !8, line: 193, baseType: !249, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !7, file: !8, line: 194, baseType: !704, size: 32, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !8, line: 195, baseType: !249, size: 64, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "netfs_ops", scope: !7, file: !8, line: 202, baseType: !4742, size: 64, offset: 1472)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4744)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_request_ops", file: !8, line: 208, size: 576, elements: !4745)
!4745 = !{!4746, !4750, !4754, !4758, !4759, !4763, !4767, !4771, !4776}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !4744, file: !8, line: 209, baseType: !4747, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!166, !6, !646}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !4744, file: !8, line: 210, baseType: !4751, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !6}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cache_operation", scope: !4744, file: !8, line: 211, baseType: !4755, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!166, !6}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "expand_readahead", scope: !4744, file: !8, line: 213, baseType: !4751, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "clamp_length", scope: !4744, file: !8, line: 214, baseType: !4760, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!549, !4692}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "issue_read", scope: !4744, file: !8, line: 215, baseType: !4764, size: 64, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4692}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "is_still_valid", scope: !4744, file: !8, line: 216, baseType: !4768, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!549, !6}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "check_write_begin", scope: !4744, file: !8, line: 217, baseType: !4772, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!166, !646, !251, !57, !4775, !1238}
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4744, file: !8, line: 219, baseType: !4751, size: 64, offset: 512)
!4777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/netfs/.objects.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/netfs/netfs\22 -D KBUILD_BASENAME=\22objects\22 -D KBUILD_MODNAME=\22netfs\22 -D __KBUILD_MODNAME=kmod_netfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/netfs/objects.ll fs/netfs/objects.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4778, retainedTypes: !4869, globals: !4897, splitDebugInlining: false, nameTableKind: None)
!4778 = !{!284, !574, !744, !1508, !1594, !1669, !1734, !2289, !2358, !2674, !2736, !2809, !2886, !2894, !3025, !3035, !3041, !3049, !3109, !3465, !3996, !4664, !4686, !4731, !4779, !4791, !4802, !4807, !4817, !4824, !4833, !4858}
!4779 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_rreq_ref_trace", file: !4780, line: 96, baseType: !1959, size: 8, elements: !4781)
!4780 = !DIFile(filename: "./include/trace/events/netfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db2e6d05f9e7893b9231aff6ea717730")
!4781 = !{!4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790}
!4782 = !DIEnumerator(name: "netfs_rreq_trace_get_hold", value: 0)
!4783 = !DIEnumerator(name: "netfs_rreq_trace_get_subreq", value: 1)
!4784 = !DIEnumerator(name: "netfs_rreq_trace_put_complete", value: 2)
!4785 = !DIEnumerator(name: "netfs_rreq_trace_put_discard", value: 3)
!4786 = !DIEnumerator(name: "netfs_rreq_trace_put_failed", value: 4)
!4787 = !DIEnumerator(name: "netfs_rreq_trace_put_hold", value: 5)
!4788 = !DIEnumerator(name: "netfs_rreq_trace_put_subreq", value: 6)
!4789 = !DIEnumerator(name: "netfs_rreq_trace_put_zero_len", value: 7)
!4790 = !DIEnumerator(name: "netfs_rreq_trace_new", value: 8)
!4791 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_sreq_ref_trace", file: !4780, line: 97, baseType: !1959, size: 8, elements: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801}
!4793 = !DIEnumerator(name: "netfs_sreq_trace_get_copy_to_cache", value: 0)
!4794 = !DIEnumerator(name: "netfs_sreq_trace_get_resubmit", value: 1)
!4795 = !DIEnumerator(name: "netfs_sreq_trace_get_short_read", value: 2)
!4796 = !DIEnumerator(name: "netfs_sreq_trace_new", value: 3)
!4797 = !DIEnumerator(name: "netfs_sreq_trace_put_clear", value: 4)
!4798 = !DIEnumerator(name: "netfs_sreq_trace_put_failed", value: 5)
!4799 = !DIEnumerator(name: "netfs_sreq_trace_put_merged", value: 6)
!4800 = !DIEnumerator(name: "netfs_sreq_trace_put_no_copy", value: 7)
!4801 = !DIEnumerator(name: "netfs_sreq_trace_put_terminated", value: 8)
!4802 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4803, line: 10, baseType: !57, size: 32, elements: !4804)
!4803 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4804 = !{!4805, !4806}
!4805 = !DIEnumerator(name: "false", value: 0)
!4806 = !DIEnumerator(name: "true", value: 1)
!4807 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4808, line: 364, baseType: !57, size: 32, elements: !4809)
!4808 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4809 = !{!4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4810 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4811 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4812 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4813 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4814 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4815 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4816 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4817 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !705, line: 119, baseType: !57, size: 32, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4823}
!4819 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!4820 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!4821 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!4822 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!4823 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!4824 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_rreq_trace", file: !4780, line: 93, baseType: !1959, size: 8, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832}
!4826 = !DIEnumerator(name: "netfs_rreq_trace_assess", value: 0)
!4827 = !DIEnumerator(name: "netfs_rreq_trace_copy", value: 1)
!4828 = !DIEnumerator(name: "netfs_rreq_trace_done", value: 2)
!4829 = !DIEnumerator(name: "netfs_rreq_trace_free", value: 3)
!4830 = !DIEnumerator(name: "netfs_rreq_trace_resubmit", value: 4)
!4831 = !DIEnumerator(name: "netfs_rreq_trace_unlock", value: 5)
!4832 = !DIEnumerator(name: "netfs_rreq_trace_unmark", value: 6)
!4833 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !57, size: 32, elements: !4834)
!4834 = !{!4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4835 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!4836 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!4837 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!4838 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!4839 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!4840 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!4841 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!4842 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!4843 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!4844 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!4845 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!4846 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!4847 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!4848 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!4849 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!4850 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!4851 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!4852 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!4853 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!4854 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!4855 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!4856 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!4857 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!4858 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netfs_sreq_trace", file: !4780, line: 94, baseType: !1959, size: 8, elements: !4859)
!4859 = !{!4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868}
!4860 = !DIEnumerator(name: "netfs_sreq_trace_download_instead", value: 0)
!4861 = !DIEnumerator(name: "netfs_sreq_trace_free", value: 1)
!4862 = !DIEnumerator(name: "netfs_sreq_trace_prepare", value: 2)
!4863 = !DIEnumerator(name: "netfs_sreq_trace_resubmit_short", value: 3)
!4864 = !DIEnumerator(name: "netfs_sreq_trace_submit", value: 4)
!4865 = !DIEnumerator(name: "netfs_sreq_trace_terminated", value: 5)
!4866 = !DIEnumerator(name: "netfs_sreq_trace_write", value: 6)
!4867 = !DIEnumerator(name: "netfs_sreq_trace_write_skip", value: 7)
!4868 = !DIEnumerator(name: "netfs_sreq_trace_write_term", value: 8)
!4869 = !{!422, !4870, !273, !4871, !4692, !4872, !249, !4878, !4880, !2224, !4882, !2028, !166, !4884, !4887, !4893, !57, !114, !4895, !6}
!4870 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 42, baseType: !249)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netfs_inode", file: !8, line: 125, size: 4928, elements: !4874)
!4874 = !{!4875, !4876, !4877}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !4873, file: !8, line: 126, baseType: !41, size: 4800)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4873, file: !8, line: 127, baseType: !4742, size: 64, offset: 4800)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "remote_i_size", scope: !4873, file: !8, line: 131, baseType: !251, size: 64, offset: 4864)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !374)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4886)
!4886 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4887)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2091, line: 26, size: 192, elements: !4889)
!4889 = !{!4890, !4891, !4892}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4888, file: !2091, line: 27, baseType: !273, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4888, file: !2091, line: 28, baseType: !273, size: 64, offset: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4888, file: !2091, line: 29, baseType: !166, size: 32, offset: 128)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4879)
!4897 = !{!0, !4898, !4903, !4908, !4913, !4943, !4945, !4974, !4976, !5007, !5009, !5038}
!4898 = !DIGlobalVariableExpression(var: !4899, expr: !DIExpression())
!4899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !4900, isLocal: true, isDefinition: true)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 152, elements: !4901)
!4901 = !{!4902}
!4902 = !DISubrange(count: 19)
!4903 = !DIGlobalVariableExpression(var: !4904, expr: !DIExpression())
!4904 = distinct !DIGlobalVariable(scope: null, file: !4808, line: 480, type: !4905, isLocal: true, isDefinition: true)
!4905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 168, elements: !4906)
!4906 = !{!4907}
!4907 = !DISubrange(count: 21)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(scope: null, file: !4780, line: 266, type: !4910, isLocal: true, isDefinition: true)
!4910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 232, elements: !4911)
!4911 = !{!4912}
!4912 = !DISubrange(count: 29)
!4913 = !DIGlobalVariableExpression(var: !4914, expr: !DIExpression())
!4914 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq_ref354", scope: !4915, file: !4780, line: 266, type: !273, isLocal: true, isDefinition: true)
!4915 = distinct !DISubprogram(name: "trace_netfs_rreq_ref", scope: !4780, file: !4780, line: 266, type: !4916, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{null, !57, !166, !4779}
!4918 = !{!4919, !4920, !4921, !4922, !4925, !4928, !4930, !4932, !4935, !4938, !4940, !4941}
!4919 = !DILocalVariable(name: "rreq_debug_id", arg: 1, scope: !4915, file: !4780, line: 266, type: !57)
!4920 = !DILocalVariable(name: "ref", arg: 2, scope: !4915, file: !4780, line: 266, type: !166)
!4921 = !DILocalVariable(name: "what", arg: 3, scope: !4915, file: !4780, line: 266, type: !4779)
!4922 = !DILocalVariable(name: "__idx", scope: !4923, file: !4780, line: 266, type: !166)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !4780, line: 266, column: 1)
!4924 = distinct !DILexicalBlock(scope: !4915, file: !4780, line: 266, column: 1)
!4925 = !DILocalVariable(name: "pscr_ret__", scope: !4926, file: !4780, line: 266, type: !166)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !4780, line: 266, column: 1)
!4927 = distinct !DILexicalBlock(scope: !4923, file: !4780, line: 266, column: 1)
!4928 = !DILocalVariable(name: "__vpp_verify", scope: !4929, file: !4780, line: 266, type: !1366)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !4780, line: 266, column: 1)
!4930 = !DILocalVariable(name: "pfo_val__", scope: !4931, file: !4780, line: 266, type: !114)
!4931 = distinct !DILexicalBlock(scope: !4926, file: !4780, line: 266, column: 1)
!4932 = !DILocalVariable(name: "__ret_warn_on", scope: !4933, file: !4780, line: 266, type: !166)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !4780, line: 266, column: 1)
!4934 = distinct !DILexicalBlock(scope: !4923, file: !4780, line: 266, column: 1)
!4935 = !DILocalVariable(name: "__flags", scope: !4936, file: !4780, line: 266, type: !166)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !4780, line: 266, column: 1)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !4780, line: 266, column: 1)
!4938 = !DILocalVariable(name: "it_func_ptr", scope: !4939, file: !4780, line: 266, type: !4887)
!4939 = distinct !DILexicalBlock(scope: !4923, file: !4780, line: 266, column: 1)
!4940 = !DILocalVariable(name: "__data", scope: !4939, file: !4780, line: 266, type: !273)
!4941 = !DILocalVariable(name: "__UNIQUE_ID_rcu352", scope: !4942, file: !4780, line: 266, type: !4887)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !4780, line: 266, column: 1)
!4943 = !DIGlobalVariableExpression(var: !4944, expr: !DIExpression())
!4944 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace355", scope: !4915, file: !4780, line: 266, type: !273, isLocal: true, isDefinition: true)
!4945 = !DIGlobalVariableExpression(var: !4946, expr: !DIExpression())
!4946 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_netfs_rreq330", scope: !4947, file: !4780, line: 160, type: !273, isLocal: true, isDefinition: true)
!4947 = distinct !DISubprogram(name: "trace_netfs_rreq", scope: !4780, file: !4780, line: 160, type: !4948, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !6, !4824}
!4950 = !{!4951, !4952, !4953, !4956, !4959, !4961, !4963, !4966, !4969, !4971, !4972}
!4951 = !DILocalVariable(name: "rreq", arg: 1, scope: !4947, file: !4780, line: 160, type: !6)
!4952 = !DILocalVariable(name: "what", arg: 2, scope: !4947, file: !4780, line: 160, type: !4824)
!4953 = !DILocalVariable(name: "__idx", scope: !4954, file: !4780, line: 160, type: !166)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !4780, line: 160, column: 1)
!4955 = distinct !DILexicalBlock(scope: !4947, file: !4780, line: 160, column: 1)
!4956 = !DILocalVariable(name: "pscr_ret__", scope: !4957, file: !4780, line: 160, type: !166)
!4957 = distinct !DILexicalBlock(scope: !4958, file: !4780, line: 160, column: 1)
!4958 = distinct !DILexicalBlock(scope: !4954, file: !4780, line: 160, column: 1)
!4959 = !DILocalVariable(name: "__vpp_verify", scope: !4960, file: !4780, line: 160, type: !1366)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !4780, line: 160, column: 1)
!4961 = !DILocalVariable(name: "pfo_val__", scope: !4962, file: !4780, line: 160, type: !114)
!4962 = distinct !DILexicalBlock(scope: !4957, file: !4780, line: 160, column: 1)
!4963 = !DILocalVariable(name: "__ret_warn_on", scope: !4964, file: !4780, line: 160, type: !166)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !4780, line: 160, column: 1)
!4965 = distinct !DILexicalBlock(scope: !4954, file: !4780, line: 160, column: 1)
!4966 = !DILocalVariable(name: "__flags", scope: !4967, file: !4780, line: 160, type: !166)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !4780, line: 160, column: 1)
!4968 = distinct !DILexicalBlock(scope: !4964, file: !4780, line: 160, column: 1)
!4969 = !DILocalVariable(name: "it_func_ptr", scope: !4970, file: !4780, line: 160, type: !4887)
!4970 = distinct !DILexicalBlock(scope: !4954, file: !4780, line: 160, column: 1)
!4971 = !DILocalVariable(name: "__data", scope: !4970, file: !4780, line: 160, type: !273)
!4972 = !DILocalVariable(name: "__UNIQUE_ID_rcu328", scope: !4973, file: !4780, line: 160, type: !4887)
!4973 = distinct !DILexicalBlock(scope: !4970, file: !4780, line: 160, column: 1)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace331", scope: !4947, file: !4780, line: 160, type: !273, isLocal: true, isDefinition: true)
!4976 = !DIGlobalVariableExpression(var: !4977, expr: !DIExpression())
!4977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq_ref362", scope: !4978, file: !4780, line: 290, type: !273, isLocal: true, isDefinition: true)
!4978 = distinct !DISubprogram(name: "trace_netfs_sreq_ref", scope: !4780, file: !4780, line: 290, type: !4979, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !57, !57, !166, !4791}
!4981 = !{!4982, !4983, !4984, !4985, !4986, !4989, !4992, !4994, !4996, !4999, !5002, !5004, !5005}
!4982 = !DILocalVariable(name: "rreq_debug_id", arg: 1, scope: !4978, file: !4780, line: 290, type: !57)
!4983 = !DILocalVariable(name: "subreq_debug_index", arg: 2, scope: !4978, file: !4780, line: 290, type: !57)
!4984 = !DILocalVariable(name: "ref", arg: 3, scope: !4978, file: !4780, line: 290, type: !166)
!4985 = !DILocalVariable(name: "what", arg: 4, scope: !4978, file: !4780, line: 290, type: !4791)
!4986 = !DILocalVariable(name: "__idx", scope: !4987, file: !4780, line: 290, type: !166)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !4780, line: 290, column: 1)
!4988 = distinct !DILexicalBlock(scope: !4978, file: !4780, line: 290, column: 1)
!4989 = !DILocalVariable(name: "pscr_ret__", scope: !4990, file: !4780, line: 290, type: !166)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !4780, line: 290, column: 1)
!4991 = distinct !DILexicalBlock(scope: !4987, file: !4780, line: 290, column: 1)
!4992 = !DILocalVariable(name: "__vpp_verify", scope: !4993, file: !4780, line: 290, type: !1366)
!4993 = distinct !DILexicalBlock(scope: !4990, file: !4780, line: 290, column: 1)
!4994 = !DILocalVariable(name: "pfo_val__", scope: !4995, file: !4780, line: 290, type: !114)
!4995 = distinct !DILexicalBlock(scope: !4990, file: !4780, line: 290, column: 1)
!4996 = !DILocalVariable(name: "__ret_warn_on", scope: !4997, file: !4780, line: 290, type: !166)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !4780, line: 290, column: 1)
!4998 = distinct !DILexicalBlock(scope: !4987, file: !4780, line: 290, column: 1)
!4999 = !DILocalVariable(name: "__flags", scope: !5000, file: !4780, line: 290, type: !166)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !4780, line: 290, column: 1)
!5001 = distinct !DILexicalBlock(scope: !4997, file: !4780, line: 290, column: 1)
!5002 = !DILocalVariable(name: "it_func_ptr", scope: !5003, file: !4780, line: 290, type: !4887)
!5003 = distinct !DILexicalBlock(scope: !4987, file: !4780, line: 290, column: 1)
!5004 = !DILocalVariable(name: "__data", scope: !5003, file: !4780, line: 290, type: !273)
!5005 = !DILocalVariable(name: "__UNIQUE_ID_rcu360", scope: !5006, file: !4780, line: 290, type: !4887)
!5006 = distinct !DILexicalBlock(scope: !5003, file: !4780, line: 290, column: 1)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace363", scope: !4978, file: !4780, line: 290, type: !273, isLocal: true, isDefinition: true)
!5009 = !DIGlobalVariableExpression(var: !5010, expr: !DIExpression())
!5010 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_netfs_sreq338", scope: !5011, file: !4780, line: 187, type: !273, isLocal: true, isDefinition: true)
!5011 = distinct !DISubprogram(name: "trace_netfs_sreq", scope: !4780, file: !4780, line: 187, type: !5012, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5014)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{null, !4692, !4858}
!5014 = !{!5015, !5016, !5017, !5020, !5023, !5025, !5027, !5030, !5033, !5035, !5036}
!5015 = !DILocalVariable(name: "sreq", arg: 1, scope: !5011, file: !4780, line: 187, type: !4692)
!5016 = !DILocalVariable(name: "what", arg: 2, scope: !5011, file: !4780, line: 187, type: !4858)
!5017 = !DILocalVariable(name: "__idx", scope: !5018, file: !4780, line: 187, type: !166)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !4780, line: 187, column: 1)
!5019 = distinct !DILexicalBlock(scope: !5011, file: !4780, line: 187, column: 1)
!5020 = !DILocalVariable(name: "pscr_ret__", scope: !5021, file: !4780, line: 187, type: !166)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !4780, line: 187, column: 1)
!5022 = distinct !DILexicalBlock(scope: !5018, file: !4780, line: 187, column: 1)
!5023 = !DILocalVariable(name: "__vpp_verify", scope: !5024, file: !4780, line: 187, type: !1366)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !4780, line: 187, column: 1)
!5025 = !DILocalVariable(name: "pfo_val__", scope: !5026, file: !4780, line: 187, type: !114)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !4780, line: 187, column: 1)
!5027 = !DILocalVariable(name: "__ret_warn_on", scope: !5028, file: !4780, line: 187, type: !166)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !4780, line: 187, column: 1)
!5029 = distinct !DILexicalBlock(scope: !5018, file: !4780, line: 187, column: 1)
!5030 = !DILocalVariable(name: "__flags", scope: !5031, file: !4780, line: 187, type: !166)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !4780, line: 187, column: 1)
!5032 = distinct !DILexicalBlock(scope: !5028, file: !4780, line: 187, column: 1)
!5033 = !DILocalVariable(name: "it_func_ptr", scope: !5034, file: !4780, line: 187, type: !4887)
!5034 = distinct !DILexicalBlock(scope: !5018, file: !4780, line: 187, column: 1)
!5035 = !DILocalVariable(name: "__data", scope: !5034, file: !4780, line: 187, type: !273)
!5036 = !DILocalVariable(name: "__UNIQUE_ID_rcu336", scope: !5037, file: !4780, line: 187, type: !4887)
!5037 = distinct !DILexicalBlock(scope: !5034, file: !4780, line: 187, column: 1)
!5038 = !DIGlobalVariableExpression(var: !5039, expr: !DIExpression())
!5039 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace339", scope: !5011, file: !4780, line: 187, type: !273, isLocal: true, isDefinition: true)
!5040 = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049}
!5041 = !DILocalVariable(name: "mapping", arg: 1, scope: !2, file: !3, line: 14, type: !412)
!5042 = !DILocalVariable(name: "file", arg: 2, scope: !2, file: !3, line: 15, type: !646)
!5043 = !DILocalVariable(name: "start", arg: 3, scope: !2, file: !3, line: 16, type: !251)
!5044 = !DILocalVariable(name: "len", arg: 4, scope: !2, file: !3, line: 16, type: !384)
!5045 = !DILocalVariable(name: "origin", arg: 5, scope: !2, file: !3, line: 17, type: !4731)
!5046 = !DILocalVariable(name: "inode", scope: !2, file: !3, line: 20, type: !40)
!5047 = !DILocalVariable(name: "ctx", scope: !2, file: !3, line: 21, type: !4872)
!5048 = !DILocalVariable(name: "rreq", scope: !2, file: !3, line: 22, type: !6)
!5049 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 23, type: !166)
!5050 = !{!"rsp"}
!5051 = !{i32 7, !"Dwarf Version", i32 5}
!5052 = !{i32 2, !"Debug Info Version", i32 3}
!5053 = !{i32 1, !"wchar_size", i32 2}
!5054 = !{i32 8, !"cf-protection-branch", i32 1}
!5055 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5056 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5057 = !{i32 1, !"Code Model", i32 2}
!5058 = !{i32 1, !"override-stack-alignment", i32 8}
!5059 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5060 = !DILocation(line: 14, column: 68, scope: !2)
!5061 = !DILocation(line: 15, column: 24, scope: !2)
!5062 = !DILocation(line: 16, column: 18, scope: !2)
!5063 = !DILocation(line: 16, column: 32, scope: !2)
!5064 = !DILocation(line: 17, column: 32, scope: !2)
!5065 = !DILocation(line: 20, column: 2, scope: !2)
!5066 = !DILocation(line: 20, column: 16, scope: !2)
!5067 = !DILocation(line: 20, column: 24, scope: !2)
!5068 = !DILocation(line: 20, column: 42, scope: !2)
!5069 = !DILocation(line: 20, column: 31, scope: !2)
!5070 = !DILocation(line: 20, column: 50, scope: !2)
!5071 = !DILocation(line: 20, column: 59, scope: !2)
!5072 = !DILocation(line: 21, column: 2, scope: !2)
!5073 = !DILocation(line: 21, column: 22, scope: !2)
!5074 = !DILocation(line: 21, column: 40, scope: !2)
!5075 = !DILocation(line: 21, column: 28, scope: !2)
!5076 = !DILocation(line: 22, column: 2, scope: !2)
!5077 = !DILocation(line: 22, column: 27, scope: !2)
!5078 = !DILocation(line: 23, column: 2, scope: !2)
!5079 = !DILocation(line: 23, column: 6, scope: !2)
!5080 = !DILocation(line: 25, column: 9, scope: !2)
!5081 = !DILocation(line: 25, column: 7, scope: !2)
!5082 = !DILocation(line: 26, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !2, file: !3, line: 26, column: 6)
!5084 = !DILocation(line: 26, column: 6, scope: !2)
!5085 = !DILocation(line: 27, column: 10, scope: !5083)
!5086 = !DILocation(line: 27, column: 3, scope: !5083)
!5087 = !DILocation(line: 29, column: 16, scope: !2)
!5088 = !DILocation(line: 29, column: 2, scope: !2)
!5089 = !DILocation(line: 29, column: 8, scope: !2)
!5090 = !DILocation(line: 29, column: 14, scope: !2)
!5091 = !DILocation(line: 30, column: 14, scope: !2)
!5092 = !DILocation(line: 30, column: 2, scope: !2)
!5093 = !DILocation(line: 30, column: 8, scope: !2)
!5094 = !DILocation(line: 30, column: 12, scope: !2)
!5095 = !DILocation(line: 31, column: 17, scope: !2)
!5096 = !DILocation(line: 31, column: 2, scope: !2)
!5097 = !DILocation(line: 31, column: 8, scope: !2)
!5098 = !DILocation(line: 31, column: 15, scope: !2)
!5099 = !DILocation(line: 32, column: 20, scope: !2)
!5100 = !DILocation(line: 32, column: 25, scope: !2)
!5101 = !DILocation(line: 32, column: 2, scope: !2)
!5102 = !DILocation(line: 32, column: 8, scope: !2)
!5103 = !DILocation(line: 32, column: 18, scope: !2)
!5104 = !DILocation(line: 33, column: 18, scope: !2)
!5105 = !DILocation(line: 33, column: 2, scope: !2)
!5106 = !DILocation(line: 33, column: 8, scope: !2)
!5107 = !DILocation(line: 33, column: 16, scope: !2)
!5108 = !DILocation(line: 34, column: 16, scope: !2)
!5109 = !DILocation(line: 34, column: 2, scope: !2)
!5110 = !DILocation(line: 34, column: 8, scope: !2)
!5111 = !DILocation(line: 34, column: 14, scope: !2)
!5112 = !DILocation(line: 35, column: 29, scope: !2)
!5113 = !DILocation(line: 35, column: 17, scope: !2)
!5114 = !DILocation(line: 35, column: 2, scope: !2)
!5115 = !DILocation(line: 35, column: 8, scope: !2)
!5116 = !DILocation(line: 35, column: 15, scope: !2)
!5117 = !DILocation(line: 36, column: 19, scope: !2)
!5118 = !DILocation(line: 36, column: 2, scope: !2)
!5119 = !DILocation(line: 36, column: 8, scope: !2)
!5120 = !DILocation(line: 36, column: 17, scope: !2)
!5121 = !DILocation(line: 37, column: 18, scope: !2)
!5122 = !DILocation(line: 37, column: 24, scope: !2)
!5123 = !DILocation(line: 37, column: 2, scope: !2)
!5124 = !DILocation(line: 38, column: 16, scope: !2)
!5125 = !DILocation(line: 38, column: 22, scope: !2)
!5126 = !DILocation(line: 38, column: 2, scope: !2)
!5127 = !DILocation(line: 39, column: 2, scope: !2)
!5128 = !DILocation(line: 40, column: 6, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !2, file: !3, line: 40, column: 6)
!5130 = !DILocation(line: 40, column: 12, scope: !5129)
!5131 = !DILocation(line: 40, column: 23, scope: !5129)
!5132 = !DILocation(line: 40, column: 6, scope: !2)
!5133 = !DILocation(line: 41, column: 9, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 40, column: 37)
!5135 = !DILocation(line: 41, column: 15, scope: !5134)
!5136 = !DILocation(line: 41, column: 26, scope: !5134)
!5137 = !DILocation(line: 41, column: 39, scope: !5134)
!5138 = !DILocation(line: 41, column: 45, scope: !5134)
!5139 = !DILocation(line: 41, column: 7, scope: !5134)
!5140 = !DILocation(line: 42, column: 7, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 42, column: 7)
!5142 = !DILocation(line: 42, column: 11, scope: !5141)
!5143 = !DILocation(line: 42, column: 7, scope: !5134)
!5144 = !DILocation(line: 43, column: 10, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 42, column: 16)
!5146 = !DILocation(line: 43, column: 4, scope: !5145)
!5147 = !DILocation(line: 44, column: 19, scope: !5145)
!5148 = !DILocation(line: 44, column: 11, scope: !5145)
!5149 = !DILocation(line: 44, column: 4, scope: !5145)
!5150 = !DILocation(line: 46, column: 2, scope: !5134)
!5151 = !DILocation(line: 48, column: 2, scope: !2)
!5152 = !DILocation(line: 48, column: 2, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !2, file: !3, line: 48, column: 2)
!5154 = !DILocation(line: 49, column: 9, scope: !2)
!5155 = !DILocation(line: 49, column: 2, scope: !2)
!5156 = !DILocation(line: 50, column: 1, scope: !2)
!5157 = distinct !DISubprogram(name: "file_inode", scope: !42, file: !42, line: 1073, type: !5158, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5162)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!40, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!5162 = !{!5163}
!5163 = !DILocalVariable(name: "f", arg: 1, scope: !5157, file: !42, line: 1073, type: !5160)
!5164 = !DILocation(line: 1073, column: 59, scope: !5157)
!5165 = !DILocation(line: 1075, column: 9, scope: !5157)
!5166 = !DILocation(line: 1075, column: 12, scope: !5157)
!5167 = !DILocation(line: 1075, column: 2, scope: !5157)
!5168 = distinct !DISubprogram(name: "netfs_inode", scope: !8, file: !8, line: 311, type: !5169, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!4872, !40}
!5171 = !{!5172, !5173}
!5172 = !DILocalVariable(name: "inode", arg: 1, scope: !5168, file: !8, line: 311, type: !40)
!5173 = !DILocalVariable(name: "__mptr", scope: !5174, file: !8, line: 313, type: !273)
!5174 = distinct !DILexicalBlock(scope: !5168, file: !8, line: 313, column: 9)
!5175 = !DILocation(line: 311, column: 61, scope: !5168)
!5176 = !DILocation(line: 313, column: 9, scope: !5174)
!5177 = !DILocation(line: 313, column: 9, scope: !5168)
!5178 = !DILocation(line: 313, column: 2, scope: !5168)
!5179 = distinct !DISubprogram(name: "kzalloc", scope: !4808, file: !4808, line: 719, type: !5180, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5182)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!273, !384, !422}
!5182 = !{!5183, !5184}
!5183 = !DILocalVariable(name: "size", arg: 1, scope: !5179, file: !4808, line: 719, type: !384)
!5184 = !DILocalVariable(name: "flags", arg: 2, scope: !5179, file: !4808, line: 719, type: !422)
!5185 = !DILocation(line: 719, column: 52, scope: !5179)
!5186 = !DILocation(line: 719, column: 64, scope: !5179)
!5187 = !DILocation(line: 721, column: 17, scope: !5179)
!5188 = !DILocation(line: 721, column: 23, scope: !5179)
!5189 = !DILocation(line: 721, column: 29, scope: !5179)
!5190 = !DILocation(line: 721, column: 9, scope: !5179)
!5191 = !DILocation(line: 721, column: 2, scope: !5179)
!5192 = distinct !DISubprogram(name: "ERR_PTR", scope: !5193, file: !5193, line: 39, type: !5194, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5196)
!5193 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!273, !374}
!5196 = !{!5197}
!5197 = !DILocalVariable(name: "error", arg: 1, scope: !5192, file: !5193, line: 39, type: !374)
!5198 = !DILocation(line: 39, column: 48, scope: !5192)
!5199 = !DILocation(line: 41, column: 18, scope: !5192)
!5200 = !DILocation(line: 41, column: 9, scope: !5192)
!5201 = !DILocation(line: 41, column: 2, scope: !5192)
!5202 = distinct !DISubprogram(name: "i_size_read", scope: !42, file: !42, line: 893, type: !5203, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5205)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!251, !4399}
!5205 = !{!5206}
!5206 = !DILocalVariable(name: "inode", arg: 1, scope: !5202, file: !42, line: 893, type: !4399)
!5207 = !DILocation(line: 893, column: 54, scope: !5202)
!5208 = !DILocation(line: 912, column: 9, scope: !5202)
!5209 = !DILocation(line: 912, column: 16, scope: !5202)
!5210 = !DILocation(line: 912, column: 2, scope: !5202)
!5211 = distinct !DISubprogram(name: "atomic_inc_return", scope: !5212, file: !5212, line: 450, type: !5213, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5216)
!5212 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!166, !5215}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!5216 = !{!5217}
!5217 = !DILocalVariable(name: "v", arg: 1, scope: !5211, file: !5212, line: 450, type: !5215)
!5218 = !DILocation(line: 450, column: 29, scope: !5211)
!5219 = !DILocation(line: 452, column: 2, scope: !5211)
!5220 = !DILocation(line: 452, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5211, file: !5212, line: 452, column: 2)
!5222 = !DILocation(line: 453, column: 31, scope: !5211)
!5223 = !DILocation(line: 453, column: 2, scope: !5211)
!5224 = !DILocation(line: 454, column: 31, scope: !5211)
!5225 = !DILocation(line: 454, column: 9, scope: !5211)
!5226 = !DILocation(line: 454, column: 2, scope: !5211)
!5227 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5228, file: !5228, line: 35, type: !5229, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5231)
!5228 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !31}
!5231 = !{!5232}
!5232 = !DILocalVariable(name: "list", arg: 1, scope: !5227, file: !5228, line: 35, type: !31)
!5233 = !DILocation(line: 35, column: 53, scope: !5227)
!5234 = !DILocation(line: 37, column: 2, scope: !5227)
!5235 = !DILocation(line: 37, column: 2, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5227, file: !5228, line: 37, column: 2)
!5237 = !DILocation(line: 37, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5236, file: !5228, line: 37, column: 2)
!5239 = !DILocation(line: 37, column: 2, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !5228, line: 37, column: 2)
!5241 = !DILocation(line: 38, column: 2, scope: !5227)
!5242 = !DILocation(line: 38, column: 2, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5227, file: !5228, line: 38, column: 2)
!5244 = !DILocation(line: 38, column: 2, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5243, file: !5228, line: 38, column: 2)
!5246 = !DILocation(line: 38, column: 2, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5243, file: !5228, line: 38, column: 2)
!5248 = !DILocation(line: 39, column: 1, scope: !5227)
!5249 = distinct !DISubprogram(name: "refcount_set", scope: !705, file: !705, line: 134, type: !5250, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5253)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{null, !5252, !166}
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!5253 = !{!5254, !5255}
!5254 = !DILocalVariable(name: "r", arg: 1, scope: !5249, file: !705, line: 134, type: !5252)
!5255 = !DILocalVariable(name: "n", arg: 2, scope: !5249, file: !705, line: 134, type: !166)
!5256 = !DILocation(line: 134, column: 45, scope: !5249)
!5257 = !DILocation(line: 134, column: 52, scope: !5249)
!5258 = !DILocation(line: 136, column: 14, scope: !5249)
!5259 = !DILocation(line: 136, column: 17, scope: !5249)
!5260 = !DILocation(line: 136, column: 23, scope: !5249)
!5261 = !DILocation(line: 136, column: 2, scope: !5249)
!5262 = !DILocation(line: 137, column: 1, scope: !5249)
!5263 = distinct !DISubprogram(name: "generic___set_bit", scope: !5264, file: !5264, line: 28, type: !5265, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5269)
!5264 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !249, !5267}
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !249)
!5269 = !{!5270, !5271, !5272, !5273}
!5270 = !DILocalVariable(name: "nr", arg: 1, scope: !5263, file: !5264, line: 28, type: !249)
!5271 = !DILocalVariable(name: "addr", arg: 2, scope: !5263, file: !5264, line: 28, type: !5267)
!5272 = !DILocalVariable(name: "mask", scope: !5263, file: !5264, line: 30, type: !249)
!5273 = !DILocalVariable(name: "p", scope: !5263, file: !5264, line: 31, type: !2224)
!5274 = !DILocation(line: 28, column: 33, scope: !5263)
!5275 = !DILocation(line: 28, column: 61, scope: !5263)
!5276 = !DILocation(line: 30, column: 2, scope: !5263)
!5277 = !DILocation(line: 30, column: 16, scope: !5263)
!5278 = !DILocation(line: 30, column: 23, scope: !5263)
!5279 = !DILocation(line: 31, column: 2, scope: !5263)
!5280 = !DILocation(line: 31, column: 17, scope: !5263)
!5281 = !DILocation(line: 31, column: 39, scope: !5263)
!5282 = !DILocation(line: 31, column: 47, scope: !5263)
!5283 = !DILocation(line: 31, column: 45, scope: !5263)
!5284 = !DILocation(line: 33, column: 9, scope: !5263)
!5285 = !DILocation(line: 33, column: 3, scope: !5263)
!5286 = !DILocation(line: 33, column: 6, scope: !5263)
!5287 = !DILocation(line: 34, column: 1, scope: !5263)
!5288 = distinct !DISubprogram(name: "___set_bit", scope: !5289, file: !5289, line: 26, type: !5265, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5290)
!5289 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5290 = !{!5291, !5292}
!5291 = !DILocalVariable(name: "nr", arg: 1, scope: !5288, file: !5289, line: 26, type: !249)
!5292 = !DILocalVariable(name: "addr", arg: 2, scope: !5288, file: !5289, line: 26, type: !5267)
!5293 = !DILocation(line: 26, column: 26, scope: !5288)
!5294 = !DILocation(line: 26, column: 54, scope: !5288)
!5295 = !DILocation(line: 28, column: 19, scope: !5288)
!5296 = !DILocation(line: 28, column: 26, scope: !5288)
!5297 = !DILocation(line: 28, column: 24, scope: !5288)
!5298 = !DILocation(line: 28, column: 2, scope: !5288)
!5299 = !DILocation(line: 29, column: 17, scope: !5288)
!5300 = !DILocation(line: 29, column: 21, scope: !5288)
!5301 = !DILocation(line: 29, column: 2, scope: !5288)
!5302 = !DILocation(line: 30, column: 1, scope: !5288)
!5303 = !DISubprogram(name: "kfree", scope: !4808, file: !4808, line: 227, type: !5304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{null, !1366}
!5306 = distinct !DISubprogram(name: "netfs_get_request", scope: !3, file: !3, line: 52, type: !5307, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{null, !6, !4779}
!5309 = !{!5310, !5311, !5312}
!5310 = !DILocalVariable(name: "rreq", arg: 1, scope: !5306, file: !3, line: 52, type: !6)
!5311 = !DILocalVariable(name: "what", arg: 2, scope: !5306, file: !3, line: 52, type: !4779)
!5312 = !DILocalVariable(name: "r", scope: !5306, file: !3, line: 54, type: !166)
!5313 = !DILocation(line: 52, column: 49, scope: !5306)
!5314 = !DILocation(line: 52, column: 81, scope: !5306)
!5315 = !DILocation(line: 54, column: 2, scope: !5306)
!5316 = !DILocation(line: 54, column: 6, scope: !5306)
!5317 = !DILocation(line: 56, column: 18, scope: !5306)
!5318 = !DILocation(line: 56, column: 24, scope: !5306)
!5319 = !DILocation(line: 56, column: 2, scope: !5306)
!5320 = !DILocation(line: 57, column: 23, scope: !5306)
!5321 = !DILocation(line: 57, column: 29, scope: !5306)
!5322 = !DILocation(line: 57, column: 39, scope: !5306)
!5323 = !DILocation(line: 57, column: 41, scope: !5306)
!5324 = !DILocation(line: 57, column: 46, scope: !5306)
!5325 = !DILocation(line: 57, column: 2, scope: !5306)
!5326 = !DILocation(line: 58, column: 1, scope: !5306)
!5327 = distinct !DISubprogram(name: "__refcount_inc", scope: !705, file: !705, line: 248, type: !5328, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5330)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{null, !5252, !2028}
!5330 = !{!5331, !5332}
!5331 = !DILocalVariable(name: "r", arg: 1, scope: !5327, file: !705, line: 248, type: !5252)
!5332 = !DILocalVariable(name: "oldp", arg: 2, scope: !5327, file: !705, line: 248, type: !2028)
!5333 = !DILocation(line: 248, column: 47, scope: !5327)
!5334 = !DILocation(line: 248, column: 55, scope: !5327)
!5335 = !DILocation(line: 250, column: 20, scope: !5327)
!5336 = !DILocation(line: 250, column: 23, scope: !5327)
!5337 = !DILocation(line: 250, column: 2, scope: !5327)
!5338 = !DILocation(line: 251, column: 1, scope: !5327)
!5339 = !DILocation(line: 266, column: 1, scope: !4915)
!5340 = !DILocation(line: 266, column: 1, scope: !4924)
!5341 = !DILocation(line: 266, column: 1, scope: !4923)
!5342 = !DILocation(line: 266, column: 1, scope: !4926)
!5343 = !DILocation(line: 266, column: 1, scope: !4929)
!5344 = !DILocation(line: 266, column: 1, scope: !4931)
!5345 = !{i64 2155062578}
!5346 = !DILocation(line: 266, column: 1, scope: !4927)
!5347 = !DILocation(line: 266, column: 1, scope: !4933)
!5348 = !DILocation(line: 266, column: 1, scope: !4937)
!5349 = !DILocation(line: 266, column: 1, scope: !4936)
!5350 = !DILocation(line: 266, column: 1, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !4936, file: !4780, line: 266, column: 1)
!5352 = !DILocation(line: 266, column: 1, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !4936, file: !4780, line: 266, column: 1)
!5354 = !{i64 2155063804, i64 2155063833, i64 2155063879, i64 2155063937, i64 2155063991, i64 2155064045, i64 2155064100, i64 2155064131, i64 2155064439, i64 2155064445, i64 2155064492, i64 2155064515, i64 2155064541}
!5355 = !DILocation(line: 266, column: 1, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !4936, file: !4780, line: 266, column: 1)
!5357 = !DILocation(line: 266, column: 1, scope: !4934)
!5358 = !DILocation(line: 266, column: 1, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !4923, file: !4780, line: 266, column: 1)
!5360 = !{i64 2155064894}
!5361 = !DILocation(line: 266, column: 1, scope: !4939)
!5362 = !DILocation(line: 266, column: 1, scope: !4942)
!5363 = !DILocation(line: 266, column: 1, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !4942, file: !4780, line: 266, column: 1)
!5365 = !DILocation(line: 266, column: 1, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5364, file: !4780, line: 266, column: 1)
!5367 = !DILocation(line: 266, column: 1, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !4939, file: !4780, line: 266, column: 1)
!5369 = !DILocation(line: 266, column: 1, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5368, file: !4780, line: 266, column: 1)
!5371 = !DILocation(line: 266, column: 1, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5370, file: !4780, line: 266, column: 1)
!5373 = !DILocation(line: 266, column: 1, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !4923, file: !4780, line: 266, column: 1)
!5375 = !{i64 2155071283}
!5376 = !DILocation(line: 266, column: 1, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5374, file: !4780, line: 266, column: 1)
!5378 = !DILocation(line: 266, column: 1, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5377, file: !4780, line: 266, column: 1)
!5380 = !{i64 2155071442}
!5381 = distinct !DISubprogram(name: "netfs_clear_subrequests", scope: !3, file: !3, line: 60, type: !5382, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5384)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{null, !6, !549}
!5384 = !{!5385, !5386, !5387, !5388}
!5385 = !DILocalVariable(name: "rreq", arg: 1, scope: !5381, file: !3, line: 60, type: !6)
!5386 = !DILocalVariable(name: "was_async", arg: 2, scope: !5381, file: !3, line: 60, type: !549)
!5387 = !DILocalVariable(name: "subreq", scope: !5381, file: !3, line: 62, type: !4692)
!5388 = !DILocalVariable(name: "__mptr", scope: !5389, file: !3, line: 65, type: !273)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 65, column: 12)
!5390 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 64, column: 42)
!5391 = !DILocation(line: 60, column: 55, scope: !5381)
!5392 = !DILocation(line: 60, column: 66, scope: !5381)
!5393 = !DILocation(line: 62, column: 2, scope: !5381)
!5394 = !DILocation(line: 62, column: 30, scope: !5381)
!5395 = !DILocation(line: 64, column: 2, scope: !5381)
!5396 = !DILocation(line: 64, column: 22, scope: !5381)
!5397 = !DILocation(line: 64, column: 28, scope: !5381)
!5398 = !DILocation(line: 64, column: 10, scope: !5381)
!5399 = !DILocation(line: 64, column: 9, scope: !5381)
!5400 = !DILocation(line: 65, column: 12, scope: !5389)
!5401 = !DILocation(line: 65, column: 12, scope: !5390)
!5402 = !DILocation(line: 65, column: 10, scope: !5390)
!5403 = !DILocation(line: 67, column: 13, scope: !5390)
!5404 = !DILocation(line: 67, column: 21, scope: !5390)
!5405 = !DILocation(line: 67, column: 3, scope: !5390)
!5406 = !DILocation(line: 68, column: 24, scope: !5390)
!5407 = !DILocation(line: 68, column: 32, scope: !5390)
!5408 = !{i8 0, i8 2}
!5409 = !DILocation(line: 68, column: 3, scope: !5390)
!5410 = distinct !{!5410, !5395, !5411, !5412, !5413}
!5411 = !DILocation(line: 70, column: 2, scope: !5381)
!5412 = !{!"llvm.loop.mustprogress"}
!5413 = !{!"llvm.loop.unroll.disable"}
!5414 = !DILocation(line: 71, column: 1, scope: !5381)
!5415 = distinct !DISubprogram(name: "list_empty", scope: !5228, file: !5228, line: 371, type: !5416, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5420)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!166, !5418}
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!5420 = !{!5421}
!5421 = !DILocalVariable(name: "head", arg: 1, scope: !5415, file: !5228, line: 371, type: !5418)
!5422 = !DILocation(line: 371, column: 54, scope: !5415)
!5423 = !DILocation(line: 373, column: 9, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5415, file: !5228, line: 373, column: 9)
!5425 = !DILocation(line: 373, column: 9, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5424, file: !5228, line: 373, column: 9)
!5427 = !DILocation(line: 373, column: 34, scope: !5415)
!5428 = !DILocation(line: 373, column: 31, scope: !5415)
!5429 = !DILocation(line: 373, column: 2, scope: !5415)
!5430 = distinct !DISubprogram(name: "list_del", scope: !5228, file: !5228, line: 227, type: !5229, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5431)
!5431 = !{!5432}
!5432 = !DILocalVariable(name: "entry", arg: 1, scope: !5430, file: !5228, line: 227, type: !31)
!5433 = !DILocation(line: 227, column: 47, scope: !5430)
!5434 = !DILocation(line: 229, column: 19, scope: !5430)
!5435 = !DILocation(line: 229, column: 2, scope: !5430)
!5436 = !DILocation(line: 230, column: 2, scope: !5430)
!5437 = !DILocation(line: 230, column: 9, scope: !5430)
!5438 = !DILocation(line: 230, column: 14, scope: !5430)
!5439 = !DILocation(line: 231, column: 2, scope: !5430)
!5440 = !DILocation(line: 231, column: 9, scope: !5430)
!5441 = !DILocation(line: 231, column: 14, scope: !5430)
!5442 = !DILocation(line: 232, column: 1, scope: !5430)
!5443 = distinct !DISubprogram(name: "netfs_put_subrequest", scope: !3, file: !3, line: 148, type: !5444, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5446)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{null, !4692, !549, !4791}
!5446 = !{!5447, !5448, !5449, !5450, !5451, !5452, !5453}
!5447 = !DILocalVariable(name: "subreq", arg: 1, scope: !5443, file: !3, line: 148, type: !4692)
!5448 = !DILocalVariable(name: "was_async", arg: 2, scope: !5443, file: !3, line: 148, type: !549)
!5449 = !DILocalVariable(name: "what", arg: 3, scope: !5443, file: !3, line: 149, type: !4791)
!5450 = !DILocalVariable(name: "debug_index", scope: !5443, file: !3, line: 151, type: !57)
!5451 = !DILocalVariable(name: "debug_id", scope: !5443, file: !3, line: 152, type: !57)
!5452 = !DILocalVariable(name: "dead", scope: !5443, file: !3, line: 153, type: !549)
!5453 = !DILocalVariable(name: "r", scope: !5443, file: !3, line: 154, type: !166)
!5454 = !DILocation(line: 148, column: 55, scope: !5443)
!5455 = !DILocation(line: 148, column: 68, scope: !5443)
!5456 = !DILocation(line: 149, column: 32, scope: !5443)
!5457 = !DILocation(line: 151, column: 2, scope: !5443)
!5458 = !DILocation(line: 151, column: 15, scope: !5443)
!5459 = !DILocation(line: 151, column: 29, scope: !5443)
!5460 = !DILocation(line: 151, column: 37, scope: !5443)
!5461 = !DILocation(line: 152, column: 2, scope: !5443)
!5462 = !DILocation(line: 152, column: 15, scope: !5443)
!5463 = !DILocation(line: 152, column: 26, scope: !5443)
!5464 = !DILocation(line: 152, column: 34, scope: !5443)
!5465 = !DILocation(line: 152, column: 40, scope: !5443)
!5466 = !DILocation(line: 153, column: 2, scope: !5443)
!5467 = !DILocation(line: 153, column: 7, scope: !5443)
!5468 = !DILocation(line: 154, column: 2, scope: !5443)
!5469 = !DILocation(line: 154, column: 6, scope: !5443)
!5470 = !DILocation(line: 156, column: 34, scope: !5443)
!5471 = !DILocation(line: 156, column: 42, scope: !5443)
!5472 = !DILocation(line: 156, column: 9, scope: !5443)
!5473 = !DILocation(line: 156, column: 7, scope: !5443)
!5474 = !DILocation(line: 157, column: 23, scope: !5443)
!5475 = !DILocation(line: 157, column: 33, scope: !5443)
!5476 = !DILocation(line: 157, column: 46, scope: !5443)
!5477 = !DILocation(line: 157, column: 48, scope: !5443)
!5478 = !DILocation(line: 157, column: 53, scope: !5443)
!5479 = !DILocation(line: 157, column: 2, scope: !5443)
!5480 = !DILocation(line: 158, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 158, column: 6)
!5482 = !DILocation(line: 158, column: 6, scope: !5443)
!5483 = !DILocation(line: 159, column: 25, scope: !5481)
!5484 = !DILocation(line: 159, column: 33, scope: !5481)
!5485 = !DILocation(line: 159, column: 3, scope: !5481)
!5486 = !DILocation(line: 160, column: 1, scope: !5443)
!5487 = distinct !DISubprogram(name: "netfs_put_request", scope: !3, file: !3, line: 88, type: !5488, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5490)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !6, !549, !4779}
!5490 = !{!5491, !5492, !5493, !5494, !5495, !5496}
!5491 = !DILocalVariable(name: "rreq", arg: 1, scope: !5487, file: !3, line: 88, type: !6)
!5492 = !DILocalVariable(name: "was_async", arg: 2, scope: !5487, file: !3, line: 88, type: !549)
!5493 = !DILocalVariable(name: "what", arg: 3, scope: !5487, file: !3, line: 89, type: !4779)
!5494 = !DILocalVariable(name: "debug_id", scope: !5487, file: !3, line: 91, type: !57)
!5495 = !DILocalVariable(name: "dead", scope: !5487, file: !3, line: 92, type: !549)
!5496 = !DILocalVariable(name: "r", scope: !5487, file: !3, line: 93, type: !166)
!5497 = !DILocation(line: 88, column: 49, scope: !5487)
!5498 = !DILocation(line: 88, column: 60, scope: !5487)
!5499 = !DILocation(line: 89, column: 36, scope: !5487)
!5500 = !DILocation(line: 91, column: 2, scope: !5487)
!5501 = !DILocation(line: 91, column: 15, scope: !5487)
!5502 = !DILocation(line: 91, column: 26, scope: !5487)
!5503 = !DILocation(line: 91, column: 32, scope: !5487)
!5504 = !DILocation(line: 92, column: 2, scope: !5487)
!5505 = !DILocation(line: 92, column: 7, scope: !5487)
!5506 = !DILocation(line: 93, column: 2, scope: !5487)
!5507 = !DILocation(line: 93, column: 6, scope: !5487)
!5508 = !DILocation(line: 95, column: 34, scope: !5487)
!5509 = !DILocation(line: 95, column: 40, scope: !5487)
!5510 = !DILocation(line: 95, column: 9, scope: !5487)
!5511 = !DILocation(line: 95, column: 7, scope: !5487)
!5512 = !DILocation(line: 96, column: 23, scope: !5487)
!5513 = !DILocation(line: 96, column: 33, scope: !5487)
!5514 = !DILocation(line: 96, column: 35, scope: !5487)
!5515 = !DILocation(line: 96, column: 40, scope: !5487)
!5516 = !DILocation(line: 96, column: 2, scope: !5487)
!5517 = !DILocation(line: 97, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 97, column: 6)
!5519 = !DILocation(line: 97, column: 6, scope: !5487)
!5520 = !DILocation(line: 98, column: 7, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 98, column: 7)
!5522 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 97, column: 12)
!5523 = !DILocation(line: 98, column: 7, scope: !5522)
!5524 = !DILocation(line: 99, column: 4, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 98, column: 18)
!5526 = !DILocation(line: 99, column: 10, scope: !5525)
!5527 = !DILocation(line: 99, column: 15, scope: !5525)
!5528 = !DILocation(line: 99, column: 20, scope: !5525)
!5529 = !DILocation(line: 100, column: 20, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 100, column: 8)
!5531 = !DILocation(line: 100, column: 40, scope: !5530)
!5532 = !DILocation(line: 100, column: 46, scope: !5530)
!5533 = !DILocation(line: 100, column: 9, scope: !5530)
!5534 = !DILocation(line: 100, column: 8, scope: !5525)
!5535 = !DILocation(line: 101, column: 5, scope: !5530)
!5536 = !DILocation(line: 101, column: 5, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 101, column: 5)
!5538 = !DILocation(line: 101, column: 5, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 101, column: 5)
!5540 = !DILocation(line: 101, column: 5, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 101, column: 5)
!5542 = !{i64 2155153875, i64 2155153904, i64 2155153950, i64 2155154008, i64 2155154062, i64 2155154116, i64 2155154171, i64 2155154202}
!5543 = !DILocation(line: 102, column: 3, scope: !5525)
!5544 = !DILocation(line: 103, column: 24, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 102, column: 10)
!5546 = !DILocation(line: 103, column: 30, scope: !5545)
!5547 = !DILocation(line: 103, column: 4, scope: !5545)
!5548 = !DILocation(line: 105, column: 2, scope: !5522)
!5549 = !DILocation(line: 106, column: 1, scope: !5487)
!5550 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !705, file: !705, line: 313, type: !5551, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5553)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!549, !5252, !2028}
!5553 = !{!5554, !5555}
!5554 = !DILocalVariable(name: "r", arg: 1, scope: !5550, file: !705, line: 313, type: !5252)
!5555 = !DILocalVariable(name: "oldp", arg: 2, scope: !5550, file: !705, line: 313, type: !2028)
!5556 = !DILocation(line: 313, column: 69, scope: !5550)
!5557 = !DILocation(line: 313, column: 77, scope: !5550)
!5558 = !DILocation(line: 315, column: 36, scope: !5550)
!5559 = !DILocation(line: 315, column: 39, scope: !5550)
!5560 = !DILocation(line: 315, column: 9, scope: !5550)
!5561 = !DILocation(line: 315, column: 2, scope: !5550)
!5562 = distinct !DISubprogram(name: "netfs_free_request", scope: !3, file: !3, line: 73, type: !36, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5563)
!5563 = !{!5564, !5565, !5566}
!5564 = !DILocalVariable(name: "work", arg: 1, scope: !5562, file: !3, line: 73, type: !38)
!5565 = !DILocalVariable(name: "rreq", scope: !5562, file: !3, line: 75, type: !6)
!5566 = !DILocalVariable(name: "__mptr", scope: !5567, file: !3, line: 76, type: !273)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 76, column: 3)
!5568 = !DILocation(line: 73, column: 52, scope: !5562)
!5569 = !DILocation(line: 75, column: 2, scope: !5562)
!5570 = !DILocation(line: 75, column: 27, scope: !5562)
!5571 = !DILocation(line: 76, column: 3, scope: !5567)
!5572 = !DILocation(line: 76, column: 3, scope: !5562)
!5573 = !DILocation(line: 78, column: 19, scope: !5562)
!5574 = !DILocation(line: 78, column: 2, scope: !5562)
!5575 = !DILocation(line: 79, column: 26, scope: !5562)
!5576 = !DILocation(line: 79, column: 2, scope: !5562)
!5577 = !DILocation(line: 80, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 80, column: 6)
!5579 = !DILocation(line: 80, column: 12, scope: !5578)
!5580 = !DILocation(line: 80, column: 23, scope: !5578)
!5581 = !DILocation(line: 80, column: 6, scope: !5562)
!5582 = !DILocation(line: 81, column: 3, scope: !5578)
!5583 = !DILocation(line: 81, column: 9, scope: !5578)
!5584 = !DILocation(line: 81, column: 20, scope: !5578)
!5585 = !DILocation(line: 81, column: 33, scope: !5578)
!5586 = !DILocation(line: 82, column: 6, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 82, column: 6)
!5588 = !DILocation(line: 82, column: 12, scope: !5587)
!5589 = !DILocation(line: 82, column: 28, scope: !5587)
!5590 = !DILocation(line: 82, column: 6, scope: !5562)
!5591 = !DILocation(line: 83, column: 3, scope: !5587)
!5592 = !DILocation(line: 83, column: 9, scope: !5587)
!5593 = !DILocation(line: 83, column: 25, scope: !5587)
!5594 = !DILocation(line: 83, column: 30, scope: !5587)
!5595 = !DILocation(line: 83, column: 45, scope: !5587)
!5596 = !DILocation(line: 83, column: 51, scope: !5587)
!5597 = !DILocation(line: 84, column: 8, scope: !5562)
!5598 = !DILocation(line: 84, column: 2, scope: !5562)
!5599 = !DILocation(line: 85, column: 2, scope: !5562)
!5600 = !DILocation(line: 85, column: 2, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 85, column: 2)
!5602 = !DILocation(line: 86, column: 1, scope: !5562)
!5603 = distinct !DISubprogram(name: "queue_work", scope: !12, file: !12, line: 559, type: !5604, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5606)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!549, !2190, !38}
!5606 = !{!5607, !5608}
!5607 = !DILocalVariable(name: "wq", arg: 1, scope: !5603, file: !12, line: 559, type: !2190)
!5608 = !DILocalVariable(name: "work", arg: 2, scope: !5603, file: !12, line: 560, type: !38)
!5609 = !DILocation(line: 559, column: 56, scope: !5603)
!5610 = !DILocation(line: 560, column: 30, scope: !5603)
!5611 = !DILocation(line: 562, column: 41, scope: !5603)
!5612 = !DILocation(line: 562, column: 45, scope: !5603)
!5613 = !DILocation(line: 562, column: 9, scope: !5603)
!5614 = !DILocation(line: 562, column: 2, scope: !5603)
!5615 = distinct !DISubprogram(name: "netfs_alloc_subrequest", scope: !3, file: !3, line: 111, type: !5616, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5618)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!4692, !6}
!5618 = !{!5619, !5620}
!5619 = !DILocalVariable(name: "rreq", arg: 1, scope: !5615, file: !3, line: 111, type: !6)
!5620 = !DILocalVariable(name: "subreq", scope: !5615, file: !3, line: 113, type: !4692)
!5621 = !DILocation(line: 111, column: 77, scope: !5615)
!5622 = !DILocation(line: 113, column: 2, scope: !5615)
!5623 = !DILocation(line: 113, column: 30, scope: !5615)
!5624 = !DILocation(line: 115, column: 11, scope: !5615)
!5625 = !DILocation(line: 115, column: 9, scope: !5615)
!5626 = !DILocation(line: 116, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 116, column: 6)
!5628 = !DILocation(line: 116, column: 6, scope: !5615)
!5629 = !DILocation(line: 117, column: 19, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 116, column: 14)
!5631 = !DILocation(line: 117, column: 27, scope: !5630)
!5632 = !DILocation(line: 117, column: 3, scope: !5630)
!5633 = !DILocation(line: 118, column: 17, scope: !5630)
!5634 = !DILocation(line: 118, column: 25, scope: !5630)
!5635 = !DILocation(line: 118, column: 3, scope: !5630)
!5636 = !DILocation(line: 119, column: 18, scope: !5630)
!5637 = !DILocation(line: 119, column: 3, scope: !5630)
!5638 = !DILocation(line: 119, column: 11, scope: !5630)
!5639 = !DILocation(line: 119, column: 16, scope: !5630)
!5640 = !DILocation(line: 120, column: 21, scope: !5630)
!5641 = !DILocation(line: 120, column: 3, scope: !5630)
!5642 = !DILocation(line: 121, column: 3, scope: !5630)
!5643 = !DILocation(line: 121, column: 3, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 121, column: 3)
!5645 = !DILocation(line: 122, column: 2, scope: !5630)
!5646 = !DILocation(line: 124, column: 9, scope: !5615)
!5647 = !DILocation(line: 125, column: 1, scope: !5615)
!5648 = !DILocation(line: 124, column: 2, scope: !5615)
!5649 = distinct !DISubprogram(name: "netfs_get_subrequest", scope: !3, file: !3, line: 127, type: !5650, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !4692, !4791}
!5652 = !{!5653, !5654, !5655}
!5653 = !DILocalVariable(name: "subreq", arg: 1, scope: !5649, file: !3, line: 127, type: !4692)
!5654 = !DILocalVariable(name: "what", arg: 2, scope: !5649, file: !3, line: 128, type: !4791)
!5655 = !DILocalVariable(name: "r", scope: !5649, file: !3, line: 130, type: !166)
!5656 = !DILocation(line: 127, column: 55, scope: !5649)
!5657 = !DILocation(line: 128, column: 32, scope: !5649)
!5658 = !DILocation(line: 130, column: 2, scope: !5649)
!5659 = !DILocation(line: 130, column: 6, scope: !5649)
!5660 = !DILocation(line: 132, column: 18, scope: !5649)
!5661 = !DILocation(line: 132, column: 26, scope: !5649)
!5662 = !DILocation(line: 132, column: 2, scope: !5649)
!5663 = !DILocation(line: 133, column: 23, scope: !5649)
!5664 = !DILocation(line: 133, column: 31, scope: !5649)
!5665 = !DILocation(line: 133, column: 37, scope: !5649)
!5666 = !DILocation(line: 133, column: 47, scope: !5649)
!5667 = !DILocation(line: 133, column: 55, scope: !5649)
!5668 = !DILocation(line: 133, column: 68, scope: !5649)
!5669 = !DILocation(line: 133, column: 70, scope: !5649)
!5670 = !DILocation(line: 134, column: 9, scope: !5649)
!5671 = !DILocation(line: 133, column: 2, scope: !5649)
!5672 = !DILocation(line: 135, column: 1, scope: !5649)
!5673 = !DILocation(line: 290, column: 1, scope: !4978)
!5674 = !DILocation(line: 290, column: 1, scope: !4988)
!5675 = !DILocation(line: 290, column: 1, scope: !4987)
!5676 = !DILocation(line: 290, column: 1, scope: !4990)
!5677 = !DILocation(line: 290, column: 1, scope: !4993)
!5678 = !DILocation(line: 290, column: 1, scope: !4995)
!5679 = !{i64 2155109506}
!5680 = !DILocation(line: 290, column: 1, scope: !4991)
!5681 = !DILocation(line: 290, column: 1, scope: !4997)
!5682 = !DILocation(line: 290, column: 1, scope: !5001)
!5683 = !DILocation(line: 290, column: 1, scope: !5000)
!5684 = !DILocation(line: 290, column: 1, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5000, file: !4780, line: 290, column: 1)
!5686 = !DILocation(line: 290, column: 1, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5000, file: !4780, line: 290, column: 1)
!5688 = !{i64 2155110772, i64 2155110801, i64 2155110847, i64 2155110905, i64 2155110959, i64 2155111013, i64 2155111068, i64 2155111099, i64 2155111407, i64 2155111413, i64 2155111460, i64 2155111483, i64 2155111509}
!5689 = !DILocation(line: 290, column: 1, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5000, file: !4780, line: 290, column: 1)
!5691 = !DILocation(line: 290, column: 1, scope: !4998)
!5692 = !DILocation(line: 290, column: 1, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !4987, file: !4780, line: 290, column: 1)
!5694 = !{i64 2155111862}
!5695 = !DILocation(line: 290, column: 1, scope: !5003)
!5696 = !DILocation(line: 290, column: 1, scope: !5006)
!5697 = !DILocation(line: 290, column: 1, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5006, file: !4780, line: 290, column: 1)
!5699 = !DILocation(line: 290, column: 1, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5698, file: !4780, line: 290, column: 1)
!5701 = !DILocation(line: 290, column: 1, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5003, file: !4780, line: 290, column: 1)
!5703 = !DILocation(line: 290, column: 1, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5702, file: !4780, line: 290, column: 1)
!5705 = !DILocation(line: 290, column: 1, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5704, file: !4780, line: 290, column: 1)
!5707 = !DILocation(line: 290, column: 1, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !4987, file: !4780, line: 290, column: 1)
!5709 = !{i64 2155118291}
!5710 = !DILocation(line: 290, column: 1, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5708, file: !4780, line: 290, column: 1)
!5712 = !DILocation(line: 290, column: 1, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5711, file: !4780, line: 290, column: 1)
!5714 = !{i64 2155118450}
!5715 = distinct !DISubprogram(name: "netfs_free_subrequest", scope: !3, file: !3, line: 137, type: !5716, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{null, !4692, !549}
!5718 = !{!5719, !5720, !5721}
!5719 = !DILocalVariable(name: "subreq", arg: 1, scope: !5715, file: !3, line: 137, type: !4692)
!5720 = !DILocalVariable(name: "was_async", arg: 2, scope: !5715, file: !3, line: 138, type: !549)
!5721 = !DILocalVariable(name: "rreq", scope: !5715, file: !3, line: 140, type: !6)
!5722 = !DILocation(line: 137, column: 63, scope: !5715)
!5723 = !DILocation(line: 138, column: 12, scope: !5715)
!5724 = !DILocation(line: 140, column: 2, scope: !5715)
!5725 = !DILocation(line: 140, column: 27, scope: !5715)
!5726 = !DILocation(line: 140, column: 34, scope: !5715)
!5727 = !DILocation(line: 140, column: 42, scope: !5715)
!5728 = !DILocation(line: 142, column: 19, scope: !5715)
!5729 = !DILocation(line: 142, column: 2, scope: !5715)
!5730 = !DILocation(line: 143, column: 8, scope: !5715)
!5731 = !DILocation(line: 143, column: 2, scope: !5715)
!5732 = !DILocation(line: 144, column: 2, scope: !5715)
!5733 = !DILocation(line: 144, column: 2, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 144, column: 2)
!5735 = !DILocation(line: 145, column: 20, scope: !5715)
!5736 = !DILocation(line: 145, column: 26, scope: !5715)
!5737 = !DILocation(line: 145, column: 2, scope: !5715)
!5738 = !DILocation(line: 146, column: 1, scope: !5715)
!5739 = distinct !DISubprogram(name: "kmalloc", scope: !4808, file: !4808, line: 591, type: !5180, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5740)
!5740 = !{!5741, !5742, !5743}
!5741 = !DILocalVariable(name: "size", arg: 1, scope: !5739, file: !4808, line: 591, type: !384)
!5742 = !DILocalVariable(name: "flags", arg: 2, scope: !5739, file: !4808, line: 591, type: !422)
!5743 = !DILocalVariable(name: "index", scope: !5744, file: !4808, line: 594, type: !57)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !4808, line: 593, column: 42)
!5745 = distinct !DILexicalBlock(scope: !5739, file: !4808, line: 593, column: 6)
!5746 = !DILocation(line: 591, column: 61, scope: !5739)
!5747 = !DILocation(line: 591, column: 73, scope: !5739)
!5748 = !DILocation(line: 593, column: 27, scope: !5745)
!5749 = !DILocation(line: 593, column: 6, scope: !5745)
!5750 = !DILocation(line: 593, column: 33, scope: !5745)
!5751 = !DILocation(line: 593, column: 36, scope: !5745)
!5752 = !DILocation(line: 593, column: 6, scope: !5739)
!5753 = !DILocation(line: 594, column: 3, scope: !5744)
!5754 = !DILocation(line: 594, column: 16, scope: !5744)
!5755 = !DILocation(line: 596, column: 7, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5744, file: !4808, line: 596, column: 7)
!5757 = !DILocation(line: 596, column: 12, scope: !5756)
!5758 = !DILocation(line: 596, column: 7, scope: !5744)
!5759 = !DILocation(line: 597, column: 25, scope: !5756)
!5760 = !DILocation(line: 597, column: 31, scope: !5756)
!5761 = !DILocation(line: 597, column: 11, scope: !5756)
!5762 = !DILocation(line: 597, column: 4, scope: !5756)
!5763 = !DILocation(line: 599, column: 11, scope: !5744)
!5764 = !DILocation(line: 599, column: 9, scope: !5744)
!5765 = !DILocation(line: 601, column: 33, scope: !5744)
!5766 = !DILocation(line: 601, column: 40, scope: !5744)
!5767 = !DILocation(line: 601, column: 20, scope: !5744)
!5768 = !DILocation(line: 601, column: 5, scope: !5744)
!5769 = !DILocation(line: 601, column: 51, scope: !5744)
!5770 = !DILocation(line: 602, column: 5, scope: !5744)
!5771 = !DILocation(line: 602, column: 12, scope: !5744)
!5772 = !DILocation(line: 600, column: 10, scope: !5744)
!5773 = !DILocation(line: 600, column: 3, scope: !5744)
!5774 = !DILocation(line: 603, column: 2, scope: !5745)
!5775 = !DILocation(line: 604, column: 19, scope: !5739)
!5776 = !DILocation(line: 604, column: 25, scope: !5739)
!5777 = !DILocation(line: 604, column: 9, scope: !5739)
!5778 = !DILocation(line: 604, column: 2, scope: !5739)
!5779 = !DILocation(line: 605, column: 1, scope: !5739)
!5780 = !DISubprogram(name: "kmalloc_large", scope: !4808, file: !4808, line: 531, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5781 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4808, file: !4808, line: 444, type: !5782, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5784)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!57, !384, !549}
!5784 = !{!5785, !5786}
!5785 = !DILocalVariable(name: "size", arg: 1, scope: !5781, file: !4808, line: 444, type: !384)
!5786 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5781, file: !4808, line: 445, type: !549)
!5787 = !DILocation(line: 444, column: 60, scope: !5781)
!5788 = !DILocation(line: 445, column: 16, scope: !5781)
!5789 = !DILocation(line: 447, column: 7, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 447, column: 6)
!5791 = !DILocation(line: 447, column: 6, scope: !5781)
!5792 = !DILocation(line: 448, column: 3, scope: !5790)
!5793 = !DILocation(line: 450, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 450, column: 6)
!5795 = !DILocation(line: 450, column: 11, scope: !5794)
!5796 = !DILocation(line: 450, column: 6, scope: !5781)
!5797 = !DILocation(line: 451, column: 3, scope: !5794)
!5798 = !DILocation(line: 453, column: 32, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 453, column: 6)
!5800 = !DILocation(line: 453, column: 37, scope: !5799)
!5801 = !DILocation(line: 453, column: 42, scope: !5799)
!5802 = !DILocation(line: 453, column: 45, scope: !5799)
!5803 = !DILocation(line: 453, column: 50, scope: !5799)
!5804 = !DILocation(line: 453, column: 6, scope: !5781)
!5805 = !DILocation(line: 454, column: 3, scope: !5799)
!5806 = !DILocation(line: 455, column: 32, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 455, column: 6)
!5808 = !DILocation(line: 455, column: 37, scope: !5807)
!5809 = !DILocation(line: 455, column: 43, scope: !5807)
!5810 = !DILocation(line: 455, column: 46, scope: !5807)
!5811 = !DILocation(line: 455, column: 51, scope: !5807)
!5812 = !DILocation(line: 455, column: 6, scope: !5781)
!5813 = !DILocation(line: 456, column: 3, scope: !5807)
!5814 = !DILocation(line: 457, column: 6, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 457, column: 6)
!5816 = !DILocation(line: 457, column: 11, scope: !5815)
!5817 = !DILocation(line: 457, column: 6, scope: !5781)
!5818 = !DILocation(line: 457, column: 26, scope: !5815)
!5819 = !DILocation(line: 458, column: 6, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 458, column: 6)
!5821 = !DILocation(line: 458, column: 11, scope: !5820)
!5822 = !DILocation(line: 458, column: 6, scope: !5781)
!5823 = !DILocation(line: 458, column: 26, scope: !5820)
!5824 = !DILocation(line: 459, column: 6, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 459, column: 6)
!5826 = !DILocation(line: 459, column: 11, scope: !5825)
!5827 = !DILocation(line: 459, column: 6, scope: !5781)
!5828 = !DILocation(line: 459, column: 26, scope: !5825)
!5829 = !DILocation(line: 460, column: 6, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 460, column: 6)
!5831 = !DILocation(line: 460, column: 11, scope: !5830)
!5832 = !DILocation(line: 460, column: 6, scope: !5781)
!5833 = !DILocation(line: 460, column: 26, scope: !5830)
!5834 = !DILocation(line: 461, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 461, column: 6)
!5836 = !DILocation(line: 461, column: 11, scope: !5835)
!5837 = !DILocation(line: 461, column: 6, scope: !5781)
!5838 = !DILocation(line: 461, column: 26, scope: !5835)
!5839 = !DILocation(line: 462, column: 6, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 462, column: 6)
!5841 = !DILocation(line: 462, column: 11, scope: !5840)
!5842 = !DILocation(line: 462, column: 6, scope: !5781)
!5843 = !DILocation(line: 462, column: 26, scope: !5840)
!5844 = !DILocation(line: 463, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 463, column: 6)
!5846 = !DILocation(line: 463, column: 11, scope: !5845)
!5847 = !DILocation(line: 463, column: 6, scope: !5781)
!5848 = !DILocation(line: 463, column: 26, scope: !5845)
!5849 = !DILocation(line: 464, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 464, column: 6)
!5851 = !DILocation(line: 464, column: 11, scope: !5850)
!5852 = !DILocation(line: 464, column: 6, scope: !5781)
!5853 = !DILocation(line: 464, column: 26, scope: !5850)
!5854 = !DILocation(line: 465, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 465, column: 6)
!5856 = !DILocation(line: 465, column: 11, scope: !5855)
!5857 = !DILocation(line: 465, column: 6, scope: !5781)
!5858 = !DILocation(line: 465, column: 26, scope: !5855)
!5859 = !DILocation(line: 466, column: 6, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 466, column: 6)
!5861 = !DILocation(line: 466, column: 11, scope: !5860)
!5862 = !DILocation(line: 466, column: 6, scope: !5781)
!5863 = !DILocation(line: 466, column: 26, scope: !5860)
!5864 = !DILocation(line: 467, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 467, column: 6)
!5866 = !DILocation(line: 467, column: 11, scope: !5865)
!5867 = !DILocation(line: 467, column: 6, scope: !5781)
!5868 = !DILocation(line: 467, column: 26, scope: !5865)
!5869 = !DILocation(line: 468, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 468, column: 6)
!5871 = !DILocation(line: 468, column: 11, scope: !5870)
!5872 = !DILocation(line: 468, column: 6, scope: !5781)
!5873 = !DILocation(line: 468, column: 26, scope: !5870)
!5874 = !DILocation(line: 469, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 469, column: 6)
!5876 = !DILocation(line: 469, column: 11, scope: !5875)
!5877 = !DILocation(line: 469, column: 6, scope: !5781)
!5878 = !DILocation(line: 469, column: 26, scope: !5875)
!5879 = !DILocation(line: 470, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 470, column: 6)
!5881 = !DILocation(line: 470, column: 11, scope: !5880)
!5882 = !DILocation(line: 470, column: 6, scope: !5781)
!5883 = !DILocation(line: 470, column: 26, scope: !5880)
!5884 = !DILocation(line: 471, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 471, column: 6)
!5886 = !DILocation(line: 471, column: 11, scope: !5885)
!5887 = !DILocation(line: 471, column: 6, scope: !5781)
!5888 = !DILocation(line: 471, column: 26, scope: !5885)
!5889 = !DILocation(line: 472, column: 6, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 472, column: 6)
!5891 = !DILocation(line: 472, column: 11, scope: !5890)
!5892 = !DILocation(line: 472, column: 6, scope: !5781)
!5893 = !DILocation(line: 472, column: 26, scope: !5890)
!5894 = !DILocation(line: 473, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 473, column: 6)
!5896 = !DILocation(line: 473, column: 11, scope: !5895)
!5897 = !DILocation(line: 473, column: 6, scope: !5781)
!5898 = !DILocation(line: 473, column: 26, scope: !5895)
!5899 = !DILocation(line: 474, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 474, column: 6)
!5901 = !DILocation(line: 474, column: 11, scope: !5900)
!5902 = !DILocation(line: 474, column: 6, scope: !5781)
!5903 = !DILocation(line: 474, column: 27, scope: !5900)
!5904 = !DILocation(line: 475, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 475, column: 6)
!5906 = !DILocation(line: 475, column: 11, scope: !5905)
!5907 = !DILocation(line: 475, column: 6, scope: !5781)
!5908 = !DILocation(line: 475, column: 32, scope: !5905)
!5909 = !DILocation(line: 477, column: 50, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5781, file: !4808, line: 477, column: 6)
!5911 = !DILocation(line: 477, column: 6, scope: !5781)
!5912 = !DILocation(line: 478, column: 3, scope: !5910)
!5913 = !DILocation(line: 478, column: 3, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5915, file: !4808, line: 478, column: 3)
!5915 = distinct !DILexicalBlock(scope: !5910, file: !4808, line: 478, column: 3)
!5916 = !{i32 -2143559038}
!5917 = !DILocation(line: 478, column: 3, scope: !5915)
!5918 = !DILocation(line: 480, column: 3, scope: !5910)
!5919 = !DILocation(line: 480, column: 3, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5910, file: !4808, line: 480, column: 3)
!5921 = !DILocation(line: 480, column: 3, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5920, file: !4808, line: 480, column: 3)
!5923 = !DILocation(line: 480, column: 3, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5920, file: !4808, line: 480, column: 3)
!5925 = !{i64 2151408461, i64 2151408490, i64 2151408536, i64 2151408594, i64 2151408648, i64 2151408702, i64 2151408757, i64 2151408788}
!5926 = !DILocation(line: 483, column: 2, scope: !5781)
!5927 = !DILocation(line: 484, column: 1, scope: !5781)
!5928 = !DISubprogram(name: "kmalloc_trace", scope: !4808, file: !4808, line: 525, type: !5929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!273, !5931, !422, !384}
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4079, line: 11, flags: DIFlagFwdDecl)
!5933 = distinct !DISubprogram(name: "kmalloc_type", scope: !4808, file: !4808, line: 401, type: !5934, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5936)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!4807, !422, !249}
!5936 = !{!5937, !5938}
!5937 = !DILocalVariable(name: "flags", arg: 1, scope: !5933, file: !4808, line: 401, type: !422)
!5938 = !DILocalVariable(name: "caller", arg: 2, scope: !5933, file: !4808, line: 401, type: !249)
!5939 = !DILocation(line: 401, column: 67, scope: !5933)
!5940 = !DILocation(line: 401, column: 88, scope: !5933)
!5941 = !DILocation(line: 407, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5933, file: !4808, line: 407, column: 6)
!5943 = !DILocation(line: 407, column: 6, scope: !5933)
!5944 = !DILocation(line: 413, column: 3, scope: !5942)
!5945 = !DILocation(line: 423, column: 38, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5933, file: !4808, line: 423, column: 6)
!5947 = !DILocation(line: 423, column: 44, scope: !5946)
!5948 = !DILocation(line: 423, column: 6, scope: !5933)
!5949 = !DILocation(line: 424, column: 3, scope: !5946)
!5950 = !DILocation(line: 426, column: 3, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5933, file: !4808, line: 425, column: 6)
!5952 = !DILocation(line: 429, column: 1, scope: !5933)
!5953 = !DISubprogram(name: "__kmalloc", scope: !4808, file: !4808, line: 488, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5954 = !DISubprogram(name: "__compiletime_assert_117", scope: !4808, file: !4808, line: 478, type: !2238, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5955 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5956, file: !5956, line: 94, type: !5957, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5962)
!5956 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5957 = !DISubroutineType(types: !5958)
!5958 = !{null, !5959, !384}
!5959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 64)
!5960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5961)
!5961 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5962 = !{!5963, !5964}
!5963 = !DILocalVariable(name: "v", arg: 1, scope: !5955, file: !5956, line: 94, type: !5959)
!5964 = !DILocalVariable(name: "size", arg: 2, scope: !5955, file: !5956, line: 94, type: !384)
!5965 = !DILocation(line: 94, column: 79, scope: !5955)
!5966 = !DILocation(line: 94, column: 89, scope: !5955)
!5967 = !DILocation(line: 96, column: 20, scope: !5955)
!5968 = !DILocation(line: 96, column: 23, scope: !5955)
!5969 = !DILocation(line: 96, column: 2, scope: !5955)
!5970 = !DILocation(line: 97, column: 2, scope: !5955)
!5971 = !DILocation(line: 98, column: 1, scope: !5955)
!5972 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !5973, file: !5973, line: 996, type: !5213, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5974)
!5973 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5974 = !{!5975}
!5975 = !DILocalVariable(name: "v", arg: 1, scope: !5972, file: !5973, line: 996, type: !5215)
!5976 = !DILocation(line: 996, column: 33, scope: !5972)
!5977 = !DILocation(line: 1007, column: 34, scope: !5972)
!5978 = !DILocation(line: 1007, column: 9, scope: !5972)
!5979 = !DILocation(line: 1007, column: 2, scope: !5972)
!5980 = distinct !DISubprogram(name: "kasan_check_write", scope: !5981, file: !5981, line: 44, type: !5982, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5984)
!5981 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!549, !5959, !57}
!5984 = !{!5985, !5986}
!5985 = !DILocalVariable(name: "p", arg: 1, scope: !5980, file: !5981, line: 44, type: !5959)
!5986 = !DILocalVariable(name: "size", arg: 2, scope: !5980, file: !5981, line: 44, type: !57)
!5987 = !DILocation(line: 44, column: 59, scope: !5980)
!5988 = !DILocation(line: 44, column: 75, scope: !5980)
!5989 = !DILocation(line: 46, column: 2, scope: !5980)
!5990 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5991, file: !5991, line: 229, type: !5992, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !5994)
!5991 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5992 = !DISubroutineType(types: !5993)
!5993 = !{null, !5959, !384, !166}
!5994 = !{!5995, !5996, !5997}
!5995 = !DILocalVariable(name: "ptr", arg: 1, scope: !5990, file: !5991, line: 229, type: !5959)
!5996 = !DILocalVariable(name: "size", arg: 2, scope: !5990, file: !5991, line: 229, type: !384)
!5997 = !DILocalVariable(name: "type", arg: 3, scope: !5990, file: !5991, line: 230, type: !166)
!5998 = !DILocation(line: 229, column: 60, scope: !5990)
!5999 = !DILocation(line: 229, column: 72, scope: !5990)
!6000 = !DILocation(line: 230, column: 15, scope: !5990)
!6001 = !DILocation(line: 230, column: 23, scope: !5990)
!6002 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !5973, file: !5973, line: 548, type: !6003, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!166, !166, !5215}
!6005 = !{!6006, !6007}
!6006 = !DILocalVariable(name: "i", arg: 1, scope: !6002, file: !5973, line: 548, type: !166)
!6007 = !DILocalVariable(name: "v", arg: 2, scope: !6002, file: !5973, line: 548, type: !5215)
!6008 = !DILocation(line: 548, column: 27, scope: !6002)
!6009 = !DILocation(line: 548, column: 40, scope: !6002)
!6010 = !DILocation(line: 551, column: 32, scope: !6002)
!6011 = !DILocation(line: 551, column: 35, scope: !6002)
!6012 = !DILocation(line: 551, column: 9, scope: !6002)
!6013 = !DILocation(line: 551, column: 2, scope: !6002)
!6014 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6015, file: !6015, line: 83, type: !6003, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6016)
!6015 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6016 = !{!6017, !6018, !6019}
!6017 = !DILocalVariable(name: "i", arg: 1, scope: !6014, file: !6015, line: 83, type: !166)
!6018 = !DILocalVariable(name: "v", arg: 2, scope: !6014, file: !6015, line: 83, type: !5215)
!6019 = !DILocalVariable(name: "__ret", scope: !6020, file: !6015, line: 85, type: !166)
!6020 = distinct !DILexicalBlock(scope: !6014, file: !6015, line: 85, column: 13)
!6021 = !DILocation(line: 83, column: 55, scope: !6014)
!6022 = !DILocation(line: 83, column: 68, scope: !6014)
!6023 = !DILocation(line: 85, column: 9, scope: !6014)
!6024 = !DILocation(line: 85, column: 13, scope: !6020)
!6025 = !{i64 2148930169, i64 2148930208, i64 2148930229, i64 2148930266, i64 2148930289, i64 2148930298}
!6026 = !DILocation(line: 85, column: 13, scope: !6014)
!6027 = !DILocation(line: 85, column: 11, scope: !6014)
!6028 = !DILocation(line: 85, column: 2, scope: !6014)
!6029 = distinct !DISubprogram(name: "atomic_set", scope: !5212, file: !5212, line: 65, type: !6030, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{null, !5215, !166}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "v", arg: 1, scope: !6029, file: !5212, line: 65, type: !5215)
!6034 = !DILocalVariable(name: "i", arg: 2, scope: !6029, file: !5212, line: 65, type: !166)
!6035 = !DILocation(line: 65, column: 22, scope: !6029)
!6036 = !DILocation(line: 65, column: 29, scope: !6029)
!6037 = !DILocation(line: 67, column: 26, scope: !6029)
!6038 = !DILocation(line: 67, column: 2, scope: !6029)
!6039 = !DILocation(line: 68, column: 17, scope: !6029)
!6040 = !DILocation(line: 68, column: 20, scope: !6029)
!6041 = !DILocation(line: 68, column: 2, scope: !6029)
!6042 = !DILocation(line: 69, column: 1, scope: !6029)
!6043 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5956, file: !5956, line: 80, type: !5957, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6044)
!6044 = !{!6045, !6046}
!6045 = !DILocalVariable(name: "v", arg: 1, scope: !6043, file: !5956, line: 80, type: !5959)
!6046 = !DILocalVariable(name: "size", arg: 2, scope: !6043, file: !5956, line: 80, type: !384)
!6047 = !DILocation(line: 80, column: 74, scope: !6043)
!6048 = !DILocation(line: 80, column: 84, scope: !6043)
!6049 = !DILocation(line: 82, column: 20, scope: !6043)
!6050 = !DILocation(line: 82, column: 23, scope: !6043)
!6051 = !DILocation(line: 82, column: 2, scope: !6043)
!6052 = !DILocation(line: 83, column: 2, scope: !6043)
!6053 = !DILocation(line: 84, column: 1, scope: !6043)
!6054 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5973, file: !5973, line: 488, type: !6030, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6055)
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "v", arg: 1, scope: !6054, file: !5973, line: 488, type: !5215)
!6057 = !DILocalVariable(name: "i", arg: 2, scope: !6054, file: !5973, line: 488, type: !166)
!6058 = !DILocation(line: 488, column: 26, scope: !6054)
!6059 = !DILocation(line: 488, column: 33, scope: !6054)
!6060 = !DILocation(line: 490, column: 18, scope: !6054)
!6061 = !DILocation(line: 490, column: 21, scope: !6054)
!6062 = !DILocation(line: 490, column: 2, scope: !6054)
!6063 = !DILocation(line: 491, column: 1, scope: !6054)
!6064 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6015, file: !6015, line: 26, type: !6030, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6065)
!6065 = !{!6066, !6067}
!6066 = !DILocalVariable(name: "v", arg: 1, scope: !6064, file: !6015, line: 26, type: !5215)
!6067 = !DILocalVariable(name: "i", arg: 2, scope: !6064, file: !6015, line: 26, type: !166)
!6068 = !DILocation(line: 26, column: 55, scope: !6064)
!6069 = !DILocation(line: 26, column: 62, scope: !6064)
!6070 = !DILocation(line: 28, column: 2, scope: !6064)
!6071 = !DILocation(line: 28, column: 2, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6064, file: !6015, line: 28, column: 2)
!6073 = !DILocation(line: 29, column: 1, scope: !6064)
!6074 = distinct !DISubprogram(name: "instrument_write", scope: !5956, file: !5956, line: 38, type: !5957, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6075)
!6075 = !{!6076, !6077}
!6076 = !DILocalVariable(name: "v", arg: 1, scope: !6074, file: !5956, line: 38, type: !5959)
!6077 = !DILocalVariable(name: "size", arg: 2, scope: !6074, file: !5956, line: 38, type: !384)
!6078 = !DILocation(line: 38, column: 67, scope: !6074)
!6079 = !DILocation(line: 38, column: 77, scope: !6074)
!6080 = !DILocation(line: 40, column: 20, scope: !6074)
!6081 = !DILocation(line: 40, column: 23, scope: !6074)
!6082 = !DILocation(line: 40, column: 2, scope: !6074)
!6083 = !DILocation(line: 41, column: 2, scope: !6074)
!6084 = !DILocation(line: 42, column: 1, scope: !6074)
!6085 = distinct !DISubprogram(name: "arch___set_bit", scope: !6086, file: !6086, line: 66, type: !5265, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6087)
!6086 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6087 = !{!6088, !6089}
!6088 = !DILocalVariable(name: "nr", arg: 1, scope: !6085, file: !6086, line: 66, type: !249)
!6089 = !DILocalVariable(name: "addr", arg: 2, scope: !6085, file: !6086, line: 66, type: !5267)
!6090 = !DILocation(line: 66, column: 30, scope: !6085)
!6091 = !DILocation(line: 66, column: 58, scope: !6085)
!6092 = !DILocation(line: 68, column: 44, scope: !6085)
!6093 = !DILocation(line: 68, column: 56, scope: !6085)
!6094 = !DILocation(line: 68, column: 2, scope: !6085)
!6095 = !{i64 2148077840}
!6096 = !DILocation(line: 69, column: 1, scope: !6085)
!6097 = distinct !DISubprogram(name: "__refcount_add", scope: !705, file: !705, line: 191, type: !6098, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6100)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{null, !166, !5252, !2028}
!6100 = !{!6101, !6102, !6103, !6104}
!6101 = !DILocalVariable(name: "i", arg: 1, scope: !6097, file: !705, line: 191, type: !166)
!6102 = !DILocalVariable(name: "r", arg: 2, scope: !6097, file: !705, line: 191, type: !5252)
!6103 = !DILocalVariable(name: "oldp", arg: 3, scope: !6097, file: !705, line: 191, type: !2028)
!6104 = !DILocalVariable(name: "old", scope: !6097, file: !705, line: 193, type: !166)
!6105 = !DILocation(line: 191, column: 39, scope: !6097)
!6106 = !DILocation(line: 191, column: 54, scope: !6097)
!6107 = !DILocation(line: 191, column: 62, scope: !6097)
!6108 = !DILocation(line: 193, column: 2, scope: !6097)
!6109 = !DILocation(line: 193, column: 6, scope: !6097)
!6110 = !DILocation(line: 193, column: 37, scope: !6097)
!6111 = !DILocation(line: 193, column: 41, scope: !6097)
!6112 = !DILocation(line: 193, column: 44, scope: !6097)
!6113 = !DILocation(line: 193, column: 12, scope: !6097)
!6114 = !DILocation(line: 195, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6097, file: !705, line: 195, column: 6)
!6116 = !DILocation(line: 195, column: 6, scope: !6097)
!6117 = !DILocation(line: 196, column: 11, scope: !6115)
!6118 = !DILocation(line: 196, column: 4, scope: !6115)
!6119 = !DILocation(line: 196, column: 9, scope: !6115)
!6120 = !DILocation(line: 196, column: 3, scope: !6115)
!6121 = !DILocation(line: 198, column: 6, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6097, file: !705, line: 198, column: 6)
!6123 = !DILocation(line: 198, column: 6, scope: !6097)
!6124 = !DILocation(line: 199, column: 26, scope: !6122)
!6125 = !DILocation(line: 199, column: 3, scope: !6122)
!6126 = !DILocation(line: 200, column: 11, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6122, file: !705, line: 200, column: 11)
!6128 = !DILocation(line: 200, column: 11, scope: !6122)
!6129 = !DILocation(line: 201, column: 26, scope: !6127)
!6130 = !DILocation(line: 201, column: 3, scope: !6127)
!6131 = !DILocation(line: 202, column: 1, scope: !6097)
!6132 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5212, file: !5212, line: 250, type: !6003, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6133)
!6133 = !{!6134, !6135}
!6134 = !DILocalVariable(name: "i", arg: 1, scope: !6132, file: !5212, line: 250, type: !166)
!6135 = !DILocalVariable(name: "v", arg: 2, scope: !6132, file: !5212, line: 250, type: !5215)
!6136 = !DILocation(line: 250, column: 30, scope: !6132)
!6137 = !DILocation(line: 250, column: 43, scope: !6132)
!6138 = !DILocation(line: 252, column: 31, scope: !6132)
!6139 = !DILocation(line: 252, column: 2, scope: !6132)
!6140 = !DILocation(line: 253, column: 38, scope: !6132)
!6141 = !DILocation(line: 253, column: 41, scope: !6132)
!6142 = !DILocation(line: 253, column: 9, scope: !6132)
!6143 = !DILocation(line: 253, column: 2, scope: !6132)
!6144 = !DISubprogram(name: "refcount_warn_saturate", scope: !705, file: !705, line: 127, type: !6145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !5252, !4817}
!6147 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5973, file: !5973, line: 731, type: !6003, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6148)
!6148 = !{!6149, !6150}
!6149 = !DILocalVariable(name: "i", arg: 1, scope: !6147, file: !5973, line: 731, type: !166)
!6150 = !DILocalVariable(name: "v", arg: 2, scope: !6147, file: !5973, line: 731, type: !5215)
!6151 = !DILocation(line: 731, column: 34, scope: !6147)
!6152 = !DILocation(line: 731, column: 47, scope: !6147)
!6153 = !DILocation(line: 736, column: 31, scope: !6147)
!6154 = !DILocation(line: 736, column: 34, scope: !6147)
!6155 = !DILocation(line: 736, column: 9, scope: !6147)
!6156 = !DILocation(line: 736, column: 2, scope: !6147)
!6157 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6015, file: !6015, line: 95, type: !6003, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6158)
!6158 = !{!6159, !6160, !6161}
!6159 = !DILocalVariable(name: "i", arg: 1, scope: !6157, file: !6015, line: 95, type: !166)
!6160 = !DILocalVariable(name: "v", arg: 2, scope: !6157, file: !6015, line: 95, type: !5215)
!6161 = !DILocalVariable(name: "__ret", scope: !6162, file: !6015, line: 97, type: !166)
!6162 = distinct !DILexicalBlock(scope: !6157, file: !6015, line: 97, column: 9)
!6163 = !DILocation(line: 95, column: 54, scope: !6157)
!6164 = !DILocation(line: 95, column: 67, scope: !6157)
!6165 = !DILocation(line: 97, column: 9, scope: !6162)
!6166 = !{i64 2148932581, i64 2148932620, i64 2148932641, i64 2148932678, i64 2148932701, i64 2148932710}
!6167 = !DILocation(line: 97, column: 9, scope: !6157)
!6168 = !DILocation(line: 97, column: 2, scope: !6157)
!6169 = distinct !DISubprogram(name: "static_key_false", scope: !2197, file: !2197, line: 205, type: !6170, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6184)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!549, !6172}
!6172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6173, size: 64)
!6173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2197, line: 85, size: 128, elements: !6174)
!6174 = !{!6175, !6176}
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6173, file: !2197, line: 86, baseType: !162, size: 32)
!6176 = !DIDerivedType(tag: DW_TAG_member, scope: !6173, file: !2197, line: 101, baseType: !6177, size: 64, offset: 64)
!6177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6173, file: !2197, line: 101, size: 64, elements: !6178)
!6178 = !{!6179, !6180, !6181}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6177, file: !2197, line: 102, baseType: !249, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6177, file: !2197, line: 103, baseType: !2195, size: 64)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6177, file: !2197, line: 104, baseType: !6182, size: 64)
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2197, line: 104, flags: DIFlagFwdDecl)
!6184 = !{!6185}
!6185 = !DILocalVariable(name: "key", arg: 1, scope: !6169, file: !2197, line: 205, type: !6172)
!6186 = !DILocation(line: 205, column: 65, scope: !6169)
!6187 = !DILocation(line: 207, column: 28, scope: !6169)
!6188 = !DILocation(line: 207, column: 9, scope: !6169)
!6189 = !DILocation(line: 207, column: 2, scope: !6169)
!6190 = distinct !DISubprogram(name: "cpu_online", scope: !3362, file: !3362, line: 1080, type: !6191, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6193)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!549, !57}
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "cpu", arg: 1, scope: !6190, file: !3362, line: 1080, type: !57)
!6195 = !DILocation(line: 1080, column: 44, scope: !6190)
!6196 = !DILocation(line: 1082, column: 26, scope: !6190)
!6197 = !DILocation(line: 1082, column: 9, scope: !6190)
!6198 = !DILocation(line: 1082, column: 2, scope: !6190)
!6199 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6200, file: !6200, line: 78, type: !3746, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6201)
!6200 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6201 = !{!6202, !6203, !6205}
!6202 = !DILocalVariable(name: "val", arg: 1, scope: !6199, file: !6200, line: 78, type: !166)
!6203 = !DILocalVariable(name: "pao_ID__", scope: !6204, file: !6200, line: 80, type: !2092)
!6204 = distinct !DILexicalBlock(scope: !6199, file: !6200, line: 80, column: 2)
!6205 = !DILocalVariable(name: "pto_val__", scope: !6206, file: !6200, line: 80, type: !114)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !6200, line: 80, column: 2)
!6207 = distinct !DILexicalBlock(scope: !6208, file: !6200, line: 80, column: 2)
!6208 = distinct !DILexicalBlock(scope: !6204, file: !6200, line: 80, column: 2)
!6209 = !DILocation(line: 78, column: 53, scope: !6199)
!6210 = !DILocation(line: 80, column: 2, scope: !6199)
!6211 = !DILocation(line: 80, column: 2, scope: !6204)
!6212 = !DILocation(line: 80, column: 2, scope: !6208)
!6213 = !DILocation(line: 80, column: 2, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6208, file: !6200, line: 80, column: 2)
!6215 = !{i64 2149555910}
!6216 = !DILocation(line: 80, column: 2, scope: !6207)
!6217 = !DILocation(line: 80, column: 2, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6207, file: !6200, line: 80, column: 2)
!6219 = !{i64 2149556205}
!6220 = !DILocation(line: 80, column: 2, scope: !6206)
!6221 = !{i64 2149556910}
!6222 = !DILocation(line: 81, column: 1, scope: !6199)
!6223 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6200, file: !6200, line: 93, type: !1741, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6224)
!6224 = !{!6225}
!6225 = !DILocalVariable(name: "c", scope: !6226, file: !6200, line: 95, type: !549)
!6226 = distinct !DILexicalBlock(scope: !6223, file: !6200, line: 95, column: 9)
!6227 = !DILocation(line: 95, column: 9, scope: !6226)
!6228 = !{i64 2149560266, i64 2149560359}
!6229 = !DILocation(line: 95, column: 9, scope: !6223)
!6230 = !DILocation(line: 95, column: 2, scope: !6223)
!6231 = distinct !DISubprogram(name: "arch_static_branch", scope: !6232, file: !6232, line: 25, type: !6233, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6235)
!6232 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!6233 = !DISubroutineType(types: !6234)
!6234 = !{!549, !6172, !549}
!6235 = !{!6236, !6237, !6238}
!6236 = !DILocalVariable(name: "key", arg: 1, scope: !6231, file: !6232, line: 25, type: !6172)
!6237 = !DILocalVariable(name: "branch", arg: 2, scope: !6231, file: !6232, line: 25, type: !549)
!6238 = !DILabel(scope: !6231, name: "l_yes", file: !6232, line: 33)
!6239 = !DILocation(line: 25, column: 67, scope: !6231)
!6240 = !DILocation(line: 25, column: 77, scope: !6231)
!6241 = !DILocation(line: 30, column: 13, scope: !6231)
!6242 = !DILocation(line: 30, column: 28, scope: !6231)
!6243 = !DILocation(line: 30, column: 26, scope: !6231)
!6244 = !DILocation(line: 27, column: 2, scope: !6231)
!6245 = !{i64 1163217, i64 1163261, i64 2148647944, i64 2148647965, i64 2148647991, i64 2148648024, i64 2148648058, i64 2148648082}
!6246 = !DILocation(line: 32, column: 2, scope: !6231)
!6247 = !DILocation(line: 33, column: 1, scope: !6231)
!6248 = !DILocation(line: 34, column: 2, scope: !6231)
!6249 = !DILocation(line: 35, column: 1, scope: !6231)
!6250 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !3362, file: !3362, line: 502, type: !6251, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!549, !166, !4893}
!6253 = !{!6254, !6255}
!6254 = !DILocalVariable(name: "cpu", arg: 1, scope: !6250, file: !3362, line: 502, type: !166)
!6255 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6250, file: !3362, line: 502, type: !4893)
!6256 = !DILocation(line: 502, column: 50, scope: !6250)
!6257 = !DILocation(line: 502, column: 77, scope: !6250)
!6258 = !DILocation(line: 504, column: 9, scope: !6250)
!6259 = !DILocation(line: 504, column: 2, scope: !6250)
!6260 = distinct !DISubprogram(name: "_test_bit", scope: !5289, file: !5289, line: 139, type: !6261, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6265)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{!549, !249, !6263}
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5268)
!6265 = !{!6266, !6267}
!6266 = !DILocalVariable(name: "nr", arg: 1, scope: !6260, file: !5289, line: 139, type: !249)
!6267 = !DILocalVariable(name: "addr", arg: 2, scope: !6260, file: !5289, line: 139, type: !6263)
!6268 = !DILocation(line: 139, column: 25, scope: !6260)
!6269 = !DILocation(line: 139, column: 59, scope: !6260)
!6270 = !DILocation(line: 141, column: 25, scope: !6260)
!6271 = !DILocation(line: 141, column: 32, scope: !6260)
!6272 = !DILocation(line: 141, column: 30, scope: !6260)
!6273 = !DILocation(line: 141, column: 2, scope: !6260)
!6274 = !DILocation(line: 142, column: 23, scope: !6260)
!6275 = !DILocation(line: 142, column: 27, scope: !6260)
!6276 = !DILocation(line: 142, column: 9, scope: !6260)
!6277 = !DILocation(line: 142, column: 2, scope: !6260)
!6278 = distinct !DISubprogram(name: "cpumask_check", scope: !3362, file: !3362, line: 148, type: !6279, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6281)
!6279 = !DISubroutineType(types: !6280)
!6280 = !{!57, !57}
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "cpu", arg: 1, scope: !6278, file: !3362, line: 148, type: !57)
!6283 = !DILocation(line: 148, column: 64, scope: !6278)
!6284 = !DILocation(line: 150, column: 20, scope: !6278)
!6285 = !DILocation(line: 150, column: 2, scope: !6278)
!6286 = !DILocation(line: 151, column: 9, scope: !6278)
!6287 = !DILocation(line: 151, column: 2, scope: !6278)
!6288 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5956, file: !5956, line: 66, type: !5957, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6289)
!6289 = !{!6290, !6291}
!6290 = !DILocalVariable(name: "v", arg: 1, scope: !6288, file: !5956, line: 66, type: !5959)
!6291 = !DILocalVariable(name: "size", arg: 2, scope: !6288, file: !5956, line: 66, type: !384)
!6292 = !DILocation(line: 66, column: 73, scope: !6288)
!6293 = !DILocation(line: 66, column: 83, scope: !6288)
!6294 = !DILocation(line: 68, column: 19, scope: !6288)
!6295 = !DILocation(line: 68, column: 22, scope: !6288)
!6296 = !DILocation(line: 68, column: 2, scope: !6288)
!6297 = !DILocation(line: 69, column: 2, scope: !6288)
!6298 = !DILocation(line: 70, column: 1, scope: !6288)
!6299 = distinct !DISubprogram(name: "arch_test_bit", scope: !6086, file: !6086, line: 237, type: !6261, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6300)
!6300 = !{!6301, !6302}
!6301 = !DILocalVariable(name: "nr", arg: 1, scope: !6299, file: !6086, line: 237, type: !249)
!6302 = !DILocalVariable(name: "addr", arg: 2, scope: !6299, file: !6086, line: 237, type: !6263)
!6303 = !DILocation(line: 237, column: 29, scope: !6299)
!6304 = !DILocation(line: 237, column: 63, scope: !6299)
!6305 = !DILocation(line: 239, column: 30, scope: !6299)
!6306 = !DILocation(line: 239, column: 9, scope: !6299)
!6307 = !DILocation(line: 239, column: 54, scope: !6299)
!6308 = !DILocation(line: 239, column: 58, scope: !6299)
!6309 = !DILocation(line: 239, column: 36, scope: !6299)
!6310 = !DILocation(line: 240, column: 26, scope: !6299)
!6311 = !DILocation(line: 240, column: 30, scope: !6299)
!6312 = !DILocation(line: 240, column: 8, scope: !6299)
!6313 = !DILocation(line: 239, column: 2, scope: !6299)
!6314 = distinct !DISubprogram(name: "kasan_check_read", scope: !5981, file: !5981, line: 40, type: !5982, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6315)
!6315 = !{!6316, !6317}
!6316 = !DILocalVariable(name: "p", arg: 1, scope: !6314, file: !5981, line: 40, type: !5959)
!6317 = !DILocalVariable(name: "size", arg: 2, scope: !6314, file: !5981, line: 40, type: !57)
!6318 = !DILocation(line: 40, column: 58, scope: !6314)
!6319 = !DILocation(line: 40, column: 74, scope: !6314)
!6320 = !DILocation(line: 42, column: 2, scope: !6314)
!6321 = distinct !DISubprogram(name: "constant_test_bit", scope: !6086, file: !6086, line: 204, type: !6322, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6324)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!549, !374, !6263}
!6324 = !{!6325, !6326}
!6325 = !DILocalVariable(name: "nr", arg: 1, scope: !6321, file: !6086, line: 204, type: !374)
!6326 = !DILocalVariable(name: "addr", arg: 2, scope: !6321, file: !6086, line: 204, type: !6263)
!6327 = !DILocation(line: 204, column: 52, scope: !6321)
!6328 = !DILocation(line: 204, column: 86, scope: !6321)
!6329 = !DILocation(line: 206, column: 19, scope: !6321)
!6330 = !DILocation(line: 206, column: 22, scope: !6321)
!6331 = !DILocation(line: 206, column: 15, scope: !6321)
!6332 = !DILocation(line: 207, column: 4, scope: !6321)
!6333 = !DILocation(line: 207, column: 9, scope: !6321)
!6334 = !DILocation(line: 207, column: 12, scope: !6321)
!6335 = !DILocation(line: 206, column: 44, scope: !6321)
!6336 = !DILocation(line: 207, column: 37, scope: !6321)
!6337 = !DILocation(line: 206, column: 2, scope: !6321)
!6338 = distinct !DISubprogram(name: "variable_test_bit", scope: !6086, file: !6086, line: 224, type: !6322, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6339)
!6339 = !{!6340, !6341, !6342}
!6340 = !DILocalVariable(name: "nr", arg: 1, scope: !6338, file: !6086, line: 224, type: !374)
!6341 = !DILocalVariable(name: "addr", arg: 2, scope: !6338, file: !6086, line: 224, type: !6263)
!6342 = !DILocalVariable(name: "oldbit", scope: !6338, file: !6086, line: 226, type: !549)
!6343 = !DILocation(line: 224, column: 52, scope: !6338)
!6344 = !DILocation(line: 224, column: 86, scope: !6338)
!6345 = !DILocation(line: 226, column: 2, scope: !6338)
!6346 = !DILocation(line: 226, column: 7, scope: !6338)
!6347 = !DILocation(line: 231, column: 33, scope: !6338)
!6348 = !DILocation(line: 231, column: 46, scope: !6338)
!6349 = !DILocation(line: 228, column: 2, scope: !6338)
!6350 = !{i64 2148090526, i64 2148090600}
!6351 = !DILocation(line: 233, column: 9, scope: !6338)
!6352 = !DILocation(line: 234, column: 1, scope: !6338)
!6353 = !DILocation(line: 233, column: 2, scope: !6338)
!6354 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !3362, file: !3362, line: 140, type: !6355, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6357)
!6355 = !DISubroutineType(types: !6356)
!6356 = !{null, !57, !57}
!6357 = !{!6358, !6359}
!6358 = !DILocalVariable(name: "cpu", arg: 1, scope: !6354, file: !3362, line: 140, type: !57)
!6359 = !DILocalVariable(name: "bits", arg: 2, scope: !6354, file: !3362, line: 140, type: !57)
!6360 = !DILocation(line: 140, column: 60, scope: !6354)
!6361 = !DILocation(line: 140, column: 78, scope: !6354)
!6362 = !DILocation(line: 145, column: 1, scope: !6354)
!6363 = distinct !DISubprogram(name: "__list_del_entry", scope: !5228, file: !5228, line: 213, type: !5229, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6364)
!6364 = !{!6365}
!6365 = !DILocalVariable(name: "entry", arg: 1, scope: !6363, file: !5228, line: 213, type: !31)
!6366 = !DILocation(line: 213, column: 55, scope: !6363)
!6367 = !DILocation(line: 215, column: 30, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6363, file: !5228, line: 215, column: 6)
!6369 = !DILocation(line: 215, column: 7, scope: !6368)
!6370 = !DILocation(line: 215, column: 6, scope: !6363)
!6371 = !DILocation(line: 216, column: 3, scope: !6368)
!6372 = !DILocation(line: 218, column: 13, scope: !6363)
!6373 = !DILocation(line: 218, column: 20, scope: !6363)
!6374 = !DILocation(line: 218, column: 26, scope: !6363)
!6375 = !DILocation(line: 218, column: 33, scope: !6363)
!6376 = !DILocation(line: 218, column: 2, scope: !6363)
!6377 = !DILocation(line: 219, column: 1, scope: !6363)
!6378 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5228, file: !5228, line: 134, type: !6379, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6381)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!549, !31}
!6381 = !{!6382}
!6382 = !DILocalVariable(name: "entry", arg: 1, scope: !6378, file: !5228, line: 134, type: !31)
!6383 = !DILocation(line: 134, column: 61, scope: !6378)
!6384 = !DILocation(line: 136, column: 2, scope: !6378)
!6385 = distinct !DISubprogram(name: "__list_del", scope: !5228, file: !5228, line: 193, type: !6386, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6388)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{null, !31, !31}
!6388 = !{!6389, !6390}
!6389 = !DILocalVariable(name: "prev", arg: 1, scope: !6385, file: !5228, line: 193, type: !31)
!6390 = !DILocalVariable(name: "next", arg: 2, scope: !6385, file: !5228, line: 193, type: !31)
!6391 = !DILocation(line: 193, column: 50, scope: !6385)
!6392 = !DILocation(line: 193, column: 75, scope: !6385)
!6393 = !DILocation(line: 195, column: 15, scope: !6385)
!6394 = !DILocation(line: 195, column: 2, scope: !6385)
!6395 = !DILocation(line: 195, column: 8, scope: !6385)
!6396 = !DILocation(line: 195, column: 13, scope: !6385)
!6397 = !DILocation(line: 196, column: 2, scope: !6385)
!6398 = !DILocation(line: 196, column: 2, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6385, file: !5228, line: 196, column: 2)
!6400 = !DILocation(line: 196, column: 2, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6399, file: !5228, line: 196, column: 2)
!6402 = !DILocation(line: 196, column: 2, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6399, file: !5228, line: 196, column: 2)
!6404 = !DILocation(line: 197, column: 1, scope: !6385)
!6405 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !705, file: !705, line: 270, type: !6406, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6408)
!6406 = !DISubroutineType(types: !6407)
!6407 = !{!549, !166, !5252, !2028}
!6408 = !{!6409, !6410, !6411, !6412}
!6409 = !DILocalVariable(name: "i", arg: 1, scope: !6405, file: !705, line: 270, type: !166)
!6410 = !DILocalVariable(name: "r", arg: 2, scope: !6405, file: !705, line: 270, type: !5252)
!6411 = !DILocalVariable(name: "oldp", arg: 3, scope: !6405, file: !705, line: 270, type: !2028)
!6412 = !DILocalVariable(name: "old", scope: !6405, file: !705, line: 272, type: !166)
!6413 = !DILocation(line: 270, column: 61, scope: !6405)
!6414 = !DILocation(line: 270, column: 76, scope: !6405)
!6415 = !DILocation(line: 270, column: 84, scope: !6405)
!6416 = !DILocation(line: 272, column: 2, scope: !6405)
!6417 = !DILocation(line: 272, column: 6, scope: !6405)
!6418 = !DILocation(line: 272, column: 37, scope: !6405)
!6419 = !DILocation(line: 272, column: 41, scope: !6405)
!6420 = !DILocation(line: 272, column: 44, scope: !6405)
!6421 = !DILocation(line: 272, column: 12, scope: !6405)
!6422 = !DILocation(line: 274, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6405, file: !705, line: 274, column: 6)
!6424 = !DILocation(line: 274, column: 6, scope: !6405)
!6425 = !DILocation(line: 275, column: 11, scope: !6423)
!6426 = !DILocation(line: 275, column: 4, scope: !6423)
!6427 = !DILocation(line: 275, column: 9, scope: !6423)
!6428 = !DILocation(line: 275, column: 3, scope: !6423)
!6429 = !DILocation(line: 277, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6405, file: !705, line: 277, column: 6)
!6431 = !DILocation(line: 277, column: 13, scope: !6430)
!6432 = !DILocation(line: 277, column: 10, scope: !6430)
!6433 = !DILocation(line: 277, column: 6, scope: !6405)
!6434 = !DILocation(line: 278, column: 3, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6430, file: !705, line: 277, column: 16)
!6436 = !DILocation(line: 278, column: 3, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6435, file: !705, line: 278, column: 3)
!6438 = !DILocation(line: 278, column: 3, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6437, file: !705, line: 278, column: 3)
!6440 = !DILocation(line: 278, column: 3, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6437, file: !705, line: 278, column: 3)
!6442 = !DILocation(line: 278, column: 3, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6441, file: !705, line: 278, column: 3)
!6444 = !{i64 2150225279}
!6445 = !DILocation(line: 279, column: 3, scope: !6435)
!6446 = !DILocation(line: 282, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6405, file: !705, line: 282, column: 6)
!6448 = !DILocation(line: 282, column: 6, scope: !6405)
!6449 = !DILocation(line: 283, column: 26, scope: !6447)
!6450 = !DILocation(line: 283, column: 3, scope: !6447)
!6451 = !DILocation(line: 285, column: 2, scope: !6405)
!6452 = !DILocation(line: 286, column: 1, scope: !6405)
!6453 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5212, file: !5212, line: 397, type: !6003, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6454)
!6454 = !{!6455, !6456}
!6455 = !DILocalVariable(name: "i", arg: 1, scope: !6453, file: !5212, line: 397, type: !166)
!6456 = !DILocalVariable(name: "v", arg: 2, scope: !6453, file: !5212, line: 397, type: !5215)
!6457 = !DILocation(line: 397, column: 30, scope: !6453)
!6458 = !DILocation(line: 397, column: 43, scope: !6453)
!6459 = !DILocation(line: 399, column: 2, scope: !6453)
!6460 = !DILocation(line: 399, column: 2, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6453, file: !5212, line: 399, column: 2)
!6462 = !DILocation(line: 400, column: 31, scope: !6453)
!6463 = !DILocation(line: 400, column: 2, scope: !6453)
!6464 = !DILocation(line: 401, column: 38, scope: !6453)
!6465 = !DILocation(line: 401, column: 41, scope: !6453)
!6466 = !DILocation(line: 401, column: 9, scope: !6453)
!6467 = !DILocation(line: 401, column: 2, scope: !6453)
!6468 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5973, file: !5973, line: 928, type: !6003, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6469)
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "i", arg: 1, scope: !6468, file: !5973, line: 928, type: !166)
!6471 = !DILocalVariable(name: "v", arg: 2, scope: !6468, file: !5973, line: 928, type: !5215)
!6472 = !DILocation(line: 928, column: 34, scope: !6468)
!6473 = !DILocation(line: 928, column: 47, scope: !6468)
!6474 = !DILocation(line: 936, column: 31, scope: !6468)
!6475 = !DILocation(line: 936, column: 34, scope: !6468)
!6476 = !DILocation(line: 936, column: 9, scope: !6468)
!6477 = !DILocation(line: 936, column: 2, scope: !6468)
!6478 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6015, file: !6015, line: 101, type: !6003, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4777, retainedNodes: !6479)
!6479 = !{!6480, !6481, !6482}
!6480 = !DILocalVariable(name: "i", arg: 1, scope: !6478, file: !6015, line: 101, type: !166)
!6481 = !DILocalVariable(name: "v", arg: 2, scope: !6478, file: !6015, line: 101, type: !5215)
!6482 = !DILocalVariable(name: "__ret", scope: !6483, file: !6015, line: 103, type: !166)
!6483 = distinct !DILexicalBlock(scope: !6478, file: !6015, line: 103, column: 9)
!6484 = !DILocation(line: 101, column: 54, scope: !6478)
!6485 = !DILocation(line: 101, column: 67, scope: !6478)
!6486 = !DILocation(line: 103, column: 9, scope: !6483)
!6487 = !{i64 2148934766, i64 2148934805, i64 2148934826, i64 2148934863, i64 2148934886, i64 2148934895}
!6488 = !DILocation(line: 103, column: 9, scope: !6478)
!6489 = !DILocation(line: 103, column: 2, scope: !6478)
!6490 = !DILocation(line: 160, column: 1, scope: !4947)
!6491 = !DILocation(line: 160, column: 1, scope: !4955)
!6492 = !DILocation(line: 160, column: 1, scope: !4954)
!6493 = !DILocation(line: 160, column: 1, scope: !4957)
!6494 = !DILocation(line: 160, column: 1, scope: !4960)
!6495 = !DILocation(line: 160, column: 1, scope: !4962)
!6496 = !{i64 2154916803}
!6497 = !DILocation(line: 160, column: 1, scope: !4958)
!6498 = !DILocation(line: 160, column: 1, scope: !4964)
!6499 = !DILocation(line: 160, column: 1, scope: !4968)
!6500 = !DILocation(line: 160, column: 1, scope: !4967)
!6501 = !DILocation(line: 160, column: 1, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !4967, file: !4780, line: 160, column: 1)
!6503 = !DILocation(line: 160, column: 1, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !4967, file: !4780, line: 160, column: 1)
!6505 = !{i64 2154917997, i64 2154918026, i64 2154918072, i64 2154918130, i64 2154918184, i64 2154918238, i64 2154918293, i64 2154918324, i64 2154918632, i64 2154918638, i64 2154918685, i64 2154918708, i64 2154918734}
!6506 = !DILocation(line: 160, column: 1, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !4967, file: !4780, line: 160, column: 1)
!6508 = !DILocation(line: 160, column: 1, scope: !4965)
!6509 = !DILocation(line: 160, column: 1, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !4954, file: !4780, line: 160, column: 1)
!6511 = !{i64 2154919087}
!6512 = !DILocation(line: 160, column: 1, scope: !4970)
!6513 = !DILocation(line: 160, column: 1, scope: !4973)
!6514 = !DILocation(line: 160, column: 1, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !4973, file: !4780, line: 160, column: 1)
!6516 = !DILocation(line: 160, column: 1, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6515, file: !4780, line: 160, column: 1)
!6518 = !DILocation(line: 160, column: 1, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !4970, file: !4780, line: 160, column: 1)
!6520 = !DILocation(line: 160, column: 1, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6519, file: !4780, line: 160, column: 1)
!6522 = !DILocation(line: 160, column: 1, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6521, file: !4780, line: 160, column: 1)
!6524 = !DILocation(line: 160, column: 1, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !4954, file: !4780, line: 160, column: 1)
!6526 = !{i64 2154925204}
!6527 = !DILocation(line: 160, column: 1, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6525, file: !4780, line: 160, column: 1)
!6529 = !DILocation(line: 160, column: 1, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6528, file: !4780, line: 160, column: 1)
!6531 = !{i64 2154925363}
!6532 = !DISubprogram(name: "queue_work_on", scope: !12, file: !12, line: 496, type: !6533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{!549, !166, !2190, !38}
!6535 = !DILocation(line: 187, column: 1, scope: !5011)
!6536 = !DILocation(line: 187, column: 1, scope: !5019)
!6537 = !DILocation(line: 187, column: 1, scope: !5018)
!6538 = !DILocation(line: 187, column: 1, scope: !5021)
!6539 = !DILocation(line: 187, column: 1, scope: !5024)
!6540 = !DILocation(line: 187, column: 1, scope: !5026)
!6541 = !{i64 2154962077}
!6542 = !DILocation(line: 187, column: 1, scope: !5022)
!6543 = !DILocation(line: 187, column: 1, scope: !5028)
!6544 = !DILocation(line: 187, column: 1, scope: !5032)
!6545 = !DILocation(line: 187, column: 1, scope: !5031)
!6546 = !DILocation(line: 187, column: 1, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !5031, file: !4780, line: 187, column: 1)
!6548 = !DILocation(line: 187, column: 1, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !5031, file: !4780, line: 187, column: 1)
!6550 = !{i64 2154963271, i64 2154963300, i64 2154963346, i64 2154963404, i64 2154963458, i64 2154963512, i64 2154963567, i64 2154963598, i64 2154963906, i64 2154963912, i64 2154963959, i64 2154963982, i64 2154964008}
!6551 = !DILocation(line: 187, column: 1, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !5031, file: !4780, line: 187, column: 1)
!6553 = !DILocation(line: 187, column: 1, scope: !5029)
!6554 = !DILocation(line: 187, column: 1, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !5018, file: !4780, line: 187, column: 1)
!6556 = !{i64 2154964361}
!6557 = !DILocation(line: 187, column: 1, scope: !5034)
!6558 = !DILocation(line: 187, column: 1, scope: !5037)
!6559 = !DILocation(line: 187, column: 1, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !5037, file: !4780, line: 187, column: 1)
!6561 = !DILocation(line: 187, column: 1, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6560, file: !4780, line: 187, column: 1)
!6563 = !DILocation(line: 187, column: 1, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !5034, file: !4780, line: 187, column: 1)
!6565 = !DILocation(line: 187, column: 1, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6564, file: !4780, line: 187, column: 1)
!6567 = !DILocation(line: 187, column: 1, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6566, file: !4780, line: 187, column: 1)
!6569 = !DILocation(line: 187, column: 1, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !5018, file: !4780, line: 187, column: 1)
!6571 = !{i64 2154974539}
!6572 = !DILocation(line: 187, column: 1, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6570, file: !4780, line: 187, column: 1)
!6574 = !DILocation(line: 187, column: 1, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6573, file: !4780, line: 187, column: 1)
!6576 = !{i64 2154974698}
