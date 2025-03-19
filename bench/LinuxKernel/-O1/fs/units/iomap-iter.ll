; ModuleID = 'fs/iomap/iter.c'
source_filename = "fs/iomap/iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.13 }
%struct.atomic_t = type { i32 }
%union.anon.13 = type { i64 }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap, ptr }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.iomap_ops = type { ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@__tracepoint_iomap_iter = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [17 x i8] c"fs/iomap/trace.h\00", align 1, !dbg !0
@trace_iomap_iter.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter421 = internal global ptr @__SCK__tp_func_iomap_iter, section ".discard.addressable", align 8, !dbg !7
@__SCK__tp_func_iomap_iter = external dso_local global %struct.static_call_key, align 8
@trace_iomap_iter.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace422 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4982
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/iomap/iter.c\00", align 1, !dbg !4984
@__tracepoint_iomap_iter_dstmap = external dso_local global %struct.tracepoint, align 8
@trace_iomap_iter_dstmap.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_dstmap397 = internal global ptr @__SCK__tp_func_iomap_iter_dstmap, section ".discard.addressable", align 8, !dbg !4986
@__SCK__tp_func_iomap_iter_dstmap = external dso_local global %struct.static_call_key, align 8
@trace_iomap_iter_dstmap.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5016
@__tracepoint_iomap_iter_srcmap = external dso_local global %struct.tracepoint, align 8
@trace_iomap_iter_srcmap.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_srcmap405 = internal global ptr @__SCK__tp_func_iomap_iter_srcmap, section ".discard.addressable", align 8, !dbg !5018
@__SCK__tp_func_iomap_iter_srcmap = external dso_local global %struct.static_call_key, align 8
@trace_iomap_iter_srcmap.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !5045
@llvm.compiler.used = appending global [6 x ptr] [ptr @trace_iomap_iter.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter421, ptr @trace_iomap_iter.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace422, ptr @trace_iomap_iter_dstmap.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_dstmap397, ptr @trace_iomap_iter_dstmap.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398, ptr @trace_iomap_iter_srcmap.__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_srcmap405, ptr @trace_iomap_iter_srcmap.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iomap_iter(ptr noundef %iter, ptr noundef %ops) #0 align 16 !dbg !5082 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5098, metadata !DIExpression()), !dbg !5101
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5100, metadata !DIExpression()), !dbg !5104
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5105
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, !dbg !5107
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2, !dbg !5108
  %1 = load i64, ptr %length, align 8, !dbg !5108
  %tobool = icmp ne i64 %1, 0, !dbg !5105
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !5109

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ops.addr, align 8, !dbg !5110
  %iomap_end = getelementptr inbounds %struct.iomap_ops, ptr %2, i32 0, i32 1, !dbg !5111
  %3 = load ptr, ptr %iomap_end, align 8, !dbg !5111
  %tobool1 = icmp ne ptr %3, null, !dbg !5110
  br i1 %tobool1, label %if.then, label %if.end11, !dbg !5112

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %ops.addr, align 8, !dbg !5113
  %iomap_end2 = getelementptr inbounds %struct.iomap_ops, ptr %4, i32 0, i32 1, !dbg !5115
  %5 = load ptr, ptr %iomap_end2, align 8, !dbg !5115
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !5116
  %inode = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 0, !dbg !5117
  %7 = load ptr, ptr %inode, align 8, !dbg !5117
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !5118
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %8, i32 0, i32 1, !dbg !5119
  %9 = load i64, ptr %pos, align 8, !dbg !5119
  %10 = load ptr, ptr %iter.addr, align 8, !dbg !5120
  %call = call i64 @iomap_length(ptr noundef %10) #13, !dbg !5121
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !5122
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %11, i32 0, i32 3, !dbg !5123
  %12 = load i64, ptr %processed, align 8, !dbg !5123
  %cmp = icmp sgt i64 %12, 0, !dbg !5124
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5122

cond.true:                                        ; preds = %if.then
  %13 = load ptr, ptr %iter.addr, align 8, !dbg !5125
  %processed3 = getelementptr inbounds %struct.iomap_iter, ptr %13, i32 0, i32 3, !dbg !5126
  %14 = load i64, ptr %processed3, align 8, !dbg !5126
  br label %cond.end, !dbg !5122

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ 0, %cond.false ], !dbg !5122
  %15 = load ptr, ptr %iter.addr, align 8, !dbg !5127
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %15, i32 0, i32 4, !dbg !5128
  %16 = load i32, ptr %flags, align 8, !dbg !5128
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !5129
  %iomap4 = getelementptr inbounds %struct.iomap_iter, ptr %17, i32 0, i32 5, !dbg !5130
  %call5 = call i32 %5(ptr noundef %7, i64 noundef %9, i64 noundef %call, i64 noundef %cond, i32 noundef %16, ptr noundef %iomap4) #13, !dbg !5113
  store i32 %call5, ptr %ret, align 4, !dbg !5131
  %18 = load i32, ptr %ret, align 4, !dbg !5132
  %cmp6 = icmp slt i32 %18, 0, !dbg !5134
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !5135

land.lhs.true7:                                   ; preds = %cond.end
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !5136
  %processed8 = getelementptr inbounds %struct.iomap_iter, ptr %19, i32 0, i32 3, !dbg !5137
  %20 = load i64, ptr %processed8, align 8, !dbg !5137
  %tobool9 = icmp ne i64 %20, 0, !dbg !5136
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !5138

if.then10:                                        ; preds = %land.lhs.true7
  %21 = load i32, ptr %ret, align 4, !dbg !5139
  store i32 %21, ptr %retval, align 4, !dbg !5140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5140

if.end:                                           ; preds = %land.lhs.true7, %cond.end
  br label %if.end11, !dbg !5141

if.end11:                                         ; preds = %if.end, %land.lhs.true, %entry
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !5142
  %23 = load ptr, ptr %ops.addr, align 8, !dbg !5143
  %24 = call ptr @llvm.returnaddress(i32 0), !dbg !5144
  %25 = ptrtoint ptr %24 to i64, !dbg !5144
  call void @trace_iomap_iter(ptr noundef %22, ptr noundef %23, i64 noundef %25) #13, !dbg !5145
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !5146
  %call12 = call i32 @iomap_iter_advance(ptr noundef %26) #13, !dbg !5147
  store i32 %call12, ptr %ret, align 4, !dbg !5148
  %27 = load i32, ptr %ret, align 4, !dbg !5149
  %cmp13 = icmp sle i32 %27, 0, !dbg !5151
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5152

if.then14:                                        ; preds = %if.end11
  %28 = load i32, ptr %ret, align 4, !dbg !5153
  store i32 %28, ptr %retval, align 4, !dbg !5154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5154

if.end15:                                         ; preds = %if.end11
  %29 = load ptr, ptr %ops.addr, align 8, !dbg !5155
  %iomap_begin = getelementptr inbounds %struct.iomap_ops, ptr %29, i32 0, i32 0, !dbg !5156
  %30 = load ptr, ptr %iomap_begin, align 8, !dbg !5156
  %31 = load ptr, ptr %iter.addr, align 8, !dbg !5157
  %inode16 = getelementptr inbounds %struct.iomap_iter, ptr %31, i32 0, i32 0, !dbg !5158
  %32 = load ptr, ptr %inode16, align 8, !dbg !5158
  %33 = load ptr, ptr %iter.addr, align 8, !dbg !5159
  %pos17 = getelementptr inbounds %struct.iomap_iter, ptr %33, i32 0, i32 1, !dbg !5160
  %34 = load i64, ptr %pos17, align 8, !dbg !5160
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !5161
  %len = getelementptr inbounds %struct.iomap_iter, ptr %35, i32 0, i32 2, !dbg !5162
  %36 = load i64, ptr %len, align 8, !dbg !5162
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !5163
  %flags18 = getelementptr inbounds %struct.iomap_iter, ptr %37, i32 0, i32 4, !dbg !5164
  %38 = load i32, ptr %flags18, align 8, !dbg !5164
  %39 = load ptr, ptr %iter.addr, align 8, !dbg !5165
  %iomap19 = getelementptr inbounds %struct.iomap_iter, ptr %39, i32 0, i32 5, !dbg !5166
  %40 = load ptr, ptr %iter.addr, align 8, !dbg !5167
  %srcmap = getelementptr inbounds %struct.iomap_iter, ptr %40, i32 0, i32 6, !dbg !5168
  %call20 = call i32 %30(ptr noundef %32, i64 noundef %34, i64 noundef %36, i32 noundef %38, ptr noundef %iomap19, ptr noundef %srcmap) #13, !dbg !5155
  store i32 %call20, ptr %ret, align 4, !dbg !5169
  %41 = load i32, ptr %ret, align 4, !dbg !5170
  %cmp21 = icmp slt i32 %41, 0, !dbg !5172
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5173

if.then22:                                        ; preds = %if.end15
  %42 = load i32, ptr %ret, align 4, !dbg !5174
  store i32 %42, ptr %retval, align 4, !dbg !5175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5175

if.end23:                                         ; preds = %if.end15
  %43 = load ptr, ptr %iter.addr, align 8, !dbg !5176
  call void @iomap_iter_done(ptr noundef %43) #13, !dbg !5177
  store i32 1, ptr %retval, align 4, !dbg !5178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5178

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then14, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !5179
  %44 = load i32, ptr %retval, align 4, !dbg !5179
  ret i32 %44, !dbg !5179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iomap_length(ptr noundef %iter) #3 align 16 !dbg !5180 {
entry:
  %iter.addr = alloca ptr, align 8
  %end = alloca i64, align 8
  %__UNIQUE_ID___x335 = alloca i64, align 8
  %__UNIQUE_ID___y336 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x337 = alloca i64, align 8
  %__UNIQUE_ID___y338 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5186, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #12, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5187, metadata !DIExpression()), !dbg !5198
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5199
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, !dbg !5200
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1, !dbg !5201
  %1 = load i64, ptr %offset, align 8, !dbg !5201
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !5202
  %iomap1 = getelementptr inbounds %struct.iomap_iter, ptr %2, i32 0, i32 5, !dbg !5203
  %length = getelementptr inbounds %struct.iomap, ptr %iomap1, i32 0, i32 2, !dbg !5204
  %3 = load i64, ptr %length, align 8, !dbg !5204
  %add = add i64 %1, %3, !dbg !5205
  store i64 %add, ptr %end, align 8, !dbg !5198
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !5206
  %srcmap = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, !dbg !5207
  %type = getelementptr inbounds %struct.iomap, ptr %srcmap, i32 0, i32 3, !dbg !5208
  %5 = load i16, ptr %type, align 8, !dbg !5208
  %conv = zext i16 %5 to i32, !dbg !5206
  %cmp = icmp ne i32 %conv, 0, !dbg !5209
  br i1 %cmp, label %if.then, label %if.end, !dbg !5210

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x335) #12, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x335, metadata !5188, metadata !DIExpression()), !dbg !5211
  %6 = load i64, ptr %end, align 8, !dbg !5211
  store i64 %6, ptr %__UNIQUE_ID___x335, align 8, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y336) #12, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y336, metadata !5191, metadata !DIExpression()), !dbg !5211
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !5211
  %srcmap3 = getelementptr inbounds %struct.iomap_iter, ptr %7, i32 0, i32 6, !dbg !5211
  %offset4 = getelementptr inbounds %struct.iomap, ptr %srcmap3, i32 0, i32 1, !dbg !5211
  %8 = load i64, ptr %offset4, align 8, !dbg !5211
  %9 = load ptr, ptr %iter.addr, align 8, !dbg !5211
  %srcmap5 = getelementptr inbounds %struct.iomap_iter, ptr %9, i32 0, i32 6, !dbg !5211
  %length6 = getelementptr inbounds %struct.iomap, ptr %srcmap5, i32 0, i32 2, !dbg !5211
  %10 = load i64, ptr %length6, align 8, !dbg !5211
  %add7 = add i64 %8, %10, !dbg !5211
  store i64 %add7, ptr %__UNIQUE_ID___y336, align 8, !dbg !5211
  %11 = load i64, ptr %__UNIQUE_ID___x335, align 8, !dbg !5211
  %12 = load i64, ptr %__UNIQUE_ID___y336, align 8, !dbg !5211
  %cmp8 = icmp ult i64 %11, %12, !dbg !5211
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5211

cond.true:                                        ; preds = %if.then
  %13 = load i64, ptr %__UNIQUE_ID___x335, align 8, !dbg !5211
  br label %cond.end, !dbg !5211

cond.false:                                       ; preds = %if.then
  %14 = load i64, ptr %__UNIQUE_ID___y336, align 8, !dbg !5211
  br label %cond.end, !dbg !5211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5211
  store i64 %cond, ptr %tmp, align 8, !dbg !5211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y336) #12, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x335) #12, !dbg !5212
  %15 = load i64, ptr %tmp, align 8, !dbg !5211
  store i64 %15, ptr %end, align 8, !dbg !5213
  br label %if.end, !dbg !5214

if.end:                                           ; preds = %cond.end, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x337) #12, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x337, metadata !5192, metadata !DIExpression()), !dbg !5215
  %16 = load ptr, ptr %iter.addr, align 8, !dbg !5215
  %len = getelementptr inbounds %struct.iomap_iter, ptr %16, i32 0, i32 2, !dbg !5215
  %17 = load i64, ptr %len, align 8, !dbg !5215
  store i64 %17, ptr %__UNIQUE_ID___x337, align 8, !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y338) #12, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y338, metadata !5195, metadata !DIExpression()), !dbg !5215
  %18 = load i64, ptr %end, align 8, !dbg !5215
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !5215
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %19, i32 0, i32 1, !dbg !5215
  %20 = load i64, ptr %pos, align 8, !dbg !5215
  %sub = sub i64 %18, %20, !dbg !5215
  store i64 %sub, ptr %__UNIQUE_ID___y338, align 8, !dbg !5215
  %21 = load i64, ptr %__UNIQUE_ID___x337, align 8, !dbg !5215
  %22 = load i64, ptr %__UNIQUE_ID___y338, align 8, !dbg !5215
  %cmp11 = icmp ult i64 %21, %22, !dbg !5215
  br i1 %cmp11, label %cond.true13, label %cond.false14, !dbg !5215

cond.true13:                                      ; preds = %if.end
  %23 = load i64, ptr %__UNIQUE_ID___x337, align 8, !dbg !5215
  br label %cond.end15, !dbg !5215

cond.false14:                                     ; preds = %if.end
  %24 = load i64, ptr %__UNIQUE_ID___y338, align 8, !dbg !5215
  br label %cond.end15, !dbg !5215

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i64 [ %23, %cond.true13 ], [ %24, %cond.false14 ], !dbg !5215
  store i64 %cond16, ptr %tmp10, align 8, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y338) #12, !dbg !5216
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x337) #12, !dbg !5216
  %25 = load i64, ptr %tmp10, align 8, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #12, !dbg !5217
  ret i64 %25, !dbg !5218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_iomap_iter(ptr noundef %iter, ptr noundef %ops, i64 noundef %caller) #3 align 16 !dbg !9 {
entry:
  %iter.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %caller.addr = alloca i64, align 8
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
  %__UNIQUE_ID_rcu419 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5048, metadata !DIExpression()), !dbg !5219
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5049, metadata !DIExpression()), !dbg !5219
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5050, metadata !DIExpression()), !dbg !5219
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter, i32 0, i32 1)) #13, !dbg !5220
  br i1 %call, label %if.then, label %if.end68, !dbg !5219

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5220

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5051, metadata !DIExpression()), !dbg !5221
  store i32 0, ptr %__idx, align 4, !dbg !5221
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5054, metadata !DIExpression()), !dbg !5222
  br label %do.body1, !dbg !5222

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5057, metadata !DIExpression()), !dbg !5223
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5223
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5222
  br label %do.cond, !dbg !5223

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5223

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5059, metadata !DIExpression()), !dbg !5224
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !5224, !srcloc !5225
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5224
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5224
  %conv = zext i32 %2 to i64, !dbg !5224
  %conv2 = trunc i64 %conv to i32, !dbg !5224
  store i32 %conv2, ptr %tmp, align 4, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !5222
  %3 = load i32, ptr %tmp, align 4, !dbg !5224
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5222
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5222
  store i32 %4, ptr %tmp3, align 4, !dbg !5222
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5226
  %5 = load i32, ptr %tmp3, align 4, !dbg !5222
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !5226
  br i1 %call4, label %if.end, label %if.then5, !dbg !5221

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5226

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5227
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5061, metadata !DIExpression()), !dbg !5227
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5227
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5228
  %tobool = icmp ne i32 %6, 0, !dbg !5228
  %lnot = xor i1 %tobool, true, !dbg !5228
  %lnot6 = xor i1 %lnot, true, !dbg !5228
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5228
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5228
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5228
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5228
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5227

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5228

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5064, metadata !DIExpression()), !dbg !5229
  store i32 2307, ptr %__flags, align 4, !dbg !5229
  br label %do.body11, !dbg !5229

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5230

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5230

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5229

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5232
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 190, i32 %7, i64 12) #12, !dbg !5232, !srcloc !5234
  br label %do.cond15, !dbg !5232

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5232

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5229

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5235

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5235

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5228
  br label %do.cond20, !dbg !5229

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5229

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5229

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5227
  %tobool24 = icmp ne i32 %8, 0, !dbg !5227
  %lnot25 = xor i1 %tobool24, true, !dbg !5227
  %lnot27 = xor i1 %lnot25, true, !dbg !5227
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5227
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5227
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5227
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5228
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5237
  %9 = load i64, ptr %tmp23, align 8, !dbg !5227
  %tobool31 = icmp ne i64 %9, 0, !dbg !5237
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5221

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5237

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5221

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5238
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5238, !srcloc !5240
  br label %do.cond35, !dbg !5238

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5238

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5221

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5067, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5069, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu419) #12, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu419, metadata !5070, metadata !DIExpression()), !dbg !5242
  br label %do.body38, !dbg !5243

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5245

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5245

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter, i32 0, i32 8), align 8, !dbg !5243
  store ptr %10, ptr %tmp41, align 8, !dbg !5245
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5243
  store ptr %11, ptr %__UNIQUE_ID_rcu419, align 8, !dbg !5242
  %12 = load ptr, ptr %__UNIQUE_ID_rcu419, align 8, !dbg !5242
  store ptr %12, ptr %tmp42, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu419) #12, !dbg !5241
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5242
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5241
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5247
  %tobool43 = icmp ne ptr %14, null, !dbg !5247
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5241

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5249
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5249
  %16 = load ptr, ptr %data, align 8, !dbg !5249
  store ptr %16, ptr %__data, align 8, !dbg !5249
  store ptr @__SCT__tp_func_iomap_iter, ptr %tmp45, align 8, !dbg !5251
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5251
  %18 = load ptr, ptr %__data, align 8, !dbg !5249
  %19 = load ptr, ptr %iter.addr, align 8, !dbg !5249
  %20 = load ptr, ptr %ops.addr, align 8, !dbg !5249
  %21 = load i64, ptr %caller.addr, align 8, !dbg !5249
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21) #13, !dbg !5249
  br label %if.end47, !dbg !5249

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5221
  br label %do.cond48, !dbg !5241

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5241

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5221

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5253, !srcloc !5255
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5256
  %lnot52 = xor i1 %call51, true, !dbg !5256
  %lnot54 = xor i1 %lnot52, true, !dbg !5256
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5256
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5256
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5256
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5256
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5253

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5256

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !5072), !dbg !5258
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #12, !dbg !5258, !srcloc !5260
  call void @llvm.write_register.i64(metadata !5072, i64 %23), !dbg !5258
  br label %do.cond61, !dbg !5258

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5258

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5258

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5253

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5253

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5220
  br label %cleanup, !dbg !5220

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !5220
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5221

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5221

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5219

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iomap_iter_advance(ptr noundef %iter) #3 align 16 !dbg !5261 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %stale = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5265, metadata !DIExpression()), !dbg !5275
  call void @llvm.lifetime.start.p0(i64 1, ptr %stale) #12, !dbg !5276
  call void @llvm.dbg.declare(metadata ptr %stale, metadata !5266, metadata !DIExpression()), !dbg !5277
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5278
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, !dbg !5279
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4, !dbg !5280
  %1 = load i16, ptr %flags, align 2, !dbg !5280
  %conv = zext i16 %1 to i32, !dbg !5278
  %and = and i32 %conv, 512, !dbg !5281
  %tobool = icmp ne i32 %and, 0, !dbg !5278
  %frombool = zext i1 %tobool to i8, !dbg !5277
  store i8 %frombool, ptr %stale, align 1, !dbg !5277
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !5282
  %iomap1 = getelementptr inbounds %struct.iomap_iter, ptr %2, i32 0, i32 5, !dbg !5283
  %length = getelementptr inbounds %struct.iomap, ptr %iomap1, i32 0, i32 2, !dbg !5284
  %3 = load i64, ptr %length, align 8, !dbg !5284
  %tobool2 = icmp ne i64 %3, 0, !dbg !5282
  br i1 %tobool2, label %if.then, label %if.end50, !dbg !5285

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !5286
  %processed = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 3, !dbg !5288
  %5 = load i64, ptr %processed, align 8, !dbg !5288
  %cmp = icmp slt i64 %5, 0, !dbg !5289
  br i1 %cmp, label %if.then4, label %if.end, !dbg !5290

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !5291
  %processed5 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 3, !dbg !5292
  %7 = load i64, ptr %processed5, align 8, !dbg !5292
  %conv6 = trunc i64 %7 to i32, !dbg !5291
  store i32 %conv6, ptr %retval, align 4, !dbg !5293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5293

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !5294
  %processed7 = getelementptr inbounds %struct.iomap_iter, ptr %8, i32 0, i32 3, !dbg !5296
  %9 = load i64, ptr %processed7, align 8, !dbg !5296
  %tobool8 = icmp ne i64 %9, 0, !dbg !5294
  br i1 %tobool8, label %if.end11, label %land.lhs.true, !dbg !5297

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8, ptr %stale, align 1, !dbg !5298, !range !5299, !noundef !632
  %tobool9 = trunc i8 %10 to i1, !dbg !5298
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5300

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

if.end11:                                         ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5267, metadata !DIExpression()), !dbg !5302
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !5302
  %processed12 = getelementptr inbounds %struct.iomap_iter, ptr %11, i32 0, i32 3, !dbg !5302
  %12 = load i64, ptr %processed12, align 8, !dbg !5302
  %13 = load ptr, ptr %iter.addr, align 8, !dbg !5302
  %call = call i64 @iomap_length(ptr noundef %13) #13, !dbg !5302
  %cmp13 = icmp ugt i64 %12, %call, !dbg !5302
  %lnot = xor i1 %cmp13, true, !dbg !5302
  %lnot15 = xor i1 %lnot, true, !dbg !5302
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5302
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5302
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5303
  %tobool16 = icmp ne i32 %14, 0, !dbg !5303
  %lnot17 = xor i1 %tobool16, true, !dbg !5303
  %lnot19 = xor i1 %lnot17, true, !dbg !5303
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5303
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5303
  %expval = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5303
  %tobool22 = icmp ne i64 %expval, 0, !dbg !5303
  br i1 %tobool22, label %if.then23, label %if.end33, !dbg !5302

if.then23:                                        ; preds = %if.end11
  br label %do.body, !dbg !5303

do.body:                                          ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5272, metadata !DIExpression()), !dbg !5304
  store i32 2307, ptr %__flags, align 4, !dbg !5304
  br label %do.body24, !dbg !5304

do.body24:                                        ; preds = %do.body
  br label %do.cond, !dbg !5305

do.cond:                                          ; preds = %do.body24
  br label %do.end, !dbg !5305

do.end:                                           ; preds = %do.cond
  br label %do.body25, !dbg !5304

do.body25:                                        ; preds = %do.end
  %15 = load i32, ptr %__flags, align 4, !dbg !5307
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 32, i32 %15, i64 12) #12, !dbg !5307, !srcloc !5309
  br label %do.cond26, !dbg !5307

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5307

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5304

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !5310

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5310

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5303
  br label %do.cond31, !dbg !5304

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !5304

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !5304

if.end33:                                         ; preds = %do.end32, %if.end11
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !5302
  %tobool34 = icmp ne i32 %16, 0, !dbg !5302
  %lnot35 = xor i1 %tobool34, true, !dbg !5302
  %lnot37 = xor i1 %lnot35, true, !dbg !5302
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5302
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !5302
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !5302
  store i64 %expval40, ptr %tmp, align 8, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5312
  %17 = load i64, ptr %tmp, align 8, !dbg !5302
  %tobool41 = icmp ne i64 %17, 0, !dbg !5312
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5313

if.then42:                                        ; preds = %if.end33
  store i32 -5, ptr %retval, align 4, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

if.end43:                                         ; preds = %if.end33
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !5315
  %processed44 = getelementptr inbounds %struct.iomap_iter, ptr %18, i32 0, i32 3, !dbg !5316
  %19 = load i64, ptr %processed44, align 8, !dbg !5316
  %20 = load ptr, ptr %iter.addr, align 8, !dbg !5317
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %20, i32 0, i32 1, !dbg !5318
  %21 = load i64, ptr %pos, align 8, !dbg !5319
  %add = add i64 %21, %19, !dbg !5319
  store i64 %add, ptr %pos, align 8, !dbg !5319
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !5320
  %processed45 = getelementptr inbounds %struct.iomap_iter, ptr %22, i32 0, i32 3, !dbg !5321
  %23 = load i64, ptr %processed45, align 8, !dbg !5321
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !5322
  %len = getelementptr inbounds %struct.iomap_iter, ptr %24, i32 0, i32 2, !dbg !5323
  %25 = load i64, ptr %len, align 8, !dbg !5324
  %sub = sub i64 %25, %23, !dbg !5324
  store i64 %sub, ptr %len, align 8, !dbg !5324
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !5325
  %len46 = getelementptr inbounds %struct.iomap_iter, ptr %26, i32 0, i32 2, !dbg !5327
  %27 = load i64, ptr %len46, align 8, !dbg !5327
  %tobool47 = icmp ne i64 %27, 0, !dbg !5325
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !5328

if.then48:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4, !dbg !5329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5329

if.end49:                                         ; preds = %if.end43
  br label %if.end50, !dbg !5330

if.end50:                                         ; preds = %if.end49, %entry
  %28 = load ptr, ptr %iter.addr, align 8, !dbg !5331
  %processed51 = getelementptr inbounds %struct.iomap_iter, ptr %28, i32 0, i32 3, !dbg !5332
  store i64 0, ptr %processed51, align 8, !dbg !5333
  %29 = load ptr, ptr %iter.addr, align 8, !dbg !5334
  %iomap52 = getelementptr inbounds %struct.iomap_iter, ptr %29, i32 0, i32 5, !dbg !5335
  call void @llvm.memset.p0.i64(ptr align 8 %iomap52, i8 0, i64 80, i1 false), !dbg !5336
  %30 = load ptr, ptr %iter.addr, align 8, !dbg !5337
  %srcmap = getelementptr inbounds %struct.iomap_iter, ptr %30, i32 0, i32 6, !dbg !5338
  call void @llvm.memset.p0.i64(ptr align 8 %srcmap, i8 0, i64 80, i1 false), !dbg !5339
  store i32 1, ptr %retval, align 4, !dbg !5340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5340

cleanup:                                          ; preds = %if.end50, %if.then48, %if.then42, %if.then10, %if.then4
  call void @llvm.lifetime.end.p0(i64 1, ptr %stale) #12, !dbg !5341
  %31 = load i32, ptr %retval, align 4, !dbg !5341
  ret i32 %31, !dbg !5341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iomap_iter_done(ptr noundef %iter) #3 align 16 !dbg !5342 {
entry:
  %iter.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on23 = alloca i32, align 4
  %__flags41 = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  %__ret_warn_on62 = alloca i32, align 4
  %__flags84 = alloca i32, align 4
  %tmp97 = alloca i64, align 8
  %__ret_warn_on105 = alloca i32, align 4
  %__flags123 = alloca i32, align 4
  %tmp136 = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5346, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5347, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5368
  %iomap = getelementptr inbounds %struct.iomap_iter, ptr %0, i32 0, i32 5, !dbg !5368
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1, !dbg !5368
  %1 = load i64, ptr %offset, align 8, !dbg !5368
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !5368
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %2, i32 0, i32 1, !dbg !5368
  %3 = load i64, ptr %pos, align 8, !dbg !5368
  %cmp = icmp sgt i64 %1, %3, !dbg !5368
  %lnot = xor i1 %cmp, true, !dbg !5368
  %lnot1 = xor i1 %lnot, true, !dbg !5368
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5368
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5368
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5369
  %tobool = icmp ne i32 %4, 0, !dbg !5369
  %lnot2 = xor i1 %tobool, true, !dbg !5369
  %lnot4 = xor i1 %lnot2, true, !dbg !5369
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5369
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5369
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5369
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5369
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5368

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5369

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5349, metadata !DIExpression()), !dbg !5370
  store i32 2307, ptr %__flags, align 4, !dbg !5370
  br label %do.body7, !dbg !5370

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5371

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5371

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5370

do.body8:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5373
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 49, i32 %5, i64 12) #12, !dbg !5373, !srcloc !5375
  br label %do.cond9, !dbg !5373

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5373

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5370

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5376

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5376

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5369
  br label %do.cond14, !dbg !5370

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5370

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5370

if.end:                                           ; preds = %do.end15, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5368
  %tobool16 = icmp ne i32 %6, 0, !dbg !5368
  %lnot17 = xor i1 %tobool16, true, !dbg !5368
  %lnot19 = xor i1 %lnot17, true, !dbg !5368
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5368
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5368
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5368
  store i64 %expval22, ptr %tmp, align 8, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5378
  %7 = load i64, ptr %tmp, align 8, !dbg !5368
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on23) #12, !dbg !5379
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on23, metadata !5352, metadata !DIExpression()), !dbg !5379
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !5379
  %iomap24 = getelementptr inbounds %struct.iomap_iter, ptr %8, i32 0, i32 5, !dbg !5379
  %length = getelementptr inbounds %struct.iomap, ptr %iomap24, i32 0, i32 2, !dbg !5379
  %9 = load i64, ptr %length, align 8, !dbg !5379
  %cmp25 = icmp eq i64 %9, 0, !dbg !5379
  %lnot27 = xor i1 %cmp25, true, !dbg !5379
  %lnot29 = xor i1 %lnot27, true, !dbg !5379
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5379
  store i32 %lnot.ext30, ptr %__ret_warn_on23, align 4, !dbg !5379
  %10 = load i32, ptr %__ret_warn_on23, align 4, !dbg !5380
  %tobool31 = icmp ne i32 %10, 0, !dbg !5380
  %lnot32 = xor i1 %tobool31, true, !dbg !5380
  %lnot34 = xor i1 %lnot32, true, !dbg !5380
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5380
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5380
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5380
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !5380
  br i1 %tobool38, label %if.then39, label %if.end53, !dbg !5379

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !5380

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags41) #12, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %__flags41, metadata !5354, metadata !DIExpression()), !dbg !5381
  store i32 2307, ptr %__flags41, align 4, !dbg !5381
  br label %do.body42, !dbg !5381

do.body42:                                        ; preds = %do.body40
  br label %do.cond43, !dbg !5382

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !5382

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !5381

do.body45:                                        ; preds = %do.end44
  %11 = load i32, ptr %__flags41, align 4, !dbg !5384
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 50, i32 %11, i64 12) #12, !dbg !5384, !srcloc !5386
  br label %do.cond46, !dbg !5384

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5384

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !5381

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !5387

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5387

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags41) #12, !dbg !5380
  br label %do.cond51, !dbg !5381

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !5381

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !5381

if.end53:                                         ; preds = %do.end52, %if.end
  %12 = load i32, ptr %__ret_warn_on23, align 4, !dbg !5379
  %tobool55 = icmp ne i32 %12, 0, !dbg !5379
  %lnot56 = xor i1 %tobool55, true, !dbg !5379
  %lnot58 = xor i1 %lnot56, true, !dbg !5379
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !5379
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !5379
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !5379
  store i64 %expval61, ptr %tmp54, align 8, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on23) #12, !dbg !5389
  %13 = load i64, ptr %tmp54, align 8, !dbg !5379
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on62) #12, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on62, metadata !5357, metadata !DIExpression()), !dbg !5390
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !5390
  %iomap63 = getelementptr inbounds %struct.iomap_iter, ptr %14, i32 0, i32 5, !dbg !5390
  %offset64 = getelementptr inbounds %struct.iomap, ptr %iomap63, i32 0, i32 1, !dbg !5390
  %15 = load i64, ptr %offset64, align 8, !dbg !5390
  %16 = load ptr, ptr %iter.addr, align 8, !dbg !5390
  %iomap65 = getelementptr inbounds %struct.iomap_iter, ptr %16, i32 0, i32 5, !dbg !5390
  %length66 = getelementptr inbounds %struct.iomap, ptr %iomap65, i32 0, i32 2, !dbg !5390
  %17 = load i64, ptr %length66, align 8, !dbg !5390
  %add = add i64 %15, %17, !dbg !5390
  %18 = load ptr, ptr %iter.addr, align 8, !dbg !5390
  %pos67 = getelementptr inbounds %struct.iomap_iter, ptr %18, i32 0, i32 1, !dbg !5390
  %19 = load i64, ptr %pos67, align 8, !dbg !5390
  %cmp68 = icmp ule i64 %add, %19, !dbg !5390
  %lnot70 = xor i1 %cmp68, true, !dbg !5390
  %lnot72 = xor i1 %lnot70, true, !dbg !5390
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !5390
  store i32 %lnot.ext73, ptr %__ret_warn_on62, align 4, !dbg !5390
  %20 = load i32, ptr %__ret_warn_on62, align 4, !dbg !5391
  %tobool74 = icmp ne i32 %20, 0, !dbg !5391
  %lnot75 = xor i1 %tobool74, true, !dbg !5391
  %lnot77 = xor i1 %lnot75, true, !dbg !5391
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5391
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !5391
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !5391
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !5391
  br i1 %tobool81, label %if.then82, label %if.end96, !dbg !5390

if.then82:                                        ; preds = %if.end53
  br label %do.body83, !dbg !5391

do.body83:                                        ; preds = %if.then82
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags84) #12, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %__flags84, metadata !5359, metadata !DIExpression()), !dbg !5392
  store i32 2307, ptr %__flags84, align 4, !dbg !5392
  br label %do.body85, !dbg !5392

do.body85:                                        ; preds = %do.body83
  br label %do.cond86, !dbg !5393

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !5393

do.end87:                                         ; preds = %do.cond86
  br label %do.body88, !dbg !5392

do.body88:                                        ; preds = %do.end87
  %21 = load i32, ptr %__flags84, align 4, !dbg !5395
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 51, i32 %21, i64 12) #12, !dbg !5395, !srcloc !5397
  br label %do.cond89, !dbg !5395

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !5395

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !5392

do.body91:                                        ; preds = %do.end90
  br label %do.cond92, !dbg !5398

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !5398

do.end93:                                         ; preds = %do.cond92
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags84) #12, !dbg !5391
  br label %do.cond94, !dbg !5392

do.cond94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !5392

do.end95:                                         ; preds = %do.cond94
  br label %if.end96, !dbg !5392

if.end96:                                         ; preds = %do.end95, %if.end53
  %22 = load i32, ptr %__ret_warn_on62, align 4, !dbg !5390
  %tobool98 = icmp ne i32 %22, 0, !dbg !5390
  %lnot99 = xor i1 %tobool98, true, !dbg !5390
  %lnot101 = xor i1 %lnot99, true, !dbg !5390
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !5390
  %conv103 = sext i32 %lnot.ext102 to i64, !dbg !5390
  %expval104 = call i64 @llvm.expect.i64(i64 %conv103, i64 0), !dbg !5390
  store i64 %expval104, ptr %tmp97, align 8, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on62) #12, !dbg !5400
  %23 = load i64, ptr %tmp97, align 8, !dbg !5390
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on105) #12, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on105, metadata !5362, metadata !DIExpression()), !dbg !5401
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !5401
  %iomap106 = getelementptr inbounds %struct.iomap_iter, ptr %24, i32 0, i32 5, !dbg !5401
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap106, i32 0, i32 4, !dbg !5401
  %25 = load i16, ptr %flags, align 2, !dbg !5401
  %conv107 = zext i16 %25 to i32, !dbg !5401
  %and = and i32 %conv107, 512, !dbg !5401
  %tobool108 = icmp ne i32 %and, 0, !dbg !5401
  %lnot109 = xor i1 %tobool108, true, !dbg !5401
  %lnot111 = xor i1 %lnot109, true, !dbg !5401
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !5401
  store i32 %lnot.ext112, ptr %__ret_warn_on105, align 4, !dbg !5401
  %26 = load i32, ptr %__ret_warn_on105, align 4, !dbg !5402
  %tobool113 = icmp ne i32 %26, 0, !dbg !5402
  %lnot114 = xor i1 %tobool113, true, !dbg !5402
  %lnot116 = xor i1 %lnot114, true, !dbg !5402
  %lnot.ext117 = zext i1 %lnot116 to i32, !dbg !5402
  %conv118 = sext i32 %lnot.ext117 to i64, !dbg !5402
  %expval119 = call i64 @llvm.expect.i64(i64 %conv118, i64 0), !dbg !5402
  %tobool120 = icmp ne i64 %expval119, 0, !dbg !5402
  br i1 %tobool120, label %if.then121, label %if.end135, !dbg !5401

if.then121:                                       ; preds = %if.end96
  br label %do.body122, !dbg !5402

do.body122:                                       ; preds = %if.then121
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags123) #12, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %__flags123, metadata !5364, metadata !DIExpression()), !dbg !5403
  store i32 2307, ptr %__flags123, align 4, !dbg !5403
  br label %do.body124, !dbg !5403

do.body124:                                       ; preds = %do.body122
  br label %do.cond125, !dbg !5404

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !5404

do.end126:                                        ; preds = %do.cond125
  br label %do.body127, !dbg !5403

do.body127:                                       ; preds = %do.end126
  %27 = load i32, ptr %__flags123, align 4, !dbg !5406
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 52, i32 %27, i64 12) #12, !dbg !5406, !srcloc !5408
  br label %do.cond128, !dbg !5406

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !5406

do.end129:                                        ; preds = %do.cond128
  br label %do.body130, !dbg !5403

do.body130:                                       ; preds = %do.end129
  br label %do.cond131, !dbg !5409

do.cond131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !5409

do.end132:                                        ; preds = %do.cond131
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags123) #12, !dbg !5402
  br label %do.cond133, !dbg !5403

do.cond133:                                       ; preds = %do.end132
  br label %do.end134, !dbg !5403

do.end134:                                        ; preds = %do.cond133
  br label %if.end135, !dbg !5403

if.end135:                                        ; preds = %do.end134, %if.end96
  %28 = load i32, ptr %__ret_warn_on105, align 4, !dbg !5401
  %tobool137 = icmp ne i32 %28, 0, !dbg !5401
  %lnot138 = xor i1 %tobool137, true, !dbg !5401
  %lnot140 = xor i1 %lnot138, true, !dbg !5401
  %lnot.ext141 = zext i1 %lnot140 to i32, !dbg !5401
  %conv142 = sext i32 %lnot.ext141 to i64, !dbg !5401
  %expval143 = call i64 @llvm.expect.i64(i64 %conv142, i64 0), !dbg !5401
  store i64 %expval143, ptr %tmp136, align 8, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on105) #12, !dbg !5411
  %29 = load i64, ptr %tmp136, align 8, !dbg !5401
  %30 = load ptr, ptr %iter.addr, align 8, !dbg !5412
  %inode = getelementptr inbounds %struct.iomap_iter, ptr %30, i32 0, i32 0, !dbg !5413
  %31 = load ptr, ptr %inode, align 8, !dbg !5413
  %32 = load ptr, ptr %iter.addr, align 8, !dbg !5414
  %iomap144 = getelementptr inbounds %struct.iomap_iter, ptr %32, i32 0, i32 5, !dbg !5415
  call void @trace_iomap_iter_dstmap(ptr noundef %31, ptr noundef %iomap144) #13, !dbg !5416
  %33 = load ptr, ptr %iter.addr, align 8, !dbg !5417
  %srcmap = getelementptr inbounds %struct.iomap_iter, ptr %33, i32 0, i32 6, !dbg !5419
  %type = getelementptr inbounds %struct.iomap, ptr %srcmap, i32 0, i32 3, !dbg !5420
  %34 = load i16, ptr %type, align 8, !dbg !5420
  %conv145 = zext i16 %34 to i32, !dbg !5417
  %cmp146 = icmp ne i32 %conv145, 0, !dbg !5421
  br i1 %cmp146, label %if.then148, label %if.end151, !dbg !5422

if.then148:                                       ; preds = %if.end135
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !5423
  %inode149 = getelementptr inbounds %struct.iomap_iter, ptr %35, i32 0, i32 0, !dbg !5424
  %36 = load ptr, ptr %inode149, align 8, !dbg !5424
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !5425
  %srcmap150 = getelementptr inbounds %struct.iomap_iter, ptr %37, i32 0, i32 6, !dbg !5426
  call void @trace_iomap_iter_srcmap(ptr noundef %36, ptr noundef %srcmap150) #13, !dbg !5427
  br label %if.end151, !dbg !5427

if.end151:                                        ; preds = %if.then148, %if.end135
  ret void, !dbg !5428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !5429 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5447
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !5448
  ret i1 %call, !dbg !5449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !5450 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5456
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !5457
  ret i1 %call, !dbg !5458
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !5459 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5462, metadata !DIExpression()), !dbg !5469
  br label %do.body, !dbg !5470

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5463, metadata !DIExpression()), !dbg !5471
  %0 = load i32, ptr %val.addr, align 4, !dbg !5471
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5471
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5471

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5471
  %cmp = icmp eq i32 %2, 1, !dbg !5471
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5471

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5471
  %cmp1 = icmp eq i32 %3, -1, !dbg !5471
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5471

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5471
  br label %cond.end, !dbg !5471

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5471
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5471
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5472
  %cmp2 = icmp eq i32 %5, 1, !dbg !5472
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5471

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5473, !srcloc !5475
  br label %if.end8, !dbg !5472

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5476
  %cmp3 = icmp eq i32 %6, -1, !dbg !5476
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5472

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5477, !srcloc !5479
  br label %if.end, !dbg !5476

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5476

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5465, metadata !DIExpression()), !dbg !5480
  %7 = load i32, ptr %val.addr, align 4, !dbg !5480
  %conv = sext i32 %7 to i64, !dbg !5480
  %and = and i64 %conv, 4294967295, !dbg !5480
  %conv7 = trunc i64 %and to i32, !dbg !5480
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5480
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5480
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5480, !srcloc !5481
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !5476
  br label %do.cond, !dbg !5480

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5480

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !5470
  br label %do.end10, !dbg !5471

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5482
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_iomap_iter(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !5483 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5485, metadata !DIExpression()), !dbg !5487
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5487, !srcloc !5488
  %1 = icmp ult i8 %0, 2, !dbg !5487
  call void @llvm.assume(i1 %1), !dbg !5487
  store i8 %0, ptr %c, align 1, !dbg !5487
  %2 = load i8, ptr %c, align 1, !dbg !5487, !range !5299, !noundef !632
  %tobool = trunc i8 %2 to i1, !dbg !5487
  %frombool = zext i1 %tobool to i8, !dbg !5487
  store i8 %frombool, ptr %tmp, align 1, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !5489
  %3 = load i8, ptr %tmp, align 1, !dbg !5487, !range !5299, !noundef !632
  %tobool1 = trunc i8 %3 to i1, !dbg !5487
  ret i1 %tobool1, !dbg !5490
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !5491 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5496, metadata !DIExpression()), !dbg !5499
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5497, metadata !DIExpression()), !dbg !5500
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5501
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5502, !range !5299, !noundef !632
  %tobool = trunc i8 %1 to i1, !dbg !5502
  %conv = zext i1 %tobool to i32, !dbg !5502
  %or = or i32 2, %conv, !dbg !5503
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !5504, !srcloc !5505

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5506
  br label %return, !dbg !5506

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5498), !dbg !5507
  store i1 true, ptr %retval, align 1, !dbg !5508
  br label %return, !dbg !5508

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5509
  ret i1 %2, !dbg !5509
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !5510 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5514, metadata !DIExpression()), !dbg !5516
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5515, metadata !DIExpression()), !dbg !5517
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5518
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !5518
  %conv = zext i32 %call to i64, !dbg !5518
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5518
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5518
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5518
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !5518
  ret i1 %call1, !dbg !5519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5520 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5528, metadata !DIExpression()), !dbg !5530
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5529, metadata !DIExpression()), !dbg !5531
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5532
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5533
  %div = udiv i64 %1, 64, !dbg !5533
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5534
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !5535
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5536
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5537
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !5538
  ret i1 %call, !dbg !5539
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !5540 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5546
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !5547
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5548
  ret i32 %1, !dbg !5549
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5550 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5558, metadata !DIExpression()), !dbg !5560
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5559, metadata !DIExpression()), !dbg !5561
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5562
  %1 = load i64, ptr %size.addr, align 8, !dbg !5563
  %conv = trunc i64 %1 to i32, !dbg !5563
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !5564
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5565
  %3 = load i64, ptr %size.addr, align 8, !dbg !5565
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !5565
  ret void, !dbg !5566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5567 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5570, metadata !DIExpression()), !dbg !5572
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5571, metadata !DIExpression()), !dbg !5573
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5574
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5575
  br i1 %1, label %cond.true, label %cond.false, !dbg !5575

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5576
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5577
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !5578
  %conv = zext i1 %call to i32, !dbg !5578
  br label %cond.end, !dbg !5575

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5579
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5580
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !5581
  %conv2 = zext i1 %call1 to i32, !dbg !5581
  br label %cond.end, !dbg !5575

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5575
  %tobool = icmp ne i32 %cond, 0, !dbg !5575
  ret i1 %tobool, !dbg !5582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5583 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5588, metadata !DIExpression()), !dbg !5590
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5589, metadata !DIExpression()), !dbg !5591
  ret i1 true, !dbg !5592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5593 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5599, metadata !DIExpression()), !dbg !5602
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5600, metadata !DIExpression()), !dbg !5603
  ret void, !dbg !5604
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5605 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5609, metadata !DIExpression()), !dbg !5611
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5610, metadata !DIExpression()), !dbg !5612
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5613
  %and = and i64 %0, 63, !dbg !5614
  %shl = shl i64 1, %and, !dbg !5615
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5616
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5617
  %shr = ashr i64 %2, 6, !dbg !5618
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5616
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5616
  %and1 = and i64 %shl, %3, !dbg !5619
  %cmp = icmp ne i64 %and1, 0, !dbg !5620
  ret i1 %cmp, !dbg !5621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5622 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5624, metadata !DIExpression()), !dbg !5627
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5625, metadata !DIExpression()), !dbg !5628
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5626, metadata !DIExpression()), !dbg !5630
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5631
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5632
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !5633, !srcloc !5634
  %3 = icmp ult i8 %2, 2, !dbg !5633
  call void @llvm.assume(i1 %3), !dbg !5633
  store i8 %2, ptr %oldbit, align 1, !dbg !5633
  %4 = load i8, ptr %oldbit, align 1, !dbg !5635, !range !5299, !noundef !632
  %tobool = trunc i8 %4 to i1, !dbg !5635
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !5636
  ret i1 %tobool, !dbg !5637
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !5638 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5642, metadata !DIExpression()), !dbg !5644
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5643, metadata !DIExpression()), !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_iomap_iter_dstmap(ptr noundef %inode, ptr noundef %iomap) #3 align 16 !dbg !4988 {
entry:
  %inode.addr = alloca ptr, align 8
  %iomap.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu395 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4993, metadata !DIExpression()), !dbg !5647
  store ptr %iomap, ptr %iomap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iomap.addr, metadata !4994, metadata !DIExpression()), !dbg !5647
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_dstmap, i32 0, i32 1)) #13, !dbg !5648
  br i1 %call, label %if.then, label %if.end68, !dbg !5647

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5648

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4995, metadata !DIExpression()), !dbg !5649
  store i32 0, ptr %__idx, align 4, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4998, metadata !DIExpression()), !dbg !5650
  br label %do.body1, !dbg !5650

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5001, metadata !DIExpression()), !dbg !5651
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5651
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5650
  br label %do.cond, !dbg !5651

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5651

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5003, metadata !DIExpression()), !dbg !5652
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !5652, !srcloc !5653
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5652
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5652
  %conv = zext i32 %2 to i64, !dbg !5652
  %conv2 = trunc i64 %conv to i32, !dbg !5652
  store i32 %conv2, ptr %tmp, align 4, !dbg !5652
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !5650
  %3 = load i32, ptr %tmp, align 4, !dbg !5652
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5650
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5650
  store i32 %4, ptr %tmp3, align 4, !dbg !5650
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5654
  %5 = load i32, ptr %tmp3, align 4, !dbg !5650
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !5654
  br i1 %call4, label %if.end, label %if.then5, !dbg !5649

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5654

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5005, metadata !DIExpression()), !dbg !5655
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5655
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5656
  %tobool = icmp ne i32 %6, 0, !dbg !5656
  %lnot = xor i1 %tobool, true, !dbg !5656
  %lnot6 = xor i1 %lnot, true, !dbg !5656
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5656
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5656
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5656
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5656
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5655

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5656

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5008, metadata !DIExpression()), !dbg !5657
  store i32 2307, ptr %__flags, align 4, !dbg !5657
  br label %do.body11, !dbg !5657

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5658

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5658

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5657

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5660
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 155, i32 %7, i64 12) #12, !dbg !5660, !srcloc !5662
  br label %do.cond15, !dbg !5660

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5660

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5657

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5663

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5663

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5656
  br label %do.cond20, !dbg !5657

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5657

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5657

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5655
  %tobool24 = icmp ne i32 %8, 0, !dbg !5655
  %lnot25 = xor i1 %tobool24, true, !dbg !5655
  %lnot27 = xor i1 %lnot25, true, !dbg !5655
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5655
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5655
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5655
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5665
  %9 = load i64, ptr %tmp23, align 8, !dbg !5655
  %tobool31 = icmp ne i64 %9, 0, !dbg !5665
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5649

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5665

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5649

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5666
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5666, !srcloc !5668
  br label %do.cond35, !dbg !5666

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5666

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5649

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5011, metadata !DIExpression()), !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !5669
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5013, metadata !DIExpression()), !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu395) #12, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu395, metadata !5014, metadata !DIExpression()), !dbg !5670
  br label %do.body38, !dbg !5671

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5673

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5673

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_dstmap, i32 0, i32 8), align 8, !dbg !5671
  store ptr %10, ptr %tmp41, align 8, !dbg !5673
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5671
  store ptr %11, ptr %__UNIQUE_ID_rcu395, align 8, !dbg !5670
  %12 = load ptr, ptr %__UNIQUE_ID_rcu395, align 8, !dbg !5670
  store ptr %12, ptr %tmp42, align 8, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu395) #12, !dbg !5669
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5670
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5669
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5675
  %tobool43 = icmp ne ptr %14, null, !dbg !5675
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5669

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5677
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5677
  %16 = load ptr, ptr %data, align 8, !dbg !5677
  store ptr %16, ptr %__data, align 8, !dbg !5677
  store ptr @__SCT__tp_func_iomap_iter_dstmap, ptr %tmp45, align 8, !dbg !5679
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5679
  %18 = load ptr, ptr %__data, align 8, !dbg !5677
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !5677
  %20 = load ptr, ptr %iomap.addr, align 8, !dbg !5677
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20) #13, !dbg !5677
  br label %if.end47, !dbg !5677

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5649
  br label %do.cond48, !dbg !5669

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5669

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5649

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5681, !srcloc !5683
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5684
  %lnot52 = xor i1 %call51, true, !dbg !5684
  %lnot54 = xor i1 %lnot52, true, !dbg !5684
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5684
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5684
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5684
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5684
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5681

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5684

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5072), !dbg !5686
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !5686, !srcloc !5688
  call void @llvm.write_register.i64(metadata !5072, i64 %22), !dbg !5686
  br label %do.cond61, !dbg !5686

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5686

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5686

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5681

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5681

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5648
  br label %cleanup, !dbg !5648

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !5648
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5649

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5649

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5647

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_iomap_iter_srcmap(ptr noundef %inode, ptr noundef %iomap) #3 align 16 !dbg !5020 {
entry:
  %inode.addr = alloca ptr, align 8
  %iomap.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu403 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5022, metadata !DIExpression()), !dbg !5689
  store ptr %iomap, ptr %iomap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iomap.addr, metadata !5023, metadata !DIExpression()), !dbg !5689
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_srcmap, i32 0, i32 1)) #13, !dbg !5690
  br i1 %call, label %if.then, label %if.end68, !dbg !5689

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5690

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !5024, metadata !DIExpression()), !dbg !5691
  store i32 0, ptr %__idx, align 4, !dbg !5691
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5027, metadata !DIExpression()), !dbg !5692
  br label %do.body1, !dbg !5692

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5030, metadata !DIExpression()), !dbg !5693
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5693
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5692
  br label %do.cond, !dbg !5693

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5693

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !5694
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5032, metadata !DIExpression()), !dbg !5694
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !5694, !srcloc !5695
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5694
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5694
  %conv = zext i32 %2 to i64, !dbg !5694
  %conv2 = trunc i64 %conv to i32, !dbg !5694
  store i32 %conv2, ptr %tmp, align 4, !dbg !5694
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !5692
  %3 = load i32, ptr %tmp, align 4, !dbg !5694
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5692
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5692
  store i32 %4, ptr %tmp3, align 4, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !5696
  %5 = load i32, ptr %tmp3, align 4, !dbg !5692
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !5696
  br i1 %call4, label %if.end, label %if.then5, !dbg !5691

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5696

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5034, metadata !DIExpression()), !dbg !5697
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5697
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5698
  %tobool = icmp ne i32 %6, 0, !dbg !5698
  %lnot = xor i1 %tobool, true, !dbg !5698
  %lnot6 = xor i1 %lnot, true, !dbg !5698
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5698
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5698
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5698
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5698
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5697

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5698

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5037, metadata !DIExpression()), !dbg !5699
  store i32 2307, ptr %__flags, align 4, !dbg !5699
  br label %do.body11, !dbg !5699

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5700

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5700

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5699

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5702
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 156, i32 %7, i64 12) #12, !dbg !5702, !srcloc !5704
  br label %do.cond15, !dbg !5702

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5702

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5699

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5705

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5705

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !5698
  br label %do.cond20, !dbg !5699

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5699

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5699

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5697
  %tobool24 = icmp ne i32 %8, 0, !dbg !5697
  %lnot25 = xor i1 %tobool24, true, !dbg !5697
  %lnot27 = xor i1 %lnot25, true, !dbg !5697
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5697
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5697
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5697
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5698
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !5707
  %9 = load i64, ptr %tmp23, align 8, !dbg !5697
  %tobool31 = icmp ne i64 %9, 0, !dbg !5707
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5691

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5707

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5691

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !5708
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5708, !srcloc !5710
  br label %do.cond35, !dbg !5708

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5708

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5691

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !5040, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !5042, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu403) #12, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu403, metadata !5043, metadata !DIExpression()), !dbg !5712
  br label %do.body38, !dbg !5713

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5715

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5715

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_srcmap, i32 0, i32 8), align 8, !dbg !5713
  store ptr %10, ptr %tmp41, align 8, !dbg !5715
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5713
  store ptr %11, ptr %__UNIQUE_ID_rcu403, align 8, !dbg !5712
  %12 = load ptr, ptr %__UNIQUE_ID_rcu403, align 8, !dbg !5712
  store ptr %12, ptr %tmp42, align 8, !dbg !5712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu403) #12, !dbg !5711
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5712
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5711
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5717
  %tobool43 = icmp ne ptr %14, null, !dbg !5717
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5711

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5719
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5719
  %16 = load ptr, ptr %data, align 8, !dbg !5719
  store ptr %16, ptr %__data, align 8, !dbg !5719
  store ptr @__SCT__tp_func_iomap_iter_srcmap, ptr %tmp45, align 8, !dbg !5721
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5721
  %18 = load ptr, ptr %__data, align 8, !dbg !5719
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !5719
  %20 = load ptr, ptr %iomap.addr, align 8, !dbg !5719
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20) #13, !dbg !5719
  br label %if.end47, !dbg !5719

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !5691
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !5691
  br label %do.cond48, !dbg !5711

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5711

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5691

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5723, !srcloc !5725
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !5726
  %lnot52 = xor i1 %call51, true, !dbg !5726
  %lnot54 = xor i1 %lnot52, true, !dbg !5726
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5726
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5726
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5726
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5726
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5723

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5726

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !5072), !dbg !5728
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !5728, !srcloc !5730
  call void @llvm.write_register.i64(metadata !5072, i64 %22), !dbg !5728
  br label %do.cond61, !dbg !5728

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5728

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5728

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5723

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5723

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5690
  br label %cleanup, !dbg !5690

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !5690
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5691

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5691

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5689

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_iomap_iter_dstmap(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_iomap_iter_srcmap(ptr noundef, ptr noundef, ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }

!llvm.dbg.cu = !{!4961}
!llvm.named.register.rsp = !{!5072}
!llvm.module.flags = !{!5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080}
!llvm.ident = !{!5081}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/iomap/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0b8092c51b44e03194a7ac359d065a8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter421", scope: !9, file: !2, line: 159, type: !258, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "trace_iomap_iter", scope: !2, file: !2, line: 159, type: !10, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5047)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !1286, !233}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iomap_iter", file: !14, line: 215, size: 1664, elements: !15)
!14 = !DIFile(filename: "./include/linux/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e82e49fa49df0c51664258f1045807c")
!15 = !{!16, !4921, !4922, !4923, !4924, !4925, !4959, !4960}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !13, file: !14, line: 216, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !25, !26, !36, !42, !49, !50, !53, !54, !4859, !4860, !4861, !4862, !4863, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4903, !4906, !4907, !4908, !4917, !4918, !4919, !4920}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !18, file: !19, line: 642, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !23, line: 24, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !18, file: !19, line: 643, baseType: !24, size: 16, offset: 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !18, file: !19, line: 644, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !28, line: 23, baseType: !29)
!28 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 21, size: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !29, file: !28, line: 22, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !23, line: 37, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !34, line: 49, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !18, file: !19, line: 645, baseType: !37, size: 128, offset: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !23, line: 190, size: 128, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !23, line: 191, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !37, file: !23, line: 191, baseType: !40, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !18, file: !19, line: 646, baseType: !43, size: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !28, line: 28, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 26, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !44, file: !28, line: 27, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !23, line: 38, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !34, line: 50, baseType: !35)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !18, file: !19, line: 647, baseType: !35, size: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !18, file: !19, line: 650, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !18, file: !19, line: 651, baseType: !51, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !18, file: !19, line: 654, baseType: !55, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !58)
!58 = !{!59, !4693, !4703, !4707, !4711, !4715, !4719, !4723, !4727, !4731, !4735, !4736, !4740, !4744, !4781, !4810, !4814, !4820, !4824, !4828, !4832, !4836, !4840, !4846, !4850}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !57, file: !19, line: 1967, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !17, !63, !35}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !65, line: 82, size: 1536, elements: !66)
!65 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!66 = !{!67, !68, !78, !86, !87, !110, !111, !115, !167, !4676, !4677, !4678, !4679, !4685, !4686, !4687}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !64, file: !65, line: 84, baseType: !35, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !64, file: !65, line: 85, baseType: !69, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !70, line: 275, baseType: !71)
!70 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !70, line: 275, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !71, file: !70, line: 275, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !70, line: 69, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !70, line: 64, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !75, file: !70, line: 65, baseType: !35, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !64, file: !65, line: 86, baseType: !79, size: 128, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !80, line: 38, size: 128, elements: !81)
!80 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !80, line: 39, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !79, file: !80, line: 39, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !64, file: !65, line: 87, baseType: !63, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !64, file: !65, line: 88, baseType: !88, size: 128, offset: 256)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !65, line: 49, size: 128, elements: !89)
!89 = !{!90, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !65, line: 50, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !65, line: 50, size: 64, elements: !92)
!92 = !{!93, !102}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !65, line: 51, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !65, line: 51, size: 64, elements: !95)
!95 = !{!96, !101}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !94, file: !65, line: 52, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !98, line: 21, baseType: !99)
!98 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !100, line: 27, baseType: !35)
!100 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !94, file: !65, line: 52, baseType: !97, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !91, file: !65, line: 54, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !98, line: 23, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !100, line: 31, baseType: !105)
!105 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !65, line: 56, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !64, file: !65, line: 89, baseType: !17, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !64, file: !65, line: 91, baseType: !112, size: 256, offset: 448)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !64, file: !65, line: 94, baseType: !116, size: 64, offset: 704)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !117, line: 25, size: 64, elements: !118)
!117 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 26, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 26, size: 64, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !120, file: !117, line: 28, baseType: !104, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !117, line: 30, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !117, line: 30, size: 64, elements: !125)
!125 = !{!126, !166}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !124, file: !117, line: 31, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !128, line: 29, baseType: !129)
!128 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !128, line: 17, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !128, line: 18, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !128, line: 18, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !132, file: !128, line: 19, baseType: !135, size: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !136, line: 14, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !135, file: !136, line: 15, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !140, line: 44, baseType: !141)
!140 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !140, line: 14, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 15, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 15, size: 32, elements: !145)
!145 = !{!146, !152, !159}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !140, line: 16, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !23, line: 174, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 172, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !148, file: !23, line: 173, baseType: !151, size: 32)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !140, line: 24, baseType: !153, size: 16)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !140, line: 24, size: 16, elements: !154)
!154 = !{!155, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !153, file: !140, line: 25, baseType: !156, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !98, line: 17, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !100, line: 21, baseType: !109)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !153, file: !140, line: 26, baseType: !156, size: 8, offset: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !140, line: 28, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !140, line: 28, size: 32, elements: !161)
!161 = !{!162, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !160, file: !140, line: 29, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !98, line: 19, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !100, line: 24, baseType: !24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !160, file: !140, line: 30, baseType: !163, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !117, line: 32, baseType: !151, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !64, file: !65, line: 95, baseType: !168, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !65, line: 128, size: 1024, align: 512, elements: !171)
!171 = !{!172, !176, !177, !184, !192, !196, !200, !204, !205, !209, !214, !4666, !4670}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !170, file: !65, line: 129, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!151, !63, !35}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !170, file: !65, line: 130, baseType: !173, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !170, file: !65, line: 131, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!151, !181, !183}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !170, file: !65, line: 132, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!151, !181, !35, !188, !190}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !170, file: !65, line: 134, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!151, !181}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !170, file: !65, line: 135, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!151, !63}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !170, file: !65, line: 136, baseType: !201, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !63}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !170, file: !65, line: 137, baseType: !201, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !170, file: !65, line: 138, baseType: !206, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !63, !17}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !170, file: !65, line: 139, baseType: !210, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !63, !213, !151}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !170, file: !65, line: 140, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !4665}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !220, line: 70, size: 256, elements: !221)
!220 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!221 = !{!222, !223, !4661, !4662}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !219, file: !220, line: 71, baseType: !63, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !219, file: !220, line: 72, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !226)
!226 = !{!227, !228, !231, !232, !234, !238, !2217, !2359, !2399, !2484, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2501, !2505, !2506, !3398, !3404, !3405, !3408, !3409, !3410, !3451, !4595, !4596, !4597, !4598, !4599, !4600, !4603, !4604, !4611, !4612, !4613, !4614, !4615, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !225, file: !19, line: 1191, baseType: !37, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !225, file: !19, line: 1192, baseType: !229, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !23, line: 21, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !23, line: 18, baseType: !97)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !225, file: !19, line: 1193, baseType: !109, size: 8, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !225, file: !19, line: 1194, baseType: !233, size: 64, offset: 192)
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !225, file: !19, line: 1195, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !23, line: 52, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !34, line: 88, baseType: !237)
!237 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !225, file: !19, line: 1196, baseType: !239, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !241)
!241 = !{!242, !243, !244, !250, !254, !259, !263, !2205, !2206, !2207, !2209, !2210, !2211, !2213, !2214, !2215, !2216}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !19, line: 2367, baseType: !188, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !240, file: !19, line: 2368, baseType: !151, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !240, file: !19, line: 2376, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!151, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !220, line: 21, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !240, file: !19, line: 2377, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !240, file: !19, line: 2378, baseType: !255, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!63, !239, !151, !188, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !240, file: !19, line: 2380, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !224}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !240, file: !19, line: 2381, baseType: !264, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !266, line: 402, size: 9216, align: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!267 = !{!268, !275, !276, !280, !1856, !1882, !1883, !1884, !1885, !1889, !1892, !1893, !1894, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1962, !1966, !1986, !2004, !2005, !2006, !2007, !2016, !2039, !2040, !2043, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2057, !2058, !2158, !2166, !2167, !2168, !2170, !2174, !2175, !2184, !2185, !2186, !2187, !2189, !2190, !2191, !2198, !2199, !2200, !2204}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !266, line: 403, baseType: !269, size: 32)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !266, line: 312, baseType: !35, size: 32, elements: !270)
!270 = !{!271, !272, !273, !274}
!271 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!272 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!273 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!274 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !265, file: !266, line: 406, baseType: !37, size: 128, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 409, baseType: !277, size: 448, offset: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 56)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !265, file: !266, line: 417, baseType: !281, size: 768, offset: 640)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !266, line: 45, size: 768, elements: !282)
!282 = !{!283, !1849, !1850, !1851, !1854}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !281, file: !266, line: 46, baseType: !284, size: 512)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !285, line: 64, size: 512, elements: !286)
!285 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!286 = !{!287, !288, !289, !291, !337, !1735, !1839, !1844, !1845, !1846, !1847, !1848}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !285, line: 65, baseType: !188, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !284, file: !285, line: 66, baseType: !37, size: 128, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !285, line: 67, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !284, file: !285, line: 68, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !285, line: 168, size: 768, elements: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !293, file: !285, line: 169, baseType: !37, size: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !293, file: !285, line: 170, baseType: !127, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !293, file: !285, line: 171, baseType: !284, size: 512, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !293, file: !285, line: 172, baseType: !299, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !285, line: 133, size: 192, elements: !302)
!302 = !{!303, !310, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !301, file: !285, line: 134, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!151, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !285, line: 135, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!188, !308}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !301, file: !285, line: 136, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!151, !308, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !285, line: 125, size: 20736, elements: !322)
!322 = !{!323, !327, !331, !332, !336}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !321, file: !285, line: 126, baseType: !324, size: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 192, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 3)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !321, file: !285, line: 127, baseType: !328, size: 4096, offset: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4096, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !321, file: !285, line: 128, baseType: !151, size: 32, offset: 4288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !321, file: !285, line: 129, baseType: !333, size: 16384, offset: 4320)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 2048)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !321, file: !285, line: 130, baseType: !151, size: 32, offset: 20704)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !284, file: !285, line: 69, baseType: !338, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !285, line: 116, size: 384, elements: !341)
!341 = !{!342, !346, !372, !1688, !1725, !1729}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !340, file: !285, line: 117, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !290}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !340, file: !285, line: 118, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !350, line: 254, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!351 = !{!352, !365}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !349, file: !350, line: 255, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !290, !360, !213}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !23, line: 66, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !34, line: 73, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !34, line: 15, baseType: !359)
!359 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !350, line: 30, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !350, line: 31, baseType: !188, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !361, file: !350, line: 32, baseType: !22, size: 16, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !349, file: !350, line: 256, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!356, !290, !360, !188, !369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !34, line: 72, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !34, line: 16, baseType: !233)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !340, file: !285, line: 119, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !350, line: 84, size: 320, elements: !377)
!377 = !{!378, !379, !383, !1684, !1686}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !350, line: 85, baseType: !188, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !376, file: !350, line: 86, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!22, !290, !360, !151}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !376, file: !350, line: 88, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!22, !290, !387, !151}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !350, line: 175, size: 512, elements: !389)
!389 = !{!390, !391, !392, !393, !1675, !1679, !1680}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !388, file: !350, line: 176, baseType: !361, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !388, file: !350, line: 177, baseType: !369, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !388, file: !350, line: 178, baseType: !258, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !388, file: !350, line: 179, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !399)
!399 = !{!400, !401, !409, !431, !432, !433, !448, !449, !450, !1669, !1670, !1671, !1672, !1673, !1674}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !398, file: !19, line: 473, baseType: !17, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !398, file: !19, line: 474, baseType: !402, size: 128, offset: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !403, line: 296, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!404 = !{!405, !406, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !402, file: !403, line: 297, baseType: !127, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !402, file: !403, line: 299, baseType: !407, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !35)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !402, file: !403, line: 300, baseType: !258, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !398, file: !19, line: 475, baseType: !410, size: 320, offset: 192)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !411, line: 48, size: 320, elements: !412)
!411 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!412 = !{!413, !422, !423, !428, !430}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !411, line: 49, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !415, line: 13, baseType: !416)
!415 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !23, line: 181, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 179, size: 64, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !417, file: !23, line: 180, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !98, line: 22, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !100, line: 30, baseType: !237)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !410, file: !411, line: 55, baseType: !414, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !410, file: !411, line: 57, baseType: !424, size: 32, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !425, line: 15, size: 32, elements: !426)
!425 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !425, line: 20, baseType: !147, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !410, file: !411, line: 59, baseType: !429, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !136, line: 23, baseType: !135)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !410, file: !411, line: 60, baseType: !37, size: 128, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !398, file: !19, line: 476, baseType: !407, size: 32, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !398, file: !19, line: 477, baseType: !147, size: 32, offset: 544)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !398, file: !19, line: 482, baseType: !434, size: 128, offset: 576)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !435, line: 26, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!436 = !{!437, !447}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !434, file: !435, line: 27, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !435, line: 12, size: 64, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !438, file: !435, line: 13, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !435, line: 5, size: 192, align: 64, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !442, file: !435, line: 6, baseType: !233, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !442, file: !435, line: 7, baseType: !441, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !442, file: !435, line: 8, baseType: !441, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !434, file: !435, line: 28, baseType: !441, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !398, file: !19, line: 483, baseType: !233, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !398, file: !19, line: 484, baseType: !233, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !398, file: !19, line: 485, baseType: !451, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !454)
!454 = !{!455, !1518, !1588, !1592, !1596, !1602, !1607, !1611, !1616, !1620, !1624, !1628, !1629, !1640, !1644, !1648, !1653, !1657, !1664, !1665}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !453, file: !19, line: 405, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!151, !459, !1516}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !461, line: 74, size: 512, align: 128, elements: !462)
!461 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!462 = !{!463, !464, !1510, !1515}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !461, line: 75, baseType: !233, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 83, baseType: !465, size: 320, offset: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 83, size: 320, elements: !466)
!466 = !{!467, !488, !502, !506, !1509}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !461, line: 84, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !461, line: 84, size: 320, elements: !469)
!469 = !{!470, !481, !482, !487}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !461, line: 90, baseType: !471, size: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !461, line: 90, size: 128, elements: !472)
!472 = !{!473, !474, !479, !480}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !471, file: !461, line: 91, baseType: !37, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !461, line: 94, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !461, line: 94, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !475, file: !461, line: 96, baseType: !258, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !475, file: !461, line: 98, baseType: !35, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !471, file: !461, line: 102, baseType: !37, size: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !471, file: !461, line: 103, baseType: !37, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !468, file: !461, line: 106, baseType: !397, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !461, line: 107, baseType: !483, size: 64, offset: 192)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !461, line: 107, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !483, file: !461, line: 108, baseType: !233, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !483, file: !461, line: 109, baseType: !233, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !468, file: !461, line: 117, baseType: !233, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !461, line: 119, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !461, line: 119, size: 320, elements: !490)
!490 = !{!491, !492, !495, !496, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !489, file: !461, line: 124, baseType: !233, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !489, file: !461, line: 125, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !461, line: 125, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !489, file: !461, line: 126, baseType: !233, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !489, file: !461, line: 127, baseType: !233, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !461, line: 128, baseType: !498, size: 64, offset: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !461, line: 128, size: 64, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !498, file: !461, line: 133, baseType: !233, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !498, file: !461, line: 138, baseType: !414, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !461, line: 141, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !461, line: 141, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !503, file: !461, line: 142, baseType: !233, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !461, line: 144, baseType: !507, size: 128)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !461, line: 144, size: 128, elements: !508)
!508 = !{!509, !1508}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !507, file: !461, line: 146, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !512, line: 126, size: 1216, elements: !513)
!512 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!513 = !{!514, !524, !555, !566, !574, !575, !576, !1490, !1491, !1492}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !511, file: !512, line: 127, baseType: !515, size: 384)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !512, line: 21, size: 384, elements: !516)
!516 = !{!517, !518, !520, !521, !522, !523}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !515, file: !512, line: 22, baseType: !233, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !515, file: !512, line: 23, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !515, file: !512, line: 24, baseType: !519, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !515, file: !512, line: 25, baseType: !233, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !515, file: !512, line: 26, baseType: !233, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !515, file: !512, line: 27, baseType: !233, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !511, file: !512, line: 128, baseType: !525, size: 128, offset: 384)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !526, line: 105, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !525, file: !526, line: 110, baseType: !233, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !525, file: !526, line: 118, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !526, line: 95, size: 448, elements: !532)
!532 = !{!533, !534, !540, !541, !544, !545, !554}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !531, file: !526, line: 96, baseType: !414, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !531, file: !526, line: 97, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !526, line: 60, baseType: !537)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !531, file: !526, line: 98, baseType: !535, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !531, file: !526, line: 99, baseType: !542, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !543)
!543 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !531, file: !526, line: 100, baseType: !542, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !531, file: !526, line: 101, baseType: !546, size: 128, align: 64, offset: 256)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !23, line: 232, size: 128, align: 64, elements: !547)
!547 = !{!548, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !23, line: 233, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !546, file: !23, line: 234, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !549}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !531, file: !526, line: 102, baseType: !539, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !511, file: !512, line: 129, baseType: !556, size: 256, offset: 512)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !557, line: 26, size: 256, elements: !558)
!557 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !556, file: !557, line: 27, baseType: !35, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !556, file: !557, line: 28, baseType: !561, size: 192, offset: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !562, line: 43, size: 192, elements: !563)
!562 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !561, file: !562, line: 44, baseType: !429, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !561, file: !562, line: 45, baseType: !37, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !512, line: 130, baseType: !567, size: 32, offset: 768)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !512, line: 68, baseType: !35, size: 32, elements: !568)
!568 = !{!569, !570, !571, !572, !573}
!569 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!570 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!571 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!572 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!573 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !512, line: 131, baseType: !35, size: 32, offset: 800)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !511, file: !512, line: 132, baseType: !233, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !511, file: !512, line: 133, baseType: !577, size: 64, offset: 896)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !512, line: 77, size: 192, elements: !580)
!580 = !{!581, !585, !1486}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !579, file: !512, line: 83, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !459}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !579, file: !512, line: 89, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !461, line: 1184, baseType: !35)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !592, line: 512, size: 896, elements: !593)
!592 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!593 = !{!594, !1438, !1454, !1461, !1468, !1478, !1479, !1480, !1482, !1484}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !592, line: 513, baseType: !595, size: 320)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !591, file: !592, line: 513, size: 320, elements: !596)
!596 = !{!597, !1434, !1435, !1436, !1437}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !595, file: !592, line: 514, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !461, line: 625, size: 1344, elements: !600)
!600 = !{!601, !610, !1339, !1345, !1352, !1353, !1358, !1359, !1364, !1365, !1368, !1427, !1428, !1429, !1430, !1431, !1432}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !461, line: 628, baseType: !602, size: 128)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !461, line: 628, size: 128, elements: !603)
!603 = !{!604, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !461, line: 629, baseType: !605, size: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !461, line: 629, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !605, file: !461, line: 631, baseType: !233, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !605, file: !461, line: 632, baseType: !233, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !602, file: !461, line: 635, baseType: !546, size: 128, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !599, file: !461, line: 639, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !461, line: 733, size: 10240, elements: !613)
!613 = !{!614, !1337}
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !461, line: 734, baseType: !615, size: 10240)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !461, line: 734, size: 10240, elements: !616)
!616 = !{!617, !621, !635, !1198, !1199, !1200, !1201, !1202, !1203, !1212, !1213, !1214, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1253, !1255, !1258, !1305, !1306, !1307, !1310, !1311, !1312, !1315, !1316, !1317, !1324, !1325}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !461, line: 739, baseType: !618, size: 512, align: 512)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !461, line: 739, size: 512, align: 512, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !618, file: !461, line: 747, baseType: !147, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !615, file: !461, line: 750, baseType: !622, size: 128, offset: 512)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !623, line: 218, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!624 = !{!625, !633, !634}
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 219, baseType: !626, size: 32)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 219, size: 32, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !626, file: !623, line: 220, baseType: !127, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !626, file: !623, line: 221, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !623, line: 197, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 197, elements: !632)
!632 = !{}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !622, file: !623, line: 223, baseType: !35, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !622, file: !623, line: 224, baseType: !258, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !615, file: !461, line: 752, baseType: !636, size: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!233, !639, !233, !233, !233, !233}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !641)
!641 = !{!642, !653, !654, !656, !657, !665, !666, !667, !747, !942, !951, !957, !958, !1188, !1189, !1190, !1191, !1193, !1194, !1197}
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !19, line: 995, baseType: !643, size: 128)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !19, line: 995, size: 128, elements: !644)
!644 = !{!645, !651, !652}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !643, file: !19, line: 996, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !647, line: 60, size: 64, elements: !648)
!647 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !647, line: 61, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !643, file: !19, line: 997, baseType: !546, size: 128, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !643, file: !19, line: 998, baseType: !35, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !640, file: !19, line: 1005, baseType: !127, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !640, file: !19, line: 1006, baseType: !655, size: 32, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !23, line: 156, baseType: !35)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !640, file: !19, line: 1007, baseType: !414, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !640, file: !19, line: 1008, baseType: !658, size: 256, offset: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !659, line: 66, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!660 = !{!661, !662, !663, !664}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !659, line: 67, baseType: !414, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !658, file: !659, line: 68, baseType: !429, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !658, file: !659, line: 70, baseType: !424, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !658, file: !659, line: 72, baseType: !37, size: 128, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !640, file: !19, line: 1009, baseType: !235, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !640, file: !19, line: 1010, baseType: !35, size: 32, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !640, file: !19, line: 1011, baseType: !668, size: 256, offset: 640)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !669)
!669 = !{!670, !691, !736, !744, !745, !746}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !19, line: 949, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !672, line: 34, baseType: !673)
!672 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 25, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !673, file: !672, line: 26, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !677, line: 27, baseType: !678)
!677 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !677, line: 13, size: 64, elements: !679)
!679 = !{!680, !690}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !677, line: 14, baseType: !681, size: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !677, line: 14, size: 32, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !681, file: !677, line: 15, baseType: !147, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !677, line: 16, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !677, line: 16, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !685, file: !677, line: 18, baseType: !156, size: 8)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !685, file: !677, line: 19, baseType: !689, size: 24, offset: 8)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 24, elements: !325)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !677, line: 26, baseType: !139, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !668, file: !19, line: 950, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !694, line: 59, size: 768, elements: !695)
!694 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!695 = !{!696, !702, !703, !704, !717, !718, !725, !726}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !694, line: 61, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !698, line: 113, baseType: !699)
!698 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !698, line: 111, size: 32, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !699, file: !698, line: 112, baseType: !147, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !693, file: !694, line: 62, baseType: !35, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !694, line: 63, baseType: !127, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !693, file: !694, line: 65, baseType: !705, size: 256, offset: 128)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 256, elements: !715)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !23, line: 194, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !23, line: 195, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !23, line: 198, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !23, line: 199, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !710, file: !23, line: 199, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!715 = !{!716}
!716 = !DISubrange(count: 4)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !693, file: !694, line: 66, baseType: !706, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !693, file: !694, line: 68, baseType: !719, size: 192, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !720, line: 41, baseType: !721)
!720 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !720, line: 37, size: 192, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !720, line: 38, baseType: !127, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !721, file: !720, line: 39, baseType: !37, size: 128, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !694, line: 69, baseType: !546, size: 128, align: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !693, file: !694, line: 70, baseType: !727, offset: 768)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, elements: !734)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !694, line: 54, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !728, file: !694, line: 55, baseType: !151, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !728, file: !694, line: 56, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !694, line: 56, flags: DIFlagFwdDecl)
!734 = !{!735}
!735 = !DISubrange(count: -1)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !668, file: !19, line: 951, baseType: !737, size: 32, offset: 128)
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !694, line: 9, baseType: !35, size: 32, elements: !738)
!738 = !{!739, !740, !741, !742, !743}
!739 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!740 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!741 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!742 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!743 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !668, file: !19, line: 952, baseType: !27, size: 32, offset: 160)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !668, file: !19, line: 952, baseType: !27, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !668, file: !19, line: 953, baseType: !151, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !640, file: !19, line: 1012, baseType: !748, size: 64, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !751, line: 110, size: 1472, elements: !752)
!751 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !769, !770, !771, !772, !773, !774, !887, !888, !889, !890, !891, !922, !925, !929, !937}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !750, file: !751, line: 111, baseType: !414, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !750, file: !751, line: 112, baseType: !27, size: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !750, file: !751, line: 113, baseType: !43, size: 32, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !750, file: !751, line: 114, baseType: !27, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !750, file: !751, line: 115, baseType: !43, size: 32, offset: 160)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !750, file: !751, line: 116, baseType: !27, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !750, file: !751, line: 117, baseType: !43, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !750, file: !751, line: 118, baseType: !27, size: 32, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !750, file: !751, line: 119, baseType: !43, size: 32, offset: 288)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !750, file: !751, line: 120, baseType: !35, size: 32, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !750, file: !751, line: 121, baseType: !764, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !765, line: 24, baseType: !766)
!765 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !765, line: 24, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !766, file: !765, line: 24, baseType: !103, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !750, file: !751, line: 122, baseType: !764, size: 64, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !750, file: !751, line: 123, baseType: !764, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !750, file: !751, line: 124, baseType: !764, size: 64, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !750, file: !751, line: 125, baseType: !764, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !750, file: !751, line: 127, baseType: !109, size: 8, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !750, file: !751, line: 129, baseType: !775, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !777, line: 195, size: 1728, elements: !778)
!777 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!778 = !{!779, !780, !785, !790, !791, !794, !795, !802, !803, !804, !805, !808, !809, !810, !812, !813, !851, !872}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !776, file: !777, line: 196, baseType: !697, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !776, file: !777, line: 197, baseType: !781, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !777, line: 28, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !23, line: 104, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !98, line: 20, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !100, line: 26, baseType: !151)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 198, baseType: !786, size: 192, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 198, size: 192, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !786, file: !777, line: 199, baseType: !37, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !786, file: !777, line: 200, baseType: !442, size: 192, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !776, file: !777, line: 205, baseType: !410, size: 320, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !776, file: !777, line: 206, baseType: !792, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !777, line: 206, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !776, file: !777, line: 207, baseType: !258, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 208, baseType: !796, size: 64, offset: 704)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 208, size: 64, elements: !797)
!797 = !{!798, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !796, file: !777, line: 209, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !800, line: 8, baseType: !421)
!800 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!801 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !796, file: !777, line: 210, baseType: !799, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !776, file: !777, line: 212, baseType: !799, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !777, line: 213, baseType: !27, size: 32, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !776, file: !777, line: 214, baseType: !43, size: 32, offset: 864)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !776, file: !777, line: 215, baseType: !806, size: 32, offset: 896)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !777, line: 31, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 110, baseType: !97)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !776, file: !777, line: 216, baseType: !24, size: 16, offset: 928)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !776, file: !777, line: 217, baseType: !24, size: 16, offset: 944)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !776, file: !777, line: 221, baseType: !811, size: 16, offset: 960)
!811 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !777, line: 228, baseType: !233, size: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 245, baseType: !814, size: 320, offset: 1088)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 245, size: 320, elements: !815)
!815 = !{!816, !843}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !814, file: !777, line: 246, baseType: !817, size: 320)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !777, line: 114, size: 320, elements: !818)
!818 = !{!819, !820, !832, !835, !842}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !817, file: !777, line: 116, baseType: !233, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !777, line: 117, baseType: !821, size: 64, offset: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !777, line: 117, size: 64, elements: !822)
!822 = !{!823, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !777, line: 118, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !777, line: 118, size: 64, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !824, file: !777, line: 120, baseType: !163, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !824, file: !777, line: 121, baseType: !828, size: 48, offset: 16)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 6)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !821, file: !777, line: 127, baseType: !233, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !777, line: 129, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !777, line: 102, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !817, file: !777, line: 130, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !777, line: 108, size: 192, elements: !838)
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !837, file: !777, line: 109, baseType: !546, size: 128, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !837, file: !777, line: 110, baseType: !697, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !837, file: !777, line: 111, baseType: !542, size: 8, offset: 160)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !817, file: !777, line: 131, baseType: !188, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !777, line: 247, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !814, file: !777, line: 247, size: 320, elements: !845)
!845 = !{!846, !847, !848, !849, !850}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !844, file: !777, line: 248, baseType: !233, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !844, file: !777, line: 249, baseType: !233, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !777, line: 250, baseType: !833, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !844, file: !777, line: 251, baseType: !836, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !844, file: !777, line: 252, baseType: !213, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 260, baseType: !852, size: 256, offset: 1408)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 260, size: 256, elements: !853)
!853 = !{!854, !860}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !852, file: !777, line: 261, baseType: !855, size: 256)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !777, line: 134, size: 256, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !855, file: !777, line: 135, baseType: !258, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !855, file: !777, line: 136, baseType: !859, size: 256)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !715)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !777, line: 262, baseType: !861, size: 256)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !777, line: 262, size: 256, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !861, file: !777, line: 264, baseType: !37, size: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !861, file: !777, line: 265, baseType: !865, size: 128, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !866, line: 22, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!867 = !{!868, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !865, file: !866, line: 23, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !866, line: 23, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !865, file: !866, line: 24, baseType: !233, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !776, file: !777, line: 280, baseType: !873, size: 64, offset: 1664)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !777, line: 176, size: 192, elements: !875)
!875 = !{!876, !885, !886}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !874, file: !777, line: 177, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !777, line: 171, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!151, !775, !881, !883, !775}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !874, file: !777, line: 178, baseType: !775, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !874, file: !777, line: 179, baseType: !833, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !750, file: !751, line: 130, baseType: !775, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !750, file: !751, line: 131, baseType: !775, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !750, file: !751, line: 132, baseType: !775, size: 64, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !750, file: !751, line: 135, baseType: !258, size: 64, offset: 1024)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !750, file: !751, line: 137, baseType: !892, size: 64, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !894, line: 14, size: 1088, elements: !895)
!894 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!895 = !{!896, !897, !906, !907, !908, !909, !910, !911}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !893, file: !894, line: 15, baseType: !697, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !893, file: !894, line: 17, baseType: !898, size: 320, offset: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !899, line: 22, size: 320, elements: !900)
!899 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!900 = !{!901, !902, !903, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !899, line: 23, baseType: !429, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !898, file: !899, line: 24, baseType: !420, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !899, line: 26, baseType: !37, size: 128, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !898, file: !899, line: 28, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !893, file: !894, line: 19, baseType: !233, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !893, file: !894, line: 20, baseType: !414, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !893, file: !894, line: 23, baseType: !710, size: 128, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !893, file: !894, line: 24, baseType: !27, size: 32, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !893, file: !894, line: 29, baseType: !414, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !893, file: !894, line: 36, baseType: !912, size: 320, offset: 768)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !913, line: 15, size: 320, elements: !914)
!913 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!914 = !{!915, !916, !917, !918, !919, !920, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !913, line: 16, baseType: !429, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !912, file: !913, line: 18, baseType: !151, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !912, file: !913, line: 19, baseType: !151, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !912, file: !913, line: 20, baseType: !151, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !912, file: !913, line: 21, baseType: !151, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !912, file: !913, line: 22, baseType: !233, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !912, file: !913, line: 23, baseType: !233, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !750, file: !751, line: 138, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !28, line: 18, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !750, file: !751, line: 139, baseType: !926, size: 64, offset: 1216)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !928, line: 16, flags: DIFlagFwdDecl)
!928 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !750, file: !751, line: 140, baseType: !930, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !751, line: 25, size: 64, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !931, file: !751, line: 26, baseType: !147, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !931, file: !751, line: 27, baseType: !151, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !931, file: !751, line: 28, baseType: !936, offset: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, elements: !734)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 142, baseType: !938, size: 128, offset: 1344)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 142, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !938, file: !751, line: 143, baseType: !151, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !938, file: !751, line: 144, baseType: !546, size: 128, align: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !640, file: !19, line: 1013, baseType: !943, size: 256, offset: 960)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !944)
!944 = !{!945, !946, !947, !948, !949, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !943, file: !19, line: 971, baseType: !233, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !943, file: !19, line: 972, baseType: !35, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !943, file: !19, line: 973, baseType: !35, size: 32, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !943, file: !19, line: 974, baseType: !35, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !943, file: !19, line: 975, baseType: !35, size: 32, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !943, file: !19, line: 976, baseType: !235, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !640, file: !19, line: 1014, baseType: !952, size: 128, offset: 1216)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !953, line: 8, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !952, file: !953, line: 9, baseType: !218, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !952, file: !953, line: 10, baseType: !63, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !640, file: !19, line: 1015, baseType: !17, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !640, file: !19, line: 1016, baseType: !959, size: 64, offset: 1408)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !962)
!962 = !{!963, !964, !968, !973, !977, !1060, !1061, !1077, !1090, !1098, !1102, !1103, !1107, !1108, !1112, !1117, !1118, !1122, !1126, !1132, !1133, !1137, !1138, !1145, !1149, !1153, !1159, !1163, !1169, !1173, !1177, !1178, !1184}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !961, file: !19, line: 1915, baseType: !264, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !961, file: !19, line: 1916, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!235, !639, !235, !151}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !961, file: !19, line: 1917, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!356, !639, !213, !369, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !961, file: !19, line: 1918, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!356, !639, !188, !369, !972}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !961, file: !19, line: 1919, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!356, !981, !1003}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !983)
!983 = !{!984, !985, !986, !990, !991, !992, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !982, file: !19, line: 374, baseType: !639, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !982, file: !19, line: 375, baseType: !235, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !982, file: !19, line: 376, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !981, !359}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !982, file: !19, line: 377, baseType: !258, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !982, file: !19, line: 378, baseType: !151, size: 32, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !982, file: !19, line: 379, baseType: !163, size: 16, offset: 288)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !19, line: 380, baseType: !994, size: 64, offset: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !19, line: 380, size: 64, elements: !995)
!995 = !{!996, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !994, file: !19, line: 386, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !994, file: !19, line: 395, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!356, !258}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1005, line: 41, size: 320, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1017, !1055}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1004, file: !1005, line: 42, baseType: !156, size: 8)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1004, file: !1005, line: 43, baseType: !542, size: 8, offset: 8)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1004, file: !1005, line: 44, baseType: !542, size: 8, offset: 16)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1004, file: !1005, line: 45, baseType: !542, size: 8, offset: 24)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1004, file: !1005, line: 46, baseType: !542, size: 8, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 47, baseType: !1013, size: 64, offset: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 47, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1013, file: !1005, line: 48, baseType: !369, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1013, file: !1005, line: 49, baseType: !151, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 61, baseType: !1018, size: 128, offset: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 61, size: 128, elements: !1019)
!1019 = !{!1020, !1026}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1018, file: !1005, line: 67, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1022, line: 17, size: 128, elements: !1023)
!1022 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1021, file: !1022, line: 19, baseType: !258, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1021, file: !1022, line: 20, baseType: !370, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !1005, line: 68, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !1005, line: 68, size: 128, elements: !1028)
!1028 = !{!1029, !1054}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !1005, line: 69, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1005, line: 69, size: 64, elements: !1031)
!1031 = !{!1032, !1035, !1042, !1051, !1053}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1030, file: !1005, line: 71, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1030, file: !1005, line: 72, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1005, line: 17, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1038, file: !1005, line: 18, baseType: !258, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1038, file: !1005, line: 19, baseType: !369, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1030, file: !1005, line: 73, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1046, line: 31, size: 128, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1045, file: !1046, line: 32, baseType: !459, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1045, file: !1046, line: 33, baseType: !35, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1045, file: !1046, line: 34, baseType: !35, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1030, file: !1005, line: 74, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1030, file: !1005, line: 75, baseType: !258, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1027, file: !1005, line: 77, baseType: !369, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !1005, line: 80, baseType: !1056, size: 64, offset: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !1005, line: 80, size: 64, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1056, file: !1005, line: 81, baseType: !233, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1056, file: !1005, line: 82, baseType: !235, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !961, file: !19, line: 1920, baseType: !978, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !961, file: !19, line: 1921, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!151, !981, !1065, !35}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !1067, line: 1559, size: 192, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!1068 = !{!1069, !1072, !1073}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1066, file: !1067, line: 1560, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !1067, line: 32, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1066, file: !1067, line: 1561, baseType: !542, size: 8, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1066, file: !1067, line: 1562, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1065}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !961, file: !19, line: 1923, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!151, !639, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !1083)
!1083 = !{!1084, !1089}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1082, file: !19, line: 1859, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!542, !1081, !188, !151, !235, !103, !35}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1082, file: !19, line: 1860, baseType: !235, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !961, file: !19, line: 1924, baseType: !1091, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1094, !639, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1095, line: 59, baseType: !35)
!1095 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !19, line: 61, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !961, file: !19, line: 1925, baseType: !1099, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!359, !639, !35, !233}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !961, file: !19, line: 1926, baseType: !1099, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !961, file: !19, line: 1927, baseType: !1104, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!151, !639, !598}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !961, file: !19, line: 1928, baseType: !233, size: 64, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !961, file: !19, line: 1929, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!151, !17, !639}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !961, file: !19, line: 1930, baseType: !1113, size: 64, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!151, !639, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !258)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !961, file: !19, line: 1931, baseType: !1109, size: 64, offset: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !961, file: !19, line: 1932, baseType: !1119, size: 64, offset: 1024)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!151, !639, !235, !235, !151}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !961, file: !19, line: 1933, baseType: !1123, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!151, !151, !639, !151}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !19, line: 1934, baseType: !1127, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!151, !639, !151, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !961, file: !19, line: 1935, baseType: !636, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !961, file: !19, line: 1936, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!151, !151}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !961, file: !19, line: 1937, baseType: !1127, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !961, file: !19, line: 1938, baseType: !1139, size: 64, offset: 1408)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!356, !1142, !639, !972, !369, !35}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1144, line: 59, flags: DIFlagFwdDecl)
!1144 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !961, file: !19, line: 1939, baseType: !1146, size: 64, offset: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!356, !639, !972, !1142, !369, !35}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !961, file: !19, line: 1940, baseType: !1150, size: 64, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !639}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !961, file: !19, line: 1941, baseType: !1154, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!151, !639, !151, !1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !961, file: !19, line: 1942, baseType: !1160, size: 64, offset: 1664)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!359, !639, !151, !235, !235}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !961, file: !19, line: 1944, baseType: !1164, size: 64, offset: 1728)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1167, !639}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1144, line: 66, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !961, file: !19, line: 1948, baseType: !1170, size: 64, offset: 1792)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!356, !639, !235, !639, !235, !369, !35}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !961, file: !19, line: 1950, baseType: !1174, size: 64, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!235, !639, !235, !639, !235, !235, !35}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !961, file: !19, line: 1953, baseType: !1119, size: 64, offset: 1920)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !961, file: !19, line: 1954, baseType: !1179, size: 64, offset: 1984)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!151, !1182, !35}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !961, file: !19, line: 1955, baseType: !1185, size: 64, offset: 2048)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!151, !1182, !1065, !35}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !640, file: !19, line: 1018, baseType: !103, size: 64, offset: 1472)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !640, file: !19, line: 1020, baseType: !258, size: 64, offset: 1536)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !640, file: !19, line: 1023, baseType: !258, size: 64, offset: 1600)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !640, file: !19, line: 1027, baseType: !1192, size: 64, offset: 1664)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !640, file: !19, line: 1029, baseType: !397, size: 64, offset: 1728)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !640, file: !19, line: 1030, baseType: !1195, size: 32, offset: 1792)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1196, line: 8, baseType: !97)
!1196 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !640, file: !19, line: 1031, baseType: !1195, size: 32, offset: 1824)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !615, file: !461, line: 756, baseType: !233, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !615, file: !461, line: 757, baseType: !233, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !615, file: !461, line: 760, baseType: !233, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !615, file: !461, line: 761, baseType: !233, size: 64, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !615, file: !461, line: 763, baseType: !233, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !615, file: !461, line: 764, baseType: !1204, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1206, line: 299, baseType: !1207)
!1206 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 299, size: 64, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1207, file: !1206, line: 299, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1211, line: 18, baseType: !233)
!1211 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !615, file: !461, line: 773, baseType: !147, size: 32, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !615, file: !461, line: 785, baseType: !147, size: 32, offset: 1120)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !615, file: !461, line: 795, baseType: !1215, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !461, line: 726, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1216, file: !461, line: 727, baseType: !103, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1216, file: !461, line: 728, baseType: !151, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !615, file: !461, line: 801, baseType: !233, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !615, file: !461, line: 804, baseType: !414, size: 64, offset: 1280)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !615, file: !461, line: 806, baseType: !151, size: 32, offset: 1344)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !615, file: !461, line: 808, baseType: !127, size: 32, offset: 1376)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !615, file: !461, line: 823, baseType: !410, size: 320, offset: 1408)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !615, file: !461, line: 825, baseType: !37, size: 128, offset: 1728)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !615, file: !461, line: 845, baseType: !151, size: 32, offset: 1856)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !615, file: !461, line: 849, baseType: !233, size: 64, offset: 1920)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !615, file: !461, line: 850, baseType: !233, size: 64, offset: 1984)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !615, file: !461, line: 852, baseType: !233, size: 64, offset: 2048)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !615, file: !461, line: 853, baseType: !233, size: 64, offset: 2112)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !615, file: !461, line: 854, baseType: !416, size: 64, offset: 2176)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !615, file: !461, line: 855, baseType: !233, size: 64, offset: 2240)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !615, file: !461, line: 856, baseType: !233, size: 64, offset: 2304)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !615, file: !461, line: 857, baseType: !233, size: 64, offset: 2368)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !615, file: !461, line: 858, baseType: !233, size: 64, offset: 2432)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !615, file: !461, line: 865, baseType: !74, size: 32, offset: 2496)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !615, file: !461, line: 867, baseType: !127, size: 32, offset: 2528)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !615, file: !461, line: 869, baseType: !233, size: 64, offset: 2560)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !615, file: !461, line: 869, baseType: !233, size: 64, offset: 2624)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !615, file: !461, line: 869, baseType: !233, size: 64, offset: 2688)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !615, file: !461, line: 869, baseType: !233, size: 64, offset: 2752)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !615, file: !461, line: 870, baseType: !233, size: 64, offset: 2816)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !615, file: !461, line: 870, baseType: !233, size: 64, offset: 2880)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !615, file: !461, line: 870, baseType: !233, size: 64, offset: 2944)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !615, file: !461, line: 871, baseType: !233, size: 64, offset: 3008)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !615, file: !461, line: 871, baseType: !233, size: 64, offset: 3072)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !615, file: !461, line: 871, baseType: !233, size: 64, offset: 3136)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !615, file: !461, line: 871, baseType: !233, size: 64, offset: 3200)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !615, file: !461, line: 873, baseType: !1250, size: 3328, offset: 3264)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 3328, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 52)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !615, file: !461, line: 875, baseType: !1254, size: 1280, offset: 6592)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 1280, elements: !715)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !615, file: !461, line: 877, baseType: !1256, size: 64, offset: 7872)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !461, line: 877, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !615, file: !461, line: 880, baseType: !1259, size: 1088, offset: 7936)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1260, line: 72, baseType: !1261)
!1260 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1260, line: 23, size: 1088, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1270, !1271, !1272, !1273, !1300, !1301, !1302}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1261, file: !1260, line: 28, baseType: !103, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1261, file: !1260, line: 38, baseType: !416, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1261, file: !1260, line: 40, baseType: !233, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1261, file: !1260, line: 43, baseType: !410, size: 320, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1261, file: !1260, line: 44, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1260, line: 44, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !1260, line: 48, baseType: !233, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1261, file: !1260, line: 59, baseType: !658, size: 256, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1261, file: !1260, line: 60, baseType: !258, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1261, file: !1260, line: 61, baseType: !1274, size: 64, offset: 960)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1277, line: 13, size: 1216, elements: !1278)
!1277 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1276, file: !1277, line: 14, baseType: !258, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1276, file: !1277, line: 15, baseType: !233, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1276, file: !1277, line: 17, baseType: !233, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1276, file: !1277, line: 17, baseType: !233, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1276, file: !1277, line: 18, baseType: !233, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1276, file: !1277, line: 18, baseType: !233, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1276, file: !1277, line: 19, baseType: !1286, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1276, file: !1277, line: 21, baseType: !359, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1276, file: !1277, line: 23, baseType: !359, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1276, file: !1277, line: 24, baseType: !359, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1276, file: !1277, line: 25, baseType: !359, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1276, file: !1277, line: 26, baseType: !359, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1276, file: !1277, line: 27, baseType: !359, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1276, file: !1277, line: 28, baseType: !359, size: 64, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1276, file: !1277, line: 29, baseType: !359, size: 64, offset: 896)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1276, file: !1277, line: 30, baseType: !359, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1276, file: !1277, line: 31, baseType: !359, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1276, file: !1277, line: 32, baseType: !359, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1276, file: !1277, line: 33, baseType: !359, size: 64, offset: 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1261, file: !1260, line: 63, baseType: !147, size: 32, offset: 1024)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1261, file: !1260, line: 69, baseType: !163, size: 16, offset: 1056)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1261, file: !1260, line: 70, baseType: !1303, size: 16, offset: 1072)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !98, line: 18, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !100, line: 23, baseType: !811)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !461, line: 882, baseType: !233, size: 64, offset: 9024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !615, file: !461, line: 885, baseType: !127, size: 32, offset: 9088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !615, file: !461, line: 886, baseType: !1308, size: 64, offset: 9152)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !461, line: 732, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !615, file: !461, line: 901, baseType: !923, size: 64, offset: 9216)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !615, file: !461, line: 904, baseType: !639, size: 64, offset: 9280)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !615, file: !461, line: 906, baseType: !1313, size: 64, offset: 9344)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !461, line: 906, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !615, file: !461, line: 930, baseType: !147, size: 32, offset: 9408)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !615, file: !461, line: 933, baseType: !147, size: 32, offset: 9440)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !615, file: !461, line: 935, baseType: !1318, size: 64, offset: 9472)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1319, line: 103, size: 64, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1318, file: !1319, line: 104, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1319, line: 101, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !615, file: !461, line: 940, baseType: !414, size: 64, offset: 9536)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !615, file: !461, line: 942, baseType: !1326, size: 256, offset: 9600)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1327, line: 98, size: 256, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1326, file: !1327, line: 99, baseType: !414, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1326, file: !1327, line: 100, baseType: !37, size: 128, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1326, file: !1327, line: 101, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1327, line: 21, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !612, file: !461, line: 986, baseType: !1338, offset: 10240)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !734)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !599, file: !461, line: 640, baseType: !1340, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1206, line: 297, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1206, line: 297, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1341, file: !1206, line: 297, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1211, line: 19, baseType: !233)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !461, line: 646, baseType: !1346, size: 64, offset: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !461, line: 646, size: 64, elements: !1347)
!1347 = !{!1348, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1346, file: !461, line: 647, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !461, line: 542, baseType: !233)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1346, file: !461, line: 648, baseType: !1350, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !599, file: !461, line: 666, baseType: !151, size: 32, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !599, file: !461, line: 667, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !461, line: 579, size: 320, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !461, line: 580, baseType: !410, size: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !599, file: !461, line: 670, baseType: !542, size: 8, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !599, file: !461, line: 681, baseType: !1360, size: 256, offset: 512)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !461, line: 678, size: 256, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1360, file: !461, line: 679, baseType: !442, size: 192, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1360, file: !461, line: 680, baseType: !233, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !599, file: !461, line: 689, baseType: !37, size: 128, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !599, file: !461, line: 691, baseType: !1366, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !461, line: 691, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !599, file: !461, line: 694, baseType: !1369, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !592, line: 563, size: 1024, elements: !1372)
!1372 = !{!1373, !1377, !1378, !1382, !1386, !1390, !1391, !1395, !1399, !1403, !1404, !1405, !1409, !1413, !1419, !1423}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1371, file: !592, line: 564, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !598}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1371, file: !592, line: 569, baseType: !1374, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1371, file: !592, line: 571, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!151, !598, !233}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1371, file: !592, line: 572, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!151, !598}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1371, file: !592, line: 578, baseType: !1387, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!151, !598, !233, !233, !233}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1371, file: !592, line: 580, baseType: !586, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1371, file: !592, line: 581, baseType: !1392, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!589, !590, !35}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1371, file: !592, line: 582, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!589, !590, !233, !233}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1371, file: !592, line: 584, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!233, !598}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1371, file: !592, line: 588, baseType: !586, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1371, file: !592, line: 591, baseType: !586, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1371, file: !592, line: 597, baseType: !1406, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!151, !598, !233, !258, !151, !151}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1371, file: !592, line: 603, baseType: !1410, size: 64, offset: 768)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!188, !598}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1371, file: !592, line: 613, baseType: !1414, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!151, !598, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !461, line: 717, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1371, file: !592, line: 625, baseType: !1420, size: 64, offset: 896)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1417, !598, !233}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1371, file: !592, line: 633, baseType: !1424, size: 64, offset: 960)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!459, !598, !233}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !599, file: !461, line: 697, baseType: !233, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !599, file: !461, line: 699, baseType: !639, size: 64, offset: 1088)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !599, file: !461, line: 700, baseType: !258, size: 64, offset: 1152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !599, file: !461, line: 711, baseType: !414, size: 64, offset: 1216)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !599, file: !461, line: 717, baseType: !1417, size: 64, offset: 1280)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !599, file: !461, line: 722, baseType: !1433, offset: 1344)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !461, line: 570, elements: !632)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !595, file: !592, line: 515, baseType: !407, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !595, file: !592, line: 516, baseType: !233, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !595, file: !592, line: 517, baseType: !233, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !595, file: !592, line: 518, baseType: !233, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !592, line: 520, baseType: !1439, size: 32, offset: 320)
!1439 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !461, line: 1325, baseType: !35, size: 32, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1441 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1442 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1443 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1444 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1445 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1446 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1447 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1448 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1449 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1450 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1451 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1452 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1453 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !591, file: !592, line: 522, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1211, line: 22, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 22, size: 64, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1457, file: !1211, line: 22, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1211, line: 15, baseType: !233)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !591, file: !592, line: 524, baseType: !1462, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1206, line: 372, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1206, line: 372, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1464, file: !1206, line: 372, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1211, line: 16, baseType: !233)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !592, line: 527, baseType: !1469, size: 64, offset: 512)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !592, line: 527, size: 64, elements: !1470)
!1470 = !{!1471, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1469, file: !592, line: 528, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1211, line: 21, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 21, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1473, file: !1211, line: 21, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1211, line: 14, baseType: !233)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1469, file: !592, line: 529, baseType: !1456, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !591, file: !592, line: 534, baseType: !459, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !591, file: !592, line: 535, baseType: !459, size: 64, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !591, file: !592, line: 541, baseType: !1481, size: 64, offset: 704)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !591, file: !592, line: 545, baseType: !1483, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !591, file: !592, line: 549, baseType: !1485, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1206, line: 520, baseType: !459)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !579, file: !512, line: 100, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!151, !510, !233, !233, !151}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !512, line: 134, baseType: !258, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !511, file: !512, line: 135, baseType: !151, size: 32, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !512, line: 136, baseType: !1493, size: 128, offset: 1088)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !512, line: 136, size: 128, elements: !1494)
!1494 = !{!1495, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1493, file: !512, line: 137, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1497, line: 6, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1496, file: !1497, line: 7, baseType: !103, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1496, file: !1497, line: 8, baseType: !103, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !512, line: 138, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !512, line: 138, elements: !1503)
!1503 = !{!1504, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1502, file: !512, line: 138, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1502, file: !512, line: 138, elements: !632)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1502, file: !512, line: 138, baseType: !1507)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, elements: !734)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !507, file: !461, line: 147, baseType: !258, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !465, file: !461, line: 161, baseType: !546, size: 128, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 164, baseType: !1511, size: 32, offset: 384)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 164, size: 32, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1511, file: !461, line: 169, baseType: !147, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1511, file: !461, line: 177, baseType: !35, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !460, file: !461, line: 181, baseType: !147, size: 32, offset: 416)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 309, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !453, file: !19, line: 406, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!151, !639, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !461, line: 293, size: 1536, elements: !1524)
!1524 = !{!1525, !1555, !1569}
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !461, line: 295, baseType: !1526, size: 512)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !461, line: 295, size: 512, elements: !1527)
!1527 = !{!1528, !1554}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !461, line: 296, baseType: !1529, size: 448)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !461, line: 296, size: 448, elements: !1530)
!1530 = !{!1531, !1532, !1541, !1542, !1543, !1552, !1553}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !461, line: 298, baseType: !233, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !461, line: 299, baseType: !1533, size: 128, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !461, line: 299, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1533, file: !461, line: 300, baseType: !37, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !461, line: 302, baseType: !1537, size: 128)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !461, line: 302, size: 128, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1537, file: !461, line: 303, baseType: !258, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1537, file: !461, line: 305, baseType: !35, size: 32, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1529, file: !461, line: 310, baseType: !397, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1529, file: !461, line: 311, baseType: !233, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !461, line: 312, baseType: !1544, size: 64, offset: 320)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !461, line: 312, size: 64, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1544, file: !461, line: 313, baseType: !258, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1544, file: !461, line: 314, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !461, line: 257, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 255, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1549, file: !461, line: 256, baseType: !233, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1529, file: !461, line: 316, baseType: !147, size: 32, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1529, file: !461, line: 317, baseType: !147, size: 32, offset: 416)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1526, file: !461, line: 323, baseType: !460, size: 512, align: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !461, line: 325, baseType: !1556, size: 512, offset: 512)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !461, line: 325, size: 512, elements: !1557)
!1557 = !{!1558, !1568}
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !461, line: 326, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !461, line: 326, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1559, file: !461, line: 327, baseType: !233, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1559, file: !461, line: 328, baseType: !233, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1559, file: !461, line: 329, baseType: !233, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1559, file: !461, line: 331, baseType: !147, size: 32, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1559, file: !461, line: 332, baseType: !147, size: 32, offset: 224)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1559, file: !461, line: 333, baseType: !147, size: 32, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1559, file: !461, line: 335, baseType: !35, size: 32, offset: 288)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1556, file: !461, line: 339, baseType: !460, size: 512, align: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !461, line: 341, baseType: !1570, size: 512, offset: 1024)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !461, line: 341, size: 512, elements: !1571)
!1571 = !{!1572, !1581, !1587}
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !461, line: 342, baseType: !1573, size: 384)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !461, line: 342, size: 384, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1573, file: !461, line: 343, baseType: !233, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1573, file: !461, line: 344, baseType: !233, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1573, file: !461, line: 346, baseType: !258, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1573, file: !461, line: 347, baseType: !258, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1573, file: !461, line: 348, baseType: !258, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1573, file: !461, line: 349, baseType: !258, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !461, line: 352, baseType: !1582, size: 256)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !461, line: 352, size: 256, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1582, file: !461, line: 353, baseType: !233, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1582, file: !461, line: 354, baseType: !233, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1582, file: !461, line: 356, baseType: !37, size: 128, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1570, file: !461, line: 359, baseType: !460, size: 512, align: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !453, file: !19, line: 409, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!151, !397, !1516}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !453, file: !19, line: 412, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!542, !397, !1522}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !453, file: !19, line: 414, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !453, file: !19, line: 416, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!151, !639, !397, !235, !35, !1606, !1158}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !453, file: !19, line: 419, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!151, !639, !397, !235, !35, !35, !459, !258}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !453, file: !19, line: 424, baseType: !1612, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1615, !397, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !23, line: 131, baseType: !103)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !453, file: !19, line: 425, baseType: !1617, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1522, !369, !369}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !453, file: !19, line: 426, baseType: !1621, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!542, !1522, !407}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !453, file: !19, line: 427, baseType: !1625, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1522}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !453, file: !19, line: 428, baseType: !978, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !453, file: !19, line: 433, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!151, !397, !1522, !1522, !1633}
!1633 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1634, line: 15, baseType: !35, size: 32, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1637 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1638 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1639 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !453, file: !19, line: 435, baseType: !1641, size: 64, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!151, !1522}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !453, file: !19, line: 436, baseType: !1645, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!542, !1522, !369, !369}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !453, file: !19, line: 438, baseType: !1649, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1522, !1652, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !453, file: !19, line: 439, baseType: !1654, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!151, !397, !459}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !453, file: !19, line: 442, baseType: !1658, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!151, !1661, !639, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !453, file: !19, line: 444, baseType: !1150, size: 64, offset: 1152)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !453, file: !19, line: 445, baseType: !1666, size: 64, offset: 1216)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!151, !981, !1003}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !19, line: 486, baseType: !233, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !398, file: !19, line: 487, baseType: !410, size: 320, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !398, file: !19, line: 488, baseType: !1195, size: 32, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !398, file: !19, line: 489, baseType: !127, size: 32, offset: 1312)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !398, file: !19, line: 490, baseType: !37, size: 128, offset: 1344)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !398, file: !19, line: 491, baseType: !258, size: 64, offset: 1472)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !388, file: !350, line: 180, baseType: !1676, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!356, !639, !290, !387, !213, !235, !369}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !388, file: !350, line: 182, baseType: !1676, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !388, file: !350, line: 184, baseType: !1681, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!151, !639, !290, !387, !598}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !376, file: !350, line: 90, baseType: !1685, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !376, file: !350, line: 91, baseType: !1687, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !340, file: !285, line: 120, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1692, !308}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1695, line: 39, size: 384, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1696 = !{!1697, !1703, !1707, !1711, !1717, !1721}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1694, file: !1695, line: 40, baseType: !1698, size: 32)
!1698 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1695, line: 26, baseType: !35, size: 32, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1701 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1702 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1694, file: !1695, line: 41, baseType: !1704, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!542}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1694, file: !1695, line: 42, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!258}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1694, file: !1695, line: 43, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1286, !1715}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1695, line: 19, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1694, file: !1695, line: 44, baseType: !1718, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1286}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1694, file: !1695, line: 45, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !258}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !340, file: !285, line: 121, baseType: !1726, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1286, !308}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !340, file: !285, line: 122, baseType: !1730, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !308, !1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !284, file: !285, line: 70, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1738, line: 190, size: 1152, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1831, !1832, !1833, !1834, !1835, !1838}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1737, file: !1738, line: 191, baseType: !147, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1737, file: !1738, line: 192, baseType: !147, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1737, file: !1738, line: 202, baseType: !1736, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !1738, line: 203, baseType: !188, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1737, file: !1738, line: 205, baseType: !442, size: 192, align: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1737, file: !1738, line: 207, baseType: !1286, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1737, file: !1738, line: 208, baseType: !35, size: 32, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 209, baseType: !1748, size: 256, offset: 512)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 209, size: 256, elements: !1749)
!1749 = !{!1750, !1759, !1763}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1748, file: !1738, line: 210, baseType: !1751, size: 256)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1738, line: 153, size: 256, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1758}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1751, file: !1738, line: 154, baseType: !233, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1751, file: !1738, line: 156, baseType: !438, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1751, file: !1738, line: 162, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1738, line: 162, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1751, file: !1738, line: 167, baseType: !233, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1748, file: !1738, line: 211, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1738, line: 170, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1760, file: !1738, line: 171, baseType: !1736, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1748, file: !1738, line: 212, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1738, line: 174, size: 256, elements: !1765)
!1765 = !{!1766, !1826, !1829, !1830}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1764, file: !1738, line: 175, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1738, line: 271, size: 768, elements: !1770)
!1770 = !{!1771, !1791, !1795, !1799, !1803, !1807, !1811, !1815, !1816, !1817, !1818, !1822}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1769, file: !1738, line: 276, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!151, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1738, line: 251, size: 1216, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1776, file: !1738, line: 253, baseType: !1736, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1776, file: !1738, line: 254, baseType: !639, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1776, file: !1738, line: 255, baseType: !1167, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1776, file: !1738, line: 256, baseType: !258, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1776, file: !1738, line: 259, baseType: !658, size: 256, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1776, file: !1738, line: 260, baseType: !658, size: 256, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1776, file: !1738, line: 261, baseType: !151, size: 32, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1776, file: !1738, line: 262, baseType: !37, size: 128, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1776, file: !1738, line: 263, baseType: !213, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1776, file: !1738, line: 265, baseType: !369, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1776, file: !1738, line: 266, baseType: !542, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1776, file: !1738, line: 267, baseType: !542, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1776, file: !1738, line: 268, baseType: !1369, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1769, file: !1738, line: 277, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1775}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1769, file: !1738, line: 290, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!151, !1167, !258}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1769, file: !1738, line: 292, baseType: !1800, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!258, !1167, !972}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1769, file: !1738, line: 293, baseType: !1804, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!258, !1167, !258, !972}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1769, file: !1738, line: 294, baseType: !1808, size: 64, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1167, !258}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1769, file: !1738, line: 296, baseType: !1812, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!356, !1775, !213, !369, !235}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1769, file: !1738, line: 306, baseType: !369, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1769, file: !1738, line: 313, baseType: !542, size: 8, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1769, file: !1738, line: 314, baseType: !1812, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1769, file: !1738, line: 317, baseType: !1819, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1094, !1775, !1096}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1769, file: !1738, line: 320, baseType: !1823, size: 64, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!151, !1775, !598}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1764, file: !1738, line: 176, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1738, line: 35, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1764, file: !1738, line: 177, baseType: !235, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1764, file: !1738, line: 178, baseType: !1736, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1737, file: !1738, line: 215, baseType: !258, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1737, file: !1738, line: 221, baseType: !103, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !1738, line: 223, baseType: !24, size: 16, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1737, file: !1738, line: 224, baseType: !22, size: 16, offset: 912)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1737, file: !1738, line: 225, baseType: !1836, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1738, line: 36, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1737, file: !1738, line: 227, baseType: !546, size: 128, align: 64, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !284, file: !285, line: 71, baseType: !1840, size: 32, offset: 448)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1841, line: 19, size: 32, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1840, file: !1841, line: 20, baseType: !697, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !284, file: !285, line: 73, baseType: !35, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !284, file: !285, line: 74, baseType: !35, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !284, file: !285, line: 75, baseType: !35, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !284, file: !285, line: 76, baseType: !35, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !284, file: !285, line: 77, baseType: !35, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !281, file: !266, line: 47, baseType: !264, size: 64, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !281, file: !266, line: 48, baseType: !290, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !281, file: !266, line: 49, baseType: !1852, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !266, line: 49, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !281, file: !266, line: 50, baseType: !1855, size: 64, offset: 704)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !265, file: !266, line: 418, baseType: !1857, size: 64, offset: 1408)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !266, line: 53, size: 448, elements: !1859)
!1859 = !{!1860, !1861, !1866, !1870, !1874, !1878}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1858, file: !266, line: 54, baseType: !361, size: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1858, file: !266, line: 55, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!356, !1857, !1865, !213}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1858, file: !266, line: 57, baseType: !1867, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!356, !1857, !1865, !188, !369}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1858, file: !266, line: 59, baseType: !1871, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !264, !188}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1858, file: !266, line: 60, baseType: !1875, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!151, !264}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1858, file: !266, line: 61, baseType: !1879, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !264}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !265, file: !266, line: 419, baseType: !188, size: 64, offset: 1472)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !265, file: !266, line: 420, baseType: !188, size: 64, offset: 1536)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !265, file: !266, line: 421, baseType: !290, size: 64, offset: 1600)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !265, file: !266, line: 424, baseType: !1886, size: 64, offset: 1664)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !266, line: 424, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !265, file: !266, line: 425, baseType: !1890, size: 64, offset: 1728)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !265, file: !266, line: 426, baseType: !35, size: 32, offset: 1792)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !265, file: !266, line: 435, baseType: !658, size: 256, offset: 1856)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !265, file: !266, line: 437, baseType: !1895, size: 64, offset: 2112)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1897, line: 69, size: 320, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1898 = !{!1899, !1900, !1901, !1918, !1920, !1924, !1925}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1896, file: !1897, line: 70, baseType: !188, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1896, file: !1897, line: 71, baseType: !264, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1896, file: !1897, line: 72, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1897, line: 47, size: 256, elements: !1905)
!1905 = !{!1906, !1907, !1913, !1917}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1904, file: !1897, line: 49, baseType: !35, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1904, file: !1897, line: 51, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!151, !188, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1904, file: !1897, line: 53, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!151, !213, !1911}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1904, file: !1897, line: 55, baseType: !1722, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1896, file: !1897, line: 73, baseType: !1919, size: 16, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1896, file: !1897, line: 74, baseType: !1921, size: 8, offset: 208)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !98, line: 16, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !100, line: 20, baseType: !1923)
!1923 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1896, file: !1897, line: 75, baseType: !156, size: 8, offset: 216)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1897, line: 76, baseType: !1926, size: 64, offset: 256)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !1897, line: 76, size: 64, elements: !1927)
!1927 = !{!1928, !1929, !1936}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1926, file: !1897, line: 77, baseType: !258, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1926, file: !1897, line: 78, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1897, line: 86, size: 128, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1932, file: !1897, line: 87, baseType: !35, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1932, file: !1897, line: 88, baseType: !213, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1926, file: !1897, line: 79, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1897, line: 92, size: 256, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1945, !1946}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1939, file: !1897, line: 94, baseType: !35, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1939, file: !1897, line: 95, baseType: !35, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1939, file: !1897, line: 96, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1939, file: !1897, line: 97, baseType: !1902, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1939, file: !1897, line: 98, baseType: !258, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !265, file: !266, line: 438, baseType: !35, size: 32, offset: 2176)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !265, file: !266, line: 441, baseType: !35, size: 32, offset: 2208)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !265, file: !266, line: 442, baseType: !1886, size: 64, offset: 2240)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !265, file: !266, line: 443, baseType: !1890, size: 64, offset: 2304)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !265, file: !266, line: 444, baseType: !542, size: 8, offset: 2368)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !265, file: !266, line: 451, baseType: !542, size: 8, offset: 2376)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !265, file: !266, line: 454, baseType: !35, size: 32, offset: 2400)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !265, file: !266, line: 455, baseType: !1955, size: 64, offset: 2432)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1957, line: 23, size: 96, elements: !1958)
!1957 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1956, file: !1957, line: 24, baseType: !151, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1956, file: !1957, line: 24, baseType: !151, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1956, file: !1957, line: 24, baseType: !151, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !265, file: !266, line: 458, baseType: !1963, size: 64, offset: 2496)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!151}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !265, file: !266, line: 460, baseType: !1967, size: 4032, align: 512, offset: 2560)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1968, size: 4032, elements: !1984)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !266, line: 362, size: 576, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1968, file: !266, line: 363, baseType: !258, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1968, file: !266, line: 364, baseType: !35, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1968, file: !266, line: 367, baseType: !1973, size: 448, offset: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !266, line: 319, size: 448, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1973, file: !266, line: 320, baseType: !264, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1973, file: !266, line: 321, baseType: !1977, size: 384, offset: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1978, line: 40, size: 384, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1977, file: !1978, line: 41, baseType: !1981, size: 384, align: 64)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, align: 64, elements: !1982)
!1982 = !{!1983}
!1983 = !DISubrange(count: 2)
!1984 = !{!1985}
!1985 = !DISubrange(count: 7)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !265, file: !266, line: 463, baseType: !1987, size: 192, offset: 6592)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1988, line: 8, size: 192, elements: !1989)
!1988 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1989 = !{!1990, !1991, !1993}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1987, file: !1988, line: 10, baseType: !35, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1987, file: !1988, line: 11, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1987, file: !1988, line: 12, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1996, line: 59, size: 48, elements: !1997)
!1996 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1995, file: !1996, line: 60, baseType: !1303, size: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1995, file: !1996, line: 61, baseType: !1303, size: 16, offset: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1995, file: !1996, line: 63, baseType: !35, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1995, file: !1996, line: 64, baseType: !35, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1995, file: !1996, line: 65, baseType: !35, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1995, file: !1996, line: 66, baseType: !35, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !265, file: !266, line: 465, baseType: !233, size: 64, offset: 6784)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !265, file: !266, line: 469, baseType: !35, size: 32, offset: 6848)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !265, file: !266, line: 470, baseType: !37, size: 128, offset: 6912)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !265, file: !266, line: 471, baseType: !2008, size: 64, offset: 7040)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2010, line: 33, size: 96, elements: !2011)
!2010 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2009, file: !2010, line: 37, baseType: !151, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2009, file: !2010, line: 43, baseType: !151, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2009, file: !2010, line: 45, baseType: !24, size: 16, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !2010, line: 47, baseType: !24, size: 16, offset: 80)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !265, file: !266, line: 476, baseType: !2017, size: 64, offset: 7104)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !266, line: 378, size: 256, elements: !2019)
!2019 = !{!2020, !2036, !2037, !2038}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2018, file: !266, line: 379, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2023, line: 204, baseType: !2024)
!2023 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2023, line: 197, size: 192, elements: !2025)
!2025 = !{!2026, !2028, !2029, !2030, !2032, !2034}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2024, file: !2023, line: 198, baseType: !2027, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2023, line: 21, baseType: !99)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2024, file: !2023, line: 199, baseType: !109, size: 8, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2024, file: !2023, line: 200, baseType: !109, size: 8, offset: 40)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2024, file: !2023, line: 201, baseType: !2031, size: 16, offset: 48)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2023, line: 17, baseType: !164)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2024, file: !2023, line: 202, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2023, line: 16, baseType: !104)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2024, file: !2023, line: 203, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2023, line: 22, baseType: !104)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2018, file: !266, line: 380, baseType: !35, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2018, file: !266, line: 381, baseType: !213, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2018, file: !266, line: 382, baseType: !213, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !265, file: !266, line: 477, baseType: !2018, size: 256, offset: 7168)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !265, file: !266, line: 480, baseType: !2041, size: 64, offset: 7424)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !266, line: 480, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !265, file: !266, line: 483, baseType: !2044, size: 64, offset: 7488)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !266, line: 483, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !265, file: !266, line: 488, baseType: !213, size: 64, offset: 7552)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !265, file: !266, line: 492, baseType: !258, size: 64, offset: 7616)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !265, file: !266, line: 493, baseType: !35, size: 32, offset: 7680)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !265, file: !266, line: 495, baseType: !258, size: 64, offset: 7744)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !265, file: !266, line: 496, baseType: !35, size: 32, offset: 7808)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !265, file: !266, line: 499, baseType: !35, size: 32, offset: 7840)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !265, file: !266, line: 500, baseType: !2053, size: 64, offset: 7872)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2055, line: 45, baseType: !2056)
!2055 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !265, file: !266, line: 503, baseType: !35, size: 32, offset: 7936)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !265, file: !266, line: 504, baseType: !2059, size: 64, offset: 8000)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2062, line: 96, size: 192, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2063 = !{!2064, !2065, !2119, !2122}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2061, file: !2062, line: 97, baseType: !35, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2061, file: !2062, line: 98, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2062, line: 24, size: 3072, elements: !2068)
!2068 = !{!2069, !2071, !2072, !2073, !2074, !2088, !2089, !2090, !2091, !2103, !2104, !2105, !2116, !2117, !2118}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2067, file: !2062, line: 26, baseType: !2070, size: 128)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 128, elements: !1982)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2067, file: !2062, line: 27, baseType: !2070, size: 128, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2067, file: !2062, line: 28, baseType: !151, size: 32, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !2062, line: 31, baseType: !127, size: 32, align: 512, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2067, file: !2062, line: 32, baseType: !2075, size: 960, offset: 576)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2076, line: 206, size: 960, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2077 = !{!2078, !2079, !2082, !2084, !2085, !2087}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2075, file: !2076, line: 207, baseType: !549, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2075, file: !2076, line: 208, baseType: !2080, size: 256, offset: 64)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 256, elements: !715)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2075, file: !2076, line: 209, baseType: !2083, size: 256, offset: 320)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !715)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2075, file: !2076, line: 213, baseType: !359, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2075, file: !2076, line: 215, baseType: !2086, size: 256, offset: 640)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !715)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !2076, line: 216, baseType: !156, size: 8, offset: 896)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2067, file: !2062, line: 33, baseType: !233, size: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2067, file: !2062, line: 34, baseType: !233, size: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2067, file: !2062, line: 35, baseType: !542, size: 8, offset: 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2067, file: !2062, line: 36, baseType: !2092, size: 320, offset: 1728)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2093, line: 11, size: 320, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2094 = !{!2095, !2096, !2097, !2102}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2092, file: !2093, line: 16, baseType: !710, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2092, file: !2093, line: 17, baseType: !233, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2092, file: !2093, line: 18, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 19, baseType: !97, size: 32, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2067, file: !2062, line: 37, baseType: !1326, size: 256, offset: 2048)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2067, file: !2062, line: 38, baseType: !546, size: 128, align: 64, offset: 2304)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2067, file: !2062, line: 39, baseType: !2106, size: 64, offset: 2432)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2062, line: 49, size: 768, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !2062, line: 50, baseType: !127, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2107, file: !2062, line: 51, baseType: !2083, size: 256, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2107, file: !2062, line: 53, baseType: !2083, size: 256, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2107, file: !2062, line: 54, baseType: !233, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2107, file: !2062, line: 55, baseType: !2106, size: 64, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2107, file: !2062, line: 56, baseType: !151, size: 32, offset: 704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2107, file: !2062, line: 57, baseType: !151, size: 32, offset: 736)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2067, file: !2062, line: 40, baseType: !233, size: 64, offset: 2496)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2067, file: !2062, line: 42, baseType: !151, size: 32, offset: 2560)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2067, file: !2062, line: 43, baseType: !2060, size: 64, offset: 2624)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2061, file: !2062, line: 99, baseType: !2120, offset: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2121, line: 211, elements: !632)
!2121 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2061, file: !2062, line: 100, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2062, line: 63, size: 3008, elements: !2125)
!2125 = !{!2126, !2127, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2157}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2124, file: !2062, line: 64, baseType: !2106, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2124, file: !2062, line: 65, baseType: !2128, size: 192, offset: 64)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 192, elements: !325)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2124, file: !2062, line: 67, baseType: !151, size: 32, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2124, file: !2062, line: 68, baseType: !658, size: 256, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2062, line: 69, baseType: !127, size: 32, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2124, file: !2062, line: 70, baseType: !658, size: 256, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2124, file: !2062, line: 71, baseType: !233, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2124, file: !2062, line: 72, baseType: !233, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2124, file: !2062, line: 73, baseType: !233, size: 64, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2124, file: !2062, line: 74, baseType: !233, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2124, file: !2062, line: 75, baseType: !233, size: 64, offset: 1152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2124, file: !2062, line: 76, baseType: !233, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2124, file: !2062, line: 77, baseType: !233, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2124, file: !2062, line: 78, baseType: !233, size: 64, offset: 1344)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2124, file: !2062, line: 79, baseType: !542, size: 8, offset: 1408)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2124, file: !2062, line: 80, baseType: !233, size: 64, offset: 1472)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2124, file: !2062, line: 81, baseType: !658, size: 256, offset: 1536)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2124, file: !2062, line: 82, baseType: !556, size: 256, offset: 1792)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2124, file: !2062, line: 84, baseType: !147, size: 32, offset: 2048)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2124, file: !2062, line: 87, baseType: !233, size: 64, offset: 2112)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2124, file: !2062, line: 88, baseType: !233, size: 64, offset: 2176)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2124, file: !2062, line: 89, baseType: !2149, size: 704, offset: 2240)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1327, line: 111, size: 704, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2156}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2149, file: !1327, line: 112, baseType: !1326, size: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2149, file: !1327, line: 113, baseType: !2092, size: 320, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2149, file: !1327, line: 116, baseType: !2154, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1327, line: 18, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2149, file: !1327, line: 117, baseType: !151, size: 32, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2124, file: !2062, line: 90, baseType: !2060, size: 64, offset: 2944)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !265, file: !266, line: 515, baseType: !2159, size: 64, offset: 8064)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2161, line: 117, size: 128, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2160, file: !2161, line: 118, baseType: !783, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2160, file: !2161, line: 119, baseType: !783, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2160, file: !2161, line: 120, baseType: !359, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !265, file: !266, line: 516, baseType: !35, size: 32, offset: 8128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !265, file: !266, line: 519, baseType: !35, size: 32, offset: 8160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !265, file: !266, line: 520, baseType: !2169, size: 64, offset: 8192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !265, file: !266, line: 523, baseType: !2171, size: 64, offset: 8256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !266, line: 523, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !265, file: !266, line: 524, baseType: !35, size: 32, offset: 8320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !265, file: !266, line: 525, baseType: !2176, size: 64, offset: 8384)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2179, line: 28, size: 192, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2178, file: !2179, line: 29, baseType: !188, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2178, file: !2179, line: 30, baseType: !188, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2178, file: !2179, line: 31, baseType: !233, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !265, file: !266, line: 526, baseType: !35, size: 32, offset: 8448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !265, file: !266, line: 533, baseType: !258, size: 64, offset: 8512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !265, file: !266, line: 534, baseType: !35, size: 32, offset: 8576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !265, file: !266, line: 535, baseType: !2188, size: 64, offset: 8640)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !265, file: !266, line: 536, baseType: !35, size: 32, offset: 8704)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !265, file: !266, line: 539, baseType: !151, size: 32, offset: 8736)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !265, file: !266, line: 540, baseType: !2192, size: 64, offset: 8768)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2194, line: 32, size: 64, elements: !2195)
!2194 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2193, file: !2194, line: 33, baseType: !783, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2193, file: !2194, line: 34, baseType: !783, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !265, file: !266, line: 563, baseType: !37, size: 128, offset: 8832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !265, file: !266, line: 565, baseType: !37, size: 128, offset: 8960)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !265, file: !266, line: 568, baseType: !2201, size: 64, offset: 9088)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !265, file: !266, line: 570, baseType: !147, size: 32, offset: 9152)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !19, line: 2382, baseType: !239, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !240, file: !19, line: 2383, baseType: !706, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !240, file: !19, line: 2385, baseType: !2208, offset: 576)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2121, line: 206, elements: !632)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !240, file: !19, line: 2386, baseType: !2208, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !240, file: !19, line: 2387, baseType: !2208, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !240, file: !19, line: 2388, baseType: !2212, offset: 576)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2208, elements: !325)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !240, file: !19, line: 2390, baseType: !2208, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !240, file: !19, line: 2391, baseType: !2208, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !240, file: !19, line: 2392, baseType: !2208, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !240, file: !19, line: 2393, baseType: !2208, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !225, file: !19, line: 1197, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !2221)
!2221 = !{!2222, !2226, !2230, !2231, !2235, !2239, !2243, !2244, !2245, !2249, !2257, !2261, !2262, !2263, !2269, !2273, !2274, !2278, !2279, !2280, !2281, !2285, !2289, !2342, !2357, !2358}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2220, file: !19, line: 2058, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!17, !224}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2220, file: !19, line: 2059, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !17}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2220, file: !19, line: 2060, baseType: !2227, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2220, file: !19, line: 2062, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !17, !151}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2220, file: !19, line: 2063, baseType: !2236, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!151, !17, !1516}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2220, file: !19, line: 2064, baseType: !2240, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!151, !17}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2220, file: !19, line: 2065, baseType: !2227, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2220, file: !19, line: 2066, baseType: !260, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2220, file: !19, line: 2067, baseType: !2246, size: 64, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!151, !224, !151}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2220, file: !19, line: 2068, baseType: !2250, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!151, !224, !2253}
!2253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !35, size: 32, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2256 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2220, file: !19, line: 2069, baseType: !2258, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!151, !224}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2220, file: !19, line: 2070, baseType: !2250, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2220, file: !19, line: 2071, baseType: !2258, size: 64, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2220, file: !19, line: 2072, baseType: !2264, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!151, !63, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2220, file: !19, line: 2073, baseType: !2270, size: 64, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!151, !224, !1992, !213}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2220, file: !19, line: 2074, baseType: !260, size: 64, offset: 960)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2220, file: !19, line: 2076, baseType: !2275, size: 64, offset: 1024)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!151, !1167, !63}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2220, file: !19, line: 2077, baseType: !2275, size: 64, offset: 1088)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2220, file: !19, line: 2078, baseType: !2275, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2220, file: !19, line: 2079, baseType: !2275, size: 64, offset: 1216)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2220, file: !19, line: 2081, baseType: !2282, size: 64, offset: 1280)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!356, !224, !151, !213, !369, !235}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2220, file: !19, line: 2082, baseType: !2286, size: 64, offset: 1344)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!356, !224, !151, !188, !369, !235}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2220, file: !19, line: 2083, baseType: !2290, size: 64, offset: 1408)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2293, !17}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2296, line: 296, size: 1664, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2327, !2328, !2329}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2295, file: !2296, line: 297, baseType: !710, size: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2295, file: !2296, line: 298, baseType: !37, size: 128, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2295, file: !2296, line: 299, baseType: !37, size: 128, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2295, file: !2296, line: 300, baseType: !37, size: 128, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2295, file: !2296, line: 301, baseType: !658, size: 256, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2295, file: !2296, line: 302, baseType: !127, size: 32, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2295, file: !2296, line: 303, baseType: !147, size: 32, offset: 800)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2295, file: !2296, line: 304, baseType: !224, size: 64, offset: 832)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2295, file: !2296, line: 305, baseType: !2307, size: 64, offset: 896)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2296, line: 68, size: 64, elements: !2308)
!2308 = !{!2309, !2321}
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !2296, line: 69, baseType: !2310, size: 32)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2307, file: !2296, line: 69, size: 32, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2310, file: !2296, line: 70, baseType: !27, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2310, file: !2296, line: 71, baseType: !43, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2310, file: !2296, line: 72, baseType: !2315, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2316, line: 24, baseType: !2317)
!2316 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2316, line: 22, size: 32, elements: !2318)
!2318 = !{!2319}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2317, file: !2316, line: 23, baseType: !2320, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2316, line: 20, baseType: !33)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2307, file: !2296, line: 74, baseType: !2322, size: 32, offset: 32)
!2322 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2296, line: 54, baseType: !35, size: 32, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2325 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2326 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2295, file: !2296, line: 306, baseType: !235, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2295, file: !2296, line: 307, baseType: !233, size: 64, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2295, file: !2296, line: 308, baseType: !2330, size: 576, offset: 1088)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2296, line: 205, size: 576, elements: !2331)
!2331 = !{!2332, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2330, file: !2296, line: 206, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2296, line: 66, baseType: !237)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2330, file: !2296, line: 207, baseType: !2333, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2330, file: !2296, line: 208, baseType: !2333, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2330, file: !2296, line: 209, baseType: !2333, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2330, file: !2296, line: 210, baseType: !2333, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2330, file: !2296, line: 211, baseType: !2333, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2330, file: !2296, line: 212, baseType: !2333, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2330, file: !2296, line: 213, baseType: !799, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2330, file: !2296, line: 214, baseType: !799, size: 64, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2220, file: !19, line: 2085, baseType: !2343, size: 64, offset: 1472)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!359, !224, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2348, line: 15, size: 256, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2349 = !{!2350, !2351, !2352, !2353, !2354}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2347, file: !2348, line: 16, baseType: !407, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2347, file: !2348, line: 19, baseType: !151, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2347, file: !2348, line: 26, baseType: !233, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2347, file: !2348, line: 33, baseType: !233, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2347, file: !2348, line: 36, baseType: !2355, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2348, line: 36, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2220, file: !19, line: 2087, baseType: !2343, size: 64, offset: 1536)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2220, file: !19, line: 2089, baseType: !260, size: 64, offset: 1600)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !225, file: !19, line: 1198, baseType: !2360, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2296, line: 324, size: 704, elements: !2363)
!2363 = !{!2364, !2368, !2372, !2376, !2377, !2378, !2379, !2380, !2385, !2390, !2394}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2362, file: !2296, line: 325, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!151, !2294}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2362, file: !2296, line: 326, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2294, !224, !151}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2362, file: !2296, line: 327, baseType: !2373, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2294}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2362, file: !2296, line: 328, baseType: !2365, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2362, file: !2296, line: 329, baseType: !2365, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2362, file: !2296, line: 330, baseType: !2365, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2362, file: !2296, line: 331, baseType: !2246, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2362, file: !2296, line: 334, baseType: !2381, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !17}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2362, file: !2296, line: 335, baseType: !2386, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!151, !17, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2362, file: !2296, line: 337, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!151, !17, !2384}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2362, file: !2296, line: 339, baseType: !2395, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!151, !224, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !225, file: !19, line: 1199, baseType: !2400, size: 64, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2296, line: 430, size: 704, elements: !2403)
!2403 = !{!2404, !2410, !2411, !2415, !2416, !2417, !2432, !2455, !2459, !2460, !2483}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2402, file: !2296, line: 431, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!151, !224, !151, !151, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2402, file: !2296, line: 432, baseType: !2246, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2402, file: !2296, line: 433, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!151, !224, !35}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2402, file: !2296, line: 434, baseType: !2412, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2402, file: !2296, line: 435, baseType: !2246, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2402, file: !2296, line: 436, baseType: !2418, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!151, !224, !151, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2296, line: 417, size: 256, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2422, file: !2296, line: 418, baseType: !151, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2422, file: !2296, line: 419, baseType: !35, size: 32, offset: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2422, file: !2296, line: 420, baseType: !35, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2422, file: !2296, line: 422, baseType: !35, size: 32, offset: 96)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2422, file: !2296, line: 423, baseType: !35, size: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2422, file: !2296, line: 424, baseType: !35, size: 32, offset: 160)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2422, file: !2296, line: 425, baseType: !35, size: 32, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2422, file: !2296, line: 426, baseType: !35, size: 32, offset: 224)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2402, file: !2296, line: 437, baseType: !2433, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!151, !224, !2307, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2296, line: 345, size: 960, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2437, file: !2296, line: 346, baseType: !151, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2437, file: !2296, line: 347, baseType: !103, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2437, file: !2296, line: 348, baseType: !103, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2437, file: !2296, line: 349, baseType: !103, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2437, file: !2296, line: 350, baseType: !103, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2437, file: !2296, line: 351, baseType: !103, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2437, file: !2296, line: 352, baseType: !103, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2437, file: !2296, line: 353, baseType: !420, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2437, file: !2296, line: 355, baseType: !420, size: 64, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2437, file: !2296, line: 356, baseType: !151, size: 32, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2437, file: !2296, line: 357, baseType: !151, size: 32, offset: 608)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2437, file: !2296, line: 358, baseType: !103, size: 64, offset: 640)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2437, file: !2296, line: 359, baseType: !103, size: 64, offset: 704)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2437, file: !2296, line: 360, baseType: !103, size: 64, offset: 768)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2437, file: !2296, line: 361, baseType: !420, size: 64, offset: 832)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2437, file: !2296, line: 362, baseType: !151, size: 32, offset: 896)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2402, file: !2296, line: 438, baseType: !2456, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!151, !224, !2398, !2436}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2402, file: !2296, line: 440, baseType: !2433, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2402, file: !2296, line: 441, baseType: !2461, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!151, !224, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2296, line: 411, size: 1408, elements: !2466)
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2465, file: !2296, line: 412, baseType: !35, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2465, file: !2296, line: 413, baseType: !2469, size: 1344, offset: 64)
!2469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, size: 1344, elements: !325)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2296, line: 397, size: 448, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2482}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2470, file: !2296, line: 398, baseType: !35, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2470, file: !2296, line: 399, baseType: !35, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2470, file: !2296, line: 401, baseType: !35, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2470, file: !2296, line: 402, baseType: !35, size: 32, offset: 96)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2470, file: !2296, line: 403, baseType: !35, size: 32, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2470, file: !2296, line: 404, baseType: !35, size: 32, offset: 160)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2470, file: !2296, line: 405, baseType: !35, size: 32, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2470, file: !2296, line: 406, baseType: !105, size: 64, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2470, file: !2296, line: 407, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !23, line: 132, baseType: !103)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2470, file: !2296, line: 408, baseType: !2481, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2402, file: !2296, line: 442, baseType: !2412, size: 64, offset: 640)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !225, file: !19, line: 1200, baseType: !2485, size: 64, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2487)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !225, file: !19, line: 1201, baseType: !233, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !225, file: !19, line: 1202, baseType: !233, size: 64, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !225, file: !19, line: 1203, baseType: !233, size: 64, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !225, file: !19, line: 1204, baseType: !63, size: 64, offset: 832)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !225, file: !19, line: 1205, baseType: !410, size: 320, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !225, file: !19, line: 1206, baseType: !151, size: 32, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !225, file: !19, line: 1207, baseType: !147, size: 32, offset: 1248)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !225, file: !19, line: 1209, baseType: !258, size: 64, offset: 1280)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !225, file: !19, line: 1211, baseType: !2497, size: 64, offset: 1344)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !225, file: !19, line: 1223, baseType: !2502, size: 64, offset: 1408)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !80, line: 34, size: 64, elements: !2503)
!2503 = !{!2504}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2502, file: !80, line: 35, baseType: !83, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !225, file: !19, line: 1224, baseType: !37, size: 128, offset: 1472)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !225, file: !19, line: 1225, baseType: !2507, size: 64, offset: 1600)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2509, line: 40, size: 7424, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2510 = !{!2511, !2512, !2513, !3352, !3353, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3396, !3397}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2508, file: !2509, line: 41, baseType: !1615, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2508, file: !2509, line: 42, baseType: !1615, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2508, file: !2509, line: 43, baseType: !2514, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1067, line: 128, size: 4544, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2522, !2523, !2524, !2525, !2526, !2710, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3318, !3319, !3320, !3321, !3324, !3325, !3328, !3331, !3332, !3335, !3336, !3337, !3338}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2515, file: !1067, line: 133, baseType: !151, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2515, file: !1067, line: 134, baseType: !151, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2515, file: !1067, line: 135, baseType: !151, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2515, file: !1067, line: 137, baseType: !2521, size: 256, offset: 96)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !113)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2515, file: !1067, line: 139, baseType: !24, size: 16, offset: 352)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2515, file: !1067, line: 140, baseType: !24, size: 16, offset: 368)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2515, file: !1067, line: 142, baseType: !402, size: 128, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2515, file: !1067, line: 143, baseType: !2507, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2515, file: !1067, line: 145, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !1067, line: 1388, size: 1152, elements: !2530)
!2530 = !{!2531, !2622, !2626, !2631, !2635, !2639, !2640, !2644, !2645, !2651, !2655, !2656, !2660, !2686, !2691, !2701, !2702, !2706}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2529, file: !1067, line: 1389, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2509, line: 265, size: 960, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2542, !2543, !2544, !2546, !2547, !2554, !2556, !2559, !2560, !2563, !2567, !2568, !2570, !2571, !2572, !2573, !2575, !2620}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2536, file: !2509, line: 266, baseType: !2535, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2536, file: !2509, line: 267, baseType: !2507, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2536, file: !2509, line: 268, baseType: !2541, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2509, line: 256, baseType: !99)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2536, file: !2509, line: 271, baseType: !24, size: 16, offset: 160)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2536, file: !2509, line: 272, baseType: !24, size: 16, offset: 176)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2536, file: !2509, line: 273, baseType: !2545, size: 8, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2509, line: 97, baseType: !156)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2536, file: !2509, line: 274, baseType: !147, size: 32, offset: 224)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2536, file: !2509, line: 276, baseType: !2548, size: 160, align: 32, offset: 256)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1046, line: 77, size: 160, align: 32, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2548, file: !1046, line: 78, baseType: !1615, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2548, file: !1046, line: 80, baseType: !35, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2548, file: !1046, line: 82, baseType: !35, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2548, file: !1046, line: 84, baseType: !35, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2536, file: !2509, line: 278, baseType: !2555, size: 32, offset: 416)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2509, line: 258, baseType: !35)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2536, file: !2509, line: 279, baseType: !2557, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2509, line: 20, baseType: !2533)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2536, file: !2509, line: 280, baseType: !258, size: 64, offset: 512)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2536, file: !2509, line: 288, baseType: !2561, size: 64, offset: 576)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2509, line: 288, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2536, file: !2509, line: 289, baseType: !2564, size: 64, offset: 640)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2509, line: 228, size: 64, elements: !2565)
!2565 = !{!2566}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2564, file: !2509, line: 229, baseType: !103, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2536, file: !2509, line: 291, baseType: !103, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !2509, line: 299, baseType: !2569, offset: 768)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2536, file: !2509, line: 299, elements: !632)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2536, file: !2509, line: 305, baseType: !24, size: 16, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2536, file: !2509, line: 311, baseType: !24, size: 16, offset: 784)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2536, file: !2509, line: 313, baseType: !147, size: 32, offset: 800)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2536, file: !2509, line: 315, baseType: !2574, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2536, file: !2509, line: 317, baseType: !2576, size: 64, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2578, line: 678, size: 1984, elements: !2579)
!2578 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2579 = !{!2580, !2584, !2585, !2588, !2609, !2610, !2611, !2612, !2617, !2618, !2619}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2577, file: !2578, line: 679, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2583, line: 325, flags: DIFlagFwdDecl)
!2583 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2577, file: !2578, line: 680, baseType: !35, size: 32, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2577, file: !2578, line: 685, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2578, line: 685, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2577, file: !2578, line: 687, baseType: !2589, size: 576, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2590, line: 26, baseType: !2591)
!2590 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2590, line: 16, size: 576, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2603, !2608}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2591, file: !2590, line: 17, baseType: !127, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2591, file: !2590, line: 18, baseType: !151, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2591, file: !2590, line: 19, baseType: !151, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2591, file: !2590, line: 20, baseType: !1158, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2591, file: !2590, line: 22, baseType: !258, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2591, file: !2590, line: 23, baseType: !2599, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2590, line: 13, baseType: !2601)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!258, !407, !258}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2591, file: !2590, line: 24, baseType: !2604, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2590, line: 14, baseType: !2606)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !258, !258}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2591, file: !2590, line: 25, baseType: !719, size: 192, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2577, file: !2578, line: 688, baseType: !2589, size: 576, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2577, file: !2578, line: 694, baseType: !35, size: 32, offset: 1344)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2577, file: !2578, line: 699, baseType: !127, size: 32, offset: 1376)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2577, file: !2578, line: 700, baseType: !2613, size: 128, offset: 1408)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2578, line: 550, size: 128, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2613, file: !2578, line: 551, baseType: !2535, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2613, file: !2578, line: 552, baseType: !2535, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2577, file: !2578, line: 701, baseType: !1326, size: 256, offset: 1536)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2577, file: !2578, line: 702, baseType: !2154, size: 64, offset: 1792)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2577, file: !2578, line: 707, baseType: !710, size: 128, offset: 1856)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2536, file: !2509, line: 324, baseType: !2621, offset: 960)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, elements: !734)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2529, file: !1067, line: 1390, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!151, !2535, !1065, !35}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2529, file: !1067, line: 1392, baseType: !2627, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!151, !2514, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !1067, line: 115, baseType: !35)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2529, file: !1067, line: 1393, baseType: !2632, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !2514}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2529, file: !1067, line: 1394, baseType: !2636, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!151, !2507, !2630, !35, !233}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2529, file: !1067, line: 1396, baseType: !2636, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2529, file: !1067, line: 1398, baseType: !2641, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!35, !2514, !35}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2529, file: !1067, line: 1400, baseType: !2632, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2529, file: !1067, line: 1401, baseType: !2646, size: 64, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!151, !2507, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !19, line: 56, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2529, file: !1067, line: 1402, baseType: !2652, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!151, !2507, !542}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2529, file: !1067, line: 1403, baseType: !2632, size: 64, offset: 640)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2529, file: !1067, line: 1405, baseType: !2657, size: 64, offset: 704)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !2507, !233}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2529, file: !1067, line: 1406, baseType: !2661, size: 64, offset: 768)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!151, !2514, !1615, !35, !2664, !258}
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !1067, line: 342, baseType: !2665)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!151, !2668, !35, !258}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2670, line: 106, size: 512, elements: !2671)
!2670 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2681, !2682}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2669, file: !2670, line: 107, baseType: !104, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2669, file: !2670, line: 108, baseType: !104, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2669, file: !2670, line: 109, baseType: !104, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2669, file: !2670, line: 110, baseType: !157, size: 8, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2669, file: !2670, line: 111, baseType: !157, size: 8, offset: 200)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2669, file: !2670, line: 112, baseType: !157, size: 8, offset: 208)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2669, file: !2670, line: 113, baseType: !157, size: 8, offset: 216)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2669, file: !2670, line: 114, baseType: !2680, size: 32, offset: 224)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 32, elements: !715)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2669, file: !2670, line: 115, baseType: !104, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2669, file: !2670, line: 116, baseType: !2683, size: 192, offset: 320)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 192, elements: !2684)
!2684 = !{!2685}
!2685 = !DISubrange(count: 24)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2529, file: !1067, line: 1408, baseType: !2687, size: 64, offset: 832)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!213, !2514, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2529, file: !1067, line: 1410, baseType: !2692, size: 64, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!151, !2514, !2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !1067, line: 1381, baseType: !35, size: 32, elements: !2697)
!2697 = !{!2698, !2699, !2700}
!2698 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!2699 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!2700 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2529, file: !1067, line: 1412, baseType: !264, size: 64, offset: 960)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2529, file: !1067, line: 1413, baseType: !2703, size: 64, offset: 1024)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !1067, line: 37, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2529, file: !1067, line: 1420, baseType: !2707, size: 64, offset: 1088)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!151, !2514, !1663}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2515, file: !1067, line: 146, baseType: !2711, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1067, line: 391, size: 7296, elements: !2713)
!2713 = !{!2714, !2715, !2718, !2719, !2722, !2725, !2726, !2730, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3229, !3230, !3234, !3235, !3236, !3237, !3279, !3280, !3281, !3284, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3303, !3304, !3305, !3306, !3307, !3308}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2712, file: !1067, line: 392, baseType: !1070, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2712, file: !1067, line: 393, baseType: !2716, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !1067, line: 30, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2712, file: !1067, line: 395, baseType: !525, size: 128, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2712, file: !1067, line: 397, baseType: !2720, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !1067, line: 39, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2712, file: !1067, line: 398, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !1067, line: 38, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2712, file: !1067, line: 399, baseType: !658, size: 256, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2712, file: !1067, line: 401, baseType: !2727, size: 64, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !1067, line: 401, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2712, file: !1067, line: 404, baseType: !2731, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !1067, line: 404, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2712, file: !1067, line: 406, baseType: !35, size: 32, offset: 768)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2712, file: !1067, line: 409, baseType: !402, size: 128, offset: 832)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2712, file: !1067, line: 410, baseType: !35, size: 32, offset: 960)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2712, file: !1067, line: 416, baseType: !258, size: 64, offset: 1024)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2712, file: !1067, line: 421, baseType: !233, size: 64, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2712, file: !1067, line: 426, baseType: !147, size: 32, offset: 1152)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2712, file: !1067, line: 432, baseType: !151, size: 32, offset: 1184)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2712, file: !1067, line: 434, baseType: !127, size: 32, offset: 1216)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2712, file: !1067, line: 436, baseType: !2514, size: 64, offset: 1280)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2712, file: !1067, line: 438, baseType: !697, size: 32, offset: 1344)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2712, file: !1067, line: 443, baseType: !290, size: 64, offset: 1408)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2712, file: !1067, line: 450, baseType: !2745, size: 64, offset: 1472)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2747, line: 705, size: 5824, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2748 = !{!2749, !2750, !2751, !2754, !2755, !2808, !2884, !2885, !2886, !2887, !2888, !2901, !3080, !3093, !3103, !3107, !3109, !3110, !3111, !3115, !3122, !3123, !3126, !3129, !3133, !3136, !3137, !3138, !3139, !3140, !3141, !3171, !3172, !3173, !3176, !3179, !3207, !3214, !3215, !3216, !3217, !3218}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2746, file: !2747, line: 706, baseType: !284, size: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2746, file: !2747, line: 707, baseType: !2745, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2746, file: !2747, line: 709, baseType: !2752, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2747, line: 37, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2746, file: !2747, line: 711, baseType: !188, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2746, file: !2747, line: 712, baseType: !2756, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2747, line: 89, size: 384, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2768, !2772, !2776}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2758, file: !2747, line: 90, baseType: !188, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2758, file: !2747, line: 91, baseType: !373, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2758, file: !2747, line: 92, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!151, !2766, !320}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2746)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2758, file: !2747, line: 93, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!213, !2766, !2690, !1733, !1734}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2758, file: !2747, line: 95, baseType: !2773, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2745}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2758, file: !2747, line: 97, baseType: !2777, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2780, line: 286, size: 1472, elements: !2781)
!2780 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2781 = !{!2782, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2779, file: !2780, line: 287, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!151, !2745}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2779, file: !2780, line: 288, baseType: !2773, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2779, file: !2780, line: 289, baseType: !2783, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2779, file: !2780, line: 290, baseType: !2783, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2779, file: !2780, line: 291, baseType: !2783, size: 64, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2779, file: !2780, line: 292, baseType: !2783, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2779, file: !2780, line: 293, baseType: !2783, size: 64, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2779, file: !2780, line: 294, baseType: !2783, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2779, file: !2780, line: 295, baseType: !2783, size: 64, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2779, file: !2780, line: 296, baseType: !2783, size: 64, offset: 576)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2779, file: !2780, line: 297, baseType: !2783, size: 64, offset: 640)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2779, file: !2780, line: 298, baseType: !2783, size: 64, offset: 704)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2779, file: !2780, line: 299, baseType: !2783, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2779, file: !2780, line: 300, baseType: !2783, size: 64, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2779, file: !2780, line: 301, baseType: !2783, size: 64, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2779, file: !2780, line: 302, baseType: !2783, size: 64, offset: 960)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2779, file: !2780, line: 303, baseType: !2783, size: 64, offset: 1024)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2779, file: !2780, line: 304, baseType: !2783, size: 64, offset: 1088)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2779, file: !2780, line: 305, baseType: !2783, size: 64, offset: 1152)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2779, file: !2780, line: 306, baseType: !2783, size: 64, offset: 1216)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2779, file: !2780, line: 307, baseType: !2783, size: 64, offset: 1280)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2779, file: !2780, line: 308, baseType: !2783, size: 64, offset: 1344)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2779, file: !2780, line: 309, baseType: !2783, size: 64, offset: 1408)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2746, file: !2747, line: 714, baseType: !2809, size: 64, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2812, line: 80, size: 1344, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2883}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2811, file: !2812, line: 81, baseType: !188, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2811, file: !2812, line: 82, baseType: !188, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2811, file: !2812, line: 83, baseType: !373, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2811, file: !2812, line: 84, baseType: !373, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2811, file: !2812, line: 85, baseType: !373, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2811, file: !2812, line: 87, baseType: !2820, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!151, !2745, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2825, line: 96, size: 1152, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2838, !2842, !2846, !2847, !2848, !2849, !2850, !2858, !2859, !2860, !2861, !2862, !2863}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2824, file: !2825, line: 97, baseType: !188, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2824, file: !2825, line: 98, baseType: !2809, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2824, file: !2825, line: 100, baseType: !264, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2824, file: !2825, line: 101, baseType: !188, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2824, file: !2825, line: 103, baseType: !542, size: 8, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2824, file: !2825, line: 104, baseType: !2833, size: 32, offset: 288)
!2833 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2825, line: 45, baseType: !35, size: 32, elements: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2836 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2837 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2824, file: !2825, line: 106, baseType: !2839, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2825, line: 106, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2824, file: !2825, line: 107, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2845)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2825, line: 107, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2824, file: !2825, line: 109, baseType: !2783, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2824, file: !2825, line: 110, baseType: !2773, size: 64, offset: 512)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2824, file: !2825, line: 111, baseType: !2783, size: 64, offset: 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2824, file: !2825, line: 112, baseType: !2773, size: 64, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2824, file: !2825, line: 113, baseType: !2851, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!151, !2745, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2780, line: 60, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2780, line: 58, size: 32, elements: !2856)
!2856 = !{!2857}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2855, file: !2780, line: 59, baseType: !151, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2824, file: !2825, line: 114, baseType: !2783, size: 64, offset: 768)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2824, file: !2825, line: 115, baseType: !373, size: 64, offset: 832)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2824, file: !2825, line: 116, baseType: !373, size: 64, offset: 896)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2824, file: !2825, line: 118, baseType: !2777, size: 64, offset: 960)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2824, file: !2825, line: 119, baseType: !2773, size: 64, offset: 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2824, file: !2825, line: 121, baseType: !2864, size: 64, offset: 1088)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2825, line: 121, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2811, file: !2812, line: 88, baseType: !2763, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2811, file: !2812, line: 89, baseType: !2783, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2811, file: !2812, line: 90, baseType: !2773, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2811, file: !2812, line: 91, baseType: !2773, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2811, file: !2812, line: 92, baseType: !2773, size: 64, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2811, file: !2812, line: 94, baseType: !2783, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2811, file: !2812, line: 95, baseType: !2783, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2811, file: !2812, line: 97, baseType: !2851, size: 64, offset: 832)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2811, file: !2812, line: 98, baseType: !2783, size: 64, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2811, file: !2812, line: 100, baseType: !2783, size: 64, offset: 960)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2811, file: !2812, line: 102, baseType: !2783, size: 64, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2811, file: !2812, line: 103, baseType: !2773, size: 64, offset: 1088)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2811, file: !2812, line: 105, baseType: !2777, size: 64, offset: 1152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2811, file: !2812, line: 107, baseType: !2880, size: 64, offset: 1216)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2812, line: 107, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2811, file: !2812, line: 109, baseType: !542, size: 8, offset: 1280)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2746, file: !2747, line: 715, baseType: !2823, size: 64, offset: 832)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2746, file: !2747, line: 717, baseType: !258, size: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2746, file: !2747, line: 719, baseType: !258, size: 64, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2746, file: !2747, line: 721, baseType: !658, size: 256, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2746, file: !2747, line: 725, baseType: !2889, size: 448, offset: 1280)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2747, line: 517, size: 448, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2889, file: !2747, line: 518, baseType: !37, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2889, file: !2747, line: 519, baseType: !37, size: 128, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2889, file: !2747, line: 520, baseType: !37, size: 128, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2889, file: !2747, line: 521, baseType: !2895, size: 32, offset: 384)
!2895 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2747, line: 487, baseType: !35, size: 32, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2898 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2899 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2900 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2746, file: !2747, line: 726, baseType: !2902, size: 2496, offset: 1728)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2780, line: 663, size: 2496, elements: !2903)
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2948, !2949, !2950, !2951, !2952, !2953, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3052, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3073, !3077}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2902, file: !2780, line: 664, baseType: !2854, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2902, file: !2780, line: 665, baseType: !35, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2902, file: !2780, line: 666, baseType: !35, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2902, file: !2780, line: 667, baseType: !542, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2902, file: !2780, line: 668, baseType: !542, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2902, file: !2780, line: 669, baseType: !542, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2902, file: !2780, line: 670, baseType: !542, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2902, file: !2780, line: 671, baseType: !542, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2902, file: !2780, line: 672, baseType: !542, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2902, file: !2780, line: 673, baseType: !542, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2902, file: !2780, line: 674, baseType: !542, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2902, file: !2780, line: 675, baseType: !97, size: 32, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2902, file: !2780, line: 676, baseType: !127, size: 32, offset: 96)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2902, file: !2780, line: 678, baseType: !37, size: 128, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2902, file: !2780, line: 679, baseType: !556, size: 256, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2902, file: !2780, line: 680, baseType: !2920, size: 64, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2922, line: 43, size: 1536, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2931, !2932, !2933, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2921, file: !2922, line: 44, baseType: !188, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2921, file: !2922, line: 45, baseType: !151, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2921, file: !2922, line: 46, baseType: !37, size: 128, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2921, file: !2922, line: 47, baseType: !127, size: 32, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2921, file: !2922, line: 48, baseType: !2929, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2780, line: 629, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2921, file: !2922, line: 49, baseType: !2092, size: 320, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2921, file: !2922, line: 50, baseType: !233, size: 64, offset: 704)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2921, file: !2922, line: 51, baseType: !2934, size: 64, offset: 768)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2935, line: 29, baseType: !420)
!2935 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2921, file: !2922, line: 52, baseType: !2934, size: 64, offset: 832)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2921, file: !2922, line: 53, baseType: !2934, size: 64, offset: 896)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2921, file: !2922, line: 54, baseType: !2934, size: 64, offset: 960)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2921, file: !2922, line: 55, baseType: !2934, size: 64, offset: 1024)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2921, file: !2922, line: 56, baseType: !233, size: 64, offset: 1088)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2921, file: !2922, line: 57, baseType: !233, size: 64, offset: 1152)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2921, file: !2922, line: 58, baseType: !233, size: 64, offset: 1216)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2921, file: !2922, line: 59, baseType: !233, size: 64, offset: 1280)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2921, file: !2922, line: 60, baseType: !233, size: 64, offset: 1344)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2921, file: !2922, line: 61, baseType: !2745, size: 64, offset: 1408)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2921, file: !2922, line: 62, baseType: !542, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2921, file: !2922, line: 63, baseType: !542, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2902, file: !2780, line: 681, baseType: !542, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2902, file: !2780, line: 682, baseType: !542, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2902, file: !2780, line: 683, baseType: !542, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2902, file: !2780, line: 684, baseType: !35, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2902, file: !2780, line: 685, baseType: !35, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2902, file: !2780, line: 690, baseType: !2954, size: 512, offset: 640)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2955, line: 118, size: 512, elements: !2956)
!2955 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2956 = !{!2957, !2963, !2964, !2973, !3021, !3022, !3023, !3024}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2954, file: !2955, line: 119, baseType: !2958, size: 256)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2959, line: 9, size: 256, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2958, file: !2959, line: 10, baseType: !442, size: 192, align: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2958, file: !2959, line: 11, baseType: !2934, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2954, file: !2955, line: 120, baseType: !2934, size: 64, offset: 256)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2954, file: !2955, line: 121, baseType: !2965, size: 64, offset: 320)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!2968, !2972}
!2968 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2955, line: 65, baseType: !35, size: 32, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2971 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2954, file: !2955, line: 122, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2955, line: 159, size: 512, align: 512, elements: !2976)
!2976 = !{!2977, !3002, !3003, !3006, !3011, !3012, !3016, !3020}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2975, file: !2955, line: 160, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2955, line: 215, size: 4608, align: 512, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2979, file: !2955, line: 216, baseType: !429, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2979, file: !2955, line: 217, baseType: !35, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2979, file: !2955, line: 218, baseType: !35, size: 32, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2979, file: !2955, line: 219, baseType: !35, size: 32, offset: 96)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2979, file: !2955, line: 220, baseType: !35, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2979, file: !2955, line: 221, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2979, file: !2955, line: 222, baseType: !35, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2979, file: !2955, line: 223, baseType: !35, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2979, file: !2955, line: 224, baseType: !35, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2979, file: !2955, line: 226, baseType: !35, size: 32, offset: 160)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2979, file: !2955, line: 227, baseType: !24, size: 16, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2979, file: !2955, line: 228, baseType: !24, size: 16, offset: 208)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2979, file: !2955, line: 229, baseType: !35, size: 32, offset: 224)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2979, file: !2955, line: 235, baseType: !2934, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2979, file: !2955, line: 236, baseType: !2972, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2979, file: !2955, line: 237, baseType: !2934, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2979, file: !2955, line: 238, baseType: !2972, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2979, file: !2955, line: 239, baseType: !2999, size: 4096, align: 512, offset: 512)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2975, size: 4096, align: 512, elements: !3000)
!3000 = !{!3001}
!3001 = !DISubrange(count: 8)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2975, file: !2955, line: 161, baseType: !35, size: 32, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2975, file: !2955, line: 162, baseType: !3004, size: 32, offset: 96)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !23, line: 32, baseType: !3005)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !34, line: 96, baseType: !151)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2975, file: !2955, line: 163, baseType: !3007, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !70, line: 274, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !70, line: 274, size: 32, elements: !3009)
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3008, file: !70, line: 274, baseType: !74, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2975, file: !2955, line: 164, baseType: !2972, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2975, file: !2955, line: 165, baseType: !3013, size: 128, offset: 256)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2959, line: 14, size: 128, elements: !3014)
!3014 = !{!3015}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3013, file: !2959, line: 15, baseType: !434, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2975, file: !2955, line: 166, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!2934}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2975, file: !2955, line: 167, baseType: !2934, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2954, file: !2955, line: 123, baseType: !156, size: 8, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2954, file: !2955, line: 124, baseType: !156, size: 8, offset: 456)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2954, file: !2955, line: 125, baseType: !156, size: 8, offset: 464)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2954, file: !2955, line: 126, baseType: !156, size: 8, offset: 472)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2902, file: !2780, line: 691, baseType: !103, size: 64, offset: 1152)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2902, file: !2780, line: 692, baseType: !1326, size: 256, offset: 1216)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2902, file: !2780, line: 693, baseType: !719, size: 192, offset: 1472)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2902, file: !2780, line: 694, baseType: !2929, size: 64, offset: 1664)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2902, file: !2780, line: 695, baseType: !147, size: 32, offset: 1728)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2902, file: !2780, line: 696, baseType: !147, size: 32, offset: 1760)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2902, file: !2780, line: 697, baseType: !35, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2902, file: !2780, line: 698, baseType: !35, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2902, file: !2780, line: 699, baseType: !35, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2902, file: !2780, line: 700, baseType: !35, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2902, file: !2780, line: 701, baseType: !35, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2902, file: !2780, line: 702, baseType: !35, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2902, file: !2780, line: 703, baseType: !542, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2902, file: !2780, line: 704, baseType: !35, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2902, file: !2780, line: 705, baseType: !35, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2902, file: !2780, line: 706, baseType: !35, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2902, file: !2780, line: 707, baseType: !35, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2902, file: !2780, line: 708, baseType: !35, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2902, file: !2780, line: 709, baseType: !35, size: 32, offset: 1824)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2902, file: !2780, line: 710, baseType: !3045, size: 32, offset: 1856)
!3045 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2780, line: 620, baseType: !35, size: 32, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051}
!3047 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!3048 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!3049 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!3050 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!3051 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2902, file: !2780, line: 711, baseType: !3053, size: 32, offset: 1888)
!3053 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2780, line: 597, baseType: !151, size: 32, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058, !3059}
!3055 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!3056 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!3057 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!3058 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!3059 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2902, file: !2780, line: 712, baseType: !3053, size: 32, offset: 1920)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2902, file: !2780, line: 713, baseType: !151, size: 32, offset: 1952)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2902, file: !2780, line: 714, baseType: !151, size: 32, offset: 1984)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2902, file: !2780, line: 715, baseType: !103, size: 64, offset: 2048)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2902, file: !2780, line: 716, baseType: !103, size: 64, offset: 2112)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2902, file: !2780, line: 717, baseType: !103, size: 64, offset: 2176)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2902, file: !2780, line: 718, baseType: !103, size: 64, offset: 2240)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2902, file: !2780, line: 720, baseType: !3068, size: 64, offset: 2304)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2780, line: 632, size: 64, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3069, file: !2780, line: 633, baseType: !127, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3069, file: !2780, line: 634, baseType: !35, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2902, file: !2780, line: 721, baseType: !3074, size: 64, offset: 2368)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !2745, !783}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2902, file: !2780, line: 722, baseType: !3078, size: 64, offset: 2432)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2780, line: 722, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2746, file: !2747, line: 727, baseType: !3081, size: 64, offset: 4224)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2780, line: 742, size: 1792, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3090, !3091, !3092}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3082, file: !2780, line: 743, baseType: !2779, size: 1472)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3082, file: !2780, line: 744, baseType: !2783, size: 64, offset: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3082, file: !2780, line: 745, baseType: !3087, size: 64, offset: 1536)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !2745, !542}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3082, file: !2780, line: 746, baseType: !2783, size: 64, offset: 1600)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3082, file: !2780, line: 747, baseType: !2773, size: 64, offset: 1664)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3082, file: !2780, line: 748, baseType: !2773, size: 64, offset: 1728)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2746, file: !2747, line: 736, baseType: !3094, size: 128, offset: 4288)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2747, line: 529, size: 128, elements: !3095)
!3095 = !{!3096, !3100}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3094, file: !2747, line: 531, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3099, line: 13, flags: DIFlagFwdDecl)
!3099 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3094, file: !2747, line: 532, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2747, line: 49, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2746, file: !2747, line: 738, baseType: !3104, size: 64, offset: 4416)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3106)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2747, line: 738, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2746, file: !2747, line: 740, baseType: !3108, size: 64, offset: 4480)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2746, file: !2747, line: 741, baseType: !103, size: 64, offset: 4544)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2746, file: !2747, line: 746, baseType: !103, size: 64, offset: 4608)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2746, file: !2747, line: 747, baseType: !3112, size: 64, offset: 4672)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3114)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2747, line: 747, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2746, file: !2747, line: 749, baseType: !3116, size: 64, offset: 4736)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2747, line: 428, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3117, file: !2747, line: 433, baseType: !35, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3117, file: !2747, line: 434, baseType: !35, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3117, file: !2747, line: 435, baseType: !233, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2746, file: !2747, line: 751, baseType: !37, size: 128, offset: 4800)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2746, file: !2747, line: 762, baseType: !3124, size: 64, offset: 4928)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2747, line: 762, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2746, file: !2747, line: 770, baseType: !3127, offset: 4992)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3128, line: 5, elements: !632)
!3128 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2746, file: !2747, line: 772, baseType: !3130, size: 64, offset: 4992)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3132, line: 18, flags: DIFlagFwdDecl)
!3132 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2746, file: !2747, line: 773, baseType: !3134, size: 64, offset: 5056)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2812, line: 22, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2746, file: !2747, line: 776, baseType: !151, size: 32, offset: 5120)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2746, file: !2747, line: 778, baseType: !229, size: 32, offset: 5152)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2746, file: !2747, line: 779, baseType: !97, size: 32, offset: 5184)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2746, file: !2747, line: 781, baseType: !127, size: 32, offset: 5216)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2746, file: !2747, line: 782, baseType: !37, size: 128, offset: 5248)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2746, file: !2747, line: 784, baseType: !3142, size: 64, offset: 5376)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3144)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3145, line: 52, size: 768, elements: !3146)
!3145 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3155, !3159, !3160, !3161, !3162, !3166, !3170}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3144, file: !3145, line: 53, baseType: !188, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3144, file: !3145, line: 55, baseType: !373, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3144, file: !3145, line: 56, baseType: !373, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3144, file: !3145, line: 58, baseType: !2763, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3144, file: !3145, line: 59, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!213, !2766, !2690}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3144, file: !3145, line: 61, baseType: !3156, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3142}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3144, file: !3145, line: 62, baseType: !2773, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3144, file: !3145, line: 64, baseType: !2783, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3144, file: !3145, line: 66, baseType: !1692, size: 64, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3144, file: !3145, line: 67, baseType: !3163, size: 64, offset: 576)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!1286, !2766}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3144, file: !3145, line: 69, baseType: !3167, size: 64, offset: 640)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !2766, !1733, !1734}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3144, file: !3145, line: 71, baseType: !2777, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2746, file: !2747, line: 785, baseType: !373, size: 64, offset: 5440)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2746, file: !2747, line: 787, baseType: !2773, size: 64, offset: 5504)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2746, file: !2747, line: 788, baseType: !3174, size: 64, offset: 5568)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2747, line: 46, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2746, file: !2747, line: 789, baseType: !3177, size: 64, offset: 5632)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2747, line: 48, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2746, file: !2747, line: 791, baseType: !3180, size: 64, offset: 5696)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2747, line: 597, size: 128, elements: !3182)
!3182 = !{!3183, !3193, !3199, !3205, !3206}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3181, file: !2747, line: 598, baseType: !3184, size: 32)
!3184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2747, line: 547, baseType: !35, size: 32, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191, !3192}
!3186 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3187 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3188 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3189 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3190 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3191 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3192 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3181, file: !2747, line: 599, baseType: !3194, size: 32, offset: 32)
!3194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2747, line: 564, baseType: !35, size: 32, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3197 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3198 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3181, file: !2747, line: 600, baseType: !3200, size: 32, offset: 64)
!3200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2747, line: 577, baseType: !35, size: 32, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3203 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3204 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3181, file: !2747, line: 601, baseType: !542, size: 8, offset: 96)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3181, file: !2747, line: 602, baseType: !542, size: 8, offset: 104)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2746, file: !2747, line: 793, baseType: !3208, size: 32, offset: 5760)
!3208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2747, line: 503, baseType: !35, size: 32, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213}
!3210 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3211 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3212 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3213 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2746, file: !2747, line: 795, baseType: !542, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2746, file: !2747, line: 796, baseType: !542, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2746, file: !2747, line: 797, baseType: !542, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2746, file: !2747, line: 798, baseType: !542, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2746, file: !2747, line: 799, baseType: !542, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2712, file: !1067, line: 451, baseType: !3053, size: 32, offset: 1536)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2712, file: !1067, line: 457, baseType: !233, size: 64, offset: 1600)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2712, file: !1067, line: 459, baseType: !35, size: 32, offset: 1664)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2712, file: !1067, line: 466, baseType: !35, size: 32, offset: 1696)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2712, file: !1067, line: 468, baseType: !2092, size: 320, offset: 1728)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2712, file: !1067, line: 469, baseType: !1326, size: 256, offset: 2048)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2712, file: !1067, line: 471, baseType: !147, size: 32, offset: 2304)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2712, file: !1067, line: 473, baseType: !3227, size: 64, offset: 2368)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !1067, line: 473, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2712, file: !1067, line: 475, baseType: !37, size: 128, offset: 2432)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2712, file: !1067, line: 477, baseType: !3231, size: 64, offset: 2560)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !3232)
!3232 = !{!3233}
!3233 = !DISubrange(count: 1)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2712, file: !1067, line: 478, baseType: !2561, size: 64, offset: 2624)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2712, file: !1067, line: 479, baseType: !37, size: 128, offset: 2688)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2712, file: !1067, line: 480, baseType: !658, size: 256, offset: 2816)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2712, file: !1067, line: 483, baseType: !3238, size: 960, offset: 3072)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !1067, line: 300, size: 960, elements: !3239)
!3239 = !{!3240, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3278}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3238, file: !1067, line: 301, baseType: !3241, size: 32)
!3241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !1067, line: 295, baseType: !35, size: 32, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!3244 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3238, file: !1067, line: 302, baseType: !233, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3238, file: !1067, line: 303, baseType: !233, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3238, file: !1067, line: 305, baseType: !35, size: 32, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3238, file: !1067, line: 306, baseType: !35, size: 32, offset: 224)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3238, file: !1067, line: 307, baseType: !35, size: 32, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3238, file: !1067, line: 308, baseType: !35, size: 32, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3238, file: !1067, line: 309, baseType: !35, size: 32, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3238, file: !1067, line: 310, baseType: !35, size: 32, offset: 352)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3238, file: !1067, line: 311, baseType: !35, size: 32, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3238, file: !1067, line: 312, baseType: !35, size: 32, offset: 416)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3238, file: !1067, line: 313, baseType: !35, size: 32, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3238, file: !1067, line: 314, baseType: !35, size: 32, offset: 480)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3238, file: !1067, line: 315, baseType: !35, size: 32, offset: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3238, file: !1067, line: 316, baseType: !35, size: 32, offset: 544)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3238, file: !1067, line: 317, baseType: !35, size: 32, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3238, file: !1067, line: 318, baseType: !35, size: 32, offset: 608)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3238, file: !1067, line: 319, baseType: !35, size: 32, offset: 640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3238, file: !1067, line: 320, baseType: !35, size: 32, offset: 672)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3238, file: !1067, line: 321, baseType: !35, size: 32, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3238, file: !1067, line: 322, baseType: !35, size: 32, offset: 736)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3238, file: !1067, line: 323, baseType: !35, size: 32, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3238, file: !1067, line: 325, baseType: !24, size: 16, offset: 800)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3238, file: !1067, line: 326, baseType: !24, size: 16, offset: 816)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3238, file: !1067, line: 327, baseType: !24, size: 16, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3238, file: !1067, line: 329, baseType: !109, size: 8, offset: 848)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3238, file: !1067, line: 330, baseType: !109, size: 8, offset: 856)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3238, file: !1067, line: 331, baseType: !109, size: 8, offset: 864)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3238, file: !1067, line: 332, baseType: !3273, size: 32, offset: 896)
!3273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !1067, line: 285, baseType: !35, size: 32, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!3276 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!3277 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3238, file: !1067, line: 339, baseType: !35, size: 32, offset: 928)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2712, file: !1067, line: 485, baseType: !35, size: 32, offset: 4032)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2712, file: !1067, line: 487, baseType: !151, size: 32, offset: 4064)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2712, file: !1067, line: 489, baseType: !3282, size: 64, offset: 4096)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !1067, line: 31, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2712, file: !1067, line: 494, baseType: !3285, size: 64, offset: 4160)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !1067, line: 35, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2712, file: !1067, line: 495, baseType: !37, size: 128, offset: 4224)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2712, file: !1067, line: 497, baseType: !37, size: 128, offset: 4352)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2712, file: !1067, line: 498, baseType: !127, size: 32, offset: 4480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2712, file: !1067, line: 499, baseType: !2149, size: 704, offset: 4544)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2712, file: !1067, line: 501, baseType: !658, size: 256, offset: 5248)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2712, file: !1067, line: 502, baseType: !658, size: 256, offset: 5504)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2712, file: !1067, line: 508, baseType: !37, size: 128, offset: 5760)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2712, file: !1067, line: 509, baseType: !127, size: 32, offset: 5888)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2712, file: !1067, line: 511, baseType: !151, size: 32, offset: 5920)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2712, file: !1067, line: 517, baseType: !546, size: 128, align: 64, offset: 5952)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2712, file: !1067, line: 518, baseType: !719, size: 192, offset: 6080)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2712, file: !1067, line: 523, baseType: !658, size: 256, offset: 6272)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2712, file: !1067, line: 525, baseType: !151, size: 32, offset: 6528)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2712, file: !1067, line: 527, baseType: !3301, size: 64, offset: 6592)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !1067, line: 527, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2712, file: !1067, line: 528, baseType: !37, size: 128, offset: 6656)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2712, file: !1067, line: 530, baseType: !63, size: 64, offset: 6784)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2712, file: !1067, line: 531, baseType: !63, size: 64, offset: 6848)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2712, file: !1067, line: 532, baseType: !63, size: 64, offset: 6912)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2712, file: !1067, line: 536, baseType: !658, size: 256, offset: 6976)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2712, file: !1067, line: 538, baseType: !542, size: 8, offset: 7232)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2515, file: !1067, line: 147, baseType: !258, size: 64, offset: 704)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2515, file: !1067, line: 149, baseType: !2577, size: 1984, offset: 768)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2515, file: !1067, line: 151, baseType: !151, size: 32, offset: 2752)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2515, file: !1067, line: 152, baseType: !233, size: 64, offset: 2816)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2515, file: !1067, line: 161, baseType: !658, size: 256, offset: 2880)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2515, file: !1067, line: 162, baseType: !35, size: 32, offset: 3136)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2515, file: !1067, line: 164, baseType: !3316, size: 64, offset: 3200)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !19, line: 50, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2515, file: !1067, line: 165, baseType: !284, size: 512, offset: 3264)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2515, file: !1067, line: 166, baseType: !290, size: 64, offset: 3776)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2515, file: !1067, line: 168, baseType: !37, size: 128, offset: 3840)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2515, file: !1067, line: 170, baseType: !3322, size: 64, offset: 3968)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1067, line: 170, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2515, file: !1067, line: 171, baseType: !147, size: 32, offset: 4032)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2515, file: !1067, line: 172, baseType: !3326, size: 64, offset: 4096)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1067, line: 104, flags: DIFlagFwdDecl)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2515, file: !1067, line: 197, baseType: !3329, size: 64, offset: 4160)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !1067, line: 197, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2515, file: !1067, line: 199, baseType: !151, size: 32, offset: 4224)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2515, file: !1067, line: 200, baseType: !3333, size: 64, offset: 4288)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1067, line: 105, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2515, file: !1067, line: 201, baseType: !2120, offset: 4352)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2515, file: !1067, line: 202, baseType: !103, size: 64, offset: 4352)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2515, file: !1067, line: 203, baseType: !2630, size: 32, offset: 4416)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2515, file: !1067, line: 209, baseType: !3339, size: 64, offset: 4480)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !1067, line: 384, size: 576, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3340, file: !1067, line: 385, baseType: !284, size: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3340, file: !1067, line: 386, baseType: !542, size: 8, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3340, file: !1067, line: 387, baseType: !35, size: 32, offset: 544)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3340, file: !1067, line: 388, baseType: !3346, offset: 576)
!3346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3347, elements: !734)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !1067, line: 378, size: 640, elements: !3348)
!3348 = !{!3349, !3350, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3347, file: !1067, line: 379, baseType: !284, size: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3347, file: !1067, line: 380, baseType: !1615, size: 64, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3347, file: !1067, line: 381, baseType: !1615, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2508, file: !2509, line: 44, baseType: !2711, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2508, file: !2509, line: 45, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2509, line: 45, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2508, file: !2509, line: 46, baseType: !233, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2508, file: !2509, line: 47, baseType: !542, size: 8, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2508, file: !2509, line: 48, baseType: !156, size: 8, offset: 392)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2508, file: !2509, line: 49, baseType: !542, size: 8, offset: 400)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2508, file: !2509, line: 50, baseType: !542, size: 8, offset: 408)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2508, file: !2509, line: 51, baseType: !229, size: 32, offset: 416)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2508, file: !2509, line: 52, baseType: !147, size: 32, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2508, file: !2509, line: 53, baseType: !127, size: 32, offset: 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2508, file: !2509, line: 54, baseType: !17, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2508, file: !2509, line: 55, baseType: !258, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2508, file: !2509, line: 56, baseType: !258, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2508, file: !2509, line: 57, baseType: !3368, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !1067, line: 1477, size: 128, elements: !3371)
!3371 = !{!3372, !3376}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3370, file: !1067, line: 1478, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !2507, !542}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3370, file: !1067, line: 1483, baseType: !3377, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !2507}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2508, file: !2509, line: 58, baseType: !658, size: 256, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2508, file: !2509, line: 60, baseType: !151, size: 32, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2508, file: !2509, line: 61, baseType: !151, size: 32, offset: 1056)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2508, file: !2509, line: 62, baseType: !290, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2508, file: !2509, line: 65, baseType: !658, size: 256, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2508, file: !2509, line: 66, baseType: !224, size: 64, offset: 1408)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2508, file: !2509, line: 68, baseType: !3387, size: 64, offset: 1472)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1067, line: 63, size: 808, elements: !3389)
!3389 = !{!3390, !3394}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3388, file: !1067, line: 64, baseType: !3391, size: 296)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !3392)
!3392 = !{!3393}
!3393 = !DISubrange(count: 37)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3388, file: !1067, line: 65, baseType: !3395, size: 512, offset: 296)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 512, elements: !329)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2508, file: !2509, line: 72, baseType: !542, size: 8, offset: 1536)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2508, file: !2509, line: 77, baseType: !2746, size: 5824, offset: 1600)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !225, file: !19, line: 1226, baseType: !3399, size: 64, offset: 1664)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !1067, line: 1495, size: 128, elements: !3401)
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3400, file: !1067, line: 1496, baseType: !2507, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3400, file: !1067, line: 1497, baseType: !258, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !225, file: !19, line: 1227, baseType: !3316, size: 64, offset: 1728)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !225, file: !19, line: 1228, baseType: !3406, size: 64, offset: 1792)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !225, file: !19, line: 1229, baseType: !710, size: 128, offset: 1856)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !225, file: !19, line: 1230, baseType: !35, size: 32, offset: 1984)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !225, file: !19, line: 1231, baseType: !3411, size: 2496, offset: 2048)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2296, line: 521, size: 2496, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3417, !3449}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3411, file: !2296, line: 522, baseType: !35, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3411, file: !2296, line: 523, baseType: !410, size: 320, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3411, file: !2296, line: 524, baseType: !3416, size: 192, offset: 384)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, elements: !325)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3411, file: !2296, line: 525, baseType: !3418, size: 1728, offset: 576)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3419, size: 1728, elements: !325)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2296, line: 222, size: 576, elements: !3420)
!3420 = !{!3421, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3419, file: !2296, line: 223, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2296, line: 445, size: 256, elements: !3424)
!3424 = !{!3425, !3426, !3439, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3423, file: !2296, line: 446, baseType: !151, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3423, file: !2296, line: 447, baseType: !3427, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2296, line: 312, size: 512, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3429, file: !2296, line: 313, baseType: !2246, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3429, file: !2296, line: 314, baseType: !2246, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3429, file: !2296, line: 315, baseType: !2246, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3429, file: !2296, line: 316, baseType: !2246, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3429, file: !2296, line: 317, baseType: !2365, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3429, file: !2296, line: 318, baseType: !2365, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3429, file: !2296, line: 319, baseType: !2365, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3429, file: !2296, line: 320, baseType: !2395, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3423, file: !2296, line: 448, baseType: !264, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3423, file: !2296, line: 449, baseType: !3422, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3419, file: !2296, line: 224, baseType: !151, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3419, file: !2296, line: 226, baseType: !37, size: 128, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3419, file: !2296, line: 227, baseType: !233, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3419, file: !2296, line: 228, baseType: !35, size: 32, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3419, file: !2296, line: 229, baseType: !35, size: 32, offset: 352)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3419, file: !2296, line: 230, baseType: !2333, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3419, file: !2296, line: 231, baseType: !2333, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3419, file: !2296, line: 232, baseType: !258, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3411, file: !2296, line: 526, baseType: !3450, size: 192, offset: 2304)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3427, size: 192, elements: !325)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !225, file: !19, line: 1233, baseType: !3452, size: 2368, offset: 4544)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3452, file: !19, line: 1185, baseType: !24, size: 16)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3452, file: !19, line: 1186, baseType: !24, size: 16, offset: 16)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3452, file: !19, line: 1187, baseType: !3457, size: 2304, offset: 64)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3458, size: 2304, elements: !325)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3459, line: 12, size: 768, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3460 = !{!3461, !3469, !3470, !4593, !4594}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3458, file: !3459, line: 13, baseType: !3462, size: 384)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3463, line: 17, size: 384, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3464 = !{!3465, !3466, !3467, !3468}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3462, file: !3463, line: 18, baseType: !151, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3462, file: !3463, line: 19, baseType: !151, size: 32, offset: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3462, file: !3463, line: 20, baseType: !719, size: 192, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3462, file: !3463, line: 22, baseType: !546, size: 128, align: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3458, file: !3459, line: 14, baseType: !1944, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3458, file: !3459, line: 15, baseType: !3471, size: 64, offset: 448)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3472, line: 16, size: 64, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3473 = !{!3474}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3471, file: !3472, line: 17, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1144, line: 746, size: 58368, elements: !3477)
!3477 = !{!3478, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3558, !3569, !3589, !3593, !3596, !3627, !3628, !3629, !3630, !3638, !3640, !3641, !3642, !3643, !3644, !3645, !3656, !3657, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3674, !3675, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3769, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3817, !3823, !3824, !3825, !3826, !3827, !3831, !3834, !3841, !3846, !3849, !3852, !3855, !3858, !3996, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4034, !4035, !4036, !4045, !4053, !4054, !4055, !4056, !4057, !4062, !4063, !4064, !4067, !4068, !4070, !4081, !4084, !4092, !4095, !4096, !4182, !4183, !4184, !4185, !4186, !4192, !4193, !4194, !4195, !4198, !4199, !4202, !4205, !4206, !4209, !4210, !4211, !4214, !4215, !4216, !4217, !4218, !4219, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4251, !4252, !4258, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4346, !4348, !4349, !4350, !4351, !4352, !4353, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4370, !4371, !4372}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3476, file: !1144, line: 752, baseType: !3479, size: 192)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3480, line: 56, size: 192, elements: !3481)
!3480 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3481 = !{!3482, !3483, !3484, !3485}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3479, file: !3480, line: 57, baseType: !233, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3479, file: !3480, line: 58, baseType: !233, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3479, file: !3480, line: 59, baseType: !97, size: 32, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3479, file: !3480, line: 61, baseType: !97, size: 32, offset: 160)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3476, file: !1144, line: 754, baseType: !35, size: 32, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3476, file: !1144, line: 767, baseType: !258, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3476, file: !1144, line: 768, baseType: !697, size: 32, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3476, file: !1144, line: 770, baseType: !35, size: 32, offset: 352)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3476, file: !1144, line: 771, baseType: !35, size: 32, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3476, file: !1144, line: 774, baseType: !151, size: 32, offset: 416)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3476, file: !1144, line: 775, baseType: !3493, size: 128, offset: 448)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3494, line: 58, size: 128, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3495 = !{!3496, !3497, !3502, !3503}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3493, file: !3494, line: 59, baseType: !646, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3493, file: !3494, line: 60, baseType: !3498, size: 32, offset: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3493, file: !3494, line: 60, size: 32, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3498, file: !3494, line: 61, baseType: !35, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3498, file: !3494, line: 62, baseType: !147, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3493, file: !3494, line: 65, baseType: !163, size: 16, offset: 96)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3493, file: !3494, line: 65, baseType: !163, size: 16, offset: 112)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3476, file: !1144, line: 776, baseType: !35, size: 32, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3476, file: !1144, line: 777, baseType: !233, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3476, file: !1144, line: 778, baseType: !3475, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3476, file: !1144, line: 787, baseType: !151, size: 32, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3476, file: !1144, line: 788, baseType: !151, size: 32, offset: 800)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3476, file: !1144, line: 790, baseType: !151, size: 32, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3476, file: !1144, line: 792, baseType: !151, size: 32, offset: 864)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3476, file: !1144, line: 793, baseType: !151, size: 32, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3476, file: !1144, line: 794, baseType: !151, size: 32, offset: 928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3476, file: !1144, line: 795, baseType: !35, size: 32, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3476, file: !1144, line: 797, baseType: !3515, size: 2048, offset: 1024)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1144, line: 551, size: 2048, elements: !3516)
!3516 = !{!3517, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3537, !3540, !3541, !3542}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3515, file: !1144, line: 553, baseType: !3518, size: 128)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1144, line: 411, size: 128, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3518, file: !1144, line: 412, baseType: !233, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3518, file: !1144, line: 413, baseType: !97, size: 32, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3515, file: !1144, line: 554, baseType: !442, size: 192, align: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3515, file: !1144, line: 555, baseType: !103, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3515, file: !1144, line: 556, baseType: !103, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3515, file: !1144, line: 558, baseType: !37, size: 128, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3515, file: !1144, line: 559, baseType: !35, size: 32, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3515, file: !1144, line: 561, baseType: !103, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3515, file: !1144, line: 562, baseType: !103, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3515, file: !1144, line: 563, baseType: !103, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3515, file: !1144, line: 564, baseType: !103, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3515, file: !1144, line: 565, baseType: !420, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3515, file: !1144, line: 566, baseType: !103, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3515, file: !1144, line: 568, baseType: !103, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3515, file: !1144, line: 571, baseType: !151, size: 32, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3515, file: !1144, line: 572, baseType: !3536, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3515, file: !1144, line: 574, baseType: !3538, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1144, line: 49, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3515, file: !1144, line: 576, baseType: !3538, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3515, file: !1144, line: 578, baseType: !233, size: 64, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3515, file: !1144, line: 588, baseType: !3543, size: 512, align: 512, offset: 1536)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1144, line: 497, size: 512, align: 512, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3543, file: !1144, line: 498, baseType: !103, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3543, file: !1144, line: 499, baseType: !103, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3543, file: !1144, line: 500, baseType: !103, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3543, file: !1144, line: 501, baseType: !97, size: 32, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3543, file: !1144, line: 502, baseType: !97, size: 32, offset: 224)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3543, file: !1144, line: 503, baseType: !233, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3543, file: !1144, line: 504, baseType: !233, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3543, file: !1144, line: 505, baseType: !233, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3543, file: !1144, line: 506, baseType: !3554, size: 64, align: 64, offset: 448)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1144, line: 445, size: 64, align: 64, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3554, file: !1144, line: 446, baseType: !35, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3554, file: !1144, line: 447, baseType: !35, size: 32, offset: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3476, file: !1144, line: 798, baseType: !3559, size: 384, offset: 3072)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1144, line: 592, size: 384, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3559, file: !1144, line: 593, baseType: !37, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3559, file: !1144, line: 594, baseType: !233, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3559, file: !1144, line: 595, baseType: !233, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3559, file: !1144, line: 596, baseType: !35, size: 32, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3559, file: !1144, line: 597, baseType: !24, size: 16, offset: 288)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3559, file: !1144, line: 598, baseType: !24, size: 16, offset: 304)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3559, file: !1144, line: 600, baseType: !3568, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3476, file: !1144, line: 799, baseType: !3570, size: 1792, offset: 3456)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1144, line: 610, size: 1792, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3570, file: !1144, line: 611, baseType: !442, size: 192, align: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3570, file: !1144, line: 618, baseType: !103, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3570, file: !1144, line: 619, baseType: !103, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3570, file: !1144, line: 620, baseType: !103, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3570, file: !1144, line: 621, baseType: !103, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3570, file: !1144, line: 622, baseType: !103, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3570, file: !1144, line: 629, baseType: !420, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3570, file: !1144, line: 630, baseType: !103, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !1144, line: 631, baseType: !35, size: 32, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3570, file: !1144, line: 653, baseType: !35, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3570, file: !1144, line: 654, baseType: !35, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3570, file: !1144, line: 655, baseType: !35, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3570, file: !1144, line: 656, baseType: !35, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3570, file: !1144, line: 662, baseType: !2954, size: 512, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3570, file: !1144, line: 671, baseType: !2954, size: 512, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3570, file: !1144, line: 679, baseType: !3588, size: 64, offset: 1728)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3476, file: !1144, line: 800, baseType: !3590, size: 64, offset: 5248)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1144, line: 800, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3476, file: !1144, line: 809, baseType: !3594, size: 64, offset: 5312)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1144, line: 70, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3476, file: !1144, line: 825, baseType: !3597, size: 2048, align: 512, offset: 5632)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1144, line: 509, size: 2048, align: 512, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3597, file: !1144, line: 511, baseType: !103, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3597, file: !1144, line: 512, baseType: !103, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3597, file: !1144, line: 513, baseType: !103, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3597, file: !1144, line: 514, baseType: !103, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3597, file: !1144, line: 515, baseType: !103, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3597, file: !1144, line: 516, baseType: !103, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3597, file: !1144, line: 518, baseType: !103, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3597, file: !1144, line: 519, baseType: !103, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3597, file: !1144, line: 520, baseType: !420, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3597, file: !1144, line: 522, baseType: !103, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3597, file: !1144, line: 523, baseType: !103, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3597, file: !1144, line: 524, baseType: !420, size: 64, offset: 704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3597, file: !1144, line: 526, baseType: !420, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3597, file: !1144, line: 527, baseType: !103, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3597, file: !1144, line: 529, baseType: !103, size: 64, offset: 896)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3597, file: !1144, line: 530, baseType: !103, size: 64, offset: 960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3597, file: !1144, line: 531, baseType: !103, size: 64, offset: 1024)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3597, file: !1144, line: 532, baseType: !103, size: 64, offset: 1088)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3597, file: !1144, line: 533, baseType: !103, size: 64, offset: 1152)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3597, file: !1144, line: 535, baseType: !103, size: 64, offset: 1216)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3597, file: !1144, line: 536, baseType: !103, size: 64, offset: 1280)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3597, file: !1144, line: 537, baseType: !103, size: 64, offset: 1344)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3597, file: !1144, line: 538, baseType: !103, size: 64, offset: 1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3597, file: !1144, line: 539, baseType: !103, size: 64, offset: 1472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3597, file: !1144, line: 540, baseType: !103, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3597, file: !1144, line: 541, baseType: !103, size: 64, offset: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3597, file: !1144, line: 542, baseType: !103, size: 64, offset: 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3597, file: !1144, line: 543, baseType: !103, size: 64, offset: 1728)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3476, file: !1144, line: 833, baseType: !35, size: 32, offset: 7680)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3476, file: !1144, line: 836, baseType: !35, size: 32, offset: 7712)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3476, file: !1144, line: 837, baseType: !151, size: 32, offset: 7744)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3476, file: !1144, line: 838, baseType: !3631, size: 64, offset: 7808)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3634, line: 19, baseType: !3635)
!3634 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3634, line: 19, size: 64, elements: !3636)
!3636 = !{!3637}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3635, file: !3634, line: 19, baseType: !3231, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3476, file: !1144, line: 839, baseType: !3639, size: 64, offset: 7872)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3476, file: !1144, line: 840, baseType: !3633, size: 64, offset: 7936)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3476, file: !1144, line: 841, baseType: !258, size: 64, offset: 8000)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3476, file: !1144, line: 843, baseType: !24, size: 16, offset: 8064)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3476, file: !1144, line: 845, baseType: !24, size: 16, offset: 8080)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3476, file: !1144, line: 848, baseType: !151, size: 32, offset: 8096)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3476, file: !1144, line: 849, baseType: !3646, size: 32, offset: 8128)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1144, line: 718, size: 32, elements: !3647)
!3647 = !{!3648, !3655}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3646, file: !1144, line: 724, baseType: !3649, size: 32)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3646, file: !1144, line: 719, size: 32, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3649, file: !1144, line: 720, baseType: !156, size: 8)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3649, file: !1144, line: 721, baseType: !156, size: 8, offset: 8)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3649, file: !1144, line: 722, baseType: !156, size: 8, offset: 16)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3649, file: !1144, line: 723, baseType: !156, size: 8, offset: 24)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3646, file: !1144, line: 725, baseType: !97, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3476, file: !1144, line: 850, baseType: !37, size: 128, offset: 8192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3476, file: !1144, line: 851, baseType: !3658, size: 64, offset: 8320)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1144, line: 60, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3476, file: !1144, line: 855, baseType: !233, size: 64, offset: 8384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3476, file: !1144, line: 856, baseType: !156, size: 8, offset: 8448)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3476, file: !1144, line: 857, baseType: !156, size: 8, offset: 8456)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3476, file: !1144, line: 858, baseType: !151, size: 32, offset: 8480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3476, file: !1144, line: 859, baseType: !37, size: 128, offset: 8512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3476, file: !1144, line: 860, baseType: !151, size: 32, offset: 8640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3476, file: !1144, line: 861, baseType: !37, size: 128, offset: 8704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3476, file: !1144, line: 873, baseType: !3668, size: 256, offset: 8832)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1144, line: 376, size: 256, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3668, file: !1144, line: 381, baseType: !233, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3668, file: !1144, line: 384, baseType: !105, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3668, file: !1144, line: 389, baseType: !105, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3668, file: !1144, line: 392, baseType: !105, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3476, file: !1144, line: 875, baseType: !37, size: 128, offset: 9088)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3476, file: !1144, line: 877, baseType: !3676, size: 320, offset: 9216)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3677, line: 86, size: 320, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3678 = !{!3679, !3680, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3676, file: !3677, line: 87, baseType: !151, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3676, file: !3677, line: 88, baseType: !37, size: 128, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3676, file: !3677, line: 89, baseType: !37, size: 128, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3476, file: !1144, line: 878, baseType: !442, size: 192, align: 64, offset: 9536)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3476, file: !1144, line: 881, baseType: !611, size: 64, offset: 9728)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3476, file: !1144, line: 882, baseType: !611, size: 64, offset: 9792)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3476, file: !1144, line: 884, baseType: !151, size: 32, offset: 9856)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3476, file: !1144, line: 885, baseType: !151, size: 32, offset: 9888)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3476, file: !1144, line: 886, baseType: !151, size: 32, offset: 9920)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3476, file: !1144, line: 888, baseType: !151, size: 32, offset: 9952)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3476, file: !1144, line: 890, baseType: !233, size: 64, offset: 9984)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3476, file: !1144, line: 893, baseType: !35, size: 32, offset: 10048)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3476, file: !1144, line: 896, baseType: !35, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3476, file: !1144, line: 897, baseType: !35, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3476, file: !1144, line: 898, baseType: !35, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3476, file: !1144, line: 899, baseType: !35, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3476, file: !1144, line: 919, baseType: !35, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3476, file: !1144, line: 922, baseType: !35, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3476, file: !1144, line: 923, baseType: !35, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3476, file: !1144, line: 925, baseType: !35, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3476, file: !1144, line: 939, baseType: !35, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3476, file: !1144, line: 941, baseType: !35, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3476, file: !1144, line: 944, baseType: !35, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3476, file: !1144, line: 956, baseType: !35, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3476, file: !1144, line: 962, baseType: !35, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3476, file: !1144, line: 966, baseType: !35, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3476, file: !1144, line: 969, baseType: !233, size: 64, offset: 10176)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3476, file: !1144, line: 971, baseType: !3707, size: 448, offset: 10240)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !3708, line: 25, size: 448, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!3709 = !{!3710, !3711, !3716}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3707, file: !3708, line: 26, baseType: !233, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3707, file: !3708, line: 27, baseType: !3712, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!359, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3707, file: !3708, line: 28, baseType: !3717, size: 320, offset: 128)
!3717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3707, file: !3708, line: 28, size: 320, elements: !3718)
!3718 = !{!3719, !3729, !3759}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3717, file: !3708, line: 37, baseType: !3720, size: 320)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3717, file: !3708, line: 30, size: 320, elements: !3721)
!3721 = !{!3722, !3724, !3725, !3726, !3727, !3728}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3720, file: !3708, line: 31, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3720, file: !3708, line: 32, baseType: !97, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3720, file: !3708, line: 33, baseType: !97, size: 32, offset: 96)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3720, file: !3708, line: 34, baseType: !97, size: 32, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3720, file: !3708, line: 35, baseType: !103, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3720, file: !3708, line: 36, baseType: !3723, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3717, file: !3708, line: 47, baseType: !3730, size: 192)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3717, file: !3708, line: 39, size: 192, elements: !3731)
!3731 = !{!3732, !3733, !3739, !3758}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3730, file: !3708, line: 40, baseType: !3004, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3730, file: !3708, line: 41, baseType: !3734, size: 32, offset: 32)
!3734 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !3708, line: 16, baseType: !35, size: 32, elements: !3735)
!3735 = !{!3736, !3737, !3738}
!3736 = !DIEnumerator(name: "TT_NONE", value: 0)
!3737 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!3738 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !3708, line: 42, baseType: !3740, size: 64, offset: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !3708, line: 42, size: 64, elements: !3741)
!3741 = !{!3742, !3750}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3740, file: !3708, line: 43, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3745, line: 7, size: 128, elements: !3746)
!3745 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3746 = !{!3747, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3744, file: !3745, line: 8, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !34, line: 93, baseType: !237)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3744, file: !3745, line: 9, baseType: !237, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3740, file: !3708, line: 44, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3753, line: 7, size: 64, elements: !3754)
!3753 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3754 = !{!3755, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3752, file: !3753, line: 8, baseType: !3756, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3753, line: 5, baseType: !783)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3752, file: !3753, line: 9, baseType: !783, size: 32, offset: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3730, file: !3708, line: 46, baseType: !103, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3717, file: !3708, line: 55, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3717, file: !3708, line: 49, size: 256, elements: !3761)
!3761 = !{!3762, !3765, !3766, !3767, !3768}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3760, file: !3708, line: 50, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3708, line: 14, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3760, file: !3708, line: 51, baseType: !151, size: 32, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3760, file: !3708, line: 52, baseType: !151, size: 32, offset: 96)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3760, file: !3708, line: 53, baseType: !233, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3760, file: !3708, line: 54, baseType: !233, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3476, file: !1144, line: 973, baseType: !3770, size: 32, offset: 10688)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !23, line: 27, baseType: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !34, line: 28, baseType: !151)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3476, file: !1144, line: 974, baseType: !3770, size: 32, offset: 10720)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3476, file: !1144, line: 978, baseType: !233, size: 64, offset: 10752)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3476, file: !1144, line: 987, baseType: !3475, size: 64, offset: 10816)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3476, file: !1144, line: 990, baseType: !3475, size: 64, offset: 10880)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3476, file: !1144, line: 995, baseType: !37, size: 128, offset: 10944)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3476, file: !1144, line: 996, baseType: !37, size: 128, offset: 11072)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3476, file: !1144, line: 997, baseType: !3475, size: 64, offset: 11200)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3476, file: !1144, line: 1005, baseType: !37, size: 128, offset: 11264)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3476, file: !1144, line: 1006, baseType: !37, size: 128, offset: 11392)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3476, file: !1144, line: 1009, baseType: !692, size: 64, offset: 11520)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3476, file: !1144, line: 1010, baseType: !3783, size: 512, offset: 11584)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 512, elements: !715)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3476, file: !1144, line: 1011, baseType: !37, size: 128, offset: 12096)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3476, file: !1144, line: 1012, baseType: !37, size: 128, offset: 12224)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3476, file: !1144, line: 1014, baseType: !1855, size: 64, offset: 12352)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3476, file: !1144, line: 1017, baseType: !1992, size: 64, offset: 12416)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3476, file: !1144, line: 1020, baseType: !1992, size: 64, offset: 12480)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3476, file: !1144, line: 1023, baseType: !258, size: 64, offset: 12544)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3476, file: !1144, line: 1025, baseType: !103, size: 64, offset: 12608)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3476, file: !1144, line: 1026, baseType: !103, size: 64, offset: 12672)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3476, file: !1144, line: 1031, baseType: !103, size: 64, offset: 12736)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3476, file: !1144, line: 1032, baseType: !3794, size: 192, offset: 12800)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1144, line: 324, size: 192, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3794, file: !1144, line: 326, baseType: !103, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3794, file: !1144, line: 327, baseType: !103, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3794, file: !1144, line: 328, baseType: !429, size: 32, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3476, file: !1144, line: 1041, baseType: !233, size: 64, offset: 12992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3476, file: !1144, line: 1042, baseType: !233, size: 64, offset: 13056)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3476, file: !1144, line: 1045, baseType: !103, size: 64, offset: 13120)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3476, file: !1144, line: 1048, baseType: !103, size: 64, offset: 13184)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3476, file: !1144, line: 1051, baseType: !233, size: 64, offset: 13248)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3476, file: !1144, line: 1052, baseType: !233, size: 64, offset: 13312)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3476, file: !1144, line: 1055, baseType: !3806, size: 640, offset: 13376)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3807, line: 132, size: 640, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3808 = !{!3809, !3815, !3816}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3806, file: !3807, line: 133, baseType: !3810, size: 576)
!3810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3811, size: 576, elements: !325)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3807, line: 117, size: 192, elements: !3812)
!3812 = !{!3813, !3814}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3811, file: !3807, line: 118, baseType: !103, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3811, file: !3807, line: 119, baseType: !3013, size: 128, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3806, file: !3807, line: 134, baseType: !35, size: 32, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3806, file: !3807, line: 135, baseType: !35, size: 32, offset: 608)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3476, file: !1144, line: 1058, baseType: !3818, size: 448, offset: 14016)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3807, line: 144, size: 448, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3818, file: !3807, line: 145, baseType: !546, size: 128, align: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3818, file: !3807, line: 146, baseType: !658, size: 256, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3818, file: !3807, line: 147, baseType: !35, size: 32, offset: 384)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3476, file: !1144, line: 1064, baseType: !748, size: 64, offset: 14464)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3476, file: !1144, line: 1067, baseType: !748, size: 64, offset: 14528)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3476, file: !1144, line: 1070, baseType: !748, size: 64, offset: 14592)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3476, file: !1144, line: 1074, baseType: !775, size: 64, offset: 14656)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3476, file: !1144, line: 1084, baseType: !3828, size: 128, offset: 14720)
!3828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3829)
!3829 = !{!3830}
!3830 = !DISubrange(count: 16)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3476, file: !1144, line: 1086, baseType: !3832, size: 64, offset: 14848)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1144, line: 55, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3476, file: !1144, line: 1089, baseType: !3835, size: 64, offset: 14912)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3836, line: 12, size: 64, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3837 = !{!3838}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3835, file: !3836, line: 13, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3836, line: 8, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3476, file: !1144, line: 1090, baseType: !3842, size: 128, offset: 14976)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3843, line: 13, size: 128, elements: !3844)
!3843 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3844 = !{!3845}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3842, file: !3843, line: 14, baseType: !37, size: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3476, file: !1144, line: 1097, baseType: !3847, size: 64, offset: 15104)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1144, line: 50, flags: DIFlagFwdDecl)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3476, file: !1144, line: 1100, baseType: !3850, size: 64, offset: 15168)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1144, line: 1100, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3476, file: !1144, line: 1103, baseType: !3853, size: 64, offset: 15232)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1144, line: 53, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3476, file: !1144, line: 1107, baseType: !3856, size: 64, offset: 15296)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1144, line: 56, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3476, file: !1144, line: 1110, baseType: !3859, size: 64, offset: 15360)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3861, line: 93, size: 8768, elements: !3862)
!3861 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3910, !3919, !3920, !3922, !3923, !3924, !3927, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3965, !3966, !3973, !3983, !3986, !3987, !3990, !3991, !3992, !3993, !3994, !3995}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3860, file: !3861, line: 94, baseType: !697, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3860, file: !3861, line: 95, baseType: !147, size: 32, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3860, file: !3861, line: 96, baseType: !151, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3860, file: !3861, line: 97, baseType: !151, size: 32, offset: 96)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3860, file: !3861, line: 98, baseType: !37, size: 128, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3860, file: !3861, line: 100, baseType: !719, size: 192, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3860, file: !3861, line: 103, baseType: !3475, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3860, file: !3861, line: 106, baseType: !3871, size: 192, offset: 512)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !928, line: 32, size: 192, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3871, file: !928, line: 33, baseType: !37, size: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3871, file: !928, line: 34, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3876, line: 25, baseType: !3877)
!3876 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3876, line: 23, size: 64, elements: !3878)
!3878 = !{!3879}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3877, file: !3876, line: 24, baseType: !3231, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3860, file: !3861, line: 109, baseType: !706, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3860, file: !3861, line: 112, baseType: !151, size: 32, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3860, file: !3861, line: 114, baseType: !151, size: 32, offset: 800)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3860, file: !3861, line: 115, baseType: !3475, size: 64, offset: 832)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3860, file: !3861, line: 118, baseType: !151, size: 32, offset: 896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3860, file: !3861, line: 119, baseType: !35, size: 32, offset: 928)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3860, file: !3861, line: 121, baseType: !3887, size: 64, offset: 960)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3861, line: 80, size: 448, elements: !3889)
!3889 = !{!3890, !3891, !3897}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3888, file: !3861, line: 81, baseType: !147, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3888, file: !3861, line: 82, baseType: !3892, size: 128, offset: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3861, line: 75, size: 128, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3892, file: !3861, line: 76, baseType: !3475, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3892, file: !3861, line: 77, baseType: !3896, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3888, file: !3861, line: 83, baseType: !556, size: 256, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3860, file: !3861, line: 132, baseType: !35, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3860, file: !3861, line: 133, baseType: !35, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3860, file: !3861, line: 138, baseType: !35, size: 32, offset: 1056)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3860, file: !3861, line: 139, baseType: !37, size: 128, offset: 1088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3860, file: !3861, line: 142, baseType: !2954, size: 512, offset: 1216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3860, file: !3861, line: 143, baseType: !2934, size: 64, offset: 1728)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3860, file: !3861, line: 150, baseType: !3905, size: 256, offset: 1792)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3906, size: 256, elements: !1982)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3861, line: 38, size: 128, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3906, file: !3861, line: 39, baseType: !103, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3906, file: !3861, line: 40, baseType: !103, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3860, file: !3861, line: 156, baseType: !3911, size: 192, offset: 2048)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3861, line: 66, size: 192, elements: !3912)
!3912 = !{!3913}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3911, file: !3861, line: 67, baseType: !3914, size: 192)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3861, line: 47, size: 192, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3914, file: !3861, line: 48, baseType: !416, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3914, file: !3861, line: 49, baseType: !416, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3914, file: !3861, line: 50, baseType: !416, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3860, file: !3861, line: 160, baseType: !3806, size: 640, offset: 2240)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3860, file: !3861, line: 163, baseType: !3921, size: 256, offset: 2880)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 256, elements: !715)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3860, file: !3861, line: 169, baseType: !692, size: 64, offset: 3136)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3860, file: !3861, line: 172, baseType: !151, size: 32, offset: 3200)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3860, file: !3861, line: 174, baseType: !3925, size: 64, offset: 3264)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3861, line: 174, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3860, file: !3861, line: 185, baseType: !3928, size: 64, offset: 3328)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !70, line: 860, baseType: !3929)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 853, size: 64, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3929, file: !70, line: 858, baseType: !69, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3929, file: !70, line: 859, baseType: !127, size: 32, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3860, file: !3861, line: 186, baseType: !103, size: 64, offset: 3392)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3860, file: !3861, line: 186, baseType: !103, size: 64, offset: 3456)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3860, file: !3861, line: 186, baseType: !103, size: 64, offset: 3520)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3860, file: !3861, line: 186, baseType: !103, size: 64, offset: 3584)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3860, file: !3861, line: 187, baseType: !103, size: 64, offset: 3648)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3860, file: !3861, line: 188, baseType: !103, size: 64, offset: 3712)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3860, file: !3861, line: 189, baseType: !3794, size: 192, offset: 3776)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3860, file: !3861, line: 190, baseType: !233, size: 64, offset: 3968)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3860, file: !3861, line: 190, baseType: !233, size: 64, offset: 4032)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3860, file: !3861, line: 190, baseType: !233, size: 64, offset: 4096)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3860, file: !3861, line: 190, baseType: !233, size: 64, offset: 4160)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3860, file: !3861, line: 191, baseType: !233, size: 64, offset: 4224)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3860, file: !3861, line: 191, baseType: !233, size: 64, offset: 4288)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3860, file: !3861, line: 191, baseType: !233, size: 64, offset: 4352)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3860, file: !3861, line: 191, baseType: !233, size: 64, offset: 4416)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3860, file: !3861, line: 192, baseType: !233, size: 64, offset: 4480)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3860, file: !3861, line: 192, baseType: !233, size: 64, offset: 4544)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3860, file: !3861, line: 192, baseType: !233, size: 64, offset: 4608)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3860, file: !3861, line: 192, baseType: !233, size: 64, offset: 4672)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3860, file: !3861, line: 193, baseType: !233, size: 64, offset: 4736)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3860, file: !3861, line: 193, baseType: !233, size: 64, offset: 4800)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3860, file: !3861, line: 194, baseType: !3955, size: 448, offset: 4864)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3956, line: 12, size: 448, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3955, file: !3956, line: 15, baseType: !103, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3955, file: !3956, line: 17, baseType: !103, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3955, file: !3956, line: 19, baseType: !103, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3955, file: !3956, line: 21, baseType: !103, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3955, file: !3956, line: 29, baseType: !103, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3955, file: !3956, line: 35, baseType: !103, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3955, file: !3956, line: 44, baseType: !103, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3860, file: !3861, line: 202, baseType: !105, size: 64, offset: 5312)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3860, file: !3861, line: 213, baseType: !3967, size: 2048, offset: 5376)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3968, size: 2048, elements: !3829)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3969, line: 43, size: 128, elements: !3970)
!3969 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3970 = !{!3971, !3972}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3968, file: !3969, line: 44, baseType: !371, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3968, file: !3969, line: 45, baseType: !371, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3860, file: !3861, line: 216, baseType: !3974, size: 448, offset: 7424)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3861, line: 30, size: 448, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3974, file: !3861, line: 31, baseType: !151, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3974, file: !3861, line: 32, baseType: !359, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3974, file: !3861, line: 33, baseType: !233, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3974, file: !3861, line: 34, baseType: !103, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3974, file: !3861, line: 34, baseType: !103, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3974, file: !3861, line: 35, baseType: !233, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3974, file: !3861, line: 35, baseType: !233, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3860, file: !3861, line: 219, baseType: !3984, size: 64, offset: 7872)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3861, line: 219, flags: DIFlagFwdDecl)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3860, file: !3861, line: 222, baseType: !35, size: 32, offset: 7936)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3860, file: !3861, line: 223, baseType: !3988, size: 64, offset: 8000)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3861, line: 223, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3860, file: !3861, line: 230, baseType: !542, size: 8, offset: 8064)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3860, file: !3861, line: 231, baseType: !811, size: 16, offset: 8080)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3860, file: !3861, line: 232, baseType: !811, size: 16, offset: 8096)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3860, file: !3861, line: 234, baseType: !611, size: 64, offset: 8128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3860, file: !3861, line: 237, baseType: !658, size: 256, offset: 8192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3860, file: !3861, line: 243, baseType: !410, size: 320, offset: 8448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3476, file: !1144, line: 1111, baseType: !3997, size: 64, offset: 15424)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3861, line: 20, size: 16640, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3998, file: !3861, line: 21, baseType: !127, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3998, file: !3861, line: 22, baseType: !697, size: 32, offset: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3998, file: !3861, line: 23, baseType: !719, size: 192, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3998, file: !3861, line: 24, baseType: !4004, size: 16384, offset: 256)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 16384, elements: !329)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !928, line: 51, size: 256, elements: !4006)
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4005, file: !928, line: 52, baseType: !4008, size: 256)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !928, line: 37, size: 256, elements: !4009)
!4009 = !{!4010, !4017, !4018, !4022}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4008, file: !928, line: 39, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4012, line: 83, baseType: !4013)
!4012 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4012, line: 82, baseType: !4015)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !151}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4008, file: !928, line: 40, baseType: !233, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4008, file: !928, line: 46, baseType: !4019, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4012, line: 86, baseType: !4020)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4012, line: 85, baseType: !2202)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4008, file: !928, line: 48, baseType: !3875, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3476, file: !1144, line: 1112, baseType: !3875, size: 64, offset: 15488)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3476, file: !1144, line: 1113, baseType: !3875, size: 64, offset: 15552)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3476, file: !1144, line: 1115, baseType: !3875, size: 64, offset: 15616)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3476, file: !1144, line: 1116, baseType: !3871, size: 192, offset: 15680)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3476, file: !1144, line: 1117, baseType: !233, size: 64, offset: 15872)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3476, file: !1144, line: 1118, baseType: !369, size: 64, offset: 15936)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3476, file: !1144, line: 1119, baseType: !35, size: 32, offset: 16000)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3476, file: !1144, line: 1121, baseType: !549, size: 64, offset: 16064)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3476, file: !1144, line: 1125, baseType: !4032, size: 64, offset: 16128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1144, line: 43, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3476, file: !1144, line: 1127, baseType: !27, size: 32, offset: 16192)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3476, file: !1144, line: 1128, baseType: !35, size: 32, offset: 16224)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3476, file: !1144, line: 1130, baseType: !4037, size: 128, offset: 16256)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4038, line: 37, size: 128, elements: !4039)
!4038 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4039 = !{!4040, !4041, !4042}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4037, file: !4038, line: 38, baseType: !151, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4037, file: !4038, line: 39, baseType: !147, size: 32, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4037, file: !4038, line: 40, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4038, line: 24, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3476, file: !1144, line: 1131, baseType: !4046, size: 256, offset: 16384)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4047, line: 12, size: 256, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4048 = !{!4049, !4050, !4051, !4052}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4046, file: !4047, line: 13, baseType: !213, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4046, file: !4047, line: 14, baseType: !233, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4046, file: !4047, line: 15, baseType: !233, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4046, file: !4047, line: 16, baseType: !542, size: 8, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3476, file: !1144, line: 1134, baseType: !103, size: 64, offset: 16640)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3476, file: !1144, line: 1135, baseType: !103, size: 64, offset: 16704)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3476, file: !1144, line: 1138, baseType: !127, size: 32, offset: 16768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3476, file: !1144, line: 1141, baseType: !429, size: 32, offset: 16800)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3476, file: !1144, line: 1143, baseType: !4058, size: 64, offset: 16832)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1144, line: 735, size: 64, elements: !4059)
!4059 = !{!4060}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4058, file: !1144, line: 736, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3476, file: !1144, line: 1147, baseType: !434, size: 128, offset: 16896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3476, file: !1144, line: 1149, baseType: !3475, size: 64, offset: 17024)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3476, file: !1144, line: 1151, baseType: !4065, size: 64, offset: 17088)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1144, line: 1151, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3476, file: !1144, line: 1188, baseType: !258, size: 64, offset: 17152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3476, file: !1144, line: 1191, baseType: !4069, size: 64, offset: 17216)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3476, file: !1144, line: 1194, baseType: !4071, size: 64, offset: 17280)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1067, line: 976, size: 320, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4072, file: !1067, line: 977, baseType: !1070, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4072, file: !1067, line: 980, baseType: !1070, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4072, file: !1067, line: 981, baseType: !24, size: 16, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4072, file: !1067, line: 983, baseType: !24, size: 16, offset: 144)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4072, file: !1067, line: 985, baseType: !542, size: 8, offset: 160)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4072, file: !1067, line: 986, baseType: !542, size: 8, offset: 168)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4072, file: !1067, line: 988, baseType: !37, size: 128, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3476, file: !1144, line: 1197, baseType: !4082, size: 64, offset: 17344)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1144, line: 61, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3476, file: !1144, line: 1199, baseType: !4085, size: 64, offset: 17408)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4087, line: 99, size: 128, elements: !4088)
!4087 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4088 = !{!4089, !4090, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4086, file: !4087, line: 100, baseType: !414, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4086, file: !4087, line: 101, baseType: !147, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4086, file: !4087, line: 103, baseType: !24, size: 16, offset: 96)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3476, file: !1144, line: 1202, baseType: !4093, size: 64, offset: 17472)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1144, line: 48, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3476, file: !1144, line: 1205, baseType: !233, size: 64, offset: 17536)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3476, file: !1144, line: 1206, baseType: !4097, size: 64, offset: 17600)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !928, line: 14, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !928, line: 12, size: 384, elements: !4100)
!4100 = !{!4101}
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !4099, file: !928, line: 13, baseType: !4102, size: 384)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4099, file: !928, line: 13, size: 384, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4102, file: !928, line: 13, baseType: !151, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4102, file: !928, line: 13, baseType: !151, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4102, file: !928, line: 13, baseType: !151, size: 32, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4102, file: !928, line: 13, baseType: !4108, size: 256, offset: 128)
!4108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4109, line: 37, size: 256, elements: !4110)
!4109 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4110 = !{!4111, !4116, !4129, !4135, !4144, !4171, !4176}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4108, file: !4109, line: 42, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 39, size: 64, elements: !4113)
!4113 = !{!4114, !4115}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4112, file: !4109, line: 40, baseType: !3771, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4112, file: !4109, line: 41, baseType: !33, size: 32, offset: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4108, file: !4109, line: 50, baseType: !4117, size: 192)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 45, size: 192, elements: !4118)
!4118 = !{!4119, !4121, !4122, !4128}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4117, file: !4109, line: 46, baseType: !4120, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !34, line: 95, baseType: !151)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4117, file: !4109, line: 47, baseType: !151, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4117, file: !4109, line: 48, baseType: !4123, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4109, line: 11, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4109, line: 8, size: 64, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4124, file: !4109, line: 9, baseType: !151, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4124, file: !4109, line: 10, baseType: !258, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4117, file: !4109, line: 49, baseType: !151, size: 32, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4108, file: !4109, line: 57, baseType: !4130, size: 128)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 53, size: 128, elements: !4131)
!4131 = !{!4132, !4133, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4130, file: !4109, line: 54, baseType: !3771, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4130, file: !4109, line: 55, baseType: !33, size: 32, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4130, file: !4109, line: 56, baseType: !4123, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4108, file: !4109, line: 66, baseType: !4136, size: 256)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 60, size: 256, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141, !4143}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4136, file: !4109, line: 61, baseType: !3771, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4136, file: !4109, line: 62, baseType: !33, size: 32, offset: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4136, file: !4109, line: 63, baseType: !151, size: 32, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4136, file: !4109, line: 64, baseType: !4142, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !34, line: 94, baseType: !358)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4136, file: !4109, line: 65, baseType: !4142, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4108, file: !4109, line: 105, baseType: !4145, size: 256)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 69, size: 256, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4145, file: !4109, line: 70, baseType: !258, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4109, line: 79, baseType: !4149, size: 192, offset: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4109, line: 79, size: 192, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4160, !4165}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4149, file: !4109, line: 81, baseType: !151, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4149, file: !4109, line: 86, baseType: !811, size: 16)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4149, file: !4109, line: 92, baseType: !4154, size: 192)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4149, file: !4109, line: 88, size: 192, elements: !4155)
!4155 = !{!4156, !4158, !4159}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4154, file: !4109, line: 89, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3000)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4154, file: !4109, line: 90, baseType: !258, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4154, file: !4109, line: 91, baseType: !258, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4149, file: !4109, line: 97, baseType: !4161, size: 96)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4149, file: !4109, line: 94, size: 96, elements: !4162)
!4162 = !{!4163, !4164}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4161, file: !4109, line: 95, baseType: !4157, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4161, file: !4109, line: 96, baseType: !99, size: 32, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4149, file: !4109, line: 103, baseType: !4166, size: 128)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4149, file: !4109, line: 99, size: 128, elements: !4167)
!4167 = !{!4168, !4169, !4170}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4166, file: !4109, line: 100, baseType: !233, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4166, file: !4109, line: 101, baseType: !99, size: 32, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4166, file: !4109, line: 102, baseType: !99, size: 32, offset: 96)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4108, file: !4109, line: 111, baseType: !4172, size: 128)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 108, size: 128, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4172, file: !4109, line: 109, baseType: !359, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4172, file: !4109, line: 110, baseType: !151, size: 32, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4108, file: !4109, line: 118, baseType: !4177, size: 128)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4108, file: !4109, line: 114, size: 128, elements: !4178)
!4178 = !{!4179, !4180, !4181}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4177, file: !4109, line: 115, baseType: !258, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4177, file: !4109, line: 116, baseType: !151, size: 32, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4177, file: !4109, line: 117, baseType: !35, size: 32, offset: 96)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3476, file: !1144, line: 1208, baseType: !3955, size: 448, offset: 17664)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3476, file: !1144, line: 1215, baseType: !103, size: 64, offset: 18112)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3476, file: !1144, line: 1217, baseType: !103, size: 64, offset: 18176)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3476, file: !1144, line: 1219, baseType: !103, size: 64, offset: 18240)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3476, file: !1144, line: 1223, baseType: !4187, size: 64, offset: 18304)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4188, line: 99, baseType: !4189)
!4188 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4188, line: 99, size: 64, elements: !4190)
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4189, file: !4188, line: 99, baseType: !3231, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3476, file: !1144, line: 1225, baseType: !69, size: 32, offset: 18368)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3476, file: !1144, line: 1226, baseType: !151, size: 32, offset: 18400)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3476, file: !1144, line: 1227, baseType: !151, size: 32, offset: 18432)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3476, file: !1144, line: 1231, baseType: !4196, size: 64, offset: 18496)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1144, line: 1231, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3476, file: !1144, line: 1233, baseType: !37, size: 128, offset: 18560)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3476, file: !1144, line: 1240, baseType: !4200, size: 64, offset: 18688)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1144, line: 62, flags: DIFlagFwdDecl)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3476, file: !1144, line: 1242, baseType: !4203, size: 64, offset: 18752)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1144, line: 1242, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3476, file: !1144, line: 1244, baseType: !37, size: 128, offset: 18816)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3476, file: !1144, line: 1245, baseType: !4207, size: 64, offset: 18944)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1144, line: 51, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3476, file: !1144, line: 1246, baseType: !658, size: 256, offset: 19008)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3476, file: !1144, line: 1247, baseType: !35, size: 32, offset: 19264)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3476, file: !1144, line: 1250, baseType: !4212, size: 64, offset: 19328)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1144, line: 57, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3476, file: !1144, line: 1251, baseType: !658, size: 256, offset: 19392)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3476, file: !1144, line: 1252, baseType: !37, size: 128, offset: 19648)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3476, file: !1144, line: 1259, baseType: !1417, size: 64, offset: 19776)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3476, file: !1144, line: 1260, baseType: !811, size: 16, offset: 19840)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3476, file: !1144, line: 1261, baseType: !811, size: 16, offset: 19856)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3476, file: !1144, line: 1314, baseType: !4220, size: 64, offset: 19904)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4222, line: 62, size: 256, align: 256, elements: !4223)
!4222 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4223 = !{!4224, !4225, !4226, !4227, !4228, !4229, !4230}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4221, file: !4222, line: 75, baseType: !99, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4221, file: !4222, line: 90, baseType: !99, size: 32, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4221, file: !4222, line: 112, baseType: !104, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4221, file: !4222, line: 132, baseType: !99, size: 32, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4221, file: !4222, line: 140, baseType: !99, size: 32, offset: 160)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4221, file: !4222, line: 149, baseType: !99, size: 32, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4221, file: !4222, line: 154, baseType: !4231, offset: 224)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !734)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3476, file: !1144, line: 1315, baseType: !97, size: 32, offset: 19968)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3476, file: !1144, line: 1316, baseType: !97, size: 32, offset: 20000)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3476, file: !1144, line: 1321, baseType: !233, size: 64, offset: 20032)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3476, file: !1144, line: 1325, baseType: !151, size: 32, offset: 20096)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3476, file: !1144, line: 1326, baseType: !151, size: 32, offset: 20128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3476, file: !1144, line: 1327, baseType: !151, size: 32, offset: 20160)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3476, file: !1144, line: 1328, baseType: !151, size: 32, offset: 20192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3476, file: !1144, line: 1329, baseType: !546, size: 128, align: 64, offset: 20224)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3476, file: !1144, line: 1332, baseType: !4241, size: 128, offset: 20352)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4242, line: 51, size: 128, elements: !4243)
!4242 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4243 = !{!4244, !4249, !4250}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4241, file: !4242, line: 60, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4246, line: 7, size: 64, elements: !4247)
!4246 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4247 = !{!4248}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4245, file: !4246, line: 12, baseType: !3635, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4241, file: !4242, line: 63, baseType: !542, size: 8, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4241, file: !4242, line: 70, baseType: !542, size: 8, offset: 72)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3476, file: !1144, line: 1335, baseType: !1142, size: 64, offset: 20480)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3476, file: !1144, line: 1337, baseType: !4253, size: 128, offset: 20544)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4242, line: 39, size: 128, elements: !4254)
!4254 = !{!4255, !4256, !4257}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4253, file: !4242, line: 40, baseType: !459, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4253, file: !4242, line: 42, baseType: !99, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4253, file: !4242, line: 43, baseType: !99, size: 32, offset: 96)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3476, file: !1144, line: 1340, baseType: !4259, size: 64, offset: 20672)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1144, line: 69, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3476, file: !1144, line: 1351, baseType: !151, size: 32, offset: 20736)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3476, file: !1144, line: 1352, baseType: !151, size: 32, offset: 20768)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3476, file: !1144, line: 1354, baseType: !233, size: 64, offset: 20800)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3476, file: !1144, line: 1364, baseType: !103, size: 64, offset: 20864)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3476, file: !1144, line: 1365, baseType: !103, size: 64, offset: 20928)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3476, file: !1144, line: 1412, baseType: !233, size: 64, offset: 20992)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3476, file: !1144, line: 1453, baseType: !2514, size: 64, offset: 21056)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3476, file: !1144, line: 1457, baseType: !4269, size: 64, offset: 21120)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1319, line: 61, size: 576, elements: !4271)
!4271 = !{!4272, !4279, !4298, !4301, !4302, !4335, !4345}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4270, file: !1319, line: 62, baseType: !4273, size: 32)
!4273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1319, line: 51, baseType: !35, size: 32, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!4276 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!4277 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!4278 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!4279 = !DIDerivedType(tag: DW_TAG_member, scope: !4270, file: !1319, line: 64, baseType: !4280, size: 192, offset: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !1319, line: 64, size: 192, elements: !4281)
!4281 = !{!4282, !4293}
!4282 = !DIDerivedType(tag: DW_TAG_member, scope: !4280, file: !1319, line: 65, baseType: !4283, size: 192)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4280, file: !1319, line: 65, size: 192, elements: !4284)
!4284 = !{!4285, !4292}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4283, file: !1319, line: 66, baseType: !4286, size: 128)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4287, line: 50, size: 128, elements: !4288)
!4287 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4288 = !{!4289, !4290, !4291}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4286, file: !4287, line: 52, baseType: !233, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4286, file: !4287, line: 54, baseType: !35, size: 32, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4286, file: !4287, line: 55, baseType: !35, size: 32, offset: 96)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4283, file: !1319, line: 67, baseType: !233, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, scope: !4280, file: !1319, line: 70, baseType: !4294, size: 192)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4280, file: !1319, line: 70, size: 192, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4294, file: !1319, line: 71, baseType: !546, size: 128, align: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4294, file: !1319, line: 72, baseType: !233, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4270, file: !1319, line: 76, baseType: !4299, size: 64, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1319, line: 76, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4270, file: !1319, line: 77, baseType: !233, size: 64, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4270, file: !1319, line: 79, baseType: !4303, size: 64, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4287, line: 25, size: 256, elements: !4305)
!4305 = !{!4306, !4312, !4316}
!4306 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !4287, line: 26, baseType: !4307, size: 128)
!4307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !4287, line: 26, size: 128, elements: !4308)
!4308 = !{!4309, !4311}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4307, file: !4287, line: 27, baseType: !4310, size: 128)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !3829)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4307, file: !4287, line: 28, baseType: !4310, size: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4304, file: !4287, line: 31, baseType: !4313, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4287, line: 23, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, scope: !4304, file: !4287, line: 33, baseType: !4317, size: 64, offset: 192)
!4317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4304, file: !4287, line: 33, size: 64, elements: !4318)
!4318 = !{!4319, !4325, !4330}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4317, file: !4287, line: 38, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4317, file: !4287, line: 34, size: 64, elements: !4321)
!4321 = !{!4322, !4323, !4324}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4320, file: !4287, line: 35, baseType: !783, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4320, file: !4287, line: 36, baseType: !156, size: 8, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4320, file: !4287, line: 37, baseType: !156, size: 8, offset: 40)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4317, file: !4287, line: 42, baseType: !4326, size: 16)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4317, file: !4287, line: 39, size: 16, elements: !4327)
!4327 = !{!4328, !4329}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4326, file: !4287, line: 40, baseType: !156, size: 8)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4326, file: !4287, line: 41, baseType: !156, size: 8, offset: 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4317, file: !4287, line: 46, baseType: !4331, size: 16)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4317, file: !4287, line: 43, size: 16, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4331, file: !4287, line: 44, baseType: !156, size: 8)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4331, file: !4287, line: 45, baseType: !156, size: 8, offset: 8)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4270, file: !1319, line: 81, baseType: !4336, size: 64, offset: 448)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1319, line: 85, size: 384, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4337, file: !1319, line: 86, baseType: !4299, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4337, file: !1319, line: 87, baseType: !233, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4337, file: !1319, line: 88, baseType: !233, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4337, file: !1319, line: 89, baseType: !233, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4337, file: !1319, line: 90, baseType: !542, size: 8, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4337, file: !1319, line: 92, baseType: !4336, size: 64, offset: 320)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4270, file: !1319, line: 82, baseType: !35, size: 32, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3476, file: !1144, line: 1463, baseType: !4347, offset: 21184)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1144, line: 739, elements: !632)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3476, file: !1144, line: 1470, baseType: !546, size: 128, align: 64, offset: 21184)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3476, file: !1144, line: 1471, baseType: !697, size: 32, offset: 21312)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3476, file: !1144, line: 1472, baseType: !151, size: 32, offset: 21344)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3476, file: !1144, line: 1474, baseType: !3475, size: 64, offset: 21376)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3476, file: !1144, line: 1475, baseType: !2092, size: 320, offset: 21440)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3476, file: !1144, line: 1478, baseType: !4354, size: 64, offset: 21760)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1144, line: 1478, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3476, file: !1144, line: 1482, baseType: !697, size: 32, offset: 21824)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3476, file: !1144, line: 1489, baseType: !258, size: 64, offset: 21888)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3476, file: !1144, line: 1504, baseType: !258, size: 64, offset: 21952)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3476, file: !1144, line: 1505, baseType: !104, size: 64, offset: 22016)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3476, file: !1144, line: 1506, baseType: !103, size: 64, offset: 22080)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3476, file: !1144, line: 1507, baseType: !104, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3476, file: !1144, line: 1508, baseType: !104, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3476, file: !1144, line: 1509, baseType: !104, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3476, file: !1144, line: 1510, baseType: !546, size: 128, align: 64, offset: 22208)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3476, file: !1144, line: 1511, baseType: !151, size: 32, offset: 22336)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3476, file: !1144, line: 1515, baseType: !4367, size: 64, offset: 22400)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !647, line: 56, size: 64, elements: !4368)
!4368 = !{!4369}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4367, file: !647, line: 57, baseType: !650, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3476, file: !1144, line: 1518, baseType: !4367, size: 64, offset: 22464)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3476, file: !1144, line: 1528, baseType: !546, size: 128, align: 64, offset: 22528)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3476, file: !1144, line: 1552, baseType: !4373, size: 35328, offset: 23040)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4374, line: 430, size: 35328, elements: !4375)
!4374 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4375 = !{!4376, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4405, !4406, !4407, !4408, !4409, !4410, !4413, !4414, !4415, !4416}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4373, file: !4374, line: 432, baseType: !4377, size: 192)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4378, size: 192, elements: !325)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4379, line: 16, size: 64, elements: !4380)
!4379 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4378, file: !4379, line: 17, baseType: !163, size: 16)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4378, file: !4379, line: 18, baseType: !163, size: 16, offset: 16)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4378, file: !4379, line: 19, baseType: !163, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4378, file: !4379, line: 19, baseType: !163, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4378, file: !4379, line: 19, baseType: !163, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4378, file: !4379, line: 19, baseType: !163, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4378, file: !4379, line: 19, baseType: !163, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4378, file: !4379, line: 20, baseType: !163, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4378, file: !4379, line: 20, baseType: !163, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4378, file: !4379, line: 20, baseType: !163, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4378, file: !4379, line: 20, baseType: !163, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4378, file: !4379, line: 20, baseType: !163, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4378, file: !4379, line: 20, baseType: !163, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4373, file: !4374, line: 436, baseType: !233, size: 64, offset: 192)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4373, file: !4374, line: 440, baseType: !24, size: 16, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4373, file: !4374, line: 441, baseType: !24, size: 16, offset: 272)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4373, file: !4374, line: 442, baseType: !24, size: 16, offset: 288)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4373, file: !4374, line: 443, baseType: !24, size: 16, offset: 304)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4373, file: !4374, line: 447, baseType: !233, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4373, file: !4374, line: 448, baseType: !233, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4373, file: !4374, line: 459, baseType: !4402, size: 256, offset: 448)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4403, size: 256, elements: !715)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4374, line: 428, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4373, file: !4374, line: 461, baseType: !233, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4373, file: !4374, line: 463, baseType: !233, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4373, file: !4374, line: 465, baseType: !233, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4373, file: !4374, line: 466, baseType: !233, size: 64, offset: 896)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4373, file: !4374, line: 467, baseType: !233, size: 64, offset: 960)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4373, file: !4374, line: 473, baseType: !4411, size: 64, offset: 1024)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4374, line: 10, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4373, file: !4374, line: 480, baseType: !233, size: 64, offset: 1088)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4373, file: !4374, line: 482, baseType: !35, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4373, file: !4374, line: 491, baseType: !97, size: 32, offset: 1184)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4373, file: !4374, line: 501, baseType: !4417, size: 33792, offset: 1536)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4418, line: 448, size: 33792, elements: !4419)
!4418 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4419 = !{!4420, !4421, !4422, !4584, !4585, !4591, !4592}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4417, file: !4418, line: 461, baseType: !35, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4417, file: !4418, line: 468, baseType: !233, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4417, file: !4418, line: 476, baseType: !4423, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4418, line: 356, size: 33280, align: 512, elements: !4425)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4424, file: !4418, line: 358, baseType: !35, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4424, file: !4418, line: 361, baseType: !35, size: 32, offset: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4424, file: !4418, line: 364, baseType: !103, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4424, file: !4418, line: 367, baseType: !103, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4424, file: !4418, line: 370, baseType: !103, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4424, file: !4418, line: 373, baseType: !35, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4424, file: !4418, line: 376, baseType: !35, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4424, file: !4418, line: 391, baseType: !35, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4424, file: !4418, line: 394, baseType: !35, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4424, file: !4418, line: 397, baseType: !4436, size: 32768, offset: 512)
!4436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4418, line: 348, size: 32768, elements: !4437)
!4437 = !{!4438, !4453, !4490, !4567, !4580}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4436, file: !4418, line: 349, baseType: !4439, size: 896)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4418, line: 12, size: 896, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4452}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4439, file: !4418, line: 13, baseType: !97, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4439, file: !4418, line: 14, baseType: !97, size: 32, offset: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4439, file: !4418, line: 15, baseType: !97, size: 32, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4439, file: !4418, line: 16, baseType: !97, size: 32, offset: 96)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4439, file: !4418, line: 17, baseType: !97, size: 32, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4439, file: !4418, line: 18, baseType: !97, size: 32, offset: 160)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4439, file: !4418, line: 19, baseType: !97, size: 32, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4439, file: !4418, line: 22, baseType: !4449, size: 640, offset: 224)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 640, elements: !4450)
!4450 = !{!4451}
!4451 = !DISubrange(count: 20)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4439, file: !4418, line: 25, baseType: !97, size: 32, offset: 864)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4436, file: !4418, line: 350, baseType: !4454, size: 4096, align: 128)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4418, line: 34, size: 4096, align: 128, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4475, !4476, !4477, !4479, !4481, !4485}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4454, file: !4418, line: 35, baseType: !163, size: 16)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4454, file: !4418, line: 36, baseType: !163, size: 16, offset: 16)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4454, file: !4418, line: 37, baseType: !163, size: 16, offset: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4454, file: !4418, line: 38, baseType: !163, size: 16, offset: 48)
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4454, file: !4418, line: 39, baseType: !4461, size: 128, offset: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4454, file: !4418, line: 39, size: 128, elements: !4462)
!4462 = !{!4463, !4468}
!4463 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !4418, line: 40, baseType: !4464, size: 128)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4461, file: !4418, line: 40, size: 128, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4464, file: !4418, line: 41, baseType: !103, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4464, file: !4418, line: 42, baseType: !103, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !4418, line: 44, baseType: !4469, size: 128)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4461, file: !4418, line: 44, size: 128, elements: !4470)
!4470 = !{!4471, !4472, !4473, !4474}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4469, file: !4418, line: 45, baseType: !97, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4469, file: !4418, line: 46, baseType: !97, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4469, file: !4418, line: 47, baseType: !97, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4469, file: !4418, line: 48, baseType: !97, size: 32, offset: 96)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4454, file: !4418, line: 51, baseType: !97, size: 32, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4454, file: !4418, line: 52, baseType: !97, size: 32, offset: 224)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4454, file: !4418, line: 55, baseType: !4478, size: 1024, offset: 256)
!4478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1024, elements: !113)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4454, file: !4418, line: 58, baseType: !4480, size: 2048, offset: 1280)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2048, elements: !329)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4454, file: !4418, line: 60, baseType: !4482, size: 384, offset: 3328)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 384, elements: !4483)
!4483 = !{!4484}
!4484 = !DISubrange(count: 12)
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !4454, file: !4418, line: 62, baseType: !4486, size: 384, offset: 3712)
!4486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4454, file: !4418, line: 62, size: 384, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4486, file: !4418, line: 63, baseType: !4482, size: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4486, file: !4418, line: 64, baseType: !4482, size: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4436, file: !4418, line: 351, baseType: !4491, size: 1088)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4418, line: 79, size: 1088, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4566}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4491, file: !4418, line: 80, baseType: !97, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4491, file: !4418, line: 81, baseType: !97, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4491, file: !4418, line: 82, baseType: !97, size: 32, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4491, file: !4418, line: 83, baseType: !97, size: 32, offset: 96)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4491, file: !4418, line: 84, baseType: !97, size: 32, offset: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4491, file: !4418, line: 85, baseType: !97, size: 32, offset: 160)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4491, file: !4418, line: 86, baseType: !97, size: 32, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4491, file: !4418, line: 88, baseType: !4449, size: 640, offset: 224)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4491, file: !4418, line: 89, baseType: !156, size: 8, offset: 864)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4491, file: !4418, line: 90, baseType: !156, size: 8, offset: 872)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4491, file: !4418, line: 91, baseType: !156, size: 8, offset: 880)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4491, file: !4418, line: 92, baseType: !156, size: 8, offset: 888)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4491, file: !4418, line: 93, baseType: !156, size: 8, offset: 896)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4491, file: !4418, line: 94, baseType: !156, size: 8, offset: 904)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4491, file: !4418, line: 95, baseType: !4508, size: 64, offset: 960)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4510, line: 11, size: 128, elements: !4511)
!4510 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4509, file: !4510, line: 12, baseType: !359, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4509, file: !4510, line: 13, baseType: !4514, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4516, line: 103, size: 1344, elements: !4517)
!4516 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4546, !4547, !4548}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4515, file: !4516, line: 109, baseType: !233, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4515, file: !4516, line: 110, baseType: !233, size: 64, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4515, file: !4516, line: 111, baseType: !233, size: 64, offset: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4515, file: !4516, line: 112, baseType: !233, size: 64, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4515, file: !4516, line: 113, baseType: !233, size: 64, offset: 256)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4515, file: !4516, line: 114, baseType: !233, size: 64, offset: 320)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4515, file: !4516, line: 117, baseType: !233, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4515, file: !4516, line: 118, baseType: !233, size: 64, offset: 448)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4515, file: !4516, line: 119, baseType: !233, size: 64, offset: 512)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4515, file: !4516, line: 120, baseType: !233, size: 64, offset: 576)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4515, file: !4516, line: 121, baseType: !233, size: 64, offset: 640)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4515, file: !4516, line: 122, baseType: !233, size: 64, offset: 704)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4515, file: !4516, line: 123, baseType: !233, size: 64, offset: 768)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4515, file: !4516, line: 124, baseType: !233, size: 64, offset: 832)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4515, file: !4516, line: 125, baseType: !233, size: 64, offset: 896)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4515, file: !4516, line: 139, baseType: !233, size: 64, offset: 960)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4515, file: !4516, line: 142, baseType: !233, size: 64, offset: 1024)
!4535 = !DIDerivedType(tag: DW_TAG_member, scope: !4515, file: !4516, line: 144, baseType: !4536, size: 64, offset: 1088)
!4536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4515, file: !4516, line: 144, size: 64, elements: !4537)
!4537 = !{!4538, !4539, !4540}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4536, file: !4516, line: 146, baseType: !163, size: 16)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4536, file: !4516, line: 148, baseType: !103, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4536, file: !4516, line: 150, baseType: !4541, size: 64)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4516, line: 59, size: 64, elements: !4542)
!4542 = !{!4543, !4544, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4541, file: !4516, line: 61, baseType: !103, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4541, file: !4516, line: 63, baseType: !103, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4541, file: !4516, line: 65, baseType: !103, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4515, file: !4516, line: 153, baseType: !233, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4515, file: !4516, line: 154, baseType: !233, size: 64, offset: 1216)
!4548 = !DIDerivedType(tag: DW_TAG_member, scope: !4515, file: !4516, line: 156, baseType: !4549, size: 64, offset: 1280)
!4549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4515, file: !4516, line: 156, size: 64, elements: !4550)
!4550 = !{!4551, !4552, !4553}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4549, file: !4516, line: 158, baseType: !163, size: 16)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4549, file: !4516, line: 160, baseType: !103, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4549, file: !4516, line: 162, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4516, line: 69, size: 64, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4554, file: !4516, line: 71, baseType: !103, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4554, file: !4516, line: 73, baseType: !103, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4554, file: !4516, line: 75, baseType: !103, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4554, file: !4516, line: 77, baseType: !103, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4554, file: !4516, line: 80, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4554, file: !4516, line: 83, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4554, file: !4516, line: 86, baseType: !103, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4554, file: !4516, line: 88, baseType: !103, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4554, file: !4516, line: 93, baseType: !103, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4554, file: !4516, line: 100, baseType: !103, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4491, file: !4418, line: 96, baseType: !97, size: 32, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4436, file: !4418, line: 352, baseType: !4568, size: 4608, align: 512)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4418, line: 333, size: 4608, align: 512, elements: !4569)
!4569 = !{!4570, !4571, !4578}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4568, file: !4418, line: 334, baseType: !4454, size: 4096, align: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4568, file: !4418, line: 335, baseType: !4572, size: 512, offset: 4096)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4418, line: 312, size: 512, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4572, file: !4418, line: 313, baseType: !103, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4572, file: !4418, line: 314, baseType: !103, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4572, file: !4418, line: 315, baseType: !4577, size: 384, offset: 128)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 384, elements: !829)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4568, file: !4418, line: 336, baseType: !4579, offset: 4608)
!4579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !734)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4436, file: !4418, line: 353, baseType: !4581, size: 32768)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32768, elements: !4582)
!4582 = !{!4583}
!4583 = !DISubrange(count: 4096)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4417, file: !4418, line: 484, baseType: !4423, size: 64, offset: 192)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4417, file: !4418, line: 491, baseType: !4586, size: 128, offset: 256)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4418, line: 404, size: 128, elements: !4587)
!4587 = !{!4588, !4589, !4590}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4586, file: !4418, line: 424, baseType: !103, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4586, file: !4418, line: 432, baseType: !35, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4586, file: !4418, line: 440, baseType: !35, size: 32, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4417, file: !4418, line: 498, baseType: !4586, size: 128, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4417, file: !4418, line: 508, baseType: !4424, size: 33280, align: 512, offset: 512)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3458, file: !3459, line: 16, baseType: !719, size: 192, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3458, file: !3459, line: 17, baseType: !147, size: 32, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !225, file: !19, line: 1240, baseType: !258, size: 64, offset: 6912)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !225, file: !19, line: 1243, baseType: !97, size: 32, offset: 6976)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !225, file: !19, line: 1245, baseType: !799, size: 64, offset: 7040)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !225, file: !19, line: 1246, baseType: !799, size: 64, offset: 7104)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !225, file: !19, line: 1248, baseType: !99, size: 32, offset: 7168)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !225, file: !19, line: 1249, baseType: !4601, size: 64, offset: 7232)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !225, file: !19, line: 1252, baseType: !2521, size: 256, offset: 7296)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !225, file: !19, line: 1253, baseType: !4605, size: 128, offset: 7552)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4606, line: 21, baseType: !4607)
!4606 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4606, line: 19, size: 128, elements: !4608)
!4608 = !{!4609}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4607, file: !4606, line: 20, baseType: !4610, size: 128)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, elements: !3829)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !225, file: !19, line: 1255, baseType: !35, size: 32, offset: 7680)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !225, file: !19, line: 1261, baseType: !658, size: 256, offset: 7744)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !225, file: !19, line: 1267, baseType: !188, size: 64, offset: 8000)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !225, file: !19, line: 1269, baseType: !168, size: 64, offset: 8064)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !225, file: !19, line: 1271, baseType: !4616, size: 448, offset: 8128)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2348, line: 63, size: 448, elements: !4617)
!4617 = !{!4618, !4623, !4624, !4625, !4626, !4627, !4628}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4616, file: !2348, line: 64, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!233, !4622, !2346}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4616, file: !2348, line: 66, baseType: !4619, size: 64, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4616, file: !2348, line: 69, baseType: !359, size: 64, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4616, file: !2348, line: 70, baseType: !151, size: 32, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4616, file: !2348, line: 71, baseType: !35, size: 32, offset: 224)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4616, file: !2348, line: 74, baseType: !37, size: 128, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4616, file: !2348, line: 85, baseType: !4629, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !225, file: !19, line: 1274, baseType: !414, size: 64, offset: 8576)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !225, file: !19, line: 1280, baseType: !414, size: 64, offset: 8640)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !225, file: !19, line: 1283, baseType: !151, size: 32, offset: 8704)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !225, file: !19, line: 1286, baseType: !1195, size: 32, offset: 8736)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !225, file: !19, line: 1289, baseType: !2154, size: 64, offset: 8768)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !225, file: !19, line: 1290, baseType: !706, size: 64, offset: 8832)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !225, file: !19, line: 1297, baseType: !923, size: 64, offset: 8896)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !225, file: !19, line: 1304, baseType: !4638, size: 64, offset: 8960)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4639, line: 49, size: 64, elements: !4640)
!4639 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4640 = !{!4641}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4638, file: !4639, line: 50, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4639, line: 41, size: 512, align: 512, elements: !4644)
!4644 = !{!4645, !4646, !4651}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4643, file: !4639, line: 43, baseType: !127, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4643, file: !4639, line: 45, baseType: !4647, size: 192, offset: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4639, line: 29, size: 192, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4647, file: !4639, line: 30, baseType: !37, size: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4647, file: !4639, line: 32, baseType: !359, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4643, file: !4639, line: 46, baseType: !359, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !225, file: !19, line: 1305, baseType: !4638, size: 64, offset: 9024)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !225, file: !19, line: 1306, baseType: !546, size: 128, align: 64, offset: 9088)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !225, file: !19, line: 1307, baseType: !1326, size: 256, offset: 9216)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !225, file: !19, line: 1309, baseType: !658, size: 256, offset: 9472)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !225, file: !19, line: 1314, baseType: !151, size: 32, offset: 9728)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !225, file: !19, line: 1317, baseType: !127, size: 32, align: 512, offset: 10240)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !225, file: !19, line: 1318, baseType: !37, size: 128, offset: 10304)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !225, file: !19, line: 1320, baseType: !127, size: 32, offset: 10432)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !225, file: !19, line: 1321, baseType: !37, size: 128, offset: 10496)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !219, file: !220, line: 73, baseType: !151, size: 32, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !219, file: !220, line: 74, baseType: !4663, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !765, line: 42, flags: DIFlagFwdDecl)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !170, file: !65, line: 141, baseType: !4667, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!151, !2408, !542}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !170, file: !65, line: 142, baseType: !4671, size: 64, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!63, !63, !4674}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !64, file: !65, line: 96, baseType: !224, size: 64, offset: 832)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !64, file: !65, line: 97, baseType: !233, size: 64, offset: 896)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !64, file: !65, line: 98, baseType: !258, size: 64, offset: 960)
!4679 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !65, line: 100, baseType: !4680, size: 128, offset: 1024)
!4680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !65, line: 100, size: 128, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4680, file: !65, line: 101, baseType: !37, size: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4680, file: !65, line: 102, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !64, file: !65, line: 104, baseType: !37, size: 128, offset: 1152)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !64, file: !65, line: 105, baseType: !37, size: 128, offset: 1280)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !64, file: !65, line: 113, baseType: !4688, size: 128, offset: 1408)
!4688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !65, line: 109, size: 128, elements: !4689)
!4689 = !{!4690, !4691, !4692}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4688, file: !65, line: 110, baseType: !710, size: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4688, file: !65, line: 111, baseType: !79, size: 128)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4688, file: !65, line: 112, baseType: !546, size: 128, align: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !57, file: !19, line: 1968, baseType: !4694, size: 64, offset: 64)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!188, !63, !17, !4697}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4699, line: 10, size: 128, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4698, file: !4699, line: 11, baseType: !1722, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4698, file: !4699, line: 12, baseType: !258, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !57, file: !19, line: 1969, baseType: !4704, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!151, !4663, !17, !151}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !57, file: !19, line: 1970, baseType: !4708, size: 64, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!51, !17, !151, !542}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !57, file: !19, line: 1972, baseType: !4712, size: 64, offset: 256)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!151, !63, !213, !151}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !57, file: !19, line: 1974, baseType: !4716, size: 64, offset: 320)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!151, !4663, !17, !63, !22, !542}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !57, file: !19, line: 1976, baseType: !4720, size: 64, offset: 384)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!151, !63, !17, !63}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !57, file: !19, line: 1977, baseType: !4724, size: 64, offset: 448)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!151, !17, !63}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !57, file: !19, line: 1978, baseType: !4728, size: 64, offset: 512)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!151, !4663, !17, !63, !188}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !57, file: !19, line: 1980, baseType: !4732, size: 64, offset: 576)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!151, !4663, !17, !63, !22}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !57, file: !19, line: 1982, baseType: !4724, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !57, file: !19, line: 1983, baseType: !4737, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!151, !4663, !17, !63, !22, !229}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !57, file: !19, line: 1985, baseType: !4741, size: 64, offset: 768)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!151, !4663, !17, !63, !17, !63, !35}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !57, file: !19, line: 1987, baseType: !4745, size: 64, offset: 832)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!151, !4663, !63, !4748}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4750)
!4750 = !{!4751, !4752, !4753, !4763, !4772, !4773, !4778, !4779, !4780}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4749, file: !19, line: 227, baseType: !35, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4749, file: !19, line: 228, baseType: !22, size: 16, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, scope: !4749, file: !19, line: 241, baseType: !4754, size: 32, offset: 64)
!4754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4749, file: !19, line: 241, size: 32, elements: !4755)
!4755 = !{!4756, !4757}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4754, file: !19, line: 242, baseType: !27, size: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4754, file: !19, line: 243, baseType: !4758, size: 32)
!4758 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4759, line: 16, baseType: !4760)
!4759 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4759, line: 14, size: 32, elements: !4761)
!4761 = !{!4762}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4760, file: !4759, line: 15, baseType: !32, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, scope: !4749, file: !19, line: 245, baseType: !4764, size: 32, offset: 96)
!4764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4749, file: !19, line: 245, size: 32, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4764, file: !19, line: 246, baseType: !43, size: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4764, file: !19, line: 247, baseType: !4768, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4759, line: 20, baseType: !4769)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4759, line: 18, size: 32, elements: !4770)
!4770 = !{!4771}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4769, file: !4759, line: 19, baseType: !47, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4749, file: !19, line: 249, baseType: !235, size: 64, offset: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4749, file: !19, line: 250, baseType: !4774, size: 128, offset: 192)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !800, line: 13, size: 128, elements: !4775)
!4775 = !{!4776, !4777}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4774, file: !800, line: 14, baseType: !799, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4774, file: !800, line: 15, baseType: !359, size: 64, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4749, file: !19, line: 251, baseType: !4774, size: 128, offset: 320)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4749, file: !19, line: 252, baseType: !4774, size: 128, offset: 448)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4749, file: !19, line: 259, baseType: !639, size: 64, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !57, file: !19, line: 1988, baseType: !4782, size: 64, offset: 896)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!151, !4663, !2408, !4785, !97, !35}
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4787, line: 22, size: 1280, elements: !4788)
!4787 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4786, file: !4787, line: 23, baseType: !97, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4786, file: !4787, line: 24, baseType: !22, size: 16, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4786, file: !4787, line: 25, baseType: !35, size: 32, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4786, file: !4787, line: 26, baseType: !807, size: 32, offset: 96)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4786, file: !4787, line: 27, baseType: !103, size: 64, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4786, file: !4787, line: 28, baseType: !103, size: 64, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4786, file: !4787, line: 41, baseType: !103, size: 64, offset: 256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4786, file: !4787, line: 42, baseType: !229, size: 32, offset: 320)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4786, file: !4787, line: 43, baseType: !229, size: 32, offset: 352)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4786, file: !4787, line: 44, baseType: !27, size: 32, offset: 384)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4786, file: !4787, line: 45, baseType: !43, size: 32, offset: 416)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4786, file: !4787, line: 46, baseType: !235, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4786, file: !4787, line: 47, baseType: !4774, size: 128, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4786, file: !4787, line: 48, baseType: !4774, size: 128, offset: 640)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4786, file: !4787, line: 49, baseType: !4774, size: 128, offset: 768)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4786, file: !4787, line: 50, baseType: !4774, size: 128, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4786, file: !4787, line: 51, baseType: !103, size: 64, offset: 1024)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4786, file: !4787, line: 52, baseType: !103, size: 64, offset: 1088)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4786, file: !4787, line: 53, baseType: !97, size: 32, offset: 1152)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4786, file: !4787, line: 54, baseType: !97, size: 32, offset: 1184)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4786, file: !4787, line: 55, baseType: !103, size: 64, offset: 1216)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !57, file: !19, line: 1990, baseType: !4811, size: 64, offset: 960)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!356, !63, !213, !369}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !57, file: !19, line: 1991, baseType: !4815, size: 64, offset: 1024)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!151, !17, !4818, !103, !103}
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !57, file: !19, line: 1993, baseType: !4821, size: 64, offset: 1088)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!151, !17, !151}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !57, file: !19, line: 1994, baseType: !4825, size: 64, offset: 1152)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!151, !17, !63, !639, !35, !22}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !57, file: !19, line: 1997, baseType: !4829, size: 64, offset: 1216)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!151, !4663, !17, !639, !22}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !57, file: !19, line: 1999, baseType: !4833, size: 64, offset: 1280)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!51, !4663, !63, !151}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !57, file: !19, line: 2001, baseType: !4837, size: 64, offset: 1344)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!151, !4663, !63, !51, !151}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !57, file: !19, line: 2003, baseType: !4841, size: 64, offset: 1408)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!151, !4663, !63, !4844}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !57, file: !19, line: 2005, baseType: !4847, size: 64, offset: 1472)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!151, !63, !4844}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !57, file: !19, line: 2006, baseType: !4851, size: 64, offset: 1536)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!4854, !17}
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4856)
!4856 = !{!4857, !4858}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4855, file: !19, line: 3193, baseType: !402, size: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4855, file: !19, line: 3194, baseType: !97, size: 32, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !18, file: !19, line: 655, baseType: !224, size: 64, offset: 448)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !18, file: !19, line: 656, baseType: !397, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !18, file: !19, line: 659, baseType: !258, size: 64, offset: 576)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !18, file: !19, line: 663, baseType: !233, size: 64, offset: 640)
!4863 = !DIDerivedType(tag: DW_TAG_member, scope: !18, file: !19, line: 671, baseType: !4864, size: 32, offset: 704)
!4864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 671, size: 32, elements: !4865)
!4865 = !{!4866, !4868}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4864, file: !19, line: 672, baseType: !4867, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4864, file: !19, line: 673, baseType: !35, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !18, file: !19, line: 675, baseType: !229, size: 32, offset: 736)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !18, file: !19, line: 676, baseType: !235, size: 64, offset: 768)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !18, file: !19, line: 677, baseType: !4774, size: 128, offset: 832)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !18, file: !19, line: 678, baseType: !4774, size: 128, offset: 960)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !18, file: !19, line: 679, baseType: !4774, size: 128, offset: 1088)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !18, file: !19, line: 680, baseType: !127, size: 32, offset: 1216)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !18, file: !19, line: 681, baseType: !24, size: 16, offset: 1248)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !18, file: !19, line: 682, baseType: !156, size: 8, offset: 1264)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !18, file: !19, line: 683, baseType: !156, size: 8, offset: 1272)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !18, file: !19, line: 684, baseType: !2481, size: 64, offset: 1280)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !18, file: !19, line: 691, baseType: !233, size: 64, offset: 1344)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !18, file: !19, line: 692, baseType: !410, size: 320, offset: 1408)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !18, file: !19, line: 694, baseType: !233, size: 64, offset: 1728)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !18, file: !19, line: 695, baseType: !233, size: 64, offset: 1792)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !18, file: !19, line: 697, baseType: !710, size: 128, offset: 1856)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !18, file: !19, line: 698, baseType: !37, size: 128, offset: 1984)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !18, file: !19, line: 707, baseType: !37, size: 128, offset: 2112)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !18, file: !19, line: 708, baseType: !37, size: 128, offset: 2240)
!4887 = !DIDerivedType(tag: DW_TAG_member, scope: !18, file: !19, line: 709, baseType: !4888, size: 128, offset: 2368)
!4888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 709, size: 128, elements: !4889)
!4889 = !{!4890, !4891}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4888, file: !19, line: 710, baseType: !706, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4888, file: !19, line: 711, baseType: !546, size: 128, align: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !18, file: !19, line: 713, baseType: !416, size: 64, offset: 2496)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !18, file: !19, line: 714, baseType: !416, size: 64, offset: 2560)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !18, file: !19, line: 715, baseType: !147, size: 32, offset: 2624)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !18, file: !19, line: 716, baseType: !147, size: 32, offset: 2656)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !18, file: !19, line: 717, baseType: !147, size: 32, offset: 2688)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !18, file: !19, line: 719, baseType: !147, size: 32, offset: 2720)
!4898 = !DIDerivedType(tag: DW_TAG_member, scope: !18, file: !19, line: 721, baseType: !4899, size: 64, offset: 2752)
!4899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 721, size: 64, elements: !4900)
!4900 = !{!4901, !4902}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4899, file: !19, line: 722, baseType: !959, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4899, file: !19, line: 723, baseType: !2227, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !18, file: !19, line: 725, baseType: !4904, size: 64, offset: 2816)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !18, file: !19, line: 726, baseType: !398, size: 1536, align: 64, offset: 2880)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !18, file: !19, line: 727, baseType: !37, size: 128, offset: 4416)
!4908 = !DIDerivedType(tag: DW_TAG_member, scope: !18, file: !19, line: 728, baseType: !4909, size: 64, offset: 4544)
!4909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 728, size: 64, elements: !4910)
!4910 = !{!4911, !4912, !4915, !4916}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4909, file: !19, line: 729, baseType: !1142, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4909, file: !19, line: 730, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4909, file: !19, line: 731, baseType: !213, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4909, file: !19, line: 732, baseType: !35, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !18, file: !19, line: 735, baseType: !99, size: 32, offset: 4608)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !18, file: !19, line: 738, baseType: !99, size: 32, offset: 4640)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !18, file: !19, line: 739, baseType: !4601, size: 64, offset: 4672)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !18, file: !19, line: 750, baseType: !258, size: 64, offset: 4736)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !13, file: !14, line: 217, baseType: !235, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !13, file: !14, line: 218, baseType: !103, size: 64, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "processed", scope: !13, file: !14, line: 219, baseType: !420, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !14, line: 220, baseType: !35, size: 32, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !13, file: !14, line: 221, baseType: !4926, size: 640, offset: 320)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !14, line: 94, size: 640, elements: !4927)
!4927 = !{!4928, !4929, !4930, !4931, !4932, !4933, !4934, !4937, !4938, !4939, !4958}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4926, file: !14, line: 95, baseType: !103, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4926, file: !14, line: 96, baseType: !235, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4926, file: !14, line: 97, baseType: !103, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4926, file: !14, line: 98, baseType: !163, size: 16, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4926, file: !14, line: 99, baseType: !163, size: 16, offset: 208)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4926, file: !14, line: 100, baseType: !2507, size: 64, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dax_dev", scope: !4926, file: !14, line: 101, baseType: !4935, size: 64, offset: 320)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DICompositeType(tag: DW_TAG_structure_type, name: "dax_device", file: !14, line: 101, flags: DIFlagFwdDecl)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "inline_data", scope: !4926, file: !14, line: 102, baseType: !258, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4926, file: !14, line: 103, baseType: !258, size: 64, offset: 448)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "folio_ops", scope: !4926, file: !14, line: 104, baseType: !4940, size: 64, offset: 512)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iomap_folio_ops", file: !14, line: 141, size: 192, elements: !4943)
!4943 = !{!4944, !4948, !4952}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "get_folio", scope: !4942, file: !14, line: 142, baseType: !4945, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!1522, !12, !235, !35}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "put_folio", scope: !4942, file: !14, line: 144, baseType: !4949, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !17, !235, !35, !1522}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_valid", scope: !4942, file: !14, line: 162, baseType: !4953, size: 64, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!542, !17, !4956}
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4926)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "validity_cookie", scope: !4926, file: !14, line: 105, baseType: !103, size: 64, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "srcmap", scope: !13, file: !14, line: 222, baseType: !4926, size: 640, offset: 960)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !13, file: !14, line: 223, baseType: !258, size: 64, offset: 1600)
!4961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !4962, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/iomap/.iter.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./fs/iomap -D KBUILD_MODFILE=\22fs/iomap/iomap\22 -D KBUILD_BASENAME=\22iter\22 -D KBUILD_MODNAME=\22iomap\22 -D __KBUILD_MODNAME=kmod_iomap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/iomap/iter.ll fs/iomap/iter.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4963, retainedTypes: !4969, globals: !4981, splitDebugInlining: false, nameTableKind: None)
!4962 = !DIFile(filename: "fs/iomap/iter.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84743aa46c24ce0370ddff9bb8e33c95")
!4963 = !{!269, !567, !737, !1439, !1633, !1698, !2253, !2322, !2696, !2833, !2895, !2968, !3045, !3053, !3184, !3194, !3200, !3208, !3241, !3273, !3734, !4273, !4964}
!4964 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4965, line: 10, baseType: !35, size: 32, elements: !4966)
!4965 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4966 = !{!4967, !4968}
!4967 = !DIEnumerator(name: "false", value: 0)
!4968 = !DIEnumerator(name: "true", value: 1)
!4969 = !{!233, !1992, !258, !151, !4970, !4973, !4979, !2188, !35, !97}
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4972)
!4972 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4973)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2055, line: 26, size: 192, elements: !4975)
!4975 = !{!4976, !4977, !4978}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4974, file: !2055, line: 27, baseType: !258, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4974, file: !2055, line: 28, baseType: !258, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4974, file: !2055, line: 29, baseType: !151, size: 32, offset: 128)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3635)
!4981 = !{!0, !7, !4982, !4984, !4986, !5016, !5018, !5045}
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace422", scope: !9, file: !2, line: 159, type: !258, isLocal: true, isDefinition: true)
!4984 = !DIGlobalVariableExpression(var: !4985, expr: !DIExpression())
!4985 = distinct !DIGlobalVariable(scope: null, file: !4962, line: 32, type: !3828, isLocal: true, isDefinition: true)
!4986 = !DIGlobalVariableExpression(var: !4987, expr: !DIExpression())
!4987 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_dstmap397", scope: !4988, file: !2, line: 155, type: !258, isLocal: true, isDefinition: true)
!4988 = distinct !DISubprogram(name: "trace_iomap_iter_dstmap", scope: !2, file: !2, line: 155, type: !4989, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !4992)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !17, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4992 = !{!4993, !4994, !4995, !4998, !5001, !5003, !5005, !5008, !5011, !5013, !5014}
!4993 = !DILocalVariable(name: "inode", arg: 1, scope: !4988, file: !2, line: 155, type: !17)
!4994 = !DILocalVariable(name: "iomap", arg: 2, scope: !4988, file: !2, line: 155, type: !4991)
!4995 = !DILocalVariable(name: "__idx", scope: !4996, file: !2, line: 155, type: !151)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !2, line: 155, column: 1)
!4997 = distinct !DILexicalBlock(scope: !4988, file: !2, line: 155, column: 1)
!4998 = !DILocalVariable(name: "pscr_ret__", scope: !4999, file: !2, line: 155, type: !151)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !2, line: 155, column: 1)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !2, line: 155, column: 1)
!5001 = !DILocalVariable(name: "__vpp_verify", scope: !5002, file: !2, line: 155, type: !1286)
!5002 = distinct !DILexicalBlock(scope: !4999, file: !2, line: 155, column: 1)
!5003 = !DILocalVariable(name: "pfo_val__", scope: !5004, file: !2, line: 155, type: !97)
!5004 = distinct !DILexicalBlock(scope: !4999, file: !2, line: 155, column: 1)
!5005 = !DILocalVariable(name: "__ret_warn_on", scope: !5006, file: !2, line: 155, type: !151)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !2, line: 155, column: 1)
!5007 = distinct !DILexicalBlock(scope: !4996, file: !2, line: 155, column: 1)
!5008 = !DILocalVariable(name: "__flags", scope: !5009, file: !2, line: 155, type: !151)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !2, line: 155, column: 1)
!5010 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 155, column: 1)
!5011 = !DILocalVariable(name: "it_func_ptr", scope: !5012, file: !2, line: 155, type: !4973)
!5012 = distinct !DILexicalBlock(scope: !4996, file: !2, line: 155, column: 1)
!5013 = !DILocalVariable(name: "__data", scope: !5012, file: !2, line: 155, type: !258)
!5014 = !DILocalVariable(name: "__UNIQUE_ID_rcu395", scope: !5015, file: !2, line: 155, type: !4973)
!5015 = distinct !DILexicalBlock(scope: !5012, file: !2, line: 155, column: 1)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace398", scope: !4988, file: !2, line: 155, type: !258, isLocal: true, isDefinition: true)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_iomap_iter_srcmap405", scope: !5020, file: !2, line: 156, type: !258, isLocal: true, isDefinition: true)
!5020 = distinct !DISubprogram(name: "trace_iomap_iter_srcmap", scope: !2, file: !2, line: 156, type: !4989, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5021)
!5021 = !{!5022, !5023, !5024, !5027, !5030, !5032, !5034, !5037, !5040, !5042, !5043}
!5022 = !DILocalVariable(name: "inode", arg: 1, scope: !5020, file: !2, line: 156, type: !17)
!5023 = !DILocalVariable(name: "iomap", arg: 2, scope: !5020, file: !2, line: 156, type: !4991)
!5024 = !DILocalVariable(name: "__idx", scope: !5025, file: !2, line: 156, type: !151)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !2, line: 156, column: 1)
!5026 = distinct !DILexicalBlock(scope: !5020, file: !2, line: 156, column: 1)
!5027 = !DILocalVariable(name: "pscr_ret__", scope: !5028, file: !2, line: 156, type: !151)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !2, line: 156, column: 1)
!5029 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 156, column: 1)
!5030 = !DILocalVariable(name: "__vpp_verify", scope: !5031, file: !2, line: 156, type: !1286)
!5031 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 156, column: 1)
!5032 = !DILocalVariable(name: "pfo_val__", scope: !5033, file: !2, line: 156, type: !97)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 156, column: 1)
!5034 = !DILocalVariable(name: "__ret_warn_on", scope: !5035, file: !2, line: 156, type: !151)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !2, line: 156, column: 1)
!5036 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 156, column: 1)
!5037 = !DILocalVariable(name: "__flags", scope: !5038, file: !2, line: 156, type: !151)
!5038 = distinct !DILexicalBlock(scope: !5039, file: !2, line: 156, column: 1)
!5039 = distinct !DILexicalBlock(scope: !5035, file: !2, line: 156, column: 1)
!5040 = !DILocalVariable(name: "it_func_ptr", scope: !5041, file: !2, line: 156, type: !4973)
!5041 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 156, column: 1)
!5042 = !DILocalVariable(name: "__data", scope: !5041, file: !2, line: 156, type: !258)
!5043 = !DILocalVariable(name: "__UNIQUE_ID_rcu403", scope: !5044, file: !2, line: 156, type: !4973)
!5044 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 156, column: 1)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace406", scope: !5020, file: !2, line: 156, type: !258, isLocal: true, isDefinition: true)
!5047 = !{!5048, !5049, !5050, !5051, !5054, !5057, !5059, !5061, !5064, !5067, !5069, !5070}
!5048 = !DILocalVariable(name: "iter", arg: 1, scope: !9, file: !2, line: 159, type: !12)
!5049 = !DILocalVariable(name: "ops", arg: 2, scope: !9, file: !2, line: 159, type: !1286)
!5050 = !DILocalVariable(name: "caller", arg: 3, scope: !9, file: !2, line: 159, type: !233)
!5051 = !DILocalVariable(name: "__idx", scope: !5052, file: !2, line: 159, type: !151)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !2, line: 159, column: 1)
!5053 = distinct !DILexicalBlock(scope: !9, file: !2, line: 159, column: 1)
!5054 = !DILocalVariable(name: "pscr_ret__", scope: !5055, file: !2, line: 159, type: !151)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !2, line: 159, column: 1)
!5056 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 159, column: 1)
!5057 = !DILocalVariable(name: "__vpp_verify", scope: !5058, file: !2, line: 159, type: !1286)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !2, line: 159, column: 1)
!5059 = !DILocalVariable(name: "pfo_val__", scope: !5060, file: !2, line: 159, type: !97)
!5060 = distinct !DILexicalBlock(scope: !5055, file: !2, line: 159, column: 1)
!5061 = !DILocalVariable(name: "__ret_warn_on", scope: !5062, file: !2, line: 159, type: !151)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !2, line: 159, column: 1)
!5063 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 159, column: 1)
!5064 = !DILocalVariable(name: "__flags", scope: !5065, file: !2, line: 159, type: !151)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !2, line: 159, column: 1)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !2, line: 159, column: 1)
!5067 = !DILocalVariable(name: "it_func_ptr", scope: !5068, file: !2, line: 159, type: !4973)
!5068 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 159, column: 1)
!5069 = !DILocalVariable(name: "__data", scope: !5068, file: !2, line: 159, type: !258)
!5070 = !DILocalVariable(name: "__UNIQUE_ID_rcu419", scope: !5071, file: !2, line: 159, type: !4973)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 159, column: 1)
!5072 = !{!"rsp"}
!5073 = !{i32 7, !"Dwarf Version", i32 5}
!5074 = !{i32 2, !"Debug Info Version", i32 3}
!5075 = !{i32 1, !"wchar_size", i32 2}
!5076 = !{i32 8, !"cf-protection-branch", i32 1}
!5077 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5078 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5079 = !{i32 1, !"Code Model", i32 2}
!5080 = !{i32 1, !"override-stack-alignment", i32 8}
!5081 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5082 = distinct !DISubprogram(name: "iomap_iter", scope: !4962, file: !4962, line: 74, type: !5083, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5097)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!151, !12, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5087)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iomap_ops", file: !14, line: 182, size: 128, elements: !5088)
!5088 = !{!5089, !5093}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_begin", scope: !5087, file: !14, line: 188, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!151, !17, !235, !235, !35, !4991, !4991}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_end", scope: !5087, file: !14, line: 198, baseType: !5094, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!151, !17, !235, !235, !356, !35, !4991}
!5097 = !{!5098, !5099, !5100}
!5098 = !DILocalVariable(name: "iter", arg: 1, scope: !5082, file: !4962, line: 74, type: !12)
!5099 = !DILocalVariable(name: "ops", arg: 2, scope: !5082, file: !4962, line: 74, type: !5085)
!5100 = !DILocalVariable(name: "ret", scope: !5082, file: !4962, line: 76, type: !151)
!5101 = !DILocation(line: 74, column: 35, scope: !5082)
!5102 = !DILocation(line: 74, column: 65, scope: !5082)
!5103 = !DILocation(line: 76, column: 2, scope: !5082)
!5104 = !DILocation(line: 76, column: 6, scope: !5082)
!5105 = !DILocation(line: 78, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5082, file: !4962, line: 78, column: 6)
!5107 = !DILocation(line: 78, column: 12, scope: !5106)
!5108 = !DILocation(line: 78, column: 18, scope: !5106)
!5109 = !DILocation(line: 78, column: 25, scope: !5106)
!5110 = !DILocation(line: 78, column: 28, scope: !5106)
!5111 = !DILocation(line: 78, column: 33, scope: !5106)
!5112 = !DILocation(line: 78, column: 6, scope: !5082)
!5113 = !DILocation(line: 79, column: 9, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5106, file: !4962, line: 78, column: 44)
!5115 = !DILocation(line: 79, column: 14, scope: !5114)
!5116 = !DILocation(line: 79, column: 24, scope: !5114)
!5117 = !DILocation(line: 79, column: 30, scope: !5114)
!5118 = !DILocation(line: 79, column: 37, scope: !5114)
!5119 = !DILocation(line: 79, column: 43, scope: !5114)
!5120 = !DILocation(line: 79, column: 61, scope: !5114)
!5121 = !DILocation(line: 79, column: 48, scope: !5114)
!5122 = !DILocation(line: 80, column: 5, scope: !5114)
!5123 = !DILocation(line: 80, column: 11, scope: !5114)
!5124 = !DILocation(line: 80, column: 21, scope: !5114)
!5125 = !DILocation(line: 80, column: 27, scope: !5114)
!5126 = !DILocation(line: 80, column: 33, scope: !5114)
!5127 = !DILocation(line: 81, column: 5, scope: !5114)
!5128 = !DILocation(line: 81, column: 11, scope: !5114)
!5129 = !DILocation(line: 81, column: 19, scope: !5114)
!5130 = !DILocation(line: 81, column: 25, scope: !5114)
!5131 = !DILocation(line: 79, column: 7, scope: !5114)
!5132 = !DILocation(line: 82, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5114, file: !4962, line: 82, column: 7)
!5134 = !DILocation(line: 82, column: 11, scope: !5133)
!5135 = !DILocation(line: 82, column: 15, scope: !5133)
!5136 = !DILocation(line: 82, column: 19, scope: !5133)
!5137 = !DILocation(line: 82, column: 25, scope: !5133)
!5138 = !DILocation(line: 82, column: 7, scope: !5114)
!5139 = !DILocation(line: 83, column: 11, scope: !5133)
!5140 = !DILocation(line: 83, column: 4, scope: !5133)
!5141 = !DILocation(line: 84, column: 2, scope: !5114)
!5142 = !DILocation(line: 86, column: 19, scope: !5082)
!5143 = !DILocation(line: 86, column: 25, scope: !5082)
!5144 = !DILocation(line: 86, column: 30, scope: !5082)
!5145 = !DILocation(line: 86, column: 2, scope: !5082)
!5146 = !DILocation(line: 87, column: 27, scope: !5082)
!5147 = !DILocation(line: 87, column: 8, scope: !5082)
!5148 = !DILocation(line: 87, column: 6, scope: !5082)
!5149 = !DILocation(line: 88, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5082, file: !4962, line: 88, column: 6)
!5151 = !DILocation(line: 88, column: 10, scope: !5150)
!5152 = !DILocation(line: 88, column: 6, scope: !5082)
!5153 = !DILocation(line: 89, column: 10, scope: !5150)
!5154 = !DILocation(line: 89, column: 3, scope: !5150)
!5155 = !DILocation(line: 91, column: 8, scope: !5082)
!5156 = !DILocation(line: 91, column: 13, scope: !5082)
!5157 = !DILocation(line: 91, column: 25, scope: !5082)
!5158 = !DILocation(line: 91, column: 31, scope: !5082)
!5159 = !DILocation(line: 91, column: 38, scope: !5082)
!5160 = !DILocation(line: 91, column: 44, scope: !5082)
!5161 = !DILocation(line: 91, column: 49, scope: !5082)
!5162 = !DILocation(line: 91, column: 55, scope: !5082)
!5163 = !DILocation(line: 91, column: 60, scope: !5082)
!5164 = !DILocation(line: 91, column: 66, scope: !5082)
!5165 = !DILocation(line: 92, column: 12, scope: !5082)
!5166 = !DILocation(line: 92, column: 18, scope: !5082)
!5167 = !DILocation(line: 92, column: 26, scope: !5082)
!5168 = !DILocation(line: 92, column: 32, scope: !5082)
!5169 = !DILocation(line: 91, column: 6, scope: !5082)
!5170 = !DILocation(line: 93, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5082, file: !4962, line: 93, column: 6)
!5172 = !DILocation(line: 93, column: 10, scope: !5171)
!5173 = !DILocation(line: 93, column: 6, scope: !5082)
!5174 = !DILocation(line: 94, column: 10, scope: !5171)
!5175 = !DILocation(line: 94, column: 3, scope: !5171)
!5176 = !DILocation(line: 95, column: 18, scope: !5082)
!5177 = !DILocation(line: 95, column: 2, scope: !5082)
!5178 = !DILocation(line: 96, column: 2, scope: !5082)
!5179 = !DILocation(line: 97, column: 1, scope: !5082)
!5180 = distinct !DISubprogram(name: "iomap_length", scope: !14, file: !14, line: 234, type: !5181, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5185)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!103, !5183}
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!5185 = !{!5186, !5187, !5188, !5191, !5192, !5195}
!5186 = !DILocalVariable(name: "iter", arg: 1, scope: !5180, file: !14, line: 234, type: !5183)
!5187 = !DILocalVariable(name: "end", scope: !5180, file: !14, line: 236, type: !103)
!5188 = !DILocalVariable(name: "__UNIQUE_ID___x335", scope: !5189, file: !14, line: 239, type: !103)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !14, line: 239, column: 9)
!5190 = distinct !DILexicalBlock(scope: !5180, file: !14, line: 238, column: 6)
!5191 = !DILocalVariable(name: "__UNIQUE_ID___y336", scope: !5189, file: !14, line: 239, type: !103)
!5192 = !DILocalVariable(name: "__UNIQUE_ID___x337", scope: !5193, file: !14, line: 240, type: !5194)
!5193 = distinct !DILexicalBlock(scope: !5180, file: !14, line: 240, column: 9)
!5194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!5195 = !DILocalVariable(name: "__UNIQUE_ID___y338", scope: !5193, file: !14, line: 240, type: !103)
!5196 = !DILocation(line: 234, column: 57, scope: !5180)
!5197 = !DILocation(line: 236, column: 2, scope: !5180)
!5198 = !DILocation(line: 236, column: 6, scope: !5180)
!5199 = !DILocation(line: 236, column: 12, scope: !5180)
!5200 = !DILocation(line: 236, column: 18, scope: !5180)
!5201 = !DILocation(line: 236, column: 24, scope: !5180)
!5202 = !DILocation(line: 236, column: 33, scope: !5180)
!5203 = !DILocation(line: 236, column: 39, scope: !5180)
!5204 = !DILocation(line: 236, column: 45, scope: !5180)
!5205 = !DILocation(line: 236, column: 31, scope: !5180)
!5206 = !DILocation(line: 238, column: 6, scope: !5190)
!5207 = !DILocation(line: 238, column: 12, scope: !5190)
!5208 = !DILocation(line: 238, column: 19, scope: !5190)
!5209 = !DILocation(line: 238, column: 24, scope: !5190)
!5210 = !DILocation(line: 238, column: 6, scope: !5180)
!5211 = !DILocation(line: 239, column: 9, scope: !5189)
!5212 = !DILocation(line: 239, column: 9, scope: !5190)
!5213 = !DILocation(line: 239, column: 7, scope: !5190)
!5214 = !DILocation(line: 239, column: 3, scope: !5190)
!5215 = !DILocation(line: 240, column: 9, scope: !5193)
!5216 = !DILocation(line: 240, column: 9, scope: !5180)
!5217 = !DILocation(line: 241, column: 1, scope: !5180)
!5218 = !DILocation(line: 240, column: 2, scope: !5180)
!5219 = !DILocation(line: 159, column: 1, scope: !9)
!5220 = !DILocation(line: 159, column: 1, scope: !5053)
!5221 = !DILocation(line: 159, column: 1, scope: !5052)
!5222 = !DILocation(line: 159, column: 1, scope: !5055)
!5223 = !DILocation(line: 159, column: 1, scope: !5058)
!5224 = !DILocation(line: 159, column: 1, scope: !5060)
!5225 = !{i64 2155839624}
!5226 = !DILocation(line: 159, column: 1, scope: !5056)
!5227 = !DILocation(line: 159, column: 1, scope: !5062)
!5228 = !DILocation(line: 159, column: 1, scope: !5066)
!5229 = !DILocation(line: 159, column: 1, scope: !5065)
!5230 = !DILocation(line: 159, column: 1, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5065, file: !2, line: 159, column: 1)
!5232 = !DILocation(line: 159, column: 1, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5065, file: !2, line: 159, column: 1)
!5234 = !{i64 2155840832, i64 2155840861, i64 2155840907, i64 2155840965, i64 2155841019, i64 2155841073, i64 2155841128, i64 2155841159, i64 2155841467, i64 2155841473, i64 2155841520, i64 2155841543, i64 2155841569}
!5235 = !DILocation(line: 159, column: 1, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5065, file: !2, line: 159, column: 1)
!5237 = !DILocation(line: 159, column: 1, scope: !5063)
!5238 = !DILocation(line: 159, column: 1, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 159, column: 1)
!5240 = !{i64 2155841910}
!5241 = !DILocation(line: 159, column: 1, scope: !5068)
!5242 = !DILocation(line: 159, column: 1, scope: !5071)
!5243 = !DILocation(line: 159, column: 1, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5071, file: !2, line: 159, column: 1)
!5245 = !DILocation(line: 159, column: 1, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5244, file: !2, line: 159, column: 1)
!5247 = !DILocation(line: 159, column: 1, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 159, column: 1)
!5249 = !DILocation(line: 159, column: 1, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5248, file: !2, line: 159, column: 1)
!5251 = !DILocation(line: 159, column: 1, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5250, file: !2, line: 159, column: 1)
!5253 = !DILocation(line: 159, column: 1, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 159, column: 1)
!5255 = !{i64 2155848041}
!5256 = !DILocation(line: 159, column: 1, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5254, file: !2, line: 159, column: 1)
!5258 = !DILocation(line: 159, column: 1, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5257, file: !2, line: 159, column: 1)
!5260 = !{i64 2155848200}
!5261 = distinct !DISubprogram(name: "iomap_iter_advance", scope: !4962, file: !4962, line: 22, type: !5262, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!151, !12}
!5264 = !{!5265, !5266, !5267, !5272}
!5265 = !DILocalVariable(name: "iter", arg: 1, scope: !5261, file: !4962, line: 22, type: !12)
!5266 = !DILocalVariable(name: "stale", scope: !5261, file: !4962, line: 24, type: !542)
!5267 = !DILocalVariable(name: "__ret_warn_on", scope: !5268, file: !4962, line: 32, type: !151)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !4962, line: 32, column: 7)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !4962, line: 32, column: 7)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !4962, line: 27, column: 26)
!5271 = distinct !DILexicalBlock(scope: !5261, file: !4962, line: 27, column: 6)
!5272 = !DILocalVariable(name: "__flags", scope: !5273, file: !4962, line: 32, type: !151)
!5273 = distinct !DILexicalBlock(scope: !5274, file: !4962, line: 32, column: 7)
!5274 = distinct !DILexicalBlock(scope: !5268, file: !4962, line: 32, column: 7)
!5275 = !DILocation(line: 22, column: 57, scope: !5261)
!5276 = !DILocation(line: 24, column: 2, scope: !5261)
!5277 = !DILocation(line: 24, column: 7, scope: !5261)
!5278 = !DILocation(line: 24, column: 15, scope: !5261)
!5279 = !DILocation(line: 24, column: 21, scope: !5261)
!5280 = !DILocation(line: 24, column: 27, scope: !5261)
!5281 = !DILocation(line: 24, column: 33, scope: !5261)
!5282 = !DILocation(line: 27, column: 6, scope: !5271)
!5283 = !DILocation(line: 27, column: 12, scope: !5271)
!5284 = !DILocation(line: 27, column: 18, scope: !5271)
!5285 = !DILocation(line: 27, column: 6, scope: !5261)
!5286 = !DILocation(line: 28, column: 7, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5270, file: !4962, line: 28, column: 7)
!5288 = !DILocation(line: 28, column: 13, scope: !5287)
!5289 = !DILocation(line: 28, column: 23, scope: !5287)
!5290 = !DILocation(line: 28, column: 7, scope: !5270)
!5291 = !DILocation(line: 29, column: 11, scope: !5287)
!5292 = !DILocation(line: 29, column: 17, scope: !5287)
!5293 = !DILocation(line: 29, column: 4, scope: !5287)
!5294 = !DILocation(line: 30, column: 8, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5270, file: !4962, line: 30, column: 7)
!5296 = !DILocation(line: 30, column: 14, scope: !5295)
!5297 = !DILocation(line: 30, column: 24, scope: !5295)
!5298 = !DILocation(line: 30, column: 28, scope: !5295)
!5299 = !{i8 0, i8 2}
!5300 = !DILocation(line: 30, column: 7, scope: !5270)
!5301 = !DILocation(line: 31, column: 4, scope: !5295)
!5302 = !DILocation(line: 32, column: 7, scope: !5268)
!5303 = !DILocation(line: 32, column: 7, scope: !5274)
!5304 = !DILocation(line: 32, column: 7, scope: !5273)
!5305 = !DILocation(line: 32, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5273, file: !4962, line: 32, column: 7)
!5307 = !DILocation(line: 32, column: 7, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5273, file: !4962, line: 32, column: 7)
!5309 = !{i64 2155976851, i64 2155976880, i64 2155976926, i64 2155976984, i64 2155977038, i64 2155977092, i64 2155977147, i64 2155977178, i64 2155977486, i64 2155977492, i64 2155977539, i64 2155977562, i64 2155977588}
!5310 = !DILocation(line: 32, column: 7, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5273, file: !4962, line: 32, column: 7)
!5312 = !DILocation(line: 32, column: 7, scope: !5269)
!5313 = !DILocation(line: 32, column: 7, scope: !5270)
!5314 = !DILocation(line: 33, column: 4, scope: !5269)
!5315 = !DILocation(line: 34, column: 16, scope: !5270)
!5316 = !DILocation(line: 34, column: 22, scope: !5270)
!5317 = !DILocation(line: 34, column: 3, scope: !5270)
!5318 = !DILocation(line: 34, column: 9, scope: !5270)
!5319 = !DILocation(line: 34, column: 13, scope: !5270)
!5320 = !DILocation(line: 35, column: 16, scope: !5270)
!5321 = !DILocation(line: 35, column: 22, scope: !5270)
!5322 = !DILocation(line: 35, column: 3, scope: !5270)
!5323 = !DILocation(line: 35, column: 9, scope: !5270)
!5324 = !DILocation(line: 35, column: 13, scope: !5270)
!5325 = !DILocation(line: 36, column: 8, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5270, file: !4962, line: 36, column: 7)
!5327 = !DILocation(line: 36, column: 14, scope: !5326)
!5328 = !DILocation(line: 36, column: 7, scope: !5270)
!5329 = !DILocation(line: 37, column: 4, scope: !5326)
!5330 = !DILocation(line: 38, column: 2, scope: !5270)
!5331 = !DILocation(line: 41, column: 2, scope: !5261)
!5332 = !DILocation(line: 41, column: 8, scope: !5261)
!5333 = !DILocation(line: 41, column: 18, scope: !5261)
!5334 = !DILocation(line: 42, column: 10, scope: !5261)
!5335 = !DILocation(line: 42, column: 16, scope: !5261)
!5336 = !DILocation(line: 42, column: 2, scope: !5261)
!5337 = !DILocation(line: 43, column: 10, scope: !5261)
!5338 = !DILocation(line: 43, column: 16, scope: !5261)
!5339 = !DILocation(line: 43, column: 2, scope: !5261)
!5340 = !DILocation(line: 44, column: 2, scope: !5261)
!5341 = !DILocation(line: 45, column: 1, scope: !5261)
!5342 = distinct !DISubprogram(name: "iomap_iter_done", scope: !4962, file: !4962, line: 47, type: !5343, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5345)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{null, !12}
!5345 = !{!5346, !5347, !5349, !5352, !5354, !5357, !5359, !5362, !5364}
!5346 = !DILocalVariable(name: "iter", arg: 1, scope: !5342, file: !4962, line: 47, type: !12)
!5347 = !DILocalVariable(name: "__ret_warn_on", scope: !5348, file: !4962, line: 49, type: !151)
!5348 = distinct !DILexicalBlock(scope: !5342, file: !4962, line: 49, column: 2)
!5349 = !DILocalVariable(name: "__flags", scope: !5350, file: !4962, line: 49, type: !151)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !4962, line: 49, column: 2)
!5351 = distinct !DILexicalBlock(scope: !5348, file: !4962, line: 49, column: 2)
!5352 = !DILocalVariable(name: "__ret_warn_on", scope: !5353, file: !4962, line: 50, type: !151)
!5353 = distinct !DILexicalBlock(scope: !5342, file: !4962, line: 50, column: 2)
!5354 = !DILocalVariable(name: "__flags", scope: !5355, file: !4962, line: 50, type: !151)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !4962, line: 50, column: 2)
!5356 = distinct !DILexicalBlock(scope: !5353, file: !4962, line: 50, column: 2)
!5357 = !DILocalVariable(name: "__ret_warn_on", scope: !5358, file: !4962, line: 51, type: !151)
!5358 = distinct !DILexicalBlock(scope: !5342, file: !4962, line: 51, column: 2)
!5359 = !DILocalVariable(name: "__flags", scope: !5360, file: !4962, line: 51, type: !151)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !4962, line: 51, column: 2)
!5361 = distinct !DILexicalBlock(scope: !5358, file: !4962, line: 51, column: 2)
!5362 = !DILocalVariable(name: "__ret_warn_on", scope: !5363, file: !4962, line: 52, type: !151)
!5363 = distinct !DILexicalBlock(scope: !5342, file: !4962, line: 52, column: 2)
!5364 = !DILocalVariable(name: "__flags", scope: !5365, file: !4962, line: 52, type: !151)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !4962, line: 52, column: 2)
!5366 = distinct !DILexicalBlock(scope: !5363, file: !4962, line: 52, column: 2)
!5367 = !DILocation(line: 47, column: 55, scope: !5342)
!5368 = !DILocation(line: 49, column: 2, scope: !5348)
!5369 = !DILocation(line: 49, column: 2, scope: !5351)
!5370 = !DILocation(line: 49, column: 2, scope: !5350)
!5371 = !DILocation(line: 49, column: 2, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5350, file: !4962, line: 49, column: 2)
!5373 = !DILocation(line: 49, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5350, file: !4962, line: 49, column: 2)
!5375 = !{i64 2155978554, i64 2155978583, i64 2155978629, i64 2155978687, i64 2155978741, i64 2155978795, i64 2155978850, i64 2155978881, i64 2155979189, i64 2155979195, i64 2155979242, i64 2155979265, i64 2155979291}
!5376 = !DILocation(line: 49, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5350, file: !4962, line: 49, column: 2)
!5378 = !DILocation(line: 49, column: 2, scope: !5342)
!5379 = !DILocation(line: 50, column: 2, scope: !5353)
!5380 = !DILocation(line: 50, column: 2, scope: !5356)
!5381 = !DILocation(line: 50, column: 2, scope: !5355)
!5382 = !DILocation(line: 50, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5355, file: !4962, line: 50, column: 2)
!5384 = !DILocation(line: 50, column: 2, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5355, file: !4962, line: 50, column: 2)
!5386 = !{i64 2155980083, i64 2155980112, i64 2155980158, i64 2155980216, i64 2155980270, i64 2155980324, i64 2155980379, i64 2155980410, i64 2155980718, i64 2155980724, i64 2155980771, i64 2155980794, i64 2155980820}
!5387 = !DILocation(line: 50, column: 2, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5355, file: !4962, line: 50, column: 2)
!5389 = !DILocation(line: 50, column: 2, scope: !5342)
!5390 = !DILocation(line: 51, column: 2, scope: !5358)
!5391 = !DILocation(line: 51, column: 2, scope: !5361)
!5392 = !DILocation(line: 51, column: 2, scope: !5360)
!5393 = !DILocation(line: 51, column: 2, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5360, file: !4962, line: 51, column: 2)
!5395 = !DILocation(line: 51, column: 2, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5360, file: !4962, line: 51, column: 2)
!5397 = !{i64 2155981641, i64 2155981670, i64 2155981716, i64 2155981774, i64 2155981828, i64 2155981882, i64 2155981937, i64 2155981968, i64 2155982276, i64 2155982282, i64 2155982329, i64 2155982352, i64 2155982378}
!5398 = !DILocation(line: 51, column: 2, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5360, file: !4962, line: 51, column: 2)
!5400 = !DILocation(line: 51, column: 2, scope: !5342)
!5401 = !DILocation(line: 52, column: 2, scope: !5363)
!5402 = !DILocation(line: 52, column: 2, scope: !5366)
!5403 = !DILocation(line: 52, column: 2, scope: !5365)
!5404 = !DILocation(line: 52, column: 2, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5365, file: !4962, line: 52, column: 2)
!5406 = !DILocation(line: 52, column: 2, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5365, file: !4962, line: 52, column: 2)
!5408 = !{i64 2155983186, i64 2155983215, i64 2155983261, i64 2155983319, i64 2155983373, i64 2155983427, i64 2155983482, i64 2155983513, i64 2155983821, i64 2155983827, i64 2155983874, i64 2155983897, i64 2155983923}
!5409 = !DILocation(line: 52, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5365, file: !4962, line: 52, column: 2)
!5411 = !DILocation(line: 52, column: 2, scope: !5342)
!5412 = !DILocation(line: 54, column: 26, scope: !5342)
!5413 = !DILocation(line: 54, column: 32, scope: !5342)
!5414 = !DILocation(line: 54, column: 40, scope: !5342)
!5415 = !DILocation(line: 54, column: 46, scope: !5342)
!5416 = !DILocation(line: 54, column: 2, scope: !5342)
!5417 = !DILocation(line: 55, column: 6, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5342, file: !4962, line: 55, column: 6)
!5419 = !DILocation(line: 55, column: 12, scope: !5418)
!5420 = !DILocation(line: 55, column: 19, scope: !5418)
!5421 = !DILocation(line: 55, column: 24, scope: !5418)
!5422 = !DILocation(line: 55, column: 6, scope: !5342)
!5423 = !DILocation(line: 56, column: 27, scope: !5418)
!5424 = !DILocation(line: 56, column: 33, scope: !5418)
!5425 = !DILocation(line: 56, column: 41, scope: !5418)
!5426 = !DILocation(line: 56, column: 47, scope: !5418)
!5427 = !DILocation(line: 56, column: 3, scope: !5418)
!5428 = !DILocation(line: 57, column: 1, scope: !5342)
!5429 = distinct !DISubprogram(name: "static_key_false", scope: !2161, file: !2161, line: 205, type: !5430, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5444)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!542, !5432}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2161, line: 85, size: 128, elements: !5434)
!5434 = !{!5435, !5436}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5433, file: !2161, line: 86, baseType: !147, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, scope: !5433, file: !2161, line: 101, baseType: !5437, size: 64, offset: 64)
!5437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5433, file: !2161, line: 101, size: 64, elements: !5438)
!5438 = !{!5439, !5440, !5441}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5437, file: !2161, line: 102, baseType: !233, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5437, file: !2161, line: 103, baseType: !2159, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5437, file: !2161, line: 104, baseType: !5442, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5443, size: 64)
!5443 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2161, line: 104, flags: DIFlagFwdDecl)
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "key", arg: 1, scope: !5429, file: !2161, line: 205, type: !5432)
!5446 = !DILocation(line: 205, column: 65, scope: !5429)
!5447 = !DILocation(line: 207, column: 28, scope: !5429)
!5448 = !DILocation(line: 207, column: 9, scope: !5429)
!5449 = !DILocation(line: 207, column: 2, scope: !5429)
!5450 = distinct !DISubprogram(name: "cpu_online", scope: !3634, file: !3634, line: 1080, type: !5451, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5453)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!542, !35}
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "cpu", arg: 1, scope: !5450, file: !3634, line: 1080, type: !35)
!5455 = !DILocation(line: 1080, column: 44, scope: !5450)
!5456 = !DILocation(line: 1082, column: 26, scope: !5450)
!5457 = !DILocation(line: 1082, column: 9, scope: !5450)
!5458 = !DILocation(line: 1082, column: 2, scope: !5450)
!5459 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5460, file: !5460, line: 78, type: !4015, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5461)
!5460 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5461 = !{!5462, !5463, !5465}
!5462 = !DILocalVariable(name: "val", arg: 1, scope: !5459, file: !5460, line: 78, type: !151)
!5463 = !DILocalVariable(name: "pao_ID__", scope: !5464, file: !5460, line: 80, type: !2056)
!5464 = distinct !DILexicalBlock(scope: !5459, file: !5460, line: 80, column: 2)
!5465 = !DILocalVariable(name: "pto_val__", scope: !5466, file: !5460, line: 80, type: !97)
!5466 = distinct !DILexicalBlock(scope: !5467, file: !5460, line: 80, column: 2)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !5460, line: 80, column: 2)
!5468 = distinct !DILexicalBlock(scope: !5464, file: !5460, line: 80, column: 2)
!5469 = !DILocation(line: 78, column: 53, scope: !5459)
!5470 = !DILocation(line: 80, column: 2, scope: !5459)
!5471 = !DILocation(line: 80, column: 2, scope: !5464)
!5472 = !DILocation(line: 80, column: 2, scope: !5468)
!5473 = !DILocation(line: 80, column: 2, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5468, file: !5460, line: 80, column: 2)
!5475 = !{i64 2149623963}
!5476 = !DILocation(line: 80, column: 2, scope: !5467)
!5477 = !DILocation(line: 80, column: 2, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5467, file: !5460, line: 80, column: 2)
!5479 = !{i64 2149624258}
!5480 = !DILocation(line: 80, column: 2, scope: !5466)
!5481 = !{i64 2149624963}
!5482 = !DILocation(line: 81, column: 1, scope: !5459)
!5483 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5460, file: !5460, line: 93, type: !1705, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5484)
!5484 = !{!5485}
!5485 = !DILocalVariable(name: "c", scope: !5486, file: !5460, line: 95, type: !542)
!5486 = distinct !DILexicalBlock(scope: !5483, file: !5460, line: 95, column: 9)
!5487 = !DILocation(line: 95, column: 9, scope: !5486)
!5488 = !{i64 2149628319, i64 2149628412}
!5489 = !DILocation(line: 95, column: 9, scope: !5483)
!5490 = !DILocation(line: 95, column: 2, scope: !5483)
!5491 = distinct !DISubprogram(name: "arch_static_branch", scope: !5492, file: !5492, line: 25, type: !5493, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5495)
!5492 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!542, !5432, !542}
!5495 = !{!5496, !5497, !5498}
!5496 = !DILocalVariable(name: "key", arg: 1, scope: !5491, file: !5492, line: 25, type: !5432)
!5497 = !DILocalVariable(name: "branch", arg: 2, scope: !5491, file: !5492, line: 25, type: !542)
!5498 = !DILabel(scope: !5491, name: "l_yes", file: !5492, line: 33)
!5499 = !DILocation(line: 25, column: 67, scope: !5491)
!5500 = !DILocation(line: 25, column: 77, scope: !5491)
!5501 = !DILocation(line: 30, column: 13, scope: !5491)
!5502 = !DILocation(line: 30, column: 28, scope: !5491)
!5503 = !DILocation(line: 30, column: 26, scope: !5491)
!5504 = !DILocation(line: 27, column: 2, scope: !5491)
!5505 = !{i64 1216029, i64 1216073, i64 2148700756, i64 2148700777, i64 2148700803, i64 2148700836, i64 2148700870, i64 2148700894}
!5506 = !DILocation(line: 32, column: 2, scope: !5491)
!5507 = !DILocation(line: 33, column: 1, scope: !5491)
!5508 = !DILocation(line: 34, column: 2, scope: !5491)
!5509 = !DILocation(line: 35, column: 1, scope: !5491)
!5510 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !3634, file: !3634, line: 502, type: !5511, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!542, !151, !4979}
!5513 = !{!5514, !5515}
!5514 = !DILocalVariable(name: "cpu", arg: 1, scope: !5510, file: !3634, line: 502, type: !151)
!5515 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5510, file: !3634, line: 502, type: !4979)
!5516 = !DILocation(line: 502, column: 50, scope: !5510)
!5517 = !DILocation(line: 502, column: 77, scope: !5510)
!5518 = !DILocation(line: 504, column: 9, scope: !5510)
!5519 = !DILocation(line: 504, column: 2, scope: !5510)
!5520 = distinct !DISubprogram(name: "_test_bit", scope: !5521, file: !5521, line: 139, type: !5522, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5527)
!5521 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5522 = !DISubroutineType(types: !5523)
!5523 = !{!542, !233, !5524}
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5526)
!5526 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !233)
!5527 = !{!5528, !5529}
!5528 = !DILocalVariable(name: "nr", arg: 1, scope: !5520, file: !5521, line: 139, type: !233)
!5529 = !DILocalVariable(name: "addr", arg: 2, scope: !5520, file: !5521, line: 139, type: !5524)
!5530 = !DILocation(line: 139, column: 25, scope: !5520)
!5531 = !DILocation(line: 139, column: 59, scope: !5520)
!5532 = !DILocation(line: 141, column: 25, scope: !5520)
!5533 = !DILocation(line: 141, column: 32, scope: !5520)
!5534 = !DILocation(line: 141, column: 30, scope: !5520)
!5535 = !DILocation(line: 141, column: 2, scope: !5520)
!5536 = !DILocation(line: 142, column: 23, scope: !5520)
!5537 = !DILocation(line: 142, column: 27, scope: !5520)
!5538 = !DILocation(line: 142, column: 9, scope: !5520)
!5539 = !DILocation(line: 142, column: 2, scope: !5520)
!5540 = distinct !DISubprogram(name: "cpumask_check", scope: !3634, file: !3634, line: 148, type: !5541, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5543)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!35, !35}
!5543 = !{!5544}
!5544 = !DILocalVariable(name: "cpu", arg: 1, scope: !5540, file: !3634, line: 148, type: !35)
!5545 = !DILocation(line: 148, column: 64, scope: !5540)
!5546 = !DILocation(line: 150, column: 20, scope: !5540)
!5547 = !DILocation(line: 150, column: 2, scope: !5540)
!5548 = !DILocation(line: 151, column: 9, scope: !5540)
!5549 = !DILocation(line: 151, column: 2, scope: !5540)
!5550 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5551, file: !5551, line: 66, type: !5552, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5557)
!5551 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5552 = !DISubroutineType(types: !5553)
!5553 = !{null, !5554, !369}
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5556)
!5556 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5557 = !{!5558, !5559}
!5558 = !DILocalVariable(name: "v", arg: 1, scope: !5550, file: !5551, line: 66, type: !5554)
!5559 = !DILocalVariable(name: "size", arg: 2, scope: !5550, file: !5551, line: 66, type: !369)
!5560 = !DILocation(line: 66, column: 73, scope: !5550)
!5561 = !DILocation(line: 66, column: 83, scope: !5550)
!5562 = !DILocation(line: 68, column: 19, scope: !5550)
!5563 = !DILocation(line: 68, column: 22, scope: !5550)
!5564 = !DILocation(line: 68, column: 2, scope: !5550)
!5565 = !DILocation(line: 69, column: 2, scope: !5550)
!5566 = !DILocation(line: 70, column: 1, scope: !5550)
!5567 = distinct !DISubprogram(name: "arch_test_bit", scope: !5568, file: !5568, line: 237, type: !5522, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5569)
!5568 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5569 = !{!5570, !5571}
!5570 = !DILocalVariable(name: "nr", arg: 1, scope: !5567, file: !5568, line: 237, type: !233)
!5571 = !DILocalVariable(name: "addr", arg: 2, scope: !5567, file: !5568, line: 237, type: !5524)
!5572 = !DILocation(line: 237, column: 29, scope: !5567)
!5573 = !DILocation(line: 237, column: 63, scope: !5567)
!5574 = !DILocation(line: 239, column: 30, scope: !5567)
!5575 = !DILocation(line: 239, column: 9, scope: !5567)
!5576 = !DILocation(line: 239, column: 54, scope: !5567)
!5577 = !DILocation(line: 239, column: 58, scope: !5567)
!5578 = !DILocation(line: 239, column: 36, scope: !5567)
!5579 = !DILocation(line: 240, column: 26, scope: !5567)
!5580 = !DILocation(line: 240, column: 30, scope: !5567)
!5581 = !DILocation(line: 240, column: 8, scope: !5567)
!5582 = !DILocation(line: 239, column: 2, scope: !5567)
!5583 = distinct !DISubprogram(name: "kasan_check_read", scope: !5584, file: !5584, line: 40, type: !5585, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5587)
!5584 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5585 = !DISubroutineType(types: !5586)
!5586 = !{!542, !5554, !35}
!5587 = !{!5588, !5589}
!5588 = !DILocalVariable(name: "p", arg: 1, scope: !5583, file: !5584, line: 40, type: !5554)
!5589 = !DILocalVariable(name: "size", arg: 2, scope: !5583, file: !5584, line: 40, type: !35)
!5590 = !DILocation(line: 40, column: 58, scope: !5583)
!5591 = !DILocation(line: 40, column: 74, scope: !5583)
!5592 = !DILocation(line: 42, column: 2, scope: !5583)
!5593 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5594, file: !5594, line: 229, type: !5595, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5597)
!5594 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5595 = !DISubroutineType(types: !5596)
!5596 = !{null, !5554, !369, !151}
!5597 = !{!5598, !5599, !5600}
!5598 = !DILocalVariable(name: "ptr", arg: 1, scope: !5593, file: !5594, line: 229, type: !5554)
!5599 = !DILocalVariable(name: "size", arg: 2, scope: !5593, file: !5594, line: 229, type: !369)
!5600 = !DILocalVariable(name: "type", arg: 3, scope: !5593, file: !5594, line: 230, type: !151)
!5601 = !DILocation(line: 229, column: 60, scope: !5593)
!5602 = !DILocation(line: 229, column: 72, scope: !5593)
!5603 = !DILocation(line: 230, column: 15, scope: !5593)
!5604 = !DILocation(line: 230, column: 23, scope: !5593)
!5605 = distinct !DISubprogram(name: "constant_test_bit", scope: !5568, file: !5568, line: 204, type: !5606, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5608)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!542, !359, !5524}
!5608 = !{!5609, !5610}
!5609 = !DILocalVariable(name: "nr", arg: 1, scope: !5605, file: !5568, line: 204, type: !359)
!5610 = !DILocalVariable(name: "addr", arg: 2, scope: !5605, file: !5568, line: 204, type: !5524)
!5611 = !DILocation(line: 204, column: 52, scope: !5605)
!5612 = !DILocation(line: 204, column: 86, scope: !5605)
!5613 = !DILocation(line: 206, column: 19, scope: !5605)
!5614 = !DILocation(line: 206, column: 22, scope: !5605)
!5615 = !DILocation(line: 206, column: 15, scope: !5605)
!5616 = !DILocation(line: 207, column: 4, scope: !5605)
!5617 = !DILocation(line: 207, column: 9, scope: !5605)
!5618 = !DILocation(line: 207, column: 12, scope: !5605)
!5619 = !DILocation(line: 206, column: 44, scope: !5605)
!5620 = !DILocation(line: 207, column: 37, scope: !5605)
!5621 = !DILocation(line: 206, column: 2, scope: !5605)
!5622 = distinct !DISubprogram(name: "variable_test_bit", scope: !5568, file: !5568, line: 224, type: !5606, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5623)
!5623 = !{!5624, !5625, !5626}
!5624 = !DILocalVariable(name: "nr", arg: 1, scope: !5622, file: !5568, line: 224, type: !359)
!5625 = !DILocalVariable(name: "addr", arg: 2, scope: !5622, file: !5568, line: 224, type: !5524)
!5626 = !DILocalVariable(name: "oldbit", scope: !5622, file: !5568, line: 226, type: !542)
!5627 = !DILocation(line: 224, column: 52, scope: !5622)
!5628 = !DILocation(line: 224, column: 86, scope: !5622)
!5629 = !DILocation(line: 226, column: 2, scope: !5622)
!5630 = !DILocation(line: 226, column: 7, scope: !5622)
!5631 = !DILocation(line: 231, column: 33, scope: !5622)
!5632 = !DILocation(line: 231, column: 46, scope: !5622)
!5633 = !DILocation(line: 228, column: 2, scope: !5622)
!5634 = !{i64 2148139567, i64 2148139641}
!5635 = !DILocation(line: 233, column: 9, scope: !5622)
!5636 = !DILocation(line: 234, column: 1, scope: !5622)
!5637 = !DILocation(line: 233, column: 2, scope: !5622)
!5638 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !3634, file: !3634, line: 140, type: !5639, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4961, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{null, !35, !35}
!5641 = !{!5642, !5643}
!5642 = !DILocalVariable(name: "cpu", arg: 1, scope: !5638, file: !3634, line: 140, type: !35)
!5643 = !DILocalVariable(name: "bits", arg: 2, scope: !5638, file: !3634, line: 140, type: !35)
!5644 = !DILocation(line: 140, column: 60, scope: !5638)
!5645 = !DILocation(line: 140, column: 78, scope: !5638)
!5646 = !DILocation(line: 145, column: 1, scope: !5638)
!5647 = !DILocation(line: 155, column: 1, scope: !4988)
!5648 = !DILocation(line: 155, column: 1, scope: !4997)
!5649 = !DILocation(line: 155, column: 1, scope: !4996)
!5650 = !DILocation(line: 155, column: 1, scope: !4999)
!5651 = !DILocation(line: 155, column: 1, scope: !5002)
!5652 = !DILocation(line: 155, column: 1, scope: !5004)
!5653 = !{i64 2155692561}
!5654 = !DILocation(line: 155, column: 1, scope: !5000)
!5655 = !DILocation(line: 155, column: 1, scope: !5006)
!5656 = !DILocation(line: 155, column: 1, scope: !5010)
!5657 = !DILocation(line: 155, column: 1, scope: !5009)
!5658 = !DILocation(line: 155, column: 1, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 155, column: 1)
!5660 = !DILocation(line: 155, column: 1, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 155, column: 1)
!5662 = !{i64 2155693766, i64 2155693795, i64 2155693841, i64 2155693899, i64 2155693953, i64 2155694007, i64 2155694062, i64 2155694093, i64 2155694401, i64 2155694407, i64 2155694454, i64 2155694477, i64 2155694503}
!5663 = !DILocation(line: 155, column: 1, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 155, column: 1)
!5665 = !DILocation(line: 155, column: 1, scope: !5007)
!5666 = !DILocation(line: 155, column: 1, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !4996, file: !2, line: 155, column: 1)
!5668 = !{i64 2155694844}
!5669 = !DILocation(line: 155, column: 1, scope: !5012)
!5670 = !DILocation(line: 155, column: 1, scope: !5015)
!5671 = !DILocation(line: 155, column: 1, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5015, file: !2, line: 155, column: 1)
!5673 = !DILocation(line: 155, column: 1, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 155, column: 1)
!5675 = !DILocation(line: 155, column: 1, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5012, file: !2, line: 155, column: 1)
!5677 = !DILocation(line: 155, column: 1, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5676, file: !2, line: 155, column: 1)
!5679 = !DILocation(line: 155, column: 1, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 155, column: 1)
!5681 = !DILocation(line: 155, column: 1, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !4996, file: !2, line: 155, column: 1)
!5683 = !{i64 2155701392}
!5684 = !DILocation(line: 155, column: 1, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5682, file: !2, line: 155, column: 1)
!5686 = !DILocation(line: 155, column: 1, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5685, file: !2, line: 155, column: 1)
!5688 = !{i64 2155701551}
!5689 = !DILocation(line: 156, column: 1, scope: !5020)
!5690 = !DILocation(line: 156, column: 1, scope: !5026)
!5691 = !DILocation(line: 156, column: 1, scope: !5025)
!5692 = !DILocation(line: 156, column: 1, scope: !5028)
!5693 = !DILocation(line: 156, column: 1, scope: !5031)
!5694 = !DILocation(line: 156, column: 1, scope: !5033)
!5695 = !{i64 2155742819}
!5696 = !DILocation(line: 156, column: 1, scope: !5029)
!5697 = !DILocation(line: 156, column: 1, scope: !5035)
!5698 = !DILocation(line: 156, column: 1, scope: !5039)
!5699 = !DILocation(line: 156, column: 1, scope: !5038)
!5700 = !DILocation(line: 156, column: 1, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5038, file: !2, line: 156, column: 1)
!5702 = !DILocation(line: 156, column: 1, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5038, file: !2, line: 156, column: 1)
!5704 = !{i64 2155744024, i64 2155744053, i64 2155744099, i64 2155744157, i64 2155744211, i64 2155744265, i64 2155744320, i64 2155744351, i64 2155744659, i64 2155744665, i64 2155744712, i64 2155744735, i64 2155744761}
!5705 = !DILocation(line: 156, column: 1, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5038, file: !2, line: 156, column: 1)
!5707 = !DILocation(line: 156, column: 1, scope: !5036)
!5708 = !DILocation(line: 156, column: 1, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 156, column: 1)
!5710 = !{i64 2155745102}
!5711 = !DILocation(line: 156, column: 1, scope: !5041)
!5712 = !DILocation(line: 156, column: 1, scope: !5044)
!5713 = !DILocation(line: 156, column: 1, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5044, file: !2, line: 156, column: 1)
!5715 = !DILocation(line: 156, column: 1, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5714, file: !2, line: 156, column: 1)
!5717 = !DILocation(line: 156, column: 1, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 156, column: 1)
!5719 = !DILocation(line: 156, column: 1, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5718, file: !2, line: 156, column: 1)
!5721 = !DILocation(line: 156, column: 1, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !2, line: 156, column: 1)
!5723 = !DILocation(line: 156, column: 1, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 156, column: 1)
!5725 = !{i64 2155751650}
!5726 = !DILocation(line: 156, column: 1, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5724, file: !2, line: 156, column: 1)
!5728 = !DILocation(line: 156, column: 1, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5727, file: !2, line: 156, column: 1)
!5730 = !{i64 2155751809}
