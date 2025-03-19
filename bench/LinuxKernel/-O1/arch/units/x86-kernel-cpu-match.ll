; ModuleID = 'arch/x86/kernel/cpu/match.c'
source_filename = "arch/x86/kernel/cpu/match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_match_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_match_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_cpu_has_min_microcode_rev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_cpu_has_min_microcode_rev ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.x86_cpu_desc = type { i8, i8, i8, i8, i32 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__UNIQUE_ID___addressable_x86_match_cpu205 = internal global ptr @x86_match_cpu, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_x86_cpu_has_min_microcode_rev206 = internal global ptr @x86_cpu_has_min_microcode_rev, section ".discard.addressable", align 8, !dbg !16
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_x86_match_cpu205, ptr @__UNIQUE_ID___addressable_x86_cpu_has_min_microcode_rev206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @x86_match_cpu(ptr noundef %match) #0 align 16 !dbg !27 {
entry:
  %retval = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !47, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %m, metadata !48, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %c, metadata !49, metadata !DIExpression()), !dbg !135
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !135
  %0 = load ptr, ptr %match.addr, align 8, !dbg !136
  store ptr %0, ptr %m, align 8, !dbg !138
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %m, align 8, !dbg !140
  %flags = getelementptr inbounds %struct.x86_cpu_id, ptr %1, i32 0, i32 5, !dbg !142
  %2 = load i16, ptr %flags, align 2, !dbg !142
  %conv = zext i16 %2 to i64, !dbg !140
  %and = and i64 %conv, 1, !dbg !143
  %tobool = icmp ne i64 %and, 0, !dbg !144
  br i1 %tobool, label %for.body, label %for.end, !dbg !144

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %m, align 8, !dbg !145
  %vendor = getelementptr inbounds %struct.x86_cpu_id, ptr %3, i32 0, i32 0, !dbg !148
  %4 = load i16, ptr %vendor, align 8, !dbg !148
  %conv1 = zext i16 %4 to i32, !dbg !145
  %cmp = icmp ne i32 %conv1, 65535, !dbg !149
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !150

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %c, align 8, !dbg !151
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 0, !dbg !152
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !152
  %7 = load i8, ptr %x86_vendor, align 2, !dbg !152
  %conv3 = zext i8 %7 to i32, !dbg !151
  %8 = load ptr, ptr %m, align 8, !dbg !153
  %vendor4 = getelementptr inbounds %struct.x86_cpu_id, ptr %8, i32 0, i32 0, !dbg !154
  %9 = load i16, ptr %vendor4, align 8, !dbg !154
  %conv5 = zext i16 %9 to i32, !dbg !153
  %cmp6 = icmp ne i32 %conv3, %conv5, !dbg !155
  br i1 %cmp6, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !157

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load ptr, ptr %m, align 8, !dbg !158
  %family = getelementptr inbounds %struct.x86_cpu_id, ptr %10, i32 0, i32 1, !dbg !160
  %11 = load i16, ptr %family, align 2, !dbg !160
  %conv8 = zext i16 %11 to i32, !dbg !158
  %cmp9 = icmp ne i32 %conv8, 0, !dbg !161
  br i1 %cmp9, label %land.lhs.true11, label %if.end18, !dbg !162

land.lhs.true11:                                  ; preds = %if.end
  %12 = load ptr, ptr %c, align 8, !dbg !163
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !164
  %x86 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, !dbg !164
  %14 = load i8, ptr %x86, align 1, !dbg !164
  %conv12 = zext i8 %14 to i32, !dbg !163
  %15 = load ptr, ptr %m, align 8, !dbg !165
  %family13 = getelementptr inbounds %struct.x86_cpu_id, ptr %15, i32 0, i32 1, !dbg !166
  %16 = load i16, ptr %family13, align 2, !dbg !166
  %conv14 = zext i16 %16 to i32, !dbg !165
  %cmp15 = icmp ne i32 %conv12, %conv14, !dbg !167
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !168

if.then17:                                        ; preds = %land.lhs.true11
  br label %for.inc, !dbg !169

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  %17 = load ptr, ptr %m, align 8, !dbg !170
  %model = getelementptr inbounds %struct.x86_cpu_id, ptr %17, i32 0, i32 2, !dbg !172
  %18 = load i16, ptr %model, align 4, !dbg !172
  %conv19 = zext i16 %18 to i32, !dbg !170
  %cmp20 = icmp ne i32 %conv19, 0, !dbg !173
  br i1 %cmp20, label %land.lhs.true22, label %if.end29, !dbg !174

land.lhs.true22:                                  ; preds = %if.end18
  %19 = load ptr, ptr %c, align 8, !dbg !175
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 0, !dbg !176
  %x86_model = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 0, !dbg !176
  %21 = load i8, ptr %x86_model, align 8, !dbg !176
  %conv23 = zext i8 %21 to i32, !dbg !175
  %22 = load ptr, ptr %m, align 8, !dbg !177
  %model24 = getelementptr inbounds %struct.x86_cpu_id, ptr %22, i32 0, i32 2, !dbg !178
  %23 = load i16, ptr %model24, align 4, !dbg !178
  %conv25 = zext i16 %23 to i32, !dbg !177
  %cmp26 = icmp ne i32 %conv23, %conv25, !dbg !179
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !180

if.then28:                                        ; preds = %land.lhs.true22
  br label %for.inc, !dbg !181

if.end29:                                         ; preds = %land.lhs.true22, %if.end18
  %24 = load ptr, ptr %m, align 8, !dbg !182
  %steppings = getelementptr inbounds %struct.x86_cpu_id, ptr %24, i32 0, i32 3, !dbg !184
  %25 = load i16, ptr %steppings, align 2, !dbg !184
  %conv30 = zext i16 %25 to i32, !dbg !182
  %cmp31 = icmp ne i32 %conv30, 0, !dbg !185
  br i1 %cmp31, label %land.lhs.true33, label %if.end40, !dbg !186

land.lhs.true33:                                  ; preds = %if.end29
  %26 = load ptr, ptr %c, align 8, !dbg !187
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %26, i32 0, i32 1, !dbg !187
  %27 = load i8, ptr %x86_stepping, align 4, !dbg !187
  %conv34 = zext i8 %27 to i32, !dbg !187
  %sh_prom = zext i32 %conv34 to i64, !dbg !187
  %shl = shl i64 1, %sh_prom, !dbg !187
  %28 = load ptr, ptr %m, align 8, !dbg !188
  %steppings35 = getelementptr inbounds %struct.x86_cpu_id, ptr %28, i32 0, i32 3, !dbg !189
  %29 = load i16, ptr %steppings35, align 2, !dbg !189
  %conv36 = zext i16 %29 to i64, !dbg !188
  %and37 = and i64 %shl, %conv36, !dbg !190
  %tobool38 = icmp ne i64 %and37, 0, !dbg !190
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !191

if.then39:                                        ; preds = %land.lhs.true33
  br label %for.inc, !dbg !192

if.end40:                                         ; preds = %land.lhs.true33, %if.end29
  %30 = load ptr, ptr %m, align 8, !dbg !193
  %feature = getelementptr inbounds %struct.x86_cpu_id, ptr %30, i32 0, i32 4, !dbg !195
  %31 = load i16, ptr %feature, align 8, !dbg !195
  %conv41 = zext i16 %31 to i32, !dbg !193
  %cmp42 = icmp ne i32 %conv41, 0, !dbg !196
  br i1 %cmp42, label %land.lhs.true44, label %if.end356, !dbg !197

land.lhs.true44:                                  ; preds = %if.end40
  %32 = load ptr, ptr %m, align 8, !dbg !198
  %feature45 = getelementptr inbounds %struct.x86_cpu_id, ptr %32, i32 0, i32 4, !dbg !198
  %33 = load i16, ptr %feature45, align 8, !dbg !198
  %34 = call i1 @llvm.is.constant.i16(i16 %33), !dbg !198
  br i1 %34, label %land.lhs.true46, label %cond.false, !dbg !198

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %35 = load ptr, ptr %m, align 8, !dbg !198
  %feature47 = getelementptr inbounds %struct.x86_cpu_id, ptr %35, i32 0, i32 4, !dbg !198
  %36 = load i16, ptr %feature47, align 8, !dbg !198
  %conv48 = zext i16 %36 to i32, !dbg !198
  %shr = ashr i32 %conv48, 5, !dbg !198
  %cmp49 = icmp eq i32 %shr, 0, !dbg !198
  br i1 %cmp49, label %land.lhs.true51, label %lor.lhs.false, !dbg !198

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %37 = load ptr, ptr %m, align 8, !dbg !198
  %feature52 = getelementptr inbounds %struct.x86_cpu_id, ptr %37, i32 0, i32 4, !dbg !198
  %38 = load i16, ptr %feature52, align 8, !dbg !198
  %conv53 = zext i16 %38 to i32, !dbg !198
  %and54 = and i32 %conv53, 31, !dbg !198
  %sh_prom55 = zext i32 %and54 to i64, !dbg !198
  %shl56 = shl i64 1, %sh_prom55, !dbg !198
  %and57 = and i64 %shl56, 117473641, !dbg !198
  %tobool58 = icmp ne i64 %and57, 0, !dbg !198
  br i1 %tobool58, label %cond.true, label %lor.lhs.false, !dbg !198

lor.lhs.false:                                    ; preds = %land.lhs.true51, %land.lhs.true46
  %39 = load ptr, ptr %m, align 8, !dbg !198
  %feature59 = getelementptr inbounds %struct.x86_cpu_id, ptr %39, i32 0, i32 4, !dbg !198
  %40 = load i16, ptr %feature59, align 8, !dbg !198
  %conv60 = zext i16 %40 to i32, !dbg !198
  %shr61 = ashr i32 %conv60, 5, !dbg !198
  %cmp62 = icmp eq i32 %shr61, 1, !dbg !198
  br i1 %cmp62, label %land.lhs.true64, label %lor.lhs.false72, !dbg !198

land.lhs.true64:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %m, align 8, !dbg !198
  %feature65 = getelementptr inbounds %struct.x86_cpu_id, ptr %41, i32 0, i32 4, !dbg !198
  %42 = load i16, ptr %feature65, align 8, !dbg !198
  %conv66 = zext i16 %42 to i32, !dbg !198
  %and67 = and i32 %conv66, 31, !dbg !198
  %sh_prom68 = zext i32 %and67 to i64, !dbg !198
  %shl69 = shl i64 1, %sh_prom68, !dbg !198
  %and70 = and i64 %shl69, 536870912, !dbg !198
  %tobool71 = icmp ne i64 %and70, 0, !dbg !198
  br i1 %tobool71, label %cond.true, label %lor.lhs.false72, !dbg !198

lor.lhs.false72:                                  ; preds = %land.lhs.true64, %lor.lhs.false
  %43 = load ptr, ptr %m, align 8, !dbg !198
  %feature73 = getelementptr inbounds %struct.x86_cpu_id, ptr %43, i32 0, i32 4, !dbg !198
  %44 = load i16, ptr %feature73, align 8, !dbg !198
  %conv74 = zext i16 %44 to i32, !dbg !198
  %shr75 = ashr i32 %conv74, 5, !dbg !198
  %cmp76 = icmp eq i32 %shr75, 2, !dbg !198
  br i1 %cmp76, label %land.lhs.true78, label %lor.lhs.false86, !dbg !198

land.lhs.true78:                                  ; preds = %lor.lhs.false72
  %45 = load ptr, ptr %m, align 8, !dbg !198
  %feature79 = getelementptr inbounds %struct.x86_cpu_id, ptr %45, i32 0, i32 4, !dbg !198
  %46 = load i16, ptr %feature79, align 8, !dbg !198
  %conv80 = zext i16 %46 to i32, !dbg !198
  %and81 = and i32 %conv80, 31, !dbg !198
  %sh_prom82 = zext i32 %and81 to i64, !dbg !198
  %shl83 = shl i64 1, %sh_prom82, !dbg !198
  %and84 = and i64 %shl83, 0, !dbg !198
  %tobool85 = icmp ne i64 %and84, 0, !dbg !198
  br i1 %tobool85, label %cond.true, label %lor.lhs.false86, !dbg !198

lor.lhs.false86:                                  ; preds = %land.lhs.true78, %lor.lhs.false72
  %47 = load ptr, ptr %m, align 8, !dbg !198
  %feature87 = getelementptr inbounds %struct.x86_cpu_id, ptr %47, i32 0, i32 4, !dbg !198
  %48 = load i16, ptr %feature87, align 8, !dbg !198
  %conv88 = zext i16 %48 to i32, !dbg !198
  %shr89 = ashr i32 %conv88, 5, !dbg !198
  %cmp90 = icmp eq i32 %shr89, 3, !dbg !198
  br i1 %cmp90, label %land.lhs.true92, label %lor.lhs.false100, !dbg !198

land.lhs.true92:                                  ; preds = %lor.lhs.false86
  %49 = load ptr, ptr %m, align 8, !dbg !198
  %feature93 = getelementptr inbounds %struct.x86_cpu_id, ptr %49, i32 0, i32 4, !dbg !198
  %50 = load i16, ptr %feature93, align 8, !dbg !198
  %conv94 = zext i16 %50 to i32, !dbg !198
  %and95 = and i32 %conv94, 31, !dbg !198
  %sh_prom96 = zext i32 %and95 to i64, !dbg !198
  %shl97 = shl i64 1, %sh_prom96, !dbg !198
  %and98 = and i64 %shl97, 1048576, !dbg !198
  %tobool99 = icmp ne i64 %and98, 0, !dbg !198
  br i1 %tobool99, label %cond.true, label %lor.lhs.false100, !dbg !198

lor.lhs.false100:                                 ; preds = %land.lhs.true92, %lor.lhs.false86
  %51 = load ptr, ptr %m, align 8, !dbg !198
  %feature101 = getelementptr inbounds %struct.x86_cpu_id, ptr %51, i32 0, i32 4, !dbg !198
  %52 = load i16, ptr %feature101, align 8, !dbg !198
  %conv102 = zext i16 %52 to i32, !dbg !198
  %shr103 = ashr i32 %conv102, 5, !dbg !198
  %cmp104 = icmp eq i32 %shr103, 4, !dbg !198
  br i1 %cmp104, label %land.lhs.true106, label %lor.lhs.false114, !dbg !198

land.lhs.true106:                                 ; preds = %lor.lhs.false100
  %53 = load ptr, ptr %m, align 8, !dbg !198
  %feature107 = getelementptr inbounds %struct.x86_cpu_id, ptr %53, i32 0, i32 4, !dbg !198
  %54 = load i16, ptr %feature107, align 8, !dbg !198
  %conv108 = zext i16 %54 to i32, !dbg !198
  %and109 = and i32 %conv108, 31, !dbg !198
  %sh_prom110 = zext i32 %and109 to i64, !dbg !198
  %shl111 = shl i64 1, %sh_prom110, !dbg !198
  %and112 = and i64 %shl111, 0, !dbg !198
  %tobool113 = icmp ne i64 %and112, 0, !dbg !198
  br i1 %tobool113, label %cond.true, label %lor.lhs.false114, !dbg !198

lor.lhs.false114:                                 ; preds = %land.lhs.true106, %lor.lhs.false100
  %55 = load ptr, ptr %m, align 8, !dbg !198
  %feature115 = getelementptr inbounds %struct.x86_cpu_id, ptr %55, i32 0, i32 4, !dbg !198
  %56 = load i16, ptr %feature115, align 8, !dbg !198
  %conv116 = zext i16 %56 to i32, !dbg !198
  %shr117 = ashr i32 %conv116, 5, !dbg !198
  %cmp118 = icmp eq i32 %shr117, 5, !dbg !198
  br i1 %cmp118, label %land.lhs.true120, label %lor.lhs.false128, !dbg !198

land.lhs.true120:                                 ; preds = %lor.lhs.false114
  %57 = load ptr, ptr %m, align 8, !dbg !198
  %feature121 = getelementptr inbounds %struct.x86_cpu_id, ptr %57, i32 0, i32 4, !dbg !198
  %58 = load i16, ptr %feature121, align 8, !dbg !198
  %conv122 = zext i16 %58 to i32, !dbg !198
  %and123 = and i32 %conv122, 31, !dbg !198
  %sh_prom124 = zext i32 %and123 to i64, !dbg !198
  %shl125 = shl i64 1, %sh_prom124, !dbg !198
  %and126 = and i64 %shl125, 0, !dbg !198
  %tobool127 = icmp ne i64 %and126, 0, !dbg !198
  br i1 %tobool127, label %cond.true, label %lor.lhs.false128, !dbg !198

lor.lhs.false128:                                 ; preds = %land.lhs.true120, %lor.lhs.false114
  %59 = load ptr, ptr %m, align 8, !dbg !198
  %feature129 = getelementptr inbounds %struct.x86_cpu_id, ptr %59, i32 0, i32 4, !dbg !198
  %60 = load i16, ptr %feature129, align 8, !dbg !198
  %conv130 = zext i16 %60 to i32, !dbg !198
  %shr131 = ashr i32 %conv130, 5, !dbg !198
  %cmp132 = icmp eq i32 %shr131, 6, !dbg !198
  br i1 %cmp132, label %land.lhs.true134, label %lor.lhs.false142, !dbg !198

land.lhs.true134:                                 ; preds = %lor.lhs.false128
  %61 = load ptr, ptr %m, align 8, !dbg !198
  %feature135 = getelementptr inbounds %struct.x86_cpu_id, ptr %61, i32 0, i32 4, !dbg !198
  %62 = load i16, ptr %feature135, align 8, !dbg !198
  %conv136 = zext i16 %62 to i32, !dbg !198
  %and137 = and i32 %conv136, 31, !dbg !198
  %sh_prom138 = zext i32 %and137 to i64, !dbg !198
  %shl139 = shl i64 1, %sh_prom138, !dbg !198
  %and140 = and i64 %shl139, 0, !dbg !198
  %tobool141 = icmp ne i64 %and140, 0, !dbg !198
  br i1 %tobool141, label %cond.true, label %lor.lhs.false142, !dbg !198

lor.lhs.false142:                                 ; preds = %land.lhs.true134, %lor.lhs.false128
  %63 = load ptr, ptr %m, align 8, !dbg !198
  %feature143 = getelementptr inbounds %struct.x86_cpu_id, ptr %63, i32 0, i32 4, !dbg !198
  %64 = load i16, ptr %feature143, align 8, !dbg !198
  %conv144 = zext i16 %64 to i32, !dbg !198
  %shr145 = ashr i32 %conv144, 5, !dbg !198
  %cmp146 = icmp eq i32 %shr145, 7, !dbg !198
  br i1 %cmp146, label %land.lhs.true148, label %lor.lhs.false156, !dbg !198

land.lhs.true148:                                 ; preds = %lor.lhs.false142
  %65 = load ptr, ptr %m, align 8, !dbg !198
  %feature149 = getelementptr inbounds %struct.x86_cpu_id, ptr %65, i32 0, i32 4, !dbg !198
  %66 = load i16, ptr %feature149, align 8, !dbg !198
  %conv150 = zext i16 %66 to i32, !dbg !198
  %and151 = and i32 %conv150, 31, !dbg !198
  %sh_prom152 = zext i32 %and151 to i64, !dbg !198
  %shl153 = shl i64 1, %sh_prom152, !dbg !198
  %and154 = and i64 %shl153, 0, !dbg !198
  %tobool155 = icmp ne i64 %and154, 0, !dbg !198
  br i1 %tobool155, label %cond.true, label %lor.lhs.false156, !dbg !198

lor.lhs.false156:                                 ; preds = %land.lhs.true148, %lor.lhs.false142
  %67 = load ptr, ptr %m, align 8, !dbg !198
  %feature157 = getelementptr inbounds %struct.x86_cpu_id, ptr %67, i32 0, i32 4, !dbg !198
  %68 = load i16, ptr %feature157, align 8, !dbg !198
  %conv158 = zext i16 %68 to i32, !dbg !198
  %shr159 = ashr i32 %conv158, 5, !dbg !198
  %cmp160 = icmp eq i32 %shr159, 8, !dbg !198
  br i1 %cmp160, label %land.lhs.true162, label %lor.lhs.false170, !dbg !198

land.lhs.true162:                                 ; preds = %lor.lhs.false156
  %69 = load ptr, ptr %m, align 8, !dbg !198
  %feature163 = getelementptr inbounds %struct.x86_cpu_id, ptr %69, i32 0, i32 4, !dbg !198
  %70 = load i16, ptr %feature163, align 8, !dbg !198
  %conv164 = zext i16 %70 to i32, !dbg !198
  %and165 = and i32 %conv164, 31, !dbg !198
  %sh_prom166 = zext i32 %and165 to i64, !dbg !198
  %shl167 = shl i64 1, %sh_prom166, !dbg !198
  %and168 = and i64 %shl167, 0, !dbg !198
  %tobool169 = icmp ne i64 %and168, 0, !dbg !198
  br i1 %tobool169, label %cond.true, label %lor.lhs.false170, !dbg !198

lor.lhs.false170:                                 ; preds = %land.lhs.true162, %lor.lhs.false156
  %71 = load ptr, ptr %m, align 8, !dbg !198
  %feature171 = getelementptr inbounds %struct.x86_cpu_id, ptr %71, i32 0, i32 4, !dbg !198
  %72 = load i16, ptr %feature171, align 8, !dbg !198
  %conv172 = zext i16 %72 to i32, !dbg !198
  %shr173 = ashr i32 %conv172, 5, !dbg !198
  %cmp174 = icmp eq i32 %shr173, 9, !dbg !198
  br i1 %cmp174, label %land.lhs.true176, label %lor.lhs.false184, !dbg !198

land.lhs.true176:                                 ; preds = %lor.lhs.false170
  %73 = load ptr, ptr %m, align 8, !dbg !198
  %feature177 = getelementptr inbounds %struct.x86_cpu_id, ptr %73, i32 0, i32 4, !dbg !198
  %74 = load i16, ptr %feature177, align 8, !dbg !198
  %conv178 = zext i16 %74 to i32, !dbg !198
  %and179 = and i32 %conv178, 31, !dbg !198
  %sh_prom180 = zext i32 %and179 to i64, !dbg !198
  %shl181 = shl i64 1, %sh_prom180, !dbg !198
  %and182 = and i64 %shl181, 0, !dbg !198
  %tobool183 = icmp ne i64 %and182, 0, !dbg !198
  br i1 %tobool183, label %cond.true, label %lor.lhs.false184, !dbg !198

lor.lhs.false184:                                 ; preds = %land.lhs.true176, %lor.lhs.false170
  %75 = load ptr, ptr %m, align 8, !dbg !198
  %feature185 = getelementptr inbounds %struct.x86_cpu_id, ptr %75, i32 0, i32 4, !dbg !198
  %76 = load i16, ptr %feature185, align 8, !dbg !198
  %conv186 = zext i16 %76 to i32, !dbg !198
  %shr187 = ashr i32 %conv186, 5, !dbg !198
  %cmp188 = icmp eq i32 %shr187, 10, !dbg !198
  br i1 %cmp188, label %land.lhs.true190, label %lor.lhs.false198, !dbg !198

land.lhs.true190:                                 ; preds = %lor.lhs.false184
  %77 = load ptr, ptr %m, align 8, !dbg !198
  %feature191 = getelementptr inbounds %struct.x86_cpu_id, ptr %77, i32 0, i32 4, !dbg !198
  %78 = load i16, ptr %feature191, align 8, !dbg !198
  %conv192 = zext i16 %78 to i32, !dbg !198
  %and193 = and i32 %conv192, 31, !dbg !198
  %sh_prom194 = zext i32 %and193 to i64, !dbg !198
  %shl195 = shl i64 1, %sh_prom194, !dbg !198
  %and196 = and i64 %shl195, 0, !dbg !198
  %tobool197 = icmp ne i64 %and196, 0, !dbg !198
  br i1 %tobool197, label %cond.true, label %lor.lhs.false198, !dbg !198

lor.lhs.false198:                                 ; preds = %land.lhs.true190, %lor.lhs.false184
  %79 = load ptr, ptr %m, align 8, !dbg !198
  %feature199 = getelementptr inbounds %struct.x86_cpu_id, ptr %79, i32 0, i32 4, !dbg !198
  %80 = load i16, ptr %feature199, align 8, !dbg !198
  %conv200 = zext i16 %80 to i32, !dbg !198
  %shr201 = ashr i32 %conv200, 5, !dbg !198
  %cmp202 = icmp eq i32 %shr201, 11, !dbg !198
  br i1 %cmp202, label %land.lhs.true204, label %lor.lhs.false212, !dbg !198

land.lhs.true204:                                 ; preds = %lor.lhs.false198
  %81 = load ptr, ptr %m, align 8, !dbg !198
  %feature205 = getelementptr inbounds %struct.x86_cpu_id, ptr %81, i32 0, i32 4, !dbg !198
  %82 = load i16, ptr %feature205, align 8, !dbg !198
  %conv206 = zext i16 %82 to i32, !dbg !198
  %and207 = and i32 %conv206, 31, !dbg !198
  %sh_prom208 = zext i32 %and207 to i64, !dbg !198
  %shl209 = shl i64 1, %sh_prom208, !dbg !198
  %and210 = and i64 %shl209, 0, !dbg !198
  %tobool211 = icmp ne i64 %and210, 0, !dbg !198
  br i1 %tobool211, label %cond.true, label %lor.lhs.false212, !dbg !198

lor.lhs.false212:                                 ; preds = %land.lhs.true204, %lor.lhs.false198
  %83 = load ptr, ptr %m, align 8, !dbg !198
  %feature213 = getelementptr inbounds %struct.x86_cpu_id, ptr %83, i32 0, i32 4, !dbg !198
  %84 = load i16, ptr %feature213, align 8, !dbg !198
  %conv214 = zext i16 %84 to i32, !dbg !198
  %shr215 = ashr i32 %conv214, 5, !dbg !198
  %cmp216 = icmp eq i32 %shr215, 12, !dbg !198
  br i1 %cmp216, label %land.lhs.true218, label %lor.lhs.false226, !dbg !198

land.lhs.true218:                                 ; preds = %lor.lhs.false212
  %85 = load ptr, ptr %m, align 8, !dbg !198
  %feature219 = getelementptr inbounds %struct.x86_cpu_id, ptr %85, i32 0, i32 4, !dbg !198
  %86 = load i16, ptr %feature219, align 8, !dbg !198
  %conv220 = zext i16 %86 to i32, !dbg !198
  %and221 = and i32 %conv220, 31, !dbg !198
  %sh_prom222 = zext i32 %and221 to i64, !dbg !198
  %shl223 = shl i64 1, %sh_prom222, !dbg !198
  %and224 = and i64 %shl223, 0, !dbg !198
  %tobool225 = icmp ne i64 %and224, 0, !dbg !198
  br i1 %tobool225, label %cond.true, label %lor.lhs.false226, !dbg !198

lor.lhs.false226:                                 ; preds = %land.lhs.true218, %lor.lhs.false212
  %87 = load ptr, ptr %m, align 8, !dbg !198
  %feature227 = getelementptr inbounds %struct.x86_cpu_id, ptr %87, i32 0, i32 4, !dbg !198
  %88 = load i16, ptr %feature227, align 8, !dbg !198
  %conv228 = zext i16 %88 to i32, !dbg !198
  %shr229 = ashr i32 %conv228, 5, !dbg !198
  %cmp230 = icmp eq i32 %shr229, 13, !dbg !198
  br i1 %cmp230, label %land.lhs.true232, label %lor.lhs.false240, !dbg !198

land.lhs.true232:                                 ; preds = %lor.lhs.false226
  %89 = load ptr, ptr %m, align 8, !dbg !198
  %feature233 = getelementptr inbounds %struct.x86_cpu_id, ptr %89, i32 0, i32 4, !dbg !198
  %90 = load i16, ptr %feature233, align 8, !dbg !198
  %conv234 = zext i16 %90 to i32, !dbg !198
  %and235 = and i32 %conv234, 31, !dbg !198
  %sh_prom236 = zext i32 %and235 to i64, !dbg !198
  %shl237 = shl i64 1, %sh_prom236, !dbg !198
  %and238 = and i64 %shl237, 0, !dbg !198
  %tobool239 = icmp ne i64 %and238, 0, !dbg !198
  br i1 %tobool239, label %cond.true, label %lor.lhs.false240, !dbg !198

lor.lhs.false240:                                 ; preds = %land.lhs.true232, %lor.lhs.false226
  %91 = load ptr, ptr %m, align 8, !dbg !198
  %feature241 = getelementptr inbounds %struct.x86_cpu_id, ptr %91, i32 0, i32 4, !dbg !198
  %92 = load i16, ptr %feature241, align 8, !dbg !198
  %conv242 = zext i16 %92 to i32, !dbg !198
  %shr243 = ashr i32 %conv242, 5, !dbg !198
  %cmp244 = icmp eq i32 %shr243, 14, !dbg !198
  br i1 %cmp244, label %land.lhs.true246, label %lor.lhs.false254, !dbg !198

land.lhs.true246:                                 ; preds = %lor.lhs.false240
  %93 = load ptr, ptr %m, align 8, !dbg !198
  %feature247 = getelementptr inbounds %struct.x86_cpu_id, ptr %93, i32 0, i32 4, !dbg !198
  %94 = load i16, ptr %feature247, align 8, !dbg !198
  %conv248 = zext i16 %94 to i32, !dbg !198
  %and249 = and i32 %conv248, 31, !dbg !198
  %sh_prom250 = zext i32 %and249 to i64, !dbg !198
  %shl251 = shl i64 1, %sh_prom250, !dbg !198
  %and252 = and i64 %shl251, 0, !dbg !198
  %tobool253 = icmp ne i64 %and252, 0, !dbg !198
  br i1 %tobool253, label %cond.true, label %lor.lhs.false254, !dbg !198

lor.lhs.false254:                                 ; preds = %land.lhs.true246, %lor.lhs.false240
  %95 = load ptr, ptr %m, align 8, !dbg !198
  %feature255 = getelementptr inbounds %struct.x86_cpu_id, ptr %95, i32 0, i32 4, !dbg !198
  %96 = load i16, ptr %feature255, align 8, !dbg !198
  %conv256 = zext i16 %96 to i32, !dbg !198
  %shr257 = ashr i32 %conv256, 5, !dbg !198
  %cmp258 = icmp eq i32 %shr257, 15, !dbg !198
  br i1 %cmp258, label %land.lhs.true260, label %lor.lhs.false268, !dbg !198

land.lhs.true260:                                 ; preds = %lor.lhs.false254
  %97 = load ptr, ptr %m, align 8, !dbg !198
  %feature261 = getelementptr inbounds %struct.x86_cpu_id, ptr %97, i32 0, i32 4, !dbg !198
  %98 = load i16, ptr %feature261, align 8, !dbg !198
  %conv262 = zext i16 %98 to i32, !dbg !198
  %and263 = and i32 %conv262, 31, !dbg !198
  %sh_prom264 = zext i32 %and263 to i64, !dbg !198
  %shl265 = shl i64 1, %sh_prom264, !dbg !198
  %and266 = and i64 %shl265, 0, !dbg !198
  %tobool267 = icmp ne i64 %and266, 0, !dbg !198
  br i1 %tobool267, label %cond.true, label %lor.lhs.false268, !dbg !198

lor.lhs.false268:                                 ; preds = %land.lhs.true260, %lor.lhs.false254
  %99 = load ptr, ptr %m, align 8, !dbg !198
  %feature269 = getelementptr inbounds %struct.x86_cpu_id, ptr %99, i32 0, i32 4, !dbg !198
  %100 = load i16, ptr %feature269, align 8, !dbg !198
  %conv270 = zext i16 %100 to i32, !dbg !198
  %shr271 = ashr i32 %conv270, 5, !dbg !198
  %cmp272 = icmp eq i32 %shr271, 16, !dbg !198
  br i1 %cmp272, label %land.lhs.true274, label %lor.lhs.false282, !dbg !198

land.lhs.true274:                                 ; preds = %lor.lhs.false268
  %101 = load ptr, ptr %m, align 8, !dbg !198
  %feature275 = getelementptr inbounds %struct.x86_cpu_id, ptr %101, i32 0, i32 4, !dbg !198
  %102 = load i16, ptr %feature275, align 8, !dbg !198
  %conv276 = zext i16 %102 to i32, !dbg !198
  %and277 = and i32 %conv276, 31, !dbg !198
  %sh_prom278 = zext i32 %and277 to i64, !dbg !198
  %shl279 = shl i64 1, %sh_prom278, !dbg !198
  %and280 = and i64 %shl279, 0, !dbg !198
  %tobool281 = icmp ne i64 %and280, 0, !dbg !198
  br i1 %tobool281, label %cond.true, label %lor.lhs.false282, !dbg !198

lor.lhs.false282:                                 ; preds = %land.lhs.true274, %lor.lhs.false268
  %103 = load ptr, ptr %m, align 8, !dbg !198
  %feature283 = getelementptr inbounds %struct.x86_cpu_id, ptr %103, i32 0, i32 4, !dbg !198
  %104 = load i16, ptr %feature283, align 8, !dbg !198
  %conv284 = zext i16 %104 to i32, !dbg !198
  %shr285 = ashr i32 %conv284, 5, !dbg !198
  %cmp286 = icmp eq i32 %shr285, 17, !dbg !198
  br i1 %cmp286, label %land.lhs.true288, label %lor.lhs.false296, !dbg !198

land.lhs.true288:                                 ; preds = %lor.lhs.false282
  %105 = load ptr, ptr %m, align 8, !dbg !198
  %feature289 = getelementptr inbounds %struct.x86_cpu_id, ptr %105, i32 0, i32 4, !dbg !198
  %106 = load i16, ptr %feature289, align 8, !dbg !198
  %conv290 = zext i16 %106 to i32, !dbg !198
  %and291 = and i32 %conv290, 31, !dbg !198
  %sh_prom292 = zext i32 %and291 to i64, !dbg !198
  %shl293 = shl i64 1, %sh_prom292, !dbg !198
  %and294 = and i64 %shl293, 0, !dbg !198
  %tobool295 = icmp ne i64 %and294, 0, !dbg !198
  br i1 %tobool295, label %cond.true, label %lor.lhs.false296, !dbg !198

lor.lhs.false296:                                 ; preds = %land.lhs.true288, %lor.lhs.false282
  %107 = load ptr, ptr %m, align 8, !dbg !198
  %feature297 = getelementptr inbounds %struct.x86_cpu_id, ptr %107, i32 0, i32 4, !dbg !198
  %108 = load i16, ptr %feature297, align 8, !dbg !198
  %conv298 = zext i16 %108 to i32, !dbg !198
  %shr299 = ashr i32 %conv298, 5, !dbg !198
  %cmp300 = icmp eq i32 %shr299, 18, !dbg !198
  br i1 %cmp300, label %land.lhs.true302, label %lor.lhs.false310, !dbg !198

land.lhs.true302:                                 ; preds = %lor.lhs.false296
  %109 = load ptr, ptr %m, align 8, !dbg !198
  %feature303 = getelementptr inbounds %struct.x86_cpu_id, ptr %109, i32 0, i32 4, !dbg !198
  %110 = load i16, ptr %feature303, align 8, !dbg !198
  %conv304 = zext i16 %110 to i32, !dbg !198
  %and305 = and i32 %conv304, 31, !dbg !198
  %sh_prom306 = zext i32 %and305 to i64, !dbg !198
  %shl307 = shl i64 1, %sh_prom306, !dbg !198
  %and308 = and i64 %shl307, 0, !dbg !198
  %tobool309 = icmp ne i64 %and308, 0, !dbg !198
  br i1 %tobool309, label %cond.true, label %lor.lhs.false310, !dbg !198

lor.lhs.false310:                                 ; preds = %land.lhs.true302, %lor.lhs.false296
  %111 = load ptr, ptr %m, align 8, !dbg !198
  %feature311 = getelementptr inbounds %struct.x86_cpu_id, ptr %111, i32 0, i32 4, !dbg !198
  %112 = load i16, ptr %feature311, align 8, !dbg !198
  %conv312 = zext i16 %112 to i32, !dbg !198
  %shr313 = ashr i32 %conv312, 5, !dbg !198
  %cmp314 = icmp eq i32 %shr313, 19, !dbg !198
  br i1 %cmp314, label %land.lhs.true316, label %lor.lhs.false324, !dbg !198

land.lhs.true316:                                 ; preds = %lor.lhs.false310
  %113 = load ptr, ptr %m, align 8, !dbg !198
  %feature317 = getelementptr inbounds %struct.x86_cpu_id, ptr %113, i32 0, i32 4, !dbg !198
  %114 = load i16, ptr %feature317, align 8, !dbg !198
  %conv318 = zext i16 %114 to i32, !dbg !198
  %and319 = and i32 %conv318, 31, !dbg !198
  %sh_prom320 = zext i32 %and319 to i64, !dbg !198
  %shl321 = shl i64 1, %sh_prom320, !dbg !198
  %and322 = and i64 %shl321, 0, !dbg !198
  %tobool323 = icmp ne i64 %and322, 0, !dbg !198
  br i1 %tobool323, label %cond.true, label %lor.lhs.false324, !dbg !198

lor.lhs.false324:                                 ; preds = %land.lhs.true316, %lor.lhs.false310
  %115 = load ptr, ptr %m, align 8, !dbg !198
  %feature325 = getelementptr inbounds %struct.x86_cpu_id, ptr %115, i32 0, i32 4, !dbg !198
  %116 = load i16, ptr %feature325, align 8, !dbg !198
  %conv326 = zext i16 %116 to i32, !dbg !198
  %shr327 = ashr i32 %conv326, 5, !dbg !198
  %cmp328 = icmp eq i32 %shr327, 20, !dbg !198
  br i1 %cmp328, label %land.lhs.true330, label %lor.lhs.false338, !dbg !198

land.lhs.true330:                                 ; preds = %lor.lhs.false324
  %117 = load ptr, ptr %m, align 8, !dbg !198
  %feature331 = getelementptr inbounds %struct.x86_cpu_id, ptr %117, i32 0, i32 4, !dbg !198
  %118 = load i16, ptr %feature331, align 8, !dbg !198
  %conv332 = zext i16 %118 to i32, !dbg !198
  %and333 = and i32 %conv332, 31, !dbg !198
  %sh_prom334 = zext i32 %and333 to i64, !dbg !198
  %shl335 = shl i64 1, %sh_prom334, !dbg !198
  %and336 = and i64 %shl335, 0, !dbg !198
  %tobool337 = icmp ne i64 %and336, 0, !dbg !198
  br i1 %tobool337, label %cond.true, label %lor.lhs.false338, !dbg !198

lor.lhs.false338:                                 ; preds = %land.lhs.true330, %lor.lhs.false324
  %119 = load ptr, ptr %m, align 8, !dbg !198
  %feature339 = getelementptr inbounds %struct.x86_cpu_id, ptr %119, i32 0, i32 4, !dbg !198
  %120 = load i16, ptr %feature339, align 8, !dbg !198
  %conv340 = zext i16 %120 to i32, !dbg !198
  %shr341 = ashr i32 %conv340, 5, !dbg !198
  %cmp342 = icmp eq i32 %shr341, 21, !dbg !198
  br i1 %cmp342, label %land.lhs.true344, label %cond.false, !dbg !198

land.lhs.true344:                                 ; preds = %lor.lhs.false338
  %121 = load ptr, ptr %m, align 8, !dbg !198
  %feature345 = getelementptr inbounds %struct.x86_cpu_id, ptr %121, i32 0, i32 4, !dbg !198
  %122 = load i16, ptr %feature345, align 8, !dbg !198
  %conv346 = zext i16 %122 to i32, !dbg !198
  %and347 = and i32 %conv346, 31, !dbg !198
  %sh_prom348 = zext i32 %and347 to i64, !dbg !198
  %shl349 = shl i64 1, %sh_prom348, !dbg !198
  %and350 = and i64 %shl349, 0, !dbg !198
  %tobool351 = icmp ne i64 %and350, 0, !dbg !198
  br i1 %tobool351, label %cond.true, label %cond.false, !dbg !199

cond.true:                                        ; preds = %land.lhs.true344, %land.lhs.true330, %land.lhs.true316, %land.lhs.true302, %land.lhs.true288, %land.lhs.true274, %land.lhs.true260, %land.lhs.true246, %land.lhs.true232, %land.lhs.true218, %land.lhs.true204, %land.lhs.true190, %land.lhs.true176, %land.lhs.true162, %land.lhs.true148, %land.lhs.true134, %land.lhs.true120, %land.lhs.true106, %land.lhs.true92, %land.lhs.true78, %land.lhs.true64, %land.lhs.true51
  br i1 true, label %if.end356, label %if.then355, !dbg !198

cond.false:                                       ; preds = %land.lhs.true344, %lor.lhs.false338, %land.lhs.true44
  %123 = load ptr, ptr %m, align 8, !dbg !198
  %feature352 = getelementptr inbounds %struct.x86_cpu_id, ptr %123, i32 0, i32 4, !dbg !198
  %124 = load i16, ptr %feature352, align 8, !dbg !198
  %conv353 = zext i16 %124 to i64, !dbg !198
  %125 = load ptr, ptr %c, align 8, !dbg !198
  %126 = getelementptr inbounds %struct.cpuinfo_x86, ptr %125, i32 0, i32 10, !dbg !198
  %arraydecay = getelementptr inbounds [24 x i32], ptr %126, i64 0, i64 0, !dbg !198
  %call = call zeroext i1 @arch_test_bit(i64 noundef %conv353, ptr noundef %arraydecay) #7, !dbg !198
  br i1 %call, label %if.end356, label %if.then355, !dbg !199

if.then355:                                       ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !200

if.end356:                                        ; preds = %cond.false, %cond.true, %if.end40
  %127 = load ptr, ptr %m, align 8, !dbg !201
  store ptr %127, ptr %retval, align 8, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

for.inc:                                          ; preds = %if.then355, %if.then39, %if.then28, %if.then17, %if.then
  %128 = load ptr, ptr %m, align 8, !dbg !203
  %incdec.ptr = getelementptr %struct.x86_cpu_id, ptr %128, i32 1, !dbg !203
  store ptr %incdec.ptr, ptr %m, align 8, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !209

cleanup:                                          ; preds = %for.end, %if.end356
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !210
  %129 = load ptr, ptr %retval, align 8, !dbg !210
  ret ptr %129, !dbg !210
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !211 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !219, metadata !DIExpression()), !dbg !221
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !220, metadata !DIExpression()), !dbg !222
  %0 = load i64, ptr %nr.addr, align 8, !dbg !223
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !224
  br i1 %1, label %cond.true, label %cond.false, !dbg !224

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !225
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !226
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #7, !dbg !227
  %conv = zext i1 %call to i32, !dbg !227
  br label %cond.end, !dbg !224

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !228
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !229
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #7, !dbg !230
  %conv2 = zext i1 %call1 to i32, !dbg !230
  br label %cond.end, !dbg !224

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !224
  %tobool = icmp ne i32 %cond, 0, !dbg !224
  ret i1 %tobool, !dbg !231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @x86_cpu_has_min_microcode_rev(ptr noundef %table) #0 align 16 !dbg !232 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #6, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %res, metadata !247, metadata !DIExpression()), !dbg !250
  %0 = load ptr, ptr %table.addr, align 8, !dbg !251
  %call = call ptr @x86_match_cpu_with_stepping(ptr noundef %0) #7, !dbg !252
  store ptr %call, ptr %res, align 8, !dbg !250
  %1 = load ptr, ptr %res, align 8, !dbg !253
  %tobool = icmp ne ptr %1, null, !dbg !253
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !255

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %res, align 8, !dbg !256
  %x86_microcode_rev = getelementptr inbounds %struct.x86_cpu_desc, ptr %2, i32 0, i32 4, !dbg !257
  %3 = load i32, ptr %x86_microcode_rev, align 4, !dbg !257
  %4 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 33), align 8, !dbg !258
  %cmp = icmp ugt i32 %3, %4, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end:                                           ; preds = %lor.lhs.false
  store i1 true, ptr %retval, align 1, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #6, !dbg !263
  %5 = load i1, ptr %retval, align 1, !dbg !263
  ret i1 %5, !dbg !263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @x86_match_cpu_with_stepping(ptr noundef %match) #0 align 16 !dbg !264 {
entry:
  %retval = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !268, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %c, metadata !269, metadata !DIExpression()), !dbg !273
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %m, metadata !270, metadata !DIExpression()), !dbg !275
  %0 = load ptr, ptr %match.addr, align 8, !dbg !276
  store ptr %0, ptr %m, align 8, !dbg !278
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %m, align 8, !dbg !280
  %x86_family = getelementptr inbounds %struct.x86_cpu_desc, ptr %1, i32 0, i32 0, !dbg !282
  %2 = load i8, ptr %x86_family, align 4, !dbg !282
  %conv = zext i8 %2 to i32, !dbg !280
  %3 = load ptr, ptr %m, align 8, !dbg !283
  %x86_model = getelementptr inbounds %struct.x86_cpu_desc, ptr %3, i32 0, i32 2, !dbg !284
  %4 = load i8, ptr %x86_model, align 2, !dbg !284
  %conv1 = zext i8 %4 to i32, !dbg !283
  %or = or i32 %conv, %conv1, !dbg !285
  %tobool = icmp ne i32 %or, 0, !dbg !286
  br i1 %tobool, label %for.body, label %for.end, !dbg !286

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %c, align 8, !dbg !287
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 0, !dbg !290
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !290
  %7 = load i8, ptr %x86_vendor, align 2, !dbg !290
  %conv2 = zext i8 %7 to i32, !dbg !287
  %8 = load ptr, ptr %m, align 8, !dbg !291
  %x86_vendor3 = getelementptr inbounds %struct.x86_cpu_desc, ptr %8, i32 0, i32 1, !dbg !292
  %9 = load i8, ptr %x86_vendor3, align 1, !dbg !292
  %conv4 = zext i8 %9 to i32, !dbg !291
  %cmp = icmp ne i32 %conv2, %conv4, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !295

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %c, align 8, !dbg !296
  %11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 0, !dbg !298
  %x86 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1, !dbg !298
  %12 = load i8, ptr %x86, align 1, !dbg !298
  %conv6 = zext i8 %12 to i32, !dbg !296
  %13 = load ptr, ptr %m, align 8, !dbg !299
  %x86_family7 = getelementptr inbounds %struct.x86_cpu_desc, ptr %13, i32 0, i32 0, !dbg !300
  %14 = load i8, ptr %x86_family7, align 4, !dbg !300
  %conv8 = zext i8 %14 to i32, !dbg !299
  %cmp9 = icmp ne i32 %conv6, %conv8, !dbg !301
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !302

if.then11:                                        ; preds = %if.end
  br label %for.inc, !dbg !303

if.end12:                                         ; preds = %if.end
  %15 = load ptr, ptr %c, align 8, !dbg !304
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 0, !dbg !306
  %x86_model13 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !306
  %17 = load i8, ptr %x86_model13, align 8, !dbg !306
  %conv14 = zext i8 %17 to i32, !dbg !304
  %18 = load ptr, ptr %m, align 8, !dbg !307
  %x86_model15 = getelementptr inbounds %struct.x86_cpu_desc, ptr %18, i32 0, i32 2, !dbg !308
  %19 = load i8, ptr %x86_model15, align 2, !dbg !308
  %conv16 = zext i8 %19 to i32, !dbg !307
  %cmp17 = icmp ne i32 %conv14, %conv16, !dbg !309
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !310

if.then19:                                        ; preds = %if.end12
  br label %for.inc, !dbg !311

if.end20:                                         ; preds = %if.end12
  %20 = load ptr, ptr %c, align 8, !dbg !312
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %20, i32 0, i32 1, !dbg !314
  %21 = load i8, ptr %x86_stepping, align 4, !dbg !314
  %conv21 = zext i8 %21 to i32, !dbg !312
  %22 = load ptr, ptr %m, align 8, !dbg !315
  %x86_stepping22 = getelementptr inbounds %struct.x86_cpu_desc, ptr %22, i32 0, i32 3, !dbg !316
  %23 = load i8, ptr %x86_stepping22, align 1, !dbg !316
  %conv23 = zext i8 %23 to i32, !dbg !315
  %cmp24 = icmp ne i32 %conv21, %conv23, !dbg !317
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !318

if.then26:                                        ; preds = %if.end20
  br label %for.inc, !dbg !319

if.end27:                                         ; preds = %if.end20
  %24 = load ptr, ptr %m, align 8, !dbg !320
  store ptr %24, ptr %retval, align 8, !dbg !321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !321

for.inc:                                          ; preds = %if.then26, %if.then19, %if.then11, %if.then
  %25 = load ptr, ptr %m, align 8, !dbg !322
  %incdec.ptr = getelementptr %struct.x86_cpu_desc, ptr %25, i32 1, !dbg !322
  store ptr %incdec.ptr, ptr %m, align 8, !dbg !322
  br label %for.cond, !dbg !323, !llvm.loop !324

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %for.end, %if.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !327
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !327
  %26 = load ptr, ptr %retval, align 8, !dbg !327
  ret ptr %26, !dbg !327
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !328 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !333, metadata !DIExpression()), !dbg !335
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !334, metadata !DIExpression()), !dbg !336
  %0 = load i64, ptr %nr.addr, align 8, !dbg !337
  %and = and i64 %0, 63, !dbg !338
  %shl = shl i64 1, %and, !dbg !339
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !340
  %2 = load i64, ptr %nr.addr, align 8, !dbg !341
  %shr = ashr i64 %2, 6, !dbg !342
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !340
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !340
  %and1 = and i64 %shl, %3, !dbg !343
  %cmp = icmp ne i64 %and1, 0, !dbg !344
  ret i1 %cmp, !dbg !345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !346 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !348, metadata !DIExpression()), !dbg !351
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !349, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #6, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !350, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !355
  %1 = load i64, ptr %nr.addr, align 8, !dbg !356
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #6, !dbg !357, !srcloc !358
  %3 = icmp ult i8 %2, 2, !dbg !357
  call void @llvm.assume(i1 %3), !dbg !357
  store i8 %2, ptr %oldbit, align 1, !dbg !357
  %4 = load i8, ptr %oldbit, align 1, !dbg !359, !range !360, !noundef !361
  %tobool = trunc i8 %4 to i1, !dbg !359
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #6, !dbg !362
  ret i1 %tobool, !dbg !363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_match_cpu205", scope: !2, file: !3, line: 57, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.match.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/match\22 -D KBUILD_BASENAME=\22match\22 -D KBUILD_MODNAME=\22match\22 -D __KBUILD_MODNAME=kmod_match -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/match.ll arch/x86/kernel/cpu/match.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/match.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d38915a59a97f90c40d3aaf76ea31a0")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!0, !16}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_cpu_has_min_microcode_rev206", scope: !2, file: !3, line: 88, type: !14, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 8, !"cf-protection-branch", i32 1}
!22 = !{i32 4, !"function_return_thunk_extern", i32 1}
!23 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!24 = !{i32 1, !"Code Model", i32 2}
!25 = !{i32 1, !"override-stack-alignment", i32 8}
!26 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!27 = distinct !DISubprogram(name: "x86_match_cpu", scope: !3, file: !3, line: 36, type: !28, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !33, line: 687, size: 192, elements: !34)
!33 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!34 = !{!35, !39, !40, !41, !42, !43, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !32, file: !33, line: 688, baseType: !36, size: 16)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !32, file: !33, line: 689, baseType: !36, size: 16, offset: 16)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !32, file: !33, line: 690, baseType: !36, size: 16, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !32, file: !33, line: 691, baseType: !36, size: 16, offset: 48)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !32, file: !33, line: 692, baseType: !36, size: 16, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !33, line: 694, baseType: !36, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !32, file: !33, line: 695, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !33, line: 15, baseType: !13)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: "match", arg: 1, scope: !27, file: !3, line: 36, type: !30)
!48 = !DILocalVariable(name: "m", scope: !27, file: !3, line: 38, type: !30)
!49 = !DILocalVariable(name: "c", scope: !27, file: !3, line: 39, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !52, line: 83, size: 2368, elements: !53)
!52 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!53 = !{!54, !68, !69, !71, !75, !76, !77, !78, !79, !80, !81, !89, !94, !98, !99, !100, !101, !102, !103, !104, !105, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !126, !128, !130}
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !52, line: 84, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !51, file: !52, line: 84, size: 32, elements: !56)
!56 = !{!57, !66}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !52, line: 90, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !52, line: 90, size: 32, elements: !59)
!59 = !{!60, !63, !64, !65}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !58, file: !52, line: 91, baseType: !61, size: 8)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !37, line: 21, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !58, file: !52, line: 93, baseType: !61, size: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !58, file: !52, line: 95, baseType: !61, size: 8, offset: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !58, file: !52, line: 96, baseType: !61, size: 8, offset: 24)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !55, file: !52, line: 99, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !37, line: 27, baseType: !7)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !51, file: !52, line: 101, baseType: !61, size: 8, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !51, file: !52, line: 104, baseType: !70, size: 32, offset: 64)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !51, file: !52, line: 107, baseType: !72, size: 160, offset: 96)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 5)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !51, file: !52, line: 109, baseType: !61, size: 8, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !51, file: !52, line: 110, baseType: !61, size: 8, offset: 264)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !51, file: !52, line: 112, baseType: !61, size: 8, offset: 272)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !51, file: !52, line: 113, baseType: !61, size: 8, offset: 280)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !51, file: !52, line: 115, baseType: !67, size: 32, offset: 288)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !51, file: !52, line: 117, baseType: !70, size: 32, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !51, file: !52, line: 123, baseType: !82, size: 768, offset: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !51, file: !52, line: 123, size: 768, elements: !83)
!83 = !{!84, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !82, file: !52, line: 124, baseType: !85, size: 768)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 768, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 24)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !82, file: !52, line: 125, baseType: !13, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !51, file: !52, line: 127, baseType: !90, size: 128, offset: 1152)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !92)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !{!93}
!93 = !DISubrange(count: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !51, file: !52, line: 128, baseType: !95, size: 512, offset: 1280)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !51, file: !52, line: 130, baseType: !7, size: 32, offset: 1792)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !51, file: !52, line: 131, baseType: !70, size: 32, offset: 1824)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !51, file: !52, line: 133, baseType: !70, size: 32, offset: 1856)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !51, file: !52, line: 134, baseType: !70, size: 32, offset: 1888)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !51, file: !52, line: 135, baseType: !70, size: 32, offset: 1920)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !51, file: !52, line: 136, baseType: !70, size: 32, offset: 1952)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !51, file: !52, line: 137, baseType: !13, size: 64, offset: 1984)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !51, file: !52, line: 139, baseType: !106, size: 64, offset: 2048)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !37, line: 31, baseType: !109)
!109 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !51, file: !52, line: 141, baseType: !111, size: 16, offset: 2112)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !36)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !51, file: !52, line: 142, baseType: !111, size: 16, offset: 2128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !51, file: !52, line: 143, baseType: !111, size: 16, offset: 2144)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !51, file: !52, line: 144, baseType: !111, size: 16, offset: 2160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !51, file: !52, line: 146, baseType: !111, size: 16, offset: 2176)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !51, file: !52, line: 148, baseType: !111, size: 16, offset: 2192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !51, file: !52, line: 150, baseType: !111, size: 16, offset: 2208)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !51, file: !52, line: 152, baseType: !111, size: 16, offset: 2224)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !51, file: !52, line: 153, baseType: !111, size: 16, offset: 2240)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !51, file: !52, line: 154, baseType: !111, size: 16, offset: 2256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !51, file: !52, line: 156, baseType: !111, size: 16, offset: 2272)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !51, file: !52, line: 158, baseType: !123, size: 8, offset: 2288)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !51, file: !52, line: 159, baseType: !127, size: 32, offset: 2304)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !67)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !51, file: !52, line: 161, baseType: !129, size: 8, offset: 2336)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !61)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !51, file: !52, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!131 = !DILocation(line: 36, column: 65, scope: !27)
!132 = !DILocation(line: 38, column: 2, scope: !27)
!133 = !DILocation(line: 38, column: 27, scope: !27)
!134 = !DILocation(line: 39, column: 2, scope: !27)
!135 = !DILocation(line: 39, column: 22, scope: !27)
!136 = !DILocation(line: 41, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !27, file: !3, line: 41, column: 2)
!138 = !DILocation(line: 41, column: 9, scope: !137)
!139 = !DILocation(line: 41, column: 7, scope: !137)
!140 = !DILocation(line: 41, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 41, column: 2)
!142 = !DILocation(line: 41, column: 21, scope: !141)
!143 = !DILocation(line: 41, column: 27, scope: !141)
!144 = !DILocation(line: 41, column: 2, scope: !137)
!145 = !DILocation(line: 42, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 42, column: 7)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 41, column: 63)
!148 = !DILocation(line: 42, column: 10, scope: !146)
!149 = !DILocation(line: 42, column: 17, scope: !146)
!150 = !DILocation(line: 42, column: 35, scope: !146)
!151 = !DILocation(line: 42, column: 38, scope: !146)
!152 = !DILocation(line: 42, column: 41, scope: !146)
!153 = !DILocation(line: 42, column: 55, scope: !146)
!154 = !DILocation(line: 42, column: 58, scope: !146)
!155 = !DILocation(line: 42, column: 52, scope: !146)
!156 = !DILocation(line: 42, column: 7, scope: !147)
!157 = !DILocation(line: 43, column: 4, scope: !146)
!158 = !DILocation(line: 44, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !3, line: 44, column: 7)
!160 = !DILocation(line: 44, column: 10, scope: !159)
!161 = !DILocation(line: 44, column: 17, scope: !159)
!162 = !DILocation(line: 44, column: 35, scope: !159)
!163 = !DILocation(line: 44, column: 38, scope: !159)
!164 = !DILocation(line: 44, column: 41, scope: !159)
!165 = !DILocation(line: 44, column: 48, scope: !159)
!166 = !DILocation(line: 44, column: 51, scope: !159)
!167 = !DILocation(line: 44, column: 45, scope: !159)
!168 = !DILocation(line: 44, column: 7, scope: !147)
!169 = !DILocation(line: 45, column: 4, scope: !159)
!170 = !DILocation(line: 46, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !147, file: !3, line: 46, column: 7)
!172 = !DILocation(line: 46, column: 10, scope: !171)
!173 = !DILocation(line: 46, column: 16, scope: !171)
!174 = !DILocation(line: 46, column: 33, scope: !171)
!175 = !DILocation(line: 46, column: 36, scope: !171)
!176 = !DILocation(line: 46, column: 39, scope: !171)
!177 = !DILocation(line: 46, column: 52, scope: !171)
!178 = !DILocation(line: 46, column: 55, scope: !171)
!179 = !DILocation(line: 46, column: 49, scope: !171)
!180 = !DILocation(line: 46, column: 7, scope: !147)
!181 = !DILocation(line: 47, column: 4, scope: !171)
!182 = !DILocation(line: 48, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !147, file: !3, line: 48, column: 7)
!184 = !DILocation(line: 48, column: 10, scope: !183)
!185 = !DILocation(line: 48, column: 20, scope: !183)
!186 = !DILocation(line: 48, column: 40, scope: !183)
!187 = !DILocation(line: 49, column: 9, scope: !183)
!188 = !DILocation(line: 49, column: 32, scope: !183)
!189 = !DILocation(line: 49, column: 35, scope: !183)
!190 = !DILocation(line: 49, column: 30, scope: !183)
!191 = !DILocation(line: 48, column: 7, scope: !147)
!192 = !DILocation(line: 50, column: 4, scope: !183)
!193 = !DILocation(line: 51, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !147, file: !3, line: 51, column: 7)
!195 = !DILocation(line: 51, column: 10, scope: !194)
!196 = !DILocation(line: 51, column: 18, scope: !194)
!197 = !DILocation(line: 51, column: 37, scope: !194)
!198 = !DILocation(line: 51, column: 41, scope: !194)
!199 = !DILocation(line: 51, column: 7, scope: !147)
!200 = !DILocation(line: 52, column: 4, scope: !194)
!201 = !DILocation(line: 53, column: 10, scope: !147)
!202 = !DILocation(line: 53, column: 3, scope: !147)
!203 = !DILocation(line: 41, column: 59, scope: !141)
!204 = !DILocation(line: 41, column: 2, scope: !141)
!205 = distinct !{!205, !144, !206, !207, !208}
!206 = !DILocation(line: 54, column: 2, scope: !137)
!207 = !{!"llvm.loop.mustprogress"}
!208 = !{!"llvm.loop.unroll.disable"}
!209 = !DILocation(line: 55, column: 2, scope: !27)
!210 = !DILocation(line: 56, column: 1, scope: !27)
!211 = distinct !DISubprogram(name: "arch_test_bit", scope: !212, file: !212, line: 237, type: !213, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!212 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!213 = !DISubroutineType(types: !214)
!214 = !{!123, !13, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "nr", arg: 1, scope: !211, file: !212, line: 237, type: !13)
!220 = !DILocalVariable(name: "addr", arg: 2, scope: !211, file: !212, line: 237, type: !215)
!221 = !DILocation(line: 237, column: 29, scope: !211)
!222 = !DILocation(line: 237, column: 63, scope: !211)
!223 = !DILocation(line: 239, column: 30, scope: !211)
!224 = !DILocation(line: 239, column: 9, scope: !211)
!225 = !DILocation(line: 239, column: 54, scope: !211)
!226 = !DILocation(line: 239, column: 58, scope: !211)
!227 = !DILocation(line: 239, column: 36, scope: !211)
!228 = !DILocation(line: 240, column: 26, scope: !211)
!229 = !DILocation(line: 240, column: 30, scope: !211)
!230 = !DILocation(line: 240, column: 8, scope: !211)
!231 = !DILocation(line: 239, column: 2, scope: !211)
!232 = distinct !DISubprogram(name: "x86_cpu_has_min_microcode_rev", scope: !3, file: !3, line: 79, type: !233, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!233 = !DISubroutineType(types: !234)
!234 = !{!123, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_desc", file: !238, line: 275, size: 64, elements: !239)
!238 = !DIFile(filename: "./arch/x86/include/asm/cpu_device_id.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e1a78964618b7c8a5d697bb345982db")
!239 = !{!240, !241, !242, !243, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "x86_family", scope: !237, file: !238, line: 276, baseType: !129, size: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !237, file: !238, line: 277, baseType: !129, size: 8, offset: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !237, file: !238, line: 278, baseType: !129, size: 8, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !237, file: !238, line: 279, baseType: !129, size: 8, offset: 24)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "x86_microcode_rev", scope: !237, file: !238, line: 280, baseType: !127, size: 32, offset: 32)
!245 = !{!246, !247}
!246 = !DILocalVariable(name: "table", arg: 1, scope: !232, file: !3, line: 79, type: !235)
!247 = !DILocalVariable(name: "res", scope: !232, file: !3, line: 81, type: !235)
!248 = !DILocation(line: 79, column: 63, scope: !232)
!249 = !DILocation(line: 81, column: 2, scope: !232)
!250 = !DILocation(line: 81, column: 29, scope: !232)
!251 = !DILocation(line: 81, column: 63, scope: !232)
!252 = !DILocation(line: 81, column: 35, scope: !232)
!253 = !DILocation(line: 83, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !232, file: !3, line: 83, column: 6)
!255 = !DILocation(line: 83, column: 11, scope: !254)
!256 = !DILocation(line: 83, column: 14, scope: !254)
!257 = !DILocation(line: 83, column: 19, scope: !254)
!258 = !DILocation(line: 83, column: 53, scope: !254)
!259 = !DILocation(line: 83, column: 37, scope: !254)
!260 = !DILocation(line: 83, column: 6, scope: !232)
!261 = !DILocation(line: 84, column: 3, scope: !254)
!262 = !DILocation(line: 86, column: 2, scope: !232)
!263 = !DILocation(line: 87, column: 1, scope: !232)
!264 = distinct !DISubprogram(name: "x86_match_cpu_with_stepping", scope: !3, file: !3, line: 60, type: !265, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!235, !235}
!267 = !{!268, !269, !270}
!268 = !DILocalVariable(name: "match", arg: 1, scope: !264, file: !3, line: 60, type: !235)
!269 = !DILocalVariable(name: "c", scope: !264, file: !3, line: 62, type: !50)
!270 = !DILocalVariable(name: "m", scope: !264, file: !3, line: 63, type: !235)
!271 = !DILocation(line: 60, column: 56, scope: !264)
!272 = !DILocation(line: 62, column: 2, scope: !264)
!273 = !DILocation(line: 62, column: 22, scope: !264)
!274 = !DILocation(line: 63, column: 2, scope: !264)
!275 = !DILocation(line: 63, column: 29, scope: !264)
!276 = !DILocation(line: 65, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !264, file: !3, line: 65, column: 2)
!278 = !DILocation(line: 65, column: 9, scope: !277)
!279 = !DILocation(line: 65, column: 7, scope: !277)
!280 = !DILocation(line: 65, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 65, column: 2)
!282 = !DILocation(line: 65, column: 21, scope: !281)
!283 = !DILocation(line: 65, column: 34, scope: !281)
!284 = !DILocation(line: 65, column: 37, scope: !281)
!285 = !DILocation(line: 65, column: 32, scope: !281)
!286 = !DILocation(line: 65, column: 2, scope: !277)
!287 = !DILocation(line: 66, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 66, column: 7)
!289 = distinct !DILexicalBlock(scope: !281, file: !3, line: 65, column: 53)
!290 = !DILocation(line: 66, column: 10, scope: !288)
!291 = !DILocation(line: 66, column: 24, scope: !288)
!292 = !DILocation(line: 66, column: 27, scope: !288)
!293 = !DILocation(line: 66, column: 21, scope: !288)
!294 = !DILocation(line: 66, column: 7, scope: !289)
!295 = !DILocation(line: 67, column: 4, scope: !288)
!296 = !DILocation(line: 68, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !289, file: !3, line: 68, column: 7)
!298 = !DILocation(line: 68, column: 10, scope: !297)
!299 = !DILocation(line: 68, column: 17, scope: !297)
!300 = !DILocation(line: 68, column: 20, scope: !297)
!301 = !DILocation(line: 68, column: 14, scope: !297)
!302 = !DILocation(line: 68, column: 7, scope: !289)
!303 = !DILocation(line: 69, column: 4, scope: !297)
!304 = !DILocation(line: 70, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !289, file: !3, line: 70, column: 7)
!306 = !DILocation(line: 70, column: 10, scope: !305)
!307 = !DILocation(line: 70, column: 23, scope: !305)
!308 = !DILocation(line: 70, column: 26, scope: !305)
!309 = !DILocation(line: 70, column: 20, scope: !305)
!310 = !DILocation(line: 70, column: 7, scope: !289)
!311 = !DILocation(line: 71, column: 4, scope: !305)
!312 = !DILocation(line: 72, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !289, file: !3, line: 72, column: 7)
!314 = !DILocation(line: 72, column: 10, scope: !313)
!315 = !DILocation(line: 72, column: 26, scope: !313)
!316 = !DILocation(line: 72, column: 29, scope: !313)
!317 = !DILocation(line: 72, column: 23, scope: !313)
!318 = !DILocation(line: 72, column: 7, scope: !289)
!319 = !DILocation(line: 73, column: 4, scope: !313)
!320 = !DILocation(line: 74, column: 10, scope: !289)
!321 = !DILocation(line: 74, column: 3, scope: !289)
!322 = !DILocation(line: 65, column: 49, scope: !281)
!323 = !DILocation(line: 65, column: 2, scope: !281)
!324 = distinct !{!324, !286, !325, !207, !208}
!325 = !DILocation(line: 75, column: 2, scope: !277)
!326 = !DILocation(line: 76, column: 2, scope: !264)
!327 = !DILocation(line: 77, column: 1, scope: !264)
!328 = distinct !DISubprogram(name: "constant_test_bit", scope: !212, file: !212, line: 204, type: !329, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!329 = !DISubroutineType(types: !330)
!330 = !{!123, !331, !215}
!331 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!332 = !{!333, !334}
!333 = !DILocalVariable(name: "nr", arg: 1, scope: !328, file: !212, line: 204, type: !331)
!334 = !DILocalVariable(name: "addr", arg: 2, scope: !328, file: !212, line: 204, type: !215)
!335 = !DILocation(line: 204, column: 52, scope: !328)
!336 = !DILocation(line: 204, column: 86, scope: !328)
!337 = !DILocation(line: 206, column: 19, scope: !328)
!338 = !DILocation(line: 206, column: 22, scope: !328)
!339 = !DILocation(line: 206, column: 15, scope: !328)
!340 = !DILocation(line: 207, column: 4, scope: !328)
!341 = !DILocation(line: 207, column: 9, scope: !328)
!342 = !DILocation(line: 207, column: 12, scope: !328)
!343 = !DILocation(line: 206, column: 44, scope: !328)
!344 = !DILocation(line: 207, column: 37, scope: !328)
!345 = !DILocation(line: 206, column: 2, scope: !328)
!346 = distinct !DISubprogram(name: "variable_test_bit", scope: !212, file: !212, line: 224, type: !329, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!347 = !{!348, !349, !350}
!348 = !DILocalVariable(name: "nr", arg: 1, scope: !346, file: !212, line: 224, type: !331)
!349 = !DILocalVariable(name: "addr", arg: 2, scope: !346, file: !212, line: 224, type: !215)
!350 = !DILocalVariable(name: "oldbit", scope: !346, file: !212, line: 226, type: !123)
!351 = !DILocation(line: 224, column: 52, scope: !346)
!352 = !DILocation(line: 224, column: 86, scope: !346)
!353 = !DILocation(line: 226, column: 2, scope: !346)
!354 = !DILocation(line: 226, column: 7, scope: !346)
!355 = !DILocation(line: 231, column: 33, scope: !346)
!356 = !DILocation(line: 231, column: 46, scope: !346)
!357 = !DILocation(line: 228, column: 2, scope: !346)
!358 = !{i64 2148227015, i64 2148227089}
!359 = !DILocation(line: 233, column: 9, scope: !346)
!360 = !{i8 0, i8 2}
!361 = !{}
!362 = !DILocation(line: 234, column: 1, scope: !346)
!363 = !DILocation(line: 233, column: 2, scope: !346)
