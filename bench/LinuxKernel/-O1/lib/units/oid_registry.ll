; ModuleID = 'lib/oid_registry.c'
source_filename = "lib/oid_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_look_up_OID: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad look_up_OID ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_parse_OID: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad parse_OID ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sprint_oid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sprint_oid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sprint_OID: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sprint_OID ; .previous"

%struct.anon = type { i8, i8, [2 x i8] }

@__UNIQUE_ID_description195 = internal constant [38 x i8] c"oid_registry.description=OID Registry\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author196 = internal constant [34 x i8] c"oid_registry.author=Red Hat, Inc.\00", section ".modinfo", align 1, !dbg !145
@__UNIQUE_ID_file197 = internal constant [35 x i8] c"oid_registry.file=lib/oid_registry\00", section ".modinfo", align 1, !dbg !152
@__UNIQUE_ID_license198 = internal constant [25 x i8] c"oid_registry.license=GPL\00", section ".modinfo", align 1, !dbg !157
@oid_search_table = internal constant [99 x %struct.anon] [%struct.anon { i8 10, i8 59, [2 x i8] undef }, %struct.anon { i8 11, i8 41, [2 x i8] undef }, %struct.anon { i8 11, i8 42, [2 x i8] undef }, %struct.anon { i8 13, i8 47, [2 x i8] undef }, %struct.anon { i8 19, i8 91, [2 x i8] undef }, %struct.anon { i8 19, i8 88, [2 x i8] undef }, %struct.anon { i8 23, i8 68, [2 x i8] undef }, %struct.anon { i8 23, i8 63, [2 x i8] undef }, %struct.anon { i8 29, i8 11, [2 x i8] undef }, %struct.anon { i8 30, i8 27, [2 x i8] undef }, %struct.anon { i8 32, i8 0, [2 x i8] undef }, %struct.anon { i8 35, i8 22, [2 x i8] undef }, %struct.anon { i8 35, i8 15, [2 x i8] undef }, %struct.anon { i8 36, i8 72, [2 x i8] undef }, %struct.anon { i8 37, i8 60, [2 x i8] undef }, %struct.anon { i8 43, i8 1, [2 x i8] undef }, %struct.anon { i8 44, i8 43, [2 x i8] undef }, %struct.anon { i8 44, i8 32, [2 x i8] undef }, %struct.anon { i8 49, i8 6, [2 x i8] undef }, %struct.anon { i8 51, i8 37, [2 x i8] undef }, %struct.anon { i8 52, i8 94, [2 x i8] undef }, %struct.anon { i8 54, i8 69, [2 x i8] undef }, %struct.anon { i8 54, i8 64, [2 x i8] undef }, %struct.anon { i8 60, i8 76, [2 x i8] undef }, %struct.anon { i8 60, i8 12, [2 x i8] undef }, %struct.anon { i8 64, i8 96, [2 x i8] undef }, %struct.anon { i8 64, i8 31, [2 x i8] undef }, %struct.anon { i8 64, i8 20, [2 x i8] undef }, %struct.anon { i8 76, i8 3, [2 x i8] undef }, %struct.anon { i8 77, i8 54, [2 x i8] undef }, %struct.anon { i8 77, i8 5, [2 x i8] undef }, %struct.anon { i8 83, i8 48, [2 x i8] undef }, %struct.anon { i8 84, i8 92, [2 x i8] undef }, %struct.anon { i8 85, i8 25, [2 x i8] undef }, %struct.anon { i8 87, i8 46, [2 x i8] undef }, %struct.anon { i8 93, i8 77, [2 x i8] undef }, %struct.anon { i8 97, i8 21, [2 x i8] undef }, %struct.anon { i8 106, i8 73, [2 x i8] undef }, %struct.anon { i8 106, i8 36, [2 x i8] undef }, %struct.anon { i8 110, i8 55, [2 x i8] undef }, %struct.anon { i8 120, i8 40, [2 x i8] undef }, %struct.anon { i8 124, i8 79, [2 x i8] undef }, %struct.anon { i8 126, i8 78, [2 x i8] undef }, %struct.anon { i8 126, i8 10, [2 x i8] undef }, %struct.anon { i8 -126, i8 98, [2 x i8] undef }, %struct.anon { i8 -124, i8 26, [2 x i8] undef }, %struct.anon { i8 -122, i8 44, [2 x i8] undef }, %struct.anon { i8 -114, i8 2, [2 x i8] undef }, %struct.anon { i8 -114, i8 18, [2 x i8] undef }, %struct.anon { i8 -113, i8 56, [2 x i8] undef }, %struct.anon { i8 -111, i8 95, [2 x i8] undef }, %struct.anon { i8 -110, i8 65, [2 x i8] undef }, %struct.anon { i8 -106, i8 9, [2 x i8] undef }, %struct.anon { i8 -106, i8 4, [2 x i8] undef }, %struct.anon { i8 -99, i8 80, [2 x i8] undef }, %struct.anon { i8 -99, i8 50, [2 x i8] undef }, %struct.anon { i8 -96, i8 19, [2 x i8] undef }, %struct.anon { i8 -95, i8 70, [2 x i8] undef }, %struct.anon { i8 -95, i8 97, [2 x i8] undef }, %struct.anon { i8 -83, i8 38, [2 x i8] undef }, %struct.anon { i8 -78, i8 49, [2 x i8] undef }, %struct.anon { i8 -77, i8 66, [2 x i8] undef }, %struct.anon { i8 -77, i8 74, [2 x i8] undef }, %struct.anon { i8 -66, i8 81, [2 x i8] undef }, %struct.anon { i8 -65, i8 85, [2 x i8] undef }, %struct.anon { i8 -61, i8 30, [2 x i8] undef }, %struct.anon { i8 -61, i8 13, [2 x i8] undef }, %struct.anon { i8 -58, i8 71, [2 x i8] undef }, %struct.anon { i8 -56, i8 35, [2 x i8] undef }, %struct.anon { i8 -55, i8 57, [2 x i8] undef }, %struct.anon { i8 -52, i8 23, [2 x i8] undef }, %struct.anon { i8 -52, i8 16, [2 x i8] undef }, %struct.anon { i8 -48, i8 7, [2 x i8] undef }, %struct.anon { i8 -48, i8 89, [2 x i8] undef }, %struct.anon { i8 -48, i8 86, [2 x i8] undef }, %struct.anon { i8 -44, i8 61, [2 x i8] undef }, %struct.anon { i8 -43, i8 52, [2 x i8] undef }, %struct.anon { i8 -43, i8 93, [2 x i8] undef }, %struct.anon { i8 -36, i8 28, [2 x i8] undef }, %struct.anon { i8 -33, i8 83, [2 x i8] undef }, %struct.anon { i8 -33, i8 82, [2 x i8] undef }, %struct.anon { i8 -30, i8 14, [2 x i8] undef }, %struct.anon { i8 -29, i8 29, [2 x i8] undef }, %struct.anon { i8 -28, i8 45, [2 x i8] undef }, %struct.anon { i8 -25, i8 39, [2 x i8] undef }, %struct.anon { i8 -25, i8 34, [2 x i8] undef }, %struct.anon { i8 -22, i8 58, [2 x i8] undef }, %struct.anon { i8 -20, i8 75, [2 x i8] undef }, %struct.anon { i8 -19, i8 24, [2 x i8] undef }, %struct.anon { i8 -19, i8 17, [2 x i8] undef }, %struct.anon { i8 -16, i8 84, [2 x i8] undef }, %struct.anon { i8 -15, i8 90, [2 x i8] undef }, %struct.anon { i8 -15, i8 87, [2 x i8] undef }, %struct.anon { i8 -12, i8 53, [2 x i8] undef }, %struct.anon { i8 -11, i8 67, [2 x i8] undef }, %struct.anon { i8 -11, i8 62, [2 x i8] undef }, %struct.anon { i8 -9, i8 8, [2 x i8] undef }, %struct.anon { i8 -4, i8 51, [2 x i8] undef }, %struct.anon { i8 -1, i8 33, [2 x i8] undef }], align 16, !dbg !187
@oid_index = internal constant [100 x i16] [i16 0, i16 7, i16 14, i16 21, i16 29, i16 37, i16 44, i16 52, i16 60, i16 68, i16 76, i16 85, i16 94, i16 103, i16 112, i16 121, i16 130, i16 139, i16 148, i16 157, i16 166, i16 175, i16 184, i16 193, i16 202, i16 211, i16 220, i16 231, i16 239, i16 247, i16 255, i16 264, i16 273, i16 283, i16 293, i16 303, i16 313, i16 323, i16 333, i16 342, i16 352, i16 362, i16 368, i16 374, i16 380, i16 386, i16 394, i16 399, i16 404, i16 413, i16 422, i16 431, i16 440, i16 443, i16 446, i16 449, i16 452, i16 455, i16 458, i16 461, i16 464, i16 467, i16 470, i16 473, i16 476, i16 479, i16 482, i16 485, i16 488, i16 491, i16 494, i16 497, i16 500, i16 503, i16 506, i16 512, i16 518, i16 525, i16 532, i16 539, i16 547, i16 555, i16 563, i16 571, i16 579, i16 587, i16 596, i16 605, i16 614, i16 623, i16 632, i16 641, i16 650, i16 658, i16 666, i16 674, i16 682, i16 688, i16 694, i16 700], align 16, !dbg !199
@oid_data = internal constant [700 x i8] c"*\86H\CE.\04\03*\86H\CE8\04\01*\86H\CE=\02\01*\86H\CE=\03\01\01*\86H\CE=\03\01\07*\86H\CE=\04\01*\86H\CE=\04\03\01*\86H\CE=\04\03\02*\86H\CE=\04\03\03*\86H\CE=\04\03\04*\86H\86\F7\0D\01\01\01*\86H\86\F7\0D\01\01\02*\86H\86\F7\0D\01\01\03*\86H\86\F7\0D\01\01\04*\86H\86\F7\0D\01\01\05*\86H\86\F7\0D\01\01\0B*\86H\86\F7\0D\01\01\0C*\86H\86\F7\0D\01\01\0D*\86H\86\F7\0D\01\01\0E*\86H\86\F7\0D\01\07\01*\86H\86\F7\0D\01\07\02*\86H\86\F7\0D\01\09\01*\86H\86\F7\0D\01\09\03*\86H\86\F7\0D\01\09\04*\86H\86\F7\0D\01\09\05*\86H\86\F7\0D\01\09\0F*\86H\86\F7\0D\01\09\10\02\0B*\86H\86\F7\0D\02\02*\86H\86\F7\0D\02\04*\86H\86\F7\0D\02\05*\86H\82\F7\12\01\02\02*\86H\86\F7\12\01\02\02*\86H\86\F7\12\01\02\02\03+\06\01\04\01\827\02\01\04+\06\01\04\01\827\02\01\0B+\06\01\04\01\827\02\01\0C+\06\01\04\01\827\02\01\0F+\06\01\04\01\827\02\01\15+\06\01\04\01\827\10\04+\06\01\04\01\827\02\02\0A+\06\01\04\01\827\02\02\1E+\06\01\05\05\02+\06\01\05\02\05+\05\01\05\02\07+\06\01\05\05\0E+\06\01\05\05\07\01\01+\0E\03\02\1A+\81\04\00\22`\86H\01e\03\04\02\01`\86H\01e\03\04\02\02`\86H\01e\03\04\02\03`\86H\01e\03\04\02\04U\04\03U\04\04U\04\06U\04\07U\04\08U\04\0AU\04\0BU\04\0CU\04\0DU\04)U\04*U\04+U\04,U\1D\0EU\1D\0FU\1D\11U\1D\12U\1D\13U\1D\1FU\1D U\1D#U\1D%*\85p+\0E\02*\85p+\0E\03*\85\03\02\02#\01*\85\03\02\02#\02*\85\03\02\02#\03*\85\03\07\01\01\01\01*\85\03\07\01\01\01\02*\85\03\07\01\01\02\02*\85\03\07\01\01\02\03*\85\03\07\01\01\03\02*\85\03\07\01\01\03\03*\85\03\07\01\02\01\01\01*\85\03\07\01\02\01\01\02*\85\03\07\01\02\01\01\03*\85\03\07\01\02\01\01\04*\85\03\07\01\02\01\02\01*\85\03\07\01\02\01\02\02*\85\03\07\01\02\01\02\03*\81\1C\CFU\01\82-*\81\1C\CFU\01\83\11*\81\1C\CFU\01\83u*\81\1C\CFU\01\83xg\81\05\0A\01\03g\81\05\0A\01\04g\81\05\0A\01\05", align 16, !dbg !206
@__UNIQUE_ID___addressable_look_up_OID199 = internal global ptr @look_up_OID, section ".discard.addressable", align 8, !dbg !162
@__UNIQUE_ID___addressable_parse_OID200 = internal global ptr @parse_OID, section ".discard.addressable", align 8, !dbg !164
@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1, !dbg !166
@.str.1 = private unnamed_addr constant [5 x i8] c".%lu\00", align 1, !dbg !171
@.str.2 = private unnamed_addr constant [6 x i8] c"(bad)\00", align 1, !dbg !176
@__UNIQUE_ID___addressable_sprint_oid201 = internal global ptr @sprint_oid, section ".discard.addressable", align 8, !dbg !178
@.str.3 = private unnamed_addr constant [19 x i8] c"lib/oid_registry.c\00", align 1, !dbg !180
@__UNIQUE_ID___addressable_sprint_OID202 = internal global ptr @sprint_OID, section ".discard.addressable", align 8, !dbg !185
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__UNIQUE_ID___addressable_look_up_OID199, ptr @__UNIQUE_ID___addressable_parse_OID200, ptr @__UNIQUE_ID___addressable_sprint_oid201, ptr @__UNIQUE_ID___addressable_sprint_OID202], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @look_up_OID(ptr noundef %data, i64 noundef %datasize) #0 align 16 !dbg !224 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %datasize.addr = alloca i64, align 8
  %octets = alloca ptr, align 8
  %oid = alloca i32, align 4
  %xhash = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %hash = alloca i32, align 4
  %len = alloca i64, align 8
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !236, metadata !DIExpression()), !dbg !252
  store i64 %datasize, ptr %datasize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datasize.addr, metadata !237, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr %octets) #5, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %octets, metadata !238, metadata !DIExpression()), !dbg !255
  %0 = load ptr, ptr %data.addr, align 8, !dbg !256
  store ptr %0, ptr %octets, align 8, !dbg !255
  call void @llvm.lifetime.start.p0(i64 4, ptr %oid) #5, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %oid, metadata !240, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 1, ptr %xhash) #5, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %xhash, metadata !241, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %i, metadata !242, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %j, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %k, metadata !244, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #5, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !245, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %len, metadata !246, metadata !DIExpression()), !dbg !267
  %1 = load i64, ptr %datasize.addr, align 8, !dbg !268
  %sub = sub i64 %1, 1, !dbg !269
  %conv = trunc i64 %sub to i32, !dbg !268
  store i32 %conv, ptr %hash, align 4, !dbg !270
  store i32 0, ptr %i, align 4, !dbg !271
  br label %for.cond, !dbg !273

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !274
  %conv1 = zext i32 %2 to i64, !dbg !274
  %3 = load i64, ptr %datasize.addr, align 8, !dbg !276
  %cmp = icmp ult i64 %conv1, %3, !dbg !277
  br i1 %cmp, label %for.body, label %for.end, !dbg !278

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %octets, align 8, !dbg !279
  %5 = load i32, ptr %i, align 4, !dbg !280
  %idxprom = zext i32 %5 to i64, !dbg !279
  %arrayidx = getelementptr i8, ptr %4, i64 %idxprom, !dbg !279
  %6 = load i8, ptr %arrayidx, align 1, !dbg !279
  %conv3 = zext i8 %6 to i32, !dbg !279
  %mul = mul i32 %conv3, 33, !dbg !281
  %7 = load i32, ptr %hash, align 4, !dbg !282
  %add = add i32 %7, %mul, !dbg !282
  store i32 %add, ptr %hash, align 4, !dbg !282
  br label %for.inc, !dbg !283

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !284
  %inc = add i32 %8, 1, !dbg !284
  store i32 %inc, ptr %i, align 4, !dbg !284
  br label %for.cond, !dbg !285, !llvm.loop !286

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %hash, align 4, !dbg !290
  %shr = lshr i32 %9, 24, !dbg !291
  %10 = load i32, ptr %hash, align 4, !dbg !292
  %shr4 = lshr i32 %10, 16, !dbg !293
  %xor = xor i32 %shr, %shr4, !dbg !294
  %11 = load i32, ptr %hash, align 4, !dbg !295
  %shr5 = lshr i32 %11, 8, !dbg !296
  %xor6 = xor i32 %xor, %shr5, !dbg !297
  %12 = load i32, ptr %hash, align 4, !dbg !298
  %xor7 = xor i32 %xor6, %12, !dbg !299
  store i32 %xor7, ptr %hash, align 4, !dbg !300
  %13 = load i32, ptr %hash, align 4, !dbg !301
  %and = and i32 %13, 255, !dbg !301
  store i32 %and, ptr %hash, align 4, !dbg !301
  store i32 0, ptr %i, align 4, !dbg !302
  store i32 99, ptr %k, align 4, !dbg !303
  br label %while.cond, !dbg !304

while.cond:                                       ; preds = %next, %if.then41, %if.then37, %if.then20, %if.then, %for.end
  %14 = load i32, ptr %i, align 4, !dbg !305
  %15 = load i32, ptr %k, align 4, !dbg !306
  %cmp8 = icmp ult i32 %14, %15, !dbg !307
  br i1 %cmp8, label %while.body, label %while.end68, !dbg !304

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %i, align 4, !dbg !308
  %17 = load i32, ptr %k, align 4, !dbg !309
  %add10 = add i32 %16, %17, !dbg !310
  %div = udiv i32 %add10, 2, !dbg !311
  store i32 %div, ptr %j, align 4, !dbg !312
  %18 = load i32, ptr %j, align 4, !dbg !313
  %idxprom11 = zext i32 %18 to i64, !dbg !314
  %arrayidx12 = getelementptr [99 x %struct.anon], ptr @oid_search_table, i64 0, i64 %idxprom11, !dbg !314
  %hash13 = getelementptr inbounds %struct.anon, ptr %arrayidx12, i32 0, i32 0, !dbg !315
  %19 = load i8, ptr %hash13, align 4, !dbg !315
  store i8 %19, ptr %xhash, align 1, !dbg !316
  %20 = load i8, ptr %xhash, align 1, !dbg !317
  %conv14 = zext i8 %20 to i32, !dbg !317
  %21 = load i32, ptr %hash, align 4, !dbg !319
  %cmp15 = icmp ugt i32 %conv14, %21, !dbg !320
  br i1 %cmp15, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %while.body
  %22 = load i32, ptr %j, align 4, !dbg !322
  store i32 %22, ptr %k, align 4, !dbg !324
  br label %while.cond, !dbg !325, !llvm.loop !326

if.end:                                           ; preds = %while.body
  %23 = load i8, ptr %xhash, align 1, !dbg !328
  %conv17 = zext i8 %23 to i32, !dbg !328
  %24 = load i32, ptr %hash, align 4, !dbg !330
  %cmp18 = icmp ult i32 %conv17, %24, !dbg !331
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !332

if.then20:                                        ; preds = %if.end
  %25 = load i32, ptr %j, align 4, !dbg !333
  %add21 = add i32 %25, 1, !dbg !335
  store i32 %add21, ptr %i, align 4, !dbg !336
  br label %while.cond, !dbg !337, !llvm.loop !326

if.end22:                                         ; preds = %if.end
  %26 = load i32, ptr %j, align 4, !dbg !338
  %idxprom23 = zext i32 %26 to i64, !dbg !339
  %arrayidx24 = getelementptr [99 x %struct.anon], ptr @oid_search_table, i64 0, i64 %idxprom23, !dbg !339
  %oid25 = getelementptr inbounds %struct.anon, ptr %arrayidx24, i32 0, i32 1, !dbg !340
  %bf.load = load i8, ptr %oid25, align 1, !dbg !340
  %bf.cast = zext i8 %bf.load to i32, !dbg !340
  store i32 %bf.cast, ptr %oid, align 4, !dbg !341
  %27 = load i32, ptr %oid, align 4, !dbg !342
  %add26 = add i32 %27, 1, !dbg !343
  %idxprom27 = zext i32 %add26 to i64, !dbg !344
  %arrayidx28 = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom27, !dbg !344
  %28 = load i16, ptr %arrayidx28, align 2, !dbg !344
  %conv29 = zext i16 %28 to i32, !dbg !344
  %29 = load i32, ptr %oid, align 4, !dbg !345
  %idxprom30 = zext i32 %29 to i64, !dbg !346
  %arrayidx31 = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom30, !dbg !346
  %30 = load i16, ptr %arrayidx31, align 2, !dbg !346
  %conv32 = zext i16 %30 to i32, !dbg !346
  %sub33 = sub i32 %conv29, %conv32, !dbg !347
  %conv34 = sext i32 %sub33 to i64, !dbg !344
  store i64 %conv34, ptr %len, align 8, !dbg !348
  %31 = load i64, ptr %len, align 8, !dbg !349
  %32 = load i64, ptr %datasize.addr, align 8, !dbg !351
  %cmp35 = icmp ugt i64 %31, %32, !dbg !352
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !353

if.then37:                                        ; preds = %if.end22
  %33 = load i32, ptr %j, align 4, !dbg !354
  store i32 %33, ptr %k, align 4, !dbg !356
  br label %while.cond, !dbg !357, !llvm.loop !326

if.end38:                                         ; preds = %if.end22
  %34 = load i64, ptr %len, align 8, !dbg !358
  %35 = load i64, ptr %datasize.addr, align 8, !dbg !360
  %cmp39 = icmp ult i64 %34, %35, !dbg !361
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !362

if.then41:                                        ; preds = %if.end38
  %36 = load i32, ptr %j, align 4, !dbg !363
  %add42 = add i32 %36, 1, !dbg !365
  store i32 %add42, ptr %i, align 4, !dbg !366
  br label %while.cond, !dbg !367, !llvm.loop !326

if.end43:                                         ; preds = %if.end38
  br label %while.cond44, !dbg !368

while.cond44:                                     ; preds = %cleanup.cont, %if.end43
  %37 = load i64, ptr %len, align 8, !dbg !369
  %cmp45 = icmp ugt i64 %37, 0, !dbg !370
  br i1 %cmp45, label %while.body47, label %while.end, !dbg !368

while.body47:                                     ; preds = %while.cond44
  call void @llvm.lifetime.start.p0(i64 1, ptr %a) #5, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %a, metadata !247, metadata !DIExpression()), !dbg !372
  %38 = load i32, ptr %oid, align 4, !dbg !373
  %idxprom48 = zext i32 %38 to i64, !dbg !374
  %arrayidx49 = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom48, !dbg !374
  %39 = load i16, ptr %arrayidx49, align 2, !dbg !374
  %conv50 = zext i16 %39 to i64, !dbg !374
  %40 = load i64, ptr %len, align 8, !dbg !375
  %dec = add i64 %40, -1, !dbg !375
  store i64 %dec, ptr %len, align 8, !dbg !375
  %add51 = add i64 %conv50, %dec, !dbg !376
  %arrayidx52 = getelementptr [700 x i8], ptr @oid_data, i64 0, i64 %add51, !dbg !377
  %41 = load i8, ptr %arrayidx52, align 1, !dbg !377
  store i8 %41, ptr %a, align 1, !dbg !372
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #5, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %b, metadata !250, metadata !DIExpression()), !dbg !379
  %42 = load ptr, ptr %octets, align 8, !dbg !380
  %43 = load i64, ptr %len, align 8, !dbg !381
  %arrayidx53 = getelementptr i8, ptr %42, i64 %43, !dbg !380
  %44 = load i8, ptr %arrayidx53, align 1, !dbg !380
  store i8 %44, ptr %b, align 1, !dbg !379
  %45 = load i8, ptr %a, align 1, !dbg !382
  %conv54 = zext i8 %45 to i32, !dbg !382
  %46 = load i8, ptr %b, align 1, !dbg !384
  %conv55 = zext i8 %46 to i32, !dbg !384
  %cmp56 = icmp sgt i32 %conv54, %conv55, !dbg !385
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !386

if.then58:                                        ; preds = %while.body47
  %47 = load i32, ptr %j, align 4, !dbg !387
  store i32 %47, ptr %k, align 4, !dbg !389
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

if.end59:                                         ; preds = %while.body47
  %48 = load i8, ptr %a, align 1, !dbg !391
  %conv60 = zext i8 %48 to i32, !dbg !391
  %49 = load i8, ptr %b, align 1, !dbg !393
  %conv61 = zext i8 %49 to i32, !dbg !393
  %cmp62 = icmp slt i32 %conv60, %conv61, !dbg !394
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !395

if.then64:                                        ; preds = %if.end59
  %50 = load i32, ptr %j, align 4, !dbg !396
  %add65 = add i32 %50, 1, !dbg !398
  store i32 %add65, ptr %i, align 4, !dbg !399
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !400

if.end66:                                         ; preds = %if.end59
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !401
  br label %cleanup, !dbg !401

cleanup:                                          ; preds = %if.then64, %if.then58, %if.end66
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #5, !dbg !401
  call void @llvm.lifetime.end.p0(i64 1, ptr %a) #5, !dbg !401
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
    i32 9, label %next
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond44, !dbg !368, !llvm.loop !402

while.end:                                        ; preds = %while.cond44
  %51 = load i32, ptr %oid, align 4, !dbg !403
  store i32 %51, ptr %retval, align 4, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !404

next:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !251), !dbg !405
  br label %while.cond, !dbg !304, !llvm.loop !326

while.end68:                                      ; preds = %while.cond
  store i32 99, ptr %retval, align 4, !dbg !406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !406

cleanup69:                                        ; preds = %while.end68, %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 1, ptr %xhash) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %oid) #5, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %octets) #5, !dbg !407
  %52 = load i32, ptr %retval, align 4, !dbg !407
  ret i32 %52, !dbg !407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @parse_OID(ptr noundef %data, i64 noundef %datasize, ptr noundef %oid) #0 align 16 !dbg !408 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %datasize.addr = alloca i64, align 8
  %oid.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !414, metadata !DIExpression()), !dbg !418
  store i64 %datasize, ptr %datasize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datasize.addr, metadata !415, metadata !DIExpression()), !dbg !419
  store ptr %oid, ptr %oid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oid.addr, metadata !416, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %v, metadata !417, metadata !DIExpression()), !dbg !422
  %0 = load ptr, ptr %data.addr, align 8, !dbg !423
  store ptr %0, ptr %v, align 8, !dbg !422
  %1 = load i64, ptr %datasize.addr, align 8, !dbg !424
  %cmp = icmp ult i64 %1, 3, !dbg !426
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !427

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %v, align 8, !dbg !428
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !428
  %3 = load i8, ptr %arrayidx, align 1, !dbg !428
  %conv = zext i8 %3 to i32, !dbg !428
  %cmp1 = icmp ne i32 %conv, 6, !dbg !429
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !430

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %v, align 8, !dbg !431
  %arrayidx4 = getelementptr i8, ptr %4, i64 1, !dbg !431
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !431
  %conv5 = zext i8 %5 to i64, !dbg !431
  %6 = load i64, ptr %datasize.addr, align 8, !dbg !432
  %sub = sub i64 %6, 2, !dbg !433
  %cmp6 = icmp ne i64 %conv5, %sub, !dbg !434
  br i1 %cmp6, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -74, ptr %retval, align 4, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end:                                           ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %data.addr, align 8, !dbg !437
  %add.ptr = getelementptr i8, ptr %7, i64 2, !dbg !438
  %8 = load i64, ptr %datasize.addr, align 8, !dbg !439
  %sub8 = sub i64 %8, 2, !dbg !440
  %call = call i32 @look_up_OID(ptr noundef %add.ptr, i64 noundef %sub8) #6, !dbg !441
  %9 = load ptr, ptr %oid.addr, align 8, !dbg !442
  store i32 %call, ptr %9, align 4, !dbg !443
  store i32 0, ptr %retval, align 4, !dbg !444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !444

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5, !dbg !445
  %10 = load i32, ptr %retval, align 4, !dbg !445
  ret i32 %10, !dbg !445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sprint_oid(ptr noundef %data, i64 noundef %datasize, ptr noundef %buffer, i64 noundef %bufsize) #0 align 16 !dbg !446 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %datasize.addr = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %v = alloca ptr, align 8
  %end = alloca ptr, align 8
  %num = alloca i64, align 8
  %n = alloca i8, align 1
  %ret = alloca i64, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !451, metadata !DIExpression()), !dbg !462
  store i64 %datasize, ptr %datasize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datasize.addr, metadata !452, metadata !DIExpression()), !dbg !463
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !453, metadata !DIExpression()), !dbg !464
  store i64 %bufsize, ptr %bufsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !454, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %v, metadata !455, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %data.addr, align 8, !dbg !468
  store ptr %0, ptr %v, align 8, !dbg !467
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #5, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %end, metadata !456, metadata !DIExpression()), !dbg !469
  %1 = load ptr, ptr %v, align 8, !dbg !470
  %2 = load i64, ptr %datasize.addr, align 8, !dbg !471
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !472
  store ptr %add.ptr, ptr %end, align 8, !dbg !469
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #5, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %num, metadata !457, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 1, ptr %n) #5, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %n, metadata !458, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !459, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %count, metadata !460, metadata !DIExpression()), !dbg !480
  %3 = load ptr, ptr %v, align 8, !dbg !481
  %4 = load ptr, ptr %end, align 8, !dbg !483
  %cmp = icmp uge ptr %3, %4, !dbg !484
  br i1 %cmp, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %entry
  br label %bad, !dbg !486

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %v, align 8, !dbg !487
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !487
  store ptr %incdec.ptr, ptr %v, align 8, !dbg !487
  %6 = load i8, ptr %5, align 1, !dbg !488
  store i8 %6, ptr %n, align 1, !dbg !489
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !490
  %8 = load i64, ptr %bufsize.addr, align 8, !dbg !491
  %9 = load i8, ptr %n, align 1, !dbg !492
  %conv = zext i8 %9 to i32, !dbg !492
  %div = sdiv i32 %conv, 40, !dbg !493
  %10 = load i8, ptr %n, align 1, !dbg !494
  %conv1 = zext i8 %10 to i32, !dbg !494
  %rem = srem i32 %conv1, 40, !dbg !495
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %7, i64 noundef %8, ptr noundef @.str, i32 noundef %div, i32 noundef %rem) #6, !dbg !496
  store i32 %call, ptr %count, align 4, !dbg !497
  %conv2 = sext i32 %call to i64, !dbg !498
  store i64 %conv2, ptr %ret, align 8, !dbg !499
  %11 = load i32, ptr %count, align 4, !dbg !500
  %conv3 = sext i32 %11 to i64, !dbg !500
  %12 = load i64, ptr %bufsize.addr, align 8, !dbg !502
  %cmp4 = icmp uge i64 %conv3, %12, !dbg !503
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !504

if.then6:                                         ; preds = %if.end
  store i32 -105, ptr %retval, align 4, !dbg !505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !505

if.end7:                                          ; preds = %if.end
  %13 = load i32, ptr %count, align 4, !dbg !506
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !507
  %idx.ext = sext i32 %13 to i64, !dbg !507
  %add.ptr8 = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !507
  store ptr %add.ptr8, ptr %buffer.addr, align 8, !dbg !507
  %15 = load i32, ptr %count, align 4, !dbg !508
  %conv9 = sext i32 %15 to i64, !dbg !508
  %16 = load i64, ptr %bufsize.addr, align 8, !dbg !509
  %sub = sub i64 %16, %conv9, !dbg !509
  store i64 %sub, ptr %bufsize.addr, align 8, !dbg !509
  br label %while.cond, !dbg !510

while.cond:                                       ; preds = %if.end37, %if.end7
  %17 = load ptr, ptr %v, align 8, !dbg !511
  %18 = load ptr, ptr %end, align 8, !dbg !512
  %cmp10 = icmp ult ptr %17, %18, !dbg !513
  br i1 %cmp10, label %while.body, label %while.end, !dbg !510

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %v, align 8, !dbg !514
  %incdec.ptr12 = getelementptr i8, ptr %19, i32 1, !dbg !514
  store ptr %incdec.ptr12, ptr %v, align 8, !dbg !514
  %20 = load i8, ptr %19, align 1, !dbg !516
  store i8 %20, ptr %n, align 1, !dbg !517
  %21 = load i8, ptr %n, align 1, !dbg !518
  %conv13 = zext i8 %21 to i32, !dbg !518
  %and = and i32 %conv13, 128, !dbg !520
  %tobool = icmp ne i32 %and, 0, !dbg !520
  br i1 %tobool, label %if.else, label %if.then14, !dbg !521

if.then14:                                        ; preds = %while.body
  %22 = load i8, ptr %n, align 1, !dbg !522
  %conv15 = zext i8 %22 to i64, !dbg !522
  store i64 %conv15, ptr %num, align 8, !dbg !524
  br label %if.end30, !dbg !525

if.else:                                          ; preds = %while.body
  %23 = load i8, ptr %n, align 1, !dbg !526
  %conv16 = zext i8 %23 to i32, !dbg !526
  %and17 = and i32 %conv16, 127, !dbg !528
  %conv18 = sext i32 %and17 to i64, !dbg !526
  store i64 %conv18, ptr %num, align 8, !dbg !529
  br label %do.body, !dbg !530

do.body:                                          ; preds = %do.cond, %if.else
  %24 = load ptr, ptr %v, align 8, !dbg !531
  %25 = load ptr, ptr %end, align 8, !dbg !534
  %cmp19 = icmp uge ptr %24, %25, !dbg !535
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !536

if.then21:                                        ; preds = %do.body
  br label %bad, !dbg !537

if.end22:                                         ; preds = %do.body
  %26 = load ptr, ptr %v, align 8, !dbg !538
  %incdec.ptr23 = getelementptr i8, ptr %26, i32 1, !dbg !538
  store ptr %incdec.ptr23, ptr %v, align 8, !dbg !538
  %27 = load i8, ptr %26, align 1, !dbg !539
  store i8 %27, ptr %n, align 1, !dbg !540
  %28 = load i64, ptr %num, align 8, !dbg !541
  %shl = shl i64 %28, 7, !dbg !541
  store i64 %shl, ptr %num, align 8, !dbg !541
  %29 = load i8, ptr %n, align 1, !dbg !542
  %conv24 = zext i8 %29 to i32, !dbg !542
  %and25 = and i32 %conv24, 127, !dbg !543
  %conv26 = sext i32 %and25 to i64, !dbg !542
  %30 = load i64, ptr %num, align 8, !dbg !544
  %or = or i64 %30, %conv26, !dbg !544
  store i64 %or, ptr %num, align 8, !dbg !544
  br label %do.cond, !dbg !545

do.cond:                                          ; preds = %if.end22
  %31 = load i8, ptr %n, align 1, !dbg !546
  %conv27 = zext i8 %31 to i32, !dbg !546
  %and28 = and i32 %conv27, 128, !dbg !547
  %tobool29 = icmp ne i32 %and28, 0, !dbg !545
  br i1 %tobool29, label %do.body, label %do.end, !dbg !545, !llvm.loop !548

do.end:                                           ; preds = %do.cond
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then14
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !550
  %33 = load i64, ptr %bufsize.addr, align 8, !dbg !551
  %34 = load i64, ptr %num, align 8, !dbg !552
  %call31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef %33, ptr noundef @.str.1, i64 noundef %34) #6, !dbg !553
  store i32 %call31, ptr %count, align 4, !dbg !554
  %conv32 = sext i32 %call31 to i64, !dbg !555
  %35 = load i64, ptr %ret, align 8, !dbg !556
  %add = add i64 %35, %conv32, !dbg !556
  store i64 %add, ptr %ret, align 8, !dbg !556
  %36 = load i32, ptr %count, align 4, !dbg !557
  %conv33 = sext i32 %36 to i64, !dbg !557
  %37 = load i64, ptr %bufsize.addr, align 8, !dbg !559
  %cmp34 = icmp uge i64 %conv33, %37, !dbg !560
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !561

if.then36:                                        ; preds = %if.end30
  store i32 -105, ptr %retval, align 4, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

if.end37:                                         ; preds = %if.end30
  %38 = load i32, ptr %count, align 4, !dbg !563
  %39 = load ptr, ptr %buffer.addr, align 8, !dbg !564
  %idx.ext38 = sext i32 %38 to i64, !dbg !564
  %add.ptr39 = getelementptr i8, ptr %39, i64 %idx.ext38, !dbg !564
  store ptr %add.ptr39, ptr %buffer.addr, align 8, !dbg !564
  %40 = load i32, ptr %count, align 4, !dbg !565
  %conv40 = sext i32 %40 to i64, !dbg !565
  %41 = load i64, ptr %bufsize.addr, align 8, !dbg !566
  %sub41 = sub i64 %41, %conv40, !dbg !566
  store i64 %sub41, ptr %bufsize.addr, align 8, !dbg !566
  br label %while.cond, !dbg !510, !llvm.loop !567

while.end:                                        ; preds = %while.cond
  %42 = load i64, ptr %ret, align 8, !dbg !569
  %conv42 = trunc i64 %42 to i32, !dbg !569
  store i32 %conv42, ptr %retval, align 4, !dbg !570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !570

bad:                                              ; preds = %if.then21, %if.then
  call void @llvm.dbg.label(metadata !461), !dbg !571
  %43 = load ptr, ptr %buffer.addr, align 8, !dbg !572
  %44 = load i64, ptr %bufsize.addr, align 8, !dbg !573
  %call43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %43, i64 noundef %44, ptr noundef @.str.2) #6, !dbg !574
  store i32 -74, ptr %retval, align 4, !dbg !575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

cleanup:                                          ; preds = %bad, %while.end, %if.then36, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !576
  call void @llvm.lifetime.end.p0(i64 1, ptr %n) #5, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #5, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #5, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5, !dbg !576
  %45 = load i32, ptr %retval, align 4, !dbg !576
  ret i32 %45, !dbg !576
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !577 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sprint_OID(i32 noundef %oid, ptr noundef %buffer, i64 noundef %bufsize) #0 align 16 !dbg !582 {
entry:
  %oid.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i32 %oid, ptr %oid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %oid.addr, metadata !586, metadata !DIExpression()), !dbg !590
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !587, metadata !DIExpression()), !dbg !591
  store i64 %bufsize, ptr %bufsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !588, metadata !DIExpression()), !dbg !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !589, metadata !DIExpression()), !dbg !594
  br label %do.body, !dbg !595

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %oid.addr, align 4, !dbg !596
  %cmp = icmp uge i32 %0, 99, !dbg !596
  %lnot = xor i1 %cmp, true, !dbg !596
  %lnot1 = xor i1 %lnot, true, !dbg !596
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !596
  %conv = sext i32 %lnot.ext to i64, !dbg !596
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !596
  %tobool = icmp ne i64 %expval, 0, !dbg !596
  br i1 %tobool, label %if.then, label %if.end, !dbg !599

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !596

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !600

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !602

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !602

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !600

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 190, i32 0, i64 12) #5, !dbg !604, !srcloc !606
  br label %do.cond5, !dbg !604

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !604

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !600

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !600

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !600

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !599

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !599

do.end10:                                         ; preds = %do.cond9
  %1 = load i32, ptr %oid.addr, align 4, !dbg !607
  %idxprom = zext i32 %1 to i64, !dbg !608
  %arrayidx = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom, !dbg !608
  %2 = load i16, ptr %arrayidx, align 2, !dbg !608
  %conv11 = zext i16 %2 to i32, !dbg !608
  %idx.ext = sext i32 %conv11 to i64, !dbg !609
  %add.ptr = getelementptr i8, ptr @oid_data, i64 %idx.ext, !dbg !609
  %3 = load i32, ptr %oid.addr, align 4, !dbg !610
  %add = add i32 %3, 1, !dbg !611
  %idxprom12 = zext i32 %add to i64, !dbg !612
  %arrayidx13 = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom12, !dbg !612
  %4 = load i16, ptr %arrayidx13, align 2, !dbg !612
  %conv14 = zext i16 %4 to i32, !dbg !612
  %5 = load i32, ptr %oid.addr, align 4, !dbg !613
  %idxprom15 = zext i32 %5 to i64, !dbg !614
  %arrayidx16 = getelementptr [100 x i16], ptr @oid_index, i64 0, i64 %idxprom15, !dbg !614
  %6 = load i16, ptr %arrayidx16, align 2, !dbg !614
  %conv17 = zext i16 %6 to i32, !dbg !614
  %sub = sub i32 %conv14, %conv17, !dbg !615
  %conv18 = sext i32 %sub to i64, !dbg !612
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !616
  %8 = load i64, ptr %bufsize.addr, align 8, !dbg !617
  %call = call i32 @sprint_oid(ptr noundef %add.ptr, i64 noundef %conv18, ptr noundef %7, i64 noundef %8) #6, !dbg !618
  store i32 %call, ptr %ret, align 4, !dbg !619
  br label %do.body19, !dbg !620

do.body19:                                        ; preds = %do.end10
  %9 = load i32, ptr %ret, align 4, !dbg !621
  %cmp20 = icmp eq i32 %9, -74, !dbg !621
  %lnot22 = xor i1 %cmp20, true, !dbg !621
  %lnot24 = xor i1 %lnot22, true, !dbg !621
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !621
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !621
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !621
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !621
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !624

if.then29:                                        ; preds = %do.body19
  br label %do.body30, !dbg !621

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !625

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !627

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !627

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !625

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 195, i32 0, i64 12) #5, !dbg !629, !srcloc !631
  br label %do.cond35, !dbg !629

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !629

do.end36:                                         ; preds = %do.cond35
  unreachable, !dbg !625

do.cond37:                                        ; No predecessors!
  br label %do.end38, !dbg !625

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !625

if.end39:                                         ; preds = %do.end38, %do.body19
  br label %do.cond40, !dbg !624

do.cond40:                                        ; preds = %if.end39
  br label %do.end41, !dbg !624

do.end41:                                         ; preds = %do.cond40
  %10 = load i32, ptr %ret, align 4, !dbg !632
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !633
  ret i32 %10, !dbg !634
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description195", scope: !2, file: !3, line: 17, type: !212, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.oid_registry.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/oid_registry\22 -D KBUILD_BASENAME=\22oid_registry\22 -D KBUILD_MODNAME=\22oid_registry\22 -D __KBUILD_MODNAME=kmod_oid_registry -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/oid_registry.ll lib/oid_registry.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !142, globals: !144, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/oid_registry.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26c7b88d63593de3958b5438598a0968")
!4 = !{!5, !109}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OID", file: !6, line: 19, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/oid_registry.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5d57e234dafd05fd37f1d558d9555b7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!9 = !DIEnumerator(name: "OID_id_dsa_with_sha1", value: 0)
!10 = !DIEnumerator(name: "OID_id_dsa", value: 1)
!11 = !DIEnumerator(name: "OID_id_ecPublicKey", value: 2)
!12 = !DIEnumerator(name: "OID_id_prime192v1", value: 3)
!13 = !DIEnumerator(name: "OID_id_prime256v1", value: 4)
!14 = !DIEnumerator(name: "OID_id_ecdsa_with_sha1", value: 5)
!15 = !DIEnumerator(name: "OID_id_ecdsa_with_sha224", value: 6)
!16 = !DIEnumerator(name: "OID_id_ecdsa_with_sha256", value: 7)
!17 = !DIEnumerator(name: "OID_id_ecdsa_with_sha384", value: 8)
!18 = !DIEnumerator(name: "OID_id_ecdsa_with_sha512", value: 9)
!19 = !DIEnumerator(name: "OID_rsaEncryption", value: 10)
!20 = !DIEnumerator(name: "OID_md2WithRSAEncryption", value: 11)
!21 = !DIEnumerator(name: "OID_md3WithRSAEncryption", value: 12)
!22 = !DIEnumerator(name: "OID_md4WithRSAEncryption", value: 13)
!23 = !DIEnumerator(name: "OID_sha1WithRSAEncryption", value: 14)
!24 = !DIEnumerator(name: "OID_sha256WithRSAEncryption", value: 15)
!25 = !DIEnumerator(name: "OID_sha384WithRSAEncryption", value: 16)
!26 = !DIEnumerator(name: "OID_sha512WithRSAEncryption", value: 17)
!27 = !DIEnumerator(name: "OID_sha224WithRSAEncryption", value: 18)
!28 = !DIEnumerator(name: "OID_data", value: 19)
!29 = !DIEnumerator(name: "OID_signed_data", value: 20)
!30 = !DIEnumerator(name: "OID_email_address", value: 21)
!31 = !DIEnumerator(name: "OID_contentType", value: 22)
!32 = !DIEnumerator(name: "OID_messageDigest", value: 23)
!33 = !DIEnumerator(name: "OID_signingTime", value: 24)
!34 = !DIEnumerator(name: "OID_smimeCapabilites", value: 25)
!35 = !DIEnumerator(name: "OID_smimeAuthenticatedAttrs", value: 26)
!36 = !DIEnumerator(name: "OID_md2", value: 27)
!37 = !DIEnumerator(name: "OID_md4", value: 28)
!38 = !DIEnumerator(name: "OID_md5", value: 29)
!39 = !DIEnumerator(name: "OID_mskrb5", value: 30)
!40 = !DIEnumerator(name: "OID_krb5", value: 31)
!41 = !DIEnumerator(name: "OID_krb5u2u", value: 32)
!42 = !DIEnumerator(name: "OID_msIndirectData", value: 33)
!43 = !DIEnumerator(name: "OID_msStatementType", value: 34)
!44 = !DIEnumerator(name: "OID_msSpOpusInfo", value: 35)
!45 = !DIEnumerator(name: "OID_msPeImageDataObjId", value: 36)
!46 = !DIEnumerator(name: "OID_msIndividualSPKeyPurpose", value: 37)
!47 = !DIEnumerator(name: "OID_msOutlookExpress", value: 38)
!48 = !DIEnumerator(name: "OID_ntlmssp", value: 39)
!49 = !DIEnumerator(name: "OID_negoex", value: 40)
!50 = !DIEnumerator(name: "OID_spnego", value: 41)
!51 = !DIEnumerator(name: "OID_IAKerb", value: 42)
!52 = !DIEnumerator(name: "OID_PKU2U", value: 43)
!53 = !DIEnumerator(name: "OID_Scram", value: 44)
!54 = !DIEnumerator(name: "OID_certAuthInfoAccess", value: 45)
!55 = !DIEnumerator(name: "OID_sha1", value: 46)
!56 = !DIEnumerator(name: "OID_id_ansip384r1", value: 47)
!57 = !DIEnumerator(name: "OID_sha256", value: 48)
!58 = !DIEnumerator(name: "OID_sha384", value: 49)
!59 = !DIEnumerator(name: "OID_sha512", value: 50)
!60 = !DIEnumerator(name: "OID_sha224", value: 51)
!61 = !DIEnumerator(name: "OID_commonName", value: 52)
!62 = !DIEnumerator(name: "OID_surname", value: 53)
!63 = !DIEnumerator(name: "OID_countryName", value: 54)
!64 = !DIEnumerator(name: "OID_locality", value: 55)
!65 = !DIEnumerator(name: "OID_stateOrProvinceName", value: 56)
!66 = !DIEnumerator(name: "OID_organizationName", value: 57)
!67 = !DIEnumerator(name: "OID_organizationUnitName", value: 58)
!68 = !DIEnumerator(name: "OID_title", value: 59)
!69 = !DIEnumerator(name: "OID_description", value: 60)
!70 = !DIEnumerator(name: "OID_name", value: 61)
!71 = !DIEnumerator(name: "OID_givenName", value: 62)
!72 = !DIEnumerator(name: "OID_initials", value: 63)
!73 = !DIEnumerator(name: "OID_generationalQualifier", value: 64)
!74 = !DIEnumerator(name: "OID_subjectKeyIdentifier", value: 65)
!75 = !DIEnumerator(name: "OID_keyUsage", value: 66)
!76 = !DIEnumerator(name: "OID_subjectAltName", value: 67)
!77 = !DIEnumerator(name: "OID_issuerAltName", value: 68)
!78 = !DIEnumerator(name: "OID_basicConstraints", value: 69)
!79 = !DIEnumerator(name: "OID_crlDistributionPoints", value: 70)
!80 = !DIEnumerator(name: "OID_certPolicies", value: 71)
!81 = !DIEnumerator(name: "OID_authorityKeyIdentifier", value: 72)
!82 = !DIEnumerator(name: "OID_extKeyUsage", value: 73)
!83 = !DIEnumerator(name: "OID_NetlogonMechanism", value: 74)
!84 = !DIEnumerator(name: "OID_appleLocalKdcSupported", value: 75)
!85 = !DIEnumerator(name: "OID_gostCPSignA", value: 76)
!86 = !DIEnumerator(name: "OID_gostCPSignB", value: 77)
!87 = !DIEnumerator(name: "OID_gostCPSignC", value: 78)
!88 = !DIEnumerator(name: "OID_gost2012PKey256", value: 79)
!89 = !DIEnumerator(name: "OID_gost2012PKey512", value: 80)
!90 = !DIEnumerator(name: "OID_gost2012Digest256", value: 81)
!91 = !DIEnumerator(name: "OID_gost2012Digest512", value: 82)
!92 = !DIEnumerator(name: "OID_gost2012Signature256", value: 83)
!93 = !DIEnumerator(name: "OID_gost2012Signature512", value: 84)
!94 = !DIEnumerator(name: "OID_gostTC26Sign256A", value: 85)
!95 = !DIEnumerator(name: "OID_gostTC26Sign256B", value: 86)
!96 = !DIEnumerator(name: "OID_gostTC26Sign256C", value: 87)
!97 = !DIEnumerator(name: "OID_gostTC26Sign256D", value: 88)
!98 = !DIEnumerator(name: "OID_gostTC26Sign512A", value: 89)
!99 = !DIEnumerator(name: "OID_gostTC26Sign512B", value: 90)
!100 = !DIEnumerator(name: "OID_gostTC26Sign512C", value: 91)
!101 = !DIEnumerator(name: "OID_sm2", value: 92)
!102 = !DIEnumerator(name: "OID_sm3", value: 93)
!103 = !DIEnumerator(name: "OID_SM2_with_SM3", value: 94)
!104 = !DIEnumerator(name: "OID_sm3WithRSAEncryption", value: 95)
!105 = !DIEnumerator(name: "OID_TPMLoadableKey", value: 96)
!106 = !DIEnumerator(name: "OID_TPMImportableKey", value: 97)
!107 = !DIEnumerator(name: "OID_TPMSealedData", value: 98)
!108 = !DIEnumerator(name: "OID__NR", value: 99)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "asn1_tag", file: !110, line: 28, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/asn1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb79e98a58ecc0214aefb4ff1311213")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!112 = !DIEnumerator(name: "ASN1_EOC", value: 0)
!113 = !DIEnumerator(name: "ASN1_BOOL", value: 1)
!114 = !DIEnumerator(name: "ASN1_INT", value: 2)
!115 = !DIEnumerator(name: "ASN1_BTS", value: 3)
!116 = !DIEnumerator(name: "ASN1_OTS", value: 4)
!117 = !DIEnumerator(name: "ASN1_NULL", value: 5)
!118 = !DIEnumerator(name: "ASN1_OID", value: 6)
!119 = !DIEnumerator(name: "ASN1_ODE", value: 7)
!120 = !DIEnumerator(name: "ASN1_EXT", value: 8)
!121 = !DIEnumerator(name: "ASN1_REAL", value: 9)
!122 = !DIEnumerator(name: "ASN1_ENUM", value: 10)
!123 = !DIEnumerator(name: "ASN1_EPDV", value: 11)
!124 = !DIEnumerator(name: "ASN1_UTF8STR", value: 12)
!125 = !DIEnumerator(name: "ASN1_RELOID", value: 13)
!126 = !DIEnumerator(name: "ASN1_SEQ", value: 16)
!127 = !DIEnumerator(name: "ASN1_SET", value: 17)
!128 = !DIEnumerator(name: "ASN1_NUMSTR", value: 18)
!129 = !DIEnumerator(name: "ASN1_PRNSTR", value: 19)
!130 = !DIEnumerator(name: "ASN1_TEXSTR", value: 20)
!131 = !DIEnumerator(name: "ASN1_VIDSTR", value: 21)
!132 = !DIEnumerator(name: "ASN1_IA5STR", value: 22)
!133 = !DIEnumerator(name: "ASN1_UNITIM", value: 23)
!134 = !DIEnumerator(name: "ASN1_GENTIM", value: 24)
!135 = !DIEnumerator(name: "ASN1_GRASTR", value: 25)
!136 = !DIEnumerator(name: "ASN1_VISSTR", value: 26)
!137 = !DIEnumerator(name: "ASN1_GENSTR", value: 27)
!138 = !DIEnumerator(name: "ASN1_UNISTR", value: 28)
!139 = !DIEnumerator(name: "ASN1_CHRSTR", value: 29)
!140 = !DIEnumerator(name: "ASN1_BMPSTR", value: 30)
!141 = !DIEnumerator(name: "ASN1_LONG_TAG", value: 31)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!144 = !{!0, !145, !152, !157, !162, !164, !166, !171, !176, !178, !180, !185, !187, !199, !206}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author196", scope: !2, file: !3, line: 18, type: !147, isLocal: true, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 272, elements: !150)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !{!151}
!151 = !DISubrange(count: 34)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file197", scope: !2, file: !3, line: 19, type: !154, isLocal: true, isDefinition: true, align: 8)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 280, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 35)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license198", scope: !2, file: !3, line: 19, type: !159, isLocal: true, isDefinition: true, align: 8)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 200, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 25)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_look_up_OID199", scope: !2, file: !3, line: 94, type: !143, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_parse_OID200", scope: !2, file: !3, line: 117, type: !143, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 48, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 6)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 40, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 5)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !168, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sprint_oid201", scope: !2, file: !3, line: 175, type: !143, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 152, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 19)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sprint_OID202", scope: !2, file: !3, line: 198, type: !143, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "oid_search_table", scope: !2, file: !189, line: 213, type: !190, isLocal: true, isDefinition: true)
!189 = !DIFile(filename: "lib/oid_registry_data.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d129793752937e2e740f0e1f66b6049")
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 3168, elements: !197)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 210, size: 32, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !192, file: !189, line: 211, baseType: !195, size: 8)
!195 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !192, file: !189, line: 212, baseType: !5, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!197 = !{!198}
!198 = !DISubrange(count: 99)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "oid_index", scope: !2, file: !189, line: 5, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1600, elements: !204)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !{!205}
!205 = !DISubrange(count: 100)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "oid_data", scope: !2, file: !189, line: 108, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 5600, elements: !210)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!210 = !{!211}
!211 = !DISubrange(count: 700)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 304, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 38)
!215 = !{i32 7, !"Dwarf Version", i32 5}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 8, !"cf-protection-branch", i32 1}
!219 = !{i32 4, !"function_return_thunk_extern", i32 1}
!220 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!221 = !{i32 1, !"Code Model", i32 2}
!222 = !{i32 1, !"override-stack-alignment", i32 8}
!223 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!224 = distinct !DISubprogram(name: "look_up_OID", scope: !3, file: !3, line: 26, type: !225, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!225 = !DISubroutineType(types: !226)
!226 = !{!5, !227, !229}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !230, line: 61, baseType: !231)
!230 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !232, line: 72, baseType: !233)
!232 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !232, line: 16, baseType: !234)
!234 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!235 = !{!236, !237, !238, !240, !241, !242, !243, !244, !245, !246, !247, !250, !251}
!236 = !DILocalVariable(name: "data", arg: 1, scope: !224, file: !3, line: 26, type: !227)
!237 = !DILocalVariable(name: "datasize", arg: 2, scope: !224, file: !3, line: 26, type: !229)
!238 = !DILocalVariable(name: "octets", scope: !224, file: !3, line: 28, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!240 = !DILocalVariable(name: "oid", scope: !224, file: !3, line: 29, type: !5)
!241 = !DILocalVariable(name: "xhash", scope: !224, file: !3, line: 30, type: !195)
!242 = !DILocalVariable(name: "i", scope: !224, file: !3, line: 31, type: !7)
!243 = !DILocalVariable(name: "j", scope: !224, file: !3, line: 31, type: !7)
!244 = !DILocalVariable(name: "k", scope: !224, file: !3, line: 31, type: !7)
!245 = !DILocalVariable(name: "hash", scope: !224, file: !3, line: 31, type: !7)
!246 = !DILocalVariable(name: "len", scope: !224, file: !3, line: 32, type: !229)
!247 = !DILocalVariable(name: "a", scope: !248, file: !3, line: 76, type: !195)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 75, column: 19)
!249 = distinct !DILexicalBlock(scope: !224, file: !3, line: 48, column: 16)
!250 = !DILocalVariable(name: "b", scope: !248, file: !3, line: 77, type: !195)
!251 = !DILabel(scope: !249, name: "next", file: !3, line: 88)
!252 = !DILocation(line: 26, column: 34, scope: !224)
!253 = !DILocation(line: 26, column: 47, scope: !224)
!254 = !DILocation(line: 28, column: 2, scope: !224)
!255 = !DILocation(line: 28, column: 23, scope: !224)
!256 = !DILocation(line: 28, column: 32, scope: !224)
!257 = !DILocation(line: 29, column: 2, scope: !224)
!258 = !DILocation(line: 29, column: 11, scope: !224)
!259 = !DILocation(line: 30, column: 2, scope: !224)
!260 = !DILocation(line: 30, column: 16, scope: !224)
!261 = !DILocation(line: 31, column: 2, scope: !224)
!262 = !DILocation(line: 31, column: 11, scope: !224)
!263 = !DILocation(line: 31, column: 14, scope: !224)
!264 = !DILocation(line: 31, column: 17, scope: !224)
!265 = !DILocation(line: 31, column: 20, scope: !224)
!266 = !DILocation(line: 32, column: 2, scope: !224)
!267 = !DILocation(line: 32, column: 9, scope: !224)
!268 = !DILocation(line: 35, column: 9, scope: !224)
!269 = !DILocation(line: 35, column: 18, scope: !224)
!270 = !DILocation(line: 35, column: 7, scope: !224)
!271 = !DILocation(line: 37, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !224, file: !3, line: 37, column: 2)
!273 = !DILocation(line: 37, column: 7, scope: !272)
!274 = !DILocation(line: 37, column: 14, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 37, column: 2)
!276 = !DILocation(line: 37, column: 18, scope: !275)
!277 = !DILocation(line: 37, column: 16, scope: !275)
!278 = !DILocation(line: 37, column: 2, scope: !272)
!279 = !DILocation(line: 38, column: 11, scope: !275)
!280 = !DILocation(line: 38, column: 18, scope: !275)
!281 = !DILocation(line: 38, column: 21, scope: !275)
!282 = !DILocation(line: 38, column: 8, scope: !275)
!283 = !DILocation(line: 38, column: 3, scope: !275)
!284 = !DILocation(line: 37, column: 29, scope: !275)
!285 = !DILocation(line: 37, column: 2, scope: !275)
!286 = distinct !{!286, !278, !287, !288, !289}
!287 = !DILocation(line: 38, column: 23, scope: !272)
!288 = !{!"llvm.loop.mustprogress"}
!289 = !{!"llvm.loop.unroll.disable"}
!290 = !DILocation(line: 39, column: 10, scope: !224)
!291 = !DILocation(line: 39, column: 15, scope: !224)
!292 = !DILocation(line: 39, column: 25, scope: !224)
!293 = !DILocation(line: 39, column: 30, scope: !224)
!294 = !DILocation(line: 39, column: 22, scope: !224)
!295 = !DILocation(line: 39, column: 40, scope: !224)
!296 = !DILocation(line: 39, column: 45, scope: !224)
!297 = !DILocation(line: 39, column: 37, scope: !224)
!298 = !DILocation(line: 39, column: 53, scope: !224)
!299 = !DILocation(line: 39, column: 51, scope: !224)
!300 = !DILocation(line: 39, column: 7, scope: !224)
!301 = !DILocation(line: 40, column: 7, scope: !224)
!302 = !DILocation(line: 46, column: 4, scope: !224)
!303 = !DILocation(line: 47, column: 4, scope: !224)
!304 = !DILocation(line: 48, column: 2, scope: !224)
!305 = !DILocation(line: 48, column: 9, scope: !224)
!306 = !DILocation(line: 48, column: 13, scope: !224)
!307 = !DILocation(line: 48, column: 11, scope: !224)
!308 = !DILocation(line: 49, column: 8, scope: !249)
!309 = !DILocation(line: 49, column: 12, scope: !249)
!310 = !DILocation(line: 49, column: 10, scope: !249)
!311 = !DILocation(line: 49, column: 15, scope: !249)
!312 = !DILocation(line: 49, column: 5, scope: !249)
!313 = !DILocation(line: 51, column: 28, scope: !249)
!314 = !DILocation(line: 51, column: 11, scope: !249)
!315 = !DILocation(line: 51, column: 31, scope: !249)
!316 = !DILocation(line: 51, column: 9, scope: !249)
!317 = !DILocation(line: 52, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !249, file: !3, line: 52, column: 7)
!319 = !DILocation(line: 52, column: 15, scope: !318)
!320 = !DILocation(line: 52, column: 13, scope: !318)
!321 = !DILocation(line: 52, column: 7, scope: !249)
!322 = !DILocation(line: 53, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 52, column: 21)
!324 = !DILocation(line: 53, column: 6, scope: !323)
!325 = !DILocation(line: 54, column: 4, scope: !323)
!326 = distinct !{!326, !304, !327, !288, !289}
!327 = !DILocation(line: 90, column: 2, scope: !224)
!328 = !DILocation(line: 56, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !249, file: !3, line: 56, column: 7)
!330 = !DILocation(line: 56, column: 15, scope: !329)
!331 = !DILocation(line: 56, column: 13, scope: !329)
!332 = !DILocation(line: 56, column: 7, scope: !249)
!333 = !DILocation(line: 57, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !3, line: 56, column: 21)
!335 = !DILocation(line: 57, column: 10, scope: !334)
!336 = !DILocation(line: 57, column: 6, scope: !334)
!337 = !DILocation(line: 58, column: 4, scope: !334)
!338 = !DILocation(line: 61, column: 26, scope: !249)
!339 = !DILocation(line: 61, column: 9, scope: !249)
!340 = !DILocation(line: 61, column: 29, scope: !249)
!341 = !DILocation(line: 61, column: 7, scope: !249)
!342 = !DILocation(line: 62, column: 19, scope: !249)
!343 = !DILocation(line: 62, column: 23, scope: !249)
!344 = !DILocation(line: 62, column: 9, scope: !249)
!345 = !DILocation(line: 62, column: 40, scope: !249)
!346 = !DILocation(line: 62, column: 30, scope: !249)
!347 = !DILocation(line: 62, column: 28, scope: !249)
!348 = !DILocation(line: 62, column: 7, scope: !249)
!349 = !DILocation(line: 63, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !249, file: !3, line: 63, column: 7)
!351 = !DILocation(line: 63, column: 13, scope: !350)
!352 = !DILocation(line: 63, column: 11, scope: !350)
!353 = !DILocation(line: 63, column: 7, scope: !249)
!354 = !DILocation(line: 64, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !3, line: 63, column: 23)
!356 = !DILocation(line: 64, column: 6, scope: !355)
!357 = !DILocation(line: 65, column: 4, scope: !355)
!358 = !DILocation(line: 67, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !249, file: !3, line: 67, column: 7)
!360 = !DILocation(line: 67, column: 13, scope: !359)
!361 = !DILocation(line: 67, column: 11, scope: !359)
!362 = !DILocation(line: 67, column: 7, scope: !249)
!363 = !DILocation(line: 68, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !3, line: 67, column: 23)
!365 = !DILocation(line: 68, column: 10, scope: !364)
!366 = !DILocation(line: 68, column: 6, scope: !364)
!367 = !DILocation(line: 69, column: 4, scope: !364)
!368 = !DILocation(line: 75, column: 3, scope: !249)
!369 = !DILocation(line: 75, column: 10, scope: !249)
!370 = !DILocation(line: 75, column: 14, scope: !249)
!371 = !DILocation(line: 76, column: 4, scope: !248)
!372 = !DILocation(line: 76, column: 18, scope: !248)
!373 = !DILocation(line: 76, column: 41, scope: !248)
!374 = !DILocation(line: 76, column: 31, scope: !248)
!375 = !DILocation(line: 76, column: 48, scope: !248)
!376 = !DILocation(line: 76, column: 46, scope: !248)
!377 = !DILocation(line: 76, column: 22, scope: !248)
!378 = !DILocation(line: 77, column: 4, scope: !248)
!379 = !DILocation(line: 77, column: 18, scope: !248)
!380 = !DILocation(line: 77, column: 22, scope: !248)
!381 = !DILocation(line: 77, column: 29, scope: !248)
!382 = !DILocation(line: 78, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !248, file: !3, line: 78, column: 8)
!384 = !DILocation(line: 78, column: 12, scope: !383)
!385 = !DILocation(line: 78, column: 10, scope: !383)
!386 = !DILocation(line: 78, column: 8, scope: !248)
!387 = !DILocation(line: 79, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 78, column: 15)
!389 = !DILocation(line: 79, column: 7, scope: !388)
!390 = !DILocation(line: 80, column: 5, scope: !388)
!391 = !DILocation(line: 82, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !248, file: !3, line: 82, column: 8)
!393 = !DILocation(line: 82, column: 12, scope: !392)
!394 = !DILocation(line: 82, column: 10, scope: !392)
!395 = !DILocation(line: 82, column: 8, scope: !248)
!396 = !DILocation(line: 83, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !3, line: 82, column: 15)
!398 = !DILocation(line: 83, column: 11, scope: !397)
!399 = !DILocation(line: 83, column: 7, scope: !397)
!400 = !DILocation(line: 84, column: 5, scope: !397)
!401 = !DILocation(line: 86, column: 3, scope: !249)
!402 = distinct !{!402, !368, !401, !288, !289}
!403 = !DILocation(line: 87, column: 10, scope: !249)
!404 = !DILocation(line: 87, column: 3, scope: !249)
!405 = !DILocation(line: 88, column: 2, scope: !249)
!406 = !DILocation(line: 92, column: 2, scope: !224)
!407 = !DILocation(line: 93, column: 1, scope: !224)
!408 = distinct !DISubprogram(name: "parse_OID", scope: !3, file: !3, line: 106, type: !409, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!409 = !DISubroutineType(types: !410)
!410 = !{!411, !227, !229, !412}
!411 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!413 = !{!414, !415, !416, !417}
!414 = !DILocalVariable(name: "data", arg: 1, scope: !408, file: !3, line: 106, type: !227)
!415 = !DILocalVariable(name: "datasize", arg: 2, scope: !408, file: !3, line: 106, type: !229)
!416 = !DILocalVariable(name: "oid", arg: 3, scope: !408, file: !3, line: 106, type: !412)
!417 = !DILocalVariable(name: "v", scope: !408, file: !3, line: 108, type: !239)
!418 = !DILocation(line: 106, column: 27, scope: !408)
!419 = !DILocation(line: 106, column: 40, scope: !408)
!420 = !DILocation(line: 106, column: 60, scope: !408)
!421 = !DILocation(line: 108, column: 2, scope: !408)
!422 = !DILocation(line: 108, column: 23, scope: !408)
!423 = !DILocation(line: 108, column: 27, scope: !408)
!424 = !DILocation(line: 111, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !408, file: !3, line: 111, column: 6)
!426 = !DILocation(line: 111, column: 15, scope: !425)
!427 = !DILocation(line: 111, column: 19, scope: !425)
!428 = !DILocation(line: 111, column: 22, scope: !425)
!429 = !DILocation(line: 111, column: 27, scope: !425)
!430 = !DILocation(line: 111, column: 39, scope: !425)
!431 = !DILocation(line: 111, column: 42, scope: !425)
!432 = !DILocation(line: 111, column: 50, scope: !425)
!433 = !DILocation(line: 111, column: 59, scope: !425)
!434 = !DILocation(line: 111, column: 47, scope: !425)
!435 = !DILocation(line: 111, column: 6, scope: !408)
!436 = !DILocation(line: 112, column: 3, scope: !425)
!437 = !DILocation(line: 114, column: 21, scope: !408)
!438 = !DILocation(line: 114, column: 26, scope: !408)
!439 = !DILocation(line: 114, column: 31, scope: !408)
!440 = !DILocation(line: 114, column: 40, scope: !408)
!441 = !DILocation(line: 114, column: 9, scope: !408)
!442 = !DILocation(line: 114, column: 3, scope: !408)
!443 = !DILocation(line: 114, column: 7, scope: !408)
!444 = !DILocation(line: 115, column: 2, scope: !408)
!445 = !DILocation(line: 116, column: 1, scope: !408)
!446 = distinct !DISubprogram(name: "sprint_oid", scope: !3, file: !3, line: 130, type: !447, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !450)
!447 = !DISubroutineType(types: !448)
!448 = !{!411, !227, !229, !449, !229}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!451 = !DILocalVariable(name: "data", arg: 1, scope: !446, file: !3, line: 130, type: !227)
!452 = !DILocalVariable(name: "datasize", arg: 2, scope: !446, file: !3, line: 130, type: !229)
!453 = !DILocalVariable(name: "buffer", arg: 3, scope: !446, file: !3, line: 130, type: !449)
!454 = !DILocalVariable(name: "bufsize", arg: 4, scope: !446, file: !3, line: 130, type: !229)
!455 = !DILocalVariable(name: "v", scope: !446, file: !3, line: 132, type: !239)
!456 = !DILocalVariable(name: "end", scope: !446, file: !3, line: 132, type: !239)
!457 = !DILocalVariable(name: "num", scope: !446, file: !3, line: 133, type: !234)
!458 = !DILocalVariable(name: "n", scope: !446, file: !3, line: 134, type: !195)
!459 = !DILocalVariable(name: "ret", scope: !446, file: !3, line: 135, type: !229)
!460 = !DILocalVariable(name: "count", scope: !446, file: !3, line: 136, type: !411)
!461 = !DILabel(scope: !446, name: "bad", file: !3, line: 171)
!462 = !DILocation(line: 130, column: 28, scope: !446)
!463 = !DILocation(line: 130, column: 41, scope: !446)
!464 = !DILocation(line: 130, column: 57, scope: !446)
!465 = !DILocation(line: 130, column: 72, scope: !446)
!466 = !DILocation(line: 132, column: 2, scope: !446)
!467 = !DILocation(line: 132, column: 23, scope: !446)
!468 = !DILocation(line: 132, column: 27, scope: !446)
!469 = !DILocation(line: 132, column: 34, scope: !446)
!470 = !DILocation(line: 132, column: 40, scope: !446)
!471 = !DILocation(line: 132, column: 44, scope: !446)
!472 = !DILocation(line: 132, column: 42, scope: !446)
!473 = !DILocation(line: 133, column: 2, scope: !446)
!474 = !DILocation(line: 133, column: 16, scope: !446)
!475 = !DILocation(line: 134, column: 2, scope: !446)
!476 = !DILocation(line: 134, column: 16, scope: !446)
!477 = !DILocation(line: 135, column: 2, scope: !446)
!478 = !DILocation(line: 135, column: 9, scope: !446)
!479 = !DILocation(line: 136, column: 2, scope: !446)
!480 = !DILocation(line: 136, column: 6, scope: !446)
!481 = !DILocation(line: 138, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !446, file: !3, line: 138, column: 6)
!483 = !DILocation(line: 138, column: 11, scope: !482)
!484 = !DILocation(line: 138, column: 8, scope: !482)
!485 = !DILocation(line: 138, column: 6, scope: !446)
!486 = !DILocation(line: 139, column: 3, scope: !482)
!487 = !DILocation(line: 141, column: 8, scope: !446)
!488 = !DILocation(line: 141, column: 6, scope: !446)
!489 = !DILocation(line: 141, column: 4, scope: !446)
!490 = !DILocation(line: 142, column: 25, scope: !446)
!491 = !DILocation(line: 142, column: 33, scope: !446)
!492 = !DILocation(line: 142, column: 51, scope: !446)
!493 = !DILocation(line: 142, column: 53, scope: !446)
!494 = !DILocation(line: 142, column: 59, scope: !446)
!495 = !DILocation(line: 142, column: 61, scope: !446)
!496 = !DILocation(line: 142, column: 16, scope: !446)
!497 = !DILocation(line: 142, column: 14, scope: !446)
!498 = !DILocation(line: 142, column: 8, scope: !446)
!499 = !DILocation(line: 142, column: 6, scope: !446)
!500 = !DILocation(line: 143, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !446, file: !3, line: 143, column: 6)
!502 = !DILocation(line: 143, column: 15, scope: !501)
!503 = !DILocation(line: 143, column: 12, scope: !501)
!504 = !DILocation(line: 143, column: 6, scope: !446)
!505 = !DILocation(line: 144, column: 3, scope: !501)
!506 = !DILocation(line: 145, column: 12, scope: !446)
!507 = !DILocation(line: 145, column: 9, scope: !446)
!508 = !DILocation(line: 146, column: 13, scope: !446)
!509 = !DILocation(line: 146, column: 10, scope: !446)
!510 = !DILocation(line: 148, column: 2, scope: !446)
!511 = !DILocation(line: 148, column: 9, scope: !446)
!512 = !DILocation(line: 148, column: 13, scope: !446)
!513 = !DILocation(line: 148, column: 11, scope: !446)
!514 = !DILocation(line: 149, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !446, file: !3, line: 148, column: 18)
!516 = !DILocation(line: 149, column: 7, scope: !515)
!517 = !DILocation(line: 149, column: 5, scope: !515)
!518 = !DILocation(line: 150, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 150, column: 7)
!520 = !DILocation(line: 150, column: 11, scope: !519)
!521 = !DILocation(line: 150, column: 7, scope: !515)
!522 = !DILocation(line: 151, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 150, column: 20)
!524 = !DILocation(line: 151, column: 8, scope: !523)
!525 = !DILocation(line: 152, column: 3, scope: !523)
!526 = !DILocation(line: 153, column: 10, scope: !527)
!527 = distinct !DILexicalBlock(scope: !519, file: !3, line: 152, column: 10)
!528 = !DILocation(line: 153, column: 12, scope: !527)
!529 = !DILocation(line: 153, column: 8, scope: !527)
!530 = !DILocation(line: 154, column: 4, scope: !527)
!531 = !DILocation(line: 155, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 155, column: 9)
!533 = distinct !DILexicalBlock(scope: !527, file: !3, line: 154, column: 7)
!534 = !DILocation(line: 155, column: 14, scope: !532)
!535 = !DILocation(line: 155, column: 11, scope: !532)
!536 = !DILocation(line: 155, column: 9, scope: !533)
!537 = !DILocation(line: 156, column: 6, scope: !532)
!538 = !DILocation(line: 157, column: 11, scope: !533)
!539 = !DILocation(line: 157, column: 9, scope: !533)
!540 = !DILocation(line: 157, column: 7, scope: !533)
!541 = !DILocation(line: 158, column: 9, scope: !533)
!542 = !DILocation(line: 159, column: 12, scope: !533)
!543 = !DILocation(line: 159, column: 14, scope: !533)
!544 = !DILocation(line: 159, column: 9, scope: !533)
!545 = !DILocation(line: 160, column: 4, scope: !533)
!546 = !DILocation(line: 160, column: 13, scope: !527)
!547 = !DILocation(line: 160, column: 15, scope: !527)
!548 = distinct !{!548, !530, !549, !288, !289}
!549 = !DILocation(line: 160, column: 21, scope: !527)
!550 = !DILocation(line: 162, column: 27, scope: !515)
!551 = !DILocation(line: 162, column: 35, scope: !515)
!552 = !DILocation(line: 162, column: 52, scope: !515)
!553 = !DILocation(line: 162, column: 18, scope: !515)
!554 = !DILocation(line: 162, column: 16, scope: !515)
!555 = !DILocation(line: 162, column: 10, scope: !515)
!556 = !DILocation(line: 162, column: 7, scope: !515)
!557 = !DILocation(line: 163, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !515, file: !3, line: 163, column: 7)
!559 = !DILocation(line: 163, column: 16, scope: !558)
!560 = !DILocation(line: 163, column: 13, scope: !558)
!561 = !DILocation(line: 163, column: 7, scope: !515)
!562 = !DILocation(line: 164, column: 4, scope: !558)
!563 = !DILocation(line: 165, column: 13, scope: !515)
!564 = !DILocation(line: 165, column: 10, scope: !515)
!565 = !DILocation(line: 166, column: 14, scope: !515)
!566 = !DILocation(line: 166, column: 11, scope: !515)
!567 = distinct !{!567, !510, !568, !288, !289}
!568 = !DILocation(line: 167, column: 2, scope: !446)
!569 = !DILocation(line: 169, column: 9, scope: !446)
!570 = !DILocation(line: 169, column: 2, scope: !446)
!571 = !DILocation(line: 171, column: 1, scope: !446)
!572 = !DILocation(line: 172, column: 11, scope: !446)
!573 = !DILocation(line: 172, column: 19, scope: !446)
!574 = !DILocation(line: 172, column: 2, scope: !446)
!575 = !DILocation(line: 173, column: 2, scope: !446)
!576 = !DILocation(line: 174, column: 1, scope: !446)
!577 = !DISubprogram(name: "snprintf", scope: !578, file: !578, line: 12, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!579 = !DISubroutineType(types: !580)
!580 = !{!411, !449, !229, !581, null}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!582 = distinct !DISubprogram(name: "sprint_OID", scope: !3, file: !3, line: 186, type: !583, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!411, !5, !449, !229}
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(name: "oid", arg: 1, scope: !582, file: !3, line: 186, type: !5)
!587 = !DILocalVariable(name: "buffer", arg: 2, scope: !582, file: !3, line: 186, type: !449)
!588 = !DILocalVariable(name: "bufsize", arg: 3, scope: !582, file: !3, line: 186, type: !229)
!589 = !DILocalVariable(name: "ret", scope: !582, file: !3, line: 188, type: !411)
!590 = !DILocation(line: 186, column: 25, scope: !582)
!591 = !DILocation(line: 186, column: 36, scope: !582)
!592 = !DILocation(line: 186, column: 51, scope: !582)
!593 = !DILocation(line: 188, column: 2, scope: !582)
!594 = !DILocation(line: 188, column: 6, scope: !582)
!595 = !DILocation(line: 190, column: 2, scope: !582)
!596 = !DILocation(line: 190, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 190, column: 2)
!598 = distinct !DILexicalBlock(scope: !582, file: !3, line: 190, column: 2)
!599 = !DILocation(line: 190, column: 2, scope: !598)
!600 = !DILocation(line: 190, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !3, line: 190, column: 2)
!602 = !DILocation(line: 190, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !601, file: !3, line: 190, column: 2)
!604 = !DILocation(line: 190, column: 2, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 190, column: 2)
!606 = !{i64 2152280876, i64 2152280905, i64 2152280951, i64 2152281009, i64 2152281063, i64 2152281117, i64 2152281172, i64 2152281203}
!607 = !DILocation(line: 192, column: 40, scope: !582)
!608 = !DILocation(line: 192, column: 30, scope: !582)
!609 = !DILocation(line: 192, column: 28, scope: !582)
!610 = !DILocation(line: 193, column: 15, scope: !582)
!611 = !DILocation(line: 193, column: 19, scope: !582)
!612 = !DILocation(line: 193, column: 5, scope: !582)
!613 = !DILocation(line: 193, column: 36, scope: !582)
!614 = !DILocation(line: 193, column: 26, scope: !582)
!615 = !DILocation(line: 193, column: 24, scope: !582)
!616 = !DILocation(line: 194, column: 5, scope: !582)
!617 = !DILocation(line: 194, column: 13, scope: !582)
!618 = !DILocation(line: 192, column: 8, scope: !582)
!619 = !DILocation(line: 192, column: 6, scope: !582)
!620 = !DILocation(line: 195, column: 2, scope: !582)
!621 = !DILocation(line: 195, column: 2, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 195, column: 2)
!623 = distinct !DILexicalBlock(scope: !582, file: !3, line: 195, column: 2)
!624 = !DILocation(line: 195, column: 2, scope: !623)
!625 = !DILocation(line: 195, column: 2, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 195, column: 2)
!627 = !DILocation(line: 195, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 195, column: 2)
!629 = !DILocation(line: 195, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 195, column: 2)
!631 = !{i64 2152281858, i64 2152281887, i64 2152281933, i64 2152281991, i64 2152282045, i64 2152282099, i64 2152282154, i64 2152282185}
!632 = !DILocation(line: 196, column: 9, scope: !582)
!633 = !DILocation(line: 197, column: 1, scope: !582)
!634 = !DILocation(line: 196, column: 2, scope: !582)
