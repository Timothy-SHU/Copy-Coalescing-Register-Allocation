; ModuleID = 'lib/sg_pool.c'
source_filename = "lib/sg_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sg_free_table_chained: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sg_free_table_chained ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sg_alloc_table_chained: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sg_alloc_table_chained ; .previous"
module asm ".section\09\22.initcall4.init..kmod_sg_pool__280_180_sg_pool_init\22, \22a\22\09\09"
module asm "__initcall__kmod_sg_pool__280_180_sg_pool_init4:\09\09\09"
module asm ".long\09__initstub__kmod_sg_pool__280_180_sg_pool_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.sg_pool = type { i64, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID___addressable_sg_free_table_chained278 = internal global ptr @sg_free_table_chained, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"lib/sg_pool.c\00", align 1, !dbg !12
@__UNIQUE_ID___addressable_sg_alloc_table_chained279 = internal global ptr @sg_alloc_table_chained, section ".discard.addressable", align 8, !dbg !18
@__UNIQUE_ID___addressable___initstub__kmod_sg_pool__280_180_sg_pool_init4281 = internal global ptr @__initstub__kmod_sg_pool__280_180_sg_pool_init4, section ".discard.addressable", align 8, !dbg !20
@sg_pools = internal global [5 x %struct.sg_pool] [%struct.sg_pool { i64 8, ptr @.str.1, ptr null, ptr null }, %struct.sg_pool { i64 16, ptr @.str.2, ptr null, ptr null }, %struct.sg_pool { i64 32, ptr @.str.3, ptr null, ptr null }, %struct.sg_pool { i64 64, ptr @.str.4, ptr null, ptr null }, %struct.sg_pool { i64 128, ptr @.str.5, ptr null, ptr null }], align 16, !dbg !41
@.str.1 = private unnamed_addr constant [9 x i8] c"sgpool-8\00", align 1, !dbg !22
@.str.2 = private unnamed_addr constant [10 x i8] c"sgpool-16\00", align 1, !dbg !27
@.str.3 = private unnamed_addr constant [10 x i8] c"sgpool-32\00", align 1, !dbg !32
@.str.4 = private unnamed_addr constant [10 x i8] c"sgpool-64\00", align 1, !dbg !34
@.str.5 = private unnamed_addr constant [11 x i8] c"sgpool-128\00", align 1, !dbg !36
@.str.6 = private unnamed_addr constant [34 x i8] c"\013SG_POOL: can't init sg slab %s\0A\00", align 1, !dbg !136
@.str.7 = private unnamed_addr constant [37 x i8] c"\013SG_POOL: can't init sg mempool %s\0A\00", align 1, !dbg !141
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_sg_free_table_chained278, ptr @__UNIQUE_ID___addressable_sg_alloc_table_chained279, ptr @__UNIQUE_ID___addressable___initstub__kmod_sg_pool__280_180_sg_pool_init4281], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sg_free_table_chained(ptr noundef %table, i32 noundef %nents_first_chunk) #0 align 16 !dbg !155 {
entry:
  %table.addr = alloca ptr, align 8
  %nents_first_chunk.addr = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !179, metadata !DIExpression()), !dbg !181
  store i32 %nents_first_chunk, ptr %nents_first_chunk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents_first_chunk.addr, metadata !180, metadata !DIExpression()), !dbg !182
  %0 = load ptr, ptr %table.addr, align 8, !dbg !183
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2, !dbg !185
  %1 = load i32, ptr %orig_nents, align 4, !dbg !185
  %2 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !186
  %cmp = icmp ule i32 %1, %2, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  br label %return, !dbg !189

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !190
  %cmp1 = icmp eq i32 %3, 1, !dbg !192
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !193

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %nents_first_chunk.addr, align 4, !dbg !194
  br label %if.end3, !dbg !195

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %table.addr, align 8, !dbg !196
  %5 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !197
  %6 = load ptr, ptr %table.addr, align 8, !dbg !198
  %orig_nents4 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 2, !dbg !199
  %7 = load i32, ptr %orig_nents4, align 4, !dbg !199
  call void @__sg_free_table(ptr noundef %4, i32 noundef 128, i32 noundef %5, ptr noundef @sg_pool_free, i32 noundef %7) #9, !dbg !200
  br label %return, !dbg !201

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !202 dso_local void @__sg_free_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_pool_free(ptr noundef %sgl, i32 noundef %nents) #0 align 16 !dbg !209 {
entry:
  %sgl.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %sgp = alloca ptr, align 8
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !211, metadata !DIExpression()), !dbg !215
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !212, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgp) #10, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %sgp, metadata !213, metadata !DIExpression()), !dbg !218
  %0 = load i32, ptr %nents.addr, align 4, !dbg !219
  %conv = trunc i32 %0 to i16, !dbg !219
  %call = call i32 @sg_pool_index(i16 noundef zeroext %conv) #9, !dbg !220
  %idx.ext = zext i32 %call to i64, !dbg !221
  %add.ptr = getelementptr %struct.sg_pool, ptr @sg_pools, i64 %idx.ext, !dbg !221
  store ptr %add.ptr, ptr %sgp, align 8, !dbg !222
  %1 = load ptr, ptr %sgl.addr, align 8, !dbg !223
  %2 = load ptr, ptr %sgp, align 8, !dbg !224
  %pool = getelementptr inbounds %struct.sg_pool, ptr %2, i32 0, i32 3, !dbg !225
  %3 = load ptr, ptr %pool, align 8, !dbg !225
  call void @mempool_free(ptr noundef %1, ptr noundef %3) #9, !dbg !226
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgp) #10, !dbg !227
  ret void, !dbg !227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sg_alloc_table_chained(ptr noundef %table, i32 noundef %nents, ptr noundef %first_chunk, i32 noundef %nents_first_chunk) #0 align 16 !dbg !228 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %first_chunk.addr = alloca ptr, align 8
  %nents_first_chunk.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !232, metadata !DIExpression()), !dbg !237
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !233, metadata !DIExpression()), !dbg !238
  store ptr %first_chunk, ptr %first_chunk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_chunk.addr, metadata !234, metadata !DIExpression()), !dbg !239
  store i32 %nents_first_chunk, ptr %nents_first_chunk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents_first_chunk.addr, metadata !235, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !236, metadata !DIExpression()), !dbg !242
  br label %do.body, !dbg !243

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %nents.addr, align 4, !dbg !244
  %tobool = icmp ne i32 %0, 0, !dbg !244
  %lnot = xor i1 %tobool, true, !dbg !244
  %lnot1 = xor i1 %lnot, true, !dbg !244
  %lnot2 = xor i1 %lnot1, true, !dbg !244
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !244
  %conv = sext i32 %lnot.ext to i64, !dbg !244
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !244
  %tobool3 = icmp ne i64 %expval, 0, !dbg !244
  br i1 %tobool3, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !244

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !248

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !250

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !250

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !248

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 117, i32 0, i64 12) #10, !dbg !252, !srcloc !254
  br label %do.cond7, !dbg !252

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !252

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !248

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !248

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !248

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !247

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !247

do.end12:                                         ; preds = %do.cond11
  %1 = load ptr, ptr %first_chunk.addr, align 8, !dbg !255
  %tobool13 = icmp ne ptr %1, null, !dbg !255
  br i1 %tobool13, label %land.lhs.true, label %if.end20, !dbg !257

land.lhs.true:                                    ; preds = %do.end12
  %2 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !258
  %tobool14 = icmp ne i32 %2, 0, !dbg !258
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !259

if.then15:                                        ; preds = %land.lhs.true
  %3 = load i32, ptr %nents.addr, align 4, !dbg !260
  %4 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !263
  %cmp = icmp ule i32 %3, %4, !dbg !264
  br i1 %cmp, label %if.then17, label %if.end19, !dbg !265

if.then17:                                        ; preds = %if.then15
  %5 = load i32, ptr %nents.addr, align 4, !dbg !266
  %6 = load ptr, ptr %table.addr, align 8, !dbg !268
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 2, !dbg !269
  store i32 %5, ptr %orig_nents, align 4, !dbg !270
  %7 = load ptr, ptr %table.addr, align 8, !dbg !271
  %nents18 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1, !dbg !272
  store i32 %5, ptr %nents18, align 8, !dbg !273
  %8 = load ptr, ptr %table.addr, align 8, !dbg !274
  %sgl = getelementptr inbounds %struct.sg_table, ptr %8, i32 0, i32 0, !dbg !275
  %9 = load ptr, ptr %sgl, align 8, !dbg !275
  %10 = load i32, ptr %nents.addr, align 4, !dbg !276
  call void @sg_init_table(ptr noundef %9, i32 noundef %10) #9, !dbg !277
  store i32 0, ptr %retval, align 4, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !279

if.end20:                                         ; preds = %if.end19, %land.lhs.true, %do.end12
  %11 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !280
  %cmp21 = icmp ule i32 %11, 1, !dbg !282
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !283

if.then23:                                        ; preds = %if.end20
  store ptr null, ptr %first_chunk.addr, align 8, !dbg !284
  store i32 0, ptr %nents_first_chunk.addr, align 4, !dbg !286
  br label %if.end24, !dbg !287

if.end24:                                         ; preds = %if.then23, %if.end20
  %12 = load ptr, ptr %table.addr, align 8, !dbg !288
  %13 = load i32, ptr %nents.addr, align 4, !dbg !289
  %14 = load ptr, ptr %first_chunk.addr, align 8, !dbg !290
  %15 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !291
  %call = call i32 @__sg_alloc_table(ptr noundef %12, i32 noundef %13, i32 noundef 128, ptr noundef %14, i32 noundef %15, i32 noundef 2080, ptr noundef @sg_pool_alloc) #9, !dbg !292
  store i32 %call, ptr %ret, align 4, !dbg !293
  %16 = load i32, ptr %ret, align 4, !dbg !294
  %tobool25 = icmp ne i32 %16, 0, !dbg !294
  %lnot26 = xor i1 %tobool25, true, !dbg !294
  %lnot28 = xor i1 %lnot26, true, !dbg !294
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !294
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !294
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !294
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !294
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !296

if.then33:                                        ; preds = %if.end24
  %17 = load ptr, ptr %table.addr, align 8, !dbg !297
  %18 = load i32, ptr %nents_first_chunk.addr, align 4, !dbg !298
  call void @sg_free_table_chained(ptr noundef %17, i32 noundef %18) #9, !dbg !299
  br label %if.end34, !dbg !299

if.end34:                                         ; preds = %if.then33, %if.end24
  %19 = load i32, ptr %ret, align 4, !dbg !300
  store i32 %19, ptr %retval, align 4, !dbg !301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !301

cleanup:                                          ; preds = %if.end34, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !302
  %20 = load i32, ptr %retval, align 4, !dbg !302
  ret i32 %20, !dbg !302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !303 dso_local void @sg_init_table(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !304 dso_local i32 @__sg_alloc_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_pool_alloc(i32 noundef %nents, i32 noundef %gfp_mask) #0 align 16 !dbg !311 {
entry:
  %nents.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %sgp = alloca ptr, align 8
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !313, metadata !DIExpression()), !dbg !316
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgp) #10, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %sgp, metadata !315, metadata !DIExpression()), !dbg !319
  %0 = load i32, ptr %nents.addr, align 4, !dbg !320
  %conv = trunc i32 %0 to i16, !dbg !320
  %call = call i32 @sg_pool_index(i16 noundef zeroext %conv) #9, !dbg !321
  %idx.ext = zext i32 %call to i64, !dbg !322
  %add.ptr = getelementptr %struct.sg_pool, ptr @sg_pools, i64 %idx.ext, !dbg !322
  store ptr %add.ptr, ptr %sgp, align 8, !dbg !323
  %1 = load ptr, ptr %sgp, align 8, !dbg !324
  %pool = getelementptr inbounds %struct.sg_pool, ptr %1, i32 0, i32 3, !dbg !325
  %2 = load ptr, ptr %pool, align 8, !dbg !325
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !326
  %call1 = call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef %3) #9, !dbg !327
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgp) #10, !dbg !328
  ret ptr %call1, !dbg !329
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_sg_pool__280_180_sg_pool_init4() #5 section ".init.text" align 16 !dbg !330 {
entry:
  %call = call i32 @sg_pool_init() #11, !dbg !333
  ret i32 %call, !dbg !333
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sg_pool_init() #5 section ".init.text" align 16 !dbg !334 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sgp = alloca ptr, align 8
  %size = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sgp25 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %i, metadata !336, metadata !DIExpression()), !dbg !348
  store i32 0, ptr %i, align 4, !dbg !349
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !351
  %conv = sext i32 %0 to i64, !dbg !351
  %cmp = icmp ult i64 %conv, 5, !dbg !352
  br i1 %cmp, label %for.body, label %for.end, !dbg !353

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgp) #10, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %sgp, metadata !337, metadata !DIExpression()), !dbg !355
  %1 = load i32, ptr %i, align 4, !dbg !356
  %idx.ext = sext i32 %1 to i64, !dbg !357
  %add.ptr = getelementptr %struct.sg_pool, ptr @sg_pools, i64 %idx.ext, !dbg !357
  store ptr %add.ptr, ptr %sgp, align 8, !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %size, metadata !341, metadata !DIExpression()), !dbg !359
  %2 = load ptr, ptr %sgp, align 8, !dbg !360
  %size2 = getelementptr inbounds %struct.sg_pool, ptr %2, i32 0, i32 0, !dbg !361
  %3 = load i64, ptr %size2, align 8, !dbg !361
  %mul = mul i64 %3, 32, !dbg !362
  %conv3 = trunc i64 %mul to i32, !dbg !360
  store i32 %conv3, ptr %size, align 4, !dbg !359
  %4 = load ptr, ptr %sgp, align 8, !dbg !363
  %name = getelementptr inbounds %struct.sg_pool, ptr %4, i32 0, i32 1, !dbg !364
  %5 = load ptr, ptr %name, align 8, !dbg !364
  %6 = load i32, ptr %size, align 4, !dbg !365
  %call = call ptr @kmem_cache_create(ptr noundef %5, i32 noundef %6, i32 noundef 0, i32 noundef 8192, ptr noundef null) #9, !dbg !366
  %7 = load ptr, ptr %sgp, align 8, !dbg !367
  %slab = getelementptr inbounds %struct.sg_pool, ptr %7, i32 0, i32 2, !dbg !368
  store ptr %call, ptr %slab, align 8, !dbg !369
  %8 = load ptr, ptr %sgp, align 8, !dbg !370
  %slab4 = getelementptr inbounds %struct.sg_pool, ptr %8, i32 0, i32 2, !dbg !372
  %9 = load ptr, ptr %slab4, align 8, !dbg !372
  %tobool = icmp ne ptr %9, null, !dbg !370
  br i1 %tobool, label %if.end, label %if.then, !dbg !373

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !374

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !377

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !377

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %sgp, align 8, !dbg !374
  %name5 = getelementptr inbounds %struct.sg_pool, ptr %10, i32 0, i32 1, !dbg !374
  %11 = load ptr, ptr %name5, align 8, !dbg !374
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %11) #11, !dbg !374
  store i32 %call6, ptr %tmp, align 4, !dbg !377
  %12 = load i32, ptr %tmp, align 4, !dbg !374
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %sgp, align 8, !dbg !380
  %slab7 = getelementptr inbounds %struct.sg_pool, ptr %13, i32 0, i32 2, !dbg !381
  %14 = load ptr, ptr %slab7, align 8, !dbg !381
  %call8 = call ptr @mempool_create_slab_pool(i32 noundef 2, ptr noundef %14) #9, !dbg !382
  %15 = load ptr, ptr %sgp, align 8, !dbg !383
  %pool = getelementptr inbounds %struct.sg_pool, ptr %15, i32 0, i32 3, !dbg !384
  store ptr %call8, ptr %pool, align 8, !dbg !385
  %16 = load ptr, ptr %sgp, align 8, !dbg !386
  %pool9 = getelementptr inbounds %struct.sg_pool, ptr %16, i32 0, i32 3, !dbg !388
  %17 = load ptr, ptr %pool9, align 8, !dbg !388
  %tobool10 = icmp ne ptr %17, null, !dbg !386
  br i1 %tobool10, label %if.end18, label %if.then11, !dbg !389

if.then11:                                        ; preds = %if.end
  br label %do.body12, !dbg !390

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !393

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !393

do.end14:                                         ; preds = %do.cond13
  %18 = load ptr, ptr %sgp, align 8, !dbg !390
  %name16 = getelementptr inbounds %struct.sg_pool, ptr %18, i32 0, i32 1, !dbg !390
  %19 = load ptr, ptr %name16, align 8, !dbg !390
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %19) #11, !dbg !390
  store i32 %call17, ptr %tmp15, align 4, !dbg !393
  %20 = load i32, ptr %tmp15, align 4, !dbg !390
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !395

if.end18:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !396
  br label %cleanup, !dbg !396

cleanup:                                          ; preds = %do.end14, %do.end, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgp) #10, !dbg !396
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
    i32 7, label %cleanup_sdb
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !397

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i32, ptr %i, align 4, !dbg !398
  %inc = add i32 %21, 1, !dbg !398
  store i32 %inc, ptr %i, align 4, !dbg !398
  br label %for.cond, !dbg !399, !llvm.loop !400

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !404

cleanup_sdb:                                      ; preds = %cleanup
  call void @llvm.dbg.label(metadata !342), !dbg !405
  store i32 0, ptr %i, align 4, !dbg !406
  br label %for.cond20, !dbg !407

for.cond20:                                       ; preds = %for.inc30, %cleanup_sdb
  %22 = load i32, ptr %i, align 4, !dbg !408
  %conv21 = sext i32 %22 to i64, !dbg !408
  %cmp22 = icmp ult i64 %conv21, 5, !dbg !409
  br i1 %cmp22, label %for.body24, label %for.end32, !dbg !410

for.body24:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgp25) #10, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %sgp25, metadata !343, metadata !DIExpression()), !dbg !412
  %23 = load i32, ptr %i, align 4, !dbg !413
  %idx.ext26 = sext i32 %23 to i64, !dbg !414
  %add.ptr27 = getelementptr %struct.sg_pool, ptr @sg_pools, i64 %idx.ext26, !dbg !414
  store ptr %add.ptr27, ptr %sgp25, align 8, !dbg !412
  %24 = load ptr, ptr %sgp25, align 8, !dbg !415
  %pool28 = getelementptr inbounds %struct.sg_pool, ptr %24, i32 0, i32 3, !dbg !416
  %25 = load ptr, ptr %pool28, align 8, !dbg !416
  call void @mempool_destroy(ptr noundef %25) #9, !dbg !417
  %26 = load ptr, ptr %sgp25, align 8, !dbg !418
  %slab29 = getelementptr inbounds %struct.sg_pool, ptr %26, i32 0, i32 2, !dbg !419
  %27 = load ptr, ptr %slab29, align 8, !dbg !419
  call void @kmem_cache_destroy(ptr noundef %27) #9, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgp25) #10, !dbg !421
  br label %for.inc30, !dbg !422

for.inc30:                                        ; preds = %for.body24
  %28 = load i32, ptr %i, align 4, !dbg !423
  %inc31 = add i32 %28, 1, !dbg !423
  store i32 %inc31, ptr %i, align 4, !dbg !423
  br label %for.cond20, !dbg !424, !llvm.loop !425

for.end32:                                        ; preds = %for.cond20
  store i32 -12, ptr %retval, align 4, !dbg !427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !427

cleanup33:                                        ; preds = %for.end32, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !428
  %29 = load i32, ptr %retval, align 4, !dbg !428
  ret i32 %29, !dbg !428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sg_pool_index(i16 noundef zeroext %nents) #6 align 16 !dbg !429 {
entry:
  %nents.addr = alloca i16, align 2
  %index = alloca i32, align 4
  store i16 %nents, ptr %nents.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !433, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #10, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %index, metadata !434, metadata !DIExpression()), !dbg !437
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  %0 = load i16, ptr %nents.addr, align 2, !dbg !439
  %conv = zext i16 %0 to i32, !dbg !439
  %cmp = icmp sgt i32 %conv, 128, !dbg !439
  %lnot = xor i1 %cmp, true, !dbg !439
  %lnot2 = xor i1 %lnot, true, !dbg !439
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !439
  %conv3 = sext i32 %lnot.ext to i64, !dbg !439
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !439
  %tobool = icmp ne i64 %expval, 0, !dbg !439
  br i1 %tobool, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !439

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !443

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !445

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !445

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !443

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 44, i32 0, i64 12) #10, !dbg !447, !srcloc !449
  br label %do.cond7, !dbg !447

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !447

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !443

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !443

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !443

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !442

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !442

do.end12:                                         ; preds = %do.cond11
  %1 = load i16, ptr %nents.addr, align 2, !dbg !450
  %conv13 = zext i16 %1 to i32, !dbg !450
  %cmp14 = icmp sle i32 %conv13, 8, !dbg !452
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !453

if.then16:                                        ; preds = %do.end12
  store i32 0, ptr %index, align 4, !dbg !454
  br label %if.end18, !dbg !455

if.else:                                          ; preds = %do.end12
  %2 = load i16, ptr %nents.addr, align 2, !dbg !456
  %conv17 = zext i16 %2 to i32, !dbg !456
  %call = call i32 @get_count_order(i32 noundef %conv17) #9, !dbg !457
  %sub = sub i32 %call, 3, !dbg !458
  store i32 %sub, ptr %index, align 4, !dbg !459
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %3 = load i32, ptr %index, align 4, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #10, !dbg !461
  ret i32 %3, !dbg !462
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !463 dso_local void @mempool_free(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_count_order(i32 noundef %count) #6 align 16 !dbg !466 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load i32, ptr %count.addr, align 4, !dbg !473
  %cmp = icmp eq i32 %0, 0, !dbg !475
  br i1 %cmp, label %if.then, label %if.end, !dbg !476

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !477
  br label %return, !dbg !477

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !478
  %dec = add i32 %1, -1, !dbg !478
  store i32 %dec, ptr %count.addr, align 4, !dbg !478
  %call = call i32 @fls(i32 noundef %dec) #9, !dbg !479
  store i32 %call, ptr %retval, align 4, !dbg !480
  br label %return, !dbg !480

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !481
  ret i32 %2, !dbg !481
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #7 align 16 !dbg !482 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !485, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #10, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %r, metadata !486, metadata !DIExpression()), !dbg !489
  %0 = load i32, ptr %x.addr, align 4, !dbg !490
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #12, !dbg !491, !srcloc !492
  store i32 %1, ptr %r, align 4, !dbg !491
  %2 = load i32, ptr %r, align 4, !dbg !493
  %add = add i32 %2, 1, !dbg !494
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #10, !dbg !495
  ret i32 %add, !dbg !496
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !497 dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !500 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !509 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @mempool_create_slab_pool(i32 noundef %min_nr, ptr noundef %kc) #6 align 16 !dbg !513 {
entry:
  %min_nr.addr = alloca i32, align 4
  %kc.addr = alloca ptr, align 8
  store i32 %min_nr, ptr %min_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_nr.addr, metadata !517, metadata !DIExpression()), !dbg !519
  store ptr %kc, ptr %kc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kc.addr, metadata !518, metadata !DIExpression()), !dbg !520
  %0 = load i32, ptr %min_nr.addr, align 4, !dbg !521
  %1 = load ptr, ptr %kc.addr, align 8, !dbg !522
  %call = call ptr @mempool_create(i32 noundef %0, ptr noundef @mempool_alloc_slab, ptr noundef @mempool_free_slab, ptr noundef %1) #9, !dbg !523
  ret ptr %call, !dbg !524
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !525 dso_local void @mempool_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !528 dso_local void @kmem_cache_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !531 dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sg_free_table_chained278", scope: !2, file: !3, line: 96, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.sg_pool.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/sg_pool\22 -D KBUILD_BASENAME=\22sg_pool\22 -D KBUILD_MODNAME=\22sg_pool\22 -D __KBUILD_MODNAME=kmod_sg_pool -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/sg_pool.ll lib/sg_pool.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/sg_pool.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "402f9f9edc018d2881a2fee0948b3de5")
!4 = !{!5, !6, !9, !10}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !7, line: 154, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !7, line: 155, baseType: !8)
!11 = !{!0, !12, !18, !20, !22, !27, !32, !34, !36, !41, !136, !141}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !16)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!17}
!17 = !DISubrange(count: 14)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sg_alloc_table_chained279", scope: !2, file: !3, line: 140, type: !5, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_sg_pool__280_180_sg_pool_init4281", scope: !2, file: !3, line: 180, type: !5, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 22, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 9)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 10)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !29, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 11)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "sg_pools", scope: !2, file: !3, line: 21, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1280, elements: !134)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_pool", file: !3, line: 10, size: 256, elements: !45)
!45 = !{!46, !52, !54, !58}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !3, line: 11, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !49, line: 72, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !49, line: 16, baseType: !51)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !3, line: 12, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !44, file: !3, line: 13, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !57, line: 11, flags: DIFlagFwdDecl)
!57 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !44, file: !3, line: 14, baseType: !59, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !61, line: 26, baseType: !62)
!61 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !61, line: 16, size: 576, elements: !63)
!63 = !{!64, !107, !108, !109, !111, !112, !117, !122}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !62, file: !61, line: 17, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !66, line: 29, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !66, line: 17, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 18, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 18, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !70, file: !66, line: 19, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !74, line: 14, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !73, file: !74, line: 15, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !78, line: 44, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !78, line: 14, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !78, line: 15, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !78, line: 15, size: 32, elements: !83)
!83 = !{!84, !89, !99}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !78, line: 16, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !7, line: 174, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 172, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !86, file: !7, line: 173, baseType: !9, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 24, baseType: !90, size: 16)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 24, size: 16, elements: !91)
!91 = !{!92, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !90, file: !78, line: 25, baseType: !93, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !90, file: !78, line: 26, baseType: !93, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !78, line: 28, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !78, line: 28, size: 32, elements: !101)
!101 = !{!102, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !100, file: !78, line: 29, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !105)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !78, line: 30, baseType: !103, size: 16, offset: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !62, file: !61, line: 18, baseType: !9, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !62, file: !61, line: 19, baseType: !9, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !62, file: !61, line: 20, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !62, file: !61, line: 22, baseType: !5, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !61, line: 23, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !61, line: 13, baseType: !115)
!115 = !DISubroutineType(types: !116)
!116 = !{!5, !6, !5}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !61, line: 24, baseType: !118, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !61, line: 14, baseType: !120)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !5, !5}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !61, line: 25, baseType: !123, size: 192, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !124, line: 41, baseType: !125)
!124 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !124, line: 37, size: 192, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !125, file: !124, line: 38, baseType: !65, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !125, file: !124, line: 39, baseType: !129, size: 128, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !7, line: 190, size: 128, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !7, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !7, line: 191, baseType: !132, size: 64, offset: 64)
!134 = !{!135}
!135 = !DISubrange(count: 5)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 272, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 34)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 37)
!146 = !{i32 7, !"Dwarf Version", i32 5}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 8, !"cf-protection-branch", i32 1}
!150 = !{i32 4, !"function_return_thunk_extern", i32 1}
!151 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!152 = !{i32 1, !"Code Model", i32 2}
!153 = !{i32 1, !"override-stack-alignment", i32 8}
!154 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!155 = distinct !DISubprogram(name: "sg_free_table_chained", scope: !3, file: !3, line: 84, type: !156, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158, !8}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !160, line: 39, size: 128, elements: !161)
!160 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!161 = !{!162, !176, !177}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !159, file: !160, line: 40, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !160, line: 11, size: 256, elements: !165)
!165 = !{!166, !167, !168, !169, !174, !175}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !164, file: !160, line: 12, baseType: !51, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !164, file: !160, line: 13, baseType: !8, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !164, file: !160, line: 14, baseType: !8, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !164, file: !160, line: 15, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !7, line: 149, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !173)
!173 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !164, file: !160, line: 17, baseType: !8, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !164, file: !160, line: 20, baseType: !8, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !159, file: !160, line: 41, baseType: !8, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !159, file: !160, line: 42, baseType: !8, size: 32, offset: 96)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "table", arg: 1, scope: !155, file: !3, line: 84, type: !158)
!180 = !DILocalVariable(name: "nents_first_chunk", arg: 2, scope: !155, file: !3, line: 85, type: !8)
!181 = !DILocation(line: 84, column: 45, scope: !155)
!182 = !DILocation(line: 85, column: 12, scope: !155)
!183 = !DILocation(line: 87, column: 6, scope: !184)
!184 = distinct !DILexicalBlock(scope: !155, file: !3, line: 87, column: 6)
!185 = !DILocation(line: 87, column: 13, scope: !184)
!186 = !DILocation(line: 87, column: 27, scope: !184)
!187 = !DILocation(line: 87, column: 24, scope: !184)
!188 = !DILocation(line: 87, column: 6, scope: !155)
!189 = !DILocation(line: 88, column: 3, scope: !184)
!190 = !DILocation(line: 90, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !155, file: !3, line: 90, column: 6)
!192 = !DILocation(line: 90, column: 24, scope: !191)
!193 = !DILocation(line: 90, column: 6, scope: !155)
!194 = !DILocation(line: 91, column: 21, scope: !191)
!195 = !DILocation(line: 91, column: 3, scope: !191)
!196 = !DILocation(line: 93, column: 18, scope: !155)
!197 = !DILocation(line: 93, column: 40, scope: !155)
!198 = !DILocation(line: 94, column: 4, scope: !155)
!199 = !DILocation(line: 94, column: 11, scope: !155)
!200 = !DILocation(line: 93, column: 2, scope: !155)
!201 = !DILocation(line: 95, column: 1, scope: !155)
!202 = !DISubprogram(name: "__sg_free_table", scope: !160, file: !160, line: 434, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !158, !8, !8, !205, !8}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "sg_free_fn", file: !160, line: 432, baseType: !207)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !163, !8}
!209 = distinct !DISubprogram(name: "sg_pool_free", scope: !3, file: !3, line: 54, type: !207, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!210 = !{!211, !212, !213}
!211 = !DILocalVariable(name: "sgl", arg: 1, scope: !209, file: !3, line: 54, type: !163)
!212 = !DILocalVariable(name: "nents", arg: 2, scope: !209, file: !3, line: 54, type: !8)
!213 = !DILocalVariable(name: "sgp", scope: !209, file: !3, line: 56, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!215 = !DILocation(line: 54, column: 46, scope: !209)
!216 = !DILocation(line: 54, column: 64, scope: !209)
!217 = !DILocation(line: 56, column: 2, scope: !209)
!218 = !DILocation(line: 56, column: 18, scope: !209)
!219 = !DILocation(line: 58, column: 33, scope: !209)
!220 = !DILocation(line: 58, column: 19, scope: !209)
!221 = !DILocation(line: 58, column: 17, scope: !209)
!222 = !DILocation(line: 58, column: 6, scope: !209)
!223 = !DILocation(line: 59, column: 15, scope: !209)
!224 = !DILocation(line: 59, column: 20, scope: !209)
!225 = !DILocation(line: 59, column: 25, scope: !209)
!226 = !DILocation(line: 59, column: 2, scope: !209)
!227 = !DILocation(line: 60, column: 1, scope: !209)
!228 = distinct !DISubprogram(name: "sg_alloc_table_chained", scope: !3, file: !3, line: 112, type: !229, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!9, !158, !9, !163, !8}
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(name: "table", arg: 1, scope: !228, file: !3, line: 112, type: !158)
!233 = !DILocalVariable(name: "nents", arg: 2, scope: !228, file: !3, line: 112, type: !9)
!234 = !DILocalVariable(name: "first_chunk", arg: 3, scope: !228, file: !3, line: 113, type: !163)
!235 = !DILocalVariable(name: "nents_first_chunk", arg: 4, scope: !228, file: !3, line: 113, type: !8)
!236 = !DILocalVariable(name: "ret", scope: !228, file: !3, line: 115, type: !9)
!237 = !DILocation(line: 112, column: 45, scope: !228)
!238 = !DILocation(line: 112, column: 56, scope: !228)
!239 = !DILocation(line: 113, column: 23, scope: !228)
!240 = !DILocation(line: 113, column: 45, scope: !228)
!241 = !DILocation(line: 115, column: 2, scope: !228)
!242 = !DILocation(line: 115, column: 6, scope: !228)
!243 = !DILocation(line: 117, column: 2, scope: !228)
!244 = !DILocation(line: 117, column: 2, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 117, column: 2)
!246 = distinct !DILexicalBlock(scope: !228, file: !3, line: 117, column: 2)
!247 = !DILocation(line: 117, column: 2, scope: !246)
!248 = !DILocation(line: 117, column: 2, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 117, column: 2)
!250 = !DILocation(line: 117, column: 2, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !3, line: 117, column: 2)
!252 = !DILocation(line: 117, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 117, column: 2)
!254 = !{i64 2154026974, i64 2154027003, i64 2154027049, i64 2154027107, i64 2154027161, i64 2154027215, i64 2154027270, i64 2154027301}
!255 = !DILocation(line: 119, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !228, file: !3, line: 119, column: 6)
!257 = !DILocation(line: 119, column: 18, scope: !256)
!258 = !DILocation(line: 119, column: 21, scope: !256)
!259 = !DILocation(line: 119, column: 6, scope: !228)
!260 = !DILocation(line: 120, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 120, column: 7)
!262 = distinct !DILexicalBlock(scope: !256, file: !3, line: 119, column: 40)
!263 = !DILocation(line: 120, column: 16, scope: !261)
!264 = !DILocation(line: 120, column: 13, scope: !261)
!265 = !DILocation(line: 120, column: 7, scope: !262)
!266 = !DILocation(line: 121, column: 39, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !3, line: 120, column: 35)
!268 = !DILocation(line: 121, column: 19, scope: !267)
!269 = !DILocation(line: 121, column: 26, scope: !267)
!270 = !DILocation(line: 121, column: 37, scope: !267)
!271 = !DILocation(line: 121, column: 4, scope: !267)
!272 = !DILocation(line: 121, column: 11, scope: !267)
!273 = !DILocation(line: 121, column: 17, scope: !267)
!274 = !DILocation(line: 122, column: 18, scope: !267)
!275 = !DILocation(line: 122, column: 25, scope: !267)
!276 = !DILocation(line: 122, column: 30, scope: !267)
!277 = !DILocation(line: 122, column: 4, scope: !267)
!278 = !DILocation(line: 123, column: 4, scope: !267)
!279 = !DILocation(line: 125, column: 2, scope: !262)
!280 = !DILocation(line: 128, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !228, file: !3, line: 128, column: 6)
!282 = !DILocation(line: 128, column: 24, scope: !281)
!283 = !DILocation(line: 128, column: 6, scope: !228)
!284 = !DILocation(line: 129, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 128, column: 30)
!286 = !DILocation(line: 130, column: 21, scope: !285)
!287 = !DILocation(line: 131, column: 2, scope: !285)
!288 = !DILocation(line: 133, column: 25, scope: !228)
!289 = !DILocation(line: 133, column: 32, scope: !228)
!290 = !DILocation(line: 134, column: 11, scope: !228)
!291 = !DILocation(line: 134, column: 24, scope: !228)
!292 = !DILocation(line: 133, column: 8, scope: !228)
!293 = !DILocation(line: 133, column: 6, scope: !228)
!294 = !DILocation(line: 136, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !228, file: !3, line: 136, column: 6)
!296 = !DILocation(line: 136, column: 6, scope: !228)
!297 = !DILocation(line: 137, column: 25, scope: !295)
!298 = !DILocation(line: 137, column: 32, scope: !295)
!299 = !DILocation(line: 137, column: 3, scope: !295)
!300 = !DILocation(line: 138, column: 9, scope: !228)
!301 = !DILocation(line: 138, column: 2, scope: !228)
!302 = !DILocation(line: 139, column: 1, scope: !228)
!303 = !DISubprogram(name: "sg_init_table", scope: !160, file: !160, line: 423, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubprogram(name: "__sg_alloc_table", scope: !160, file: !160, line: 438, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{!9, !158, !8, !8, !163, !8, !6, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "sg_alloc_fn", file: !160, line: 431, baseType: !309)
!309 = !DISubroutineType(types: !310)
!310 = !{!163, !8, !6}
!311 = distinct !DISubprogram(name: "sg_pool_alloc", scope: !3, file: !3, line: 62, type: !309, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315}
!313 = !DILocalVariable(name: "nents", arg: 1, scope: !311, file: !3, line: 62, type: !8)
!314 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !311, file: !3, line: 62, type: !6)
!315 = !DILocalVariable(name: "sgp", scope: !311, file: !3, line: 64, type: !214)
!316 = !DILocation(line: 62, column: 55, scope: !311)
!317 = !DILocation(line: 62, column: 68, scope: !311)
!318 = !DILocation(line: 64, column: 2, scope: !311)
!319 = !DILocation(line: 64, column: 18, scope: !311)
!320 = !DILocation(line: 66, column: 33, scope: !311)
!321 = !DILocation(line: 66, column: 19, scope: !311)
!322 = !DILocation(line: 66, column: 17, scope: !311)
!323 = !DILocation(line: 66, column: 6, scope: !311)
!324 = !DILocation(line: 67, column: 23, scope: !311)
!325 = !DILocation(line: 67, column: 28, scope: !311)
!326 = !DILocation(line: 67, column: 34, scope: !311)
!327 = !DILocation(line: 67, column: 9, scope: !311)
!328 = !DILocation(line: 68, column: 1, scope: !311)
!329 = !DILocation(line: 67, column: 2, scope: !311)
!330 = distinct !DISubprogram(name: "__initstub__kmod_sg_pool__280_180_sg_pool_init4", scope: !3, file: !3, line: 180, type: !331, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!331 = !DISubroutineType(types: !332)
!332 = !{!9}
!333 = !DILocation(line: 180, column: 1, scope: !330)
!334 = distinct !DISubprogram(name: "sg_pool_init", scope: !3, file: !3, line: 142, type: !331, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!335 = !{!336, !337, !341, !342, !343}
!336 = !DILocalVariable(name: "i", scope: !334, file: !3, line: 144, type: !9)
!337 = !DILocalVariable(name: "sgp", scope: !338, file: !3, line: 147, type: !214)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 146, column: 38)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 146, column: 2)
!340 = distinct !DILexicalBlock(scope: !334, file: !3, line: 146, column: 2)
!341 = !DILocalVariable(name: "size", scope: !338, file: !3, line: 148, type: !9)
!342 = !DILabel(scope: !334, name: "cleanup_sdb", file: !3, line: 169)
!343 = !DILocalVariable(name: "sgp", scope: !344, file: !3, line: 171, type: !214)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 170, column: 38)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 170, column: 2)
!346 = distinct !DILexicalBlock(scope: !334, file: !3, line: 170, column: 2)
!347 = !DILocation(line: 144, column: 2, scope: !334)
!348 = !DILocation(line: 144, column: 6, scope: !334)
!349 = !DILocation(line: 146, column: 9, scope: !340)
!350 = !DILocation(line: 146, column: 7, scope: !340)
!351 = !DILocation(line: 146, column: 14, scope: !339)
!352 = !DILocation(line: 146, column: 16, scope: !339)
!353 = !DILocation(line: 146, column: 2, scope: !340)
!354 = !DILocation(line: 147, column: 3, scope: !338)
!355 = !DILocation(line: 147, column: 19, scope: !338)
!356 = !DILocation(line: 147, column: 36, scope: !338)
!357 = !DILocation(line: 147, column: 34, scope: !338)
!358 = !DILocation(line: 148, column: 3, scope: !338)
!359 = !DILocation(line: 148, column: 7, scope: !338)
!360 = !DILocation(line: 148, column: 14, scope: !338)
!361 = !DILocation(line: 148, column: 19, scope: !338)
!362 = !DILocation(line: 148, column: 24, scope: !338)
!363 = !DILocation(line: 150, column: 33, scope: !338)
!364 = !DILocation(line: 150, column: 38, scope: !338)
!365 = !DILocation(line: 150, column: 44, scope: !338)
!366 = !DILocation(line: 150, column: 15, scope: !338)
!367 = !DILocation(line: 150, column: 3, scope: !338)
!368 = !DILocation(line: 150, column: 8, scope: !338)
!369 = !DILocation(line: 150, column: 13, scope: !338)
!370 = !DILocation(line: 152, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !338, file: !3, line: 152, column: 7)
!372 = !DILocation(line: 152, column: 13, scope: !371)
!373 = !DILocation(line: 152, column: 7, scope: !338)
!374 = !DILocation(line: 153, column: 4, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 153, column: 4)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 152, column: 19)
!377 = !DILocation(line: 153, column: 4, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 153, column: 4)
!379 = !DILocation(line: 155, column: 4, scope: !376)
!380 = !DILocation(line: 159, column: 12, scope: !338)
!381 = !DILocation(line: 159, column: 17, scope: !338)
!382 = !DILocation(line: 158, column: 15, scope: !338)
!383 = !DILocation(line: 158, column: 3, scope: !338)
!384 = !DILocation(line: 158, column: 8, scope: !338)
!385 = !DILocation(line: 158, column: 13, scope: !338)
!386 = !DILocation(line: 160, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !338, file: !3, line: 160, column: 7)
!388 = !DILocation(line: 160, column: 13, scope: !387)
!389 = !DILocation(line: 160, column: 7, scope: !338)
!390 = !DILocation(line: 161, column: 4, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 161, column: 4)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 160, column: 19)
!393 = !DILocation(line: 161, column: 4, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 161, column: 4)
!395 = !DILocation(line: 163, column: 4, scope: !392)
!396 = !DILocation(line: 165, column: 2, scope: !339)
!397 = !DILocation(line: 165, column: 2, scope: !338)
!398 = !DILocation(line: 146, column: 34, scope: !339)
!399 = !DILocation(line: 146, column: 2, scope: !339)
!400 = distinct !{!400, !353, !401, !402, !403}
!401 = !DILocation(line: 165, column: 2, scope: !340)
!402 = !{!"llvm.loop.mustprogress"}
!403 = !{!"llvm.loop.unroll.disable"}
!404 = !DILocation(line: 167, column: 2, scope: !334)
!405 = !DILocation(line: 169, column: 1, scope: !334)
!406 = !DILocation(line: 170, column: 9, scope: !346)
!407 = !DILocation(line: 170, column: 7, scope: !346)
!408 = !DILocation(line: 170, column: 14, scope: !345)
!409 = !DILocation(line: 170, column: 16, scope: !345)
!410 = !DILocation(line: 170, column: 2, scope: !346)
!411 = !DILocation(line: 171, column: 3, scope: !344)
!412 = !DILocation(line: 171, column: 19, scope: !344)
!413 = !DILocation(line: 171, column: 36, scope: !344)
!414 = !DILocation(line: 171, column: 34, scope: !344)
!415 = !DILocation(line: 173, column: 19, scope: !344)
!416 = !DILocation(line: 173, column: 24, scope: !344)
!417 = !DILocation(line: 173, column: 3, scope: !344)
!418 = !DILocation(line: 174, column: 22, scope: !344)
!419 = !DILocation(line: 174, column: 27, scope: !344)
!420 = !DILocation(line: 174, column: 3, scope: !344)
!421 = !DILocation(line: 175, column: 2, scope: !345)
!422 = !DILocation(line: 175, column: 2, scope: !344)
!423 = !DILocation(line: 170, column: 34, scope: !345)
!424 = !DILocation(line: 170, column: 2, scope: !345)
!425 = distinct !{!425, !410, !426, !402, !403}
!426 = !DILocation(line: 175, column: 2, scope: !346)
!427 = !DILocation(line: 177, column: 2, scope: !334)
!428 = !DILocation(line: 178, column: 1, scope: !334)
!429 = distinct !DISubprogram(name: "sg_pool_index", scope: !3, file: !3, line: 40, type: !430, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!8, !105}
!432 = !{!433, !434}
!433 = !DILocalVariable(name: "nents", arg: 1, scope: !429, file: !3, line: 40, type: !105)
!434 = !DILocalVariable(name: "index", scope: !429, file: !3, line: 42, type: !8)
!435 = !DILocation(line: 40, column: 57, scope: !429)
!436 = !DILocation(line: 42, column: 2, scope: !429)
!437 = !DILocation(line: 42, column: 15, scope: !429)
!438 = !DILocation(line: 44, column: 2, scope: !429)
!439 = !DILocation(line: 44, column: 2, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 44, column: 2)
!441 = distinct !DILexicalBlock(scope: !429, file: !3, line: 44, column: 2)
!442 = !DILocation(line: 44, column: 2, scope: !441)
!443 = !DILocation(line: 44, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 44, column: 2)
!445 = !DILocation(line: 44, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !3, line: 44, column: 2)
!447 = !DILocation(line: 44, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !3, line: 44, column: 2)
!449 = !{i64 2154024105, i64 2154024134, i64 2154024180, i64 2154024238, i64 2154024292, i64 2154024346, i64 2154024401, i64 2154024432}
!450 = !DILocation(line: 46, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !429, file: !3, line: 46, column: 6)
!452 = !DILocation(line: 46, column: 12, scope: !451)
!453 = !DILocation(line: 46, column: 6, scope: !429)
!454 = !DILocation(line: 47, column: 9, scope: !451)
!455 = !DILocation(line: 47, column: 3, scope: !451)
!456 = !DILocation(line: 49, column: 27, scope: !451)
!457 = !DILocation(line: 49, column: 11, scope: !451)
!458 = !DILocation(line: 49, column: 34, scope: !451)
!459 = !DILocation(line: 49, column: 9, scope: !451)
!460 = !DILocation(line: 51, column: 9, scope: !429)
!461 = !DILocation(line: 52, column: 1, scope: !429)
!462 = !DILocation(line: 51, column: 2, scope: !429)
!463 = !DISubprogram(name: "mempool_free", scope: !61, file: !61, line: 54, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !5, !59}
!466 = distinct !DISubprogram(name: "get_count_order", scope: !467, file: !467, line: 211, type: !468, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!467 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!468 = !DISubroutineType(types: !469)
!469 = !{!9, !8}
!470 = !{!471}
!471 = !DILocalVariable(name: "count", arg: 1, scope: !466, file: !467, line: 211, type: !8)
!472 = !DILocation(line: 211, column: 48, scope: !466)
!473 = !DILocation(line: 213, column: 6, scope: !474)
!474 = distinct !DILexicalBlock(scope: !466, file: !467, line: 213, column: 6)
!475 = !DILocation(line: 213, column: 12, scope: !474)
!476 = !DILocation(line: 213, column: 6, scope: !466)
!477 = !DILocation(line: 214, column: 3, scope: !474)
!478 = !DILocation(line: 216, column: 13, scope: !466)
!479 = !DILocation(line: 216, column: 9, scope: !466)
!480 = !DILocation(line: 216, column: 2, scope: !466)
!481 = !DILocation(line: 217, column: 1, scope: !466)
!482 = distinct !DISubprogram(name: "fls", scope: !483, file: !483, line: 359, type: !468, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!483 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!484 = !{!485, !486}
!485 = !DILocalVariable(name: "x", arg: 1, scope: !482, file: !483, line: 359, type: !8)
!486 = !DILocalVariable(name: "r", scope: !482, file: !483, line: 361, type: !9)
!487 = !DILocation(line: 359, column: 45, scope: !482)
!488 = !DILocation(line: 361, column: 2, scope: !482)
!489 = !DILocation(line: 361, column: 6, scope: !482)
!490 = !DILocation(line: 375, column: 14, scope: !482)
!491 = !DILocation(line: 373, column: 2, scope: !482)
!492 = !{i64 884191}
!493 = !DILocation(line: 386, column: 9, scope: !482)
!494 = !DILocation(line: 386, column: 11, scope: !482)
!495 = !DILocation(line: 387, column: 1, scope: !482)
!496 = !DILocation(line: 386, column: 2, scope: !482)
!497 = !DISubprogram(name: "mempool_alloc", scope: !61, file: !61, line: 53, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!5, !59, !6}
!500 = !DISubprogram(name: "kmem_cache_create", scope: !501, file: !501, line: 189, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!502 = !DISubroutineType(types: !503)
!503 = !{!55, !504, !8, !8, !10, !506}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !5}
!509 = !DISubprogram(name: "_printk", scope: !510, file: !510, line: 153, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!511 = !DISubroutineType(types: !512)
!512 = !{!9, !504, null}
!513 = distinct !DISubprogram(name: "mempool_create_slab_pool", scope: !61, file: !61, line: 72, type: !514, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!59, !9, !55}
!516 = !{!517, !518}
!517 = !DILocalVariable(name: "min_nr", arg: 1, scope: !513, file: !61, line: 72, type: !9)
!518 = !DILocalVariable(name: "kc", arg: 2, scope: !513, file: !61, line: 72, type: !55)
!519 = !DILocation(line: 72, column: 30, scope: !513)
!520 = !DILocation(line: 72, column: 57, scope: !513)
!521 = !DILocation(line: 74, column: 24, scope: !513)
!522 = !DILocation(line: 75, column: 19, scope: !513)
!523 = !DILocation(line: 74, column: 9, scope: !513)
!524 = !DILocation(line: 74, column: 2, scope: !513)
!525 = !DISubprogram(name: "mempool_destroy", scope: !61, file: !61, line: 52, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !59}
!528 = !DISubprogram(name: "kmem_cache_destroy", scope: !501, file: !501, line: 197, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !55}
!531 = !DISubprogram(name: "mempool_create", scope: !61, file: !61, line: 45, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!59, !9, !113, !118, !5}
