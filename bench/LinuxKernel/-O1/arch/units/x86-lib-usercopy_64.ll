; ModuleID = 'arch/x86/lib/usercopy_64.c'
source_filename = "arch/x86/lib/usercopy_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_wb_cache_pmem: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_wb_cache_pmem ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___memcpy_flushcache: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __memcpy_flushcache ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.anon.1 = type { [64 x i8] }

@__UNIQUE_ID___addressable_arch_wb_cache_pmem327 = internal global ptr @arch_wb_cache_pmem, section ".discard.addressable", align 8, !dbg !0
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__UNIQUE_ID___addressable___memcpy_flushcache330 = internal global ptr @__memcpy_flushcache, section ".discard.addressable", align 8, !dbg !13
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_arch_wb_cache_pmem327, ptr @__UNIQUE_ID___addressable___memcpy_flushcache330], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_wb_cache_pmem(ptr noundef %addr, i64 noundef %size) #0 align 16 !dbg !24 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !28, metadata !DIExpression()), !dbg !30
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !29, metadata !DIExpression()), !dbg !31
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !32
  %1 = load i64, ptr %size.addr, align 8, !dbg !33
  call void @clean_cache_range(ptr noundef %0, i64 noundef %1) #7, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clean_cache_range(ptr noundef %addr, i64 noundef %size) #0 align 16 !dbg !36 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %x86_clflush_size = alloca i16, align 2
  %clflush_mask = alloca i64, align 8
  %vend = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !38, metadata !DIExpression()), !dbg !49
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !39, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 2, ptr %x86_clflush_size) #8, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %x86_clflush_size, metadata !40, metadata !DIExpression()), !dbg !52
  %0 = load i16, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 24), align 2, !dbg !53
  store i16 %0, ptr %x86_clflush_size, align 2, !dbg !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %clflush_mask) #8, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %clflush_mask, metadata !46, metadata !DIExpression()), !dbg !55
  %1 = load i16, ptr %x86_clflush_size, align 2, !dbg !56
  %conv = zext i16 %1 to i32, !dbg !56
  %sub = sub i32 %conv, 1, !dbg !57
  %conv1 = sext i32 %sub to i64, !dbg !56
  store i64 %conv1, ptr %clflush_mask, align 8, !dbg !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %vend) #8, !dbg !58
  call void @llvm.dbg.declare(metadata ptr %vend, metadata !47, metadata !DIExpression()), !dbg !59
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !60
  %3 = load i64, ptr %size.addr, align 8, !dbg !61
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !62
  store ptr %add.ptr, ptr %vend, align 8, !dbg !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !63
  call void @llvm.dbg.declare(metadata ptr %p, metadata !48, metadata !DIExpression()), !dbg !64
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !65
  %5 = ptrtoint ptr %4 to i64, !dbg !67
  %6 = load i64, ptr %clflush_mask, align 8, !dbg !68
  %not = xor i64 %6, -1, !dbg !69
  %and = and i64 %5, %not, !dbg !70
  %7 = inttoptr i64 %and to ptr, !dbg !71
  store ptr %7, ptr %p, align 8, !dbg !72
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %p, align 8, !dbg !74
  %9 = load ptr, ptr %vend, align 8, !dbg !76
  %cmp = icmp ult ptr %8, %9, !dbg !77
  br i1 %cmp, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %p, align 8, !dbg !79
  call void @clwb(ptr noundef %10) #7, !dbg !80
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %11 = load i16, ptr %x86_clflush_size, align 2, !dbg !81
  %conv3 = zext i16 %11 to i32, !dbg !81
  %12 = load ptr, ptr %p, align 8, !dbg !82
  %idx.ext = sext i32 %conv3 to i64, !dbg !82
  %add.ptr4 = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !82
  store ptr %add.ptr4, ptr %p, align 8, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !88
  call void @llvm.lifetime.end.p0(i64 8, ptr %vend) #8, !dbg !88
  call void @llvm.lifetime.end.p0(i64 8, ptr %clflush_mask) #8, !dbg !88
  call void @llvm.lifetime.end.p0(i64 2, ptr %x86_clflush_size) #8, !dbg !88
  ret void, !dbg !88
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__copy_user_flushcache(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #0 align 16 !dbg !89 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %flushed = alloca i64, align 8
  %dest = alloca i64, align 8
  %rc = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !97, metadata !DIExpression()), !dbg !103
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !98, metadata !DIExpression()), !dbg !104
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !99, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %flushed) #8, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %flushed, metadata !100, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #8, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !101, metadata !DIExpression()), !dbg !108
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !109
  %1 = ptrtoint ptr %0 to i64, !dbg !110
  store i64 %1, ptr %dest, align 8, !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !102, metadata !DIExpression()), !dbg !112
  call void @stac() #7, !dbg !113
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !114
  %3 = load ptr, ptr %src.addr, align 8, !dbg !115
  %4 = load i32, ptr %size.addr, align 4, !dbg !116
  %call = call i64 @__copy_user_nocache(ptr noundef %2, ptr noundef %3, i32 noundef %4) #7, !dbg !117
  store i64 %call, ptr %rc, align 8, !dbg !118
  call void @clac() #7, !dbg !119
  %5 = load i32, ptr %size.addr, align 4, !dbg !120
  %cmp = icmp ult i32 %5, 8, !dbg !122
  br i1 %cmp, label %if.then, label %if.else, !dbg !123

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %dest, align 8, !dbg !124
  %and = and i64 %6, 3, !dbg !124
  %cmp1 = icmp eq i64 %and, 0, !dbg !124
  br i1 %cmp1, label %lor.lhs.false, label %if.then3, !dbg !127

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, ptr %size.addr, align 4, !dbg !128
  %cmp2 = icmp ne i32 %7, 4, !dbg !129
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !130

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !131
  %9 = load i32, ptr %size.addr, align 4, !dbg !132
  %conv = zext i32 %9 to i64, !dbg !132
  call void @clean_cache_range(ptr noundef %8, i64 noundef %conv) #7, !dbg !133
  br label %if.end, !dbg !133

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  br label %if.end25, !dbg !134

if.else:                                          ; preds = %entry
  %10 = load i64, ptr %dest, align 8, !dbg !135
  %and4 = and i64 %10, 7, !dbg !135
  %cmp5 = icmp eq i64 %and4, 0, !dbg !135
  br i1 %cmp5, label %if.end12, label %if.then7, !dbg !138

if.then7:                                         ; preds = %if.else
  %11 = load i64, ptr %dest, align 8, !dbg !139
  %12 = load i16, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 24), align 2, !dbg !139
  %conv8 = zext i16 %12 to i64, !dbg !139
  %sub = sub i64 %conv8, 1, !dbg !139
  %add = add i64 %11, %sub, !dbg !139
  %13 = load i16, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 24), align 2, !dbg !139
  %conv9 = zext i16 %13 to i64, !dbg !139
  %sub10 = sub i64 %conv9, 1, !dbg !139
  %not = xor i64 %sub10, -1, !dbg !139
  %and11 = and i64 %add, %not, !dbg !139
  store i64 %and11, ptr %dest, align 8, !dbg !141
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !142
  call void @clean_cache_range(ptr noundef %14, i64 noundef 1) #7, !dbg !143
  br label %if.end12, !dbg !144

if.end12:                                         ; preds = %if.then7, %if.else
  %15 = load i64, ptr %dest, align 8, !dbg !145
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !146
  %17 = ptrtoint ptr %16 to i64, !dbg !147
  %sub13 = sub i64 %15, %17, !dbg !148
  store i64 %sub13, ptr %flushed, align 8, !dbg !149
  %18 = load i32, ptr %size.addr, align 4, !dbg !150
  %conv14 = zext i32 %18 to i64, !dbg !150
  %19 = load i64, ptr %flushed, align 8, !dbg !152
  %cmp15 = icmp ugt i64 %conv14, %19, !dbg !153
  br i1 %cmp15, label %land.lhs.true, label %if.end24, !dbg !154

land.lhs.true:                                    ; preds = %if.end12
  %20 = load i32, ptr %size.addr, align 4, !dbg !155
  %conv17 = zext i32 %20 to i64, !dbg !155
  %21 = load i64, ptr %flushed, align 8, !dbg !155
  %sub18 = sub i64 %conv17, %21, !dbg !155
  %and19 = and i64 %sub18, 7, !dbg !155
  %cmp20 = icmp eq i64 %and19, 0, !dbg !155
  br i1 %cmp20, label %if.end24, label %if.then22, !dbg !156

if.then22:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %dst.addr, align 8, !dbg !157
  %23 = load i32, ptr %size.addr, align 4, !dbg !158
  %idx.ext = zext i32 %23 to i64, !dbg !159
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !159
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i64 -1, !dbg !160
  call void @clean_cache_range(ptr noundef %add.ptr23, i64 noundef 1) #7, !dbg !161
  br label %if.end24, !dbg !161

if.end24:                                         ; preds = %if.then22, %land.lhs.true, %if.end12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  %24 = load i64, ptr %rc, align 8, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !163
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #8, !dbg !163
  call void @llvm.lifetime.end.p0(i64 8, ptr %flushed) #8, !dbg !163
  ret i64 %24, !dbg !164
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #3 align 16 !dbg !165 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !169, !srcloc !170
  ret void, !dbg !171
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local i64 @__copy_user_nocache(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #3 align 16 !dbg !174 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !175, !srcloc !176
  ret void, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__memcpy_flushcache(ptr noundef %_dst, ptr noundef %_src, i64 noundef %size) #0 align 16 !dbg !178 {
entry:
  %_dst.addr = alloca ptr, align 8
  %_src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %dest = alloca i64, align 8
  %source = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x328 = alloca i64, align 8
  %__UNIQUE_ID___y329 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_dst, ptr %_dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dst.addr, metadata !182, metadata !DIExpression()), !dbg !193
  store ptr %_src, ptr %_src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_src.addr, metadata !183, metadata !DIExpression()), !dbg !194
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !184, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #8, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !185, metadata !DIExpression()), !dbg !197
  %0 = load ptr, ptr %_dst.addr, align 8, !dbg !198
  %1 = ptrtoint ptr %0 to i64, !dbg !199
  store i64 %1, ptr %dest, align 8, !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #8, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %source, metadata !186, metadata !DIExpression()), !dbg !201
  %2 = load ptr, ptr %_src.addr, align 8, !dbg !202
  %3 = ptrtoint ptr %2 to i64, !dbg !203
  store i64 %3, ptr %source, align 8, !dbg !201
  %4 = load i64, ptr %dest, align 8, !dbg !204
  %and = and i64 %4, 7, !dbg !204
  %cmp = icmp eq i64 %and, 0, !dbg !204
  br i1 %cmp, label %if.end7, label %if.then, !dbg !205

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %len, metadata !187, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x328) #8, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x328, metadata !190, metadata !DIExpression()), !dbg !208
  %5 = load i64, ptr %size.addr, align 8, !dbg !208
  store i64 %5, ptr %__UNIQUE_ID___x328, align 8, !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y329) #8, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y329, metadata !192, metadata !DIExpression()), !dbg !208
  %6 = load i64, ptr %dest, align 8, !dbg !208
  %add = add i64 %6, 7, !dbg !208
  %and1 = and i64 %add, -8, !dbg !208
  %7 = load i64, ptr %dest, align 8, !dbg !208
  %sub = sub i64 %and1, %7, !dbg !208
  store i64 %sub, ptr %__UNIQUE_ID___y329, align 8, !dbg !208
  %8 = load i64, ptr %__UNIQUE_ID___x328, align 8, !dbg !208
  %9 = load i64, ptr %__UNIQUE_ID___y329, align 8, !dbg !208
  %cmp2 = icmp ult i64 %8, %9, !dbg !208
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !208

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %__UNIQUE_ID___x328, align 8, !dbg !208
  br label %cond.end, !dbg !208

cond.false:                                       ; preds = %if.then
  %11 = load i64, ptr %__UNIQUE_ID___y329, align 8, !dbg !208
  br label %cond.end, !dbg !208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !208
  store i64 %cond, ptr %tmp, align 8, !dbg !208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y329) #8, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x328) #8, !dbg !209
  %12 = load i64, ptr %tmp, align 8, !dbg !208
  store i64 %12, ptr %len, align 8, !dbg !207
  %13 = load i64, ptr %dest, align 8, !dbg !210
  %14 = inttoptr i64 %13 to ptr, !dbg !211
  %15 = load i64, ptr %source, align 8, !dbg !212
  %16 = inttoptr i64 %15 to ptr, !dbg !213
  %17 = load i64, ptr %len, align 8, !dbg !214
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %17, i1 false), !dbg !215
  %18 = load i64, ptr %dest, align 8, !dbg !216
  %19 = inttoptr i64 %18 to ptr, !dbg !217
  %20 = load i64, ptr %len, align 8, !dbg !218
  call void @clean_cache_range(ptr noundef %19, i64 noundef %20) #7, !dbg !219
  %21 = load i64, ptr %len, align 8, !dbg !220
  %22 = load i64, ptr %dest, align 8, !dbg !221
  %add3 = add i64 %22, %21, !dbg !221
  store i64 %add3, ptr %dest, align 8, !dbg !221
  %23 = load i64, ptr %len, align 8, !dbg !222
  %24 = load i64, ptr %source, align 8, !dbg !223
  %add4 = add i64 %24, %23, !dbg !223
  store i64 %add4, ptr %source, align 8, !dbg !223
  %25 = load i64, ptr %len, align 8, !dbg !224
  %26 = load i64, ptr %size.addr, align 8, !dbg !225
  %sub5 = sub i64 %26, %25, !dbg !225
  store i64 %sub5, ptr %size.addr, align 8, !dbg !225
  %27 = load i64, ptr %size.addr, align 8, !dbg !226
  %tobool = icmp ne i64 %27, 0, !dbg !226
  br i1 %tobool, label %if.end, label %if.then6, !dbg !228

if.then6:                                         ; preds = %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !229

if.end:                                           ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !230
  br label %cleanup, !dbg !230

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !230
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !231

if.end7:                                          ; preds = %cleanup.cont, %entry
  br label %while.cond, !dbg !232

while.cond:                                       ; preds = %while.body, %if.end7
  %28 = load i64, ptr %size.addr, align 8, !dbg !233
  %cmp8 = icmp uge i64 %28, 32, !dbg !234
  br i1 %cmp8, label %while.body, label %while.end, !dbg !232

while.body:                                       ; preds = %while.cond
  %29 = load i64, ptr %source, align 8, !dbg !235
  %30 = load i64, ptr %dest, align 8, !dbg !237
  call void asm sideeffect "movq    ($0), %r8\0Amovq   8($0), %r9\0Amovq  16($0), %r10\0Amovq  24($0), %r11\0Amovnti  %r8,   ($1)\0Amovnti  %r9,  8($1)\0Amovnti %r10, 16($1)\0Amovnti %r11, 24($1)\0A", "r,r,~{memory},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 %29, i64 %30) #8, !dbg !238, !srcloc !239
  %31 = load i64, ptr %dest, align 8, !dbg !240
  %add9 = add i64 %31, 32, !dbg !240
  store i64 %add9, ptr %dest, align 8, !dbg !240
  %32 = load i64, ptr %source, align 8, !dbg !241
  %add10 = add i64 %32, 32, !dbg !241
  store i64 %add10, ptr %source, align 8, !dbg !241
  %33 = load i64, ptr %size.addr, align 8, !dbg !242
  %sub11 = sub i64 %33, 32, !dbg !242
  store i64 %sub11, ptr %size.addr, align 8, !dbg !242
  br label %while.cond, !dbg !232, !llvm.loop !243

while.end:                                        ; preds = %while.cond
  br label %while.cond12, !dbg !245

while.cond12:                                     ; preds = %while.body14, %while.end
  %34 = load i64, ptr %size.addr, align 8, !dbg !246
  %cmp13 = icmp uge i64 %34, 8, !dbg !247
  br i1 %cmp13, label %while.body14, label %while.end18, !dbg !245

while.body14:                                     ; preds = %while.cond12
  %35 = load i64, ptr %source, align 8, !dbg !248
  %36 = load i64, ptr %dest, align 8, !dbg !250
  call void asm sideeffect "movq    ($0), %r8\0Amovnti  %r8,   ($1)\0A", "r,r,~{memory},~{r8},~{dirflag},~{fpsr},~{flags}"(i64 %35, i64 %36) #8, !dbg !251, !srcloc !252
  %37 = load i64, ptr %dest, align 8, !dbg !253
  %add15 = add i64 %37, 8, !dbg !253
  store i64 %add15, ptr %dest, align 8, !dbg !253
  %38 = load i64, ptr %source, align 8, !dbg !254
  %add16 = add i64 %38, 8, !dbg !254
  store i64 %add16, ptr %source, align 8, !dbg !254
  %39 = load i64, ptr %size.addr, align 8, !dbg !255
  %sub17 = sub i64 %39, 8, !dbg !255
  store i64 %sub17, ptr %size.addr, align 8, !dbg !255
  br label %while.cond12, !dbg !245, !llvm.loop !256

while.end18:                                      ; preds = %while.cond12
  br label %while.cond19, !dbg !258

while.cond19:                                     ; preds = %while.body21, %while.end18
  %40 = load i64, ptr %size.addr, align 8, !dbg !259
  %cmp20 = icmp uge i64 %40, 4, !dbg !260
  br i1 %cmp20, label %while.body21, label %while.end25, !dbg !258

while.body21:                                     ; preds = %while.cond19
  %41 = load i64, ptr %source, align 8, !dbg !261
  %42 = load i64, ptr %dest, align 8, !dbg !263
  call void asm sideeffect "movl    ($0), %r8d\0Amovnti  %r8d,   ($1)\0A", "r,r,~{memory},~{r8},~{dirflag},~{fpsr},~{flags}"(i64 %41, i64 %42) #8, !dbg !264, !srcloc !265
  %43 = load i64, ptr %dest, align 8, !dbg !266
  %add22 = add i64 %43, 4, !dbg !266
  store i64 %add22, ptr %dest, align 8, !dbg !266
  %44 = load i64, ptr %source, align 8, !dbg !267
  %add23 = add i64 %44, 4, !dbg !267
  store i64 %add23, ptr %source, align 8, !dbg !267
  %45 = load i64, ptr %size.addr, align 8, !dbg !268
  %sub24 = sub i64 %45, 4, !dbg !268
  store i64 %sub24, ptr %size.addr, align 8, !dbg !268
  br label %while.cond19, !dbg !258, !llvm.loop !269

while.end25:                                      ; preds = %while.cond19
  %46 = load i64, ptr %size.addr, align 8, !dbg !271
  %tobool26 = icmp ne i64 %46, 0, !dbg !271
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !273

if.then27:                                        ; preds = %while.end25
  %47 = load i64, ptr %dest, align 8, !dbg !274
  %48 = inttoptr i64 %47 to ptr, !dbg !276
  %49 = load i64, ptr %source, align 8, !dbg !277
  %50 = inttoptr i64 %49 to ptr, !dbg !278
  %51 = load i64, ptr %size.addr, align 8, !dbg !279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %50, i64 %51, i1 false), !dbg !280
  %52 = load i64, ptr %dest, align 8, !dbg !281
  %53 = inttoptr i64 %52 to ptr, !dbg !282
  %54 = load i64, ptr %size.addr, align 8, !dbg !283
  call void @clean_cache_range(ptr noundef %53, i64 noundef %54) #7, !dbg !284
  br label %if.end28, !dbg !285

if.end28:                                         ; preds = %if.then27, %while.end25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !286
  br label %cleanup29, !dbg !286

cleanup29:                                        ; preds = %if.end28, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #8, !dbg !286
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #8, !dbg !286
  %cleanup.dest31 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest31, label %unreachable [
    i32 0, label %cleanup.cont32
    i32 1, label %cleanup.cont32
  ]

cleanup.cont32:                                   ; preds = %cleanup29, %cleanup29
  ret void, !dbg !286

unreachable:                                      ; preds = %cleanup29
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clwb(ptr noundef %__p) #6 align 16 !dbg !287 {
entry:
  %__p.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__p.addr, metadata !294, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %p, metadata !295, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %__p.addr, align 8, !dbg !308
  store ptr %0, ptr %p, align 8, !dbg !307
  %1 = load ptr, ptr %p, align 8, !dbg !309
  %2 = load ptr, ptr %p, align 8, !dbg !310
  call void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09.byte 0x3e; clflush ($1)\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 9*32+24)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x66; clflush ($1)\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09.byte 0x66, 0x0f, 0xae, 0x30\0A6652:\0A.popsection\0A", "=*m,{ax},*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.anon.1) %1, ptr %2, ptr elementtype(%struct.anon.1) %1) #8, !dbg !311, !srcloc !312
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !313
  ret void, !dbg !313
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_wb_cache_pmem327", scope: !2, file: !3, line: 44, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.usercopy_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/usercopy_64\22 -D KBUILD_BASENAME=\22usercopy_64\22 -D KBUILD_MODNAME=\22usercopy_64\22 -D __KBUILD_MODNAME=kmod_usercopy_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/usercopy_64.ll arch/x86/lib/usercopy_64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/usercopy_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ba86a19d74c6da1d00ef50a5268b5cb")
!4 = !{!5, !6, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 61, baseType: !9)
!8 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !10, line: 72, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !10, line: 16, baseType: !6)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___memcpy_flushcache330", scope: !2, file: !3, line: 143, type: !5, isLocal: true, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 8, !"cf-protection-branch", i32 1}
!19 = !{i32 4, !"function_return_thunk_extern", i32 1}
!20 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{i32 1, !"override-stack-alignment", i32 8}
!23 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!24 = distinct !DISubprogram(name: "arch_wb_cache_pmem", scope: !3, file: !3, line: 40, type: !25, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !5, !7}
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "addr", arg: 1, scope: !24, file: !3, line: 40, type: !5)
!29 = !DILocalVariable(name: "size", arg: 2, scope: !24, file: !3, line: 40, type: !7)
!30 = !DILocation(line: 40, column: 31, scope: !24)
!31 = !DILocation(line: 40, column: 44, scope: !24)
!32 = !DILocation(line: 42, column: 20, scope: !24)
!33 = !DILocation(line: 42, column: 26, scope: !24)
!34 = !DILocation(line: 42, column: 2, scope: !24)
!35 = !DILocation(line: 43, column: 1, scope: !24)
!36 = distinct !DISubprogram(name: "clean_cache_range", scope: !3, file: !3, line: 28, type: !25, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!37 = !{!38, !39, !40, !46, !47, !48}
!38 = !DILocalVariable(name: "addr", arg: 1, scope: !36, file: !3, line: 28, type: !5)
!39 = !DILocalVariable(name: "size", arg: 2, scope: !36, file: !3, line: 28, type: !7)
!40 = !DILocalVariable(name: "x86_clflush_size", scope: !36, file: !3, line: 30, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !42, line: 19, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DILocalVariable(name: "clflush_mask", scope: !36, file: !3, line: 31, type: !6)
!47 = !DILocalVariable(name: "vend", scope: !36, file: !3, line: 32, type: !5)
!48 = !DILocalVariable(name: "p", scope: !36, file: !3, line: 33, type: !5)
!49 = !DILocation(line: 28, column: 37, scope: !36)
!50 = !DILocation(line: 28, column: 50, scope: !36)
!51 = !DILocation(line: 30, column: 2, scope: !36)
!52 = !DILocation(line: 30, column: 6, scope: !36)
!53 = !DILocation(line: 30, column: 39, scope: !36)
!54 = !DILocation(line: 31, column: 2, scope: !36)
!55 = !DILocation(line: 31, column: 16, scope: !36)
!56 = !DILocation(line: 31, column: 31, scope: !36)
!57 = !DILocation(line: 31, column: 48, scope: !36)
!58 = !DILocation(line: 32, column: 2, scope: !36)
!59 = !DILocation(line: 32, column: 8, scope: !36)
!60 = !DILocation(line: 32, column: 15, scope: !36)
!61 = !DILocation(line: 32, column: 22, scope: !36)
!62 = !DILocation(line: 32, column: 20, scope: !36)
!63 = !DILocation(line: 33, column: 2, scope: !36)
!64 = !DILocation(line: 33, column: 8, scope: !36)
!65 = !DILocation(line: 35, column: 35, scope: !66)
!66 = distinct !DILexicalBlock(scope: !36, file: !3, line: 35, column: 2)
!67 = !DILocation(line: 35, column: 20, scope: !66)
!68 = !DILocation(line: 35, column: 43, scope: !66)
!69 = !DILocation(line: 35, column: 42, scope: !66)
!70 = !DILocation(line: 35, column: 40, scope: !66)
!71 = !DILocation(line: 35, column: 11, scope: !66)
!72 = !DILocation(line: 35, column: 9, scope: !66)
!73 = !DILocation(line: 35, column: 7, scope: !66)
!74 = !DILocation(line: 36, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !3, line: 35, column: 2)
!76 = !DILocation(line: 36, column: 11, scope: !75)
!77 = !DILocation(line: 36, column: 9, scope: !75)
!78 = !DILocation(line: 35, column: 2, scope: !66)
!79 = !DILocation(line: 37, column: 8, scope: !75)
!80 = !DILocation(line: 37, column: 3, scope: !75)
!81 = !DILocation(line: 36, column: 22, scope: !75)
!82 = !DILocation(line: 36, column: 19, scope: !75)
!83 = !DILocation(line: 35, column: 2, scope: !75)
!84 = distinct !{!84, !78, !85, !86, !87}
!85 = !DILocation(line: 37, column: 9, scope: !66)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 38, column: 1, scope: !36)
!89 = distinct !DISubprogram(name: "__copy_user_flushcache", scope: !3, file: !3, line: 46, type: !90, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !5, !93, !95}
!92 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(name: "dst", arg: 1, scope: !89, file: !3, line: 46, type: !5)
!98 = !DILocalVariable(name: "src", arg: 2, scope: !89, file: !3, line: 46, type: !93)
!99 = !DILocalVariable(name: "size", arg: 3, scope: !89, file: !3, line: 46, type: !95)
!100 = !DILocalVariable(name: "flushed", scope: !89, file: !3, line: 48, type: !6)
!101 = !DILocalVariable(name: "dest", scope: !89, file: !3, line: 48, type: !6)
!102 = !DILocalVariable(name: "rc", scope: !89, file: !3, line: 49, type: !92)
!103 = !DILocation(line: 46, column: 35, scope: !89)
!104 = !DILocation(line: 46, column: 59, scope: !89)
!105 = !DILocation(line: 46, column: 73, scope: !89)
!106 = !DILocation(line: 48, column: 2, scope: !89)
!107 = !DILocation(line: 48, column: 16, scope: !89)
!108 = !DILocation(line: 48, column: 25, scope: !89)
!109 = !DILocation(line: 48, column: 48, scope: !89)
!110 = !DILocation(line: 48, column: 32, scope: !89)
!111 = !DILocation(line: 49, column: 2, scope: !89)
!112 = !DILocation(line: 49, column: 7, scope: !89)
!113 = !DILocation(line: 51, column: 2, scope: !89)
!114 = !DILocation(line: 52, column: 27, scope: !89)
!115 = !DILocation(line: 52, column: 32, scope: !89)
!116 = !DILocation(line: 52, column: 37, scope: !89)
!117 = !DILocation(line: 52, column: 7, scope: !89)
!118 = !DILocation(line: 52, column: 5, scope: !89)
!119 = !DILocation(line: 53, column: 2, scope: !89)
!120 = !DILocation(line: 63, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !89, file: !3, line: 63, column: 6)
!122 = !DILocation(line: 63, column: 11, scope: !121)
!123 = !DILocation(line: 63, column: 6, scope: !89)
!124 = !DILocation(line: 64, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 64, column: 7)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 63, column: 16)
!127 = !DILocation(line: 64, column: 28, scope: !125)
!128 = !DILocation(line: 64, column: 31, scope: !125)
!129 = !DILocation(line: 64, column: 36, scope: !125)
!130 = !DILocation(line: 64, column: 7, scope: !126)
!131 = !DILocation(line: 65, column: 22, scope: !125)
!132 = !DILocation(line: 65, column: 27, scope: !125)
!133 = !DILocation(line: 65, column: 4, scope: !125)
!134 = !DILocation(line: 66, column: 2, scope: !126)
!135 = !DILocation(line: 67, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 67, column: 7)
!137 = distinct !DILexicalBlock(scope: !121, file: !3, line: 66, column: 9)
!138 = !DILocation(line: 67, column: 7, scope: !137)
!139 = !DILocation(line: 68, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !3, line: 67, column: 29)
!141 = !DILocation(line: 68, column: 9, scope: !140)
!142 = !DILocation(line: 69, column: 22, scope: !140)
!143 = !DILocation(line: 69, column: 4, scope: !140)
!144 = !DILocation(line: 70, column: 3, scope: !140)
!145 = !DILocation(line: 72, column: 13, scope: !137)
!146 = !DILocation(line: 72, column: 36, scope: !137)
!147 = !DILocation(line: 72, column: 20, scope: !137)
!148 = !DILocation(line: 72, column: 18, scope: !137)
!149 = !DILocation(line: 72, column: 11, scope: !137)
!150 = !DILocation(line: 73, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !137, file: !3, line: 73, column: 7)
!152 = !DILocation(line: 73, column: 14, scope: !151)
!153 = !DILocation(line: 73, column: 12, scope: !151)
!154 = !DILocation(line: 73, column: 22, scope: !151)
!155 = !DILocation(line: 73, column: 26, scope: !151)
!156 = !DILocation(line: 73, column: 7, scope: !137)
!157 = !DILocation(line: 74, column: 22, scope: !151)
!158 = !DILocation(line: 74, column: 28, scope: !151)
!159 = !DILocation(line: 74, column: 26, scope: !151)
!160 = !DILocation(line: 74, column: 33, scope: !151)
!161 = !DILocation(line: 74, column: 4, scope: !151)
!162 = !DILocation(line: 77, column: 9, scope: !89)
!163 = !DILocation(line: 78, column: 1, scope: !89)
!164 = !DILocation(line: 77, column: 2, scope: !89)
!165 = distinct !DISubprogram(name: "stac", scope: !166, file: !166, line: 36, type: !167, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!166 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!167 = !DISubroutineType(types: !168)
!168 = !{null}
!169 = !DILocation(line: 39, column: 2, scope: !165)
!170 = !{i64 2151066765, i64 2151066793, i64 2151066799, i64 2151066815, i64 2151066831, i64 2151066858, i64 2151067172, i64 2151066515, i64 2151067178, i64 2151067226, i64 2151067290, i64 2151067354, i64 2151067411, i64 2151066596, i64 2151066621, i64 2151067618, i64 2151067754, i64 2151067679, i64 2151067768, i64 2151066713}
!171 = !DILocation(line: 40, column: 1, scope: !165)
!172 = !DISubprogram(name: "__copy_user_nocache", scope: !173, file: !173, line: 136, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!174 = distinct !DISubprogram(name: "clac", scope: !166, file: !166, line: 30, type: !167, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!175 = !DILocation(line: 33, column: 2, scope: !174)
!176 = !{i64 2151065098, i64 2151065126, i64 2151065132, i64 2151065148, i64 2151065164, i64 2151065191, i64 2151065505, i64 2151064848, i64 2151065511, i64 2151065559, i64 2151065623, i64 2151065687, i64 2151065744, i64 2151064929, i64 2151064954, i64 2151065951, i64 2151066087, i64 2151066012, i64 2151066101, i64 2151065046}
!177 = !DILocation(line: 34, column: 1, scope: !174)
!178 = distinct !DISubprogram(name: "__memcpy_flushcache", scope: !3, file: !3, line: 80, type: !179, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !5, !93, !7}
!181 = !{!182, !183, !184, !185, !186, !187, !190, !192}
!182 = !DILocalVariable(name: "_dst", arg: 1, scope: !178, file: !3, line: 80, type: !5)
!183 = !DILocalVariable(name: "_src", arg: 2, scope: !178, file: !3, line: 80, type: !93)
!184 = !DILocalVariable(name: "size", arg: 3, scope: !178, file: !3, line: 80, type: !7)
!185 = !DILocalVariable(name: "dest", scope: !178, file: !3, line: 82, type: !6)
!186 = !DILocalVariable(name: "source", scope: !178, file: !3, line: 83, type: !6)
!187 = !DILocalVariable(name: "len", scope: !188, file: !3, line: 87, type: !7)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 86, column: 28)
!189 = distinct !DILexicalBlock(scope: !178, file: !3, line: 86, column: 6)
!190 = !DILocalVariable(name: "__UNIQUE_ID___x328", scope: !191, file: !3, line: 87, type: !7)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 87, column: 16)
!192 = !DILocalVariable(name: "__UNIQUE_ID___y329", scope: !191, file: !3, line: 87, type: !7)
!193 = !DILocation(line: 80, column: 32, scope: !178)
!194 = !DILocation(line: 80, column: 50, scope: !178)
!195 = !DILocation(line: 80, column: 63, scope: !178)
!196 = !DILocation(line: 82, column: 2, scope: !178)
!197 = !DILocation(line: 82, column: 16, scope: !178)
!198 = !DILocation(line: 82, column: 39, scope: !178)
!199 = !DILocation(line: 82, column: 23, scope: !178)
!200 = !DILocation(line: 83, column: 2, scope: !178)
!201 = !DILocation(line: 83, column: 16, scope: !178)
!202 = !DILocation(line: 83, column: 41, scope: !178)
!203 = !DILocation(line: 83, column: 25, scope: !178)
!204 = !DILocation(line: 86, column: 7, scope: !189)
!205 = !DILocation(line: 86, column: 6, scope: !178)
!206 = !DILocation(line: 87, column: 3, scope: !188)
!207 = !DILocation(line: 87, column: 10, scope: !188)
!208 = !DILocation(line: 87, column: 16, scope: !191)
!209 = !DILocation(line: 87, column: 16, scope: !188)
!210 = !DILocation(line: 89, column: 19, scope: !188)
!211 = !DILocation(line: 89, column: 10, scope: !188)
!212 = !DILocation(line: 89, column: 34, scope: !188)
!213 = !DILocation(line: 89, column: 25, scope: !188)
!214 = !DILocation(line: 89, column: 42, scope: !188)
!215 = !DILocation(line: 89, column: 3, scope: !188)
!216 = !DILocation(line: 90, column: 30, scope: !188)
!217 = !DILocation(line: 90, column: 21, scope: !188)
!218 = !DILocation(line: 90, column: 36, scope: !188)
!219 = !DILocation(line: 90, column: 3, scope: !188)
!220 = !DILocation(line: 91, column: 11, scope: !188)
!221 = !DILocation(line: 91, column: 8, scope: !188)
!222 = !DILocation(line: 92, column: 13, scope: !188)
!223 = !DILocation(line: 92, column: 10, scope: !188)
!224 = !DILocation(line: 93, column: 11, scope: !188)
!225 = !DILocation(line: 93, column: 8, scope: !188)
!226 = !DILocation(line: 94, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !188, file: !3, line: 94, column: 7)
!228 = !DILocation(line: 94, column: 7, scope: !188)
!229 = !DILocation(line: 95, column: 4, scope: !227)
!230 = !DILocation(line: 96, column: 2, scope: !189)
!231 = !DILocation(line: 96, column: 2, scope: !188)
!232 = !DILocation(line: 99, column: 2, scope: !178)
!233 = !DILocation(line: 99, column: 9, scope: !178)
!234 = !DILocation(line: 99, column: 14, scope: !178)
!235 = !DILocation(line: 108, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !178, file: !3, line: 99, column: 21)
!237 = !DILocation(line: 108, column: 29, scope: !236)
!238 = !DILocation(line: 100, column: 3, scope: !236)
!239 = !{i64 2585, i64 2615, i64 2644, i64 2674, i64 2704, i64 2735, i64 2766, i64 2797}
!240 = !DILocation(line: 110, column: 8, scope: !236)
!241 = !DILocation(line: 111, column: 10, scope: !236)
!242 = !DILocation(line: 112, column: 8, scope: !236)
!243 = distinct !{!243, !232, !244, !86, !87}
!244 = !DILocation(line: 113, column: 2, scope: !178)
!245 = !DILocation(line: 116, column: 2, scope: !178)
!246 = !DILocation(line: 116, column: 9, scope: !178)
!247 = !DILocation(line: 116, column: 14, scope: !178)
!248 = !DILocation(line: 119, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !178, file: !3, line: 116, column: 20)
!250 = !DILocation(line: 119, column: 29, scope: !249)
!251 = !DILocation(line: 117, column: 3, scope: !249)
!252 = !{i64 2998, i64 3028}
!253 = !DILocation(line: 121, column: 8, scope: !249)
!254 = !DILocation(line: 122, column: 10, scope: !249)
!255 = !DILocation(line: 123, column: 8, scope: !249)
!256 = distinct !{!256, !245, !257, !86, !87}
!257 = !DILocation(line: 124, column: 2, scope: !178)
!258 = !DILocation(line: 127, column: 2, scope: !178)
!259 = !DILocation(line: 127, column: 9, scope: !178)
!260 = !DILocation(line: 127, column: 14, scope: !178)
!261 = !DILocation(line: 130, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !178, file: !3, line: 127, column: 20)
!263 = !DILocation(line: 130, column: 29, scope: !262)
!264 = !DILocation(line: 128, column: 3, scope: !262)
!265 = !{i64 3206, i64 3237}
!266 = !DILocation(line: 132, column: 8, scope: !262)
!267 = !DILocation(line: 133, column: 10, scope: !262)
!268 = !DILocation(line: 134, column: 8, scope: !262)
!269 = distinct !{!269, !258, !270, !86, !87}
!270 = !DILocation(line: 135, column: 2, scope: !178)
!271 = !DILocation(line: 138, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !178, file: !3, line: 138, column: 6)
!273 = !DILocation(line: 138, column: 6, scope: !178)
!274 = !DILocation(line: 139, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 138, column: 12)
!276 = !DILocation(line: 139, column: 10, scope: !275)
!277 = !DILocation(line: 139, column: 34, scope: !275)
!278 = !DILocation(line: 139, column: 25, scope: !275)
!279 = !DILocation(line: 139, column: 42, scope: !275)
!280 = !DILocation(line: 139, column: 3, scope: !275)
!281 = !DILocation(line: 140, column: 30, scope: !275)
!282 = !DILocation(line: 140, column: 21, scope: !275)
!283 = !DILocation(line: 140, column: 36, scope: !275)
!284 = !DILocation(line: 140, column: 3, scope: !275)
!285 = !DILocation(line: 141, column: 2, scope: !275)
!286 = !DILocation(line: 142, column: 1, scope: !178)
!287 = distinct !DISubprogram(name: "clwb", scope: !288, file: !288, line: 191, type: !289, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!288 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "__p", arg: 1, scope: !287, file: !288, line: 191, type: !291)
!295 = !DILocalVariable(name: "p", scope: !287, file: !288, line: 193, type: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !288, line: 193, size: 512, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !298, file: !288, line: 193, baseType: !301, size: 512)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 512, elements: !303)
!302 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!303 = !{!304}
!304 = !DISubrange(count: 64)
!305 = !DILocation(line: 191, column: 40, scope: !287)
!306 = !DILocation(line: 193, column: 2, scope: !287)
!307 = !DILocation(line: 193, column: 35, scope: !287)
!308 = !DILocation(line: 193, column: 39, scope: !287)
!309 = !DILocation(line: 201, column: 16, scope: !287)
!310 = !DILocation(line: 202, column: 16, scope: !287)
!311 = !DILocation(line: 195, column: 2, scope: !287)
!312 = !{i64 2149525042, i64 2149525075, i64 2149525081, i64 2149525097, i64 2149525116, i64 2149525147, i64 2149526122, i64 2149524613, i64 2149526128, i64 2149526176, i64 2149526240, i64 2149526304, i64 2149526361, i64 2149526568, i64 2149526616, i64 2149526680, i64 2149526744, i64 2149526801, i64 2149524731, i64 2149524756, i64 2149527008, i64 2149527152, i64 2149527069, i64 2149527166, i64 2149527180, i64 2149527324, i64 2149527241, i64 2149527338, i64 2149524890}
!313 = !DILocation(line: 203, column: 1, scope: !287)
