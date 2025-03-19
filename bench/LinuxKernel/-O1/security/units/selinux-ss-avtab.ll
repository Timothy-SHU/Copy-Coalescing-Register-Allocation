; ModuleID = 'security/selinux/ss/avtab.c'
source_filename = "security/selinux/ss/avtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_key = type { i16, i16, i16, i16 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.avtab_node = type { %struct.avtab_key, %struct.avtab_datum, ptr }
%struct.avtab_datum = type { %union.anon }
%union.anon = type { ptr }
%struct.avtab_extended_perms = type { i8, i8, %struct.extended_perms_data }
%struct.extended_perms_data = type { [8 x i32] }
%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i64, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.policy_file = type { ptr, i64 }

@avtab_xperms_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !0
@avtab_node_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !103
@.str = private unnamed_addr constant [35 x i8] c"\013SELinux: avtab: truncated entry\0A\00", align 1, !dbg !22
@.str.1 = private unnamed_addr constant [34 x i8] c"\013SELinux: avtab: entry overflow\0A\00", align 1, !dbg !28
@.str.2 = private unnamed_addr constant [41 x i8] c"\013SELinux: avtab: truncated source type\0A\00", align 1, !dbg !33
@.str.3 = private unnamed_addr constant [41 x i8] c"\013SELinux: avtab: truncated target type\0A\00", align 1, !dbg !38
@.str.4 = private unnamed_addr constant [42 x i8] c"\013SELinux: avtab: truncated target class\0A\00", align 1, !dbg !40
@.str.5 = private unnamed_addr constant [30 x i8] c"\013SELinux: avtab: null entry\0A\00", align 1, !dbg !45
@.str.6 = private unnamed_addr constant [59 x i8] c"\013SELinux: avtab: entry has both access vectors and types\0A\00", align 1, !dbg !50
@.str.7 = private unnamed_addr constant [50 x i8] c"\013SELinux: avtab: entry has extended permissions\0A\00", align 1, !dbg !55
@spec_order = internal constant [9 x i16] [i16 1, i16 4, i16 2, i16 16, i16 64, i16 32, i16 256, i16 512, i16 1024], align 16, !dbg !143
@.str.8 = private unnamed_addr constant [56 x i8] c"\013SELinux: avtab: entry only had %d items, expected %d\0A\00", align 1, !dbg !60
@.str.9 = private unnamed_addr constant [41 x i8] c"\013SELinux: avtab: invalid type or class\0A\00", align 1, !dbg !65
@.str.10 = private unnamed_addr constant [45 x i8] c"\013SELinux:  avtab:  more than one specifier\0A\00", align 1, !dbg !67
@.str.11 = private unnamed_addr constant [105 x i8] c"\013SELinux:  avtab:  policy version %u does not support extended permissions rules and one was specified\0A\00", align 1, !dbg !72
@.str.12 = private unnamed_addr constant [32 x i8] c"\013SELinux: avtab: invalid type\0A\00", align 1, !dbg !77
@.str.13 = private unnamed_addr constant [35 x i8] c"\013SELinux: avtab: truncated table\0A\00", align 1, !dbg !82
@.str.14 = private unnamed_addr constant [34 x i8] c"\013SELinux: avtab: table is empty\0A\00", align 1, !dbg !84
@.str.15 = private unnamed_addr constant [33 x i8] c"\013SELinux: avtab: out of memory\0A\00", align 1, !dbg !86
@.str.16 = private unnamed_addr constant [35 x i8] c"\013SELinux: avtab: duplicate entry\0A\00", align 1, !dbg !91
@.str.17 = private unnamed_addr constant [11 x i8] c"avtab_node\00", align 1, !dbg !93
@.str.18 = private unnamed_addr constant [21 x i8] c"avtab_extended_perms\00", align 1, !dbg !98
@avtab_hash.c1 = internal constant i32 -862048943, align 4, !dbg !108
@avtab_hash.c2 = internal constant i32 461845907, align 4, !dbg !133
@avtab_hash.r1 = internal constant i32 15, align 4, !dbg !135
@avtab_hash.r2 = internal constant i32 13, align 4, !dbg !137
@avtab_hash.m = internal constant i32 5, align 4, !dbg !139
@avtab_hash.n = internal constant i32 -430675100, align 4, !dbg !141

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @avtab_insert_nonunique(ptr noundef %h, ptr noundef %key, ptr noundef %datum) #0 align 16 !dbg !159 {
entry:
  %retval = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %hvalue = alloca i32, align 4
  %prev = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %specified = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !202, metadata !DIExpression()), !dbg !209
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !203, metadata !DIExpression()), !dbg !210
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !204, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 4, ptr %hvalue) #13, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %hvalue, metadata !205, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #13, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !206, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !207, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 2, ptr %specified) #13, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %specified, metadata !208, metadata !DIExpression()), !dbg !218
  %0 = load ptr, ptr %key.addr, align 8, !dbg !219
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %0, i32 0, i32 3, !dbg !220
  %1 = load i16, ptr %specified1, align 2, !dbg !220
  %conv = zext i16 %1 to i32, !dbg !219
  %and = and i32 %conv, 2147450879, !dbg !221
  %conv2 = trunc i32 %and to i16, !dbg !219
  store i16 %conv2, ptr %specified, align 2, !dbg !218
  %2 = load ptr, ptr %h.addr, align 8, !dbg !222
  %tobool = icmp ne ptr %2, null, !dbg !222
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !224

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !dbg !225
  %nslot = getelementptr inbounds %struct.avtab, ptr %3, i32 0, i32 2, !dbg !226
  %4 = load i32, ptr %nslot, align 4, !dbg !226
  %tobool3 = icmp ne i32 %4, 0, !dbg !225
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !227

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %h.addr, align 8, !dbg !228
  %nel = getelementptr inbounds %struct.avtab, ptr %5, i32 0, i32 1, !dbg !229
  %6 = load i32, ptr %nel, align 8, !dbg !229
  %cmp = icmp eq i32 %6, -1, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %key.addr, align 8, !dbg !233
  %8 = load ptr, ptr %h.addr, align 8, !dbg !234
  %mask = getelementptr inbounds %struct.avtab, ptr %8, i32 0, i32 3, !dbg !235
  %9 = load i32, ptr %mask, align 8, !dbg !235
  %call = call i32 @avtab_hash(ptr noundef %7, i32 noundef %9) #14, !dbg !236
  store i32 %call, ptr %hvalue, align 4, !dbg !237
  store ptr null, ptr %prev, align 8, !dbg !238
  %10 = load ptr, ptr %h.addr, align 8, !dbg !240
  %htable = getelementptr inbounds %struct.avtab, ptr %10, i32 0, i32 0, !dbg !241
  %11 = load ptr, ptr %htable, align 8, !dbg !241
  %12 = load i32, ptr %hvalue, align 4, !dbg !242
  %idxprom = zext i32 %12 to i64, !dbg !240
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !240
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !240
  store ptr %13, ptr %cur, align 8, !dbg !243
  br label %for.cond, !dbg !244

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load ptr, ptr %cur, align 8, !dbg !245
  %tobool6 = icmp ne ptr %14, null, !dbg !247
  br i1 %tobool6, label %for.body, label %for.end, !dbg !247

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %key.addr, align 8, !dbg !248
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %15, i32 0, i32 0, !dbg !251
  %16 = load i16, ptr %source_type, align 2, !dbg !251
  %conv7 = zext i16 %16 to i32, !dbg !248
  %17 = load ptr, ptr %cur, align 8, !dbg !252
  %key8 = getelementptr inbounds %struct.avtab_node, ptr %17, i32 0, i32 0, !dbg !253
  %source_type9 = getelementptr inbounds %struct.avtab_key, ptr %key8, i32 0, i32 0, !dbg !254
  %18 = load i16, ptr %source_type9, align 8, !dbg !254
  %conv10 = zext i16 %18 to i32, !dbg !252
  %cmp11 = icmp eq i32 %conv7, %conv10, !dbg !255
  br i1 %cmp11, label %land.lhs.true, label %if.end34, !dbg !256

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %key.addr, align 8, !dbg !257
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %19, i32 0, i32 1, !dbg !258
  %20 = load i16, ptr %target_type, align 2, !dbg !258
  %conv13 = zext i16 %20 to i32, !dbg !257
  %21 = load ptr, ptr %cur, align 8, !dbg !259
  %key14 = getelementptr inbounds %struct.avtab_node, ptr %21, i32 0, i32 0, !dbg !260
  %target_type15 = getelementptr inbounds %struct.avtab_key, ptr %key14, i32 0, i32 1, !dbg !261
  %22 = load i16, ptr %target_type15, align 2, !dbg !261
  %conv16 = zext i16 %22 to i32, !dbg !259
  %cmp17 = icmp eq i32 %conv13, %conv16, !dbg !262
  br i1 %cmp17, label %land.lhs.true19, label %if.end34, !dbg !263

land.lhs.true19:                                  ; preds = %land.lhs.true
  %23 = load ptr, ptr %key.addr, align 8, !dbg !264
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %23, i32 0, i32 2, !dbg !265
  %24 = load i16, ptr %target_class, align 2, !dbg !265
  %conv20 = zext i16 %24 to i32, !dbg !264
  %25 = load ptr, ptr %cur, align 8, !dbg !266
  %key21 = getelementptr inbounds %struct.avtab_node, ptr %25, i32 0, i32 0, !dbg !267
  %target_class22 = getelementptr inbounds %struct.avtab_key, ptr %key21, i32 0, i32 2, !dbg !268
  %26 = load i16, ptr %target_class22, align 4, !dbg !268
  %conv23 = zext i16 %26 to i32, !dbg !266
  %cmp24 = icmp eq i32 %conv20, %conv23, !dbg !269
  br i1 %cmp24, label %land.lhs.true26, label %if.end34, !dbg !270

land.lhs.true26:                                  ; preds = %land.lhs.true19
  %27 = load i16, ptr %specified, align 2, !dbg !271
  %conv27 = zext i16 %27 to i32, !dbg !271
  %28 = load ptr, ptr %cur, align 8, !dbg !272
  %key28 = getelementptr inbounds %struct.avtab_node, ptr %28, i32 0, i32 0, !dbg !273
  %specified29 = getelementptr inbounds %struct.avtab_key, ptr %key28, i32 0, i32 3, !dbg !274
  %29 = load i16, ptr %specified29, align 2, !dbg !274
  %conv30 = zext i16 %29 to i32, !dbg !272
  %and31 = and i32 %conv27, %conv30, !dbg !275
  %tobool32 = icmp ne i32 %and31, 0, !dbg !275
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !276

if.then33:                                        ; preds = %land.lhs.true26
  br label %for.end, !dbg !277

if.end34:                                         ; preds = %land.lhs.true26, %land.lhs.true19, %land.lhs.true, %for.body
  %30 = load ptr, ptr %key.addr, align 8, !dbg !278
  %source_type35 = getelementptr inbounds %struct.avtab_key, ptr %30, i32 0, i32 0, !dbg !280
  %31 = load i16, ptr %source_type35, align 2, !dbg !280
  %conv36 = zext i16 %31 to i32, !dbg !278
  %32 = load ptr, ptr %cur, align 8, !dbg !281
  %key37 = getelementptr inbounds %struct.avtab_node, ptr %32, i32 0, i32 0, !dbg !282
  %source_type38 = getelementptr inbounds %struct.avtab_key, ptr %key37, i32 0, i32 0, !dbg !283
  %33 = load i16, ptr %source_type38, align 8, !dbg !283
  %conv39 = zext i16 %33 to i32, !dbg !281
  %cmp40 = icmp slt i32 %conv36, %conv39, !dbg !284
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !285

if.then42:                                        ; preds = %if.end34
  br label %for.end, !dbg !286

if.end43:                                         ; preds = %if.end34
  %34 = load ptr, ptr %key.addr, align 8, !dbg !287
  %source_type44 = getelementptr inbounds %struct.avtab_key, ptr %34, i32 0, i32 0, !dbg !289
  %35 = load i16, ptr %source_type44, align 2, !dbg !289
  %conv45 = zext i16 %35 to i32, !dbg !287
  %36 = load ptr, ptr %cur, align 8, !dbg !290
  %key46 = getelementptr inbounds %struct.avtab_node, ptr %36, i32 0, i32 0, !dbg !291
  %source_type47 = getelementptr inbounds %struct.avtab_key, ptr %key46, i32 0, i32 0, !dbg !292
  %37 = load i16, ptr %source_type47, align 8, !dbg !292
  %conv48 = zext i16 %37 to i32, !dbg !290
  %cmp49 = icmp eq i32 %conv45, %conv48, !dbg !293
  br i1 %cmp49, label %land.lhs.true51, label %if.end60, !dbg !294

land.lhs.true51:                                  ; preds = %if.end43
  %38 = load ptr, ptr %key.addr, align 8, !dbg !295
  %target_type52 = getelementptr inbounds %struct.avtab_key, ptr %38, i32 0, i32 1, !dbg !296
  %39 = load i16, ptr %target_type52, align 2, !dbg !296
  %conv53 = zext i16 %39 to i32, !dbg !295
  %40 = load ptr, ptr %cur, align 8, !dbg !297
  %key54 = getelementptr inbounds %struct.avtab_node, ptr %40, i32 0, i32 0, !dbg !298
  %target_type55 = getelementptr inbounds %struct.avtab_key, ptr %key54, i32 0, i32 1, !dbg !299
  %41 = load i16, ptr %target_type55, align 2, !dbg !299
  %conv56 = zext i16 %41 to i32, !dbg !297
  %cmp57 = icmp slt i32 %conv53, %conv56, !dbg !300
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !301

if.then59:                                        ; preds = %land.lhs.true51
  br label %for.end, !dbg !302

if.end60:                                         ; preds = %land.lhs.true51, %if.end43
  %42 = load ptr, ptr %key.addr, align 8, !dbg !303
  %source_type61 = getelementptr inbounds %struct.avtab_key, ptr %42, i32 0, i32 0, !dbg !305
  %43 = load i16, ptr %source_type61, align 2, !dbg !305
  %conv62 = zext i16 %43 to i32, !dbg !303
  %44 = load ptr, ptr %cur, align 8, !dbg !306
  %key63 = getelementptr inbounds %struct.avtab_node, ptr %44, i32 0, i32 0, !dbg !307
  %source_type64 = getelementptr inbounds %struct.avtab_key, ptr %key63, i32 0, i32 0, !dbg !308
  %45 = load i16, ptr %source_type64, align 8, !dbg !308
  %conv65 = zext i16 %45 to i32, !dbg !306
  %cmp66 = icmp eq i32 %conv62, %conv65, !dbg !309
  br i1 %cmp66, label %land.lhs.true68, label %if.end85, !dbg !310

land.lhs.true68:                                  ; preds = %if.end60
  %46 = load ptr, ptr %key.addr, align 8, !dbg !311
  %target_type69 = getelementptr inbounds %struct.avtab_key, ptr %46, i32 0, i32 1, !dbg !312
  %47 = load i16, ptr %target_type69, align 2, !dbg !312
  %conv70 = zext i16 %47 to i32, !dbg !311
  %48 = load ptr, ptr %cur, align 8, !dbg !313
  %key71 = getelementptr inbounds %struct.avtab_node, ptr %48, i32 0, i32 0, !dbg !314
  %target_type72 = getelementptr inbounds %struct.avtab_key, ptr %key71, i32 0, i32 1, !dbg !315
  %49 = load i16, ptr %target_type72, align 2, !dbg !315
  %conv73 = zext i16 %49 to i32, !dbg !313
  %cmp74 = icmp eq i32 %conv70, %conv73, !dbg !316
  br i1 %cmp74, label %land.lhs.true76, label %if.end85, !dbg !317

land.lhs.true76:                                  ; preds = %land.lhs.true68
  %50 = load ptr, ptr %key.addr, align 8, !dbg !318
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %50, i32 0, i32 2, !dbg !319
  %51 = load i16, ptr %target_class77, align 2, !dbg !319
  %conv78 = zext i16 %51 to i32, !dbg !318
  %52 = load ptr, ptr %cur, align 8, !dbg !320
  %key79 = getelementptr inbounds %struct.avtab_node, ptr %52, i32 0, i32 0, !dbg !321
  %target_class80 = getelementptr inbounds %struct.avtab_key, ptr %key79, i32 0, i32 2, !dbg !322
  %53 = load i16, ptr %target_class80, align 4, !dbg !322
  %conv81 = zext i16 %53 to i32, !dbg !320
  %cmp82 = icmp slt i32 %conv78, %conv81, !dbg !323
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !324

if.then84:                                        ; preds = %land.lhs.true76
  br label %for.end, !dbg !325

if.end85:                                         ; preds = %land.lhs.true76, %land.lhs.true68, %if.end60
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %if.end85
  %54 = load ptr, ptr %cur, align 8, !dbg !327
  store ptr %54, ptr %prev, align 8, !dbg !328
  %55 = load ptr, ptr %cur, align 8, !dbg !329
  %next = getelementptr inbounds %struct.avtab_node, ptr %55, i32 0, i32 2, !dbg !330
  %56 = load ptr, ptr %next, align 8, !dbg !330
  store ptr %56, ptr %cur, align 8, !dbg !331
  br label %for.cond, !dbg !332, !llvm.loop !333

for.end:                                          ; preds = %if.then84, %if.then59, %if.then42, %if.then33, %for.cond
  %57 = load ptr, ptr %h.addr, align 8, !dbg !337
  %58 = load i32, ptr %hvalue, align 4, !dbg !338
  %59 = load ptr, ptr %prev, align 8, !dbg !339
  %60 = load ptr, ptr %key.addr, align 8, !dbg !340
  %61 = load ptr, ptr %datum.addr, align 8, !dbg !341
  %call86 = call ptr @avtab_insert_node(ptr noundef %57, i32 noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61) #14, !dbg !342
  store ptr %call86, ptr %retval, align 8, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %specified) #13, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #13, !dbg !344
  call void @llvm.lifetime.end.p0(i64 4, ptr %hvalue) #13, !dbg !344
  %62 = load ptr, ptr %retval, align 8, !dbg !344
  ret ptr %62, !dbg !344
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @avtab_hash(ptr noundef %keyp, i32 noundef %mask) #3 align 16 !dbg !110 {
entry:
  %keyp.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %v = alloca i32, align 4
  %v7 = alloca i32, align 4
  %v23 = alloca i32, align 4
  store ptr %keyp, ptr %keyp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keyp.addr, metadata !123, metadata !DIExpression()), !dbg !345
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !124, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #13, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !125, metadata !DIExpression()), !dbg !348
  store i32 0, ptr %hash, align 4, !dbg !348
  br label %do.body, !dbg !349

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #13, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %v, metadata !126, metadata !DIExpression()), !dbg !350
  %0 = load ptr, ptr %keyp.addr, align 8, !dbg !350
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %0, i32 0, i32 2, !dbg !350
  %1 = load i16, ptr %target_class, align 2, !dbg !350
  %conv = zext i16 %1 to i32, !dbg !350
  store i32 %conv, ptr %v, align 4, !dbg !350
  %2 = load i32, ptr %v, align 4, !dbg !350
  %mul = mul i32 %2, -862048943, !dbg !350
  store i32 %mul, ptr %v, align 4, !dbg !350
  %3 = load i32, ptr %v, align 4, !dbg !350
  %shl = shl i32 %3, 15, !dbg !350
  %4 = load i32, ptr %v, align 4, !dbg !350
  %shr = lshr i32 %4, 17, !dbg !350
  %or = or i32 %shl, %shr, !dbg !350
  store i32 %or, ptr %v, align 4, !dbg !350
  %5 = load i32, ptr %v, align 4, !dbg !350
  %mul1 = mul i32 %5, 461845907, !dbg !350
  store i32 %mul1, ptr %v, align 4, !dbg !350
  %6 = load i32, ptr %v, align 4, !dbg !350
  %7 = load i32, ptr %hash, align 4, !dbg !350
  %xor = xor i32 %7, %6, !dbg !350
  store i32 %xor, ptr %hash, align 4, !dbg !350
  %8 = load i32, ptr %hash, align 4, !dbg !350
  %shl2 = shl i32 %8, 13, !dbg !350
  %9 = load i32, ptr %hash, align 4, !dbg !350
  %shr3 = lshr i32 %9, 19, !dbg !350
  %or4 = or i32 %shl2, %shr3, !dbg !350
  store i32 %or4, ptr %hash, align 4, !dbg !350
  %10 = load i32, ptr %hash, align 4, !dbg !350
  %mul5 = mul i32 %10, 5, !dbg !350
  %add = add i32 %mul5, -430675100, !dbg !350
  store i32 %add, ptr %hash, align 4, !dbg !350
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #13, !dbg !349
  br label %do.cond, !dbg !350

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !350

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !351

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %v7) #13, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %v7, metadata !128, metadata !DIExpression()), !dbg !352
  %11 = load ptr, ptr %keyp.addr, align 8, !dbg !352
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %11, i32 0, i32 1, !dbg !352
  %12 = load i16, ptr %target_type, align 2, !dbg !352
  %conv8 = zext i16 %12 to i32, !dbg !352
  store i32 %conv8, ptr %v7, align 4, !dbg !352
  %13 = load i32, ptr %v7, align 4, !dbg !352
  %mul9 = mul i32 %13, -862048943, !dbg !352
  store i32 %mul9, ptr %v7, align 4, !dbg !352
  %14 = load i32, ptr %v7, align 4, !dbg !352
  %shl10 = shl i32 %14, 15, !dbg !352
  %15 = load i32, ptr %v7, align 4, !dbg !352
  %shr11 = lshr i32 %15, 17, !dbg !352
  %or12 = or i32 %shl10, %shr11, !dbg !352
  store i32 %or12, ptr %v7, align 4, !dbg !352
  %16 = load i32, ptr %v7, align 4, !dbg !352
  %mul13 = mul i32 %16, 461845907, !dbg !352
  store i32 %mul13, ptr %v7, align 4, !dbg !352
  %17 = load i32, ptr %v7, align 4, !dbg !352
  %18 = load i32, ptr %hash, align 4, !dbg !352
  %xor14 = xor i32 %18, %17, !dbg !352
  store i32 %xor14, ptr %hash, align 4, !dbg !352
  %19 = load i32, ptr %hash, align 4, !dbg !352
  %shl15 = shl i32 %19, 13, !dbg !352
  %20 = load i32, ptr %hash, align 4, !dbg !352
  %shr16 = lshr i32 %20, 19, !dbg !352
  %or17 = or i32 %shl15, %shr16, !dbg !352
  store i32 %or17, ptr %hash, align 4, !dbg !352
  %21 = load i32, ptr %hash, align 4, !dbg !352
  %mul18 = mul i32 %21, 5, !dbg !352
  %add19 = add i32 %mul18, -430675100, !dbg !352
  store i32 %add19, ptr %hash, align 4, !dbg !352
  call void @llvm.lifetime.end.p0(i64 4, ptr %v7) #13, !dbg !351
  br label %do.cond20, !dbg !352

do.cond20:                                        ; preds = %do.body6
  br label %do.end21, !dbg !352

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !353

do.body22:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %v23) #13, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %v23, metadata !130, metadata !DIExpression()), !dbg !354
  %22 = load ptr, ptr %keyp.addr, align 8, !dbg !354
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %22, i32 0, i32 0, !dbg !354
  %23 = load i16, ptr %source_type, align 2, !dbg !354
  %conv24 = zext i16 %23 to i32, !dbg !354
  store i32 %conv24, ptr %v23, align 4, !dbg !354
  %24 = load i32, ptr %v23, align 4, !dbg !354
  %mul25 = mul i32 %24, -862048943, !dbg !354
  store i32 %mul25, ptr %v23, align 4, !dbg !354
  %25 = load i32, ptr %v23, align 4, !dbg !354
  %shl26 = shl i32 %25, 15, !dbg !354
  %26 = load i32, ptr %v23, align 4, !dbg !354
  %shr27 = lshr i32 %26, 17, !dbg !354
  %or28 = or i32 %shl26, %shr27, !dbg !354
  store i32 %or28, ptr %v23, align 4, !dbg !354
  %27 = load i32, ptr %v23, align 4, !dbg !354
  %mul29 = mul i32 %27, 461845907, !dbg !354
  store i32 %mul29, ptr %v23, align 4, !dbg !354
  %28 = load i32, ptr %v23, align 4, !dbg !354
  %29 = load i32, ptr %hash, align 4, !dbg !354
  %xor30 = xor i32 %29, %28, !dbg !354
  store i32 %xor30, ptr %hash, align 4, !dbg !354
  %30 = load i32, ptr %hash, align 4, !dbg !354
  %shl31 = shl i32 %30, 13, !dbg !354
  %31 = load i32, ptr %hash, align 4, !dbg !354
  %shr32 = lshr i32 %31, 19, !dbg !354
  %or33 = or i32 %shl31, %shr32, !dbg !354
  store i32 %or33, ptr %hash, align 4, !dbg !354
  %32 = load i32, ptr %hash, align 4, !dbg !354
  %mul34 = mul i32 %32, 5, !dbg !354
  %add35 = add i32 %mul34, -430675100, !dbg !354
  store i32 %add35, ptr %hash, align 4, !dbg !354
  call void @llvm.lifetime.end.p0(i64 4, ptr %v23) #13, !dbg !353
  br label %do.cond36, !dbg !354

do.cond36:                                        ; preds = %do.body22
  br label %do.end37, !dbg !354

do.end37:                                         ; preds = %do.cond36
  %33 = load i32, ptr %hash, align 4, !dbg !355
  %shr38 = lshr i32 %33, 16, !dbg !356
  %34 = load i32, ptr %hash, align 4, !dbg !357
  %xor39 = xor i32 %34, %shr38, !dbg !357
  store i32 %xor39, ptr %hash, align 4, !dbg !357
  %35 = load i32, ptr %hash, align 4, !dbg !358
  %mul40 = mul i32 %35, -2048144789, !dbg !358
  store i32 %mul40, ptr %hash, align 4, !dbg !358
  %36 = load i32, ptr %hash, align 4, !dbg !359
  %shr41 = lshr i32 %36, 13, !dbg !360
  %37 = load i32, ptr %hash, align 4, !dbg !361
  %xor42 = xor i32 %37, %shr41, !dbg !361
  store i32 %xor42, ptr %hash, align 4, !dbg !361
  %38 = load i32, ptr %hash, align 4, !dbg !362
  %mul43 = mul i32 %38, -1028477387, !dbg !362
  store i32 %mul43, ptr %hash, align 4, !dbg !362
  %39 = load i32, ptr %hash, align 4, !dbg !363
  %shr44 = lshr i32 %39, 16, !dbg !364
  %40 = load i32, ptr %hash, align 4, !dbg !365
  %xor45 = xor i32 %40, %shr44, !dbg !365
  store i32 %xor45, ptr %hash, align 4, !dbg !365
  %41 = load i32, ptr %hash, align 4, !dbg !366
  %42 = load i32, ptr %mask.addr, align 4, !dbg !367
  %and = and i32 %41, %42, !dbg !368
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #13, !dbg !369
  ret i32 %and, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @avtab_insert_node(ptr noundef %h, i32 noundef %hvalue, ptr noundef %prev, ptr noundef %key, ptr noundef %datum) #0 align 16 !dbg !371 {
entry:
  %retval = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %hvalue.addr = alloca i32, align 4
  %prev.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %newnode = alloca ptr, align 8
  %xperms = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !375, metadata !DIExpression()), !dbg !385
  store i32 %hvalue, ptr %hvalue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hvalue.addr, metadata !376, metadata !DIExpression()), !dbg !386
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !377, metadata !DIExpression()), !dbg !387
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !378, metadata !DIExpression()), !dbg !388
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !379, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 8, ptr %newnode) #13, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %newnode, metadata !380, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 8, ptr %xperms) #13, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %xperms, metadata !381, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr @avtab_node_cachep, align 8, !dbg !394
  %call = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef 3264) #14, !dbg !395
  store ptr %call, ptr %newnode, align 8, !dbg !396
  %1 = load ptr, ptr %newnode, align 8, !dbg !397
  %cmp = icmp eq ptr %1, null, !dbg !399
  br i1 %cmp, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %newnode, align 8, !dbg !402
  %key1 = getelementptr inbounds %struct.avtab_node, ptr %2, i32 0, i32 0, !dbg !403
  %3 = load ptr, ptr %key.addr, align 8, !dbg !404
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key1, ptr align 2 %3, i64 8, i1 false), !dbg !405
  %4 = load ptr, ptr %key.addr, align 8, !dbg !406
  %specified = getelementptr inbounds %struct.avtab_key, ptr %4, i32 0, i32 3, !dbg !408
  %5 = load i16, ptr %specified, align 2, !dbg !408
  %conv = zext i16 %5 to i32, !dbg !406
  %and = and i32 %conv, 1792, !dbg !409
  %tobool = icmp ne i32 %and, 0, !dbg !409
  br i1 %tobool, label %if.then2, label %if.else, !dbg !410

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr @avtab_xperms_cachep, align 8, !dbg !411
  %call3 = call ptr @kmem_cache_zalloc(ptr noundef %6, i32 noundef 3264) #14, !dbg !413
  store ptr %call3, ptr %xperms, align 8, !dbg !414
  %7 = load ptr, ptr %xperms, align 8, !dbg !415
  %cmp4 = icmp eq ptr %7, null, !dbg !417
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !418

if.then6:                                         ; preds = %if.then2
  %8 = load ptr, ptr @avtab_node_cachep, align 8, !dbg !419
  %9 = load ptr, ptr %newnode, align 8, !dbg !421
  call void @kmem_cache_free(ptr noundef %8, ptr noundef %9) #14, !dbg !422
  store ptr null, ptr %retval, align 8, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end7:                                          ; preds = %if.then2
  %10 = load ptr, ptr %xperms, align 8, !dbg !424
  %11 = load ptr, ptr %datum.addr, align 8, !dbg !425
  %u = getelementptr inbounds %struct.avtab_datum, ptr %11, i32 0, i32 0, !dbg !426
  %12 = load ptr, ptr %u, align 8, !dbg !427
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %12, i64 36, i1 false), !dbg !428
  %13 = load ptr, ptr %xperms, align 8, !dbg !429
  %14 = load ptr, ptr %newnode, align 8, !dbg !430
  %datum8 = getelementptr inbounds %struct.avtab_node, ptr %14, i32 0, i32 1, !dbg !431
  %u9 = getelementptr inbounds %struct.avtab_datum, ptr %datum8, i32 0, i32 0, !dbg !432
  store ptr %13, ptr %u9, align 8, !dbg !433
  br label %if.end13, !dbg !434

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %datum.addr, align 8, !dbg !435
  %u10 = getelementptr inbounds %struct.avtab_datum, ptr %15, i32 0, i32 0, !dbg !437
  %16 = load i32, ptr %u10, align 8, !dbg !438
  %17 = load ptr, ptr %newnode, align 8, !dbg !439
  %datum11 = getelementptr inbounds %struct.avtab_node, ptr %17, i32 0, i32 1, !dbg !440
  %u12 = getelementptr inbounds %struct.avtab_datum, ptr %datum11, i32 0, i32 0, !dbg !441
  store i32 %16, ptr %u12, align 8, !dbg !442
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end7
  %18 = load ptr, ptr %prev.addr, align 8, !dbg !443
  %tobool14 = icmp ne ptr %18, null, !dbg !443
  br i1 %tobool14, label %if.then15, label %if.else18, !dbg !444

if.then15:                                        ; preds = %if.end13
  %19 = load ptr, ptr %prev.addr, align 8, !dbg !445
  %next = getelementptr inbounds %struct.avtab_node, ptr %19, i32 0, i32 2, !dbg !447
  %20 = load ptr, ptr %next, align 8, !dbg !447
  %21 = load ptr, ptr %newnode, align 8, !dbg !448
  %next16 = getelementptr inbounds %struct.avtab_node, ptr %21, i32 0, i32 2, !dbg !449
  store ptr %20, ptr %next16, align 8, !dbg !450
  %22 = load ptr, ptr %newnode, align 8, !dbg !451
  %23 = load ptr, ptr %prev.addr, align 8, !dbg !452
  %next17 = getelementptr inbounds %struct.avtab_node, ptr %23, i32 0, i32 2, !dbg !453
  store ptr %22, ptr %next17, align 8, !dbg !454
  br label %if.end20, !dbg !455

if.else18:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %n, metadata !382, metadata !DIExpression()), !dbg !457
  %24 = load ptr, ptr %h.addr, align 8, !dbg !458
  %htable = getelementptr inbounds %struct.avtab, ptr %24, i32 0, i32 0, !dbg !459
  %25 = load ptr, ptr %htable, align 8, !dbg !459
  %26 = load i32, ptr %hvalue.addr, align 4, !dbg !460
  %idxprom = zext i32 %26 to i64, !dbg !458
  %arrayidx = getelementptr ptr, ptr %25, i64 %idxprom, !dbg !458
  store ptr %arrayidx, ptr %n, align 8, !dbg !457
  %27 = load ptr, ptr %n, align 8, !dbg !461
  %28 = load ptr, ptr %27, align 8, !dbg !462
  %29 = load ptr, ptr %newnode, align 8, !dbg !463
  %next19 = getelementptr inbounds %struct.avtab_node, ptr %29, i32 0, i32 2, !dbg !464
  store ptr %28, ptr %next19, align 8, !dbg !465
  %30 = load ptr, ptr %newnode, align 8, !dbg !466
  %31 = load ptr, ptr %n, align 8, !dbg !467
  store ptr %30, ptr %31, align 8, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13, !dbg !469
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then15
  %32 = load ptr, ptr %h.addr, align 8, !dbg !470
  %nel = getelementptr inbounds %struct.avtab, ptr %32, i32 0, i32 1, !dbg !471
  %33 = load i32, ptr %nel, align 8, !dbg !472
  %inc = add i32 %33, 1, !dbg !472
  store i32 %inc, ptr %nel, align 8, !dbg !472
  %34 = load ptr, ptr %newnode, align 8, !dbg !473
  store ptr %34, ptr %retval, align 8, !dbg !474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !474

cleanup:                                          ; preds = %if.end20, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %xperms) #13, !dbg !475
  call void @llvm.lifetime.end.p0(i64 8, ptr %newnode) #13, !dbg !475
  %35 = load ptr, ptr %retval, align 8, !dbg !475
  ret ptr %35, !dbg !475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @avtab_search_node(ptr noundef %h, ptr noundef %key) #0 align 16 !dbg !476 {
entry:
  %retval = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hvalue = alloca i32, align 4
  %cur = alloca ptr, align 8
  %specified = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !480, metadata !DIExpression()), !dbg !485
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !481, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 4, ptr %hvalue) #13, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %hvalue, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !483, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 2, ptr %specified) #13, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %specified, metadata !484, metadata !DIExpression()), !dbg !492
  %0 = load ptr, ptr %key.addr, align 8, !dbg !493
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %0, i32 0, i32 3, !dbg !494
  %1 = load i16, ptr %specified1, align 2, !dbg !494
  %conv = zext i16 %1 to i32, !dbg !493
  %and = and i32 %conv, 2147450879, !dbg !495
  %conv2 = trunc i32 %and to i16, !dbg !493
  store i16 %conv2, ptr %specified, align 2, !dbg !492
  %2 = load ptr, ptr %h.addr, align 8, !dbg !496
  %tobool = icmp ne ptr %2, null, !dbg !496
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !498

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !dbg !499
  %nslot = getelementptr inbounds %struct.avtab, ptr %3, i32 0, i32 2, !dbg !500
  %4 = load i32, ptr %nslot, align 4, !dbg !500
  %tobool3 = icmp ne i32 %4, 0, !dbg !499
  br i1 %tobool3, label %if.end, label %if.then, !dbg !501

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !502

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %key.addr, align 8, !dbg !503
  %6 = load ptr, ptr %h.addr, align 8, !dbg !504
  %mask = getelementptr inbounds %struct.avtab, ptr %6, i32 0, i32 3, !dbg !505
  %7 = load i32, ptr %mask, align 8, !dbg !505
  %call = call i32 @avtab_hash(ptr noundef %5, i32 noundef %7) #14, !dbg !506
  store i32 %call, ptr %hvalue, align 4, !dbg !507
  %8 = load ptr, ptr %h.addr, align 8, !dbg !508
  %htable = getelementptr inbounds %struct.avtab, ptr %8, i32 0, i32 0, !dbg !510
  %9 = load ptr, ptr %htable, align 8, !dbg !510
  %10 = load i32, ptr %hvalue, align 4, !dbg !511
  %idxprom = zext i32 %10 to i64, !dbg !508
  %arrayidx = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !508
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !508
  store ptr %11, ptr %cur, align 8, !dbg !512
  br label %for.cond, !dbg !513

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load ptr, ptr %cur, align 8, !dbg !514
  %tobool4 = icmp ne ptr %12, null, !dbg !516
  br i1 %tobool4, label %for.body, label %for.end, !dbg !516

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %key.addr, align 8, !dbg !517
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %13, i32 0, i32 0, !dbg !520
  %14 = load i16, ptr %source_type, align 2, !dbg !520
  %conv5 = zext i16 %14 to i32, !dbg !517
  %15 = load ptr, ptr %cur, align 8, !dbg !521
  %key6 = getelementptr inbounds %struct.avtab_node, ptr %15, i32 0, i32 0, !dbg !522
  %source_type7 = getelementptr inbounds %struct.avtab_key, ptr %key6, i32 0, i32 0, !dbg !523
  %16 = load i16, ptr %source_type7, align 8, !dbg !523
  %conv8 = zext i16 %16 to i32, !dbg !521
  %cmp = icmp eq i32 %conv5, %conv8, !dbg !524
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !525

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %key.addr, align 8, !dbg !526
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %17, i32 0, i32 1, !dbg !527
  %18 = load i16, ptr %target_type, align 2, !dbg !527
  %conv10 = zext i16 %18 to i32, !dbg !526
  %19 = load ptr, ptr %cur, align 8, !dbg !528
  %key11 = getelementptr inbounds %struct.avtab_node, ptr %19, i32 0, i32 0, !dbg !529
  %target_type12 = getelementptr inbounds %struct.avtab_key, ptr %key11, i32 0, i32 1, !dbg !530
  %20 = load i16, ptr %target_type12, align 2, !dbg !530
  %conv13 = zext i16 %20 to i32, !dbg !528
  %cmp14 = icmp eq i32 %conv10, %conv13, !dbg !531
  br i1 %cmp14, label %land.lhs.true16, label %if.end31, !dbg !532

land.lhs.true16:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %key.addr, align 8, !dbg !533
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %21, i32 0, i32 2, !dbg !534
  %22 = load i16, ptr %target_class, align 2, !dbg !534
  %conv17 = zext i16 %22 to i32, !dbg !533
  %23 = load ptr, ptr %cur, align 8, !dbg !535
  %key18 = getelementptr inbounds %struct.avtab_node, ptr %23, i32 0, i32 0, !dbg !536
  %target_class19 = getelementptr inbounds %struct.avtab_key, ptr %key18, i32 0, i32 2, !dbg !537
  %24 = load i16, ptr %target_class19, align 4, !dbg !537
  %conv20 = zext i16 %24 to i32, !dbg !535
  %cmp21 = icmp eq i32 %conv17, %conv20, !dbg !538
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !539

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %25 = load i16, ptr %specified, align 2, !dbg !540
  %conv24 = zext i16 %25 to i32, !dbg !540
  %26 = load ptr, ptr %cur, align 8, !dbg !541
  %key25 = getelementptr inbounds %struct.avtab_node, ptr %26, i32 0, i32 0, !dbg !542
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %key25, i32 0, i32 3, !dbg !543
  %27 = load i16, ptr %specified26, align 2, !dbg !543
  %conv27 = zext i16 %27 to i32, !dbg !541
  %and28 = and i32 %conv24, %conv27, !dbg !544
  %tobool29 = icmp ne i32 %and28, 0, !dbg !544
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !545

if.then30:                                        ; preds = %land.lhs.true23
  %28 = load ptr, ptr %cur, align 8, !dbg !546
  store ptr %28, ptr %retval, align 8, !dbg !547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

if.end31:                                         ; preds = %land.lhs.true23, %land.lhs.true16, %land.lhs.true, %for.body
  %29 = load ptr, ptr %key.addr, align 8, !dbg !548
  %source_type32 = getelementptr inbounds %struct.avtab_key, ptr %29, i32 0, i32 0, !dbg !550
  %30 = load i16, ptr %source_type32, align 2, !dbg !550
  %conv33 = zext i16 %30 to i32, !dbg !548
  %31 = load ptr, ptr %cur, align 8, !dbg !551
  %key34 = getelementptr inbounds %struct.avtab_node, ptr %31, i32 0, i32 0, !dbg !552
  %source_type35 = getelementptr inbounds %struct.avtab_key, ptr %key34, i32 0, i32 0, !dbg !553
  %32 = load i16, ptr %source_type35, align 8, !dbg !553
  %conv36 = zext i16 %32 to i32, !dbg !551
  %cmp37 = icmp slt i32 %conv33, %conv36, !dbg !554
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !555

if.then39:                                        ; preds = %if.end31
  br label %for.end, !dbg !556

if.end40:                                         ; preds = %if.end31
  %33 = load ptr, ptr %key.addr, align 8, !dbg !557
  %source_type41 = getelementptr inbounds %struct.avtab_key, ptr %33, i32 0, i32 0, !dbg !559
  %34 = load i16, ptr %source_type41, align 2, !dbg !559
  %conv42 = zext i16 %34 to i32, !dbg !557
  %35 = load ptr, ptr %cur, align 8, !dbg !560
  %key43 = getelementptr inbounds %struct.avtab_node, ptr %35, i32 0, i32 0, !dbg !561
  %source_type44 = getelementptr inbounds %struct.avtab_key, ptr %key43, i32 0, i32 0, !dbg !562
  %36 = load i16, ptr %source_type44, align 8, !dbg !562
  %conv45 = zext i16 %36 to i32, !dbg !560
  %cmp46 = icmp eq i32 %conv42, %conv45, !dbg !563
  br i1 %cmp46, label %land.lhs.true48, label %if.end57, !dbg !564

land.lhs.true48:                                  ; preds = %if.end40
  %37 = load ptr, ptr %key.addr, align 8, !dbg !565
  %target_type49 = getelementptr inbounds %struct.avtab_key, ptr %37, i32 0, i32 1, !dbg !566
  %38 = load i16, ptr %target_type49, align 2, !dbg !566
  %conv50 = zext i16 %38 to i32, !dbg !565
  %39 = load ptr, ptr %cur, align 8, !dbg !567
  %key51 = getelementptr inbounds %struct.avtab_node, ptr %39, i32 0, i32 0, !dbg !568
  %target_type52 = getelementptr inbounds %struct.avtab_key, ptr %key51, i32 0, i32 1, !dbg !569
  %40 = load i16, ptr %target_type52, align 2, !dbg !569
  %conv53 = zext i16 %40 to i32, !dbg !567
  %cmp54 = icmp slt i32 %conv50, %conv53, !dbg !570
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !571

if.then56:                                        ; preds = %land.lhs.true48
  br label %for.end, !dbg !572

if.end57:                                         ; preds = %land.lhs.true48, %if.end40
  %41 = load ptr, ptr %key.addr, align 8, !dbg !573
  %source_type58 = getelementptr inbounds %struct.avtab_key, ptr %41, i32 0, i32 0, !dbg !575
  %42 = load i16, ptr %source_type58, align 2, !dbg !575
  %conv59 = zext i16 %42 to i32, !dbg !573
  %43 = load ptr, ptr %cur, align 8, !dbg !576
  %key60 = getelementptr inbounds %struct.avtab_node, ptr %43, i32 0, i32 0, !dbg !577
  %source_type61 = getelementptr inbounds %struct.avtab_key, ptr %key60, i32 0, i32 0, !dbg !578
  %44 = load i16, ptr %source_type61, align 8, !dbg !578
  %conv62 = zext i16 %44 to i32, !dbg !576
  %cmp63 = icmp eq i32 %conv59, %conv62, !dbg !579
  br i1 %cmp63, label %land.lhs.true65, label %if.end82, !dbg !580

land.lhs.true65:                                  ; preds = %if.end57
  %45 = load ptr, ptr %key.addr, align 8, !dbg !581
  %target_type66 = getelementptr inbounds %struct.avtab_key, ptr %45, i32 0, i32 1, !dbg !582
  %46 = load i16, ptr %target_type66, align 2, !dbg !582
  %conv67 = zext i16 %46 to i32, !dbg !581
  %47 = load ptr, ptr %cur, align 8, !dbg !583
  %key68 = getelementptr inbounds %struct.avtab_node, ptr %47, i32 0, i32 0, !dbg !584
  %target_type69 = getelementptr inbounds %struct.avtab_key, ptr %key68, i32 0, i32 1, !dbg !585
  %48 = load i16, ptr %target_type69, align 2, !dbg !585
  %conv70 = zext i16 %48 to i32, !dbg !583
  %cmp71 = icmp eq i32 %conv67, %conv70, !dbg !586
  br i1 %cmp71, label %land.lhs.true73, label %if.end82, !dbg !587

land.lhs.true73:                                  ; preds = %land.lhs.true65
  %49 = load ptr, ptr %key.addr, align 8, !dbg !588
  %target_class74 = getelementptr inbounds %struct.avtab_key, ptr %49, i32 0, i32 2, !dbg !589
  %50 = load i16, ptr %target_class74, align 2, !dbg !589
  %conv75 = zext i16 %50 to i32, !dbg !588
  %51 = load ptr, ptr %cur, align 8, !dbg !590
  %key76 = getelementptr inbounds %struct.avtab_node, ptr %51, i32 0, i32 0, !dbg !591
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %key76, i32 0, i32 2, !dbg !592
  %52 = load i16, ptr %target_class77, align 4, !dbg !592
  %conv78 = zext i16 %52 to i32, !dbg !590
  %cmp79 = icmp slt i32 %conv75, %conv78, !dbg !593
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !594

if.then81:                                        ; preds = %land.lhs.true73
  br label %for.end, !dbg !595

if.end82:                                         ; preds = %land.lhs.true73, %land.lhs.true65, %if.end57
  br label %for.inc, !dbg !596

for.inc:                                          ; preds = %if.end82
  %53 = load ptr, ptr %cur, align 8, !dbg !597
  %next = getelementptr inbounds %struct.avtab_node, ptr %53, i32 0, i32 2, !dbg !598
  %54 = load ptr, ptr %next, align 8, !dbg !598
  store ptr %54, ptr %cur, align 8, !dbg !599
  br label %for.cond, !dbg !600, !llvm.loop !601

for.end:                                          ; preds = %if.then81, %if.then56, %if.then39, %for.cond
  store ptr null, ptr %retval, align 8, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

cleanup:                                          ; preds = %for.end, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %specified) #13, !dbg !604
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !604
  call void @llvm.lifetime.end.p0(i64 4, ptr %hvalue) #13, !dbg !604
  %55 = load ptr, ptr %retval, align 8, !dbg !604
  ret ptr %55, !dbg !604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @avtab_search_node_next(ptr noundef %node, i16 noundef zeroext %specified) #0 align 16 !dbg !605 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %specified.addr = alloca i16, align 2
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !609, metadata !DIExpression()), !dbg !612
  store i16 %specified, ptr %specified.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %specified.addr, metadata !610, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !611, metadata !DIExpression()), !dbg !615
  %0 = load ptr, ptr %node.addr, align 8, !dbg !616
  %tobool = icmp ne ptr %0, null, !dbg !616
  br i1 %tobool, label %if.end, label %if.then, !dbg !618

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !619

if.end:                                           ; preds = %entry
  %1 = load i16, ptr %specified.addr, align 2, !dbg !620
  %conv = zext i16 %1 to i32, !dbg !620
  %and = and i32 %conv, 2147450879, !dbg !620
  %conv1 = trunc i32 %and to i16, !dbg !620
  store i16 %conv1, ptr %specified.addr, align 2, !dbg !620
  %2 = load ptr, ptr %node.addr, align 8, !dbg !621
  %next = getelementptr inbounds %struct.avtab_node, ptr %2, i32 0, i32 2, !dbg !623
  %3 = load ptr, ptr %next, align 8, !dbg !623
  store ptr %3, ptr %cur, align 8, !dbg !624
  br label %for.cond, !dbg !625

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %cur, align 8, !dbg !626
  %tobool2 = icmp ne ptr %4, null, !dbg !628
  br i1 %tobool2, label %for.body, label %for.end, !dbg !628

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %node.addr, align 8, !dbg !629
  %key = getelementptr inbounds %struct.avtab_node, ptr %5, i32 0, i32 0, !dbg !632
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !633
  %6 = load i16, ptr %source_type, align 8, !dbg !633
  %conv3 = zext i16 %6 to i32, !dbg !629
  %7 = load ptr, ptr %cur, align 8, !dbg !634
  %key4 = getelementptr inbounds %struct.avtab_node, ptr %7, i32 0, i32 0, !dbg !635
  %source_type5 = getelementptr inbounds %struct.avtab_key, ptr %key4, i32 0, i32 0, !dbg !636
  %8 = load i16, ptr %source_type5, align 8, !dbg !636
  %conv6 = zext i16 %8 to i32, !dbg !634
  %cmp = icmp eq i32 %conv3, %conv6, !dbg !637
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !638

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %node.addr, align 8, !dbg !639
  %key8 = getelementptr inbounds %struct.avtab_node, ptr %9, i32 0, i32 0, !dbg !640
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %key8, i32 0, i32 1, !dbg !641
  %10 = load i16, ptr %target_type, align 2, !dbg !641
  %conv9 = zext i16 %10 to i32, !dbg !639
  %11 = load ptr, ptr %cur, align 8, !dbg !642
  %key10 = getelementptr inbounds %struct.avtab_node, ptr %11, i32 0, i32 0, !dbg !643
  %target_type11 = getelementptr inbounds %struct.avtab_key, ptr %key10, i32 0, i32 1, !dbg !644
  %12 = load i16, ptr %target_type11, align 2, !dbg !644
  %conv12 = zext i16 %12 to i32, !dbg !642
  %cmp13 = icmp eq i32 %conv9, %conv12, !dbg !645
  br i1 %cmp13, label %land.lhs.true15, label %if.end31, !dbg !646

land.lhs.true15:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %node.addr, align 8, !dbg !647
  %key16 = getelementptr inbounds %struct.avtab_node, ptr %13, i32 0, i32 0, !dbg !648
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %key16, i32 0, i32 2, !dbg !649
  %14 = load i16, ptr %target_class, align 4, !dbg !649
  %conv17 = zext i16 %14 to i32, !dbg !647
  %15 = load ptr, ptr %cur, align 8, !dbg !650
  %key18 = getelementptr inbounds %struct.avtab_node, ptr %15, i32 0, i32 0, !dbg !651
  %target_class19 = getelementptr inbounds %struct.avtab_key, ptr %key18, i32 0, i32 2, !dbg !652
  %16 = load i16, ptr %target_class19, align 4, !dbg !652
  %conv20 = zext i16 %16 to i32, !dbg !650
  %cmp21 = icmp eq i32 %conv17, %conv20, !dbg !653
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !654

land.lhs.true23:                                  ; preds = %land.lhs.true15
  %17 = load i16, ptr %specified.addr, align 2, !dbg !655
  %conv24 = zext i16 %17 to i32, !dbg !655
  %18 = load ptr, ptr %cur, align 8, !dbg !656
  %key25 = getelementptr inbounds %struct.avtab_node, ptr %18, i32 0, i32 0, !dbg !657
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %key25, i32 0, i32 3, !dbg !658
  %19 = load i16, ptr %specified26, align 2, !dbg !658
  %conv27 = zext i16 %19 to i32, !dbg !656
  %and28 = and i32 %conv24, %conv27, !dbg !659
  %tobool29 = icmp ne i32 %and28, 0, !dbg !659
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !660

if.then30:                                        ; preds = %land.lhs.true23
  %20 = load ptr, ptr %cur, align 8, !dbg !661
  store ptr %20, ptr %retval, align 8, !dbg !662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !662

if.end31:                                         ; preds = %land.lhs.true23, %land.lhs.true15, %land.lhs.true, %for.body
  %21 = load ptr, ptr %node.addr, align 8, !dbg !663
  %key32 = getelementptr inbounds %struct.avtab_node, ptr %21, i32 0, i32 0, !dbg !665
  %source_type33 = getelementptr inbounds %struct.avtab_key, ptr %key32, i32 0, i32 0, !dbg !666
  %22 = load i16, ptr %source_type33, align 8, !dbg !666
  %conv34 = zext i16 %22 to i32, !dbg !663
  %23 = load ptr, ptr %cur, align 8, !dbg !667
  %key35 = getelementptr inbounds %struct.avtab_node, ptr %23, i32 0, i32 0, !dbg !668
  %source_type36 = getelementptr inbounds %struct.avtab_key, ptr %key35, i32 0, i32 0, !dbg !669
  %24 = load i16, ptr %source_type36, align 8, !dbg !669
  %conv37 = zext i16 %24 to i32, !dbg !667
  %cmp38 = icmp slt i32 %conv34, %conv37, !dbg !670
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !671

if.then40:                                        ; preds = %if.end31
  br label %for.end, !dbg !672

if.end41:                                         ; preds = %if.end31
  %25 = load ptr, ptr %node.addr, align 8, !dbg !673
  %key42 = getelementptr inbounds %struct.avtab_node, ptr %25, i32 0, i32 0, !dbg !675
  %source_type43 = getelementptr inbounds %struct.avtab_key, ptr %key42, i32 0, i32 0, !dbg !676
  %26 = load i16, ptr %source_type43, align 8, !dbg !676
  %conv44 = zext i16 %26 to i32, !dbg !673
  %27 = load ptr, ptr %cur, align 8, !dbg !677
  %key45 = getelementptr inbounds %struct.avtab_node, ptr %27, i32 0, i32 0, !dbg !678
  %source_type46 = getelementptr inbounds %struct.avtab_key, ptr %key45, i32 0, i32 0, !dbg !679
  %28 = load i16, ptr %source_type46, align 8, !dbg !679
  %conv47 = zext i16 %28 to i32, !dbg !677
  %cmp48 = icmp eq i32 %conv44, %conv47, !dbg !680
  br i1 %cmp48, label %land.lhs.true50, label %if.end60, !dbg !681

land.lhs.true50:                                  ; preds = %if.end41
  %29 = load ptr, ptr %node.addr, align 8, !dbg !682
  %key51 = getelementptr inbounds %struct.avtab_node, ptr %29, i32 0, i32 0, !dbg !683
  %target_type52 = getelementptr inbounds %struct.avtab_key, ptr %key51, i32 0, i32 1, !dbg !684
  %30 = load i16, ptr %target_type52, align 2, !dbg !684
  %conv53 = zext i16 %30 to i32, !dbg !682
  %31 = load ptr, ptr %cur, align 8, !dbg !685
  %key54 = getelementptr inbounds %struct.avtab_node, ptr %31, i32 0, i32 0, !dbg !686
  %target_type55 = getelementptr inbounds %struct.avtab_key, ptr %key54, i32 0, i32 1, !dbg !687
  %32 = load i16, ptr %target_type55, align 2, !dbg !687
  %conv56 = zext i16 %32 to i32, !dbg !685
  %cmp57 = icmp slt i32 %conv53, %conv56, !dbg !688
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !689

if.then59:                                        ; preds = %land.lhs.true50
  br label %for.end, !dbg !690

if.end60:                                         ; preds = %land.lhs.true50, %if.end41
  %33 = load ptr, ptr %node.addr, align 8, !dbg !691
  %key61 = getelementptr inbounds %struct.avtab_node, ptr %33, i32 0, i32 0, !dbg !693
  %source_type62 = getelementptr inbounds %struct.avtab_key, ptr %key61, i32 0, i32 0, !dbg !694
  %34 = load i16, ptr %source_type62, align 8, !dbg !694
  %conv63 = zext i16 %34 to i32, !dbg !691
  %35 = load ptr, ptr %cur, align 8, !dbg !695
  %key64 = getelementptr inbounds %struct.avtab_node, ptr %35, i32 0, i32 0, !dbg !696
  %source_type65 = getelementptr inbounds %struct.avtab_key, ptr %key64, i32 0, i32 0, !dbg !697
  %36 = load i16, ptr %source_type65, align 8, !dbg !697
  %conv66 = zext i16 %36 to i32, !dbg !695
  %cmp67 = icmp eq i32 %conv63, %conv66, !dbg !698
  br i1 %cmp67, label %land.lhs.true69, label %if.end88, !dbg !699

land.lhs.true69:                                  ; preds = %if.end60
  %37 = load ptr, ptr %node.addr, align 8, !dbg !700
  %key70 = getelementptr inbounds %struct.avtab_node, ptr %37, i32 0, i32 0, !dbg !701
  %target_type71 = getelementptr inbounds %struct.avtab_key, ptr %key70, i32 0, i32 1, !dbg !702
  %38 = load i16, ptr %target_type71, align 2, !dbg !702
  %conv72 = zext i16 %38 to i32, !dbg !700
  %39 = load ptr, ptr %cur, align 8, !dbg !703
  %key73 = getelementptr inbounds %struct.avtab_node, ptr %39, i32 0, i32 0, !dbg !704
  %target_type74 = getelementptr inbounds %struct.avtab_key, ptr %key73, i32 0, i32 1, !dbg !705
  %40 = load i16, ptr %target_type74, align 2, !dbg !705
  %conv75 = zext i16 %40 to i32, !dbg !703
  %cmp76 = icmp eq i32 %conv72, %conv75, !dbg !706
  br i1 %cmp76, label %land.lhs.true78, label %if.end88, !dbg !707

land.lhs.true78:                                  ; preds = %land.lhs.true69
  %41 = load ptr, ptr %node.addr, align 8, !dbg !708
  %key79 = getelementptr inbounds %struct.avtab_node, ptr %41, i32 0, i32 0, !dbg !709
  %target_class80 = getelementptr inbounds %struct.avtab_key, ptr %key79, i32 0, i32 2, !dbg !710
  %42 = load i16, ptr %target_class80, align 4, !dbg !710
  %conv81 = zext i16 %42 to i32, !dbg !708
  %43 = load ptr, ptr %cur, align 8, !dbg !711
  %key82 = getelementptr inbounds %struct.avtab_node, ptr %43, i32 0, i32 0, !dbg !712
  %target_class83 = getelementptr inbounds %struct.avtab_key, ptr %key82, i32 0, i32 2, !dbg !713
  %44 = load i16, ptr %target_class83, align 4, !dbg !713
  %conv84 = zext i16 %44 to i32, !dbg !711
  %cmp85 = icmp slt i32 %conv81, %conv84, !dbg !714
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !715

if.then87:                                        ; preds = %land.lhs.true78
  br label %for.end, !dbg !716

if.end88:                                         ; preds = %land.lhs.true78, %land.lhs.true69, %if.end60
  br label %for.inc, !dbg !717

for.inc:                                          ; preds = %if.end88
  %45 = load ptr, ptr %cur, align 8, !dbg !718
  %next89 = getelementptr inbounds %struct.avtab_node, ptr %45, i32 0, i32 2, !dbg !719
  %46 = load ptr, ptr %next89, align 8, !dbg !719
  store ptr %46, ptr %cur, align 8, !dbg !720
  br label %for.cond, !dbg !721, !llvm.loop !722

for.end:                                          ; preds = %if.then87, %if.then59, %if.then40, %for.cond
  store ptr null, ptr %retval, align 8, !dbg !724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !724

cleanup:                                          ; preds = %for.end, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !725
  %47 = load ptr, ptr %retval, align 8, !dbg !725
  ret ptr %47, !dbg !725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @avtab_destroy(ptr noundef %h) #0 align 16 !dbg !726 {
entry:
  %h.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cur = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !730, metadata !DIExpression()), !dbg !734
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !735
  call void @llvm.dbg.declare(metadata ptr %i, metadata !731, metadata !DIExpression()), !dbg !736
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !732, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #13, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !733, metadata !DIExpression()), !dbg !739
  %0 = load ptr, ptr %h.addr, align 8, !dbg !740
  %tobool = icmp ne ptr %0, null, !dbg !740
  br i1 %tobool, label %if.end, label %if.then, !dbg !742

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !743

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !744
  br label %for.cond, !dbg !746

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !747
  %2 = load ptr, ptr %h.addr, align 8, !dbg !749
  %nslot = getelementptr inbounds %struct.avtab, ptr %2, i32 0, i32 2, !dbg !750
  %3 = load i32, ptr %nslot, align 4, !dbg !750
  %cmp = icmp ult i32 %1, %3, !dbg !751
  br i1 %cmp, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %h.addr, align 8, !dbg !753
  %htable = getelementptr inbounds %struct.avtab, ptr %4, i32 0, i32 0, !dbg !755
  %5 = load ptr, ptr %htable, align 8, !dbg !755
  %6 = load i32, ptr %i, align 4, !dbg !756
  %idxprom = zext i32 %6 to i64, !dbg !753
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !753
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !753
  store ptr %7, ptr %cur, align 8, !dbg !757
  br label %while.cond, !dbg !758

while.cond:                                       ; preds = %if.end4, %for.body
  %8 = load ptr, ptr %cur, align 8, !dbg !759
  %tobool1 = icmp ne ptr %8, null, !dbg !758
  br i1 %tobool1, label %while.body, label %while.end, !dbg !758

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %cur, align 8, !dbg !760
  store ptr %9, ptr %temp, align 8, !dbg !762
  %10 = load ptr, ptr %cur, align 8, !dbg !763
  %next = getelementptr inbounds %struct.avtab_node, ptr %10, i32 0, i32 2, !dbg !764
  %11 = load ptr, ptr %next, align 8, !dbg !764
  store ptr %11, ptr %cur, align 8, !dbg !765
  %12 = load ptr, ptr %temp, align 8, !dbg !766
  %key = getelementptr inbounds %struct.avtab_node, ptr %12, i32 0, i32 0, !dbg !768
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !769
  %13 = load i16, ptr %specified, align 2, !dbg !769
  %conv = zext i16 %13 to i32, !dbg !766
  %and = and i32 %conv, 1792, !dbg !770
  %tobool2 = icmp ne i32 %and, 0, !dbg !770
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !771

if.then3:                                         ; preds = %while.body
  %14 = load ptr, ptr @avtab_xperms_cachep, align 8, !dbg !772
  %15 = load ptr, ptr %temp, align 8, !dbg !773
  %datum = getelementptr inbounds %struct.avtab_node, ptr %15, i32 0, i32 1, !dbg !774
  %u = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !775
  %16 = load ptr, ptr %u, align 8, !dbg !776
  call void @kmem_cache_free(ptr noundef %14, ptr noundef %16) #14, !dbg !777
  br label %if.end4, !dbg !777

if.end4:                                          ; preds = %if.then3, %while.body
  %17 = load ptr, ptr @avtab_node_cachep, align 8, !dbg !778
  %18 = load ptr, ptr %temp, align 8, !dbg !779
  call void @kmem_cache_free(ptr noundef %17, ptr noundef %18) #14, !dbg !780
  br label %while.cond, !dbg !758, !llvm.loop !781

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !783

for.inc:                                          ; preds = %while.end
  %19 = load i32, ptr %i, align 4, !dbg !784
  %inc = add i32 %19, 1, !dbg !784
  store i32 %inc, ptr %i, align 4, !dbg !784
  br label %for.cond, !dbg !785, !llvm.loop !786

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %h.addr, align 8, !dbg !788
  %htable5 = getelementptr inbounds %struct.avtab, ptr %20, i32 0, i32 0, !dbg !789
  %21 = load ptr, ptr %htable5, align 8, !dbg !789
  call void @kvfree(ptr noundef %21) #14, !dbg !790
  %22 = load ptr, ptr %h.addr, align 8, !dbg !791
  %htable6 = getelementptr inbounds %struct.avtab, ptr %22, i32 0, i32 0, !dbg !792
  store ptr null, ptr %htable6, align 8, !dbg !793
  %23 = load ptr, ptr %h.addr, align 8, !dbg !794
  %nel = getelementptr inbounds %struct.avtab, ptr %23, i32 0, i32 1, !dbg !795
  store i32 0, ptr %nel, align 8, !dbg !796
  %24 = load ptr, ptr %h.addr, align 8, !dbg !797
  %nslot7 = getelementptr inbounds %struct.avtab, ptr %24, i32 0, i32 2, !dbg !798
  store i32 0, ptr %nslot7, align 4, !dbg !799
  %25 = load ptr, ptr %h.addr, align 8, !dbg !800
  %mask = getelementptr inbounds %struct.avtab, ptr %25, i32 0, i32 3, !dbg !801
  store i32 0, ptr %mask, align 8, !dbg !802
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !803
  br label %cleanup, !dbg !803

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #13, !dbg !803
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !803
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !803
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !803

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !804 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !808 dso_local void @kvfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @avtab_init(ptr noundef %h) #0 align 16 !dbg !813 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !815, metadata !DIExpression()), !dbg !816
  %0 = load ptr, ptr %h.addr, align 8, !dbg !817
  %htable = getelementptr inbounds %struct.avtab, ptr %0, i32 0, i32 0, !dbg !818
  store ptr null, ptr %htable, align 8, !dbg !819
  %1 = load ptr, ptr %h.addr, align 8, !dbg !820
  %nel = getelementptr inbounds %struct.avtab, ptr %1, i32 0, i32 1, !dbg !821
  store i32 0, ptr %nel, align 8, !dbg !822
  %2 = load ptr, ptr %h.addr, align 8, !dbg !823
  %nslot = getelementptr inbounds %struct.avtab, ptr %2, i32 0, i32 2, !dbg !824
  store i32 0, ptr %nslot, align 4, !dbg !825
  %3 = load ptr, ptr %h.addr, align 8, !dbg !826
  %mask = getelementptr inbounds %struct.avtab, ptr %3, i32 0, i32 3, !dbg !827
  store i32 0, ptr %mask, align 8, !dbg !828
  ret void, !dbg !829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_alloc(ptr noundef %h, i32 noundef %nrules) #0 align 16 !dbg !830 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %nrules.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %nslot = alloca i32, align 4
  %shift = alloca i32, align 4
  %work = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !834, metadata !DIExpression()), !dbg !842
  store i32 %nrules, ptr %nrules.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nrules.addr, metadata !835, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #13, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !836, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 4, ptr %nslot) #13, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %nslot, metadata !837, metadata !DIExpression()), !dbg !847
  store i32 0, ptr %nslot, align 4, !dbg !847
  %0 = load i32, ptr %nrules.addr, align 4, !dbg !848
  %cmp = icmp ne i32 %0, 0, !dbg !849
  br i1 %cmp, label %if.then, label %if.end8, !dbg !850

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #13, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !838, metadata !DIExpression()), !dbg !852
  store i32 1, ptr %shift, align 4, !dbg !852
  call void @llvm.lifetime.start.p0(i64 4, ptr %work) #13, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %work, metadata !841, metadata !DIExpression()), !dbg !854
  %1 = load i32, ptr %nrules.addr, align 4, !dbg !855
  %shr = lshr i32 %1, 3, !dbg !856
  store i32 %shr, ptr %work, align 4, !dbg !854
  br label %while.cond, !dbg !857

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, ptr %work, align 4, !dbg !858
  %tobool = icmp ne i32 %2, 0, !dbg !857
  br i1 %tobool, label %while.body, label %while.end, !dbg !857

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %work, align 4, !dbg !859
  %shr1 = lshr i32 %3, 1, !dbg !859
  store i32 %shr1, ptr %work, align 4, !dbg !859
  %4 = load i32, ptr %shift, align 4, !dbg !861
  %inc = add i32 %4, 1, !dbg !861
  store i32 %inc, ptr %shift, align 4, !dbg !861
  br label %while.cond, !dbg !857, !llvm.loop !862

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %shift, align 4, !dbg !864
  %shl = shl i32 1, %5, !dbg !865
  store i32 %shl, ptr %nslot, align 4, !dbg !866
  %6 = load i32, ptr %nslot, align 4, !dbg !867
  %cmp2 = icmp ugt i32 %6, 65536, !dbg !869
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !870

if.then3:                                         ; preds = %while.end
  store i32 65536, ptr %nslot, align 4, !dbg !871
  br label %if.end, !dbg !872

if.end:                                           ; preds = %if.then3, %while.end
  %7 = load ptr, ptr %h.addr, align 8, !dbg !873
  %8 = load i32, ptr %nslot, align 4, !dbg !874
  %call = call i32 @avtab_alloc_common(ptr noundef %7, i32 noundef %8) #14, !dbg !875
  store i32 %call, ptr %rc, align 4, !dbg !876
  %9 = load i32, ptr %rc, align 4, !dbg !877
  %tobool4 = icmp ne i32 %9, 0, !dbg !877
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !879

if.then5:                                         ; preds = %if.end
  %10 = load i32, ptr %rc, align 4, !dbg !880
  store i32 %10, ptr %retval, align 4, !dbg !881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !881

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !882
  br label %cleanup, !dbg !882

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %work) #13, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #13, !dbg !882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !883

if.end8:                                          ; preds = %cleanup.cont, %entry
  store i32 0, ptr %tmp, align 4, !dbg !884
  %11 = load i32, ptr %tmp, align 4, !dbg !887
  store i32 0, ptr %retval, align 4, !dbg !888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !888

cleanup9:                                         ; preds = %if.end8, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %nslot) #13, !dbg !889
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #13, !dbg !889
  %12 = load i32, ptr %retval, align 4, !dbg !889
  ret i32 %12, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @avtab_alloc_common(ptr noundef %h, i32 noundef %nslot) #0 align 16 !dbg !890 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %nslot.addr = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !892, metadata !DIExpression()), !dbg !894
  store i32 %nslot, ptr %nslot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nslot.addr, metadata !893, metadata !DIExpression()), !dbg !895
  %0 = load i32, ptr %nslot.addr, align 4, !dbg !896
  %tobool = icmp ne i32 %0, 0, !dbg !896
  br i1 %tobool, label %if.end, label %if.then, !dbg !898

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !899
  br label %return, !dbg !899

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nslot.addr, align 4, !dbg !900
  %conv = zext i32 %1 to i64, !dbg !900
  %call = call noalias ptr @kvcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #15, !dbg !901
  %2 = load ptr, ptr %h.addr, align 8, !dbg !902
  %htable = getelementptr inbounds %struct.avtab, ptr %2, i32 0, i32 0, !dbg !903
  store ptr %call, ptr %htable, align 8, !dbg !904
  %3 = load ptr, ptr %h.addr, align 8, !dbg !905
  %htable1 = getelementptr inbounds %struct.avtab, ptr %3, i32 0, i32 0, !dbg !907
  %4 = load ptr, ptr %htable1, align 8, !dbg !907
  %tobool2 = icmp ne ptr %4, null, !dbg !905
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !908

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !909
  br label %return, !dbg !909

if.end4:                                          ; preds = %if.end
  %5 = load i32, ptr %nslot.addr, align 4, !dbg !910
  %6 = load ptr, ptr %h.addr, align 8, !dbg !911
  %nslot5 = getelementptr inbounds %struct.avtab, ptr %6, i32 0, i32 2, !dbg !912
  store i32 %5, ptr %nslot5, align 4, !dbg !913
  %7 = load i32, ptr %nslot.addr, align 4, !dbg !914
  %sub = sub i32 %7, 1, !dbg !915
  %8 = load ptr, ptr %h.addr, align 8, !dbg !916
  %mask = getelementptr inbounds %struct.avtab, ptr %8, i32 0, i32 3, !dbg !917
  store i32 %sub, ptr %mask, align 8, !dbg !918
  store i32 0, ptr %retval, align 4, !dbg !919
  br label %return, !dbg !919

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !920
  ret i32 %9, !dbg !920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_alloc_dup(ptr noundef %new, ptr noundef %orig) #0 align 16 !dbg !921 {
entry:
  %new.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !927, metadata !DIExpression()), !dbg !929
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !928, metadata !DIExpression()), !dbg !930
  %0 = load ptr, ptr %new.addr, align 8, !dbg !931
  %1 = load ptr, ptr %orig.addr, align 8, !dbg !932
  %nslot = getelementptr inbounds %struct.avtab, ptr %1, i32 0, i32 2, !dbg !933
  %2 = load i32, ptr %nslot, align 4, !dbg !933
  %call = call i32 @avtab_alloc_common(ptr noundef %0, i32 noundef %2) #14, !dbg !934
  ret i32 %call, !dbg !935
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_read_item(ptr noundef %a, ptr noundef %fp, ptr noundef %pol, ptr noundef %insertf, ptr noundef %p) #0 align 16 !dbg !936 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %pol.addr = alloca ptr, align 8
  %insertf.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %buf16 = alloca [4 x i16], align 2
  %enabled = alloca i16, align 2
  %items = alloca i32, align 4
  %items2 = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %key = alloca %struct.avtab_key, align 2
  %datum = alloca %struct.avtab_datum, align 8
  %xperms = alloca %struct.avtab_extended_perms, align 4
  %buf32 = alloca [8 x i32], align 16
  %rc = alloca i32, align 4
  %set = alloca i32, align 4
  %vers = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %tmp97 = alloca i32, align 4
  %tmp129 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %tmp176 = alloca i32, align 4
  %tmp205 = alloca i32, align 4
  %tmp219 = alloca i32, align 4
  %tmp233 = alloca i32, align 4
  %tmp242 = alloca i32, align 4
  %tmp252 = alloca i32, align 4
  %tmp277 = alloca i32, align 4
  %tmp296 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1175, metadata !DIExpression()), !dbg !1195
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1176, metadata !DIExpression()), !dbg !1196
  store ptr %pol, ptr %pol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pol.addr, metadata !1177, metadata !DIExpression()), !dbg !1197
  store ptr %insertf, ptr %insertf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insertf.addr, metadata !1178, metadata !DIExpression()), !dbg !1198
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1179, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf16) #13, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %buf16, metadata !1180, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 2, ptr %enabled) #13, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !1182, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 4, ptr %items) #13, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %items, metadata !1183, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %items2) #13, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %items2, metadata !1184, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1185, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1186, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #13, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1187, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 8, ptr %datum) #13, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %datum, metadata !1188, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 36, ptr %xperms) #13, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %xperms, metadata !1189, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf32) #13, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %buf32, metadata !1190, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #13, !dbg !1217
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1192, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 4, ptr %set) #13, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %set, metadata !1193, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 4, ptr %vers) #13, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %vers, metadata !1194, metadata !DIExpression()), !dbg !1221
  %0 = load ptr, ptr %pol.addr, align 8, !dbg !1222
  %policyvers = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 24, !dbg !1223
  %1 = load i32, ptr %policyvers, align 8, !dbg !1223
  store i32 %1, ptr %vers, align 4, !dbg !1221
  call void @llvm.memset.p0.i64(ptr align 2 %key, i8 0, i64 8, i1 false), !dbg !1224
  call void @llvm.memset.p0.i64(ptr align 8 %datum, i8 0, i64 8, i1 false), !dbg !1225
  %2 = load i32, ptr %vers, align 4, !dbg !1226
  %cmp = icmp ult i32 %2, 20, !dbg !1228
  br i1 %cmp, label %if.then, label %if.end132, !dbg !1229

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1230
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !1232
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %3, i64 noundef 4) #14, !dbg !1233
  store i32 %call, ptr %rc, align 4, !dbg !1234
  %4 = load i32, ptr %rc, align 4, !dbg !1235
  %tobool = icmp ne i32 %4, 0, !dbg !1235
  br i1 %tobool, label %if.then1, label %if.end, !dbg !1237

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !1238

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !1241

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1241

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1238
  store i32 %call2, ptr %tmp, align 4, !dbg !1241
  %5 = load i32, ptr %tmp, align 4, !dbg !1238
  %6 = load i32, ptr %rc, align 4, !dbg !1243
  store i32 %6, ptr %retval, align 4, !dbg !1244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1244

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1245
  %7 = load i32, ptr %arrayidx, align 16, !dbg !1245
  store i32 %7, ptr %items2, align 4, !dbg !1246
  %8 = load i32, ptr %items2, align 4, !dbg !1247
  %conv = zext i32 %8 to i64, !dbg !1247
  %cmp3 = icmp ugt i64 %conv, 8, !dbg !1249
  br i1 %cmp3, label %if.then5, label %if.end11, !dbg !1250

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !1251

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !1254

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !1254

do.end8:                                          ; preds = %do.cond7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #16, !dbg !1251
  store i32 %call10, ptr %tmp9, align 4, !dbg !1254
  %9 = load i32, ptr %tmp9, align 4, !dbg !1251
  store i32 -22, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end11:                                         ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1257
  %10 = load ptr, ptr %fp.addr, align 8, !dbg !1258
  %11 = load i32, ptr %items2, align 4, !dbg !1259
  %conv13 = zext i32 %11 to i64, !dbg !1259
  %mul = mul i64 4, %conv13, !dbg !1260
  %call14 = call i32 @next_entry(ptr noundef %arraydecay12, ptr noundef %10, i64 noundef %mul) #14, !dbg !1261
  store i32 %call14, ptr %rc, align 4, !dbg !1262
  %12 = load i32, ptr %rc, align 4, !dbg !1263
  %tobool15 = icmp ne i32 %12, 0, !dbg !1263
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !1265

if.then16:                                        ; preds = %if.end11
  br label %do.body17, !dbg !1266

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !1269

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1269

do.end19:                                         ; preds = %do.cond18
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1266
  store i32 %call21, ptr %tmp20, align 4, !dbg !1269
  %13 = load i32, ptr %tmp20, align 4, !dbg !1266
  %14 = load i32, ptr %rc, align 4, !dbg !1271
  store i32 %14, ptr %retval, align 4, !dbg !1272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1272

if.end22:                                         ; preds = %if.end11
  store i32 0, ptr %items, align 4, !dbg !1273
  %15 = load i32, ptr %items, align 4, !dbg !1274
  %inc = add i32 %15, 1, !dbg !1274
  store i32 %inc, ptr %items, align 4, !dbg !1274
  %idxprom = zext i32 %15 to i64, !dbg !1274
  %arrayidx23 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom, !dbg !1274
  %16 = load i32, ptr %arrayidx23, align 4, !dbg !1274
  store i32 %16, ptr %val, align 4, !dbg !1275
  %17 = load i32, ptr %val, align 4, !dbg !1276
  %conv24 = trunc i32 %17 to i16, !dbg !1277
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !1278
  store i16 %conv24, ptr %source_type, align 2, !dbg !1279
  %source_type25 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !1280
  %18 = load i16, ptr %source_type25, align 2, !dbg !1280
  %conv26 = zext i16 %18 to i32, !dbg !1282
  %19 = load i32, ptr %val, align 4, !dbg !1283
  %cmp27 = icmp ne i32 %conv26, %19, !dbg !1284
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !1285

if.then29:                                        ; preds = %if.end22
  br label %do.body30, !dbg !1286

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !1289

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1289

do.end32:                                         ; preds = %do.cond31
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #16, !dbg !1286
  store i32 %call34, ptr %tmp33, align 4, !dbg !1289
  %20 = load i32, ptr %tmp33, align 4, !dbg !1286
  store i32 -22, ptr %retval, align 4, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end35:                                         ; preds = %if.end22
  %21 = load i32, ptr %items, align 4, !dbg !1292
  %inc36 = add i32 %21, 1, !dbg !1292
  store i32 %inc36, ptr %items, align 4, !dbg !1292
  %idxprom37 = zext i32 %21 to i64, !dbg !1292
  %arrayidx38 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom37, !dbg !1292
  %22 = load i32, ptr %arrayidx38, align 4, !dbg !1292
  store i32 %22, ptr %val, align 4, !dbg !1293
  %23 = load i32, ptr %val, align 4, !dbg !1294
  %conv39 = trunc i32 %23 to i16, !dbg !1295
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1, !dbg !1296
  store i16 %conv39, ptr %target_type, align 2, !dbg !1297
  %target_type40 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1, !dbg !1298
  %24 = load i16, ptr %target_type40, align 2, !dbg !1298
  %conv41 = zext i16 %24 to i32, !dbg !1300
  %25 = load i32, ptr %val, align 4, !dbg !1301
  %cmp42 = icmp ne i32 %conv41, %25, !dbg !1302
  br i1 %cmp42, label %if.then44, label %if.end50, !dbg !1303

if.then44:                                        ; preds = %if.end35
  br label %do.body45, !dbg !1304

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !1307

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !1307

do.end47:                                         ; preds = %do.cond46
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #16, !dbg !1304
  store i32 %call49, ptr %tmp48, align 4, !dbg !1307
  %26 = load i32, ptr %tmp48, align 4, !dbg !1304
  store i32 -22, ptr %retval, align 4, !dbg !1309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1309

if.end50:                                         ; preds = %if.end35
  %27 = load i32, ptr %items, align 4, !dbg !1310
  %inc51 = add i32 %27, 1, !dbg !1310
  store i32 %inc51, ptr %items, align 4, !dbg !1310
  %idxprom52 = zext i32 %27 to i64, !dbg !1310
  %arrayidx53 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom52, !dbg !1310
  %28 = load i32, ptr %arrayidx53, align 4, !dbg !1310
  store i32 %28, ptr %val, align 4, !dbg !1311
  %29 = load i32, ptr %val, align 4, !dbg !1312
  %conv54 = trunc i32 %29 to i16, !dbg !1313
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2, !dbg !1314
  store i16 %conv54, ptr %target_class, align 2, !dbg !1315
  %target_class55 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2, !dbg !1316
  %30 = load i16, ptr %target_class55, align 2, !dbg !1316
  %conv56 = zext i16 %30 to i32, !dbg !1318
  %31 = load i32, ptr %val, align 4, !dbg !1319
  %cmp57 = icmp ne i32 %conv56, %31, !dbg !1320
  br i1 %cmp57, label %if.then59, label %if.end65, !dbg !1321

if.then59:                                        ; preds = %if.end50
  br label %do.body60, !dbg !1322

do.body60:                                        ; preds = %if.then59
  br label %do.cond61, !dbg !1325

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !1325

do.end62:                                         ; preds = %do.cond61
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #16, !dbg !1322
  store i32 %call64, ptr %tmp63, align 4, !dbg !1325
  %32 = load i32, ptr %tmp63, align 4, !dbg !1322
  store i32 -22, ptr %retval, align 4, !dbg !1327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1327

if.end65:                                         ; preds = %if.end50
  %33 = load i32, ptr %items, align 4, !dbg !1328
  %inc66 = add i32 %33, 1, !dbg !1328
  store i32 %inc66, ptr %items, align 4, !dbg !1328
  %idxprom67 = zext i32 %33 to i64, !dbg !1328
  %arrayidx68 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom67, !dbg !1328
  %34 = load i32, ptr %arrayidx68, align 4, !dbg !1328
  store i32 %34, ptr %val, align 4, !dbg !1329
  %35 = load i32, ptr %val, align 4, !dbg !1330
  %and = and i32 %35, -2147483648, !dbg !1331
  %tobool69 = icmp ne i32 %and, 0, !dbg !1332
  %36 = zext i1 %tobool69 to i64, !dbg !1332
  %cond = select i1 %tobool69, i32 32768, i32 0, !dbg !1332
  %conv70 = trunc i32 %cond to i16, !dbg !1332
  store i16 %conv70, ptr %enabled, align 2, !dbg !1333
  %37 = load i32, ptr %val, align 4, !dbg !1334
  %and71 = and i32 %37, 119, !dbg !1336
  %tobool72 = icmp ne i32 %and71, 0, !dbg !1336
  br i1 %tobool72, label %if.end79, label %if.then73, !dbg !1337

if.then73:                                        ; preds = %if.end65
  br label %do.body74, !dbg !1338

do.body74:                                        ; preds = %if.then73
  br label %do.cond75, !dbg !1341

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !1341

do.end76:                                         ; preds = %do.cond75
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #16, !dbg !1338
  store i32 %call78, ptr %tmp77, align 4, !dbg !1341
  %38 = load i32, ptr %tmp77, align 4, !dbg !1338
  store i32 -22, ptr %retval, align 4, !dbg !1343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1343

if.end79:                                         ; preds = %if.end65
  %39 = load i32, ptr %val, align 4, !dbg !1344
  %and80 = and i32 %39, 7, !dbg !1346
  %tobool81 = icmp ne i32 %and80, 0, !dbg !1346
  br i1 %tobool81, label %land.lhs.true, label %if.end90, !dbg !1347

land.lhs.true:                                    ; preds = %if.end79
  %40 = load i32, ptr %val, align 4, !dbg !1348
  %and82 = and i32 %40, 112, !dbg !1349
  %tobool83 = icmp ne i32 %and82, 0, !dbg !1349
  br i1 %tobool83, label %if.then84, label %if.end90, !dbg !1350

if.then84:                                        ; preds = %land.lhs.true
  br label %do.body85, !dbg !1351

do.body85:                                        ; preds = %if.then84
  br label %do.cond86, !dbg !1354

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !1354

do.end87:                                         ; preds = %do.cond86
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #16, !dbg !1351
  store i32 %call89, ptr %tmp88, align 4, !dbg !1354
  %41 = load i32, ptr %tmp88, align 4, !dbg !1351
  store i32 -22, ptr %retval, align 4, !dbg !1356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1356

if.end90:                                         ; preds = %land.lhs.true, %if.end79
  %42 = load i32, ptr %val, align 4, !dbg !1357
  %and91 = and i32 %42, 1792, !dbg !1359
  %tobool92 = icmp ne i32 %and91, 0, !dbg !1359
  br i1 %tobool92, label %if.then93, label %if.end99, !dbg !1360

if.then93:                                        ; preds = %if.end90
  br label %do.body94, !dbg !1361

do.body94:                                        ; preds = %if.then93
  br label %do.cond95, !dbg !1364

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !1364

do.end96:                                         ; preds = %do.cond95
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #16, !dbg !1361
  store i32 %call98, ptr %tmp97, align 4, !dbg !1364
  %43 = load i32, ptr %tmp97, align 4, !dbg !1361
  store i32 -22, ptr %retval, align 4, !dbg !1366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1366

if.end99:                                         ; preds = %if.end90
  store i32 0, ptr %i, align 4, !dbg !1367
  br label %for.cond, !dbg !1369

for.cond:                                         ; preds = %for.inc, %if.end99
  %44 = load i32, ptr %i, align 4, !dbg !1370
  %conv100 = zext i32 %44 to i64, !dbg !1370
  %cmp101 = icmp ult i64 %conv100, 9, !dbg !1372
  br i1 %cmp101, label %for.body, label %for.end, !dbg !1373

for.body:                                         ; preds = %for.cond
  %45 = load i32, ptr %val, align 4, !dbg !1374
  %46 = load i32, ptr %i, align 4, !dbg !1377
  %idxprom103 = zext i32 %46 to i64, !dbg !1378
  %arrayidx104 = getelementptr [9 x i16], ptr @spec_order, i64 0, i64 %idxprom103, !dbg !1378
  %47 = load i16, ptr %arrayidx104, align 2, !dbg !1378
  %conv105 = zext i16 %47 to i32, !dbg !1378
  %and106 = and i32 %45, %conv105, !dbg !1379
  %tobool107 = icmp ne i32 %and106, 0, !dbg !1379
  br i1 %tobool107, label %if.then108, label %if.end121, !dbg !1380

if.then108:                                       ; preds = %for.body
  %48 = load i32, ptr %i, align 4, !dbg !1381
  %idxprom109 = zext i32 %48 to i64, !dbg !1383
  %arrayidx110 = getelementptr [9 x i16], ptr @spec_order, i64 0, i64 %idxprom109, !dbg !1383
  %49 = load i16, ptr %arrayidx110, align 2, !dbg !1383
  %conv111 = zext i16 %49 to i32, !dbg !1383
  %50 = load i16, ptr %enabled, align 2, !dbg !1384
  %conv112 = zext i16 %50 to i32, !dbg !1384
  %or = or i32 %conv111, %conv112, !dbg !1385
  %conv113 = trunc i32 %or to i16, !dbg !1383
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1386
  store i16 %conv113, ptr %specified, align 2, !dbg !1387
  %51 = load i32, ptr %items, align 4, !dbg !1388
  %inc114 = add i32 %51, 1, !dbg !1388
  store i32 %inc114, ptr %items, align 4, !dbg !1388
  %idxprom115 = zext i32 %51 to i64, !dbg !1388
  %arrayidx116 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom115, !dbg !1388
  %52 = load i32, ptr %arrayidx116, align 4, !dbg !1388
  %u = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1389
  store i32 %52, ptr %u, align 8, !dbg !1390
  %53 = load ptr, ptr %insertf.addr, align 8, !dbg !1391
  %54 = load ptr, ptr %a.addr, align 8, !dbg !1392
  %55 = load ptr, ptr %p.addr, align 8, !dbg !1393
  %call117 = call i32 %53(ptr noundef %54, ptr noundef %key, ptr noundef %datum, ptr noundef %55) #14, !dbg !1391
  store i32 %call117, ptr %rc, align 4, !dbg !1394
  %56 = load i32, ptr %rc, align 4, !dbg !1395
  %tobool118 = icmp ne i32 %56, 0, !dbg !1395
  br i1 %tobool118, label %if.then119, label %if.end120, !dbg !1397

if.then119:                                       ; preds = %if.then108
  %57 = load i32, ptr %rc, align 4, !dbg !1398
  store i32 %57, ptr %retval, align 4, !dbg !1399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1399

if.end120:                                        ; preds = %if.then108
  br label %if.end121, !dbg !1400

if.end121:                                        ; preds = %if.end120, %for.body
  br label %for.inc, !dbg !1401

for.inc:                                          ; preds = %if.end121
  %58 = load i32, ptr %i, align 4, !dbg !1402
  %inc122 = add i32 %58, 1, !dbg !1402
  store i32 %inc122, ptr %i, align 4, !dbg !1402
  br label %for.cond, !dbg !1403, !llvm.loop !1404

for.end:                                          ; preds = %for.cond
  %59 = load i32, ptr %items, align 4, !dbg !1406
  %60 = load i32, ptr %items2, align 4, !dbg !1408
  %cmp123 = icmp ne i32 %59, %60, !dbg !1409
  br i1 %cmp123, label %if.then125, label %if.end131, !dbg !1410

if.then125:                                       ; preds = %for.end
  br label %do.body126, !dbg !1411

do.body126:                                       ; preds = %if.then125
  br label %do.cond127, !dbg !1414

do.cond127:                                       ; preds = %do.body126
  br label %do.end128, !dbg !1414

do.end128:                                        ; preds = %do.cond127
  %61 = load i32, ptr %items2, align 4, !dbg !1411
  %62 = load i32, ptr %items, align 4, !dbg !1411
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %61, i32 noundef %62) #16, !dbg !1411
  store i32 %call130, ptr %tmp129, align 4, !dbg !1414
  %63 = load i32, ptr %tmp129, align 4, !dbg !1411
  store i32 -22, ptr %retval, align 4, !dbg !1416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1416

if.end131:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !1417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1417

if.end132:                                        ; preds = %entry
  %arraydecay133 = getelementptr inbounds [4 x i16], ptr %buf16, i64 0, i64 0, !dbg !1418
  %64 = load ptr, ptr %fp.addr, align 8, !dbg !1419
  %call134 = call i32 @next_entry(ptr noundef %arraydecay133, ptr noundef %64, i64 noundef 8) #14, !dbg !1420
  store i32 %call134, ptr %rc, align 4, !dbg !1421
  %65 = load i32, ptr %rc, align 4, !dbg !1422
  %tobool135 = icmp ne i32 %65, 0, !dbg !1422
  br i1 %tobool135, label %if.then136, label %if.end142, !dbg !1424

if.then136:                                       ; preds = %if.end132
  br label %do.body137, !dbg !1425

do.body137:                                       ; preds = %if.then136
  br label %do.cond138, !dbg !1428

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !1428

do.end139:                                        ; preds = %do.cond138
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1425
  store i32 %call141, ptr %tmp140, align 4, !dbg !1428
  %66 = load i32, ptr %tmp140, align 4, !dbg !1425
  %67 = load i32, ptr %rc, align 4, !dbg !1430
  store i32 %67, ptr %retval, align 4, !dbg !1431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1431

if.end142:                                        ; preds = %if.end132
  store i32 0, ptr %items, align 4, !dbg !1432
  %68 = load i32, ptr %items, align 4, !dbg !1433
  %inc143 = add i32 %68, 1, !dbg !1433
  store i32 %inc143, ptr %items, align 4, !dbg !1433
  %idxprom144 = zext i32 %68 to i64, !dbg !1433
  %arrayidx145 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 %idxprom144, !dbg !1433
  %69 = load i16, ptr %arrayidx145, align 2, !dbg !1433
  %source_type146 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !1434
  store i16 %69, ptr %source_type146, align 2, !dbg !1435
  %70 = load i32, ptr %items, align 4, !dbg !1436
  %inc147 = add i32 %70, 1, !dbg !1436
  store i32 %inc147, ptr %items, align 4, !dbg !1436
  %idxprom148 = zext i32 %70 to i64, !dbg !1436
  %arrayidx149 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 %idxprom148, !dbg !1436
  %71 = load i16, ptr %arrayidx149, align 2, !dbg !1436
  %target_type150 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1, !dbg !1437
  store i16 %71, ptr %target_type150, align 2, !dbg !1438
  %72 = load i32, ptr %items, align 4, !dbg !1439
  %inc151 = add i32 %72, 1, !dbg !1439
  store i32 %inc151, ptr %items, align 4, !dbg !1439
  %idxprom152 = zext i32 %72 to i64, !dbg !1439
  %arrayidx153 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 %idxprom152, !dbg !1439
  %73 = load i16, ptr %arrayidx153, align 2, !dbg !1439
  %target_class154 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2, !dbg !1440
  store i16 %73, ptr %target_class154, align 2, !dbg !1441
  %74 = load i32, ptr %items, align 4, !dbg !1442
  %inc155 = add i32 %74, 1, !dbg !1442
  store i32 %inc155, ptr %items, align 4, !dbg !1442
  %idxprom156 = zext i32 %74 to i64, !dbg !1442
  %arrayidx157 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 %idxprom156, !dbg !1442
  %75 = load i16, ptr %arrayidx157, align 2, !dbg !1442
  %specified158 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1443
  store i16 %75, ptr %specified158, align 2, !dbg !1444
  %76 = load ptr, ptr %pol.addr, align 8, !dbg !1445
  %source_type159 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !1447
  %77 = load i16, ptr %source_type159, align 2, !dbg !1447
  %conv160 = zext i16 %77 to i32, !dbg !1448
  %call161 = call i32 @policydb_type_isvalid(ptr noundef %76, i32 noundef %conv160) #14, !dbg !1449
  %tobool162 = icmp ne i32 %call161, 0, !dbg !1449
  br i1 %tobool162, label %lor.lhs.false, label %if.then172, !dbg !1450

lor.lhs.false:                                    ; preds = %if.end142
  %78 = load ptr, ptr %pol.addr, align 8, !dbg !1451
  %target_type163 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1, !dbg !1452
  %79 = load i16, ptr %target_type163, align 2, !dbg !1452
  %conv164 = zext i16 %79 to i32, !dbg !1453
  %call165 = call i32 @policydb_type_isvalid(ptr noundef %78, i32 noundef %conv164) #14, !dbg !1454
  %tobool166 = icmp ne i32 %call165, 0, !dbg !1454
  br i1 %tobool166, label %lor.lhs.false167, label %if.then172, !dbg !1455

lor.lhs.false167:                                 ; preds = %lor.lhs.false
  %80 = load ptr, ptr %pol.addr, align 8, !dbg !1456
  %target_class168 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2, !dbg !1457
  %81 = load i16, ptr %target_class168, align 2, !dbg !1457
  %conv169 = zext i16 %81 to i32, !dbg !1458
  %call170 = call i32 @policydb_class_isvalid(ptr noundef %80, i32 noundef %conv169) #14, !dbg !1459
  %tobool171 = icmp ne i32 %call170, 0, !dbg !1459
  br i1 %tobool171, label %if.end178, label %if.then172, !dbg !1460

if.then172:                                       ; preds = %lor.lhs.false167, %lor.lhs.false, %if.end142
  br label %do.body173, !dbg !1461

do.body173:                                       ; preds = %if.then172
  br label %do.cond174, !dbg !1464

do.cond174:                                       ; preds = %do.body173
  br label %do.end175, !dbg !1464

do.end175:                                        ; preds = %do.cond174
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #16, !dbg !1461
  store i32 %call177, ptr %tmp176, align 4, !dbg !1464
  %82 = load i32, ptr %tmp176, align 4, !dbg !1461
  store i32 -22, ptr %retval, align 4, !dbg !1466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1466

if.end178:                                        ; preds = %lor.lhs.false167
  store i32 0, ptr %set, align 4, !dbg !1467
  store i32 0, ptr %i, align 4, !dbg !1468
  br label %for.cond179, !dbg !1470

for.cond179:                                      ; preds = %for.inc194, %if.end178
  %83 = load i32, ptr %i, align 4, !dbg !1471
  %conv180 = zext i32 %83 to i64, !dbg !1471
  %cmp181 = icmp ult i64 %conv180, 9, !dbg !1473
  br i1 %cmp181, label %for.body183, label %for.end196, !dbg !1474

for.body183:                                      ; preds = %for.cond179
  %specified184 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1475
  %84 = load i16, ptr %specified184, align 2, !dbg !1475
  %conv185 = zext i16 %84 to i32, !dbg !1478
  %85 = load i32, ptr %i, align 4, !dbg !1479
  %idxprom186 = zext i32 %85 to i64, !dbg !1480
  %arrayidx187 = getelementptr [9 x i16], ptr @spec_order, i64 0, i64 %idxprom186, !dbg !1480
  %86 = load i16, ptr %arrayidx187, align 2, !dbg !1480
  %conv188 = zext i16 %86 to i32, !dbg !1480
  %and189 = and i32 %conv185, %conv188, !dbg !1481
  %tobool190 = icmp ne i32 %and189, 0, !dbg !1481
  br i1 %tobool190, label %if.then191, label %if.end193, !dbg !1482

if.then191:                                       ; preds = %for.body183
  %87 = load i32, ptr %set, align 4, !dbg !1483
  %inc192 = add i32 %87, 1, !dbg !1483
  store i32 %inc192, ptr %set, align 4, !dbg !1483
  br label %if.end193, !dbg !1484

if.end193:                                        ; preds = %if.then191, %for.body183
  br label %for.inc194, !dbg !1485

for.inc194:                                       ; preds = %if.end193
  %88 = load i32, ptr %i, align 4, !dbg !1486
  %inc195 = add i32 %88, 1, !dbg !1486
  store i32 %inc195, ptr %i, align 4, !dbg !1486
  br label %for.cond179, !dbg !1487, !llvm.loop !1488

for.end196:                                       ; preds = %for.cond179
  %89 = load i32, ptr %set, align 4, !dbg !1490
  %tobool197 = icmp ne i32 %89, 0, !dbg !1490
  br i1 %tobool197, label %lor.lhs.false198, label %if.then201, !dbg !1492

lor.lhs.false198:                                 ; preds = %for.end196
  %90 = load i32, ptr %set, align 4, !dbg !1493
  %cmp199 = icmp ugt i32 %90, 1, !dbg !1494
  br i1 %cmp199, label %if.then201, label %if.end207, !dbg !1495

if.then201:                                       ; preds = %lor.lhs.false198, %for.end196
  br label %do.body202, !dbg !1496

do.body202:                                       ; preds = %if.then201
  br label %do.cond203, !dbg !1499

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !1499

do.end204:                                        ; preds = %do.cond203
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #16, !dbg !1496
  store i32 %call206, ptr %tmp205, align 4, !dbg !1499
  %91 = load i32, ptr %tmp205, align 4, !dbg !1496
  store i32 -22, ptr %retval, align 4, !dbg !1501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1501

if.end207:                                        ; preds = %lor.lhs.false198
  %92 = load i32, ptr %vers, align 4, !dbg !1502
  %cmp208 = icmp ult i32 %92, 30, !dbg !1504
  br i1 %cmp208, label %land.lhs.true210, label %if.else, !dbg !1505

land.lhs.true210:                                 ; preds = %if.end207
  %specified211 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1506
  %93 = load i16, ptr %specified211, align 2, !dbg !1506
  %conv212 = zext i16 %93 to i32, !dbg !1507
  %and213 = and i32 %conv212, 1792, !dbg !1508
  %tobool214 = icmp ne i32 %and213, 0, !dbg !1508
  br i1 %tobool214, label %if.then215, label %if.else, !dbg !1509

if.then215:                                       ; preds = %land.lhs.true210
  br label %do.body216, !dbg !1510

do.body216:                                       ; preds = %if.then215
  br label %do.cond217, !dbg !1513

do.cond217:                                       ; preds = %do.body216
  br label %do.end218, !dbg !1513

do.end218:                                        ; preds = %do.cond217
  %94 = load i32, ptr %vers, align 4, !dbg !1510
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %94) #16, !dbg !1510
  store i32 %call220, ptr %tmp219, align 4, !dbg !1513
  %95 = load i32, ptr %tmp219, align 4, !dbg !1510
  store i32 -22, ptr %retval, align 4, !dbg !1515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1515

if.else:                                          ; preds = %land.lhs.true210, %if.end207
  %specified221 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1516
  %96 = load i16, ptr %specified221, align 2, !dbg !1516
  %conv222 = zext i16 %96 to i32, !dbg !1518
  %and223 = and i32 %conv222, 1792, !dbg !1519
  %tobool224 = icmp ne i32 %and223, 0, !dbg !1519
  br i1 %tobool224, label %if.then225, label %if.else269, !dbg !1520

if.then225:                                       ; preds = %if.else
  call void @llvm.memset.p0.i64(ptr align 4 %xperms, i8 0, i64 36, i1 false), !dbg !1521
  %specified226 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 0, !dbg !1523
  %97 = load ptr, ptr %fp.addr, align 8, !dbg !1524
  %call227 = call i32 @next_entry(ptr noundef %specified226, ptr noundef %97, i64 noundef 1) #14, !dbg !1525
  store i32 %call227, ptr %rc, align 4, !dbg !1526
  %98 = load i32, ptr %rc, align 4, !dbg !1527
  %tobool228 = icmp ne i32 %98, 0, !dbg !1527
  br i1 %tobool228, label %if.then229, label %if.end235, !dbg !1529

if.then229:                                       ; preds = %if.then225
  br label %do.body230, !dbg !1530

do.body230:                                       ; preds = %if.then229
  br label %do.cond231, !dbg !1533

do.cond231:                                       ; preds = %do.body230
  br label %do.end232, !dbg !1533

do.end232:                                        ; preds = %do.cond231
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1530
  store i32 %call234, ptr %tmp233, align 4, !dbg !1533
  %99 = load i32, ptr %tmp233, align 4, !dbg !1530
  %100 = load i32, ptr %rc, align 4, !dbg !1535
  store i32 %100, ptr %retval, align 4, !dbg !1536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1536

if.end235:                                        ; preds = %if.then225
  %driver = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 1, !dbg !1537
  %101 = load ptr, ptr %fp.addr, align 8, !dbg !1538
  %call236 = call i32 @next_entry(ptr noundef %driver, ptr noundef %101, i64 noundef 1) #14, !dbg !1539
  store i32 %call236, ptr %rc, align 4, !dbg !1540
  %102 = load i32, ptr %rc, align 4, !dbg !1541
  %tobool237 = icmp ne i32 %102, 0, !dbg !1541
  br i1 %tobool237, label %if.then238, label %if.end244, !dbg !1543

if.then238:                                       ; preds = %if.end235
  br label %do.body239, !dbg !1544

do.body239:                                       ; preds = %if.then238
  br label %do.cond240, !dbg !1547

do.cond240:                                       ; preds = %do.body239
  br label %do.end241, !dbg !1547

do.end241:                                        ; preds = %do.cond240
  %call243 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1544
  store i32 %call243, ptr %tmp242, align 4, !dbg !1547
  %103 = load i32, ptr %tmp242, align 4, !dbg !1544
  %104 = load i32, ptr %rc, align 4, !dbg !1549
  store i32 %104, ptr %retval, align 4, !dbg !1550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1550

if.end244:                                        ; preds = %if.end235
  %arraydecay245 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1551
  %105 = load ptr, ptr %fp.addr, align 8, !dbg !1552
  %call246 = call i32 @next_entry(ptr noundef %arraydecay245, ptr noundef %105, i64 noundef 32) #14, !dbg !1553
  store i32 %call246, ptr %rc, align 4, !dbg !1554
  %106 = load i32, ptr %rc, align 4, !dbg !1555
  %tobool247 = icmp ne i32 %106, 0, !dbg !1555
  br i1 %tobool247, label %if.then248, label %if.end254, !dbg !1557

if.then248:                                       ; preds = %if.end244
  br label %do.body249, !dbg !1558

do.body249:                                       ; preds = %if.then248
  br label %do.cond250, !dbg !1561

do.cond250:                                       ; preds = %do.body249
  br label %do.end251, !dbg !1561

do.end251:                                        ; preds = %do.cond250
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1558
  store i32 %call253, ptr %tmp252, align 4, !dbg !1561
  %107 = load i32, ptr %tmp252, align 4, !dbg !1558
  %108 = load i32, ptr %rc, align 4, !dbg !1563
  store i32 %108, ptr %retval, align 4, !dbg !1564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1564

if.end254:                                        ; preds = %if.end244
  store i32 0, ptr %i, align 4, !dbg !1565
  br label %for.cond255, !dbg !1567

for.cond255:                                      ; preds = %for.inc265, %if.end254
  %109 = load i32, ptr %i, align 4, !dbg !1568
  %conv256 = zext i32 %109 to i64, !dbg !1568
  %cmp257 = icmp ult i64 %conv256, 8, !dbg !1570
  br i1 %cmp257, label %for.body259, label %for.end267, !dbg !1571

for.body259:                                      ; preds = %for.cond255
  %110 = load i32, ptr %i, align 4, !dbg !1572
  %idxprom260 = zext i32 %110 to i64, !dbg !1572
  %arrayidx261 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom260, !dbg !1572
  %111 = load i32, ptr %arrayidx261, align 4, !dbg !1572
  %perms = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, !dbg !1573
  %p262 = getelementptr inbounds %struct.extended_perms_data, ptr %perms, i32 0, i32 0, !dbg !1574
  %112 = load i32, ptr %i, align 4, !dbg !1575
  %idxprom263 = zext i32 %112 to i64, !dbg !1576
  %arrayidx264 = getelementptr [8 x i32], ptr %p262, i64 0, i64 %idxprom263, !dbg !1576
  store i32 %111, ptr %arrayidx264, align 4, !dbg !1577
  br label %for.inc265, !dbg !1576

for.inc265:                                       ; preds = %for.body259
  %113 = load i32, ptr %i, align 4, !dbg !1578
  %inc266 = add i32 %113, 1, !dbg !1578
  store i32 %inc266, ptr %i, align 4, !dbg !1578
  br label %for.cond255, !dbg !1579, !llvm.loop !1580

for.end267:                                       ; preds = %for.cond255
  %u268 = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1582
  store ptr %xperms, ptr %u268, align 8, !dbg !1583
  br label %if.end282, !dbg !1584

if.else269:                                       ; preds = %if.else
  %arraydecay270 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1585
  %114 = load ptr, ptr %fp.addr, align 8, !dbg !1587
  %call271 = call i32 @next_entry(ptr noundef %arraydecay270, ptr noundef %114, i64 noundef 4) #14, !dbg !1588
  store i32 %call271, ptr %rc, align 4, !dbg !1589
  %115 = load i32, ptr %rc, align 4, !dbg !1590
  %tobool272 = icmp ne i32 %115, 0, !dbg !1590
  br i1 %tobool272, label %if.then273, label %if.end279, !dbg !1592

if.then273:                                       ; preds = %if.else269
  br label %do.body274, !dbg !1593

do.body274:                                       ; preds = %if.then273
  br label %do.cond275, !dbg !1596

do.cond275:                                       ; preds = %do.body274
  br label %do.end276, !dbg !1596

do.end276:                                        ; preds = %do.cond275
  %call278 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #16, !dbg !1593
  store i32 %call278, ptr %tmp277, align 4, !dbg !1596
  %116 = load i32, ptr %tmp277, align 4, !dbg !1593
  %117 = load i32, ptr %rc, align 4, !dbg !1598
  store i32 %117, ptr %retval, align 4, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1599

if.end279:                                        ; preds = %if.else269
  %arraydecay280 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1600
  %118 = load i32, ptr %arraydecay280, align 16, !dbg !1600
  %u281 = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1601
  store i32 %118, ptr %u281, align 8, !dbg !1602
  br label %if.end282

if.end282:                                        ; preds = %if.end279, %for.end267
  br label %if.end283

if.end283:                                        ; preds = %if.end282
  %specified284 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !1603
  %119 = load i16, ptr %specified284, align 2, !dbg !1603
  %conv285 = zext i16 %119 to i32, !dbg !1605
  %and286 = and i32 %conv285, 112, !dbg !1606
  %tobool287 = icmp ne i32 %and286, 0, !dbg !1606
  br i1 %tobool287, label %land.lhs.true288, label %if.end298, !dbg !1607

land.lhs.true288:                                 ; preds = %if.end283
  %120 = load ptr, ptr %pol.addr, align 8, !dbg !1608
  %u289 = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1609
  %121 = load i32, ptr %u289, align 8, !dbg !1610
  %call290 = call i32 @policydb_type_isvalid(ptr noundef %120, i32 noundef %121) #14, !dbg !1611
  %tobool291 = icmp ne i32 %call290, 0, !dbg !1611
  br i1 %tobool291, label %if.end298, label %if.then292, !dbg !1612

if.then292:                                       ; preds = %land.lhs.true288
  br label %do.body293, !dbg !1613

do.body293:                                       ; preds = %if.then292
  br label %do.cond294, !dbg !1616

do.cond294:                                       ; preds = %do.body293
  br label %do.end295, !dbg !1616

do.end295:                                        ; preds = %do.cond294
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #16, !dbg !1613
  store i32 %call297, ptr %tmp296, align 4, !dbg !1616
  %122 = load i32, ptr %tmp296, align 4, !dbg !1613
  store i32 -22, ptr %retval, align 4, !dbg !1618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1618

if.end298:                                        ; preds = %land.lhs.true288, %if.end283
  %123 = load ptr, ptr %insertf.addr, align 8, !dbg !1619
  %124 = load ptr, ptr %a.addr, align 8, !dbg !1620
  %125 = load ptr, ptr %p.addr, align 8, !dbg !1621
  %call299 = call i32 %123(ptr noundef %124, ptr noundef %key, ptr noundef %datum, ptr noundef %125) #14, !dbg !1619
  store i32 %call299, ptr %retval, align 4, !dbg !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1622

cleanup:                                          ; preds = %if.end298, %do.end295, %do.end276, %do.end251, %do.end241, %do.end232, %do.end218, %do.end204, %do.end175, %do.end139, %if.end131, %do.end128, %if.then119, %do.end96, %do.end87, %do.end76, %do.end62, %do.end47, %do.end32, %do.end19, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vers) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %set) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf32) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 36, ptr %xperms) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 8, ptr %datum) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %items2) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 4, ptr %items) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 2, ptr %enabled) #13, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf16) #13, !dbg !1623
  %126 = load i32, ptr %retval, align 4, !dbg !1623
  ret i32 %126, !dbg !1623
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @next_entry(ptr noundef %buf, ptr noundef %fp, i64 noundef %bytes) #3 align 16 !dbg !1624 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1633, metadata !DIExpression()), !dbg !1636
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1634, metadata !DIExpression()), !dbg !1637
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1635, metadata !DIExpression()), !dbg !1638
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !1639
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !1641
  %len = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1, !dbg !1642
  %2 = load i64, ptr %len, align 8, !dbg !1642
  %cmp = icmp ugt i64 %0, %2, !dbg !1643
  br i1 %cmp, label %if.then, label %if.end, !dbg !1644

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1645
  br label %return, !dbg !1645

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !1646
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !1647
  %data = getelementptr inbounds %struct.policy_file, ptr %4, i32 0, i32 0, !dbg !1648
  %5 = load ptr, ptr %data, align 8, !dbg !1648
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !1649
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %5, i64 %6, i1 false), !dbg !1650
  %7 = load i64, ptr %bytes.addr, align 8, !dbg !1651
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1652
  %data1 = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !1653
  %9 = load ptr, ptr %data1, align 8, !dbg !1654
  %add.ptr = getelementptr i8, ptr %9, i64 %7, !dbg !1654
  store ptr %add.ptr, ptr %data1, align 8, !dbg !1654
  %10 = load i64, ptr %bytes.addr, align 8, !dbg !1655
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !1656
  %len2 = getelementptr inbounds %struct.policy_file, ptr %11, i32 0, i32 1, !dbg !1657
  %12 = load i64, ptr %len2, align 8, !dbg !1658
  %sub = sub i64 %12, %10, !dbg !1658
  store i64 %sub, ptr %len2, align 8, !dbg !1658
  store i32 0, ptr %retval, align 4, !dbg !1659
  br label %return, !dbg !1659

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !1660
  ret i32 %13, !dbg !1660
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1661 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1667 dso_local i32 @policydb_type_isvalid(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1670 dso_local i32 @policydb_class_isvalid(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_read(ptr noundef %a, ptr noundef %fp, ptr noundef %pol) #0 align 16 !dbg !1671 {
entry:
  %a.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %pol.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %buf = alloca [1 x i32], align 4
  %nel = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1675, metadata !DIExpression()), !dbg !1687
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1676, metadata !DIExpression()), !dbg !1688
  store ptr %pol, ptr %pol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pol.addr, metadata !1677, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #13, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1678, metadata !DIExpression()), !dbg !1691
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #13, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1679, metadata !DIExpression()), !dbg !1693
  call void @llvm.lifetime.start.p0(i64 4, ptr %nel) #13, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %nel, metadata !1683, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1684, metadata !DIExpression()), !dbg !1696
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1697
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !1698
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 4) #14, !dbg !1699
  store i32 %call, ptr %rc, align 4, !dbg !1700
  %1 = load i32, ptr %rc, align 4, !dbg !1701
  %cmp = icmp slt i32 %1, 0, !dbg !1703
  br i1 %cmp, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1705

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1708

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1708

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #16, !dbg !1705
  store i32 %call1, ptr %tmp, align 4, !dbg !1708
  %2 = load i32, ptr %tmp, align 4, !dbg !1705
  br label %bad, !dbg !1710

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1711
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1711
  store i32 %3, ptr %nel, align 4, !dbg !1712
  %4 = load i32, ptr %nel, align 4, !dbg !1713
  %tobool = icmp ne i32 %4, 0, !dbg !1713
  br i1 %tobool, label %if.end8, label %if.then2, !dbg !1715

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !1716

do.body3:                                         ; preds = %if.then2
  br label %do.cond4, !dbg !1719

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !1719

do.end5:                                          ; preds = %do.cond4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #16, !dbg !1716
  store i32 %call7, ptr %tmp6, align 4, !dbg !1719
  %5 = load i32, ptr %tmp6, align 4, !dbg !1716
  store i32 -22, ptr %rc, align 4, !dbg !1721
  br label %bad, !dbg !1722

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %a.addr, align 8, !dbg !1723
  %7 = load i32, ptr %nel, align 4, !dbg !1724
  %call9 = call i32 @avtab_alloc(ptr noundef %6, i32 noundef %7) #14, !dbg !1725
  store i32 %call9, ptr %rc, align 4, !dbg !1726
  %8 = load i32, ptr %rc, align 4, !dbg !1727
  %tobool10 = icmp ne i32 %8, 0, !dbg !1727
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1729

if.then11:                                        ; preds = %if.end8
  br label %bad, !dbg !1730

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4, !dbg !1731
  br label %for.cond, !dbg !1733

for.cond:                                         ; preds = %for.inc, %if.end12
  %9 = load i32, ptr %i, align 4, !dbg !1734
  %10 = load i32, ptr %nel, align 4, !dbg !1736
  %cmp13 = icmp ult i32 %9, %10, !dbg !1737
  br i1 %cmp13, label %for.body, label %for.end, !dbg !1738

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %a.addr, align 8, !dbg !1739
  %12 = load ptr, ptr %fp.addr, align 8, !dbg !1741
  %13 = load ptr, ptr %pol.addr, align 8, !dbg !1742
  %call14 = call i32 @avtab_read_item(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef @avtab_insertf, ptr noundef null) #14, !dbg !1743
  store i32 %call14, ptr %rc, align 4, !dbg !1744
  %14 = load i32, ptr %rc, align 4, !dbg !1745
  %tobool15 = icmp ne i32 %14, 0, !dbg !1745
  br i1 %tobool15, label %if.then16, label %if.end33, !dbg !1747

if.then16:                                        ; preds = %for.body
  %15 = load i32, ptr %rc, align 4, !dbg !1748
  %cmp17 = icmp eq i32 %15, -12, !dbg !1751
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !1752

if.then18:                                        ; preds = %if.then16
  br label %do.body19, !dbg !1753

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !1755

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1755

do.end21:                                         ; preds = %do.cond20
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #16, !dbg !1753
  store i32 %call23, ptr %tmp22, align 4, !dbg !1755
  %16 = load i32, ptr %tmp22, align 4, !dbg !1753
  br label %if.end32, !dbg !1757

if.else:                                          ; preds = %if.then16
  %17 = load i32, ptr %rc, align 4, !dbg !1758
  %cmp24 = icmp eq i32 %17, -17, !dbg !1760
  br i1 %cmp24, label %if.then25, label %if.end31, !dbg !1761

if.then25:                                        ; preds = %if.else
  br label %do.body26, !dbg !1762

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !1764

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !1764

do.end28:                                         ; preds = %do.cond27
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #16, !dbg !1762
  store i32 %call30, ptr %tmp29, align 4, !dbg !1764
  %18 = load i32, ptr %tmp29, align 4, !dbg !1762
  br label %if.end31, !dbg !1766

if.end31:                                         ; preds = %do.end28, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %do.end21
  br label %bad, !dbg !1767

if.end33:                                         ; preds = %for.body
  br label %for.inc, !dbg !1768

for.inc:                                          ; preds = %if.end33
  %19 = load i32, ptr %i, align 4, !dbg !1769
  %inc = add i32 %19, 1, !dbg !1769
  store i32 %inc, ptr %i, align 4, !dbg !1769
  br label %for.cond, !dbg !1770, !llvm.loop !1771

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %rc, align 4, !dbg !1773
  br label %out, !dbg !1774

out:                                              ; preds = %bad, %for.end
  call void @llvm.dbg.label(metadata !1685), !dbg !1775
  %20 = load i32, ptr %rc, align 4, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr %nel) #13, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #13, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #13, !dbg !1777
  ret i32 %20, !dbg !1778

bad:                                              ; preds = %if.end32, %if.then11, %do.end5, %do.end
  call void @llvm.dbg.label(metadata !1686), !dbg !1779
  %21 = load ptr, ptr %a.addr, align 8, !dbg !1780
  call void @avtab_destroy(ptr noundef %21) #14, !dbg !1781
  br label %out, !dbg !1782
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @avtab_insertf(ptr noundef %a, ptr noundef %k, ptr noundef %d, ptr noundef %p) #0 align 16 !dbg !1783 {
entry:
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1785, metadata !DIExpression()), !dbg !1789
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1786, metadata !DIExpression()), !dbg !1790
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1787, metadata !DIExpression()), !dbg !1791
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1788, metadata !DIExpression()), !dbg !1792
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1793
  %1 = load ptr, ptr %k.addr, align 8, !dbg !1794
  %2 = load ptr, ptr %d.addr, align 8, !dbg !1795
  %call = call i32 @avtab_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !1796
  ret i32 %call, !dbg !1797
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_write_item(ptr noundef %p, ptr noundef %cur, ptr noundef %fp) #0 align 16 !dbg !1798 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %cur.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %buf16 = alloca [4 x i16], align 2
  %buf32 = alloca [8 x i32], align 16
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1804, metadata !DIExpression()), !dbg !1811
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !1805, metadata !DIExpression()), !dbg !1812
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1806, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf16) #13, !dbg !1814
  call void @llvm.dbg.declare(metadata ptr %buf16, metadata !1807, metadata !DIExpression()), !dbg !1815
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf32) #13, !dbg !1816
  call void @llvm.dbg.declare(metadata ptr %buf32, metadata !1808, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #13, !dbg !1818
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1810, metadata !DIExpression()), !dbg !1821
  %0 = load ptr, ptr %cur.addr, align 8, !dbg !1822
  %key = getelementptr inbounds %struct.avtab_node, ptr %0, i32 0, i32 0, !dbg !1822
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 0, !dbg !1822
  %1 = load i16, ptr %source_type, align 8, !dbg !1822
  %arrayidx = getelementptr [4 x i16], ptr %buf16, i64 0, i64 0, !dbg !1823
  store i16 %1, ptr %arrayidx, align 2, !dbg !1824
  %2 = load ptr, ptr %cur.addr, align 8, !dbg !1825
  %key1 = getelementptr inbounds %struct.avtab_node, ptr %2, i32 0, i32 0, !dbg !1825
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %key1, i32 0, i32 1, !dbg !1825
  %3 = load i16, ptr %target_type, align 2, !dbg !1825
  %arrayidx2 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 1, !dbg !1826
  store i16 %3, ptr %arrayidx2, align 2, !dbg !1827
  %4 = load ptr, ptr %cur.addr, align 8, !dbg !1828
  %key3 = getelementptr inbounds %struct.avtab_node, ptr %4, i32 0, i32 0, !dbg !1828
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %key3, i32 0, i32 2, !dbg !1828
  %5 = load i16, ptr %target_class, align 4, !dbg !1828
  %arrayidx4 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 2, !dbg !1829
  store i16 %5, ptr %arrayidx4, align 2, !dbg !1830
  %6 = load ptr, ptr %cur.addr, align 8, !dbg !1831
  %key5 = getelementptr inbounds %struct.avtab_node, ptr %6, i32 0, i32 0, !dbg !1831
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key5, i32 0, i32 3, !dbg !1831
  %7 = load i16, ptr %specified, align 2, !dbg !1831
  %arrayidx6 = getelementptr [4 x i16], ptr %buf16, i64 0, i64 3, !dbg !1832
  store i16 %7, ptr %arrayidx6, align 2, !dbg !1833
  %arraydecay = getelementptr inbounds [4 x i16], ptr %buf16, i64 0, i64 0, !dbg !1834
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1835
  %call = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 2, i64 noundef 4, ptr noundef %8) #14, !dbg !1836
  store i32 %call, ptr %rc, align 4, !dbg !1837
  %9 = load i32, ptr %rc, align 4, !dbg !1838
  %tobool = icmp ne i32 %9, 0, !dbg !1838
  br i1 %tobool, label %if.then, label %if.end, !dbg !1840

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %rc, align 4, !dbg !1841
  store i32 %10, ptr %retval, align 4, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1842

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %cur.addr, align 8, !dbg !1843
  %key7 = getelementptr inbounds %struct.avtab_node, ptr %11, i32 0, i32 0, !dbg !1845
  %specified8 = getelementptr inbounds %struct.avtab_key, ptr %key7, i32 0, i32 3, !dbg !1846
  %12 = load i16, ptr %specified8, align 2, !dbg !1846
  %conv = zext i16 %12 to i32, !dbg !1843
  %and = and i32 %conv, 1792, !dbg !1847
  %tobool9 = icmp ne i32 %and, 0, !dbg !1847
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !1848

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %cur.addr, align 8, !dbg !1849
  %datum = getelementptr inbounds %struct.avtab_node, ptr %13, i32 0, i32 1, !dbg !1851
  %u = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1852
  %14 = load ptr, ptr %u, align 8, !dbg !1853
  %specified11 = getelementptr inbounds %struct.avtab_extended_perms, ptr %14, i32 0, i32 0, !dbg !1854
  %15 = load ptr, ptr %fp.addr, align 8, !dbg !1855
  %call12 = call i32 @put_entry(ptr noundef %specified11, i64 noundef 1, i64 noundef 1, ptr noundef %15) #14, !dbg !1856
  store i32 %call12, ptr %rc, align 4, !dbg !1857
  %16 = load i32, ptr %rc, align 4, !dbg !1858
  %tobool13 = icmp ne i32 %16, 0, !dbg !1858
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1860

if.then14:                                        ; preds = %if.then10
  %17 = load i32, ptr %rc, align 4, !dbg !1861
  store i32 %17, ptr %retval, align 4, !dbg !1862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1862

if.end15:                                         ; preds = %if.then10
  %18 = load ptr, ptr %cur.addr, align 8, !dbg !1863
  %datum16 = getelementptr inbounds %struct.avtab_node, ptr %18, i32 0, i32 1, !dbg !1864
  %u17 = getelementptr inbounds %struct.avtab_datum, ptr %datum16, i32 0, i32 0, !dbg !1865
  %19 = load ptr, ptr %u17, align 8, !dbg !1866
  %driver = getelementptr inbounds %struct.avtab_extended_perms, ptr %19, i32 0, i32 1, !dbg !1867
  %20 = load ptr, ptr %fp.addr, align 8, !dbg !1868
  %call18 = call i32 @put_entry(ptr noundef %driver, i64 noundef 1, i64 noundef 1, ptr noundef %20) #14, !dbg !1869
  store i32 %call18, ptr %rc, align 4, !dbg !1870
  %21 = load i32, ptr %rc, align 4, !dbg !1871
  %tobool19 = icmp ne i32 %21, 0, !dbg !1871
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1873

if.then20:                                        ; preds = %if.end15
  %22 = load i32, ptr %rc, align 4, !dbg !1874
  store i32 %22, ptr %retval, align 4, !dbg !1875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1875

if.end21:                                         ; preds = %if.end15
  store i32 0, ptr %i, align 4, !dbg !1876
  br label %for.cond, !dbg !1878

for.cond:                                         ; preds = %for.inc, %if.end21
  %23 = load i32, ptr %i, align 4, !dbg !1879
  %conv22 = zext i32 %23 to i64, !dbg !1879
  %cmp = icmp ult i64 %conv22, 8, !dbg !1881
  br i1 %cmp, label %for.body, label %for.end, !dbg !1882

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %cur.addr, align 8, !dbg !1883
  %datum24 = getelementptr inbounds %struct.avtab_node, ptr %24, i32 0, i32 1, !dbg !1883
  %u25 = getelementptr inbounds %struct.avtab_datum, ptr %datum24, i32 0, i32 0, !dbg !1883
  %25 = load ptr, ptr %u25, align 8, !dbg !1883
  %perms = getelementptr inbounds %struct.avtab_extended_perms, ptr %25, i32 0, i32 2, !dbg !1883
  %p26 = getelementptr inbounds %struct.extended_perms_data, ptr %perms, i32 0, i32 0, !dbg !1883
  %26 = load i32, ptr %i, align 4, !dbg !1883
  %idxprom = zext i32 %26 to i64, !dbg !1883
  %arrayidx27 = getelementptr [8 x i32], ptr %p26, i64 0, i64 %idxprom, !dbg !1883
  %27 = load i32, ptr %arrayidx27, align 4, !dbg !1883
  %28 = load i32, ptr %i, align 4, !dbg !1884
  %idxprom28 = zext i32 %28 to i64, !dbg !1885
  %arrayidx29 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 %idxprom28, !dbg !1885
  store i32 %27, ptr %arrayidx29, align 4, !dbg !1886
  br label %for.inc, !dbg !1885

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4, !dbg !1887
  %inc = add i32 %29, 1, !dbg !1887
  store i32 %inc, ptr %i, align 4, !dbg !1887
  br label %for.cond, !dbg !1888, !llvm.loop !1889

for.end:                                          ; preds = %for.cond
  %arraydecay30 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1891
  %30 = load ptr, ptr %fp.addr, align 8, !dbg !1892
  %call31 = call i32 @put_entry(ptr noundef %arraydecay30, i64 noundef 4, i64 noundef 8, ptr noundef %30) #14, !dbg !1893
  store i32 %call31, ptr %rc, align 4, !dbg !1894
  br label %if.end37, !dbg !1895

if.else:                                          ; preds = %if.end
  %31 = load ptr, ptr %cur.addr, align 8, !dbg !1896
  %datum32 = getelementptr inbounds %struct.avtab_node, ptr %31, i32 0, i32 1, !dbg !1896
  %u33 = getelementptr inbounds %struct.avtab_datum, ptr %datum32, i32 0, i32 0, !dbg !1896
  %32 = load i32, ptr %u33, align 8, !dbg !1896
  %arrayidx34 = getelementptr [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1898
  store i32 %32, ptr %arrayidx34, align 16, !dbg !1899
  %arraydecay35 = getelementptr inbounds [8 x i32], ptr %buf32, i64 0, i64 0, !dbg !1900
  %33 = load ptr, ptr %fp.addr, align 8, !dbg !1901
  %call36 = call i32 @put_entry(ptr noundef %arraydecay35, i64 noundef 4, i64 noundef 1, ptr noundef %33) #14, !dbg !1902
  store i32 %call36, ptr %rc, align 4, !dbg !1903
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.end
  %34 = load i32, ptr %rc, align 4, !dbg !1904
  %tobool38 = icmp ne i32 %34, 0, !dbg !1904
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1906

if.then39:                                        ; preds = %if.end37
  %35 = load i32, ptr %rc, align 4, !dbg !1907
  store i32 %35, ptr %retval, align 4, !dbg !1908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1908

if.end40:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4, !dbg !1909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1909

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then20, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #13, !dbg !1910
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf32) #13, !dbg !1910
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf16) #13, !dbg !1910
  %36 = load i32, ptr %retval, align 4, !dbg !1910
  ret i32 %36, !dbg !1910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_entry(ptr noundef %buf, i64 noundef %bytes, i64 noundef %num, ptr noundef %fp) #3 align 16 !dbg !1911 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %fp.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1915, metadata !DIExpression()), !dbg !1920
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1916, metadata !DIExpression()), !dbg !1921
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1917, metadata !DIExpression()), !dbg !1922
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1918, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !1924
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1919, metadata !DIExpression()), !dbg !1925
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !1926
  %1 = load i64, ptr %num.addr, align 8, !dbg !1926
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1926
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1926
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1926
  store i64 %4, ptr %len, align 8, !dbg !1926
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !1926
  %lnot = xor i1 %call, true, !dbg !1926
  %lnot1 = xor i1 %lnot, true, !dbg !1926
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1926
  %conv = sext i32 %lnot.ext to i64, !dbg !1926
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1926
  %tobool = icmp ne i64 %expval, 0, !dbg !1926
  br i1 %tobool, label %if.then, label %if.end, !dbg !1928

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1929

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %len, align 8, !dbg !1930
  %6 = load ptr, ptr %fp.addr, align 8, !dbg !1932
  %len2 = getelementptr inbounds %struct.policy_file, ptr %6, i32 0, i32 1, !dbg !1933
  %7 = load i64, ptr %len2, align 8, !dbg !1933
  %cmp = icmp ugt i64 %5, %7, !dbg !1934
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1935

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1936

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1937
  %data = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !1938
  %9 = load ptr, ptr %data, align 8, !dbg !1938
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !1939
  %11 = load i64, ptr %len, align 8, !dbg !1940
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false), !dbg !1941
  %12 = load i64, ptr %len, align 8, !dbg !1942
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1943
  %data6 = getelementptr inbounds %struct.policy_file, ptr %13, i32 0, i32 0, !dbg !1944
  %14 = load ptr, ptr %data6, align 8, !dbg !1945
  %add.ptr = getelementptr i8, ptr %14, i64 %12, !dbg !1945
  store ptr %add.ptr, ptr %data6, align 8, !dbg !1945
  %15 = load i64, ptr %len, align 8, !dbg !1946
  %16 = load ptr, ptr %fp.addr, align 8, !dbg !1947
  %len7 = getelementptr inbounds %struct.policy_file, ptr %16, i32 0, i32 1, !dbg !1948
  %17 = load i64, ptr %len7, align 8, !dbg !1949
  %sub = sub i64 %17, %15, !dbg !1949
  store i64 %sub, ptr %len7, align 8, !dbg !1949
  store i32 0, ptr %retval, align 4, !dbg !1950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1950

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !1951
  %18 = load i32, ptr %retval, align 4, !dbg !1951
  ret i32 %18, !dbg !1951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @avtab_write(ptr noundef %p, ptr noundef %a, ptr noundef %fp) #0 align 16 !dbg !1952 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cur = alloca ptr, align 8
  %buf = alloca [1 x i32], align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1956, metadata !DIExpression()), !dbg !1963
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1957, metadata !DIExpression()), !dbg !1964
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1958, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1966
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1959, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #13, !dbg !1968
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1960, metadata !DIExpression()), !dbg !1969
  store i32 0, ptr %rc, align 4, !dbg !1969
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !1970
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1961, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #13, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1962, metadata !DIExpression()), !dbg !1973
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1974
  %nel = getelementptr inbounds %struct.avtab, ptr %0, i32 0, i32 1, !dbg !1974
  %1 = load i32, ptr %nel, align 8, !dbg !1974
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1975
  store i32 %1, ptr %arrayidx, align 4, !dbg !1976
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1977
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !1978
  %call = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 1, ptr noundef %2) #14, !dbg !1979
  store i32 %call, ptr %rc, align 4, !dbg !1980
  %3 = load i32, ptr %rc, align 4, !dbg !1981
  %tobool = icmp ne i32 %3, 0, !dbg !1981
  br i1 %tobool, label %if.then, label %if.end, !dbg !1983

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4, !dbg !1984
  store i32 %4, ptr %retval, align 4, !dbg !1985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1985

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1986
  br label %for.cond, !dbg !1988

for.cond:                                         ; preds = %for.inc9, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1989
  %6 = load ptr, ptr %a.addr, align 8, !dbg !1991
  %nslot = getelementptr inbounds %struct.avtab, ptr %6, i32 0, i32 2, !dbg !1992
  %7 = load i32, ptr %nslot, align 4, !dbg !1992
  %cmp = icmp ult i32 %5, %7, !dbg !1993
  br i1 %cmp, label %for.body, label %for.end10, !dbg !1994

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %a.addr, align 8, !dbg !1995
  %htable = getelementptr inbounds %struct.avtab, ptr %8, i32 0, i32 0, !dbg !1998
  %9 = load ptr, ptr %htable, align 8, !dbg !1998
  %10 = load i32, ptr %i, align 4, !dbg !1999
  %idxprom = zext i32 %10 to i64, !dbg !1995
  %arrayidx1 = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !1995
  %11 = load ptr, ptr %arrayidx1, align 8, !dbg !1995
  store ptr %11, ptr %cur, align 8, !dbg !2000
  br label %for.cond2, !dbg !2001

for.cond2:                                        ; preds = %for.inc, %for.body
  %12 = load ptr, ptr %cur, align 8, !dbg !2002
  %tobool3 = icmp ne ptr %12, null, !dbg !2004
  br i1 %tobool3, label %for.body4, label %for.end, !dbg !2004

for.body4:                                        ; preds = %for.cond2
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2005
  %14 = load ptr, ptr %cur, align 8, !dbg !2007
  %15 = load ptr, ptr %fp.addr, align 8, !dbg !2008
  %call5 = call i32 @avtab_write_item(ptr noundef %13, ptr noundef %14, ptr noundef %15) #14, !dbg !2009
  store i32 %call5, ptr %rc, align 4, !dbg !2010
  %16 = load i32, ptr %rc, align 4, !dbg !2011
  %tobool6 = icmp ne i32 %16, 0, !dbg !2011
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2013

if.then7:                                         ; preds = %for.body4
  %17 = load i32, ptr %rc, align 4, !dbg !2014
  store i32 %17, ptr %retval, align 4, !dbg !2015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2015

if.end8:                                          ; preds = %for.body4
  br label %for.inc, !dbg !2016

for.inc:                                          ; preds = %if.end8
  %18 = load ptr, ptr %cur, align 8, !dbg !2017
  %next = getelementptr inbounds %struct.avtab_node, ptr %18, i32 0, i32 2, !dbg !2018
  %19 = load ptr, ptr %next, align 8, !dbg !2018
  store ptr %19, ptr %cur, align 8, !dbg !2019
  br label %for.cond2, !dbg !2020, !llvm.loop !2021

for.end:                                          ; preds = %for.cond2
  br label %for.inc9, !dbg !2023

for.inc9:                                         ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !dbg !2024
  %inc = add i32 %20, 1, !dbg !2024
  store i32 %inc, ptr %i, align 4, !dbg !2024
  br label %for.cond, !dbg !2025, !llvm.loop !2026

for.end10:                                        ; preds = %for.cond
  %21 = load i32, ptr %rc, align 4, !dbg !2028
  store i32 %21, ptr %retval, align 4, !dbg !2029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2029

cleanup:                                          ; preds = %for.end10, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #13, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #13, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2030
  %22 = load i32, ptr %retval, align 4, !dbg !2030
  ret i32 %22, !dbg !2030
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @avtab_cache_init() #7 section ".init.text" align 16 !dbg !2031 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str.17, i32 noundef 24, i32 noundef 0, i32 noundef 262144, ptr noundef null) #14, !dbg !2034
  store ptr %call, ptr @avtab_node_cachep, align 8, !dbg !2035
  %call1 = call ptr @kmem_cache_create(ptr noundef @.str.18, i32 noundef 36, i32 noundef 0, i32 noundef 262144, ptr noundef null) #14, !dbg !2036
  store ptr %call1, ptr @avtab_xperms_cachep, align 8, !dbg !2037
  ret void, !dbg !2038
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2039 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #3 align 16 !dbg !2045 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2049, metadata !DIExpression()), !dbg !2051
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2050, metadata !DIExpression()), !dbg !2052
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2053
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2054
  %or = or i32 %1, 256, !dbg !2055
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #14, !dbg !2056
  ret ptr %call, !dbg !2057
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2058 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2059 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2063, metadata !DIExpression()), !dbg !2066
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2064, metadata !DIExpression()), !dbg !2067
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2065, metadata !DIExpression()), !dbg !2068
  %0 = load i64, ptr %n.addr, align 8, !dbg !2069
  %1 = load i64, ptr %size.addr, align 8, !dbg !2070
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2071
  %or = or i32 %2, 256, !dbg !2072
  %call = call noalias ptr @kvmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #15, !dbg !2073
  ret ptr %call, !dbg !2074
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2075 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2077, metadata !DIExpression()), !dbg !2081
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2078, metadata !DIExpression()), !dbg !2082
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2079, metadata !DIExpression()), !dbg !2083
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #13, !dbg !2084
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2080, metadata !DIExpression()), !dbg !2085
  %0 = load i64, ptr %n.addr, align 8, !dbg !2086
  %1 = load i64, ptr %size.addr, align 8, !dbg !2086
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2086
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2086
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2086
  store i64 %4, ptr %bytes, align 8, !dbg !2086
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !2086
  %lnot = xor i1 %call, true, !dbg !2086
  %lnot1 = xor i1 %lnot, true, !dbg !2086
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2086
  %conv = sext i32 %lnot.ext to i64, !dbg !2086
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2086
  %tobool = icmp ne i64 %expval, 0, !dbg !2086
  br i1 %tobool, label %if.then, label %if.end, !dbg !2088

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2089

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !2090
  %6 = load i32, ptr %flags.addr, align 4, !dbg !2091
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #17, !dbg !2092
  store ptr %call2, ptr %retval, align 8, !dbg !2093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #13, !dbg !2094
  %7 = load ptr, ptr %retval, align 8, !dbg !2094
  ret ptr %7, !dbg !2094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !2095 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2104, !range !2105, !noundef !2106
  %tobool = trunc i8 %0 to i1, !dbg !2104
  %lnot = xor i1 %tobool, true, !dbg !2104
  %lnot1 = xor i1 %lnot, true, !dbg !2104
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2104
  %conv = sext i32 %lnot.ext to i64, !dbg !2104
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2104
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2104
  ret i1 %tobool2, !dbg !2107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !2108 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2112, metadata !DIExpression()), !dbg !2114
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2113, metadata !DIExpression()), !dbg !2115
  %0 = load i64, ptr %size.addr, align 8, !dbg !2116
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2117
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #17, !dbg !2118
  ret ptr %call, !dbg !2119
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2120 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @avtab_insert(ptr noundef %h, ptr noundef %key, ptr noundef %datum) #0 align 16 !dbg !2123 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %hvalue = alloca i32, align 4
  %prev = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %newnode = alloca ptr, align 8
  %specified = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2127, metadata !DIExpression()), !dbg !2135
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2128, metadata !DIExpression()), !dbg !2136
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !2129, metadata !DIExpression()), !dbg !2137
  call void @llvm.lifetime.start.p0(i64 4, ptr %hvalue) #13, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %hvalue, metadata !2130, metadata !DIExpression()), !dbg !2139
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #13, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2131, metadata !DIExpression()), !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !2132, metadata !DIExpression()), !dbg !2142
  call void @llvm.lifetime.start.p0(i64 8, ptr %newnode) #13, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %newnode, metadata !2133, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 2, ptr %specified) #13, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %specified, metadata !2134, metadata !DIExpression()), !dbg !2145
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2146
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %0, i32 0, i32 3, !dbg !2147
  %1 = load i16, ptr %specified1, align 2, !dbg !2147
  %conv = zext i16 %1 to i32, !dbg !2146
  %and = and i32 %conv, 2147450879, !dbg !2148
  %conv2 = trunc i32 %and to i16, !dbg !2146
  store i16 %conv2, ptr %specified, align 2, !dbg !2145
  %2 = load ptr, ptr %h.addr, align 8, !dbg !2149
  %tobool = icmp ne ptr %2, null, !dbg !2149
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2151

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !dbg !2152
  %nslot = getelementptr inbounds %struct.avtab, ptr %3, i32 0, i32 2, !dbg !2153
  %4 = load i32, ptr %nslot, align 4, !dbg !2153
  %tobool3 = icmp ne i32 %4, 0, !dbg !2152
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2154

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %h.addr, align 8, !dbg !2155
  %nel = getelementptr inbounds %struct.avtab, ptr %5, i32 0, i32 1, !dbg !2156
  %6 = load i32, ptr %nel, align 8, !dbg !2156
  %cmp = icmp eq i32 %6, -1, !dbg !2157
  br i1 %cmp, label %if.then, label %if.end, !dbg !2158

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %key.addr, align 8, !dbg !2160
  %8 = load ptr, ptr %h.addr, align 8, !dbg !2161
  %mask = getelementptr inbounds %struct.avtab, ptr %8, i32 0, i32 3, !dbg !2162
  %9 = load i32, ptr %mask, align 8, !dbg !2162
  %call = call i32 @avtab_hash(ptr noundef %7, i32 noundef %9) #14, !dbg !2163
  store i32 %call, ptr %hvalue, align 4, !dbg !2164
  store ptr null, ptr %prev, align 8, !dbg !2165
  %10 = load ptr, ptr %h.addr, align 8, !dbg !2167
  %htable = getelementptr inbounds %struct.avtab, ptr %10, i32 0, i32 0, !dbg !2168
  %11 = load ptr, ptr %htable, align 8, !dbg !2168
  %12 = load i32, ptr %hvalue, align 4, !dbg !2169
  %idxprom = zext i32 %12 to i64, !dbg !2167
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !2167
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !2167
  store ptr %13, ptr %cur, align 8, !dbg !2170
  br label %for.cond, !dbg !2171

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load ptr, ptr %cur, align 8, !dbg !2172
  %tobool6 = icmp ne ptr %14, null, !dbg !2174
  br i1 %tobool6, label %for.body, label %for.end, !dbg !2174

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %key.addr, align 8, !dbg !2175
  %source_type = getelementptr inbounds %struct.avtab_key, ptr %15, i32 0, i32 0, !dbg !2178
  %16 = load i16, ptr %source_type, align 2, !dbg !2178
  %conv7 = zext i16 %16 to i32, !dbg !2175
  %17 = load ptr, ptr %cur, align 8, !dbg !2179
  %key8 = getelementptr inbounds %struct.avtab_node, ptr %17, i32 0, i32 0, !dbg !2180
  %source_type9 = getelementptr inbounds %struct.avtab_key, ptr %key8, i32 0, i32 0, !dbg !2181
  %18 = load i16, ptr %source_type9, align 8, !dbg !2181
  %conv10 = zext i16 %18 to i32, !dbg !2179
  %cmp11 = icmp eq i32 %conv7, %conv10, !dbg !2182
  br i1 %cmp11, label %land.lhs.true, label %if.end39, !dbg !2183

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %key.addr, align 8, !dbg !2184
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %19, i32 0, i32 1, !dbg !2185
  %20 = load i16, ptr %target_type, align 2, !dbg !2185
  %conv13 = zext i16 %20 to i32, !dbg !2184
  %21 = load ptr, ptr %cur, align 8, !dbg !2186
  %key14 = getelementptr inbounds %struct.avtab_node, ptr %21, i32 0, i32 0, !dbg !2187
  %target_type15 = getelementptr inbounds %struct.avtab_key, ptr %key14, i32 0, i32 1, !dbg !2188
  %22 = load i16, ptr %target_type15, align 2, !dbg !2188
  %conv16 = zext i16 %22 to i32, !dbg !2186
  %cmp17 = icmp eq i32 %conv13, %conv16, !dbg !2189
  br i1 %cmp17, label %land.lhs.true19, label %if.end39, !dbg !2190

land.lhs.true19:                                  ; preds = %land.lhs.true
  %23 = load ptr, ptr %key.addr, align 8, !dbg !2191
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %23, i32 0, i32 2, !dbg !2192
  %24 = load i16, ptr %target_class, align 2, !dbg !2192
  %conv20 = zext i16 %24 to i32, !dbg !2191
  %25 = load ptr, ptr %cur, align 8, !dbg !2193
  %key21 = getelementptr inbounds %struct.avtab_node, ptr %25, i32 0, i32 0, !dbg !2194
  %target_class22 = getelementptr inbounds %struct.avtab_key, ptr %key21, i32 0, i32 2, !dbg !2195
  %26 = load i16, ptr %target_class22, align 4, !dbg !2195
  %conv23 = zext i16 %26 to i32, !dbg !2193
  %cmp24 = icmp eq i32 %conv20, %conv23, !dbg !2196
  br i1 %cmp24, label %land.lhs.true26, label %if.end39, !dbg !2197

land.lhs.true26:                                  ; preds = %land.lhs.true19
  %27 = load i16, ptr %specified, align 2, !dbg !2198
  %conv27 = zext i16 %27 to i32, !dbg !2198
  %28 = load ptr, ptr %cur, align 8, !dbg !2199
  %key28 = getelementptr inbounds %struct.avtab_node, ptr %28, i32 0, i32 0, !dbg !2200
  %specified29 = getelementptr inbounds %struct.avtab_key, ptr %key28, i32 0, i32 3, !dbg !2201
  %29 = load i16, ptr %specified29, align 2, !dbg !2201
  %conv30 = zext i16 %29 to i32, !dbg !2199
  %and31 = and i32 %conv27, %conv30, !dbg !2202
  %tobool32 = icmp ne i32 %and31, 0, !dbg !2202
  br i1 %tobool32, label %if.then33, label %if.end39, !dbg !2203

if.then33:                                        ; preds = %land.lhs.true26
  %30 = load i16, ptr %specified, align 2, !dbg !2204
  %conv34 = zext i16 %30 to i32, !dbg !2204
  %and35 = and i32 %conv34, 1792, !dbg !2207
  %tobool36 = icmp ne i32 %and35, 0, !dbg !2207
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !2208

if.then37:                                        ; preds = %if.then33
  br label %for.end, !dbg !2209

if.end38:                                         ; preds = %if.then33
  store i32 -17, ptr %retval, align 4, !dbg !2210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2210

if.end39:                                         ; preds = %land.lhs.true26, %land.lhs.true19, %land.lhs.true, %for.body
  %31 = load ptr, ptr %key.addr, align 8, !dbg !2211
  %source_type40 = getelementptr inbounds %struct.avtab_key, ptr %31, i32 0, i32 0, !dbg !2213
  %32 = load i16, ptr %source_type40, align 2, !dbg !2213
  %conv41 = zext i16 %32 to i32, !dbg !2211
  %33 = load ptr, ptr %cur, align 8, !dbg !2214
  %key42 = getelementptr inbounds %struct.avtab_node, ptr %33, i32 0, i32 0, !dbg !2215
  %source_type43 = getelementptr inbounds %struct.avtab_key, ptr %key42, i32 0, i32 0, !dbg !2216
  %34 = load i16, ptr %source_type43, align 8, !dbg !2216
  %conv44 = zext i16 %34 to i32, !dbg !2214
  %cmp45 = icmp slt i32 %conv41, %conv44, !dbg !2217
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2218

if.then47:                                        ; preds = %if.end39
  br label %for.end, !dbg !2219

if.end48:                                         ; preds = %if.end39
  %35 = load ptr, ptr %key.addr, align 8, !dbg !2220
  %source_type49 = getelementptr inbounds %struct.avtab_key, ptr %35, i32 0, i32 0, !dbg !2222
  %36 = load i16, ptr %source_type49, align 2, !dbg !2222
  %conv50 = zext i16 %36 to i32, !dbg !2220
  %37 = load ptr, ptr %cur, align 8, !dbg !2223
  %key51 = getelementptr inbounds %struct.avtab_node, ptr %37, i32 0, i32 0, !dbg !2224
  %source_type52 = getelementptr inbounds %struct.avtab_key, ptr %key51, i32 0, i32 0, !dbg !2225
  %38 = load i16, ptr %source_type52, align 8, !dbg !2225
  %conv53 = zext i16 %38 to i32, !dbg !2223
  %cmp54 = icmp eq i32 %conv50, %conv53, !dbg !2226
  br i1 %cmp54, label %land.lhs.true56, label %if.end65, !dbg !2227

land.lhs.true56:                                  ; preds = %if.end48
  %39 = load ptr, ptr %key.addr, align 8, !dbg !2228
  %target_type57 = getelementptr inbounds %struct.avtab_key, ptr %39, i32 0, i32 1, !dbg !2229
  %40 = load i16, ptr %target_type57, align 2, !dbg !2229
  %conv58 = zext i16 %40 to i32, !dbg !2228
  %41 = load ptr, ptr %cur, align 8, !dbg !2230
  %key59 = getelementptr inbounds %struct.avtab_node, ptr %41, i32 0, i32 0, !dbg !2231
  %target_type60 = getelementptr inbounds %struct.avtab_key, ptr %key59, i32 0, i32 1, !dbg !2232
  %42 = load i16, ptr %target_type60, align 2, !dbg !2232
  %conv61 = zext i16 %42 to i32, !dbg !2230
  %cmp62 = icmp slt i32 %conv58, %conv61, !dbg !2233
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !2234

if.then64:                                        ; preds = %land.lhs.true56
  br label %for.end, !dbg !2235

if.end65:                                         ; preds = %land.lhs.true56, %if.end48
  %43 = load ptr, ptr %key.addr, align 8, !dbg !2236
  %source_type66 = getelementptr inbounds %struct.avtab_key, ptr %43, i32 0, i32 0, !dbg !2238
  %44 = load i16, ptr %source_type66, align 2, !dbg !2238
  %conv67 = zext i16 %44 to i32, !dbg !2236
  %45 = load ptr, ptr %cur, align 8, !dbg !2239
  %key68 = getelementptr inbounds %struct.avtab_node, ptr %45, i32 0, i32 0, !dbg !2240
  %source_type69 = getelementptr inbounds %struct.avtab_key, ptr %key68, i32 0, i32 0, !dbg !2241
  %46 = load i16, ptr %source_type69, align 8, !dbg !2241
  %conv70 = zext i16 %46 to i32, !dbg !2239
  %cmp71 = icmp eq i32 %conv67, %conv70, !dbg !2242
  br i1 %cmp71, label %land.lhs.true73, label %if.end90, !dbg !2243

land.lhs.true73:                                  ; preds = %if.end65
  %47 = load ptr, ptr %key.addr, align 8, !dbg !2244
  %target_type74 = getelementptr inbounds %struct.avtab_key, ptr %47, i32 0, i32 1, !dbg !2245
  %48 = load i16, ptr %target_type74, align 2, !dbg !2245
  %conv75 = zext i16 %48 to i32, !dbg !2244
  %49 = load ptr, ptr %cur, align 8, !dbg !2246
  %key76 = getelementptr inbounds %struct.avtab_node, ptr %49, i32 0, i32 0, !dbg !2247
  %target_type77 = getelementptr inbounds %struct.avtab_key, ptr %key76, i32 0, i32 1, !dbg !2248
  %50 = load i16, ptr %target_type77, align 2, !dbg !2248
  %conv78 = zext i16 %50 to i32, !dbg !2246
  %cmp79 = icmp eq i32 %conv75, %conv78, !dbg !2249
  br i1 %cmp79, label %land.lhs.true81, label %if.end90, !dbg !2250

land.lhs.true81:                                  ; preds = %land.lhs.true73
  %51 = load ptr, ptr %key.addr, align 8, !dbg !2251
  %target_class82 = getelementptr inbounds %struct.avtab_key, ptr %51, i32 0, i32 2, !dbg !2252
  %52 = load i16, ptr %target_class82, align 2, !dbg !2252
  %conv83 = zext i16 %52 to i32, !dbg !2251
  %53 = load ptr, ptr %cur, align 8, !dbg !2253
  %key84 = getelementptr inbounds %struct.avtab_node, ptr %53, i32 0, i32 0, !dbg !2254
  %target_class85 = getelementptr inbounds %struct.avtab_key, ptr %key84, i32 0, i32 2, !dbg !2255
  %54 = load i16, ptr %target_class85, align 4, !dbg !2255
  %conv86 = zext i16 %54 to i32, !dbg !2253
  %cmp87 = icmp slt i32 %conv83, %conv86, !dbg !2256
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !2257

if.then89:                                        ; preds = %land.lhs.true81
  br label %for.end, !dbg !2258

if.end90:                                         ; preds = %land.lhs.true81, %land.lhs.true73, %if.end65
  br label %for.inc, !dbg !2259

for.inc:                                          ; preds = %if.end90
  %55 = load ptr, ptr %cur, align 8, !dbg !2260
  store ptr %55, ptr %prev, align 8, !dbg !2261
  %56 = load ptr, ptr %cur, align 8, !dbg !2262
  %next = getelementptr inbounds %struct.avtab_node, ptr %56, i32 0, i32 2, !dbg !2263
  %57 = load ptr, ptr %next, align 8, !dbg !2263
  store ptr %57, ptr %cur, align 8, !dbg !2264
  br label %for.cond, !dbg !2265, !llvm.loop !2266

for.end:                                          ; preds = %if.then89, %if.then64, %if.then47, %if.then37, %for.cond
  %58 = load ptr, ptr %h.addr, align 8, !dbg !2268
  %59 = load i32, ptr %hvalue, align 4, !dbg !2269
  %60 = load ptr, ptr %prev, align 8, !dbg !2270
  %61 = load ptr, ptr %key.addr, align 8, !dbg !2271
  %62 = load ptr, ptr %datum.addr, align 8, !dbg !2272
  %call91 = call ptr @avtab_insert_node(ptr noundef %58, i32 noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62) #14, !dbg !2273
  store ptr %call91, ptr %newnode, align 8, !dbg !2274
  %63 = load ptr, ptr %newnode, align 8, !dbg !2275
  %tobool92 = icmp ne ptr %63, null, !dbg !2275
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !2277

if.then93:                                        ; preds = %for.end
  store i32 -12, ptr %retval, align 4, !dbg !2278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2278

if.end94:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !2279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2279

cleanup:                                          ; preds = %if.end94, %if.then93, %if.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %specified) #13, !dbg !2280
  call void @llvm.lifetime.end.p0(i64 8, ptr %newnode) #13, !dbg !2280
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13, !dbg !2280
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #13, !dbg !2280
  call void @llvm.lifetime.end.p0(i64 4, ptr %hvalue) #13, !dbg !2280
  %64 = load i32, ptr %retval, align 4, !dbg !2280
  ret i32 %64, !dbg !2280
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0,1) }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "avtab_xperms_cachep", scope: !2, file: !3, line: 27, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.avtab.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22avtab\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/avtab.ll security/selinux/ss/avtab.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/ss/avtab.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49258f30ad95c915e9eeac8dddd6cf6d")
!4 = !{!5, !7, !10, !12, !13, !14, !16, !17, !18, !20}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !11, line: 38, baseType: !7)
!11 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !15)
!15 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !11, line: 36, baseType: !14)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !19, line: 155, baseType: !9)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !9)
!21 = !{!22, !28, !33, !38, !40, !45, !50, !55, !60, !65, !67, !72, !77, !82, !84, !86, !91, !93, !98, !103, !0, !108, !133, !135, !137, !139, !141, !143}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 280, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27}
!27 = !DISubrange(count: 35)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 272, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 34)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 328, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 41)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 336, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 42)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 240, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 30)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 472, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 59)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 400, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 50)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 448, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 56)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !35, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 360, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 45)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 840, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 105)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 32)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !24, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !30, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 264, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 33)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !24, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 643, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 88, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 11)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 168, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 21)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "avtab_node_cachep", scope: !2, file: !3, line: 26, type: !105, isLocal: true, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !107, line: 11, flags: DIFlagFwdDecl)
!107 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "c1", scope: !110, file: !3, line: 34, type: !132, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "avtab_hash", scope: !3, file: !3, line: 32, type: !111, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!111 = !DISubroutineType(types: !112)
!112 = !{!5, !113, !5}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_key", file: !116, line: 26, size: 64, elements: !117)
!116 = !DIFile(filename: "security/selinux/ss/avtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594c41c8c01a8fbcd1845985fac73819")
!117 = !{!118, !119, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !115, file: !116, line: 27, baseType: !13, size: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !115, file: !116, line: 28, baseType: !13, size: 16, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "target_class", scope: !115, file: !116, line: 29, baseType: !13, size: 16, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !115, file: !116, line: 47, baseType: !13, size: 16, offset: 48)
!122 = !{!123, !124, !125, !126, !128, !130}
!123 = !DILocalVariable(name: "keyp", arg: 1, scope: !110, file: !3, line: 32, type: !113)
!124 = !DILocalVariable(name: "mask", arg: 2, scope: !110, file: !3, line: 32, type: !5)
!125 = !DILocalVariable(name: "hash", scope: !110, file: !3, line: 41, type: !5)
!126 = !DILocalVariable(name: "v", scope: !127, file: !3, line: 53, type: !5)
!127 = distinct !DILexicalBlock(scope: !110, file: !3, line: 53, column: 2)
!128 = !DILocalVariable(name: "v", scope: !129, file: !3, line: 54, type: !5)
!129 = distinct !DILexicalBlock(scope: !110, file: !3, line: 54, column: 2)
!130 = !DILocalVariable(name: "v", scope: !131, file: !3, line: 55, type: !5)
!131 = distinct !DILexicalBlock(scope: !110, file: !3, line: 55, column: 2)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "c2", scope: !110, file: !3, line: 35, type: !132, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "r1", scope: !110, file: !3, line: 36, type: !132, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "r2", scope: !110, file: !3, line: 37, type: !132, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "m", scope: !110, file: !3, line: 38, type: !132, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "n", scope: !110, file: !3, line: 39, type: !132, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "spec_order", scope: !2, file: !3, line: 358, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 144, elements: !148)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 109, baseType: !13)
!148 = !{!149}
!149 = !DISubrange(count: 9)
!150 = !{i32 7, !"Dwarf Version", i32 5}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 8, !"cf-protection-branch", i32 1}
!154 = !{i32 4, !"function_return_thunk_extern", i32 1}
!155 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!156 = !{i32 1, !"Code Model", i32 2}
!157 = !{i32 1, !"override-stack-alignment", i32 8}
!158 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!159 = distinct !DISubprogram(name: "avtab_insert_nonunique", scope: !3, file: !3, line: 151, type: !160, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !191, !113, !199}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_node", file: !116, line: 77, size: 192, elements: !164)
!164 = !{!165, !166, !190}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !163, file: !116, line: 78, baseType: !115, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !163, file: !116, line: 79, baseType: !167, size: 64, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_datum", file: !116, line: 70, size: 64, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !167, file: !116, line: 74, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !116, line: 71, size: 64, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !170, file: !116, line: 72, baseType: !5, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "xperms", scope: !170, file: !116, line: 73, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_extended_perms", file: !116, line: 54, size: 288, elements: !176)
!176 = !{!177, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !175, file: !116, line: 59, baseType: !178, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !180)
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !175, file: !116, line: 65, baseType: !178, size: 8, offset: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !175, file: !116, line: 67, baseType: !183, size: 256, offset: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms_data", file: !184, line: 223, size: 256, elements: !185)
!184 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !183, file: !184, line: 224, baseType: !187, size: 256)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !116, line: 80, baseType: !162, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab", file: !116, line: 83, size: 192, elements: !193)
!193 = !{!194, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !192, file: !116, line: 84, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !192, file: !116, line: 85, baseType: !5, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nslot", scope: !192, file: !116, line: 86, baseType: !5, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !192, file: !116, line: 87, baseType: !5, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!201 = !{!202, !203, !204, !205, !206, !207, !208}
!202 = !DILocalVariable(name: "h", arg: 1, scope: !159, file: !3, line: 151, type: !191)
!203 = !DILocalVariable(name: "key", arg: 2, scope: !159, file: !3, line: 152, type: !113)
!204 = !DILocalVariable(name: "datum", arg: 3, scope: !159, file: !3, line: 153, type: !199)
!205 = !DILocalVariable(name: "hvalue", scope: !159, file: !3, line: 155, type: !5)
!206 = !DILocalVariable(name: "prev", scope: !159, file: !3, line: 156, type: !162)
!207 = !DILocalVariable(name: "cur", scope: !159, file: !3, line: 156, type: !162)
!208 = !DILocalVariable(name: "specified", scope: !159, file: !3, line: 157, type: !13)
!209 = !DILocation(line: 151, column: 57, scope: !159)
!210 = !DILocation(line: 152, column: 32, scope: !159)
!211 = !DILocation(line: 153, column: 34, scope: !159)
!212 = !DILocation(line: 155, column: 2, scope: !159)
!213 = !DILocation(line: 155, column: 6, scope: !159)
!214 = !DILocation(line: 156, column: 2, scope: !159)
!215 = !DILocation(line: 156, column: 21, scope: !159)
!216 = !DILocation(line: 156, column: 28, scope: !159)
!217 = !DILocation(line: 157, column: 2, scope: !159)
!218 = !DILocation(line: 157, column: 6, scope: !159)
!219 = !DILocation(line: 157, column: 18, scope: !159)
!220 = !DILocation(line: 157, column: 23, scope: !159)
!221 = !DILocation(line: 157, column: 33, scope: !159)
!222 = !DILocation(line: 159, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !159, file: !3, line: 159, column: 6)
!224 = !DILocation(line: 159, column: 9, scope: !223)
!225 = !DILocation(line: 159, column: 13, scope: !223)
!226 = !DILocation(line: 159, column: 16, scope: !223)
!227 = !DILocation(line: 159, column: 22, scope: !223)
!228 = !DILocation(line: 159, column: 25, scope: !223)
!229 = !DILocation(line: 159, column: 28, scope: !223)
!230 = !DILocation(line: 159, column: 32, scope: !223)
!231 = !DILocation(line: 159, column: 6, scope: !159)
!232 = !DILocation(line: 160, column: 3, scope: !223)
!233 = !DILocation(line: 161, column: 22, scope: !159)
!234 = !DILocation(line: 161, column: 27, scope: !159)
!235 = !DILocation(line: 161, column: 30, scope: !159)
!236 = !DILocation(line: 161, column: 11, scope: !159)
!237 = !DILocation(line: 161, column: 9, scope: !159)
!238 = !DILocation(line: 162, column: 12, scope: !239)
!239 = distinct !DILexicalBlock(scope: !159, file: !3, line: 162, column: 2)
!240 = !DILocation(line: 162, column: 26, scope: !239)
!241 = !DILocation(line: 162, column: 29, scope: !239)
!242 = !DILocation(line: 162, column: 36, scope: !239)
!243 = !DILocation(line: 162, column: 24, scope: !239)
!244 = !DILocation(line: 162, column: 7, scope: !239)
!245 = !DILocation(line: 163, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !3, line: 162, column: 2)
!247 = !DILocation(line: 162, column: 2, scope: !239)
!248 = !DILocation(line: 165, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 165, column: 7)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 164, column: 36)
!251 = !DILocation(line: 165, column: 12, scope: !249)
!252 = !DILocation(line: 165, column: 27, scope: !249)
!253 = !DILocation(line: 165, column: 32, scope: !249)
!254 = !DILocation(line: 165, column: 36, scope: !249)
!255 = !DILocation(line: 165, column: 24, scope: !249)
!256 = !DILocation(line: 165, column: 48, scope: !249)
!257 = !DILocation(line: 166, column: 7, scope: !249)
!258 = !DILocation(line: 166, column: 12, scope: !249)
!259 = !DILocation(line: 166, column: 27, scope: !249)
!260 = !DILocation(line: 166, column: 32, scope: !249)
!261 = !DILocation(line: 166, column: 36, scope: !249)
!262 = !DILocation(line: 166, column: 24, scope: !249)
!263 = !DILocation(line: 166, column: 48, scope: !249)
!264 = !DILocation(line: 167, column: 7, scope: !249)
!265 = !DILocation(line: 167, column: 12, scope: !249)
!266 = !DILocation(line: 167, column: 28, scope: !249)
!267 = !DILocation(line: 167, column: 33, scope: !249)
!268 = !DILocation(line: 167, column: 37, scope: !249)
!269 = !DILocation(line: 167, column: 25, scope: !249)
!270 = !DILocation(line: 167, column: 50, scope: !249)
!271 = !DILocation(line: 168, column: 8, scope: !249)
!272 = !DILocation(line: 168, column: 20, scope: !249)
!273 = !DILocation(line: 168, column: 25, scope: !249)
!274 = !DILocation(line: 168, column: 29, scope: !249)
!275 = !DILocation(line: 168, column: 18, scope: !249)
!276 = !DILocation(line: 165, column: 7, scope: !250)
!277 = !DILocation(line: 169, column: 4, scope: !249)
!278 = !DILocation(line: 170, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !250, file: !3, line: 170, column: 7)
!280 = !DILocation(line: 170, column: 12, scope: !279)
!281 = !DILocation(line: 170, column: 26, scope: !279)
!282 = !DILocation(line: 170, column: 31, scope: !279)
!283 = !DILocation(line: 170, column: 35, scope: !279)
!284 = !DILocation(line: 170, column: 24, scope: !279)
!285 = !DILocation(line: 170, column: 7, scope: !250)
!286 = !DILocation(line: 171, column: 4, scope: !279)
!287 = !DILocation(line: 172, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !250, file: !3, line: 172, column: 7)
!289 = !DILocation(line: 172, column: 12, scope: !288)
!290 = !DILocation(line: 172, column: 27, scope: !288)
!291 = !DILocation(line: 172, column: 32, scope: !288)
!292 = !DILocation(line: 172, column: 36, scope: !288)
!293 = !DILocation(line: 172, column: 24, scope: !288)
!294 = !DILocation(line: 172, column: 48, scope: !288)
!295 = !DILocation(line: 173, column: 7, scope: !288)
!296 = !DILocation(line: 173, column: 12, scope: !288)
!297 = !DILocation(line: 173, column: 26, scope: !288)
!298 = !DILocation(line: 173, column: 31, scope: !288)
!299 = !DILocation(line: 173, column: 35, scope: !288)
!300 = !DILocation(line: 173, column: 24, scope: !288)
!301 = !DILocation(line: 172, column: 7, scope: !250)
!302 = !DILocation(line: 174, column: 4, scope: !288)
!303 = !DILocation(line: 175, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !250, file: !3, line: 175, column: 7)
!305 = !DILocation(line: 175, column: 12, scope: !304)
!306 = !DILocation(line: 175, column: 27, scope: !304)
!307 = !DILocation(line: 175, column: 32, scope: !304)
!308 = !DILocation(line: 175, column: 36, scope: !304)
!309 = !DILocation(line: 175, column: 24, scope: !304)
!310 = !DILocation(line: 175, column: 48, scope: !304)
!311 = !DILocation(line: 176, column: 7, scope: !304)
!312 = !DILocation(line: 176, column: 12, scope: !304)
!313 = !DILocation(line: 176, column: 27, scope: !304)
!314 = !DILocation(line: 176, column: 32, scope: !304)
!315 = !DILocation(line: 176, column: 36, scope: !304)
!316 = !DILocation(line: 176, column: 24, scope: !304)
!317 = !DILocation(line: 176, column: 48, scope: !304)
!318 = !DILocation(line: 177, column: 7, scope: !304)
!319 = !DILocation(line: 177, column: 12, scope: !304)
!320 = !DILocation(line: 177, column: 27, scope: !304)
!321 = !DILocation(line: 177, column: 32, scope: !304)
!322 = !DILocation(line: 177, column: 36, scope: !304)
!323 = !DILocation(line: 177, column: 25, scope: !304)
!324 = !DILocation(line: 175, column: 7, scope: !250)
!325 = !DILocation(line: 178, column: 4, scope: !304)
!326 = !DILocation(line: 179, column: 2, scope: !250)
!327 = !DILocation(line: 164, column: 14, scope: !246)
!328 = !DILocation(line: 164, column: 12, scope: !246)
!329 = !DILocation(line: 164, column: 25, scope: !246)
!330 = !DILocation(line: 164, column: 30, scope: !246)
!331 = !DILocation(line: 164, column: 23, scope: !246)
!332 = !DILocation(line: 162, column: 2, scope: !246)
!333 = distinct !{!333, !247, !334, !335, !336}
!334 = !DILocation(line: 179, column: 2, scope: !239)
!335 = !{!"llvm.loop.mustprogress"}
!336 = !{!"llvm.loop.unroll.disable"}
!337 = !DILocation(line: 180, column: 27, scope: !159)
!338 = !DILocation(line: 180, column: 30, scope: !159)
!339 = !DILocation(line: 180, column: 38, scope: !159)
!340 = !DILocation(line: 180, column: 44, scope: !159)
!341 = !DILocation(line: 180, column: 49, scope: !159)
!342 = !DILocation(line: 180, column: 9, scope: !159)
!343 = !DILocation(line: 180, column: 2, scope: !159)
!344 = !DILocation(line: 181, column: 1, scope: !159)
!345 = !DILocation(line: 32, column: 54, scope: !110)
!346 = !DILocation(line: 32, column: 64, scope: !110)
!347 = !DILocation(line: 41, column: 2, scope: !110)
!348 = !DILocation(line: 41, column: 6, scope: !110)
!349 = !DILocation(line: 53, column: 2, scope: !110)
!350 = !DILocation(line: 53, column: 2, scope: !127)
!351 = !DILocation(line: 54, column: 2, scope: !110)
!352 = !DILocation(line: 54, column: 2, scope: !129)
!353 = !DILocation(line: 55, column: 2, scope: !110)
!354 = !DILocation(line: 55, column: 2, scope: !131)
!355 = !DILocation(line: 59, column: 10, scope: !110)
!356 = !DILocation(line: 59, column: 15, scope: !110)
!357 = !DILocation(line: 59, column: 7, scope: !110)
!358 = !DILocation(line: 60, column: 7, scope: !110)
!359 = !DILocation(line: 61, column: 10, scope: !110)
!360 = !DILocation(line: 61, column: 15, scope: !110)
!361 = !DILocation(line: 61, column: 7, scope: !110)
!362 = !DILocation(line: 62, column: 7, scope: !110)
!363 = !DILocation(line: 63, column: 10, scope: !110)
!364 = !DILocation(line: 63, column: 15, scope: !110)
!365 = !DILocation(line: 63, column: 7, scope: !110)
!366 = !DILocation(line: 65, column: 9, scope: !110)
!367 = !DILocation(line: 65, column: 16, scope: !110)
!368 = !DILocation(line: 65, column: 14, scope: !110)
!369 = !DILocation(line: 66, column: 1, scope: !110)
!370 = !DILocation(line: 65, column: 2, scope: !110)
!371 = distinct !DISubprogram(name: "avtab_insert_node", scope: !3, file: !3, line: 69, type: !372, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!162, !191, !5, !162, !113, !199}
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382}
!375 = !DILocalVariable(name: "h", arg: 1, scope: !371, file: !3, line: 69, type: !191)
!376 = !DILocalVariable(name: "hvalue", arg: 2, scope: !371, file: !3, line: 69, type: !5)
!377 = !DILocalVariable(name: "prev", arg: 3, scope: !371, file: !3, line: 70, type: !162)
!378 = !DILocalVariable(name: "key", arg: 4, scope: !371, file: !3, line: 71, type: !113)
!379 = !DILocalVariable(name: "datum", arg: 5, scope: !371, file: !3, line: 71, type: !199)
!380 = !DILocalVariable(name: "newnode", scope: !371, file: !3, line: 73, type: !162)
!381 = !DILocalVariable(name: "xperms", scope: !371, file: !3, line: 74, type: !174)
!382 = !DILocalVariable(name: "n", scope: !383, file: !3, line: 96, type: !195)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 95, column: 9)
!384 = distinct !DILexicalBlock(scope: !371, file: !3, line: 92, column: 6)
!385 = !DILocation(line: 69, column: 33, scope: !371)
!386 = !DILocation(line: 69, column: 40, scope: !371)
!387 = !DILocation(line: 70, column: 24, scope: !371)
!388 = !DILocation(line: 71, column: 29, scope: !371)
!389 = !DILocation(line: 71, column: 60, scope: !371)
!390 = !DILocation(line: 73, column: 2, scope: !371)
!391 = !DILocation(line: 73, column: 21, scope: !371)
!392 = !DILocation(line: 74, column: 2, scope: !371)
!393 = !DILocation(line: 74, column: 31, scope: !371)
!394 = !DILocation(line: 75, column: 30, scope: !371)
!395 = !DILocation(line: 75, column: 12, scope: !371)
!396 = !DILocation(line: 75, column: 10, scope: !371)
!397 = !DILocation(line: 76, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !371, file: !3, line: 76, column: 6)
!399 = !DILocation(line: 76, column: 14, scope: !398)
!400 = !DILocation(line: 76, column: 6, scope: !371)
!401 = !DILocation(line: 77, column: 3, scope: !398)
!402 = !DILocation(line: 78, column: 2, scope: !371)
!403 = !DILocation(line: 78, column: 11, scope: !371)
!404 = !DILocation(line: 78, column: 18, scope: !371)
!405 = !DILocation(line: 78, column: 17, scope: !371)
!406 = !DILocation(line: 80, column: 6, scope: !407)
!407 = distinct !DILexicalBlock(scope: !371, file: !3, line: 80, column: 6)
!408 = !DILocation(line: 80, column: 11, scope: !407)
!409 = !DILocation(line: 80, column: 21, scope: !407)
!410 = !DILocation(line: 80, column: 6, scope: !371)
!411 = !DILocation(line: 81, column: 30, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !3, line: 80, column: 37)
!413 = !DILocation(line: 81, column: 12, scope: !412)
!414 = !DILocation(line: 81, column: 10, scope: !412)
!415 = !DILocation(line: 82, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !3, line: 82, column: 7)
!417 = !DILocation(line: 82, column: 14, scope: !416)
!418 = !DILocation(line: 82, column: 7, scope: !412)
!419 = !DILocation(line: 83, column: 20, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !3, line: 82, column: 23)
!421 = !DILocation(line: 83, column: 39, scope: !420)
!422 = !DILocation(line: 83, column: 4, scope: !420)
!423 = !DILocation(line: 84, column: 4, scope: !420)
!424 = !DILocation(line: 86, column: 4, scope: !412)
!425 = !DILocation(line: 86, column: 15, scope: !412)
!426 = !DILocation(line: 86, column: 22, scope: !412)
!427 = !DILocation(line: 86, column: 24, scope: !412)
!428 = !DILocation(line: 86, column: 13, scope: !412)
!429 = !DILocation(line: 87, column: 29, scope: !412)
!430 = !DILocation(line: 87, column: 3, scope: !412)
!431 = !DILocation(line: 87, column: 12, scope: !412)
!432 = !DILocation(line: 87, column: 18, scope: !412)
!433 = !DILocation(line: 87, column: 27, scope: !412)
!434 = !DILocation(line: 88, column: 2, scope: !412)
!435 = !DILocation(line: 89, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !407, file: !3, line: 88, column: 9)
!437 = !DILocation(line: 89, column: 34, scope: !436)
!438 = !DILocation(line: 89, column: 36, scope: !436)
!439 = !DILocation(line: 89, column: 3, scope: !436)
!440 = !DILocation(line: 89, column: 12, scope: !436)
!441 = !DILocation(line: 89, column: 18, scope: !436)
!442 = !DILocation(line: 89, column: 25, scope: !436)
!443 = !DILocation(line: 92, column: 6, scope: !384)
!444 = !DILocation(line: 92, column: 6, scope: !371)
!445 = !DILocation(line: 93, column: 19, scope: !446)
!446 = distinct !DILexicalBlock(scope: !384, file: !3, line: 92, column: 12)
!447 = !DILocation(line: 93, column: 25, scope: !446)
!448 = !DILocation(line: 93, column: 3, scope: !446)
!449 = !DILocation(line: 93, column: 12, scope: !446)
!450 = !DILocation(line: 93, column: 17, scope: !446)
!451 = !DILocation(line: 94, column: 16, scope: !446)
!452 = !DILocation(line: 94, column: 3, scope: !446)
!453 = !DILocation(line: 94, column: 9, scope: !446)
!454 = !DILocation(line: 94, column: 14, scope: !446)
!455 = !DILocation(line: 95, column: 2, scope: !446)
!456 = !DILocation(line: 96, column: 3, scope: !383)
!457 = !DILocation(line: 96, column: 23, scope: !383)
!458 = !DILocation(line: 96, column: 28, scope: !383)
!459 = !DILocation(line: 96, column: 31, scope: !383)
!460 = !DILocation(line: 96, column: 38, scope: !383)
!461 = !DILocation(line: 98, column: 20, scope: !383)
!462 = !DILocation(line: 98, column: 19, scope: !383)
!463 = !DILocation(line: 98, column: 3, scope: !383)
!464 = !DILocation(line: 98, column: 12, scope: !383)
!465 = !DILocation(line: 98, column: 17, scope: !383)
!466 = !DILocation(line: 99, column: 8, scope: !383)
!467 = !DILocation(line: 99, column: 4, scope: !383)
!468 = !DILocation(line: 99, column: 6, scope: !383)
!469 = !DILocation(line: 100, column: 2, scope: !384)
!470 = !DILocation(line: 102, column: 2, scope: !371)
!471 = !DILocation(line: 102, column: 5, scope: !371)
!472 = !DILocation(line: 102, column: 8, scope: !371)
!473 = !DILocation(line: 103, column: 9, scope: !371)
!474 = !DILocation(line: 103, column: 2, scope: !371)
!475 = !DILocation(line: 104, column: 1, scope: !371)
!476 = distinct !DISubprogram(name: "avtab_search_node", scope: !3, file: !3, line: 186, type: !477, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!162, !191, !113}
!479 = !{!480, !481, !482, !483, !484}
!480 = !DILocalVariable(name: "h", arg: 1, scope: !476, file: !3, line: 186, type: !191)
!481 = !DILocalVariable(name: "key", arg: 2, scope: !476, file: !3, line: 187, type: !113)
!482 = !DILocalVariable(name: "hvalue", scope: !476, file: !3, line: 189, type: !5)
!483 = !DILocalVariable(name: "cur", scope: !476, file: !3, line: 190, type: !162)
!484 = !DILocalVariable(name: "specified", scope: !476, file: !3, line: 191, type: !13)
!485 = !DILocation(line: 186, column: 52, scope: !476)
!486 = !DILocation(line: 187, column: 34, scope: !476)
!487 = !DILocation(line: 189, column: 2, scope: !476)
!488 = !DILocation(line: 189, column: 6, scope: !476)
!489 = !DILocation(line: 190, column: 2, scope: !476)
!490 = !DILocation(line: 190, column: 21, scope: !476)
!491 = !DILocation(line: 191, column: 2, scope: !476)
!492 = !DILocation(line: 191, column: 6, scope: !476)
!493 = !DILocation(line: 191, column: 18, scope: !476)
!494 = !DILocation(line: 191, column: 23, scope: !476)
!495 = !DILocation(line: 191, column: 33, scope: !476)
!496 = !DILocation(line: 193, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !476, file: !3, line: 193, column: 6)
!498 = !DILocation(line: 193, column: 9, scope: !497)
!499 = !DILocation(line: 193, column: 13, scope: !497)
!500 = !DILocation(line: 193, column: 16, scope: !497)
!501 = !DILocation(line: 193, column: 6, scope: !476)
!502 = !DILocation(line: 194, column: 3, scope: !497)
!503 = !DILocation(line: 196, column: 22, scope: !476)
!504 = !DILocation(line: 196, column: 27, scope: !476)
!505 = !DILocation(line: 196, column: 30, scope: !476)
!506 = !DILocation(line: 196, column: 11, scope: !476)
!507 = !DILocation(line: 196, column: 9, scope: !476)
!508 = !DILocation(line: 197, column: 13, scope: !509)
!509 = distinct !DILexicalBlock(scope: !476, file: !3, line: 197, column: 2)
!510 = !DILocation(line: 197, column: 16, scope: !509)
!511 = !DILocation(line: 197, column: 23, scope: !509)
!512 = !DILocation(line: 197, column: 11, scope: !509)
!513 = !DILocation(line: 197, column: 7, scope: !509)
!514 = !DILocation(line: 197, column: 32, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !3, line: 197, column: 2)
!516 = !DILocation(line: 197, column: 2, scope: !509)
!517 = !DILocation(line: 199, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 199, column: 7)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 198, column: 24)
!520 = !DILocation(line: 199, column: 12, scope: !518)
!521 = !DILocation(line: 199, column: 27, scope: !518)
!522 = !DILocation(line: 199, column: 32, scope: !518)
!523 = !DILocation(line: 199, column: 36, scope: !518)
!524 = !DILocation(line: 199, column: 24, scope: !518)
!525 = !DILocation(line: 199, column: 48, scope: !518)
!526 = !DILocation(line: 200, column: 7, scope: !518)
!527 = !DILocation(line: 200, column: 12, scope: !518)
!528 = !DILocation(line: 200, column: 27, scope: !518)
!529 = !DILocation(line: 200, column: 32, scope: !518)
!530 = !DILocation(line: 200, column: 36, scope: !518)
!531 = !DILocation(line: 200, column: 24, scope: !518)
!532 = !DILocation(line: 200, column: 48, scope: !518)
!533 = !DILocation(line: 201, column: 7, scope: !518)
!534 = !DILocation(line: 201, column: 12, scope: !518)
!535 = !DILocation(line: 201, column: 28, scope: !518)
!536 = !DILocation(line: 201, column: 33, scope: !518)
!537 = !DILocation(line: 201, column: 37, scope: !518)
!538 = !DILocation(line: 201, column: 25, scope: !518)
!539 = !DILocation(line: 201, column: 50, scope: !518)
!540 = !DILocation(line: 202, column: 8, scope: !518)
!541 = !DILocation(line: 202, column: 20, scope: !518)
!542 = !DILocation(line: 202, column: 25, scope: !518)
!543 = !DILocation(line: 202, column: 29, scope: !518)
!544 = !DILocation(line: 202, column: 18, scope: !518)
!545 = !DILocation(line: 199, column: 7, scope: !519)
!546 = !DILocation(line: 203, column: 11, scope: !518)
!547 = !DILocation(line: 203, column: 4, scope: !518)
!548 = !DILocation(line: 205, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !519, file: !3, line: 205, column: 7)
!550 = !DILocation(line: 205, column: 12, scope: !549)
!551 = !DILocation(line: 205, column: 26, scope: !549)
!552 = !DILocation(line: 205, column: 31, scope: !549)
!553 = !DILocation(line: 205, column: 35, scope: !549)
!554 = !DILocation(line: 205, column: 24, scope: !549)
!555 = !DILocation(line: 205, column: 7, scope: !519)
!556 = !DILocation(line: 206, column: 4, scope: !549)
!557 = !DILocation(line: 207, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !519, file: !3, line: 207, column: 7)
!559 = !DILocation(line: 207, column: 12, scope: !558)
!560 = !DILocation(line: 207, column: 27, scope: !558)
!561 = !DILocation(line: 207, column: 32, scope: !558)
!562 = !DILocation(line: 207, column: 36, scope: !558)
!563 = !DILocation(line: 207, column: 24, scope: !558)
!564 = !DILocation(line: 207, column: 48, scope: !558)
!565 = !DILocation(line: 208, column: 7, scope: !558)
!566 = !DILocation(line: 208, column: 12, scope: !558)
!567 = !DILocation(line: 208, column: 26, scope: !558)
!568 = !DILocation(line: 208, column: 31, scope: !558)
!569 = !DILocation(line: 208, column: 35, scope: !558)
!570 = !DILocation(line: 208, column: 24, scope: !558)
!571 = !DILocation(line: 207, column: 7, scope: !519)
!572 = !DILocation(line: 209, column: 4, scope: !558)
!573 = !DILocation(line: 210, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !519, file: !3, line: 210, column: 7)
!575 = !DILocation(line: 210, column: 12, scope: !574)
!576 = !DILocation(line: 210, column: 27, scope: !574)
!577 = !DILocation(line: 210, column: 32, scope: !574)
!578 = !DILocation(line: 210, column: 36, scope: !574)
!579 = !DILocation(line: 210, column: 24, scope: !574)
!580 = !DILocation(line: 210, column: 48, scope: !574)
!581 = !DILocation(line: 211, column: 7, scope: !574)
!582 = !DILocation(line: 211, column: 12, scope: !574)
!583 = !DILocation(line: 211, column: 27, scope: !574)
!584 = !DILocation(line: 211, column: 32, scope: !574)
!585 = !DILocation(line: 211, column: 36, scope: !574)
!586 = !DILocation(line: 211, column: 24, scope: !574)
!587 = !DILocation(line: 211, column: 48, scope: !574)
!588 = !DILocation(line: 212, column: 7, scope: !574)
!589 = !DILocation(line: 212, column: 12, scope: !574)
!590 = !DILocation(line: 212, column: 27, scope: !574)
!591 = !DILocation(line: 212, column: 32, scope: !574)
!592 = !DILocation(line: 212, column: 36, scope: !574)
!593 = !DILocation(line: 212, column: 25, scope: !574)
!594 = !DILocation(line: 210, column: 7, scope: !519)
!595 = !DILocation(line: 213, column: 4, scope: !574)
!596 = !DILocation(line: 214, column: 2, scope: !519)
!597 = !DILocation(line: 198, column: 13, scope: !515)
!598 = !DILocation(line: 198, column: 18, scope: !515)
!599 = !DILocation(line: 198, column: 11, scope: !515)
!600 = !DILocation(line: 197, column: 2, scope: !515)
!601 = distinct !{!601, !516, !602, !335, !336}
!602 = !DILocation(line: 214, column: 2, scope: !509)
!603 = !DILocation(line: 215, column: 2, scope: !476)
!604 = !DILocation(line: 216, column: 1, scope: !476)
!605 = distinct !DISubprogram(name: "avtab_search_node_next", scope: !3, file: !3, line: 219, type: !606, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!162, !162, !13}
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(name: "node", arg: 1, scope: !605, file: !3, line: 219, type: !162)
!610 = !DILocalVariable(name: "specified", arg: 2, scope: !605, file: !3, line: 219, type: !13)
!611 = !DILocalVariable(name: "cur", scope: !605, file: !3, line: 221, type: !162)
!612 = !DILocation(line: 219, column: 43, scope: !605)
!613 = !DILocation(line: 219, column: 53, scope: !605)
!614 = !DILocation(line: 221, column: 2, scope: !605)
!615 = !DILocation(line: 221, column: 21, scope: !605)
!616 = !DILocation(line: 223, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !605, file: !3, line: 223, column: 6)
!618 = !DILocation(line: 223, column: 6, scope: !605)
!619 = !DILocation(line: 224, column: 3, scope: !617)
!620 = !DILocation(line: 226, column: 12, scope: !605)
!621 = !DILocation(line: 227, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !605, file: !3, line: 227, column: 2)
!623 = !DILocation(line: 227, column: 19, scope: !622)
!624 = !DILocation(line: 227, column: 11, scope: !622)
!625 = !DILocation(line: 227, column: 7, scope: !622)
!626 = !DILocation(line: 227, column: 25, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 227, column: 2)
!628 = !DILocation(line: 227, column: 2, scope: !622)
!629 = !DILocation(line: 228, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 228, column: 7)
!631 = distinct !DILexicalBlock(scope: !627, file: !3, line: 227, column: 47)
!632 = !DILocation(line: 228, column: 13, scope: !630)
!633 = !DILocation(line: 228, column: 17, scope: !630)
!634 = !DILocation(line: 228, column: 32, scope: !630)
!635 = !DILocation(line: 228, column: 37, scope: !630)
!636 = !DILocation(line: 228, column: 41, scope: !630)
!637 = !DILocation(line: 228, column: 29, scope: !630)
!638 = !DILocation(line: 228, column: 53, scope: !630)
!639 = !DILocation(line: 229, column: 7, scope: !630)
!640 = !DILocation(line: 229, column: 13, scope: !630)
!641 = !DILocation(line: 229, column: 17, scope: !630)
!642 = !DILocation(line: 229, column: 32, scope: !630)
!643 = !DILocation(line: 229, column: 37, scope: !630)
!644 = !DILocation(line: 229, column: 41, scope: !630)
!645 = !DILocation(line: 229, column: 29, scope: !630)
!646 = !DILocation(line: 229, column: 53, scope: !630)
!647 = !DILocation(line: 230, column: 7, scope: !630)
!648 = !DILocation(line: 230, column: 13, scope: !630)
!649 = !DILocation(line: 230, column: 17, scope: !630)
!650 = !DILocation(line: 230, column: 33, scope: !630)
!651 = !DILocation(line: 230, column: 38, scope: !630)
!652 = !DILocation(line: 230, column: 42, scope: !630)
!653 = !DILocation(line: 230, column: 30, scope: !630)
!654 = !DILocation(line: 230, column: 55, scope: !630)
!655 = !DILocation(line: 231, column: 8, scope: !630)
!656 = !DILocation(line: 231, column: 20, scope: !630)
!657 = !DILocation(line: 231, column: 25, scope: !630)
!658 = !DILocation(line: 231, column: 29, scope: !630)
!659 = !DILocation(line: 231, column: 18, scope: !630)
!660 = !DILocation(line: 228, column: 7, scope: !631)
!661 = !DILocation(line: 232, column: 11, scope: !630)
!662 = !DILocation(line: 232, column: 4, scope: !630)
!663 = !DILocation(line: 234, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !631, file: !3, line: 234, column: 7)
!665 = !DILocation(line: 234, column: 13, scope: !664)
!666 = !DILocation(line: 234, column: 17, scope: !664)
!667 = !DILocation(line: 234, column: 31, scope: !664)
!668 = !DILocation(line: 234, column: 36, scope: !664)
!669 = !DILocation(line: 234, column: 40, scope: !664)
!670 = !DILocation(line: 234, column: 29, scope: !664)
!671 = !DILocation(line: 234, column: 7, scope: !631)
!672 = !DILocation(line: 235, column: 4, scope: !664)
!673 = !DILocation(line: 236, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !631, file: !3, line: 236, column: 7)
!675 = !DILocation(line: 236, column: 13, scope: !674)
!676 = !DILocation(line: 236, column: 17, scope: !674)
!677 = !DILocation(line: 236, column: 32, scope: !674)
!678 = !DILocation(line: 236, column: 37, scope: !674)
!679 = !DILocation(line: 236, column: 41, scope: !674)
!680 = !DILocation(line: 236, column: 29, scope: !674)
!681 = !DILocation(line: 236, column: 53, scope: !674)
!682 = !DILocation(line: 237, column: 7, scope: !674)
!683 = !DILocation(line: 237, column: 13, scope: !674)
!684 = !DILocation(line: 237, column: 17, scope: !674)
!685 = !DILocation(line: 237, column: 31, scope: !674)
!686 = !DILocation(line: 237, column: 36, scope: !674)
!687 = !DILocation(line: 237, column: 40, scope: !674)
!688 = !DILocation(line: 237, column: 29, scope: !674)
!689 = !DILocation(line: 236, column: 7, scope: !631)
!690 = !DILocation(line: 238, column: 4, scope: !674)
!691 = !DILocation(line: 239, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !631, file: !3, line: 239, column: 7)
!693 = !DILocation(line: 239, column: 13, scope: !692)
!694 = !DILocation(line: 239, column: 17, scope: !692)
!695 = !DILocation(line: 239, column: 32, scope: !692)
!696 = !DILocation(line: 239, column: 37, scope: !692)
!697 = !DILocation(line: 239, column: 41, scope: !692)
!698 = !DILocation(line: 239, column: 29, scope: !692)
!699 = !DILocation(line: 239, column: 53, scope: !692)
!700 = !DILocation(line: 240, column: 7, scope: !692)
!701 = !DILocation(line: 240, column: 13, scope: !692)
!702 = !DILocation(line: 240, column: 17, scope: !692)
!703 = !DILocation(line: 240, column: 32, scope: !692)
!704 = !DILocation(line: 240, column: 37, scope: !692)
!705 = !DILocation(line: 240, column: 41, scope: !692)
!706 = !DILocation(line: 240, column: 29, scope: !692)
!707 = !DILocation(line: 240, column: 53, scope: !692)
!708 = !DILocation(line: 241, column: 7, scope: !692)
!709 = !DILocation(line: 241, column: 13, scope: !692)
!710 = !DILocation(line: 241, column: 17, scope: !692)
!711 = !DILocation(line: 241, column: 32, scope: !692)
!712 = !DILocation(line: 241, column: 37, scope: !692)
!713 = !DILocation(line: 241, column: 41, scope: !692)
!714 = !DILocation(line: 241, column: 30, scope: !692)
!715 = !DILocation(line: 239, column: 7, scope: !631)
!716 = !DILocation(line: 242, column: 4, scope: !692)
!717 = !DILocation(line: 243, column: 2, scope: !631)
!718 = !DILocation(line: 227, column: 36, scope: !627)
!719 = !DILocation(line: 227, column: 41, scope: !627)
!720 = !DILocation(line: 227, column: 34, scope: !627)
!721 = !DILocation(line: 227, column: 2, scope: !627)
!722 = distinct !{!722, !628, !723, !335, !336}
!723 = !DILocation(line: 243, column: 2, scope: !622)
!724 = !DILocation(line: 244, column: 2, scope: !605)
!725 = !DILocation(line: 245, column: 1, scope: !605)
!726 = distinct !DISubprogram(name: "avtab_destroy", scope: !3, file: !3, line: 247, type: !727, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !191}
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "h", arg: 1, scope: !726, file: !3, line: 247, type: !191)
!731 = !DILocalVariable(name: "i", scope: !726, file: !3, line: 249, type: !5)
!732 = !DILocalVariable(name: "cur", scope: !726, file: !3, line: 250, type: !162)
!733 = !DILocalVariable(name: "temp", scope: !726, file: !3, line: 250, type: !162)
!734 = !DILocation(line: 247, column: 34, scope: !726)
!735 = !DILocation(line: 249, column: 2, scope: !726)
!736 = !DILocation(line: 249, column: 6, scope: !726)
!737 = !DILocation(line: 250, column: 2, scope: !726)
!738 = !DILocation(line: 250, column: 21, scope: !726)
!739 = !DILocation(line: 250, column: 27, scope: !726)
!740 = !DILocation(line: 252, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !726, file: !3, line: 252, column: 6)
!742 = !DILocation(line: 252, column: 6, scope: !726)
!743 = !DILocation(line: 253, column: 3, scope: !741)
!744 = !DILocation(line: 255, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !726, file: !3, line: 255, column: 2)
!746 = !DILocation(line: 255, column: 7, scope: !745)
!747 = !DILocation(line: 255, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 255, column: 2)
!749 = !DILocation(line: 255, column: 18, scope: !748)
!750 = !DILocation(line: 255, column: 21, scope: !748)
!751 = !DILocation(line: 255, column: 16, scope: !748)
!752 = !DILocation(line: 255, column: 2, scope: !745)
!753 = !DILocation(line: 256, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !748, file: !3, line: 255, column: 33)
!755 = !DILocation(line: 256, column: 12, scope: !754)
!756 = !DILocation(line: 256, column: 19, scope: !754)
!757 = !DILocation(line: 256, column: 7, scope: !754)
!758 = !DILocation(line: 257, column: 3, scope: !754)
!759 = !DILocation(line: 257, column: 10, scope: !754)
!760 = !DILocation(line: 258, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !3, line: 257, column: 15)
!762 = !DILocation(line: 258, column: 9, scope: !761)
!763 = !DILocation(line: 259, column: 10, scope: !761)
!764 = !DILocation(line: 259, column: 15, scope: !761)
!765 = !DILocation(line: 259, column: 8, scope: !761)
!766 = !DILocation(line: 260, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !761, file: !3, line: 260, column: 8)
!768 = !DILocation(line: 260, column: 14, scope: !767)
!769 = !DILocation(line: 260, column: 18, scope: !767)
!770 = !DILocation(line: 260, column: 28, scope: !767)
!771 = !DILocation(line: 260, column: 8, scope: !761)
!772 = !DILocation(line: 261, column: 21, scope: !767)
!773 = !DILocation(line: 262, column: 7, scope: !767)
!774 = !DILocation(line: 262, column: 13, scope: !767)
!775 = !DILocation(line: 262, column: 19, scope: !767)
!776 = !DILocation(line: 262, column: 21, scope: !767)
!777 = !DILocation(line: 261, column: 5, scope: !767)
!778 = !DILocation(line: 263, column: 20, scope: !761)
!779 = !DILocation(line: 263, column: 39, scope: !761)
!780 = !DILocation(line: 263, column: 4, scope: !761)
!781 = distinct !{!781, !758, !782, !335, !336}
!782 = !DILocation(line: 264, column: 3, scope: !754)
!783 = !DILocation(line: 265, column: 2, scope: !754)
!784 = !DILocation(line: 255, column: 29, scope: !748)
!785 = !DILocation(line: 255, column: 2, scope: !748)
!786 = distinct !{!786, !752, !787, !335, !336}
!787 = !DILocation(line: 265, column: 2, scope: !745)
!788 = !DILocation(line: 266, column: 9, scope: !726)
!789 = !DILocation(line: 266, column: 12, scope: !726)
!790 = !DILocation(line: 266, column: 2, scope: !726)
!791 = !DILocation(line: 267, column: 2, scope: !726)
!792 = !DILocation(line: 267, column: 5, scope: !726)
!793 = !DILocation(line: 267, column: 12, scope: !726)
!794 = !DILocation(line: 268, column: 2, scope: !726)
!795 = !DILocation(line: 268, column: 5, scope: !726)
!796 = !DILocation(line: 268, column: 9, scope: !726)
!797 = !DILocation(line: 269, column: 2, scope: !726)
!798 = !DILocation(line: 269, column: 5, scope: !726)
!799 = !DILocation(line: 269, column: 11, scope: !726)
!800 = !DILocation(line: 270, column: 2, scope: !726)
!801 = !DILocation(line: 270, column: 5, scope: !726)
!802 = !DILocation(line: 270, column: 10, scope: !726)
!803 = !DILocation(line: 271, column: 1, scope: !726)
!804 = !DISubprogram(name: "kmem_cache_free", scope: !805, file: !805, line: 503, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!806 = !DISubroutineType(types: !807)
!807 = !{null, !105, !17}
!808 = !DISubprogram(name: "kvfree", scope: !805, file: !805, line: 766, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!813 = distinct !DISubprogram(name: "avtab_init", scope: !3, file: !3, line: 273, type: !727, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!814 = !{!815}
!815 = !DILocalVariable(name: "h", arg: 1, scope: !813, file: !3, line: 273, type: !191)
!816 = !DILocation(line: 273, column: 31, scope: !813)
!817 = !DILocation(line: 275, column: 2, scope: !813)
!818 = !DILocation(line: 275, column: 5, scope: !813)
!819 = !DILocation(line: 275, column: 12, scope: !813)
!820 = !DILocation(line: 276, column: 2, scope: !813)
!821 = !DILocation(line: 276, column: 5, scope: !813)
!822 = !DILocation(line: 276, column: 9, scope: !813)
!823 = !DILocation(line: 277, column: 2, scope: !813)
!824 = !DILocation(line: 277, column: 5, scope: !813)
!825 = !DILocation(line: 277, column: 11, scope: !813)
!826 = !DILocation(line: 278, column: 2, scope: !813)
!827 = !DILocation(line: 278, column: 5, scope: !813)
!828 = !DILocation(line: 278, column: 10, scope: !813)
!829 = !DILocation(line: 279, column: 1, scope: !813)
!830 = distinct !DISubprogram(name: "avtab_alloc", scope: !3, file: !3, line: 295, type: !831, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!12, !191, !5}
!833 = !{!834, !835, !836, !837, !838, !841}
!834 = !DILocalVariable(name: "h", arg: 1, scope: !830, file: !3, line: 295, type: !191)
!835 = !DILocalVariable(name: "nrules", arg: 2, scope: !830, file: !3, line: 295, type: !5)
!836 = !DILocalVariable(name: "rc", scope: !830, file: !3, line: 297, type: !12)
!837 = !DILocalVariable(name: "nslot", scope: !830, file: !3, line: 298, type: !5)
!838 = !DILocalVariable(name: "shift", scope: !839, file: !3, line: 301, type: !5)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 300, column: 19)
!840 = distinct !DILexicalBlock(scope: !830, file: !3, line: 300, column: 6)
!841 = !DILocalVariable(name: "work", scope: !839, file: !3, line: 302, type: !5)
!842 = !DILocation(line: 295, column: 31, scope: !830)
!843 = !DILocation(line: 295, column: 38, scope: !830)
!844 = !DILocation(line: 297, column: 2, scope: !830)
!845 = !DILocation(line: 297, column: 6, scope: !830)
!846 = !DILocation(line: 298, column: 2, scope: !830)
!847 = !DILocation(line: 298, column: 6, scope: !830)
!848 = !DILocation(line: 300, column: 6, scope: !840)
!849 = !DILocation(line: 300, column: 13, scope: !840)
!850 = !DILocation(line: 300, column: 6, scope: !830)
!851 = !DILocation(line: 301, column: 3, scope: !839)
!852 = !DILocation(line: 301, column: 7, scope: !839)
!853 = !DILocation(line: 302, column: 3, scope: !839)
!854 = !DILocation(line: 302, column: 7, scope: !839)
!855 = !DILocation(line: 302, column: 14, scope: !839)
!856 = !DILocation(line: 302, column: 21, scope: !839)
!857 = !DILocation(line: 303, column: 3, scope: !839)
!858 = !DILocation(line: 303, column: 10, scope: !839)
!859 = !DILocation(line: 304, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !839, file: !3, line: 303, column: 16)
!861 = !DILocation(line: 305, column: 9, scope: !860)
!862 = distinct !{!862, !857, !863, !335, !336}
!863 = !DILocation(line: 306, column: 3, scope: !839)
!864 = !DILocation(line: 307, column: 16, scope: !839)
!865 = !DILocation(line: 307, column: 13, scope: !839)
!866 = !DILocation(line: 307, column: 9, scope: !839)
!867 = !DILocation(line: 308, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !839, file: !3, line: 308, column: 7)
!869 = !DILocation(line: 308, column: 13, scope: !868)
!870 = !DILocation(line: 308, column: 7, scope: !839)
!871 = !DILocation(line: 309, column: 10, scope: !868)
!872 = !DILocation(line: 309, column: 4, scope: !868)
!873 = !DILocation(line: 311, column: 27, scope: !839)
!874 = !DILocation(line: 311, column: 30, scope: !839)
!875 = !DILocation(line: 311, column: 8, scope: !839)
!876 = !DILocation(line: 311, column: 6, scope: !839)
!877 = !DILocation(line: 312, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !839, file: !3, line: 312, column: 7)
!879 = !DILocation(line: 312, column: 7, scope: !839)
!880 = !DILocation(line: 313, column: 11, scope: !878)
!881 = !DILocation(line: 313, column: 4, scope: !878)
!882 = !DILocation(line: 314, column: 2, scope: !840)
!883 = !DILocation(line: 314, column: 2, scope: !839)
!884 = !DILocation(line: 316, column: 2, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 316, column: 2)
!886 = distinct !DILexicalBlock(scope: !830, file: !3, line: 316, column: 2)
!887 = !DILocation(line: 316, column: 2, scope: !886)
!888 = !DILocation(line: 317, column: 2, scope: !830)
!889 = !DILocation(line: 318, column: 1, scope: !830)
!890 = distinct !DISubprogram(name: "avtab_alloc_common", scope: !3, file: !3, line: 281, type: !831, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892, !893}
!892 = !DILocalVariable(name: "h", arg: 1, scope: !890, file: !3, line: 281, type: !191)
!893 = !DILocalVariable(name: "nslot", arg: 2, scope: !890, file: !3, line: 281, type: !5)
!894 = !DILocation(line: 281, column: 45, scope: !890)
!895 = !DILocation(line: 281, column: 52, scope: !890)
!896 = !DILocation(line: 283, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !3, line: 283, column: 6)
!898 = !DILocation(line: 283, column: 6, scope: !890)
!899 = !DILocation(line: 284, column: 3, scope: !897)
!900 = !DILocation(line: 286, column: 23, scope: !890)
!901 = !DILocation(line: 286, column: 14, scope: !890)
!902 = !DILocation(line: 286, column: 2, scope: !890)
!903 = !DILocation(line: 286, column: 5, scope: !890)
!904 = !DILocation(line: 286, column: 12, scope: !890)
!905 = !DILocation(line: 287, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !890, file: !3, line: 287, column: 6)
!907 = !DILocation(line: 287, column: 10, scope: !906)
!908 = !DILocation(line: 287, column: 6, scope: !890)
!909 = !DILocation(line: 288, column: 3, scope: !906)
!910 = !DILocation(line: 290, column: 13, scope: !890)
!911 = !DILocation(line: 290, column: 2, scope: !890)
!912 = !DILocation(line: 290, column: 5, scope: !890)
!913 = !DILocation(line: 290, column: 11, scope: !890)
!914 = !DILocation(line: 291, column: 12, scope: !890)
!915 = !DILocation(line: 291, column: 18, scope: !890)
!916 = !DILocation(line: 291, column: 2, scope: !890)
!917 = !DILocation(line: 291, column: 5, scope: !890)
!918 = !DILocation(line: 291, column: 10, scope: !890)
!919 = !DILocation(line: 292, column: 2, scope: !890)
!920 = !DILocation(line: 293, column: 1, scope: !890)
!921 = distinct !DISubprogram(name: "avtab_alloc_dup", scope: !3, file: !3, line: 320, type: !922, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !926)
!922 = !DISubroutineType(types: !923)
!923 = !{!12, !191, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!926 = !{!927, !928}
!927 = !DILocalVariable(name: "new", arg: 1, scope: !921, file: !3, line: 320, type: !191)
!928 = !DILocalVariable(name: "orig", arg: 2, scope: !921, file: !3, line: 320, type: !924)
!929 = !DILocation(line: 320, column: 35, scope: !921)
!930 = !DILocation(line: 320, column: 60, scope: !921)
!931 = !DILocation(line: 322, column: 28, scope: !921)
!932 = !DILocation(line: 322, column: 33, scope: !921)
!933 = !DILocation(line: 322, column: 39, scope: !921)
!934 = !DILocation(line: 322, column: 9, scope: !921)
!935 = !DILocation(line: 322, column: 2, scope: !921)
!936 = distinct !DISubprogram(name: "avtab_read_item", scope: !3, file: !3, line: 370, type: !937, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1174)
!937 = !DISubroutineType(types: !938)
!938 = !{!12, !191, !17, !939, !1171, !17}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policydb", file: !941, line: 239, size: 4736, elements: !942)
!941 = !DIFile(filename: "security/selinux/ss/policydb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7795e8c85e617c81c5f9432b58d69e6")
!942 = !{!943, !944, !964, !968, !1025, !1034, !1055, !1064, !1065, !1066, !1067, !1068, !1069, !1076, !1077, !1080, !1081, !1088, !1149, !1156, !1157, !1159, !1160, !1161, !1166, !1167, !1168, !1169, !1170}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mls_enabled", scope: !940, file: !941, line: 240, baseType: !12, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !940, file: !941, line: 243, baseType: !945, size: 1536, offset: 64)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 1536, elements: !188)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !947, line: 15, size: 192, elements: !948)
!947 = !DIFile(filename: "security/selinux/ss/symtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4fa558f58a0acfc7c6989b1450f1c1b")
!948 = !{!949, !963}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !946, file: !947, line: 16, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !951, line: 32, size: 128, elements: !952)
!951 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!952 = !{!953, !961, !962}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !950, file: !951, line: 33, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !951, line: 26, size: 192, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !956, file: !951, line: 27, baseType: !17, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !956, file: !951, line: 28, baseType: !17, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !951, line: 29, baseType: !955, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !950, file: !951, line: 34, baseType: !5, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !950, file: !951, line: 35, baseType: !5, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nprim", scope: !946, file: !947, line: 17, baseType: !5, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sym_val_to_name", scope: !940, file: !941, line: 254, baseType: !965, size: 512, offset: 1600)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 512, elements: !188)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "class_val_to_struct", scope: !940, file: !941, line: 257, baseType: !969, size: 64, offset: 2112)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_datum", file: !941, line: 52, size: 576, elements: !972)
!972 = !{!973, !974, !975, !981, !982, !1020, !1021, !1022, !1023, !1024}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !971, file: !941, line: 53, baseType: !5, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "comkey", scope: !971, file: !941, line: 54, baseType: !967, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "comdatum", scope: !971, file: !941, line: 55, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_datum", file: !941, line: 46, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !977, file: !941, line: 47, baseType: !5, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !977, file: !941, line: 48, baseType: !946, size: 192, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !971, file: !941, line: 56, baseType: !946, size: 192, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !971, file: !941, line: 57, baseType: !983, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_node", file: !985, line: 57, size: 192, elements: !986)
!985 = !DIFile(filename: "security/selinux/ss/constraint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5462a1cc40f682813f94f813d2ff99e")
!986 = !{!987, !988, !1019}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !984, file: !985, line: 58, baseType: !5, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !984, file: !985, line: 59, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_expr", file: !985, line: 23, size: 384, elements: !991)
!991 = !{!992, !993, !994, !995, !1011, !1018}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "expr_type", scope: !990, file: !985, line: 29, baseType: !5, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !990, file: !985, line: 42, baseType: !5, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !990, file: !985, line: 49, baseType: !5, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !990, file: !985, line: 51, baseType: !996, size: 128, offset: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !997, line: 40, size: 128, elements: !998)
!997 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!998 = !{!999, !1010}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !996, file: !997, line: 41, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !997, line: 34, size: 512, elements: !1002)
!1002 = !{!1003, !1004, !1009}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1001, file: !997, line: 35, baseType: !1000, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !1001, file: !997, line: 36, baseType: !1005, size: 384, offset: 64)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 384, elements: !1007)
!1006 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1007 = !{!1008}
!1008 = !DISubrange(count: 6)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !1001, file: !997, line: 37, baseType: !5, size: 32, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !996, file: !997, line: 42, baseType: !5, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "type_names", scope: !990, file: !985, line: 52, baseType: !1012, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_set", file: !941, line: 161, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1013, file: !941, line: 162, baseType: !996, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "negset", scope: !1013, file: !941, line: 163, baseType: !996, size: 128, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !941, line: 164, baseType: !5, size: 32, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !990, file: !985, line: 54, baseType: !989, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !985, line: 60, baseType: !983, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "validatetrans", scope: !971, file: !941, line: 58, baseType: !983, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "default_user", scope: !971, file: !941, line: 62, baseType: !25, size: 8, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "default_role", scope: !971, file: !941, line: 63, baseType: !25, size: 8, offset: 520)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !971, file: !941, line: 64, baseType: !25, size: 8, offset: 528)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "default_range", scope: !971, file: !941, line: 73, baseType: !25, size: 8, offset: 536)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "role_val_to_struct", scope: !940, file: !941, line: 258, baseType: !1026, size: 64, offset: 2176)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_datum", file: !941, line: 77, size: 320, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1028, file: !941, line: 78, baseType: !5, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1028, file: !941, line: 79, baseType: !5, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dominates", scope: !1028, file: !941, line: 80, baseType: !996, size: 128, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1028, file: !941, line: 81, baseType: !996, size: 128, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "user_val_to_struct", scope: !940, file: !941, line: 259, baseType: !1035, size: 64, offset: 2240)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_datum", file: !941, line: 121, size: 768, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1054}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1037, file: !941, line: 122, baseType: !5, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1037, file: !941, line: 123, baseType: !5, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !1037, file: !941, line: 124, baseType: !996, size: 128, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1037, file: !941, line: 125, baseType: !1043, size: 384, offset: 192)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_range", file: !1044, line: 26, size: 384, elements: !1045)
!1044 = !DIFile(filename: "security/selinux/ss/mls_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea1e0a8d988e75a37cbe0fc79ec24320")
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1043, file: !1044, line: 27, baseType: !1047, size: 384)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 384, elements: !1052)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_level", file: !1044, line: 21, size: 192, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sens", scope: !1048, file: !1044, line: 22, baseType: !5, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !1048, file: !1044, line: 23, baseType: !996, size: 128, offset: 64)
!1052 = !{!1053}
!1053 = !DISubrange(count: 2)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dfltlevel", scope: !1037, file: !941, line: 126, baseType: !1048, size: 192, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "type_val_to_struct", scope: !940, file: !941, line: 260, baseType: !1056, size: 64, offset: 2304)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_datum", file: !941, line: 113, size: 96, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1058, file: !941, line: 114, baseType: !5, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1058, file: !941, line: 115, baseType: !5, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !1058, file: !941, line: 116, baseType: !180, size: 8, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1058, file: !941, line: 117, baseType: !180, size: 8, offset: 72)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "te_avtab", scope: !940, file: !941, line: 263, baseType: !192, size: 192, offset: 2368)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "role_tr", scope: !940, file: !941, line: 266, baseType: !950, size: 128, offset: 2560)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans_ttypes", scope: !940, file: !941, line: 270, baseType: !996, size: 128, offset: 2688)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans", scope: !940, file: !941, line: 272, baseType: !950, size: 128, offset: 2816)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compat_filename_trans_count", scope: !940, file: !941, line: 274, baseType: !5, size: 32, offset: 2944)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bool_val_to_struct", scope: !940, file: !941, line: 277, baseType: !1070, size: 64, offset: 3008)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_bool_datum", file: !941, line: 149, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1072, file: !941, line: 150, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1072, file: !941, line: 151, baseType: !12, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "te_cond_avtab", scope: !940, file: !941, line: 279, baseType: !192, size: 192, offset: 3072)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list", scope: !940, file: !941, line: 281, baseType: !1078, size: 64, offset: 3264)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "cond_node", file: !941, line: 154, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list_len", scope: !940, file: !941, line: 282, baseType: !5, size: 32, offset: 3328)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "role_allow", scope: !940, file: !941, line: 285, baseType: !1082, size: 64, offset: 3392)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_allow", file: !941, line: 106, size: 128, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !1083, file: !941, line: 107, baseType: !5, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "new_role", scope: !1083, file: !941, line: 108, baseType: !5, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1083, file: !941, line: 109, baseType: !1082, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ocontexts", scope: !940, file: !941, line: 289, baseType: !1089, size: 576, offset: 3456)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 576, elements: !148)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ocontext", file: !941, line: 174, size: 1600, elements: !1092)
!1092 = !{!1093, !1130, !1135, !1146, !1148}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1091, file: !941, line: 199, baseType: !1094, size: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !941, line: 175, size: 256, elements: !1095)
!1095 = !{!1096, !1097, !1103, !1108, !1116, !1125}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1094, file: !941, line: 176, baseType: !967, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1094, file: !941, line: 181, baseType: !1098, size: 48)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !941, line: 177, size: 48, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1098, file: !941, line: 178, baseType: !178, size: 8)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "low_port", scope: !1098, file: !941, line: 179, baseType: !13, size: 16, offset: 16)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "high_port", scope: !1098, file: !941, line: 180, baseType: !13, size: 16, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !941, line: 185, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !941, line: 182, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1104, file: !941, line: 183, baseType: !5, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1104, file: !941, line: 184, baseType: !5, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node6", scope: !1094, file: !941, line: 189, baseType: !1109, size: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !941, line: 186, size: 256, elements: !1110)
!1110 = !{!1111, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1109, file: !941, line: 187, baseType: !1112, size: 128)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 4)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1109, file: !941, line: 188, baseType: !1112, size: 128, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ibpkey", scope: !1094, file: !941, line: 194, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !941, line: 190, size: 128, elements: !1118)
!1118 = !{!1119, !1123, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "subnet_prefix", scope: !1117, file: !941, line: 191, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !1122)
!1122 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "low_pkey", scope: !1117, file: !941, line: 192, baseType: !13, size: 16, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "high_pkey", scope: !1117, file: !941, line: 193, baseType: !13, size: 16, offset: 80)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ibendport", scope: !1094, file: !941, line: 198, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !941, line: 195, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1126, file: !941, line: 196, baseType: !967, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1126, file: !941, line: 197, baseType: !178, size: 8, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1091, file: !941, line: 203, baseType: !1131, size: 32, offset: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !941, line: 200, size: 32, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sclass", scope: !1131, file: !941, line: 201, baseType: !5, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "behavior", scope: !1131, file: !941, line: 202, baseType: !5, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1091, file: !941, line: 204, baseType: !1136, size: 1152, offset: 320)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 1152, elements: !1052)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !1138, line: 27, size: 576, elements: !1139)
!1138 = !DIFile(filename: "security/selinux/ss/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da62b4bf5ddec43330086032ebb96414")
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1137, file: !1138, line: 28, baseType: !5, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !1137, file: !1138, line: 29, baseType: !5, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1137, file: !1138, line: 30, baseType: !5, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1137, file: !1138, line: 31, baseType: !5, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1137, file: !1138, line: 32, baseType: !1043, size: 384, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1137, file: !1138, line: 33, baseType: !967, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !1091, file: !941, line: 205, baseType: !1147, size: 64, offset: 1472)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !1052)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1091, file: !941, line: 206, baseType: !1090, size: 64, offset: 1536)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "genfs", scope: !940, file: !941, line: 294, baseType: !1150, size: 64, offset: 4032)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genfs", file: !941, line: 209, size: 192, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "fstype", scope: !1151, file: !941, line: 210, baseType: !967, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1151, file: !941, line: 211, baseType: !1090, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !941, line: 212, baseType: !1150, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "range_tr", scope: !940, file: !941, line: 297, baseType: !950, size: 128, offset: 4096)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type_attr_map_array", scope: !940, file: !941, line: 300, baseType: !1158, size: 64, offset: 4224)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "policycaps", scope: !940, file: !941, line: 302, baseType: !996, size: 128, offset: 4288)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "permissive_map", scope: !940, file: !941, line: 304, baseType: !996, size: 128, offset: 4416)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !940, file: !941, line: 307, baseType: !1162, size: 64, offset: 4544)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1164, line: 72, baseType: !1165)
!1164 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1164, line: 16, baseType: !1006)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "policyvers", scope: !940, file: !941, line: 309, baseType: !9, size: 32, offset: 4608)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "reject_unknown", scope: !940, file: !941, line: 311, baseType: !9, size: 1, offset: 4640, flags: DIFlagBitField, extraData: i64 4640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unknown", scope: !940, file: !941, line: 312, baseType: !9, size: 1, offset: 4641, flags: DIFlagBitField, extraData: i64 4640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "process_class", scope: !940, file: !941, line: 314, baseType: !13, size: 16, offset: 4656)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "process_trans_perms", scope: !940, file: !941, line: 315, baseType: !5, size: 32, offset: 4672)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!12, !191, !113, !199, !17}
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1192, !1193, !1194}
!1175 = !DILocalVariable(name: "a", arg: 1, scope: !936, file: !3, line: 370, type: !191)
!1176 = !DILocalVariable(name: "fp", arg: 2, scope: !936, file: !3, line: 370, type: !17)
!1177 = !DILocalVariable(name: "pol", arg: 3, scope: !936, file: !3, line: 370, type: !939)
!1178 = !DILocalVariable(name: "insertf", arg: 4, scope: !936, file: !3, line: 371, type: !1171)
!1179 = !DILocalVariable(name: "p", arg: 5, scope: !936, file: !3, line: 373, type: !17)
!1180 = !DILocalVariable(name: "buf16", scope: !936, file: !3, line: 375, type: !1181)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !1113)
!1182 = !DILocalVariable(name: "enabled", scope: !936, file: !3, line: 376, type: !13)
!1183 = !DILocalVariable(name: "items", scope: !936, file: !3, line: 377, type: !5)
!1184 = !DILocalVariable(name: "items2", scope: !936, file: !3, line: 377, type: !5)
!1185 = !DILocalVariable(name: "val", scope: !936, file: !3, line: 377, type: !5)
!1186 = !DILocalVariable(name: "i", scope: !936, file: !3, line: 377, type: !5)
!1187 = !DILocalVariable(name: "key", scope: !936, file: !3, line: 378, type: !115)
!1188 = !DILocalVariable(name: "datum", scope: !936, file: !3, line: 379, type: !167)
!1189 = !DILocalVariable(name: "xperms", scope: !936, file: !3, line: 380, type: !175)
!1190 = !DILocalVariable(name: "buf32", scope: !936, file: !3, line: 381, type: !1191)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !188)
!1192 = !DILocalVariable(name: "rc", scope: !936, file: !3, line: 382, type: !12)
!1193 = !DILocalVariable(name: "set", scope: !936, file: !3, line: 383, type: !9)
!1194 = !DILocalVariable(name: "vers", scope: !936, file: !3, line: 383, type: !9)
!1195 = !DILocation(line: 370, column: 35, scope: !936)
!1196 = !DILocation(line: 370, column: 44, scope: !936)
!1197 = !DILocation(line: 370, column: 65, scope: !936)
!1198 = !DILocation(line: 371, column: 13, scope: !936)
!1199 = !DILocation(line: 373, column: 13, scope: !936)
!1200 = !DILocation(line: 375, column: 2, scope: !936)
!1201 = !DILocation(line: 375, column: 9, scope: !936)
!1202 = !DILocation(line: 376, column: 2, scope: !936)
!1203 = !DILocation(line: 376, column: 6, scope: !936)
!1204 = !DILocation(line: 377, column: 2, scope: !936)
!1205 = !DILocation(line: 377, column: 6, scope: !936)
!1206 = !DILocation(line: 377, column: 13, scope: !936)
!1207 = !DILocation(line: 377, column: 21, scope: !936)
!1208 = !DILocation(line: 377, column: 26, scope: !936)
!1209 = !DILocation(line: 378, column: 2, scope: !936)
!1210 = !DILocation(line: 378, column: 19, scope: !936)
!1211 = !DILocation(line: 379, column: 2, scope: !936)
!1212 = !DILocation(line: 379, column: 21, scope: !936)
!1213 = !DILocation(line: 380, column: 2, scope: !936)
!1214 = !DILocation(line: 380, column: 30, scope: !936)
!1215 = !DILocation(line: 381, column: 2, scope: !936)
!1216 = !DILocation(line: 381, column: 9, scope: !936)
!1217 = !DILocation(line: 382, column: 2, scope: !936)
!1218 = !DILocation(line: 382, column: 6, scope: !936)
!1219 = !DILocation(line: 383, column: 2, scope: !936)
!1220 = !DILocation(line: 383, column: 15, scope: !936)
!1221 = !DILocation(line: 383, column: 20, scope: !936)
!1222 = !DILocation(line: 383, column: 27, scope: !936)
!1223 = !DILocation(line: 383, column: 32, scope: !936)
!1224 = !DILocation(line: 385, column: 2, scope: !936)
!1225 = !DILocation(line: 386, column: 2, scope: !936)
!1226 = !DILocation(line: 388, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !936, file: !3, line: 388, column: 6)
!1228 = !DILocation(line: 388, column: 11, scope: !1227)
!1229 = !DILocation(line: 388, column: 6, scope: !936)
!1230 = !DILocation(line: 389, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 388, column: 37)
!1232 = !DILocation(line: 389, column: 26, scope: !1231)
!1233 = !DILocation(line: 389, column: 8, scope: !1231)
!1234 = !DILocation(line: 389, column: 6, scope: !1231)
!1235 = !DILocation(line: 390, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 390, column: 7)
!1237 = !DILocation(line: 390, column: 7, scope: !1231)
!1238 = !DILocation(line: 391, column: 4, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 391, column: 4)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 390, column: 11)
!1241 = !DILocation(line: 391, column: 4, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 391, column: 4)
!1243 = !DILocation(line: 392, column: 11, scope: !1240)
!1244 = !DILocation(line: 392, column: 4, scope: !1240)
!1245 = !DILocation(line: 394, column: 12, scope: !1231)
!1246 = !DILocation(line: 394, column: 10, scope: !1231)
!1247 = !DILocation(line: 395, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 395, column: 7)
!1249 = !DILocation(line: 395, column: 14, scope: !1248)
!1250 = !DILocation(line: 395, column: 7, scope: !1231)
!1251 = !DILocation(line: 396, column: 4, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 396, column: 4)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 395, column: 35)
!1254 = !DILocation(line: 396, column: 4, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 396, column: 4)
!1256 = !DILocation(line: 397, column: 4, scope: !1253)
!1257 = !DILocation(line: 400, column: 19, scope: !1231)
!1258 = !DILocation(line: 400, column: 26, scope: !1231)
!1259 = !DILocation(line: 400, column: 42, scope: !1231)
!1260 = !DILocation(line: 400, column: 41, scope: !1231)
!1261 = !DILocation(line: 400, column: 8, scope: !1231)
!1262 = !DILocation(line: 400, column: 6, scope: !1231)
!1263 = !DILocation(line: 401, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 401, column: 7)
!1265 = !DILocation(line: 401, column: 7, scope: !1231)
!1266 = !DILocation(line: 402, column: 4, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 402, column: 4)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 401, column: 11)
!1269 = !DILocation(line: 402, column: 4, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 402, column: 4)
!1271 = !DILocation(line: 403, column: 11, scope: !1268)
!1272 = !DILocation(line: 403, column: 4, scope: !1268)
!1273 = !DILocation(line: 405, column: 9, scope: !1231)
!1274 = !DILocation(line: 407, column: 9, scope: !1231)
!1275 = !DILocation(line: 407, column: 7, scope: !1231)
!1276 = !DILocation(line: 408, column: 26, scope: !1231)
!1277 = !DILocation(line: 408, column: 21, scope: !1231)
!1278 = !DILocation(line: 408, column: 7, scope: !1231)
!1279 = !DILocation(line: 408, column: 19, scope: !1231)
!1280 = !DILocation(line: 409, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 409, column: 7)
!1282 = !DILocation(line: 409, column: 7, scope: !1281)
!1283 = !DILocation(line: 409, column: 26, scope: !1281)
!1284 = !DILocation(line: 409, column: 23, scope: !1281)
!1285 = !DILocation(line: 409, column: 7, scope: !1231)
!1286 = !DILocation(line: 410, column: 4, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 410, column: 4)
!1288 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 409, column: 31)
!1289 = !DILocation(line: 410, column: 4, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 410, column: 4)
!1291 = !DILocation(line: 411, column: 4, scope: !1288)
!1292 = !DILocation(line: 413, column: 9, scope: !1231)
!1293 = !DILocation(line: 413, column: 7, scope: !1231)
!1294 = !DILocation(line: 414, column: 26, scope: !1231)
!1295 = !DILocation(line: 414, column: 21, scope: !1231)
!1296 = !DILocation(line: 414, column: 7, scope: !1231)
!1297 = !DILocation(line: 414, column: 19, scope: !1231)
!1298 = !DILocation(line: 415, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 415, column: 7)
!1300 = !DILocation(line: 415, column: 7, scope: !1299)
!1301 = !DILocation(line: 415, column: 26, scope: !1299)
!1302 = !DILocation(line: 415, column: 23, scope: !1299)
!1303 = !DILocation(line: 415, column: 7, scope: !1231)
!1304 = !DILocation(line: 416, column: 4, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 416, column: 4)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 415, column: 31)
!1307 = !DILocation(line: 416, column: 4, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 416, column: 4)
!1309 = !DILocation(line: 417, column: 4, scope: !1306)
!1310 = !DILocation(line: 419, column: 9, scope: !1231)
!1311 = !DILocation(line: 419, column: 7, scope: !1231)
!1312 = !DILocation(line: 420, column: 27, scope: !1231)
!1313 = !DILocation(line: 420, column: 22, scope: !1231)
!1314 = !DILocation(line: 420, column: 7, scope: !1231)
!1315 = !DILocation(line: 420, column: 20, scope: !1231)
!1316 = !DILocation(line: 421, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 421, column: 7)
!1318 = !DILocation(line: 421, column: 7, scope: !1317)
!1319 = !DILocation(line: 421, column: 27, scope: !1317)
!1320 = !DILocation(line: 421, column: 24, scope: !1317)
!1321 = !DILocation(line: 421, column: 7, scope: !1231)
!1322 = !DILocation(line: 422, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 422, column: 4)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 421, column: 32)
!1325 = !DILocation(line: 422, column: 4, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 422, column: 4)
!1327 = !DILocation(line: 423, column: 4, scope: !1324)
!1328 = !DILocation(line: 426, column: 9, scope: !1231)
!1329 = !DILocation(line: 426, column: 7, scope: !1231)
!1330 = !DILocation(line: 427, column: 14, scope: !1231)
!1331 = !DILocation(line: 427, column: 18, scope: !1231)
!1332 = !DILocation(line: 427, column: 13, scope: !1231)
!1333 = !DILocation(line: 427, column: 11, scope: !1231)
!1334 = !DILocation(line: 429, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 429, column: 7)
!1336 = !DILocation(line: 429, column: 13, scope: !1335)
!1337 = !DILocation(line: 429, column: 7, scope: !1231)
!1338 = !DILocation(line: 430, column: 4, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 430, column: 4)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 429, column: 41)
!1341 = !DILocation(line: 430, column: 4, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 430, column: 4)
!1343 = !DILocation(line: 431, column: 4, scope: !1340)
!1344 = !DILocation(line: 433, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 433, column: 7)
!1346 = !DILocation(line: 433, column: 12, scope: !1345)
!1347 = !DILocation(line: 433, column: 24, scope: !1345)
!1348 = !DILocation(line: 434, column: 8, scope: !1345)
!1349 = !DILocation(line: 434, column: 12, scope: !1345)
!1350 = !DILocation(line: 433, column: 7, scope: !1231)
!1351 = !DILocation(line: 435, column: 4, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 435, column: 4)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 434, column: 27)
!1354 = !DILocation(line: 435, column: 4, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 435, column: 4)
!1356 = !DILocation(line: 436, column: 4, scope: !1353)
!1357 = !DILocation(line: 438, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 438, column: 7)
!1359 = !DILocation(line: 438, column: 11, scope: !1358)
!1360 = !DILocation(line: 438, column: 7, scope: !1231)
!1361 = !DILocation(line: 439, column: 4, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 439, column: 4)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 438, column: 27)
!1364 = !DILocation(line: 439, column: 4, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 439, column: 4)
!1366 = !DILocation(line: 440, column: 4, scope: !1363)
!1367 = !DILocation(line: 443, column: 10, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 443, column: 3)
!1369 = !DILocation(line: 443, column: 8, scope: !1368)
!1370 = !DILocation(line: 443, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 443, column: 3)
!1372 = !DILocation(line: 443, column: 17, scope: !1371)
!1373 = !DILocation(line: 443, column: 3, scope: !1368)
!1374 = !DILocation(line: 444, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 444, column: 8)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 443, column: 48)
!1377 = !DILocation(line: 444, column: 25, scope: !1375)
!1378 = !DILocation(line: 444, column: 14, scope: !1375)
!1379 = !DILocation(line: 444, column: 12, scope: !1375)
!1380 = !DILocation(line: 444, column: 8, scope: !1376)
!1381 = !DILocation(line: 445, column: 32, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 444, column: 29)
!1383 = !DILocation(line: 445, column: 21, scope: !1382)
!1384 = !DILocation(line: 445, column: 37, scope: !1382)
!1385 = !DILocation(line: 445, column: 35, scope: !1382)
!1386 = !DILocation(line: 445, column: 9, scope: !1382)
!1387 = !DILocation(line: 445, column: 19, scope: !1382)
!1388 = !DILocation(line: 446, column: 20, scope: !1382)
!1389 = !DILocation(line: 446, column: 11, scope: !1382)
!1390 = !DILocation(line: 446, column: 18, scope: !1382)
!1391 = !DILocation(line: 447, column: 10, scope: !1382)
!1392 = !DILocation(line: 447, column: 18, scope: !1382)
!1393 = !DILocation(line: 447, column: 35, scope: !1382)
!1394 = !DILocation(line: 447, column: 8, scope: !1382)
!1395 = !DILocation(line: 448, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 448, column: 9)
!1397 = !DILocation(line: 448, column: 9, scope: !1382)
!1398 = !DILocation(line: 449, column: 13, scope: !1396)
!1399 = !DILocation(line: 449, column: 6, scope: !1396)
!1400 = !DILocation(line: 450, column: 4, scope: !1382)
!1401 = !DILocation(line: 451, column: 3, scope: !1376)
!1402 = !DILocation(line: 443, column: 44, scope: !1371)
!1403 = !DILocation(line: 443, column: 3, scope: !1371)
!1404 = distinct !{!1404, !1373, !1405, !335, !336}
!1405 = !DILocation(line: 451, column: 3, scope: !1368)
!1406 = !DILocation(line: 453, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 453, column: 7)
!1408 = !DILocation(line: 453, column: 16, scope: !1407)
!1409 = !DILocation(line: 453, column: 13, scope: !1407)
!1410 = !DILocation(line: 453, column: 7, scope: !1231)
!1411 = !DILocation(line: 454, column: 4, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 454, column: 4)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 453, column: 24)
!1414 = !DILocation(line: 454, column: 4, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 454, column: 4)
!1416 = !DILocation(line: 456, column: 4, scope: !1413)
!1417 = !DILocation(line: 458, column: 3, scope: !1231)
!1418 = !DILocation(line: 461, column: 18, scope: !936)
!1419 = !DILocation(line: 461, column: 25, scope: !936)
!1420 = !DILocation(line: 461, column: 7, scope: !936)
!1421 = !DILocation(line: 461, column: 5, scope: !936)
!1422 = !DILocation(line: 462, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !936, file: !3, line: 462, column: 6)
!1424 = !DILocation(line: 462, column: 6, scope: !936)
!1425 = !DILocation(line: 463, column: 3, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 463, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 462, column: 10)
!1428 = !DILocation(line: 463, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 463, column: 3)
!1430 = !DILocation(line: 464, column: 10, scope: !1427)
!1431 = !DILocation(line: 464, column: 3, scope: !1427)
!1432 = !DILocation(line: 467, column: 8, scope: !936)
!1433 = !DILocation(line: 468, column: 20, scope: !936)
!1434 = !DILocation(line: 468, column: 6, scope: !936)
!1435 = !DILocation(line: 468, column: 18, scope: !936)
!1436 = !DILocation(line: 469, column: 20, scope: !936)
!1437 = !DILocation(line: 469, column: 6, scope: !936)
!1438 = !DILocation(line: 469, column: 18, scope: !936)
!1439 = !DILocation(line: 470, column: 21, scope: !936)
!1440 = !DILocation(line: 470, column: 6, scope: !936)
!1441 = !DILocation(line: 470, column: 19, scope: !936)
!1442 = !DILocation(line: 471, column: 18, scope: !936)
!1443 = !DILocation(line: 471, column: 6, scope: !936)
!1444 = !DILocation(line: 471, column: 16, scope: !936)
!1445 = !DILocation(line: 473, column: 29, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !936, file: !3, line: 473, column: 6)
!1447 = !DILocation(line: 473, column: 38, scope: !1446)
!1448 = !DILocation(line: 473, column: 34, scope: !1446)
!1449 = !DILocation(line: 473, column: 7, scope: !1446)
!1450 = !DILocation(line: 473, column: 51, scope: !1446)
!1451 = !DILocation(line: 474, column: 29, scope: !1446)
!1452 = !DILocation(line: 474, column: 38, scope: !1446)
!1453 = !DILocation(line: 474, column: 34, scope: !1446)
!1454 = !DILocation(line: 474, column: 7, scope: !1446)
!1455 = !DILocation(line: 474, column: 51, scope: !1446)
!1456 = !DILocation(line: 475, column: 30, scope: !1446)
!1457 = !DILocation(line: 475, column: 39, scope: !1446)
!1458 = !DILocation(line: 475, column: 35, scope: !1446)
!1459 = !DILocation(line: 475, column: 7, scope: !1446)
!1460 = !DILocation(line: 473, column: 6, scope: !936)
!1461 = !DILocation(line: 476, column: 3, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 476, column: 3)
!1463 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 475, column: 54)
!1464 = !DILocation(line: 476, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 476, column: 3)
!1466 = !DILocation(line: 477, column: 3, scope: !1463)
!1467 = !DILocation(line: 480, column: 6, scope: !936)
!1468 = !DILocation(line: 481, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !936, file: !3, line: 481, column: 2)
!1470 = !DILocation(line: 481, column: 7, scope: !1469)
!1471 = !DILocation(line: 481, column: 14, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 481, column: 2)
!1473 = !DILocation(line: 481, column: 16, scope: !1472)
!1474 = !DILocation(line: 481, column: 2, scope: !1469)
!1475 = !DILocation(line: 482, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 482, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 481, column: 47)
!1478 = !DILocation(line: 482, column: 7, scope: !1476)
!1479 = !DILocation(line: 482, column: 34, scope: !1476)
!1480 = !DILocation(line: 482, column: 23, scope: !1476)
!1481 = !DILocation(line: 482, column: 21, scope: !1476)
!1482 = !DILocation(line: 482, column: 7, scope: !1477)
!1483 = !DILocation(line: 483, column: 7, scope: !1476)
!1484 = !DILocation(line: 483, column: 4, scope: !1476)
!1485 = !DILocation(line: 484, column: 2, scope: !1477)
!1486 = !DILocation(line: 481, column: 43, scope: !1472)
!1487 = !DILocation(line: 481, column: 2, scope: !1472)
!1488 = distinct !{!1488, !1474, !1489, !335, !336}
!1489 = !DILocation(line: 484, column: 2, scope: !1469)
!1490 = !DILocation(line: 485, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !936, file: !3, line: 485, column: 6)
!1492 = !DILocation(line: 485, column: 11, scope: !1491)
!1493 = !DILocation(line: 485, column: 14, scope: !1491)
!1494 = !DILocation(line: 485, column: 18, scope: !1491)
!1495 = !DILocation(line: 485, column: 6, scope: !936)
!1496 = !DILocation(line: 486, column: 3, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 486, column: 3)
!1498 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 485, column: 23)
!1499 = !DILocation(line: 486, column: 3, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 486, column: 3)
!1501 = !DILocation(line: 487, column: 3, scope: !1498)
!1502 = !DILocation(line: 490, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !936, file: !3, line: 490, column: 6)
!1504 = !DILocation(line: 490, column: 12, scope: !1503)
!1505 = !DILocation(line: 490, column: 45, scope: !1503)
!1506 = !DILocation(line: 491, column: 9, scope: !1503)
!1507 = !DILocation(line: 491, column: 5, scope: !1503)
!1508 = !DILocation(line: 491, column: 19, scope: !1503)
!1509 = !DILocation(line: 490, column: 6, scope: !936)
!1510 = !DILocation(line: 492, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 492, column: 3)
!1512 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 491, column: 36)
!1513 = !DILocation(line: 492, column: 3, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 492, column: 3)
!1515 = !DILocation(line: 495, column: 3, scope: !1512)
!1516 = !DILocation(line: 496, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 496, column: 13)
!1518 = !DILocation(line: 496, column: 13, scope: !1517)
!1519 = !DILocation(line: 496, column: 27, scope: !1517)
!1520 = !DILocation(line: 496, column: 13, scope: !1503)
!1521 = !DILocation(line: 497, column: 3, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 496, column: 43)
!1523 = !DILocation(line: 498, column: 27, scope: !1522)
!1524 = !DILocation(line: 498, column: 38, scope: !1522)
!1525 = !DILocation(line: 498, column: 8, scope: !1522)
!1526 = !DILocation(line: 498, column: 6, scope: !1522)
!1527 = !DILocation(line: 499, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 499, column: 7)
!1529 = !DILocation(line: 499, column: 7, scope: !1522)
!1530 = !DILocation(line: 500, column: 4, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 500, column: 4)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 499, column: 11)
!1533 = !DILocation(line: 500, column: 4, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 500, column: 4)
!1535 = !DILocation(line: 501, column: 11, scope: !1532)
!1536 = !DILocation(line: 501, column: 4, scope: !1532)
!1537 = !DILocation(line: 503, column: 27, scope: !1522)
!1538 = !DILocation(line: 503, column: 35, scope: !1522)
!1539 = !DILocation(line: 503, column: 8, scope: !1522)
!1540 = !DILocation(line: 503, column: 6, scope: !1522)
!1541 = !DILocation(line: 504, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 504, column: 7)
!1543 = !DILocation(line: 504, column: 7, scope: !1522)
!1544 = !DILocation(line: 505, column: 4, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 505, column: 4)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 504, column: 11)
!1547 = !DILocation(line: 505, column: 4, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 505, column: 4)
!1549 = !DILocation(line: 506, column: 11, scope: !1546)
!1550 = !DILocation(line: 506, column: 4, scope: !1546)
!1551 = !DILocation(line: 508, column: 19, scope: !1522)
!1552 = !DILocation(line: 508, column: 26, scope: !1522)
!1553 = !DILocation(line: 508, column: 8, scope: !1522)
!1554 = !DILocation(line: 508, column: 6, scope: !1522)
!1555 = !DILocation(line: 509, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 509, column: 7)
!1557 = !DILocation(line: 509, column: 7, scope: !1522)
!1558 = !DILocation(line: 510, column: 4, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 510, column: 4)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 509, column: 11)
!1561 = !DILocation(line: 510, column: 4, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 510, column: 4)
!1563 = !DILocation(line: 511, column: 11, scope: !1560)
!1564 = !DILocation(line: 511, column: 4, scope: !1560)
!1565 = !DILocation(line: 513, column: 10, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 513, column: 3)
!1567 = !DILocation(line: 513, column: 8, scope: !1566)
!1568 = !DILocation(line: 513, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 513, column: 3)
!1570 = !DILocation(line: 513, column: 17, scope: !1569)
!1571 = !DILocation(line: 513, column: 3, scope: !1566)
!1572 = !DILocation(line: 514, column: 24, scope: !1569)
!1573 = !DILocation(line: 514, column: 11, scope: !1569)
!1574 = !DILocation(line: 514, column: 17, scope: !1569)
!1575 = !DILocation(line: 514, column: 19, scope: !1569)
!1576 = !DILocation(line: 514, column: 4, scope: !1569)
!1577 = !DILocation(line: 514, column: 22, scope: !1569)
!1578 = !DILocation(line: 513, column: 48, scope: !1569)
!1579 = !DILocation(line: 513, column: 3, scope: !1569)
!1580 = distinct !{!1580, !1571, !1581, !335, !336}
!1581 = !DILocation(line: 514, column: 24, scope: !1566)
!1582 = !DILocation(line: 515, column: 9, scope: !1522)
!1583 = !DILocation(line: 515, column: 18, scope: !1522)
!1584 = !DILocation(line: 516, column: 2, scope: !1522)
!1585 = !DILocation(line: 517, column: 19, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 516, column: 9)
!1587 = !DILocation(line: 517, column: 26, scope: !1586)
!1588 = !DILocation(line: 517, column: 8, scope: !1586)
!1589 = !DILocation(line: 517, column: 6, scope: !1586)
!1590 = !DILocation(line: 518, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 518, column: 7)
!1592 = !DILocation(line: 518, column: 7, scope: !1586)
!1593 = !DILocation(line: 519, column: 4, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 519, column: 4)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 518, column: 11)
!1596 = !DILocation(line: 519, column: 4, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 519, column: 4)
!1598 = !DILocation(line: 520, column: 11, scope: !1595)
!1599 = !DILocation(line: 520, column: 4, scope: !1595)
!1600 = !DILocation(line: 522, column: 18, scope: !1586)
!1601 = !DILocation(line: 522, column: 9, scope: !1586)
!1602 = !DILocation(line: 522, column: 16, scope: !1586)
!1603 = !DILocation(line: 524, column: 11, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !936, file: !3, line: 524, column: 6)
!1605 = !DILocation(line: 524, column: 7, scope: !1604)
!1606 = !DILocation(line: 524, column: 21, scope: !1604)
!1607 = !DILocation(line: 524, column: 35, scope: !1604)
!1608 = !DILocation(line: 525, column: 29, scope: !1604)
!1609 = !DILocation(line: 525, column: 40, scope: !1604)
!1610 = !DILocation(line: 525, column: 42, scope: !1604)
!1611 = !DILocation(line: 525, column: 7, scope: !1604)
!1612 = !DILocation(line: 524, column: 6, scope: !936)
!1613 = !DILocation(line: 526, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 526, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 525, column: 49)
!1616 = !DILocation(line: 526, column: 3, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 526, column: 3)
!1618 = !DILocation(line: 527, column: 3, scope: !1615)
!1619 = !DILocation(line: 529, column: 9, scope: !936)
!1620 = !DILocation(line: 529, column: 17, scope: !936)
!1621 = !DILocation(line: 529, column: 34, scope: !936)
!1622 = !DILocation(line: 529, column: 2, scope: !936)
!1623 = !DILocation(line: 530, column: 1, scope: !936)
!1624 = distinct !DISubprogram(name: "next_entry", scope: !941, file: !941, line: 358, type: !1625, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1632)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!12, !17, !1627, !1162}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_file", file: !941, line: 348, size: 128, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1628, file: !941, line: 349, baseType: !967, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1628, file: !941, line: 350, baseType: !1162, size: 64, offset: 64)
!1632 = !{!1633, !1634, !1635}
!1633 = !DILocalVariable(name: "buf", arg: 1, scope: !1624, file: !941, line: 358, type: !17)
!1634 = !DILocalVariable(name: "fp", arg: 2, scope: !1624, file: !941, line: 358, type: !1627)
!1635 = !DILocalVariable(name: "bytes", arg: 3, scope: !1624, file: !941, line: 358, type: !1162)
!1636 = !DILocation(line: 358, column: 36, scope: !1624)
!1637 = !DILocation(line: 358, column: 61, scope: !1624)
!1638 = !DILocation(line: 358, column: 72, scope: !1624)
!1639 = !DILocation(line: 360, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1624, file: !941, line: 360, column: 6)
!1641 = !DILocation(line: 360, column: 14, scope: !1640)
!1642 = !DILocation(line: 360, column: 18, scope: !1640)
!1643 = !DILocation(line: 360, column: 12, scope: !1640)
!1644 = !DILocation(line: 360, column: 6, scope: !1624)
!1645 = !DILocation(line: 361, column: 3, scope: !1640)
!1646 = !DILocation(line: 363, column: 9, scope: !1624)
!1647 = !DILocation(line: 363, column: 14, scope: !1624)
!1648 = !DILocation(line: 363, column: 18, scope: !1624)
!1649 = !DILocation(line: 363, column: 24, scope: !1624)
!1650 = !DILocation(line: 363, column: 2, scope: !1624)
!1651 = !DILocation(line: 364, column: 14, scope: !1624)
!1652 = !DILocation(line: 364, column: 2, scope: !1624)
!1653 = !DILocation(line: 364, column: 6, scope: !1624)
!1654 = !DILocation(line: 364, column: 11, scope: !1624)
!1655 = !DILocation(line: 365, column: 13, scope: !1624)
!1656 = !DILocation(line: 365, column: 2, scope: !1624)
!1657 = !DILocation(line: 365, column: 6, scope: !1624)
!1658 = !DILocation(line: 365, column: 10, scope: !1624)
!1659 = !DILocation(line: 366, column: 2, scope: !1624)
!1660 = !DILocation(line: 367, column: 1, scope: !1624)
!1661 = !DISubprogram(name: "_printk", scope: !1662, file: !1662, line: 153, type: !1663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1662 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!12, !1665, null}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!1667 = !DISubprogram(name: "policydb_type_isvalid", scope: !941, file: !941, line: 322, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!12, !939, !9}
!1670 = !DISubprogram(name: "policydb_class_isvalid", scope: !941, file: !941, line: 321, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1671 = distinct !DISubprogram(name: "avtab_read", scope: !3, file: !3, line: 538, type: !1672, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!12, !191, !17, !939}
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1683, !1684, !1685, !1686}
!1675 = !DILocalVariable(name: "a", arg: 1, scope: !1671, file: !3, line: 538, type: !191)
!1676 = !DILocalVariable(name: "fp", arg: 2, scope: !1671, file: !3, line: 538, type: !17)
!1677 = !DILocalVariable(name: "pol", arg: 3, scope: !1671, file: !3, line: 538, type: !939)
!1678 = !DILocalVariable(name: "rc", scope: !1671, file: !3, line: 540, type: !12)
!1679 = !DILocalVariable(name: "buf", scope: !1671, file: !3, line: 541, type: !1680)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 1)
!1683 = !DILocalVariable(name: "nel", scope: !1671, file: !3, line: 542, type: !5)
!1684 = !DILocalVariable(name: "i", scope: !1671, file: !3, line: 542, type: !5)
!1685 = !DILabel(scope: !1671, name: "out", file: !3, line: 574)
!1686 = !DILabel(scope: !1671, name: "bad", file: !3, line: 577)
!1687 = !DILocation(line: 538, column: 30, scope: !1671)
!1688 = !DILocation(line: 538, column: 39, scope: !1671)
!1689 = !DILocation(line: 538, column: 60, scope: !1671)
!1690 = !DILocation(line: 540, column: 2, scope: !1671)
!1691 = !DILocation(line: 540, column: 6, scope: !1671)
!1692 = !DILocation(line: 541, column: 2, scope: !1671)
!1693 = !DILocation(line: 541, column: 9, scope: !1671)
!1694 = !DILocation(line: 542, column: 2, scope: !1671)
!1695 = !DILocation(line: 542, column: 6, scope: !1671)
!1696 = !DILocation(line: 542, column: 11, scope: !1671)
!1697 = !DILocation(line: 545, column: 18, scope: !1671)
!1698 = !DILocation(line: 545, column: 23, scope: !1671)
!1699 = !DILocation(line: 545, column: 7, scope: !1671)
!1700 = !DILocation(line: 545, column: 5, scope: !1671)
!1701 = !DILocation(line: 546, column: 6, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 546, column: 6)
!1703 = !DILocation(line: 546, column: 9, scope: !1702)
!1704 = !DILocation(line: 546, column: 6, scope: !1671)
!1705 = !DILocation(line: 547, column: 3, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 547, column: 3)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 546, column: 14)
!1708 = !DILocation(line: 547, column: 3, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 547, column: 3)
!1710 = !DILocation(line: 548, column: 3, scope: !1707)
!1711 = !DILocation(line: 550, column: 8, scope: !1671)
!1712 = !DILocation(line: 550, column: 6, scope: !1671)
!1713 = !DILocation(line: 551, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 551, column: 6)
!1715 = !DILocation(line: 551, column: 6, scope: !1671)
!1716 = !DILocation(line: 552, column: 3, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 552, column: 3)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 551, column: 12)
!1719 = !DILocation(line: 552, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 552, column: 3)
!1721 = !DILocation(line: 553, column: 6, scope: !1718)
!1722 = !DILocation(line: 554, column: 3, scope: !1718)
!1723 = !DILocation(line: 557, column: 19, scope: !1671)
!1724 = !DILocation(line: 557, column: 22, scope: !1671)
!1725 = !DILocation(line: 557, column: 7, scope: !1671)
!1726 = !DILocation(line: 557, column: 5, scope: !1671)
!1727 = !DILocation(line: 558, column: 6, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 558, column: 6)
!1729 = !DILocation(line: 558, column: 6, scope: !1671)
!1730 = !DILocation(line: 559, column: 3, scope: !1728)
!1731 = !DILocation(line: 561, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 561, column: 2)
!1733 = !DILocation(line: 561, column: 7, scope: !1732)
!1734 = !DILocation(line: 561, column: 14, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 561, column: 2)
!1736 = !DILocation(line: 561, column: 18, scope: !1735)
!1737 = !DILocation(line: 561, column: 16, scope: !1735)
!1738 = !DILocation(line: 561, column: 2, scope: !1732)
!1739 = !DILocation(line: 562, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 561, column: 28)
!1741 = !DILocation(line: 562, column: 27, scope: !1740)
!1742 = !DILocation(line: 562, column: 31, scope: !1740)
!1743 = !DILocation(line: 562, column: 8, scope: !1740)
!1744 = !DILocation(line: 562, column: 6, scope: !1740)
!1745 = !DILocation(line: 563, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 563, column: 7)
!1747 = !DILocation(line: 563, column: 7, scope: !1740)
!1748 = !DILocation(line: 564, column: 8, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 564, column: 8)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 563, column: 11)
!1751 = !DILocation(line: 564, column: 11, scope: !1749)
!1752 = !DILocation(line: 564, column: 8, scope: !1750)
!1753 = !DILocation(line: 565, column: 5, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 565, column: 5)
!1755 = !DILocation(line: 565, column: 5, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 565, column: 5)
!1757 = !DILocation(line: 565, column: 5, scope: !1749)
!1758 = !DILocation(line: 566, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 566, column: 13)
!1760 = !DILocation(line: 566, column: 16, scope: !1759)
!1761 = !DILocation(line: 566, column: 13, scope: !1749)
!1762 = !DILocation(line: 567, column: 5, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 567, column: 5)
!1764 = !DILocation(line: 567, column: 5, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 567, column: 5)
!1766 = !DILocation(line: 567, column: 5, scope: !1759)
!1767 = !DILocation(line: 569, column: 4, scope: !1750)
!1768 = !DILocation(line: 571, column: 2, scope: !1740)
!1769 = !DILocation(line: 561, column: 24, scope: !1735)
!1770 = !DILocation(line: 561, column: 2, scope: !1735)
!1771 = distinct !{!1771, !1738, !1772, !335, !336}
!1772 = !DILocation(line: 571, column: 2, scope: !1732)
!1773 = !DILocation(line: 573, column: 5, scope: !1671)
!1774 = !DILocation(line: 573, column: 2, scope: !1671)
!1775 = !DILocation(line: 574, column: 1, scope: !1671)
!1776 = !DILocation(line: 575, column: 9, scope: !1671)
!1777 = !DILocation(line: 580, column: 1, scope: !1671)
!1778 = !DILocation(line: 575, column: 2, scope: !1671)
!1779 = !DILocation(line: 577, column: 1, scope: !1671)
!1780 = !DILocation(line: 578, column: 16, scope: !1671)
!1781 = !DILocation(line: 578, column: 2, scope: !1671)
!1782 = !DILocation(line: 579, column: 2, scope: !1671)
!1783 = distinct !DISubprogram(name: "avtab_insertf", scope: !3, file: !3, line: 532, type: !1172, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1784 = !{!1785, !1786, !1787, !1788}
!1785 = !DILocalVariable(name: "a", arg: 1, scope: !1783, file: !3, line: 532, type: !191)
!1786 = !DILocalVariable(name: "k", arg: 2, scope: !1783, file: !3, line: 532, type: !113)
!1787 = !DILocalVariable(name: "d", arg: 3, scope: !1783, file: !3, line: 533, type: !199)
!1788 = !DILocalVariable(name: "p", arg: 4, scope: !1783, file: !3, line: 533, type: !17)
!1789 = !DILocation(line: 532, column: 40, scope: !1783)
!1790 = !DILocation(line: 532, column: 67, scope: !1783)
!1791 = !DILocation(line: 533, column: 31, scope: !1783)
!1792 = !DILocation(line: 533, column: 40, scope: !1783)
!1793 = !DILocation(line: 535, column: 22, scope: !1783)
!1794 = !DILocation(line: 535, column: 25, scope: !1783)
!1795 = !DILocation(line: 535, column: 28, scope: !1783)
!1796 = !DILocation(line: 535, column: 9, scope: !1783)
!1797 = !DILocation(line: 535, column: 2, scope: !1783)
!1798 = distinct !DISubprogram(name: "avtab_write_item", scope: !3, file: !3, line: 582, type: !1799, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!12, !939, !1801, !17}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1804 = !DILocalVariable(name: "p", arg: 1, scope: !1798, file: !3, line: 582, type: !939)
!1805 = !DILocalVariable(name: "cur", arg: 2, scope: !1798, file: !3, line: 582, type: !1801)
!1806 = !DILocalVariable(name: "fp", arg: 3, scope: !1798, file: !3, line: 582, type: !17)
!1807 = !DILocalVariable(name: "buf16", scope: !1798, file: !3, line: 584, type: !1181)
!1808 = !DILocalVariable(name: "buf32", scope: !1798, file: !3, line: 585, type: !1191)
!1809 = !DILocalVariable(name: "rc", scope: !1798, file: !3, line: 586, type: !12)
!1810 = !DILocalVariable(name: "i", scope: !1798, file: !3, line: 587, type: !9)
!1811 = !DILocation(line: 582, column: 39, scope: !1798)
!1812 = !DILocation(line: 582, column: 67, scope: !1798)
!1813 = !DILocation(line: 582, column: 78, scope: !1798)
!1814 = !DILocation(line: 584, column: 2, scope: !1798)
!1815 = !DILocation(line: 584, column: 9, scope: !1798)
!1816 = !DILocation(line: 585, column: 2, scope: !1798)
!1817 = !DILocation(line: 585, column: 9, scope: !1798)
!1818 = !DILocation(line: 586, column: 2, scope: !1798)
!1819 = !DILocation(line: 586, column: 6, scope: !1798)
!1820 = !DILocation(line: 587, column: 2, scope: !1798)
!1821 = !DILocation(line: 587, column: 15, scope: !1798)
!1822 = !DILocation(line: 589, column: 13, scope: !1798)
!1823 = !DILocation(line: 589, column: 2, scope: !1798)
!1824 = !DILocation(line: 589, column: 11, scope: !1798)
!1825 = !DILocation(line: 590, column: 13, scope: !1798)
!1826 = !DILocation(line: 590, column: 2, scope: !1798)
!1827 = !DILocation(line: 590, column: 11, scope: !1798)
!1828 = !DILocation(line: 591, column: 13, scope: !1798)
!1829 = !DILocation(line: 591, column: 2, scope: !1798)
!1830 = !DILocation(line: 591, column: 11, scope: !1798)
!1831 = !DILocation(line: 592, column: 13, scope: !1798)
!1832 = !DILocation(line: 592, column: 2, scope: !1798)
!1833 = !DILocation(line: 592, column: 11, scope: !1798)
!1834 = !DILocation(line: 593, column: 17, scope: !1798)
!1835 = !DILocation(line: 593, column: 40, scope: !1798)
!1836 = !DILocation(line: 593, column: 7, scope: !1798)
!1837 = !DILocation(line: 593, column: 5, scope: !1798)
!1838 = !DILocation(line: 594, column: 6, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 594, column: 6)
!1840 = !DILocation(line: 594, column: 6, scope: !1798)
!1841 = !DILocation(line: 595, column: 10, scope: !1839)
!1842 = !DILocation(line: 595, column: 3, scope: !1839)
!1843 = !DILocation(line: 597, column: 6, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 597, column: 6)
!1845 = !DILocation(line: 597, column: 11, scope: !1844)
!1846 = !DILocation(line: 597, column: 15, scope: !1844)
!1847 = !DILocation(line: 597, column: 25, scope: !1844)
!1848 = !DILocation(line: 597, column: 6, scope: !1798)
!1849 = !DILocation(line: 598, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 597, column: 41)
!1851 = !DILocation(line: 598, column: 24, scope: !1850)
!1852 = !DILocation(line: 598, column: 30, scope: !1850)
!1853 = !DILocation(line: 598, column: 32, scope: !1850)
!1854 = !DILocation(line: 598, column: 40, scope: !1850)
!1855 = !DILocation(line: 598, column: 66, scope: !1850)
!1856 = !DILocation(line: 598, column: 8, scope: !1850)
!1857 = !DILocation(line: 598, column: 6, scope: !1850)
!1858 = !DILocation(line: 599, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 599, column: 7)
!1860 = !DILocation(line: 599, column: 7, scope: !1850)
!1861 = !DILocation(line: 600, column: 11, scope: !1859)
!1862 = !DILocation(line: 600, column: 4, scope: !1859)
!1863 = !DILocation(line: 601, column: 19, scope: !1850)
!1864 = !DILocation(line: 601, column: 24, scope: !1850)
!1865 = !DILocation(line: 601, column: 30, scope: !1850)
!1866 = !DILocation(line: 601, column: 32, scope: !1850)
!1867 = !DILocation(line: 601, column: 40, scope: !1850)
!1868 = !DILocation(line: 601, column: 63, scope: !1850)
!1869 = !DILocation(line: 601, column: 8, scope: !1850)
!1870 = !DILocation(line: 601, column: 6, scope: !1850)
!1871 = !DILocation(line: 602, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 602, column: 7)
!1873 = !DILocation(line: 602, column: 7, scope: !1850)
!1874 = !DILocation(line: 603, column: 11, scope: !1872)
!1875 = !DILocation(line: 603, column: 4, scope: !1872)
!1876 = !DILocation(line: 604, column: 10, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 604, column: 3)
!1878 = !DILocation(line: 604, column: 8, scope: !1877)
!1879 = !DILocation(line: 604, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 604, column: 3)
!1881 = !DILocation(line: 604, column: 17, scope: !1880)
!1882 = !DILocation(line: 604, column: 3, scope: !1877)
!1883 = !DILocation(line: 605, column: 15, scope: !1880)
!1884 = !DILocation(line: 605, column: 10, scope: !1880)
!1885 = !DILocation(line: 605, column: 4, scope: !1880)
!1886 = !DILocation(line: 605, column: 13, scope: !1880)
!1887 = !DILocation(line: 604, column: 62, scope: !1880)
!1888 = !DILocation(line: 604, column: 3, scope: !1880)
!1889 = distinct !{!1889, !1882, !1890, !335, !336}
!1890 = !DILocation(line: 605, column: 15, scope: !1877)
!1891 = !DILocation(line: 606, column: 18, scope: !1850)
!1892 = !DILocation(line: 607, column: 47, scope: !1850)
!1893 = !DILocation(line: 606, column: 8, scope: !1850)
!1894 = !DILocation(line: 606, column: 6, scope: !1850)
!1895 = !DILocation(line: 608, column: 2, scope: !1850)
!1896 = !DILocation(line: 609, column: 14, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 608, column: 9)
!1898 = !DILocation(line: 609, column: 3, scope: !1897)
!1899 = !DILocation(line: 609, column: 12, scope: !1897)
!1900 = !DILocation(line: 610, column: 18, scope: !1897)
!1901 = !DILocation(line: 610, column: 41, scope: !1897)
!1902 = !DILocation(line: 610, column: 8, scope: !1897)
!1903 = !DILocation(line: 610, column: 6, scope: !1897)
!1904 = !DILocation(line: 612, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 612, column: 6)
!1906 = !DILocation(line: 612, column: 6, scope: !1798)
!1907 = !DILocation(line: 613, column: 10, scope: !1905)
!1908 = !DILocation(line: 613, column: 3, scope: !1905)
!1909 = !DILocation(line: 614, column: 2, scope: !1798)
!1910 = !DILocation(line: 615, column: 1, scope: !1798)
!1911 = distinct !DISubprogram(name: "put_entry", scope: !941, file: !941, line: 369, type: !1912, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!12, !811, !1162, !1162, !1627}
!1914 = !{!1915, !1916, !1917, !1918, !1919}
!1915 = !DILocalVariable(name: "buf", arg: 1, scope: !1911, file: !941, line: 369, type: !811)
!1916 = !DILocalVariable(name: "bytes", arg: 2, scope: !1911, file: !941, line: 369, type: !1162)
!1917 = !DILocalVariable(name: "num", arg: 3, scope: !1911, file: !941, line: 369, type: !1162)
!1918 = !DILocalVariable(name: "fp", arg: 4, scope: !1911, file: !941, line: 369, type: !1627)
!1919 = !DILocalVariable(name: "len", scope: !1911, file: !941, line: 371, type: !1162)
!1920 = !DILocation(line: 369, column: 41, scope: !1911)
!1921 = !DILocation(line: 369, column: 53, scope: !1911)
!1922 = !DILocation(line: 369, column: 67, scope: !1911)
!1923 = !DILocation(line: 369, column: 92, scope: !1911)
!1924 = !DILocation(line: 371, column: 2, scope: !1911)
!1925 = !DILocation(line: 371, column: 9, scope: !1911)
!1926 = !DILocation(line: 373, column: 6, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1911, file: !941, line: 373, column: 6)
!1928 = !DILocation(line: 373, column: 6, scope: !1911)
!1929 = !DILocation(line: 374, column: 3, scope: !1927)
!1930 = !DILocation(line: 376, column: 6, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1911, file: !941, line: 376, column: 6)
!1932 = !DILocation(line: 376, column: 12, scope: !1931)
!1933 = !DILocation(line: 376, column: 16, scope: !1931)
!1934 = !DILocation(line: 376, column: 10, scope: !1931)
!1935 = !DILocation(line: 376, column: 6, scope: !1911)
!1936 = !DILocation(line: 377, column: 3, scope: !1931)
!1937 = !DILocation(line: 378, column: 9, scope: !1911)
!1938 = !DILocation(line: 378, column: 13, scope: !1911)
!1939 = !DILocation(line: 378, column: 19, scope: !1911)
!1940 = !DILocation(line: 378, column: 24, scope: !1911)
!1941 = !DILocation(line: 378, column: 2, scope: !1911)
!1942 = !DILocation(line: 379, column: 14, scope: !1911)
!1943 = !DILocation(line: 379, column: 2, scope: !1911)
!1944 = !DILocation(line: 379, column: 6, scope: !1911)
!1945 = !DILocation(line: 379, column: 11, scope: !1911)
!1946 = !DILocation(line: 380, column: 13, scope: !1911)
!1947 = !DILocation(line: 380, column: 2, scope: !1911)
!1948 = !DILocation(line: 380, column: 6, scope: !1911)
!1949 = !DILocation(line: 380, column: 10, scope: !1911)
!1950 = !DILocation(line: 382, column: 2, scope: !1911)
!1951 = !DILocation(line: 383, column: 1, scope: !1911)
!1952 = distinct !DISubprogram(name: "avtab_write", scope: !3, file: !3, line: 617, type: !1953, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!12, !939, !191, !17}
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1956 = !DILocalVariable(name: "p", arg: 1, scope: !1952, file: !3, line: 617, type: !939)
!1957 = !DILocalVariable(name: "a", arg: 2, scope: !1952, file: !3, line: 617, type: !191)
!1958 = !DILocalVariable(name: "fp", arg: 3, scope: !1952, file: !3, line: 617, type: !17)
!1959 = !DILocalVariable(name: "i", scope: !1952, file: !3, line: 619, type: !5)
!1960 = !DILocalVariable(name: "rc", scope: !1952, file: !3, line: 620, type: !12)
!1961 = !DILocalVariable(name: "cur", scope: !1952, file: !3, line: 621, type: !162)
!1962 = !DILocalVariable(name: "buf", scope: !1952, file: !3, line: 622, type: !1680)
!1963 = !DILocation(line: 617, column: 34, scope: !1952)
!1964 = !DILocation(line: 617, column: 51, scope: !1952)
!1965 = !DILocation(line: 617, column: 60, scope: !1952)
!1966 = !DILocation(line: 619, column: 2, scope: !1952)
!1967 = !DILocation(line: 619, column: 6, scope: !1952)
!1968 = !DILocation(line: 620, column: 2, scope: !1952)
!1969 = !DILocation(line: 620, column: 6, scope: !1952)
!1970 = !DILocation(line: 621, column: 2, scope: !1952)
!1971 = !DILocation(line: 621, column: 21, scope: !1952)
!1972 = !DILocation(line: 622, column: 2, scope: !1952)
!1973 = !DILocation(line: 622, column: 9, scope: !1952)
!1974 = !DILocation(line: 624, column: 11, scope: !1952)
!1975 = !DILocation(line: 624, column: 2, scope: !1952)
!1976 = !DILocation(line: 624, column: 9, scope: !1952)
!1977 = !DILocation(line: 625, column: 17, scope: !1952)
!1978 = !DILocation(line: 625, column: 38, scope: !1952)
!1979 = !DILocation(line: 625, column: 7, scope: !1952)
!1980 = !DILocation(line: 625, column: 5, scope: !1952)
!1981 = !DILocation(line: 626, column: 6, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 626, column: 6)
!1983 = !DILocation(line: 626, column: 6, scope: !1952)
!1984 = !DILocation(line: 627, column: 10, scope: !1982)
!1985 = !DILocation(line: 627, column: 3, scope: !1982)
!1986 = !DILocation(line: 629, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 629, column: 2)
!1988 = !DILocation(line: 629, column: 7, scope: !1987)
!1989 = !DILocation(line: 629, column: 14, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 629, column: 2)
!1991 = !DILocation(line: 629, column: 18, scope: !1990)
!1992 = !DILocation(line: 629, column: 21, scope: !1990)
!1993 = !DILocation(line: 629, column: 16, scope: !1990)
!1994 = !DILocation(line: 629, column: 2, scope: !1987)
!1995 = !DILocation(line: 630, column: 14, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 630, column: 3)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 629, column: 33)
!1998 = !DILocation(line: 630, column: 17, scope: !1996)
!1999 = !DILocation(line: 630, column: 24, scope: !1996)
!2000 = !DILocation(line: 630, column: 12, scope: !1996)
!2001 = !DILocation(line: 630, column: 8, scope: !1996)
!2002 = !DILocation(line: 630, column: 28, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 630, column: 3)
!2004 = !DILocation(line: 630, column: 3, scope: !1996)
!2005 = !DILocation(line: 632, column: 26, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 631, column: 25)
!2007 = !DILocation(line: 632, column: 29, scope: !2006)
!2008 = !DILocation(line: 632, column: 34, scope: !2006)
!2009 = !DILocation(line: 632, column: 9, scope: !2006)
!2010 = !DILocation(line: 632, column: 7, scope: !2006)
!2011 = !DILocation(line: 633, column: 8, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 633, column: 8)
!2013 = !DILocation(line: 633, column: 8, scope: !2006)
!2014 = !DILocation(line: 634, column: 12, scope: !2012)
!2015 = !DILocation(line: 634, column: 5, scope: !2012)
!2016 = !DILocation(line: 635, column: 3, scope: !2006)
!2017 = !DILocation(line: 631, column: 14, scope: !2003)
!2018 = !DILocation(line: 631, column: 19, scope: !2003)
!2019 = !DILocation(line: 631, column: 12, scope: !2003)
!2020 = !DILocation(line: 630, column: 3, scope: !2003)
!2021 = distinct !{!2021, !2004, !2022, !335, !336}
!2022 = !DILocation(line: 635, column: 3, scope: !1996)
!2023 = !DILocation(line: 636, column: 2, scope: !1997)
!2024 = !DILocation(line: 629, column: 29, scope: !1990)
!2025 = !DILocation(line: 629, column: 2, scope: !1990)
!2026 = distinct !{!2026, !1994, !2027, !335, !336}
!2027 = !DILocation(line: 636, column: 2, scope: !1987)
!2028 = !DILocation(line: 638, column: 9, scope: !1952)
!2029 = !DILocation(line: 638, column: 2, scope: !1952)
!2030 = !DILocation(line: 639, column: 1, scope: !1952)
!2031 = distinct !DISubprogram(name: "avtab_cache_init", scope: !3, file: !3, line: 641, type: !2032, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null}
!2034 = !DILocation(line: 643, column: 22, scope: !2031)
!2035 = !DILocation(line: 643, column: 20, scope: !2031)
!2036 = !DILocation(line: 646, column: 24, scope: !2031)
!2037 = !DILocation(line: 646, column: 22, scope: !2031)
!2038 = !DILocation(line: 649, column: 1, scope: !2031)
!2039 = !DISubprogram(name: "kmem_cache_create", scope: !805, file: !805, line: 189, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!105, !1665, !9, !9, !18, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !17}
!2045 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !805, file: !805, line: 709, type: !2046, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!17, !105, !20}
!2048 = !{!2049, !2050}
!2049 = !DILocalVariable(name: "k", arg: 1, scope: !2045, file: !805, line: 709, type: !105)
!2050 = !DILocalVariable(name: "flags", arg: 2, scope: !2045, file: !805, line: 709, type: !20)
!2051 = !DILocation(line: 709, column: 58, scope: !2045)
!2052 = !DILocation(line: 709, column: 67, scope: !2045)
!2053 = !DILocation(line: 711, column: 26, scope: !2045)
!2054 = !DILocation(line: 711, column: 29, scope: !2045)
!2055 = !DILocation(line: 711, column: 35, scope: !2045)
!2056 = !DILocation(line: 711, column: 9, scope: !2045)
!2057 = !DILocation(line: 711, column: 2, scope: !2045)
!2058 = !DISubprogram(name: "kmem_cache_alloc", scope: !805, file: !805, line: 500, type: !2046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = distinct !DISubprogram(name: "kvcalloc", scope: !805, file: !805, line: 759, type: !2060, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!17, !1162, !1162, !20}
!2062 = !{!2063, !2064, !2065}
!2063 = !DILocalVariable(name: "n", arg: 1, scope: !2059, file: !805, line: 759, type: !1162)
!2064 = !DILocalVariable(name: "size", arg: 2, scope: !2059, file: !805, line: 759, type: !1162)
!2065 = !DILocalVariable(name: "flags", arg: 3, scope: !2059, file: !805, line: 759, type: !20)
!2066 = !DILocation(line: 759, column: 56, scope: !2059)
!2067 = !DILocation(line: 759, column: 66, scope: !2059)
!2068 = !DILocation(line: 759, column: 78, scope: !2059)
!2069 = !DILocation(line: 761, column: 24, scope: !2059)
!2070 = !DILocation(line: 761, column: 27, scope: !2059)
!2071 = !DILocation(line: 761, column: 33, scope: !2059)
!2072 = !DILocation(line: 761, column: 39, scope: !2059)
!2073 = !DILocation(line: 761, column: 9, scope: !2059)
!2074 = !DILocation(line: 761, column: 2, scope: !2059)
!2075 = distinct !DISubprogram(name: "kvmalloc_array", scope: !805, file: !805, line: 749, type: !2060, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DILocalVariable(name: "n", arg: 1, scope: !2075, file: !805, line: 749, type: !1162)
!2078 = !DILocalVariable(name: "size", arg: 2, scope: !2075, file: !805, line: 749, type: !1162)
!2079 = !DILocalVariable(name: "flags", arg: 3, scope: !2075, file: !805, line: 749, type: !20)
!2080 = !DILocalVariable(name: "bytes", scope: !2075, file: !805, line: 751, type: !1162)
!2081 = !DILocation(line: 749, column: 62, scope: !2075)
!2082 = !DILocation(line: 749, column: 72, scope: !2075)
!2083 = !DILocation(line: 749, column: 84, scope: !2075)
!2084 = !DILocation(line: 751, column: 2, scope: !2075)
!2085 = !DILocation(line: 751, column: 9, scope: !2075)
!2086 = !DILocation(line: 753, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2075, file: !805, line: 753, column: 6)
!2088 = !DILocation(line: 753, column: 6, scope: !2075)
!2089 = !DILocation(line: 754, column: 3, scope: !2087)
!2090 = !DILocation(line: 756, column: 18, scope: !2075)
!2091 = !DILocation(line: 756, column: 25, scope: !2075)
!2092 = !DILocation(line: 756, column: 9, scope: !2075)
!2093 = !DILocation(line: 756, column: 2, scope: !2075)
!2094 = !DILocation(line: 757, column: 1, scope: !2075)
!2095 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2096, file: !2096, line: 51, type: !2097, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2101)
!2096 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2099, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !2100)
!2100 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "overflow", arg: 1, scope: !2095, file: !2096, line: 51, type: !2099)
!2103 = !DILocation(line: 51, column: 60, scope: !2095)
!2104 = !DILocation(line: 53, column: 9, scope: !2095)
!2105 = !{i8 0, i8 2}
!2106 = !{}
!2107 = !DILocation(line: 53, column: 2, scope: !2095)
!2108 = distinct !DISubprogram(name: "kvmalloc", scope: !805, file: !805, line: 736, type: !2109, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!17, !1162, !20}
!2111 = !{!2112, !2113}
!2112 = !DILocalVariable(name: "size", arg: 1, scope: !2108, file: !805, line: 736, type: !1162)
!2113 = !DILocalVariable(name: "flags", arg: 2, scope: !2108, file: !805, line: 736, type: !20)
!2114 = !DILocation(line: 736, column: 53, scope: !2108)
!2115 = !DILocation(line: 736, column: 65, scope: !2108)
!2116 = !DILocation(line: 738, column: 23, scope: !2108)
!2117 = !DILocation(line: 738, column: 29, scope: !2108)
!2118 = !DILocation(line: 738, column: 9, scope: !2108)
!2119 = !DILocation(line: 738, column: 2, scope: !2108)
!2120 = !DISubprogram(name: "kvmalloc_node", scope: !805, file: !805, line: 735, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!17, !1162, !20, !12}
!2123 = distinct !DISubprogram(name: "avtab_insert", scope: !3, file: !3, line: 106, type: !2124, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!12, !191, !113, !199}
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2127 = !DILocalVariable(name: "h", arg: 1, scope: !2123, file: !3, line: 106, type: !191)
!2128 = !DILocalVariable(name: "key", arg: 2, scope: !2123, file: !3, line: 106, type: !113)
!2129 = !DILocalVariable(name: "datum", arg: 3, scope: !2123, file: !3, line: 107, type: !199)
!2130 = !DILocalVariable(name: "hvalue", scope: !2123, file: !3, line: 109, type: !5)
!2131 = !DILocalVariable(name: "prev", scope: !2123, file: !3, line: 110, type: !162)
!2132 = !DILocalVariable(name: "cur", scope: !2123, file: !3, line: 110, type: !162)
!2133 = !DILocalVariable(name: "newnode", scope: !2123, file: !3, line: 110, type: !162)
!2134 = !DILocalVariable(name: "specified", scope: !2123, file: !3, line: 111, type: !13)
!2135 = !DILocation(line: 106, column: 39, scope: !2123)
!2136 = !DILocation(line: 106, column: 66, scope: !2123)
!2137 = !DILocation(line: 107, column: 30, scope: !2123)
!2138 = !DILocation(line: 109, column: 2, scope: !2123)
!2139 = !DILocation(line: 109, column: 6, scope: !2123)
!2140 = !DILocation(line: 110, column: 2, scope: !2123)
!2141 = !DILocation(line: 110, column: 21, scope: !2123)
!2142 = !DILocation(line: 110, column: 28, scope: !2123)
!2143 = !DILocation(line: 110, column: 34, scope: !2123)
!2144 = !DILocation(line: 111, column: 2, scope: !2123)
!2145 = !DILocation(line: 111, column: 6, scope: !2123)
!2146 = !DILocation(line: 111, column: 18, scope: !2123)
!2147 = !DILocation(line: 111, column: 23, scope: !2123)
!2148 = !DILocation(line: 111, column: 33, scope: !2123)
!2149 = !DILocation(line: 113, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 113, column: 6)
!2151 = !DILocation(line: 113, column: 9, scope: !2150)
!2152 = !DILocation(line: 113, column: 13, scope: !2150)
!2153 = !DILocation(line: 113, column: 16, scope: !2150)
!2154 = !DILocation(line: 113, column: 22, scope: !2150)
!2155 = !DILocation(line: 113, column: 25, scope: !2150)
!2156 = !DILocation(line: 113, column: 28, scope: !2150)
!2157 = !DILocation(line: 113, column: 32, scope: !2150)
!2158 = !DILocation(line: 113, column: 6, scope: !2123)
!2159 = !DILocation(line: 114, column: 3, scope: !2150)
!2160 = !DILocation(line: 116, column: 22, scope: !2123)
!2161 = !DILocation(line: 116, column: 27, scope: !2123)
!2162 = !DILocation(line: 116, column: 30, scope: !2123)
!2163 = !DILocation(line: 116, column: 11, scope: !2123)
!2164 = !DILocation(line: 116, column: 9, scope: !2123)
!2165 = !DILocation(line: 117, column: 12, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 117, column: 2)
!2167 = !DILocation(line: 117, column: 26, scope: !2166)
!2168 = !DILocation(line: 117, column: 29, scope: !2166)
!2169 = !DILocation(line: 117, column: 36, scope: !2166)
!2170 = !DILocation(line: 117, column: 24, scope: !2166)
!2171 = !DILocation(line: 117, column: 7, scope: !2166)
!2172 = !DILocation(line: 118, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 117, column: 2)
!2174 = !DILocation(line: 117, column: 2, scope: !2166)
!2175 = !DILocation(line: 120, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 120, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 119, column: 36)
!2178 = !DILocation(line: 120, column: 12, scope: !2176)
!2179 = !DILocation(line: 120, column: 27, scope: !2176)
!2180 = !DILocation(line: 120, column: 32, scope: !2176)
!2181 = !DILocation(line: 120, column: 36, scope: !2176)
!2182 = !DILocation(line: 120, column: 24, scope: !2176)
!2183 = !DILocation(line: 120, column: 48, scope: !2176)
!2184 = !DILocation(line: 121, column: 7, scope: !2176)
!2185 = !DILocation(line: 121, column: 12, scope: !2176)
!2186 = !DILocation(line: 121, column: 27, scope: !2176)
!2187 = !DILocation(line: 121, column: 32, scope: !2176)
!2188 = !DILocation(line: 121, column: 36, scope: !2176)
!2189 = !DILocation(line: 121, column: 24, scope: !2176)
!2190 = !DILocation(line: 121, column: 48, scope: !2176)
!2191 = !DILocation(line: 122, column: 7, scope: !2176)
!2192 = !DILocation(line: 122, column: 12, scope: !2176)
!2193 = !DILocation(line: 122, column: 28, scope: !2176)
!2194 = !DILocation(line: 122, column: 33, scope: !2176)
!2195 = !DILocation(line: 122, column: 37, scope: !2176)
!2196 = !DILocation(line: 122, column: 25, scope: !2176)
!2197 = !DILocation(line: 122, column: 50, scope: !2176)
!2198 = !DILocation(line: 123, column: 8, scope: !2176)
!2199 = !DILocation(line: 123, column: 20, scope: !2176)
!2200 = !DILocation(line: 123, column: 25, scope: !2176)
!2201 = !DILocation(line: 123, column: 29, scope: !2176)
!2202 = !DILocation(line: 123, column: 18, scope: !2176)
!2203 = !DILocation(line: 120, column: 7, scope: !2177)
!2204 = !DILocation(line: 125, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 125, column: 8)
!2206 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 123, column: 41)
!2207 = !DILocation(line: 125, column: 18, scope: !2205)
!2208 = !DILocation(line: 125, column: 8, scope: !2206)
!2209 = !DILocation(line: 126, column: 5, scope: !2205)
!2210 = !DILocation(line: 127, column: 4, scope: !2206)
!2211 = !DILocation(line: 129, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 129, column: 7)
!2213 = !DILocation(line: 129, column: 12, scope: !2212)
!2214 = !DILocation(line: 129, column: 26, scope: !2212)
!2215 = !DILocation(line: 129, column: 31, scope: !2212)
!2216 = !DILocation(line: 129, column: 35, scope: !2212)
!2217 = !DILocation(line: 129, column: 24, scope: !2212)
!2218 = !DILocation(line: 129, column: 7, scope: !2177)
!2219 = !DILocation(line: 130, column: 4, scope: !2212)
!2220 = !DILocation(line: 131, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 131, column: 7)
!2222 = !DILocation(line: 131, column: 12, scope: !2221)
!2223 = !DILocation(line: 131, column: 27, scope: !2221)
!2224 = !DILocation(line: 131, column: 32, scope: !2221)
!2225 = !DILocation(line: 131, column: 36, scope: !2221)
!2226 = !DILocation(line: 131, column: 24, scope: !2221)
!2227 = !DILocation(line: 131, column: 48, scope: !2221)
!2228 = !DILocation(line: 132, column: 7, scope: !2221)
!2229 = !DILocation(line: 132, column: 12, scope: !2221)
!2230 = !DILocation(line: 132, column: 26, scope: !2221)
!2231 = !DILocation(line: 132, column: 31, scope: !2221)
!2232 = !DILocation(line: 132, column: 35, scope: !2221)
!2233 = !DILocation(line: 132, column: 24, scope: !2221)
!2234 = !DILocation(line: 131, column: 7, scope: !2177)
!2235 = !DILocation(line: 133, column: 4, scope: !2221)
!2236 = !DILocation(line: 134, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 134, column: 7)
!2238 = !DILocation(line: 134, column: 12, scope: !2237)
!2239 = !DILocation(line: 134, column: 27, scope: !2237)
!2240 = !DILocation(line: 134, column: 32, scope: !2237)
!2241 = !DILocation(line: 134, column: 36, scope: !2237)
!2242 = !DILocation(line: 134, column: 24, scope: !2237)
!2243 = !DILocation(line: 134, column: 48, scope: !2237)
!2244 = !DILocation(line: 135, column: 7, scope: !2237)
!2245 = !DILocation(line: 135, column: 12, scope: !2237)
!2246 = !DILocation(line: 135, column: 27, scope: !2237)
!2247 = !DILocation(line: 135, column: 32, scope: !2237)
!2248 = !DILocation(line: 135, column: 36, scope: !2237)
!2249 = !DILocation(line: 135, column: 24, scope: !2237)
!2250 = !DILocation(line: 135, column: 48, scope: !2237)
!2251 = !DILocation(line: 136, column: 7, scope: !2237)
!2252 = !DILocation(line: 136, column: 12, scope: !2237)
!2253 = !DILocation(line: 136, column: 27, scope: !2237)
!2254 = !DILocation(line: 136, column: 32, scope: !2237)
!2255 = !DILocation(line: 136, column: 36, scope: !2237)
!2256 = !DILocation(line: 136, column: 25, scope: !2237)
!2257 = !DILocation(line: 134, column: 7, scope: !2177)
!2258 = !DILocation(line: 137, column: 4, scope: !2237)
!2259 = !DILocation(line: 138, column: 2, scope: !2177)
!2260 = !DILocation(line: 119, column: 14, scope: !2173)
!2261 = !DILocation(line: 119, column: 12, scope: !2173)
!2262 = !DILocation(line: 119, column: 25, scope: !2173)
!2263 = !DILocation(line: 119, column: 30, scope: !2173)
!2264 = !DILocation(line: 119, column: 23, scope: !2173)
!2265 = !DILocation(line: 117, column: 2, scope: !2173)
!2266 = distinct !{!2266, !2174, !2267, !335, !336}
!2267 = !DILocation(line: 138, column: 2, scope: !2166)
!2268 = !DILocation(line: 140, column: 30, scope: !2123)
!2269 = !DILocation(line: 140, column: 33, scope: !2123)
!2270 = !DILocation(line: 140, column: 41, scope: !2123)
!2271 = !DILocation(line: 140, column: 47, scope: !2123)
!2272 = !DILocation(line: 140, column: 52, scope: !2123)
!2273 = !DILocation(line: 140, column: 12, scope: !2123)
!2274 = !DILocation(line: 140, column: 10, scope: !2123)
!2275 = !DILocation(line: 141, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 141, column: 6)
!2277 = !DILocation(line: 141, column: 6, scope: !2123)
!2278 = !DILocation(line: 142, column: 3, scope: !2276)
!2279 = !DILocation(line: 144, column: 2, scope: !2123)
!2280 = !DILocation(line: 145, column: 1, scope: !2123)
