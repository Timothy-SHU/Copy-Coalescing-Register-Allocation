; ModuleID = 'lib/crypto/mpi/mpiutil.c'
source_filename = "lib/crypto/mpi/mpiutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init..kmod_mpi__287_64_mpi_init\22, \22a\22\09\09"
module asm "__initcall__kmod_mpi__287_64_mpi_init2:\09\09\09"
module asm ".long\09__initstub__kmod_mpi__287_64_mpi_init2 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_const: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_const ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_alloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_clear: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_clear ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_set: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_set_ui: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_set_ui ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_mpi__287_64_mpi_init2288 = internal global ptr @__initstub__kmod_mpi__287_64_mpi_init2, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"\013MPI: invalid mpi_const selector %d\0A\00", align 1, !dbg !38
@constants = internal global [6 x ptr] zeroinitializer, align 16, !dbg !79
@.str.1 = private unnamed_addr constant [38 x i8] c"\013MPI: MPI subsystem not initialized\0A\00", align 1, !dbg !44
@__UNIQUE_ID___addressable_mpi_const289 = internal global ptr @mpi_const, section ".discard.addressable", align 8, !dbg !46
@__UNIQUE_ID___addressable_mpi_alloc290 = internal global ptr @mpi_alloc, section ".discard.addressable", align 8, !dbg !48
@__UNIQUE_ID___addressable_mpi_clear291 = internal global ptr @mpi_clear, section ".discard.addressable", align 8, !dbg !50
@.str.2 = private unnamed_addr constant [29 x i8] c"\016invalid flag value in mpi\0A\00", align 1, !dbg !52
@__UNIQUE_ID___addressable_mpi_free292 = internal global ptr @mpi_free, section ".discard.addressable", align 8, !dbg !57
@__UNIQUE_ID___addressable_mpi_set293 = internal global ptr @mpi_set, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable_mpi_set_ui294 = internal global ptr @mpi_set_ui, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"mpi.description=Multiprecision maths library\00", section ".modinfo", align 1, !dbg !63
@__UNIQUE_ID_file296 = internal constant [28 x i8] c"mpi.file=lib/crypto/mpi/mpi\00", section ".modinfo", align 1, !dbg !69
@__UNIQUE_ID_license297 = internal constant [16 x i8] c"mpi.license=GPL\00", section ".modinfo", align 1, !dbg !74
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !95
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_mpi__287_64_mpi_init2288, ptr @__UNIQUE_ID___addressable_mpi_const289, ptr @__UNIQUE_ID___addressable_mpi_alloc290, ptr @__UNIQUE_ID___addressable_mpi_clear291, ptr @__UNIQUE_ID___addressable_mpi_free292, ptr @__UNIQUE_ID___addressable_mpi_set293, ptr @__UNIQUE_ID___addressable_mpi_set_ui294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mpi__287_64_mpi_init2() #0 section ".init.text" align 16 !dbg !109 {
entry:
  %call = call i32 @mpi_init() #16, !dbg !112
  ret i32 %call, !dbg !112
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mpi_init() #0 section ".init.text" align 16 !dbg !113 {
entry:
  %retval = alloca i32, align 4
  %idx = alloca i32, align 4
  %value = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #17, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !115, metadata !DIExpression()), !dbg !118
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #17, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %value, metadata !116, metadata !DIExpression()), !dbg !120
  store i32 0, ptr %idx, align 4, !dbg !121
  br label %for.cond, !dbg !123

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !124
  %cmp = icmp slt i32 %0, 6, !dbg !126
  br i1 %cmp, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %idx, align 4, !dbg !128
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !130

sw.bb:                                            ; preds = %for.body
  store i64 0, ptr %value, align 8, !dbg !131
  br label %sw.epilog, !dbg !133

sw.bb1:                                           ; preds = %for.body
  store i64 1, ptr %value, align 8, !dbg !134
  br label %sw.epilog, !dbg !135

sw.bb2:                                           ; preds = %for.body
  store i64 2, ptr %value, align 8, !dbg !136
  br label %sw.epilog, !dbg !137

sw.bb3:                                           ; preds = %for.body
  store i64 3, ptr %value, align 8, !dbg !138
  br label %sw.epilog, !dbg !139

sw.bb4:                                           ; preds = %for.body
  store i64 4, ptr %value, align 8, !dbg !140
  br label %sw.epilog, !dbg !141

sw.bb5:                                           ; preds = %for.body
  store i64 8, ptr %value, align 8, !dbg !142
  br label %sw.epilog, !dbg !143

sw.default:                                       ; preds = %for.body
  br label %do.body, !dbg !144

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !146

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !146

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %idx, align 4, !dbg !144
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %2) #16, !dbg !144
  store i32 %call, ptr %tmp, align 4, !dbg !146
  %3 = load i32, ptr %tmp, align 4, !dbg !144
  store i32 -14, ptr %retval, align 4, !dbg !148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !148

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i64, ptr %value, align 8, !dbg !149
  %call6 = call ptr @mpi_alloc_set_ui(i64 noundef %4) #18, !dbg !150
  %5 = load i32, ptr %idx, align 4, !dbg !151
  %idxprom = sext i32 %5 to i64, !dbg !152
  %arrayidx = getelementptr [6 x ptr], ptr @constants, i64 0, i64 %idxprom, !dbg !152
  store ptr %call6, ptr %arrayidx, align 8, !dbg !153
  %6 = load i32, ptr %idx, align 4, !dbg !154
  %idxprom7 = sext i32 %6 to i64, !dbg !155
  %arrayidx8 = getelementptr [6 x ptr], ptr @constants, i64 0, i64 %idxprom7, !dbg !155
  %7 = load ptr, ptr %arrayidx8, align 8, !dbg !155
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 4, !dbg !156
  store i32 48, ptr %flags, align 8, !dbg !157
  br label %for.inc, !dbg !158

for.inc:                                          ; preds = %sw.epilog
  %8 = load i32, ptr %idx, align 4, !dbg !159
  %inc = add i32 %8, 1, !dbg !159
  store i32 %inc, ptr %idx, align 4, !dbg !159
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !165

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #17, !dbg !166
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #17, !dbg !166
  %9 = load i32, ptr %retval, align 4, !dbg !166
  ret i32 %9, !dbg !166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_const(i32 noundef %no) #1 align 16 !dbg !167 {
entry:
  %no.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store i32 %no, ptr %no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %no.addr, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = load i32, ptr %no.addr, align 4, !dbg !173
  %cmp = icmp slt i32 %0, 0, !dbg !175
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !176

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %no.addr, align 4, !dbg !177
  %cmp1 = icmp ugt i32 %1, 6, !dbg !178
  br i1 %cmp1, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !180

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !182

do.end:                                           ; preds = %do.body
  %2 = load i32, ptr %no.addr, align 4, !dbg !180
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %2) #16, !dbg !180
  store i32 %call, ptr %tmp, align 4, !dbg !182
  %3 = load i32, ptr %tmp, align 4, !dbg !180
  br label %if.end, !dbg !184

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %4 = load i32, ptr %no.addr, align 4, !dbg !185
  %idxprom = zext i32 %4 to i64, !dbg !187
  %arrayidx = getelementptr [6 x ptr], ptr @constants, i64 0, i64 %idxprom, !dbg !187
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !187
  %tobool = icmp ne ptr %5, null, !dbg !187
  br i1 %tobool, label %if.end7, label %if.then2, !dbg !188

if.then2:                                         ; preds = %if.end
  br label %do.body3, !dbg !189

do.body3:                                         ; preds = %if.then2
  br label %do.end4, !dbg !191

do.end4:                                          ; preds = %do.body3
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #16, !dbg !189
  store i32 %call6, ptr %tmp5, align 4, !dbg !191
  %6 = load i32, ptr %tmp5, align 4, !dbg !189
  br label %if.end7, !dbg !193

if.end7:                                          ; preds = %do.end4, %if.end
  %7 = load i32, ptr %no.addr, align 4, !dbg !194
  %idxprom8 = zext i32 %7 to i64, !dbg !195
  %arrayidx9 = getelementptr [6 x ptr], ptr @constants, i64 0, i64 %idxprom8, !dbg !195
  %8 = load ptr, ptr %arrayidx9, align 8, !dbg !195
  ret ptr %8, !dbg !196
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !197 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_alloc(i32 noundef %nlimbs) #1 align 16 !dbg !202 {
entry:
  %retval = alloca ptr, align 8
  %nlimbs.addr = alloca i32, align 4
  %a = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nlimbs, ptr %nlimbs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nlimbs.addr, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #17, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %a, metadata !207, metadata !DIExpression()), !dbg !210
  %call = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 3264) #19, !dbg !211
  store ptr %call, ptr %a, align 8, !dbg !212
  %0 = load ptr, ptr %a, align 8, !dbg !213
  %tobool = icmp ne ptr %0, null, !dbg !213
  br i1 %tobool, label %if.end, label %if.then, !dbg !215

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a, align 8, !dbg !216
  store ptr %1, ptr %retval, align 8, !dbg !217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !217

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nlimbs.addr, align 4, !dbg !218
  %tobool1 = icmp ne i32 %2, 0, !dbg !218
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !220

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %nlimbs.addr, align 4, !dbg !221
  %call3 = call ptr @mpi_alloc_limb_space(i32 noundef %3) #18, !dbg !223
  %4 = load ptr, ptr %a, align 8, !dbg !224
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 5, !dbg !225
  store ptr %call3, ptr %d, align 8, !dbg !226
  %5 = load ptr, ptr %a, align 8, !dbg !227
  %d4 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5, !dbg !229
  %6 = load ptr, ptr %d4, align 8, !dbg !229
  %tobool5 = icmp ne ptr %6, null, !dbg !227
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !230

if.then6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %a, align 8, !dbg !231
  call void @kfree(ptr noundef %7) #18, !dbg !233
  store ptr null, ptr %retval, align 8, !dbg !234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !234

if.end7:                                          ; preds = %if.then2
  br label %if.end9, !dbg !235

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %a, align 8, !dbg !236
  %d8 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 5, !dbg !238
  store ptr null, ptr %d8, align 8, !dbg !239
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end7
  %9 = load i32, ptr %nlimbs.addr, align 4, !dbg !240
  %10 = load ptr, ptr %a, align 8, !dbg !241
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 0, !dbg !242
  store i32 %9, ptr %alloced, align 8, !dbg !243
  %11 = load ptr, ptr %a, align 8, !dbg !244
  %nlimbs10 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 1, !dbg !245
  store i32 0, ptr %nlimbs10, align 4, !dbg !246
  %12 = load ptr, ptr %a, align 8, !dbg !247
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 3, !dbg !248
  store i32 0, ptr %sign, align 4, !dbg !249
  %13 = load ptr, ptr %a, align 8, !dbg !250
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 4, !dbg !251
  store i32 0, ptr %flags, align 8, !dbg !252
  %14 = load ptr, ptr %a, align 8, !dbg !253
  %nbits = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 2, !dbg !254
  store i32 0, ptr %nbits, align 8, !dbg !255
  %15 = load ptr, ptr %a, align 8, !dbg !256
  store ptr %15, ptr %retval, align 8, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !257

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #17, !dbg !258
  %16 = load ptr, ptr %retval, align 8, !dbg !258
  ret ptr %16, !dbg !258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !259 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !267, metadata !DIExpression()), !dbg !272
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !268, metadata !DIExpression()), !dbg !273
  %0 = load i64, ptr %size.addr, align 8, !dbg !274
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !275
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !276

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !277
  %tobool = icmp ne i64 %2, 0, !dbg !277
  br i1 %tobool, label %if.then, label %if.end7, !dbg !278

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %index, metadata !269, metadata !DIExpression()), !dbg !280
  %3 = load i64, ptr %size.addr, align 8, !dbg !281
  %cmp = icmp ugt i64 %3, 8192, !dbg !283
  br i1 %cmp, label %if.then1, label %if.end, !dbg !284

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !285
  %5 = load i32, ptr %flags.addr, align 4, !dbg !286
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !287
  store ptr %call, ptr %retval, align 8, !dbg !288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !288

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !289
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !289
  store i32 %call2, ptr %index, align 4, !dbg !290
  %7 = load i32, ptr %flags.addr, align 4, !dbg !291
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !292
  %9 = ptrtoint ptr %8 to i64, !dbg !292
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !293
  %idxprom = zext i32 %call3 to i64, !dbg !294
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !294
  %10 = load i32, ptr %index, align 4, !dbg !295
  %idxprom4 = zext i32 %10 to i64, !dbg !294
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !294
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !294
  %12 = load i32, ptr %flags.addr, align 4, !dbg !296
  %13 = load i64, ptr %size.addr, align 8, !dbg !297
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !298
  store ptr %call6, ptr %retval, align 8, !dbg !299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !299

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !300
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !301
  %15 = load i32, ptr %flags.addr, align 4, !dbg !302
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !303
  store ptr %call8, ptr %retval, align 8, !dbg !304
  br label %return, !dbg !304

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !305
  ret ptr %16, !dbg !305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_alloc_limb_space(i32 noundef %nlimbs) #1 align 16 !dbg !306 {
entry:
  %retval = alloca ptr, align 8
  %nlimbs.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nlimbs, ptr %nlimbs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nlimbs.addr, metadata !312, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #17, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %len, metadata !313, metadata !DIExpression()), !dbg !316
  %0 = load i32, ptr %nlimbs.addr, align 4, !dbg !317
  %conv = zext i32 %0 to i64, !dbg !317
  %mul = mul i64 %conv, 8, !dbg !318
  store i64 %mul, ptr %len, align 8, !dbg !316
  %1 = load i64, ptr %len, align 8, !dbg !319
  %tobool = icmp ne i64 %1, 0, !dbg !319
  br i1 %tobool, label %if.end, label %if.then, !dbg !321

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !322

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len, align 8, !dbg !323
  %call = call noalias ptr @kmalloc(i64 noundef %2, i32 noundef 3264) #19, !dbg !324
  store ptr %call, ptr %retval, align 8, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #17, !dbg !326
  %3 = load ptr, ptr %retval, align 8, !dbg !326
  ret ptr %3, !dbg !326
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !327 dso_local void @kfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_free_limb_space(ptr noundef %a) #1 align 16 !dbg !332 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load ptr, ptr %a.addr, align 8, !dbg !338
  %tobool = icmp ne ptr %0, null, !dbg !338
  br i1 %tobool, label %if.end, label %if.then, !dbg !340

if.then:                                          ; preds = %entry
  br label %return, !dbg !341

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !342
  call void @kfree_sensitive(ptr noundef %1) #18, !dbg !343
  br label %return, !dbg !344

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !345 dso_local void @kfree_sensitive(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_assign_limb_space(ptr noundef %a, ptr noundef %ap, i32 noundef %nlimbs) #1 align 16 !dbg !346 {
entry:
  %a.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %nlimbs.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !350, metadata !DIExpression()), !dbg !353
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !351, metadata !DIExpression()), !dbg !354
  store i32 %nlimbs, ptr %nlimbs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nlimbs.addr, metadata !352, metadata !DIExpression()), !dbg !355
  %0 = load ptr, ptr %a.addr, align 8, !dbg !356
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5, !dbg !357
  %1 = load ptr, ptr %d, align 8, !dbg !357
  call void @mpi_free_limb_space(ptr noundef %1) #18, !dbg !358
  %2 = load ptr, ptr %ap.addr, align 8, !dbg !359
  %3 = load ptr, ptr %a.addr, align 8, !dbg !360
  %d1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5, !dbg !361
  store ptr %2, ptr %d1, align 8, !dbg !362
  %4 = load i32, ptr %nlimbs.addr, align 4, !dbg !363
  %5 = load ptr, ptr %a.addr, align 8, !dbg !364
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 0, !dbg !365
  store i32 %4, ptr %alloced, align 8, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_resize(ptr noundef %a, i32 noundef %nlimbs) #1 align 16 !dbg !368 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %nlimbs.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !372, metadata !DIExpression()), !dbg !375
  store i32 %nlimbs, ptr %nlimbs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nlimbs.addr, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %p, metadata !374, metadata !DIExpression()), !dbg !378
  %0 = load i32, ptr %nlimbs.addr, align 4, !dbg !379
  %1 = load ptr, ptr %a.addr, align 8, !dbg !381
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 0, !dbg !382
  %2 = load i32, ptr %alloced, align 8, !dbg !382
  %cmp = icmp ule i32 %0, %2, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !385

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !dbg !386
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5, !dbg !388
  %4 = load ptr, ptr %d, align 8, !dbg !388
  %tobool = icmp ne ptr %4, null, !dbg !386
  br i1 %tobool, label %if.then1, label %if.else, !dbg !389

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %nlimbs.addr, align 4, !dbg !390
  %conv = zext i32 %5 to i64, !dbg !390
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !392
  store ptr %call, ptr %p, align 8, !dbg !393
  %6 = load ptr, ptr %p, align 8, !dbg !394
  %tobool2 = icmp ne ptr %6, null, !dbg !394
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !396

if.then3:                                         ; preds = %if.then1
  store i32 -12, ptr %retval, align 4, !dbg !397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end4:                                          ; preds = %if.then1
  %7 = load ptr, ptr %p, align 8, !dbg !398
  %8 = load ptr, ptr %a.addr, align 8, !dbg !399
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 5, !dbg !400
  %9 = load ptr, ptr %d5, align 8, !dbg !400
  %10 = load ptr, ptr %a.addr, align 8, !dbg !401
  %alloced6 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 0, !dbg !402
  %11 = load i32, ptr %alloced6, align 8, !dbg !402
  %conv7 = sext i32 %11 to i64, !dbg !401
  %mul = mul i64 %conv7, 8, !dbg !403
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 8 %9, i64 %mul, i1 false), !dbg !404
  %12 = load ptr, ptr %a.addr, align 8, !dbg !405
  %d8 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !406
  %13 = load ptr, ptr %d8, align 8, !dbg !406
  call void @kfree_sensitive(ptr noundef %13) #18, !dbg !407
  %14 = load ptr, ptr %p, align 8, !dbg !408
  %15 = load ptr, ptr %a.addr, align 8, !dbg !409
  %d9 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 5, !dbg !410
  store ptr %14, ptr %d9, align 8, !dbg !411
  br label %if.end17, !dbg !412

if.else:                                          ; preds = %if.end
  %16 = load i32, ptr %nlimbs.addr, align 4, !dbg !413
  %conv10 = zext i32 %16 to i64, !dbg !413
  %call11 = call noalias ptr @kcalloc(i64 noundef %conv10, i64 noundef 8, i32 noundef 3264) #21, !dbg !415
  %17 = load ptr, ptr %a.addr, align 8, !dbg !416
  %d12 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 5, !dbg !417
  store ptr %call11, ptr %d12, align 8, !dbg !418
  %18 = load ptr, ptr %a.addr, align 8, !dbg !419
  %d13 = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 5, !dbg !421
  %19 = load ptr, ptr %d13, align 8, !dbg !421
  %tobool14 = icmp ne ptr %19, null, !dbg !419
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !422

if.then15:                                        ; preds = %if.else
  store i32 -12, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end4
  %20 = load i32, ptr %nlimbs.addr, align 4, !dbg !424
  %21 = load ptr, ptr %a.addr, align 8, !dbg !425
  %alloced18 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 0, !dbg !426
  store i32 %20, ptr %alloced18, align 8, !dbg !427
  store i32 0, ptr %retval, align 4, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !429
  %22 = load i32, ptr %retval, align 4, !dbg !429
  ret i32 %22, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !430 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !434, metadata !DIExpression()), !dbg !437
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !435, metadata !DIExpression()), !dbg !438
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !436, metadata !DIExpression()), !dbg !439
  %0 = load i64, ptr %n.addr, align 8, !dbg !440
  %1 = load i64, ptr %size.addr, align 8, !dbg !441
  %2 = load i32, ptr %flags.addr, align 4, !dbg !442
  %or = or i32 %2, 256, !dbg !443
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #21, !dbg !444
  ret ptr %call, !dbg !445
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_clear(ptr noundef %a) #1 align 16 !dbg !446 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load ptr, ptr %a.addr, align 8, !dbg !452
  %tobool = icmp ne ptr %0, null, !dbg !452
  br i1 %tobool, label %if.end, label %if.then, !dbg !454

if.then:                                          ; preds = %entry
  br label %return, !dbg !455

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !456
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !457
  store i32 0, ptr %nlimbs, align 4, !dbg !458
  %2 = load ptr, ptr %a.addr, align 8, !dbg !459
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 4, !dbg !460
  store i32 0, ptr %flags, align 8, !dbg !461
  br label %return, !dbg !462

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_free(ptr noundef %a) #1 align 16 !dbg !463 {
entry:
  %a.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load ptr, ptr %a.addr, align 8, !dbg !467
  %tobool = icmp ne ptr %0, null, !dbg !467
  br i1 %tobool, label %if.end, label %if.then, !dbg !469

if.then:                                          ; preds = %entry
  br label %return, !dbg !470

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !471
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 4, !dbg !473
  %2 = load i32, ptr %flags, align 8, !dbg !473
  %and = and i32 %2, 4, !dbg !474
  %tobool1 = icmp ne i32 %and, 0, !dbg !474
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !475

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %a.addr, align 8, !dbg !476
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5, !dbg !477
  %4 = load ptr, ptr %d, align 8, !dbg !477
  call void @kfree_sensitive(ptr noundef %4) #18, !dbg !478
  br label %if.end4, !dbg !478

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %a.addr, align 8, !dbg !479
  %d3 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5, !dbg !480
  %6 = load ptr, ptr %d3, align 8, !dbg !480
  call void @mpi_free_limb_space(ptr noundef %6) #18, !dbg !481
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load ptr, ptr %a.addr, align 8, !dbg !482
  %flags5 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 4, !dbg !484
  %8 = load i32, ptr %flags5, align 8, !dbg !484
  %and6 = and i32 %8, -8, !dbg !485
  %tobool7 = icmp ne i32 %and6, 0, !dbg !485
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !486

if.then8:                                         ; preds = %if.end4
  br label %do.body, !dbg !487

do.body:                                          ; preds = %if.then8
  br label %do.end, !dbg !489

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #16, !dbg !487
  store i32 %call, ptr %tmp, align 4, !dbg !489
  %9 = load i32, ptr %tmp, align 4, !dbg !487
  br label %if.end9, !dbg !491

if.end9:                                          ; preds = %do.end, %if.end4
  %10 = load ptr, ptr %a.addr, align 8, !dbg !492
  call void @kfree(ptr noundef %10) #18, !dbg !493
  br label %return, !dbg !494

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !494
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_copy(ptr noundef %a) #1 align 16 !dbg !495 {
entry:
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %b = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !499, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %i, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #17, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %b, metadata !501, metadata !DIExpression()), !dbg !506
  %0 = load ptr, ptr %a.addr, align 8, !dbg !507
  %tobool = icmp ne ptr %0, null, !dbg !507
  br i1 %tobool, label %if.then, label %if.else, !dbg !509

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !510
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !512
  %2 = load i32, ptr %nlimbs, align 4, !dbg !512
  %call = call ptr @mpi_alloc(i32 noundef %2) #18, !dbg !513
  store ptr %call, ptr %b, align 8, !dbg !514
  %3 = load ptr, ptr %a.addr, align 8, !dbg !515
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !516
  %4 = load i32, ptr %nlimbs1, align 4, !dbg !516
  %5 = load ptr, ptr %b, align 8, !dbg !517
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !518
  store i32 %4, ptr %nlimbs2, align 4, !dbg !519
  %6 = load ptr, ptr %a.addr, align 8, !dbg !520
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3, !dbg !521
  %7 = load i32, ptr %sign, align 4, !dbg !521
  %8 = load ptr, ptr %b, align 8, !dbg !522
  %sign3 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 3, !dbg !523
  store i32 %7, ptr %sign3, align 4, !dbg !524
  %9 = load ptr, ptr %a.addr, align 8, !dbg !525
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 4, !dbg !526
  %10 = load i32, ptr %flags, align 8, !dbg !526
  %11 = load ptr, ptr %b, align 8, !dbg !527
  %flags4 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 4, !dbg !528
  store i32 %10, ptr %flags4, align 8, !dbg !529
  %12 = load ptr, ptr %b, align 8, !dbg !530
  %flags5 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 4, !dbg !531
  %13 = load i32, ptr %flags5, align 8, !dbg !532
  %and = and i32 %13, -49, !dbg !532
  store i32 %and, ptr %flags5, align 8, !dbg !532
  store i32 0, ptr %i, align 4, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, ptr %i, align 4, !dbg !536
  %15 = load ptr, ptr %b, align 8, !dbg !538
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 1, !dbg !539
  %16 = load i32, ptr %nlimbs6, align 4, !dbg !539
  %cmp = icmp slt i32 %14, %16, !dbg !540
  br i1 %cmp, label %for.body, label %for.end, !dbg !541

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %a.addr, align 8, !dbg !542
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 5, !dbg !543
  %18 = load ptr, ptr %d, align 8, !dbg !543
  %19 = load i32, ptr %i, align 4, !dbg !544
  %idxprom = sext i32 %19 to i64, !dbg !542
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !542
  %20 = load i64, ptr %arrayidx, align 8, !dbg !542
  %21 = load ptr, ptr %b, align 8, !dbg !545
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 5, !dbg !546
  %22 = load ptr, ptr %d7, align 8, !dbg !546
  %23 = load i32, ptr %i, align 4, !dbg !547
  %idxprom8 = sext i32 %23 to i64, !dbg !545
  %arrayidx9 = getelementptr i64, ptr %22, i64 %idxprom8, !dbg !545
  store i64 %20, ptr %arrayidx9, align 8, !dbg !548
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !dbg !549
  %inc = add i32 %24, 1, !dbg !549
  store i32 %inc, ptr %i, align 4, !dbg !549
  br label %for.cond, !dbg !550, !llvm.loop !551

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !553

if.else:                                          ; preds = %entry
  store ptr null, ptr %b, align 8, !dbg !554
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %25 = load ptr, ptr %b, align 8, !dbg !555
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #17, !dbg !556
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !556
  ret ptr %25, !dbg !557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_alloc_like(ptr noundef %a) #1 align 16 !dbg !558 {
entry:
  %a.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #17, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %b, metadata !561, metadata !DIExpression()), !dbg !564
  %0 = load ptr, ptr %a.addr, align 8, !dbg !565
  %tobool = icmp ne ptr %0, null, !dbg !565
  br i1 %tobool, label %if.then, label %if.else, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !568
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1, !dbg !570
  %2 = load i32, ptr %nlimbs, align 4, !dbg !570
  %call = call ptr @mpi_alloc(i32 noundef %2) #18, !dbg !571
  store ptr %call, ptr %b, align 8, !dbg !572
  %3 = load ptr, ptr %b, align 8, !dbg !573
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1, !dbg !574
  store i32 0, ptr %nlimbs1, align 4, !dbg !575
  %4 = load ptr, ptr %b, align 8, !dbg !576
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 3, !dbg !577
  store i32 0, ptr %sign, align 4, !dbg !578
  %5 = load ptr, ptr %a.addr, align 8, !dbg !579
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 4, !dbg !580
  %6 = load i32, ptr %flags, align 8, !dbg !580
  %7 = load ptr, ptr %b, align 8, !dbg !581
  %flags2 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 4, !dbg !582
  store i32 %6, ptr %flags2, align 8, !dbg !583
  br label %if.end, !dbg !584

if.else:                                          ; preds = %entry
  store ptr null, ptr %b, align 8, !dbg !585
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %b, align 8, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #17, !dbg !587
  ret ptr %8, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_snatch(ptr noundef %w, ptr noundef %u) #1 align 16 !dbg !589 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !593, metadata !DIExpression()), !dbg !595
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !594, metadata !DIExpression()), !dbg !596
  %0 = load ptr, ptr %w.addr, align 8, !dbg !597
  %tobool = icmp ne ptr %0, null, !dbg !597
  br i1 %tobool, label %if.then, label %if.end, !dbg !599

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !600
  %2 = load ptr, ptr %u.addr, align 8, !dbg !602
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5, !dbg !603
  %3 = load ptr, ptr %d, align 8, !dbg !603
  %4 = load ptr, ptr %u.addr, align 8, !dbg !604
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 0, !dbg !605
  %5 = load i32, ptr %alloced, align 8, !dbg !605
  call void @mpi_assign_limb_space(ptr noundef %1, ptr noundef %3, i32 noundef %5) #18, !dbg !606
  %6 = load ptr, ptr %u.addr, align 8, !dbg !607
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1, !dbg !608
  %7 = load i32, ptr %nlimbs, align 4, !dbg !608
  %8 = load ptr, ptr %w.addr, align 8, !dbg !609
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 1, !dbg !610
  store i32 %7, ptr %nlimbs1, align 4, !dbg !611
  %9 = load ptr, ptr %u.addr, align 8, !dbg !612
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 3, !dbg !613
  %10 = load i32, ptr %sign, align 4, !dbg !613
  %11 = load ptr, ptr %w.addr, align 8, !dbg !614
  %sign2 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 3, !dbg !615
  store i32 %10, ptr %sign2, align 4, !dbg !616
  %12 = load ptr, ptr %u.addr, align 8, !dbg !617
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 4, !dbg !618
  %13 = load i32, ptr %flags, align 8, !dbg !618
  %14 = load ptr, ptr %w.addr, align 8, !dbg !619
  %flags3 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 4, !dbg !620
  store i32 %13, ptr %flags3, align 8, !dbg !621
  %15 = load ptr, ptr %u.addr, align 8, !dbg !622
  %alloced4 = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 0, !dbg !623
  store i32 0, ptr %alloced4, align 8, !dbg !624
  %16 = load ptr, ptr %u.addr, align 8, !dbg !625
  %nlimbs5 = getelementptr inbounds %struct.gcry_mpi, ptr %16, i32 0, i32 1, !dbg !626
  store i32 0, ptr %nlimbs5, align 4, !dbg !627
  %17 = load ptr, ptr %u.addr, align 8, !dbg !628
  %d6 = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 5, !dbg !629
  store ptr null, ptr %d6, align 8, !dbg !630
  br label %if.end, !dbg !631

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %u.addr, align 8, !dbg !632
  call void @mpi_free(ptr noundef %18) #18, !dbg !633
  ret void, !dbg !634
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_set(ptr noundef %w, ptr noundef %u) #1 align 16 !dbg !635 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %up = alloca ptr, align 8
  %usize = alloca i32, align 4
  %usign = alloca i32, align 4
  %_i = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !639, metadata !DIExpression()), !dbg !648
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !640, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #17, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !641, metadata !DIExpression()), !dbg !651
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #17, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %up, metadata !642, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 4, ptr %usize) #17, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %usize, metadata !643, metadata !DIExpression()), !dbg !654
  %0 = load ptr, ptr %u.addr, align 8, !dbg !655
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !656
  %1 = load i32, ptr %nlimbs, align 4, !dbg !656
  store i32 %1, ptr %usize, align 4, !dbg !654
  call void @llvm.lifetime.start.p0(i64 4, ptr %usign) #17, !dbg !657
  call void @llvm.dbg.declare(metadata ptr %usign, metadata !645, metadata !DIExpression()), !dbg !658
  %2 = load ptr, ptr %u.addr, align 8, !dbg !659
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 3, !dbg !660
  %3 = load i32, ptr %sign, align 4, !dbg !660
  store i32 %3, ptr %usign, align 4, !dbg !658
  %4 = load ptr, ptr %w.addr, align 8, !dbg !661
  %tobool = icmp ne ptr %4, null, !dbg !661
  br i1 %tobool, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %u.addr, align 8, !dbg !664
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !664
  %6 = load i32, ptr %nlimbs1, align 4, !dbg !664
  %call = call ptr @mpi_alloc(i32 noundef %6) #18, !dbg !665
  store ptr %call, ptr %w.addr, align 8, !dbg !666
  br label %if.end, !dbg !667

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !668

do.body:                                          ; preds = %if.end
  %7 = load ptr, ptr %w.addr, align 8, !dbg !669
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 0, !dbg !669
  %8 = load i32, ptr %alloced, align 8, !dbg !669
  %9 = load i32, ptr %usize, align 4, !dbg !669
  %cmp = icmp slt i32 %8, %9, !dbg !669
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !672

if.then2:                                         ; preds = %do.body
  %10 = load ptr, ptr %w.addr, align 8, !dbg !669
  %11 = load i32, ptr %usize, align 4, !dbg !669
  %call3 = call i32 @mpi_resize(ptr noundef %10, i32 noundef %11) #18, !dbg !669
  br label %if.end4, !dbg !669

if.end4:                                          ; preds = %if.then2, %do.body
  br label %do.cond, !dbg !672

do.cond:                                          ; preds = %if.end4
  br label %do.end, !dbg !672

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %w.addr, align 8, !dbg !673
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5, !dbg !674
  %13 = load ptr, ptr %d, align 8, !dbg !674
  store ptr %13, ptr %wp, align 8, !dbg !675
  %14 = load ptr, ptr %u.addr, align 8, !dbg !676
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !677
  %15 = load ptr, ptr %d5, align 8, !dbg !677
  store ptr %15, ptr %up, align 8, !dbg !678
  br label %do.body6, !dbg !679

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #17, !dbg !680
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !646, metadata !DIExpression()), !dbg !680
  store i32 0, ptr %_i, align 4, !dbg !681
  br label %for.cond, !dbg !681

for.cond:                                         ; preds = %for.inc, %do.body6
  %16 = load i32, ptr %_i, align 4, !dbg !683
  %17 = load i32, ptr %usize, align 4, !dbg !683
  %cmp7 = icmp slt i32 %16, %17, !dbg !683
  br i1 %cmp7, label %for.body, label %for.end, !dbg !681

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %up, align 8, !dbg !683
  %19 = load i32, ptr %_i, align 4, !dbg !683
  %idxprom = sext i32 %19 to i64, !dbg !683
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !683
  %20 = load i64, ptr %arrayidx, align 8, !dbg !683
  %21 = load ptr, ptr %wp, align 8, !dbg !683
  %22 = load i32, ptr %_i, align 4, !dbg !683
  %idxprom8 = sext i32 %22 to i64, !dbg !683
  %arrayidx9 = getelementptr i64, ptr %21, i64 %idxprom8, !dbg !683
  store i64 %20, ptr %arrayidx9, align 8, !dbg !683
  br label %for.inc, !dbg !683

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %_i, align 4, !dbg !683
  %inc = add i32 %23, 1, !dbg !683
  store i32 %inc, ptr %_i, align 4, !dbg !683
  br label %for.cond, !dbg !683, !llvm.loop !685

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #17, !dbg !679
  br label %do.cond10, !dbg !680

do.cond10:                                        ; preds = %for.end
  br label %do.end11, !dbg !680

do.end11:                                         ; preds = %do.cond10
  %24 = load i32, ptr %usize, align 4, !dbg !686
  %25 = load ptr, ptr %w.addr, align 8, !dbg !687
  %nlimbs12 = getelementptr inbounds %struct.gcry_mpi, ptr %25, i32 0, i32 1, !dbg !688
  store i32 %24, ptr %nlimbs12, align 4, !dbg !689
  %26 = load ptr, ptr %u.addr, align 8, !dbg !690
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 4, !dbg !691
  %27 = load i32, ptr %flags, align 8, !dbg !691
  %28 = load ptr, ptr %w.addr, align 8, !dbg !692
  %flags13 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 4, !dbg !693
  store i32 %27, ptr %flags13, align 8, !dbg !694
  %29 = load ptr, ptr %w.addr, align 8, !dbg !695
  %flags14 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 4, !dbg !696
  %30 = load i32, ptr %flags14, align 8, !dbg !697
  %and = and i32 %30, -49, !dbg !697
  store i32 %and, ptr %flags14, align 8, !dbg !697
  %31 = load i32, ptr %usign, align 4, !dbg !698
  %32 = load ptr, ptr %w.addr, align 8, !dbg !699
  %sign15 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 3, !dbg !700
  store i32 %31, ptr %sign15, align 4, !dbg !701
  %33 = load ptr, ptr %w.addr, align 8, !dbg !702
  call void @llvm.lifetime.end.p0(i64 4, ptr %usign) #17, !dbg !703
  call void @llvm.lifetime.end.p0(i64 4, ptr %usize) #17, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #17, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #17, !dbg !703
  ret ptr %33, !dbg !704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_set_ui(ptr noundef %w, i64 noundef %u) #1 align 16 !dbg !705 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !709, metadata !DIExpression()), !dbg !711
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !710, metadata !DIExpression()), !dbg !712
  %0 = load ptr, ptr %w.addr, align 8, !dbg !713
  %tobool = icmp ne ptr %0, null, !dbg !713
  br i1 %tobool, label %if.end, label %if.then, !dbg !715

if.then:                                          ; preds = %entry
  %call = call ptr @mpi_alloc(i32 noundef 1) #18, !dbg !716
  store ptr %call, ptr %w.addr, align 8, !dbg !717
  br label %if.end, !dbg !718

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !719

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %w.addr, align 8, !dbg !720
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 0, !dbg !720
  %2 = load i32, ptr %alloced, align 8, !dbg !720
  %cmp = icmp slt i32 %2, 1, !dbg !720
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !723

if.then1:                                         ; preds = %do.body
  %3 = load ptr, ptr %w.addr, align 8, !dbg !720
  %call2 = call i32 @mpi_resize(ptr noundef %3, i32 noundef 1) #18, !dbg !720
  br label %if.end3, !dbg !720

if.end3:                                          ; preds = %if.then1, %do.body
  br label %do.end, !dbg !723

do.end:                                           ; preds = %if.end3
  %4 = load i64, ptr %u.addr, align 8, !dbg !724
  %5 = load ptr, ptr %w.addr, align 8, !dbg !725
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5, !dbg !726
  %6 = load ptr, ptr %d, align 8, !dbg !726
  %arrayidx = getelementptr i64, ptr %6, i64 0, !dbg !725
  store i64 %4, ptr %arrayidx, align 8, !dbg !727
  %7 = load i64, ptr %u.addr, align 8, !dbg !728
  %tobool4 = icmp ne i64 %7, 0, !dbg !728
  %8 = zext i1 %tobool4 to i64, !dbg !728
  %cond = select i1 %tobool4, i32 1, i32 0, !dbg !728
  %9 = load ptr, ptr %w.addr, align 8, !dbg !729
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 1, !dbg !730
  store i32 %cond, ptr %nlimbs, align 4, !dbg !731
  %10 = load ptr, ptr %w.addr, align 8, !dbg !732
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 3, !dbg !733
  store i32 0, ptr %sign, align 4, !dbg !734
  %11 = load ptr, ptr %w.addr, align 8, !dbg !735
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 4, !dbg !736
  store i32 0, ptr %flags, align 8, !dbg !737
  %12 = load ptr, ptr %w.addr, align 8, !dbg !738
  ret ptr %12, !dbg !739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mpi_alloc_set_ui(i64 noundef %u) #1 align 16 !dbg !740 {
entry:
  %u.addr = alloca i64, align 8
  %w = alloca ptr, align 8
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !744, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #17, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %w, metadata !745, metadata !DIExpression()), !dbg !748
  %call = call ptr @mpi_alloc(i32 noundef 1) #18, !dbg !749
  store ptr %call, ptr %w, align 8, !dbg !748
  %0 = load i64, ptr %u.addr, align 8, !dbg !750
  %1 = load ptr, ptr %w, align 8, !dbg !751
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5, !dbg !752
  %2 = load ptr, ptr %d, align 8, !dbg !752
  %arrayidx = getelementptr i64, ptr %2, i64 0, !dbg !751
  store i64 %0, ptr %arrayidx, align 8, !dbg !753
  %3 = load i64, ptr %u.addr, align 8, !dbg !754
  %tobool = icmp ne i64 %3, 0, !dbg !754
  %4 = zext i1 %tobool to i64, !dbg !754
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !754
  %5 = load ptr, ptr %w, align 8, !dbg !755
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1, !dbg !756
  store i32 %cond, ptr %nlimbs, align 4, !dbg !757
  %6 = load ptr, ptr %w, align 8, !dbg !758
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3, !dbg !759
  store i32 0, ptr %sign, align 4, !dbg !760
  %7 = load ptr, ptr %w, align 8, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #17, !dbg !762
  ret ptr %7, !dbg !763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_swap_cond(ptr noundef %a, ptr noundef %b, i64 noundef %swap) #1 align 16 !dbg !764 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %swap.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %nlimbs = alloca i32, align 4
  %mask = alloca i64, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !768, metadata !DIExpression()), !dbg !775
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !769, metadata !DIExpression()), !dbg !776
  store i64 %swap, ptr %swap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %swap.addr, metadata !770, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !778
  call void @llvm.dbg.declare(metadata ptr %i, metadata !771, metadata !DIExpression()), !dbg !779
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlimbs) #17, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %nlimbs, metadata !772, metadata !DIExpression()), !dbg !781
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !773, metadata !DIExpression()), !dbg !783
  %0 = load i64, ptr %swap.addr, align 8, !dbg !784
  %sub = sub i64 0, %0, !dbg !785
  store i64 %sub, ptr %mask, align 8, !dbg !783
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #17, !dbg !786
  call void @llvm.dbg.declare(metadata ptr %x, metadata !774, metadata !DIExpression()), !dbg !787
  %1 = load ptr, ptr %a.addr, align 8, !dbg !788
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 0, !dbg !790
  %2 = load i32, ptr %alloced, align 8, !dbg !790
  %3 = load ptr, ptr %b.addr, align 8, !dbg !791
  %alloced1 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 0, !dbg !792
  %4 = load i32, ptr %alloced1, align 8, !dbg !792
  %cmp = icmp sgt i32 %2, %4, !dbg !793
  br i1 %cmp, label %if.then, label %if.else, !dbg !794

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %b.addr, align 8, !dbg !795
  %alloced2 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 0, !dbg !796
  %6 = load i32, ptr %alloced2, align 8, !dbg !796
  store i32 %6, ptr %nlimbs, align 4, !dbg !797
  br label %if.end, !dbg !798

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %a.addr, align 8, !dbg !799
  %alloced3 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 0, !dbg !800
  %8 = load i32, ptr %alloced3, align 8, !dbg !800
  store i32 %8, ptr %nlimbs, align 4, !dbg !801
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %a.addr, align 8, !dbg !802
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 1, !dbg !804
  %10 = load i32, ptr %nlimbs4, align 4, !dbg !804
  %11 = load i32, ptr %nlimbs, align 4, !dbg !805
  %cmp5 = icmp sgt i32 %10, %11, !dbg !806
  br i1 %cmp5, label %if.then8, label %lor.lhs.false, !dbg !807

lor.lhs.false:                                    ; preds = %if.end
  %12 = load ptr, ptr %b.addr, align 8, !dbg !808
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 1, !dbg !809
  %13 = load i32, ptr %nlimbs6, align 4, !dbg !809
  %14 = load i32, ptr %nlimbs, align 4, !dbg !810
  %cmp7 = icmp sgt i32 %13, %14, !dbg !811
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !812

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !813

if.end9:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !814
  br label %for.cond, !dbg !816

for.cond:                                         ; preds = %for.inc, %if.end9
  %15 = load i32, ptr %i, align 4, !dbg !817
  %16 = load i32, ptr %nlimbs, align 4, !dbg !819
  %cmp10 = icmp slt i32 %15, %16, !dbg !820
  br i1 %cmp10, label %for.body, label %for.end, !dbg !821

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %mask, align 8, !dbg !822
  %18 = load ptr, ptr %a.addr, align 8, !dbg !824
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 5, !dbg !825
  %19 = load ptr, ptr %d, align 8, !dbg !825
  %20 = load i32, ptr %i, align 4, !dbg !826
  %idxprom = sext i32 %20 to i64, !dbg !824
  %arrayidx = getelementptr i64, ptr %19, i64 %idxprom, !dbg !824
  %21 = load i64, ptr %arrayidx, align 8, !dbg !824
  %22 = load ptr, ptr %b.addr, align 8, !dbg !827
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %22, i32 0, i32 5, !dbg !828
  %23 = load ptr, ptr %d11, align 8, !dbg !828
  %24 = load i32, ptr %i, align 4, !dbg !829
  %idxprom12 = sext i32 %24 to i64, !dbg !827
  %arrayidx13 = getelementptr i64, ptr %23, i64 %idxprom12, !dbg !827
  %25 = load i64, ptr %arrayidx13, align 8, !dbg !827
  %xor = xor i64 %21, %25, !dbg !830
  %and = and i64 %17, %xor, !dbg !831
  store i64 %and, ptr %x, align 8, !dbg !832
  %26 = load ptr, ptr %a.addr, align 8, !dbg !833
  %d14 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 5, !dbg !834
  %27 = load ptr, ptr %d14, align 8, !dbg !834
  %28 = load i32, ptr %i, align 4, !dbg !835
  %idxprom15 = sext i32 %28 to i64, !dbg !833
  %arrayidx16 = getelementptr i64, ptr %27, i64 %idxprom15, !dbg !833
  %29 = load i64, ptr %arrayidx16, align 8, !dbg !833
  %30 = load i64, ptr %x, align 8, !dbg !836
  %xor17 = xor i64 %29, %30, !dbg !837
  %31 = load ptr, ptr %a.addr, align 8, !dbg !838
  %d18 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 5, !dbg !839
  %32 = load ptr, ptr %d18, align 8, !dbg !839
  %33 = load i32, ptr %i, align 4, !dbg !840
  %idxprom19 = sext i32 %33 to i64, !dbg !838
  %arrayidx20 = getelementptr i64, ptr %32, i64 %idxprom19, !dbg !838
  store i64 %xor17, ptr %arrayidx20, align 8, !dbg !841
  %34 = load ptr, ptr %b.addr, align 8, !dbg !842
  %d21 = getelementptr inbounds %struct.gcry_mpi, ptr %34, i32 0, i32 5, !dbg !843
  %35 = load ptr, ptr %d21, align 8, !dbg !843
  %36 = load i32, ptr %i, align 4, !dbg !844
  %idxprom22 = sext i32 %36 to i64, !dbg !842
  %arrayidx23 = getelementptr i64, ptr %35, i64 %idxprom22, !dbg !842
  %37 = load i64, ptr %arrayidx23, align 8, !dbg !842
  %38 = load i64, ptr %x, align 8, !dbg !845
  %xor24 = xor i64 %37, %38, !dbg !846
  %39 = load ptr, ptr %b.addr, align 8, !dbg !847
  %d25 = getelementptr inbounds %struct.gcry_mpi, ptr %39, i32 0, i32 5, !dbg !848
  %40 = load ptr, ptr %d25, align 8, !dbg !848
  %41 = load i32, ptr %i, align 4, !dbg !849
  %idxprom26 = sext i32 %41 to i64, !dbg !847
  %arrayidx27 = getelementptr i64, ptr %40, i64 %idxprom26, !dbg !847
  store i64 %xor24, ptr %arrayidx27, align 8, !dbg !850
  br label %for.inc, !dbg !851

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !dbg !852
  %inc = add i32 %42, 1, !dbg !852
  store i32 %inc, ptr %i, align 4, !dbg !852
  br label %for.cond, !dbg !853, !llvm.loop !854

for.end:                                          ; preds = %for.cond
  %43 = load i64, ptr %mask, align 8, !dbg !856
  %44 = load ptr, ptr %a.addr, align 8, !dbg !857
  %nlimbs28 = getelementptr inbounds %struct.gcry_mpi, ptr %44, i32 0, i32 1, !dbg !858
  %45 = load i32, ptr %nlimbs28, align 4, !dbg !858
  %46 = load ptr, ptr %b.addr, align 8, !dbg !859
  %nlimbs29 = getelementptr inbounds %struct.gcry_mpi, ptr %46, i32 0, i32 1, !dbg !860
  %47 = load i32, ptr %nlimbs29, align 4, !dbg !860
  %xor30 = xor i32 %45, %47, !dbg !861
  %conv = sext i32 %xor30 to i64, !dbg !862
  %and31 = and i64 %43, %conv, !dbg !863
  store i64 %and31, ptr %x, align 8, !dbg !864
  %48 = load ptr, ptr %a.addr, align 8, !dbg !865
  %nlimbs32 = getelementptr inbounds %struct.gcry_mpi, ptr %48, i32 0, i32 1, !dbg !866
  %49 = load i32, ptr %nlimbs32, align 4, !dbg !866
  %conv33 = sext i32 %49 to i64, !dbg !865
  %50 = load i64, ptr %x, align 8, !dbg !867
  %xor34 = xor i64 %conv33, %50, !dbg !868
  %conv35 = trunc i64 %xor34 to i32, !dbg !865
  %51 = load ptr, ptr %a.addr, align 8, !dbg !869
  %nlimbs36 = getelementptr inbounds %struct.gcry_mpi, ptr %51, i32 0, i32 1, !dbg !870
  store i32 %conv35, ptr %nlimbs36, align 4, !dbg !871
  %52 = load ptr, ptr %b.addr, align 8, !dbg !872
  %nlimbs37 = getelementptr inbounds %struct.gcry_mpi, ptr %52, i32 0, i32 1, !dbg !873
  %53 = load i32, ptr %nlimbs37, align 4, !dbg !873
  %conv38 = sext i32 %53 to i64, !dbg !872
  %54 = load i64, ptr %x, align 8, !dbg !874
  %xor39 = xor i64 %conv38, %54, !dbg !875
  %conv40 = trunc i64 %xor39 to i32, !dbg !872
  %55 = load ptr, ptr %b.addr, align 8, !dbg !876
  %nlimbs41 = getelementptr inbounds %struct.gcry_mpi, ptr %55, i32 0, i32 1, !dbg !877
  store i32 %conv40, ptr %nlimbs41, align 4, !dbg !878
  %56 = load i64, ptr %mask, align 8, !dbg !879
  %57 = load ptr, ptr %a.addr, align 8, !dbg !880
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 3, !dbg !881
  %58 = load i32, ptr %sign, align 4, !dbg !881
  %59 = load ptr, ptr %b.addr, align 8, !dbg !882
  %sign42 = getelementptr inbounds %struct.gcry_mpi, ptr %59, i32 0, i32 3, !dbg !883
  %60 = load i32, ptr %sign42, align 4, !dbg !883
  %xor43 = xor i32 %58, %60, !dbg !884
  %conv44 = sext i32 %xor43 to i64, !dbg !885
  %and45 = and i64 %56, %conv44, !dbg !886
  store i64 %and45, ptr %x, align 8, !dbg !887
  %61 = load ptr, ptr %a.addr, align 8, !dbg !888
  %sign46 = getelementptr inbounds %struct.gcry_mpi, ptr %61, i32 0, i32 3, !dbg !889
  %62 = load i32, ptr %sign46, align 4, !dbg !889
  %conv47 = sext i32 %62 to i64, !dbg !888
  %63 = load i64, ptr %x, align 8, !dbg !890
  %xor48 = xor i64 %conv47, %63, !dbg !891
  %conv49 = trunc i64 %xor48 to i32, !dbg !888
  %64 = load ptr, ptr %a.addr, align 8, !dbg !892
  %sign50 = getelementptr inbounds %struct.gcry_mpi, ptr %64, i32 0, i32 3, !dbg !893
  store i32 %conv49, ptr %sign50, align 4, !dbg !894
  %65 = load ptr, ptr %b.addr, align 8, !dbg !895
  %sign51 = getelementptr inbounds %struct.gcry_mpi, ptr %65, i32 0, i32 3, !dbg !896
  %66 = load i32, ptr %sign51, align 4, !dbg !896
  %conv52 = sext i32 %66 to i64, !dbg !895
  %67 = load i64, ptr %x, align 8, !dbg !897
  %xor53 = xor i64 %conv52, %67, !dbg !898
  %conv54 = trunc i64 %xor53 to i32, !dbg !895
  %68 = load ptr, ptr %b.addr, align 8, !dbg !899
  %sign55 = getelementptr inbounds %struct.gcry_mpi, ptr %68, i32 0, i32 3, !dbg !900
  store i32 %conv54, ptr %sign55, align 4, !dbg !901
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !902
  br label %cleanup, !dbg !902

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #17, !dbg !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !902
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlimbs) #17, !dbg !902
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !902
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !902

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !903 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !910, metadata !DIExpression()), !dbg !912
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !911, metadata !DIExpression()), !dbg !913
  %0 = load i64, ptr %size.addr, align 8, !dbg !914
  %tobool = icmp ne i64 %0, 0, !dbg !914
  br i1 %tobool, label %if.end, label %if.then, !dbg !916

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !917
  br label %return, !dbg !917

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !918
  %cmp = icmp ule i64 %1, 8, !dbg !920
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !921

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !922
  br label %return, !dbg !922

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !923
  %cmp3 = icmp ugt i64 %2, 64, !dbg !925
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !926

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !927
  %cmp4 = icmp ule i64 %3, 96, !dbg !928
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !929

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !931
  %cmp7 = icmp ugt i64 %4, 128, !dbg !933
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !934

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !935
  %cmp9 = icmp ule i64 %5, 192, !dbg !936
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !937

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !938
  br label %return, !dbg !938

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !939
  %cmp12 = icmp ule i64 %6, 8, !dbg !941
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !942

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !943
  br label %return, !dbg !943

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !944
  %cmp15 = icmp ule i64 %7, 16, !dbg !946
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !947

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !949
  %cmp18 = icmp ule i64 %8, 32, !dbg !951
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !952

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !953
  br label %return, !dbg !953

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !954
  %cmp21 = icmp ule i64 %9, 64, !dbg !956
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !957

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !958
  br label %return, !dbg !958

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !959
  %cmp24 = icmp ule i64 %10, 128, !dbg !961
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !962

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !963
  br label %return, !dbg !963

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !964
  %cmp27 = icmp ule i64 %11, 256, !dbg !966
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !967

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !968
  br label %return, !dbg !968

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !969
  %cmp30 = icmp ule i64 %12, 512, !dbg !971
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !972

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !973
  br label %return, !dbg !973

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !974
  %cmp33 = icmp ule i64 %13, 1024, !dbg !976
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !977

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !978
  br label %return, !dbg !978

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !979
  %cmp36 = icmp ule i64 %14, 2048, !dbg !981
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !982

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !983
  br label %return, !dbg !983

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !984
  %cmp39 = icmp ule i64 %15, 4096, !dbg !986
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !987

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !988
  br label %return, !dbg !988

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !989
  %cmp42 = icmp ule i64 %16, 8192, !dbg !991
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !992

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !993
  br label %return, !dbg !993

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !994
  %cmp45 = icmp ule i64 %17, 16384, !dbg !996
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !997

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !998
  br label %return, !dbg !998

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !999
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1001
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1002

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1003
  br label %return, !dbg !1003

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1004
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1006
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1007

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1008
  br label %return, !dbg !1008

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1009
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1011
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1012

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1014
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1016
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1017

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1018
  br label %return, !dbg !1018

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1019
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1021
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1022

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1023
  br label %return, !dbg !1023

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1024
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1026
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1027

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1028
  br label %return, !dbg !1028

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1029
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1031
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1032

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1033
  br label %return, !dbg !1033

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1034, !range !1036, !noundef !1037
  %tobool69 = trunc i8 %25 to i1, !dbg !1034
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1038

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1039

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #22, !dbg !1040, !srcloc !1043
  unreachable, !dbg !1040

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1044

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1045

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1046

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1048

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1046

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !1050, !srcloc !1052
  br label %do.end75, !dbg !1050

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1046

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1054
  ret i32 %26, !dbg !1054
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1055 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !1061 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1065, metadata !DIExpression()), !dbg !1067
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1066, metadata !DIExpression()), !dbg !1068
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1069
  %and = and i32 %0, 17, !dbg !1069
  %cmp = icmp eq i32 %and, 0, !dbg !1069
  %lnot = xor i1 %cmp, true, !dbg !1069
  %lnot1 = xor i1 %lnot, true, !dbg !1069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1069
  %conv = sext i32 %lnot.ext to i64, !dbg !1069
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1069
  %tobool = icmp ne i64 %expval, 0, !dbg !1069
  br i1 %tobool, label %if.then, label %if.end, !dbg !1071

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1073
  %and2 = and i32 %1, 1, !dbg !1075
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1075
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1076

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1077
  br label %return, !dbg !1077

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1078
  br label %return, !dbg !1078

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1080
  ret i32 %2, !dbg !1080
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1081 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1082 dso_local void @__compiletime_assert_196() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1085 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1087, metadata !DIExpression()), !dbg !1091
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1088, metadata !DIExpression()), !dbg !1092
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1089, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !1090, metadata !DIExpression()), !dbg !1095
  %0 = load i64, ptr %n.addr, align 8, !dbg !1096
  %1 = load i64, ptr %size.addr, align 8, !dbg !1096
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1096
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1096
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1096
  store i64 %4, ptr %bytes, align 8, !dbg !1096
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !1096
  %lnot = xor i1 %call, true, !dbg !1096
  %lnot1 = xor i1 %lnot, true, !dbg !1096
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1096
  %conv = sext i32 %lnot.ext to i64, !dbg !1096
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1096
  %tobool = icmp ne i64 %expval, 0, !dbg !1096
  br i1 %tobool, label %if.then, label %if.end, !dbg !1098

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1099

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !1100
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !1102
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !1103

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !1104
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1105
  br i1 %8, label %if.then2, label %if.end4, !dbg !1106

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !1107
  %10 = load i32, ptr %flags.addr, align 4, !dbg !1108
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !1109
  store ptr %call3, ptr %retval, align 8, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !1111
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1112
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !1113
  store ptr %call5, ptr %retval, align 8, !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1114

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !1115
  %13 = load ptr, ptr %retval, align 8, !dbg !1115
  ret ptr %13, !dbg !1115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #15 align 16 !dbg !1116 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !1123, !range !1036, !noundef !1037
  %tobool = trunc i8 %0 to i1, !dbg !1123
  %lnot = xor i1 %tobool, true, !dbg !1123
  %lnot1 = xor i1 %lnot, true, !dbg !1123
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1123
  %conv = sext i32 %lnot.ext to i64, !dbg !1123
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1123
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1123
  ret i1 %tobool2, !dbg !1124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mpi__287_64_mpi_init2288", scope: !2, file: !3, line: 64, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpiutil.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpiutil\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpiutil.ll lib/crypto/mpi/mpiutil.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpiutil.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93bd9df9d6bd9d0b5d59c68c15ecf470")
!4 = !{!5, !15, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gcry_mpi_constants", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "MPI_C_ZERO", value: 0)
!10 = !DIEnumerator(name: "MPI_C_ONE", value: 1)
!11 = !DIEnumerator(name: "MPI_C_TWO", value: 2)
!12 = !DIEnumerator(name: "MPI_C_THREE", value: 3)
!13 = !DIEnumerator(name: "MPI_C_FOUR", value: 4)
!14 = !DIEnumerator(name: "MPI_C_EIGHT", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "false", value: 0)
!19 = !DIEnumerator(name: "true", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !21, line: 364, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!30 = !{!31, !32, !33, !35, !36}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !6, line: 26, baseType: !36)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!0, !38, !44, !46, !48, !50, !52, !57, !59, !61, !63, !69, !74, !79, !95}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 304, elements: !42)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 38)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !40, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_const289", scope: !2, file: !3, line: 78, type: !31, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_alloc290", scope: !2, file: !3, line: 112, type: !31, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_clear291", scope: !2, file: !3, line: 173, type: !31, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 232, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 29)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_free292", scope: !2, file: !3, line: 189, type: !31, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_set293", scope: !2, file: !3, line: 268, type: !31, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_set_ui294", scope: !2, file: !3, line: 284, type: !31, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description295", scope: !2, file: !3, line: 329, type: !65, isLocal: true, isDefinition: true, align: 8)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 360, elements: !67)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!67 = !{!68}
!68 = !DISubrange(count: 45)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file296", scope: !2, file: !3, line: 330, type: !71, isLocal: true, isDefinition: true, align: 8)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 224, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 28)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license297", scope: !2, file: !3, line: 330, type: !76, isLocal: true, isDefinition: true, align: 8)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 16)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "constants", scope: !2, file: !3, line: 24, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 384, elements: !93)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !6, line: 40, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !6, line: 29, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !84, file: !6, line: 30, baseType: !32, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !84, file: !6, line: 31, baseType: !32, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !84, file: !6, line: 32, baseType: !32, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !84, file: !6, line: 33, baseType: !32, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !6, line: 34, baseType: !7, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !84, file: !6, line: 37, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!93 = !{!94}
!94 = !DISubrange(count: 6)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !21, line: 480, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 168, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 21)
!100 = !{i32 7, !"Dwarf Version", i32 5}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 8, !"cf-protection-branch", i32 1}
!104 = !{i32 4, !"function_return_thunk_extern", i32 1}
!105 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!106 = !{i32 1, !"Code Model", i32 2}
!107 = !{i32 1, !"override-stack-alignment", i32 8}
!108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!109 = distinct !DISubprogram(name: "__initstub__kmod_mpi__287_64_mpi_init2", scope: !3, file: !3, line: 64, type: !110, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!110 = !DISubroutineType(types: !111)
!111 = !{!32}
!112 = !DILocation(line: 64, column: 1, scope: !109)
!113 = distinct !DISubprogram(name: "mpi_init", scope: !3, file: !3, line: 29, type: !110, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "idx", scope: !113, file: !3, line: 31, type: !32)
!116 = !DILocalVariable(name: "value", scope: !113, file: !3, line: 32, type: !36)
!117 = !DILocation(line: 31, column: 2, scope: !113)
!118 = !DILocation(line: 31, column: 6, scope: !113)
!119 = !DILocation(line: 32, column: 2, scope: !113)
!120 = !DILocation(line: 32, column: 16, scope: !113)
!121 = !DILocation(line: 34, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !3, line: 34, column: 2)
!123 = !DILocation(line: 34, column: 7, scope: !122)
!124 = !DILocation(line: 34, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !3, line: 34, column: 2)
!126 = !DILocation(line: 34, column: 20, scope: !125)
!127 = !DILocation(line: 34, column: 2, scope: !122)
!128 = !DILocation(line: 35, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 34, column: 54)
!130 = !DILocation(line: 35, column: 3, scope: !129)
!131 = !DILocation(line: 37, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !3, line: 35, column: 16)
!133 = !DILocation(line: 38, column: 4, scope: !132)
!134 = !DILocation(line: 40, column: 10, scope: !132)
!135 = !DILocation(line: 41, column: 4, scope: !132)
!136 = !DILocation(line: 43, column: 10, scope: !132)
!137 = !DILocation(line: 44, column: 4, scope: !132)
!138 = !DILocation(line: 46, column: 10, scope: !132)
!139 = !DILocation(line: 47, column: 4, scope: !132)
!140 = !DILocation(line: 49, column: 10, scope: !132)
!141 = !DILocation(line: 50, column: 4, scope: !132)
!142 = !DILocation(line: 52, column: 10, scope: !132)
!143 = !DILocation(line: 53, column: 4, scope: !132)
!144 = !DILocation(line: 55, column: 4, scope: !145)
!145 = distinct !DILexicalBlock(scope: !132, file: !3, line: 55, column: 4)
!146 = !DILocation(line: 55, column: 4, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !3, line: 55, column: 4)
!148 = !DILocation(line: 56, column: 4, scope: !132)
!149 = !DILocation(line: 58, column: 37, scope: !129)
!150 = !DILocation(line: 58, column: 20, scope: !129)
!151 = !DILocation(line: 58, column: 13, scope: !129)
!152 = !DILocation(line: 58, column: 3, scope: !129)
!153 = !DILocation(line: 58, column: 18, scope: !129)
!154 = !DILocation(line: 59, column: 13, scope: !129)
!155 = !DILocation(line: 59, column: 3, scope: !129)
!156 = !DILocation(line: 59, column: 19, scope: !129)
!157 = !DILocation(line: 59, column: 25, scope: !129)
!158 = !DILocation(line: 60, column: 2, scope: !129)
!159 = !DILocation(line: 34, column: 50, scope: !125)
!160 = !DILocation(line: 34, column: 2, scope: !125)
!161 = distinct !{!161, !127, !162, !163, !164}
!162 = !DILocation(line: 60, column: 2, scope: !122)
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = !DILocation(line: 62, column: 2, scope: !113)
!166 = !DILocation(line: 63, column: 1, scope: !113)
!167 = distinct !DISubprogram(name: "mpi_const", scope: !3, file: !3, line: 70, type: !168, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!82, !5}
!170 = !{!171}
!171 = !DILocalVariable(name: "no", arg: 1, scope: !167, file: !3, line: 70, type: !5)
!172 = !DILocation(line: 70, column: 39, scope: !167)
!173 = !DILocation(line: 72, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !3, line: 72, column: 6)
!175 = !DILocation(line: 72, column: 14, scope: !174)
!176 = !DILocation(line: 72, column: 18, scope: !174)
!177 = !DILocation(line: 72, column: 21, scope: !174)
!178 = !DILocation(line: 72, column: 24, scope: !174)
!179 = !DILocation(line: 72, column: 6, scope: !167)
!180 = !DILocation(line: 73, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !3, line: 73, column: 3)
!182 = !DILocation(line: 73, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !3, line: 73, column: 3)
!184 = !DILocation(line: 73, column: 3, scope: !174)
!185 = !DILocation(line: 74, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !167, file: !3, line: 74, column: 6)
!187 = !DILocation(line: 74, column: 7, scope: !186)
!188 = !DILocation(line: 74, column: 6, scope: !167)
!189 = !DILocation(line: 75, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 75, column: 3)
!191 = !DILocation(line: 75, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 75, column: 3)
!193 = !DILocation(line: 75, column: 3, scope: !186)
!194 = !DILocation(line: 76, column: 19, scope: !167)
!195 = !DILocation(line: 76, column: 9, scope: !167)
!196 = !DILocation(line: 76, column: 2, scope: !167)
!197 = !DISubprogram(name: "_printk", scope: !198, file: !198, line: 153, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!199 = !DISubroutineType(types: !200)
!200 = !{!32, !201, null}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!202 = distinct !DISubprogram(name: "mpi_alloc", scope: !3, file: !3, line: 87, type: !203, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!82, !7}
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "nlimbs", arg: 1, scope: !202, file: !3, line: 87, type: !7)
!207 = !DILocalVariable(name: "a", scope: !202, file: !3, line: 89, type: !82)
!208 = !DILocation(line: 87, column: 24, scope: !202)
!209 = !DILocation(line: 89, column: 2, scope: !202)
!210 = !DILocation(line: 89, column: 6, scope: !202)
!211 = !DILocation(line: 91, column: 6, scope: !202)
!212 = !DILocation(line: 91, column: 4, scope: !202)
!213 = !DILocation(line: 92, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !3, line: 92, column: 6)
!215 = !DILocation(line: 92, column: 6, scope: !202)
!216 = !DILocation(line: 93, column: 10, scope: !214)
!217 = !DILocation(line: 93, column: 3, scope: !214)
!218 = !DILocation(line: 95, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !202, file: !3, line: 95, column: 6)
!220 = !DILocation(line: 95, column: 6, scope: !202)
!221 = !DILocation(line: 96, column: 31, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 95, column: 14)
!223 = !DILocation(line: 96, column: 10, scope: !222)
!224 = !DILocation(line: 96, column: 3, scope: !222)
!225 = !DILocation(line: 96, column: 6, scope: !222)
!226 = !DILocation(line: 96, column: 8, scope: !222)
!227 = !DILocation(line: 97, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !3, line: 97, column: 7)
!229 = !DILocation(line: 97, column: 11, scope: !228)
!230 = !DILocation(line: 97, column: 7, scope: !222)
!231 = !DILocation(line: 98, column: 10, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 97, column: 14)
!233 = !DILocation(line: 98, column: 4, scope: !232)
!234 = !DILocation(line: 99, column: 4, scope: !232)
!235 = !DILocation(line: 101, column: 2, scope: !222)
!236 = !DILocation(line: 102, column: 3, scope: !237)
!237 = distinct !DILexicalBlock(scope: !219, file: !3, line: 101, column: 9)
!238 = !DILocation(line: 102, column: 6, scope: !237)
!239 = !DILocation(line: 102, column: 8, scope: !237)
!240 = !DILocation(line: 105, column: 15, scope: !202)
!241 = !DILocation(line: 105, column: 2, scope: !202)
!242 = !DILocation(line: 105, column: 5, scope: !202)
!243 = !DILocation(line: 105, column: 13, scope: !202)
!244 = !DILocation(line: 106, column: 2, scope: !202)
!245 = !DILocation(line: 106, column: 5, scope: !202)
!246 = !DILocation(line: 106, column: 12, scope: !202)
!247 = !DILocation(line: 107, column: 2, scope: !202)
!248 = !DILocation(line: 107, column: 5, scope: !202)
!249 = !DILocation(line: 107, column: 10, scope: !202)
!250 = !DILocation(line: 108, column: 2, scope: !202)
!251 = !DILocation(line: 108, column: 5, scope: !202)
!252 = !DILocation(line: 108, column: 11, scope: !202)
!253 = !DILocation(line: 109, column: 2, scope: !202)
!254 = !DILocation(line: 109, column: 5, scope: !202)
!255 = !DILocation(line: 109, column: 11, scope: !202)
!256 = !DILocation(line: 110, column: 9, scope: !202)
!257 = !DILocation(line: 110, column: 2, scope: !202)
!258 = !DILocation(line: 111, column: 1, scope: !202)
!259 = distinct !DISubprogram(name: "kmalloc", scope: !21, file: !21, line: 591, type: !260, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!260 = !DISubroutineType(types: !261)
!261 = !{!31, !262, !33}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !264, line: 72, baseType: !265)
!264 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !264, line: 16, baseType: !36)
!266 = !{!267, !268, !269}
!267 = !DILocalVariable(name: "size", arg: 1, scope: !259, file: !21, line: 591, type: !262)
!268 = !DILocalVariable(name: "flags", arg: 2, scope: !259, file: !21, line: 591, type: !33)
!269 = !DILocalVariable(name: "index", scope: !270, file: !21, line: 594, type: !7)
!270 = distinct !DILexicalBlock(scope: !271, file: !21, line: 593, column: 42)
!271 = distinct !DILexicalBlock(scope: !259, file: !21, line: 593, column: 6)
!272 = !DILocation(line: 591, column: 61, scope: !259)
!273 = !DILocation(line: 591, column: 73, scope: !259)
!274 = !DILocation(line: 593, column: 27, scope: !271)
!275 = !DILocation(line: 593, column: 6, scope: !271)
!276 = !DILocation(line: 593, column: 33, scope: !271)
!277 = !DILocation(line: 593, column: 36, scope: !271)
!278 = !DILocation(line: 593, column: 6, scope: !259)
!279 = !DILocation(line: 594, column: 3, scope: !270)
!280 = !DILocation(line: 594, column: 16, scope: !270)
!281 = !DILocation(line: 596, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !270, file: !21, line: 596, column: 7)
!283 = !DILocation(line: 596, column: 12, scope: !282)
!284 = !DILocation(line: 596, column: 7, scope: !270)
!285 = !DILocation(line: 597, column: 25, scope: !282)
!286 = !DILocation(line: 597, column: 31, scope: !282)
!287 = !DILocation(line: 597, column: 11, scope: !282)
!288 = !DILocation(line: 597, column: 4, scope: !282)
!289 = !DILocation(line: 599, column: 11, scope: !270)
!290 = !DILocation(line: 599, column: 9, scope: !270)
!291 = !DILocation(line: 601, column: 33, scope: !270)
!292 = !DILocation(line: 601, column: 40, scope: !270)
!293 = !DILocation(line: 601, column: 20, scope: !270)
!294 = !DILocation(line: 601, column: 5, scope: !270)
!295 = !DILocation(line: 601, column: 51, scope: !270)
!296 = !DILocation(line: 602, column: 5, scope: !270)
!297 = !DILocation(line: 602, column: 12, scope: !270)
!298 = !DILocation(line: 600, column: 10, scope: !270)
!299 = !DILocation(line: 600, column: 3, scope: !270)
!300 = !DILocation(line: 603, column: 2, scope: !271)
!301 = !DILocation(line: 604, column: 19, scope: !259)
!302 = !DILocation(line: 604, column: 25, scope: !259)
!303 = !DILocation(line: 604, column: 9, scope: !259)
!304 = !DILocation(line: 604, column: 2, scope: !259)
!305 = !DILocation(line: 605, column: 1, scope: !259)
!306 = distinct !DISubprogram(name: "mpi_alloc_limb_space", scope: !3, file: !3, line: 114, type: !307, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !7}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !310, line: 52, baseType: !92)
!310 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "nlimbs", arg: 1, scope: !306, file: !3, line: 114, type: !7)
!313 = !DILocalVariable(name: "len", scope: !306, file: !3, line: 116, type: !262)
!314 = !DILocation(line: 114, column: 41, scope: !306)
!315 = !DILocation(line: 116, column: 2, scope: !306)
!316 = !DILocation(line: 116, column: 9, scope: !306)
!317 = !DILocation(line: 116, column: 15, scope: !306)
!318 = !DILocation(line: 116, column: 22, scope: !306)
!319 = !DILocation(line: 118, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !306, file: !3, line: 118, column: 6)
!321 = !DILocation(line: 118, column: 6, scope: !306)
!322 = !DILocation(line: 119, column: 3, scope: !320)
!323 = !DILocation(line: 121, column: 17, scope: !306)
!324 = !DILocation(line: 121, column: 9, scope: !306)
!325 = !DILocation(line: 121, column: 2, scope: !306)
!326 = !DILocation(line: 122, column: 1, scope: !306)
!327 = !DISubprogram(name: "kfree", scope: !21, file: !21, line: 227, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!332 = distinct !DISubprogram(name: "mpi_free_limb_space", scope: !3, file: !3, line: 124, type: !333, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !309}
!335 = !{!336}
!336 = !DILocalVariable(name: "a", arg: 1, scope: !332, file: !3, line: 124, type: !309)
!337 = !DILocation(line: 124, column: 36, scope: !332)
!338 = !DILocation(line: 126, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !332, file: !3, line: 126, column: 6)
!340 = !DILocation(line: 126, column: 6, scope: !332)
!341 = !DILocation(line: 127, column: 3, scope: !339)
!342 = !DILocation(line: 129, column: 18, scope: !332)
!343 = !DILocation(line: 129, column: 2, scope: !332)
!344 = !DILocation(line: 130, column: 1, scope: !332)
!345 = !DISubprogram(name: "kfree_sensitive", scope: !21, file: !21, line: 228, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = distinct !DISubprogram(name: "mpi_assign_limb_space", scope: !3, file: !3, line: 132, type: !347, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !82, !309, !7}
!349 = !{!350, !351, !352}
!350 = !DILocalVariable(name: "a", arg: 1, scope: !346, file: !3, line: 132, type: !82)
!351 = !DILocalVariable(name: "ap", arg: 2, scope: !346, file: !3, line: 132, type: !309)
!352 = !DILocalVariable(name: "nlimbs", arg: 3, scope: !346, file: !3, line: 132, type: !7)
!353 = !DILocation(line: 132, column: 32, scope: !346)
!354 = !DILocation(line: 132, column: 45, scope: !346)
!355 = !DILocation(line: 132, column: 58, scope: !346)
!356 = !DILocation(line: 134, column: 22, scope: !346)
!357 = !DILocation(line: 134, column: 25, scope: !346)
!358 = !DILocation(line: 134, column: 2, scope: !346)
!359 = !DILocation(line: 135, column: 9, scope: !346)
!360 = !DILocation(line: 135, column: 2, scope: !346)
!361 = !DILocation(line: 135, column: 5, scope: !346)
!362 = !DILocation(line: 135, column: 7, scope: !346)
!363 = !DILocation(line: 136, column: 15, scope: !346)
!364 = !DILocation(line: 136, column: 2, scope: !346)
!365 = !DILocation(line: 136, column: 5, scope: !346)
!366 = !DILocation(line: 136, column: 13, scope: !346)
!367 = !DILocation(line: 137, column: 1, scope: !346)
!368 = distinct !DISubprogram(name: "mpi_resize", scope: !3, file: !3, line: 143, type: !369, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!32, !82, !7}
!371 = !{!372, !373, !374}
!372 = !DILocalVariable(name: "a", arg: 1, scope: !368, file: !3, line: 143, type: !82)
!373 = !DILocalVariable(name: "nlimbs", arg: 2, scope: !368, file: !3, line: 143, type: !7)
!374 = !DILocalVariable(name: "p", scope: !368, file: !3, line: 145, type: !31)
!375 = !DILocation(line: 143, column: 20, scope: !368)
!376 = !DILocation(line: 143, column: 32, scope: !368)
!377 = !DILocation(line: 145, column: 2, scope: !368)
!378 = !DILocation(line: 145, column: 8, scope: !368)
!379 = !DILocation(line: 147, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !368, file: !3, line: 147, column: 6)
!381 = !DILocation(line: 147, column: 16, scope: !380)
!382 = !DILocation(line: 147, column: 19, scope: !380)
!383 = !DILocation(line: 147, column: 13, scope: !380)
!384 = !DILocation(line: 147, column: 6, scope: !368)
!385 = !DILocation(line: 148, column: 3, scope: !380)
!386 = !DILocation(line: 150, column: 6, scope: !387)
!387 = distinct !DILexicalBlock(scope: !368, file: !3, line: 150, column: 6)
!388 = !DILocation(line: 150, column: 9, scope: !387)
!389 = !DILocation(line: 150, column: 6, scope: !368)
!390 = !DILocation(line: 151, column: 15, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 150, column: 12)
!392 = !DILocation(line: 151, column: 7, scope: !391)
!393 = !DILocation(line: 151, column: 5, scope: !391)
!394 = !DILocation(line: 152, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 152, column: 7)
!396 = !DILocation(line: 152, column: 7, scope: !391)
!397 = !DILocation(line: 153, column: 4, scope: !395)
!398 = !DILocation(line: 154, column: 10, scope: !391)
!399 = !DILocation(line: 154, column: 13, scope: !391)
!400 = !DILocation(line: 154, column: 16, scope: !391)
!401 = !DILocation(line: 154, column: 19, scope: !391)
!402 = !DILocation(line: 154, column: 22, scope: !391)
!403 = !DILocation(line: 154, column: 30, scope: !391)
!404 = !DILocation(line: 154, column: 3, scope: !391)
!405 = !DILocation(line: 155, column: 19, scope: !391)
!406 = !DILocation(line: 155, column: 22, scope: !391)
!407 = !DILocation(line: 155, column: 3, scope: !391)
!408 = !DILocation(line: 156, column: 10, scope: !391)
!409 = !DILocation(line: 156, column: 3, scope: !391)
!410 = !DILocation(line: 156, column: 6, scope: !391)
!411 = !DILocation(line: 156, column: 8, scope: !391)
!412 = !DILocation(line: 157, column: 2, scope: !391)
!413 = !DILocation(line: 158, column: 18, scope: !414)
!414 = distinct !DILexicalBlock(scope: !387, file: !3, line: 157, column: 9)
!415 = !DILocation(line: 158, column: 10, scope: !414)
!416 = !DILocation(line: 158, column: 3, scope: !414)
!417 = !DILocation(line: 158, column: 6, scope: !414)
!418 = !DILocation(line: 158, column: 8, scope: !414)
!419 = !DILocation(line: 159, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !3, line: 159, column: 7)
!421 = !DILocation(line: 159, column: 11, scope: !420)
!422 = !DILocation(line: 159, column: 7, scope: !414)
!423 = !DILocation(line: 160, column: 4, scope: !420)
!424 = !DILocation(line: 162, column: 15, scope: !368)
!425 = !DILocation(line: 162, column: 2, scope: !368)
!426 = !DILocation(line: 162, column: 5, scope: !368)
!427 = !DILocation(line: 162, column: 13, scope: !368)
!428 = !DILocation(line: 163, column: 2, scope: !368)
!429 = !DILocation(line: 164, column: 1, scope: !368)
!430 = distinct !DISubprogram(name: "kcalloc", scope: !21, file: !21, line: 666, type: !431, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!31, !262, !262, !33}
!433 = !{!434, !435, !436}
!434 = !DILocalVariable(name: "n", arg: 1, scope: !430, file: !21, line: 666, type: !262)
!435 = !DILocalVariable(name: "size", arg: 2, scope: !430, file: !21, line: 666, type: !262)
!436 = !DILocalVariable(name: "flags", arg: 3, scope: !430, file: !21, line: 666, type: !33)
!437 = !DILocation(line: 666, column: 55, scope: !430)
!438 = !DILocation(line: 666, column: 65, scope: !430)
!439 = !DILocation(line: 666, column: 77, scope: !430)
!440 = !DILocation(line: 668, column: 23, scope: !430)
!441 = !DILocation(line: 668, column: 26, scope: !430)
!442 = !DILocation(line: 668, column: 32, scope: !430)
!443 = !DILocation(line: 668, column: 38, scope: !430)
!444 = !DILocation(line: 668, column: 9, scope: !430)
!445 = !DILocation(line: 668, column: 2, scope: !430)
!446 = distinct !DISubprogram(name: "mpi_clear", scope: !3, file: !3, line: 166, type: !447, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !82}
!449 = !{!450}
!450 = !DILocalVariable(name: "a", arg: 1, scope: !446, file: !3, line: 166, type: !82)
!451 = !DILocation(line: 166, column: 20, scope: !446)
!452 = !DILocation(line: 168, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !3, line: 168, column: 6)
!454 = !DILocation(line: 168, column: 6, scope: !446)
!455 = !DILocation(line: 169, column: 3, scope: !453)
!456 = !DILocation(line: 170, column: 2, scope: !446)
!457 = !DILocation(line: 170, column: 5, scope: !446)
!458 = !DILocation(line: 170, column: 12, scope: !446)
!459 = !DILocation(line: 171, column: 2, scope: !446)
!460 = !DILocation(line: 171, column: 5, scope: !446)
!461 = !DILocation(line: 171, column: 11, scope: !446)
!462 = !DILocation(line: 172, column: 1, scope: !446)
!463 = distinct !DISubprogram(name: "mpi_free", scope: !3, file: !3, line: 175, type: !447, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!464 = !{!465}
!465 = !DILocalVariable(name: "a", arg: 1, scope: !463, file: !3, line: 175, type: !82)
!466 = !DILocation(line: 175, column: 19, scope: !463)
!467 = !DILocation(line: 177, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !3, line: 177, column: 6)
!469 = !DILocation(line: 177, column: 6, scope: !463)
!470 = !DILocation(line: 178, column: 3, scope: !468)
!471 = !DILocation(line: 180, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !463, file: !3, line: 180, column: 6)
!473 = !DILocation(line: 180, column: 9, scope: !472)
!474 = !DILocation(line: 180, column: 15, scope: !472)
!475 = !DILocation(line: 180, column: 6, scope: !463)
!476 = !DILocation(line: 181, column: 19, scope: !472)
!477 = !DILocation(line: 181, column: 22, scope: !472)
!478 = !DILocation(line: 181, column: 3, scope: !472)
!479 = !DILocation(line: 183, column: 23, scope: !472)
!480 = !DILocation(line: 183, column: 26, scope: !472)
!481 = !DILocation(line: 183, column: 3, scope: !472)
!482 = !DILocation(line: 185, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !463, file: !3, line: 185, column: 6)
!484 = !DILocation(line: 185, column: 9, scope: !483)
!485 = !DILocation(line: 185, column: 15, scope: !483)
!486 = !DILocation(line: 185, column: 6, scope: !463)
!487 = !DILocation(line: 186, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 186, column: 3)
!489 = !DILocation(line: 186, column: 3, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !3, line: 186, column: 3)
!491 = !DILocation(line: 186, column: 3, scope: !483)
!492 = !DILocation(line: 187, column: 8, scope: !463)
!493 = !DILocation(line: 187, column: 2, scope: !463)
!494 = !DILocation(line: 188, column: 1, scope: !463)
!495 = distinct !DISubprogram(name: "mpi_copy", scope: !3, file: !3, line: 195, type: !496, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!82, !82}
!498 = !{!499, !500, !501}
!499 = !DILocalVariable(name: "a", arg: 1, scope: !495, file: !3, line: 195, type: !82)
!500 = !DILocalVariable(name: "i", scope: !495, file: !3, line: 197, type: !32)
!501 = !DILocalVariable(name: "b", scope: !495, file: !3, line: 198, type: !82)
!502 = !DILocation(line: 195, column: 18, scope: !495)
!503 = !DILocation(line: 197, column: 2, scope: !495)
!504 = !DILocation(line: 197, column: 6, scope: !495)
!505 = !DILocation(line: 198, column: 2, scope: !495)
!506 = !DILocation(line: 198, column: 6, scope: !495)
!507 = !DILocation(line: 200, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !495, file: !3, line: 200, column: 6)
!509 = !DILocation(line: 200, column: 6, scope: !495)
!510 = !DILocation(line: 201, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 200, column: 9)
!512 = !DILocation(line: 201, column: 20, scope: !511)
!513 = !DILocation(line: 201, column: 7, scope: !511)
!514 = !DILocation(line: 201, column: 5, scope: !511)
!515 = !DILocation(line: 202, column: 15, scope: !511)
!516 = !DILocation(line: 202, column: 18, scope: !511)
!517 = !DILocation(line: 202, column: 3, scope: !511)
!518 = !DILocation(line: 202, column: 6, scope: !511)
!519 = !DILocation(line: 202, column: 13, scope: !511)
!520 = !DILocation(line: 203, column: 13, scope: !511)
!521 = !DILocation(line: 203, column: 16, scope: !511)
!522 = !DILocation(line: 203, column: 3, scope: !511)
!523 = !DILocation(line: 203, column: 6, scope: !511)
!524 = !DILocation(line: 203, column: 11, scope: !511)
!525 = !DILocation(line: 204, column: 14, scope: !511)
!526 = !DILocation(line: 204, column: 17, scope: !511)
!527 = !DILocation(line: 204, column: 3, scope: !511)
!528 = !DILocation(line: 204, column: 6, scope: !511)
!529 = !DILocation(line: 204, column: 12, scope: !511)
!530 = !DILocation(line: 205, column: 3, scope: !511)
!531 = !DILocation(line: 205, column: 6, scope: !511)
!532 = !DILocation(line: 205, column: 12, scope: !511)
!533 = !DILocation(line: 206, column: 10, scope: !534)
!534 = distinct !DILexicalBlock(scope: !511, file: !3, line: 206, column: 3)
!535 = !DILocation(line: 206, column: 8, scope: !534)
!536 = !DILocation(line: 206, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 206, column: 3)
!538 = !DILocation(line: 206, column: 19, scope: !537)
!539 = !DILocation(line: 206, column: 22, scope: !537)
!540 = !DILocation(line: 206, column: 17, scope: !537)
!541 = !DILocation(line: 206, column: 3, scope: !534)
!542 = !DILocation(line: 207, column: 14, scope: !537)
!543 = !DILocation(line: 207, column: 17, scope: !537)
!544 = !DILocation(line: 207, column: 19, scope: !537)
!545 = !DILocation(line: 207, column: 4, scope: !537)
!546 = !DILocation(line: 207, column: 7, scope: !537)
!547 = !DILocation(line: 207, column: 9, scope: !537)
!548 = !DILocation(line: 207, column: 12, scope: !537)
!549 = !DILocation(line: 206, column: 31, scope: !537)
!550 = !DILocation(line: 206, column: 3, scope: !537)
!551 = distinct !{!551, !541, !552, !163, !164}
!552 = !DILocation(line: 207, column: 20, scope: !534)
!553 = !DILocation(line: 208, column: 2, scope: !511)
!554 = !DILocation(line: 209, column: 5, scope: !508)
!555 = !DILocation(line: 210, column: 9, scope: !495)
!556 = !DILocation(line: 211, column: 1, scope: !495)
!557 = !DILocation(line: 210, column: 2, scope: !495)
!558 = distinct !DISubprogram(name: "mpi_alloc_like", scope: !3, file: !3, line: 218, type: !496, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "a", arg: 1, scope: !558, file: !3, line: 218, type: !82)
!561 = !DILocalVariable(name: "b", scope: !558, file: !3, line: 220, type: !82)
!562 = !DILocation(line: 218, column: 24, scope: !558)
!563 = !DILocation(line: 220, column: 2, scope: !558)
!564 = !DILocation(line: 220, column: 6, scope: !558)
!565 = !DILocation(line: 222, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !558, file: !3, line: 222, column: 6)
!567 = !DILocation(line: 222, column: 6, scope: !558)
!568 = !DILocation(line: 223, column: 17, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !3, line: 222, column: 9)
!570 = !DILocation(line: 223, column: 20, scope: !569)
!571 = !DILocation(line: 223, column: 7, scope: !569)
!572 = !DILocation(line: 223, column: 5, scope: !569)
!573 = !DILocation(line: 224, column: 3, scope: !569)
!574 = !DILocation(line: 224, column: 6, scope: !569)
!575 = !DILocation(line: 224, column: 13, scope: !569)
!576 = !DILocation(line: 225, column: 3, scope: !569)
!577 = !DILocation(line: 225, column: 6, scope: !569)
!578 = !DILocation(line: 225, column: 11, scope: !569)
!579 = !DILocation(line: 226, column: 14, scope: !569)
!580 = !DILocation(line: 226, column: 17, scope: !569)
!581 = !DILocation(line: 226, column: 3, scope: !569)
!582 = !DILocation(line: 226, column: 6, scope: !569)
!583 = !DILocation(line: 226, column: 12, scope: !569)
!584 = !DILocation(line: 227, column: 2, scope: !569)
!585 = !DILocation(line: 228, column: 5, scope: !566)
!586 = !DILocation(line: 230, column: 9, scope: !558)
!587 = !DILocation(line: 231, column: 1, scope: !558)
!588 = !DILocation(line: 230, column: 2, scope: !558)
!589 = distinct !DISubprogram(name: "mpi_snatch", scope: !3, file: !3, line: 235, type: !590, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !82, !82}
!592 = !{!593, !594}
!593 = !DILocalVariable(name: "w", arg: 1, scope: !589, file: !3, line: 235, type: !82)
!594 = !DILocalVariable(name: "u", arg: 2, scope: !589, file: !3, line: 235, type: !82)
!595 = !DILocation(line: 235, column: 21, scope: !589)
!596 = !DILocation(line: 235, column: 28, scope: !589)
!597 = !DILocation(line: 237, column: 6, scope: !598)
!598 = distinct !DILexicalBlock(scope: !589, file: !3, line: 237, column: 6)
!599 = !DILocation(line: 237, column: 6, scope: !589)
!600 = !DILocation(line: 238, column: 25, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 237, column: 9)
!602 = !DILocation(line: 238, column: 28, scope: !601)
!603 = !DILocation(line: 238, column: 31, scope: !601)
!604 = !DILocation(line: 238, column: 34, scope: !601)
!605 = !DILocation(line: 238, column: 37, scope: !601)
!606 = !DILocation(line: 238, column: 3, scope: !601)
!607 = !DILocation(line: 239, column: 15, scope: !601)
!608 = !DILocation(line: 239, column: 18, scope: !601)
!609 = !DILocation(line: 239, column: 3, scope: !601)
!610 = !DILocation(line: 239, column: 6, scope: !601)
!611 = !DILocation(line: 239, column: 13, scope: !601)
!612 = !DILocation(line: 240, column: 15, scope: !601)
!613 = !DILocation(line: 240, column: 18, scope: !601)
!614 = !DILocation(line: 240, column: 3, scope: !601)
!615 = !DILocation(line: 240, column: 6, scope: !601)
!616 = !DILocation(line: 240, column: 13, scope: !601)
!617 = !DILocation(line: 241, column: 15, scope: !601)
!618 = !DILocation(line: 241, column: 18, scope: !601)
!619 = !DILocation(line: 241, column: 3, scope: !601)
!620 = !DILocation(line: 241, column: 6, scope: !601)
!621 = !DILocation(line: 241, column: 13, scope: !601)
!622 = !DILocation(line: 242, column: 3, scope: !601)
!623 = !DILocation(line: 242, column: 6, scope: !601)
!624 = !DILocation(line: 242, column: 14, scope: !601)
!625 = !DILocation(line: 243, column: 3, scope: !601)
!626 = !DILocation(line: 243, column: 6, scope: !601)
!627 = !DILocation(line: 243, column: 13, scope: !601)
!628 = !DILocation(line: 244, column: 3, scope: !601)
!629 = !DILocation(line: 244, column: 6, scope: !601)
!630 = !DILocation(line: 244, column: 8, scope: !601)
!631 = !DILocation(line: 245, column: 2, scope: !601)
!632 = !DILocation(line: 246, column: 11, scope: !589)
!633 = !DILocation(line: 246, column: 2, scope: !589)
!634 = !DILocation(line: 247, column: 1, scope: !589)
!635 = distinct !DISubprogram(name: "mpi_set", scope: !3, file: !3, line: 250, type: !636, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!82, !82, !82}
!638 = !{!639, !640, !641, !642, !643, !645, !646}
!639 = !DILocalVariable(name: "w", arg: 1, scope: !635, file: !3, line: 250, type: !82)
!640 = !DILocalVariable(name: "u", arg: 2, scope: !635, file: !3, line: 250, type: !82)
!641 = !DILocalVariable(name: "wp", scope: !635, file: !3, line: 252, type: !309)
!642 = !DILocalVariable(name: "up", scope: !635, file: !3, line: 252, type: !309)
!643 = !DILocalVariable(name: "usize", scope: !635, file: !3, line: 253, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !310, line: 53, baseType: !32)
!645 = !DILocalVariable(name: "usign", scope: !635, file: !3, line: 254, type: !32)
!646 = !DILocalVariable(name: "_i", scope: !647, file: !3, line: 261, type: !644)
!647 = distinct !DILexicalBlock(scope: !635, file: !3, line: 261, column: 2)
!648 = !DILocation(line: 250, column: 17, scope: !635)
!649 = !DILocation(line: 250, column: 24, scope: !635)
!650 = !DILocation(line: 252, column: 2, scope: !635)
!651 = !DILocation(line: 252, column: 12, scope: !635)
!652 = !DILocation(line: 252, column: 16, scope: !635)
!653 = !DILocation(line: 253, column: 2, scope: !635)
!654 = !DILocation(line: 253, column: 13, scope: !635)
!655 = !DILocation(line: 253, column: 21, scope: !635)
!656 = !DILocation(line: 253, column: 24, scope: !635)
!657 = !DILocation(line: 254, column: 2, scope: !635)
!658 = !DILocation(line: 254, column: 6, scope: !635)
!659 = !DILocation(line: 254, column: 14, scope: !635)
!660 = !DILocation(line: 254, column: 17, scope: !635)
!661 = !DILocation(line: 256, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !635, file: !3, line: 256, column: 6)
!663 = !DILocation(line: 256, column: 6, scope: !635)
!664 = !DILocation(line: 257, column: 17, scope: !662)
!665 = !DILocation(line: 257, column: 7, scope: !662)
!666 = !DILocation(line: 257, column: 5, scope: !662)
!667 = !DILocation(line: 257, column: 3, scope: !662)
!668 = !DILocation(line: 258, column: 2, scope: !635)
!669 = !DILocation(line: 258, column: 2, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 258, column: 2)
!671 = distinct !DILexicalBlock(scope: !635, file: !3, line: 258, column: 2)
!672 = !DILocation(line: 258, column: 2, scope: !671)
!673 = !DILocation(line: 259, column: 7, scope: !635)
!674 = !DILocation(line: 259, column: 10, scope: !635)
!675 = !DILocation(line: 259, column: 5, scope: !635)
!676 = !DILocation(line: 260, column: 7, scope: !635)
!677 = !DILocation(line: 260, column: 10, scope: !635)
!678 = !DILocation(line: 260, column: 5, scope: !635)
!679 = !DILocation(line: 261, column: 2, scope: !635)
!680 = !DILocation(line: 261, column: 2, scope: !647)
!681 = !DILocation(line: 261, column: 2, scope: !682)
!682 = distinct !DILexicalBlock(scope: !647, file: !3, line: 261, column: 2)
!683 = !DILocation(line: 261, column: 2, scope: !684)
!684 = distinct !DILexicalBlock(scope: !682, file: !3, line: 261, column: 2)
!685 = distinct !{!685, !681, !681, !163, !164}
!686 = !DILocation(line: 262, column: 14, scope: !635)
!687 = !DILocation(line: 262, column: 2, scope: !635)
!688 = !DILocation(line: 262, column: 5, scope: !635)
!689 = !DILocation(line: 262, column: 12, scope: !635)
!690 = !DILocation(line: 263, column: 13, scope: !635)
!691 = !DILocation(line: 263, column: 16, scope: !635)
!692 = !DILocation(line: 263, column: 2, scope: !635)
!693 = !DILocation(line: 263, column: 5, scope: !635)
!694 = !DILocation(line: 263, column: 11, scope: !635)
!695 = !DILocation(line: 264, column: 2, scope: !635)
!696 = !DILocation(line: 264, column: 5, scope: !635)
!697 = !DILocation(line: 264, column: 11, scope: !635)
!698 = !DILocation(line: 265, column: 12, scope: !635)
!699 = !DILocation(line: 265, column: 2, scope: !635)
!700 = !DILocation(line: 265, column: 5, scope: !635)
!701 = !DILocation(line: 265, column: 10, scope: !635)
!702 = !DILocation(line: 266, column: 9, scope: !635)
!703 = !DILocation(line: 267, column: 1, scope: !635)
!704 = !DILocation(line: 266, column: 2, scope: !635)
!705 = distinct !DISubprogram(name: "mpi_set_ui", scope: !3, file: !3, line: 270, type: !706, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!82, !82, !36}
!708 = !{!709, !710}
!709 = !DILocalVariable(name: "w", arg: 1, scope: !705, file: !3, line: 270, type: !82)
!710 = !DILocalVariable(name: "u", arg: 2, scope: !705, file: !3, line: 270, type: !36)
!711 = !DILocation(line: 270, column: 20, scope: !705)
!712 = !DILocation(line: 270, column: 37, scope: !705)
!713 = !DILocation(line: 272, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !705, file: !3, line: 272, column: 6)
!715 = !DILocation(line: 272, column: 6, scope: !705)
!716 = !DILocation(line: 273, column: 7, scope: !714)
!717 = !DILocation(line: 273, column: 5, scope: !714)
!718 = !DILocation(line: 273, column: 3, scope: !714)
!719 = !DILocation(line: 277, column: 2, scope: !705)
!720 = !DILocation(line: 277, column: 2, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 277, column: 2)
!722 = distinct !DILexicalBlock(scope: !705, file: !3, line: 277, column: 2)
!723 = !DILocation(line: 277, column: 2, scope: !722)
!724 = !DILocation(line: 278, column: 12, scope: !705)
!725 = !DILocation(line: 278, column: 2, scope: !705)
!726 = !DILocation(line: 278, column: 5, scope: !705)
!727 = !DILocation(line: 278, column: 10, scope: !705)
!728 = !DILocation(line: 279, column: 14, scope: !705)
!729 = !DILocation(line: 279, column: 2, scope: !705)
!730 = !DILocation(line: 279, column: 5, scope: !705)
!731 = !DILocation(line: 279, column: 12, scope: !705)
!732 = !DILocation(line: 280, column: 2, scope: !705)
!733 = !DILocation(line: 280, column: 5, scope: !705)
!734 = !DILocation(line: 280, column: 10, scope: !705)
!735 = !DILocation(line: 281, column: 2, scope: !705)
!736 = !DILocation(line: 281, column: 5, scope: !705)
!737 = !DILocation(line: 281, column: 11, scope: !705)
!738 = !DILocation(line: 282, column: 9, scope: !705)
!739 = !DILocation(line: 282, column: 2, scope: !705)
!740 = distinct !DISubprogram(name: "mpi_alloc_set_ui", scope: !3, file: !3, line: 286, type: !741, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!82, !36}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "u", arg: 1, scope: !740, file: !3, line: 286, type: !36)
!745 = !DILocalVariable(name: "w", scope: !740, file: !3, line: 288, type: !82)
!746 = !DILocation(line: 286, column: 36, scope: !740)
!747 = !DILocation(line: 288, column: 2, scope: !740)
!748 = !DILocation(line: 288, column: 6, scope: !740)
!749 = !DILocation(line: 288, column: 10, scope: !740)
!750 = !DILocation(line: 289, column: 12, scope: !740)
!751 = !DILocation(line: 289, column: 2, scope: !740)
!752 = !DILocation(line: 289, column: 5, scope: !740)
!753 = !DILocation(line: 289, column: 10, scope: !740)
!754 = !DILocation(line: 290, column: 14, scope: !740)
!755 = !DILocation(line: 290, column: 2, scope: !740)
!756 = !DILocation(line: 290, column: 5, scope: !740)
!757 = !DILocation(line: 290, column: 12, scope: !740)
!758 = !DILocation(line: 291, column: 2, scope: !740)
!759 = !DILocation(line: 291, column: 5, scope: !740)
!760 = !DILocation(line: 291, column: 10, scope: !740)
!761 = !DILocation(line: 292, column: 9, scope: !740)
!762 = !DILocation(line: 293, column: 1, scope: !740)
!763 = !DILocation(line: 292, column: 2, scope: !740)
!764 = distinct !DISubprogram(name: "mpi_swap_cond", scope: !3, file: !3, line: 300, type: !765, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !82, !82, !36}
!767 = !{!768, !769, !770, !771, !772, !773, !774}
!768 = !DILocalVariable(name: "a", arg: 1, scope: !764, file: !3, line: 300, type: !82)
!769 = !DILocalVariable(name: "b", arg: 2, scope: !764, file: !3, line: 300, type: !82)
!770 = !DILocalVariable(name: "swap", arg: 3, scope: !764, file: !3, line: 300, type: !36)
!771 = !DILocalVariable(name: "i", scope: !764, file: !3, line: 302, type: !644)
!772 = !DILocalVariable(name: "nlimbs", scope: !764, file: !3, line: 303, type: !644)
!773 = !DILocalVariable(name: "mask", scope: !764, file: !3, line: 304, type: !35)
!774 = !DILocalVariable(name: "x", scope: !764, file: !3, line: 305, type: !35)
!775 = !DILocation(line: 300, column: 24, scope: !764)
!776 = !DILocation(line: 300, column: 31, scope: !764)
!777 = !DILocation(line: 300, column: 48, scope: !764)
!778 = !DILocation(line: 302, column: 2, scope: !764)
!779 = !DILocation(line: 302, column: 13, scope: !764)
!780 = !DILocation(line: 303, column: 2, scope: !764)
!781 = !DILocation(line: 303, column: 13, scope: !764)
!782 = !DILocation(line: 304, column: 2, scope: !764)
!783 = !DILocation(line: 304, column: 13, scope: !764)
!784 = !DILocation(line: 304, column: 38, scope: !764)
!785 = !DILocation(line: 304, column: 36, scope: !764)
!786 = !DILocation(line: 305, column: 2, scope: !764)
!787 = !DILocation(line: 305, column: 13, scope: !764)
!788 = !DILocation(line: 307, column: 6, scope: !789)
!789 = distinct !DILexicalBlock(scope: !764, file: !3, line: 307, column: 6)
!790 = !DILocation(line: 307, column: 9, scope: !789)
!791 = !DILocation(line: 307, column: 19, scope: !789)
!792 = !DILocation(line: 307, column: 22, scope: !789)
!793 = !DILocation(line: 307, column: 17, scope: !789)
!794 = !DILocation(line: 307, column: 6, scope: !764)
!795 = !DILocation(line: 308, column: 12, scope: !789)
!796 = !DILocation(line: 308, column: 15, scope: !789)
!797 = !DILocation(line: 308, column: 10, scope: !789)
!798 = !DILocation(line: 308, column: 3, scope: !789)
!799 = !DILocation(line: 310, column: 12, scope: !789)
!800 = !DILocation(line: 310, column: 15, scope: !789)
!801 = !DILocation(line: 310, column: 10, scope: !789)
!802 = !DILocation(line: 311, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !764, file: !3, line: 311, column: 6)
!804 = !DILocation(line: 311, column: 9, scope: !803)
!805 = !DILocation(line: 311, column: 18, scope: !803)
!806 = !DILocation(line: 311, column: 16, scope: !803)
!807 = !DILocation(line: 311, column: 25, scope: !803)
!808 = !DILocation(line: 311, column: 28, scope: !803)
!809 = !DILocation(line: 311, column: 31, scope: !803)
!810 = !DILocation(line: 311, column: 40, scope: !803)
!811 = !DILocation(line: 311, column: 38, scope: !803)
!812 = !DILocation(line: 311, column: 6, scope: !764)
!813 = !DILocation(line: 312, column: 3, scope: !803)
!814 = !DILocation(line: 314, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !764, file: !3, line: 314, column: 2)
!816 = !DILocation(line: 314, column: 7, scope: !815)
!817 = !DILocation(line: 314, column: 14, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 314, column: 2)
!819 = !DILocation(line: 314, column: 18, scope: !818)
!820 = !DILocation(line: 314, column: 16, scope: !818)
!821 = !DILocation(line: 314, column: 2, scope: !815)
!822 = !DILocation(line: 315, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !3, line: 314, column: 31)
!824 = !DILocation(line: 315, column: 15, scope: !823)
!825 = !DILocation(line: 315, column: 18, scope: !823)
!826 = !DILocation(line: 315, column: 20, scope: !823)
!827 = !DILocation(line: 315, column: 25, scope: !823)
!828 = !DILocation(line: 315, column: 28, scope: !823)
!829 = !DILocation(line: 315, column: 30, scope: !823)
!830 = !DILocation(line: 315, column: 23, scope: !823)
!831 = !DILocation(line: 315, column: 12, scope: !823)
!832 = !DILocation(line: 315, column: 5, scope: !823)
!833 = !DILocation(line: 316, column: 13, scope: !823)
!834 = !DILocation(line: 316, column: 16, scope: !823)
!835 = !DILocation(line: 316, column: 18, scope: !823)
!836 = !DILocation(line: 316, column: 23, scope: !823)
!837 = !DILocation(line: 316, column: 21, scope: !823)
!838 = !DILocation(line: 316, column: 3, scope: !823)
!839 = !DILocation(line: 316, column: 6, scope: !823)
!840 = !DILocation(line: 316, column: 8, scope: !823)
!841 = !DILocation(line: 316, column: 11, scope: !823)
!842 = !DILocation(line: 317, column: 13, scope: !823)
!843 = !DILocation(line: 317, column: 16, scope: !823)
!844 = !DILocation(line: 317, column: 18, scope: !823)
!845 = !DILocation(line: 317, column: 23, scope: !823)
!846 = !DILocation(line: 317, column: 21, scope: !823)
!847 = !DILocation(line: 317, column: 3, scope: !823)
!848 = !DILocation(line: 317, column: 6, scope: !823)
!849 = !DILocation(line: 317, column: 8, scope: !823)
!850 = !DILocation(line: 317, column: 11, scope: !823)
!851 = !DILocation(line: 318, column: 2, scope: !823)
!852 = !DILocation(line: 314, column: 27, scope: !818)
!853 = !DILocation(line: 314, column: 2, scope: !818)
!854 = distinct !{!854, !821, !855, !163, !164}
!855 = !DILocation(line: 318, column: 2, scope: !815)
!856 = !DILocation(line: 320, column: 6, scope: !764)
!857 = !DILocation(line: 320, column: 14, scope: !764)
!858 = !DILocation(line: 320, column: 17, scope: !764)
!859 = !DILocation(line: 320, column: 26, scope: !764)
!860 = !DILocation(line: 320, column: 29, scope: !764)
!861 = !DILocation(line: 320, column: 24, scope: !764)
!862 = !DILocation(line: 320, column: 13, scope: !764)
!863 = !DILocation(line: 320, column: 11, scope: !764)
!864 = !DILocation(line: 320, column: 4, scope: !764)
!865 = !DILocation(line: 321, column: 14, scope: !764)
!866 = !DILocation(line: 321, column: 17, scope: !764)
!867 = !DILocation(line: 321, column: 26, scope: !764)
!868 = !DILocation(line: 321, column: 24, scope: !764)
!869 = !DILocation(line: 321, column: 2, scope: !764)
!870 = !DILocation(line: 321, column: 5, scope: !764)
!871 = !DILocation(line: 321, column: 12, scope: !764)
!872 = !DILocation(line: 322, column: 14, scope: !764)
!873 = !DILocation(line: 322, column: 17, scope: !764)
!874 = !DILocation(line: 322, column: 26, scope: !764)
!875 = !DILocation(line: 322, column: 24, scope: !764)
!876 = !DILocation(line: 322, column: 2, scope: !764)
!877 = !DILocation(line: 322, column: 5, scope: !764)
!878 = !DILocation(line: 322, column: 12, scope: !764)
!879 = !DILocation(line: 324, column: 6, scope: !764)
!880 = !DILocation(line: 324, column: 14, scope: !764)
!881 = !DILocation(line: 324, column: 17, scope: !764)
!882 = !DILocation(line: 324, column: 24, scope: !764)
!883 = !DILocation(line: 324, column: 27, scope: !764)
!884 = !DILocation(line: 324, column: 22, scope: !764)
!885 = !DILocation(line: 324, column: 13, scope: !764)
!886 = !DILocation(line: 324, column: 11, scope: !764)
!887 = !DILocation(line: 324, column: 4, scope: !764)
!888 = !DILocation(line: 325, column: 12, scope: !764)
!889 = !DILocation(line: 325, column: 15, scope: !764)
!890 = !DILocation(line: 325, column: 22, scope: !764)
!891 = !DILocation(line: 325, column: 20, scope: !764)
!892 = !DILocation(line: 325, column: 2, scope: !764)
!893 = !DILocation(line: 325, column: 5, scope: !764)
!894 = !DILocation(line: 325, column: 10, scope: !764)
!895 = !DILocation(line: 326, column: 12, scope: !764)
!896 = !DILocation(line: 326, column: 15, scope: !764)
!897 = !DILocation(line: 326, column: 22, scope: !764)
!898 = !DILocation(line: 326, column: 20, scope: !764)
!899 = !DILocation(line: 326, column: 2, scope: !764)
!900 = !DILocation(line: 326, column: 5, scope: !764)
!901 = !DILocation(line: 326, column: 10, scope: !764)
!902 = !DILocation(line: 327, column: 1, scope: !764)
!903 = !DISubprogram(name: "kmalloc_large", scope: !21, file: !21, line: 531, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = distinct !DISubprogram(name: "__kmalloc_index", scope: !21, file: !21, line: 444, type: !905, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!905 = !DISubroutineType(types: !906)
!906 = !{!7, !262, !907}
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !908)
!908 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!909 = !{!910, !911}
!910 = !DILocalVariable(name: "size", arg: 1, scope: !904, file: !21, line: 444, type: !262)
!911 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !904, file: !21, line: 445, type: !907)
!912 = !DILocation(line: 444, column: 60, scope: !904)
!913 = !DILocation(line: 445, column: 16, scope: !904)
!914 = !DILocation(line: 447, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !904, file: !21, line: 447, column: 6)
!916 = !DILocation(line: 447, column: 6, scope: !904)
!917 = !DILocation(line: 448, column: 3, scope: !915)
!918 = !DILocation(line: 450, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !904, file: !21, line: 450, column: 6)
!920 = !DILocation(line: 450, column: 11, scope: !919)
!921 = !DILocation(line: 450, column: 6, scope: !904)
!922 = !DILocation(line: 451, column: 3, scope: !919)
!923 = !DILocation(line: 453, column: 32, scope: !924)
!924 = distinct !DILexicalBlock(scope: !904, file: !21, line: 453, column: 6)
!925 = !DILocation(line: 453, column: 37, scope: !924)
!926 = !DILocation(line: 453, column: 42, scope: !924)
!927 = !DILocation(line: 453, column: 45, scope: !924)
!928 = !DILocation(line: 453, column: 50, scope: !924)
!929 = !DILocation(line: 453, column: 6, scope: !904)
!930 = !DILocation(line: 454, column: 3, scope: !924)
!931 = !DILocation(line: 455, column: 32, scope: !932)
!932 = distinct !DILexicalBlock(scope: !904, file: !21, line: 455, column: 6)
!933 = !DILocation(line: 455, column: 37, scope: !932)
!934 = !DILocation(line: 455, column: 43, scope: !932)
!935 = !DILocation(line: 455, column: 46, scope: !932)
!936 = !DILocation(line: 455, column: 51, scope: !932)
!937 = !DILocation(line: 455, column: 6, scope: !904)
!938 = !DILocation(line: 456, column: 3, scope: !932)
!939 = !DILocation(line: 457, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !904, file: !21, line: 457, column: 6)
!941 = !DILocation(line: 457, column: 11, scope: !940)
!942 = !DILocation(line: 457, column: 6, scope: !904)
!943 = !DILocation(line: 457, column: 26, scope: !940)
!944 = !DILocation(line: 458, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !904, file: !21, line: 458, column: 6)
!946 = !DILocation(line: 458, column: 11, scope: !945)
!947 = !DILocation(line: 458, column: 6, scope: !904)
!948 = !DILocation(line: 458, column: 26, scope: !945)
!949 = !DILocation(line: 459, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !904, file: !21, line: 459, column: 6)
!951 = !DILocation(line: 459, column: 11, scope: !950)
!952 = !DILocation(line: 459, column: 6, scope: !904)
!953 = !DILocation(line: 459, column: 26, scope: !950)
!954 = !DILocation(line: 460, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !904, file: !21, line: 460, column: 6)
!956 = !DILocation(line: 460, column: 11, scope: !955)
!957 = !DILocation(line: 460, column: 6, scope: !904)
!958 = !DILocation(line: 460, column: 26, scope: !955)
!959 = !DILocation(line: 461, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !904, file: !21, line: 461, column: 6)
!961 = !DILocation(line: 461, column: 11, scope: !960)
!962 = !DILocation(line: 461, column: 6, scope: !904)
!963 = !DILocation(line: 461, column: 26, scope: !960)
!964 = !DILocation(line: 462, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !904, file: !21, line: 462, column: 6)
!966 = !DILocation(line: 462, column: 11, scope: !965)
!967 = !DILocation(line: 462, column: 6, scope: !904)
!968 = !DILocation(line: 462, column: 26, scope: !965)
!969 = !DILocation(line: 463, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !904, file: !21, line: 463, column: 6)
!971 = !DILocation(line: 463, column: 11, scope: !970)
!972 = !DILocation(line: 463, column: 6, scope: !904)
!973 = !DILocation(line: 463, column: 26, scope: !970)
!974 = !DILocation(line: 464, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !904, file: !21, line: 464, column: 6)
!976 = !DILocation(line: 464, column: 11, scope: !975)
!977 = !DILocation(line: 464, column: 6, scope: !904)
!978 = !DILocation(line: 464, column: 26, scope: !975)
!979 = !DILocation(line: 465, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !904, file: !21, line: 465, column: 6)
!981 = !DILocation(line: 465, column: 11, scope: !980)
!982 = !DILocation(line: 465, column: 6, scope: !904)
!983 = !DILocation(line: 465, column: 26, scope: !980)
!984 = !DILocation(line: 466, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !904, file: !21, line: 466, column: 6)
!986 = !DILocation(line: 466, column: 11, scope: !985)
!987 = !DILocation(line: 466, column: 6, scope: !904)
!988 = !DILocation(line: 466, column: 26, scope: !985)
!989 = !DILocation(line: 467, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !904, file: !21, line: 467, column: 6)
!991 = !DILocation(line: 467, column: 11, scope: !990)
!992 = !DILocation(line: 467, column: 6, scope: !904)
!993 = !DILocation(line: 467, column: 26, scope: !990)
!994 = !DILocation(line: 468, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !904, file: !21, line: 468, column: 6)
!996 = !DILocation(line: 468, column: 11, scope: !995)
!997 = !DILocation(line: 468, column: 6, scope: !904)
!998 = !DILocation(line: 468, column: 26, scope: !995)
!999 = !DILocation(line: 469, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !904, file: !21, line: 469, column: 6)
!1001 = !DILocation(line: 469, column: 11, scope: !1000)
!1002 = !DILocation(line: 469, column: 6, scope: !904)
!1003 = !DILocation(line: 469, column: 26, scope: !1000)
!1004 = !DILocation(line: 470, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !904, file: !21, line: 470, column: 6)
!1006 = !DILocation(line: 470, column: 11, scope: !1005)
!1007 = !DILocation(line: 470, column: 6, scope: !904)
!1008 = !DILocation(line: 470, column: 26, scope: !1005)
!1009 = !DILocation(line: 471, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !904, file: !21, line: 471, column: 6)
!1011 = !DILocation(line: 471, column: 11, scope: !1010)
!1012 = !DILocation(line: 471, column: 6, scope: !904)
!1013 = !DILocation(line: 471, column: 26, scope: !1010)
!1014 = !DILocation(line: 472, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !904, file: !21, line: 472, column: 6)
!1016 = !DILocation(line: 472, column: 11, scope: !1015)
!1017 = !DILocation(line: 472, column: 6, scope: !904)
!1018 = !DILocation(line: 472, column: 26, scope: !1015)
!1019 = !DILocation(line: 473, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !904, file: !21, line: 473, column: 6)
!1021 = !DILocation(line: 473, column: 11, scope: !1020)
!1022 = !DILocation(line: 473, column: 6, scope: !904)
!1023 = !DILocation(line: 473, column: 26, scope: !1020)
!1024 = !DILocation(line: 474, column: 6, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !904, file: !21, line: 474, column: 6)
!1026 = !DILocation(line: 474, column: 11, scope: !1025)
!1027 = !DILocation(line: 474, column: 6, scope: !904)
!1028 = !DILocation(line: 474, column: 27, scope: !1025)
!1029 = !DILocation(line: 475, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !904, file: !21, line: 475, column: 6)
!1031 = !DILocation(line: 475, column: 11, scope: !1030)
!1032 = !DILocation(line: 475, column: 6, scope: !904)
!1033 = !DILocation(line: 475, column: 32, scope: !1030)
!1034 = !DILocation(line: 477, column: 50, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !904, file: !21, line: 477, column: 6)
!1036 = !{i8 0, i8 2}
!1037 = !{}
!1038 = !DILocation(line: 477, column: 6, scope: !904)
!1039 = !DILocation(line: 478, column: 3, scope: !1035)
!1040 = !DILocation(line: 478, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !21, line: 478, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !21, line: 478, column: 3)
!1043 = !{i32 -2142591090}
!1044 = !DILocation(line: 478, column: 3, scope: !1042)
!1045 = !DILocation(line: 480, column: 3, scope: !1035)
!1046 = !DILocation(line: 480, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1035, file: !21, line: 480, column: 3)
!1048 = !DILocation(line: 480, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !21, line: 480, column: 3)
!1050 = !DILocation(line: 480, column: 3, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !21, line: 480, column: 3)
!1052 = !{i64 2152376409, i64 2152376438, i64 2152376484, i64 2152376542, i64 2152376596, i64 2152376650, i64 2152376705, i64 2152376736}
!1053 = !DILocation(line: 483, column: 2, scope: !904)
!1054 = !DILocation(line: 484, column: 1, scope: !904)
!1055 = !DISubprogram(name: "kmalloc_trace", scope: !21, file: !21, line: 525, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!31, !1058, !33, !262}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1060, line: 11, flags: DIFlagFwdDecl)
!1060 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1061 = distinct !DISubprogram(name: "kmalloc_type", scope: !21, file: !21, line: 401, type: !1062, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!20, !33, !36}
!1064 = !{!1065, !1066}
!1065 = !DILocalVariable(name: "flags", arg: 1, scope: !1061, file: !21, line: 401, type: !33)
!1066 = !DILocalVariable(name: "caller", arg: 2, scope: !1061, file: !21, line: 401, type: !36)
!1067 = !DILocation(line: 401, column: 67, scope: !1061)
!1068 = !DILocation(line: 401, column: 88, scope: !1061)
!1069 = !DILocation(line: 407, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !21, line: 407, column: 6)
!1071 = !DILocation(line: 407, column: 6, scope: !1061)
!1072 = !DILocation(line: 413, column: 3, scope: !1070)
!1073 = !DILocation(line: 423, column: 38, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1061, file: !21, line: 423, column: 6)
!1075 = !DILocation(line: 423, column: 44, scope: !1074)
!1076 = !DILocation(line: 423, column: 6, scope: !1061)
!1077 = !DILocation(line: 424, column: 3, scope: !1074)
!1078 = !DILocation(line: 426, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1061, file: !21, line: 425, column: 6)
!1080 = !DILocation(line: 429, column: 1, scope: !1061)
!1081 = !DISubprogram(name: "__kmalloc", scope: !21, file: !21, line: 488, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DISubprogram(name: "__compiletime_assert_196", scope: !21, file: !21, line: 478, type: !1083, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null}
!1085 = distinct !DISubprogram(name: "kmalloc_array", scope: !21, file: !21, line: 629, type: !431, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DILocalVariable(name: "n", arg: 1, scope: !1085, file: !21, line: 629, type: !262)
!1088 = !DILocalVariable(name: "size", arg: 2, scope: !1085, file: !21, line: 629, type: !262)
!1089 = !DILocalVariable(name: "flags", arg: 3, scope: !1085, file: !21, line: 629, type: !33)
!1090 = !DILocalVariable(name: "bytes", scope: !1085, file: !21, line: 631, type: !262)
!1091 = !DILocation(line: 629, column: 61, scope: !1085)
!1092 = !DILocation(line: 629, column: 71, scope: !1085)
!1093 = !DILocation(line: 629, column: 83, scope: !1085)
!1094 = !DILocation(line: 631, column: 2, scope: !1085)
!1095 = !DILocation(line: 631, column: 9, scope: !1085)
!1096 = !DILocation(line: 633, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1085, file: !21, line: 633, column: 6)
!1098 = !DILocation(line: 633, column: 6, scope: !1085)
!1099 = !DILocation(line: 634, column: 3, scope: !1097)
!1100 = !DILocation(line: 635, column: 27, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1085, file: !21, line: 635, column: 6)
!1102 = !DILocation(line: 635, column: 6, scope: !1101)
!1103 = !DILocation(line: 635, column: 30, scope: !1101)
!1104 = !DILocation(line: 635, column: 54, scope: !1101)
!1105 = !DILocation(line: 635, column: 33, scope: !1101)
!1106 = !DILocation(line: 635, column: 6, scope: !1085)
!1107 = !DILocation(line: 636, column: 18, scope: !1101)
!1108 = !DILocation(line: 636, column: 25, scope: !1101)
!1109 = !DILocation(line: 636, column: 10, scope: !1101)
!1110 = !DILocation(line: 636, column: 3, scope: !1101)
!1111 = !DILocation(line: 637, column: 19, scope: !1085)
!1112 = !DILocation(line: 637, column: 26, scope: !1085)
!1113 = !DILocation(line: 637, column: 9, scope: !1085)
!1114 = !DILocation(line: 637, column: 2, scope: !1085)
!1115 = !DILocation(line: 638, column: 1, scope: !1085)
!1116 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1117, file: !1117, line: 51, type: !1118, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1117 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!907, !907}
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "overflow", arg: 1, scope: !1116, file: !1117, line: 51, type: !907)
!1122 = !DILocation(line: 51, column: 60, scope: !1116)
!1123 = !DILocation(line: 53, column: 9, scope: !1116)
!1124 = !DILocation(line: 53, column: 2, scope: !1116)
