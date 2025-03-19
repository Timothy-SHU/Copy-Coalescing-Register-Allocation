; ModuleID = 'lib/group_cpus.c'
source_filename = "lib/group_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_group_cpus_evenly: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad group_cpus_evenly ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.nodemask_t = type { [1 x i64] }
%struct.node_groups = type { i32, %union.anon }
%union.anon = type { i32 }

@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [17 x i8] c"lib/group_cpus.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_group_cpus_evenly209 = internal global ptr @group_cpus_evenly, section ".discard.addressable", align 8, !dbg !7
@nr_node_ids = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !66
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_group_cpus_evenly209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @group_cpus_evenly(i32 noundef %numgrps) #0 align 16 !dbg !80 {
entry:
  %retval = alloca ptr, align 8
  %numgrps.addr = alloca i32, align 4
  %curgrp = alloca i32, align 4
  %nr_present = alloca i32, align 4
  %nr_others = alloca i32, align 4
  %node_to_cpumask = alloca ptr, align 8
  %nmsk = alloca [1 x %struct.cpumask], align 8
  %npresmsk = alloca [1 x %struct.cpumask], align 8
  %ret = alloca i32, align 4
  %masks = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__v = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  store i32 %numgrps, ptr %numgrps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %numgrps.addr, metadata !85, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %curgrp) #16, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %curgrp, metadata !86, metadata !DIExpression()), !dbg !108
  store i32 0, ptr %curgrp, align 4, !dbg !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_present) #16, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %nr_present, metadata !87, metadata !DIExpression()), !dbg !109
  store i32 0, ptr %nr_present, align 4, !dbg !109
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_others) #16, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %nr_others, metadata !88, metadata !DIExpression()), !dbg !110
  store i32 0, ptr %nr_others, align 4, !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_to_cpumask) #16, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %node_to_cpumask, metadata !89, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %nmsk) #16, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %nmsk, metadata !90, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %npresmsk) #16, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %npresmsk, metadata !91, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !92, metadata !DIExpression()), !dbg !117
  store i32 -12, ptr %ret, align 4, !dbg !117
  call void @llvm.lifetime.start.p0(i64 8, ptr %masks) #16, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %masks, metadata !93, metadata !DIExpression()), !dbg !119
  store ptr null, ptr %masks, align 8, !dbg !119
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %nmsk, i32 noundef 3264) #17, !dbg !120
  br i1 %call, label %if.end, label %if.then, !dbg !122

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !123

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %npresmsk, i32 noundef 3264) #17, !dbg !124
  br i1 %call1, label %if.end3, label %if.then2, !dbg !126

if.then2:                                         ; preds = %if.end
  br label %fail_nmsk, !dbg !127

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @alloc_node_to_cpumask() #17, !dbg !128
  store ptr %call4, ptr %node_to_cpumask, align 8, !dbg !129
  %0 = load ptr, ptr %node_to_cpumask, align 8, !dbg !130
  %tobool = icmp ne ptr %0, null, !dbg !130
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !132

if.then5:                                         ; preds = %if.end3
  br label %fail_npresmsk, !dbg !133

if.end6:                                          ; preds = %if.end3
  %1 = load i32, ptr %numgrps.addr, align 4, !dbg !134
  %conv = zext i32 %1 to i64, !dbg !134
  %call7 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !135
  store ptr %call7, ptr %masks, align 8, !dbg !136
  %2 = load ptr, ptr %masks, align 8, !dbg !137
  %tobool8 = icmp ne ptr %2, null, !dbg !137
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !139

if.then9:                                         ; preds = %if.end6
  br label %fail_node_to_cpumask, !dbg !140

if.end10:                                         ; preds = %if.end6
  %3 = load ptr, ptr %node_to_cpumask, align 8, !dbg !141
  call void @build_node_to_cpumask(ptr noundef %3) #17, !dbg !142
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !143
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #16, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !94, metadata !DIExpression()), !dbg !144
  call void @__kcsan_disable_current() #17, !dbg !145
  store ptr @__cpu_present_mask, ptr %tmp, align 8, !dbg !145
  %4 = load ptr, ptr %tmp, align 8, !dbg !145
  store ptr %4, ptr %__v, align 8, !dbg !144
  call void @__kcsan_enable_current() #17, !dbg !144
  %5 = load ptr, ptr %__v, align 8, !dbg !144
  store ptr %5, ptr %tmp11, align 8, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #16, !dbg !147
  %6 = load ptr, ptr %tmp11, align 8, !dbg !144
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %6) #17, !dbg !148
  %7 = load i32, ptr %curgrp, align 4, !dbg !149
  %8 = load i32, ptr %numgrps.addr, align 4, !dbg !150
  %9 = load ptr, ptr %node_to_cpumask, align 8, !dbg !151
  %arraydecay12 = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !152
  %arraydecay13 = getelementptr inbounds [1 x %struct.cpumask], ptr %nmsk, i64 0, i64 0, !dbg !153
  %10 = load ptr, ptr %masks, align 8, !dbg !154
  %call14 = call i32 @__group_cpus_evenly(i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %10) #17, !dbg !155
  store i32 %call14, ptr %ret, align 4, !dbg !156
  %11 = load i32, ptr %ret, align 4, !dbg !157
  %cmp = icmp slt i32 %11, 0, !dbg !159
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !160

if.then16:                                        ; preds = %if.end10
  br label %fail_build_affinity, !dbg !161

if.end17:                                         ; preds = %if.end10
  %12 = load i32, ptr %ret, align 4, !dbg !162
  store i32 %12, ptr %nr_present, align 4, !dbg !163
  %13 = load i32, ptr %nr_present, align 4, !dbg !164
  %14 = load i32, ptr %numgrps.addr, align 4, !dbg !166
  %cmp18 = icmp uge i32 %13, %14, !dbg !167
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !168

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %curgrp, align 4, !dbg !169
  br label %if.end21, !dbg !170

if.else:                                          ; preds = %if.end17
  %15 = load i32, ptr %nr_present, align 4, !dbg !171
  store i32 %15, ptr %curgrp, align 4, !dbg !172
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  %arraydecay22 = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !173
  %arraydecay23 = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !174
  %call24 = call zeroext i1 @cpumask_andnot(ptr noundef %arraydecay22, ptr noundef @__cpu_possible_mask, ptr noundef %arraydecay23) #17, !dbg !175
  %16 = load i32, ptr %curgrp, align 4, !dbg !176
  %17 = load i32, ptr %numgrps.addr, align 4, !dbg !177
  %18 = load ptr, ptr %node_to_cpumask, align 8, !dbg !178
  %arraydecay25 = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !179
  %arraydecay26 = getelementptr inbounds [1 x %struct.cpumask], ptr %nmsk, i64 0, i64 0, !dbg !180
  %19 = load ptr, ptr %masks, align 8, !dbg !181
  %call27 = call i32 @__group_cpus_evenly(i32 noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %arraydecay25, ptr noundef %arraydecay26, ptr noundef %19) #17, !dbg !182
  store i32 %call27, ptr %ret, align 4, !dbg !183
  %20 = load i32, ptr %ret, align 4, !dbg !184
  %cmp28 = icmp sge i32 %20, 0, !dbg !186
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !187

if.then30:                                        ; preds = %if.end21
  %21 = load i32, ptr %ret, align 4, !dbg !188
  store i32 %21, ptr %nr_others, align 4, !dbg !189
  br label %if.end31, !dbg !190

if.end31:                                         ; preds = %if.then30, %if.end21
  br label %fail_build_affinity, !dbg !191

fail_build_affinity:                              ; preds = %if.end31, %if.then16
  call void @llvm.dbg.label(metadata !96), !dbg !192
  %22 = load i32, ptr %ret, align 4, !dbg !193
  %cmp32 = icmp sge i32 %22, 0, !dbg !194
  br i1 %cmp32, label %if.then34, label %if.end64, !dbg !195

if.then34:                                        ; preds = %fail_build_affinity
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !97, metadata !DIExpression()), !dbg !196
  %23 = load i32, ptr %nr_present, align 4, !dbg !196
  %24 = load i32, ptr %nr_others, align 4, !dbg !196
  %add = add i32 %23, %24, !dbg !196
  %25 = load i32, ptr %numgrps.addr, align 4, !dbg !196
  %cmp35 = icmp ult i32 %add, %25, !dbg !196
  %lnot = xor i1 %cmp35, true, !dbg !196
  %lnot37 = xor i1 %lnot, true, !dbg !196
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !196
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !196
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !197
  %tobool38 = icmp ne i32 %26, 0, !dbg !197
  %lnot39 = xor i1 %tobool38, true, !dbg !197
  %lnot41 = xor i1 %lnot39, true, !dbg !197
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !197
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !197
  %expval = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !197
  %tobool44 = icmp ne i64 %expval, 0, !dbg !197
  br i1 %tobool44, label %if.then45, label %if.end55, !dbg !196

if.then45:                                        ; preds = %if.then34
  br label %do.body, !dbg !197

do.body:                                          ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !100, metadata !DIExpression()), !dbg !198
  store i32 2305, ptr %__flags, align 4, !dbg !198
  br label %do.body46, !dbg !198

do.body46:                                        ; preds = %do.body
  br label %do.cond, !dbg !199

do.cond:                                          ; preds = %do.body46
  br label %do.end, !dbg !199

do.end:                                           ; preds = %do.cond
  br label %do.body47, !dbg !198

do.body47:                                        ; preds = %do.end
  %27 = load i32, ptr %__flags, align 4, !dbg !201
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 410, i32 %27, i64 12) #16, !dbg !201, !srcloc !203
  br label %do.cond48, !dbg !201

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !201

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !198

do.body50:                                        ; preds = %do.end49
  br label %do.cond51, !dbg !204

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !204

do.end52:                                         ; preds = %do.cond51
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !197
  br label %do.cond53, !dbg !198

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !198

do.end54:                                         ; preds = %do.cond53
  br label %if.end55, !dbg !198

if.end55:                                         ; preds = %do.end54, %if.then34
  %28 = load i32, ptr %__ret_warn_on, align 4, !dbg !196
  %tobool57 = icmp ne i32 %28, 0, !dbg !196
  %lnot58 = xor i1 %tobool57, true, !dbg !196
  %lnot60 = xor i1 %lnot58, true, !dbg !196
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !196
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !196
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !196
  store i64 %expval63, ptr %tmp56, align 8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !206
  %29 = load i64, ptr %tmp56, align 8, !dbg !196
  br label %if.end64, !dbg !206

if.end64:                                         ; preds = %if.end55, %fail_build_affinity
  br label %fail_node_to_cpumask, !dbg !207

fail_node_to_cpumask:                             ; preds = %if.end64, %if.then9
  call void @llvm.dbg.label(metadata !103), !dbg !208
  %30 = load ptr, ptr %node_to_cpumask, align 8, !dbg !209
  call void @free_node_to_cpumask(ptr noundef %30) #17, !dbg !210
  br label %fail_npresmsk, !dbg !210

fail_npresmsk:                                    ; preds = %fail_node_to_cpumask, %if.then5
  call void @llvm.dbg.label(metadata !104), !dbg !211
  %arraydecay65 = getelementptr inbounds [1 x %struct.cpumask], ptr %npresmsk, i64 0, i64 0, !dbg !212
  call void @free_cpumask_var(ptr noundef %arraydecay65) #17, !dbg !213
  br label %fail_nmsk, !dbg !213

fail_nmsk:                                        ; preds = %fail_npresmsk, %if.then2
  call void @llvm.dbg.label(metadata !105), !dbg !214
  %arraydecay66 = getelementptr inbounds [1 x %struct.cpumask], ptr %nmsk, i64 0, i64 0, !dbg !215
  call void @free_cpumask_var(ptr noundef %arraydecay66) #17, !dbg !216
  %31 = load i32, ptr %ret, align 4, !dbg !217
  %cmp67 = icmp slt i32 %31, 0, !dbg !219
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !220

if.then69:                                        ; preds = %fail_nmsk
  %32 = load ptr, ptr %masks, align 8, !dbg !221
  call void @kfree(ptr noundef %32) #17, !dbg !223
  store ptr null, ptr %retval, align 8, !dbg !224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !224

if.end70:                                         ; preds = %fail_nmsk
  %33 = load ptr, ptr %masks, align 8, !dbg !225
  store ptr %33, ptr %retval, align 8, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %if.end70, %if.then69, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %masks) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 8, ptr %npresmsk) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 8, ptr %nmsk) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_to_cpumask) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_others) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_present) #16, !dbg !227
  call void @llvm.lifetime.end.p0(i64 4, ptr %curgrp) #16, !dbg !227
  %34 = load ptr, ptr %retval, align 8, !dbg !227
  ret ptr %34, !dbg !227
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #3 align 16 !dbg !228 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !234, metadata !DIExpression()), !dbg !236
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !235, metadata !DIExpression()), !dbg !237
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !238
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !239
  call void @cpumask_clear(ptr noundef %arraydecay) #17, !dbg !240
  ret i1 true, !dbg !241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_node_to_cpumask() #0 align 16 !dbg !242 {
entry:
  %retval = alloca ptr, align 8
  %masks = alloca ptr, align 8
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %masks) #16, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %masks, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #16, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %node, metadata !247, metadata !DIExpression()), !dbg !252
  %0 = load i32, ptr @nr_node_ids, align 4, !dbg !253
  %conv = zext i32 %0 to i64, !dbg !253
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !254
  store ptr %call, ptr %masks, align 8, !dbg !255
  %1 = load ptr, ptr %masks, align 8, !dbg !256
  %tobool = icmp ne ptr %1, null, !dbg !256
  br i1 %tobool, label %if.end, label %if.then, !dbg !258

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !259

if.end:                                           ; preds = %entry
  store i32 0, ptr %node, align 4, !dbg !260
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %node, align 4, !dbg !263
  %3 = load i32, ptr @nr_node_ids, align 4, !dbg !265
  %cmp = icmp ult i32 %2, %3, !dbg !266
  br i1 %cmp, label %for.body, label %for.end, !dbg !267

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %masks, align 8, !dbg !268
  %5 = load i32, ptr %node, align 4, !dbg !271
  %idxprom = sext i32 %5 to i64, !dbg !268
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %4, i64 %idxprom, !dbg !268
  %call2 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %arrayidx, i32 noundef 3264) #17, !dbg !272
  br i1 %call2, label %if.end4, label %if.then3, !dbg !273

if.then3:                                         ; preds = %for.body
  br label %out_unwind, !dbg !274

if.end4:                                          ; preds = %for.body
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %if.end4
  %6 = load i32, ptr %node, align 4, !dbg !276
  %inc = add i32 %6, 1, !dbg !276
  store i32 %inc, ptr %node, align 4, !dbg !276
  br label %for.cond, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %masks, align 8, !dbg !282
  store ptr %7, ptr %retval, align 8, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

out_unwind:                                       ; preds = %if.then3
  call void @llvm.dbg.label(metadata !248), !dbg !284
  br label %while.cond, !dbg !285

while.cond:                                       ; preds = %while.body, %out_unwind
  %8 = load i32, ptr %node, align 4, !dbg !286
  %dec = add i32 %8, -1, !dbg !286
  store i32 %dec, ptr %node, align 4, !dbg !286
  %cmp5 = icmp sge i32 %dec, 0, !dbg !287
  br i1 %cmp5, label %while.body, label %while.end, !dbg !285

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %masks, align 8, !dbg !288
  %10 = load i32, ptr %node, align 4, !dbg !289
  %idxprom7 = sext i32 %10 to i64, !dbg !288
  %arrayidx8 = getelementptr [1 x %struct.cpumask], ptr %9, i64 %idxprom7, !dbg !288
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx8, i64 0, i64 0, !dbg !288
  call void @free_cpumask_var(ptr noundef %arraydecay) #17, !dbg !290
  br label %while.cond, !dbg !285, !llvm.loop !291

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %masks, align 8, !dbg !293
  call void @kfree(ptr noundef %11) #17, !dbg !294
  store ptr null, ptr %retval, align 8, !dbg !295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !295

cleanup:                                          ; preds = %while.end, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #16, !dbg !296
  call void @llvm.lifetime.end.p0(i64 8, ptr %masks) #16, !dbg !296
  %12 = load ptr, ptr %retval, align 8, !dbg !296
  ret ptr %12, !dbg !296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !297 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !305, metadata !DIExpression()), !dbg !308
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !306, metadata !DIExpression()), !dbg !309
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !307, metadata !DIExpression()), !dbg !310
  %0 = load i64, ptr %n.addr, align 8, !dbg !311
  %1 = load i64, ptr %size.addr, align 8, !dbg !312
  %2 = load i32, ptr %flags.addr, align 4, !dbg !313
  %or = or i32 %2, 256, !dbg !314
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !315
  ret ptr %call, !dbg !316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @build_node_to_cpumask(ptr noundef %masks) #0 align 16 !dbg !317 {
entry:
  %masks.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  store ptr %masks, ptr %masks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %masks.addr, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !322, metadata !DIExpression()), !dbg !325
  store i32 0, ptr %cpu, align 4, !dbg !326
  br label %for.cond, !dbg !326

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !328
  %conv = sext i32 %0 to i64, !dbg !328
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !328
  %conv1 = trunc i64 %call to i32, !dbg !328
  store i32 %conv1, ptr %cpu, align 4, !dbg !328
  %1 = load i32, ptr %cpu, align 4, !dbg !328
  %cmp = icmp ult i32 %1, 64, !dbg !328
  br i1 %cmp, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %cpu, align 4, !dbg !330
  %3 = load ptr, ptr %masks.addr, align 8, !dbg !331
  %4 = load i32, ptr %cpu, align 4, !dbg !332
  %call3 = call i32 @cpu_to_node(i32 noundef %4) #17, !dbg !333
  %idxprom = sext i32 %call3 to i64, !dbg !331
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %3, i64 %idxprom, !dbg !331
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !331
  call void @cpumask_set_cpu(i32 noundef %2, ptr noundef %arraydecay) #17, !dbg !334
  br label %for.inc, !dbg !334

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %cpu, align 4, !dbg !328
  %inc = add i32 %5, 1, !dbg !328
  store i32 %inc, ptr %cpu, align 4, !dbg !328
  br label %for.cond, !dbg !328, !llvm.loop !335

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !337
  ret void, !dbg !337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #3 align 16 !dbg !338 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !342, metadata !DIExpression()), !dbg !344
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !343, metadata !DIExpression()), !dbg !345
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !346
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !346
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !346
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !347
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !347
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !347
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #17, !dbg !348
  ret void, !dbg !349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #3 align 16 !dbg !350 {
entry:
  ret void, !dbg !354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #3 align 16 !dbg !355 {
entry:
  ret void, !dbg !356
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__group_cpus_evenly(i32 noundef %startgrp, i32 noundef %numgrps, ptr noundef %node_to_cpumask, ptr noundef %cpu_mask, ptr noundef %nmsk, ptr noundef %masks) #0 align 16 !dbg !357 {
entry:
  %retval = alloca i32, align 4
  %startgrp.addr = alloca i32, align 4
  %numgrps.addr = alloca i32, align 4
  %node_to_cpumask.addr = alloca ptr, align 8
  %cpu_mask.addr = alloca ptr, align 8
  %nmsk.addr = alloca ptr, align 8
  %masks.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %nodes = alloca i32, align 4
  %cpus_per_grp = alloca i32, align 4
  %extra_grps = alloca i32, align 4
  %done = alloca i32, align 4
  %last_grp = alloca i32, align 4
  %curgrp = alloca i32, align 4
  %nodemsk = alloca %struct.nodemask_t, align 8
  %node_groups = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ncpus = alloca i32, align 4
  %v = alloca i32, align 4
  %nv = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %startgrp, ptr %startgrp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %startgrp.addr, metadata !361, metadata !DIExpression()), !dbg !401
  store i32 %numgrps, ptr %numgrps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %numgrps.addr, metadata !362, metadata !DIExpression()), !dbg !402
  store ptr %node_to_cpumask, ptr %node_to_cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_to_cpumask.addr, metadata !363, metadata !DIExpression()), !dbg !403
  store ptr %cpu_mask, ptr %cpu_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_mask.addr, metadata !364, metadata !DIExpression()), !dbg !404
  store ptr %nmsk, ptr %nmsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nmsk.addr, metadata !365, metadata !DIExpression()), !dbg !405
  store ptr %masks, ptr %masks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %masks.addr, metadata !366, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %i, metadata !367, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %n, metadata !368, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 4, ptr %nodes) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %nodes, metadata !369, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpus_per_grp) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %cpus_per_grp, metadata !370, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_grps) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %extra_grps, metadata !371, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %done, metadata !372, metadata !DIExpression()), !dbg !413
  store i32 0, ptr %done, align 4, !dbg !413
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_grp) #16, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %last_grp, metadata !373, metadata !DIExpression()), !dbg !415
  %0 = load i32, ptr %numgrps.addr, align 4, !dbg !416
  store i32 %0, ptr %last_grp, align 4, !dbg !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %curgrp) #16, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %curgrp, metadata !374, metadata !DIExpression()), !dbg !418
  %1 = load i32, ptr %startgrp.addr, align 4, !dbg !419
  store i32 %1, ptr %curgrp, align 4, !dbg !418
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodemsk) #16, !dbg !420
  call void @llvm.dbg.declare(metadata ptr %nodemsk, metadata !375, metadata !DIExpression()), !dbg !421
  call void @llvm.memset.p0.i64(ptr align 8 %nodemsk, i8 0, i64 8, i1 false), !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_groups) #16, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %node_groups, metadata !380, metadata !DIExpression()), !dbg !423
  %2 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !424
  %call = call zeroext i1 @cpumask_empty(ptr noundef %2) #17, !dbg !426
  br i1 %call, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !428

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !429
  %4 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !430
  %call1 = call i32 @get_nodes_in_cpumask(ptr noundef %3, ptr noundef %4, ptr noundef %nodemsk) #17, !dbg !431
  store i32 %call1, ptr %nodes, align 4, !dbg !432
  %5 = load i32, ptr %numgrps.addr, align 4, !dbg !433
  %6 = load i32, ptr %nodes, align 4, !dbg !435
  %cmp = icmp ule i32 %5, %6, !dbg !436
  br i1 %cmp, label %if.then2, label %if.end14, !dbg !437

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @__first_node(ptr noundef %nodemsk) #17, !dbg !438
  store i32 %call3, ptr %n, align 4, !dbg !438
  br label %for.cond, !dbg !438

for.cond:                                         ; preds = %for.inc, %if.then2
  %7 = load i32, ptr %n, align 4, !dbg !441
  %cmp4 = icmp ult i32 %7, 64, !dbg !441
  br i1 %cmp4, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %nmsk.addr, align 8, !dbg !443
  %9 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !445
  %10 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !446
  %11 = load i32, ptr %n, align 4, !dbg !447
  %idxprom = zext i32 %11 to i64, !dbg !446
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %10, i64 %idxprom, !dbg !446
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !446
  %call5 = call zeroext i1 @cpumask_and(ptr noundef %8, ptr noundef %9, ptr noundef %arraydecay) #17, !dbg !448
  %12 = load ptr, ptr %masks.addr, align 8, !dbg !449
  %13 = load i32, ptr %curgrp, align 4, !dbg !450
  %idxprom6 = zext i32 %13 to i64, !dbg !449
  %arrayidx7 = getelementptr %struct.cpumask, ptr %12, i64 %idxprom6, !dbg !449
  %14 = load ptr, ptr %masks.addr, align 8, !dbg !451
  %15 = load i32, ptr %curgrp, align 4, !dbg !452
  %idxprom8 = zext i32 %15 to i64, !dbg !451
  %arrayidx9 = getelementptr %struct.cpumask, ptr %14, i64 %idxprom8, !dbg !451
  %16 = load ptr, ptr %nmsk.addr, align 8, !dbg !453
  call void @cpumask_or(ptr noundef %arrayidx7, ptr noundef %arrayidx9, ptr noundef %16) #17, !dbg !454
  %17 = load i32, ptr %curgrp, align 4, !dbg !455
  %inc = add i32 %17, 1, !dbg !455
  store i32 %inc, ptr %curgrp, align 4, !dbg !455
  %18 = load i32, ptr %last_grp, align 4, !dbg !457
  %cmp10 = icmp eq i32 %inc, %18, !dbg !458
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !459

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %curgrp, align 4, !dbg !460
  br label %if.end12, !dbg !461

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !462

for.inc:                                          ; preds = %if.end12
  %19 = load i32, ptr %n, align 4, !dbg !441
  %call13 = call i32 @__next_node(i32 noundef %19, ptr noundef %nodemsk) #17, !dbg !441
  store i32 %call13, ptr %n, align 4, !dbg !441
  br label %for.cond, !dbg !441, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %numgrps.addr, align 4, !dbg !465
  store i32 %20, ptr %retval, align 4, !dbg !466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !466

if.end14:                                         ; preds = %if.end
  %21 = load i32, ptr @nr_node_ids, align 4, !dbg !467
  %conv = zext i32 %21 to i64, !dbg !467
  %call15 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !468
  store ptr %call15, ptr %node_groups, align 8, !dbg !469
  %22 = load ptr, ptr %node_groups, align 8, !dbg !470
  %tobool = icmp ne ptr %22, null, !dbg !470
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !472

if.then16:                                        ; preds = %if.end14
  store i32 -12, ptr %retval, align 4, !dbg !473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !473

if.end17:                                         ; preds = %if.end14
  %23 = load i32, ptr %numgrps.addr, align 4, !dbg !474
  %24 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !475
  %25 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !476
  %26 = load ptr, ptr %nmsk.addr, align 8, !dbg !477
  %27 = load ptr, ptr %node_groups, align 8, !dbg !478
  %coerce.dive = getelementptr inbounds %struct.nodemask_t, ptr %nodemsk, i32 0, i32 0, !dbg !479
  %28 = load i64, ptr %coerce.dive, align 8, !dbg !479
  call void @alloc_nodes_groups(i32 noundef %23, ptr noundef %24, ptr noundef %25, i64 %28, ptr noundef %26, ptr noundef %27) #17, !dbg !479
  store i32 0, ptr %i, align 4, !dbg !480
  br label %for.cond18, !dbg !481

for.cond18:                                       ; preds = %for.inc85, %if.end17
  %29 = load i32, ptr %i, align 4, !dbg !482
  %30 = load i32, ptr @nr_node_ids, align 4, !dbg !483
  %cmp19 = icmp ult i32 %29, %30, !dbg !484
  br i1 %cmp19, label %for.body21, label %for.end87, !dbg !485

for.body21:                                       ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncpus) #16, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %ncpus, metadata !390, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #16, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %v, metadata !394, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %nv) #16, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %nv, metadata !395, metadata !DIExpression()), !dbg !490
  %31 = load ptr, ptr %node_groups, align 8, !dbg !491
  %32 = load i32, ptr %i, align 4, !dbg !492
  %idxprom22 = zext i32 %32 to i64, !dbg !491
  %arrayidx23 = getelementptr %struct.node_groups, ptr %31, i64 %idxprom22, !dbg !491
  store ptr %arrayidx23, ptr %nv, align 8, !dbg !490
  %33 = load ptr, ptr %nv, align 8, !dbg !493
  %34 = getelementptr inbounds %struct.node_groups, ptr %33, i32 0, i32 1, !dbg !495
  %35 = load i32, ptr %34, align 4, !dbg !495
  %cmp24 = icmp eq i32 %35, -1, !dbg !496
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !497

if.then26:                                        ; preds = %for.body21
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

if.end27:                                         ; preds = %for.body21
  %36 = load ptr, ptr %nmsk.addr, align 8, !dbg !499
  %37 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !500
  %38 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !501
  %39 = load ptr, ptr %nv, align 8, !dbg !502
  %id = getelementptr inbounds %struct.node_groups, ptr %39, i32 0, i32 0, !dbg !503
  %40 = load i32, ptr %id, align 4, !dbg !503
  %idxprom28 = zext i32 %40 to i64, !dbg !501
  %arrayidx29 = getelementptr [1 x %struct.cpumask], ptr %38, i64 %idxprom28, !dbg !501
  %arraydecay30 = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx29, i64 0, i64 0, !dbg !501
  %call31 = call zeroext i1 @cpumask_and(ptr noundef %36, ptr noundef %37, ptr noundef %arraydecay30) #17, !dbg !504
  %41 = load ptr, ptr %nmsk.addr, align 8, !dbg !505
  %call32 = call i32 @cpumask_weight(ptr noundef %41) #17, !dbg !506
  store i32 %call32, ptr %ncpus, align 4, !dbg !507
  %42 = load i32, ptr %ncpus, align 4, !dbg !508
  %tobool33 = icmp ne i32 %42, 0, !dbg !508
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !510

if.then34:                                        ; preds = %if.end27
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !511

if.end35:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !396, metadata !DIExpression()), !dbg !512
  %43 = load ptr, ptr %nv, align 8, !dbg !512
  %44 = getelementptr inbounds %struct.node_groups, ptr %43, i32 0, i32 1, !dbg !512
  %45 = load i32, ptr %44, align 4, !dbg !512
  %46 = load i32, ptr %ncpus, align 4, !dbg !512
  %cmp36 = icmp ugt i32 %45, %46, !dbg !512
  %lnot = xor i1 %cmp36, true, !dbg !512
  %lnot38 = xor i1 %lnot, true, !dbg !512
  %lnot.ext = zext i1 %lnot38 to i32, !dbg !512
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !512
  %47 = load i32, ptr %__ret_warn_on, align 4, !dbg !513
  %tobool39 = icmp ne i32 %47, 0, !dbg !513
  %lnot40 = xor i1 %tobool39, true, !dbg !513
  %lnot42 = xor i1 %lnot40, true, !dbg !513
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !513
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !513
  %expval = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !513
  %tobool45 = icmp ne i64 %expval, 0, !dbg !513
  br i1 %tobool45, label %if.then46, label %if.end56, !dbg !512

if.then46:                                        ; preds = %if.end35
  br label %do.body, !dbg !513

do.body:                                          ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !398, metadata !DIExpression()), !dbg !514
  store i32 2307, ptr %__flags, align 4, !dbg !514
  br label %do.body47, !dbg !514

do.body47:                                        ; preds = %do.body
  br label %do.cond, !dbg !515

do.cond:                                          ; preds = %do.body47
  br label %do.end, !dbg !515

do.end:                                           ; preds = %do.cond
  br label %do.body48, !dbg !514

do.body48:                                        ; preds = %do.end
  %48 = load i32, ptr %__flags, align 4, !dbg !517
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 302, i32 %48, i64 12) #16, !dbg !517, !srcloc !519
  br label %do.cond49, !dbg !517

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !517

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !514

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !520

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !520

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !513
  br label %do.cond54, !dbg !514

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !514

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !514

if.end56:                                         ; preds = %do.end55, %if.end35
  %49 = load i32, ptr %__ret_warn_on, align 4, !dbg !512
  %tobool57 = icmp ne i32 %49, 0, !dbg !512
  %lnot58 = xor i1 %tobool57, true, !dbg !512
  %lnot60 = xor i1 %lnot58, true, !dbg !512
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !512
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !512
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !512
  store i64 %expval63, ptr %tmp, align 8, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !522
  %50 = load i64, ptr %tmp, align 8, !dbg !512
  %51 = load i32, ptr %ncpus, align 4, !dbg !523
  %52 = load ptr, ptr %nv, align 8, !dbg !524
  %53 = getelementptr inbounds %struct.node_groups, ptr %52, i32 0, i32 1, !dbg !525
  %54 = load i32, ptr %53, align 4, !dbg !525
  %55 = load i32, ptr %ncpus, align 4, !dbg !526
  %56 = load ptr, ptr %nv, align 8, !dbg !527
  %57 = getelementptr inbounds %struct.node_groups, ptr %56, i32 0, i32 1, !dbg !528
  %58 = load i32, ptr %57, align 4, !dbg !528
  %div = udiv i32 %55, %58, !dbg !529
  %mul = mul i32 %54, %div, !dbg !530
  %sub = sub i32 %51, %mul, !dbg !531
  store i32 %sub, ptr %extra_grps, align 4, !dbg !532
  store i32 0, ptr %v, align 4, !dbg !533
  br label %for.cond64, !dbg !535

for.cond64:                                       ; preds = %for.inc79, %if.end56
  %59 = load i32, ptr %v, align 4, !dbg !536
  %60 = load ptr, ptr %nv, align 8, !dbg !538
  %61 = getelementptr inbounds %struct.node_groups, ptr %60, i32 0, i32 1, !dbg !539
  %62 = load i32, ptr %61, align 4, !dbg !539
  %cmp65 = icmp ult i32 %59, %62, !dbg !540
  br i1 %cmp65, label %for.body67, label %for.end82, !dbg !541

for.body67:                                       ; preds = %for.cond64
  %63 = load i32, ptr %ncpus, align 4, !dbg !542
  %64 = load ptr, ptr %nv, align 8, !dbg !544
  %65 = getelementptr inbounds %struct.node_groups, ptr %64, i32 0, i32 1, !dbg !545
  %66 = load i32, ptr %65, align 4, !dbg !545
  %div68 = udiv i32 %63, %66, !dbg !546
  store i32 %div68, ptr %cpus_per_grp, align 4, !dbg !547
  %67 = load i32, ptr %extra_grps, align 4, !dbg !548
  %tobool69 = icmp ne i32 %67, 0, !dbg !548
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !550

if.then70:                                        ; preds = %for.body67
  %68 = load i32, ptr %cpus_per_grp, align 4, !dbg !551
  %inc71 = add i32 %68, 1, !dbg !551
  store i32 %inc71, ptr %cpus_per_grp, align 4, !dbg !551
  %69 = load i32, ptr %extra_grps, align 4, !dbg !553
  %dec = add i32 %69, -1, !dbg !553
  store i32 %dec, ptr %extra_grps, align 4, !dbg !553
  br label %if.end72, !dbg !554

if.end72:                                         ; preds = %if.then70, %for.body67
  %70 = load i32, ptr %curgrp, align 4, !dbg !555
  %71 = load i32, ptr %last_grp, align 4, !dbg !557
  %cmp73 = icmp uge i32 %70, %71, !dbg !558
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !559

if.then75:                                        ; preds = %if.end72
  store i32 0, ptr %curgrp, align 4, !dbg !560
  br label %if.end76, !dbg !561

if.end76:                                         ; preds = %if.then75, %if.end72
  %72 = load ptr, ptr %masks.addr, align 8, !dbg !562
  %73 = load i32, ptr %curgrp, align 4, !dbg !563
  %idxprom77 = zext i32 %73 to i64, !dbg !562
  %arrayidx78 = getelementptr %struct.cpumask, ptr %72, i64 %idxprom77, !dbg !562
  %74 = load ptr, ptr %nmsk.addr, align 8, !dbg !564
  %75 = load i32, ptr %cpus_per_grp, align 4, !dbg !565
  call void @grp_spread_init_one(ptr noundef %arrayidx78, ptr noundef %74, i32 noundef %75) #17, !dbg !566
  br label %for.inc79, !dbg !567

for.inc79:                                        ; preds = %if.end76
  %76 = load i32, ptr %v, align 4, !dbg !568
  %inc80 = add i32 %76, 1, !dbg !568
  store i32 %inc80, ptr %v, align 4, !dbg !568
  %77 = load i32, ptr %curgrp, align 4, !dbg !569
  %inc81 = add i32 %77, 1, !dbg !569
  store i32 %inc81, ptr %curgrp, align 4, !dbg !569
  br label %for.cond64, !dbg !570, !llvm.loop !571

for.end82:                                        ; preds = %for.cond64
  %78 = load ptr, ptr %nv, align 8, !dbg !573
  %79 = getelementptr inbounds %struct.node_groups, ptr %78, i32 0, i32 1, !dbg !574
  %80 = load i32, ptr %79, align 4, !dbg !574
  %81 = load i32, ptr %done, align 4, !dbg !575
  %add = add i32 %81, %80, !dbg !575
  store i32 %add, ptr %done, align 4, !dbg !575
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !576
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %for.end82, %if.then34, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %nv) #16, !dbg !576
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #16, !dbg !576
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncpus) #16, !dbg !576
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc85
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc85, !dbg !577

for.inc85:                                        ; preds = %cleanup.cont, %cleanup
  %82 = load i32, ptr %i, align 4, !dbg !578
  %inc86 = add i32 %82, 1, !dbg !578
  store i32 %inc86, ptr %i, align 4, !dbg !578
  br label %for.cond18, !dbg !579, !llvm.loop !580

for.end87:                                        ; preds = %for.cond18
  %83 = load ptr, ptr %node_groups, align 8, !dbg !582
  call void @kfree(ptr noundef %83) #17, !dbg !583
  %84 = load i32, ptr %done, align 4, !dbg !584
  store i32 %84, ptr %retval, align 4, !dbg !585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !585

cleanup88:                                        ; preds = %for.end87, %if.then16, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_groups) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodemsk) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %curgrp) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_grp) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_grps) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpus_per_grp) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %nodes) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !586
  %85 = load i32, ptr %retval, align 4, !dbg !586
  ret i32 %85, !dbg !586

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_andnot(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #3 align 16 !dbg !587 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !591, metadata !DIExpression()), !dbg !594
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !592, metadata !DIExpression()), !dbg !595
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !593, metadata !DIExpression()), !dbg !596
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !597
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !597
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !597
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !598
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !598
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !598
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !599
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !599
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !599
  %call = call zeroext i1 @bitmap_andnot(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #17, !dbg !600
  ret i1 %call, !dbg !601
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_node_to_cpumask(ptr noundef %masks) #0 align 16 !dbg !602 {
entry:
  %masks.addr = alloca ptr, align 8
  %node = alloca i32, align 4
  store ptr %masks, ptr %masks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %masks.addr, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #16, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %node, metadata !605, metadata !DIExpression()), !dbg !608
  store i32 0, ptr %node, align 4, !dbg !609
  br label %for.cond, !dbg !611

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %node, align 4, !dbg !612
  %1 = load i32, ptr @nr_node_ids, align 4, !dbg !614
  %cmp = icmp ult i32 %0, %1, !dbg !615
  br i1 %cmp, label %for.body, label %for.end, !dbg !616

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %masks.addr, align 8, !dbg !617
  %3 = load i32, ptr %node, align 4, !dbg !618
  %idxprom = sext i32 %3 to i64, !dbg !617
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %2, i64 %idxprom, !dbg !617
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !617
  call void @free_cpumask_var(ptr noundef %arraydecay) #17, !dbg !619
  br label %for.inc, !dbg !619

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %node, align 4, !dbg !620
  %inc = add i32 %4, 1, !dbg !620
  store i32 %inc, ptr %node, align 4, !dbg !620
  br label %for.cond, !dbg !621, !llvm.loop !622

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %masks.addr, align 8, !dbg !624
  call void @kfree(ptr noundef %5) #17, !dbg !625
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #16, !dbg !626
  ret void, !dbg !626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #3 align 16 !dbg !627 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !631, metadata !DIExpression()), !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !634 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #3 align 16 !dbg !639 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !641, metadata !DIExpression()), !dbg !642
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !643
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !643
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !643
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !644
  ret void, !dbg !645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #3 align 16 !dbg !646 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !652, metadata !DIExpression()), !dbg !655
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %len, metadata !654, metadata !DIExpression()), !dbg !658
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !659
  %add = add i32 %0, 63, !dbg !659
  %and = and i32 %add, -64, !dbg !659
  %div = udiv i32 %and, 8, !dbg !659
  store i32 %div, ptr %len, align 4, !dbg !658
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !660
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !660
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !660

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !660
  %cmp = icmp ule i32 %3, 64, !dbg !660
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !660

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !660
  %cmp2 = icmp ugt i32 %4, 0, !dbg !660
  br i1 %cmp2, label %if.then, label %if.else, !dbg !662

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !663
  store i64 0, ptr %5, align 8, !dbg !664
  br label %if.end, !dbg !665

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !666
  %7 = load i32, ptr %len, align 4, !dbg !667
  %conv = zext i32 %7 to i64, !dbg !667
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !668
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !669
  ret void, !dbg !669
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !670 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !672, metadata !DIExpression()), !dbg !676
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !673, metadata !DIExpression()), !dbg !677
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !674, metadata !DIExpression()), !dbg !678
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !675, metadata !DIExpression()), !dbg !680
  %0 = load i64, ptr %n.addr, align 8, !dbg !681
  %1 = load i64, ptr %size.addr, align 8, !dbg !681
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !681
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !681
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !681
  store i64 %4, ptr %bytes, align 8, !dbg !681
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !681
  %lnot = xor i1 %call, true, !dbg !681
  %lnot1 = xor i1 %lnot, true, !dbg !681
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !681
  %conv = sext i32 %lnot.ext to i64, !dbg !681
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !681
  %tobool = icmp ne i64 %expval, 0, !dbg !681
  br i1 %tobool, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !684

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !685
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !687
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !688

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !689
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !690
  br i1 %8, label %if.then2, label %if.end4, !dbg !691

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !692
  %10 = load i32, ptr %flags.addr, align 4, !dbg !693
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !694
  store ptr %call3, ptr %retval, align 8, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !695

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !696
  %12 = load i32, ptr %flags.addr, align 4, !dbg !697
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !698
  store ptr %call5, ptr %retval, align 8, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !700
  %13 = load ptr, ptr %retval, align 8, !dbg !700
  ret ptr %13, !dbg !700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !701 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !706, metadata !DIExpression()), !dbg !707
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !708, !range !709, !noundef !710
  %tobool = trunc i8 %0 to i1, !dbg !708
  %lnot = xor i1 %tobool, true, !dbg !708
  %lnot1 = xor i1 %lnot, true, !dbg !708
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !708
  %conv = sext i32 %lnot.ext to i64, !dbg !708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !708
  %tobool2 = icmp ne i64 %expval, 0, !dbg !708
  ret i1 %tobool2, !dbg !711
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !712 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !716, metadata !DIExpression()), !dbg !721
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !717, metadata !DIExpression()), !dbg !722
  %0 = load i64, ptr %size.addr, align 8, !dbg !723
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !724
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !725

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !726
  %tobool = icmp ne i64 %2, 0, !dbg !726
  br i1 %tobool, label %if.then, label %if.end7, !dbg !727

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %index, metadata !718, metadata !DIExpression()), !dbg !729
  %3 = load i64, ptr %size.addr, align 8, !dbg !730
  %cmp = icmp ugt i64 %3, 8192, !dbg !732
  br i1 %cmp, label %if.then1, label %if.end, !dbg !733

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !734
  %5 = load i32, ptr %flags.addr, align 4, !dbg !735
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !736
  store ptr %call, ptr %retval, align 8, !dbg !737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !737

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !738
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !738
  store i32 %call2, ptr %index, align 4, !dbg !739
  %7 = load i32, ptr %flags.addr, align 4, !dbg !740
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !741
  %9 = ptrtoint ptr %8 to i64, !dbg !741
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !742
  %idxprom = zext i32 %call3 to i64, !dbg !743
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !743
  %10 = load i32, ptr %index, align 4, !dbg !744
  %idxprom4 = zext i32 %10 to i64, !dbg !743
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !743
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !743
  %12 = load i32, ptr %flags.addr, align 4, !dbg !745
  %13 = load i64, ptr %size.addr, align 8, !dbg !746
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !747
  store ptr %call6, ptr %retval, align 8, !dbg !748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !748

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !749
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !750
  %15 = load i32, ptr %flags.addr, align 4, !dbg !751
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !752
  store ptr %call8, ptr %retval, align 8, !dbg !753
  br label %return, !dbg !753

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !754
  ret ptr %16, !dbg !754
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !755 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !756 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !757 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !761, metadata !DIExpression()), !dbg !763
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !762, metadata !DIExpression()), !dbg !764
  %0 = load i64, ptr %size.addr, align 8, !dbg !765
  %tobool = icmp ne i64 %0, 0, !dbg !765
  br i1 %tobool, label %if.end, label %if.then, !dbg !767

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !768
  br label %return, !dbg !768

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !769
  %cmp = icmp ule i64 %1, 8, !dbg !771
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !772

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !773
  br label %return, !dbg !773

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !774
  %cmp3 = icmp ugt i64 %2, 64, !dbg !776
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !777

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !778
  %cmp4 = icmp ule i64 %3, 96, !dbg !779
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !780

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !781
  br label %return, !dbg !781

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !782
  %cmp7 = icmp ugt i64 %4, 128, !dbg !784
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !785

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !786
  %cmp9 = icmp ule i64 %5, 192, !dbg !787
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !788

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !789
  br label %return, !dbg !789

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !790
  %cmp12 = icmp ule i64 %6, 8, !dbg !792
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !793

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !794
  br label %return, !dbg !794

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !795
  %cmp15 = icmp ule i64 %7, 16, !dbg !797
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !798

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !800
  %cmp18 = icmp ule i64 %8, 32, !dbg !802
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !803

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !804
  br label %return, !dbg !804

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !805
  %cmp21 = icmp ule i64 %9, 64, !dbg !807
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !808

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !809
  br label %return, !dbg !809

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !810
  %cmp24 = icmp ule i64 %10, 128, !dbg !812
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !813

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !814
  br label %return, !dbg !814

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !815
  %cmp27 = icmp ule i64 %11, 256, !dbg !817
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !818

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !820
  %cmp30 = icmp ule i64 %12, 512, !dbg !822
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !823

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !824
  br label %return, !dbg !824

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !825
  %cmp33 = icmp ule i64 %13, 1024, !dbg !827
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !828

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !829
  br label %return, !dbg !829

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !830
  %cmp36 = icmp ule i64 %14, 2048, !dbg !832
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !833

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !835
  %cmp39 = icmp ule i64 %15, 4096, !dbg !837
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !838

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !840
  %cmp42 = icmp ule i64 %16, 8192, !dbg !842
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !843

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !844
  br label %return, !dbg !844

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !845
  %cmp45 = icmp ule i64 %17, 16384, !dbg !847
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !848

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !849
  br label %return, !dbg !849

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !850
  %cmp48 = icmp ule i64 %18, 32768, !dbg !852
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !853

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !854
  br label %return, !dbg !854

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !855
  %cmp51 = icmp ule i64 %19, 65536, !dbg !857
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !858

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !859
  br label %return, !dbg !859

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !860
  %cmp54 = icmp ule i64 %20, 131072, !dbg !862
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !863

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !864
  br label %return, !dbg !864

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !865
  %cmp57 = icmp ule i64 %21, 262144, !dbg !867
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !868

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !870
  %cmp60 = icmp ule i64 %22, 524288, !dbg !872
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !873

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !874
  br label %return, !dbg !874

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !875
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !877
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !878

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !879
  br label %return, !dbg !879

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !880
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !882
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !883

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !884
  br label %return, !dbg !884

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !885, !range !709, !noundef !710
  %tobool69 = trunc i8 %25 to i1, !dbg !885
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !887

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !888

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !889, !srcloc !892
  unreachable, !dbg !889

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !893

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !894

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !895

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !897

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !895

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !899, !srcloc !901
  br label %do.end75, !dbg !899

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !895

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !902
  br label %return, !dbg !902

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !903
  ret i32 %26, !dbg !903
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !904 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !910 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !914, metadata !DIExpression()), !dbg !916
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !915, metadata !DIExpression()), !dbg !917
  %0 = load i32, ptr %flags.addr, align 4, !dbg !918
  %and = and i32 %0, 17, !dbg !918
  %cmp = icmp eq i32 %and, 0, !dbg !918
  %lnot = xor i1 %cmp, true, !dbg !918
  %lnot1 = xor i1 %lnot, true, !dbg !918
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !918
  %conv = sext i32 %lnot.ext to i64, !dbg !918
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !918
  %tobool = icmp ne i64 %expval, 0, !dbg !918
  br i1 %tobool, label %if.then, label %if.end, !dbg !920

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !921
  br label %return, !dbg !921

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !922
  %and2 = and i32 %1, 1, !dbg !924
  %tobool3 = icmp ne i32 %and2, 0, !dbg !924
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !925

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !926
  br label %return, !dbg !926

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !927
  br label %return, !dbg !927

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !929
  ret i32 %2, !dbg !929
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !930 dso_local void @__compiletime_assert_117() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !931 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !938, metadata !DIExpression()), !dbg !944
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !939, metadata !DIExpression()), !dbg !945
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !940, metadata !DIExpression()), !dbg !946
  %0 = load i64, ptr %size.addr, align 8, !dbg !947
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !947
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !947

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !947
  %cmp = icmp ule i64 %2, 64, !dbg !947
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !947

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !947
  %cmp2 = icmp ugt i64 %3, 0, !dbg !947
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !948

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %val, metadata !941, metadata !DIExpression()), !dbg !950
  %4 = load i64, ptr %offset.addr, align 8, !dbg !951
  %5 = load i64, ptr %size.addr, align 8, !dbg !951
  %cmp3 = icmp uge i64 %4, %5, !dbg !951
  %lnot = xor i1 %cmp3, true, !dbg !951
  %lnot4 = xor i1 %lnot, true, !dbg !951
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !951
  %conv = sext i32 %lnot.ext to i64, !dbg !951
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !951
  %tobool = icmp ne i64 %expval, 0, !dbg !951
  br i1 %tobool, label %if.then5, label %if.end, !dbg !953

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !954
  store i64 %6, ptr %retval, align 8, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !956
  %8 = load i64, ptr %7, align 8, !dbg !957
  %9 = load i64, ptr %offset.addr, align 8, !dbg !958
  %shl = shl i64 1, %9, !dbg !958
  %sub = sub i64 -1, %shl, !dbg !958
  %add = add i64 %sub, 1, !dbg !958
  %10 = load i64, ptr %size.addr, align 8, !dbg !958
  %sub6 = sub i64 %10, 1, !dbg !958
  %sub7 = sub i64 63, %sub6, !dbg !958
  %shr = lshr i64 -1, %sub7, !dbg !958
  %and = and i64 %add, %shr, !dbg !958
  %add8 = add i64 0, %and, !dbg !958
  %and9 = and i64 %8, %add8, !dbg !959
  store i64 %and9, ptr %val, align 8, !dbg !960
  %11 = load i64, ptr %val, align 8, !dbg !961
  %tobool10 = icmp ne i64 %11, 0, !dbg !961
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !961

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !962
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !962
  br i1 %13, label %cond.true11, label %cond.false, !dbg !962

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !962
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !962
  %cast = trunc i64 %15 to i32, !dbg !962
  %conv12 = sext i32 %cast to i64, !dbg !962
  br label %cond.end, !dbg !962

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !962
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !962
  br label %cond.end, !dbg !962

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !962
  br label %cond.end14, !dbg !961

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !963
  br label %cond.end14, !dbg !961

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !961
  store i64 %cond15, ptr %retval, align 8, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !965
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !966
  %19 = load i64, ptr %size.addr, align 8, !dbg !967
  %20 = load i64, ptr %offset.addr, align 8, !dbg !968
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !969
  store i64 %call17, ptr %retval, align 8, !dbg !970
  br label %return, !dbg !970

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !971
  ret i64 %21, !dbg !971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #11 align 16 !dbg !972 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !976, metadata !DIExpression()), !dbg !978
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !977, metadata !DIExpression()), !dbg !979
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !980
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !981
  %conv = zext i32 %call to i64, !dbg !981
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !982
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !982
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !982
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !983
  ret void, !dbg !984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #3 align 16 !dbg !985 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !990, metadata !DIExpression()), !dbg !996
  br label %do.body, !dbg !997

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !991, metadata !DIExpression()), !dbg !998
  store ptr null, ptr %__vpp_verify, align 8, !dbg !998
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !997
  br label %do.end, !dbg !998

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !994, metadata !DIExpression()), !dbg !999
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !999
  %1 = load i64, ptr %__ptr, align 8, !dbg !999
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !999
  %idxprom = sext i32 %2 to i64, !dbg !999
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !999
  %3 = load i64, ptr %arrayidx, align 8, !dbg !999
  %add = add i64 %1, %3, !dbg !999
  %4 = inttoptr i64 %add to ptr, !dbg !999
  store ptr %4, ptr %tmp1, align 8, !dbg !999
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !997
  %5 = load ptr, ptr %tmp1, align 8, !dbg !999
  store ptr %5, ptr %tmp, align 8, !dbg !998
  %6 = load ptr, ptr %tmp, align 8, !dbg !997
  %7 = load i32, ptr %6, align 4, !dbg !1000
  ret i32 %7, !dbg !1001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #11 align 16 !dbg !1002 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  %0 = load i64, ptr %word.addr, align 8, !dbg !1009
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #22, !dbg !1010, !srcloc !1011
  store i64 %1, ptr %word.addr, align 8, !dbg !1010
  %2 = load i64, ptr %word.addr, align 8, !dbg !1012
  ret i64 %2, !dbg !1013
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1014 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1015 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1022, metadata !DIExpression()), !dbg !1024
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1023, metadata !DIExpression()), !dbg !1025
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1026
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1027
  %div = sdiv i64 %1, 64, !dbg !1027
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1028
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1029
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1030
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1031
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1032
  ret void, !dbg !1033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #11 align 16 !dbg !1034 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1040
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !1041
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1042
  ret i32 %1, !dbg !1043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !1044 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1052, metadata !DIExpression()), !dbg !1054
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1053, metadata !DIExpression()), !dbg !1055
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1056
  %1 = load i64, ptr %size.addr, align 8, !dbg !1057
  %conv = trunc i64 %1 to i32, !dbg !1057
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1058
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1059
  %3 = load i64, ptr %size.addr, align 8, !dbg !1059
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !1059
  ret void, !dbg !1060
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1061 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1063, metadata !DIExpression()), !dbg !1065
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1064, metadata !DIExpression()), !dbg !1066
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1067
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1069
  br i1 %1, label %if.then, label %if.else, !dbg !1070

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1071
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1071
  %shr = ashr i64 %3, 3, !dbg !1071
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1071
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1073
  %and = and i64 %4, 7, !dbg !1073
  %sh_prom = trunc i64 %and to i32, !dbg !1073
  %shl = shl i32 1, %sh_prom, !dbg !1073
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !1074, !srcloc !1075
  br label %if.end, !dbg !1076

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1077
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1079
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !1080, !srcloc !1081
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1083 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1088, metadata !DIExpression()), !dbg !1090
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1089, metadata !DIExpression()), !dbg !1091
  ret i1 true, !dbg !1092
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1093 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1097, metadata !DIExpression()), !dbg !1100
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1098, metadata !DIExpression()), !dbg !1101
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1099, metadata !DIExpression()), !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #11 align 16 !dbg !1104 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1108, metadata !DIExpression()), !dbg !1110
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1109, metadata !DIExpression()), !dbg !1111
  ret void, !dbg !1112
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #3 align 16 !dbg !1113 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1117, metadata !DIExpression()), !dbg !1121
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1118, metadata !DIExpression()), !dbg !1122
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1120, metadata !DIExpression()), !dbg !1125
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1126
  %add = add i32 %0, 63, !dbg !1126
  %and = and i32 %add, -64, !dbg !1126
  %div = udiv i32 %and, 8, !dbg !1126
  store i32 %div, ptr %len, align 4, !dbg !1125
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !1127
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !1127
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !1127

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1127
  %cmp = icmp ule i32 %3, 64, !dbg !1127
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !1127

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !1127
  %cmp2 = icmp ugt i32 %4, 0, !dbg !1127
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1129

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !1130
  %6 = load i64, ptr %5, align 8, !dbg !1131
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !1132
  store i64 %6, ptr %7, align 8, !dbg !1133
  br label %if.end, !dbg !1134

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1135
  %9 = load ptr, ptr %src.addr, align 8, !dbg !1136
  %10 = load i32, ptr %len, align 4, !dbg !1137
  %conv = zext i32 %10 to i64, !dbg !1137
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !1138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !1139
  ret void, !dbg !1139
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #3 align 16 !dbg !1140 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1146
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1146
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1146
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !1147
  ret i1 %call, !dbg !1148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_nodes_in_cpumask(ptr noundef %node_to_cpumask, ptr noundef %mask, ptr noundef %nodemsk) #0 align 16 !dbg !1149 {
entry:
  %node_to_cpumask.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %nodemsk.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %nodes = alloca i32, align 4
  store ptr %node_to_cpumask, ptr %node_to_cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_to_cpumask.addr, metadata !1154, metadata !DIExpression()), !dbg !1159
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1155, metadata !DIExpression()), !dbg !1160
  store ptr %nodemsk, ptr %nodemsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodemsk.addr, metadata !1156, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1157, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 4, ptr %nodes) #16, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %nodes, metadata !1158, metadata !DIExpression()), !dbg !1164
  store i32 0, ptr %nodes, align 4, !dbg !1164
  %call = call i32 @__first_node(ptr noundef @node_states) #17, !dbg !1165
  store i32 %call, ptr %n, align 4, !dbg !1165
  br label %for.cond, !dbg !1165

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !1167
  %cmp = icmp slt i32 %0, 64, !dbg !1167
  br i1 %cmp, label %for.body, label %for.end, !dbg !1165

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !1169
  %2 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !1172
  %3 = load i32, ptr %n, align 4, !dbg !1173
  %idxprom = sext i32 %3 to i64, !dbg !1172
  %arrayidx = getelementptr [1 x %struct.cpumask], ptr %2, i64 %idxprom, !dbg !1172
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !1172
  %call1 = call zeroext i1 @cpumask_intersects(ptr noundef %1, ptr noundef %arraydecay) #17, !dbg !1174
  br i1 %call1, label %if.then, label %if.end, !dbg !1175

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %n, align 4, !dbg !1176
  %5 = load ptr, ptr %nodemsk.addr, align 8, !dbg !1176
  call void @__node_set(i32 noundef %4, ptr noundef %5) #17, !dbg !1176
  %6 = load i32, ptr %nodes, align 4, !dbg !1178
  %inc = add i32 %6, 1, !dbg !1178
  store i32 %inc, ptr %nodes, align 4, !dbg !1178
  br label %if.end, !dbg !1179

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1180

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %n, align 4, !dbg !1167
  %call2 = call i32 @__next_node(i32 noundef %7, ptr noundef @node_states) #17, !dbg !1167
  store i32 %call2, ptr %n, align 4, !dbg !1167
  br label %for.cond, !dbg !1167, !llvm.loop !1181

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %nodes, align 4, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 4, ptr %nodes) #16, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !1184
  ret i32 %8, !dbg !1185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #3 align 16 !dbg !1186 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x83 = alloca i32, align 4
  %__UNIQUE_ID___y84 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1192, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x83) #16, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x83, metadata !1193, metadata !DIExpression()), !dbg !1197
  store i32 64, ptr %__UNIQUE_ID___x83, align 4, !dbg !1197
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y84) #16, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y84, metadata !1195, metadata !DIExpression()), !dbg !1197
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1197
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !1197
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1197
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #17, !dbg !1197
  %conv = trunc i64 %call to i32, !dbg !1197
  store i32 %conv, ptr %__UNIQUE_ID___y84, align 4, !dbg !1197
  %1 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !1197
  %2 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !1197
  %cmp = icmp ult i32 %1, %2, !dbg !1197
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1197

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !1197
  br label %cond.end, !dbg !1197

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !1197
  br label %cond.end, !dbg !1197

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1197
  store i32 %cond, ptr %tmp, align 4, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y84) #16, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x83) #16, !dbg !1198
  %5 = load i32, ptr %tmp, align 4, !dbg !1197
  ret i32 %5, !dbg !1199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_and(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #3 align 16 !dbg !1200 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1202, metadata !DIExpression()), !dbg !1205
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !1203, metadata !DIExpression()), !dbg !1206
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !1204, metadata !DIExpression()), !dbg !1207
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !1208
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1208
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1208
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !1209
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1209
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !1209
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !1210
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !1210
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !1210
  %call = call zeroext i1 @bitmap_and(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #17, !dbg !1211
  ret i1 %call, !dbg !1212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_or(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #3 align 16 !dbg !1213 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1217, metadata !DIExpression()), !dbg !1220
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !1218, metadata !DIExpression()), !dbg !1221
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !1219, metadata !DIExpression()), !dbg !1222
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !1223
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1223
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1223
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !1224
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1224
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !1224
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !1225
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !1225
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !1225
  call void @bitmap_or(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #17, !dbg !1226
  ret void, !dbg !1227
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__next_node(i32 noundef %n, ptr noundef %srcp) #3 align 16 !dbg !1228 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x85 = alloca i32, align 4
  %__UNIQUE_ID___y86 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1232, metadata !DIExpression()), !dbg !1237
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1233, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x85) #16, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x85, metadata !1234, metadata !DIExpression()), !dbg !1239
  store i32 64, ptr %__UNIQUE_ID___x85, align 4, !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y86) #16, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y86, metadata !1236, metadata !DIExpression()), !dbg !1239
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1239
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !1239
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1239
  %1 = load i32, ptr %n.addr, align 4, !dbg !1239
  %add = add i32 %1, 1, !dbg !1239
  %conv = sext i32 %add to i64, !dbg !1239
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #17, !dbg !1239
  %conv1 = trunc i64 %call to i32, !dbg !1239
  store i32 %conv1, ptr %__UNIQUE_ID___y86, align 4, !dbg !1239
  %2 = load i32, ptr %__UNIQUE_ID___x85, align 4, !dbg !1239
  %3 = load i32, ptr %__UNIQUE_ID___y86, align 4, !dbg !1239
  %cmp = icmp ult i32 %2, %3, !dbg !1239
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1239

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x85, align 4, !dbg !1239
  br label %cond.end, !dbg !1239

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y86, align 4, !dbg !1239
  br label %cond.end, !dbg !1239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !1239
  store i32 %cond, ptr %tmp, align 4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y86) #16, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x85) #16, !dbg !1240
  %6 = load i32, ptr %tmp, align 4, !dbg !1239
  ret i32 %6, !dbg !1241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @alloc_nodes_groups(i32 noundef %numgrps, ptr noundef %node_to_cpumask, ptr noundef %cpu_mask, i64 %nodemsk.coerce, ptr noundef %nmsk, ptr noundef %node_groups) #0 align 16 !dbg !1242 {
entry:
  %nodemsk = alloca %struct.nodemask_t, align 8
  %numgrps.addr = alloca i32, align 4
  %node_to_cpumask.addr = alloca ptr, align 8
  %cpu_mask.addr = alloca ptr, align 8
  %nmsk.addr = alloca ptr, align 8
  %node_groups.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %remaining_ncpus = alloca i32, align 4
  %ncpus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x205 = alloca i32, align 4
  %__UNIQUE_ID___y206 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %ncpus20 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %__UNIQUE_ID___x207 = alloca i32, align 4
  %__UNIQUE_ID___y208 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %__ret_warn_on65 = alloca i32, align 4
  %__flags82 = alloca i32, align 4
  %tmp95 = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.nodemask_t, ptr %nodemsk, i32 0, i32 0
  store i64 %nodemsk.coerce, ptr %coerce.dive, align 8
  store i32 %numgrps, ptr %numgrps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %numgrps.addr, metadata !1246, metadata !DIExpression()), !dbg !1279
  store ptr %node_to_cpumask, ptr %node_to_cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_to_cpumask.addr, metadata !1247, metadata !DIExpression()), !dbg !1280
  store ptr %cpu_mask, ptr %cpu_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu_mask.addr, metadata !1248, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %nodemsk, metadata !1249, metadata !DIExpression()), !dbg !1282
  store ptr %nmsk, ptr %nmsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nmsk.addr, metadata !1250, metadata !DIExpression()), !dbg !1283
  store ptr %node_groups, ptr %node_groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_groups.addr, metadata !1251, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1252, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining_ncpus) #16, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %remaining_ncpus, metadata !1253, metadata !DIExpression()), !dbg !1287
  store i32 0, ptr %remaining_ncpus, align 4, !dbg !1287
  store i32 0, ptr %n, align 4, !dbg !1288
  br label %for.cond, !dbg !1290

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !1291
  %1 = load i32, ptr @nr_node_ids, align 4, !dbg !1293
  %cmp = icmp ult i32 %0, %1, !dbg !1294
  br i1 %cmp, label %for.body, label %for.end, !dbg !1295

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %n, align 4, !dbg !1296
  %3 = load ptr, ptr %node_groups.addr, align 8, !dbg !1298
  %4 = load i32, ptr %n, align 4, !dbg !1299
  %idxprom = zext i32 %4 to i64, !dbg !1298
  %arrayidx = getelementptr %struct.node_groups, ptr %3, i64 %idxprom, !dbg !1298
  %id = getelementptr inbounds %struct.node_groups, ptr %arrayidx, i32 0, i32 0, !dbg !1300
  store i32 %2, ptr %id, align 4, !dbg !1301
  %5 = load ptr, ptr %node_groups.addr, align 8, !dbg !1302
  %6 = load i32, ptr %n, align 4, !dbg !1303
  %idxprom1 = zext i32 %6 to i64, !dbg !1302
  %arrayidx2 = getelementptr %struct.node_groups, ptr %5, i64 %idxprom1, !dbg !1302
  %7 = getelementptr inbounds %struct.node_groups, ptr %arrayidx2, i32 0, i32 1, !dbg !1304
  store i32 -1, ptr %7, align 4, !dbg !1305
  br label %for.inc, !dbg !1306

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %n, align 4, !dbg !1307
  %inc = add i32 %8, 1, !dbg !1307
  store i32 %inc, ptr %n, align 4, !dbg !1307
  br label %for.cond, !dbg !1308, !llvm.loop !1309

for.end:                                          ; preds = %for.cond
  %call = call i32 @__first_node(ptr noundef %nodemsk) #17, !dbg !1311
  store i32 %call, ptr %n, align 4, !dbg !1311
  br label %for.cond3, !dbg !1311

for.cond3:                                        ; preds = %for.inc12, %for.end
  %9 = load i32, ptr %n, align 4, !dbg !1312
  %cmp4 = icmp ult i32 %9, 64, !dbg !1312
  br i1 %cmp4, label %for.body5, label %for.end14, !dbg !1311

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncpus) #16, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %ncpus, metadata !1254, metadata !DIExpression()), !dbg !1314
  %10 = load ptr, ptr %nmsk.addr, align 8, !dbg !1315
  %11 = load ptr, ptr %cpu_mask.addr, align 8, !dbg !1316
  %12 = load ptr, ptr %node_to_cpumask.addr, align 8, !dbg !1317
  %13 = load i32, ptr %n, align 4, !dbg !1318
  %idxprom6 = zext i32 %13 to i64, !dbg !1317
  %arrayidx7 = getelementptr [1 x %struct.cpumask], ptr %12, i64 %idxprom6, !dbg !1317
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx7, i64 0, i64 0, !dbg !1317
  %call8 = call zeroext i1 @cpumask_and(ptr noundef %10, ptr noundef %11, ptr noundef %arraydecay) #17, !dbg !1319
  %14 = load ptr, ptr %nmsk.addr, align 8, !dbg !1320
  %call9 = call i32 @cpumask_weight(ptr noundef %14) #17, !dbg !1321
  store i32 %call9, ptr %ncpus, align 4, !dbg !1322
  %15 = load i32, ptr %ncpus, align 4, !dbg !1323
  %tobool = icmp ne i32 %15, 0, !dbg !1323
  br i1 %tobool, label %if.end, label %if.then, !dbg !1325

if.then:                                          ; preds = %for.body5
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1326

if.end:                                           ; preds = %for.body5
  %16 = load i32, ptr %ncpus, align 4, !dbg !1327
  %17 = load i32, ptr %remaining_ncpus, align 4, !dbg !1328
  %add = add i32 %17, %16, !dbg !1328
  store i32 %add, ptr %remaining_ncpus, align 4, !dbg !1328
  %18 = load i32, ptr %ncpus, align 4, !dbg !1329
  %19 = load ptr, ptr %node_groups.addr, align 8, !dbg !1330
  %20 = load i32, ptr %n, align 4, !dbg !1331
  %idxprom10 = zext i32 %20 to i64, !dbg !1330
  %arrayidx11 = getelementptr %struct.node_groups, ptr %19, i64 %idxprom10, !dbg !1330
  %21 = getelementptr inbounds %struct.node_groups, ptr %arrayidx11, i32 0, i32 1, !dbg !1332
  store i32 %18, ptr %21, align 4, !dbg !1333
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1334
  br label %cleanup, !dbg !1334

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncpus) #16, !dbg !1334
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc12
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc12, !dbg !1335

for.inc12:                                        ; preds = %cleanup.cont, %cleanup
  %22 = load i32, ptr %n, align 4, !dbg !1312
  %call13 = call i32 @__next_node(i32 noundef %22, ptr noundef %nodemsk) #17, !dbg !1312
  store i32 %call13, ptr %n, align 4, !dbg !1312
  br label %for.cond3, !dbg !1312, !llvm.loop !1336

for.end14:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x205) #16, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x205, metadata !1258, metadata !DIExpression()), !dbg !1338
  %23 = load i32, ptr %remaining_ncpus, align 4, !dbg !1338
  store i32 %23, ptr %__UNIQUE_ID___x205, align 4, !dbg !1338
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y206) #16, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y206, metadata !1260, metadata !DIExpression()), !dbg !1338
  %24 = load i32, ptr %numgrps.addr, align 4, !dbg !1338
  store i32 %24, ptr %__UNIQUE_ID___y206, align 4, !dbg !1338
  %25 = load i32, ptr %__UNIQUE_ID___x205, align 4, !dbg !1338
  %26 = load i32, ptr %__UNIQUE_ID___y206, align 4, !dbg !1338
  %cmp15 = icmp ult i32 %25, %26, !dbg !1338
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !1338

cond.true:                                        ; preds = %for.end14
  %27 = load i32, ptr %__UNIQUE_ID___x205, align 4, !dbg !1338
  br label %cond.end, !dbg !1338

cond.false:                                       ; preds = %for.end14
  %28 = load i32, ptr %__UNIQUE_ID___y206, align 4, !dbg !1338
  br label %cond.end, !dbg !1338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !1338
  store i32 %cond, ptr %tmp, align 4, !dbg !1338
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y206) #16, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x205) #16, !dbg !1339
  %29 = load i32, ptr %tmp, align 4, !dbg !1338
  store i32 %29, ptr %numgrps.addr, align 4, !dbg !1340
  %30 = load ptr, ptr %node_groups.addr, align 8, !dbg !1341
  %31 = load i32, ptr @nr_node_ids, align 4, !dbg !1342
  %conv = zext i32 %31 to i64, !dbg !1342
  call void @sort(ptr noundef %30, i64 noundef %conv, i64 noundef 8, ptr noundef @ncpus_cmp_func, ptr noundef null) #17, !dbg !1343
  store i32 0, ptr %n, align 4, !dbg !1344
  br label %for.cond16, !dbg !1345

for.cond16:                                       ; preds = %for.inc110, %cond.end
  %32 = load i32, ptr %n, align 4, !dbg !1346
  %33 = load i32, ptr @nr_node_ids, align 4, !dbg !1347
  %cmp17 = icmp ult i32 %32, %33, !dbg !1348
  br i1 %cmp17, label %for.body19, label %for.end112, !dbg !1349

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngroups) #16, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %ngroups, metadata !1261, metadata !DIExpression()), !dbg !1351
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncpus20) #16, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %ncpus20, metadata !1265, metadata !DIExpression()), !dbg !1352
  %34 = load ptr, ptr %node_groups.addr, align 8, !dbg !1353
  %35 = load i32, ptr %n, align 4, !dbg !1355
  %idxprom21 = zext i32 %35 to i64, !dbg !1353
  %arrayidx22 = getelementptr %struct.node_groups, ptr %34, i64 %idxprom21, !dbg !1353
  %36 = getelementptr inbounds %struct.node_groups, ptr %arrayidx22, i32 0, i32 1, !dbg !1356
  %37 = load i32, ptr %36, align 4, !dbg !1356
  %cmp23 = icmp eq i32 %37, -1, !dbg !1357
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1358

if.then25:                                        ; preds = %for.body19
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup106, !dbg !1359

if.end26:                                         ; preds = %for.body19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1266, metadata !DIExpression()), !dbg !1360
  %38 = load i32, ptr %numgrps.addr, align 4, !dbg !1360
  %cmp27 = icmp eq i32 %38, 0, !dbg !1360
  %lnot = xor i1 %cmp27, true, !dbg !1360
  %lnot29 = xor i1 %lnot, true, !dbg !1360
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !1360
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1360
  %39 = load i32, ptr %__ret_warn_on, align 4, !dbg !1361
  %tobool30 = icmp ne i32 %39, 0, !dbg !1361
  %lnot31 = xor i1 %tobool30, true, !dbg !1361
  %lnot33 = xor i1 %lnot31, true, !dbg !1361
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1361
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !1361
  %expval = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !1361
  %tobool36 = icmp ne i64 %expval, 0, !dbg !1361
  br i1 %tobool36, label %if.then37, label %if.end47, !dbg !1360

if.then37:                                        ; preds = %if.end26
  br label %do.body, !dbg !1361

do.body:                                          ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1268, metadata !DIExpression()), !dbg !1362
  store i32 2307, ptr %__flags, align 4, !dbg !1362
  br label %do.body38, !dbg !1362

do.body38:                                        ; preds = %do.body
  br label %do.cond, !dbg !1363

do.cond:                                          ; preds = %do.body38
  br label %do.end, !dbg !1363

do.end:                                           ; preds = %do.cond
  br label %do.body39, !dbg !1362

do.body39:                                        ; preds = %do.end
  %40 = load i32, ptr %__flags, align 4, !dbg !1365
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 235, i32 %40, i64 12) #16, !dbg !1365, !srcloc !1367
  br label %do.cond40, !dbg !1365

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !1365

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !1362

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !1368

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1368

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !1361
  br label %do.cond45, !dbg !1362

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !1362

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !1362

if.end47:                                         ; preds = %do.end46, %if.end26
  %41 = load i32, ptr %__ret_warn_on, align 4, !dbg !1360
  %tobool49 = icmp ne i32 %41, 0, !dbg !1360
  %lnot50 = xor i1 %tobool49, true, !dbg !1360
  %lnot52 = xor i1 %lnot50, true, !dbg !1360
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !1360
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !1360
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !1360
  store i64 %expval55, ptr %tmp48, align 8, !dbg !1361
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !1370
  %42 = load i64, ptr %tmp48, align 8, !dbg !1360
  %43 = load ptr, ptr %node_groups.addr, align 8, !dbg !1371
  %44 = load i32, ptr %n, align 4, !dbg !1372
  %idxprom56 = zext i32 %44 to i64, !dbg !1371
  %arrayidx57 = getelementptr %struct.node_groups, ptr %43, i64 %idxprom56, !dbg !1371
  %45 = getelementptr inbounds %struct.node_groups, ptr %arrayidx57, i32 0, i32 1, !dbg !1373
  %46 = load i32, ptr %45, align 4, !dbg !1373
  store i32 %46, ptr %ncpus20, align 4, !dbg !1374
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x207) #16, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x207, metadata !1271, metadata !DIExpression()), !dbg !1375
  store i32 1, ptr %__UNIQUE_ID___x207, align 4, !dbg !1375
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y208) #16, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y208, metadata !1273, metadata !DIExpression()), !dbg !1375
  %47 = load i32, ptr %numgrps.addr, align 4, !dbg !1375
  %48 = load i32, ptr %ncpus20, align 4, !dbg !1375
  %mul = mul i32 %47, %48, !dbg !1375
  %49 = load i32, ptr %remaining_ncpus, align 4, !dbg !1375
  %div = udiv i32 %mul, %49, !dbg !1375
  store i32 %div, ptr %__UNIQUE_ID___y208, align 4, !dbg !1375
  %50 = load i32, ptr %__UNIQUE_ID___x207, align 4, !dbg !1375
  %51 = load i32, ptr %__UNIQUE_ID___y208, align 4, !dbg !1375
  %cmp59 = icmp ugt i32 %50, %51, !dbg !1375
  br i1 %cmp59, label %cond.true61, label %cond.false62, !dbg !1375

cond.true61:                                      ; preds = %if.end47
  %52 = load i32, ptr %__UNIQUE_ID___x207, align 4, !dbg !1375
  br label %cond.end63, !dbg !1375

cond.false62:                                     ; preds = %if.end47
  %53 = load i32, ptr %__UNIQUE_ID___y208, align 4, !dbg !1375
  br label %cond.end63, !dbg !1375

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i32 [ %52, %cond.true61 ], [ %53, %cond.false62 ], !dbg !1375
  store i32 %cond64, ptr %tmp58, align 4, !dbg !1375
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y208) #16, !dbg !1376
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x207) #16, !dbg !1376
  %54 = load i32, ptr %tmp58, align 4, !dbg !1375
  store i32 %54, ptr %ngroups, align 4, !dbg !1377
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on65) #16, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on65, metadata !1274, metadata !DIExpression()), !dbg !1378
  %55 = load i32, ptr %ngroups, align 4, !dbg !1378
  %56 = load i32, ptr %ncpus20, align 4, !dbg !1378
  %cmp66 = icmp ugt i32 %55, %56, !dbg !1378
  %lnot68 = xor i1 %cmp66, true, !dbg !1378
  %lnot70 = xor i1 %lnot68, true, !dbg !1378
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !1378
  store i32 %lnot.ext71, ptr %__ret_warn_on65, align 4, !dbg !1378
  %57 = load i32, ptr %__ret_warn_on65, align 4, !dbg !1379
  %tobool72 = icmp ne i32 %57, 0, !dbg !1379
  %lnot73 = xor i1 %tobool72, true, !dbg !1379
  %lnot75 = xor i1 %lnot73, true, !dbg !1379
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !1379
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !1379
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 0), !dbg !1379
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !1379
  br i1 %tobool79, label %if.then80, label %if.end94, !dbg !1378

if.then80:                                        ; preds = %cond.end63
  br label %do.body81, !dbg !1379

do.body81:                                        ; preds = %if.then80
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags82) #16, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__flags82, metadata !1276, metadata !DIExpression()), !dbg !1380
  store i32 2307, ptr %__flags82, align 4, !dbg !1380
  br label %do.body83, !dbg !1380

do.body83:                                        ; preds = %do.body81
  br label %do.cond84, !dbg !1381

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !1381

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !1380

do.body86:                                        ; preds = %do.end85
  %58 = load i32, ptr %__flags82, align 4, !dbg !1383
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 240, i32 %58, i64 12) #16, !dbg !1383, !srcloc !1385
  br label %do.cond87, !dbg !1383

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !1383

do.end88:                                         ; preds = %do.cond87
  br label %do.body89, !dbg !1380

do.body89:                                        ; preds = %do.end88
  br label %do.cond90, !dbg !1386

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !1386

do.end91:                                         ; preds = %do.cond90
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags82) #16, !dbg !1379
  br label %do.cond92, !dbg !1380

do.cond92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !1380

do.end93:                                         ; preds = %do.cond92
  br label %if.end94, !dbg !1380

if.end94:                                         ; preds = %do.end93, %cond.end63
  %59 = load i32, ptr %__ret_warn_on65, align 4, !dbg !1378
  %tobool96 = icmp ne i32 %59, 0, !dbg !1378
  %lnot97 = xor i1 %tobool96, true, !dbg !1378
  %lnot99 = xor i1 %lnot97, true, !dbg !1378
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !1378
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !1378
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !1378
  store i64 %expval102, ptr %tmp95, align 8, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on65) #16, !dbg !1388
  %60 = load i64, ptr %tmp95, align 8, !dbg !1378
  %61 = load i32, ptr %ngroups, align 4, !dbg !1389
  %62 = load ptr, ptr %node_groups.addr, align 8, !dbg !1390
  %63 = load i32, ptr %n, align 4, !dbg !1391
  %idxprom103 = zext i32 %63 to i64, !dbg !1390
  %arrayidx104 = getelementptr %struct.node_groups, ptr %62, i64 %idxprom103, !dbg !1390
  %64 = getelementptr inbounds %struct.node_groups, ptr %arrayidx104, i32 0, i32 1, !dbg !1392
  store i32 %61, ptr %64, align 4, !dbg !1393
  %65 = load i32, ptr %ncpus20, align 4, !dbg !1394
  %66 = load i32, ptr %remaining_ncpus, align 4, !dbg !1395
  %sub = sub i32 %66, %65, !dbg !1395
  store i32 %sub, ptr %remaining_ncpus, align 4, !dbg !1395
  %67 = load i32, ptr %ngroups, align 4, !dbg !1396
  %68 = load i32, ptr %numgrps.addr, align 4, !dbg !1397
  %sub105 = sub i32 %68, %67, !dbg !1397
  store i32 %sub105, ptr %numgrps.addr, align 4, !dbg !1397
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1398
  br label %cleanup106, !dbg !1398

cleanup106:                                       ; preds = %if.end94, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncpus20) #16, !dbg !1398
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngroups) #16, !dbg !1398
  %cleanup.dest108 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest108, label %unreachable [
    i32 0, label %cleanup.cont109
    i32 10, label %for.inc110
  ]

cleanup.cont109:                                  ; preds = %cleanup106
  br label %for.inc110, !dbg !1399

for.inc110:                                       ; preds = %cleanup.cont109, %cleanup106
  %69 = load i32, ptr %n, align 4, !dbg !1400
  %inc111 = add i32 %69, 1, !dbg !1400
  store i32 %inc111, ptr %n, align 4, !dbg !1400
  br label %for.cond16, !dbg !1401, !llvm.loop !1402

for.end112:                                       ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining_ncpus) #16, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !1404
  ret void, !dbg !1404

unreachable:                                      ; preds = %cleanup106, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #3 align 16 !dbg !1405 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1411
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1411
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1411
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !1412
  ret i32 %call, !dbg !1413
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @grp_spread_init_one(ptr noundef %irqmsk, ptr noundef %nmsk, i32 noundef %cpus_per_grp) #0 align 16 !dbg !1414 {
entry:
  %irqmsk.addr = alloca ptr, align 8
  %nmsk.addr = alloca ptr, align 8
  %cpus_per_grp.addr = alloca i32, align 4
  %siblmsk = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %sibl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %irqmsk, ptr %irqmsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqmsk.addr, metadata !1418, metadata !DIExpression()), !dbg !1432
  store ptr %nmsk, ptr %nmsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nmsk.addr, metadata !1419, metadata !DIExpression()), !dbg !1433
  store i32 %cpus_per_grp, ptr %cpus_per_grp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpus_per_grp.addr, metadata !1420, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr %siblmsk) #16, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %siblmsk, metadata !1421, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1422, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0(i64 4, ptr %sibl) #16, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %sibl, metadata !1423, metadata !DIExpression()), !dbg !1439
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr %cpus_per_grp.addr, align 4, !dbg !1441
  %cmp = icmp ugt i32 %0, 0, !dbg !1442
  br i1 %cmp, label %for.body, label %for.end14, !dbg !1443

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %nmsk.addr, align 8, !dbg !1444
  %call = call i32 @cpumask_first(ptr noundef %1) #17, !dbg !1445
  store i32 %call, ptr %cpu, align 4, !dbg !1446
  %2 = load i32, ptr %cpu, align 4, !dbg !1447
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !1449
  %cmp1 = icmp uge i32 %2, %3, !dbg !1450
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1451

if.then:                                          ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1452

if.end:                                           ; preds = %for.body
  %4 = load i32, ptr %cpu, align 4, !dbg !1453
  %5 = load ptr, ptr %nmsk.addr, align 8, !dbg !1454
  call void @cpumask_clear_cpu(i32 noundef %4, ptr noundef %5) #17, !dbg !1455
  %6 = load i32, ptr %cpu, align 4, !dbg !1456
  %7 = load ptr, ptr %irqmsk.addr, align 8, !dbg !1457
  call void @cpumask_set_cpu(i32 noundef %6, ptr noundef %7) #17, !dbg !1458
  %8 = load i32, ptr %cpus_per_grp.addr, align 4, !dbg !1459
  %dec = add i32 %8, -1, !dbg !1459
  store i32 %dec, ptr %cpus_per_grp.addr, align 4, !dbg !1459
  br label %do.body, !dbg !1460

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1424, metadata !DIExpression()), !dbg !1461
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1461
  %9 = load ptr, ptr %__vpp_verify, align 8, !dbg !1461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !1460
  br label %do.cond, !dbg !1461

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1461

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !1462
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1430, metadata !DIExpression()), !dbg !1462
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !1462
  %10 = load i64, ptr %__ptr, align 8, !dbg !1462
  %11 = load i32, ptr %cpu, align 4, !dbg !1462
  %idxprom = sext i32 %11 to i64, !dbg !1462
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1462
  %12 = load i64, ptr %arrayidx, align 8, !dbg !1462
  %add = add i64 %10, %12, !dbg !1462
  %13 = inttoptr i64 %add to ptr, !dbg !1462
  store ptr %13, ptr %tmp2, align 8, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !1460
  %14 = load ptr, ptr %tmp2, align 8, !dbg !1462
  store ptr %14, ptr %tmp, align 8, !dbg !1461
  %15 = load ptr, ptr %tmp, align 8, !dbg !1460
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %15, i64 0, i64 0, !dbg !1463
  store ptr %arraydecay, ptr %siblmsk, align 8, !dbg !1464
  store i32 -1, ptr %sibl, align 4, !dbg !1465
  br label %for.cond3, !dbg !1467

for.cond3:                                        ; preds = %if.end12, %if.then11, %do.end
  %16 = load i32, ptr %cpus_per_grp.addr, align 4, !dbg !1468
  %cmp4 = icmp ugt i32 %16, 0, !dbg !1470
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !1471

for.body5:                                        ; preds = %for.cond3
  %17 = load i32, ptr %sibl, align 4, !dbg !1472
  %18 = load ptr, ptr %siblmsk, align 8, !dbg !1474
  %call6 = call i32 @cpumask_next(i32 noundef %17, ptr noundef %18) #17, !dbg !1475
  store i32 %call6, ptr %sibl, align 4, !dbg !1476
  %19 = load i32, ptr %sibl, align 4, !dbg !1477
  %20 = load i32, ptr @nr_cpu_ids, align 4, !dbg !1479
  %cmp7 = icmp uge i32 %19, %20, !dbg !1480
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1481

if.then8:                                         ; preds = %for.body5
  br label %for.end, !dbg !1482

if.end9:                                          ; preds = %for.body5
  %21 = load i32, ptr %sibl, align 4, !dbg !1483
  %22 = load ptr, ptr %nmsk.addr, align 8, !dbg !1485
  %call10 = call zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %21, ptr noundef %22) #17, !dbg !1486
  br i1 %call10, label %if.end12, label %if.then11, !dbg !1487

if.then11:                                        ; preds = %if.end9
  br label %for.cond3, !dbg !1488, !llvm.loop !1489

if.end12:                                         ; preds = %if.end9
  %23 = load i32, ptr %sibl, align 4, !dbg !1491
  %24 = load ptr, ptr %irqmsk.addr, align 8, !dbg !1492
  call void @cpumask_set_cpu(i32 noundef %23, ptr noundef %24) #17, !dbg !1493
  %25 = load i32, ptr %cpus_per_grp.addr, align 4, !dbg !1494
  %dec13 = add i32 %25, -1, !dbg !1494
  store i32 %dec13, ptr %cpus_per_grp.addr, align 4, !dbg !1494
  br label %for.cond3, !dbg !1495, !llvm.loop !1489

for.end:                                          ; preds = %if.then8, %for.cond3
  br label %for.cond, !dbg !1496, !llvm.loop !1497

for.end14:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1499
  br label %cleanup, !dbg !1499

cleanup:                                          ; preds = %for.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sibl) #16, !dbg !1499
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !1499
  call void @llvm.lifetime.end.p0(i64 8, ptr %siblmsk) #16, !dbg !1499
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1499

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #3 align 16 !dbg !1500 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1504, metadata !DIExpression()), !dbg !1506
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1505, metadata !DIExpression()), !dbg !1507
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1508
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1508
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1508

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1508
  %cmp = icmp ule i32 %2, 64, !dbg !1508
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1508

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1508
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1508
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1510

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1511
  %5 = load i64, ptr %4, align 8, !dbg !1512
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1513
  %sub = sub i32 0, %6, !dbg !1513
  %and = and i32 %sub, 63, !dbg !1513
  %sh_prom = zext i32 %and to i64, !dbg !1513
  %shr = lshr i64 -1, %sh_prom, !dbg !1513
  %and3 = and i64 %5, %shr, !dbg !1514
  %tobool = icmp ne i64 %and3, 0, !dbg !1515
  %lnot = xor i1 %tobool, true, !dbg !1515
  store i1 %lnot, ptr %retval, align 1, !dbg !1516
  br label %return, !dbg !1516

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1517
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1518
  %conv = zext i32 %8 to i64, !dbg !1518
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #17, !dbg !1519
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !1520
  %conv4 = zext i32 %9 to i64, !dbg !1520
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !1521
  store i1 %cmp5, ptr %retval, align 1, !dbg !1522
  br label %return, !dbg !1522

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !1523
  ret i1 %10, !dbg !1523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !1524 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1528, metadata !DIExpression()), !dbg !1533
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1529, metadata !DIExpression()), !dbg !1534
  %0 = load i64, ptr %size.addr, align 8, !dbg !1535
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1535
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1535

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1535
  %cmp = icmp ule i64 %2, 64, !dbg !1535
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1535

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1535
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1535
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1536

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1530, metadata !DIExpression()), !dbg !1538
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !1539
  %5 = load i64, ptr %4, align 8, !dbg !1540
  %6 = load i64, ptr %size.addr, align 8, !dbg !1541
  %sub = sub i64 %6, 1, !dbg !1541
  %sub3 = sub i64 63, %sub, !dbg !1541
  %shr = lshr i64 -1, %sub3, !dbg !1541
  %and = and i64 -1, %shr, !dbg !1541
  %add = add i64 0, %and, !dbg !1541
  %and4 = and i64 %5, %add, !dbg !1542
  store i64 %and4, ptr %val, align 8, !dbg !1538
  %7 = load i64, ptr %val, align 8, !dbg !1543
  %tobool = icmp ne i64 %7, 0, !dbg !1543
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !1543

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !1544
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1544
  br i1 %9, label %cond.true5, label %cond.false, !dbg !1544

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !1544
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !1544
  %cast = trunc i64 %11 to i32, !dbg !1544
  %conv = sext i32 %cast to i64, !dbg !1544
  br label %cond.end, !dbg !1544

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !1544
  %call = call i64 @variable__ffs(i64 noundef %12) #17, !dbg !1544
  br label %cond.end, !dbg !1544

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !1544
  br label %cond.end7, !dbg !1543

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !1545
  br label %cond.end7, !dbg !1543

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !1543
  store i64 %cond8, ptr %retval, align 8, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !1547
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !1548
  %15 = load i64, ptr %size.addr, align 8, !dbg !1549
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #17, !dbg !1550
  store i64 %call9, ptr %retval, align 8, !dbg !1551
  br label %return, !dbg !1551

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !1552
  ret i64 %16, !dbg !1552
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1553 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_intersects(ptr noundef %src1p, ptr noundef %src2p) #3 align 16 !dbg !1554 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !1558, metadata !DIExpression()), !dbg !1560
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !1559, metadata !DIExpression()), !dbg !1561
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !1562
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1562
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1562
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !1563
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1563
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !1563
  %call = call zeroext i1 @bitmap_intersects(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #17, !dbg !1564
  ret i1 %call, !dbg !1565
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__node_set(i32 noundef %node, ptr noundef %dstp) #11 align 16 !dbg !1566 {
entry:
  %node.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1572, metadata !DIExpression()), !dbg !1574
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1573, metadata !DIExpression()), !dbg !1575
  %0 = load i32, ptr %node.addr, align 4, !dbg !1576
  %conv = sext i32 %0 to i64, !dbg !1576
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !1577
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !1578
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1577
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !1579
  ret void, !dbg !1580
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_intersects(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !1581 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1585, metadata !DIExpression()), !dbg !1588
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1586, metadata !DIExpression()), !dbg !1589
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1587, metadata !DIExpression()), !dbg !1590
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1591
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1591
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1591

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1591
  %cmp = icmp ule i32 %2, 64, !dbg !1591
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !1591

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1591
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1591
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1593

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1594
  %5 = load i64, ptr %4, align 8, !dbg !1595
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1596
  %7 = load i64, ptr %6, align 8, !dbg !1597
  %and = and i64 %5, %7, !dbg !1598
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1599
  %sub = sub i32 0, %8, !dbg !1599
  %and3 = and i32 %sub, 63, !dbg !1599
  %sh_prom = zext i32 %and3 to i64, !dbg !1599
  %shr = lshr i64 -1, %sh_prom, !dbg !1599
  %and4 = and i64 %and, %shr, !dbg !1600
  %cmp5 = icmp ne i64 %and4, 0, !dbg !1601
  store i1 %cmp5, ptr %retval, align 1, !dbg !1602
  br label %return, !dbg !1602

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %src1.addr, align 8, !dbg !1603
  %10 = load ptr, ptr %src2.addr, align 8, !dbg !1604
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !1605
  %call = call zeroext i1 @__bitmap_intersects(ptr noundef %9, ptr noundef %10, i32 noundef %11) #17, !dbg !1606
  store i1 %call, ptr %retval, align 1, !dbg !1607
  br label %return, !dbg !1607

return:                                           ; preds = %if.else, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !1608
  ret i1 %12, !dbg !1608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1609 dso_local zeroext i1 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_and(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !1610 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1614, metadata !DIExpression()), !dbg !1618
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1615, metadata !DIExpression()), !dbg !1619
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1616, metadata !DIExpression()), !dbg !1620
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1617, metadata !DIExpression()), !dbg !1621
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1622
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1622
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1622

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1622
  %cmp = icmp ule i32 %2, 64, !dbg !1622
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1622

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1622
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1622
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1624

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1625
  %5 = load i64, ptr %4, align 8, !dbg !1626
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1627
  %7 = load i64, ptr %6, align 8, !dbg !1628
  %and = and i64 %5, %7, !dbg !1629
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1630
  %sub = sub i32 0, %8, !dbg !1630
  %and3 = and i32 %sub, 63, !dbg !1630
  %sh_prom = zext i32 %and3 to i64, !dbg !1630
  %shr = lshr i64 -1, %sh_prom, !dbg !1630
  %and4 = and i64 %and, %shr, !dbg !1631
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1632
  store i64 %and4, ptr %9, align 8, !dbg !1633
  %cmp5 = icmp ne i64 %and4, 0, !dbg !1634
  store i1 %cmp5, ptr %retval, align 1, !dbg !1635
  br label %return, !dbg !1635

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !1636
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !1637
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !1638
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !1639
  %call = call zeroext i1 @__bitmap_and(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #17, !dbg !1640
  store i1 %call, ptr %retval, align 1, !dbg !1641
  br label %return, !dbg !1641

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !1642
  ret i1 %14, !dbg !1642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1643 dso_local zeroext i1 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_or(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !1644 {
entry:
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1648, metadata !DIExpression()), !dbg !1652
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1649, metadata !DIExpression()), !dbg !1653
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1650, metadata !DIExpression()), !dbg !1654
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1651, metadata !DIExpression()), !dbg !1655
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1656
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1656
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1656

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1656
  %cmp = icmp ule i32 %2, 64, !dbg !1656
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !1656

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1656
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1656
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1658

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1659
  %5 = load i64, ptr %4, align 8, !dbg !1660
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1661
  %7 = load i64, ptr %6, align 8, !dbg !1662
  %or = or i64 %5, %7, !dbg !1663
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1664
  store i64 %or, ptr %8, align 8, !dbg !1665
  br label %if.end, !dbg !1666

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1667
  %10 = load ptr, ptr %src1.addr, align 8, !dbg !1668
  %11 = load ptr, ptr %src2.addr, align 8, !dbg !1669
  %12 = load i32, ptr %nbits.addr, align 4, !dbg !1670
  call void @__bitmap_or(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12) #17, !dbg !1671
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1673 dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1674 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ncpus_cmp_func(ptr noundef %l, ptr noundef %r) #0 align 16 !dbg !1686 {
entry:
  %l.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %ln = alloca ptr, align 8
  %rn = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !1688, metadata !DIExpression()), !dbg !1694
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1689, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %ln) #16, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %ln, metadata !1690, metadata !DIExpression()), !dbg !1697
  %0 = load ptr, ptr %l.addr, align 8, !dbg !1698
  store ptr %0, ptr %ln, align 8, !dbg !1697
  call void @llvm.lifetime.start.p0(i64 8, ptr %rn) #16, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %rn, metadata !1693, metadata !DIExpression()), !dbg !1700
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1701
  store ptr %1, ptr %rn, align 8, !dbg !1700
  %2 = load ptr, ptr %ln, align 8, !dbg !1702
  %3 = getelementptr inbounds %struct.node_groups, ptr %2, i32 0, i32 1, !dbg !1703
  %4 = load i32, ptr %3, align 4, !dbg !1703
  %5 = load ptr, ptr %rn, align 8, !dbg !1704
  %6 = getelementptr inbounds %struct.node_groups, ptr %5, i32 0, i32 1, !dbg !1705
  %7 = load i32, ptr %6, align 4, !dbg !1705
  %sub = sub i32 %4, %7, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr %rn) #16, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 8, ptr %ln) #16, !dbg !1707
  ret i32 %sub, !dbg !1708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #11 align 16 !dbg !1709 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1713, metadata !DIExpression()), !dbg !1715
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1714, metadata !DIExpression()), !dbg !1716
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1717
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1717
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1717

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1717
  %cmp = icmp ule i32 %2, 64, !dbg !1717
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1717

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1717
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1717
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1719

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1720
  %5 = load i64, ptr %4, align 8, !dbg !1721
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1722
  %sub = sub i32 0, %6, !dbg !1722
  %and = and i32 %sub, 63, !dbg !1722
  %sh_prom = zext i32 %and to i64, !dbg !1722
  %shr = lshr i64 -1, %sh_prom, !dbg !1722
  %and3 = and i64 %5, %shr, !dbg !1723
  %call = call i64 @hweight_long(i64 noundef %and3) #17, !dbg !1724
  %conv = trunc i64 %call to i32, !dbg !1724
  store i32 %conv, ptr %retval, align 4, !dbg !1725
  br label %return, !dbg !1725

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1726
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1727
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #17, !dbg !1728
  store i32 %call4, ptr %retval, align 4, !dbg !1729
  br label %return, !dbg !1729

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1730
  ret i32 %9, !dbg !1730
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #11 align 16 !dbg !1731 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1734, metadata !DIExpression()), !dbg !1735
  %0 = load i64, ptr %w.addr, align 8, !dbg !1736
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1736
  br i1 %1, label %cond.true, label %cond.false, !dbg !1736

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and = and i64 %2, 1, !dbg !1736
  %tobool = icmp ne i64 %and, 0, !dbg !1736
  %lnot = xor i1 %tobool, true, !dbg !1736
  %lnot1 = xor i1 %lnot, true, !dbg !1736
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1736
  %3 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and2 = and i64 %3, 2, !dbg !1736
  %tobool3 = icmp ne i64 %and2, 0, !dbg !1736
  %lnot4 = xor i1 %tobool3, true, !dbg !1736
  %lnot6 = xor i1 %lnot4, true, !dbg !1736
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1736
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !1736
  %4 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and8 = and i64 %4, 4, !dbg !1736
  %tobool9 = icmp ne i64 %and8, 0, !dbg !1736
  %lnot10 = xor i1 %tobool9, true, !dbg !1736
  %lnot12 = xor i1 %lnot10, true, !dbg !1736
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !1736
  %add14 = add i32 %add, %lnot.ext13, !dbg !1736
  %5 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and15 = and i64 %5, 8, !dbg !1736
  %tobool16 = icmp ne i64 %and15, 0, !dbg !1736
  %lnot17 = xor i1 %tobool16, true, !dbg !1736
  %lnot19 = xor i1 %lnot17, true, !dbg !1736
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1736
  %add21 = add i32 %add14, %lnot.ext20, !dbg !1736
  %6 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and22 = and i64 %6, 16, !dbg !1736
  %tobool23 = icmp ne i64 %and22, 0, !dbg !1736
  %lnot24 = xor i1 %tobool23, true, !dbg !1736
  %lnot26 = xor i1 %lnot24, true, !dbg !1736
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !1736
  %add28 = add i32 %add21, %lnot.ext27, !dbg !1736
  %7 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and29 = and i64 %7, 32, !dbg !1736
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1736
  %lnot31 = xor i1 %tobool30, true, !dbg !1736
  %lnot33 = xor i1 %lnot31, true, !dbg !1736
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1736
  %add35 = add i32 %add28, %lnot.ext34, !dbg !1736
  %8 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and36 = and i64 %8, 64, !dbg !1736
  %tobool37 = icmp ne i64 %and36, 0, !dbg !1736
  %lnot38 = xor i1 %tobool37, true, !dbg !1736
  %lnot40 = xor i1 %lnot38, true, !dbg !1736
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !1736
  %add42 = add i32 %add35, %lnot.ext41, !dbg !1736
  %9 = load i64, ptr %w.addr, align 8, !dbg !1736
  %and43 = and i64 %9, 128, !dbg !1736
  %tobool44 = icmp ne i64 %and43, 0, !dbg !1736
  %lnot45 = xor i1 %tobool44, true, !dbg !1736
  %lnot47 = xor i1 %lnot45, true, !dbg !1736
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1736
  %add49 = add i32 %add42, %lnot.ext48, !dbg !1736
  %10 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr = lshr i64 %10, 8, !dbg !1736
  %and50 = and i64 %shr, 1, !dbg !1736
  %tobool51 = icmp ne i64 %and50, 0, !dbg !1736
  %lnot52 = xor i1 %tobool51, true, !dbg !1736
  %lnot54 = xor i1 %lnot52, true, !dbg !1736
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !1736
  %11 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr56 = lshr i64 %11, 8, !dbg !1736
  %and57 = and i64 %shr56, 2, !dbg !1736
  %tobool58 = icmp ne i64 %and57, 0, !dbg !1736
  %lnot59 = xor i1 %tobool58, true, !dbg !1736
  %lnot61 = xor i1 %lnot59, true, !dbg !1736
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !1736
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !1736
  %12 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr64 = lshr i64 %12, 8, !dbg !1736
  %and65 = and i64 %shr64, 4, !dbg !1736
  %tobool66 = icmp ne i64 %and65, 0, !dbg !1736
  %lnot67 = xor i1 %tobool66, true, !dbg !1736
  %lnot69 = xor i1 %lnot67, true, !dbg !1736
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !1736
  %add71 = add i32 %add63, %lnot.ext70, !dbg !1736
  %13 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr72 = lshr i64 %13, 8, !dbg !1736
  %and73 = and i64 %shr72, 8, !dbg !1736
  %tobool74 = icmp ne i64 %and73, 0, !dbg !1736
  %lnot75 = xor i1 %tobool74, true, !dbg !1736
  %lnot77 = xor i1 %lnot75, true, !dbg !1736
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !1736
  %add79 = add i32 %add71, %lnot.ext78, !dbg !1736
  %14 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr80 = lshr i64 %14, 8, !dbg !1736
  %and81 = and i64 %shr80, 16, !dbg !1736
  %tobool82 = icmp ne i64 %and81, 0, !dbg !1736
  %lnot83 = xor i1 %tobool82, true, !dbg !1736
  %lnot85 = xor i1 %lnot83, true, !dbg !1736
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1736
  %add87 = add i32 %add79, %lnot.ext86, !dbg !1736
  %15 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr88 = lshr i64 %15, 8, !dbg !1736
  %and89 = and i64 %shr88, 32, !dbg !1736
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1736
  %lnot91 = xor i1 %tobool90, true, !dbg !1736
  %lnot93 = xor i1 %lnot91, true, !dbg !1736
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !1736
  %add95 = add i32 %add87, %lnot.ext94, !dbg !1736
  %16 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr96 = lshr i64 %16, 8, !dbg !1736
  %and97 = and i64 %shr96, 64, !dbg !1736
  %tobool98 = icmp ne i64 %and97, 0, !dbg !1736
  %lnot99 = xor i1 %tobool98, true, !dbg !1736
  %lnot101 = xor i1 %lnot99, true, !dbg !1736
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !1736
  %add103 = add i32 %add95, %lnot.ext102, !dbg !1736
  %17 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr104 = lshr i64 %17, 8, !dbg !1736
  %and105 = and i64 %shr104, 128, !dbg !1736
  %tobool106 = icmp ne i64 %and105, 0, !dbg !1736
  %lnot107 = xor i1 %tobool106, true, !dbg !1736
  %lnot109 = xor i1 %lnot107, true, !dbg !1736
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !1736
  %add111 = add i32 %add103, %lnot.ext110, !dbg !1736
  %add112 = add i32 %add49, %add111, !dbg !1736
  %18 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr113 = lshr i64 %18, 16, !dbg !1736
  %and114 = and i64 %shr113, 1, !dbg !1736
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1736
  %lnot116 = xor i1 %tobool115, true, !dbg !1736
  %lnot118 = xor i1 %lnot116, true, !dbg !1736
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !1736
  %19 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr120 = lshr i64 %19, 16, !dbg !1736
  %and121 = and i64 %shr120, 2, !dbg !1736
  %tobool122 = icmp ne i64 %and121, 0, !dbg !1736
  %lnot123 = xor i1 %tobool122, true, !dbg !1736
  %lnot125 = xor i1 %lnot123, true, !dbg !1736
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !1736
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !1736
  %20 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr128 = lshr i64 %20, 16, !dbg !1736
  %and129 = and i64 %shr128, 4, !dbg !1736
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1736
  %lnot131 = xor i1 %tobool130, true, !dbg !1736
  %lnot133 = xor i1 %lnot131, true, !dbg !1736
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !1736
  %add135 = add i32 %add127, %lnot.ext134, !dbg !1736
  %21 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr136 = lshr i64 %21, 16, !dbg !1736
  %and137 = and i64 %shr136, 8, !dbg !1736
  %tobool138 = icmp ne i64 %and137, 0, !dbg !1736
  %lnot139 = xor i1 %tobool138, true, !dbg !1736
  %lnot141 = xor i1 %lnot139, true, !dbg !1736
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !1736
  %add143 = add i32 %add135, %lnot.ext142, !dbg !1736
  %22 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr144 = lshr i64 %22, 16, !dbg !1736
  %and145 = and i64 %shr144, 16, !dbg !1736
  %tobool146 = icmp ne i64 %and145, 0, !dbg !1736
  %lnot147 = xor i1 %tobool146, true, !dbg !1736
  %lnot149 = xor i1 %lnot147, true, !dbg !1736
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !1736
  %add151 = add i32 %add143, %lnot.ext150, !dbg !1736
  %23 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr152 = lshr i64 %23, 16, !dbg !1736
  %and153 = and i64 %shr152, 32, !dbg !1736
  %tobool154 = icmp ne i64 %and153, 0, !dbg !1736
  %lnot155 = xor i1 %tobool154, true, !dbg !1736
  %lnot157 = xor i1 %lnot155, true, !dbg !1736
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !1736
  %add159 = add i32 %add151, %lnot.ext158, !dbg !1736
  %24 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr160 = lshr i64 %24, 16, !dbg !1736
  %and161 = and i64 %shr160, 64, !dbg !1736
  %tobool162 = icmp ne i64 %and161, 0, !dbg !1736
  %lnot163 = xor i1 %tobool162, true, !dbg !1736
  %lnot165 = xor i1 %lnot163, true, !dbg !1736
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !1736
  %add167 = add i32 %add159, %lnot.ext166, !dbg !1736
  %25 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr168 = lshr i64 %25, 16, !dbg !1736
  %and169 = and i64 %shr168, 128, !dbg !1736
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1736
  %lnot171 = xor i1 %tobool170, true, !dbg !1736
  %lnot173 = xor i1 %lnot171, true, !dbg !1736
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !1736
  %add175 = add i32 %add167, %lnot.ext174, !dbg !1736
  %26 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr176 = lshr i64 %26, 16, !dbg !1736
  %shr177 = lshr i64 %shr176, 8, !dbg !1736
  %and178 = and i64 %shr177, 1, !dbg !1736
  %tobool179 = icmp ne i64 %and178, 0, !dbg !1736
  %lnot180 = xor i1 %tobool179, true, !dbg !1736
  %lnot182 = xor i1 %lnot180, true, !dbg !1736
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !1736
  %27 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr184 = lshr i64 %27, 16, !dbg !1736
  %shr185 = lshr i64 %shr184, 8, !dbg !1736
  %and186 = and i64 %shr185, 2, !dbg !1736
  %tobool187 = icmp ne i64 %and186, 0, !dbg !1736
  %lnot188 = xor i1 %tobool187, true, !dbg !1736
  %lnot190 = xor i1 %lnot188, true, !dbg !1736
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !1736
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !1736
  %28 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr193 = lshr i64 %28, 16, !dbg !1736
  %shr194 = lshr i64 %shr193, 8, !dbg !1736
  %and195 = and i64 %shr194, 4, !dbg !1736
  %tobool196 = icmp ne i64 %and195, 0, !dbg !1736
  %lnot197 = xor i1 %tobool196, true, !dbg !1736
  %lnot199 = xor i1 %lnot197, true, !dbg !1736
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !1736
  %add201 = add i32 %add192, %lnot.ext200, !dbg !1736
  %29 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr202 = lshr i64 %29, 16, !dbg !1736
  %shr203 = lshr i64 %shr202, 8, !dbg !1736
  %and204 = and i64 %shr203, 8, !dbg !1736
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1736
  %lnot206 = xor i1 %tobool205, true, !dbg !1736
  %lnot208 = xor i1 %lnot206, true, !dbg !1736
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !1736
  %add210 = add i32 %add201, %lnot.ext209, !dbg !1736
  %30 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr211 = lshr i64 %30, 16, !dbg !1736
  %shr212 = lshr i64 %shr211, 8, !dbg !1736
  %and213 = and i64 %shr212, 16, !dbg !1736
  %tobool214 = icmp ne i64 %and213, 0, !dbg !1736
  %lnot215 = xor i1 %tobool214, true, !dbg !1736
  %lnot217 = xor i1 %lnot215, true, !dbg !1736
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !1736
  %add219 = add i32 %add210, %lnot.ext218, !dbg !1736
  %31 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr220 = lshr i64 %31, 16, !dbg !1736
  %shr221 = lshr i64 %shr220, 8, !dbg !1736
  %and222 = and i64 %shr221, 32, !dbg !1736
  %tobool223 = icmp ne i64 %and222, 0, !dbg !1736
  %lnot224 = xor i1 %tobool223, true, !dbg !1736
  %lnot226 = xor i1 %lnot224, true, !dbg !1736
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !1736
  %add228 = add i32 %add219, %lnot.ext227, !dbg !1736
  %32 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr229 = lshr i64 %32, 16, !dbg !1736
  %shr230 = lshr i64 %shr229, 8, !dbg !1736
  %and231 = and i64 %shr230, 64, !dbg !1736
  %tobool232 = icmp ne i64 %and231, 0, !dbg !1736
  %lnot233 = xor i1 %tobool232, true, !dbg !1736
  %lnot235 = xor i1 %lnot233, true, !dbg !1736
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !1736
  %add237 = add i32 %add228, %lnot.ext236, !dbg !1736
  %33 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr238 = lshr i64 %33, 16, !dbg !1736
  %shr239 = lshr i64 %shr238, 8, !dbg !1736
  %and240 = and i64 %shr239, 128, !dbg !1736
  %tobool241 = icmp ne i64 %and240, 0, !dbg !1736
  %lnot242 = xor i1 %tobool241, true, !dbg !1736
  %lnot244 = xor i1 %lnot242, true, !dbg !1736
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !1736
  %add246 = add i32 %add237, %lnot.ext245, !dbg !1736
  %add247 = add i32 %add175, %add246, !dbg !1736
  %add248 = add i32 %add112, %add247, !dbg !1736
  %34 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr249 = lshr i64 %34, 32, !dbg !1736
  %and250 = and i64 %shr249, 1, !dbg !1736
  %tobool251 = icmp ne i64 %and250, 0, !dbg !1736
  %lnot252 = xor i1 %tobool251, true, !dbg !1736
  %lnot254 = xor i1 %lnot252, true, !dbg !1736
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !1736
  %35 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr256 = lshr i64 %35, 32, !dbg !1736
  %and257 = and i64 %shr256, 2, !dbg !1736
  %tobool258 = icmp ne i64 %and257, 0, !dbg !1736
  %lnot259 = xor i1 %tobool258, true, !dbg !1736
  %lnot261 = xor i1 %lnot259, true, !dbg !1736
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !1736
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !1736
  %36 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr264 = lshr i64 %36, 32, !dbg !1736
  %and265 = and i64 %shr264, 4, !dbg !1736
  %tobool266 = icmp ne i64 %and265, 0, !dbg !1736
  %lnot267 = xor i1 %tobool266, true, !dbg !1736
  %lnot269 = xor i1 %lnot267, true, !dbg !1736
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !1736
  %add271 = add i32 %add263, %lnot.ext270, !dbg !1736
  %37 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr272 = lshr i64 %37, 32, !dbg !1736
  %and273 = and i64 %shr272, 8, !dbg !1736
  %tobool274 = icmp ne i64 %and273, 0, !dbg !1736
  %lnot275 = xor i1 %tobool274, true, !dbg !1736
  %lnot277 = xor i1 %lnot275, true, !dbg !1736
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !1736
  %add279 = add i32 %add271, %lnot.ext278, !dbg !1736
  %38 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr280 = lshr i64 %38, 32, !dbg !1736
  %and281 = and i64 %shr280, 16, !dbg !1736
  %tobool282 = icmp ne i64 %and281, 0, !dbg !1736
  %lnot283 = xor i1 %tobool282, true, !dbg !1736
  %lnot285 = xor i1 %lnot283, true, !dbg !1736
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !1736
  %add287 = add i32 %add279, %lnot.ext286, !dbg !1736
  %39 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr288 = lshr i64 %39, 32, !dbg !1736
  %and289 = and i64 %shr288, 32, !dbg !1736
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1736
  %lnot291 = xor i1 %tobool290, true, !dbg !1736
  %lnot293 = xor i1 %lnot291, true, !dbg !1736
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !1736
  %add295 = add i32 %add287, %lnot.ext294, !dbg !1736
  %40 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr296 = lshr i64 %40, 32, !dbg !1736
  %and297 = and i64 %shr296, 64, !dbg !1736
  %tobool298 = icmp ne i64 %and297, 0, !dbg !1736
  %lnot299 = xor i1 %tobool298, true, !dbg !1736
  %lnot301 = xor i1 %lnot299, true, !dbg !1736
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !1736
  %add303 = add i32 %add295, %lnot.ext302, !dbg !1736
  %41 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr304 = lshr i64 %41, 32, !dbg !1736
  %and305 = and i64 %shr304, 128, !dbg !1736
  %tobool306 = icmp ne i64 %and305, 0, !dbg !1736
  %lnot307 = xor i1 %tobool306, true, !dbg !1736
  %lnot309 = xor i1 %lnot307, true, !dbg !1736
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !1736
  %add311 = add i32 %add303, %lnot.ext310, !dbg !1736
  %42 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr312 = lshr i64 %42, 32, !dbg !1736
  %shr313 = lshr i64 %shr312, 8, !dbg !1736
  %and314 = and i64 %shr313, 1, !dbg !1736
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1736
  %lnot316 = xor i1 %tobool315, true, !dbg !1736
  %lnot318 = xor i1 %lnot316, true, !dbg !1736
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !1736
  %43 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr320 = lshr i64 %43, 32, !dbg !1736
  %shr321 = lshr i64 %shr320, 8, !dbg !1736
  %and322 = and i64 %shr321, 2, !dbg !1736
  %tobool323 = icmp ne i64 %and322, 0, !dbg !1736
  %lnot324 = xor i1 %tobool323, true, !dbg !1736
  %lnot326 = xor i1 %lnot324, true, !dbg !1736
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !1736
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !1736
  %44 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr329 = lshr i64 %44, 32, !dbg !1736
  %shr330 = lshr i64 %shr329, 8, !dbg !1736
  %and331 = and i64 %shr330, 4, !dbg !1736
  %tobool332 = icmp ne i64 %and331, 0, !dbg !1736
  %lnot333 = xor i1 %tobool332, true, !dbg !1736
  %lnot335 = xor i1 %lnot333, true, !dbg !1736
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !1736
  %add337 = add i32 %add328, %lnot.ext336, !dbg !1736
  %45 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr338 = lshr i64 %45, 32, !dbg !1736
  %shr339 = lshr i64 %shr338, 8, !dbg !1736
  %and340 = and i64 %shr339, 8, !dbg !1736
  %tobool341 = icmp ne i64 %and340, 0, !dbg !1736
  %lnot342 = xor i1 %tobool341, true, !dbg !1736
  %lnot344 = xor i1 %lnot342, true, !dbg !1736
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !1736
  %add346 = add i32 %add337, %lnot.ext345, !dbg !1736
  %46 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr347 = lshr i64 %46, 32, !dbg !1736
  %shr348 = lshr i64 %shr347, 8, !dbg !1736
  %and349 = and i64 %shr348, 16, !dbg !1736
  %tobool350 = icmp ne i64 %and349, 0, !dbg !1736
  %lnot351 = xor i1 %tobool350, true, !dbg !1736
  %lnot353 = xor i1 %lnot351, true, !dbg !1736
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !1736
  %add355 = add i32 %add346, %lnot.ext354, !dbg !1736
  %47 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr356 = lshr i64 %47, 32, !dbg !1736
  %shr357 = lshr i64 %shr356, 8, !dbg !1736
  %and358 = and i64 %shr357, 32, !dbg !1736
  %tobool359 = icmp ne i64 %and358, 0, !dbg !1736
  %lnot360 = xor i1 %tobool359, true, !dbg !1736
  %lnot362 = xor i1 %lnot360, true, !dbg !1736
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !1736
  %add364 = add i32 %add355, %lnot.ext363, !dbg !1736
  %48 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr365 = lshr i64 %48, 32, !dbg !1736
  %shr366 = lshr i64 %shr365, 8, !dbg !1736
  %and367 = and i64 %shr366, 64, !dbg !1736
  %tobool368 = icmp ne i64 %and367, 0, !dbg !1736
  %lnot369 = xor i1 %tobool368, true, !dbg !1736
  %lnot371 = xor i1 %lnot369, true, !dbg !1736
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !1736
  %add373 = add i32 %add364, %lnot.ext372, !dbg !1736
  %49 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr374 = lshr i64 %49, 32, !dbg !1736
  %shr375 = lshr i64 %shr374, 8, !dbg !1736
  %and376 = and i64 %shr375, 128, !dbg !1736
  %tobool377 = icmp ne i64 %and376, 0, !dbg !1736
  %lnot378 = xor i1 %tobool377, true, !dbg !1736
  %lnot380 = xor i1 %lnot378, true, !dbg !1736
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !1736
  %add382 = add i32 %add373, %lnot.ext381, !dbg !1736
  %add383 = add i32 %add311, %add382, !dbg !1736
  %50 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr384 = lshr i64 %50, 32, !dbg !1736
  %shr385 = lshr i64 %shr384, 16, !dbg !1736
  %and386 = and i64 %shr385, 1, !dbg !1736
  %tobool387 = icmp ne i64 %and386, 0, !dbg !1736
  %lnot388 = xor i1 %tobool387, true, !dbg !1736
  %lnot390 = xor i1 %lnot388, true, !dbg !1736
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !1736
  %51 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr392 = lshr i64 %51, 32, !dbg !1736
  %shr393 = lshr i64 %shr392, 16, !dbg !1736
  %and394 = and i64 %shr393, 2, !dbg !1736
  %tobool395 = icmp ne i64 %and394, 0, !dbg !1736
  %lnot396 = xor i1 %tobool395, true, !dbg !1736
  %lnot398 = xor i1 %lnot396, true, !dbg !1736
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !1736
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !1736
  %52 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr401 = lshr i64 %52, 32, !dbg !1736
  %shr402 = lshr i64 %shr401, 16, !dbg !1736
  %and403 = and i64 %shr402, 4, !dbg !1736
  %tobool404 = icmp ne i64 %and403, 0, !dbg !1736
  %lnot405 = xor i1 %tobool404, true, !dbg !1736
  %lnot407 = xor i1 %lnot405, true, !dbg !1736
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !1736
  %add409 = add i32 %add400, %lnot.ext408, !dbg !1736
  %53 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr410 = lshr i64 %53, 32, !dbg !1736
  %shr411 = lshr i64 %shr410, 16, !dbg !1736
  %and412 = and i64 %shr411, 8, !dbg !1736
  %tobool413 = icmp ne i64 %and412, 0, !dbg !1736
  %lnot414 = xor i1 %tobool413, true, !dbg !1736
  %lnot416 = xor i1 %lnot414, true, !dbg !1736
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !1736
  %add418 = add i32 %add409, %lnot.ext417, !dbg !1736
  %54 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr419 = lshr i64 %54, 32, !dbg !1736
  %shr420 = lshr i64 %shr419, 16, !dbg !1736
  %and421 = and i64 %shr420, 16, !dbg !1736
  %tobool422 = icmp ne i64 %and421, 0, !dbg !1736
  %lnot423 = xor i1 %tobool422, true, !dbg !1736
  %lnot425 = xor i1 %lnot423, true, !dbg !1736
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !1736
  %add427 = add i32 %add418, %lnot.ext426, !dbg !1736
  %55 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr428 = lshr i64 %55, 32, !dbg !1736
  %shr429 = lshr i64 %shr428, 16, !dbg !1736
  %and430 = and i64 %shr429, 32, !dbg !1736
  %tobool431 = icmp ne i64 %and430, 0, !dbg !1736
  %lnot432 = xor i1 %tobool431, true, !dbg !1736
  %lnot434 = xor i1 %lnot432, true, !dbg !1736
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !1736
  %add436 = add i32 %add427, %lnot.ext435, !dbg !1736
  %56 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr437 = lshr i64 %56, 32, !dbg !1736
  %shr438 = lshr i64 %shr437, 16, !dbg !1736
  %and439 = and i64 %shr438, 64, !dbg !1736
  %tobool440 = icmp ne i64 %and439, 0, !dbg !1736
  %lnot441 = xor i1 %tobool440, true, !dbg !1736
  %lnot443 = xor i1 %lnot441, true, !dbg !1736
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !1736
  %add445 = add i32 %add436, %lnot.ext444, !dbg !1736
  %57 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr446 = lshr i64 %57, 32, !dbg !1736
  %shr447 = lshr i64 %shr446, 16, !dbg !1736
  %and448 = and i64 %shr447, 128, !dbg !1736
  %tobool449 = icmp ne i64 %and448, 0, !dbg !1736
  %lnot450 = xor i1 %tobool449, true, !dbg !1736
  %lnot452 = xor i1 %lnot450, true, !dbg !1736
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !1736
  %add454 = add i32 %add445, %lnot.ext453, !dbg !1736
  %58 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr455 = lshr i64 %58, 32, !dbg !1736
  %shr456 = lshr i64 %shr455, 16, !dbg !1736
  %shr457 = lshr i64 %shr456, 8, !dbg !1736
  %and458 = and i64 %shr457, 1, !dbg !1736
  %tobool459 = icmp ne i64 %and458, 0, !dbg !1736
  %lnot460 = xor i1 %tobool459, true, !dbg !1736
  %lnot462 = xor i1 %lnot460, true, !dbg !1736
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !1736
  %59 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr464 = lshr i64 %59, 32, !dbg !1736
  %shr465 = lshr i64 %shr464, 16, !dbg !1736
  %shr466 = lshr i64 %shr465, 8, !dbg !1736
  %and467 = and i64 %shr466, 2, !dbg !1736
  %tobool468 = icmp ne i64 %and467, 0, !dbg !1736
  %lnot469 = xor i1 %tobool468, true, !dbg !1736
  %lnot471 = xor i1 %lnot469, true, !dbg !1736
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !1736
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !1736
  %60 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr474 = lshr i64 %60, 32, !dbg !1736
  %shr475 = lshr i64 %shr474, 16, !dbg !1736
  %shr476 = lshr i64 %shr475, 8, !dbg !1736
  %and477 = and i64 %shr476, 4, !dbg !1736
  %tobool478 = icmp ne i64 %and477, 0, !dbg !1736
  %lnot479 = xor i1 %tobool478, true, !dbg !1736
  %lnot481 = xor i1 %lnot479, true, !dbg !1736
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !1736
  %add483 = add i32 %add473, %lnot.ext482, !dbg !1736
  %61 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr484 = lshr i64 %61, 32, !dbg !1736
  %shr485 = lshr i64 %shr484, 16, !dbg !1736
  %shr486 = lshr i64 %shr485, 8, !dbg !1736
  %and487 = and i64 %shr486, 8, !dbg !1736
  %tobool488 = icmp ne i64 %and487, 0, !dbg !1736
  %lnot489 = xor i1 %tobool488, true, !dbg !1736
  %lnot491 = xor i1 %lnot489, true, !dbg !1736
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !1736
  %add493 = add i32 %add483, %lnot.ext492, !dbg !1736
  %62 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr494 = lshr i64 %62, 32, !dbg !1736
  %shr495 = lshr i64 %shr494, 16, !dbg !1736
  %shr496 = lshr i64 %shr495, 8, !dbg !1736
  %and497 = and i64 %shr496, 16, !dbg !1736
  %tobool498 = icmp ne i64 %and497, 0, !dbg !1736
  %lnot499 = xor i1 %tobool498, true, !dbg !1736
  %lnot501 = xor i1 %lnot499, true, !dbg !1736
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !1736
  %add503 = add i32 %add493, %lnot.ext502, !dbg !1736
  %63 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr504 = lshr i64 %63, 32, !dbg !1736
  %shr505 = lshr i64 %shr504, 16, !dbg !1736
  %shr506 = lshr i64 %shr505, 8, !dbg !1736
  %and507 = and i64 %shr506, 32, !dbg !1736
  %tobool508 = icmp ne i64 %and507, 0, !dbg !1736
  %lnot509 = xor i1 %tobool508, true, !dbg !1736
  %lnot511 = xor i1 %lnot509, true, !dbg !1736
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !1736
  %add513 = add i32 %add503, %lnot.ext512, !dbg !1736
  %64 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr514 = lshr i64 %64, 32, !dbg !1736
  %shr515 = lshr i64 %shr514, 16, !dbg !1736
  %shr516 = lshr i64 %shr515, 8, !dbg !1736
  %and517 = and i64 %shr516, 64, !dbg !1736
  %tobool518 = icmp ne i64 %and517, 0, !dbg !1736
  %lnot519 = xor i1 %tobool518, true, !dbg !1736
  %lnot521 = xor i1 %lnot519, true, !dbg !1736
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !1736
  %add523 = add i32 %add513, %lnot.ext522, !dbg !1736
  %65 = load i64, ptr %w.addr, align 8, !dbg !1736
  %shr524 = lshr i64 %65, 32, !dbg !1736
  %shr525 = lshr i64 %shr524, 16, !dbg !1736
  %shr526 = lshr i64 %shr525, 8, !dbg !1736
  %and527 = and i64 %shr526, 128, !dbg !1736
  %tobool528 = icmp ne i64 %and527, 0, !dbg !1736
  %lnot529 = xor i1 %tobool528, true, !dbg !1736
  %lnot531 = xor i1 %lnot529, true, !dbg !1736
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !1736
  %add533 = add i32 %add523, %lnot.ext532, !dbg !1736
  %add534 = add i32 %add454, %add533, !dbg !1736
  %add535 = add i32 %add383, %add534, !dbg !1736
  %add536 = add i32 %add248, %add535, !dbg !1736
  %conv = zext i32 %add536 to i64, !dbg !1736
  br label %cond.end, !dbg !1736

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !1736
  %call = call i64 @__arch_hweight64(i64 noundef %66) #17, !dbg !1736
  br label %cond.end, !dbg !1736

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !1736
  ret i64 %cond, !dbg !1737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1738 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #11 align 16 !dbg !1739 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1745, metadata !DIExpression()), !dbg !1748
  %0 = load i64, ptr %w.addr, align 8, !dbg !1749
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !1750, !srcloc !1751
  store i64 %1, ptr %res, align 8, !dbg !1750
  %2 = load i64, ptr %res, align 8, !dbg !1752
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !1753
  ret i64 %2, !dbg !1754
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #3 align 16 !dbg !1755 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1757, metadata !DIExpression()), !dbg !1758
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1759
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1759
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1759
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #17, !dbg !1760
  %conv = trunc i64 %call to i32, !dbg !1760
  ret i32 %conv, !dbg !1761
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear_cpu(i32 noundef %cpu, ptr noundef %dstp) #11 align 16 !dbg !1762 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1766, metadata !DIExpression()), !dbg !1768
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1767, metadata !DIExpression()), !dbg !1769
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1770
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !1771
  %conv = zext i32 %call to i64, !dbg !1771
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !1772
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1772
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1772
  call void @clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !1773
  ret void, !dbg !1774
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_next(i32 noundef %n, ptr noundef %srcp) #3 align 16 !dbg !1775 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1779, metadata !DIExpression()), !dbg !1781
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1780, metadata !DIExpression()), !dbg !1782
  %0 = load i32, ptr %n.addr, align 4, !dbg !1783
  %cmp = icmp ne i32 %0, -1, !dbg !1785
  br i1 %cmp, label %if.then, label %if.end, !dbg !1786

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !1787
  %call = call i32 @cpumask_check(i32 noundef %1) #17, !dbg !1788
  br label %if.end, !dbg !1788

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %srcp.addr, align 8, !dbg !1789
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !1789
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1789
  %3 = load i32, ptr %n.addr, align 4, !dbg !1790
  %add = add i32 %3, 1, !dbg !1791
  %conv = sext i32 %add to i64, !dbg !1790
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #17, !dbg !1792
  %conv2 = trunc i64 %call1 to i32, !dbg !1792
  ret i32 %conv2, !dbg !1793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_and_clear_cpu(i32 noundef %cpu, ptr noundef %cpumask) #11 align 16 !dbg !1794 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1798, metadata !DIExpression()), !dbg !1800
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !1799, metadata !DIExpression()), !dbg !1801
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1802
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !1803
  %conv = zext i32 %call to i64, !dbg !1803
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !1804
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1804
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1804
  %call1 = call zeroext i1 @test_and_clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !1805
  ret i1 %call1, !dbg !1806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1807 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1809, metadata !DIExpression()), !dbg !1811
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1810, metadata !DIExpression()), !dbg !1812
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1813
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1814
  %div = sdiv i64 %1, 64, !dbg !1814
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1815
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1816
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1817
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1818
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1819
  ret void, !dbg !1820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1821 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1823, metadata !DIExpression()), !dbg !1825
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1824, metadata !DIExpression()), !dbg !1826
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1827
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1829
  br i1 %1, label %if.then, label %if.else, !dbg !1830

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1831
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1831
  %shr = ashr i64 %3, 3, !dbg !1831
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1831
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1833
  %and = and i64 %4, 7, !dbg !1833
  %sh_prom = trunc i64 %and to i32, !dbg !1833
  %shl = shl i32 1, %sh_prom, !dbg !1833
  %not = xor i32 %shl, -1, !dbg !1834
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !1835, !srcloc !1836
  br label %if.end, !dbg !1837

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1838
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1840
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !1841, !srcloc !1842
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1844 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1848, metadata !DIExpression()), !dbg !1850
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1849, metadata !DIExpression()), !dbg !1851
  br label %do.body, !dbg !1852

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1853

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1855
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1856
  %div = sdiv i64 %1, 64, !dbg !1856
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1857
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1858
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1859
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1860
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1861
  ret i1 %call, !dbg !1862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !1863 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1865, metadata !DIExpression()), !dbg !1867
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1866, metadata !DIExpression()), !dbg !1868
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1869
  %1 = load i64, ptr %size.addr, align 8, !dbg !1870
  %conv = trunc i64 %1 to i32, !dbg !1870
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1871
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1872
  %3 = load i64, ptr %size.addr, align 8, !dbg !1872
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !1872
  ret void, !dbg !1873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !1874 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1876, metadata !DIExpression()), !dbg !1880
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1877, metadata !DIExpression()), !dbg !1881
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1878, metadata !DIExpression()), !dbg !1882
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1882
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1882
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !1882, !srcloc !1883
  %3 = icmp ult i8 %2, 2, !dbg !1882
  call void @llvm.assume(i1 %3), !dbg !1882
  store i8 %2, ptr %c, align 1, !dbg !1882
  %4 = load i8, ptr %c, align 1, !dbg !1882, !range !709, !noundef !710
  %tobool = trunc i8 %4 to i1, !dbg !1882
  %frombool = zext i1 %tobool to i8, !dbg !1882
  store i8 %frombool, ptr %tmp, align 1, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !1884
  %5 = load i8, ptr %tmp, align 1, !dbg !1882, !range !709, !noundef !710
  %tobool1 = trunc i8 %5 to i1, !dbg !1882
  ret i1 %tobool1, !dbg !1885
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_andnot(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !1886 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1888, metadata !DIExpression()), !dbg !1892
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1889, metadata !DIExpression()), !dbg !1893
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1890, metadata !DIExpression()), !dbg !1894
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1891, metadata !DIExpression()), !dbg !1895
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1896
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1896
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1896

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1896
  %cmp = icmp ule i32 %2, 64, !dbg !1896
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1896

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1896
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1896
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1898

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1899
  %5 = load i64, ptr %4, align 8, !dbg !1900
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1901
  %7 = load i64, ptr %6, align 8, !dbg !1902
  %not = xor i64 %7, -1, !dbg !1903
  %and = and i64 %5, %not, !dbg !1904
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1905
  %sub = sub i32 0, %8, !dbg !1905
  %and3 = and i32 %sub, 63, !dbg !1905
  %sh_prom = zext i32 %and3 to i64, !dbg !1905
  %shr = lshr i64 -1, %sh_prom, !dbg !1905
  %and4 = and i64 %and, %shr, !dbg !1906
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1907
  store i64 %and4, ptr %9, align 8, !dbg !1908
  %cmp5 = icmp ne i64 %and4, 0, !dbg !1909
  store i1 %cmp5, ptr %retval, align 1, !dbg !1910
  br label %return, !dbg !1910

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !1911
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !1912
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !1913
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !1914
  %call = call zeroext i1 @__bitmap_andnot(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #17, !dbg !1915
  store i1 %call, ptr %retval, align 1, !dbg !1916
  br label %return, !dbg !1916

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !1917
  ret i1 %14, !dbg !1917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1918 dso_local zeroext i1 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { nounwind memory(read) }
attributes #23 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/group_cpus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e563f6f828087cc63d2295d94e789c9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_group_cpus_evenly209", scope: !9, file: !2, line: 439, type: !51, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.group_cpus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/group_cpus\22 -D KBUILD_BASENAME=\22group_cpus\22 -D KBUILD_MODNAME=\22group_cpus\22 -D __KBUILD_MODNAME=kmod_group_cpus -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/group_cpus.ll lib/group_cpus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !38, globals: !65, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !27}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 364, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!23 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!25 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!26 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !28, line: 398, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37}
!30 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!31 = !DIEnumerator(name: "N_ONLINE", value: 1)
!32 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!33 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!34 = !DIEnumerator(name: "N_MEMORY", value: 3)
!35 = !DIEnumerator(name: "N_CPU", value: 4)
!36 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!37 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!38 = !{!39, !41, !51, !13, !48, !52, !53, !55, !58, !59, !62}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !13)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !44, line: 19, size: 64, elements: !45)
!44 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !43, file: !44, line: 19, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !49)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !{!50}
!50 = !DISubrange(count: 1)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !60, line: 31, baseType: !61)
!60 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!61 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !44, line: 913, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !49)
!65 = !{!0, !7, !66}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !18, line: 480, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 21)
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 8, !"cf-protection-branch", i32 1}
!75 = !{i32 4, !"function_return_thunk_extern", i32 1}
!76 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!77 = !{i32 1, !"Code Model", i32 2}
!78 = !{i32 1, !"override-stack-alignment", i32 8}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = distinct !DISubprogram(name: "group_cpus_evenly", scope: !2, file: !2, line: 347, type: !81, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !84)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !13}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !100, !103, !104, !105}
!85 = !DILocalVariable(name: "numgrps", arg: 1, scope: !80, file: !2, line: 347, type: !13)
!86 = !DILocalVariable(name: "curgrp", scope: !80, file: !2, line: 349, type: !13)
!87 = !DILocalVariable(name: "nr_present", scope: !80, file: !2, line: 349, type: !13)
!88 = !DILocalVariable(name: "nr_others", scope: !80, file: !2, line: 349, type: !13)
!89 = !DILocalVariable(name: "node_to_cpumask", scope: !80, file: !2, line: 350, type: !62)
!90 = !DILocalVariable(name: "nmsk", scope: !80, file: !2, line: 351, type: !63)
!91 = !DILocalVariable(name: "npresmsk", scope: !80, file: !2, line: 351, type: !63)
!92 = !DILocalVariable(name: "ret", scope: !80, file: !2, line: 352, type: !52)
!93 = !DILocalVariable(name: "masks", scope: !80, file: !2, line: 353, type: !83)
!94 = !DILocalVariable(name: "__v", scope: !95, file: !2, line: 383, type: !41)
!95 = distinct !DILexicalBlock(scope: !80, file: !2, line: 383, column: 25)
!96 = !DILabel(scope: !80, name: "fail_build_affinity", file: !2, line: 408)
!97 = !DILocalVariable(name: "__ret_warn_on", scope: !98, file: !2, line: 410, type: !52)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 410, column: 3)
!99 = distinct !DILexicalBlock(scope: !80, file: !2, line: 409, column: 6)
!100 = !DILocalVariable(name: "__flags", scope: !101, file: !2, line: 410, type: !52)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 410, column: 3)
!102 = distinct !DILexicalBlock(scope: !98, file: !2, line: 410, column: 3)
!103 = !DILabel(scope: !80, name: "fail_node_to_cpumask", file: !2, line: 412)
!104 = !DILabel(scope: !80, name: "fail_npresmsk", file: !2, line: 415)
!105 = !DILabel(scope: !80, name: "fail_nmsk", file: !2, line: 418)
!106 = !DILocation(line: 347, column: 48, scope: !80)
!107 = !DILocation(line: 349, column: 2, scope: !80)
!108 = !DILocation(line: 349, column: 15, scope: !80)
!109 = !DILocation(line: 349, column: 27, scope: !80)
!110 = !DILocation(line: 349, column: 43, scope: !80)
!111 = !DILocation(line: 350, column: 2, scope: !80)
!112 = !DILocation(line: 350, column: 17, scope: !80)
!113 = !DILocation(line: 351, column: 2, scope: !80)
!114 = !DILocation(line: 351, column: 16, scope: !80)
!115 = !DILocation(line: 351, column: 22, scope: !80)
!116 = !DILocation(line: 352, column: 2, scope: !80)
!117 = !DILocation(line: 352, column: 6, scope: !80)
!118 = !DILocation(line: 353, column: 2, scope: !80)
!119 = !DILocation(line: 353, column: 18, scope: !80)
!120 = !DILocation(line: 355, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !80, file: !2, line: 355, column: 6)
!122 = !DILocation(line: 355, column: 6, scope: !80)
!123 = !DILocation(line: 356, column: 3, scope: !121)
!124 = !DILocation(line: 358, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !80, file: !2, line: 358, column: 6)
!126 = !DILocation(line: 358, column: 6, scope: !80)
!127 = !DILocation(line: 359, column: 3, scope: !125)
!128 = !DILocation(line: 361, column: 20, scope: !80)
!129 = !DILocation(line: 361, column: 18, scope: !80)
!130 = !DILocation(line: 362, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !80, file: !2, line: 362, column: 6)
!132 = !DILocation(line: 362, column: 6, scope: !80)
!133 = !DILocation(line: 363, column: 3, scope: !131)
!134 = !DILocation(line: 365, column: 18, scope: !80)
!135 = !DILocation(line: 365, column: 10, scope: !80)
!136 = !DILocation(line: 365, column: 8, scope: !80)
!137 = !DILocation(line: 366, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !80, file: !2, line: 366, column: 6)
!139 = !DILocation(line: 366, column: 6, scope: !80)
!140 = !DILocation(line: 367, column: 3, scope: !138)
!141 = !DILocation(line: 369, column: 24, scope: !80)
!142 = !DILocation(line: 369, column: 2, scope: !80)
!143 = !DILocation(line: 383, column: 15, scope: !80)
!144 = !DILocation(line: 383, column: 25, scope: !95)
!145 = !DILocation(line: 383, column: 25, scope: !146)
!146 = distinct !DILexicalBlock(scope: !95, file: !2, line: 383, column: 25)
!147 = !DILocation(line: 383, column: 25, scope: !80)
!148 = !DILocation(line: 383, column: 2, scope: !80)
!149 = !DILocation(line: 386, column: 28, scope: !80)
!150 = !DILocation(line: 386, column: 36, scope: !80)
!151 = !DILocation(line: 386, column: 45, scope: !80)
!152 = !DILocation(line: 387, column: 7, scope: !80)
!153 = !DILocation(line: 387, column: 17, scope: !80)
!154 = !DILocation(line: 387, column: 23, scope: !80)
!155 = !DILocation(line: 386, column: 8, scope: !80)
!156 = !DILocation(line: 386, column: 6, scope: !80)
!157 = !DILocation(line: 388, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !80, file: !2, line: 388, column: 6)
!159 = !DILocation(line: 388, column: 10, scope: !158)
!160 = !DILocation(line: 388, column: 6, scope: !80)
!161 = !DILocation(line: 389, column: 3, scope: !158)
!162 = !DILocation(line: 390, column: 15, scope: !80)
!163 = !DILocation(line: 390, column: 13, scope: !80)
!164 = !DILocation(line: 398, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !80, file: !2, line: 398, column: 6)
!166 = !DILocation(line: 398, column: 20, scope: !165)
!167 = !DILocation(line: 398, column: 17, scope: !165)
!168 = !DILocation(line: 398, column: 6, scope: !80)
!169 = !DILocation(line: 399, column: 10, scope: !165)
!170 = !DILocation(line: 399, column: 3, scope: !165)
!171 = !DILocation(line: 401, column: 12, scope: !165)
!172 = !DILocation(line: 401, column: 10, scope: !165)
!173 = !DILocation(line: 402, column: 17, scope: !80)
!174 = !DILocation(line: 402, column: 46, scope: !80)
!175 = !DILocation(line: 402, column: 2, scope: !80)
!176 = !DILocation(line: 403, column: 28, scope: !80)
!177 = !DILocation(line: 403, column: 36, scope: !80)
!178 = !DILocation(line: 403, column: 45, scope: !80)
!179 = !DILocation(line: 404, column: 7, scope: !80)
!180 = !DILocation(line: 404, column: 17, scope: !80)
!181 = !DILocation(line: 404, column: 23, scope: !80)
!182 = !DILocation(line: 403, column: 8, scope: !80)
!183 = !DILocation(line: 403, column: 6, scope: !80)
!184 = !DILocation(line: 405, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !80, file: !2, line: 405, column: 6)
!186 = !DILocation(line: 405, column: 10, scope: !185)
!187 = !DILocation(line: 405, column: 6, scope: !80)
!188 = !DILocation(line: 406, column: 15, scope: !185)
!189 = !DILocation(line: 406, column: 13, scope: !185)
!190 = !DILocation(line: 406, column: 3, scope: !185)
!191 = !DILocation(line: 405, column: 13, scope: !185)
!192 = !DILocation(line: 408, column: 2, scope: !80)
!193 = !DILocation(line: 409, column: 6, scope: !99)
!194 = !DILocation(line: 409, column: 10, scope: !99)
!195 = !DILocation(line: 409, column: 6, scope: !80)
!196 = !DILocation(line: 410, column: 3, scope: !98)
!197 = !DILocation(line: 410, column: 3, scope: !102)
!198 = !DILocation(line: 410, column: 3, scope: !101)
!199 = !DILocation(line: 410, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !101, file: !2, line: 410, column: 3)
!201 = !DILocation(line: 410, column: 3, scope: !202)
!202 = distinct !DILexicalBlock(scope: !101, file: !2, line: 410, column: 3)
!203 = !{i64 2152734378, i64 2152734407, i64 2152734453, i64 2152734511, i64 2152734565, i64 2152734619, i64 2152734674, i64 2152734705, i64 2152735013, i64 2152735019, i64 2152735066, i64 2152735089, i64 2152735115}
!204 = !DILocation(line: 410, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !101, file: !2, line: 410, column: 3)
!206 = !DILocation(line: 410, column: 3, scope: !99)
!207 = !DILocation(line: 409, column: 13, scope: !99)
!208 = !DILocation(line: 412, column: 2, scope: !80)
!209 = !DILocation(line: 413, column: 23, scope: !80)
!210 = !DILocation(line: 413, column: 2, scope: !80)
!211 = !DILocation(line: 415, column: 2, scope: !80)
!212 = !DILocation(line: 416, column: 19, scope: !80)
!213 = !DILocation(line: 416, column: 2, scope: !80)
!214 = !DILocation(line: 418, column: 2, scope: !80)
!215 = !DILocation(line: 419, column: 19, scope: !80)
!216 = !DILocation(line: 419, column: 2, scope: !80)
!217 = !DILocation(line: 420, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !80, file: !2, line: 420, column: 6)
!219 = !DILocation(line: 420, column: 10, scope: !218)
!220 = !DILocation(line: 420, column: 6, scope: !80)
!221 = !DILocation(line: 421, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !2, line: 420, column: 15)
!223 = !DILocation(line: 421, column: 3, scope: !222)
!224 = !DILocation(line: 422, column: 3, scope: !222)
!225 = !DILocation(line: 424, column: 9, scope: !80)
!226 = !DILocation(line: 424, column: 2, scope: !80)
!227 = !DILocation(line: 425, column: 1, scope: !80)
!228 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !44, file: !44, line: 929, type: !229, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !233)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !62, !39}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !232)
!232 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "mask", arg: 1, scope: !228, file: !44, line: 929, type: !62)
!235 = !DILocalVariable(name: "flags", arg: 2, scope: !228, file: !44, line: 929, type: !39)
!236 = !DILocation(line: 929, column: 54, scope: !228)
!237 = !DILocation(line: 929, column: 66, scope: !228)
!238 = !DILocation(line: 931, column: 17, scope: !228)
!239 = !DILocation(line: 931, column: 16, scope: !228)
!240 = !DILocation(line: 931, column: 2, scope: !228)
!241 = !DILocation(line: 932, column: 2, scope: !228)
!242 = distinct !DISubprogram(name: "alloc_node_to_cpumask", scope: !2, file: !2, line: 45, type: !243, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!62}
!245 = !{!246, !247, !248}
!246 = !DILocalVariable(name: "masks", scope: !242, file: !2, line: 47, type: !62)
!247 = !DILocalVariable(name: "node", scope: !242, file: !2, line: 48, type: !52)
!248 = !DILabel(scope: !242, name: "out_unwind", file: !2, line: 61)
!249 = !DILocation(line: 47, column: 2, scope: !242)
!250 = !DILocation(line: 47, column: 17, scope: !242)
!251 = !DILocation(line: 48, column: 2, scope: !242)
!252 = !DILocation(line: 48, column: 6, scope: !242)
!253 = !DILocation(line: 50, column: 18, scope: !242)
!254 = !DILocation(line: 50, column: 10, scope: !242)
!255 = !DILocation(line: 50, column: 8, scope: !242)
!256 = !DILocation(line: 51, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !242, file: !2, line: 51, column: 6)
!258 = !DILocation(line: 51, column: 6, scope: !242)
!259 = !DILocation(line: 52, column: 3, scope: !257)
!260 = !DILocation(line: 54, column: 12, scope: !261)
!261 = distinct !DILexicalBlock(scope: !242, file: !2, line: 54, column: 2)
!262 = !DILocation(line: 54, column: 7, scope: !261)
!263 = !DILocation(line: 54, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !2, line: 54, column: 2)
!265 = !DILocation(line: 54, column: 24, scope: !264)
!266 = !DILocation(line: 54, column: 22, scope: !264)
!267 = !DILocation(line: 54, column: 2, scope: !261)
!268 = !DILocation(line: 55, column: 28, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 55, column: 7)
!270 = distinct !DILexicalBlock(scope: !264, file: !2, line: 54, column: 45)
!271 = !DILocation(line: 55, column: 34, scope: !269)
!272 = !DILocation(line: 55, column: 8, scope: !269)
!273 = !DILocation(line: 55, column: 7, scope: !270)
!274 = !DILocation(line: 56, column: 4, scope: !269)
!275 = !DILocation(line: 57, column: 2, scope: !270)
!276 = !DILocation(line: 54, column: 41, scope: !264)
!277 = !DILocation(line: 54, column: 2, scope: !264)
!278 = distinct !{!278, !267, !279, !280, !281}
!279 = !DILocation(line: 57, column: 2, scope: !261)
!280 = !{!"llvm.loop.mustprogress"}
!281 = !{!"llvm.loop.unroll.disable"}
!282 = !DILocation(line: 59, column: 9, scope: !242)
!283 = !DILocation(line: 59, column: 2, scope: !242)
!284 = !DILocation(line: 61, column: 1, scope: !242)
!285 = !DILocation(line: 62, column: 2, scope: !242)
!286 = !DILocation(line: 62, column: 9, scope: !242)
!287 = !DILocation(line: 62, column: 16, scope: !242)
!288 = !DILocation(line: 63, column: 20, scope: !242)
!289 = !DILocation(line: 63, column: 26, scope: !242)
!290 = !DILocation(line: 63, column: 3, scope: !242)
!291 = distinct !{!291, !285, !292, !280, !281}
!292 = !DILocation(line: 63, column: 31, scope: !242)
!293 = !DILocation(line: 64, column: 8, scope: !242)
!294 = !DILocation(line: 64, column: 2, scope: !242)
!295 = !DILocation(line: 65, column: 2, scope: !242)
!296 = !DILocation(line: 66, column: 1, scope: !242)
!297 = distinct !DISubprogram(name: "kcalloc", scope: !18, file: !18, line: 666, type: !298, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !304)
!298 = !DISubroutineType(types: !299)
!299 = !{!51, !300, !300, !39}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !302, line: 72, baseType: !303)
!302 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !302, line: 16, baseType: !48)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "n", arg: 1, scope: !297, file: !18, line: 666, type: !300)
!306 = !DILocalVariable(name: "size", arg: 2, scope: !297, file: !18, line: 666, type: !300)
!307 = !DILocalVariable(name: "flags", arg: 3, scope: !297, file: !18, line: 666, type: !39)
!308 = !DILocation(line: 666, column: 55, scope: !297)
!309 = !DILocation(line: 666, column: 65, scope: !297)
!310 = !DILocation(line: 666, column: 77, scope: !297)
!311 = !DILocation(line: 668, column: 23, scope: !297)
!312 = !DILocation(line: 668, column: 26, scope: !297)
!313 = !DILocation(line: 668, column: 32, scope: !297)
!314 = !DILocation(line: 668, column: 38, scope: !297)
!315 = !DILocation(line: 668, column: 9, scope: !297)
!316 = !DILocation(line: 668, column: 2, scope: !297)
!317 = distinct !DISubprogram(name: "build_node_to_cpumask", scope: !2, file: !2, line: 77, type: !318, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !62}
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "masks", arg: 1, scope: !317, file: !2, line: 77, type: !62)
!322 = !DILocalVariable(name: "cpu", scope: !317, file: !2, line: 79, type: !52)
!323 = !DILocation(line: 77, column: 50, scope: !317)
!324 = !DILocation(line: 79, column: 2, scope: !317)
!325 = !DILocation(line: 79, column: 6, scope: !317)
!326 = !DILocation(line: 81, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !2, line: 81, column: 2)
!328 = !DILocation(line: 81, column: 2, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !2, line: 81, column: 2)
!330 = !DILocation(line: 82, column: 19, scope: !329)
!331 = !DILocation(line: 82, column: 24, scope: !329)
!332 = !DILocation(line: 82, column: 42, scope: !329)
!333 = !DILocation(line: 82, column: 30, scope: !329)
!334 = !DILocation(line: 82, column: 3, scope: !329)
!335 = distinct !{!335, !326, !336, !280, !281}
!336 = !DILocation(line: 82, column: 47, scope: !327)
!337 = !DILocation(line: 83, column: 1, scope: !317)
!338 = distinct !DISubprogram(name: "cpumask_copy", scope: !44, file: !44, line: 737, type: !339, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !83, !41}
!341 = !{!342, !343}
!342 = !DILocalVariable(name: "dstp", arg: 1, scope: !338, file: !44, line: 737, type: !83)
!343 = !DILocalVariable(name: "srcp", arg: 2, scope: !338, file: !44, line: 738, type: !41)
!344 = !DILocation(line: 737, column: 49, scope: !338)
!345 = !DILocation(line: 738, column: 27, scope: !338)
!346 = !DILocation(line: 740, column: 14, scope: !338)
!347 = !DILocation(line: 740, column: 34, scope: !338)
!348 = !DILocation(line: 740, column: 2, scope: !338)
!349 = !DILocation(line: 741, column: 1, scope: !338)
!350 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !351, file: !351, line: 232, type: !352, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!351 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!352 = !DISubroutineType(types: !353)
!353 = !{null}
!354 = !DILocation(line: 232, column: 52, scope: !350)
!355 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !351, file: !351, line: 231, type: !352, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!356 = !DILocation(line: 231, column: 52, scope: !355)
!357 = distinct !DISubprogram(name: "__group_cpus_evenly", scope: !2, file: !2, line: 249, type: !358, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!52, !13, !13, !62, !41, !83, !83}
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !380, !390, !394, !395, !396, !398}
!361 = !DILocalVariable(name: "startgrp", arg: 1, scope: !357, file: !2, line: 249, type: !13)
!362 = !DILocalVariable(name: "numgrps", arg: 2, scope: !357, file: !2, line: 249, type: !13)
!363 = !DILocalVariable(name: "node_to_cpumask", arg: 3, scope: !357, file: !2, line: 250, type: !62)
!364 = !DILocalVariable(name: "cpu_mask", arg: 4, scope: !357, file: !2, line: 251, type: !41)
!365 = !DILocalVariable(name: "nmsk", arg: 5, scope: !357, file: !2, line: 252, type: !83)
!366 = !DILocalVariable(name: "masks", arg: 6, scope: !357, file: !2, line: 252, type: !83)
!367 = !DILocalVariable(name: "i", scope: !357, file: !2, line: 254, type: !13)
!368 = !DILocalVariable(name: "n", scope: !357, file: !2, line: 254, type: !13)
!369 = !DILocalVariable(name: "nodes", scope: !357, file: !2, line: 254, type: !13)
!370 = !DILocalVariable(name: "cpus_per_grp", scope: !357, file: !2, line: 254, type: !13)
!371 = !DILocalVariable(name: "extra_grps", scope: !357, file: !2, line: 254, type: !13)
!372 = !DILocalVariable(name: "done", scope: !357, file: !2, line: 254, type: !13)
!373 = !DILocalVariable(name: "last_grp", scope: !357, file: !2, line: 255, type: !13)
!374 = !DILocalVariable(name: "curgrp", scope: !357, file: !2, line: 256, type: !13)
!375 = !DILocalVariable(name: "nodemsk", scope: !357, file: !2, line: 257, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !28, line: 99, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 99, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !377, file: !28, line: 99, baseType: !47, size: 64)
!380 = !DILocalVariable(name: "node_groups", scope: !357, file: !2, line: 258, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node_groups", file: !2, line: 100, size: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !382, file: !2, line: 101, baseType: !13, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !2, line: 103, baseType: !386, size: 32, offset: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !2, line: 103, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !386, file: !2, line: 104, baseType: !13, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ncpus", scope: !386, file: !2, line: 105, baseType: !13, size: 32)
!390 = !DILocalVariable(name: "ncpus", scope: !391, file: !2, line: 290, type: !13)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 289, column: 36)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 289, column: 2)
!393 = distinct !DILexicalBlock(scope: !357, file: !2, line: 289, column: 2)
!394 = !DILocalVariable(name: "v", scope: !391, file: !2, line: 290, type: !13)
!395 = !DILocalVariable(name: "nv", scope: !391, file: !2, line: 291, type: !381)
!396 = !DILocalVariable(name: "__ret_warn_on", scope: !397, file: !2, line: 302, type: !52)
!397 = distinct !DILexicalBlock(scope: !391, file: !2, line: 302, column: 3)
!398 = !DILocalVariable(name: "__flags", scope: !399, file: !2, line: 302, type: !52)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 302, column: 3)
!400 = distinct !DILexicalBlock(scope: !397, file: !2, line: 302, column: 3)
!401 = !DILocation(line: 249, column: 45, scope: !357)
!402 = !DILocation(line: 249, column: 68, scope: !357)
!403 = !DILocation(line: 250, column: 26, scope: !357)
!404 = !DILocation(line: 251, column: 33, scope: !357)
!405 = !DILocation(line: 252, column: 27, scope: !357)
!406 = !DILocation(line: 252, column: 49, scope: !357)
!407 = !DILocation(line: 254, column: 2, scope: !357)
!408 = !DILocation(line: 254, column: 15, scope: !357)
!409 = !DILocation(line: 254, column: 18, scope: !357)
!410 = !DILocation(line: 254, column: 21, scope: !357)
!411 = !DILocation(line: 254, column: 28, scope: !357)
!412 = !DILocation(line: 254, column: 42, scope: !357)
!413 = !DILocation(line: 254, column: 54, scope: !357)
!414 = !DILocation(line: 255, column: 2, scope: !357)
!415 = !DILocation(line: 255, column: 15, scope: !357)
!416 = !DILocation(line: 255, column: 26, scope: !357)
!417 = !DILocation(line: 256, column: 2, scope: !357)
!418 = !DILocation(line: 256, column: 15, scope: !357)
!419 = !DILocation(line: 256, column: 24, scope: !357)
!420 = !DILocation(line: 257, column: 2, scope: !357)
!421 = !DILocation(line: 257, column: 13, scope: !357)
!422 = !DILocation(line: 258, column: 2, scope: !357)
!423 = !DILocation(line: 258, column: 22, scope: !357)
!424 = !DILocation(line: 260, column: 20, scope: !425)
!425 = distinct !DILexicalBlock(scope: !357, file: !2, line: 260, column: 6)
!426 = !DILocation(line: 260, column: 6, scope: !425)
!427 = !DILocation(line: 260, column: 6, scope: !357)
!428 = !DILocation(line: 261, column: 3, scope: !425)
!429 = !DILocation(line: 263, column: 31, scope: !357)
!430 = !DILocation(line: 263, column: 48, scope: !357)
!431 = !DILocation(line: 263, column: 10, scope: !357)
!432 = !DILocation(line: 263, column: 8, scope: !357)
!433 = !DILocation(line: 269, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !357, file: !2, line: 269, column: 6)
!435 = !DILocation(line: 269, column: 17, scope: !434)
!436 = !DILocation(line: 269, column: 14, scope: !434)
!437 = !DILocation(line: 269, column: 6, scope: !357)
!438 = !DILocation(line: 270, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 270, column: 3)
!440 = distinct !DILexicalBlock(scope: !434, file: !2, line: 269, column: 24)
!441 = !DILocation(line: 270, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !2, line: 270, column: 3)
!443 = !DILocation(line: 272, column: 16, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !2, line: 270, column: 34)
!445 = !DILocation(line: 272, column: 22, scope: !444)
!446 = !DILocation(line: 272, column: 32, scope: !444)
!447 = !DILocation(line: 272, column: 48, scope: !444)
!448 = !DILocation(line: 272, column: 4, scope: !444)
!449 = !DILocation(line: 273, column: 16, scope: !444)
!450 = !DILocation(line: 273, column: 22, scope: !444)
!451 = !DILocation(line: 273, column: 32, scope: !444)
!452 = !DILocation(line: 273, column: 38, scope: !444)
!453 = !DILocation(line: 273, column: 47, scope: !444)
!454 = !DILocation(line: 273, column: 4, scope: !444)
!455 = !DILocation(line: 274, column: 8, scope: !456)
!456 = distinct !DILexicalBlock(scope: !444, file: !2, line: 274, column: 8)
!457 = !DILocation(line: 274, column: 20, scope: !456)
!458 = !DILocation(line: 274, column: 17, scope: !456)
!459 = !DILocation(line: 274, column: 8, scope: !444)
!460 = !DILocation(line: 275, column: 12, scope: !456)
!461 = !DILocation(line: 275, column: 5, scope: !456)
!462 = !DILocation(line: 276, column: 3, scope: !444)
!463 = distinct !{!463, !438, !464, !280, !281}
!464 = !DILocation(line: 276, column: 3, scope: !439)
!465 = !DILocation(line: 277, column: 10, scope: !440)
!466 = !DILocation(line: 277, column: 3, scope: !440)
!467 = !DILocation(line: 280, column: 24, scope: !357)
!468 = !DILocation(line: 280, column: 16, scope: !357)
!469 = !DILocation(line: 280, column: 14, scope: !357)
!470 = !DILocation(line: 283, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !357, file: !2, line: 283, column: 6)
!472 = !DILocation(line: 283, column: 6, scope: !357)
!473 = !DILocation(line: 284, column: 3, scope: !471)
!474 = !DILocation(line: 287, column: 21, scope: !357)
!475 = !DILocation(line: 287, column: 30, scope: !357)
!476 = !DILocation(line: 287, column: 47, scope: !357)
!477 = !DILocation(line: 288, column: 16, scope: !357)
!478 = !DILocation(line: 288, column: 22, scope: !357)
!479 = !DILocation(line: 287, column: 2, scope: !357)
!480 = !DILocation(line: 289, column: 9, scope: !393)
!481 = !DILocation(line: 289, column: 7, scope: !393)
!482 = !DILocation(line: 289, column: 14, scope: !392)
!483 = !DILocation(line: 289, column: 18, scope: !392)
!484 = !DILocation(line: 289, column: 16, scope: !392)
!485 = !DILocation(line: 289, column: 2, scope: !393)
!486 = !DILocation(line: 290, column: 3, scope: !391)
!487 = !DILocation(line: 290, column: 16, scope: !391)
!488 = !DILocation(line: 290, column: 23, scope: !391)
!489 = !DILocation(line: 291, column: 3, scope: !391)
!490 = !DILocation(line: 291, column: 23, scope: !391)
!491 = !DILocation(line: 291, column: 29, scope: !391)
!492 = !DILocation(line: 291, column: 41, scope: !391)
!493 = !DILocation(line: 293, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !391, file: !2, line: 293, column: 7)
!495 = !DILocation(line: 293, column: 11, scope: !494)
!496 = !DILocation(line: 293, column: 19, scope: !494)
!497 = !DILocation(line: 293, column: 7, scope: !391)
!498 = !DILocation(line: 294, column: 4, scope: !494)
!499 = !DILocation(line: 297, column: 15, scope: !391)
!500 = !DILocation(line: 297, column: 21, scope: !391)
!501 = !DILocation(line: 297, column: 31, scope: !391)
!502 = !DILocation(line: 297, column: 47, scope: !391)
!503 = !DILocation(line: 297, column: 51, scope: !391)
!504 = !DILocation(line: 297, column: 3, scope: !391)
!505 = !DILocation(line: 298, column: 26, scope: !391)
!506 = !DILocation(line: 298, column: 11, scope: !391)
!507 = !DILocation(line: 298, column: 9, scope: !391)
!508 = !DILocation(line: 299, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !391, file: !2, line: 299, column: 7)
!510 = !DILocation(line: 299, column: 7, scope: !391)
!511 = !DILocation(line: 300, column: 4, scope: !509)
!512 = !DILocation(line: 302, column: 3, scope: !397)
!513 = !DILocation(line: 302, column: 3, scope: !400)
!514 = !DILocation(line: 302, column: 3, scope: !399)
!515 = !DILocation(line: 302, column: 3, scope: !516)
!516 = distinct !DILexicalBlock(scope: !399, file: !2, line: 302, column: 3)
!517 = !DILocation(line: 302, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !399, file: !2, line: 302, column: 3)
!519 = !{i64 2152731075, i64 2152731104, i64 2152731150, i64 2152731208, i64 2152731262, i64 2152731316, i64 2152731371, i64 2152731402, i64 2152731710, i64 2152731716, i64 2152731763, i64 2152731786, i64 2152731812}
!520 = !DILocation(line: 302, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !399, file: !2, line: 302, column: 3)
!522 = !DILocation(line: 302, column: 3, scope: !391)
!523 = !DILocation(line: 305, column: 16, scope: !391)
!524 = !DILocation(line: 305, column: 24, scope: !391)
!525 = !DILocation(line: 305, column: 28, scope: !391)
!526 = !DILocation(line: 305, column: 39, scope: !391)
!527 = !DILocation(line: 305, column: 47, scope: !391)
!528 = !DILocation(line: 305, column: 51, scope: !391)
!529 = !DILocation(line: 305, column: 45, scope: !391)
!530 = !DILocation(line: 305, column: 36, scope: !391)
!531 = !DILocation(line: 305, column: 22, scope: !391)
!532 = !DILocation(line: 305, column: 14, scope: !391)
!533 = !DILocation(line: 308, column: 10, scope: !534)
!534 = distinct !DILexicalBlock(scope: !391, file: !2, line: 308, column: 3)
!535 = !DILocation(line: 308, column: 8, scope: !534)
!536 = !DILocation(line: 308, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !2, line: 308, column: 3)
!538 = !DILocation(line: 308, column: 19, scope: !537)
!539 = !DILocation(line: 308, column: 23, scope: !537)
!540 = !DILocation(line: 308, column: 17, scope: !537)
!541 = !DILocation(line: 308, column: 3, scope: !534)
!542 = !DILocation(line: 309, column: 19, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !2, line: 308, column: 47)
!544 = !DILocation(line: 309, column: 27, scope: !543)
!545 = !DILocation(line: 309, column: 31, scope: !543)
!546 = !DILocation(line: 309, column: 25, scope: !543)
!547 = !DILocation(line: 309, column: 17, scope: !543)
!548 = !DILocation(line: 312, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !543, file: !2, line: 312, column: 8)
!550 = !DILocation(line: 312, column: 8, scope: !543)
!551 = !DILocation(line: 313, column: 17, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !2, line: 312, column: 20)
!553 = !DILocation(line: 314, column: 5, scope: !552)
!554 = !DILocation(line: 315, column: 4, scope: !552)
!555 = !DILocation(line: 321, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !543, file: !2, line: 321, column: 8)
!557 = !DILocation(line: 321, column: 18, scope: !556)
!558 = !DILocation(line: 321, column: 15, scope: !556)
!559 = !DILocation(line: 321, column: 8, scope: !543)
!560 = !DILocation(line: 322, column: 12, scope: !556)
!561 = !DILocation(line: 322, column: 5, scope: !556)
!562 = !DILocation(line: 323, column: 25, scope: !543)
!563 = !DILocation(line: 323, column: 31, scope: !543)
!564 = !DILocation(line: 323, column: 40, scope: !543)
!565 = !DILocation(line: 324, column: 7, scope: !543)
!566 = !DILocation(line: 323, column: 4, scope: !543)
!567 = !DILocation(line: 325, column: 3, scope: !543)
!568 = !DILocation(line: 308, column: 33, scope: !537)
!569 = !DILocation(line: 308, column: 43, scope: !537)
!570 = !DILocation(line: 308, column: 3, scope: !537)
!571 = distinct !{!571, !541, !572, !280, !281}
!572 = !DILocation(line: 325, column: 3, scope: !534)
!573 = !DILocation(line: 326, column: 11, scope: !391)
!574 = !DILocation(line: 326, column: 15, scope: !391)
!575 = !DILocation(line: 326, column: 8, scope: !391)
!576 = !DILocation(line: 327, column: 2, scope: !392)
!577 = !DILocation(line: 327, column: 2, scope: !391)
!578 = !DILocation(line: 289, column: 32, scope: !392)
!579 = !DILocation(line: 289, column: 2, scope: !392)
!580 = distinct !{!580, !485, !581, !280, !281}
!581 = !DILocation(line: 327, column: 2, scope: !393)
!582 = !DILocation(line: 328, column: 8, scope: !357)
!583 = !DILocation(line: 328, column: 2, scope: !357)
!584 = !DILocation(line: 329, column: 9, scope: !357)
!585 = !DILocation(line: 329, column: 2, scope: !357)
!586 = !DILocation(line: 330, column: 1, scope: !357)
!587 = distinct !DISubprogram(name: "cpumask_andnot", scope: !44, file: !44, line: 608, type: !588, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!231, !83, !41, !41}
!590 = !{!591, !592, !593}
!591 = !DILocalVariable(name: "dstp", arg: 1, scope: !587, file: !44, line: 608, type: !83)
!592 = !DILocalVariable(name: "src1p", arg: 2, scope: !587, file: !44, line: 609, type: !41)
!593 = !DILocalVariable(name: "src2p", arg: 3, scope: !587, file: !44, line: 610, type: !41)
!594 = !DILocation(line: 608, column: 51, scope: !587)
!595 = !DILocation(line: 609, column: 29, scope: !587)
!596 = !DILocation(line: 610, column: 29, scope: !587)
!597 = !DILocation(line: 612, column: 23, scope: !587)
!598 = !DILocation(line: 612, column: 43, scope: !587)
!599 = !DILocation(line: 613, column: 8, scope: !587)
!600 = !DILocation(line: 612, column: 9, scope: !587)
!601 = !DILocation(line: 612, column: 2, scope: !587)
!602 = distinct !DISubprogram(name: "free_node_to_cpumask", scope: !2, file: !2, line: 68, type: !318, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "masks", arg: 1, scope: !602, file: !2, line: 68, type: !62)
!605 = !DILocalVariable(name: "node", scope: !602, file: !2, line: 70, type: !52)
!606 = !DILocation(line: 68, column: 49, scope: !602)
!607 = !DILocation(line: 70, column: 2, scope: !602)
!608 = !DILocation(line: 70, column: 6, scope: !602)
!609 = !DILocation(line: 72, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !2, line: 72, column: 2)
!611 = !DILocation(line: 72, column: 7, scope: !610)
!612 = !DILocation(line: 72, column: 17, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !2, line: 72, column: 2)
!614 = !DILocation(line: 72, column: 24, scope: !613)
!615 = !DILocation(line: 72, column: 22, scope: !613)
!616 = !DILocation(line: 72, column: 2, scope: !610)
!617 = !DILocation(line: 73, column: 20, scope: !613)
!618 = !DILocation(line: 73, column: 26, scope: !613)
!619 = !DILocation(line: 73, column: 3, scope: !613)
!620 = !DILocation(line: 72, column: 41, scope: !613)
!621 = !DILocation(line: 72, column: 2, scope: !613)
!622 = distinct !{!622, !616, !623, !280, !281}
!623 = !DILocation(line: 73, column: 31, scope: !610)
!624 = !DILocation(line: 74, column: 8, scope: !602)
!625 = !DILocation(line: 74, column: 2, scope: !602)
!626 = !DILocation(line: 75, column: 1, scope: !602)
!627 = distinct !DISubprogram(name: "free_cpumask_var", scope: !44, file: !44, line: 946, type: !628, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !83}
!630 = !{!631}
!631 = !DILocalVariable(name: "mask", arg: 1, scope: !627, file: !44, line: 946, type: !83)
!632 = !DILocation(line: 946, column: 51, scope: !627)
!633 = !DILocation(line: 948, column: 1, scope: !627)
!634 = !DISubprogram(name: "kfree", scope: !18, file: !18, line: 227, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!639 = distinct !DISubprogram(name: "cpumask_clear", scope: !44, file: !44, line: 552, type: !628, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !640)
!640 = !{!641}
!641 = !DILocalVariable(name: "dstp", arg: 1, scope: !639, file: !44, line: 552, type: !83)
!642 = !DILocation(line: 552, column: 50, scope: !639)
!643 = !DILocation(line: 554, column: 14, scope: !639)
!644 = !DILocation(line: 554, column: 2, scope: !639)
!645 = !DILocation(line: 555, column: 1, scope: !639)
!646 = distinct !DISubprogram(name: "bitmap_zero", scope: !647, file: !647, line: 246, type: !648, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !651)
!647 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650, !13}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!651 = !{!652, !653, !654}
!652 = !DILocalVariable(name: "dst", arg: 1, scope: !646, file: !647, line: 246, type: !650)
!653 = !DILocalVariable(name: "nbits", arg: 2, scope: !646, file: !647, line: 246, type: !13)
!654 = !DILocalVariable(name: "len", scope: !646, file: !647, line: 248, type: !13)
!655 = !DILocation(line: 246, column: 47, scope: !646)
!656 = !DILocation(line: 246, column: 65, scope: !646)
!657 = !DILocation(line: 248, column: 2, scope: !646)
!658 = !DILocation(line: 248, column: 15, scope: !646)
!659 = !DILocation(line: 248, column: 21, scope: !646)
!660 = !DILocation(line: 250, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !646, file: !647, line: 250, column: 6)
!662 = !DILocation(line: 250, column: 6, scope: !646)
!663 = !DILocation(line: 251, column: 4, scope: !661)
!664 = !DILocation(line: 251, column: 8, scope: !661)
!665 = !DILocation(line: 251, column: 3, scope: !661)
!666 = !DILocation(line: 253, column: 10, scope: !661)
!667 = !DILocation(line: 253, column: 18, scope: !661)
!668 = !DILocation(line: 253, column: 3, scope: !661)
!669 = !DILocation(line: 254, column: 1, scope: !646)
!670 = distinct !DISubprogram(name: "kmalloc_array", scope: !18, file: !18, line: 629, type: !298, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !671)
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(name: "n", arg: 1, scope: !670, file: !18, line: 629, type: !300)
!673 = !DILocalVariable(name: "size", arg: 2, scope: !670, file: !18, line: 629, type: !300)
!674 = !DILocalVariable(name: "flags", arg: 3, scope: !670, file: !18, line: 629, type: !39)
!675 = !DILocalVariable(name: "bytes", scope: !670, file: !18, line: 631, type: !300)
!676 = !DILocation(line: 629, column: 61, scope: !670)
!677 = !DILocation(line: 629, column: 71, scope: !670)
!678 = !DILocation(line: 629, column: 83, scope: !670)
!679 = !DILocation(line: 631, column: 2, scope: !670)
!680 = !DILocation(line: 631, column: 9, scope: !670)
!681 = !DILocation(line: 633, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !670, file: !18, line: 633, column: 6)
!683 = !DILocation(line: 633, column: 6, scope: !670)
!684 = !DILocation(line: 634, column: 3, scope: !682)
!685 = !DILocation(line: 635, column: 27, scope: !686)
!686 = distinct !DILexicalBlock(scope: !670, file: !18, line: 635, column: 6)
!687 = !DILocation(line: 635, column: 6, scope: !686)
!688 = !DILocation(line: 635, column: 30, scope: !686)
!689 = !DILocation(line: 635, column: 54, scope: !686)
!690 = !DILocation(line: 635, column: 33, scope: !686)
!691 = !DILocation(line: 635, column: 6, scope: !670)
!692 = !DILocation(line: 636, column: 18, scope: !686)
!693 = !DILocation(line: 636, column: 25, scope: !686)
!694 = !DILocation(line: 636, column: 10, scope: !686)
!695 = !DILocation(line: 636, column: 3, scope: !686)
!696 = !DILocation(line: 637, column: 19, scope: !670)
!697 = !DILocation(line: 637, column: 26, scope: !670)
!698 = !DILocation(line: 637, column: 9, scope: !670)
!699 = !DILocation(line: 637, column: 2, scope: !670)
!700 = !DILocation(line: 638, column: 1, scope: !670)
!701 = distinct !DISubprogram(name: "__must_check_overflow", scope: !702, file: !702, line: 51, type: !703, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !705)
!702 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!703 = !DISubroutineType(types: !704)
!704 = !{!231, !231}
!705 = !{!706}
!706 = !DILocalVariable(name: "overflow", arg: 1, scope: !701, file: !702, line: 51, type: !231)
!707 = !DILocation(line: 51, column: 60, scope: !701)
!708 = !DILocation(line: 53, column: 9, scope: !701)
!709 = !{i8 0, i8 2}
!710 = !{}
!711 = !DILocation(line: 53, column: 2, scope: !701)
!712 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 591, type: !713, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{!51, !300, !39}
!715 = !{!716, !717, !718}
!716 = !DILocalVariable(name: "size", arg: 1, scope: !712, file: !18, line: 591, type: !300)
!717 = !DILocalVariable(name: "flags", arg: 2, scope: !712, file: !18, line: 591, type: !39)
!718 = !DILocalVariable(name: "index", scope: !719, file: !18, line: 594, type: !13)
!719 = distinct !DILexicalBlock(scope: !720, file: !18, line: 593, column: 42)
!720 = distinct !DILexicalBlock(scope: !712, file: !18, line: 593, column: 6)
!721 = !DILocation(line: 591, column: 61, scope: !712)
!722 = !DILocation(line: 591, column: 73, scope: !712)
!723 = !DILocation(line: 593, column: 27, scope: !720)
!724 = !DILocation(line: 593, column: 6, scope: !720)
!725 = !DILocation(line: 593, column: 33, scope: !720)
!726 = !DILocation(line: 593, column: 36, scope: !720)
!727 = !DILocation(line: 593, column: 6, scope: !712)
!728 = !DILocation(line: 594, column: 3, scope: !719)
!729 = !DILocation(line: 594, column: 16, scope: !719)
!730 = !DILocation(line: 596, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !719, file: !18, line: 596, column: 7)
!732 = !DILocation(line: 596, column: 12, scope: !731)
!733 = !DILocation(line: 596, column: 7, scope: !719)
!734 = !DILocation(line: 597, column: 25, scope: !731)
!735 = !DILocation(line: 597, column: 31, scope: !731)
!736 = !DILocation(line: 597, column: 11, scope: !731)
!737 = !DILocation(line: 597, column: 4, scope: !731)
!738 = !DILocation(line: 599, column: 11, scope: !719)
!739 = !DILocation(line: 599, column: 9, scope: !719)
!740 = !DILocation(line: 601, column: 33, scope: !719)
!741 = !DILocation(line: 601, column: 40, scope: !719)
!742 = !DILocation(line: 601, column: 20, scope: !719)
!743 = !DILocation(line: 601, column: 5, scope: !719)
!744 = !DILocation(line: 601, column: 51, scope: !719)
!745 = !DILocation(line: 602, column: 5, scope: !719)
!746 = !DILocation(line: 602, column: 12, scope: !719)
!747 = !DILocation(line: 600, column: 10, scope: !719)
!748 = !DILocation(line: 600, column: 3, scope: !719)
!749 = !DILocation(line: 603, column: 2, scope: !720)
!750 = !DILocation(line: 604, column: 19, scope: !712)
!751 = !DILocation(line: 604, column: 25, scope: !712)
!752 = !DILocation(line: 604, column: 9, scope: !712)
!753 = !DILocation(line: 604, column: 2, scope: !712)
!754 = !DILocation(line: 605, column: 1, scope: !712)
!755 = !DISubprogram(name: "__kmalloc", scope: !18, file: !18, line: 488, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 531, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = distinct !DISubprogram(name: "__kmalloc_index", scope: !18, file: !18, line: 444, type: !758, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!13, !300, !231}
!760 = !{!761, !762}
!761 = !DILocalVariable(name: "size", arg: 1, scope: !757, file: !18, line: 444, type: !300)
!762 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !757, file: !18, line: 445, type: !231)
!763 = !DILocation(line: 444, column: 60, scope: !757)
!764 = !DILocation(line: 445, column: 16, scope: !757)
!765 = !DILocation(line: 447, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !757, file: !18, line: 447, column: 6)
!767 = !DILocation(line: 447, column: 6, scope: !757)
!768 = !DILocation(line: 448, column: 3, scope: !766)
!769 = !DILocation(line: 450, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !757, file: !18, line: 450, column: 6)
!771 = !DILocation(line: 450, column: 11, scope: !770)
!772 = !DILocation(line: 450, column: 6, scope: !757)
!773 = !DILocation(line: 451, column: 3, scope: !770)
!774 = !DILocation(line: 453, column: 32, scope: !775)
!775 = distinct !DILexicalBlock(scope: !757, file: !18, line: 453, column: 6)
!776 = !DILocation(line: 453, column: 37, scope: !775)
!777 = !DILocation(line: 453, column: 42, scope: !775)
!778 = !DILocation(line: 453, column: 45, scope: !775)
!779 = !DILocation(line: 453, column: 50, scope: !775)
!780 = !DILocation(line: 453, column: 6, scope: !757)
!781 = !DILocation(line: 454, column: 3, scope: !775)
!782 = !DILocation(line: 455, column: 32, scope: !783)
!783 = distinct !DILexicalBlock(scope: !757, file: !18, line: 455, column: 6)
!784 = !DILocation(line: 455, column: 37, scope: !783)
!785 = !DILocation(line: 455, column: 43, scope: !783)
!786 = !DILocation(line: 455, column: 46, scope: !783)
!787 = !DILocation(line: 455, column: 51, scope: !783)
!788 = !DILocation(line: 455, column: 6, scope: !757)
!789 = !DILocation(line: 456, column: 3, scope: !783)
!790 = !DILocation(line: 457, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !757, file: !18, line: 457, column: 6)
!792 = !DILocation(line: 457, column: 11, scope: !791)
!793 = !DILocation(line: 457, column: 6, scope: !757)
!794 = !DILocation(line: 457, column: 26, scope: !791)
!795 = !DILocation(line: 458, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !757, file: !18, line: 458, column: 6)
!797 = !DILocation(line: 458, column: 11, scope: !796)
!798 = !DILocation(line: 458, column: 6, scope: !757)
!799 = !DILocation(line: 458, column: 26, scope: !796)
!800 = !DILocation(line: 459, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !757, file: !18, line: 459, column: 6)
!802 = !DILocation(line: 459, column: 11, scope: !801)
!803 = !DILocation(line: 459, column: 6, scope: !757)
!804 = !DILocation(line: 459, column: 26, scope: !801)
!805 = !DILocation(line: 460, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !757, file: !18, line: 460, column: 6)
!807 = !DILocation(line: 460, column: 11, scope: !806)
!808 = !DILocation(line: 460, column: 6, scope: !757)
!809 = !DILocation(line: 460, column: 26, scope: !806)
!810 = !DILocation(line: 461, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !757, file: !18, line: 461, column: 6)
!812 = !DILocation(line: 461, column: 11, scope: !811)
!813 = !DILocation(line: 461, column: 6, scope: !757)
!814 = !DILocation(line: 461, column: 26, scope: !811)
!815 = !DILocation(line: 462, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !757, file: !18, line: 462, column: 6)
!817 = !DILocation(line: 462, column: 11, scope: !816)
!818 = !DILocation(line: 462, column: 6, scope: !757)
!819 = !DILocation(line: 462, column: 26, scope: !816)
!820 = !DILocation(line: 463, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !757, file: !18, line: 463, column: 6)
!822 = !DILocation(line: 463, column: 11, scope: !821)
!823 = !DILocation(line: 463, column: 6, scope: !757)
!824 = !DILocation(line: 463, column: 26, scope: !821)
!825 = !DILocation(line: 464, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !757, file: !18, line: 464, column: 6)
!827 = !DILocation(line: 464, column: 11, scope: !826)
!828 = !DILocation(line: 464, column: 6, scope: !757)
!829 = !DILocation(line: 464, column: 26, scope: !826)
!830 = !DILocation(line: 465, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !757, file: !18, line: 465, column: 6)
!832 = !DILocation(line: 465, column: 11, scope: !831)
!833 = !DILocation(line: 465, column: 6, scope: !757)
!834 = !DILocation(line: 465, column: 26, scope: !831)
!835 = !DILocation(line: 466, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !757, file: !18, line: 466, column: 6)
!837 = !DILocation(line: 466, column: 11, scope: !836)
!838 = !DILocation(line: 466, column: 6, scope: !757)
!839 = !DILocation(line: 466, column: 26, scope: !836)
!840 = !DILocation(line: 467, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !757, file: !18, line: 467, column: 6)
!842 = !DILocation(line: 467, column: 11, scope: !841)
!843 = !DILocation(line: 467, column: 6, scope: !757)
!844 = !DILocation(line: 467, column: 26, scope: !841)
!845 = !DILocation(line: 468, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !757, file: !18, line: 468, column: 6)
!847 = !DILocation(line: 468, column: 11, scope: !846)
!848 = !DILocation(line: 468, column: 6, scope: !757)
!849 = !DILocation(line: 468, column: 26, scope: !846)
!850 = !DILocation(line: 469, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !757, file: !18, line: 469, column: 6)
!852 = !DILocation(line: 469, column: 11, scope: !851)
!853 = !DILocation(line: 469, column: 6, scope: !757)
!854 = !DILocation(line: 469, column: 26, scope: !851)
!855 = !DILocation(line: 470, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !757, file: !18, line: 470, column: 6)
!857 = !DILocation(line: 470, column: 11, scope: !856)
!858 = !DILocation(line: 470, column: 6, scope: !757)
!859 = !DILocation(line: 470, column: 26, scope: !856)
!860 = !DILocation(line: 471, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !757, file: !18, line: 471, column: 6)
!862 = !DILocation(line: 471, column: 11, scope: !861)
!863 = !DILocation(line: 471, column: 6, scope: !757)
!864 = !DILocation(line: 471, column: 26, scope: !861)
!865 = !DILocation(line: 472, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !757, file: !18, line: 472, column: 6)
!867 = !DILocation(line: 472, column: 11, scope: !866)
!868 = !DILocation(line: 472, column: 6, scope: !757)
!869 = !DILocation(line: 472, column: 26, scope: !866)
!870 = !DILocation(line: 473, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !757, file: !18, line: 473, column: 6)
!872 = !DILocation(line: 473, column: 11, scope: !871)
!873 = !DILocation(line: 473, column: 6, scope: !757)
!874 = !DILocation(line: 473, column: 26, scope: !871)
!875 = !DILocation(line: 474, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !757, file: !18, line: 474, column: 6)
!877 = !DILocation(line: 474, column: 11, scope: !876)
!878 = !DILocation(line: 474, column: 6, scope: !757)
!879 = !DILocation(line: 474, column: 27, scope: !876)
!880 = !DILocation(line: 475, column: 6, scope: !881)
!881 = distinct !DILexicalBlock(scope: !757, file: !18, line: 475, column: 6)
!882 = !DILocation(line: 475, column: 11, scope: !881)
!883 = !DILocation(line: 475, column: 6, scope: !757)
!884 = !DILocation(line: 475, column: 32, scope: !881)
!885 = !DILocation(line: 477, column: 50, scope: !886)
!886 = distinct !DILexicalBlock(scope: !757, file: !18, line: 477, column: 6)
!887 = !DILocation(line: 477, column: 6, scope: !757)
!888 = !DILocation(line: 478, column: 3, scope: !886)
!889 = !DILocation(line: 478, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !18, line: 478, column: 3)
!891 = distinct !DILexicalBlock(scope: !886, file: !18, line: 478, column: 3)
!892 = !{i32 -2143551958}
!893 = !DILocation(line: 478, column: 3, scope: !891)
!894 = !DILocation(line: 480, column: 3, scope: !886)
!895 = !DILocation(line: 480, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !18, line: 480, column: 3)
!897 = !DILocation(line: 480, column: 3, scope: !898)
!898 = distinct !DILexicalBlock(scope: !896, file: !18, line: 480, column: 3)
!899 = !DILocation(line: 480, column: 3, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !18, line: 480, column: 3)
!901 = !{i64 2151415541, i64 2151415570, i64 2151415616, i64 2151415674, i64 2151415728, i64 2151415782, i64 2151415837, i64 2151415868}
!902 = !DILocation(line: 483, column: 2, scope: !757)
!903 = !DILocation(line: 484, column: 1, scope: !757)
!904 = !DISubprogram(name: "kmalloc_trace", scope: !18, file: !18, line: 525, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!51, !907, !39, !300}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !909, line: 11, flags: DIFlagFwdDecl)
!909 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!910 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 401, type: !911, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!17, !39, !48}
!913 = !{!914, !915}
!914 = !DILocalVariable(name: "flags", arg: 1, scope: !910, file: !18, line: 401, type: !39)
!915 = !DILocalVariable(name: "caller", arg: 2, scope: !910, file: !18, line: 401, type: !48)
!916 = !DILocation(line: 401, column: 67, scope: !910)
!917 = !DILocation(line: 401, column: 88, scope: !910)
!918 = !DILocation(line: 407, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !910, file: !18, line: 407, column: 6)
!920 = !DILocation(line: 407, column: 6, scope: !910)
!921 = !DILocation(line: 413, column: 3, scope: !919)
!922 = !DILocation(line: 423, column: 38, scope: !923)
!923 = distinct !DILexicalBlock(scope: !910, file: !18, line: 423, column: 6)
!924 = !DILocation(line: 423, column: 44, scope: !923)
!925 = !DILocation(line: 423, column: 6, scope: !910)
!926 = !DILocation(line: 424, column: 3, scope: !923)
!927 = !DILocation(line: 426, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !910, file: !18, line: 425, column: 6)
!929 = !DILocation(line: 429, column: 1, scope: !910)
!930 = !DISubprogram(name: "__compiletime_assert_117", scope: !18, file: !18, line: 478, type: !352, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!931 = distinct !DISubprogram(name: "find_next_bit", scope: !932, file: !932, line: 54, type: !933, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !937)
!932 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!933 = !DISubroutineType(types: !934)
!934 = !{!48, !935, !48, !48}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!937 = !{!938, !939, !940, !941}
!938 = !DILocalVariable(name: "addr", arg: 1, scope: !931, file: !932, line: 54, type: !935)
!939 = !DILocalVariable(name: "size", arg: 2, scope: !931, file: !932, line: 54, type: !48)
!940 = !DILocalVariable(name: "offset", arg: 3, scope: !931, file: !932, line: 55, type: !48)
!941 = !DILocalVariable(name: "val", scope: !942, file: !932, line: 58, type: !48)
!942 = distinct !DILexicalBlock(scope: !943, file: !932, line: 57, column: 31)
!943 = distinct !DILexicalBlock(scope: !931, file: !932, line: 57, column: 6)
!944 = !DILocation(line: 54, column: 50, scope: !931)
!945 = !DILocation(line: 54, column: 70, scope: !931)
!946 = !DILocation(line: 55, column: 22, scope: !931)
!947 = !DILocation(line: 57, column: 6, scope: !943)
!948 = !DILocation(line: 57, column: 6, scope: !931)
!949 = !DILocation(line: 58, column: 3, scope: !942)
!950 = !DILocation(line: 58, column: 17, scope: !942)
!951 = !DILocation(line: 60, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !942, file: !932, line: 60, column: 7)
!953 = !DILocation(line: 60, column: 7, scope: !942)
!954 = !DILocation(line: 61, column: 11, scope: !952)
!955 = !DILocation(line: 61, column: 4, scope: !952)
!956 = !DILocation(line: 63, column: 10, scope: !942)
!957 = !DILocation(line: 63, column: 9, scope: !942)
!958 = !DILocation(line: 63, column: 17, scope: !942)
!959 = !DILocation(line: 63, column: 15, scope: !942)
!960 = !DILocation(line: 63, column: 7, scope: !942)
!961 = !DILocation(line: 64, column: 10, scope: !942)
!962 = !DILocation(line: 64, column: 16, scope: !942)
!963 = !DILocation(line: 64, column: 29, scope: !942)
!964 = !DILocation(line: 64, column: 3, scope: !942)
!965 = !DILocation(line: 65, column: 2, scope: !943)
!966 = !DILocation(line: 67, column: 24, scope: !931)
!967 = !DILocation(line: 67, column: 30, scope: !931)
!968 = !DILocation(line: 67, column: 36, scope: !931)
!969 = !DILocation(line: 67, column: 9, scope: !931)
!970 = !DILocation(line: 67, column: 2, scope: !931)
!971 = !DILocation(line: 68, column: 1, scope: !931)
!972 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !44, file: !44, line: 469, type: !973, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !13, !83}
!975 = !{!976, !977}
!976 = !DILocalVariable(name: "cpu", arg: 1, scope: !972, file: !44, line: 469, type: !13)
!977 = !DILocalVariable(name: "dstp", arg: 2, scope: !972, file: !44, line: 469, type: !83)
!978 = !DILocation(line: 469, column: 58, scope: !972)
!979 = !DILocation(line: 469, column: 79, scope: !972)
!980 = !DILocation(line: 471, column: 24, scope: !972)
!981 = !DILocation(line: 471, column: 10, scope: !972)
!982 = !DILocation(line: 471, column: 30, scope: !972)
!983 = !DILocation(line: 471, column: 2, scope: !972)
!984 = !DILocation(line: 472, column: 1, scope: !972)
!985 = distinct !DISubprogram(name: "cpu_to_node", scope: !986, file: !986, line: 94, type: !987, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !989)
!986 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!987 = !DISubroutineType(types: !988)
!988 = !{!52, !52}
!989 = !{!990, !991, !994}
!990 = !DILocalVariable(name: "cpu", arg: 1, scope: !985, file: !986, line: 94, type: !52)
!991 = !DILocalVariable(name: "__vpp_verify", scope: !992, file: !986, line: 96, type: !637)
!992 = distinct !DILexicalBlock(scope: !993, file: !986, line: 96, column: 9)
!993 = distinct !DILexicalBlock(scope: !985, file: !986, line: 96, column: 9)
!994 = !DILocalVariable(name: "__ptr", scope: !995, file: !986, line: 96, type: !48)
!995 = distinct !DILexicalBlock(scope: !993, file: !986, line: 96, column: 9)
!996 = !DILocation(line: 94, column: 35, scope: !985)
!997 = !DILocation(line: 96, column: 9, scope: !993)
!998 = !DILocation(line: 96, column: 9, scope: !992)
!999 = !DILocation(line: 96, column: 9, scope: !995)
!1000 = !DILocation(line: 96, column: 9, scope: !985)
!1001 = !DILocation(line: 96, column: 2, scope: !985)
!1002 = distinct !DISubprogram(name: "variable__ffs", scope: !1003, file: !1003, line: 250, type: !1004, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1006)
!1003 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!48, !48}
!1006 = !{!1007}
!1007 = !DILocalVariable(name: "word", arg: 1, scope: !1002, file: !1003, line: 250, type: !48)
!1008 = !DILocation(line: 250, column: 66, scope: !1002)
!1009 = !DILocation(line: 254, column: 11, scope: !1002)
!1010 = !DILocation(line: 252, column: 2, scope: !1002)
!1011 = !{i64 304286}
!1012 = !DILocation(line: 255, column: 9, scope: !1002)
!1013 = !DILocation(line: 255, column: 2, scope: !1002)
!1014 = !DISubprogram(name: "_find_next_bit", scope: !932, file: !932, line: 11, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = distinct !DISubprogram(name: "set_bit", scope: !1016, file: !1016, line: 26, type: !1017, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1021)
!1016 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !57, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!1021 = !{!1022, !1023}
!1022 = !DILocalVariable(name: "nr", arg: 1, scope: !1015, file: !1016, line: 26, type: !57)
!1023 = !DILocalVariable(name: "addr", arg: 2, scope: !1015, file: !1016, line: 26, type: !1019)
!1024 = !DILocation(line: 26, column: 42, scope: !1015)
!1025 = !DILocation(line: 26, column: 70, scope: !1015)
!1026 = !DILocation(line: 28, column: 26, scope: !1015)
!1027 = !DILocation(line: 28, column: 33, scope: !1015)
!1028 = !DILocation(line: 28, column: 31, scope: !1015)
!1029 = !DILocation(line: 28, column: 2, scope: !1015)
!1030 = !DILocation(line: 29, column: 15, scope: !1015)
!1031 = !DILocation(line: 29, column: 19, scope: !1015)
!1032 = !DILocation(line: 29, column: 2, scope: !1015)
!1033 = !DILocation(line: 30, column: 1, scope: !1015)
!1034 = distinct !DISubprogram(name: "cpumask_check", scope: !44, file: !44, line: 148, type: !1035, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!13, !13}
!1037 = !{!1038}
!1038 = !DILocalVariable(name: "cpu", arg: 1, scope: !1034, file: !44, line: 148, type: !13)
!1039 = !DILocation(line: 148, column: 64, scope: !1034)
!1040 = !DILocation(line: 150, column: 20, scope: !1034)
!1041 = !DILocation(line: 150, column: 2, scope: !1034)
!1042 = !DILocation(line: 151, column: 9, scope: !1034)
!1043 = !DILocation(line: 151, column: 2, scope: !1034)
!1044 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1045, file: !1045, line: 80, type: !1046, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1051)
!1045 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048, !300}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1051 = !{!1052, !1053}
!1052 = !DILocalVariable(name: "v", arg: 1, scope: !1044, file: !1045, line: 80, type: !1048)
!1053 = !DILocalVariable(name: "size", arg: 2, scope: !1044, file: !1045, line: 80, type: !300)
!1054 = !DILocation(line: 80, column: 74, scope: !1044)
!1055 = !DILocation(line: 80, column: 84, scope: !1044)
!1056 = !DILocation(line: 82, column: 20, scope: !1044)
!1057 = !DILocation(line: 82, column: 23, scope: !1044)
!1058 = !DILocation(line: 82, column: 2, scope: !1044)
!1059 = !DILocation(line: 83, column: 2, scope: !1044)
!1060 = !DILocation(line: 84, column: 1, scope: !1044)
!1061 = distinct !DISubprogram(name: "arch_set_bit", scope: !1003, file: !1003, line: 52, type: !1017, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1062)
!1062 = !{!1063, !1064}
!1063 = !DILocalVariable(name: "nr", arg: 1, scope: !1061, file: !1003, line: 52, type: !57)
!1064 = !DILocalVariable(name: "addr", arg: 2, scope: !1061, file: !1003, line: 52, type: !1019)
!1065 = !DILocation(line: 52, column: 19, scope: !1061)
!1066 = !DILocation(line: 52, column: 47, scope: !1061)
!1067 = !DILocation(line: 54, column: 27, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !1003, line: 54, column: 6)
!1069 = !DILocation(line: 54, column: 6, scope: !1068)
!1070 = !DILocation(line: 54, column: 6, scope: !1061)
!1071 = !DILocation(line: 56, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !1003, line: 54, column: 32)
!1073 = !DILocation(line: 57, column: 12, scope: !1072)
!1074 = !DILocation(line: 55, column: 3, scope: !1072)
!1075 = !{i64 2147795599, i64 2147795638, i64 2147795659, i64 2147795696, i64 2147795719, i64 2147795589}
!1076 = !DILocation(line: 59, column: 2, scope: !1072)
!1077 = !DILocation(line: 61, column: 8, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !1003, line: 59, column: 9)
!1079 = !DILocation(line: 61, column: 32, scope: !1078)
!1080 = !DILocation(line: 60, column: 3, scope: !1078)
!1081 = !{i64 2147795884, i64 2147795923, i64 2147795944, i64 2147795981, i64 2147796004, i64 2147795874}
!1082 = !DILocation(line: 63, column: 1, scope: !1061)
!1083 = distinct !DISubprogram(name: "kasan_check_write", scope: !1084, file: !1084, line: 44, type: !1085, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1087)
!1084 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!231, !1048, !13}
!1087 = !{!1088, !1089}
!1088 = !DILocalVariable(name: "p", arg: 1, scope: !1083, file: !1084, line: 44, type: !1048)
!1089 = !DILocalVariable(name: "size", arg: 2, scope: !1083, file: !1084, line: 44, type: !13)
!1090 = !DILocation(line: 44, column: 59, scope: !1083)
!1091 = !DILocation(line: 44, column: 75, scope: !1083)
!1092 = !DILocation(line: 46, column: 2, scope: !1083)
!1093 = distinct !DISubprogram(name: "kcsan_check_access", scope: !351, file: !351, line: 229, type: !1094, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1048, !300, !52}
!1096 = !{!1097, !1098, !1099}
!1097 = !DILocalVariable(name: "ptr", arg: 1, scope: !1093, file: !351, line: 229, type: !1048)
!1098 = !DILocalVariable(name: "size", arg: 2, scope: !1093, file: !351, line: 229, type: !300)
!1099 = !DILocalVariable(name: "type", arg: 3, scope: !1093, file: !351, line: 230, type: !52)
!1100 = !DILocation(line: 229, column: 60, scope: !1093)
!1101 = !DILocation(line: 229, column: 72, scope: !1093)
!1102 = !DILocation(line: 230, column: 15, scope: !1093)
!1103 = !DILocation(line: 230, column: 23, scope: !1093)
!1104 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !44, file: !44, line: 140, type: !1105, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !13, !13}
!1107 = !{!1108, !1109}
!1108 = !DILocalVariable(name: "cpu", arg: 1, scope: !1104, file: !44, line: 140, type: !13)
!1109 = !DILocalVariable(name: "bits", arg: 2, scope: !1104, file: !44, line: 140, type: !13)
!1110 = !DILocation(line: 140, column: 60, scope: !1104)
!1111 = !DILocation(line: 140, column: 78, scope: !1104)
!1112 = !DILocation(line: 145, column: 1, scope: !1104)
!1113 = distinct !DISubprogram(name: "bitmap_copy", scope: !647, file: !647, line: 266, type: !1114, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !650, !935, !13}
!1116 = !{!1117, !1118, !1119, !1120}
!1117 = !DILocalVariable(name: "dst", arg: 1, scope: !1113, file: !647, line: 266, type: !650)
!1118 = !DILocalVariable(name: "src", arg: 2, scope: !1113, file: !647, line: 266, type: !935)
!1119 = !DILocalVariable(name: "nbits", arg: 3, scope: !1113, file: !647, line: 267, type: !13)
!1120 = !DILocalVariable(name: "len", scope: !1113, file: !647, line: 269, type: !13)
!1121 = !DILocation(line: 266, column: 47, scope: !1113)
!1122 = !DILocation(line: 266, column: 73, scope: !1113)
!1123 = !DILocation(line: 267, column: 17, scope: !1113)
!1124 = !DILocation(line: 269, column: 2, scope: !1113)
!1125 = !DILocation(line: 269, column: 15, scope: !1113)
!1126 = !DILocation(line: 269, column: 21, scope: !1113)
!1127 = !DILocation(line: 271, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1113, file: !647, line: 271, column: 6)
!1129 = !DILocation(line: 271, column: 6, scope: !1113)
!1130 = !DILocation(line: 272, column: 11, scope: !1128)
!1131 = !DILocation(line: 272, column: 10, scope: !1128)
!1132 = !DILocation(line: 272, column: 4, scope: !1128)
!1133 = !DILocation(line: 272, column: 8, scope: !1128)
!1134 = !DILocation(line: 272, column: 3, scope: !1128)
!1135 = !DILocation(line: 274, column: 10, scope: !1128)
!1136 = !DILocation(line: 274, column: 15, scope: !1128)
!1137 = !DILocation(line: 274, column: 20, scope: !1128)
!1138 = !DILocation(line: 274, column: 3, scope: !1128)
!1139 = !DILocation(line: 275, column: 1, scope: !1113)
!1140 = distinct !DISubprogram(name: "cpumask_empty", scope: !44, file: !44, line: 672, type: !1141, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!231, !41}
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "srcp", arg: 1, scope: !1140, file: !44, line: 672, type: !41)
!1145 = !DILocation(line: 672, column: 56, scope: !1140)
!1146 = !DILocation(line: 674, column: 22, scope: !1140)
!1147 = !DILocation(line: 674, column: 9, scope: !1140)
!1148 = !DILocation(line: 674, column: 2, scope: !1140)
!1149 = distinct !DISubprogram(name: "get_nodes_in_cpumask", scope: !2, file: !2, line: 85, type: !1150, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1153)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!52, !62, !41, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1153 = !{!1154, !1155, !1156, !1157, !1158}
!1154 = !DILocalVariable(name: "node_to_cpumask", arg: 1, scope: !1149, file: !2, line: 85, type: !62)
!1155 = !DILocalVariable(name: "mask", arg: 2, scope: !1149, file: !2, line: 86, type: !41)
!1156 = !DILocalVariable(name: "nodemsk", arg: 3, scope: !1149, file: !2, line: 86, type: !1152)
!1157 = !DILocalVariable(name: "n", scope: !1149, file: !2, line: 88, type: !52)
!1158 = !DILocalVariable(name: "nodes", scope: !1149, file: !2, line: 88, type: !52)
!1159 = !DILocation(line: 85, column: 48, scope: !1149)
!1160 = !DILocation(line: 86, column: 27, scope: !1149)
!1161 = !DILocation(line: 86, column: 45, scope: !1149)
!1162 = !DILocation(line: 88, column: 2, scope: !1149)
!1163 = !DILocation(line: 88, column: 6, scope: !1149)
!1164 = !DILocation(line: 88, column: 9, scope: !1149)
!1165 = !DILocation(line: 91, column: 2, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 91, column: 2)
!1167 = !DILocation(line: 91, column: 2, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 91, column: 2)
!1169 = !DILocation(line: 92, column: 26, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 92, column: 7)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 91, column: 19)
!1172 = !DILocation(line: 92, column: 32, scope: !1170)
!1173 = !DILocation(line: 92, column: 48, scope: !1170)
!1174 = !DILocation(line: 92, column: 7, scope: !1170)
!1175 = !DILocation(line: 92, column: 7, scope: !1171)
!1176 = !DILocation(line: 93, column: 4, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 92, column: 53)
!1178 = !DILocation(line: 94, column: 9, scope: !1177)
!1179 = !DILocation(line: 95, column: 3, scope: !1177)
!1180 = !DILocation(line: 96, column: 2, scope: !1171)
!1181 = distinct !{!1181, !1165, !1182, !280, !281}
!1182 = !DILocation(line: 96, column: 2, scope: !1166)
!1183 = !DILocation(line: 97, column: 9, scope: !1149)
!1184 = !DILocation(line: 98, column: 1, scope: !1149)
!1185 = !DILocation(line: 97, column: 2, scope: !1149)
!1186 = distinct !DISubprogram(name: "__first_node", scope: !28, file: !28, line: 264, type: !1187, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1191)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!13, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!1191 = !{!1192, !1193, !1195}
!1192 = !DILocalVariable(name: "srcp", arg: 1, scope: !1186, file: !28, line: 264, type: !1189)
!1193 = !DILocalVariable(name: "__UNIQUE_ID___x83", scope: !1194, file: !28, line: 266, type: !13)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !28, line: 266, column: 9)
!1195 = !DILocalVariable(name: "__UNIQUE_ID___y84", scope: !1194, file: !28, line: 266, type: !13)
!1196 = !DILocation(line: 264, column: 59, scope: !1186)
!1197 = !DILocation(line: 266, column: 9, scope: !1194)
!1198 = !DILocation(line: 266, column: 9, scope: !1186)
!1199 = !DILocation(line: 266, column: 2, scope: !1186)
!1200 = distinct !DISubprogram(name: "cpumask_and", scope: !44, file: !44, line: 565, type: !588, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DILocalVariable(name: "dstp", arg: 1, scope: !1200, file: !44, line: 565, type: !83)
!1203 = !DILocalVariable(name: "src1p", arg: 2, scope: !1200, file: !44, line: 566, type: !41)
!1204 = !DILocalVariable(name: "src2p", arg: 3, scope: !1200, file: !44, line: 567, type: !41)
!1205 = !DILocation(line: 565, column: 48, scope: !1200)
!1206 = !DILocation(line: 566, column: 33, scope: !1200)
!1207 = !DILocation(line: 567, column: 33, scope: !1200)
!1208 = !DILocation(line: 569, column: 20, scope: !1200)
!1209 = !DILocation(line: 569, column: 40, scope: !1200)
!1210 = !DILocation(line: 570, column: 12, scope: !1200)
!1211 = !DILocation(line: 569, column: 9, scope: !1200)
!1212 = !DILocation(line: 569, column: 2, scope: !1200)
!1213 = distinct !DISubprogram(name: "cpumask_or", scope: !44, file: !44, line: 579, type: !1214, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !83, !41, !41}
!1216 = !{!1217, !1218, !1219}
!1217 = !DILocalVariable(name: "dstp", arg: 1, scope: !1213, file: !44, line: 579, type: !83)
!1218 = !DILocalVariable(name: "src1p", arg: 2, scope: !1213, file: !44, line: 579, type: !41)
!1219 = !DILocalVariable(name: "src2p", arg: 3, scope: !1213, file: !44, line: 580, type: !41)
!1220 = !DILocation(line: 579, column: 47, scope: !1213)
!1221 = !DILocation(line: 579, column: 75, scope: !1213)
!1222 = !DILocation(line: 580, column: 32, scope: !1213)
!1223 = !DILocation(line: 582, column: 12, scope: !1213)
!1224 = !DILocation(line: 582, column: 32, scope: !1213)
!1225 = !DILocation(line: 583, column: 11, scope: !1213)
!1226 = !DILocation(line: 582, column: 2, scope: !1213)
!1227 = !DILocation(line: 584, column: 1, scope: !1213)
!1228 = distinct !DISubprogram(name: "__next_node", scope: !28, file: !28, line: 270, type: !1229, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!13, !52, !1189}
!1231 = !{!1232, !1233, !1234, !1236}
!1232 = !DILocalVariable(name: "n", arg: 1, scope: !1228, file: !28, line: 270, type: !52)
!1233 = !DILocalVariable(name: "srcp", arg: 2, scope: !1228, file: !28, line: 270, type: !1189)
!1234 = !DILocalVariable(name: "__UNIQUE_ID___x85", scope: !1235, file: !28, line: 272, type: !13)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !28, line: 272, column: 9)
!1236 = !DILocalVariable(name: "__UNIQUE_ID___y86", scope: !1235, file: !28, line: 272, type: !13)
!1237 = !DILocation(line: 270, column: 44, scope: !1228)
!1238 = !DILocation(line: 270, column: 65, scope: !1228)
!1239 = !DILocation(line: 272, column: 9, scope: !1235)
!1240 = !DILocation(line: 272, column: 9, scope: !1228)
!1241 = !DILocation(line: 272, column: 2, scope: !1228)
!1242 = distinct !DISubprogram(name: "alloc_nodes_groups", scope: !2, file: !2, line: 130, type: !1243, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !13, !62, !41, !1190, !83, !381}
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1258, !1260, !1261, !1265, !1266, !1268, !1271, !1273, !1274, !1276}
!1246 = !DILocalVariable(name: "numgrps", arg: 1, scope: !1242, file: !2, line: 130, type: !13)
!1247 = !DILocalVariable(name: "node_to_cpumask", arg: 2, scope: !1242, file: !2, line: 131, type: !62)
!1248 = !DILocalVariable(name: "cpu_mask", arg: 3, scope: !1242, file: !2, line: 132, type: !41)
!1249 = !DILocalVariable(name: "nodemsk", arg: 4, scope: !1242, file: !2, line: 133, type: !1190)
!1250 = !DILocalVariable(name: "nmsk", arg: 5, scope: !1242, file: !2, line: 134, type: !83)
!1251 = !DILocalVariable(name: "node_groups", arg: 6, scope: !1242, file: !2, line: 135, type: !381)
!1252 = !DILocalVariable(name: "n", scope: !1242, file: !2, line: 137, type: !13)
!1253 = !DILocalVariable(name: "remaining_ncpus", scope: !1242, file: !2, line: 137, type: !13)
!1254 = !DILocalVariable(name: "ncpus", scope: !1255, file: !2, line: 145, type: !13)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 144, column: 33)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 144, column: 2)
!1257 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 144, column: 2)
!1258 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !1259, file: !2, line: 156, type: !13)
!1259 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 156, column: 12)
!1260 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !1259, file: !2, line: 156, type: !13)
!1261 = !DILocalVariable(name: "ngroups", scope: !1262, file: !2, line: 230, type: !13)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 229, column: 36)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 229, column: 2)
!1264 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 229, column: 2)
!1265 = !DILocalVariable(name: "ncpus", scope: !1262, file: !2, line: 230, type: !13)
!1266 = !DILocalVariable(name: "__ret_warn_on", scope: !1267, file: !2, line: 235, type: !52)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 235, column: 3)
!1268 = !DILocalVariable(name: "__flags", scope: !1269, file: !2, line: 235, type: !52)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 235, column: 3)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 235, column: 3)
!1271 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !1272, file: !2, line: 238, type: !13)
!1272 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 238, column: 13)
!1273 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !1272, file: !2, line: 238, type: !13)
!1274 = !DILocalVariable(name: "__ret_warn_on", scope: !1275, file: !2, line: 240, type: !52)
!1275 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 240, column: 3)
!1276 = !DILocalVariable(name: "__flags", scope: !1277, file: !2, line: 240, type: !52)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 240, column: 3)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 240, column: 3)
!1279 = !DILocation(line: 130, column: 45, scope: !1242)
!1280 = !DILocation(line: 131, column: 26, scope: !1242)
!1281 = !DILocation(line: 132, column: 33, scope: !1242)
!1282 = !DILocation(line: 133, column: 28, scope: !1242)
!1283 = !DILocation(line: 134, column: 27, scope: !1242)
!1284 = !DILocation(line: 135, column: 31, scope: !1242)
!1285 = !DILocation(line: 137, column: 2, scope: !1242)
!1286 = !DILocation(line: 137, column: 11, scope: !1242)
!1287 = !DILocation(line: 137, column: 14, scope: !1242)
!1288 = !DILocation(line: 139, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 139, column: 2)
!1290 = !DILocation(line: 139, column: 7, scope: !1289)
!1291 = !DILocation(line: 139, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 139, column: 2)
!1293 = !DILocation(line: 139, column: 18, scope: !1292)
!1294 = !DILocation(line: 139, column: 16, scope: !1292)
!1295 = !DILocation(line: 139, column: 2, scope: !1289)
!1296 = !DILocation(line: 140, column: 23, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 139, column: 36)
!1298 = !DILocation(line: 140, column: 3, scope: !1297)
!1299 = !DILocation(line: 140, column: 15, scope: !1297)
!1300 = !DILocation(line: 140, column: 18, scope: !1297)
!1301 = !DILocation(line: 140, column: 21, scope: !1297)
!1302 = !DILocation(line: 141, column: 3, scope: !1297)
!1303 = !DILocation(line: 141, column: 15, scope: !1297)
!1304 = !DILocation(line: 141, column: 18, scope: !1297)
!1305 = !DILocation(line: 141, column: 24, scope: !1297)
!1306 = !DILocation(line: 142, column: 2, scope: !1297)
!1307 = !DILocation(line: 139, column: 32, scope: !1292)
!1308 = !DILocation(line: 139, column: 2, scope: !1292)
!1309 = distinct !{!1309, !1295, !1310, !280, !281}
!1310 = !DILocation(line: 142, column: 2, scope: !1289)
!1311 = !DILocation(line: 144, column: 2, scope: !1257)
!1312 = !DILocation(line: 144, column: 2, scope: !1256)
!1313 = !DILocation(line: 145, column: 3, scope: !1255)
!1314 = !DILocation(line: 145, column: 12, scope: !1255)
!1315 = !DILocation(line: 147, column: 15, scope: !1255)
!1316 = !DILocation(line: 147, column: 21, scope: !1255)
!1317 = !DILocation(line: 147, column: 31, scope: !1255)
!1318 = !DILocation(line: 147, column: 47, scope: !1255)
!1319 = !DILocation(line: 147, column: 3, scope: !1255)
!1320 = !DILocation(line: 148, column: 26, scope: !1255)
!1321 = !DILocation(line: 148, column: 11, scope: !1255)
!1322 = !DILocation(line: 148, column: 9, scope: !1255)
!1323 = !DILocation(line: 150, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 150, column: 7)
!1325 = !DILocation(line: 150, column: 7, scope: !1255)
!1326 = !DILocation(line: 151, column: 4, scope: !1324)
!1327 = !DILocation(line: 152, column: 22, scope: !1255)
!1328 = !DILocation(line: 152, column: 19, scope: !1255)
!1329 = !DILocation(line: 153, column: 26, scope: !1255)
!1330 = !DILocation(line: 153, column: 3, scope: !1255)
!1331 = !DILocation(line: 153, column: 15, scope: !1255)
!1332 = !DILocation(line: 153, column: 18, scope: !1255)
!1333 = !DILocation(line: 153, column: 24, scope: !1255)
!1334 = !DILocation(line: 154, column: 2, scope: !1256)
!1335 = !DILocation(line: 154, column: 2, scope: !1255)
!1336 = distinct !{!1336, !1311, !1337, !280, !281}
!1337 = !DILocation(line: 154, column: 2, scope: !1257)
!1338 = !DILocation(line: 156, column: 12, scope: !1259)
!1339 = !DILocation(line: 156, column: 12, scope: !1242)
!1340 = !DILocation(line: 156, column: 10, scope: !1242)
!1341 = !DILocation(line: 158, column: 7, scope: !1242)
!1342 = !DILocation(line: 158, column: 20, scope: !1242)
!1343 = !DILocation(line: 158, column: 2, scope: !1242)
!1344 = !DILocation(line: 229, column: 9, scope: !1264)
!1345 = !DILocation(line: 229, column: 7, scope: !1264)
!1346 = !DILocation(line: 229, column: 14, scope: !1263)
!1347 = !DILocation(line: 229, column: 18, scope: !1263)
!1348 = !DILocation(line: 229, column: 16, scope: !1263)
!1349 = !DILocation(line: 229, column: 2, scope: !1264)
!1350 = !DILocation(line: 230, column: 3, scope: !1262)
!1351 = !DILocation(line: 230, column: 12, scope: !1262)
!1352 = !DILocation(line: 230, column: 21, scope: !1262)
!1353 = !DILocation(line: 232, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 232, column: 7)
!1355 = !DILocation(line: 232, column: 19, scope: !1354)
!1356 = !DILocation(line: 232, column: 22, scope: !1354)
!1357 = !DILocation(line: 232, column: 28, scope: !1354)
!1358 = !DILocation(line: 232, column: 7, scope: !1262)
!1359 = !DILocation(line: 233, column: 4, scope: !1354)
!1360 = !DILocation(line: 235, column: 3, scope: !1267)
!1361 = !DILocation(line: 235, column: 3, scope: !1270)
!1362 = !DILocation(line: 235, column: 3, scope: !1269)
!1363 = !DILocation(line: 235, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 235, column: 3)
!1365 = !DILocation(line: 235, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 235, column: 3)
!1367 = !{i64 2152711641, i64 2152711670, i64 2152711716, i64 2152711774, i64 2152711828, i64 2152711882, i64 2152711937, i64 2152711968, i64 2152712276, i64 2152712282, i64 2152712329, i64 2152712352, i64 2152712378}
!1368 = !DILocation(line: 235, column: 3, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 235, column: 3)
!1370 = !DILocation(line: 235, column: 3, scope: !1262)
!1371 = !DILocation(line: 237, column: 11, scope: !1262)
!1372 = !DILocation(line: 237, column: 23, scope: !1262)
!1373 = !DILocation(line: 237, column: 26, scope: !1262)
!1374 = !DILocation(line: 237, column: 9, scope: !1262)
!1375 = !DILocation(line: 238, column: 13, scope: !1272)
!1376 = !DILocation(line: 238, column: 13, scope: !1262)
!1377 = !DILocation(line: 238, column: 11, scope: !1262)
!1378 = !DILocation(line: 240, column: 3, scope: !1275)
!1379 = !DILocation(line: 240, column: 3, scope: !1278)
!1380 = !DILocation(line: 240, column: 3, scope: !1277)
!1381 = !DILocation(line: 240, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 240, column: 3)
!1383 = !DILocation(line: 240, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 240, column: 3)
!1385 = !{i64 2152728805, i64 2152728834, i64 2152728880, i64 2152728938, i64 2152728992, i64 2152729046, i64 2152729101, i64 2152729132, i64 2152729440, i64 2152729446, i64 2152729493, i64 2152729516, i64 2152729542}
!1386 = !DILocation(line: 240, column: 3, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 240, column: 3)
!1388 = !DILocation(line: 240, column: 3, scope: !1262)
!1389 = !DILocation(line: 242, column: 28, scope: !1262)
!1390 = !DILocation(line: 242, column: 3, scope: !1262)
!1391 = !DILocation(line: 242, column: 15, scope: !1262)
!1392 = !DILocation(line: 242, column: 18, scope: !1262)
!1393 = !DILocation(line: 242, column: 26, scope: !1262)
!1394 = !DILocation(line: 244, column: 22, scope: !1262)
!1395 = !DILocation(line: 244, column: 19, scope: !1262)
!1396 = !DILocation(line: 245, column: 14, scope: !1262)
!1397 = !DILocation(line: 245, column: 11, scope: !1262)
!1398 = !DILocation(line: 246, column: 2, scope: !1263)
!1399 = !DILocation(line: 246, column: 2, scope: !1262)
!1400 = !DILocation(line: 229, column: 32, scope: !1263)
!1401 = !DILocation(line: 229, column: 2, scope: !1263)
!1402 = distinct !{!1402, !1349, !1403, !280, !281}
!1403 = !DILocation(line: 246, column: 2, scope: !1264)
!1404 = !DILocation(line: 247, column: 1, scope: !1242)
!1405 = distinct !DISubprogram(name: "cpumask_weight", scope: !44, file: !44, line: 690, type: !1406, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!13, !41}
!1408 = !{!1409}
!1409 = !DILocalVariable(name: "srcp", arg: 1, scope: !1405, file: !44, line: 690, type: !41)
!1410 = !DILocation(line: 690, column: 65, scope: !1405)
!1411 = !DILocation(line: 692, column: 23, scope: !1405)
!1412 = !DILocation(line: 692, column: 9, scope: !1405)
!1413 = !DILocation(line: 692, column: 2, scope: !1405)
!1414 = distinct !DISubprogram(name: "grp_spread_init_one", scope: !2, file: !2, line: 14, type: !1415, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !83, !83, !13}
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1430}
!1418 = !DILocalVariable(name: "irqmsk", arg: 1, scope: !1414, file: !2, line: 14, type: !83)
!1419 = !DILocalVariable(name: "nmsk", arg: 2, scope: !1414, file: !2, line: 14, type: !83)
!1420 = !DILocalVariable(name: "cpus_per_grp", arg: 3, scope: !1414, file: !2, line: 15, type: !13)
!1421 = !DILocalVariable(name: "siblmsk", scope: !1414, file: !2, line: 17, type: !41)
!1422 = !DILocalVariable(name: "cpu", scope: !1414, file: !2, line: 18, type: !52)
!1423 = !DILocalVariable(name: "sibl", scope: !1414, file: !2, line: 18, type: !52)
!1424 = !DILocalVariable(name: "__vpp_verify", scope: !1425, file: !2, line: 32, type: !637)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 32, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 32, column: 13)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 20, column: 30)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 20, column: 2)
!1429 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 20, column: 2)
!1430 = !DILocalVariable(name: "__ptr", scope: !1431, file: !2, line: 32, type: !48)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 32, column: 13)
!1432 = !DILocation(line: 14, column: 49, scope: !1414)
!1433 = !DILocation(line: 14, column: 73, scope: !1414)
!1434 = !DILocation(line: 15, column: 18, scope: !1414)
!1435 = !DILocation(line: 17, column: 2, scope: !1414)
!1436 = !DILocation(line: 17, column: 24, scope: !1414)
!1437 = !DILocation(line: 18, column: 2, scope: !1414)
!1438 = !DILocation(line: 18, column: 6, scope: !1414)
!1439 = !DILocation(line: 18, column: 11, scope: !1414)
!1440 = !DILocation(line: 20, column: 2, scope: !1414)
!1441 = !DILocation(line: 20, column: 10, scope: !1428)
!1442 = !DILocation(line: 20, column: 23, scope: !1428)
!1443 = !DILocation(line: 20, column: 2, scope: !1429)
!1444 = !DILocation(line: 21, column: 23, scope: !1427)
!1445 = !DILocation(line: 21, column: 9, scope: !1427)
!1446 = !DILocation(line: 21, column: 7, scope: !1427)
!1447 = !DILocation(line: 24, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 24, column: 7)
!1449 = !DILocation(line: 24, column: 14, scope: !1448)
!1450 = !DILocation(line: 24, column: 11, scope: !1448)
!1451 = !DILocation(line: 24, column: 7, scope: !1427)
!1452 = !DILocation(line: 25, column: 4, scope: !1448)
!1453 = !DILocation(line: 27, column: 21, scope: !1427)
!1454 = !DILocation(line: 27, column: 26, scope: !1427)
!1455 = !DILocation(line: 27, column: 3, scope: !1427)
!1456 = !DILocation(line: 28, column: 19, scope: !1427)
!1457 = !DILocation(line: 28, column: 24, scope: !1427)
!1458 = !DILocation(line: 28, column: 3, scope: !1427)
!1459 = !DILocation(line: 29, column: 15, scope: !1427)
!1460 = !DILocation(line: 32, column: 13, scope: !1426)
!1461 = !DILocation(line: 32, column: 13, scope: !1425)
!1462 = !DILocation(line: 32, column: 13, scope: !1431)
!1463 = !DILocation(line: 32, column: 13, scope: !1427)
!1464 = !DILocation(line: 32, column: 11, scope: !1427)
!1465 = !DILocation(line: 33, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 33, column: 3)
!1467 = !DILocation(line: 33, column: 8, scope: !1466)
!1468 = !DILocation(line: 33, column: 19, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 33, column: 3)
!1470 = !DILocation(line: 33, column: 32, scope: !1469)
!1471 = !DILocation(line: 33, column: 3, scope: !1466)
!1472 = !DILocation(line: 34, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 33, column: 39)
!1474 = !DILocation(line: 34, column: 30, scope: !1473)
!1475 = !DILocation(line: 34, column: 11, scope: !1473)
!1476 = !DILocation(line: 34, column: 9, scope: !1473)
!1477 = !DILocation(line: 35, column: 8, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 35, column: 8)
!1479 = !DILocation(line: 35, column: 16, scope: !1478)
!1480 = !DILocation(line: 35, column: 13, scope: !1478)
!1481 = !DILocation(line: 35, column: 8, scope: !1473)
!1482 = !DILocation(line: 36, column: 5, scope: !1478)
!1483 = !DILocation(line: 37, column: 36, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 37, column: 8)
!1485 = !DILocation(line: 37, column: 42, scope: !1484)
!1486 = !DILocation(line: 37, column: 9, scope: !1484)
!1487 = !DILocation(line: 37, column: 8, scope: !1473)
!1488 = !DILocation(line: 38, column: 5, scope: !1484)
!1489 = distinct !{!1489, !1471, !1490, !280, !281}
!1490 = !DILocation(line: 41, column: 3, scope: !1466)
!1491 = !DILocation(line: 39, column: 20, scope: !1473)
!1492 = !DILocation(line: 39, column: 26, scope: !1473)
!1493 = !DILocation(line: 39, column: 4, scope: !1473)
!1494 = !DILocation(line: 40, column: 16, scope: !1473)
!1495 = !DILocation(line: 33, column: 3, scope: !1469)
!1496 = !DILocation(line: 20, column: 2, scope: !1428)
!1497 = distinct !{!1497, !1443, !1498, !280, !281}
!1498 = !DILocation(line: 42, column: 2, scope: !1429)
!1499 = !DILocation(line: 43, column: 1, scope: !1414)
!1500 = distinct !DISubprogram(name: "bitmap_empty", scope: !647, file: !647, line: 436, type: !1501, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!231, !935, !13}
!1503 = !{!1504, !1505}
!1504 = !DILocalVariable(name: "src", arg: 1, scope: !1500, file: !647, line: 436, type: !935)
!1505 = !DILocalVariable(name: "nbits", arg: 2, scope: !1500, file: !647, line: 436, type: !13)
!1506 = !DILocation(line: 436, column: 54, scope: !1500)
!1507 = !DILocation(line: 436, column: 68, scope: !1500)
!1508 = !DILocation(line: 438, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1500, file: !647, line: 438, column: 6)
!1510 = !DILocation(line: 438, column: 6, scope: !1500)
!1511 = !DILocation(line: 439, column: 14, scope: !1509)
!1512 = !DILocation(line: 439, column: 13, scope: !1509)
!1513 = !DILocation(line: 439, column: 20, scope: !1509)
!1514 = !DILocation(line: 439, column: 18, scope: !1509)
!1515 = !DILocation(line: 439, column: 10, scope: !1509)
!1516 = !DILocation(line: 439, column: 3, scope: !1509)
!1517 = !DILocation(line: 441, column: 24, scope: !1500)
!1518 = !DILocation(line: 441, column: 29, scope: !1500)
!1519 = !DILocation(line: 441, column: 9, scope: !1500)
!1520 = !DILocation(line: 441, column: 39, scope: !1500)
!1521 = !DILocation(line: 441, column: 36, scope: !1500)
!1522 = !DILocation(line: 441, column: 2, scope: !1500)
!1523 = !DILocation(line: 442, column: 1, scope: !1500)
!1524 = distinct !DISubprogram(name: "find_first_bit", scope: !932, file: !932, line: 200, type: !1525, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!48, !935, !48}
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "addr", arg: 1, scope: !1524, file: !932, line: 200, type: !935)
!1529 = !DILocalVariable(name: "size", arg: 2, scope: !1524, file: !932, line: 200, type: !48)
!1530 = !DILocalVariable(name: "val", scope: !1531, file: !932, line: 203, type: !48)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !932, line: 202, column: 31)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !932, line: 202, column: 6)
!1533 = !DILocation(line: 200, column: 51, scope: !1524)
!1534 = !DILocation(line: 200, column: 71, scope: !1524)
!1535 = !DILocation(line: 202, column: 6, scope: !1532)
!1536 = !DILocation(line: 202, column: 6, scope: !1524)
!1537 = !DILocation(line: 203, column: 3, scope: !1531)
!1538 = !DILocation(line: 203, column: 17, scope: !1531)
!1539 = !DILocation(line: 203, column: 24, scope: !1531)
!1540 = !DILocation(line: 203, column: 23, scope: !1531)
!1541 = !DILocation(line: 203, column: 31, scope: !1531)
!1542 = !DILocation(line: 203, column: 29, scope: !1531)
!1543 = !DILocation(line: 205, column: 10, scope: !1531)
!1544 = !DILocation(line: 205, column: 16, scope: !1531)
!1545 = !DILocation(line: 205, column: 29, scope: !1531)
!1546 = !DILocation(line: 205, column: 3, scope: !1531)
!1547 = !DILocation(line: 206, column: 2, scope: !1532)
!1548 = !DILocation(line: 208, column: 25, scope: !1524)
!1549 = !DILocation(line: 208, column: 31, scope: !1524)
!1550 = !DILocation(line: 208, column: 9, scope: !1524)
!1551 = !DILocation(line: 208, column: 2, scope: !1524)
!1552 = !DILocation(line: 209, column: 1, scope: !1524)
!1553 = !DISubprogram(name: "_find_first_bit", scope: !932, file: !932, line: 21, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1554 = distinct !DISubprogram(name: "cpumask_intersects", scope: !44, file: !44, line: 647, type: !1555, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!231, !41, !41}
!1557 = !{!1558, !1559}
!1558 = !DILocalVariable(name: "src1p", arg: 1, scope: !1554, file: !44, line: 647, type: !41)
!1559 = !DILocalVariable(name: "src2p", arg: 2, scope: !1554, file: !44, line: 648, type: !41)
!1560 = !DILocation(line: 647, column: 61, scope: !1554)
!1561 = !DILocation(line: 648, column: 32, scope: !1554)
!1562 = !DILocation(line: 650, column: 27, scope: !1554)
!1563 = !DILocation(line: 650, column: 48, scope: !1554)
!1564 = !DILocation(line: 650, column: 9, scope: !1554)
!1565 = !DILocation(line: 650, column: 2, scope: !1554)
!1566 = distinct !DISubprogram(name: "__node_set", scope: !28, file: !28, line: 129, type: !1567, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1571)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !52, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!1571 = !{!1572, !1573}
!1572 = !DILocalVariable(name: "node", arg: 1, scope: !1566, file: !28, line: 129, type: !52)
!1573 = !DILocalVariable(name: "dstp", arg: 2, scope: !1566, file: !28, line: 129, type: !1569)
!1574 = !DILocation(line: 129, column: 44, scope: !1566)
!1575 = !DILocation(line: 129, column: 71, scope: !1566)
!1576 = !DILocation(line: 131, column: 10, scope: !1566)
!1577 = !DILocation(line: 131, column: 16, scope: !1566)
!1578 = !DILocation(line: 131, column: 22, scope: !1566)
!1579 = !DILocation(line: 131, column: 2, scope: !1566)
!1580 = !DILocation(line: 132, column: 1, scope: !1566)
!1581 = distinct !DISubprogram(name: "bitmap_intersects", scope: !647, file: !647, line: 417, type: !1582, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!231, !935, !935, !13}
!1584 = !{!1585, !1586, !1587}
!1585 = !DILocalVariable(name: "src1", arg: 1, scope: !1581, file: !647, line: 417, type: !935)
!1586 = !DILocalVariable(name: "src2", arg: 2, scope: !1581, file: !647, line: 418, type: !935)
!1587 = !DILocalVariable(name: "nbits", arg: 3, scope: !1581, file: !647, line: 419, type: !13)
!1588 = !DILocation(line: 417, column: 59, scope: !1581)
!1589 = !DILocation(line: 418, column: 31, scope: !1581)
!1590 = !DILocation(line: 419, column: 23, scope: !1581)
!1591 = !DILocation(line: 421, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1581, file: !647, line: 421, column: 6)
!1593 = !DILocation(line: 421, column: 6, scope: !1581)
!1594 = !DILocation(line: 422, column: 13, scope: !1592)
!1595 = !DILocation(line: 422, column: 12, scope: !1592)
!1596 = !DILocation(line: 422, column: 21, scope: !1592)
!1597 = !DILocation(line: 422, column: 20, scope: !1592)
!1598 = !DILocation(line: 422, column: 18, scope: !1592)
!1599 = !DILocation(line: 422, column: 29, scope: !1592)
!1600 = !DILocation(line: 422, column: 27, scope: !1592)
!1601 = !DILocation(line: 422, column: 59, scope: !1592)
!1602 = !DILocation(line: 422, column: 3, scope: !1592)
!1603 = !DILocation(line: 424, column: 30, scope: !1592)
!1604 = !DILocation(line: 424, column: 36, scope: !1592)
!1605 = !DILocation(line: 424, column: 42, scope: !1592)
!1606 = !DILocation(line: 424, column: 10, scope: !1592)
!1607 = !DILocation(line: 424, column: 3, scope: !1592)
!1608 = !DILocation(line: 425, column: 1, scope: !1581)
!1609 = !DISubprogram(name: "__bitmap_intersects", scope: !647, file: !647, line: 167, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = distinct !DISubprogram(name: "bitmap_and", scope: !647, file: !647, line: 336, type: !1611, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!231, !650, !935, !935, !13}
!1613 = !{!1614, !1615, !1616, !1617}
!1614 = !DILocalVariable(name: "dst", arg: 1, scope: !1610, file: !647, line: 336, type: !650)
!1615 = !DILocalVariable(name: "src1", arg: 2, scope: !1610, file: !647, line: 336, type: !935)
!1616 = !DILocalVariable(name: "src2", arg: 3, scope: !1610, file: !647, line: 337, type: !935)
!1617 = !DILocalVariable(name: "nbits", arg: 4, scope: !1610, file: !647, line: 337, type: !13)
!1618 = !DILocation(line: 336, column: 46, scope: !1610)
!1619 = !DILocation(line: 336, column: 72, scope: !1610)
!1620 = !DILocation(line: 337, column: 25, scope: !1610)
!1621 = !DILocation(line: 337, column: 44, scope: !1610)
!1622 = !DILocation(line: 339, column: 6, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1610, file: !647, line: 339, column: 6)
!1624 = !DILocation(line: 339, column: 6, scope: !1610)
!1625 = !DILocation(line: 340, column: 19, scope: !1623)
!1626 = !DILocation(line: 340, column: 18, scope: !1623)
!1627 = !DILocation(line: 340, column: 27, scope: !1623)
!1628 = !DILocation(line: 340, column: 26, scope: !1623)
!1629 = !DILocation(line: 340, column: 24, scope: !1623)
!1630 = !DILocation(line: 340, column: 34, scope: !1623)
!1631 = !DILocation(line: 340, column: 32, scope: !1623)
!1632 = !DILocation(line: 340, column: 12, scope: !1623)
!1633 = !DILocation(line: 340, column: 16, scope: !1623)
!1634 = !DILocation(line: 340, column: 64, scope: !1623)
!1635 = !DILocation(line: 340, column: 3, scope: !1623)
!1636 = !DILocation(line: 341, column: 22, scope: !1610)
!1637 = !DILocation(line: 341, column: 27, scope: !1610)
!1638 = !DILocation(line: 341, column: 33, scope: !1610)
!1639 = !DILocation(line: 341, column: 39, scope: !1610)
!1640 = !DILocation(line: 341, column: 9, scope: !1610)
!1641 = !DILocation(line: 341, column: 2, scope: !1610)
!1642 = !DILocation(line: 342, column: 1, scope: !1610)
!1643 = !DISubprogram(name: "__bitmap_and", scope: !647, file: !647, line: 156, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1644 = distinct !DISubprogram(name: "bitmap_or", scope: !647, file: !647, line: 344, type: !1645, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !650, !935, !935, !13}
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DILocalVariable(name: "dst", arg: 1, scope: !1644, file: !647, line: 344, type: !650)
!1649 = !DILocalVariable(name: "src1", arg: 2, scope: !1644, file: !647, line: 344, type: !935)
!1650 = !DILocalVariable(name: "src2", arg: 3, scope: !1644, file: !647, line: 345, type: !935)
!1651 = !DILocalVariable(name: "nbits", arg: 4, scope: !1644, file: !647, line: 345, type: !13)
!1652 = !DILocation(line: 344, column: 45, scope: !1644)
!1653 = !DILocation(line: 344, column: 71, scope: !1644)
!1654 = !DILocation(line: 345, column: 25, scope: !1644)
!1655 = !DILocation(line: 345, column: 44, scope: !1644)
!1656 = !DILocation(line: 347, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !647, line: 347, column: 6)
!1658 = !DILocation(line: 347, column: 6, scope: !1644)
!1659 = !DILocation(line: 348, column: 11, scope: !1657)
!1660 = !DILocation(line: 348, column: 10, scope: !1657)
!1661 = !DILocation(line: 348, column: 19, scope: !1657)
!1662 = !DILocation(line: 348, column: 18, scope: !1657)
!1663 = !DILocation(line: 348, column: 16, scope: !1657)
!1664 = !DILocation(line: 348, column: 4, scope: !1657)
!1665 = !DILocation(line: 348, column: 8, scope: !1657)
!1666 = !DILocation(line: 348, column: 3, scope: !1657)
!1667 = !DILocation(line: 350, column: 15, scope: !1657)
!1668 = !DILocation(line: 350, column: 20, scope: !1657)
!1669 = !DILocation(line: 350, column: 26, scope: !1657)
!1670 = !DILocation(line: 350, column: 32, scope: !1657)
!1671 = !DILocation(line: 350, column: 3, scope: !1657)
!1672 = !DILocation(line: 351, column: 1, scope: !1644)
!1673 = !DISubprogram(name: "__bitmap_or", scope: !647, file: !647, line: 158, type: !1645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !DISubprogram(name: "sort", scope: !1675, file: !1675, line: 12, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !51, !300, !300, !1678, !1682}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !40, line: 245, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!52, !637, !637}
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !40, line: 242, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !51, !51, !52}
!1686 = distinct !DISubprogram(name: "ncpus_cmp_func", scope: !2, file: !2, line: 109, type: !1680, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1687)
!1687 = !{!1688, !1689, !1690, !1693}
!1688 = !DILocalVariable(name: "l", arg: 1, scope: !1686, file: !2, line: 109, type: !637)
!1689 = !DILocalVariable(name: "r", arg: 2, scope: !1686, file: !2, line: 109, type: !637)
!1690 = !DILocalVariable(name: "ln", scope: !1686, file: !2, line: 111, type: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!1693 = !DILocalVariable(name: "rn", scope: !1686, file: !2, line: 112, type: !1691)
!1694 = !DILocation(line: 109, column: 39, scope: !1686)
!1695 = !DILocation(line: 109, column: 54, scope: !1686)
!1696 = !DILocation(line: 111, column: 2, scope: !1686)
!1697 = !DILocation(line: 111, column: 28, scope: !1686)
!1698 = !DILocation(line: 111, column: 33, scope: !1686)
!1699 = !DILocation(line: 112, column: 2, scope: !1686)
!1700 = !DILocation(line: 112, column: 28, scope: !1686)
!1701 = !DILocation(line: 112, column: 33, scope: !1686)
!1702 = !DILocation(line: 114, column: 9, scope: !1686)
!1703 = !DILocation(line: 114, column: 13, scope: !1686)
!1704 = !DILocation(line: 114, column: 21, scope: !1686)
!1705 = !DILocation(line: 114, column: 25, scope: !1686)
!1706 = !DILocation(line: 114, column: 19, scope: !1686)
!1707 = !DILocation(line: 115, column: 1, scope: !1686)
!1708 = !DILocation(line: 114, column: 2, scope: !1686)
!1709 = distinct !DISubprogram(name: "bitmap_weight", scope: !647, file: !647, line: 453, type: !1710, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!13, !935, !13}
!1712 = !{!1713, !1714}
!1713 = !DILocalVariable(name: "src", arg: 1, scope: !1709, file: !647, line: 453, type: !935)
!1714 = !DILocalVariable(name: "nbits", arg: 2, scope: !1709, file: !647, line: 453, type: !13)
!1715 = !DILocation(line: 453, column: 49, scope: !1709)
!1716 = !DILocation(line: 453, column: 67, scope: !1709)
!1717 = !DILocation(line: 455, column: 6, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1709, file: !647, line: 455, column: 6)
!1719 = !DILocation(line: 455, column: 6, scope: !1709)
!1720 = !DILocation(line: 456, column: 24, scope: !1718)
!1721 = !DILocation(line: 456, column: 23, scope: !1718)
!1722 = !DILocation(line: 456, column: 30, scope: !1718)
!1723 = !DILocation(line: 456, column: 28, scope: !1718)
!1724 = !DILocation(line: 456, column: 10, scope: !1718)
!1725 = !DILocation(line: 456, column: 3, scope: !1718)
!1726 = !DILocation(line: 457, column: 25, scope: !1709)
!1727 = !DILocation(line: 457, column: 30, scope: !1709)
!1728 = !DILocation(line: 457, column: 9, scope: !1709)
!1729 = !DILocation(line: 457, column: 2, scope: !1709)
!1730 = !DILocation(line: 458, column: 1, scope: !1709)
!1731 = distinct !DISubprogram(name: "hweight_long", scope: !1732, file: !1732, line: 95, type: !1004, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1733)
!1732 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "w", arg: 1, scope: !1731, file: !1732, line: 95, type: !48)
!1735 = !DILocation(line: 95, column: 65, scope: !1731)
!1736 = !DILocation(line: 97, column: 41, scope: !1731)
!1737 = !DILocation(line: 97, column: 2, scope: !1731)
!1738 = !DISubprogram(name: "__bitmap_weight", scope: !647, file: !647, line: 171, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1739 = distinct !DISubprogram(name: "__arch_hweight64", scope: !1740, file: !1740, line: 43, type: !1741, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1743)
!1740 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!48, !59}
!1743 = !{!1744, !1745}
!1744 = !DILocalVariable(name: "w", arg: 1, scope: !1739, file: !1740, line: 43, type: !59)
!1745 = !DILocalVariable(name: "res", scope: !1739, file: !1740, line: 45, type: !48)
!1746 = !DILocation(line: 43, column: 61, scope: !1739)
!1747 = !DILocation(line: 45, column: 2, scope: !1739)
!1748 = !DILocation(line: 45, column: 16, scope: !1739)
!1749 = !DILocation(line: 49, column: 15, scope: !1739)
!1750 = !DILocation(line: 47, column: 2, scope: !1739)
!1751 = !{i64 2147857003, i64 2147857031, i64 2147857037, i64 2147857053, i64 2147857069, i64 2147857096, i64 2147857429, i64 2147856729, i64 2147857435, i64 2147857483, i64 2147857547, i64 2147857611, i64 2147857668, i64 2147856810, i64 2147856835, i64 2147857875, i64 2147858005, i64 2147857936, i64 2147858019, i64 2147856927}
!1752 = !DILocation(line: 51, column: 9, scope: !1739)
!1753 = !DILocation(line: 52, column: 1, scope: !1739)
!1754 = !DILocation(line: 51, column: 2, scope: !1739)
!1755 = distinct !DISubprogram(name: "cpumask_first", scope: !44, file: !44, line: 160, type: !1406, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "srcp", arg: 1, scope: !1755, file: !44, line: 160, type: !41)
!1758 = !DILocation(line: 160, column: 64, scope: !1755)
!1759 = !DILocation(line: 162, column: 24, scope: !1755)
!1760 = !DILocation(line: 162, column: 9, scope: !1755)
!1761 = !DILocation(line: 162, column: 2, scope: !1755)
!1762 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !44, file: !44, line: 485, type: !1763, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !52, !83}
!1765 = !{!1766, !1767}
!1766 = !DILocalVariable(name: "cpu", arg: 1, scope: !1762, file: !44, line: 485, type: !52)
!1767 = !DILocalVariable(name: "dstp", arg: 2, scope: !1762, file: !44, line: 485, type: !83)
!1768 = !DILocation(line: 485, column: 51, scope: !1762)
!1769 = !DILocation(line: 485, column: 72, scope: !1762)
!1770 = !DILocation(line: 487, column: 26, scope: !1762)
!1771 = !DILocation(line: 487, column: 12, scope: !1762)
!1772 = !DILocation(line: 487, column: 32, scope: !1762)
!1773 = !DILocation(line: 487, column: 2, scope: !1762)
!1774 = !DILocation(line: 488, column: 1, scope: !1762)
!1775 = distinct !DISubprogram(name: "cpumask_next", scope: !44, file: !44, line: 208, type: !1776, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!13, !52, !41}
!1778 = !{!1779, !1780}
!1779 = !DILocalVariable(name: "n", arg: 1, scope: !1775, file: !44, line: 208, type: !52)
!1780 = !DILocalVariable(name: "srcp", arg: 2, scope: !1775, file: !44, line: 208, type: !41)
!1781 = !DILocation(line: 208, column: 31, scope: !1775)
!1782 = !DILocation(line: 208, column: 56, scope: !1775)
!1783 = !DILocation(line: 211, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1775, file: !44, line: 211, column: 6)
!1785 = !DILocation(line: 211, column: 8, scope: !1784)
!1786 = !DILocation(line: 211, column: 6, scope: !1775)
!1787 = !DILocation(line: 212, column: 17, scope: !1784)
!1788 = !DILocation(line: 212, column: 3, scope: !1784)
!1789 = !DILocation(line: 213, column: 23, scope: !1775)
!1790 = !DILocation(line: 213, column: 63, scope: !1775)
!1791 = !DILocation(line: 213, column: 65, scope: !1775)
!1792 = !DILocation(line: 213, column: 9, scope: !1775)
!1793 = !DILocation(line: 213, column: 2, scope: !1775)
!1794 = distinct !DISubprogram(name: "cpumask_test_and_clear_cpu", scope: !44, file: !44, line: 530, type: !1795, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!231, !52, !83}
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "cpu", arg: 1, scope: !1794, file: !44, line: 530, type: !52)
!1799 = !DILocalVariable(name: "cpumask", arg: 2, scope: !1794, file: !44, line: 530, type: !83)
!1800 = !DILocation(line: 530, column: 60, scope: !1794)
!1801 = !DILocation(line: 530, column: 81, scope: !1794)
!1802 = !DILocation(line: 532, column: 42, scope: !1794)
!1803 = !DILocation(line: 532, column: 28, scope: !1794)
!1804 = !DILocation(line: 532, column: 48, scope: !1794)
!1805 = !DILocation(line: 532, column: 9, scope: !1794)
!1806 = !DILocation(line: 532, column: 2, scope: !1794)
!1807 = distinct !DISubprogram(name: "clear_bit", scope: !1016, file: !1016, line: 39, type: !1017, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1808)
!1808 = !{!1809, !1810}
!1809 = !DILocalVariable(name: "nr", arg: 1, scope: !1807, file: !1016, line: 39, type: !57)
!1810 = !DILocalVariable(name: "addr", arg: 2, scope: !1807, file: !1016, line: 39, type: !1019)
!1811 = !DILocation(line: 39, column: 44, scope: !1807)
!1812 = !DILocation(line: 39, column: 72, scope: !1807)
!1813 = !DILocation(line: 41, column: 26, scope: !1807)
!1814 = !DILocation(line: 41, column: 33, scope: !1807)
!1815 = !DILocation(line: 41, column: 31, scope: !1807)
!1816 = !DILocation(line: 41, column: 2, scope: !1807)
!1817 = !DILocation(line: 42, column: 17, scope: !1807)
!1818 = !DILocation(line: 42, column: 21, scope: !1807)
!1819 = !DILocation(line: 42, column: 2, scope: !1807)
!1820 = !DILocation(line: 43, column: 1, scope: !1807)
!1821 = distinct !DISubprogram(name: "arch_clear_bit", scope: !1003, file: !1003, line: 72, type: !1017, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1822)
!1822 = !{!1823, !1824}
!1823 = !DILocalVariable(name: "nr", arg: 1, scope: !1821, file: !1003, line: 72, type: !57)
!1824 = !DILocalVariable(name: "addr", arg: 2, scope: !1821, file: !1003, line: 72, type: !1019)
!1825 = !DILocation(line: 72, column: 21, scope: !1821)
!1826 = !DILocation(line: 72, column: 49, scope: !1821)
!1827 = !DILocation(line: 74, column: 27, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1821, file: !1003, line: 74, column: 6)
!1829 = !DILocation(line: 74, column: 6, scope: !1828)
!1830 = !DILocation(line: 74, column: 6, scope: !1821)
!1831 = !DILocation(line: 76, column: 6, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !1003, line: 74, column: 32)
!1833 = !DILocation(line: 77, column: 13, scope: !1832)
!1834 = !DILocation(line: 77, column: 12, scope: !1832)
!1835 = !DILocation(line: 75, column: 3, scope: !1832)
!1836 = !{i64 2147796887, i64 2147796926, i64 2147796947, i64 2147796984, i64 2147797007, i64 2147796877}
!1837 = !DILocation(line: 78, column: 2, scope: !1832)
!1838 = !DILocation(line: 80, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1828, file: !1003, line: 78, column: 9)
!1840 = !DILocation(line: 80, column: 32, scope: !1839)
!1841 = !DILocation(line: 79, column: 3, scope: !1839)
!1842 = !{i64 2147797172, i64 2147797211, i64 2147797232, i64 2147797269, i64 2147797292, i64 2147797162}
!1843 = !DILocation(line: 82, column: 1, scope: !1821)
!1844 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !1016, file: !1016, line: 82, type: !1845, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!231, !57, !1019}
!1847 = !{!1848, !1849}
!1848 = !DILocalVariable(name: "nr", arg: 1, scope: !1844, file: !1016, line: 82, type: !57)
!1849 = !DILocalVariable(name: "addr", arg: 2, scope: !1844, file: !1016, line: 82, type: !1019)
!1850 = !DILocation(line: 82, column: 53, scope: !1844)
!1851 = !DILocation(line: 82, column: 81, scope: !1844)
!1852 = !DILocation(line: 84, column: 2, scope: !1844)
!1853 = !DILocation(line: 84, column: 2, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1844, file: !1016, line: 84, column: 2)
!1855 = !DILocation(line: 85, column: 31, scope: !1844)
!1856 = !DILocation(line: 85, column: 38, scope: !1844)
!1857 = !DILocation(line: 85, column: 36, scope: !1844)
!1858 = !DILocation(line: 85, column: 2, scope: !1844)
!1859 = !DILocation(line: 86, column: 33, scope: !1844)
!1860 = !DILocation(line: 86, column: 37, scope: !1844)
!1861 = !DILocation(line: 86, column: 9, scope: !1844)
!1862 = !DILocation(line: 86, column: 2, scope: !1844)
!1863 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1045, file: !1045, line: 94, type: !1046, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1864)
!1864 = !{!1865, !1866}
!1865 = !DILocalVariable(name: "v", arg: 1, scope: !1863, file: !1045, line: 94, type: !1048)
!1866 = !DILocalVariable(name: "size", arg: 2, scope: !1863, file: !1045, line: 94, type: !300)
!1867 = !DILocation(line: 94, column: 79, scope: !1863)
!1868 = !DILocation(line: 94, column: 89, scope: !1863)
!1869 = !DILocation(line: 96, column: 20, scope: !1863)
!1870 = !DILocation(line: 96, column: 23, scope: !1863)
!1871 = !DILocation(line: 96, column: 2, scope: !1863)
!1872 = !DILocation(line: 97, column: 2, scope: !1863)
!1873 = !DILocation(line: 98, column: 1, scope: !1863)
!1874 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !1003, file: !1003, line: 160, type: !1845, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DILocalVariable(name: "nr", arg: 1, scope: !1874, file: !1003, line: 160, type: !57)
!1877 = !DILocalVariable(name: "addr", arg: 2, scope: !1874, file: !1003, line: 160, type: !1019)
!1878 = !DILocalVariable(name: "c", scope: !1879, file: !1003, line: 162, type: !231)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !1003, line: 162, column: 9)
!1880 = !DILocation(line: 160, column: 30, scope: !1874)
!1881 = !DILocation(line: 160, column: 58, scope: !1874)
!1882 = !DILocation(line: 162, column: 9, scope: !1879)
!1883 = !{i64 2147804952, i64 2147804991, i64 2147805012, i64 2147805049, i64 2147805072, i64 2147805081, i64 2147805184}
!1884 = !DILocation(line: 162, column: 9, scope: !1874)
!1885 = !DILocation(line: 162, column: 2, scope: !1874)
!1886 = distinct !DISubprogram(name: "bitmap_andnot", scope: !647, file: !647, line: 362, type: !1611, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DILocalVariable(name: "dst", arg: 1, scope: !1886, file: !647, line: 362, type: !650)
!1889 = !DILocalVariable(name: "src1", arg: 2, scope: !1886, file: !647, line: 362, type: !935)
!1890 = !DILocalVariable(name: "src2", arg: 3, scope: !1886, file: !647, line: 363, type: !935)
!1891 = !DILocalVariable(name: "nbits", arg: 4, scope: !1886, file: !647, line: 363, type: !13)
!1892 = !DILocation(line: 362, column: 49, scope: !1886)
!1893 = !DILocation(line: 362, column: 75, scope: !1886)
!1894 = !DILocation(line: 363, column: 25, scope: !1886)
!1895 = !DILocation(line: 363, column: 44, scope: !1886)
!1896 = !DILocation(line: 365, column: 6, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1886, file: !647, line: 365, column: 6)
!1898 = !DILocation(line: 365, column: 6, scope: !1886)
!1899 = !DILocation(line: 366, column: 19, scope: !1897)
!1900 = !DILocation(line: 366, column: 18, scope: !1897)
!1901 = !DILocation(line: 366, column: 29, scope: !1897)
!1902 = !DILocation(line: 366, column: 28, scope: !1897)
!1903 = !DILocation(line: 366, column: 26, scope: !1897)
!1904 = !DILocation(line: 366, column: 24, scope: !1897)
!1905 = !DILocation(line: 366, column: 37, scope: !1897)
!1906 = !DILocation(line: 366, column: 35, scope: !1897)
!1907 = !DILocation(line: 366, column: 12, scope: !1897)
!1908 = !DILocation(line: 366, column: 16, scope: !1897)
!1909 = !DILocation(line: 366, column: 67, scope: !1897)
!1910 = !DILocation(line: 366, column: 3, scope: !1897)
!1911 = !DILocation(line: 367, column: 25, scope: !1886)
!1912 = !DILocation(line: 367, column: 30, scope: !1886)
!1913 = !DILocation(line: 367, column: 36, scope: !1886)
!1914 = !DILocation(line: 367, column: 42, scope: !1886)
!1915 = !DILocation(line: 367, column: 9, scope: !1886)
!1916 = !DILocation(line: 367, column: 2, scope: !1886)
!1917 = !DILocation(line: 368, column: 1, scope: !1886)
!1918 = !DISubprogram(name: "__bitmap_andnot", scope: !647, file: !647, line: 162, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
