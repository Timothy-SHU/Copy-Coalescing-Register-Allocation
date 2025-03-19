; ModuleID = 'kernel/time/timecounter.c'
source_filename = "kernel/time/timecounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timecounter_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timecounter_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timecounter_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timecounter_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_timecounter_cyc2time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad timecounter_cyc2time ; .previous"

%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }

@__UNIQUE_ID___addressable_timecounter_init0 = internal global ptr @timecounter_init, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_timecounter_read1 = internal global ptr @timecounter_read, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_timecounter_cyc2time2 = internal global ptr @timecounter_cyc2time, section ".discard.addressable", align 8, !dbg !14
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_timecounter_init0, ptr @__UNIQUE_ID___addressable_timecounter_read1, ptr @__UNIQUE_ID___addressable_timecounter_cyc2time2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %start_tstamp) #0 align 16 !dbg !25 {
entry:
  %tc.addr = alloca ptr, align 8
  %cc.addr = alloca ptr, align 8
  %start_tstamp.addr = alloca i64, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !52, metadata !DIExpression()), !dbg !55
  store ptr %cc, ptr %cc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !53, metadata !DIExpression()), !dbg !56
  store i64 %start_tstamp, ptr %start_tstamp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_tstamp.addr, metadata !54, metadata !DIExpression()), !dbg !57
  %0 = load ptr, ptr %cc.addr, align 8, !dbg !58
  %1 = load ptr, ptr %tc.addr, align 8, !dbg !59
  %cc1 = getelementptr inbounds %struct.timecounter, ptr %1, i32 0, i32 0, !dbg !60
  store ptr %0, ptr %cc1, align 8, !dbg !61
  %2 = load ptr, ptr %cc.addr, align 8, !dbg !62
  %read = getelementptr inbounds %struct.cyclecounter, ptr %2, i32 0, i32 0, !dbg !63
  %3 = load ptr, ptr %read, align 8, !dbg !63
  %4 = load ptr, ptr %cc.addr, align 8, !dbg !64
  %call = call i64 %3(ptr noundef %4) #4, !dbg !62
  %5 = load ptr, ptr %tc.addr, align 8, !dbg !65
  %cycle_last = getelementptr inbounds %struct.timecounter, ptr %5, i32 0, i32 1, !dbg !66
  store i64 %call, ptr %cycle_last, align 8, !dbg !67
  %6 = load i64, ptr %start_tstamp.addr, align 8, !dbg !68
  %7 = load ptr, ptr %tc.addr, align 8, !dbg !69
  %nsec = getelementptr inbounds %struct.timecounter, ptr %7, i32 0, i32 2, !dbg !70
  store i64 %6, ptr %nsec, align 8, !dbg !71
  %8 = load ptr, ptr %cc.addr, align 8, !dbg !72
  %shift = getelementptr inbounds %struct.cyclecounter, ptr %8, i32 0, i32 3, !dbg !73
  %9 = load i32, ptr %shift, align 4, !dbg !73
  %sh_prom = zext i32 %9 to i64, !dbg !74
  %shl = shl i64 1, %sh_prom, !dbg !74
  %sub = sub i64 %shl, 1, !dbg !75
  %10 = load ptr, ptr %tc.addr, align 8, !dbg !76
  %mask = getelementptr inbounds %struct.timecounter, ptr %10, i32 0, i32 3, !dbg !77
  store i64 %sub, ptr %mask, align 8, !dbg !78
  %11 = load ptr, ptr %tc.addr, align 8, !dbg !79
  %frac = getelementptr inbounds %struct.timecounter, ptr %11, i32 0, i32 4, !dbg !80
  store i64 0, ptr %frac, align 8, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @timecounter_read(ptr noundef %tc) #0 align 16 !dbg !83 {
entry:
  %tc.addr = alloca ptr, align 8
  %nsec = alloca i64, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !87, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #5, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !88, metadata !DIExpression()), !dbg !91
  %0 = load ptr, ptr %tc.addr, align 8, !dbg !92
  %call = call i64 @timecounter_read_delta(ptr noundef %0) #4, !dbg !93
  store i64 %call, ptr %nsec, align 8, !dbg !94
  %1 = load ptr, ptr %tc.addr, align 8, !dbg !95
  %nsec1 = getelementptr inbounds %struct.timecounter, ptr %1, i32 0, i32 2, !dbg !96
  %2 = load i64, ptr %nsec1, align 8, !dbg !96
  %3 = load i64, ptr %nsec, align 8, !dbg !97
  %add = add i64 %3, %2, !dbg !97
  store i64 %add, ptr %nsec, align 8, !dbg !97
  %4 = load i64, ptr %nsec, align 8, !dbg !98
  %5 = load ptr, ptr %tc.addr, align 8, !dbg !99
  %nsec2 = getelementptr inbounds %struct.timecounter, ptr %5, i32 0, i32 2, !dbg !100
  store i64 %4, ptr %nsec2, align 8, !dbg !101
  %6 = load i64, ptr %nsec, align 8, !dbg !102
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #5, !dbg !103
  ret i64 %6, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @timecounter_read_delta(ptr noundef %tc) #0 align 16 !dbg !105 {
entry:
  %tc.addr = alloca ptr, align 8
  %cycle_now = alloca i64, align 8
  %cycle_delta = alloca i64, align 8
  %ns_offset = alloca i64, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycle_now) #5, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %cycle_now, metadata !108, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycle_delta) #5, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %cycle_delta, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_offset) #5, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %ns_offset, metadata !110, metadata !DIExpression()), !dbg !116
  %0 = load ptr, ptr %tc.addr, align 8, !dbg !117
  %cc = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 0, !dbg !118
  %1 = load ptr, ptr %cc, align 8, !dbg !118
  %read = getelementptr inbounds %struct.cyclecounter, ptr %1, i32 0, i32 0, !dbg !119
  %2 = load ptr, ptr %read, align 8, !dbg !119
  %3 = load ptr, ptr %tc.addr, align 8, !dbg !120
  %cc1 = getelementptr inbounds %struct.timecounter, ptr %3, i32 0, i32 0, !dbg !121
  %4 = load ptr, ptr %cc1, align 8, !dbg !121
  %call = call i64 %2(ptr noundef %4) #4, !dbg !117
  store i64 %call, ptr %cycle_now, align 8, !dbg !122
  %5 = load i64, ptr %cycle_now, align 8, !dbg !123
  %6 = load ptr, ptr %tc.addr, align 8, !dbg !124
  %cycle_last = getelementptr inbounds %struct.timecounter, ptr %6, i32 0, i32 1, !dbg !125
  %7 = load i64, ptr %cycle_last, align 8, !dbg !125
  %sub = sub i64 %5, %7, !dbg !126
  %8 = load ptr, ptr %tc.addr, align 8, !dbg !127
  %cc2 = getelementptr inbounds %struct.timecounter, ptr %8, i32 0, i32 0, !dbg !128
  %9 = load ptr, ptr %cc2, align 8, !dbg !128
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %9, i32 0, i32 1, !dbg !129
  %10 = load i64, ptr %mask, align 8, !dbg !129
  %and = and i64 %sub, %10, !dbg !130
  store i64 %and, ptr %cycle_delta, align 8, !dbg !131
  %11 = load ptr, ptr %tc.addr, align 8, !dbg !132
  %cc3 = getelementptr inbounds %struct.timecounter, ptr %11, i32 0, i32 0, !dbg !133
  %12 = load ptr, ptr %cc3, align 8, !dbg !133
  %13 = load i64, ptr %cycle_delta, align 8, !dbg !134
  %14 = load ptr, ptr %tc.addr, align 8, !dbg !135
  %mask4 = getelementptr inbounds %struct.timecounter, ptr %14, i32 0, i32 3, !dbg !136
  %15 = load i64, ptr %mask4, align 8, !dbg !136
  %16 = load ptr, ptr %tc.addr, align 8, !dbg !137
  %frac = getelementptr inbounds %struct.timecounter, ptr %16, i32 0, i32 4, !dbg !138
  %call5 = call i64 @cyclecounter_cyc2ns(ptr noundef %12, i64 noundef %13, i64 noundef %15, ptr noundef %frac) #4, !dbg !139
  store i64 %call5, ptr %ns_offset, align 8, !dbg !140
  %17 = load i64, ptr %cycle_now, align 8, !dbg !141
  %18 = load ptr, ptr %tc.addr, align 8, !dbg !142
  %cycle_last6 = getelementptr inbounds %struct.timecounter, ptr %18, i32 0, i32 1, !dbg !143
  store i64 %17, ptr %cycle_last6, align 8, !dbg !144
  %19 = load i64, ptr %ns_offset, align 8, !dbg !145
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_offset) #5, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycle_delta) #5, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycle_now) #5, !dbg !146
  ret i64 %19, !dbg !147
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %cycle_tstamp) #0 align 16 !dbg !148 {
entry:
  %tc.addr = alloca ptr, align 8
  %cycle_tstamp.addr = alloca i64, align 8
  %delta = alloca i64, align 8
  %nsec = alloca i64, align 8
  %frac = alloca i64, align 8
  store ptr %tc, ptr %tc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tc.addr, metadata !154, metadata !DIExpression()), !dbg !159
  store i64 %cycle_tstamp, ptr %cycle_tstamp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycle_tstamp.addr, metadata !155, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !156, metadata !DIExpression()), !dbg !162
  %0 = load i64, ptr %cycle_tstamp.addr, align 8, !dbg !163
  %1 = load ptr, ptr %tc.addr, align 8, !dbg !164
  %cycle_last = getelementptr inbounds %struct.timecounter, ptr %1, i32 0, i32 1, !dbg !165
  %2 = load i64, ptr %cycle_last, align 8, !dbg !165
  %sub = sub i64 %0, %2, !dbg !166
  %3 = load ptr, ptr %tc.addr, align 8, !dbg !167
  %cc = getelementptr inbounds %struct.timecounter, ptr %3, i32 0, i32 0, !dbg !168
  %4 = load ptr, ptr %cc, align 8, !dbg !168
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %4, i32 0, i32 1, !dbg !169
  %5 = load i64, ptr %mask, align 8, !dbg !169
  %and = and i64 %sub, %5, !dbg !170
  store i64 %and, ptr %delta, align 8, !dbg !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #5, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !157, metadata !DIExpression()), !dbg !172
  %6 = load ptr, ptr %tc.addr, align 8, !dbg !173
  %nsec1 = getelementptr inbounds %struct.timecounter, ptr %6, i32 0, i32 2, !dbg !174
  %7 = load i64, ptr %nsec1, align 8, !dbg !174
  store i64 %7, ptr %nsec, align 8, !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %frac) #5, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %frac, metadata !158, metadata !DIExpression()), !dbg !175
  %8 = load ptr, ptr %tc.addr, align 8, !dbg !176
  %frac2 = getelementptr inbounds %struct.timecounter, ptr %8, i32 0, i32 4, !dbg !177
  %9 = load i64, ptr %frac2, align 8, !dbg !177
  store i64 %9, ptr %frac, align 8, !dbg !175
  %10 = load i64, ptr %delta, align 8, !dbg !178
  %11 = load ptr, ptr %tc.addr, align 8, !dbg !180
  %cc3 = getelementptr inbounds %struct.timecounter, ptr %11, i32 0, i32 0, !dbg !181
  %12 = load ptr, ptr %cc3, align 8, !dbg !181
  %mask4 = getelementptr inbounds %struct.cyclecounter, ptr %12, i32 0, i32 1, !dbg !182
  %13 = load i64, ptr %mask4, align 8, !dbg !182
  %div = udiv i64 %13, 2, !dbg !183
  %cmp = icmp ugt i64 %10, %div, !dbg !184
  br i1 %cmp, label %if.then, label %if.else, !dbg !185

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %tc.addr, align 8, !dbg !186
  %cycle_last5 = getelementptr inbounds %struct.timecounter, ptr %14, i32 0, i32 1, !dbg !188
  %15 = load i64, ptr %cycle_last5, align 8, !dbg !188
  %16 = load i64, ptr %cycle_tstamp.addr, align 8, !dbg !189
  %sub6 = sub i64 %15, %16, !dbg !190
  %17 = load ptr, ptr %tc.addr, align 8, !dbg !191
  %cc7 = getelementptr inbounds %struct.timecounter, ptr %17, i32 0, i32 0, !dbg !192
  %18 = load ptr, ptr %cc7, align 8, !dbg !192
  %mask8 = getelementptr inbounds %struct.cyclecounter, ptr %18, i32 0, i32 1, !dbg !193
  %19 = load i64, ptr %mask8, align 8, !dbg !193
  %and9 = and i64 %sub6, %19, !dbg !194
  store i64 %and9, ptr %delta, align 8, !dbg !195
  %20 = load ptr, ptr %tc.addr, align 8, !dbg !196
  %cc10 = getelementptr inbounds %struct.timecounter, ptr %20, i32 0, i32 0, !dbg !197
  %21 = load ptr, ptr %cc10, align 8, !dbg !197
  %22 = load i64, ptr %delta, align 8, !dbg !198
  %23 = load ptr, ptr %tc.addr, align 8, !dbg !199
  %mask11 = getelementptr inbounds %struct.timecounter, ptr %23, i32 0, i32 3, !dbg !200
  %24 = load i64, ptr %mask11, align 8, !dbg !200
  %25 = load i64, ptr %frac, align 8, !dbg !201
  %call = call i64 @cc_cyc2ns_backwards(ptr noundef %21, i64 noundef %22, i64 noundef %24, i64 noundef %25) #4, !dbg !202
  %26 = load i64, ptr %nsec, align 8, !dbg !203
  %sub12 = sub i64 %26, %call, !dbg !203
  store i64 %sub12, ptr %nsec, align 8, !dbg !203
  br label %if.end, !dbg !204

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %tc.addr, align 8, !dbg !205
  %cc13 = getelementptr inbounds %struct.timecounter, ptr %27, i32 0, i32 0, !dbg !207
  %28 = load ptr, ptr %cc13, align 8, !dbg !207
  %29 = load i64, ptr %delta, align 8, !dbg !208
  %30 = load ptr, ptr %tc.addr, align 8, !dbg !209
  %mask14 = getelementptr inbounds %struct.timecounter, ptr %30, i32 0, i32 3, !dbg !210
  %31 = load i64, ptr %mask14, align 8, !dbg !210
  %call15 = call i64 @cyclecounter_cyc2ns(ptr noundef %28, i64 noundef %29, i64 noundef %31, ptr noundef %frac) #4, !dbg !211
  %32 = load i64, ptr %nsec, align 8, !dbg !212
  %add = add i64 %32, %call15, !dbg !212
  store i64 %add, ptr %nsec, align 8, !dbg !212
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i64, ptr %nsec, align 8, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr %frac) #5, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #5, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5, !dbg !214
  ret i64 %33, !dbg !215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cc_cyc2ns_backwards(ptr noundef %cc, i64 noundef %cycles, i64 noundef %mask, i64 noundef %frac) #0 align 16 !dbg !216 {
entry:
  %cc.addr = alloca ptr, align 8
  %cycles.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %frac.addr = alloca i64, align 8
  %ns = alloca i64, align 8
  store ptr %cc, ptr %cc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !220, metadata !DIExpression()), !dbg !225
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !221, metadata !DIExpression()), !dbg !226
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !222, metadata !DIExpression()), !dbg !227
  store i64 %frac, ptr %frac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frac.addr, metadata !223, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !224, metadata !DIExpression()), !dbg !230
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !231
  store i64 %0, ptr %ns, align 8, !dbg !230
  %1 = load i64, ptr %ns, align 8, !dbg !232
  %2 = load ptr, ptr %cc.addr, align 8, !dbg !233
  %mult = getelementptr inbounds %struct.cyclecounter, ptr %2, i32 0, i32 2, !dbg !234
  %3 = load i32, ptr %mult, align 8, !dbg !234
  %conv = zext i32 %3 to i64, !dbg !233
  %mul = mul i64 %1, %conv, !dbg !235
  %4 = load i64, ptr %frac.addr, align 8, !dbg !236
  %sub = sub i64 %mul, %4, !dbg !237
  %5 = load ptr, ptr %cc.addr, align 8, !dbg !238
  %shift = getelementptr inbounds %struct.cyclecounter, ptr %5, i32 0, i32 3, !dbg !239
  %6 = load i32, ptr %shift, align 4, !dbg !239
  %sh_prom = zext i32 %6 to i64, !dbg !240
  %shr = lshr i64 %sub, %sh_prom, !dbg !240
  store i64 %shr, ptr %ns, align 8, !dbg !241
  %7 = load i64, ptr %ns, align 8, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5, !dbg !243
  ret i64 %7, !dbg !244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cyclecounter_cyc2ns(ptr noundef %cc, i64 noundef %cycles, i64 noundef %mask, ptr noundef %frac) #3 align 16 !dbg !245 {
entry:
  %cc.addr = alloca ptr, align 8
  %cycles.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %frac.addr = alloca ptr, align 8
  %ns = alloca i64, align 8
  store ptr %cc, ptr %cc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !250, metadata !DIExpression()), !dbg !255
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !251, metadata !DIExpression()), !dbg !256
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !252, metadata !DIExpression()), !dbg !257
  store ptr %frac, ptr %frac.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %frac.addr, metadata !253, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !254, metadata !DIExpression()), !dbg !260
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !261
  store i64 %0, ptr %ns, align 8, !dbg !260
  %1 = load i64, ptr %ns, align 8, !dbg !262
  %2 = load ptr, ptr %cc.addr, align 8, !dbg !263
  %mult = getelementptr inbounds %struct.cyclecounter, ptr %2, i32 0, i32 2, !dbg !264
  %3 = load i32, ptr %mult, align 8, !dbg !264
  %conv = zext i32 %3 to i64, !dbg !263
  %mul = mul i64 %1, %conv, !dbg !265
  %4 = load ptr, ptr %frac.addr, align 8, !dbg !266
  %5 = load i64, ptr %4, align 8, !dbg !267
  %add = add i64 %mul, %5, !dbg !268
  store i64 %add, ptr %ns, align 8, !dbg !269
  %6 = load i64, ptr %ns, align 8, !dbg !270
  %7 = load i64, ptr %mask.addr, align 8, !dbg !271
  %and = and i64 %6, %7, !dbg !272
  %8 = load ptr, ptr %frac.addr, align 8, !dbg !273
  store i64 %and, ptr %8, align 8, !dbg !274
  %9 = load i64, ptr %ns, align 8, !dbg !275
  %10 = load ptr, ptr %cc.addr, align 8, !dbg !276
  %shift = getelementptr inbounds %struct.cyclecounter, ptr %10, i32 0, i32 3, !dbg !277
  %11 = load i32, ptr %shift, align 4, !dbg !277
  %sh_prom = zext i32 %11 to i64, !dbg !278
  %shr = lshr i64 %9, %sh_prom, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5, !dbg !279
  ret i64 %shr, !dbg !280
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timecounter_init0", scope: !2, file: !3, line: 18, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.timecounter.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/timecounter\22 -D KBUILD_BASENAME=\22timecounter\22 -D KBUILD_MODNAME=\22timecounter\22 -D __KBUILD_MODNAME=kmod_timecounter -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/timecounter.ll kernel/time/timecounter.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/timecounter.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3483a92d1182b7c4803d65eec3ffbe2c")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!11 = !{!0, !12, !14}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timecounter_read1", scope: !2, file: !3, line: 63, type: !5, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_timecounter_cyc2time2", scope: !2, file: !3, line: 99, type: !5, isLocal: true, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 8, !"cf-protection-branch", i32 1}
!20 = !{i32 4, !"function_return_thunk_extern", i32 1}
!21 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{i32 1, !"override-stack-alignment", i32 8}
!24 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!25 = distinct !DISubprogram(name: "timecounter_init", scope: !3, file: !3, line: 8, type: !26, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !33, !6}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timecounter", file: !30, line: 55, size: 320, elements: !31)
!30 = !DIFile(filename: "./include/linux/timecounter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "383ec9a52560b80db2c6f4d48ce753fd")
!31 = !{!32, !47, !48, !49, !50}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !29, file: !30, line: 56, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyclecounter", file: !30, line: 30, size: 192, elements: !36)
!36 = !{!37, !41, !42, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !35, file: !30, line: 31, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !33}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !35, file: !30, line: 32, baseType: !6, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !35, file: !30, line: 33, baseType: !43, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !35, file: !30, line: 34, baseType: !43, size: 32, offset: 160)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !29, file: !30, line: 57, baseType: !6, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !29, file: !30, line: 58, baseType: !6, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !29, file: !30, line: 59, baseType: !6, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !29, file: !30, line: 60, baseType: !6, size: 64, offset: 256)
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(name: "tc", arg: 1, scope: !25, file: !3, line: 8, type: !28)
!53 = !DILocalVariable(name: "cc", arg: 2, scope: !25, file: !3, line: 9, type: !33)
!54 = !DILocalVariable(name: "start_tstamp", arg: 3, scope: !25, file: !3, line: 10, type: !6)
!55 = !DILocation(line: 8, column: 43, scope: !25)
!56 = !DILocation(line: 9, column: 36, scope: !25)
!57 = !DILocation(line: 10, column: 13, scope: !25)
!58 = !DILocation(line: 12, column: 11, scope: !25)
!59 = !DILocation(line: 12, column: 2, scope: !25)
!60 = !DILocation(line: 12, column: 6, scope: !25)
!61 = !DILocation(line: 12, column: 9, scope: !25)
!62 = !DILocation(line: 13, column: 19, scope: !25)
!63 = !DILocation(line: 13, column: 23, scope: !25)
!64 = !DILocation(line: 13, column: 28, scope: !25)
!65 = !DILocation(line: 13, column: 2, scope: !25)
!66 = !DILocation(line: 13, column: 6, scope: !25)
!67 = !DILocation(line: 13, column: 17, scope: !25)
!68 = !DILocation(line: 14, column: 13, scope: !25)
!69 = !DILocation(line: 14, column: 2, scope: !25)
!70 = !DILocation(line: 14, column: 6, scope: !25)
!71 = !DILocation(line: 14, column: 11, scope: !25)
!72 = !DILocation(line: 15, column: 22, scope: !25)
!73 = !DILocation(line: 15, column: 26, scope: !25)
!74 = !DILocation(line: 15, column: 19, scope: !25)
!75 = !DILocation(line: 15, column: 33, scope: !25)
!76 = !DILocation(line: 15, column: 2, scope: !25)
!77 = !DILocation(line: 15, column: 6, scope: !25)
!78 = !DILocation(line: 15, column: 11, scope: !25)
!79 = !DILocation(line: 16, column: 2, scope: !25)
!80 = !DILocation(line: 16, column: 6, scope: !25)
!81 = !DILocation(line: 16, column: 11, scope: !25)
!82 = !DILocation(line: 17, column: 1, scope: !25)
!83 = distinct !DISubprogram(name: "timecounter_read", scope: !3, file: !3, line: 52, type: !84, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !28}
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "tc", arg: 1, scope: !83, file: !3, line: 52, type: !28)
!88 = !DILocalVariable(name: "nsec", scope: !83, file: !3, line: 54, type: !6)
!89 = !DILocation(line: 52, column: 42, scope: !83)
!90 = !DILocation(line: 54, column: 2, scope: !83)
!91 = !DILocation(line: 54, column: 6, scope: !83)
!92 = !DILocation(line: 57, column: 32, scope: !83)
!93 = !DILocation(line: 57, column: 9, scope: !83)
!94 = !DILocation(line: 57, column: 7, scope: !83)
!95 = !DILocation(line: 58, column: 10, scope: !83)
!96 = !DILocation(line: 58, column: 14, scope: !83)
!97 = !DILocation(line: 58, column: 7, scope: !83)
!98 = !DILocation(line: 59, column: 13, scope: !83)
!99 = !DILocation(line: 59, column: 2, scope: !83)
!100 = !DILocation(line: 59, column: 6, scope: !83)
!101 = !DILocation(line: 59, column: 11, scope: !83)
!102 = !DILocation(line: 61, column: 9, scope: !83)
!103 = !DILocation(line: 62, column: 1, scope: !83)
!104 = !DILocation(line: 61, column: 2, scope: !83)
!105 = distinct !DISubprogram(name: "timecounter_read_delta", scope: !3, file: !3, line: 31, type: !84, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: "tc", arg: 1, scope: !105, file: !3, line: 31, type: !28)
!108 = !DILocalVariable(name: "cycle_now", scope: !105, file: !3, line: 33, type: !6)
!109 = !DILocalVariable(name: "cycle_delta", scope: !105, file: !3, line: 33, type: !6)
!110 = !DILocalVariable(name: "ns_offset", scope: !105, file: !3, line: 34, type: !6)
!111 = !DILocation(line: 31, column: 55, scope: !105)
!112 = !DILocation(line: 33, column: 2, scope: !105)
!113 = !DILocation(line: 33, column: 6, scope: !105)
!114 = !DILocation(line: 33, column: 17, scope: !105)
!115 = !DILocation(line: 34, column: 2, scope: !105)
!116 = !DILocation(line: 34, column: 6, scope: !105)
!117 = !DILocation(line: 37, column: 14, scope: !105)
!118 = !DILocation(line: 37, column: 18, scope: !105)
!119 = !DILocation(line: 37, column: 22, scope: !105)
!120 = !DILocation(line: 37, column: 27, scope: !105)
!121 = !DILocation(line: 37, column: 31, scope: !105)
!122 = !DILocation(line: 37, column: 12, scope: !105)
!123 = !DILocation(line: 40, column: 17, scope: !105)
!124 = !DILocation(line: 40, column: 29, scope: !105)
!125 = !DILocation(line: 40, column: 33, scope: !105)
!126 = !DILocation(line: 40, column: 27, scope: !105)
!127 = !DILocation(line: 40, column: 47, scope: !105)
!128 = !DILocation(line: 40, column: 51, scope: !105)
!129 = !DILocation(line: 40, column: 55, scope: !105)
!130 = !DILocation(line: 40, column: 45, scope: !105)
!131 = !DILocation(line: 40, column: 14, scope: !105)
!132 = !DILocation(line: 43, column: 34, scope: !105)
!133 = !DILocation(line: 43, column: 38, scope: !105)
!134 = !DILocation(line: 43, column: 42, scope: !105)
!135 = !DILocation(line: 44, column: 6, scope: !105)
!136 = !DILocation(line: 44, column: 10, scope: !105)
!137 = !DILocation(line: 44, column: 17, scope: !105)
!138 = !DILocation(line: 44, column: 21, scope: !105)
!139 = !DILocation(line: 43, column: 14, scope: !105)
!140 = !DILocation(line: 43, column: 12, scope: !105)
!141 = !DILocation(line: 47, column: 19, scope: !105)
!142 = !DILocation(line: 47, column: 2, scope: !105)
!143 = !DILocation(line: 47, column: 6, scope: !105)
!144 = !DILocation(line: 47, column: 17, scope: !105)
!145 = !DILocation(line: 49, column: 9, scope: !105)
!146 = !DILocation(line: 50, column: 1, scope: !105)
!147 = !DILocation(line: 49, column: 2, scope: !105)
!148 = distinct !DISubprogram(name: "timecounter_cyc2time", scope: !3, file: !3, line: 79, type: !149, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!149 = !DISubroutineType(types: !150)
!150 = !{!6, !151, !6}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DILocalVariable(name: "tc", arg: 1, scope: !148, file: !3, line: 79, type: !151)
!155 = !DILocalVariable(name: "cycle_tstamp", arg: 2, scope: !148, file: !3, line: 80, type: !6)
!156 = !DILocalVariable(name: "delta", scope: !148, file: !3, line: 82, type: !6)
!157 = !DILocalVariable(name: "nsec", scope: !148, file: !3, line: 83, type: !6)
!158 = !DILocalVariable(name: "frac", scope: !148, file: !3, line: 83, type: !6)
!159 = !DILocation(line: 79, column: 52, scope: !148)
!160 = !DILocation(line: 80, column: 9, scope: !148)
!161 = !DILocation(line: 82, column: 2, scope: !148)
!162 = !DILocation(line: 82, column: 6, scope: !148)
!163 = !DILocation(line: 82, column: 15, scope: !148)
!164 = !DILocation(line: 82, column: 30, scope: !148)
!165 = !DILocation(line: 82, column: 34, scope: !148)
!166 = !DILocation(line: 82, column: 28, scope: !148)
!167 = !DILocation(line: 82, column: 48, scope: !148)
!168 = !DILocation(line: 82, column: 52, scope: !148)
!169 = !DILocation(line: 82, column: 56, scope: !148)
!170 = !DILocation(line: 82, column: 46, scope: !148)
!171 = !DILocation(line: 83, column: 2, scope: !148)
!172 = !DILocation(line: 83, column: 6, scope: !148)
!173 = !DILocation(line: 83, column: 13, scope: !148)
!174 = !DILocation(line: 83, column: 17, scope: !148)
!175 = !DILocation(line: 83, column: 23, scope: !148)
!176 = !DILocation(line: 83, column: 30, scope: !148)
!177 = !DILocation(line: 83, column: 34, scope: !148)
!178 = !DILocation(line: 90, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !148, file: !3, line: 90, column: 6)
!180 = !DILocation(line: 90, column: 14, scope: !179)
!181 = !DILocation(line: 90, column: 18, scope: !179)
!182 = !DILocation(line: 90, column: 22, scope: !179)
!183 = !DILocation(line: 90, column: 27, scope: !179)
!184 = !DILocation(line: 90, column: 12, scope: !179)
!185 = !DILocation(line: 90, column: 6, scope: !148)
!186 = !DILocation(line: 91, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !3, line: 90, column: 32)
!188 = !DILocation(line: 91, column: 16, scope: !187)
!189 = !DILocation(line: 91, column: 29, scope: !187)
!190 = !DILocation(line: 91, column: 27, scope: !187)
!191 = !DILocation(line: 91, column: 45, scope: !187)
!192 = !DILocation(line: 91, column: 49, scope: !187)
!193 = !DILocation(line: 91, column: 53, scope: !187)
!194 = !DILocation(line: 91, column: 43, scope: !187)
!195 = !DILocation(line: 91, column: 9, scope: !187)
!196 = !DILocation(line: 92, column: 31, scope: !187)
!197 = !DILocation(line: 92, column: 35, scope: !187)
!198 = !DILocation(line: 92, column: 39, scope: !187)
!199 = !DILocation(line: 92, column: 46, scope: !187)
!200 = !DILocation(line: 92, column: 50, scope: !187)
!201 = !DILocation(line: 92, column: 56, scope: !187)
!202 = !DILocation(line: 92, column: 11, scope: !187)
!203 = !DILocation(line: 92, column: 8, scope: !187)
!204 = !DILocation(line: 93, column: 2, scope: !187)
!205 = !DILocation(line: 94, column: 31, scope: !206)
!206 = distinct !DILexicalBlock(scope: !179, file: !3, line: 93, column: 9)
!207 = !DILocation(line: 94, column: 35, scope: !206)
!208 = !DILocation(line: 94, column: 39, scope: !206)
!209 = !DILocation(line: 94, column: 46, scope: !206)
!210 = !DILocation(line: 94, column: 50, scope: !206)
!211 = !DILocation(line: 94, column: 11, scope: !206)
!212 = !DILocation(line: 94, column: 8, scope: !206)
!213 = !DILocation(line: 97, column: 9, scope: !148)
!214 = !DILocation(line: 98, column: 1, scope: !148)
!215 = !DILocation(line: 97, column: 2, scope: !148)
!216 = distinct !DISubprogram(name: "cc_cyc2ns_backwards", scope: !3, file: !3, line: 69, type: !217, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!6, !33, !6, !6, !6}
!219 = !{!220, !221, !222, !223, !224}
!220 = !DILocalVariable(name: "cc", arg: 1, scope: !216, file: !3, line: 69, type: !33)
!221 = !DILocalVariable(name: "cycles", arg: 2, scope: !216, file: !3, line: 70, type: !6)
!222 = !DILocalVariable(name: "mask", arg: 3, scope: !216, file: !3, line: 70, type: !6)
!223 = !DILocalVariable(name: "frac", arg: 4, scope: !216, file: !3, line: 70, type: !6)
!224 = !DILocalVariable(name: "ns", scope: !216, file: !3, line: 72, type: !6)
!225 = !DILocation(line: 69, column: 59, scope: !216)
!226 = !DILocation(line: 70, column: 15, scope: !216)
!227 = !DILocation(line: 70, column: 27, scope: !216)
!228 = !DILocation(line: 70, column: 37, scope: !216)
!229 = !DILocation(line: 72, column: 2, scope: !216)
!230 = !DILocation(line: 72, column: 6, scope: !216)
!231 = !DILocation(line: 72, column: 17, scope: !216)
!232 = !DILocation(line: 74, column: 9, scope: !216)
!233 = !DILocation(line: 74, column: 14, scope: !216)
!234 = !DILocation(line: 74, column: 18, scope: !216)
!235 = !DILocation(line: 74, column: 12, scope: !216)
!236 = !DILocation(line: 74, column: 26, scope: !216)
!237 = !DILocation(line: 74, column: 24, scope: !216)
!238 = !DILocation(line: 74, column: 35, scope: !216)
!239 = !DILocation(line: 74, column: 39, scope: !216)
!240 = !DILocation(line: 74, column: 32, scope: !216)
!241 = !DILocation(line: 74, column: 5, scope: !216)
!242 = !DILocation(line: 76, column: 9, scope: !216)
!243 = !DILocation(line: 77, column: 1, scope: !216)
!244 = !DILocation(line: 76, column: 2, scope: !216)
!245 = distinct !DISubprogram(name: "cyclecounter_cyc2ns", scope: !30, file: !30, line: 70, type: !246, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!246 = !DISubroutineType(types: !247)
!247 = !{!6, !33, !6, !6, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DILocalVariable(name: "cc", arg: 1, scope: !245, file: !30, line: 70, type: !33)
!251 = !DILocalVariable(name: "cycles", arg: 2, scope: !245, file: !30, line: 71, type: !6)
!252 = !DILocalVariable(name: "mask", arg: 3, scope: !245, file: !30, line: 71, type: !6)
!253 = !DILocalVariable(name: "frac", arg: 4, scope: !245, file: !30, line: 71, type: !248)
!254 = !DILocalVariable(name: "ns", scope: !245, file: !30, line: 73, type: !6)
!255 = !DILocation(line: 70, column: 66, scope: !245)
!256 = !DILocation(line: 71, column: 15, scope: !245)
!257 = !DILocation(line: 71, column: 27, scope: !245)
!258 = !DILocation(line: 71, column: 38, scope: !245)
!259 = !DILocation(line: 73, column: 2, scope: !245)
!260 = !DILocation(line: 73, column: 6, scope: !245)
!261 = !DILocation(line: 73, column: 17, scope: !245)
!262 = !DILocation(line: 75, column: 8, scope: !245)
!263 = !DILocation(line: 75, column: 13, scope: !245)
!264 = !DILocation(line: 75, column: 17, scope: !245)
!265 = !DILocation(line: 75, column: 11, scope: !245)
!266 = !DILocation(line: 75, column: 26, scope: !245)
!267 = !DILocation(line: 75, column: 25, scope: !245)
!268 = !DILocation(line: 75, column: 23, scope: !245)
!269 = !DILocation(line: 75, column: 5, scope: !245)
!270 = !DILocation(line: 76, column: 10, scope: !245)
!271 = !DILocation(line: 76, column: 15, scope: !245)
!272 = !DILocation(line: 76, column: 13, scope: !245)
!273 = !DILocation(line: 76, column: 3, scope: !245)
!274 = !DILocation(line: 76, column: 8, scope: !245)
!275 = !DILocation(line: 77, column: 9, scope: !245)
!276 = !DILocation(line: 77, column: 15, scope: !245)
!277 = !DILocation(line: 77, column: 19, scope: !245)
!278 = !DILocation(line: 77, column: 12, scope: !245)
!279 = !DILocation(line: 78, column: 1, scope: !245)
!280 = !DILocation(line: 77, column: 2, scope: !245)
