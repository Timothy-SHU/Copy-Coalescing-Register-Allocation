; ModuleID = 'kernel/irq/affinity.c'
source_filename = "kernel/irq/affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { [1 x i64] }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }

@.str = private unnamed_addr constant [22 x i8] c"kernel/irq/affinity.c\00", align 1, !dbg !0
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @irq_create_affinity_masks(i32 noundef %nvecs, ptr noundef %affd) #0 align 16 !dbg !57 {
entry:
  %retval = alloca ptr, align 8
  %nvecs.addr = alloca i32, align 4
  %affd.addr = alloca ptr, align 8
  %affvecs = alloca i32, align 4
  %curvec = alloca i32, align 4
  %usedvecs = alloca i32, align 4
  %i = alloca i32, align 4
  %masks = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %this_vecs = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca ptr, align 8
  store i32 %nvecs, ptr %nvecs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvecs.addr, metadata !82, metadata !DIExpression()), !dbg !103
  store ptr %affd, ptr %affd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affd.addr, metadata !83, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %affvecs) #14, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %affvecs, metadata !84, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %curvec) #14, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %curvec, metadata !85, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 4, ptr %usedvecs) #14, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %usedvecs, metadata !86, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %i, metadata !87, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %masks) #14, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %masks, metadata !88, metadata !DIExpression()), !dbg !111
  store ptr null, ptr %masks, align 8, !dbg !111
  %0 = load i32, ptr %nvecs.addr, align 4, !dbg !112
  %1 = load ptr, ptr %affd.addr, align 8, !dbg !114
  %pre_vectors = getelementptr inbounds %struct.irq_affinity, ptr %1, i32 0, i32 0, !dbg !115
  %2 = load i32, ptr %pre_vectors, align 8, !dbg !115
  %3 = load ptr, ptr %affd.addr, align 8, !dbg !116
  %post_vectors = getelementptr inbounds %struct.irq_affinity, ptr %3, i32 0, i32 1, !dbg !117
  %4 = load i32, ptr %post_vectors, align 4, !dbg !117
  %add = add i32 %2, %4, !dbg !118
  %cmp = icmp ugt i32 %0, %add, !dbg !119
  br i1 %cmp, label %if.then, label %if.else, !dbg !120

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %nvecs.addr, align 4, !dbg !121
  %6 = load ptr, ptr %affd.addr, align 8, !dbg !122
  %pre_vectors1 = getelementptr inbounds %struct.irq_affinity, ptr %6, i32 0, i32 0, !dbg !123
  %7 = load i32, ptr %pre_vectors1, align 8, !dbg !123
  %sub = sub i32 %5, %7, !dbg !124
  %8 = load ptr, ptr %affd.addr, align 8, !dbg !125
  %post_vectors2 = getelementptr inbounds %struct.irq_affinity, ptr %8, i32 0, i32 1, !dbg !126
  %9 = load i32, ptr %post_vectors2, align 4, !dbg !126
  %sub3 = sub i32 %sub, %9, !dbg !127
  store i32 %sub3, ptr %affvecs, align 4, !dbg !128
  br label %if.end, !dbg !129

if.else:                                          ; preds = %entry
  store i32 0, ptr %affvecs, align 4, !dbg !130
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %affd.addr, align 8, !dbg !131
  %calc_sets = getelementptr inbounds %struct.irq_affinity, ptr %10, i32 0, i32 4, !dbg !133
  %11 = load ptr, ptr %calc_sets, align 8, !dbg !133
  %tobool = icmp ne ptr %11, null, !dbg !131
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !134

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %affd.addr, align 8, !dbg !135
  %calc_sets5 = getelementptr inbounds %struct.irq_affinity, ptr %12, i32 0, i32 4, !dbg !136
  store ptr @default_calc_sets, ptr %calc_sets5, align 8, !dbg !137
  br label %if.end6, !dbg !135

if.end6:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %affd.addr, align 8, !dbg !138
  %calc_sets7 = getelementptr inbounds %struct.irq_affinity, ptr %13, i32 0, i32 4, !dbg !139
  %14 = load ptr, ptr %calc_sets7, align 8, !dbg !139
  %15 = load ptr, ptr %affd.addr, align 8, !dbg !140
  %16 = load i32, ptr %affvecs, align 4, !dbg !141
  call void %14(ptr noundef %15, i32 noundef %16) #15, !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !89, metadata !DIExpression()), !dbg !142
  %17 = load ptr, ptr %affd.addr, align 8, !dbg !142
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %17, i32 0, i32 2, !dbg !142
  %18 = load i32, ptr %nr_sets, align 8, !dbg !142
  %cmp8 = icmp ugt i32 %18, 4, !dbg !142
  %lnot = xor i1 %cmp8, true, !dbg !142
  %lnot9 = xor i1 %lnot, true, !dbg !142
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !142
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !142
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !143
  %tobool10 = icmp ne i32 %19, 0, !dbg !143
  %lnot11 = xor i1 %tobool10, true, !dbg !143
  %lnot13 = xor i1 %lnot11, true, !dbg !143
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !143
  %conv = sext i32 %lnot.ext14 to i64, !dbg !143
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !143
  %tobool15 = icmp ne i64 %expval, 0, !dbg !143
  br i1 %tobool15, label %if.then16, label %if.end26, !dbg !142

if.then16:                                        ; preds = %if.end6
  br label %do.body, !dbg !143

do.body:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !93, metadata !DIExpression()), !dbg !144
  store i32 2307, ptr %__flags, align 4, !dbg !144
  br label %do.body17, !dbg !144

do.body17:                                        ; preds = %do.body
  br label %do.cond, !dbg !145

do.cond:                                          ; preds = %do.body17
  br label %do.end, !dbg !145

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !144

do.body18:                                        ; preds = %do.end
  %20 = load i32, ptr %__flags, align 4, !dbg !147
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 52, i32 %20, i64 12) #14, !dbg !147, !srcloc !149
  br label %do.cond19, !dbg !147

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !147

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !144

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !150

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !150

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !143
  br label %do.cond24, !dbg !144

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !144

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !144

if.end26:                                         ; preds = %do.end25, %if.end6
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !142
  %tobool27 = icmp ne i32 %21, 0, !dbg !142
  %lnot28 = xor i1 %tobool27, true, !dbg !142
  %lnot30 = xor i1 %lnot28, true, !dbg !142
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !142
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !142
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !142
  store i64 %expval33, ptr %tmp, align 8, !dbg !143
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !152
  %22 = load i64, ptr %tmp, align 8, !dbg !142
  %tobool34 = icmp ne i64 %22, 0, !dbg !152
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !153

if.then35:                                        ; preds = %if.end26
  store ptr null, ptr %retval, align 8, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !154

if.end36:                                         ; preds = %if.end26
  %23 = load i32, ptr %affvecs, align 4, !dbg !155
  %tobool37 = icmp ne i32 %23, 0, !dbg !155
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !157

if.then38:                                        ; preds = %if.end36
  store ptr null, ptr %retval, align 8, !dbg !158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !158

if.end39:                                         ; preds = %if.end36
  %24 = load i32, ptr %nvecs.addr, align 4, !dbg !159
  %conv40 = zext i32 %24 to i64, !dbg !159
  %call = call noalias ptr @kcalloc(i64 noundef %conv40, i64 noundef 16, i32 noundef 3264) #16, !dbg !160
  store ptr %call, ptr %masks, align 8, !dbg !161
  %25 = load ptr, ptr %masks, align 8, !dbg !162
  %tobool41 = icmp ne ptr %25, null, !dbg !162
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !164

if.then42:                                        ; preds = %if.end39
  store ptr null, ptr %retval, align 8, !dbg !165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !165

if.end43:                                         ; preds = %if.end39
  store i32 0, ptr %curvec, align 4, !dbg !166
  br label %for.cond, !dbg !168

for.cond:                                         ; preds = %for.inc, %if.end43
  %26 = load i32, ptr %curvec, align 4, !dbg !169
  %27 = load ptr, ptr %affd.addr, align 8, !dbg !171
  %pre_vectors44 = getelementptr inbounds %struct.irq_affinity, ptr %27, i32 0, i32 0, !dbg !172
  %28 = load i32, ptr %pre_vectors44, align 8, !dbg !172
  %cmp45 = icmp ult i32 %26, %28, !dbg !173
  br i1 %cmp45, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %masks, align 8, !dbg !175
  %30 = load i32, ptr %curvec, align 4, !dbg !176
  %idxprom = zext i32 %30 to i64, !dbg !175
  %arrayidx = getelementptr %struct.irq_affinity_desc, ptr %29, i64 %idxprom, !dbg !175
  %mask = getelementptr inbounds %struct.irq_affinity_desc, ptr %arrayidx, i32 0, i32 0, !dbg !177
  call void @cpumask_copy(ptr noundef %mask, ptr noundef @irq_default_affinity) #15, !dbg !178
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %curvec, align 4, !dbg !179
  %inc = add i32 %31, 1, !dbg !179
  store i32 %inc, ptr %curvec, align 4, !dbg !179
  br label %for.cond, !dbg !180, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !185
  store i32 0, ptr %usedvecs, align 4, !dbg !186
  br label %for.cond47, !dbg !187

for.cond47:                                       ; preds = %for.inc75, %for.end
  %32 = load i32, ptr %i, align 4, !dbg !188
  %33 = load ptr, ptr %affd.addr, align 8, !dbg !189
  %nr_sets48 = getelementptr inbounds %struct.irq_affinity, ptr %33, i32 0, i32 2, !dbg !190
  %34 = load i32, ptr %nr_sets48, align 8, !dbg !190
  %cmp49 = icmp ult i32 %32, %34, !dbg !191
  br i1 %cmp49, label %for.body51, label %for.end77, !dbg !192

for.body51:                                       ; preds = %for.cond47
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_vecs) #14, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %this_vecs, metadata !96, metadata !DIExpression()), !dbg !194
  %35 = load ptr, ptr %affd.addr, align 8, !dbg !195
  %set_size = getelementptr inbounds %struct.irq_affinity, ptr %35, i32 0, i32 3, !dbg !196
  %36 = load i32, ptr %i, align 4, !dbg !197
  %idxprom52 = zext i32 %36 to i64, !dbg !195
  %arrayidx53 = getelementptr [4 x i32], ptr %set_size, i64 0, i64 %idxprom52, !dbg !195
  %37 = load i32, ptr %arrayidx53, align 4, !dbg !195
  store i32 %37, ptr %this_vecs, align 4, !dbg !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %j, metadata !100, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #14, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %result, metadata !101, metadata !DIExpression()), !dbg !201
  %38 = load i32, ptr %this_vecs, align 4, !dbg !202
  %call54 = call ptr @group_cpus_evenly(i32 noundef %38) #15, !dbg !203
  store ptr %call54, ptr %result, align 8, !dbg !201
  %39 = load ptr, ptr %result, align 8, !dbg !204
  %tobool55 = icmp ne ptr %39, null, !dbg !204
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !206

if.then56:                                        ; preds = %for.body51
  %40 = load ptr, ptr %masks, align 8, !dbg !207
  call void @kfree(ptr noundef %40) #15, !dbg !209
  store ptr null, ptr %retval, align 8, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !210

if.end57:                                         ; preds = %for.body51
  store i32 0, ptr %j, align 4, !dbg !211
  br label %for.cond58, !dbg !213

for.cond58:                                       ; preds = %for.inc68, %if.end57
  %41 = load i32, ptr %j, align 4, !dbg !214
  %42 = load i32, ptr %this_vecs, align 4, !dbg !216
  %cmp59 = icmp ult i32 %41, %42, !dbg !217
  br i1 %cmp59, label %for.body61, label %for.end70, !dbg !218

for.body61:                                       ; preds = %for.cond58
  %43 = load ptr, ptr %masks, align 8, !dbg !219
  %44 = load i32, ptr %curvec, align 4, !dbg !220
  %45 = load i32, ptr %j, align 4, !dbg !221
  %add62 = add i32 %44, %45, !dbg !222
  %idxprom63 = zext i32 %add62 to i64, !dbg !219
  %arrayidx64 = getelementptr %struct.irq_affinity_desc, ptr %43, i64 %idxprom63, !dbg !219
  %mask65 = getelementptr inbounds %struct.irq_affinity_desc, ptr %arrayidx64, i32 0, i32 0, !dbg !223
  %46 = load ptr, ptr %result, align 8, !dbg !224
  %47 = load i32, ptr %j, align 4, !dbg !225
  %idxprom66 = sext i32 %47 to i64, !dbg !224
  %arrayidx67 = getelementptr %struct.cpumask, ptr %46, i64 %idxprom66, !dbg !224
  call void @cpumask_copy(ptr noundef %mask65, ptr noundef %arrayidx67) #15, !dbg !226
  br label %for.inc68, !dbg !226

for.inc68:                                        ; preds = %for.body61
  %48 = load i32, ptr %j, align 4, !dbg !227
  %inc69 = add i32 %48, 1, !dbg !227
  store i32 %inc69, ptr %j, align 4, !dbg !227
  br label %for.cond58, !dbg !228, !llvm.loop !229

for.end70:                                        ; preds = %for.cond58
  %49 = load ptr, ptr %result, align 8, !dbg !231
  call void @kfree(ptr noundef %49) #15, !dbg !232
  %50 = load i32, ptr %this_vecs, align 4, !dbg !233
  %51 = load i32, ptr %curvec, align 4, !dbg !234
  %add71 = add i32 %51, %50, !dbg !234
  store i32 %add71, ptr %curvec, align 4, !dbg !234
  %52 = load i32, ptr %this_vecs, align 4, !dbg !235
  %53 = load i32, ptr %usedvecs, align 4, !dbg !236
  %add72 = add i32 %53, %52, !dbg !236
  store i32 %add72, ptr %usedvecs, align 4, !dbg !236
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !237
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %for.end70, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #14, !dbg !237
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !237
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_vecs) #14, !dbg !237
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc75, !dbg !238

for.inc75:                                        ; preds = %cleanup.cont
  %54 = load i32, ptr %i, align 4, !dbg !239
  %inc76 = add i32 %54, 1, !dbg !239
  store i32 %inc76, ptr %i, align 4, !dbg !239
  br label %for.cond47, !dbg !240, !llvm.loop !241

for.end77:                                        ; preds = %for.cond47
  %55 = load i32, ptr %usedvecs, align 4, !dbg !243
  %56 = load i32, ptr %affvecs, align 4, !dbg !245
  %cmp78 = icmp uge i32 %55, %56, !dbg !246
  br i1 %cmp78, label %if.then80, label %if.else83, !dbg !247

if.then80:                                        ; preds = %for.end77
  %57 = load ptr, ptr %affd.addr, align 8, !dbg !248
  %pre_vectors81 = getelementptr inbounds %struct.irq_affinity, ptr %57, i32 0, i32 0, !dbg !249
  %58 = load i32, ptr %pre_vectors81, align 8, !dbg !249
  %59 = load i32, ptr %affvecs, align 4, !dbg !250
  %add82 = add i32 %58, %59, !dbg !251
  store i32 %add82, ptr %curvec, align 4, !dbg !252
  br label %if.end86, !dbg !253

if.else83:                                        ; preds = %for.end77
  %60 = load ptr, ptr %affd.addr, align 8, !dbg !254
  %pre_vectors84 = getelementptr inbounds %struct.irq_affinity, ptr %60, i32 0, i32 0, !dbg !255
  %61 = load i32, ptr %pre_vectors84, align 8, !dbg !255
  %62 = load i32, ptr %usedvecs, align 4, !dbg !256
  %add85 = add i32 %61, %62, !dbg !257
  store i32 %add85, ptr %curvec, align 4, !dbg !258
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %if.then80
  br label %for.cond87, !dbg !259

for.cond87:                                       ; preds = %for.inc94, %if.end86
  %63 = load i32, ptr %curvec, align 4, !dbg !260
  %64 = load i32, ptr %nvecs.addr, align 4, !dbg !263
  %cmp88 = icmp ult i32 %63, %64, !dbg !264
  br i1 %cmp88, label %for.body90, label %for.end96, !dbg !265

for.body90:                                       ; preds = %for.cond87
  %65 = load ptr, ptr %masks, align 8, !dbg !266
  %66 = load i32, ptr %curvec, align 4, !dbg !267
  %idxprom91 = zext i32 %66 to i64, !dbg !266
  %arrayidx92 = getelementptr %struct.irq_affinity_desc, ptr %65, i64 %idxprom91, !dbg !266
  %mask93 = getelementptr inbounds %struct.irq_affinity_desc, ptr %arrayidx92, i32 0, i32 0, !dbg !268
  call void @cpumask_copy(ptr noundef %mask93, ptr noundef @irq_default_affinity) #15, !dbg !269
  br label %for.inc94, !dbg !269

for.inc94:                                        ; preds = %for.body90
  %67 = load i32, ptr %curvec, align 4, !dbg !270
  %inc95 = add i32 %67, 1, !dbg !270
  store i32 %inc95, ptr %curvec, align 4, !dbg !270
  br label %for.cond87, !dbg !271, !llvm.loop !272

for.end96:                                        ; preds = %for.cond87
  %68 = load ptr, ptr %affd.addr, align 8, !dbg !274
  %pre_vectors97 = getelementptr inbounds %struct.irq_affinity, ptr %68, i32 0, i32 0, !dbg !276
  %69 = load i32, ptr %pre_vectors97, align 8, !dbg !276
  store i32 %69, ptr %i, align 4, !dbg !277
  br label %for.cond98, !dbg !278

for.cond98:                                       ; preds = %for.inc106, %for.end96
  %70 = load i32, ptr %i, align 4, !dbg !279
  %71 = load i32, ptr %nvecs.addr, align 4, !dbg !281
  %72 = load ptr, ptr %affd.addr, align 8, !dbg !282
  %post_vectors99 = getelementptr inbounds %struct.irq_affinity, ptr %72, i32 0, i32 1, !dbg !283
  %73 = load i32, ptr %post_vectors99, align 4, !dbg !283
  %sub100 = sub i32 %71, %73, !dbg !284
  %cmp101 = icmp ult i32 %70, %sub100, !dbg !285
  br i1 %cmp101, label %for.body103, label %for.end108, !dbg !286

for.body103:                                      ; preds = %for.cond98
  %74 = load ptr, ptr %masks, align 8, !dbg !287
  %75 = load i32, ptr %i, align 4, !dbg !288
  %idxprom104 = zext i32 %75 to i64, !dbg !287
  %arrayidx105 = getelementptr %struct.irq_affinity_desc, ptr %74, i64 %idxprom104, !dbg !287
  %is_managed = getelementptr inbounds %struct.irq_affinity_desc, ptr %arrayidx105, i32 0, i32 1, !dbg !289
  %bf.load = load i8, ptr %is_managed, align 8, !dbg !290
  %bf.clear = and i8 %bf.load, -2, !dbg !290
  %bf.set = or i8 %bf.clear, 1, !dbg !290
  store i8 %bf.set, ptr %is_managed, align 8, !dbg !290
  br label %for.inc106, !dbg !287

for.inc106:                                       ; preds = %for.body103
  %76 = load i32, ptr %i, align 4, !dbg !291
  %inc107 = add i32 %76, 1, !dbg !291
  store i32 %inc107, ptr %i, align 4, !dbg !291
  br label %for.cond98, !dbg !292, !llvm.loop !293

for.end108:                                       ; preds = %for.cond98
  %77 = load ptr, ptr %masks, align 8, !dbg !295
  store ptr %77, ptr %retval, align 8, !dbg !296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !296

cleanup109:                                       ; preds = %for.end108, %cleanup, %if.then42, %if.then38, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %masks) #14, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %usedvecs) #14, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %curvec) #14, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %affvecs) #14, !dbg !297
  %78 = load ptr, ptr %retval, align 8, !dbg !297
  ret ptr %78, !dbg !297
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @default_calc_sets(ptr noundef %affd, i32 noundef %affvecs) #0 align 16 !dbg !298 {
entry:
  %affd.addr = alloca ptr, align 8
  %affvecs.addr = alloca i32, align 4
  store ptr %affd, ptr %affd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affd.addr, metadata !300, metadata !DIExpression()), !dbg !302
  store i32 %affvecs, ptr %affvecs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %affvecs.addr, metadata !301, metadata !DIExpression()), !dbg !303
  %0 = load ptr, ptr %affd.addr, align 8, !dbg !304
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %0, i32 0, i32 2, !dbg !305
  store i32 1, ptr %nr_sets, align 8, !dbg !306
  %1 = load i32, ptr %affvecs.addr, align 4, !dbg !307
  %2 = load ptr, ptr %affd.addr, align 8, !dbg !308
  %set_size = getelementptr inbounds %struct.irq_affinity, ptr %2, i32 0, i32 3, !dbg !309
  %arrayidx = getelementptr [4 x i32], ptr %set_size, i64 0, i64 0, !dbg !308
  store i32 %1, ptr %arrayidx, align 4, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !312 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !320, metadata !DIExpression()), !dbg !323
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !321, metadata !DIExpression()), !dbg !324
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !322, metadata !DIExpression()), !dbg !325
  %0 = load i64, ptr %n.addr, align 8, !dbg !326
  %1 = load i64, ptr %size.addr, align 8, !dbg !327
  %2 = load i32, ptr %flags.addr, align 4, !dbg !328
  %or = or i32 %2, 256, !dbg !329
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #16, !dbg !330
  ret ptr %call, !dbg !331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #5 align 16 !dbg !332 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !336, metadata !DIExpression()), !dbg !338
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !337, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !340
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !340
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !340
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !341
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !341
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !341
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #15, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local ptr @group_cpus_evenly(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !348 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %maxvec, ptr noundef %affd) #0 align 16 !dbg !353 {
entry:
  %retval = alloca i32, align 4
  %minvec.addr = alloca i32, align 4
  %maxvec.addr = alloca i32, align 4
  %affd.addr = alloca ptr, align 8
  %resv = alloca i32, align 4
  %set_vecs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x205 = alloca i32, align 4
  %__UNIQUE_ID___y206 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %minvec, ptr %minvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minvec.addr, metadata !359, metadata !DIExpression()), !dbg !367
  store i32 %maxvec, ptr %maxvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxvec.addr, metadata !360, metadata !DIExpression()), !dbg !368
  store ptr %affd, ptr %affd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affd.addr, metadata !361, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 4, ptr %resv) #14, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %resv, metadata !362, metadata !DIExpression()), !dbg !371
  %0 = load ptr, ptr %affd.addr, align 8, !dbg !372
  %pre_vectors = getelementptr inbounds %struct.irq_affinity, ptr %0, i32 0, i32 0, !dbg !373
  %1 = load i32, ptr %pre_vectors, align 8, !dbg !373
  %2 = load ptr, ptr %affd.addr, align 8, !dbg !374
  %post_vectors = getelementptr inbounds %struct.irq_affinity, ptr %2, i32 0, i32 1, !dbg !375
  %3 = load i32, ptr %post_vectors, align 4, !dbg !375
  %add = add i32 %1, %3, !dbg !376
  store i32 %add, ptr %resv, align 4, !dbg !371
  call void @llvm.lifetime.start.p0(i64 4, ptr %set_vecs) #14, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %set_vecs, metadata !363, metadata !DIExpression()), !dbg !378
  %4 = load i32, ptr %resv, align 4, !dbg !379
  %5 = load i32, ptr %minvec.addr, align 4, !dbg !381
  %cmp = icmp ugt i32 %4, %5, !dbg !382
  br i1 %cmp, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !384

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %affd.addr, align 8, !dbg !385
  %calc_sets = getelementptr inbounds %struct.irq_affinity, ptr %6, i32 0, i32 4, !dbg !387
  %7 = load ptr, ptr %calc_sets, align 8, !dbg !387
  %tobool = icmp ne ptr %7, null, !dbg !385
  br i1 %tobool, label %if.then1, label %if.else, !dbg !388

if.then1:                                         ; preds = %if.end
  %8 = load i32, ptr %maxvec.addr, align 4, !dbg !389
  %9 = load i32, ptr %resv, align 4, !dbg !391
  %sub = sub i32 %8, %9, !dbg !392
  store i32 %sub, ptr %set_vecs, align 4, !dbg !393
  br label %if.end2, !dbg !394

if.else:                                          ; preds = %if.end
  call void @cpus_read_lock() #15, !dbg !395
  %call = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #15, !dbg !397
  store i32 %call, ptr %set_vecs, align 4, !dbg !398
  call void @cpus_read_unlock() #15, !dbg !399
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %10 = load i32, ptr %resv, align 4, !dbg !400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x205) #14, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x205, metadata !364, metadata !DIExpression()), !dbg !401
  %11 = load i32, ptr %set_vecs, align 4, !dbg !401
  store i32 %11, ptr %__UNIQUE_ID___x205, align 4, !dbg !401
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y206) #14, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y206, metadata !366, metadata !DIExpression()), !dbg !401
  %12 = load i32, ptr %maxvec.addr, align 4, !dbg !401
  %13 = load i32, ptr %resv, align 4, !dbg !401
  %sub3 = sub i32 %12, %13, !dbg !401
  store i32 %sub3, ptr %__UNIQUE_ID___y206, align 4, !dbg !401
  %14 = load i32, ptr %__UNIQUE_ID___x205, align 4, !dbg !401
  %15 = load i32, ptr %__UNIQUE_ID___y206, align 4, !dbg !401
  %cmp4 = icmp ult i32 %14, %15, !dbg !401
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !401

cond.true:                                        ; preds = %if.end2
  %16 = load i32, ptr %__UNIQUE_ID___x205, align 4, !dbg !401
  br label %cond.end, !dbg !401

cond.false:                                       ; preds = %if.end2
  %17 = load i32, ptr %__UNIQUE_ID___y206, align 4, !dbg !401
  br label %cond.end, !dbg !401

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !401
  store i32 %cond, ptr %tmp, align 4, !dbg !401
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y206) #14, !dbg !402
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x205) #14, !dbg !402
  %18 = load i32, ptr %tmp, align 4, !dbg !401
  %add5 = add i32 %10, %18, !dbg !403
  store i32 %add5, ptr %retval, align 4, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %set_vecs) #14, !dbg !405
  call void @llvm.lifetime.end.p0(i64 4, ptr %resv) #14, !dbg !405
  %19 = load i32, ptr %retval, align 4, !dbg !405
  ret i32 %19, !dbg !405
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !406 dso_local void @cpus_read_lock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #5 align 16 !dbg !410 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !416
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !416
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !416
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #15, !dbg !417
  ret i32 %call, !dbg !418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !419 dso_local void @cpus_read_unlock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !420 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !422, metadata !DIExpression()), !dbg !426
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !423, metadata !DIExpression()), !dbg !427
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !424, metadata !DIExpression()), !dbg !428
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !425, metadata !DIExpression()), !dbg !430
  %0 = load i64, ptr %n.addr, align 8, !dbg !431
  %1 = load i64, ptr %size.addr, align 8, !dbg !431
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !431
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !431
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !431
  store i64 %4, ptr %bytes, align 8, !dbg !431
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !431
  %lnot = xor i1 %call, true, !dbg !431
  %lnot1 = xor i1 %lnot, true, !dbg !431
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !431
  %conv = sext i32 %lnot.ext to i64, !dbg !431
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !431
  %tobool = icmp ne i64 %expval, 0, !dbg !431
  br i1 %tobool, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !434

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !435
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !437
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !438

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !439
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !440
  br i1 %8, label %if.then2, label %if.end4, !dbg !441

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !442
  %10 = load i32, ptr %flags.addr, align 4, !dbg !443
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !444
  store ptr %call3, ptr %retval, align 8, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !445

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !446
  %12 = load i32, ptr %flags.addr, align 4, !dbg !447
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !448
  store ptr %call5, ptr %retval, align 8, !dbg !449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !449

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !450
  %13 = load ptr, ptr %retval, align 8, !dbg !450
  ret ptr %13, !dbg !450
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !451 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !460, !range !461, !noundef !462
  %tobool = trunc i8 %0 to i1, !dbg !460
  %lnot = xor i1 %tobool, true, !dbg !460
  %lnot1 = xor i1 %lnot, true, !dbg !460
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !460
  %conv = sext i32 %lnot.ext to i64, !dbg !460
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !460
  %tobool2 = icmp ne i64 %expval, 0, !dbg !460
  ret i1 %tobool2, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !464 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !468, metadata !DIExpression()), !dbg !473
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !469, metadata !DIExpression()), !dbg !474
  %0 = load i64, ptr %size.addr, align 8, !dbg !475
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !476
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !477

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !478
  %tobool = icmp ne i64 %2, 0, !dbg !478
  br i1 %tobool, label %if.then, label %if.end7, !dbg !479

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !480
  call void @llvm.dbg.declare(metadata ptr %index, metadata !470, metadata !DIExpression()), !dbg !481
  %3 = load i64, ptr %size.addr, align 8, !dbg !482
  %cmp = icmp ugt i64 %3, 8192, !dbg !484
  br i1 %cmp, label %if.then1, label %if.end, !dbg !485

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !486
  %5 = load i32, ptr %flags.addr, align 4, !dbg !487
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !488
  store ptr %call, ptr %retval, align 8, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !490
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !490
  store i32 %call2, ptr %index, align 4, !dbg !491
  %7 = load i32, ptr %flags.addr, align 4, !dbg !492
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !493
  %9 = ptrtoint ptr %8 to i64, !dbg !493
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !494
  %idxprom = zext i32 %call3 to i64, !dbg !495
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !495
  %10 = load i32, ptr %index, align 4, !dbg !496
  %idxprom4 = zext i32 %10 to i64, !dbg !495
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !495
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !495
  %12 = load i32, ptr %flags.addr, align 4, !dbg !497
  %13 = load i64, ptr %size.addr, align 8, !dbg !498
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !499
  store ptr %call6, ptr %retval, align 8, !dbg !500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !500

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !501
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !502
  %15 = load i32, ptr %flags.addr, align 4, !dbg !503
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !504
  store ptr %call8, ptr %retval, align 8, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !506
  ret ptr %16, !dbg !506
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !507 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !508 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !509 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !513, metadata !DIExpression()), !dbg !515
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !514, metadata !DIExpression()), !dbg !516
  %0 = load i64, ptr %size.addr, align 8, !dbg !517
  %tobool = icmp ne i64 %0, 0, !dbg !517
  br i1 %tobool, label %if.end, label %if.then, !dbg !519

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !520
  br label %return, !dbg !520

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !521
  %cmp = icmp ule i64 %1, 8, !dbg !523
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !524

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !525
  br label %return, !dbg !525

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !526
  %cmp3 = icmp ugt i64 %2, 64, !dbg !528
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !529

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !530
  %cmp4 = icmp ule i64 %3, 96, !dbg !531
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !532

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !533
  br label %return, !dbg !533

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !534
  %cmp7 = icmp ugt i64 %4, 128, !dbg !536
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !537

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !538
  %cmp9 = icmp ule i64 %5, 192, !dbg !539
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !540

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !541
  br label %return, !dbg !541

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !542
  %cmp12 = icmp ule i64 %6, 8, !dbg !544
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !545

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !546
  br label %return, !dbg !546

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !547
  %cmp15 = icmp ule i64 %7, 16, !dbg !549
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !550

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !551
  br label %return, !dbg !551

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !552
  %cmp18 = icmp ule i64 %8, 32, !dbg !554
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !555

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !556
  br label %return, !dbg !556

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !557
  %cmp21 = icmp ule i64 %9, 64, !dbg !559
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !560

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !561
  br label %return, !dbg !561

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !562
  %cmp24 = icmp ule i64 %10, 128, !dbg !564
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !565

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !566
  br label %return, !dbg !566

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !567
  %cmp27 = icmp ule i64 %11, 256, !dbg !569
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !570

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !571
  br label %return, !dbg !571

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !572
  %cmp30 = icmp ule i64 %12, 512, !dbg !574
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !575

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !576
  br label %return, !dbg !576

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !577
  %cmp33 = icmp ule i64 %13, 1024, !dbg !579
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !580

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !581
  br label %return, !dbg !581

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !582
  %cmp36 = icmp ule i64 %14, 2048, !dbg !584
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !585

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !586
  br label %return, !dbg !586

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !587
  %cmp39 = icmp ule i64 %15, 4096, !dbg !589
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !590

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !591
  br label %return, !dbg !591

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !592
  %cmp42 = icmp ule i64 %16, 8192, !dbg !594
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !595

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !596
  br label %return, !dbg !596

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !597
  %cmp45 = icmp ule i64 %17, 16384, !dbg !599
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !600

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !601
  br label %return, !dbg !601

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !602
  %cmp48 = icmp ule i64 %18, 32768, !dbg !604
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !605

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !606
  br label %return, !dbg !606

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !607
  %cmp51 = icmp ule i64 %19, 65536, !dbg !609
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !610

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !611
  br label %return, !dbg !611

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !612
  %cmp54 = icmp ule i64 %20, 131072, !dbg !614
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !615

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !616
  br label %return, !dbg !616

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !617
  %cmp57 = icmp ule i64 %21, 262144, !dbg !619
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !620

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !621
  br label %return, !dbg !621

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !622
  %cmp60 = icmp ule i64 %22, 524288, !dbg !624
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !625

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !626
  br label %return, !dbg !626

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !627
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !629
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !630

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !631
  br label %return, !dbg !631

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !632
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !634
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !635

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !636
  br label %return, !dbg !636

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !637, !range !461, !noundef !462
  %tobool69 = trunc i8 %25 to i1, !dbg !637
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !639

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !640

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !641, !srcloc !644
  unreachable, !dbg !641

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !645

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !646

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !647

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !649

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !647

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !651, !srcloc !653
  br label %do.end75, !dbg !651

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !647

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !654
  br label %return, !dbg !654

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !655
  ret i32 %26, !dbg !655
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !656 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !662 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !666, metadata !DIExpression()), !dbg !668
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !667, metadata !DIExpression()), !dbg !669
  %0 = load i32, ptr %flags.addr, align 4, !dbg !670
  %and = and i32 %0, 17, !dbg !670
  %cmp = icmp eq i32 %and, 0, !dbg !670
  %lnot = xor i1 %cmp, true, !dbg !670
  %lnot1 = xor i1 %lnot, true, !dbg !670
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !670
  %conv = sext i32 %lnot.ext to i64, !dbg !670
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !670
  %tobool = icmp ne i64 %expval, 0, !dbg !670
  br i1 %tobool, label %if.then, label %if.end, !dbg !672

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !673
  br label %return, !dbg !673

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !674
  %and2 = and i32 %1, 1, !dbg !676
  %tobool3 = icmp ne i32 %and2, 0, !dbg !676
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !677

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !678
  br label %return, !dbg !678

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !679
  br label %return, !dbg !679

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !681
  ret i32 %2, !dbg !681
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !682 dso_local void @__compiletime_assert_173() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !683 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !691, metadata !DIExpression()), !dbg !695
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !692, metadata !DIExpression()), !dbg !696
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !693, metadata !DIExpression()), !dbg !697
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !698
  call void @llvm.dbg.declare(metadata ptr %len, metadata !694, metadata !DIExpression()), !dbg !699
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !700
  %add = add i32 %0, 63, !dbg !700
  %and = and i32 %add, -64, !dbg !700
  %div = udiv i32 %and, 8, !dbg !700
  store i32 %div, ptr %len, align 4, !dbg !699
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !701
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !701
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !701

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !701
  %cmp = icmp ule i32 %3, 64, !dbg !701
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !701

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !701
  %cmp2 = icmp ugt i32 %4, 0, !dbg !701
  br i1 %cmp2, label %if.then, label %if.else, !dbg !703

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !704
  %6 = load i64, ptr %5, align 8, !dbg !705
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !706
  store i64 %6, ptr %7, align 8, !dbg !707
  br label %if.end, !dbg !708

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !709
  %9 = load ptr, ptr %src.addr, align 8, !dbg !710
  %10 = load i32, ptr %len, align 4, !dbg !711
  %conv = zext i32 %10 to i64, !dbg !711
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !712
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !713
  ret void, !dbg !713
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #10 align 16 !dbg !714 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !718, metadata !DIExpression()), !dbg !720
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !719, metadata !DIExpression()), !dbg !721
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !722
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !722
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !722

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !722
  %cmp = icmp ule i32 %2, 64, !dbg !722
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !722

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !722
  %cmp2 = icmp ugt i32 %3, 0, !dbg !722
  br i1 %cmp2, label %if.then, label %if.end, !dbg !724

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !725
  %5 = load i64, ptr %4, align 8, !dbg !726
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !727
  %sub = sub i32 0, %6, !dbg !727
  %and = and i32 %sub, 63, !dbg !727
  %sh_prom = zext i32 %and to i64, !dbg !727
  %shr = lshr i64 -1, %sh_prom, !dbg !727
  %and3 = and i64 %5, %shr, !dbg !728
  %call = call i64 @hweight_long(i64 noundef %and3) #15, !dbg !729
  %conv = trunc i64 %call to i32, !dbg !729
  store i32 %conv, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !731
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !732
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #15, !dbg !733
  store i32 %call4, ptr %retval, align 4, !dbg !734
  br label %return, !dbg !734

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !735
  ret i32 %9, !dbg !735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #10 align 16 !dbg !736 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = load i64, ptr %w.addr, align 8, !dbg !743
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !743
  br i1 %1, label %cond.true, label %cond.false, !dbg !743

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !743
  %and = and i64 %2, 1, !dbg !743
  %tobool = icmp ne i64 %and, 0, !dbg !743
  %lnot = xor i1 %tobool, true, !dbg !743
  %lnot1 = xor i1 %lnot, true, !dbg !743
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !743
  %3 = load i64, ptr %w.addr, align 8, !dbg !743
  %and2 = and i64 %3, 2, !dbg !743
  %tobool3 = icmp ne i64 %and2, 0, !dbg !743
  %lnot4 = xor i1 %tobool3, true, !dbg !743
  %lnot6 = xor i1 %lnot4, true, !dbg !743
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !743
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !743
  %4 = load i64, ptr %w.addr, align 8, !dbg !743
  %and8 = and i64 %4, 4, !dbg !743
  %tobool9 = icmp ne i64 %and8, 0, !dbg !743
  %lnot10 = xor i1 %tobool9, true, !dbg !743
  %lnot12 = xor i1 %lnot10, true, !dbg !743
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !743
  %add14 = add i32 %add, %lnot.ext13, !dbg !743
  %5 = load i64, ptr %w.addr, align 8, !dbg !743
  %and15 = and i64 %5, 8, !dbg !743
  %tobool16 = icmp ne i64 %and15, 0, !dbg !743
  %lnot17 = xor i1 %tobool16, true, !dbg !743
  %lnot19 = xor i1 %lnot17, true, !dbg !743
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !743
  %add21 = add i32 %add14, %lnot.ext20, !dbg !743
  %6 = load i64, ptr %w.addr, align 8, !dbg !743
  %and22 = and i64 %6, 16, !dbg !743
  %tobool23 = icmp ne i64 %and22, 0, !dbg !743
  %lnot24 = xor i1 %tobool23, true, !dbg !743
  %lnot26 = xor i1 %lnot24, true, !dbg !743
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !743
  %add28 = add i32 %add21, %lnot.ext27, !dbg !743
  %7 = load i64, ptr %w.addr, align 8, !dbg !743
  %and29 = and i64 %7, 32, !dbg !743
  %tobool30 = icmp ne i64 %and29, 0, !dbg !743
  %lnot31 = xor i1 %tobool30, true, !dbg !743
  %lnot33 = xor i1 %lnot31, true, !dbg !743
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !743
  %add35 = add i32 %add28, %lnot.ext34, !dbg !743
  %8 = load i64, ptr %w.addr, align 8, !dbg !743
  %and36 = and i64 %8, 64, !dbg !743
  %tobool37 = icmp ne i64 %and36, 0, !dbg !743
  %lnot38 = xor i1 %tobool37, true, !dbg !743
  %lnot40 = xor i1 %lnot38, true, !dbg !743
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !743
  %add42 = add i32 %add35, %lnot.ext41, !dbg !743
  %9 = load i64, ptr %w.addr, align 8, !dbg !743
  %and43 = and i64 %9, 128, !dbg !743
  %tobool44 = icmp ne i64 %and43, 0, !dbg !743
  %lnot45 = xor i1 %tobool44, true, !dbg !743
  %lnot47 = xor i1 %lnot45, true, !dbg !743
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !743
  %add49 = add i32 %add42, %lnot.ext48, !dbg !743
  %10 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr = lshr i64 %10, 8, !dbg !743
  %and50 = and i64 %shr, 1, !dbg !743
  %tobool51 = icmp ne i64 %and50, 0, !dbg !743
  %lnot52 = xor i1 %tobool51, true, !dbg !743
  %lnot54 = xor i1 %lnot52, true, !dbg !743
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !743
  %11 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr56 = lshr i64 %11, 8, !dbg !743
  %and57 = and i64 %shr56, 2, !dbg !743
  %tobool58 = icmp ne i64 %and57, 0, !dbg !743
  %lnot59 = xor i1 %tobool58, true, !dbg !743
  %lnot61 = xor i1 %lnot59, true, !dbg !743
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !743
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !743
  %12 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr64 = lshr i64 %12, 8, !dbg !743
  %and65 = and i64 %shr64, 4, !dbg !743
  %tobool66 = icmp ne i64 %and65, 0, !dbg !743
  %lnot67 = xor i1 %tobool66, true, !dbg !743
  %lnot69 = xor i1 %lnot67, true, !dbg !743
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !743
  %add71 = add i32 %add63, %lnot.ext70, !dbg !743
  %13 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr72 = lshr i64 %13, 8, !dbg !743
  %and73 = and i64 %shr72, 8, !dbg !743
  %tobool74 = icmp ne i64 %and73, 0, !dbg !743
  %lnot75 = xor i1 %tobool74, true, !dbg !743
  %lnot77 = xor i1 %lnot75, true, !dbg !743
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !743
  %add79 = add i32 %add71, %lnot.ext78, !dbg !743
  %14 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr80 = lshr i64 %14, 8, !dbg !743
  %and81 = and i64 %shr80, 16, !dbg !743
  %tobool82 = icmp ne i64 %and81, 0, !dbg !743
  %lnot83 = xor i1 %tobool82, true, !dbg !743
  %lnot85 = xor i1 %lnot83, true, !dbg !743
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !743
  %add87 = add i32 %add79, %lnot.ext86, !dbg !743
  %15 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr88 = lshr i64 %15, 8, !dbg !743
  %and89 = and i64 %shr88, 32, !dbg !743
  %tobool90 = icmp ne i64 %and89, 0, !dbg !743
  %lnot91 = xor i1 %tobool90, true, !dbg !743
  %lnot93 = xor i1 %lnot91, true, !dbg !743
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !743
  %add95 = add i32 %add87, %lnot.ext94, !dbg !743
  %16 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr96 = lshr i64 %16, 8, !dbg !743
  %and97 = and i64 %shr96, 64, !dbg !743
  %tobool98 = icmp ne i64 %and97, 0, !dbg !743
  %lnot99 = xor i1 %tobool98, true, !dbg !743
  %lnot101 = xor i1 %lnot99, true, !dbg !743
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !743
  %add103 = add i32 %add95, %lnot.ext102, !dbg !743
  %17 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr104 = lshr i64 %17, 8, !dbg !743
  %and105 = and i64 %shr104, 128, !dbg !743
  %tobool106 = icmp ne i64 %and105, 0, !dbg !743
  %lnot107 = xor i1 %tobool106, true, !dbg !743
  %lnot109 = xor i1 %lnot107, true, !dbg !743
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !743
  %add111 = add i32 %add103, %lnot.ext110, !dbg !743
  %add112 = add i32 %add49, %add111, !dbg !743
  %18 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr113 = lshr i64 %18, 16, !dbg !743
  %and114 = and i64 %shr113, 1, !dbg !743
  %tobool115 = icmp ne i64 %and114, 0, !dbg !743
  %lnot116 = xor i1 %tobool115, true, !dbg !743
  %lnot118 = xor i1 %lnot116, true, !dbg !743
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !743
  %19 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr120 = lshr i64 %19, 16, !dbg !743
  %and121 = and i64 %shr120, 2, !dbg !743
  %tobool122 = icmp ne i64 %and121, 0, !dbg !743
  %lnot123 = xor i1 %tobool122, true, !dbg !743
  %lnot125 = xor i1 %lnot123, true, !dbg !743
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !743
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !743
  %20 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr128 = lshr i64 %20, 16, !dbg !743
  %and129 = and i64 %shr128, 4, !dbg !743
  %tobool130 = icmp ne i64 %and129, 0, !dbg !743
  %lnot131 = xor i1 %tobool130, true, !dbg !743
  %lnot133 = xor i1 %lnot131, true, !dbg !743
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !743
  %add135 = add i32 %add127, %lnot.ext134, !dbg !743
  %21 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr136 = lshr i64 %21, 16, !dbg !743
  %and137 = and i64 %shr136, 8, !dbg !743
  %tobool138 = icmp ne i64 %and137, 0, !dbg !743
  %lnot139 = xor i1 %tobool138, true, !dbg !743
  %lnot141 = xor i1 %lnot139, true, !dbg !743
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !743
  %add143 = add i32 %add135, %lnot.ext142, !dbg !743
  %22 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr144 = lshr i64 %22, 16, !dbg !743
  %and145 = and i64 %shr144, 16, !dbg !743
  %tobool146 = icmp ne i64 %and145, 0, !dbg !743
  %lnot147 = xor i1 %tobool146, true, !dbg !743
  %lnot149 = xor i1 %lnot147, true, !dbg !743
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !743
  %add151 = add i32 %add143, %lnot.ext150, !dbg !743
  %23 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr152 = lshr i64 %23, 16, !dbg !743
  %and153 = and i64 %shr152, 32, !dbg !743
  %tobool154 = icmp ne i64 %and153, 0, !dbg !743
  %lnot155 = xor i1 %tobool154, true, !dbg !743
  %lnot157 = xor i1 %lnot155, true, !dbg !743
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !743
  %add159 = add i32 %add151, %lnot.ext158, !dbg !743
  %24 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr160 = lshr i64 %24, 16, !dbg !743
  %and161 = and i64 %shr160, 64, !dbg !743
  %tobool162 = icmp ne i64 %and161, 0, !dbg !743
  %lnot163 = xor i1 %tobool162, true, !dbg !743
  %lnot165 = xor i1 %lnot163, true, !dbg !743
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !743
  %add167 = add i32 %add159, %lnot.ext166, !dbg !743
  %25 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr168 = lshr i64 %25, 16, !dbg !743
  %and169 = and i64 %shr168, 128, !dbg !743
  %tobool170 = icmp ne i64 %and169, 0, !dbg !743
  %lnot171 = xor i1 %tobool170, true, !dbg !743
  %lnot173 = xor i1 %lnot171, true, !dbg !743
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !743
  %add175 = add i32 %add167, %lnot.ext174, !dbg !743
  %26 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr176 = lshr i64 %26, 16, !dbg !743
  %shr177 = lshr i64 %shr176, 8, !dbg !743
  %and178 = and i64 %shr177, 1, !dbg !743
  %tobool179 = icmp ne i64 %and178, 0, !dbg !743
  %lnot180 = xor i1 %tobool179, true, !dbg !743
  %lnot182 = xor i1 %lnot180, true, !dbg !743
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !743
  %27 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr184 = lshr i64 %27, 16, !dbg !743
  %shr185 = lshr i64 %shr184, 8, !dbg !743
  %and186 = and i64 %shr185, 2, !dbg !743
  %tobool187 = icmp ne i64 %and186, 0, !dbg !743
  %lnot188 = xor i1 %tobool187, true, !dbg !743
  %lnot190 = xor i1 %lnot188, true, !dbg !743
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !743
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !743
  %28 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr193 = lshr i64 %28, 16, !dbg !743
  %shr194 = lshr i64 %shr193, 8, !dbg !743
  %and195 = and i64 %shr194, 4, !dbg !743
  %tobool196 = icmp ne i64 %and195, 0, !dbg !743
  %lnot197 = xor i1 %tobool196, true, !dbg !743
  %lnot199 = xor i1 %lnot197, true, !dbg !743
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !743
  %add201 = add i32 %add192, %lnot.ext200, !dbg !743
  %29 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr202 = lshr i64 %29, 16, !dbg !743
  %shr203 = lshr i64 %shr202, 8, !dbg !743
  %and204 = and i64 %shr203, 8, !dbg !743
  %tobool205 = icmp ne i64 %and204, 0, !dbg !743
  %lnot206 = xor i1 %tobool205, true, !dbg !743
  %lnot208 = xor i1 %lnot206, true, !dbg !743
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !743
  %add210 = add i32 %add201, %lnot.ext209, !dbg !743
  %30 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr211 = lshr i64 %30, 16, !dbg !743
  %shr212 = lshr i64 %shr211, 8, !dbg !743
  %and213 = and i64 %shr212, 16, !dbg !743
  %tobool214 = icmp ne i64 %and213, 0, !dbg !743
  %lnot215 = xor i1 %tobool214, true, !dbg !743
  %lnot217 = xor i1 %lnot215, true, !dbg !743
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !743
  %add219 = add i32 %add210, %lnot.ext218, !dbg !743
  %31 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr220 = lshr i64 %31, 16, !dbg !743
  %shr221 = lshr i64 %shr220, 8, !dbg !743
  %and222 = and i64 %shr221, 32, !dbg !743
  %tobool223 = icmp ne i64 %and222, 0, !dbg !743
  %lnot224 = xor i1 %tobool223, true, !dbg !743
  %lnot226 = xor i1 %lnot224, true, !dbg !743
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !743
  %add228 = add i32 %add219, %lnot.ext227, !dbg !743
  %32 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr229 = lshr i64 %32, 16, !dbg !743
  %shr230 = lshr i64 %shr229, 8, !dbg !743
  %and231 = and i64 %shr230, 64, !dbg !743
  %tobool232 = icmp ne i64 %and231, 0, !dbg !743
  %lnot233 = xor i1 %tobool232, true, !dbg !743
  %lnot235 = xor i1 %lnot233, true, !dbg !743
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !743
  %add237 = add i32 %add228, %lnot.ext236, !dbg !743
  %33 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr238 = lshr i64 %33, 16, !dbg !743
  %shr239 = lshr i64 %shr238, 8, !dbg !743
  %and240 = and i64 %shr239, 128, !dbg !743
  %tobool241 = icmp ne i64 %and240, 0, !dbg !743
  %lnot242 = xor i1 %tobool241, true, !dbg !743
  %lnot244 = xor i1 %lnot242, true, !dbg !743
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !743
  %add246 = add i32 %add237, %lnot.ext245, !dbg !743
  %add247 = add i32 %add175, %add246, !dbg !743
  %add248 = add i32 %add112, %add247, !dbg !743
  %34 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr249 = lshr i64 %34, 32, !dbg !743
  %and250 = and i64 %shr249, 1, !dbg !743
  %tobool251 = icmp ne i64 %and250, 0, !dbg !743
  %lnot252 = xor i1 %tobool251, true, !dbg !743
  %lnot254 = xor i1 %lnot252, true, !dbg !743
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !743
  %35 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr256 = lshr i64 %35, 32, !dbg !743
  %and257 = and i64 %shr256, 2, !dbg !743
  %tobool258 = icmp ne i64 %and257, 0, !dbg !743
  %lnot259 = xor i1 %tobool258, true, !dbg !743
  %lnot261 = xor i1 %lnot259, true, !dbg !743
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !743
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !743
  %36 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr264 = lshr i64 %36, 32, !dbg !743
  %and265 = and i64 %shr264, 4, !dbg !743
  %tobool266 = icmp ne i64 %and265, 0, !dbg !743
  %lnot267 = xor i1 %tobool266, true, !dbg !743
  %lnot269 = xor i1 %lnot267, true, !dbg !743
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !743
  %add271 = add i32 %add263, %lnot.ext270, !dbg !743
  %37 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr272 = lshr i64 %37, 32, !dbg !743
  %and273 = and i64 %shr272, 8, !dbg !743
  %tobool274 = icmp ne i64 %and273, 0, !dbg !743
  %lnot275 = xor i1 %tobool274, true, !dbg !743
  %lnot277 = xor i1 %lnot275, true, !dbg !743
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !743
  %add279 = add i32 %add271, %lnot.ext278, !dbg !743
  %38 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr280 = lshr i64 %38, 32, !dbg !743
  %and281 = and i64 %shr280, 16, !dbg !743
  %tobool282 = icmp ne i64 %and281, 0, !dbg !743
  %lnot283 = xor i1 %tobool282, true, !dbg !743
  %lnot285 = xor i1 %lnot283, true, !dbg !743
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !743
  %add287 = add i32 %add279, %lnot.ext286, !dbg !743
  %39 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr288 = lshr i64 %39, 32, !dbg !743
  %and289 = and i64 %shr288, 32, !dbg !743
  %tobool290 = icmp ne i64 %and289, 0, !dbg !743
  %lnot291 = xor i1 %tobool290, true, !dbg !743
  %lnot293 = xor i1 %lnot291, true, !dbg !743
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !743
  %add295 = add i32 %add287, %lnot.ext294, !dbg !743
  %40 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr296 = lshr i64 %40, 32, !dbg !743
  %and297 = and i64 %shr296, 64, !dbg !743
  %tobool298 = icmp ne i64 %and297, 0, !dbg !743
  %lnot299 = xor i1 %tobool298, true, !dbg !743
  %lnot301 = xor i1 %lnot299, true, !dbg !743
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !743
  %add303 = add i32 %add295, %lnot.ext302, !dbg !743
  %41 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr304 = lshr i64 %41, 32, !dbg !743
  %and305 = and i64 %shr304, 128, !dbg !743
  %tobool306 = icmp ne i64 %and305, 0, !dbg !743
  %lnot307 = xor i1 %tobool306, true, !dbg !743
  %lnot309 = xor i1 %lnot307, true, !dbg !743
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !743
  %add311 = add i32 %add303, %lnot.ext310, !dbg !743
  %42 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr312 = lshr i64 %42, 32, !dbg !743
  %shr313 = lshr i64 %shr312, 8, !dbg !743
  %and314 = and i64 %shr313, 1, !dbg !743
  %tobool315 = icmp ne i64 %and314, 0, !dbg !743
  %lnot316 = xor i1 %tobool315, true, !dbg !743
  %lnot318 = xor i1 %lnot316, true, !dbg !743
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !743
  %43 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr320 = lshr i64 %43, 32, !dbg !743
  %shr321 = lshr i64 %shr320, 8, !dbg !743
  %and322 = and i64 %shr321, 2, !dbg !743
  %tobool323 = icmp ne i64 %and322, 0, !dbg !743
  %lnot324 = xor i1 %tobool323, true, !dbg !743
  %lnot326 = xor i1 %lnot324, true, !dbg !743
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !743
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !743
  %44 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr329 = lshr i64 %44, 32, !dbg !743
  %shr330 = lshr i64 %shr329, 8, !dbg !743
  %and331 = and i64 %shr330, 4, !dbg !743
  %tobool332 = icmp ne i64 %and331, 0, !dbg !743
  %lnot333 = xor i1 %tobool332, true, !dbg !743
  %lnot335 = xor i1 %lnot333, true, !dbg !743
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !743
  %add337 = add i32 %add328, %lnot.ext336, !dbg !743
  %45 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr338 = lshr i64 %45, 32, !dbg !743
  %shr339 = lshr i64 %shr338, 8, !dbg !743
  %and340 = and i64 %shr339, 8, !dbg !743
  %tobool341 = icmp ne i64 %and340, 0, !dbg !743
  %lnot342 = xor i1 %tobool341, true, !dbg !743
  %lnot344 = xor i1 %lnot342, true, !dbg !743
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !743
  %add346 = add i32 %add337, %lnot.ext345, !dbg !743
  %46 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr347 = lshr i64 %46, 32, !dbg !743
  %shr348 = lshr i64 %shr347, 8, !dbg !743
  %and349 = and i64 %shr348, 16, !dbg !743
  %tobool350 = icmp ne i64 %and349, 0, !dbg !743
  %lnot351 = xor i1 %tobool350, true, !dbg !743
  %lnot353 = xor i1 %lnot351, true, !dbg !743
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !743
  %add355 = add i32 %add346, %lnot.ext354, !dbg !743
  %47 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr356 = lshr i64 %47, 32, !dbg !743
  %shr357 = lshr i64 %shr356, 8, !dbg !743
  %and358 = and i64 %shr357, 32, !dbg !743
  %tobool359 = icmp ne i64 %and358, 0, !dbg !743
  %lnot360 = xor i1 %tobool359, true, !dbg !743
  %lnot362 = xor i1 %lnot360, true, !dbg !743
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !743
  %add364 = add i32 %add355, %lnot.ext363, !dbg !743
  %48 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr365 = lshr i64 %48, 32, !dbg !743
  %shr366 = lshr i64 %shr365, 8, !dbg !743
  %and367 = and i64 %shr366, 64, !dbg !743
  %tobool368 = icmp ne i64 %and367, 0, !dbg !743
  %lnot369 = xor i1 %tobool368, true, !dbg !743
  %lnot371 = xor i1 %lnot369, true, !dbg !743
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !743
  %add373 = add i32 %add364, %lnot.ext372, !dbg !743
  %49 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr374 = lshr i64 %49, 32, !dbg !743
  %shr375 = lshr i64 %shr374, 8, !dbg !743
  %and376 = and i64 %shr375, 128, !dbg !743
  %tobool377 = icmp ne i64 %and376, 0, !dbg !743
  %lnot378 = xor i1 %tobool377, true, !dbg !743
  %lnot380 = xor i1 %lnot378, true, !dbg !743
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !743
  %add382 = add i32 %add373, %lnot.ext381, !dbg !743
  %add383 = add i32 %add311, %add382, !dbg !743
  %50 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr384 = lshr i64 %50, 32, !dbg !743
  %shr385 = lshr i64 %shr384, 16, !dbg !743
  %and386 = and i64 %shr385, 1, !dbg !743
  %tobool387 = icmp ne i64 %and386, 0, !dbg !743
  %lnot388 = xor i1 %tobool387, true, !dbg !743
  %lnot390 = xor i1 %lnot388, true, !dbg !743
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !743
  %51 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr392 = lshr i64 %51, 32, !dbg !743
  %shr393 = lshr i64 %shr392, 16, !dbg !743
  %and394 = and i64 %shr393, 2, !dbg !743
  %tobool395 = icmp ne i64 %and394, 0, !dbg !743
  %lnot396 = xor i1 %tobool395, true, !dbg !743
  %lnot398 = xor i1 %lnot396, true, !dbg !743
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !743
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !743
  %52 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr401 = lshr i64 %52, 32, !dbg !743
  %shr402 = lshr i64 %shr401, 16, !dbg !743
  %and403 = and i64 %shr402, 4, !dbg !743
  %tobool404 = icmp ne i64 %and403, 0, !dbg !743
  %lnot405 = xor i1 %tobool404, true, !dbg !743
  %lnot407 = xor i1 %lnot405, true, !dbg !743
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !743
  %add409 = add i32 %add400, %lnot.ext408, !dbg !743
  %53 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr410 = lshr i64 %53, 32, !dbg !743
  %shr411 = lshr i64 %shr410, 16, !dbg !743
  %and412 = and i64 %shr411, 8, !dbg !743
  %tobool413 = icmp ne i64 %and412, 0, !dbg !743
  %lnot414 = xor i1 %tobool413, true, !dbg !743
  %lnot416 = xor i1 %lnot414, true, !dbg !743
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !743
  %add418 = add i32 %add409, %lnot.ext417, !dbg !743
  %54 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr419 = lshr i64 %54, 32, !dbg !743
  %shr420 = lshr i64 %shr419, 16, !dbg !743
  %and421 = and i64 %shr420, 16, !dbg !743
  %tobool422 = icmp ne i64 %and421, 0, !dbg !743
  %lnot423 = xor i1 %tobool422, true, !dbg !743
  %lnot425 = xor i1 %lnot423, true, !dbg !743
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !743
  %add427 = add i32 %add418, %lnot.ext426, !dbg !743
  %55 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr428 = lshr i64 %55, 32, !dbg !743
  %shr429 = lshr i64 %shr428, 16, !dbg !743
  %and430 = and i64 %shr429, 32, !dbg !743
  %tobool431 = icmp ne i64 %and430, 0, !dbg !743
  %lnot432 = xor i1 %tobool431, true, !dbg !743
  %lnot434 = xor i1 %lnot432, true, !dbg !743
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !743
  %add436 = add i32 %add427, %lnot.ext435, !dbg !743
  %56 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr437 = lshr i64 %56, 32, !dbg !743
  %shr438 = lshr i64 %shr437, 16, !dbg !743
  %and439 = and i64 %shr438, 64, !dbg !743
  %tobool440 = icmp ne i64 %and439, 0, !dbg !743
  %lnot441 = xor i1 %tobool440, true, !dbg !743
  %lnot443 = xor i1 %lnot441, true, !dbg !743
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !743
  %add445 = add i32 %add436, %lnot.ext444, !dbg !743
  %57 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr446 = lshr i64 %57, 32, !dbg !743
  %shr447 = lshr i64 %shr446, 16, !dbg !743
  %and448 = and i64 %shr447, 128, !dbg !743
  %tobool449 = icmp ne i64 %and448, 0, !dbg !743
  %lnot450 = xor i1 %tobool449, true, !dbg !743
  %lnot452 = xor i1 %lnot450, true, !dbg !743
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !743
  %add454 = add i32 %add445, %lnot.ext453, !dbg !743
  %58 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr455 = lshr i64 %58, 32, !dbg !743
  %shr456 = lshr i64 %shr455, 16, !dbg !743
  %shr457 = lshr i64 %shr456, 8, !dbg !743
  %and458 = and i64 %shr457, 1, !dbg !743
  %tobool459 = icmp ne i64 %and458, 0, !dbg !743
  %lnot460 = xor i1 %tobool459, true, !dbg !743
  %lnot462 = xor i1 %lnot460, true, !dbg !743
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !743
  %59 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr464 = lshr i64 %59, 32, !dbg !743
  %shr465 = lshr i64 %shr464, 16, !dbg !743
  %shr466 = lshr i64 %shr465, 8, !dbg !743
  %and467 = and i64 %shr466, 2, !dbg !743
  %tobool468 = icmp ne i64 %and467, 0, !dbg !743
  %lnot469 = xor i1 %tobool468, true, !dbg !743
  %lnot471 = xor i1 %lnot469, true, !dbg !743
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !743
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !743
  %60 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr474 = lshr i64 %60, 32, !dbg !743
  %shr475 = lshr i64 %shr474, 16, !dbg !743
  %shr476 = lshr i64 %shr475, 8, !dbg !743
  %and477 = and i64 %shr476, 4, !dbg !743
  %tobool478 = icmp ne i64 %and477, 0, !dbg !743
  %lnot479 = xor i1 %tobool478, true, !dbg !743
  %lnot481 = xor i1 %lnot479, true, !dbg !743
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !743
  %add483 = add i32 %add473, %lnot.ext482, !dbg !743
  %61 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr484 = lshr i64 %61, 32, !dbg !743
  %shr485 = lshr i64 %shr484, 16, !dbg !743
  %shr486 = lshr i64 %shr485, 8, !dbg !743
  %and487 = and i64 %shr486, 8, !dbg !743
  %tobool488 = icmp ne i64 %and487, 0, !dbg !743
  %lnot489 = xor i1 %tobool488, true, !dbg !743
  %lnot491 = xor i1 %lnot489, true, !dbg !743
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !743
  %add493 = add i32 %add483, %lnot.ext492, !dbg !743
  %62 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr494 = lshr i64 %62, 32, !dbg !743
  %shr495 = lshr i64 %shr494, 16, !dbg !743
  %shr496 = lshr i64 %shr495, 8, !dbg !743
  %and497 = and i64 %shr496, 16, !dbg !743
  %tobool498 = icmp ne i64 %and497, 0, !dbg !743
  %lnot499 = xor i1 %tobool498, true, !dbg !743
  %lnot501 = xor i1 %lnot499, true, !dbg !743
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !743
  %add503 = add i32 %add493, %lnot.ext502, !dbg !743
  %63 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr504 = lshr i64 %63, 32, !dbg !743
  %shr505 = lshr i64 %shr504, 16, !dbg !743
  %shr506 = lshr i64 %shr505, 8, !dbg !743
  %and507 = and i64 %shr506, 32, !dbg !743
  %tobool508 = icmp ne i64 %and507, 0, !dbg !743
  %lnot509 = xor i1 %tobool508, true, !dbg !743
  %lnot511 = xor i1 %lnot509, true, !dbg !743
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !743
  %add513 = add i32 %add503, %lnot.ext512, !dbg !743
  %64 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr514 = lshr i64 %64, 32, !dbg !743
  %shr515 = lshr i64 %shr514, 16, !dbg !743
  %shr516 = lshr i64 %shr515, 8, !dbg !743
  %and517 = and i64 %shr516, 64, !dbg !743
  %tobool518 = icmp ne i64 %and517, 0, !dbg !743
  %lnot519 = xor i1 %tobool518, true, !dbg !743
  %lnot521 = xor i1 %lnot519, true, !dbg !743
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !743
  %add523 = add i32 %add513, %lnot.ext522, !dbg !743
  %65 = load i64, ptr %w.addr, align 8, !dbg !743
  %shr524 = lshr i64 %65, 32, !dbg !743
  %shr525 = lshr i64 %shr524, 16, !dbg !743
  %shr526 = lshr i64 %shr525, 8, !dbg !743
  %and527 = and i64 %shr526, 128, !dbg !743
  %tobool528 = icmp ne i64 %and527, 0, !dbg !743
  %lnot529 = xor i1 %tobool528, true, !dbg !743
  %lnot531 = xor i1 %lnot529, true, !dbg !743
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !743
  %add533 = add i32 %add523, %lnot.ext532, !dbg !743
  %add534 = add i32 %add454, %add533, !dbg !743
  %add535 = add i32 %add383, %add534, !dbg !743
  %add536 = add i32 %add248, %add535, !dbg !743
  %conv = zext i32 %add536 to i64, !dbg !743
  br label %cond.end, !dbg !743

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !743
  %call = call i64 @__arch_hweight64(i64 noundef %66) #15, !dbg !743
  br label %cond.end, !dbg !743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !743
  ret i64 %cond, !dbg !744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !745 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #10 align 16 !dbg !746 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !751, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #14, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %res, metadata !752, metadata !DIExpression()), !dbg !755
  %0 = load i64, ptr %w.addr, align 8, !dbg !756
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #20, !dbg !757, !srcloc !758
  store i64 %1, ptr %res, align 8, !dbg !757
  %2 = load i64, ptr %res, align 8, !dbg !759
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #14, !dbg !760
  ret i64 %2, !dbg !761
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0,1) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { nounwind memory(none) }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/irq/affinity.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "975f01c91eb628014547637501c8a63e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.affinity.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/affinity\22 -D KBUILD_BASENAME=\22affinity\22 -D KBUILD_MODNAME=\22affinity\22 -D __KBUILD_MODNAME=kmod_affinity -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/affinity.ll kernel/irq/affinity.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !30, globals: !47, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!30 = !{!31, !33, !43, !40, !17, !44}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 154, baseType: !17)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !36, line: 19, size: 64, elements: !37)
!36 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !35, file: !36, line: 19, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !41)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!42}
!42 = !DISubrange(count: 1)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !{!0, !7}
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "irq_create_affinity_masks", scope: !2, file: !2, line: 26, type: !58, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !81)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !17, !66}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !62, line: 299, size: 128, elements: !63)
!62 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !61, file: !62, line: 300, baseType: !35, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !61, file: !62, line: 301, baseType: !17, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !62, line: 285, size: 384, elements: !68)
!68 = !{!69, !70, !71, !72, !76, !80}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pre_vectors", scope: !67, file: !62, line: 286, baseType: !17, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "post_vectors", scope: !67, file: !62, line: 287, baseType: !17, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets", scope: !67, file: !62, line: 288, baseType: !17, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !67, file: !62, line: 289, baseType: !73, size: 128, offset: 96)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 4)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "calc_sets", scope: !67, file: !62, line: 290, baseType: !77, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !66, !17}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !67, file: !62, line: 291, baseType: !43, size: 64, offset: 320)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !93, !96, !100, !101}
!82 = !DILocalVariable(name: "nvecs", arg: 1, scope: !57, file: !2, line: 26, type: !17)
!83 = !DILocalVariable(name: "affd", arg: 2, scope: !57, file: !2, line: 26, type: !66)
!84 = !DILocalVariable(name: "affvecs", scope: !57, file: !2, line: 28, type: !17)
!85 = !DILocalVariable(name: "curvec", scope: !57, file: !2, line: 28, type: !17)
!86 = !DILocalVariable(name: "usedvecs", scope: !57, file: !2, line: 28, type: !17)
!87 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 28, type: !17)
!88 = !DILocalVariable(name: "masks", scope: !57, file: !2, line: 29, type: !60)
!89 = !DILocalVariable(name: "__ret_warn_on", scope: !90, file: !2, line: 52, type: !92)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 52, column: 6)
!91 = distinct !DILexicalBlock(scope: !57, file: !2, line: 52, column: 6)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DILocalVariable(name: "__flags", scope: !94, file: !2, line: 52, type: !92)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 52, column: 6)
!95 = distinct !DILexicalBlock(scope: !90, file: !2, line: 52, column: 6)
!96 = !DILocalVariable(name: "this_vecs", scope: !97, file: !2, line: 72, type: !17)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 71, column: 52)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 71, column: 2)
!99 = distinct !DILexicalBlock(scope: !57, file: !2, line: 71, column: 2)
!100 = !DILocalVariable(name: "j", scope: !97, file: !2, line: 73, type: !92)
!101 = !DILocalVariable(name: "result", scope: !97, file: !2, line: 74, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!103 = !DILocation(line: 26, column: 40, scope: !57)
!104 = !DILocation(line: 26, column: 68, scope: !57)
!105 = !DILocation(line: 28, column: 2, scope: !57)
!106 = !DILocation(line: 28, column: 15, scope: !57)
!107 = !DILocation(line: 28, column: 24, scope: !57)
!108 = !DILocation(line: 28, column: 32, scope: !57)
!109 = !DILocation(line: 28, column: 42, scope: !57)
!110 = !DILocation(line: 29, column: 2, scope: !57)
!111 = !DILocation(line: 29, column: 28, scope: !57)
!112 = !DILocation(line: 37, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !57, file: !2, line: 37, column: 6)
!114 = !DILocation(line: 37, column: 14, scope: !113)
!115 = !DILocation(line: 37, column: 20, scope: !113)
!116 = !DILocation(line: 37, column: 34, scope: !113)
!117 = !DILocation(line: 37, column: 40, scope: !113)
!118 = !DILocation(line: 37, column: 32, scope: !113)
!119 = !DILocation(line: 37, column: 12, scope: !113)
!120 = !DILocation(line: 37, column: 6, scope: !57)
!121 = !DILocation(line: 38, column: 13, scope: !113)
!122 = !DILocation(line: 38, column: 21, scope: !113)
!123 = !DILocation(line: 38, column: 27, scope: !113)
!124 = !DILocation(line: 38, column: 19, scope: !113)
!125 = !DILocation(line: 38, column: 41, scope: !113)
!126 = !DILocation(line: 38, column: 47, scope: !113)
!127 = !DILocation(line: 38, column: 39, scope: !113)
!128 = !DILocation(line: 38, column: 11, scope: !113)
!129 = !DILocation(line: 38, column: 3, scope: !113)
!130 = !DILocation(line: 40, column: 11, scope: !113)
!131 = !DILocation(line: 46, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !57, file: !2, line: 46, column: 6)
!133 = !DILocation(line: 46, column: 13, scope: !132)
!134 = !DILocation(line: 46, column: 6, scope: !57)
!135 = !DILocation(line: 47, column: 3, scope: !132)
!136 = !DILocation(line: 47, column: 9, scope: !132)
!137 = !DILocation(line: 47, column: 19, scope: !132)
!138 = !DILocation(line: 50, column: 2, scope: !57)
!139 = !DILocation(line: 50, column: 8, scope: !57)
!140 = !DILocation(line: 50, column: 18, scope: !57)
!141 = !DILocation(line: 50, column: 24, scope: !57)
!142 = !DILocation(line: 52, column: 6, scope: !90)
!143 = !DILocation(line: 52, column: 6, scope: !95)
!144 = !DILocation(line: 52, column: 6, scope: !94)
!145 = !DILocation(line: 52, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !94, file: !2, line: 52, column: 6)
!147 = !DILocation(line: 52, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !94, file: !2, line: 52, column: 6)
!149 = !{i64 2152784168, i64 2152784197, i64 2152784243, i64 2152784301, i64 2152784355, i64 2152784409, i64 2152784464, i64 2152784495, i64 2152784803, i64 2152784809, i64 2152784856, i64 2152784879, i64 2152784905}
!150 = !DILocation(line: 52, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !94, file: !2, line: 52, column: 6)
!152 = !DILocation(line: 52, column: 6, scope: !91)
!153 = !DILocation(line: 52, column: 6, scope: !57)
!154 = !DILocation(line: 53, column: 3, scope: !91)
!155 = !DILocation(line: 56, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !57, file: !2, line: 56, column: 6)
!157 = !DILocation(line: 56, column: 6, scope: !57)
!158 = !DILocation(line: 57, column: 3, scope: !156)
!159 = !DILocation(line: 59, column: 18, scope: !57)
!160 = !DILocation(line: 59, column: 10, scope: !57)
!161 = !DILocation(line: 59, column: 8, scope: !57)
!162 = !DILocation(line: 60, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !57, file: !2, line: 60, column: 6)
!164 = !DILocation(line: 60, column: 6, scope: !57)
!165 = !DILocation(line: 61, column: 3, scope: !163)
!166 = !DILocation(line: 64, column: 14, scope: !167)
!167 = distinct !DILexicalBlock(scope: !57, file: !2, line: 64, column: 2)
!168 = !DILocation(line: 64, column: 7, scope: !167)
!169 = !DILocation(line: 64, column: 19, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !2, line: 64, column: 2)
!171 = !DILocation(line: 64, column: 28, scope: !170)
!172 = !DILocation(line: 64, column: 34, scope: !170)
!173 = !DILocation(line: 64, column: 26, scope: !170)
!174 = !DILocation(line: 64, column: 2, scope: !167)
!175 = !DILocation(line: 65, column: 17, scope: !170)
!176 = !DILocation(line: 65, column: 23, scope: !170)
!177 = !DILocation(line: 65, column: 31, scope: !170)
!178 = !DILocation(line: 65, column: 3, scope: !170)
!179 = !DILocation(line: 64, column: 53, scope: !170)
!180 = !DILocation(line: 64, column: 2, scope: !170)
!181 = distinct !{!181, !174, !182, !183, !184}
!182 = !DILocation(line: 65, column: 57, scope: !167)
!183 = !{!"llvm.loop.mustprogress"}
!184 = !{!"llvm.loop.unroll.disable"}
!185 = !DILocation(line: 71, column: 9, scope: !99)
!186 = !DILocation(line: 71, column: 23, scope: !99)
!187 = !DILocation(line: 71, column: 7, scope: !99)
!188 = !DILocation(line: 71, column: 28, scope: !98)
!189 = !DILocation(line: 71, column: 32, scope: !98)
!190 = !DILocation(line: 71, column: 38, scope: !98)
!191 = !DILocation(line: 71, column: 30, scope: !98)
!192 = !DILocation(line: 71, column: 2, scope: !99)
!193 = !DILocation(line: 72, column: 3, scope: !97)
!194 = !DILocation(line: 72, column: 16, scope: !97)
!195 = !DILocation(line: 72, column: 28, scope: !97)
!196 = !DILocation(line: 72, column: 34, scope: !97)
!197 = !DILocation(line: 72, column: 43, scope: !97)
!198 = !DILocation(line: 73, column: 3, scope: !97)
!199 = !DILocation(line: 73, column: 7, scope: !97)
!200 = !DILocation(line: 74, column: 3, scope: !97)
!201 = !DILocation(line: 74, column: 19, scope: !97)
!202 = !DILocation(line: 74, column: 46, scope: !97)
!203 = !DILocation(line: 74, column: 28, scope: !97)
!204 = !DILocation(line: 76, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !97, file: !2, line: 76, column: 7)
!206 = !DILocation(line: 76, column: 7, scope: !97)
!207 = !DILocation(line: 77, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !2, line: 76, column: 16)
!209 = !DILocation(line: 77, column: 4, scope: !208)
!210 = !DILocation(line: 78, column: 4, scope: !208)
!211 = !DILocation(line: 81, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !97, file: !2, line: 81, column: 3)
!213 = !DILocation(line: 81, column: 8, scope: !212)
!214 = !DILocation(line: 81, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 81, column: 3)
!216 = !DILocation(line: 81, column: 19, scope: !215)
!217 = !DILocation(line: 81, column: 17, scope: !215)
!218 = !DILocation(line: 81, column: 3, scope: !212)
!219 = !DILocation(line: 82, column: 18, scope: !215)
!220 = !DILocation(line: 82, column: 24, scope: !215)
!221 = !DILocation(line: 82, column: 33, scope: !215)
!222 = !DILocation(line: 82, column: 31, scope: !215)
!223 = !DILocation(line: 82, column: 36, scope: !215)
!224 = !DILocation(line: 82, column: 43, scope: !215)
!225 = !DILocation(line: 82, column: 50, scope: !215)
!226 = !DILocation(line: 82, column: 4, scope: !215)
!227 = !DILocation(line: 81, column: 31, scope: !215)
!228 = !DILocation(line: 81, column: 3, scope: !215)
!229 = distinct !{!229, !218, !230, !183, !184}
!230 = !DILocation(line: 82, column: 52, scope: !212)
!231 = !DILocation(line: 83, column: 9, scope: !97)
!232 = !DILocation(line: 83, column: 3, scope: !97)
!233 = !DILocation(line: 85, column: 13, scope: !97)
!234 = !DILocation(line: 85, column: 10, scope: !97)
!235 = !DILocation(line: 86, column: 15, scope: !97)
!236 = !DILocation(line: 86, column: 12, scope: !97)
!237 = !DILocation(line: 87, column: 2, scope: !98)
!238 = !DILocation(line: 87, column: 2, scope: !97)
!239 = !DILocation(line: 71, column: 48, scope: !98)
!240 = !DILocation(line: 71, column: 2, scope: !98)
!241 = distinct !{!241, !192, !242, !183, !184}
!242 = !DILocation(line: 87, column: 2, scope: !99)
!243 = !DILocation(line: 90, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !57, file: !2, line: 90, column: 6)
!245 = !DILocation(line: 90, column: 18, scope: !244)
!246 = !DILocation(line: 90, column: 15, scope: !244)
!247 = !DILocation(line: 90, column: 6, scope: !57)
!248 = !DILocation(line: 91, column: 12, scope: !244)
!249 = !DILocation(line: 91, column: 18, scope: !244)
!250 = !DILocation(line: 91, column: 32, scope: !244)
!251 = !DILocation(line: 91, column: 30, scope: !244)
!252 = !DILocation(line: 91, column: 10, scope: !244)
!253 = !DILocation(line: 91, column: 3, scope: !244)
!254 = !DILocation(line: 93, column: 12, scope: !244)
!255 = !DILocation(line: 93, column: 18, scope: !244)
!256 = !DILocation(line: 93, column: 32, scope: !244)
!257 = !DILocation(line: 93, column: 30, scope: !244)
!258 = !DILocation(line: 93, column: 10, scope: !244)
!259 = !DILocation(line: 94, column: 2, scope: !57)
!260 = !DILocation(line: 94, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 94, column: 2)
!262 = distinct !DILexicalBlock(scope: !57, file: !2, line: 94, column: 2)
!263 = !DILocation(line: 94, column: 18, scope: !261)
!264 = !DILocation(line: 94, column: 16, scope: !261)
!265 = !DILocation(line: 94, column: 2, scope: !262)
!266 = !DILocation(line: 95, column: 17, scope: !261)
!267 = !DILocation(line: 95, column: 23, scope: !261)
!268 = !DILocation(line: 95, column: 31, scope: !261)
!269 = !DILocation(line: 95, column: 3, scope: !261)
!270 = !DILocation(line: 94, column: 31, scope: !261)
!271 = !DILocation(line: 94, column: 2, scope: !261)
!272 = distinct !{!272, !265, !273, !183, !184}
!273 = !DILocation(line: 95, column: 57, scope: !262)
!274 = !DILocation(line: 98, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !57, file: !2, line: 98, column: 2)
!276 = !DILocation(line: 98, column: 17, scope: !275)
!277 = !DILocation(line: 98, column: 9, scope: !275)
!278 = !DILocation(line: 98, column: 7, scope: !275)
!279 = !DILocation(line: 98, column: 30, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !2, line: 98, column: 2)
!281 = !DILocation(line: 98, column: 34, scope: !280)
!282 = !DILocation(line: 98, column: 42, scope: !280)
!283 = !DILocation(line: 98, column: 48, scope: !280)
!284 = !DILocation(line: 98, column: 40, scope: !280)
!285 = !DILocation(line: 98, column: 32, scope: !280)
!286 = !DILocation(line: 98, column: 2, scope: !275)
!287 = !DILocation(line: 99, column: 3, scope: !280)
!288 = !DILocation(line: 99, column: 9, scope: !280)
!289 = !DILocation(line: 99, column: 12, scope: !280)
!290 = !DILocation(line: 99, column: 23, scope: !280)
!291 = !DILocation(line: 98, column: 63, scope: !280)
!292 = !DILocation(line: 98, column: 2, scope: !280)
!293 = distinct !{!293, !286, !294, !183, !184}
!294 = !DILocation(line: 99, column: 25, scope: !275)
!295 = !DILocation(line: 101, column: 9, scope: !57)
!296 = !DILocation(line: 101, column: 2, scope: !57)
!297 = !DILocation(line: 102, column: 1, scope: !57)
!298 = distinct !DISubprogram(name: "default_calc_sets", scope: !2, file: !2, line: 12, type: !78, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !299)
!299 = !{!300, !301}
!300 = !DILocalVariable(name: "affd", arg: 1, scope: !298, file: !2, line: 12, type: !66)
!301 = !DILocalVariable(name: "affvecs", arg: 2, scope: !298, file: !2, line: 12, type: !17)
!302 = !DILocation(line: 12, column: 52, scope: !298)
!303 = !DILocation(line: 12, column: 71, scope: !298)
!304 = !DILocation(line: 14, column: 2, scope: !298)
!305 = !DILocation(line: 14, column: 8, scope: !298)
!306 = !DILocation(line: 14, column: 16, scope: !298)
!307 = !DILocation(line: 15, column: 22, scope: !298)
!308 = !DILocation(line: 15, column: 2, scope: !298)
!309 = !DILocation(line: 15, column: 8, scope: !298)
!310 = !DILocation(line: 15, column: 20, scope: !298)
!311 = !DILocation(line: 16, column: 1, scope: !298)
!312 = distinct !DISubprogram(name: "kcalloc", scope: !9, file: !9, line: 666, type: !313, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !319)
!313 = !DISubroutineType(types: !314)
!314 = !{!43, !315, !315, !31}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !317, line: 72, baseType: !318)
!317 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !317, line: 16, baseType: !40)
!319 = !{!320, !321, !322}
!320 = !DILocalVariable(name: "n", arg: 1, scope: !312, file: !9, line: 666, type: !315)
!321 = !DILocalVariable(name: "size", arg: 2, scope: !312, file: !9, line: 666, type: !315)
!322 = !DILocalVariable(name: "flags", arg: 3, scope: !312, file: !9, line: 666, type: !31)
!323 = !DILocation(line: 666, column: 55, scope: !312)
!324 = !DILocation(line: 666, column: 65, scope: !312)
!325 = !DILocation(line: 666, column: 77, scope: !312)
!326 = !DILocation(line: 668, column: 23, scope: !312)
!327 = !DILocation(line: 668, column: 26, scope: !312)
!328 = !DILocation(line: 668, column: 32, scope: !312)
!329 = !DILocation(line: 668, column: 38, scope: !312)
!330 = !DILocation(line: 668, column: 9, scope: !312)
!331 = !DILocation(line: 668, column: 2, scope: !312)
!332 = distinct !DISubprogram(name: "cpumask_copy", scope: !36, file: !36, line: 737, type: !333, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !102, !33}
!335 = !{!336, !337}
!336 = !DILocalVariable(name: "dstp", arg: 1, scope: !332, file: !36, line: 737, type: !102)
!337 = !DILocalVariable(name: "srcp", arg: 2, scope: !332, file: !36, line: 738, type: !33)
!338 = !DILocation(line: 737, column: 49, scope: !332)
!339 = !DILocation(line: 738, column: 27, scope: !332)
!340 = !DILocation(line: 740, column: 14, scope: !332)
!341 = !DILocation(line: 740, column: 34, scope: !332)
!342 = !DILocation(line: 740, column: 2, scope: !332)
!343 = !DILocation(line: 741, column: 1, scope: !332)
!344 = !DISubprogram(name: "group_cpus_evenly", scope: !345, file: !345, line: 12, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DIFile(filename: "./include/linux/group_cpus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "444da504948af67ae6238f359b909b87")
!346 = !DISubroutineType(types: !347)
!347 = !{!102, !17}
!348 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!353 = distinct !DISubprogram(name: "irq_calc_affinity_vectors", scope: !2, file: !2, line: 110, type: !354, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !358)
!354 = !DISubroutineType(types: !355)
!355 = !{!17, !17, !17, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!358 = !{!359, !360, !361, !362, !363, !364, !366}
!359 = !DILocalVariable(name: "minvec", arg: 1, scope: !353, file: !2, line: 110, type: !17)
!360 = !DILocalVariable(name: "maxvec", arg: 2, scope: !353, file: !2, line: 110, type: !17)
!361 = !DILocalVariable(name: "affd", arg: 3, scope: !353, file: !2, line: 111, type: !356)
!362 = !DILocalVariable(name: "resv", scope: !353, file: !2, line: 113, type: !17)
!363 = !DILocalVariable(name: "set_vecs", scope: !353, file: !2, line: 114, type: !17)
!364 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !365, file: !2, line: 127, type: !17)
!365 = distinct !DILexicalBlock(scope: !353, file: !2, line: 127, column: 16)
!366 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !365, file: !2, line: 127, type: !17)
!367 = !DILocation(line: 110, column: 53, scope: !353)
!368 = !DILocation(line: 110, column: 74, scope: !353)
!369 = !DILocation(line: 111, column: 39, scope: !353)
!370 = !DILocation(line: 113, column: 2, scope: !353)
!371 = !DILocation(line: 113, column: 15, scope: !353)
!372 = !DILocation(line: 113, column: 22, scope: !353)
!373 = !DILocation(line: 113, column: 28, scope: !353)
!374 = !DILocation(line: 113, column: 42, scope: !353)
!375 = !DILocation(line: 113, column: 48, scope: !353)
!376 = !DILocation(line: 113, column: 40, scope: !353)
!377 = !DILocation(line: 114, column: 2, scope: !353)
!378 = !DILocation(line: 114, column: 15, scope: !353)
!379 = !DILocation(line: 116, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !353, file: !2, line: 116, column: 6)
!381 = !DILocation(line: 116, column: 13, scope: !380)
!382 = !DILocation(line: 116, column: 11, scope: !380)
!383 = !DILocation(line: 116, column: 6, scope: !353)
!384 = !DILocation(line: 117, column: 3, scope: !380)
!385 = !DILocation(line: 119, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !353, file: !2, line: 119, column: 6)
!387 = !DILocation(line: 119, column: 12, scope: !386)
!388 = !DILocation(line: 119, column: 6, scope: !353)
!389 = !DILocation(line: 120, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !2, line: 119, column: 23)
!391 = !DILocation(line: 120, column: 23, scope: !390)
!392 = !DILocation(line: 120, column: 21, scope: !390)
!393 = !DILocation(line: 120, column: 12, scope: !390)
!394 = !DILocation(line: 121, column: 2, scope: !390)
!395 = !DILocation(line: 122, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !386, file: !2, line: 121, column: 9)
!397 = !DILocation(line: 123, column: 14, scope: !396)
!398 = !DILocation(line: 123, column: 12, scope: !396)
!399 = !DILocation(line: 124, column: 3, scope: !396)
!400 = !DILocation(line: 127, column: 9, scope: !353)
!401 = !DILocation(line: 127, column: 16, scope: !365)
!402 = !DILocation(line: 127, column: 16, scope: !353)
!403 = !DILocation(line: 127, column: 14, scope: !353)
!404 = !DILocation(line: 127, column: 2, scope: !353)
!405 = !DILocation(line: 128, column: 1, scope: !353)
!406 = !DISubprogram(name: "cpus_read_lock", scope: !407, file: !407, line: 135, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!408 = !DISubroutineType(types: !409)
!409 = !{null}
!410 = distinct !DISubprogram(name: "cpumask_weight", scope: !36, file: !36, line: 690, type: !411, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!17, !33}
!413 = !{!414}
!414 = !DILocalVariable(name: "srcp", arg: 1, scope: !410, file: !36, line: 690, type: !33)
!415 = !DILocation(line: 690, column: 65, scope: !410)
!416 = !DILocation(line: 692, column: 23, scope: !410)
!417 = !DILocation(line: 692, column: 9, scope: !410)
!418 = !DILocation(line: 692, column: 2, scope: !410)
!419 = !DISubprogram(name: "cpus_read_unlock", scope: !407, file: !407, line: 136, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = distinct !DISubprogram(name: "kmalloc_array", scope: !9, file: !9, line: 629, type: !313, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !421)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "n", arg: 1, scope: !420, file: !9, line: 629, type: !315)
!423 = !DILocalVariable(name: "size", arg: 2, scope: !420, file: !9, line: 629, type: !315)
!424 = !DILocalVariable(name: "flags", arg: 3, scope: !420, file: !9, line: 629, type: !31)
!425 = !DILocalVariable(name: "bytes", scope: !420, file: !9, line: 631, type: !315)
!426 = !DILocation(line: 629, column: 61, scope: !420)
!427 = !DILocation(line: 629, column: 71, scope: !420)
!428 = !DILocation(line: 629, column: 83, scope: !420)
!429 = !DILocation(line: 631, column: 2, scope: !420)
!430 = !DILocation(line: 631, column: 9, scope: !420)
!431 = !DILocation(line: 633, column: 6, scope: !432)
!432 = distinct !DILexicalBlock(scope: !420, file: !9, line: 633, column: 6)
!433 = !DILocation(line: 633, column: 6, scope: !420)
!434 = !DILocation(line: 634, column: 3, scope: !432)
!435 = !DILocation(line: 635, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !420, file: !9, line: 635, column: 6)
!437 = !DILocation(line: 635, column: 6, scope: !436)
!438 = !DILocation(line: 635, column: 30, scope: !436)
!439 = !DILocation(line: 635, column: 54, scope: !436)
!440 = !DILocation(line: 635, column: 33, scope: !436)
!441 = !DILocation(line: 635, column: 6, scope: !420)
!442 = !DILocation(line: 636, column: 18, scope: !436)
!443 = !DILocation(line: 636, column: 25, scope: !436)
!444 = !DILocation(line: 636, column: 10, scope: !436)
!445 = !DILocation(line: 636, column: 3, scope: !436)
!446 = !DILocation(line: 637, column: 19, scope: !420)
!447 = !DILocation(line: 637, column: 26, scope: !420)
!448 = !DILocation(line: 637, column: 9, scope: !420)
!449 = !DILocation(line: 637, column: 2, scope: !420)
!450 = !DILocation(line: 638, column: 1, scope: !420)
!451 = distinct !DISubprogram(name: "__must_check_overflow", scope: !452, file: !452, line: 51, type: !453, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !457)
!452 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !456)
!456 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!457 = !{!458}
!458 = !DILocalVariable(name: "overflow", arg: 1, scope: !451, file: !452, line: 51, type: !455)
!459 = !DILocation(line: 51, column: 60, scope: !451)
!460 = !DILocation(line: 53, column: 9, scope: !451)
!461 = !{i8 0, i8 2}
!462 = !{}
!463 = !DILocation(line: 53, column: 2, scope: !451)
!464 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !465, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{!43, !315, !31}
!467 = !{!468, !469, !470}
!468 = !DILocalVariable(name: "size", arg: 1, scope: !464, file: !9, line: 591, type: !315)
!469 = !DILocalVariable(name: "flags", arg: 2, scope: !464, file: !9, line: 591, type: !31)
!470 = !DILocalVariable(name: "index", scope: !471, file: !9, line: 594, type: !17)
!471 = distinct !DILexicalBlock(scope: !472, file: !9, line: 593, column: 42)
!472 = distinct !DILexicalBlock(scope: !464, file: !9, line: 593, column: 6)
!473 = !DILocation(line: 591, column: 61, scope: !464)
!474 = !DILocation(line: 591, column: 73, scope: !464)
!475 = !DILocation(line: 593, column: 27, scope: !472)
!476 = !DILocation(line: 593, column: 6, scope: !472)
!477 = !DILocation(line: 593, column: 33, scope: !472)
!478 = !DILocation(line: 593, column: 36, scope: !472)
!479 = !DILocation(line: 593, column: 6, scope: !464)
!480 = !DILocation(line: 594, column: 3, scope: !471)
!481 = !DILocation(line: 594, column: 16, scope: !471)
!482 = !DILocation(line: 596, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !471, file: !9, line: 596, column: 7)
!484 = !DILocation(line: 596, column: 12, scope: !483)
!485 = !DILocation(line: 596, column: 7, scope: !471)
!486 = !DILocation(line: 597, column: 25, scope: !483)
!487 = !DILocation(line: 597, column: 31, scope: !483)
!488 = !DILocation(line: 597, column: 11, scope: !483)
!489 = !DILocation(line: 597, column: 4, scope: !483)
!490 = !DILocation(line: 599, column: 11, scope: !471)
!491 = !DILocation(line: 599, column: 9, scope: !471)
!492 = !DILocation(line: 601, column: 33, scope: !471)
!493 = !DILocation(line: 601, column: 40, scope: !471)
!494 = !DILocation(line: 601, column: 20, scope: !471)
!495 = !DILocation(line: 601, column: 5, scope: !471)
!496 = !DILocation(line: 601, column: 51, scope: !471)
!497 = !DILocation(line: 602, column: 5, scope: !471)
!498 = !DILocation(line: 602, column: 12, scope: !471)
!499 = !DILocation(line: 600, column: 10, scope: !471)
!500 = !DILocation(line: 600, column: 3, scope: !471)
!501 = !DILocation(line: 603, column: 2, scope: !472)
!502 = !DILocation(line: 604, column: 19, scope: !464)
!503 = !DILocation(line: 604, column: 25, scope: !464)
!504 = !DILocation(line: 604, column: 9, scope: !464)
!505 = !DILocation(line: 604, column: 2, scope: !464)
!506 = !DILocation(line: 605, column: 1, scope: !464)
!507 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !510, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!17, !315, !455}
!512 = !{!513, !514}
!513 = !DILocalVariable(name: "size", arg: 1, scope: !509, file: !9, line: 444, type: !315)
!514 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !509, file: !9, line: 445, type: !455)
!515 = !DILocation(line: 444, column: 60, scope: !509)
!516 = !DILocation(line: 445, column: 16, scope: !509)
!517 = !DILocation(line: 447, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !509, file: !9, line: 447, column: 6)
!519 = !DILocation(line: 447, column: 6, scope: !509)
!520 = !DILocation(line: 448, column: 3, scope: !518)
!521 = !DILocation(line: 450, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !509, file: !9, line: 450, column: 6)
!523 = !DILocation(line: 450, column: 11, scope: !522)
!524 = !DILocation(line: 450, column: 6, scope: !509)
!525 = !DILocation(line: 451, column: 3, scope: !522)
!526 = !DILocation(line: 453, column: 32, scope: !527)
!527 = distinct !DILexicalBlock(scope: !509, file: !9, line: 453, column: 6)
!528 = !DILocation(line: 453, column: 37, scope: !527)
!529 = !DILocation(line: 453, column: 42, scope: !527)
!530 = !DILocation(line: 453, column: 45, scope: !527)
!531 = !DILocation(line: 453, column: 50, scope: !527)
!532 = !DILocation(line: 453, column: 6, scope: !509)
!533 = !DILocation(line: 454, column: 3, scope: !527)
!534 = !DILocation(line: 455, column: 32, scope: !535)
!535 = distinct !DILexicalBlock(scope: !509, file: !9, line: 455, column: 6)
!536 = !DILocation(line: 455, column: 37, scope: !535)
!537 = !DILocation(line: 455, column: 43, scope: !535)
!538 = !DILocation(line: 455, column: 46, scope: !535)
!539 = !DILocation(line: 455, column: 51, scope: !535)
!540 = !DILocation(line: 455, column: 6, scope: !509)
!541 = !DILocation(line: 456, column: 3, scope: !535)
!542 = !DILocation(line: 457, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !509, file: !9, line: 457, column: 6)
!544 = !DILocation(line: 457, column: 11, scope: !543)
!545 = !DILocation(line: 457, column: 6, scope: !509)
!546 = !DILocation(line: 457, column: 26, scope: !543)
!547 = !DILocation(line: 458, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !509, file: !9, line: 458, column: 6)
!549 = !DILocation(line: 458, column: 11, scope: !548)
!550 = !DILocation(line: 458, column: 6, scope: !509)
!551 = !DILocation(line: 458, column: 26, scope: !548)
!552 = !DILocation(line: 459, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !509, file: !9, line: 459, column: 6)
!554 = !DILocation(line: 459, column: 11, scope: !553)
!555 = !DILocation(line: 459, column: 6, scope: !509)
!556 = !DILocation(line: 459, column: 26, scope: !553)
!557 = !DILocation(line: 460, column: 6, scope: !558)
!558 = distinct !DILexicalBlock(scope: !509, file: !9, line: 460, column: 6)
!559 = !DILocation(line: 460, column: 11, scope: !558)
!560 = !DILocation(line: 460, column: 6, scope: !509)
!561 = !DILocation(line: 460, column: 26, scope: !558)
!562 = !DILocation(line: 461, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !509, file: !9, line: 461, column: 6)
!564 = !DILocation(line: 461, column: 11, scope: !563)
!565 = !DILocation(line: 461, column: 6, scope: !509)
!566 = !DILocation(line: 461, column: 26, scope: !563)
!567 = !DILocation(line: 462, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !509, file: !9, line: 462, column: 6)
!569 = !DILocation(line: 462, column: 11, scope: !568)
!570 = !DILocation(line: 462, column: 6, scope: !509)
!571 = !DILocation(line: 462, column: 26, scope: !568)
!572 = !DILocation(line: 463, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !509, file: !9, line: 463, column: 6)
!574 = !DILocation(line: 463, column: 11, scope: !573)
!575 = !DILocation(line: 463, column: 6, scope: !509)
!576 = !DILocation(line: 463, column: 26, scope: !573)
!577 = !DILocation(line: 464, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !509, file: !9, line: 464, column: 6)
!579 = !DILocation(line: 464, column: 11, scope: !578)
!580 = !DILocation(line: 464, column: 6, scope: !509)
!581 = !DILocation(line: 464, column: 26, scope: !578)
!582 = !DILocation(line: 465, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !509, file: !9, line: 465, column: 6)
!584 = !DILocation(line: 465, column: 11, scope: !583)
!585 = !DILocation(line: 465, column: 6, scope: !509)
!586 = !DILocation(line: 465, column: 26, scope: !583)
!587 = !DILocation(line: 466, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !509, file: !9, line: 466, column: 6)
!589 = !DILocation(line: 466, column: 11, scope: !588)
!590 = !DILocation(line: 466, column: 6, scope: !509)
!591 = !DILocation(line: 466, column: 26, scope: !588)
!592 = !DILocation(line: 467, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !509, file: !9, line: 467, column: 6)
!594 = !DILocation(line: 467, column: 11, scope: !593)
!595 = !DILocation(line: 467, column: 6, scope: !509)
!596 = !DILocation(line: 467, column: 26, scope: !593)
!597 = !DILocation(line: 468, column: 6, scope: !598)
!598 = distinct !DILexicalBlock(scope: !509, file: !9, line: 468, column: 6)
!599 = !DILocation(line: 468, column: 11, scope: !598)
!600 = !DILocation(line: 468, column: 6, scope: !509)
!601 = !DILocation(line: 468, column: 26, scope: !598)
!602 = !DILocation(line: 469, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !509, file: !9, line: 469, column: 6)
!604 = !DILocation(line: 469, column: 11, scope: !603)
!605 = !DILocation(line: 469, column: 6, scope: !509)
!606 = !DILocation(line: 469, column: 26, scope: !603)
!607 = !DILocation(line: 470, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !509, file: !9, line: 470, column: 6)
!609 = !DILocation(line: 470, column: 11, scope: !608)
!610 = !DILocation(line: 470, column: 6, scope: !509)
!611 = !DILocation(line: 470, column: 26, scope: !608)
!612 = !DILocation(line: 471, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !509, file: !9, line: 471, column: 6)
!614 = !DILocation(line: 471, column: 11, scope: !613)
!615 = !DILocation(line: 471, column: 6, scope: !509)
!616 = !DILocation(line: 471, column: 26, scope: !613)
!617 = !DILocation(line: 472, column: 6, scope: !618)
!618 = distinct !DILexicalBlock(scope: !509, file: !9, line: 472, column: 6)
!619 = !DILocation(line: 472, column: 11, scope: !618)
!620 = !DILocation(line: 472, column: 6, scope: !509)
!621 = !DILocation(line: 472, column: 26, scope: !618)
!622 = !DILocation(line: 473, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !509, file: !9, line: 473, column: 6)
!624 = !DILocation(line: 473, column: 11, scope: !623)
!625 = !DILocation(line: 473, column: 6, scope: !509)
!626 = !DILocation(line: 473, column: 26, scope: !623)
!627 = !DILocation(line: 474, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !509, file: !9, line: 474, column: 6)
!629 = !DILocation(line: 474, column: 11, scope: !628)
!630 = !DILocation(line: 474, column: 6, scope: !509)
!631 = !DILocation(line: 474, column: 27, scope: !628)
!632 = !DILocation(line: 475, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !509, file: !9, line: 475, column: 6)
!634 = !DILocation(line: 475, column: 11, scope: !633)
!635 = !DILocation(line: 475, column: 6, scope: !509)
!636 = !DILocation(line: 475, column: 32, scope: !633)
!637 = !DILocation(line: 477, column: 50, scope: !638)
!638 = distinct !DILexicalBlock(scope: !509, file: !9, line: 477, column: 6)
!639 = !DILocation(line: 477, column: 6, scope: !509)
!640 = !DILocation(line: 478, column: 3, scope: !638)
!641 = !DILocation(line: 478, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !9, line: 478, column: 3)
!643 = distinct !DILexicalBlock(scope: !638, file: !9, line: 478, column: 3)
!644 = !{i32 -2142978790}
!645 = !DILocation(line: 478, column: 3, scope: !643)
!646 = !DILocation(line: 480, column: 3, scope: !638)
!647 = !DILocation(line: 480, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !638, file: !9, line: 480, column: 3)
!649 = !DILocation(line: 480, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !9, line: 480, column: 3)
!651 = !DILocation(line: 480, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !9, line: 480, column: 3)
!653 = !{i64 2151988709, i64 2151988738, i64 2151988784, i64 2151988842, i64 2151988896, i64 2151988950, i64 2151989005, i64 2151989036}
!654 = !DILocation(line: 483, column: 2, scope: !509)
!655 = !DILocation(line: 484, column: 1, scope: !509)
!656 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!657 = !DISubroutineType(types: !658)
!658 = !{!43, !659, !31, !315}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !661, line: 11, flags: DIFlagFwdDecl)
!661 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!662 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !663, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!21, !31, !40}
!665 = !{!666, !667}
!666 = !DILocalVariable(name: "flags", arg: 1, scope: !662, file: !9, line: 401, type: !31)
!667 = !DILocalVariable(name: "caller", arg: 2, scope: !662, file: !9, line: 401, type: !40)
!668 = !DILocation(line: 401, column: 67, scope: !662)
!669 = !DILocation(line: 401, column: 88, scope: !662)
!670 = !DILocation(line: 407, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !662, file: !9, line: 407, column: 6)
!672 = !DILocation(line: 407, column: 6, scope: !662)
!673 = !DILocation(line: 413, column: 3, scope: !671)
!674 = !DILocation(line: 423, column: 38, scope: !675)
!675 = distinct !DILexicalBlock(scope: !662, file: !9, line: 423, column: 6)
!676 = !DILocation(line: 423, column: 44, scope: !675)
!677 = !DILocation(line: 423, column: 6, scope: !662)
!678 = !DILocation(line: 424, column: 3, scope: !675)
!679 = !DILocation(line: 426, column: 3, scope: !680)
!680 = distinct !DILexicalBlock(scope: !662, file: !9, line: 425, column: 6)
!681 = !DILocation(line: 429, column: 1, scope: !662)
!682 = !DISubprogram(name: "__compiletime_assert_173", scope: !9, file: !9, line: 478, type: !408, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!683 = distinct !DISubprogram(name: "bitmap_copy", scope: !684, file: !684, line: 266, type: !685, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !690)
!684 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687, !688, !17}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!690 = !{!691, !692, !693, !694}
!691 = !DILocalVariable(name: "dst", arg: 1, scope: !683, file: !684, line: 266, type: !687)
!692 = !DILocalVariable(name: "src", arg: 2, scope: !683, file: !684, line: 266, type: !688)
!693 = !DILocalVariable(name: "nbits", arg: 3, scope: !683, file: !684, line: 267, type: !17)
!694 = !DILocalVariable(name: "len", scope: !683, file: !684, line: 269, type: !17)
!695 = !DILocation(line: 266, column: 47, scope: !683)
!696 = !DILocation(line: 266, column: 73, scope: !683)
!697 = !DILocation(line: 267, column: 17, scope: !683)
!698 = !DILocation(line: 269, column: 2, scope: !683)
!699 = !DILocation(line: 269, column: 15, scope: !683)
!700 = !DILocation(line: 269, column: 21, scope: !683)
!701 = !DILocation(line: 271, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !683, file: !684, line: 271, column: 6)
!703 = !DILocation(line: 271, column: 6, scope: !683)
!704 = !DILocation(line: 272, column: 11, scope: !702)
!705 = !DILocation(line: 272, column: 10, scope: !702)
!706 = !DILocation(line: 272, column: 4, scope: !702)
!707 = !DILocation(line: 272, column: 8, scope: !702)
!708 = !DILocation(line: 272, column: 3, scope: !702)
!709 = !DILocation(line: 274, column: 10, scope: !702)
!710 = !DILocation(line: 274, column: 15, scope: !702)
!711 = !DILocation(line: 274, column: 20, scope: !702)
!712 = !DILocation(line: 274, column: 3, scope: !702)
!713 = !DILocation(line: 275, column: 1, scope: !683)
!714 = distinct !DISubprogram(name: "bitmap_weight", scope: !684, file: !684, line: 453, type: !715, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!17, !688, !17}
!717 = !{!718, !719}
!718 = !DILocalVariable(name: "src", arg: 1, scope: !714, file: !684, line: 453, type: !688)
!719 = !DILocalVariable(name: "nbits", arg: 2, scope: !714, file: !684, line: 453, type: !17)
!720 = !DILocation(line: 453, column: 49, scope: !714)
!721 = !DILocation(line: 453, column: 67, scope: !714)
!722 = !DILocation(line: 455, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !714, file: !684, line: 455, column: 6)
!724 = !DILocation(line: 455, column: 6, scope: !714)
!725 = !DILocation(line: 456, column: 24, scope: !723)
!726 = !DILocation(line: 456, column: 23, scope: !723)
!727 = !DILocation(line: 456, column: 30, scope: !723)
!728 = !DILocation(line: 456, column: 28, scope: !723)
!729 = !DILocation(line: 456, column: 10, scope: !723)
!730 = !DILocation(line: 456, column: 3, scope: !723)
!731 = !DILocation(line: 457, column: 25, scope: !714)
!732 = !DILocation(line: 457, column: 30, scope: !714)
!733 = !DILocation(line: 457, column: 9, scope: !714)
!734 = !DILocation(line: 457, column: 2, scope: !714)
!735 = !DILocation(line: 458, column: 1, scope: !714)
!736 = distinct !DISubprogram(name: "hweight_long", scope: !737, file: !737, line: 95, type: !738, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !740)
!737 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!738 = !DISubroutineType(types: !739)
!739 = !{!40, !40}
!740 = !{!741}
!741 = !DILocalVariable(name: "w", arg: 1, scope: !736, file: !737, line: 95, type: !40)
!742 = !DILocation(line: 95, column: 65, scope: !736)
!743 = !DILocation(line: 97, column: 41, scope: !736)
!744 = !DILocation(line: 97, column: 2, scope: !736)
!745 = !DISubprogram(name: "__bitmap_weight", scope: !684, file: !684, line: 171, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = distinct !DISubprogram(name: "__arch_hweight64", scope: !747, file: !747, line: 43, type: !748, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !750)
!747 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!748 = !DISubroutineType(types: !749)
!749 = !{!40, !44}
!750 = !{!751, !752}
!751 = !DILocalVariable(name: "w", arg: 1, scope: !746, file: !747, line: 43, type: !44)
!752 = !DILocalVariable(name: "res", scope: !746, file: !747, line: 45, type: !40)
!753 = !DILocation(line: 43, column: 61, scope: !746)
!754 = !DILocation(line: 45, column: 2, scope: !746)
!755 = !DILocation(line: 45, column: 16, scope: !746)
!756 = !DILocation(line: 49, column: 15, scope: !746)
!757 = !DILocation(line: 47, column: 2, scope: !746)
!758 = !{i64 2147874873, i64 2147874901, i64 2147874907, i64 2147874923, i64 2147874939, i64 2147874966, i64 2147875299, i64 2147874599, i64 2147875305, i64 2147875353, i64 2147875417, i64 2147875481, i64 2147875538, i64 2147874680, i64 2147874705, i64 2147875745, i64 2147875875, i64 2147875806, i64 2147875889, i64 2147874797}
!759 = !DILocation(line: 51, column: 9, scope: !746)
!760 = !DILocation(line: 52, column: 1, scope: !746)
!761 = !DILocation(line: 51, column: 2, scope: !746)
