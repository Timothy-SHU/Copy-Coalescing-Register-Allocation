; ModuleID = 'block/blk-mq-cpumap.c'
source_filename = "block/blk-mq-cpumap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_blk_mq_map_queues: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad blk_mq_map_queues ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_blk_mq_map_queues351 = internal global ptr @blk_mq_map_queues, section ".discard.addressable", align 8, !dbg !0
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_blk_mq_map_queues351], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @blk_mq_map_queues(ptr noundef %qmap) #0 align 16 !dbg !29 {
entry:
  %qmap.addr = alloca ptr, align 8
  %masks = alloca ptr, align 8
  %queue = alloca i32, align 4
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qmap, ptr %qmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qmap.addr, metadata !41, metadata !DIExpression()), !dbg !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %masks) #8, !dbg !46
  call void @llvm.dbg.declare(metadata ptr %masks, metadata !42, metadata !DIExpression()), !dbg !47
  call void @llvm.lifetime.start.p0(i64 4, ptr %queue) #8, !dbg !48
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !43, metadata !DIExpression()), !dbg !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #8, !dbg !48
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !44, metadata !DIExpression()), !dbg !50
  %0 = load ptr, ptr %qmap.addr, align 8, !dbg !51
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 1, !dbg !52
  %1 = load i32, ptr %nr_queues, align 8, !dbg !52
  %call = call ptr @group_cpus_evenly(i32 noundef %1) #9, !dbg !53
  store ptr %call, ptr %masks, align 8, !dbg !54
  %2 = load ptr, ptr %masks, align 8, !dbg !55
  %tobool = icmp ne ptr %2, null, !dbg !55
  br i1 %tobool, label %if.end, label %if.then, !dbg !57

if.then:                                          ; preds = %entry
  store i32 0, ptr %cpu, align 4, !dbg !58
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %cpu, align 4, !dbg !61
  %conv = zext i32 %3 to i64, !dbg !61
  %call1 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #9, !dbg !61
  %conv2 = trunc i64 %call1 to i32, !dbg !61
  store i32 %conv2, ptr %cpu, align 4, !dbg !61
  %4 = load i32, ptr %cpu, align 4, !dbg !61
  %cmp = icmp ult i32 %4, 64, !dbg !61
  br i1 %cmp, label %for.body, label %for.end, !dbg !58

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %qmap.addr, align 8, !dbg !63
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %5, i32 0, i32 2, !dbg !64
  %6 = load i32, ptr %queue_offset, align 4, !dbg !64
  %7 = load ptr, ptr %qmap.addr, align 8, !dbg !65
  %mq_map = getelementptr inbounds %struct.blk_mq_queue_map, ptr %7, i32 0, i32 0, !dbg !66
  %8 = load ptr, ptr %mq_map, align 8, !dbg !66
  %9 = load i32, ptr %cpu, align 4, !dbg !67
  %idxprom = zext i32 %9 to i64, !dbg !65
  %arrayidx = getelementptr i32, ptr %8, i64 %idxprom, !dbg !65
  store i32 %6, ptr %arrayidx, align 4, !dbg !68
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %cpu, align 4, !dbg !61
  %inc = add i32 %10, 1, !dbg !61
  store i32 %inc, ptr %cpu, align 4, !dbg !61
  br label %for.cond, !dbg !61, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !73

if.end:                                           ; preds = %entry
  store i32 0, ptr %queue, align 4, !dbg !74
  br label %for.cond4, !dbg !76

for.cond4:                                        ; preds = %for.inc25, %if.end
  %11 = load i32, ptr %queue, align 4, !dbg !77
  %12 = load ptr, ptr %qmap.addr, align 8, !dbg !79
  %nr_queues5 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %12, i32 0, i32 1, !dbg !80
  %13 = load i32, ptr %nr_queues5, align 8, !dbg !80
  %cmp6 = icmp ult i32 %11, %13, !dbg !81
  br i1 %cmp6, label %for.body8, label %for.end27, !dbg !82

for.body8:                                        ; preds = %for.cond4
  store i32 0, ptr %cpu, align 4, !dbg !83
  br label %for.cond9, !dbg !83

for.cond9:                                        ; preds = %for.inc22, %for.body8
  %14 = load ptr, ptr %masks, align 8, !dbg !86
  %15 = load i32, ptr %queue, align 4, !dbg !86
  %idxprom10 = zext i32 %15 to i64, !dbg !86
  %arrayidx11 = getelementptr %struct.cpumask, ptr %14, i64 %idxprom10, !dbg !86
  %bits = getelementptr inbounds %struct.cpumask, ptr %arrayidx11, i32 0, i32 0, !dbg !86
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !86
  %16 = load i32, ptr %cpu, align 4, !dbg !86
  %conv12 = zext i32 %16 to i64, !dbg !86
  %call13 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv12) #9, !dbg !86
  %conv14 = trunc i64 %call13 to i32, !dbg !86
  store i32 %conv14, ptr %cpu, align 4, !dbg !86
  %17 = load i32, ptr %cpu, align 4, !dbg !86
  %cmp15 = icmp ult i32 %17, 64, !dbg !86
  br i1 %cmp15, label %for.body17, label %for.end24, !dbg !83

for.body17:                                       ; preds = %for.cond9
  %18 = load ptr, ptr %qmap.addr, align 8, !dbg !88
  %queue_offset18 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %18, i32 0, i32 2, !dbg !89
  %19 = load i32, ptr %queue_offset18, align 4, !dbg !89
  %20 = load i32, ptr %queue, align 4, !dbg !90
  %add = add i32 %19, %20, !dbg !91
  %21 = load ptr, ptr %qmap.addr, align 8, !dbg !92
  %mq_map19 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %21, i32 0, i32 0, !dbg !93
  %22 = load ptr, ptr %mq_map19, align 8, !dbg !93
  %23 = load i32, ptr %cpu, align 4, !dbg !94
  %idxprom20 = zext i32 %23 to i64, !dbg !92
  %arrayidx21 = getelementptr i32, ptr %22, i64 %idxprom20, !dbg !92
  store i32 %add, ptr %arrayidx21, align 4, !dbg !95
  br label %for.inc22, !dbg !92

for.inc22:                                        ; preds = %for.body17
  %24 = load i32, ptr %cpu, align 4, !dbg !86
  %inc23 = add i32 %24, 1, !dbg !86
  store i32 %inc23, ptr %cpu, align 4, !dbg !86
  br label %for.cond9, !dbg !86, !llvm.loop !96

for.end24:                                        ; preds = %for.cond9
  br label %for.inc25, !dbg !98

for.inc25:                                        ; preds = %for.end24
  %25 = load i32, ptr %queue, align 4, !dbg !99
  %inc26 = add i32 %25, 1, !dbg !99
  store i32 %inc26, ptr %queue, align 4, !dbg !99
  br label %for.cond4, !dbg !100, !llvm.loop !101

for.end27:                                        ; preds = %for.cond4
  %26 = load ptr, ptr %masks, align 8, !dbg !103
  call void @kfree(ptr noundef %26) #9, !dbg !104
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !105
  br label %cleanup, !dbg !105

cleanup:                                          ; preds = %for.end27, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #8, !dbg !105
  call void @llvm.lifetime.end.p0(i64 4, ptr %queue) #8, !dbg !105
  call void @llvm.lifetime.end.p0(i64 8, ptr %masks) #8, !dbg !105
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !105

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !106 dso_local ptr @group_cpus_evenly(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !111 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !118, metadata !DIExpression()), !dbg !124
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !119, metadata !DIExpression()), !dbg !125
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !120, metadata !DIExpression()), !dbg !126
  %0 = load i64, ptr %size.addr, align 8, !dbg !127
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !127
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !127

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !127
  %cmp = icmp ule i64 %2, 64, !dbg !127
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !127

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !127
  %cmp2 = icmp ugt i64 %3, 0, !dbg !127
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !128

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %val, metadata !121, metadata !DIExpression()), !dbg !130
  %4 = load i64, ptr %offset.addr, align 8, !dbg !131
  %5 = load i64, ptr %size.addr, align 8, !dbg !131
  %cmp3 = icmp uge i64 %4, %5, !dbg !131
  %lnot = xor i1 %cmp3, true, !dbg !131
  %lnot4 = xor i1 %lnot, true, !dbg !131
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !131
  %conv = sext i32 %lnot.ext to i64, !dbg !131
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !131
  %tobool = icmp ne i64 %expval, 0, !dbg !131
  br i1 %tobool, label %if.then5, label %if.end, !dbg !133

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !134
  store i64 %6, ptr %retval, align 8, !dbg !135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !135

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !136
  %8 = load i64, ptr %7, align 8, !dbg !137
  %9 = load i64, ptr %offset.addr, align 8, !dbg !138
  %shl = shl i64 1, %9, !dbg !138
  %sub = sub i64 -1, %shl, !dbg !138
  %add = add i64 %sub, 1, !dbg !138
  %10 = load i64, ptr %size.addr, align 8, !dbg !138
  %sub6 = sub i64 %10, 1, !dbg !138
  %sub7 = sub i64 63, %sub6, !dbg !138
  %shr = lshr i64 -1, %sub7, !dbg !138
  %and = and i64 %add, %shr, !dbg !138
  %add8 = add i64 0, %and, !dbg !138
  %and9 = and i64 %8, %add8, !dbg !139
  store i64 %and9, ptr %val, align 8, !dbg !140
  %11 = load i64, ptr %val, align 8, !dbg !141
  %tobool10 = icmp ne i64 %11, 0, !dbg !141
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !141

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !142
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !142
  br i1 %13, label %cond.true11, label %cond.false, !dbg !142

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !142
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !142
  %cast = trunc i64 %15 to i32, !dbg !142
  %conv12 = sext i32 %cast to i64, !dbg !142
  br label %cond.end, !dbg !142

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !142
  %call = call i64 @variable__ffs(i64 noundef %16) #9, !dbg !142
  br label %cond.end, !dbg !142

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !142
  br label %cond.end14, !dbg !141

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !143
  br label %cond.end14, !dbg !141

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !141
  store i64 %cond15, ptr %retval, align 8, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !145
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !146
  %19 = load i64, ptr %size.addr, align 8, !dbg !147
  %20 = load i64, ptr %offset.addr, align 8, !dbg !148
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #9, !dbg !149
  store i64 %call17, ptr %retval, align 8, !dbg !150
  br label %return, !dbg !150

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !151
  ret i64 %21, !dbg !151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !152 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @blk_mq_hw_queue_to_node(ptr noundef %qmap, i32 noundef %index) #0 align 16 !dbg !158 {
entry:
  %retval = alloca i32, align 4
  %qmap.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qmap, ptr %qmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qmap.addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %i, metadata !164, metadata !DIExpression()), !dbg !168
  store i32 0, ptr %i, align 4, !dbg !169
  br label %for.cond, !dbg !169

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !171
  %conv = sext i32 %0 to i64, !dbg !171
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #9, !dbg !171
  %conv1 = trunc i64 %call to i32, !dbg !171
  store i32 %conv1, ptr %i, align 4, !dbg !171
  %1 = load i32, ptr %i, align 4, !dbg !171
  %cmp = icmp ult i32 %1, 64, !dbg !171
  br i1 %cmp, label %for.body, label %for.end, !dbg !169

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %index.addr, align 4, !dbg !173
  %3 = load ptr, ptr %qmap.addr, align 8, !dbg !176
  %mq_map = getelementptr inbounds %struct.blk_mq_queue_map, ptr %3, i32 0, i32 0, !dbg !177
  %4 = load ptr, ptr %mq_map, align 8, !dbg !177
  %5 = load i32, ptr %i, align 4, !dbg !178
  %idxprom = sext i32 %5 to i64, !dbg !176
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !176
  %6 = load i32, ptr %arrayidx, align 4, !dbg !176
  %cmp3 = icmp eq i32 %2, %6, !dbg !179
  br i1 %cmp3, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !181
  %call5 = call i32 @cpu_to_node(i32 noundef %7) #9, !dbg !182
  store i32 %call5, ptr %retval, align 4, !dbg !183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !183

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !184

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !171
  %inc = add i32 %8, 1, !dbg !171
  store i32 %inc, ptr %i, align 4, !dbg !171
  br label %for.cond, !dbg !171, !llvm.loop !185

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !187

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !188
  %9 = load i32, ptr %retval, align 4, !dbg !188
  ret i32 %9, !dbg !188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #4 align 16 !dbg !189 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !194, metadata !DIExpression()), !dbg !200
  br label %do.body, !dbg !201

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #8, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !195, metadata !DIExpression()), !dbg !202
  store ptr null, ptr %__vpp_verify, align 8, !dbg !202
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #8, !dbg !201
  br label %do.end, !dbg !202

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !198, metadata !DIExpression()), !dbg !203
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !203
  %1 = load i64, ptr %__ptr, align 8, !dbg !203
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !203
  %idxprom = sext i32 %2 to i64, !dbg !203
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !203
  %3 = load i64, ptr %arrayidx, align 8, !dbg !203
  %add = add i64 %1, %3, !dbg !203
  %4 = inttoptr i64 %add to ptr, !dbg !203
  store ptr %4, ptr %tmp1, align 8, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !201
  %5 = load ptr, ptr %tmp1, align 8, !dbg !203
  store ptr %5, ptr %tmp, align 8, !dbg !202
  %6 = load ptr, ptr %tmp, align 8, !dbg !201
  %7 = load i32, ptr %6, align 4, !dbg !204
  ret i32 %7, !dbg !205
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !206 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i64, ptr %word.addr, align 8, !dbg !213
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !214, !srcloc !215
  store i64 %1, ptr %word.addr, align 8, !dbg !214
  %2 = load i64, ptr %word.addr, align 8, !dbg !216
  ret i64 %2, !dbg !217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !218 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_blk_mq_map_queues351", scope: !2, file: !3, line: 36, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.blk-mq-cpumap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/blk-mq-cpumap\22 -D KBUILD_BASENAME=\22blk_mq_cpumap\22 -D KBUILD_MODNAME=\22blk_mq_cpumap\22 -D __KBUILD_MODNAME=kmod_blk_mq_cpumap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/blk-mq-cpumap.ll block/blk-mq-cpumap.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/blk-mq-cpumap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9024d30a774f596349fcb5149f31287d")
!4 = !{!5, !15, !16, !17, !12, !18}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !8, line: 19, size: 64, elements: !9)
!8 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !7, file: !8, line: 19, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !13)
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DISubrange(count: 1)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!19 = !{!0}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"cf-protection-branch", i32 1}
!24 = !{i32 4, !"function_return_thunk_extern", i32 1}
!25 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{i32 1, !"override-stack-alignment", i32 8}
!28 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!29 = distinct !DISubprogram(name: "blk_mq_map_queues", scope: !3, file: !3, line: 18, type: !30, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !34, line: 444, size: 128, elements: !35)
!34 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!35 = !{!36, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !33, file: !34, line: 445, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !33, file: !34, line: 446, baseType: !15, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !33, file: !34, line: 447, baseType: !15, size: 32, offset: 96)
!40 = !{!41, !42, !43, !44}
!41 = !DILocalVariable(name: "qmap", arg: 1, scope: !29, file: !3, line: 18, type: !32)
!42 = !DILocalVariable(name: "masks", scope: !29, file: !3, line: 20, type: !5)
!43 = !DILocalVariable(name: "queue", scope: !29, file: !3, line: 21, type: !15)
!44 = !DILocalVariable(name: "cpu", scope: !29, file: !3, line: 21, type: !15)
!45 = !DILocation(line: 18, column: 49, scope: !29)
!46 = !DILocation(line: 20, column: 2, scope: !29)
!47 = !DILocation(line: 20, column: 24, scope: !29)
!48 = !DILocation(line: 21, column: 2, scope: !29)
!49 = !DILocation(line: 21, column: 15, scope: !29)
!50 = !DILocation(line: 21, column: 22, scope: !29)
!51 = !DILocation(line: 23, column: 28, scope: !29)
!52 = !DILocation(line: 23, column: 34, scope: !29)
!53 = !DILocation(line: 23, column: 10, scope: !29)
!54 = !DILocation(line: 23, column: 8, scope: !29)
!55 = !DILocation(line: 24, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !29, file: !3, line: 24, column: 6)
!57 = !DILocation(line: 24, column: 6, scope: !29)
!58 = !DILocation(line: 25, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 25, column: 3)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 24, column: 14)
!61 = !DILocation(line: 25, column: 3, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 25, column: 3)
!63 = !DILocation(line: 26, column: 24, scope: !62)
!64 = !DILocation(line: 26, column: 30, scope: !62)
!65 = !DILocation(line: 26, column: 4, scope: !62)
!66 = !DILocation(line: 26, column: 10, scope: !62)
!67 = !DILocation(line: 26, column: 17, scope: !62)
!68 = !DILocation(line: 26, column: 22, scope: !62)
!69 = distinct !{!69, !58, !70, !71, !72}
!70 = !DILocation(line: 26, column: 30, scope: !59)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !DILocation(line: 27, column: 3, scope: !60)
!74 = !DILocation(line: 30, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !29, file: !3, line: 30, column: 2)
!76 = !DILocation(line: 30, column: 7, scope: !75)
!77 = !DILocation(line: 30, column: 18, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 30, column: 2)
!79 = !DILocation(line: 30, column: 26, scope: !78)
!80 = !DILocation(line: 30, column: 32, scope: !78)
!81 = !DILocation(line: 30, column: 24, scope: !78)
!82 = !DILocation(line: 30, column: 2, scope: !75)
!83 = !DILocation(line: 31, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 31, column: 3)
!85 = distinct !DILexicalBlock(scope: !78, file: !3, line: 30, column: 52)
!86 = !DILocation(line: 31, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 31, column: 3)
!88 = !DILocation(line: 32, column: 24, scope: !87)
!89 = !DILocation(line: 32, column: 30, scope: !87)
!90 = !DILocation(line: 32, column: 45, scope: !87)
!91 = !DILocation(line: 32, column: 43, scope: !87)
!92 = !DILocation(line: 32, column: 4, scope: !87)
!93 = !DILocation(line: 32, column: 10, scope: !87)
!94 = !DILocation(line: 32, column: 17, scope: !87)
!95 = !DILocation(line: 32, column: 22, scope: !87)
!96 = distinct !{!96, !83, !97, !71, !72}
!97 = !DILocation(line: 32, column: 45, scope: !84)
!98 = !DILocation(line: 33, column: 2, scope: !85)
!99 = !DILocation(line: 30, column: 48, scope: !78)
!100 = !DILocation(line: 30, column: 2, scope: !78)
!101 = distinct !{!101, !82, !102, !71, !72}
!102 = !DILocation(line: 33, column: 2, scope: !75)
!103 = !DILocation(line: 34, column: 8, scope: !29)
!104 = !DILocation(line: 34, column: 2, scope: !29)
!105 = !DILocation(line: 35, column: 1, scope: !29)
!106 = !DISubprogram(name: "group_cpus_evenly", scope: !107, file: !107, line: 12, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIFile(filename: "./include/linux/group_cpus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "444da504948af67ae6238f359b909b87")
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !15}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!111 = distinct !DISubprogram(name: "find_next_bit", scope: !112, file: !112, line: 54, type: !113, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!112 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!113 = !DISubroutineType(types: !114)
!114 = !{!12, !115, !12, !12}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!117 = !{!118, !119, !120, !121}
!118 = !DILocalVariable(name: "addr", arg: 1, scope: !111, file: !112, line: 54, type: !115)
!119 = !DILocalVariable(name: "size", arg: 2, scope: !111, file: !112, line: 54, type: !12)
!120 = !DILocalVariable(name: "offset", arg: 3, scope: !111, file: !112, line: 55, type: !12)
!121 = !DILocalVariable(name: "val", scope: !122, file: !112, line: 58, type: !12)
!122 = distinct !DILexicalBlock(scope: !123, file: !112, line: 57, column: 31)
!123 = distinct !DILexicalBlock(scope: !111, file: !112, line: 57, column: 6)
!124 = !DILocation(line: 54, column: 50, scope: !111)
!125 = !DILocation(line: 54, column: 70, scope: !111)
!126 = !DILocation(line: 55, column: 22, scope: !111)
!127 = !DILocation(line: 57, column: 6, scope: !123)
!128 = !DILocation(line: 57, column: 6, scope: !111)
!129 = !DILocation(line: 58, column: 3, scope: !122)
!130 = !DILocation(line: 58, column: 17, scope: !122)
!131 = !DILocation(line: 60, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !122, file: !112, line: 60, column: 7)
!133 = !DILocation(line: 60, column: 7, scope: !122)
!134 = !DILocation(line: 61, column: 11, scope: !132)
!135 = !DILocation(line: 61, column: 4, scope: !132)
!136 = !DILocation(line: 63, column: 10, scope: !122)
!137 = !DILocation(line: 63, column: 9, scope: !122)
!138 = !DILocation(line: 63, column: 17, scope: !122)
!139 = !DILocation(line: 63, column: 15, scope: !122)
!140 = !DILocation(line: 63, column: 7, scope: !122)
!141 = !DILocation(line: 64, column: 10, scope: !122)
!142 = !DILocation(line: 64, column: 16, scope: !122)
!143 = !DILocation(line: 64, column: 29, scope: !122)
!144 = !DILocation(line: 64, column: 3, scope: !122)
!145 = !DILocation(line: 65, column: 2, scope: !123)
!146 = !DILocation(line: 67, column: 24, scope: !111)
!147 = !DILocation(line: 67, column: 30, scope: !111)
!148 = !DILocation(line: 67, column: 36, scope: !111)
!149 = !DILocation(line: 67, column: 9, scope: !111)
!150 = !DILocation(line: 67, column: 2, scope: !111)
!151 = !DILocation(line: 68, column: 1, scope: !111)
!152 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!158 = distinct !DISubprogram(name: "blk_mq_hw_queue_to_node", scope: !3, file: !3, line: 46, type: !159, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!17, !32, !15}
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(name: "qmap", arg: 1, scope: !158, file: !3, line: 46, type: !32)
!163 = !DILocalVariable(name: "index", arg: 2, scope: !158, file: !3, line: 46, type: !15)
!164 = !DILocalVariable(name: "i", scope: !158, file: !3, line: 48, type: !17)
!165 = !DILocation(line: 46, column: 54, scope: !158)
!166 = !DILocation(line: 46, column: 73, scope: !158)
!167 = !DILocation(line: 48, column: 2, scope: !158)
!168 = !DILocation(line: 48, column: 6, scope: !158)
!169 = !DILocation(line: 50, column: 2, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !3, line: 50, column: 2)
!171 = !DILocation(line: 50, column: 2, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !3, line: 50, column: 2)
!173 = !DILocation(line: 51, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 51, column: 7)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 50, column: 27)
!176 = !DILocation(line: 51, column: 16, scope: !174)
!177 = !DILocation(line: 51, column: 22, scope: !174)
!178 = !DILocation(line: 51, column: 29, scope: !174)
!179 = !DILocation(line: 51, column: 13, scope: !174)
!180 = !DILocation(line: 51, column: 7, scope: !175)
!181 = !DILocation(line: 52, column: 23, scope: !174)
!182 = !DILocation(line: 52, column: 11, scope: !174)
!183 = !DILocation(line: 52, column: 4, scope: !174)
!184 = !DILocation(line: 53, column: 2, scope: !175)
!185 = distinct !{!185, !169, !186, !71, !72}
!186 = !DILocation(line: 53, column: 2, scope: !170)
!187 = !DILocation(line: 55, column: 2, scope: !158)
!188 = !DILocation(line: 56, column: 1, scope: !158)
!189 = distinct !DISubprogram(name: "cpu_to_node", scope: !190, file: !190, line: 94, type: !191, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!190 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!191 = !DISubroutineType(types: !192)
!192 = !{!17, !17}
!193 = !{!194, !195, !198}
!194 = !DILocalVariable(name: "cpu", arg: 1, scope: !189, file: !190, line: 94, type: !17)
!195 = !DILocalVariable(name: "__vpp_verify", scope: !196, file: !190, line: 96, type: !156)
!196 = distinct !DILexicalBlock(scope: !197, file: !190, line: 96, column: 9)
!197 = distinct !DILexicalBlock(scope: !189, file: !190, line: 96, column: 9)
!198 = !DILocalVariable(name: "__ptr", scope: !199, file: !190, line: 96, type: !12)
!199 = distinct !DILexicalBlock(scope: !197, file: !190, line: 96, column: 9)
!200 = !DILocation(line: 94, column: 35, scope: !189)
!201 = !DILocation(line: 96, column: 9, scope: !197)
!202 = !DILocation(line: 96, column: 9, scope: !196)
!203 = !DILocation(line: 96, column: 9, scope: !199)
!204 = !DILocation(line: 96, column: 9, scope: !189)
!205 = !DILocation(line: 96, column: 2, scope: !189)
!206 = distinct !DISubprogram(name: "variable__ffs", scope: !207, file: !207, line: 250, type: !208, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!207 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!208 = !DISubroutineType(types: !209)
!209 = !{!12, !12}
!210 = !{!211}
!211 = !DILocalVariable(name: "word", arg: 1, scope: !206, file: !207, line: 250, type: !12)
!212 = !DILocation(line: 250, column: 66, scope: !206)
!213 = !DILocation(line: 254, column: 11, scope: !206)
!214 = !DILocation(line: 252, column: 2, scope: !206)
!215 = !{i64 294303}
!216 = !DILocation(line: 255, column: 9, scope: !206)
!217 = !DILocation(line: 255, column: 2, scope: !206)
!218 = !DISubprogram(name: "_find_next_bit", scope: !112, file: !112, line: 11, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
