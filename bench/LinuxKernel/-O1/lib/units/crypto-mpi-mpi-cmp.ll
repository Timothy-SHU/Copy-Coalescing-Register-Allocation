; ModuleID = 'lib/crypto/mpi/mpi-cmp.c'
source_filename = "lib/crypto/mpi/mpi-cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_cmp_ui: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_cmp_ui ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_cmp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_cmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_cmpabs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_cmpabs ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_cmp_ui287 = internal global ptr @mpi_cmp_ui, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mpi_cmp288 = internal global ptr @mpi_cmp, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_mpi_cmpabs289 = internal global ptr @mpi_cmpabs, section ".discard.addressable", align 8, !dbg !9
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_cmp_ui287, ptr @__UNIQUE_ID___addressable_mpi_cmp288, ptr @__UNIQUE_ID___addressable_mpi_cmpabs289], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_cmp_ui(ptr noundef %u, i64 noundef %v) #0 align 16 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %limb = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !40, metadata !DIExpression()), !dbg !43
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %limb) #4, !dbg !45
  call void @llvm.dbg.declare(metadata ptr %limb, metadata !42, metadata !DIExpression()), !dbg !46
  %0 = load i64, ptr %v.addr, align 8, !dbg !47
  store i64 %0, ptr %limb, align 8, !dbg !46
  %1 = load ptr, ptr %u.addr, align 8, !dbg !48
  call void @mpi_normalize(ptr noundef %1) #5, !dbg !49
  %2 = load ptr, ptr %u.addr, align 8, !dbg !50
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !52
  %3 = load i32, ptr %nlimbs, align 4, !dbg !52
  %cmp = icmp eq i32 %3, 0, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %v.addr, align 8, !dbg !55
  %cmp1 = icmp eq i64 %4, 0, !dbg !58
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !59

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !60
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !60

if.else:                                          ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !61
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !61

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %u.addr, align 8, !dbg !62
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 3, !dbg !64
  %6 = load i32, ptr %sign, align 4, !dbg !64
  %tobool = icmp ne i32 %6, 0, !dbg !62
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !65

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !66

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %u.addr, align 8, !dbg !67
  %nlimbs5 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1, !dbg !69
  %8 = load i32, ptr %nlimbs5, align 4, !dbg !69
  %cmp6 = icmp sgt i32 %8, 1, !dbg !70
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !71

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4, !dbg !72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !72

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %u.addr, align 8, !dbg !73
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 5, !dbg !75
  %10 = load ptr, ptr %d, align 8, !dbg !75
  %arrayidx = getelementptr i64, ptr %10, i64 0, !dbg !73
  %11 = load i64, ptr %arrayidx, align 8, !dbg !73
  %12 = load i64, ptr %limb, align 8, !dbg !76
  %cmp9 = icmp eq i64 %11, %12, !dbg !77
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !78

if.then10:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !79
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !79

if.else11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %u.addr, align 8, !dbg !80
  %d12 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 5, !dbg !82
  %14 = load ptr, ptr %d12, align 8, !dbg !82
  %arrayidx13 = getelementptr i64, ptr %14, i64 0, !dbg !80
  %15 = load i64, ptr %arrayidx13, align 8, !dbg !80
  %16 = load i64, ptr %limb, align 8, !dbg !83
  %cmp14 = icmp ugt i64 %15, %16, !dbg !84
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !85

if.then15:                                        ; preds = %if.else11
  store i32 1, ptr %retval, align 4, !dbg !86
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !86

if.else16:                                        ; preds = %if.else11
  store i32 -1, ptr %retval, align 4, !dbg !87
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

cleanup:                                          ; preds = %if.else16, %if.then15, %if.then10, %if.then7, %if.then3, %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %limb) #4, !dbg !88
  %17 = load i32, ptr %retval, align 4, !dbg !88
  ret i32 %17, !dbg !88
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !89 dso_local void @mpi_normalize(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_cmp(ptr noundef %u, ptr noundef %v) #0 align 16 !dbg !92 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !96, metadata !DIExpression()), !dbg !98
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !97, metadata !DIExpression()), !dbg !99
  %0 = load ptr, ptr %u.addr, align 8, !dbg !100
  %1 = load ptr, ptr %v.addr, align 8, !dbg !101
  %call = call i32 @do_mpi_cmp(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5, !dbg !102
  ret i32 %call, !dbg !103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_mpi_cmp(ptr noundef %u, ptr noundef %v, i32 noundef %absmode) #0 align 16 !dbg !104 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %absmode.addr = alloca i32, align 4
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %usign = alloca i32, align 4
  %vsign = alloca i32, align 4
  %cmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !108, metadata !DIExpression()), !dbg !118
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !109, metadata !DIExpression()), !dbg !119
  store i32 %absmode, ptr %absmode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %absmode.addr, metadata !110, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.start.p0(i64 4, ptr %usize) #4, !dbg !121
  call void @llvm.dbg.declare(metadata ptr %usize, metadata !111, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsize) #4, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %vsize, metadata !114, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %usign) #4, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %usign, metadata !115, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsign) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %vsign, metadata !116, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #4, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !117, metadata !DIExpression()), !dbg !130
  %0 = load ptr, ptr %u.addr, align 8, !dbg !131
  call void @mpi_normalize(ptr noundef %0) #5, !dbg !132
  %1 = load ptr, ptr %v.addr, align 8, !dbg !133
  call void @mpi_normalize(ptr noundef %1) #5, !dbg !134
  %2 = load ptr, ptr %u.addr, align 8, !dbg !135
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !136
  %3 = load i32, ptr %nlimbs, align 4, !dbg !136
  store i32 %3, ptr %usize, align 4, !dbg !137
  %4 = load ptr, ptr %v.addr, align 8, !dbg !138
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1, !dbg !139
  %5 = load i32, ptr %nlimbs1, align 4, !dbg !139
  store i32 %5, ptr %vsize, align 4, !dbg !140
  %6 = load i32, ptr %absmode.addr, align 4, !dbg !141
  %tobool = icmp ne i32 %6, 0, !dbg !141
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !141

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !141

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %u.addr, align 8, !dbg !142
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 3, !dbg !143
  %8 = load i32, ptr %sign, align 4, !dbg !143
  br label %cond.end, !dbg !141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %8, %cond.false ], !dbg !141
  store i32 %cond, ptr %usign, align 4, !dbg !144
  %9 = load i32, ptr %absmode.addr, align 4, !dbg !145
  %tobool2 = icmp ne i32 %9, 0, !dbg !145
  br i1 %tobool2, label %cond.true3, label %cond.false4, !dbg !145

cond.true3:                                       ; preds = %cond.end
  br label %cond.end6, !dbg !145

cond.false4:                                      ; preds = %cond.end
  %10 = load ptr, ptr %v.addr, align 8, !dbg !146
  %sign5 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 3, !dbg !147
  %11 = load i32, ptr %sign5, align 4, !dbg !147
  br label %cond.end6, !dbg !145

cond.end6:                                        ; preds = %cond.false4, %cond.true3
  %cond7 = phi i32 [ 0, %cond.true3 ], [ %11, %cond.false4 ], !dbg !145
  store i32 %cond7, ptr %vsign, align 4, !dbg !148
  %12 = load i32, ptr %usign, align 4, !dbg !149
  %tobool8 = icmp ne i32 %12, 0, !dbg !149
  br i1 %tobool8, label %if.end, label %land.lhs.true, !dbg !151

land.lhs.true:                                    ; preds = %cond.end6
  %13 = load i32, ptr %vsign, align 4, !dbg !152
  %tobool9 = icmp ne i32 %13, 0, !dbg !152
  br i1 %tobool9, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !154

if.end:                                           ; preds = %land.lhs.true, %cond.end6
  %14 = load i32, ptr %usign, align 4, !dbg !155
  %tobool10 = icmp ne i32 %14, 0, !dbg !155
  br i1 %tobool10, label %land.lhs.true11, label %if.end14, !dbg !157

land.lhs.true11:                                  ; preds = %if.end
  %15 = load i32, ptr %vsign, align 4, !dbg !158
  %tobool12 = icmp ne i32 %15, 0, !dbg !158
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !159

if.then13:                                        ; preds = %land.lhs.true11
  store i32 -1, ptr %retval, align 4, !dbg !160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !160

if.end14:                                         ; preds = %land.lhs.true11, %if.end
  %16 = load i32, ptr %usize, align 4, !dbg !161
  %17 = load i32, ptr %vsize, align 4, !dbg !163
  %cmp15 = icmp ne i32 %16, %17, !dbg !164
  br i1 %cmp15, label %land.lhs.true16, label %if.end21, !dbg !165

land.lhs.true16:                                  ; preds = %if.end14
  %18 = load i32, ptr %usign, align 4, !dbg !166
  %tobool17 = icmp ne i32 %18, 0, !dbg !166
  br i1 %tobool17, label %if.end21, label %land.lhs.true18, !dbg !167

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %19 = load i32, ptr %vsign, align 4, !dbg !168
  %tobool19 = icmp ne i32 %19, 0, !dbg !168
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !169

if.then20:                                        ; preds = %land.lhs.true18
  %20 = load i32, ptr %usize, align 4, !dbg !170
  %21 = load i32, ptr %vsize, align 4, !dbg !171
  %sub = sub i32 %20, %21, !dbg !172
  store i32 %sub, ptr %retval, align 4, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

if.end21:                                         ; preds = %land.lhs.true18, %land.lhs.true16, %if.end14
  %22 = load i32, ptr %usize, align 4, !dbg !174
  %23 = load i32, ptr %vsize, align 4, !dbg !176
  %cmp22 = icmp ne i32 %22, %23, !dbg !177
  br i1 %cmp22, label %land.lhs.true23, label %if.end28, !dbg !178

land.lhs.true23:                                  ; preds = %if.end21
  %24 = load i32, ptr %usign, align 4, !dbg !179
  %tobool24 = icmp ne i32 %24, 0, !dbg !179
  br i1 %tobool24, label %land.lhs.true25, label %if.end28, !dbg !180

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %25 = load i32, ptr %vsign, align 4, !dbg !181
  %tobool26 = icmp ne i32 %25, 0, !dbg !181
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !182

if.then27:                                        ; preds = %land.lhs.true25
  %26 = load i32, ptr %vsize, align 4, !dbg !183
  %27 = load i32, ptr %usize, align 4, !dbg !184
  %add = add i32 %26, %27, !dbg !185
  store i32 %add, ptr %retval, align 4, !dbg !186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !186

if.end28:                                         ; preds = %land.lhs.true25, %land.lhs.true23, %if.end21
  %28 = load i32, ptr %usize, align 4, !dbg !187
  %tobool29 = icmp ne i32 %28, 0, !dbg !187
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !189

if.then30:                                        ; preds = %if.end28
  store i32 0, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

if.end31:                                         ; preds = %if.end28
  %29 = load ptr, ptr %u.addr, align 8, !dbg !191
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 5, !dbg !192
  %30 = load ptr, ptr %d, align 8, !dbg !192
  %31 = load ptr, ptr %v.addr, align 8, !dbg !193
  %d32 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 5, !dbg !194
  %32 = load ptr, ptr %d32, align 8, !dbg !194
  %33 = load i32, ptr %usize, align 4, !dbg !195
  %call = call i32 @mpihelp_cmp(ptr noundef %30, ptr noundef %32, i32 noundef %33) #5, !dbg !196
  store i32 %call, ptr %cmp, align 4, !dbg !197
  %34 = load i32, ptr %cmp, align 4, !dbg !198
  %tobool33 = icmp ne i32 %34, 0, !dbg !198
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !200

if.then34:                                        ; preds = %if.end31
  store i32 0, ptr %retval, align 4, !dbg !201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !201

if.end35:                                         ; preds = %if.end31
  %35 = load i32, ptr %cmp, align 4, !dbg !202
  %cmp36 = icmp slt i32 %35, 0, !dbg !204
  %36 = zext i1 %cmp36 to i64, !dbg !202
  %cond37 = select i1 %cmp36, i32 1, i32 0, !dbg !202
  %37 = load i32, ptr %usign, align 4, !dbg !205
  %tobool38 = icmp ne i32 %37, 0, !dbg !205
  %38 = zext i1 %tobool38 to i64, !dbg !205
  %cond39 = select i1 %tobool38, i32 1, i32 0, !dbg !205
  %cmp40 = icmp eq i32 %cond37, %cond39, !dbg !206
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !207

if.then41:                                        ; preds = %if.end35
  store i32 1, ptr %retval, align 4, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !208

if.end42:                                         ; preds = %if.end35
  store i32 -1, ptr %retval, align 4, !dbg !209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !209

cleanup:                                          ; preds = %if.end42, %if.then41, %if.then34, %if.then30, %if.then27, %if.then20, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsign) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %usign) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsize) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %usize) #4, !dbg !210
  %39 = load i32, ptr %retval, align 4, !dbg !210
  ret i32 %39, !dbg !210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_cmpabs(ptr noundef %u, ptr noundef %v) #0 align 16 !dbg !211 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !213, metadata !DIExpression()), !dbg !215
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !214, metadata !DIExpression()), !dbg !216
  %0 = load ptr, ptr %u.addr, align 8, !dbg !217
  %1 = load ptr, ptr %v.addr, align 8, !dbg !218
  %call = call i32 @do_mpi_cmp(ptr noundef %0, ptr noundef %1, i32 noundef 1) #5, !dbg !219
  ret i32 %call, !dbg !220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !221 dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_cmp_ui287", scope: !2, file: !3, line: 46, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-cmp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_cmp\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-cmp.ll lib/crypto/mpi/mpi-cmp.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-cmp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5eed285082942235cf8d0d65132a58ee")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_cmp288", scope: !2, file: !3, line: 92, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_cmpabs289", scope: !2, file: !3, line: 98, type: !5, isLocal: true, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 8, !"cf-protection-branch", i32 1}
!15 = !{i32 4, !"function_return_thunk_extern", i32 1}
!16 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!17 = !{i32 1, !"Code Model", i32 2}
!18 = !{i32 1, !"override-stack-alignment", i32 8}
!19 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!20 = distinct !DISubprogram(name: "mpi_cmp_ui", scope: !3, file: !3, line: 23, type: !21, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !24, !38}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !25, line: 40, baseType: !26)
!25 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !25, line: 29, size: 256, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !27, file: !25, line: 30, baseType: !23, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !27, file: !25, line: 31, baseType: !23, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !27, file: !25, line: 32, baseType: !23, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !27, file: !25, line: 33, baseType: !23, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !25, line: 34, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !27, file: !25, line: 37, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !25, line: 26, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "u", arg: 1, scope: !20, file: !3, line: 23, type: !24)
!41 = !DILocalVariable(name: "v", arg: 2, scope: !20, file: !3, line: 23, type: !38)
!42 = !DILocalVariable(name: "limb", scope: !20, file: !3, line: 25, type: !37)
!43 = !DILocation(line: 23, column: 20, scope: !20)
!44 = !DILocation(line: 23, column: 37, scope: !20)
!45 = !DILocation(line: 25, column: 2, scope: !20)
!46 = !DILocation(line: 25, column: 13, scope: !20)
!47 = !DILocation(line: 25, column: 20, scope: !20)
!48 = !DILocation(line: 27, column: 16, scope: !20)
!49 = !DILocation(line: 27, column: 2, scope: !20)
!50 = !DILocation(line: 28, column: 6, scope: !51)
!51 = distinct !DILexicalBlock(scope: !20, file: !3, line: 28, column: 6)
!52 = !DILocation(line: 28, column: 9, scope: !51)
!53 = !DILocation(line: 28, column: 16, scope: !51)
!54 = !DILocation(line: 28, column: 6, scope: !20)
!55 = !DILocation(line: 29, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 29, column: 7)
!57 = distinct !DILexicalBlock(scope: !51, file: !3, line: 28, column: 22)
!58 = !DILocation(line: 29, column: 9, scope: !56)
!59 = !DILocation(line: 29, column: 7, scope: !57)
!60 = !DILocation(line: 30, column: 4, scope: !56)
!61 = !DILocation(line: 32, column: 4, scope: !56)
!62 = !DILocation(line: 34, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !20, file: !3, line: 34, column: 6)
!64 = !DILocation(line: 34, column: 9, scope: !63)
!65 = !DILocation(line: 34, column: 6, scope: !20)
!66 = !DILocation(line: 35, column: 3, scope: !63)
!67 = !DILocation(line: 36, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !20, file: !3, line: 36, column: 6)
!69 = !DILocation(line: 36, column: 9, scope: !68)
!70 = !DILocation(line: 36, column: 16, scope: !68)
!71 = !DILocation(line: 36, column: 6, scope: !20)
!72 = !DILocation(line: 37, column: 3, scope: !68)
!73 = !DILocation(line: 39, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !20, file: !3, line: 39, column: 6)
!75 = !DILocation(line: 39, column: 9, scope: !74)
!76 = !DILocation(line: 39, column: 17, scope: !74)
!77 = !DILocation(line: 39, column: 14, scope: !74)
!78 = !DILocation(line: 39, column: 6, scope: !20)
!79 = !DILocation(line: 40, column: 3, scope: !74)
!80 = !DILocation(line: 41, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !3, line: 41, column: 11)
!82 = !DILocation(line: 41, column: 14, scope: !81)
!83 = !DILocation(line: 41, column: 21, scope: !81)
!84 = !DILocation(line: 41, column: 19, scope: !81)
!85 = !DILocation(line: 41, column: 11, scope: !74)
!86 = !DILocation(line: 42, column: 3, scope: !81)
!87 = !DILocation(line: 44, column: 3, scope: !81)
!88 = !DILocation(line: 45, column: 1, scope: !20)
!89 = !DISubprogram(name: "mpi_normalize", scope: !25, file: !25, line: 129, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !24}
!92 = distinct !DISubprogram(name: "mpi_cmp", scope: !3, file: !3, line: 88, type: !93, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!23, !24, !24}
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "u", arg: 1, scope: !92, file: !3, line: 88, type: !24)
!97 = !DILocalVariable(name: "v", arg: 2, scope: !92, file: !3, line: 88, type: !24)
!98 = !DILocation(line: 88, column: 17, scope: !92)
!99 = !DILocation(line: 88, column: 24, scope: !92)
!100 = !DILocation(line: 90, column: 20, scope: !92)
!101 = !DILocation(line: 90, column: 23, scope: !92)
!102 = !DILocation(line: 90, column: 9, scope: !92)
!103 = !DILocation(line: 90, column: 2, scope: !92)
!104 = distinct !DISubprogram(name: "do_mpi_cmp", scope: !3, file: !3, line: 48, type: !105, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!23, !24, !24, !23}
!107 = !{!108, !109, !110, !111, !114, !115, !116, !117}
!108 = !DILocalVariable(name: "u", arg: 1, scope: !104, file: !3, line: 48, type: !24)
!109 = !DILocalVariable(name: "v", arg: 2, scope: !104, file: !3, line: 48, type: !24)
!110 = !DILocalVariable(name: "absmode", arg: 3, scope: !104, file: !3, line: 48, type: !23)
!111 = !DILocalVariable(name: "usize", scope: !104, file: !3, line: 50, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !113, line: 53, baseType: !23)
!113 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!114 = !DILocalVariable(name: "vsize", scope: !104, file: !3, line: 51, type: !112)
!115 = !DILocalVariable(name: "usign", scope: !104, file: !3, line: 52, type: !23)
!116 = !DILocalVariable(name: "vsign", scope: !104, file: !3, line: 53, type: !23)
!117 = !DILocalVariable(name: "cmp", scope: !104, file: !3, line: 54, type: !23)
!118 = !DILocation(line: 48, column: 27, scope: !104)
!119 = !DILocation(line: 48, column: 34, scope: !104)
!120 = !DILocation(line: 48, column: 41, scope: !104)
!121 = !DILocation(line: 50, column: 2, scope: !104)
!122 = !DILocation(line: 50, column: 13, scope: !104)
!123 = !DILocation(line: 51, column: 2, scope: !104)
!124 = !DILocation(line: 51, column: 13, scope: !104)
!125 = !DILocation(line: 52, column: 2, scope: !104)
!126 = !DILocation(line: 52, column: 6, scope: !104)
!127 = !DILocation(line: 53, column: 2, scope: !104)
!128 = !DILocation(line: 53, column: 6, scope: !104)
!129 = !DILocation(line: 54, column: 2, scope: !104)
!130 = !DILocation(line: 54, column: 6, scope: !104)
!131 = !DILocation(line: 56, column: 16, scope: !104)
!132 = !DILocation(line: 56, column: 2, scope: !104)
!133 = !DILocation(line: 57, column: 16, scope: !104)
!134 = !DILocation(line: 57, column: 2, scope: !104)
!135 = !DILocation(line: 59, column: 10, scope: !104)
!136 = !DILocation(line: 59, column: 13, scope: !104)
!137 = !DILocation(line: 59, column: 8, scope: !104)
!138 = !DILocation(line: 60, column: 10, scope: !104)
!139 = !DILocation(line: 60, column: 13, scope: !104)
!140 = !DILocation(line: 60, column: 8, scope: !104)
!141 = !DILocation(line: 61, column: 10, scope: !104)
!142 = !DILocation(line: 61, column: 24, scope: !104)
!143 = !DILocation(line: 61, column: 27, scope: !104)
!144 = !DILocation(line: 61, column: 8, scope: !104)
!145 = !DILocation(line: 62, column: 10, scope: !104)
!146 = !DILocation(line: 62, column: 24, scope: !104)
!147 = !DILocation(line: 62, column: 27, scope: !104)
!148 = !DILocation(line: 62, column: 8, scope: !104)
!149 = !DILocation(line: 66, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !104, file: !3, line: 66, column: 6)
!151 = !DILocation(line: 66, column: 13, scope: !150)
!152 = !DILocation(line: 66, column: 16, scope: !150)
!153 = !DILocation(line: 66, column: 6, scope: !104)
!154 = !DILocation(line: 67, column: 3, scope: !150)
!155 = !DILocation(line: 68, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !104, file: !3, line: 68, column: 6)
!157 = !DILocation(line: 68, column: 12, scope: !156)
!158 = !DILocation(line: 68, column: 16, scope: !156)
!159 = !DILocation(line: 68, column: 6, scope: !104)
!160 = !DILocation(line: 69, column: 3, scope: !156)
!161 = !DILocation(line: 73, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !104, file: !3, line: 73, column: 6)
!163 = !DILocation(line: 73, column: 15, scope: !162)
!164 = !DILocation(line: 73, column: 12, scope: !162)
!165 = !DILocation(line: 73, column: 21, scope: !162)
!166 = !DILocation(line: 73, column: 25, scope: !162)
!167 = !DILocation(line: 73, column: 31, scope: !162)
!168 = !DILocation(line: 73, column: 35, scope: !162)
!169 = !DILocation(line: 73, column: 6, scope: !104)
!170 = !DILocation(line: 74, column: 10, scope: !162)
!171 = !DILocation(line: 74, column: 18, scope: !162)
!172 = !DILocation(line: 74, column: 16, scope: !162)
!173 = !DILocation(line: 74, column: 3, scope: !162)
!174 = !DILocation(line: 75, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !104, file: !3, line: 75, column: 6)
!176 = !DILocation(line: 75, column: 15, scope: !175)
!177 = !DILocation(line: 75, column: 12, scope: !175)
!178 = !DILocation(line: 75, column: 21, scope: !175)
!179 = !DILocation(line: 75, column: 24, scope: !175)
!180 = !DILocation(line: 75, column: 30, scope: !175)
!181 = !DILocation(line: 75, column: 33, scope: !175)
!182 = !DILocation(line: 75, column: 6, scope: !104)
!183 = !DILocation(line: 76, column: 10, scope: !175)
!184 = !DILocation(line: 76, column: 18, scope: !175)
!185 = !DILocation(line: 76, column: 16, scope: !175)
!186 = !DILocation(line: 76, column: 3, scope: !175)
!187 = !DILocation(line: 77, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !104, file: !3, line: 77, column: 6)
!189 = !DILocation(line: 77, column: 6, scope: !104)
!190 = !DILocation(line: 78, column: 3, scope: !188)
!191 = !DILocation(line: 79, column: 20, scope: !104)
!192 = !DILocation(line: 79, column: 23, scope: !104)
!193 = !DILocation(line: 79, column: 26, scope: !104)
!194 = !DILocation(line: 79, column: 29, scope: !104)
!195 = !DILocation(line: 79, column: 32, scope: !104)
!196 = !DILocation(line: 79, column: 8, scope: !104)
!197 = !DILocation(line: 79, column: 6, scope: !104)
!198 = !DILocation(line: 80, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !104, file: !3, line: 80, column: 6)
!200 = !DILocation(line: 80, column: 6, scope: !104)
!201 = !DILocation(line: 81, column: 3, scope: !199)
!202 = !DILocation(line: 82, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !104, file: !3, line: 82, column: 6)
!204 = !DILocation(line: 82, column: 11, scope: !203)
!205 = !DILocation(line: 82, column: 24, scope: !203)
!206 = !DILocation(line: 82, column: 20, scope: !203)
!207 = !DILocation(line: 82, column: 6, scope: !104)
!208 = !DILocation(line: 83, column: 3, scope: !203)
!209 = !DILocation(line: 85, column: 2, scope: !104)
!210 = !DILocation(line: 86, column: 1, scope: !104)
!211 = distinct !DISubprogram(name: "mpi_cmpabs", scope: !3, file: !3, line: 94, type: !93, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "u", arg: 1, scope: !211, file: !3, line: 94, type: !24)
!214 = !DILocalVariable(name: "v", arg: 2, scope: !211, file: !3, line: 94, type: !24)
!215 = !DILocation(line: 94, column: 20, scope: !211)
!216 = !DILocation(line: 94, column: 27, scope: !211)
!217 = !DILocation(line: 96, column: 20, scope: !211)
!218 = !DILocation(line: 96, column: 23, scope: !211)
!219 = !DILocation(line: 96, column: 9, scope: !211)
!220 = !DILocation(line: 96, column: 2, scope: !211)
!221 = !DISubprogram(name: "mpihelp_cmp", scope: !113, file: !113, line: 161, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!23, !224, !224, !112}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !113, line: 52, baseType: !36)
