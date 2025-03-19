; ModuleID = 'kernel/rcu/rcu_segcblist.c'
source_filename = "kernel/rcu/rcu_segcblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_cblist = type { ptr, ptr, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i64], i64, [4 x i64], i8 }

@.str = private unnamed_addr constant [27 x i8] c"kernel/rcu/rcu_segcblist.c\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_cblist_init(ptr noundef %rclp) #0 align 16 !dbg !59 {
entry:
  %rclp.addr = alloca ptr, align 8
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = load ptr, ptr %rclp.addr, align 8, !dbg !72
  %head = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 0, !dbg !73
  store ptr null, ptr %head, align 8, !dbg !74
  %1 = load ptr, ptr %rclp.addr, align 8, !dbg !75
  %head1 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 0, !dbg !76
  %2 = load ptr, ptr %rclp.addr, align 8, !dbg !77
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %2, i32 0, i32 1, !dbg !78
  store ptr %head1, ptr %tail, align 8, !dbg !79
  %3 = load ptr, ptr %rclp.addr, align 8, !dbg !80
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 2, !dbg !81
  store i64 0, ptr %len, align 8, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_cblist_enqueue(ptr noundef %rclp, ptr noundef %rhp) #0 align 16 !dbg !84 {
entry:
  %rclp.addr = alloca ptr, align 8
  %rhp.addr = alloca ptr, align 8
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !88, metadata !DIExpression()), !dbg !90
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !89, metadata !DIExpression()), !dbg !91
  %0 = load ptr, ptr %rhp.addr, align 8, !dbg !92
  %1 = load ptr, ptr %rclp.addr, align 8, !dbg !93
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1, !dbg !94
  %2 = load ptr, ptr %tail, align 8, !dbg !94
  store ptr %0, ptr %2, align 8, !dbg !95
  %3 = load ptr, ptr %rhp.addr, align 8, !dbg !96
  %next = getelementptr inbounds %struct.callback_head, ptr %3, i32 0, i32 0, !dbg !97
  %4 = load ptr, ptr %rclp.addr, align 8, !dbg !98
  %tail1 = getelementptr inbounds %struct.rcu_cblist, ptr %4, i32 0, i32 1, !dbg !99
  store ptr %next, ptr %tail1, align 8, !dbg !100
  br label %do.body, !dbg !101

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !102

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !104

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !102

do.body3:                                         ; preds = %do.end
  %5 = load ptr, ptr %rclp.addr, align 8, !dbg !106
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %5, i32 0, i32 2, !dbg !106
  %6 = load i64, ptr %len, align 8, !dbg !106
  %add = add i64 %6, 1, !dbg !106
  %7 = load ptr, ptr %rclp.addr, align 8, !dbg !106
  %len4 = getelementptr inbounds %struct.rcu_cblist, ptr %7, i32 0, i32 2, !dbg !106
  store volatile i64 %add, ptr %len4, align 8, !dbg !106
  br label %do.end5, !dbg !106

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !102

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_cblist_flush_enqueue(ptr noundef %drclp, ptr noundef %srclp, ptr noundef %rhp) #0 align 16 !dbg !109 {
entry:
  %drclp.addr = alloca ptr, align 8
  %srclp.addr = alloca ptr, align 8
  %rhp.addr = alloca ptr, align 8
  store ptr %drclp, ptr %drclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drclp.addr, metadata !113, metadata !DIExpression()), !dbg !116
  store ptr %srclp, ptr %srclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srclp.addr, metadata !114, metadata !DIExpression()), !dbg !117
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !115, metadata !DIExpression()), !dbg !118
  %0 = load ptr, ptr %srclp.addr, align 8, !dbg !119
  %head = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 0, !dbg !120
  %1 = load ptr, ptr %head, align 8, !dbg !120
  %2 = load ptr, ptr %drclp.addr, align 8, !dbg !121
  %head1 = getelementptr inbounds %struct.rcu_cblist, ptr %2, i32 0, i32 0, !dbg !122
  store ptr %1, ptr %head1, align 8, !dbg !123
  %3 = load ptr, ptr %drclp.addr, align 8, !dbg !124
  %head2 = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 0, !dbg !126
  %4 = load ptr, ptr %head2, align 8, !dbg !126
  %tobool = icmp ne ptr %4, null, !dbg !124
  br i1 %tobool, label %if.then, label %if.else, !dbg !127

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %srclp.addr, align 8, !dbg !128
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %5, i32 0, i32 1, !dbg !129
  %6 = load ptr, ptr %tail, align 8, !dbg !129
  %7 = load ptr, ptr %drclp.addr, align 8, !dbg !130
  %tail3 = getelementptr inbounds %struct.rcu_cblist, ptr %7, i32 0, i32 1, !dbg !131
  store ptr %6, ptr %tail3, align 8, !dbg !132
  br label %if.end, !dbg !130

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %drclp.addr, align 8, !dbg !133
  %head4 = getelementptr inbounds %struct.rcu_cblist, ptr %8, i32 0, i32 0, !dbg !134
  %9 = load ptr, ptr %drclp.addr, align 8, !dbg !135
  %tail5 = getelementptr inbounds %struct.rcu_cblist, ptr %9, i32 0, i32 1, !dbg !136
  store ptr %head4, ptr %tail5, align 8, !dbg !137
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %srclp.addr, align 8, !dbg !138
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %10, i32 0, i32 2, !dbg !139
  %11 = load i64, ptr %len, align 8, !dbg !139
  %12 = load ptr, ptr %drclp.addr, align 8, !dbg !140
  %len6 = getelementptr inbounds %struct.rcu_cblist, ptr %12, i32 0, i32 2, !dbg !141
  store i64 %11, ptr %len6, align 8, !dbg !142
  %13 = load ptr, ptr %rhp.addr, align 8, !dbg !143
  %tobool7 = icmp ne ptr %13, null, !dbg !143
  br i1 %tobool7, label %if.else9, label %if.then8, !dbg !145

if.then8:                                         ; preds = %if.end
  %14 = load ptr, ptr %srclp.addr, align 8, !dbg !146
  call void @rcu_cblist_init(ptr noundef %14) #6, !dbg !148
  br label %if.end18, !dbg !149

if.else9:                                         ; preds = %if.end
  %15 = load ptr, ptr %rhp.addr, align 8, !dbg !150
  %next = getelementptr inbounds %struct.callback_head, ptr %15, i32 0, i32 0, !dbg !152
  store ptr null, ptr %next, align 8, !dbg !153
  %16 = load ptr, ptr %rhp.addr, align 8, !dbg !154
  %17 = load ptr, ptr %srclp.addr, align 8, !dbg !155
  %head10 = getelementptr inbounds %struct.rcu_cblist, ptr %17, i32 0, i32 0, !dbg !156
  store ptr %16, ptr %head10, align 8, !dbg !157
  %18 = load ptr, ptr %rhp.addr, align 8, !dbg !158
  %next11 = getelementptr inbounds %struct.callback_head, ptr %18, i32 0, i32 0, !dbg !159
  %19 = load ptr, ptr %srclp.addr, align 8, !dbg !160
  %tail12 = getelementptr inbounds %struct.rcu_cblist, ptr %19, i32 0, i32 1, !dbg !161
  store ptr %next11, ptr %tail12, align 8, !dbg !162
  br label %do.body, !dbg !163

do.body:                                          ; preds = %if.else9
  br label %do.body13, !dbg !164

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !166

do.end:                                           ; preds = %do.body13
  br label %do.body14, !dbg !164

do.body14:                                        ; preds = %do.end
  %20 = load ptr, ptr %srclp.addr, align 8, !dbg !168
  %len15 = getelementptr inbounds %struct.rcu_cblist, ptr %20, i32 0, i32 2, !dbg !168
  store volatile i64 1, ptr %len15, align 8, !dbg !168
  br label %do.end16, !dbg !168

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !164

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.then8
  ret void, !dbg !170
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rcu_cblist_dequeue(ptr noundef %rclp) #0 align 16 !dbg !171 {
entry:
  %retval = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  %rhp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !175, metadata !DIExpression()), !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhp) #7, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %rhp, metadata !176, metadata !DIExpression()), !dbg !179
  %0 = load ptr, ptr %rclp.addr, align 8, !dbg !180
  %head = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 0, !dbg !181
  %1 = load ptr, ptr %head, align 8, !dbg !181
  store ptr %1, ptr %rhp, align 8, !dbg !182
  %2 = load ptr, ptr %rhp, align 8, !dbg !183
  %tobool = icmp ne ptr %2, null, !dbg !183
  br i1 %tobool, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !186

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rclp.addr, align 8, !dbg !187
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 2, !dbg !188
  %4 = load i64, ptr %len, align 8, !dbg !189
  %dec = add i64 %4, -1, !dbg !189
  store i64 %dec, ptr %len, align 8, !dbg !189
  %5 = load ptr, ptr %rhp, align 8, !dbg !190
  %next = getelementptr inbounds %struct.callback_head, ptr %5, i32 0, i32 0, !dbg !191
  %6 = load ptr, ptr %next, align 8, !dbg !191
  %7 = load ptr, ptr %rclp.addr, align 8, !dbg !192
  %head1 = getelementptr inbounds %struct.rcu_cblist, ptr %7, i32 0, i32 0, !dbg !193
  store ptr %6, ptr %head1, align 8, !dbg !194
  %8 = load ptr, ptr %rclp.addr, align 8, !dbg !195
  %head2 = getelementptr inbounds %struct.rcu_cblist, ptr %8, i32 0, i32 0, !dbg !197
  %9 = load ptr, ptr %head2, align 8, !dbg !197
  %tobool3 = icmp ne ptr %9, null, !dbg !195
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !198

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %rclp.addr, align 8, !dbg !199
  %head5 = getelementptr inbounds %struct.rcu_cblist, ptr %10, i32 0, i32 0, !dbg !200
  %11 = load ptr, ptr %rclp.addr, align 8, !dbg !201
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %11, i32 0, i32 1, !dbg !202
  store ptr %head5, ptr %tail, align 8, !dbg !203
  br label %if.end6, !dbg !201

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load ptr, ptr %rhp, align 8, !dbg !204
  store ptr %12, ptr %retval, align 8, !dbg !205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !205

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhp) #7, !dbg !206
  %13 = load ptr, ptr %retval, align 8, !dbg !206
  ret ptr %13, !dbg !206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rcu_segcblist_get_seglen(ptr noundef %rsclp, i32 noundef %seg) #0 align 16 !dbg !207 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !227, metadata !DIExpression()), !dbg !229
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !228, metadata !DIExpression()), !dbg !230
  br label %do.body, !dbg !231

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !233

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !231
  %seglen = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 4, !dbg !231
  %1 = load i32, ptr %seg.addr, align 4, !dbg !231
  %idxprom = sext i32 %1 to i64, !dbg !231
  %arrayidx = getelementptr [4 x i64], ptr %seglen, i64 0, i64 %idxprom, !dbg !231
  %2 = load volatile i64, ptr %arrayidx, align 8, !dbg !231
  store i64 %2, ptr %tmp, align 8, !dbg !233
  %3 = load i64, ptr %tmp, align 8, !dbg !231
  ret i64 %3, !dbg !235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rcu_segcblist_n_segment_cbs(ptr noundef %rsclp) #0 align 16 !dbg !236 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %len, metadata !241, metadata !DIExpression()), !dbg !245
  store i64 0, ptr %len, align 8, !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %i, metadata !242, metadata !DIExpression()), !dbg !247
  store i32 0, ptr %i, align 4, !dbg !248
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !251
  %cmp = icmp slt i32 %0, 4, !dbg !253
  br i1 %cmp, label %for.body, label %for.end, !dbg !254

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !255
  %2 = load i32, ptr %i, align 4, !dbg !256
  %call = call i64 @rcu_segcblist_get_seglen(ptr noundef %1, i32 noundef %2) #6, !dbg !257
  %3 = load i64, ptr %len, align 8, !dbg !258
  %add = add i64 %3, %call, !dbg !258
  store i64 %add, ptr %len, align 8, !dbg !258
  br label %for.inc, !dbg !259

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !260
  %inc = add i32 %4, 1, !dbg !260
  store i32 %inc, ptr %i, align 4, !dbg !260
  br label %for.cond, !dbg !261, !llvm.loop !262

for.end:                                          ; preds = %for.cond
  %5 = load i64, ptr %len, align 8, !dbg !266
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !267
  ret i64 %5, !dbg !268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_add_len(ptr noundef %rsclp, i64 noundef %v) #0 align 16 !dbg !269 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !273, metadata !DIExpression()), !dbg !275
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !274, metadata !DIExpression()), !dbg !276
  br label %do.body, !dbg !277

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !278

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !280

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !278, !srcloc !282
  br label %do.end2, !dbg !278

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !283

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !284

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !286

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !284

do.body6:                                         ; preds = %do.end5
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !288
  %len = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3, !dbg !288
  %1 = load i64, ptr %len, align 8, !dbg !288
  %2 = load i64, ptr %v.addr, align 8, !dbg !288
  %add = add i64 %1, %2, !dbg !288
  %3 = load ptr, ptr %rsclp.addr, align 8, !dbg !288
  %len7 = getelementptr inbounds %struct.rcu_segcblist, ptr %3, i32 0, i32 3, !dbg !288
  store volatile i64 %add, ptr %len7, align 8, !dbg !288
  br label %do.end8, !dbg !288

do.end8:                                          ; preds = %do.body6
  br label %do.end9, !dbg !284

do.end9:                                          ; preds = %do.end8
  br label %do.body10, !dbg !290

do.body10:                                        ; preds = %do.end9
  br label %do.body11, !dbg !291

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !293

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !291, !srcloc !295
  br label %do.end13, !dbg !291

do.end13:                                         ; preds = %do.end12
  ret void, !dbg !296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_inc_len(ptr noundef %rsclp) #0 align 16 !dbg !297 {
entry:
  %rsclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !303
  call void @rcu_segcblist_add_len(ptr noundef %0, i64 noundef 1) #6, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_init(ptr noundef %rsclp) #0 align 16 !dbg !306 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %i, metadata !309, metadata !DIExpression()), !dbg !312
  br label %do.body, !dbg !313

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !314

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !314

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !316

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !317

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !317

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !319
  %head = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 0, !dbg !320
  store ptr null, ptr %head, align 8, !dbg !321
  store i32 0, ptr %i, align 4, !dbg !322
  br label %for.cond, !dbg !324

for.cond:                                         ; preds = %for.inc, %do.end3
  %1 = load i32, ptr %i, align 4, !dbg !325
  %cmp = icmp slt i32 %1, 4, !dbg !327
  br i1 %cmp, label %for.body, label %for.end, !dbg !328

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !329
  %head4 = getelementptr inbounds %struct.rcu_segcblist, ptr %2, i32 0, i32 0, !dbg !331
  %3 = load ptr, ptr %rsclp.addr, align 8, !dbg !332
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %3, i32 0, i32 1, !dbg !333
  %4 = load i32, ptr %i, align 4, !dbg !334
  %idxprom = sext i32 %4 to i64, !dbg !332
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom, !dbg !332
  store ptr %head4, ptr %arrayidx, align 8, !dbg !335
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !336
  %6 = load i32, ptr %i, align 4, !dbg !337
  call void @rcu_segcblist_set_seglen(ptr noundef %5, i32 noundef %6, i64 noundef 0) #6, !dbg !338
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !340
  %inc = add i32 %7, 1, !dbg !340
  store i32 %inc, ptr %i, align 4, !dbg !340
  br label %for.cond, !dbg !341, !llvm.loop !342

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %rsclp.addr, align 8, !dbg !344
  call void @rcu_segcblist_set_len(ptr noundef %8, i64 noundef 0) #6, !dbg !345
  %9 = load ptr, ptr %rsclp.addr, align 8, !dbg !346
  call void @rcu_segcblist_set_flags(ptr noundef %9, i32 noundef 1) #6, !dbg !347
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !348
  ret void, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_set_seglen(ptr noundef %rsclp, i32 noundef %seg, i64 noundef %v) #0 align 16 !dbg !349 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  %v.addr = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !353, metadata !DIExpression()), !dbg !356
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !354, metadata !DIExpression()), !dbg !357
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !355, metadata !DIExpression()), !dbg !358
  br label %do.body, !dbg !359

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !360

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !362

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !360

do.body2:                                         ; preds = %do.end
  %0 = load i64, ptr %v.addr, align 8, !dbg !364
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !364
  %seglen = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 4, !dbg !364
  %2 = load i32, ptr %seg.addr, align 4, !dbg !364
  %idxprom = sext i32 %2 to i64, !dbg !364
  %arrayidx = getelementptr [4 x i64], ptr %seglen, i64 0, i64 %idxprom, !dbg !364
  store volatile i64 %0, ptr %arrayidx, align 8, !dbg !364
  br label %do.end3, !dbg !364

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !360

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_set_len(ptr noundef %rsclp, i64 noundef %v) #0 align 16 !dbg !367 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !369, metadata !DIExpression()), !dbg !371
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !370, metadata !DIExpression()), !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !374

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !376

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !374

do.body2:                                         ; preds = %do.end
  %0 = load i64, ptr %v.addr, align 8, !dbg !378
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !378
  %len = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 3, !dbg !378
  store volatile i64 %0, ptr %len, align 8, !dbg !378
  br label %do.end3, !dbg !378

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !374

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_set_flags(ptr noundef %rsclp, i32 noundef %flags) #3 align 16 !dbg !381 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !386, metadata !DIExpression()), !dbg !388
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !387, metadata !DIExpression()), !dbg !389
  br label %do.body, !dbg !390

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !391

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !393

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !391

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !395
  %flags3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5, !dbg !395
  %1 = load i8, ptr %flags3, align 8, !dbg !395
  %conv = zext i8 %1 to i32, !dbg !395
  %2 = load i32, ptr %flags.addr, align 4, !dbg !395
  %or = or i32 %conv, %2, !dbg !395
  %conv4 = trunc i32 %or to i8, !dbg !395
  %3 = load ptr, ptr %rsclp.addr, align 8, !dbg !395
  %flags5 = getelementptr inbounds %struct.rcu_segcblist, ptr %3, i32 0, i32 5, !dbg !395
  store volatile i8 %conv4, ptr %flags5, align 8, !dbg !395
  br label %do.end6, !dbg !395

do.end6:                                          ; preds = %do.body2
  br label %do.end7, !dbg !391

do.end7:                                          ; preds = %do.end6
  ret void, !dbg !397
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_disable(ptr noundef %rsclp) #0 align 16 !dbg !398 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %__flags41 = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !400, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !401, metadata !DIExpression()), !dbg !412
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !412
  %call = call zeroext i1 @rcu_segcblist_empty(ptr noundef %0) #6, !dbg !412
  %lnot = xor i1 %call, true, !dbg !412
  %lnot1 = xor i1 %lnot, true, !dbg !412
  %lnot2 = xor i1 %lnot1, true, !dbg !412
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !412
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !412
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !413
  %tobool = icmp ne i32 %1, 0, !dbg !413
  %lnot3 = xor i1 %tobool, true, !dbg !413
  %lnot5 = xor i1 %lnot3, true, !dbg !413
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !413
  %conv = sext i32 %lnot.ext6 to i64, !dbg !413
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !413
  %tobool7 = icmp ne i64 %expval, 0, !dbg !413
  br i1 %tobool7, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !413

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !403, metadata !DIExpression()), !dbg !414
  store i32 2307, ptr %__flags, align 4, !dbg !414
  br label %do.body8, !dbg !414

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !415

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !415

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !414

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !417
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 258, i32 %2, i64 12) #7, !dbg !417, !srcloc !419
  br label %do.cond10, !dbg !417

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !417

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !414

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !420

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !420

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !413
  br label %do.cond15, !dbg !414

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !414

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !414

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !412
  %tobool17 = icmp ne i32 %3, 0, !dbg !412
  %lnot18 = xor i1 %tobool17, true, !dbg !412
  %lnot20 = xor i1 %lnot18, true, !dbg !412
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !412
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !412
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !412
  store i64 %expval23, ptr %tmp, align 8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !422
  %4 = load i64, ptr %tmp, align 8, !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on24) #7, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on24, metadata !406, metadata !DIExpression()), !dbg !423
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !423
  %call25 = call i64 @rcu_segcblist_n_cbs(ptr noundef %5) #6, !dbg !423
  %tobool26 = icmp ne i64 %call25, 0, !dbg !423
  %lnot27 = xor i1 %tobool26, true, !dbg !423
  %lnot29 = xor i1 %lnot27, true, !dbg !423
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !423
  store i32 %lnot.ext30, ptr %__ret_warn_on24, align 4, !dbg !423
  %6 = load i32, ptr %__ret_warn_on24, align 4, !dbg !424
  %tobool31 = icmp ne i32 %6, 0, !dbg !424
  %lnot32 = xor i1 %tobool31, true, !dbg !424
  %lnot34 = xor i1 %lnot32, true, !dbg !424
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !424
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !424
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !424
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !424
  br i1 %tobool38, label %if.then39, label %if.end53, !dbg !423

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !424

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags41) #7, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %__flags41, metadata !408, metadata !DIExpression()), !dbg !425
  store i32 2307, ptr %__flags41, align 4, !dbg !425
  br label %do.body42, !dbg !425

do.body42:                                        ; preds = %do.body40
  br label %do.cond43, !dbg !426

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !426

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !425

do.body45:                                        ; preds = %do.end44
  %7 = load i32, ptr %__flags41, align 4, !dbg !428
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 259, i32 %7, i64 12) #7, !dbg !428, !srcloc !430
  br label %do.cond46, !dbg !428

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !428

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !425

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !431

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !431

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags41) #7, !dbg !424
  br label %do.cond51, !dbg !425

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !425

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !425

if.end53:                                         ; preds = %do.end52, %if.end
  %8 = load i32, ptr %__ret_warn_on24, align 4, !dbg !423
  %tobool55 = icmp ne i32 %8, 0, !dbg !423
  %lnot56 = xor i1 %tobool55, true, !dbg !423
  %lnot58 = xor i1 %lnot56, true, !dbg !423
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !423
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !423
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !423
  store i64 %expval61, ptr %tmp54, align 8, !dbg !424
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on24) #7, !dbg !433
  %9 = load i64, ptr %tmp54, align 8, !dbg !423
  %10 = load ptr, ptr %rsclp.addr, align 8, !dbg !434
  call void @rcu_segcblist_clear_flags(ptr noundef %10, i32 noundef 1) #6, !dbg !435
  ret void, !dbg !436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_segcblist_empty(ptr noundef %rsclp) #3 align 16 !dbg !437 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !443, metadata !DIExpression()), !dbg !444
  br label %do.body, !dbg !445

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !447

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !445
  %head = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 0, !dbg !445
  %1 = load volatile ptr, ptr %head, align 8, !dbg !445
  store ptr %1, ptr %tmp, align 8, !dbg !447
  %2 = load ptr, ptr %tmp, align 8, !dbg !445
  %tobool = icmp ne ptr %2, null, !dbg !449
  %lnot = xor i1 %tobool, true, !dbg !449
  ret i1 %lnot, !dbg !450
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rcu_segcblist_n_cbs(ptr noundef %rsclp) #3 align 16 !dbg !451 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !453, metadata !DIExpression()), !dbg !454
  br label %do.body, !dbg !455

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !457

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !455
  %len = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3, !dbg !455
  %1 = load volatile i64, ptr %len, align 8, !dbg !455
  store i64 %1, ptr %tmp, align 8, !dbg !457
  %2 = load i64, ptr %tmp, align 8, !dbg !455
  ret i64 %2, !dbg !459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_clear_flags(ptr noundef %rsclp, i32 noundef %flags) #3 align 16 !dbg !460 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !462, metadata !DIExpression()), !dbg !464
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !463, metadata !DIExpression()), !dbg !465
  br label %do.body, !dbg !466

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !467

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !469

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !467

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !471
  %flags3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5, !dbg !471
  %1 = load i8, ptr %flags3, align 8, !dbg !471
  %conv = zext i8 %1 to i32, !dbg !471
  %2 = load i32, ptr %flags.addr, align 4, !dbg !471
  %not = xor i32 %2, -1, !dbg !471
  %and = and i32 %conv, %not, !dbg !471
  %conv4 = trunc i32 %and to i8, !dbg !471
  %3 = load ptr, ptr %rsclp.addr, align 8, !dbg !471
  %flags5 = getelementptr inbounds %struct.rcu_segcblist, ptr %3, i32 0, i32 5, !dbg !471
  store volatile i8 %conv4, ptr %flags5, align 8, !dbg !471
  br label %do.end6, !dbg !471

do.end6:                                          ; preds = %do.body2
  br label %do.end7, !dbg !467

do.end7:                                          ; preds = %do.end6
  ret void, !dbg !473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_offload(ptr noundef %rsclp, i1 noundef zeroext %offload) #0 align 16 !dbg !474 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %offload.addr = alloca i8, align 1
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !478, metadata !DIExpression()), !dbg !480
  %frombool = zext i1 %offload to i8
  store i8 %frombool, ptr %offload.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offload.addr, metadata !479, metadata !DIExpression()), !dbg !481
  %0 = load i8, ptr %offload.addr, align 1, !dbg !482, !range !484, !noundef !485
  %tobool = trunc i8 %0 to i1, !dbg !482
  br i1 %tobool, label %if.then, label %if.else, !dbg !486

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !487
  call void @rcu_segcblist_set_flags(ptr noundef %1, i32 noundef 36) #6, !dbg !488
  br label %if.end, !dbg !488

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !489
  call void @rcu_segcblist_clear_flags(ptr noundef %2, i32 noundef 32) #6, !dbg !490
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !491
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %rsclp) #0 align 16 !dbg !492 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !496
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !497
  br i1 %call, label %land.rhs, label %land.end, !dbg !498

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !499
  %head = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 0, !dbg !500
  br label %do.body, !dbg !501

do.body:                                          ; preds = %land.rhs
  br label %do.end, !dbg !503

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !501
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %2, i32 0, i32 1, !dbg !501
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 0, !dbg !501
  %3 = load volatile ptr, ptr %arrayidx, align 8, !dbg !501
  store ptr %3, ptr %tmp, align 8, !dbg !503
  %4 = load ptr, ptr %tmp, align 8, !dbg !501
  %cmp = icmp ne ptr %head, %4, !dbg !505
  br label %land.end

land.end:                                         ; preds = %do.end, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %do.end ], !dbg !506
  ret i1 %5, !dbg !507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %rsclp) #3 align 16 !dbg !508 {
entry:
  %rsclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !512
  %call = call zeroext i1 @rcu_segcblist_test_flags(ptr noundef %0, i32 noundef 1) #6, !dbg !513
  ret i1 %call, !dbg !514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %rsclp) #0 align 16 !dbg !515 {
entry:
  %rsclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !519
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !520
  br i1 %call, label %land.rhs, label %land.end, !dbg !521

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !522
  %call1 = call zeroext i1 @rcu_segcblist_restempty(ptr noundef %1, i32 noundef 0) #6, !dbg !523
  %lnot = xor i1 %call1, true, !dbg !524
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !525
  ret i1 %2, !dbg !526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_segcblist_restempty(ptr noundef %rsclp, i32 noundef %seg) #3 align 16 !dbg !527 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !531, metadata !DIExpression()), !dbg !533
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !532, metadata !DIExpression()), !dbg !534
  br label %do.body, !dbg !535

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !537

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !539

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !541

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !539
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 1, !dbg !539
  %1 = load i32, ptr %seg.addr, align 4, !dbg !539
  %idxprom = sext i32 %1 to i64, !dbg !539
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom, !dbg !539
  %2 = load volatile ptr, ptr %arrayidx, align 8, !dbg !539
  store ptr %2, ptr %tmp3, align 8, !dbg !541
  %3 = load ptr, ptr %tmp3, align 8, !dbg !539
  %4 = load volatile ptr, ptr %3, align 8, !dbg !535
  store ptr %4, ptr %tmp, align 8, !dbg !537
  %5 = load ptr, ptr %tmp, align 8, !dbg !535
  %tobool = icmp ne ptr %5, null, !dbg !543
  %lnot = xor i1 %tobool, true, !dbg !543
  ret i1 %lnot, !dbg !544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rcu_segcblist_first_cb(ptr noundef %rsclp) #0 align 16 !dbg !545 {
entry:
  %retval = alloca ptr, align 8
  %rsclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !551
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !553
  br i1 %call, label %if.then, label %if.end, !dbg !554

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !555
  %head = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 0, !dbg !556
  %2 = load ptr, ptr %head, align 8, !dbg !556
  store ptr %2, ptr %retval, align 8, !dbg !557
  br label %return, !dbg !557

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !558
  br label %return, !dbg !558

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !559
  ret ptr %3, !dbg !559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rcu_segcblist_first_pend_cb(ptr noundef %rsclp) #0 align 16 !dbg !560 {
entry:
  %retval = alloca ptr, align 8
  %rsclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !564
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !566
  br i1 %call, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !568
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 1, !dbg !569
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 0, !dbg !568
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !568
  %3 = load ptr, ptr %2, align 8, !dbg !570
  store ptr %3, ptr %retval, align 8, !dbg !571
  br label %return, !dbg !571

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !572
  br label %return, !dbg !572

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !573
  ret ptr %4, !dbg !573
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcu_segcblist_nextgp(ptr noundef %rsclp, ptr noundef %lp) #0 align 16 !dbg !574 {
entry:
  %retval = alloca i1, align 1
  %rsclp.addr = alloca ptr, align 8
  %lp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !579, metadata !DIExpression()), !dbg !581
  store ptr %lp, ptr %lp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lp.addr, metadata !580, metadata !DIExpression()), !dbg !582
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !583
  %call = call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %0) #6, !dbg !585
  br i1 %call, label %if.end, label %if.then, !dbg !586

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !587
  br label %return, !dbg !587

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !588
  %gp_seq = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 2, !dbg !589
  %arrayidx = getelementptr [4 x i64], ptr %gp_seq, i64 0, i64 1, !dbg !588
  %2 = load i64, ptr %arrayidx, align 8, !dbg !588
  %3 = load ptr, ptr %lp.addr, align 8, !dbg !590
  store i64 %2, ptr %3, align 8, !dbg !591
  store i1 true, ptr %retval, align 1, !dbg !592
  br label %return, !dbg !592

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !593
  ret i1 %4, !dbg !593
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_enqueue(ptr noundef %rsclp, ptr noundef %rhp) #0 align 16 !dbg !594 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rhp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !598, metadata !DIExpression()), !dbg !600
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !599, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !602
  call void @rcu_segcblist_inc_len(ptr noundef %0) #6, !dbg !603
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !604
  call void @rcu_segcblist_inc_seglen(ptr noundef %1, i32 noundef 3) #6, !dbg !605
  %2 = load ptr, ptr %rhp.addr, align 8, !dbg !606
  %next = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 0, !dbg !607
  store ptr null, ptr %next, align 8, !dbg !608
  br label %do.body, !dbg !609

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !610

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !612

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !610

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %rhp.addr, align 8, !dbg !614
  %4 = load ptr, ptr %rsclp.addr, align 8, !dbg !614
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %4, i32 0, i32 1, !dbg !614
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 3, !dbg !614
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !614
  store volatile ptr %3, ptr %5, align 8, !dbg !614
  br label %do.end3, !dbg !614

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !610

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !616

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !617

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !619

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !617

do.body8:                                         ; preds = %do.end7
  %6 = load ptr, ptr %rhp.addr, align 8, !dbg !621
  %next9 = getelementptr inbounds %struct.callback_head, ptr %6, i32 0, i32 0, !dbg !621
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !621
  %tails10 = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !621
  %arrayidx11 = getelementptr [4 x ptr], ptr %tails10, i64 0, i64 3, !dbg !621
  store volatile ptr %next9, ptr %arrayidx11, align 8, !dbg !621
  br label %do.end12, !dbg !621

do.end12:                                         ; preds = %do.body8
  br label %do.end13, !dbg !617

do.end13:                                         ; preds = %do.end12
  ret void, !dbg !623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_inc_seglen(ptr noundef %rsclp, i32 noundef %seg) #0 align 16 !dbg !624 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !626, metadata !DIExpression()), !dbg !628
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !627, metadata !DIExpression()), !dbg !629
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !630
  %1 = load i32, ptr %seg.addr, align 4, !dbg !631
  call void @rcu_segcblist_add_seglen(ptr noundef %0, i32 noundef %1, i64 noundef 1) #6, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcu_segcblist_entrain(ptr noundef %rsclp, ptr noundef %rhp) #0 align 16 !dbg !634 {
entry:
  %retval = alloca i1, align 1
  %rsclp.addr = alloca ptr, align 8
  %rhp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !638, metadata !DIExpression()), !dbg !641
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !639, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %i, metadata !640, metadata !DIExpression()), !dbg !644
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !645
  %call = call i64 @rcu_segcblist_n_cbs(ptr noundef %0) #6, !dbg !647
  %cmp = icmp eq i64 %call, 0, !dbg !648
  br i1 %cmp, label %if.then, label %if.end, !dbg !649

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !651
  call void @rcu_segcblist_inc_len(ptr noundef %1) #6, !dbg !652
  br label %do.body, !dbg !653

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !654

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !656

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !656

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !654, !srcloc !658
  br label %do.cond2, !dbg !654

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !654

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %rhp.addr, align 8, !dbg !659
  %next = getelementptr inbounds %struct.callback_head, ptr %2, i32 0, i32 0, !dbg !660
  store ptr null, ptr %next, align 8, !dbg !661
  store i32 3, ptr %i, align 4, !dbg !662
  br label %for.cond, !dbg !664

for.cond:                                         ; preds = %for.inc, %do.end3
  %3 = load i32, ptr %i, align 4, !dbg !665
  %cmp4 = icmp sgt i32 %3, 0, !dbg !667
  br i1 %cmp4, label %for.body, label %for.end, !dbg !668

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %rsclp.addr, align 8, !dbg !669
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %4, i32 0, i32 1, !dbg !671
  %5 = load i32, ptr %i, align 4, !dbg !672
  %idxprom = sext i32 %5 to i64, !dbg !669
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom, !dbg !669
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !669
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !673
  %tails5 = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !674
  %8 = load i32, ptr %i, align 4, !dbg !675
  %sub = sub i32 %8, 1, !dbg !676
  %idxprom6 = sext i32 %sub to i64, !dbg !673
  %arrayidx7 = getelementptr [4 x ptr], ptr %tails5, i64 0, i64 %idxprom6, !dbg !673
  %9 = load ptr, ptr %arrayidx7, align 8, !dbg !673
  %cmp8 = icmp ne ptr %6, %9, !dbg !677
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !678

if.then9:                                         ; preds = %for.body
  br label %for.end, !dbg !679

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !680

for.inc:                                          ; preds = %if.end10
  %10 = load i32, ptr %i, align 4, !dbg !681
  %dec = add i32 %10, -1, !dbg !681
  store i32 %dec, ptr %i, align 4, !dbg !681
  br label %for.cond, !dbg !682, !llvm.loop !683

for.end:                                          ; preds = %if.then9, %for.cond
  %11 = load ptr, ptr %rsclp.addr, align 8, !dbg !685
  %12 = load i32, ptr %i, align 4, !dbg !686
  call void @rcu_segcblist_inc_seglen(ptr noundef %11, i32 noundef %12) #6, !dbg !687
  br label %do.body11, !dbg !688

do.body11:                                        ; preds = %for.end
  br label %do.body12, !dbg !689

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !691

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !691

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !689

do.body15:                                        ; preds = %do.end14
  %13 = load ptr, ptr %rhp.addr, align 8, !dbg !693
  %14 = load ptr, ptr %rsclp.addr, align 8, !dbg !693
  %tails16 = getelementptr inbounds %struct.rcu_segcblist, ptr %14, i32 0, i32 1, !dbg !693
  %15 = load i32, ptr %i, align 4, !dbg !693
  %idxprom17 = sext i32 %15 to i64, !dbg !693
  %arrayidx18 = getelementptr [4 x ptr], ptr %tails16, i64 0, i64 %idxprom17, !dbg !693
  %16 = load ptr, ptr %arrayidx18, align 8, !dbg !693
  store volatile ptr %13, ptr %16, align 8, !dbg !693
  br label %do.cond19, !dbg !693

do.cond19:                                        ; preds = %do.body15
  br label %do.end20, !dbg !693

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !689

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !689

do.end22:                                         ; preds = %do.cond21
  br label %for.cond23, !dbg !695

for.cond23:                                       ; preds = %for.inc39, %do.end22
  %17 = load i32, ptr %i, align 4, !dbg !696
  %cmp24 = icmp sle i32 %17, 3, !dbg !699
  br i1 %cmp24, label %for.body25, label %for.end40, !dbg !700

for.body25:                                       ; preds = %for.cond23
  br label %do.body26, !dbg !701

do.body26:                                        ; preds = %for.body25
  br label %do.body27, !dbg !702

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !704

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !704

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !702

do.body30:                                        ; preds = %do.end29
  %18 = load ptr, ptr %rhp.addr, align 8, !dbg !706
  %next31 = getelementptr inbounds %struct.callback_head, ptr %18, i32 0, i32 0, !dbg !706
  %19 = load ptr, ptr %rsclp.addr, align 8, !dbg !706
  %tails32 = getelementptr inbounds %struct.rcu_segcblist, ptr %19, i32 0, i32 1, !dbg !706
  %20 = load i32, ptr %i, align 4, !dbg !706
  %idxprom33 = sext i32 %20 to i64, !dbg !706
  %arrayidx34 = getelementptr [4 x ptr], ptr %tails32, i64 0, i64 %idxprom33, !dbg !706
  store volatile ptr %next31, ptr %arrayidx34, align 8, !dbg !706
  br label %do.cond35, !dbg !706

do.cond35:                                        ; preds = %do.body30
  br label %do.end36, !dbg !706

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !702

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !702

do.end38:                                         ; preds = %do.cond37
  br label %for.inc39, !dbg !702

for.inc39:                                        ; preds = %do.end38
  %21 = load i32, ptr %i, align 4, !dbg !708
  %inc = add i32 %21, 1, !dbg !708
  store i32 %inc, ptr %i, align 4, !dbg !708
  br label %for.cond23, !dbg !709, !llvm.loop !710

for.end40:                                        ; preds = %for.cond23
  store i1 true, ptr %retval, align 1, !dbg !712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !712

cleanup:                                          ; preds = %for.end40, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !713
  %22 = load i1, ptr %retval, align 1, !dbg !713
  ret i1 %22, !dbg !713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_extract_done_cbs(ptr noundef %rsclp, ptr noundef %rclp) #0 align 16 !dbg !714 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !718, metadata !DIExpression()), !dbg !721
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !719, metadata !DIExpression()), !dbg !722
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %i, metadata !720, metadata !DIExpression()), !dbg !724
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !725
  %call = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %0) #6, !dbg !727
  br i1 %call, label %if.end, label %if.then, !dbg !728

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !729

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rsclp.addr, align 8, !dbg !730
  %call1 = call i64 @rcu_segcblist_get_seglen(ptr noundef %1, i32 noundef 0) #6, !dbg !731
  %2 = load ptr, ptr %rclp.addr, align 8, !dbg !732
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %2, i32 0, i32 2, !dbg !733
  store i64 %call1, ptr %len, align 8, !dbg !734
  %3 = load ptr, ptr %rsclp.addr, align 8, !dbg !735
  %head = getelementptr inbounds %struct.rcu_segcblist, ptr %3, i32 0, i32 0, !dbg !736
  %4 = load ptr, ptr %head, align 8, !dbg !736
  %5 = load ptr, ptr %rclp.addr, align 8, !dbg !737
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %5, i32 0, i32 1, !dbg !738
  %6 = load ptr, ptr %tail, align 8, !dbg !738
  store ptr %4, ptr %6, align 8, !dbg !739
  br label %do.body, !dbg !740

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !741

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !743

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !743

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !741

do.body3:                                         ; preds = %do.end
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !745
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !745
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 0, !dbg !745
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !745
  %9 = load ptr, ptr %8, align 8, !dbg !745
  %10 = load ptr, ptr %rsclp.addr, align 8, !dbg !745
  %head4 = getelementptr inbounds %struct.rcu_segcblist, ptr %10, i32 0, i32 0, !dbg !745
  store volatile ptr %9, ptr %head4, align 8, !dbg !745
  br label %do.cond5, !dbg !745

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !745

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !741

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !741

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !747

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !748

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !750

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !750

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !748

do.body13:                                        ; preds = %do.end12
  %11 = load ptr, ptr %rsclp.addr, align 8, !dbg !752
  %tails14 = getelementptr inbounds %struct.rcu_segcblist, ptr %11, i32 0, i32 1, !dbg !752
  %arrayidx15 = getelementptr [4 x ptr], ptr %tails14, i64 0, i64 0, !dbg !752
  %12 = load ptr, ptr %arrayidx15, align 8, !dbg !752
  store volatile ptr null, ptr %12, align 8, !dbg !752
  br label %do.cond16, !dbg !752

do.cond16:                                        ; preds = %do.body13
  br label %do.end17, !dbg !752

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !748

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !748

do.end19:                                         ; preds = %do.cond18
  %13 = load ptr, ptr %rsclp.addr, align 8, !dbg !754
  %tails20 = getelementptr inbounds %struct.rcu_segcblist, ptr %13, i32 0, i32 1, !dbg !755
  %arrayidx21 = getelementptr [4 x ptr], ptr %tails20, i64 0, i64 0, !dbg !754
  %14 = load ptr, ptr %arrayidx21, align 8, !dbg !754
  %15 = load ptr, ptr %rclp.addr, align 8, !dbg !756
  %tail22 = getelementptr inbounds %struct.rcu_cblist, ptr %15, i32 0, i32 1, !dbg !757
  store ptr %14, ptr %tail22, align 8, !dbg !758
  store i32 3, ptr %i, align 4, !dbg !759
  br label %for.cond, !dbg !761

for.cond:                                         ; preds = %for.inc, %do.end19
  %16 = load i32, ptr %i, align 4, !dbg !762
  %cmp = icmp sge i32 %16, 0, !dbg !764
  br i1 %cmp, label %for.body, label %for.end, !dbg !765

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %rsclp.addr, align 8, !dbg !766
  %tails23 = getelementptr inbounds %struct.rcu_segcblist, ptr %17, i32 0, i32 1, !dbg !768
  %18 = load i32, ptr %i, align 4, !dbg !769
  %idxprom = sext i32 %18 to i64, !dbg !766
  %arrayidx24 = getelementptr [4 x ptr], ptr %tails23, i64 0, i64 %idxprom, !dbg !766
  %19 = load ptr, ptr %arrayidx24, align 8, !dbg !766
  %20 = load ptr, ptr %rsclp.addr, align 8, !dbg !770
  %tails25 = getelementptr inbounds %struct.rcu_segcblist, ptr %20, i32 0, i32 1, !dbg !771
  %arrayidx26 = getelementptr [4 x ptr], ptr %tails25, i64 0, i64 0, !dbg !770
  %21 = load ptr, ptr %arrayidx26, align 8, !dbg !770
  %cmp27 = icmp eq ptr %19, %21, !dbg !772
  br i1 %cmp27, label %if.then28, label %if.end42, !dbg !773

if.then28:                                        ; preds = %for.body
  br label %do.body29, !dbg !774

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !775

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !777

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !777

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !775

do.body33:                                        ; preds = %do.end32
  %22 = load ptr, ptr %rsclp.addr, align 8, !dbg !779
  %head34 = getelementptr inbounds %struct.rcu_segcblist, ptr %22, i32 0, i32 0, !dbg !779
  %23 = load ptr, ptr %rsclp.addr, align 8, !dbg !779
  %tails35 = getelementptr inbounds %struct.rcu_segcblist, ptr %23, i32 0, i32 1, !dbg !779
  %24 = load i32, ptr %i, align 4, !dbg !779
  %idxprom36 = sext i32 %24 to i64, !dbg !779
  %arrayidx37 = getelementptr [4 x ptr], ptr %tails35, i64 0, i64 %idxprom36, !dbg !779
  store volatile ptr %head34, ptr %arrayidx37, align 8, !dbg !779
  br label %do.cond38, !dbg !779

do.cond38:                                        ; preds = %do.body33
  br label %do.end39, !dbg !779

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !775

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !775

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !775

if.end42:                                         ; preds = %do.end41, %for.body
  br label %for.inc, !dbg !781

for.inc:                                          ; preds = %if.end42
  %25 = load i32, ptr %i, align 4, !dbg !782
  %dec = add i32 %25, -1, !dbg !782
  store i32 %dec, ptr %i, align 4, !dbg !782
  br label %for.cond, !dbg !783, !llvm.loop !784

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %rsclp.addr, align 8, !dbg !786
  call void @rcu_segcblist_set_seglen(ptr noundef %26, i32 noundef 0, i64 noundef 0) #6, !dbg !787
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !788
  br label %cleanup, !dbg !788

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !788
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !788

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_extract_pend_cbs(ptr noundef %rsclp, ptr noundef %rclp) #0 align 16 !dbg !789 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !791, metadata !DIExpression()), !dbg !794
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !792, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %i, metadata !793, metadata !DIExpression()), !dbg !797
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !798
  %call = call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %0) #6, !dbg !800
  br i1 %call, label %if.end, label %if.then, !dbg !801

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !802

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rclp.addr, align 8, !dbg !803
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2, !dbg !804
  store i64 0, ptr %len, align 8, !dbg !805
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !806
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %2, i32 0, i32 1, !dbg !807
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 0, !dbg !806
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !806
  %4 = load ptr, ptr %3, align 8, !dbg !808
  %5 = load ptr, ptr %rclp.addr, align 8, !dbg !809
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %5, i32 0, i32 1, !dbg !810
  %6 = load ptr, ptr %tail, align 8, !dbg !810
  store ptr %4, ptr %6, align 8, !dbg !811
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !812
  %tails1 = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !813
  %arrayidx2 = getelementptr [4 x ptr], ptr %tails1, i64 0, i64 3, !dbg !812
  %8 = load ptr, ptr %arrayidx2, align 8, !dbg !812
  %9 = load ptr, ptr %rclp.addr, align 8, !dbg !814
  %tail3 = getelementptr inbounds %struct.rcu_cblist, ptr %9, i32 0, i32 1, !dbg !815
  store ptr %8, ptr %tail3, align 8, !dbg !816
  br label %do.body, !dbg !817

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !818

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !820

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !820

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !818

do.body5:                                         ; preds = %do.end
  %10 = load ptr, ptr %rsclp.addr, align 8, !dbg !822
  %tails6 = getelementptr inbounds %struct.rcu_segcblist, ptr %10, i32 0, i32 1, !dbg !822
  %arrayidx7 = getelementptr [4 x ptr], ptr %tails6, i64 0, i64 0, !dbg !822
  %11 = load ptr, ptr %arrayidx7, align 8, !dbg !822
  store volatile ptr null, ptr %11, align 8, !dbg !822
  br label %do.cond8, !dbg !822

do.cond8:                                         ; preds = %do.body5
  br label %do.end9, !dbg !822

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !818

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !818

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %i, align 4, !dbg !824
  br label %for.cond, !dbg !826

for.cond:                                         ; preds = %for.inc, %do.end11
  %12 = load i32, ptr %i, align 4, !dbg !827
  %cmp = icmp slt i32 %12, 4, !dbg !829
  br i1 %cmp, label %for.body, label %for.end, !dbg !830

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %rsclp.addr, align 8, !dbg !831
  %14 = load i32, ptr %i, align 4, !dbg !833
  %call12 = call i64 @rcu_segcblist_get_seglen(ptr noundef %13, i32 noundef %14) #6, !dbg !834
  %15 = load ptr, ptr %rclp.addr, align 8, !dbg !835
  %len13 = getelementptr inbounds %struct.rcu_cblist, ptr %15, i32 0, i32 2, !dbg !836
  %16 = load i64, ptr %len13, align 8, !dbg !837
  %add = add i64 %16, %call12, !dbg !837
  store i64 %add, ptr %len13, align 8, !dbg !837
  br label %do.body14, !dbg !838

do.body14:                                        ; preds = %for.body
  br label %do.body15, !dbg !839

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !841

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !841

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !839

do.body18:                                        ; preds = %do.end17
  %17 = load ptr, ptr %rsclp.addr, align 8, !dbg !843
  %tails19 = getelementptr inbounds %struct.rcu_segcblist, ptr %17, i32 0, i32 1, !dbg !843
  %arrayidx20 = getelementptr [4 x ptr], ptr %tails19, i64 0, i64 0, !dbg !843
  %18 = load ptr, ptr %arrayidx20, align 8, !dbg !843
  %19 = load ptr, ptr %rsclp.addr, align 8, !dbg !843
  %tails21 = getelementptr inbounds %struct.rcu_segcblist, ptr %19, i32 0, i32 1, !dbg !843
  %20 = load i32, ptr %i, align 4, !dbg !843
  %idxprom = sext i32 %20 to i64, !dbg !843
  %arrayidx22 = getelementptr [4 x ptr], ptr %tails21, i64 0, i64 %idxprom, !dbg !843
  store volatile ptr %18, ptr %arrayidx22, align 8, !dbg !843
  br label %do.cond23, !dbg !843

do.cond23:                                        ; preds = %do.body18
  br label %do.end24, !dbg !843

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !839

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !839

do.end26:                                         ; preds = %do.cond25
  %21 = load ptr, ptr %rsclp.addr, align 8, !dbg !845
  %22 = load i32, ptr %i, align 4, !dbg !846
  call void @rcu_segcblist_set_seglen(ptr noundef %21, i32 noundef %22, i64 noundef 0) #6, !dbg !847
  br label %for.inc, !dbg !848

for.inc:                                          ; preds = %do.end26
  %23 = load i32, ptr %i, align 4, !dbg !849
  %inc = add i32 %23, 1, !dbg !849
  store i32 %inc, ptr %i, align 4, !dbg !849
  br label %for.cond, !dbg !850, !llvm.loop !851

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !853
  br label %cleanup, !dbg !853

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !853
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !853

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_insert_count(ptr noundef %rsclp, ptr noundef %rclp) #0 align 16 !dbg !854 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !856, metadata !DIExpression()), !dbg !858
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !857, metadata !DIExpression()), !dbg !859
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !860
  %1 = load ptr, ptr %rclp.addr, align 8, !dbg !861
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2, !dbg !862
  %2 = load i64, ptr %len, align 8, !dbg !862
  call void @rcu_segcblist_add_len(ptr noundef %0, i64 noundef %2) #6, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_insert_done_cbs(ptr noundef %rsclp, ptr noundef %rclp) #0 align 16 !dbg !865 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !867, metadata !DIExpression()), !dbg !870
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %i, metadata !869, metadata !DIExpression()), !dbg !873
  %0 = load ptr, ptr %rclp.addr, align 8, !dbg !874
  %head = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 0, !dbg !876
  %1 = load ptr, ptr %head, align 8, !dbg !876
  %tobool = icmp ne ptr %1, null, !dbg !874
  br i1 %tobool, label %if.end, label %if.then, !dbg !877

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !879
  %3 = load ptr, ptr %rclp.addr, align 8, !dbg !880
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 2, !dbg !881
  %4 = load i64, ptr %len, align 8, !dbg !881
  call void @rcu_segcblist_add_seglen(ptr noundef %2, i32 noundef 0, i64 noundef %4) #6, !dbg !882
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !883
  %head1 = getelementptr inbounds %struct.rcu_segcblist, ptr %5, i32 0, i32 0, !dbg !884
  %6 = load ptr, ptr %head1, align 8, !dbg !884
  %7 = load ptr, ptr %rclp.addr, align 8, !dbg !885
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %7, i32 0, i32 1, !dbg !886
  %8 = load ptr, ptr %tail, align 8, !dbg !886
  store ptr %6, ptr %8, align 8, !dbg !887
  br label %do.body, !dbg !888

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !889

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !891

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !891

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !889

do.body3:                                         ; preds = %do.end
  %9 = load ptr, ptr %rclp.addr, align 8, !dbg !893
  %head4 = getelementptr inbounds %struct.rcu_cblist, ptr %9, i32 0, i32 0, !dbg !893
  %10 = load ptr, ptr %head4, align 8, !dbg !893
  %11 = load ptr, ptr %rsclp.addr, align 8, !dbg !893
  %head5 = getelementptr inbounds %struct.rcu_segcblist, ptr %11, i32 0, i32 0, !dbg !893
  store volatile ptr %10, ptr %head5, align 8, !dbg !893
  br label %do.cond6, !dbg !893

do.cond6:                                         ; preds = %do.body3
  br label %do.end7, !dbg !893

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !889

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !889

do.end9:                                          ; preds = %do.cond8
  store i32 0, ptr %i, align 4, !dbg !895
  br label %for.cond, !dbg !897

for.cond:                                         ; preds = %for.inc, %do.end9
  %12 = load i32, ptr %i, align 4, !dbg !898
  %cmp = icmp slt i32 %12, 4, !dbg !900
  br i1 %cmp, label %for.body, label %for.end, !dbg !901

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %rsclp.addr, align 8, !dbg !902
  %head10 = getelementptr inbounds %struct.rcu_segcblist, ptr %13, i32 0, i32 0, !dbg !904
  %14 = load ptr, ptr %rsclp.addr, align 8, !dbg !905
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %14, i32 0, i32 1, !dbg !906
  %15 = load i32, ptr %i, align 4, !dbg !907
  %idxprom = sext i32 %15 to i64, !dbg !905
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom, !dbg !905
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !905
  %cmp11 = icmp eq ptr %head10, %16, !dbg !908
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !909

if.then12:                                        ; preds = %for.body
  br label %do.body13, !dbg !910

do.body13:                                        ; preds = %if.then12
  br label %do.body14, !dbg !911

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !913

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !913

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !911

do.body17:                                        ; preds = %do.end16
  %17 = load ptr, ptr %rclp.addr, align 8, !dbg !915
  %tail18 = getelementptr inbounds %struct.rcu_cblist, ptr %17, i32 0, i32 1, !dbg !915
  %18 = load ptr, ptr %tail18, align 8, !dbg !915
  %19 = load ptr, ptr %rsclp.addr, align 8, !dbg !915
  %tails19 = getelementptr inbounds %struct.rcu_segcblist, ptr %19, i32 0, i32 1, !dbg !915
  %20 = load i32, ptr %i, align 4, !dbg !915
  %idxprom20 = sext i32 %20 to i64, !dbg !915
  %arrayidx21 = getelementptr [4 x ptr], ptr %tails19, i64 0, i64 %idxprom20, !dbg !915
  store volatile ptr %18, ptr %arrayidx21, align 8, !dbg !915
  br label %do.cond22, !dbg !915

do.cond22:                                        ; preds = %do.body17
  br label %do.end23, !dbg !915

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !911

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !911

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !911

if.else:                                          ; preds = %for.body
  br label %for.end, !dbg !917

if.end26:                                         ; preds = %do.end25
  br label %for.inc, !dbg !918

for.inc:                                          ; preds = %if.end26
  %21 = load i32, ptr %i, align 4, !dbg !919
  %inc = add i32 %21, 1, !dbg !919
  store i32 %inc, ptr %i, align 4, !dbg !919
  br label %for.cond, !dbg !920, !llvm.loop !921

for.end:                                          ; preds = %if.else, %for.cond
  %22 = load ptr, ptr %rclp.addr, align 8, !dbg !923
  %head27 = getelementptr inbounds %struct.rcu_cblist, ptr %22, i32 0, i32 0, !dbg !924
  store ptr null, ptr %head27, align 8, !dbg !925
  %23 = load ptr, ptr %rclp.addr, align 8, !dbg !926
  %head28 = getelementptr inbounds %struct.rcu_cblist, ptr %23, i32 0, i32 0, !dbg !927
  %24 = load ptr, ptr %rclp.addr, align 8, !dbg !928
  %tail29 = getelementptr inbounds %struct.rcu_cblist, ptr %24, i32 0, i32 1, !dbg !929
  store ptr %head28, ptr %tail29, align 8, !dbg !930
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !931
  br label %cleanup, !dbg !931

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !931
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !931

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_add_seglen(ptr noundef %rsclp, i32 noundef %seg, i64 noundef %v) #0 align 16 !dbg !932 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seg.addr = alloca i32, align 4
  %v.addr = alloca i64, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !934, metadata !DIExpression()), !dbg !937
  store i32 %seg, ptr %seg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !935, metadata !DIExpression()), !dbg !938
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !936, metadata !DIExpression()), !dbg !939
  br label %do.body, !dbg !940

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !941

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !943

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !941

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !945
  %seglen = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 4, !dbg !945
  %1 = load i32, ptr %seg.addr, align 4, !dbg !945
  %idxprom = sext i32 %1 to i64, !dbg !945
  %arrayidx = getelementptr [4 x i64], ptr %seglen, i64 0, i64 %idxprom, !dbg !945
  %2 = load i64, ptr %arrayidx, align 8, !dbg !945
  %3 = load i64, ptr %v.addr, align 8, !dbg !945
  %add = add i64 %2, %3, !dbg !945
  %4 = load ptr, ptr %rsclp.addr, align 8, !dbg !945
  %seglen3 = getelementptr inbounds %struct.rcu_segcblist, ptr %4, i32 0, i32 4, !dbg !945
  %5 = load i32, ptr %seg.addr, align 4, !dbg !945
  %idxprom4 = sext i32 %5 to i64, !dbg !945
  %arrayidx5 = getelementptr [4 x i64], ptr %seglen3, i64 0, i64 %idxprom4, !dbg !945
  store volatile i64 %add, ptr %arrayidx5, align 8, !dbg !945
  br label %do.end6, !dbg !945

do.end6:                                          ; preds = %do.body2
  br label %do.end7, !dbg !941

do.end7:                                          ; preds = %do.end6
  ret void, !dbg !947
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_insert_pend_cbs(ptr noundef %rsclp, ptr noundef %rclp) #0 align 16 !dbg !948 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %rclp.addr = alloca ptr, align 8
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !950, metadata !DIExpression()), !dbg !952
  store ptr %rclp, ptr %rclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rclp.addr, metadata !951, metadata !DIExpression()), !dbg !953
  %0 = load ptr, ptr %rclp.addr, align 8, !dbg !954
  %head = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 0, !dbg !956
  %1 = load ptr, ptr %head, align 8, !dbg !956
  %tobool = icmp ne ptr %1, null, !dbg !954
  br i1 %tobool, label %if.end, label %if.then, !dbg !957

if.then:                                          ; preds = %entry
  br label %do.end13, !dbg !958

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !959
  %3 = load ptr, ptr %rclp.addr, align 8, !dbg !960
  %len = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 2, !dbg !961
  %4 = load i64, ptr %len, align 8, !dbg !961
  call void @rcu_segcblist_add_seglen(ptr noundef %2, i32 noundef 3, i64 noundef %4) #6, !dbg !962
  br label %do.body, !dbg !963

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !964

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !966

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !964

do.body2:                                         ; preds = %do.end
  %5 = load ptr, ptr %rclp.addr, align 8, !dbg !968
  %head3 = getelementptr inbounds %struct.rcu_cblist, ptr %5, i32 0, i32 0, !dbg !968
  %6 = load ptr, ptr %head3, align 8, !dbg !968
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !968
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !968
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 3, !dbg !968
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !968
  store volatile ptr %6, ptr %8, align 8, !dbg !968
  br label %do.end4, !dbg !968

do.end4:                                          ; preds = %do.body2
  br label %do.end5, !dbg !964

do.end5:                                          ; preds = %do.end4
  br label %do.body6, !dbg !970

do.body6:                                         ; preds = %do.end5
  br label %do.body7, !dbg !971

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !973

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !971

do.body9:                                         ; preds = %do.end8
  %9 = load ptr, ptr %rclp.addr, align 8, !dbg !975
  %tail = getelementptr inbounds %struct.rcu_cblist, ptr %9, i32 0, i32 1, !dbg !975
  %10 = load ptr, ptr %tail, align 8, !dbg !975
  %11 = load ptr, ptr %rsclp.addr, align 8, !dbg !975
  %tails10 = getelementptr inbounds %struct.rcu_segcblist, ptr %11, i32 0, i32 1, !dbg !975
  %arrayidx11 = getelementptr [4 x ptr], ptr %tails10, i64 0, i64 3, !dbg !975
  store volatile ptr %10, ptr %arrayidx11, align 8, !dbg !975
  br label %do.end12, !dbg !975

do.end12:                                         ; preds = %do.body9
  br label %do.end13, !dbg !971

do.end13:                                         ; preds = %if.then, %do.end12
  ret void, !dbg !977
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_advance(ptr noundef %rsclp, i64 noundef %seq) #0 align 16 !dbg !978 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !982, metadata !DIExpression()), !dbg !991
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !983, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %i, metadata !984, metadata !DIExpression()), !dbg !994
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %j, metadata !985, metadata !DIExpression()), !dbg !995
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !996
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !986, metadata !DIExpression()), !dbg !996
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !996
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !996
  %lnot = xor i1 %call, true, !dbg !996
  %lnot1 = xor i1 %lnot, true, !dbg !996
  %lnot2 = xor i1 %lnot1, true, !dbg !996
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !996
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !996
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !997
  %tobool = icmp ne i32 %1, 0, !dbg !997
  %lnot3 = xor i1 %tobool, true, !dbg !997
  %lnot5 = xor i1 %lnot3, true, !dbg !997
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !997
  %conv = sext i32 %lnot.ext6 to i64, !dbg !997
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !997
  %tobool7 = icmp ne i64 %expval, 0, !dbg !997
  br i1 %tobool7, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !997

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !988, metadata !DIExpression()), !dbg !998
  store i32 2307, ptr %__flags, align 4, !dbg !998
  br label %do.body8, !dbg !998

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !999

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !999

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !998

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1001
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 484, i32 %2, i64 12) #7, !dbg !1001, !srcloc !1003
  br label %do.cond10, !dbg !1001

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1001

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !998

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1004

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1004

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !997
  br label %do.cond15, !dbg !998

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !998

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !998

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !996
  %tobool17 = icmp ne i32 %3, 0, !dbg !996
  %lnot18 = xor i1 %tobool17, true, !dbg !996
  %lnot20 = xor i1 %lnot18, true, !dbg !996
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !996
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !996
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !996
  store i64 %expval23, ptr %tmp, align 8, !dbg !997
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !1006
  %4 = load i64, ptr %tmp, align 8, !dbg !996
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !1007
  %call24 = call zeroext i1 @rcu_segcblist_restempty(ptr noundef %5, i32 noundef 0) #6, !dbg !1009
  br i1 %call24, label %if.then25, label %if.end26, !dbg !1010

if.then25:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end26:                                         ; preds = %if.end
  store i32 1, ptr %i, align 4, !dbg !1012
  br label %for.cond, !dbg !1014

for.cond:                                         ; preds = %for.inc, %if.end26
  %6 = load i32, ptr %i, align 4, !dbg !1015
  %cmp = icmp slt i32 %6, 3, !dbg !1017
  br i1 %cmp, label %for.body, label %for.end, !dbg !1018

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %seq.addr, align 8, !dbg !1019
  %8 = load ptr, ptr %rsclp.addr, align 8, !dbg !1019
  %gp_seq = getelementptr inbounds %struct.rcu_segcblist, ptr %8, i32 0, i32 2, !dbg !1019
  %9 = load i32, ptr %i, align 4, !dbg !1019
  %idxprom = sext i32 %9 to i64, !dbg !1019
  %arrayidx = getelementptr [4 x i64], ptr %gp_seq, i64 0, i64 %idxprom, !dbg !1019
  %10 = load i64, ptr %arrayidx, align 8, !dbg !1019
  %sub = sub i64 %7, %10, !dbg !1019
  %cmp28 = icmp ult i64 9223372036854775807, %sub, !dbg !1019
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1022

if.then30:                                        ; preds = %for.body
  br label %for.end, !dbg !1023

if.end31:                                         ; preds = %for.body
  br label %do.body32, !dbg !1024

do.body32:                                        ; preds = %if.end31
  br label %do.body33, !dbg !1025

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !1027

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !1027

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !1025

do.body36:                                        ; preds = %do.end35
  %11 = load ptr, ptr %rsclp.addr, align 8, !dbg !1029
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %11, i32 0, i32 1, !dbg !1029
  %12 = load i32, ptr %i, align 4, !dbg !1029
  %idxprom37 = sext i32 %12 to i64, !dbg !1029
  %arrayidx38 = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom37, !dbg !1029
  %13 = load ptr, ptr %arrayidx38, align 8, !dbg !1029
  %14 = load ptr, ptr %rsclp.addr, align 8, !dbg !1029
  %tails39 = getelementptr inbounds %struct.rcu_segcblist, ptr %14, i32 0, i32 1, !dbg !1029
  %arrayidx40 = getelementptr [4 x ptr], ptr %tails39, i64 0, i64 0, !dbg !1029
  store volatile ptr %13, ptr %arrayidx40, align 8, !dbg !1029
  br label %do.cond41, !dbg !1029

do.cond41:                                        ; preds = %do.body36
  br label %do.end42, !dbg !1029

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !1025

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !1025

do.end44:                                         ; preds = %do.cond43
  %15 = load ptr, ptr %rsclp.addr, align 8, !dbg !1031
  %16 = load i32, ptr %i, align 4, !dbg !1032
  call void @rcu_segcblist_move_seglen(ptr noundef %15, i32 noundef %16, i32 noundef 0) #6, !dbg !1033
  br label %for.inc, !dbg !1034

for.inc:                                          ; preds = %do.end44
  %17 = load i32, ptr %i, align 4, !dbg !1035
  %inc = add i32 %17, 1, !dbg !1035
  store i32 %inc, ptr %i, align 4, !dbg !1035
  br label %for.cond, !dbg !1036, !llvm.loop !1037

for.end:                                          ; preds = %if.then30, %for.cond
  %18 = load i32, ptr %i, align 4, !dbg !1039
  %cmp45 = icmp eq i32 %18, 1, !dbg !1041
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1042

if.then47:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end48:                                         ; preds = %for.end
  store i32 1, ptr %j, align 4, !dbg !1044
  br label %for.cond49, !dbg !1046

for.cond49:                                       ; preds = %for.inc67, %if.end48
  %19 = load i32, ptr %j, align 4, !dbg !1047
  %20 = load i32, ptr %i, align 4, !dbg !1049
  %cmp50 = icmp slt i32 %19, %20, !dbg !1050
  br i1 %cmp50, label %for.body52, label %for.end69, !dbg !1051

for.body52:                                       ; preds = %for.cond49
  br label %do.body53, !dbg !1052

do.body53:                                        ; preds = %for.body52
  br label %do.body54, !dbg !1053

do.body54:                                        ; preds = %do.body53
  br label %do.cond55, !dbg !1055

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1055

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !1053

do.body57:                                        ; preds = %do.end56
  %21 = load ptr, ptr %rsclp.addr, align 8, !dbg !1057
  %tails58 = getelementptr inbounds %struct.rcu_segcblist, ptr %21, i32 0, i32 1, !dbg !1057
  %arrayidx59 = getelementptr [4 x ptr], ptr %tails58, i64 0, i64 0, !dbg !1057
  %22 = load ptr, ptr %arrayidx59, align 8, !dbg !1057
  %23 = load ptr, ptr %rsclp.addr, align 8, !dbg !1057
  %tails60 = getelementptr inbounds %struct.rcu_segcblist, ptr %23, i32 0, i32 1, !dbg !1057
  %24 = load i32, ptr %j, align 4, !dbg !1057
  %idxprom61 = sext i32 %24 to i64, !dbg !1057
  %arrayidx62 = getelementptr [4 x ptr], ptr %tails60, i64 0, i64 %idxprom61, !dbg !1057
  store volatile ptr %22, ptr %arrayidx62, align 8, !dbg !1057
  br label %do.cond63, !dbg !1057

do.cond63:                                        ; preds = %do.body57
  br label %do.end64, !dbg !1057

do.end64:                                         ; preds = %do.cond63
  br label %do.cond65, !dbg !1053

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !1053

do.end66:                                         ; preds = %do.cond65
  br label %for.inc67, !dbg !1053

for.inc67:                                        ; preds = %do.end66
  %25 = load i32, ptr %j, align 4, !dbg !1059
  %inc68 = add i32 %25, 1, !dbg !1059
  store i32 %inc68, ptr %j, align 4, !dbg !1059
  br label %for.cond49, !dbg !1060, !llvm.loop !1061

for.end69:                                        ; preds = %for.cond49
  store i32 1, ptr %j, align 4, !dbg !1063
  br label %for.cond70, !dbg !1065

for.cond70:                                       ; preds = %for.inc104, %for.end69
  %26 = load i32, ptr %i, align 4, !dbg !1066
  %cmp71 = icmp slt i32 %26, 3, !dbg !1068
  br i1 %cmp71, label %for.body73, label %for.end107, !dbg !1069

for.body73:                                       ; preds = %for.cond70
  %27 = load ptr, ptr %rsclp.addr, align 8, !dbg !1070
  %tails74 = getelementptr inbounds %struct.rcu_segcblist, ptr %27, i32 0, i32 1, !dbg !1073
  %28 = load i32, ptr %j, align 4, !dbg !1074
  %idxprom75 = sext i32 %28 to i64, !dbg !1070
  %arrayidx76 = getelementptr [4 x ptr], ptr %tails74, i64 0, i64 %idxprom75, !dbg !1070
  %29 = load ptr, ptr %arrayidx76, align 8, !dbg !1070
  %30 = load ptr, ptr %rsclp.addr, align 8, !dbg !1075
  %tails77 = getelementptr inbounds %struct.rcu_segcblist, ptr %30, i32 0, i32 1, !dbg !1076
  %arrayidx78 = getelementptr [4 x ptr], ptr %tails77, i64 0, i64 3, !dbg !1075
  %31 = load ptr, ptr %arrayidx78, align 8, !dbg !1075
  %cmp79 = icmp eq ptr %29, %31, !dbg !1077
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1078

if.then81:                                        ; preds = %for.body73
  br label %for.end107, !dbg !1079

if.end82:                                         ; preds = %for.body73
  br label %do.body83, !dbg !1080

do.body83:                                        ; preds = %if.end82
  br label %do.body84, !dbg !1081

do.body84:                                        ; preds = %do.body83
  br label %do.cond85, !dbg !1083

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !1083

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !1081

do.body87:                                        ; preds = %do.end86
  %32 = load ptr, ptr %rsclp.addr, align 8, !dbg !1085
  %tails88 = getelementptr inbounds %struct.rcu_segcblist, ptr %32, i32 0, i32 1, !dbg !1085
  %33 = load i32, ptr %i, align 4, !dbg !1085
  %idxprom89 = sext i32 %33 to i64, !dbg !1085
  %arrayidx90 = getelementptr [4 x ptr], ptr %tails88, i64 0, i64 %idxprom89, !dbg !1085
  %34 = load ptr, ptr %arrayidx90, align 8, !dbg !1085
  %35 = load ptr, ptr %rsclp.addr, align 8, !dbg !1085
  %tails91 = getelementptr inbounds %struct.rcu_segcblist, ptr %35, i32 0, i32 1, !dbg !1085
  %36 = load i32, ptr %j, align 4, !dbg !1085
  %idxprom92 = sext i32 %36 to i64, !dbg !1085
  %arrayidx93 = getelementptr [4 x ptr], ptr %tails91, i64 0, i64 %idxprom92, !dbg !1085
  store volatile ptr %34, ptr %arrayidx93, align 8, !dbg !1085
  br label %do.cond94, !dbg !1085

do.cond94:                                        ; preds = %do.body87
  br label %do.end95, !dbg !1085

do.end95:                                         ; preds = %do.cond94
  br label %do.cond96, !dbg !1081

do.cond96:                                        ; preds = %do.end95
  br label %do.end97, !dbg !1081

do.end97:                                         ; preds = %do.cond96
  %37 = load ptr, ptr %rsclp.addr, align 8, !dbg !1087
  %38 = load i32, ptr %i, align 4, !dbg !1088
  %39 = load i32, ptr %j, align 4, !dbg !1089
  call void @rcu_segcblist_move_seglen(ptr noundef %37, i32 noundef %38, i32 noundef %39) #6, !dbg !1090
  %40 = load ptr, ptr %rsclp.addr, align 8, !dbg !1091
  %gp_seq98 = getelementptr inbounds %struct.rcu_segcblist, ptr %40, i32 0, i32 2, !dbg !1092
  %41 = load i32, ptr %i, align 4, !dbg !1093
  %idxprom99 = sext i32 %41 to i64, !dbg !1091
  %arrayidx100 = getelementptr [4 x i64], ptr %gp_seq98, i64 0, i64 %idxprom99, !dbg !1091
  %42 = load i64, ptr %arrayidx100, align 8, !dbg !1091
  %43 = load ptr, ptr %rsclp.addr, align 8, !dbg !1094
  %gp_seq101 = getelementptr inbounds %struct.rcu_segcblist, ptr %43, i32 0, i32 2, !dbg !1095
  %44 = load i32, ptr %j, align 4, !dbg !1096
  %idxprom102 = sext i32 %44 to i64, !dbg !1094
  %arrayidx103 = getelementptr [4 x i64], ptr %gp_seq101, i64 0, i64 %idxprom102, !dbg !1094
  store i64 %42, ptr %arrayidx103, align 8, !dbg !1097
  br label %for.inc104, !dbg !1098

for.inc104:                                       ; preds = %do.end97
  %45 = load i32, ptr %i, align 4, !dbg !1099
  %inc105 = add i32 %45, 1, !dbg !1099
  store i32 %inc105, ptr %i, align 4, !dbg !1099
  %46 = load i32, ptr %j, align 4, !dbg !1100
  %inc106 = add i32 %46, 1, !dbg !1100
  store i32 %inc106, ptr %j, align 4, !dbg !1100
  br label %for.cond70, !dbg !1101, !llvm.loop !1102

for.end107:                                       ; preds = %if.then81, %for.cond70
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1104
  br label %cleanup, !dbg !1104

cleanup:                                          ; preds = %for.end107, %if.then47, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1104
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1104

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_segcblist_move_seglen(ptr noundef %rsclp, i32 noundef %from, i32 noundef %to) #0 align 16 !dbg !1105 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !1109, metadata !DIExpression()), !dbg !1113
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1110, metadata !DIExpression()), !dbg !1114
  store i32 %to, ptr %to.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1111, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1112, metadata !DIExpression()), !dbg !1117
  %0 = load i32, ptr %from.addr, align 4, !dbg !1118
  %1 = load i32, ptr %to.addr, align 4, !dbg !1120
  %cmp = icmp eq i32 %0, %1, !dbg !1121
  br i1 %cmp, label %if.then, label %if.end, !dbg !1122

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rsclp.addr, align 8, !dbg !1124
  %3 = load i32, ptr %from.addr, align 4, !dbg !1125
  %call = call i64 @rcu_segcblist_get_seglen(ptr noundef %2, i32 noundef %3) #6, !dbg !1126
  store i64 %call, ptr %len, align 8, !dbg !1127
  %4 = load i64, ptr %len, align 8, !dbg !1128
  %tobool = icmp ne i64 %4, 0, !dbg !1128
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !1130

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !1132
  %6 = load i32, ptr %to.addr, align 4, !dbg !1133
  %7 = load i64, ptr %len, align 8, !dbg !1134
  call void @rcu_segcblist_add_seglen(ptr noundef %5, i32 noundef %6, i64 noundef %7) #6, !dbg !1135
  %8 = load ptr, ptr %rsclp.addr, align 8, !dbg !1136
  %9 = load i32, ptr %from.addr, align 4, !dbg !1137
  call void @rcu_segcblist_set_seglen(ptr noundef %8, i32 noundef %9, i64 noundef 0) #6, !dbg !1138
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1139
  br label %cleanup, !dbg !1139

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !1139
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1139

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcu_segcblist_accelerate(ptr noundef %rsclp, i64 noundef %seq) #0 align 16 !dbg !1140 {
entry:
  %retval = alloca i1, align 1
  %rsclp.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !1144, metadata !DIExpression()), !dbg !1153
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !1145, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1146, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1147, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1148, metadata !DIExpression()), !dbg !1158
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !1158
  %call = call zeroext i1 @rcu_segcblist_is_enabled(ptr noundef %0) #6, !dbg !1158
  %lnot = xor i1 %call, true, !dbg !1158
  %lnot1 = xor i1 %lnot, true, !dbg !1158
  %lnot2 = xor i1 %lnot1, true, !dbg !1158
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1158
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1158
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1159
  %tobool = icmp ne i32 %1, 0, !dbg !1159
  %lnot3 = xor i1 %tobool, true, !dbg !1159
  %lnot5 = xor i1 %lnot3, true, !dbg !1159
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1159
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1159
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1159
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1159
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1159

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1150, metadata !DIExpression()), !dbg !1160
  store i32 2307, ptr %__flags, align 4, !dbg !1160
  br label %do.body8, !dbg !1160

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1161

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1161

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1160

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1163
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 541, i32 %2, i64 12) #7, !dbg !1163, !srcloc !1165
  br label %do.cond10, !dbg !1163

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1163

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1160

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1166

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1166

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !1159
  br label %do.cond15, !dbg !1160

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !1160

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !1160

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1158
  %tobool17 = icmp ne i32 %3, 0, !dbg !1158
  %lnot18 = xor i1 %tobool17, true, !dbg !1158
  %lnot20 = xor i1 %lnot18, true, !dbg !1158
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1158
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1158
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1158
  store i64 %expval23, ptr %tmp, align 8, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !1168
  %4 = load i64, ptr %tmp, align 8, !dbg !1158
  %5 = load ptr, ptr %rsclp.addr, align 8, !dbg !1169
  %call24 = call zeroext i1 @rcu_segcblist_restempty(ptr noundef %5, i32 noundef 0) #6, !dbg !1171
  br i1 %call24, label %if.then25, label %if.end26, !dbg !1172

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1173

if.end26:                                         ; preds = %if.end
  store i32 2, ptr %i, align 4, !dbg !1174
  br label %for.cond, !dbg !1176

for.cond:                                         ; preds = %for.inc, %if.end26
  %6 = load i32, ptr %i, align 4, !dbg !1177
  %cmp = icmp sgt i32 %6, 0, !dbg !1179
  br i1 %cmp, label %for.body, label %for.end, !dbg !1180

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rsclp.addr, align 8, !dbg !1181
  %tails = getelementptr inbounds %struct.rcu_segcblist, ptr %7, i32 0, i32 1, !dbg !1183
  %8 = load i32, ptr %i, align 4, !dbg !1184
  %idxprom = sext i32 %8 to i64, !dbg !1181
  %arrayidx = getelementptr [4 x ptr], ptr %tails, i64 0, i64 %idxprom, !dbg !1181
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1181
  %10 = load ptr, ptr %rsclp.addr, align 8, !dbg !1185
  %tails28 = getelementptr inbounds %struct.rcu_segcblist, ptr %10, i32 0, i32 1, !dbg !1186
  %11 = load i32, ptr %i, align 4, !dbg !1187
  %sub = sub i32 %11, 1, !dbg !1188
  %idxprom29 = sext i32 %sub to i64, !dbg !1185
  %arrayidx30 = getelementptr [4 x ptr], ptr %tails28, i64 0, i64 %idxprom29, !dbg !1185
  %12 = load ptr, ptr %arrayidx30, align 8, !dbg !1185
  %cmp31 = icmp ne ptr %9, %12, !dbg !1189
  br i1 %cmp31, label %land.lhs.true, label %if.end39, !dbg !1190

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %rsclp.addr, align 8, !dbg !1191
  %gp_seq = getelementptr inbounds %struct.rcu_segcblist, ptr %13, i32 0, i32 2, !dbg !1191
  %14 = load i32, ptr %i, align 4, !dbg !1191
  %idxprom33 = sext i32 %14 to i64, !dbg !1191
  %arrayidx34 = getelementptr [4 x i64], ptr %gp_seq, i64 0, i64 %idxprom33, !dbg !1191
  %15 = load i64, ptr %arrayidx34, align 8, !dbg !1191
  %16 = load i64, ptr %seq.addr, align 8, !dbg !1191
  %sub35 = sub i64 %15, %16, !dbg !1191
  %cmp36 = icmp ult i64 9223372036854775807, %sub35, !dbg !1191
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1192

if.then38:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !1193

if.end39:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1191

for.inc:                                          ; preds = %if.end39
  %17 = load i32, ptr %i, align 4, !dbg !1194
  %dec = add i32 %17, -1, !dbg !1194
  store i32 %dec, ptr %i, align 4, !dbg !1194
  br label %for.cond, !dbg !1195, !llvm.loop !1196

for.end:                                          ; preds = %if.then38, %for.cond
  %18 = load ptr, ptr %rsclp.addr, align 8, !dbg !1198
  %19 = load i32, ptr %i, align 4, !dbg !1200
  %call40 = call zeroext i1 @rcu_segcblist_restempty(ptr noundef %18, i32 noundef %19) #6, !dbg !1201
  br i1 %call40, label %if.then44, label %lor.lhs.false, !dbg !1202

lor.lhs.false:                                    ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !dbg !1203
  %inc = add i32 %20, 1, !dbg !1203
  store i32 %inc, ptr %i, align 4, !dbg !1203
  %cmp42 = icmp sge i32 %inc, 3, !dbg !1204
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1205

if.then44:                                        ; preds = %lor.lhs.false, %for.end
  store i1 false, ptr %retval, align 1, !dbg !1206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1206

if.end45:                                         ; preds = %lor.lhs.false
  %21 = load i32, ptr %i, align 4, !dbg !1207
  %add = add i32 %21, 1, !dbg !1209
  store i32 %add, ptr %j, align 4, !dbg !1210
  br label %for.cond46, !dbg !1211

for.cond46:                                       ; preds = %for.inc50, %if.end45
  %22 = load i32, ptr %j, align 4, !dbg !1212
  %cmp47 = icmp sle i32 %22, 3, !dbg !1214
  br i1 %cmp47, label %for.body49, label %for.end52, !dbg !1215

for.body49:                                       ; preds = %for.cond46
  %23 = load ptr, ptr %rsclp.addr, align 8, !dbg !1216
  %24 = load i32, ptr %j, align 4, !dbg !1217
  %25 = load i32, ptr %i, align 4, !dbg !1218
  call void @rcu_segcblist_move_seglen(ptr noundef %23, i32 noundef %24, i32 noundef %25) #6, !dbg !1219
  br label %for.inc50, !dbg !1219

for.inc50:                                        ; preds = %for.body49
  %26 = load i32, ptr %j, align 4, !dbg !1220
  %inc51 = add i32 %26, 1, !dbg !1220
  store i32 %inc51, ptr %j, align 4, !dbg !1220
  br label %for.cond46, !dbg !1221, !llvm.loop !1222

for.end52:                                        ; preds = %for.cond46
  br label %for.cond53, !dbg !1224

for.cond53:                                       ; preds = %for.inc74, %for.end52
  %27 = load i32, ptr %i, align 4, !dbg !1225
  %cmp54 = icmp slt i32 %27, 3, !dbg !1228
  br i1 %cmp54, label %for.body56, label %for.end76, !dbg !1229

for.body56:                                       ; preds = %for.cond53
  br label %do.body57, !dbg !1230

do.body57:                                        ; preds = %for.body56
  br label %do.body58, !dbg !1232

do.body58:                                        ; preds = %do.body57
  br label %do.cond59, !dbg !1234

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !1234

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !1232

do.body61:                                        ; preds = %do.end60
  %28 = load ptr, ptr %rsclp.addr, align 8, !dbg !1236
  %tails62 = getelementptr inbounds %struct.rcu_segcblist, ptr %28, i32 0, i32 1, !dbg !1236
  %arrayidx63 = getelementptr [4 x ptr], ptr %tails62, i64 0, i64 3, !dbg !1236
  %29 = load ptr, ptr %arrayidx63, align 8, !dbg !1236
  %30 = load ptr, ptr %rsclp.addr, align 8, !dbg !1236
  %tails64 = getelementptr inbounds %struct.rcu_segcblist, ptr %30, i32 0, i32 1, !dbg !1236
  %31 = load i32, ptr %i, align 4, !dbg !1236
  %idxprom65 = sext i32 %31 to i64, !dbg !1236
  %arrayidx66 = getelementptr [4 x ptr], ptr %tails64, i64 0, i64 %idxprom65, !dbg !1236
  store volatile ptr %29, ptr %arrayidx66, align 8, !dbg !1236
  br label %do.cond67, !dbg !1236

do.cond67:                                        ; preds = %do.body61
  br label %do.end68, !dbg !1236

do.end68:                                         ; preds = %do.cond67
  br label %do.cond69, !dbg !1232

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !1232

do.end70:                                         ; preds = %do.cond69
  %32 = load i64, ptr %seq.addr, align 8, !dbg !1238
  %33 = load ptr, ptr %rsclp.addr, align 8, !dbg !1239
  %gp_seq71 = getelementptr inbounds %struct.rcu_segcblist, ptr %33, i32 0, i32 2, !dbg !1240
  %34 = load i32, ptr %i, align 4, !dbg !1241
  %idxprom72 = sext i32 %34 to i64, !dbg !1239
  %arrayidx73 = getelementptr [4 x i64], ptr %gp_seq71, i64 0, i64 %idxprom72, !dbg !1239
  store i64 %32, ptr %arrayidx73, align 8, !dbg !1242
  br label %for.inc74, !dbg !1243

for.inc74:                                        ; preds = %do.end70
  %35 = load i32, ptr %i, align 4, !dbg !1244
  %inc75 = add i32 %35, 1, !dbg !1244
  store i32 %inc75, ptr %i, align 4, !dbg !1244
  br label %for.cond53, !dbg !1245, !llvm.loop !1246

for.end76:                                        ; preds = %for.cond53
  store i1 true, ptr %retval, align 1, !dbg !1248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %for.end76, %if.then44, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1249
  %36 = load i1, ptr %retval, align 1, !dbg !1249
  ret i1 %36, !dbg !1249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rcu_segcblist_merge(ptr noundef %dst_rsclp, ptr noundef %src_rsclp) #0 align 16 !dbg !1250 {
entry:
  %dst_rsclp.addr = alloca ptr, align 8
  %src_rsclp.addr = alloca ptr, align 8
  %donecbs = alloca %struct.rcu_cblist, align 8
  %pendcbs = alloca %struct.rcu_cblist, align 8
  store ptr %dst_rsclp, ptr %dst_rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_rsclp.addr, metadata !1254, metadata !DIExpression()), !dbg !1258
  store ptr %src_rsclp, ptr %src_rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_rsclp.addr, metadata !1255, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 24, ptr %donecbs) #7, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %donecbs, metadata !1256, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 24, ptr %pendcbs) #7, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %pendcbs, metadata !1257, metadata !DIExpression()), !dbg !1263
  call void @lockdep_assert_cpus_held() #6, !dbg !1264
  call void @rcu_cblist_init(ptr noundef %donecbs) #6, !dbg !1265
  call void @rcu_cblist_init(ptr noundef %pendcbs) #6, !dbg !1266
  %0 = load ptr, ptr %src_rsclp.addr, align 8, !dbg !1267
  call void @rcu_segcblist_extract_done_cbs(ptr noundef %0, ptr noundef %donecbs) #6, !dbg !1268
  %1 = load ptr, ptr %src_rsclp.addr, align 8, !dbg !1269
  call void @rcu_segcblist_extract_pend_cbs(ptr noundef %1, ptr noundef %pendcbs) #6, !dbg !1270
  %2 = load ptr, ptr %src_rsclp.addr, align 8, !dbg !1271
  call void @rcu_segcblist_set_len(ptr noundef %2, i64 noundef 0) #6, !dbg !1272
  %3 = load ptr, ptr %dst_rsclp.addr, align 8, !dbg !1273
  call void @rcu_segcblist_insert_count(ptr noundef %3, ptr noundef %donecbs) #6, !dbg !1274
  %4 = load ptr, ptr %dst_rsclp.addr, align 8, !dbg !1275
  call void @rcu_segcblist_insert_count(ptr noundef %4, ptr noundef %pendcbs) #6, !dbg !1276
  %5 = load ptr, ptr %dst_rsclp.addr, align 8, !dbg !1277
  call void @rcu_segcblist_insert_done_cbs(ptr noundef %5, ptr noundef %donecbs) #6, !dbg !1278
  %6 = load ptr, ptr %dst_rsclp.addr, align 8, !dbg !1279
  call void @rcu_segcblist_insert_pend_cbs(ptr noundef %6, ptr noundef %pendcbs) #6, !dbg !1280
  %7 = load ptr, ptr %src_rsclp.addr, align 8, !dbg !1281
  call void @rcu_segcblist_init(ptr noundef %7) #6, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 24, ptr %pendcbs) #7, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 24, ptr %donecbs) #7, !dbg !1283
  ret void, !dbg !1283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1284 dso_local void @lockdep_assert_cpus_held() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_segcblist_test_flags(ptr noundef %rsclp, i32 noundef %flags) #3 align 16 !dbg !1288 {
entry:
  %rsclp.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %tmp = alloca i8, align 1
  store ptr %rsclp, ptr %rsclp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsclp.addr, metadata !1290, metadata !DIExpression()), !dbg !1292
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1291, metadata !DIExpression()), !dbg !1293
  br label %do.body, !dbg !1294

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1296

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %rsclp.addr, align 8, !dbg !1294
  %flags1 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5, !dbg !1294
  %1 = load volatile i8, ptr %flags1, align 8, !dbg !1294
  store i8 %1, ptr %tmp, align 1, !dbg !1296
  %2 = load i8, ptr %tmp, align 1, !dbg !1294
  %conv = zext i8 %2 to i32, !dbg !1298
  %3 = load i32, ptr %flags.addr, align 4, !dbg !1299
  %and = and i32 %conv, %3, !dbg !1300
  %tobool = icmp ne i32 %and, 0, !dbg !1298
  ret i1 %tobool, !dbg !1301
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/rcu/rcu_segcblist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38846faf49da6734543142cf6fd67a82")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/rcu/.rcu_segcblist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/rcu/rcu_segcblist\22 -D KBUILD_BASENAME=\22rcu_segcblist\22 -D KBUILD_MODNAME=\22rcu_segcblist\22 -D __KBUILD_MODNAME=kmod_rcu_segcblist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/rcu/rcu_segcblist.ll kernel/rcu/rcu_segcblist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !15, globals: !49, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !{!16, !19, !21, !34, !36, !37, !44, !46}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !27, line: 232, size: 128, align: 64, elements: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !27, line: 233, baseType: !25, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !26, file: !27, line: 234, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !25}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!49 = !{!0}
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "rcu_cblist_init", scope: !2, file: !2, line: 18, type: !60, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !69)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_cblist", file: !64, line: 21, size: 192, elements: !65)
!64 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !63, file: !64, line: 22, baseType: !25, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !63, file: !64, line: 23, baseType: !24, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !64, line: 24, baseType: !18, size: 64, offset: 128)
!69 = !{!70}
!70 = !DILocalVariable(name: "rclp", arg: 1, scope: !59, file: !2, line: 18, type: !62)
!71 = !DILocation(line: 18, column: 41, scope: !59)
!72 = !DILocation(line: 20, column: 2, scope: !59)
!73 = !DILocation(line: 20, column: 8, scope: !59)
!74 = !DILocation(line: 20, column: 13, scope: !59)
!75 = !DILocation(line: 21, column: 16, scope: !59)
!76 = !DILocation(line: 21, column: 22, scope: !59)
!77 = !DILocation(line: 21, column: 2, scope: !59)
!78 = !DILocation(line: 21, column: 8, scope: !59)
!79 = !DILocation(line: 21, column: 13, scope: !59)
!80 = !DILocation(line: 22, column: 2, scope: !59)
!81 = !DILocation(line: 22, column: 8, scope: !59)
!82 = !DILocation(line: 22, column: 12, scope: !59)
!83 = !DILocation(line: 23, column: 1, scope: !59)
!84 = distinct !DISubprogram(name: "rcu_cblist_enqueue", scope: !2, file: !2, line: 28, type: !85, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !62, !25}
!87 = !{!88, !89}
!88 = !DILocalVariable(name: "rclp", arg: 1, scope: !84, file: !2, line: 28, type: !62)
!89 = !DILocalVariable(name: "rhp", arg: 2, scope: !84, file: !2, line: 28, type: !25)
!90 = !DILocation(line: 28, column: 44, scope: !84)
!91 = !DILocation(line: 28, column: 67, scope: !84)
!92 = !DILocation(line: 30, column: 16, scope: !84)
!93 = !DILocation(line: 30, column: 3, scope: !84)
!94 = !DILocation(line: 30, column: 9, scope: !84)
!95 = !DILocation(line: 30, column: 14, scope: !84)
!96 = !DILocation(line: 31, column: 16, scope: !84)
!97 = !DILocation(line: 31, column: 21, scope: !84)
!98 = !DILocation(line: 31, column: 2, scope: !84)
!99 = !DILocation(line: 31, column: 8, scope: !84)
!100 = !DILocation(line: 31, column: 13, scope: !84)
!101 = !DILocation(line: 32, column: 2, scope: !84)
!102 = !DILocation(line: 32, column: 2, scope: !103)
!103 = distinct !DILexicalBlock(scope: !84, file: !2, line: 32, column: 2)
!104 = !DILocation(line: 32, column: 2, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !2, line: 32, column: 2)
!106 = !DILocation(line: 32, column: 2, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !2, line: 32, column: 2)
!108 = !DILocation(line: 33, column: 1, scope: !84)
!109 = distinct !DISubprogram(name: "rcu_cblist_flush_enqueue", scope: !2, file: !2, line: 43, type: !110, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !62, !62, !25}
!112 = !{!113, !114, !115}
!113 = !DILocalVariable(name: "drclp", arg: 1, scope: !109, file: !2, line: 43, type: !62)
!114 = !DILocalVariable(name: "srclp", arg: 2, scope: !109, file: !2, line: 44, type: !62)
!115 = !DILocalVariable(name: "rhp", arg: 3, scope: !109, file: !2, line: 45, type: !25)
!116 = !DILocation(line: 43, column: 50, scope: !109)
!117 = !DILocation(line: 44, column: 29, scope: !109)
!118 = !DILocation(line: 45, column: 27, scope: !109)
!119 = !DILocation(line: 47, column: 16, scope: !109)
!120 = !DILocation(line: 47, column: 23, scope: !109)
!121 = !DILocation(line: 47, column: 2, scope: !109)
!122 = !DILocation(line: 47, column: 9, scope: !109)
!123 = !DILocation(line: 47, column: 14, scope: !109)
!124 = !DILocation(line: 48, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !109, file: !2, line: 48, column: 6)
!126 = !DILocation(line: 48, column: 13, scope: !125)
!127 = !DILocation(line: 48, column: 6, scope: !109)
!128 = !DILocation(line: 49, column: 17, scope: !125)
!129 = !DILocation(line: 49, column: 24, scope: !125)
!130 = !DILocation(line: 49, column: 3, scope: !125)
!131 = !DILocation(line: 49, column: 10, scope: !125)
!132 = !DILocation(line: 49, column: 15, scope: !125)
!133 = !DILocation(line: 51, column: 18, scope: !125)
!134 = !DILocation(line: 51, column: 25, scope: !125)
!135 = !DILocation(line: 51, column: 3, scope: !125)
!136 = !DILocation(line: 51, column: 10, scope: !125)
!137 = !DILocation(line: 51, column: 15, scope: !125)
!138 = !DILocation(line: 52, column: 15, scope: !109)
!139 = !DILocation(line: 52, column: 22, scope: !109)
!140 = !DILocation(line: 52, column: 2, scope: !109)
!141 = !DILocation(line: 52, column: 9, scope: !109)
!142 = !DILocation(line: 52, column: 13, scope: !109)
!143 = !DILocation(line: 53, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !109, file: !2, line: 53, column: 6)
!145 = !DILocation(line: 53, column: 6, scope: !109)
!146 = !DILocation(line: 54, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !2, line: 53, column: 12)
!148 = !DILocation(line: 54, column: 3, scope: !147)
!149 = !DILocation(line: 55, column: 2, scope: !147)
!150 = !DILocation(line: 56, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !2, line: 55, column: 9)
!152 = !DILocation(line: 56, column: 8, scope: !151)
!153 = !DILocation(line: 56, column: 13, scope: !151)
!154 = !DILocation(line: 57, column: 17, scope: !151)
!155 = !DILocation(line: 57, column: 3, scope: !151)
!156 = !DILocation(line: 57, column: 10, scope: !151)
!157 = !DILocation(line: 57, column: 15, scope: !151)
!158 = !DILocation(line: 58, column: 18, scope: !151)
!159 = !DILocation(line: 58, column: 23, scope: !151)
!160 = !DILocation(line: 58, column: 3, scope: !151)
!161 = !DILocation(line: 58, column: 10, scope: !151)
!162 = !DILocation(line: 58, column: 15, scope: !151)
!163 = !DILocation(line: 59, column: 3, scope: !151)
!164 = !DILocation(line: 59, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !151, file: !2, line: 59, column: 3)
!166 = !DILocation(line: 59, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !2, line: 59, column: 3)
!168 = !DILocation(line: 59, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !2, line: 59, column: 3)
!170 = !DILocation(line: 61, column: 1, scope: !109)
!171 = distinct !DISubprogram(name: "rcu_cblist_dequeue", scope: !2, file: !2, line: 67, type: !172, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{!25, !62}
!174 = !{!175, !176}
!175 = !DILocalVariable(name: "rclp", arg: 1, scope: !171, file: !2, line: 67, type: !62)
!176 = !DILocalVariable(name: "rhp", scope: !171, file: !2, line: 69, type: !25)
!177 = !DILocation(line: 67, column: 56, scope: !171)
!178 = !DILocation(line: 69, column: 2, scope: !171)
!179 = !DILocation(line: 69, column: 19, scope: !171)
!180 = !DILocation(line: 71, column: 8, scope: !171)
!181 = !DILocation(line: 71, column: 14, scope: !171)
!182 = !DILocation(line: 71, column: 6, scope: !171)
!183 = !DILocation(line: 72, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !171, file: !2, line: 72, column: 6)
!185 = !DILocation(line: 72, column: 6, scope: !171)
!186 = !DILocation(line: 73, column: 3, scope: !184)
!187 = !DILocation(line: 74, column: 2, scope: !171)
!188 = !DILocation(line: 74, column: 8, scope: !171)
!189 = !DILocation(line: 74, column: 11, scope: !171)
!190 = !DILocation(line: 75, column: 15, scope: !171)
!191 = !DILocation(line: 75, column: 20, scope: !171)
!192 = !DILocation(line: 75, column: 2, scope: !171)
!193 = !DILocation(line: 75, column: 8, scope: !171)
!194 = !DILocation(line: 75, column: 13, scope: !171)
!195 = !DILocation(line: 76, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !171, file: !2, line: 76, column: 6)
!197 = !DILocation(line: 76, column: 13, scope: !196)
!198 = !DILocation(line: 76, column: 6, scope: !171)
!199 = !DILocation(line: 77, column: 17, scope: !196)
!200 = !DILocation(line: 77, column: 23, scope: !196)
!201 = !DILocation(line: 77, column: 3, scope: !196)
!202 = !DILocation(line: 77, column: 9, scope: !196)
!203 = !DILocation(line: 77, column: 14, scope: !196)
!204 = !DILocation(line: 78, column: 9, scope: !171)
!205 = !DILocation(line: 78, column: 2, scope: !171)
!206 = !DILocation(line: 79, column: 1, scope: !171)
!207 = distinct !DISubprogram(name: "rcu_segcblist_get_seglen", scope: !2, file: !2, line: 92, type: !208, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !226)
!208 = !DISubroutineType(types: !209)
!209 = !{!18, !210, !225}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !64, line: 206, size: 960, elements: !212)
!212 = !{!213, !214, !218, !221, !222, !224}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !211, file: !64, line: 207, baseType: !25, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !211, file: !64, line: 208, baseType: !215, size: 256, offset: 64)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 4)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !211, file: !64, line: 209, baseType: !219, size: 256, offset: 320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !216)
!220 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !211, file: !64, line: 213, baseType: !18, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !211, file: !64, line: 215, baseType: !223, size: 256, offset: 640)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !216)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !64, line: 216, baseType: !39, size: 8, offset: 896)
!225 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "rsclp", arg: 1, scope: !207, file: !2, line: 92, type: !210)
!228 = !DILocalVariable(name: "seg", arg: 2, scope: !207, file: !2, line: 92, type: !225)
!229 = !DILocation(line: 92, column: 53, scope: !207)
!230 = !DILocation(line: 92, column: 64, scope: !207)
!231 = !DILocation(line: 94, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !207, file: !2, line: 94, column: 9)
!233 = !DILocation(line: 94, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !2, line: 94, column: 9)
!235 = !DILocation(line: 94, column: 2, scope: !207)
!236 = distinct !DISubprogram(name: "rcu_segcblist_n_segment_cbs", scope: !2, file: !2, line: 98, type: !237, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!18, !210}
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "rsclp", arg: 1, scope: !236, file: !2, line: 98, type: !210)
!241 = !DILocalVariable(name: "len", scope: !236, file: !2, line: 100, type: !18)
!242 = !DILocalVariable(name: "i", scope: !236, file: !2, line: 101, type: !225)
!243 = !DILocation(line: 98, column: 56, scope: !236)
!244 = !DILocation(line: 100, column: 2, scope: !236)
!245 = !DILocation(line: 100, column: 7, scope: !236)
!246 = !DILocation(line: 101, column: 2, scope: !236)
!247 = !DILocation(line: 101, column: 6, scope: !236)
!248 = !DILocation(line: 103, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !236, file: !2, line: 103, column: 2)
!250 = !DILocation(line: 103, column: 7, scope: !249)
!251 = !DILocation(line: 103, column: 26, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !2, line: 103, column: 2)
!253 = !DILocation(line: 103, column: 28, scope: !252)
!254 = !DILocation(line: 103, column: 2, scope: !249)
!255 = !DILocation(line: 104, column: 35, scope: !252)
!256 = !DILocation(line: 104, column: 42, scope: !252)
!257 = !DILocation(line: 104, column: 10, scope: !252)
!258 = !DILocation(line: 104, column: 7, scope: !252)
!259 = !DILocation(line: 104, column: 3, scope: !252)
!260 = !DILocation(line: 103, column: 49, scope: !252)
!261 = !DILocation(line: 103, column: 2, scope: !252)
!262 = distinct !{!262, !254, !263, !264, !265}
!263 = !DILocation(line: 104, column: 43, scope: !249)
!264 = !{!"llvm.loop.mustprogress"}
!265 = !{!"llvm.loop.unroll.disable"}
!266 = !DILocation(line: 106, column: 9, scope: !236)
!267 = !DILocation(line: 107, column: 1, scope: !236)
!268 = !DILocation(line: 106, column: 2, scope: !236)
!269 = distinct !DISubprogram(name: "rcu_segcblist_add_len", scope: !2, file: !2, line: 210, type: !270, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !210, !18}
!272 = !{!273, !274}
!273 = !DILocalVariable(name: "rsclp", arg: 1, scope: !269, file: !2, line: 210, type: !210)
!274 = !DILocalVariable(name: "v", arg: 2, scope: !269, file: !2, line: 210, type: !18)
!275 = !DILocation(line: 210, column: 50, scope: !269)
!276 = !DILocation(line: 210, column: 62, scope: !269)
!277 = !DILocation(line: 217, column: 2, scope: !269)
!278 = !DILocation(line: 217, column: 2, scope: !279)
!279 = distinct !DILexicalBlock(scope: !269, file: !2, line: 217, column: 2)
!280 = !DILocation(line: 217, column: 2, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !2, line: 217, column: 2)
!282 = !{i64 2152745391}
!283 = !DILocation(line: 218, column: 2, scope: !269)
!284 = !DILocation(line: 218, column: 2, scope: !285)
!285 = distinct !DILexicalBlock(scope: !269, file: !2, line: 218, column: 2)
!286 = !DILocation(line: 218, column: 2, scope: !287)
!287 = distinct !DILexicalBlock(scope: !285, file: !2, line: 218, column: 2)
!288 = !DILocation(line: 218, column: 2, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 218, column: 2)
!290 = !DILocation(line: 219, column: 2, scope: !269)
!291 = !DILocation(line: 219, column: 2, scope: !292)
!292 = distinct !DILexicalBlock(scope: !269, file: !2, line: 219, column: 2)
!293 = !DILocation(line: 219, column: 2, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !2, line: 219, column: 2)
!295 = !{i64 2152747723}
!296 = !DILocation(line: 221, column: 1, scope: !269)
!297 = distinct !DISubprogram(name: "rcu_segcblist_inc_len", scope: !2, file: !2, line: 229, type: !298, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !210}
!300 = !{!301}
!301 = !DILocalVariable(name: "rsclp", arg: 1, scope: !297, file: !2, line: 229, type: !210)
!302 = !DILocation(line: 229, column: 50, scope: !297)
!303 = !DILocation(line: 231, column: 24, scope: !297)
!304 = !DILocation(line: 231, column: 2, scope: !297)
!305 = !DILocation(line: 232, column: 1, scope: !297)
!306 = distinct !DISubprogram(name: "rcu_segcblist_init", scope: !2, file: !2, line: 237, type: !298, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !307)
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "rsclp", arg: 1, scope: !306, file: !2, line: 237, type: !210)
!309 = !DILocalVariable(name: "i", scope: !306, file: !2, line: 239, type: !225)
!310 = !DILocation(line: 237, column: 47, scope: !306)
!311 = !DILocation(line: 239, column: 2, scope: !306)
!312 = !DILocation(line: 239, column: 6, scope: !306)
!313 = !DILocation(line: 241, column: 2, scope: !306)
!314 = !DILocation(line: 241, column: 2, scope: !315)
!315 = distinct !DILexicalBlock(scope: !306, file: !2, line: 241, column: 2)
!316 = !DILocation(line: 242, column: 2, scope: !306)
!317 = !DILocation(line: 242, column: 2, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !2, line: 242, column: 2)
!319 = !DILocation(line: 243, column: 2, scope: !306)
!320 = !DILocation(line: 243, column: 9, scope: !306)
!321 = !DILocation(line: 243, column: 14, scope: !306)
!322 = !DILocation(line: 244, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !306, file: !2, line: 244, column: 2)
!324 = !DILocation(line: 244, column: 7, scope: !323)
!325 = !DILocation(line: 244, column: 14, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !2, line: 244, column: 2)
!327 = !DILocation(line: 244, column: 16, scope: !326)
!328 = !DILocation(line: 244, column: 2, scope: !323)
!329 = !DILocation(line: 245, column: 22, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !2, line: 244, column: 41)
!331 = !DILocation(line: 245, column: 29, scope: !330)
!332 = !DILocation(line: 245, column: 3, scope: !330)
!333 = !DILocation(line: 245, column: 10, scope: !330)
!334 = !DILocation(line: 245, column: 16, scope: !330)
!335 = !DILocation(line: 245, column: 19, scope: !330)
!336 = !DILocation(line: 246, column: 28, scope: !330)
!337 = !DILocation(line: 246, column: 35, scope: !330)
!338 = !DILocation(line: 246, column: 3, scope: !330)
!339 = !DILocation(line: 247, column: 2, scope: !330)
!340 = !DILocation(line: 244, column: 37, scope: !326)
!341 = !DILocation(line: 244, column: 2, scope: !326)
!342 = distinct !{!342, !328, !343, !264, !265}
!343 = !DILocation(line: 247, column: 2, scope: !323)
!344 = !DILocation(line: 248, column: 24, scope: !306)
!345 = !DILocation(line: 248, column: 2, scope: !306)
!346 = !DILocation(line: 249, column: 26, scope: !306)
!347 = !DILocation(line: 249, column: 2, scope: !306)
!348 = !DILocation(line: 250, column: 1, scope: !306)
!349 = distinct !DISubprogram(name: "rcu_segcblist_set_seglen", scope: !2, file: !2, line: 110, type: !350, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !210, !225, !18}
!352 = !{!353, !354, !355}
!353 = !DILocalVariable(name: "rsclp", arg: 1, scope: !349, file: !2, line: 110, type: !210)
!354 = !DILocalVariable(name: "seg", arg: 2, scope: !349, file: !2, line: 110, type: !225)
!355 = !DILocalVariable(name: "v", arg: 3, scope: !349, file: !2, line: 110, type: !18)
!356 = !DILocation(line: 110, column: 60, scope: !349)
!357 = !DILocation(line: 110, column: 71, scope: !349)
!358 = !DILocation(line: 110, column: 81, scope: !349)
!359 = !DILocation(line: 112, column: 2, scope: !349)
!360 = !DILocation(line: 112, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !349, file: !2, line: 112, column: 2)
!362 = !DILocation(line: 112, column: 2, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !2, line: 112, column: 2)
!364 = !DILocation(line: 112, column: 2, scope: !365)
!365 = distinct !DILexicalBlock(scope: !361, file: !2, line: 112, column: 2)
!366 = !DILocation(line: 113, column: 1, scope: !349)
!367 = distinct !DISubprogram(name: "rcu_segcblist_set_len", scope: !2, file: !2, line: 82, type: !270, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !368)
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "rsclp", arg: 1, scope: !367, file: !2, line: 82, type: !210)
!370 = !DILocalVariable(name: "v", arg: 2, scope: !367, file: !2, line: 82, type: !18)
!371 = !DILocation(line: 82, column: 57, scope: !367)
!372 = !DILocation(line: 82, column: 69, scope: !367)
!373 = !DILocation(line: 87, column: 2, scope: !367)
!374 = !DILocation(line: 87, column: 2, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !2, line: 87, column: 2)
!376 = !DILocation(line: 87, column: 2, scope: !377)
!377 = distinct !DILexicalBlock(scope: !375, file: !2, line: 87, column: 2)
!378 = !DILocation(line: 87, column: 2, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !2, line: 87, column: 2)
!380 = !DILocation(line: 89, column: 1, scope: !367)
!381 = distinct !DISubprogram(name: "rcu_segcblist_set_flags", scope: !382, file: !382, line: 58, type: !383, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !385)
!382 = !DIFile(filename: "kernel/rcu/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53dd0e92de94fec219f698e638b49df4")
!383 = !DISubroutineType(types: !384)
!384 = !{null, !210, !225}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "rsclp", arg: 1, scope: !381, file: !382, line: 58, type: !210)
!387 = !DILocalVariable(name: "flags", arg: 2, scope: !381, file: !382, line: 59, type: !225)
!388 = !DILocation(line: 58, column: 66, scope: !381)
!389 = !DILocation(line: 59, column: 13, scope: !381)
!390 = !DILocation(line: 61, column: 2, scope: !381)
!391 = !DILocation(line: 61, column: 2, scope: !392)
!392 = distinct !DILexicalBlock(scope: !381, file: !382, line: 61, column: 2)
!393 = !DILocation(line: 61, column: 2, scope: !394)
!394 = distinct !DILexicalBlock(scope: !392, file: !382, line: 61, column: 2)
!395 = !DILocation(line: 61, column: 2, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !382, line: 61, column: 2)
!397 = !DILocation(line: 62, column: 1, scope: !381)
!398 = distinct !DISubprogram(name: "rcu_segcblist_disable", scope: !2, file: !2, line: 256, type: !298, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !399)
!399 = !{!400, !401, !403, !406, !408}
!400 = !DILocalVariable(name: "rsclp", arg: 1, scope: !398, file: !2, line: 256, type: !210)
!401 = !DILocalVariable(name: "__ret_warn_on", scope: !402, file: !2, line: 258, type: !225)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 258, column: 2)
!403 = !DILocalVariable(name: "__flags", scope: !404, file: !2, line: 258, type: !225)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 258, column: 2)
!405 = distinct !DILexicalBlock(scope: !402, file: !2, line: 258, column: 2)
!406 = !DILocalVariable(name: "__ret_warn_on", scope: !407, file: !2, line: 259, type: !225)
!407 = distinct !DILexicalBlock(scope: !398, file: !2, line: 259, column: 2)
!408 = !DILocalVariable(name: "__flags", scope: !409, file: !2, line: 259, type: !225)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 259, column: 2)
!410 = distinct !DILexicalBlock(scope: !407, file: !2, line: 259, column: 2)
!411 = !DILocation(line: 256, column: 50, scope: !398)
!412 = !DILocation(line: 258, column: 2, scope: !402)
!413 = !DILocation(line: 258, column: 2, scope: !405)
!414 = !DILocation(line: 258, column: 2, scope: !404)
!415 = !DILocation(line: 258, column: 2, scope: !416)
!416 = distinct !DILexicalBlock(scope: !404, file: !2, line: 258, column: 2)
!417 = !DILocation(line: 258, column: 2, scope: !418)
!418 = distinct !DILexicalBlock(scope: !404, file: !2, line: 258, column: 2)
!419 = !{i64 2152755141, i64 2152755170, i64 2152755216, i64 2152755274, i64 2152755328, i64 2152755382, i64 2152755437, i64 2152755468, i64 2152755776, i64 2152755782, i64 2152755829, i64 2152755852, i64 2152755878}
!420 = !DILocation(line: 258, column: 2, scope: !421)
!421 = distinct !DILexicalBlock(scope: !404, file: !2, line: 258, column: 2)
!422 = !DILocation(line: 258, column: 2, scope: !398)
!423 = !DILocation(line: 259, column: 2, scope: !407)
!424 = !DILocation(line: 259, column: 2, scope: !410)
!425 = !DILocation(line: 259, column: 2, scope: !409)
!426 = !DILocation(line: 259, column: 2, scope: !427)
!427 = distinct !DILexicalBlock(scope: !409, file: !2, line: 259, column: 2)
!428 = !DILocation(line: 259, column: 2, scope: !429)
!429 = distinct !DILexicalBlock(scope: !409, file: !2, line: 259, column: 2)
!430 = !{i64 2152756685, i64 2152756714, i64 2152756760, i64 2152756818, i64 2152756872, i64 2152756926, i64 2152756981, i64 2152757012, i64 2152757320, i64 2152757326, i64 2152757373, i64 2152757396, i64 2152757422}
!431 = !DILocation(line: 259, column: 2, scope: !432)
!432 = distinct !DILexicalBlock(scope: !409, file: !2, line: 259, column: 2)
!433 = !DILocation(line: 259, column: 2, scope: !398)
!434 = !DILocation(line: 260, column: 28, scope: !398)
!435 = !DILocation(line: 260, column: 2, scope: !398)
!436 = !DILocation(line: 261, column: 1, scope: !398)
!437 = distinct !DISubprogram(name: "rcu_segcblist_empty", scope: !382, file: !382, line: 43, type: !438, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !442)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !210}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !441)
!441 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!442 = !{!443}
!443 = !DILocalVariable(name: "rsclp", arg: 1, scope: !437, file: !382, line: 43, type: !210)
!444 = !DILocation(line: 43, column: 62, scope: !437)
!445 = !DILocation(line: 45, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !437, file: !382, line: 45, column: 10)
!447 = !DILocation(line: 45, column: 10, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !382, line: 45, column: 10)
!449 = !DILocation(line: 45, column: 9, scope: !437)
!450 = !DILocation(line: 45, column: 2, scope: !437)
!451 = distinct !DISubprogram(name: "rcu_segcblist_n_cbs", scope: !382, file: !382, line: 49, type: !237, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !452)
!452 = !{!453}
!453 = !DILocalVariable(name: "rsclp", arg: 1, scope: !451, file: !382, line: 49, type: !210)
!454 = !DILocation(line: 49, column: 62, scope: !451)
!455 = !DILocation(line: 54, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !382, line: 54, column: 9)
!457 = !DILocation(line: 54, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !382, line: 54, column: 9)
!459 = !DILocation(line: 54, column: 2, scope: !451)
!460 = distinct !DISubprogram(name: "rcu_segcblist_clear_flags", scope: !382, file: !382, line: 64, type: !383, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !461)
!461 = !{!462, !463}
!462 = !DILocalVariable(name: "rsclp", arg: 1, scope: !460, file: !382, line: 64, type: !210)
!463 = !DILocalVariable(name: "flags", arg: 2, scope: !460, file: !382, line: 65, type: !225)
!464 = !DILocation(line: 64, column: 68, scope: !460)
!465 = !DILocation(line: 65, column: 15, scope: !460)
!466 = !DILocation(line: 67, column: 2, scope: !460)
!467 = !DILocation(line: 67, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !460, file: !382, line: 67, column: 2)
!469 = !DILocation(line: 67, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !468, file: !382, line: 67, column: 2)
!471 = !DILocation(line: 67, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !382, line: 67, column: 2)
!473 = !DILocation(line: 68, column: 1, scope: !460)
!474 = distinct !DISubprogram(name: "rcu_segcblist_offload", scope: !2, file: !2, line: 266, type: !475, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !210, !440}
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "rsclp", arg: 1, scope: !474, file: !2, line: 266, type: !210)
!479 = !DILocalVariable(name: "offload", arg: 2, scope: !474, file: !2, line: 266, type: !440)
!480 = !DILocation(line: 266, column: 50, scope: !474)
!481 = !DILocation(line: 266, column: 62, scope: !474)
!482 = !DILocation(line: 268, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !474, file: !2, line: 268, column: 6)
!484 = !{i8 0, i8 2}
!485 = !{}
!486 = !DILocation(line: 268, column: 6, scope: !474)
!487 = !DILocation(line: 269, column: 27, scope: !483)
!488 = !DILocation(line: 269, column: 3, scope: !483)
!489 = !DILocation(line: 271, column: 29, scope: !483)
!490 = !DILocation(line: 271, column: 3, scope: !483)
!491 = !DILocation(line: 272, column: 1, scope: !474)
!492 = distinct !DISubprogram(name: "rcu_segcblist_ready_cbs", scope: !2, file: !2, line: 278, type: !438, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !493)
!493 = !{!494}
!494 = !DILocalVariable(name: "rsclp", arg: 1, scope: !492, file: !2, line: 278, type: !210)
!495 = !DILocation(line: 278, column: 52, scope: !492)
!496 = !DILocation(line: 280, column: 34, scope: !492)
!497 = !DILocation(line: 280, column: 9, scope: !492)
!498 = !DILocation(line: 280, column: 41, scope: !492)
!499 = !DILocation(line: 281, column: 10, scope: !492)
!500 = !DILocation(line: 281, column: 17, scope: !492)
!501 = !DILocation(line: 281, column: 25, scope: !502)
!502 = distinct !DILexicalBlock(scope: !492, file: !2, line: 281, column: 25)
!503 = !DILocation(line: 281, column: 25, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !2, line: 281, column: 25)
!505 = !DILocation(line: 281, column: 22, scope: !492)
!506 = !DILocation(line: 0, scope: !492)
!507 = !DILocation(line: 280, column: 2, scope: !492)
!508 = distinct !DISubprogram(name: "rcu_segcblist_is_enabled", scope: !382, file: !382, line: 80, type: !438, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !509)
!509 = !{!510}
!510 = !DILocalVariable(name: "rsclp", arg: 1, scope: !508, file: !382, line: 80, type: !210)
!511 = !DILocation(line: 80, column: 67, scope: !508)
!512 = !DILocation(line: 82, column: 34, scope: !508)
!513 = !DILocation(line: 82, column: 9, scope: !508)
!514 = !DILocation(line: 82, column: 2, scope: !508)
!515 = distinct !DISubprogram(name: "rcu_segcblist_pend_cbs", scope: !2, file: !2, line: 288, type: !438, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !516)
!516 = !{!517}
!517 = !DILocalVariable(name: "rsclp", arg: 1, scope: !515, file: !2, line: 288, type: !210)
!518 = !DILocation(line: 288, column: 51, scope: !515)
!519 = !DILocation(line: 290, column: 34, scope: !515)
!520 = !DILocation(line: 290, column: 9, scope: !515)
!521 = !DILocation(line: 290, column: 41, scope: !515)
!522 = !DILocation(line: 291, column: 34, scope: !515)
!523 = !DILocation(line: 291, column: 10, scope: !515)
!524 = !DILocation(line: 291, column: 9, scope: !515)
!525 = !DILocation(line: 0, scope: !515)
!526 = !DILocation(line: 290, column: 2, scope: !515)
!527 = distinct !DISubprogram(name: "rcu_segcblist_restempty", scope: !382, file: !382, line: 112, type: !528, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!440, !210, !225}
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "rsclp", arg: 1, scope: !527, file: !382, line: 112, type: !210)
!532 = !DILocalVariable(name: "seg", arg: 2, scope: !527, file: !382, line: 112, type: !225)
!533 = !DILocation(line: 112, column: 66, scope: !527)
!534 = !DILocation(line: 112, column: 77, scope: !527)
!535 = !DILocation(line: 114, column: 10, scope: !536)
!536 = distinct !DILexicalBlock(scope: !527, file: !382, line: 114, column: 10)
!537 = !DILocation(line: 114, column: 10, scope: !538)
!538 = distinct !DILexicalBlock(scope: !536, file: !382, line: 114, column: 10)
!539 = !DILocation(line: 114, column: 10, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !382, line: 114, column: 10)
!541 = !DILocation(line: 114, column: 10, scope: !542)
!542 = distinct !DILexicalBlock(scope: !540, file: !382, line: 114, column: 10)
!543 = !DILocation(line: 114, column: 9, scope: !527)
!544 = !DILocation(line: 114, column: 2, scope: !527)
!545 = distinct !DISubprogram(name: "rcu_segcblist_first_cb", scope: !2, file: !2, line: 298, type: !546, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!25, !210}
!548 = !{!549}
!549 = !DILocalVariable(name: "rsclp", arg: 1, scope: !545, file: !2, line: 298, type: !210)
!550 = !DILocation(line: 298, column: 63, scope: !545)
!551 = !DILocation(line: 300, column: 31, scope: !552)
!552 = distinct !DILexicalBlock(scope: !545, file: !2, line: 300, column: 6)
!553 = !DILocation(line: 300, column: 6, scope: !552)
!554 = !DILocation(line: 300, column: 6, scope: !545)
!555 = !DILocation(line: 301, column: 10, scope: !552)
!556 = !DILocation(line: 301, column: 17, scope: !552)
!557 = !DILocation(line: 301, column: 3, scope: !552)
!558 = !DILocation(line: 302, column: 2, scope: !545)
!559 = !DILocation(line: 303, column: 1, scope: !545)
!560 = distinct !DISubprogram(name: "rcu_segcblist_first_pend_cb", scope: !2, file: !2, line: 312, type: !546, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !561)
!561 = !{!562}
!562 = !DILocalVariable(name: "rsclp", arg: 1, scope: !560, file: !2, line: 312, type: !210)
!563 = !DILocation(line: 312, column: 68, scope: !560)
!564 = !DILocation(line: 314, column: 31, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !2, line: 314, column: 6)
!566 = !DILocation(line: 314, column: 6, scope: !565)
!567 = !DILocation(line: 314, column: 6, scope: !560)
!568 = !DILocation(line: 315, column: 11, scope: !565)
!569 = !DILocation(line: 315, column: 18, scope: !565)
!570 = !DILocation(line: 315, column: 10, scope: !565)
!571 = !DILocation(line: 315, column: 3, scope: !565)
!572 = !DILocation(line: 316, column: 2, scope: !560)
!573 = !DILocation(line: 317, column: 1, scope: !560)
!574 = distinct !DISubprogram(name: "rcu_segcblist_nextgp", scope: !2, file: !2, line: 323, type: !575, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !578)
!575 = !DISubroutineType(types: !576)
!576 = !{!440, !210, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!578 = !{!579, !580}
!579 = !DILocalVariable(name: "rsclp", arg: 1, scope: !574, file: !2, line: 323, type: !210)
!580 = !DILocalVariable(name: "lp", arg: 2, scope: !574, file: !2, line: 323, type: !577)
!581 = !DILocation(line: 323, column: 49, scope: !574)
!582 = !DILocation(line: 323, column: 71, scope: !574)
!583 = !DILocation(line: 325, column: 30, scope: !584)
!584 = distinct !DILexicalBlock(scope: !574, file: !2, line: 325, column: 6)
!585 = !DILocation(line: 325, column: 7, scope: !584)
!586 = !DILocation(line: 325, column: 6, scope: !574)
!587 = !DILocation(line: 326, column: 3, scope: !584)
!588 = !DILocation(line: 327, column: 8, scope: !574)
!589 = !DILocation(line: 327, column: 15, scope: !574)
!590 = !DILocation(line: 327, column: 3, scope: !574)
!591 = !DILocation(line: 327, column: 6, scope: !574)
!592 = !DILocation(line: 328, column: 2, scope: !574)
!593 = !DILocation(line: 329, column: 1, scope: !574)
!594 = distinct !DISubprogram(name: "rcu_segcblist_enqueue", scope: !2, file: !2, line: 340, type: !595, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !210, !25}
!597 = !{!598, !599}
!598 = !DILocalVariable(name: "rsclp", arg: 1, scope: !594, file: !2, line: 340, type: !210)
!599 = !DILocalVariable(name: "rhp", arg: 2, scope: !594, file: !2, line: 341, type: !25)
!600 = !DILocation(line: 340, column: 50, scope: !594)
!601 = !DILocation(line: 341, column: 24, scope: !594)
!602 = !DILocation(line: 343, column: 24, scope: !594)
!603 = !DILocation(line: 343, column: 2, scope: !594)
!604 = !DILocation(line: 344, column: 27, scope: !594)
!605 = !DILocation(line: 344, column: 2, scope: !594)
!606 = !DILocation(line: 345, column: 2, scope: !594)
!607 = !DILocation(line: 345, column: 7, scope: !594)
!608 = !DILocation(line: 345, column: 12, scope: !594)
!609 = !DILocation(line: 346, column: 2, scope: !594)
!610 = !DILocation(line: 346, column: 2, scope: !611)
!611 = distinct !DILexicalBlock(scope: !594, file: !2, line: 346, column: 2)
!612 = !DILocation(line: 346, column: 2, scope: !613)
!613 = distinct !DILexicalBlock(scope: !611, file: !2, line: 346, column: 2)
!614 = !DILocation(line: 346, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !2, line: 346, column: 2)
!616 = !DILocation(line: 347, column: 2, scope: !594)
!617 = !DILocation(line: 347, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !594, file: !2, line: 347, column: 2)
!619 = !DILocation(line: 347, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !2, line: 347, column: 2)
!621 = !DILocation(line: 347, column: 2, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !2, line: 347, column: 2)
!623 = !DILocation(line: 348, column: 1, scope: !594)
!624 = distinct !DISubprogram(name: "rcu_segcblist_inc_seglen", scope: !2, file: !2, line: 138, type: !383, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !625)
!625 = !{!626, !627}
!626 = !DILocalVariable(name: "rsclp", arg: 1, scope: !624, file: !2, line: 138, type: !210)
!627 = !DILocalVariable(name: "seg", arg: 2, scope: !624, file: !2, line: 138, type: !225)
!628 = !DILocation(line: 138, column: 60, scope: !624)
!629 = !DILocation(line: 138, column: 71, scope: !624)
!630 = !DILocation(line: 140, column: 27, scope: !624)
!631 = !DILocation(line: 140, column: 34, scope: !624)
!632 = !DILocation(line: 140, column: 2, scope: !624)
!633 = !DILocation(line: 141, column: 1, scope: !624)
!634 = distinct !DISubprogram(name: "rcu_segcblist_entrain", scope: !2, file: !2, line: 360, type: !635, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!440, !210, !25}
!637 = !{!638, !639, !640}
!638 = !DILocalVariable(name: "rsclp", arg: 1, scope: !634, file: !2, line: 360, type: !210)
!639 = !DILocalVariable(name: "rhp", arg: 2, scope: !634, file: !2, line: 361, type: !25)
!640 = !DILocalVariable(name: "i", scope: !634, file: !2, line: 363, type: !225)
!641 = !DILocation(line: 360, column: 50, scope: !634)
!642 = !DILocation(line: 361, column: 24, scope: !634)
!643 = !DILocation(line: 363, column: 2, scope: !634)
!644 = !DILocation(line: 363, column: 6, scope: !634)
!645 = !DILocation(line: 365, column: 26, scope: !646)
!646 = distinct !DILexicalBlock(scope: !634, file: !2, line: 365, column: 6)
!647 = !DILocation(line: 365, column: 6, scope: !646)
!648 = !DILocation(line: 365, column: 33, scope: !646)
!649 = !DILocation(line: 365, column: 6, scope: !634)
!650 = !DILocation(line: 366, column: 3, scope: !646)
!651 = !DILocation(line: 367, column: 24, scope: !634)
!652 = !DILocation(line: 367, column: 2, scope: !634)
!653 = !DILocation(line: 368, column: 2, scope: !634)
!654 = !DILocation(line: 368, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !634, file: !2, line: 368, column: 2)
!656 = !DILocation(line: 368, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !2, line: 368, column: 2)
!658 = !{i64 2152765603}
!659 = !DILocation(line: 369, column: 2, scope: !634)
!660 = !DILocation(line: 369, column: 7, scope: !634)
!661 = !DILocation(line: 369, column: 12, scope: !634)
!662 = !DILocation(line: 370, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !634, file: !2, line: 370, column: 2)
!664 = !DILocation(line: 370, column: 7, scope: !663)
!665 = !DILocation(line: 370, column: 26, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !2, line: 370, column: 2)
!667 = !DILocation(line: 370, column: 28, scope: !666)
!668 = !DILocation(line: 370, column: 2, scope: !663)
!669 = !DILocation(line: 371, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !2, line: 371, column: 7)
!671 = !DILocation(line: 371, column: 14, scope: !670)
!672 = !DILocation(line: 371, column: 20, scope: !670)
!673 = !DILocation(line: 371, column: 26, scope: !670)
!674 = !DILocation(line: 371, column: 33, scope: !670)
!675 = !DILocation(line: 371, column: 39, scope: !670)
!676 = !DILocation(line: 371, column: 41, scope: !670)
!677 = !DILocation(line: 371, column: 23, scope: !670)
!678 = !DILocation(line: 371, column: 7, scope: !666)
!679 = !DILocation(line: 372, column: 4, scope: !670)
!680 = !DILocation(line: 371, column: 44, scope: !670)
!681 = !DILocation(line: 370, column: 46, scope: !666)
!682 = !DILocation(line: 370, column: 2, scope: !666)
!683 = distinct !{!683, !668, !684, !264, !265}
!684 = !DILocation(line: 372, column: 4, scope: !663)
!685 = !DILocation(line: 373, column: 27, scope: !634)
!686 = !DILocation(line: 373, column: 34, scope: !634)
!687 = !DILocation(line: 373, column: 2, scope: !634)
!688 = !DILocation(line: 374, column: 2, scope: !634)
!689 = !DILocation(line: 374, column: 2, scope: !690)
!690 = distinct !DILexicalBlock(scope: !634, file: !2, line: 374, column: 2)
!691 = !DILocation(line: 374, column: 2, scope: !692)
!692 = distinct !DILexicalBlock(scope: !690, file: !2, line: 374, column: 2)
!693 = !DILocation(line: 374, column: 2, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !2, line: 374, column: 2)
!695 = !DILocation(line: 375, column: 2, scope: !634)
!696 = !DILocation(line: 375, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 375, column: 2)
!698 = distinct !DILexicalBlock(scope: !634, file: !2, line: 375, column: 2)
!699 = !DILocation(line: 375, column: 11, scope: !697)
!700 = !DILocation(line: 375, column: 2, scope: !698)
!701 = !DILocation(line: 376, column: 3, scope: !697)
!702 = !DILocation(line: 376, column: 3, scope: !703)
!703 = distinct !DILexicalBlock(scope: !697, file: !2, line: 376, column: 3)
!704 = !DILocation(line: 376, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !703, file: !2, line: 376, column: 3)
!706 = !DILocation(line: 376, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !2, line: 376, column: 3)
!708 = !DILocation(line: 375, column: 30, scope: !697)
!709 = !DILocation(line: 375, column: 2, scope: !697)
!710 = distinct !{!710, !700, !711, !264, !265}
!711 = !DILocation(line: 376, column: 3, scope: !698)
!712 = !DILocation(line: 377, column: 2, scope: !634)
!713 = !DILocation(line: 378, column: 1, scope: !634)
!714 = distinct !DISubprogram(name: "rcu_segcblist_extract_done_cbs", scope: !2, file: !2, line: 385, type: !715, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !210, !62}
!717 = !{!718, !719, !720}
!718 = !DILocalVariable(name: "rsclp", arg: 1, scope: !714, file: !2, line: 385, type: !210)
!719 = !DILocalVariable(name: "rclp", arg: 2, scope: !714, file: !2, line: 386, type: !62)
!720 = !DILocalVariable(name: "i", scope: !714, file: !2, line: 388, type: !225)
!721 = !DILocation(line: 385, column: 59, scope: !714)
!722 = !DILocation(line: 386, column: 28, scope: !714)
!723 = !DILocation(line: 388, column: 2, scope: !714)
!724 = !DILocation(line: 388, column: 6, scope: !714)
!725 = !DILocation(line: 390, column: 31, scope: !726)
!726 = distinct !DILexicalBlock(scope: !714, file: !2, line: 390, column: 6)
!727 = !DILocation(line: 390, column: 7, scope: !726)
!728 = !DILocation(line: 390, column: 6, scope: !714)
!729 = !DILocation(line: 391, column: 3, scope: !726)
!730 = !DILocation(line: 392, column: 39, scope: !714)
!731 = !DILocation(line: 392, column: 14, scope: !714)
!732 = !DILocation(line: 392, column: 2, scope: !714)
!733 = !DILocation(line: 392, column: 8, scope: !714)
!734 = !DILocation(line: 392, column: 12, scope: !714)
!735 = !DILocation(line: 393, column: 16, scope: !714)
!736 = !DILocation(line: 393, column: 23, scope: !714)
!737 = !DILocation(line: 393, column: 3, scope: !714)
!738 = !DILocation(line: 393, column: 9, scope: !714)
!739 = !DILocation(line: 393, column: 14, scope: !714)
!740 = !DILocation(line: 394, column: 2, scope: !714)
!741 = !DILocation(line: 394, column: 2, scope: !742)
!742 = distinct !DILexicalBlock(scope: !714, file: !2, line: 394, column: 2)
!743 = !DILocation(line: 394, column: 2, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !2, line: 394, column: 2)
!745 = !DILocation(line: 394, column: 2, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !2, line: 394, column: 2)
!747 = !DILocation(line: 395, column: 2, scope: !714)
!748 = !DILocation(line: 395, column: 2, scope: !749)
!749 = distinct !DILexicalBlock(scope: !714, file: !2, line: 395, column: 2)
!750 = !DILocation(line: 395, column: 2, scope: !751)
!751 = distinct !DILexicalBlock(scope: !749, file: !2, line: 395, column: 2)
!752 = !DILocation(line: 395, column: 2, scope: !753)
!753 = distinct !DILexicalBlock(scope: !749, file: !2, line: 395, column: 2)
!754 = !DILocation(line: 396, column: 15, scope: !714)
!755 = !DILocation(line: 396, column: 22, scope: !714)
!756 = !DILocation(line: 396, column: 2, scope: !714)
!757 = !DILocation(line: 396, column: 8, scope: !714)
!758 = !DILocation(line: 396, column: 13, scope: !714)
!759 = !DILocation(line: 397, column: 9, scope: !760)
!760 = distinct !DILexicalBlock(scope: !714, file: !2, line: 397, column: 2)
!761 = !DILocation(line: 397, column: 7, scope: !760)
!762 = !DILocation(line: 397, column: 33, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !2, line: 397, column: 2)
!764 = !DILocation(line: 397, column: 35, scope: !763)
!765 = !DILocation(line: 397, column: 2, scope: !760)
!766 = !DILocation(line: 398, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !2, line: 398, column: 7)
!768 = !DILocation(line: 398, column: 14, scope: !767)
!769 = !DILocation(line: 398, column: 20, scope: !767)
!770 = !DILocation(line: 398, column: 26, scope: !767)
!771 = !DILocation(line: 398, column: 33, scope: !767)
!772 = !DILocation(line: 398, column: 23, scope: !767)
!773 = !DILocation(line: 398, column: 7, scope: !763)
!774 = !DILocation(line: 399, column: 4, scope: !767)
!775 = !DILocation(line: 399, column: 4, scope: !776)
!776 = distinct !DILexicalBlock(scope: !767, file: !2, line: 399, column: 4)
!777 = !DILocation(line: 399, column: 4, scope: !778)
!778 = distinct !DILexicalBlock(scope: !776, file: !2, line: 399, column: 4)
!779 = !DILocation(line: 399, column: 4, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !2, line: 399, column: 4)
!781 = !DILocation(line: 398, column: 52, scope: !767)
!782 = !DILocation(line: 397, column: 54, scope: !763)
!783 = !DILocation(line: 397, column: 2, scope: !763)
!784 = distinct !{!784, !765, !785, !264, !265}
!785 = !DILocation(line: 399, column: 4, scope: !760)
!786 = !DILocation(line: 400, column: 27, scope: !714)
!787 = !DILocation(line: 400, column: 2, scope: !714)
!788 = !DILocation(line: 401, column: 1, scope: !714)
!789 = distinct !DISubprogram(name: "rcu_segcblist_extract_pend_cbs", scope: !2, file: !2, line: 410, type: !715, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !790)
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "rsclp", arg: 1, scope: !789, file: !2, line: 410, type: !210)
!792 = !DILocalVariable(name: "rclp", arg: 2, scope: !789, file: !2, line: 411, type: !62)
!793 = !DILocalVariable(name: "i", scope: !789, file: !2, line: 413, type: !225)
!794 = !DILocation(line: 410, column: 59, scope: !789)
!795 = !DILocation(line: 411, column: 28, scope: !789)
!796 = !DILocation(line: 413, column: 2, scope: !789)
!797 = !DILocation(line: 413, column: 6, scope: !789)
!798 = !DILocation(line: 415, column: 30, scope: !799)
!799 = distinct !DILexicalBlock(scope: !789, file: !2, line: 415, column: 6)
!800 = !DILocation(line: 415, column: 7, scope: !799)
!801 = !DILocation(line: 415, column: 6, scope: !789)
!802 = !DILocation(line: 416, column: 3, scope: !799)
!803 = !DILocation(line: 417, column: 2, scope: !789)
!804 = !DILocation(line: 417, column: 8, scope: !789)
!805 = !DILocation(line: 417, column: 12, scope: !789)
!806 = !DILocation(line: 418, column: 17, scope: !789)
!807 = !DILocation(line: 418, column: 24, scope: !789)
!808 = !DILocation(line: 418, column: 16, scope: !789)
!809 = !DILocation(line: 418, column: 3, scope: !789)
!810 = !DILocation(line: 418, column: 9, scope: !789)
!811 = !DILocation(line: 418, column: 14, scope: !789)
!812 = !DILocation(line: 419, column: 15, scope: !789)
!813 = !DILocation(line: 419, column: 22, scope: !789)
!814 = !DILocation(line: 419, column: 2, scope: !789)
!815 = !DILocation(line: 419, column: 8, scope: !789)
!816 = !DILocation(line: 419, column: 13, scope: !789)
!817 = !DILocation(line: 420, column: 2, scope: !789)
!818 = !DILocation(line: 420, column: 2, scope: !819)
!819 = distinct !DILexicalBlock(scope: !789, file: !2, line: 420, column: 2)
!820 = !DILocation(line: 420, column: 2, scope: !821)
!821 = distinct !DILexicalBlock(scope: !819, file: !2, line: 420, column: 2)
!822 = !DILocation(line: 420, column: 2, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !2, line: 420, column: 2)
!824 = !DILocation(line: 421, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !789, file: !2, line: 421, column: 2)
!826 = !DILocation(line: 421, column: 7, scope: !825)
!827 = !DILocation(line: 421, column: 30, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 421, column: 2)
!829 = !DILocation(line: 421, column: 32, scope: !828)
!830 = !DILocation(line: 421, column: 2, scope: !825)
!831 = !DILocation(line: 422, column: 41, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !2, line: 421, column: 57)
!833 = !DILocation(line: 422, column: 48, scope: !832)
!834 = !DILocation(line: 422, column: 16, scope: !832)
!835 = !DILocation(line: 422, column: 3, scope: !832)
!836 = !DILocation(line: 422, column: 9, scope: !832)
!837 = !DILocation(line: 422, column: 13, scope: !832)
!838 = !DILocation(line: 423, column: 3, scope: !832)
!839 = !DILocation(line: 423, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !832, file: !2, line: 423, column: 3)
!841 = !DILocation(line: 423, column: 3, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !2, line: 423, column: 3)
!843 = !DILocation(line: 423, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 423, column: 3)
!845 = !DILocation(line: 424, column: 28, scope: !832)
!846 = !DILocation(line: 424, column: 35, scope: !832)
!847 = !DILocation(line: 424, column: 3, scope: !832)
!848 = !DILocation(line: 425, column: 2, scope: !832)
!849 = !DILocation(line: 421, column: 53, scope: !828)
!850 = !DILocation(line: 421, column: 2, scope: !828)
!851 = distinct !{!851, !830, !852, !264, !265}
!852 = !DILocation(line: 425, column: 2, scope: !825)
!853 = !DILocation(line: 426, column: 1, scope: !789)
!854 = distinct !DISubprogram(name: "rcu_segcblist_insert_count", scope: !2, file: !2, line: 432, type: !715, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !855)
!855 = !{!856, !857}
!856 = !DILocalVariable(name: "rsclp", arg: 1, scope: !854, file: !2, line: 432, type: !210)
!857 = !DILocalVariable(name: "rclp", arg: 2, scope: !854, file: !2, line: 433, type: !62)
!858 = !DILocation(line: 432, column: 55, scope: !854)
!859 = !DILocation(line: 433, column: 24, scope: !854)
!860 = !DILocation(line: 435, column: 24, scope: !854)
!861 = !DILocation(line: 435, column: 31, scope: !854)
!862 = !DILocation(line: 435, column: 37, scope: !854)
!863 = !DILocation(line: 435, column: 2, scope: !854)
!864 = !DILocation(line: 436, column: 1, scope: !854)
!865 = distinct !DISubprogram(name: "rcu_segcblist_insert_done_cbs", scope: !2, file: !2, line: 442, type: !715, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !866)
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "rsclp", arg: 1, scope: !865, file: !2, line: 442, type: !210)
!868 = !DILocalVariable(name: "rclp", arg: 2, scope: !865, file: !2, line: 443, type: !62)
!869 = !DILocalVariable(name: "i", scope: !865, file: !2, line: 445, type: !225)
!870 = !DILocation(line: 442, column: 58, scope: !865)
!871 = !DILocation(line: 443, column: 27, scope: !865)
!872 = !DILocation(line: 445, column: 2, scope: !865)
!873 = !DILocation(line: 445, column: 6, scope: !865)
!874 = !DILocation(line: 447, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !865, file: !2, line: 447, column: 6)
!876 = !DILocation(line: 447, column: 13, scope: !875)
!877 = !DILocation(line: 447, column: 6, scope: !865)
!878 = !DILocation(line: 448, column: 3, scope: !875)
!879 = !DILocation(line: 449, column: 27, scope: !865)
!880 = !DILocation(line: 449, column: 49, scope: !865)
!881 = !DILocation(line: 449, column: 55, scope: !865)
!882 = !DILocation(line: 449, column: 2, scope: !865)
!883 = !DILocation(line: 450, column: 16, scope: !865)
!884 = !DILocation(line: 450, column: 23, scope: !865)
!885 = !DILocation(line: 450, column: 3, scope: !865)
!886 = !DILocation(line: 450, column: 9, scope: !865)
!887 = !DILocation(line: 450, column: 14, scope: !865)
!888 = !DILocation(line: 451, column: 2, scope: !865)
!889 = !DILocation(line: 451, column: 2, scope: !890)
!890 = distinct !DILexicalBlock(scope: !865, file: !2, line: 451, column: 2)
!891 = !DILocation(line: 451, column: 2, scope: !892)
!892 = distinct !DILexicalBlock(scope: !890, file: !2, line: 451, column: 2)
!893 = !DILocation(line: 451, column: 2, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !2, line: 451, column: 2)
!895 = !DILocation(line: 452, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !865, file: !2, line: 452, column: 2)
!897 = !DILocation(line: 452, column: 7, scope: !896)
!898 = !DILocation(line: 452, column: 26, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 452, column: 2)
!900 = !DILocation(line: 452, column: 28, scope: !899)
!901 = !DILocation(line: 452, column: 2, scope: !896)
!902 = !DILocation(line: 453, column: 8, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !2, line: 453, column: 7)
!904 = !DILocation(line: 453, column: 15, scope: !903)
!905 = !DILocation(line: 453, column: 23, scope: !903)
!906 = !DILocation(line: 453, column: 30, scope: !903)
!907 = !DILocation(line: 453, column: 36, scope: !903)
!908 = !DILocation(line: 453, column: 20, scope: !903)
!909 = !DILocation(line: 453, column: 7, scope: !899)
!910 = !DILocation(line: 454, column: 4, scope: !903)
!911 = !DILocation(line: 454, column: 4, scope: !912)
!912 = distinct !DILexicalBlock(scope: !903, file: !2, line: 454, column: 4)
!913 = !DILocation(line: 454, column: 4, scope: !914)
!914 = distinct !DILexicalBlock(scope: !912, file: !2, line: 454, column: 4)
!915 = !DILocation(line: 454, column: 4, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !2, line: 454, column: 4)
!917 = !DILocation(line: 456, column: 4, scope: !903)
!918 = !DILocation(line: 453, column: 37, scope: !903)
!919 = !DILocation(line: 452, column: 49, scope: !899)
!920 = !DILocation(line: 452, column: 2, scope: !899)
!921 = distinct !{!921, !901, !922, !264, !265}
!922 = !DILocation(line: 456, column: 4, scope: !896)
!923 = !DILocation(line: 457, column: 2, scope: !865)
!924 = !DILocation(line: 457, column: 8, scope: !865)
!925 = !DILocation(line: 457, column: 13, scope: !865)
!926 = !DILocation(line: 458, column: 16, scope: !865)
!927 = !DILocation(line: 458, column: 22, scope: !865)
!928 = !DILocation(line: 458, column: 2, scope: !865)
!929 = !DILocation(line: 458, column: 8, scope: !865)
!930 = !DILocation(line: 458, column: 13, scope: !865)
!931 = !DILocation(line: 459, column: 1, scope: !865)
!932 = distinct !DISubprogram(name: "rcu_segcblist_add_seglen", scope: !2, file: !2, line: 116, type: !350, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !933)
!933 = !{!934, !935, !936}
!934 = !DILocalVariable(name: "rsclp", arg: 1, scope: !932, file: !2, line: 116, type: !210)
!935 = !DILocalVariable(name: "seg", arg: 2, scope: !932, file: !2, line: 116, type: !225)
!936 = !DILocalVariable(name: "v", arg: 3, scope: !932, file: !2, line: 116, type: !18)
!937 = !DILocation(line: 116, column: 60, scope: !932)
!938 = !DILocation(line: 116, column: 71, scope: !932)
!939 = !DILocation(line: 116, column: 81, scope: !932)
!940 = !DILocation(line: 118, column: 2, scope: !932)
!941 = !DILocation(line: 118, column: 2, scope: !942)
!942 = distinct !DILexicalBlock(scope: !932, file: !2, line: 118, column: 2)
!943 = !DILocation(line: 118, column: 2, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !2, line: 118, column: 2)
!945 = !DILocation(line: 118, column: 2, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !2, line: 118, column: 2)
!947 = !DILocation(line: 119, column: 1, scope: !932)
!948 = distinct !DISubprogram(name: "rcu_segcblist_insert_pend_cbs", scope: !2, file: !2, line: 465, type: !715, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !949)
!949 = !{!950, !951}
!950 = !DILocalVariable(name: "rsclp", arg: 1, scope: !948, file: !2, line: 465, type: !210)
!951 = !DILocalVariable(name: "rclp", arg: 2, scope: !948, file: !2, line: 466, type: !62)
!952 = !DILocation(line: 465, column: 58, scope: !948)
!953 = !DILocation(line: 466, column: 27, scope: !948)
!954 = !DILocation(line: 468, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !948, file: !2, line: 468, column: 6)
!956 = !DILocation(line: 468, column: 13, scope: !955)
!957 = !DILocation(line: 468, column: 6, scope: !948)
!958 = !DILocation(line: 469, column: 3, scope: !955)
!959 = !DILocation(line: 471, column: 27, scope: !948)
!960 = !DILocation(line: 471, column: 49, scope: !948)
!961 = !DILocation(line: 471, column: 55, scope: !948)
!962 = !DILocation(line: 471, column: 2, scope: !948)
!963 = !DILocation(line: 472, column: 2, scope: !948)
!964 = !DILocation(line: 472, column: 2, scope: !965)
!965 = distinct !DILexicalBlock(scope: !948, file: !2, line: 472, column: 2)
!966 = !DILocation(line: 472, column: 2, scope: !967)
!967 = distinct !DILexicalBlock(scope: !965, file: !2, line: 472, column: 2)
!968 = !DILocation(line: 472, column: 2, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !2, line: 472, column: 2)
!970 = !DILocation(line: 473, column: 2, scope: !948)
!971 = !DILocation(line: 473, column: 2, scope: !972)
!972 = distinct !DILexicalBlock(scope: !948, file: !2, line: 473, column: 2)
!973 = !DILocation(line: 473, column: 2, scope: !974)
!974 = distinct !DILexicalBlock(scope: !972, file: !2, line: 473, column: 2)
!975 = !DILocation(line: 473, column: 2, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !2, line: 473, column: 2)
!977 = !DILocation(line: 474, column: 1, scope: !948)
!978 = distinct !DISubprogram(name: "rcu_segcblist_advance", scope: !2, file: !2, line: 480, type: !979, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !210, !220}
!981 = !{!982, !983, !984, !985, !986, !988}
!982 = !DILocalVariable(name: "rsclp", arg: 1, scope: !978, file: !2, line: 480, type: !210)
!983 = !DILocalVariable(name: "seq", arg: 2, scope: !978, file: !2, line: 480, type: !220)
!984 = !DILocalVariable(name: "i", scope: !978, file: !2, line: 482, type: !225)
!985 = !DILocalVariable(name: "j", scope: !978, file: !2, line: 482, type: !225)
!986 = !DILocalVariable(name: "__ret_warn_on", scope: !987, file: !2, line: 484, type: !225)
!987 = distinct !DILexicalBlock(scope: !978, file: !2, line: 484, column: 2)
!988 = !DILocalVariable(name: "__flags", scope: !989, file: !2, line: 484, type: !225)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 484, column: 2)
!990 = distinct !DILexicalBlock(scope: !987, file: !2, line: 484, column: 2)
!991 = !DILocation(line: 480, column: 50, scope: !978)
!992 = !DILocation(line: 480, column: 71, scope: !978)
!993 = !DILocation(line: 482, column: 2, scope: !978)
!994 = !DILocation(line: 482, column: 6, scope: !978)
!995 = !DILocation(line: 482, column: 9, scope: !978)
!996 = !DILocation(line: 484, column: 2, scope: !987)
!997 = !DILocation(line: 484, column: 2, scope: !990)
!998 = !DILocation(line: 484, column: 2, scope: !989)
!999 = !DILocation(line: 484, column: 2, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !989, file: !2, line: 484, column: 2)
!1001 = !DILocation(line: 484, column: 2, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !989, file: !2, line: 484, column: 2)
!1003 = !{i64 2152794637, i64 2152794666, i64 2152794712, i64 2152794770, i64 2152794824, i64 2152794878, i64 2152794933, i64 2152794964, i64 2152795272, i64 2152795278, i64 2152795325, i64 2152795348, i64 2152795374}
!1004 = !DILocation(line: 484, column: 2, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !989, file: !2, line: 484, column: 2)
!1006 = !DILocation(line: 484, column: 2, scope: !978)
!1007 = !DILocation(line: 485, column: 30, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !978, file: !2, line: 485, column: 6)
!1009 = !DILocation(line: 485, column: 6, scope: !1008)
!1010 = !DILocation(line: 485, column: 6, scope: !978)
!1011 = !DILocation(line: 486, column: 3, scope: !1008)
!1012 = !DILocation(line: 492, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !978, file: !2, line: 492, column: 2)
!1014 = !DILocation(line: 492, column: 7, scope: !1013)
!1015 = !DILocation(line: 492, column: 26, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 492, column: 2)
!1017 = !DILocation(line: 492, column: 28, scope: !1016)
!1018 = !DILocation(line: 492, column: 2, scope: !1013)
!1019 = !DILocation(line: 493, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 493, column: 7)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 492, column: 50)
!1022 = !DILocation(line: 493, column: 7, scope: !1021)
!1023 = !DILocation(line: 494, column: 4, scope: !1020)
!1024 = !DILocation(line: 495, column: 3, scope: !1021)
!1025 = !DILocation(line: 495, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 495, column: 3)
!1027 = !DILocation(line: 495, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 495, column: 3)
!1029 = !DILocation(line: 495, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 495, column: 3)
!1031 = !DILocation(line: 496, column: 29, scope: !1021)
!1032 = !DILocation(line: 496, column: 36, scope: !1021)
!1033 = !DILocation(line: 496, column: 3, scope: !1021)
!1034 = !DILocation(line: 497, column: 2, scope: !1021)
!1035 = !DILocation(line: 492, column: 46, scope: !1016)
!1036 = !DILocation(line: 492, column: 2, scope: !1016)
!1037 = distinct !{!1037, !1018, !1038, !264, !265}
!1038 = !DILocation(line: 497, column: 2, scope: !1013)
!1039 = !DILocation(line: 500, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !978, file: !2, line: 500, column: 6)
!1041 = !DILocation(line: 500, column: 8, scope: !1040)
!1042 = !DILocation(line: 500, column: 6, scope: !978)
!1043 = !DILocation(line: 501, column: 3, scope: !1040)
!1044 = !DILocation(line: 504, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !978, file: !2, line: 504, column: 2)
!1046 = !DILocation(line: 504, column: 7, scope: !1045)
!1047 = !DILocation(line: 504, column: 26, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 504, column: 2)
!1049 = !DILocation(line: 504, column: 30, scope: !1048)
!1050 = !DILocation(line: 504, column: 28, scope: !1048)
!1051 = !DILocation(line: 504, column: 2, scope: !1045)
!1052 = !DILocation(line: 505, column: 3, scope: !1048)
!1053 = !DILocation(line: 505, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 505, column: 3)
!1055 = !DILocation(line: 505, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 505, column: 3)
!1057 = !DILocation(line: 505, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 505, column: 3)
!1059 = !DILocation(line: 504, column: 34, scope: !1048)
!1060 = !DILocation(line: 504, column: 2, scope: !1048)
!1061 = distinct !{!1061, !1051, !1062, !264, !265}
!1062 = !DILocation(line: 505, column: 3, scope: !1045)
!1063 = !DILocation(line: 513, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !978, file: !2, line: 513, column: 2)
!1065 = !DILocation(line: 513, column: 7, scope: !1064)
!1066 = !DILocation(line: 513, column: 26, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 513, column: 2)
!1068 = !DILocation(line: 513, column: 28, scope: !1067)
!1069 = !DILocation(line: 513, column: 2, scope: !1064)
!1070 = !DILocation(line: 514, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 514, column: 7)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 513, column: 55)
!1073 = !DILocation(line: 514, column: 14, scope: !1071)
!1074 = !DILocation(line: 514, column: 20, scope: !1071)
!1075 = !DILocation(line: 514, column: 26, scope: !1071)
!1076 = !DILocation(line: 514, column: 33, scope: !1071)
!1077 = !DILocation(line: 514, column: 23, scope: !1071)
!1078 = !DILocation(line: 514, column: 7, scope: !1072)
!1079 = !DILocation(line: 515, column: 4, scope: !1071)
!1080 = !DILocation(line: 516, column: 3, scope: !1072)
!1081 = !DILocation(line: 516, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 516, column: 3)
!1083 = !DILocation(line: 516, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 516, column: 3)
!1085 = !DILocation(line: 516, column: 3, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 516, column: 3)
!1087 = !DILocation(line: 517, column: 29, scope: !1072)
!1088 = !DILocation(line: 517, column: 36, scope: !1072)
!1089 = !DILocation(line: 517, column: 39, scope: !1072)
!1090 = !DILocation(line: 517, column: 3, scope: !1072)
!1091 = !DILocation(line: 518, column: 22, scope: !1072)
!1092 = !DILocation(line: 518, column: 29, scope: !1072)
!1093 = !DILocation(line: 518, column: 36, scope: !1072)
!1094 = !DILocation(line: 518, column: 3, scope: !1072)
!1095 = !DILocation(line: 518, column: 10, scope: !1072)
!1096 = !DILocation(line: 518, column: 17, scope: !1072)
!1097 = !DILocation(line: 518, column: 20, scope: !1072)
!1098 = !DILocation(line: 519, column: 2, scope: !1072)
!1099 = !DILocation(line: 513, column: 46, scope: !1067)
!1100 = !DILocation(line: 513, column: 51, scope: !1067)
!1101 = !DILocation(line: 513, column: 2, scope: !1067)
!1102 = distinct !{!1102, !1069, !1103, !264, !265}
!1103 = !DILocation(line: 519, column: 2, scope: !1064)
!1104 = !DILocation(line: 520, column: 1, scope: !978)
!1105 = distinct !DISubprogram(name: "rcu_segcblist_move_seglen", scope: !2, file: !2, line: 122, type: !1106, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !210, !225, !225}
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "rsclp", arg: 1, scope: !1105, file: !2, line: 122, type: !210)
!1110 = !DILocalVariable(name: "from", arg: 2, scope: !1105, file: !2, line: 122, type: !225)
!1111 = !DILocalVariable(name: "to", arg: 3, scope: !1105, file: !2, line: 122, type: !225)
!1112 = !DILocalVariable(name: "len", scope: !1105, file: !2, line: 124, type: !18)
!1113 = !DILocation(line: 122, column: 61, scope: !1105)
!1114 = !DILocation(line: 122, column: 72, scope: !1105)
!1115 = !DILocation(line: 122, column: 82, scope: !1105)
!1116 = !DILocation(line: 124, column: 2, scope: !1105)
!1117 = !DILocation(line: 124, column: 7, scope: !1105)
!1118 = !DILocation(line: 126, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 126, column: 6)
!1120 = !DILocation(line: 126, column: 14, scope: !1119)
!1121 = !DILocation(line: 126, column: 11, scope: !1119)
!1122 = !DILocation(line: 126, column: 6, scope: !1105)
!1123 = !DILocation(line: 127, column: 3, scope: !1119)
!1124 = !DILocation(line: 129, column: 33, scope: !1105)
!1125 = !DILocation(line: 129, column: 40, scope: !1105)
!1126 = !DILocation(line: 129, column: 8, scope: !1105)
!1127 = !DILocation(line: 129, column: 6, scope: !1105)
!1128 = !DILocation(line: 130, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 130, column: 6)
!1130 = !DILocation(line: 130, column: 6, scope: !1105)
!1131 = !DILocation(line: 131, column: 3, scope: !1129)
!1132 = !DILocation(line: 133, column: 27, scope: !1105)
!1133 = !DILocation(line: 133, column: 34, scope: !1105)
!1134 = !DILocation(line: 133, column: 38, scope: !1105)
!1135 = !DILocation(line: 133, column: 2, scope: !1105)
!1136 = !DILocation(line: 134, column: 27, scope: !1105)
!1137 = !DILocation(line: 134, column: 34, scope: !1105)
!1138 = !DILocation(line: 134, column: 2, scope: !1105)
!1139 = !DILocation(line: 135, column: 1, scope: !1105)
!1140 = distinct !DISubprogram(name: "rcu_segcblist_accelerate", scope: !2, file: !2, line: 537, type: !1141, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!440, !210, !220}
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1150}
!1144 = !DILocalVariable(name: "rsclp", arg: 1, scope: !1140, file: !2, line: 537, type: !210)
!1145 = !DILocalVariable(name: "seq", arg: 2, scope: !1140, file: !2, line: 537, type: !220)
!1146 = !DILocalVariable(name: "i", scope: !1140, file: !2, line: 539, type: !225)
!1147 = !DILocalVariable(name: "j", scope: !1140, file: !2, line: 539, type: !225)
!1148 = !DILocalVariable(name: "__ret_warn_on", scope: !1149, file: !2, line: 541, type: !225)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 541, column: 2)
!1150 = !DILocalVariable(name: "__flags", scope: !1151, file: !2, line: 541, type: !225)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 541, column: 2)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 541, column: 2)
!1153 = !DILocation(line: 537, column: 53, scope: !1140)
!1154 = !DILocation(line: 537, column: 74, scope: !1140)
!1155 = !DILocation(line: 539, column: 2, scope: !1140)
!1156 = !DILocation(line: 539, column: 6, scope: !1140)
!1157 = !DILocation(line: 539, column: 9, scope: !1140)
!1158 = !DILocation(line: 541, column: 2, scope: !1149)
!1159 = !DILocation(line: 541, column: 2, scope: !1152)
!1160 = !DILocation(line: 541, column: 2, scope: !1151)
!1161 = !DILocation(line: 541, column: 2, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 541, column: 2)
!1163 = !DILocation(line: 541, column: 2, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 541, column: 2)
!1165 = !{i64 2152802892, i64 2152802921, i64 2152802967, i64 2152803025, i64 2152803079, i64 2152803133, i64 2152803188, i64 2152803219, i64 2152803527, i64 2152803533, i64 2152803580, i64 2152803603, i64 2152803629}
!1166 = !DILocation(line: 541, column: 2, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 541, column: 2)
!1168 = !DILocation(line: 541, column: 2, scope: !1140)
!1169 = !DILocation(line: 542, column: 30, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 542, column: 6)
!1171 = !DILocation(line: 542, column: 6, scope: !1170)
!1172 = !DILocation(line: 542, column: 6, scope: !1140)
!1173 = !DILocation(line: 543, column: 3, scope: !1170)
!1174 = !DILocation(line: 553, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 553, column: 2)
!1176 = !DILocation(line: 553, column: 7, scope: !1175)
!1177 = !DILocation(line: 553, column: 32, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 553, column: 2)
!1179 = !DILocation(line: 553, column: 34, scope: !1178)
!1180 = !DILocation(line: 553, column: 2, scope: !1175)
!1181 = !DILocation(line: 554, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 554, column: 7)
!1183 = !DILocation(line: 554, column: 14, scope: !1182)
!1184 = !DILocation(line: 554, column: 20, scope: !1182)
!1185 = !DILocation(line: 554, column: 26, scope: !1182)
!1186 = !DILocation(line: 554, column: 33, scope: !1182)
!1187 = !DILocation(line: 554, column: 39, scope: !1182)
!1188 = !DILocation(line: 554, column: 41, scope: !1182)
!1189 = !DILocation(line: 554, column: 23, scope: !1182)
!1190 = !DILocation(line: 554, column: 46, scope: !1182)
!1191 = !DILocation(line: 555, column: 7, scope: !1182)
!1192 = !DILocation(line: 554, column: 7, scope: !1178)
!1193 = !DILocation(line: 556, column: 4, scope: !1182)
!1194 = !DILocation(line: 553, column: 52, scope: !1178)
!1195 = !DILocation(line: 553, column: 2, scope: !1178)
!1196 = distinct !{!1196, !1180, !1197, !264, !265}
!1197 = !DILocation(line: 556, column: 4, scope: !1175)
!1198 = !DILocation(line: 579, column: 30, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 579, column: 6)
!1200 = !DILocation(line: 579, column: 37, scope: !1199)
!1201 = !DILocation(line: 579, column: 6, scope: !1199)
!1202 = !DILocation(line: 579, column: 40, scope: !1199)
!1203 = !DILocation(line: 579, column: 43, scope: !1199)
!1204 = !DILocation(line: 579, column: 47, scope: !1199)
!1205 = !DILocation(line: 579, column: 6, scope: !1140)
!1206 = !DILocation(line: 580, column: 3, scope: !1199)
!1207 = !DILocation(line: 583, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 583, column: 2)
!1209 = !DILocation(line: 583, column: 13, scope: !1208)
!1210 = !DILocation(line: 583, column: 9, scope: !1208)
!1211 = !DILocation(line: 583, column: 7, scope: !1208)
!1212 = !DILocation(line: 583, column: 18, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 583, column: 2)
!1214 = !DILocation(line: 583, column: 20, scope: !1213)
!1215 = !DILocation(line: 583, column: 2, scope: !1208)
!1216 = !DILocation(line: 584, column: 29, scope: !1213)
!1217 = !DILocation(line: 584, column: 36, scope: !1213)
!1218 = !DILocation(line: 584, column: 39, scope: !1213)
!1219 = !DILocation(line: 584, column: 3, scope: !1213)
!1220 = !DILocation(line: 583, column: 39, scope: !1213)
!1221 = !DILocation(line: 583, column: 2, scope: !1213)
!1222 = distinct !{!1222, !1215, !1223, !264, !265}
!1223 = !DILocation(line: 584, column: 40, scope: !1208)
!1224 = !DILocation(line: 593, column: 2, scope: !1140)
!1225 = !DILocation(line: 593, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 593, column: 2)
!1227 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 593, column: 2)
!1228 = !DILocation(line: 593, column: 11, scope: !1226)
!1229 = !DILocation(line: 593, column: 2, scope: !1227)
!1230 = !DILocation(line: 594, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 593, column: 33)
!1232 = !DILocation(line: 594, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 594, column: 3)
!1234 = !DILocation(line: 594, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 594, column: 3)
!1236 = !DILocation(line: 594, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 594, column: 3)
!1238 = !DILocation(line: 595, column: 22, scope: !1231)
!1239 = !DILocation(line: 595, column: 3, scope: !1231)
!1240 = !DILocation(line: 595, column: 10, scope: !1231)
!1241 = !DILocation(line: 595, column: 17, scope: !1231)
!1242 = !DILocation(line: 595, column: 20, scope: !1231)
!1243 = !DILocation(line: 596, column: 2, scope: !1231)
!1244 = !DILocation(line: 593, column: 29, scope: !1226)
!1245 = !DILocation(line: 593, column: 2, scope: !1226)
!1246 = distinct !{!1246, !1229, !1247, !264, !265}
!1247 = !DILocation(line: 596, column: 2, scope: !1227)
!1248 = !DILocation(line: 597, column: 2, scope: !1140)
!1249 = !DILocation(line: 598, column: 1, scope: !1140)
!1250 = distinct !DISubprogram(name: "rcu_segcblist_merge", scope: !2, file: !2, line: 607, type: !1251, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !210, !210}
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DILocalVariable(name: "dst_rsclp", arg: 1, scope: !1250, file: !2, line: 607, type: !210)
!1255 = !DILocalVariable(name: "src_rsclp", arg: 2, scope: !1250, file: !2, line: 608, type: !210)
!1256 = !DILocalVariable(name: "donecbs", scope: !1250, file: !2, line: 610, type: !63)
!1257 = !DILocalVariable(name: "pendcbs", scope: !1250, file: !2, line: 611, type: !63)
!1258 = !DILocation(line: 607, column: 48, scope: !1250)
!1259 = !DILocation(line: 608, column: 27, scope: !1250)
!1260 = !DILocation(line: 610, column: 2, scope: !1250)
!1261 = !DILocation(line: 610, column: 20, scope: !1250)
!1262 = !DILocation(line: 611, column: 2, scope: !1250)
!1263 = !DILocation(line: 611, column: 20, scope: !1250)
!1264 = !DILocation(line: 613, column: 2, scope: !1250)
!1265 = !DILocation(line: 615, column: 2, scope: !1250)
!1266 = !DILocation(line: 616, column: 2, scope: !1250)
!1267 = !DILocation(line: 618, column: 33, scope: !1250)
!1268 = !DILocation(line: 618, column: 2, scope: !1250)
!1269 = !DILocation(line: 619, column: 33, scope: !1250)
!1270 = !DILocation(line: 619, column: 2, scope: !1250)
!1271 = !DILocation(line: 625, column: 24, scope: !1250)
!1272 = !DILocation(line: 625, column: 2, scope: !1250)
!1273 = !DILocation(line: 627, column: 29, scope: !1250)
!1274 = !DILocation(line: 627, column: 2, scope: !1250)
!1275 = !DILocation(line: 628, column: 29, scope: !1250)
!1276 = !DILocation(line: 628, column: 2, scope: !1250)
!1277 = !DILocation(line: 629, column: 32, scope: !1250)
!1278 = !DILocation(line: 629, column: 2, scope: !1250)
!1279 = !DILocation(line: 630, column: 32, scope: !1250)
!1280 = !DILocation(line: 630, column: 2, scope: !1250)
!1281 = !DILocation(line: 632, column: 21, scope: !1250)
!1282 = !DILocation(line: 632, column: 2, scope: !1250)
!1283 = !DILocation(line: 633, column: 1, scope: !1250)
!1284 = !DISubprogram(name: "lockdep_assert_cpus_held", scope: !1285, file: !1285, line: 138, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null}
!1288 = distinct !DISubprogram(name: "rcu_segcblist_test_flags", scope: !382, file: !382, line: 70, type: !528, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1289)
!1289 = !{!1290, !1291}
!1290 = !DILocalVariable(name: "rsclp", arg: 1, scope: !1288, file: !382, line: 70, type: !210)
!1291 = !DILocalVariable(name: "flags", arg: 2, scope: !1288, file: !382, line: 71, type: !225)
!1292 = !DILocation(line: 70, column: 67, scope: !1288)
!1293 = !DILocation(line: 71, column: 14, scope: !1288)
!1294 = !DILocation(line: 73, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1288, file: !382, line: 73, column: 9)
!1296 = !DILocation(line: 73, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !382, line: 73, column: 9)
!1298 = !DILocation(line: 73, column: 9, scope: !1288)
!1299 = !DILocation(line: 73, column: 35, scope: !1288)
!1300 = !DILocation(line: 73, column: 33, scope: !1288)
!1301 = !DILocation(line: 73, column: 2, scope: !1288)
