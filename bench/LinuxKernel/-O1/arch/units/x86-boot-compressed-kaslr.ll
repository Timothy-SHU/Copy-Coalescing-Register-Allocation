; ModuleID = 'arch/x86/boot/compressed/kaslr.c'
source_filename = "arch/x86/boot/compressed/kaslr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.mem_vector = type { i64, i64 }
%struct.slot_area = type { i64, i64 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.setup_indirect = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c" KASLR using\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c" RDRAND\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c" RDTSC\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c" i8254\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1, !dbg !19
@_ctype = hidden constant [256 x i8] c"\08\08\08\08\08\08\08\08\08(((((\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\A0\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\04\04\04\04\04\04\04\04\04\04\10\10\10\10\10\10\10AAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\10\10\10\10\10\10BBBBBB\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\10\10\10\10\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A0\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\10\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\10\02\02\02\02\02\02\02\02", align 16, !dbg !24
@.str.6 = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1, !dbg !106
@.str.7 = private unnamed_addr constant [38 x i8] c"KASLR disabled: 'nokaslr' on cmdline.\00", align 1, !dbg !108
@boot_params_ptr = external hidden global ptr, align 8
@mem_limit = internal global i64 0, align 8, !dbg !118
@.str.8 = private unnamed_addr constant [52 x i8] c"Physical KASLR disabled: no suitable memory region!\00", align 1, !dbg !113
@build_str = internal constant [182 x i8] c"6.6.83 (tshu@optiplex) (Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144), Ubuntu LLD 18.1.8) #1 SMP PREEMPT_DYNAMIC Wed Mar 19 14:51:27 HKT 2025\00", align 16, !dbg !120
@pio_ops = external hidden global %struct.port_io_ops, align 8
@__pgtable_l5_enabled = external hidden global i32, align 4
@mem_avoid = internal global [8 x %struct.mem_vector] zeroinitializer, align 16, !dbg !126
@num_immovable_mem = internal global i32 0, align 4, !dbg !201
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed to allocate space for tmp_cmdline\00", align 1, !dbg !134
@.str.10 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !139
@.str.11 = private unnamed_addr constant [7 x i8] c"memmap\00", align 1, !dbg !144
@.str.12 = private unnamed_addr constant [10 x i8] c"hugepages\00", align 1, !dbg !146
@.str.13 = private unnamed_addr constant [4 x i8] c"mem\00", align 1, !dbg !151
@.str.14 = private unnamed_addr constant [10 x i8] c"nopentium\00", align 1, !dbg !156
@.str.15 = private unnamed_addr constant [13 x i8] c"efi_fake_mem\00", align 1, !dbg !158
@mem_avoid_memmap.i = internal global i32 0, align 4, !dbg !160
@memmap_too_large = internal global i8 0, align 1, !dbg !178
@.str.16 = private unnamed_addr constant [9 x i8] c"exactmap\00", align 1, !dbg !173
@parse_gb_huge_pages.gbpage_sz = internal global i8 0, align 1, !dbg !183
@.str.17 = private unnamed_addr constant [11 x i8] c"hugepagesz\00", align 1, !dbg !192
@.str.18 = private unnamed_addr constant [41 x i8] c"Repeatedly set hugeTLB page size of 1G!\0A\00", align 1, !dbg !197
@max_gb_huge_pages = internal global i64 0, align 8, !dbg !199
@.str.19 = private unnamed_addr constant [57 x i8] c"Aborted memory entries scan (more than 4 memmap= args)!\0A\00", align 1, !dbg !203
@.str.20 = private unnamed_addr constant [34 x i8] c"Invalid physical address chosen!\0A\00", align 1, !dbg !208
@.str.21 = private unnamed_addr constant [5 x i8] c"EL32\00", align 1, !dbg !213
@.str.22 = private unnamed_addr constant [5 x i8] c"EL64\00", align 1, !dbg !215
@slot_area_index = internal global i32 0, align 4, !dbg !233
@.str.23 = private unnamed_addr constant [49 x i8] c"Aborted e820/efi memmap scan (slot_areas full)!\0A\00", align 1, !dbg !217
@slot_areas = internal global [100 x %struct.slot_area] zeroinitializer, align 16, !dbg !222
@slot_max = internal global i64 0, align 8, !dbg !231
@.str.24 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1, !dbg !235
@.str.25 = private unnamed_addr constant [31 x i8] c"slots_fetch_random() failed!?\0A\00", align 1, !dbg !237
@.str.26 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1, !dbg !242

; Function Attrs: noredzone nounwind
define hidden i64 @kaslr_get_random_long(ptr noundef %purpose) #0 !dbg !256 {
entry:
  %purpose.addr = alloca ptr, align 8
  %mix_const = alloca i64, align 8
  %raw = alloca i64, align 8
  %random = alloca i64, align 8
  %use_i8254 = alloca i8, align 1
  store ptr %purpose, ptr %purpose.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %purpose.addr, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %mix_const) #10, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %mix_const, metadata !262, metadata !DIExpression()), !dbg !269
  store i64 6728387515348454867, ptr %mix_const, align 8, !dbg !269
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #10, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %raw, metadata !264, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %random) #10, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %random, metadata !265, metadata !DIExpression()), !dbg !272
  %call = call i64 @get_boot_seed() #11, !dbg !273
  store i64 %call, ptr %random, align 8, !dbg !272
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_i8254) #10, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %use_i8254, metadata !266, metadata !DIExpression()), !dbg !275
  store i8 1, ptr %use_i8254, align 1, !dbg !275
  %0 = load ptr, ptr %purpose.addr, align 8, !dbg !276
  %tobool = icmp ne ptr %0, null, !dbg !276
  br i1 %tobool, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %purpose.addr, align 8, !dbg !279
  call void @__putstr(ptr noundef %1) #11, !dbg !279
  call void @__putstr(ptr noundef @.str) #11, !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i1 @has_cpuflag(i32 noundef 158) #11, !dbg !283
  br i1 %call1, label %if.then2, label %if.end9, !dbg !285

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %purpose.addr, align 8, !dbg !286
  %tobool3 = icmp ne ptr %2, null, !dbg !286
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !289

if.then4:                                         ; preds = %if.then2
  call void @__putstr(ptr noundef @.str.1) #11, !dbg !290
  br label %if.end5, !dbg !290

if.end5:                                          ; preds = %if.then4, %if.then2
  %call6 = call zeroext i1 @rdrand_long(ptr noundef %raw) #11, !dbg !291
  br i1 %call6, label %if.then7, label %if.end8, !dbg !293

if.then7:                                         ; preds = %if.end5
  %3 = load i64, ptr %raw, align 8, !dbg !294
  %4 = load i64, ptr %random, align 8, !dbg !296
  %xor = xor i64 %4, %3, !dbg !296
  store i64 %xor, ptr %random, align 8, !dbg !296
  store i8 0, ptr %use_i8254, align 1, !dbg !297
  br label %if.end8, !dbg !298

if.end8:                                          ; preds = %if.then7, %if.end5
  br label %if.end9, !dbg !299

if.end9:                                          ; preds = %if.end8, %if.end
  %call10 = call zeroext i1 @has_cpuflag(i32 noundef 4) #11, !dbg !300
  br i1 %call10, label %if.then11, label %if.end17, !dbg !302

if.then11:                                        ; preds = %if.end9
  %5 = load ptr, ptr %purpose.addr, align 8, !dbg !303
  %tobool12 = icmp ne ptr %5, null, !dbg !303
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !306

if.then13:                                        ; preds = %if.then11
  call void @__putstr(ptr noundef @.str.2) #11, !dbg !307
  br label %if.end14, !dbg !307

if.end14:                                         ; preds = %if.then13, %if.then11
  %call15 = call i64 @rdtsc() #11, !dbg !308
  store i64 %call15, ptr %raw, align 8, !dbg !309
  %6 = load i64, ptr %raw, align 8, !dbg !310
  %7 = load i64, ptr %random, align 8, !dbg !311
  %xor16 = xor i64 %7, %6, !dbg !311
  store i64 %xor16, ptr %random, align 8, !dbg !311
  store i8 0, ptr %use_i8254, align 1, !dbg !312
  br label %if.end17, !dbg !313

if.end17:                                         ; preds = %if.end14, %if.end9
  %8 = load i8, ptr %use_i8254, align 1, !dbg !314, !range !316, !noundef !317
  %tobool18 = trunc i8 %8 to i1, !dbg !314
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !318

if.then19:                                        ; preds = %if.end17
  %9 = load ptr, ptr %purpose.addr, align 8, !dbg !319
  %tobool20 = icmp ne ptr %9, null, !dbg !319
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !322

if.then21:                                        ; preds = %if.then19
  call void @__putstr(ptr noundef @.str.3) #11, !dbg !323
  br label %if.end22, !dbg !323

if.end22:                                         ; preds = %if.then21, %if.then19
  %call23 = call zeroext i16 @i8254() #11, !dbg !324
  %conv = zext i16 %call23 to i64, !dbg !324
  %10 = load i64, ptr %random, align 8, !dbg !325
  %xor24 = xor i64 %10, %conv, !dbg !325
  store i64 %xor24, ptr %random, align 8, !dbg !325
  br label %if.end25, !dbg !326

if.end25:                                         ; preds = %if.end22, %if.end17
  %11 = load i64, ptr %random, align 8, !dbg !327
  %12 = call { i64, i64 } asm " mulq $3", "={ax},={dx},{ax},rm,~{dirflag},~{fpsr},~{flags}"(i64 %11, i64 6728387515348454867) #12, !dbg !328, !srcloc !329
  %asmresult = extractvalue { i64, i64 } %12, 0, !dbg !328
  %asmresult26 = extractvalue { i64, i64 } %12, 1, !dbg !328
  store i64 %asmresult, ptr %random, align 8, !dbg !328
  store i64 %asmresult26, ptr %raw, align 8, !dbg !328
  %13 = load i64, ptr %raw, align 8, !dbg !330
  %14 = load i64, ptr %random, align 8, !dbg !331
  %add = add i64 %14, %13, !dbg !331
  store i64 %add, ptr %random, align 8, !dbg !331
  %15 = load ptr, ptr %purpose.addr, align 8, !dbg !332
  %tobool27 = icmp ne ptr %15, null, !dbg !332
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !334

if.then28:                                        ; preds = %if.end25
  call void @__putstr(ptr noundef @.str.4) #11, !dbg !335
  br label %if.end29, !dbg !335

if.end29:                                         ; preds = %if.then28, %if.end25
  %16 = load i64, ptr %random, align 8, !dbg !336
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_i8254) #10, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %random) #10, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #10, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %mix_const) #10, !dbg !337
  ret i64 %16, !dbg !338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define internal i64 @get_boot_seed() #0 !dbg !339 {
entry:
  %hash = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #10, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !343, metadata !DIExpression()), !dbg !345
  store i64 0, ptr %hash, align 8, !dbg !345
  %0 = load i64, ptr %hash, align 8, !dbg !346
  %call = call i64 @rotate_xor(i64 noundef %0, ptr noundef @build_str, i64 noundef 182) #11, !dbg !347
  store i64 %call, ptr %hash, align 8, !dbg !348
  %1 = load i64, ptr %hash, align 8, !dbg !349
  %2 = load ptr, ptr @boot_params_ptr, align 8, !dbg !350
  %call1 = call i64 @rotate_xor(i64 noundef %1, ptr noundef %2, i64 noundef 4096) #11, !dbg !351
  store i64 %call1, ptr %hash, align 8, !dbg !352
  %3 = load i64, ptr %hash, align 8, !dbg !353
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #10, !dbg !354
  ret i64 %3, !dbg !355
}

; Function Attrs: noredzone
declare !dbg !356 hidden void @__putstr(ptr noundef) #3

; Function Attrs: noredzone
declare !dbg !359 hidden zeroext i1 @has_cpuflag(i32 noundef) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @rdrand_long(ptr noundef %v) #4 !dbg !362 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %ok = alloca i8, align 1
  %retry = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #10, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !368, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #10, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !369, metadata !DIExpression()), !dbg !374
  store i32 10, ptr %retry, align 4, !dbg !374
  br label %do.body, !dbg !375

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %v.addr, align 8, !dbg !376
  %1 = call { i8, i64 } asm sideeffect "rdrand $1\0A\09/* output condition code c*/\0A", "={@ccc},=r,~{dirflag},~{fpsr},~{flags}"() #10, !dbg !378, !srcloc !379
  %asmresult = extractvalue { i8, i64 } %1, 0, !dbg !378
  %asmresult1 = extractvalue { i8, i64 } %1, 1, !dbg !378
  %2 = icmp ult i8 %asmresult, 2, !dbg !378
  call void @llvm.assume(i1 %2), !dbg !378
  store i8 %asmresult, ptr %ok, align 1, !dbg !378
  store i64 %asmresult1, ptr %0, align 8, !dbg !378
  %3 = load i8, ptr %ok, align 1, !dbg !380, !range !316, !noundef !317
  %tobool = trunc i8 %3 to i1, !dbg !380
  br i1 %tobool, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %do.body
  store i1 true, ptr %retval, align 1, !dbg !383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !383

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !384

do.cond:                                          ; preds = %if.end
  %4 = load i32, ptr %retry, align 4, !dbg !385
  %dec = add i32 %4, -1, !dbg !385
  store i32 %dec, ptr %retry, align 4, !dbg !385
  %tobool2 = icmp ne i32 %dec, 0, !dbg !384
  br i1 %tobool2, label %do.body, label %do.end, !dbg !384, !llvm.loop !386

do.end:                                           ; preds = %do.cond
  store i1 false, ptr %retval, align 1, !dbg !390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #10, !dbg !391
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #10, !dbg !391
  %5 = load i1, ptr %retval, align 1, !dbg !391
  ret i1 %5, !dbg !391
}

; Function Attrs: alwaysinline noredzone nounwind
define internal i64 @rdtsc() #5 !dbg !392 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #10, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %low, metadata !397, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #10, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %high, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !400, !srcloc !401
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !400
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !400
  store i64 %asmresult, ptr %low, align 8, !dbg !400
  store i64 %asmresult1, ptr %high, align 8, !dbg !400
  %1 = load i64, ptr %low, align 8, !dbg !402
  %2 = load i64, ptr %high, align 8, !dbg !402
  %shl = shl i64 %2, 32, !dbg !402
  %or = or i64 %1, %shl, !dbg !402
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #10, !dbg !403
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #10, !dbg !403
  ret i64 %or, !dbg !404
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i16 @i8254() #4 !dbg !405 {
entry:
  %status = alloca i16, align 2
  %timer = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #10, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %status, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 2, ptr %timer) #10, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !413, metadata !DIExpression()), !dbg !416
  br label %do.body, !dbg !417

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !418
  call void %0(i8 noundef zeroext -62, i16 noundef zeroext 67) #11, !dbg !418
  %1 = load ptr, ptr @pio_ops, align 8, !dbg !420
  %call = call zeroext i8 %1(i16 noundef zeroext 64) #11, !dbg !420
  %conv = zext i8 %call to i16, !dbg !420
  store i16 %conv, ptr %status, align 2, !dbg !421
  %2 = load ptr, ptr @pio_ops, align 8, !dbg !422
  %call1 = call zeroext i8 %2(i16 noundef zeroext 64) #11, !dbg !422
  %conv2 = zext i8 %call1 to i16, !dbg !422
  store i16 %conv2, ptr %timer, align 2, !dbg !423
  %3 = load ptr, ptr @pio_ops, align 8, !dbg !424
  %call3 = call zeroext i8 %3(i16 noundef zeroext 64) #11, !dbg !424
  %conv4 = zext i8 %call3 to i32, !dbg !424
  %shl = shl i32 %conv4, 8, !dbg !425
  %4 = load i16, ptr %timer, align 2, !dbg !426
  %conv5 = zext i16 %4 to i32, !dbg !426
  %or = or i32 %conv5, %shl, !dbg !426
  %conv6 = trunc i32 %or to i16, !dbg !426
  store i16 %conv6, ptr %timer, align 2, !dbg !426
  br label %do.cond, !dbg !427

do.cond:                                          ; preds = %do.body
  %5 = load i16, ptr %status, align 2, !dbg !428
  %conv7 = zext i16 %5 to i32, !dbg !428
  %and = and i32 %conv7, 64, !dbg !429
  %tobool = icmp ne i32 %and, 0, !dbg !427
  br i1 %tobool, label %do.body, label %do.end, !dbg !427, !llvm.loop !430

do.end:                                           ; preds = %do.cond
  %6 = load i16, ptr %timer, align 2, !dbg !432
  call void @llvm.lifetime.end.p0(i64 2, ptr %timer) #10, !dbg !433
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #10, !dbg !433
  ret i16 %6, !dbg !434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden ptr @skip_spaces(ptr noundef %str) #0 !dbg !435 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !439, metadata !DIExpression()), !dbg !440
  br label %while.cond, !dbg !441

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !442
  %1 = load i8, ptr %0, align 1, !dbg !442
  %conv = zext i8 %1 to i32, !dbg !442
  %idxprom = sext i32 %conv to i64, !dbg !442
  %arrayidx = getelementptr inbounds [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !442
  %2 = load i8, ptr %arrayidx, align 1, !dbg !442
  %conv1 = zext i8 %2 to i32, !dbg !442
  %and = and i32 %conv1, 32, !dbg !442
  %cmp = icmp ne i32 %and, 0, !dbg !442
  br i1 %cmp, label %while.body, label %while.end, !dbg !441

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %str.addr, align 8, !dbg !443
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !443
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !443
  br label %while.cond, !dbg !441, !llvm.loop !444

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %str.addr, align 8, !dbg !446
  ret ptr %4, !dbg !447
}

; Function Attrs: noredzone nounwind
define hidden i32 @get_option(ptr noundef %str, ptr noundef %pint) #0 !dbg !448 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !454, metadata !DIExpression()), !dbg !458
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !455, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #10, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !456, metadata !DIExpression()), !dbg !461
  %0 = load ptr, ptr %str.addr, align 8, !dbg !462
  %1 = load ptr, ptr %0, align 8, !dbg !463
  store ptr %1, ptr %cur, align 8, !dbg !461
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #10, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %value, metadata !457, metadata !DIExpression()), !dbg !465
  %2 = load ptr, ptr %cur, align 8, !dbg !466
  %tobool = icmp ne ptr %2, null, !dbg !466
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !468

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !469
  %4 = load i8, ptr %3, align 1, !dbg !470
  %tobool1 = icmp ne i8 %4, 0, !dbg !471
  br i1 %tobool1, label %if.end, label %if.then, !dbg !472

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !473

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %cur, align 8, !dbg !474
  %6 = load i8, ptr %5, align 1, !dbg !476
  %conv = sext i8 %6 to i32, !dbg !476
  %cmp = icmp eq i32 %conv, 45, !dbg !477
  br i1 %cmp, label %if.then3, label %if.else, !dbg !478

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %cur, align 8, !dbg !479
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !479
  store ptr %incdec.ptr, ptr %cur, align 8, !dbg !479
  %8 = load ptr, ptr %str.addr, align 8, !dbg !480
  %call = call i64 @simple_strtoull(ptr noundef %incdec.ptr, ptr noundef %8, i32 noundef 0) #11, !dbg !481
  %sub = sub i64 0, %call, !dbg !482
  %conv4 = trunc i64 %sub to i32, !dbg !482
  store i32 %conv4, ptr %value, align 4, !dbg !483
  br label %if.end7, !dbg !484

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %cur, align 8, !dbg !485
  %10 = load ptr, ptr %str.addr, align 8, !dbg !486
  %call5 = call i64 @simple_strtoull(ptr noundef %9, ptr noundef %10, i32 noundef 0) #11, !dbg !487
  %conv6 = trunc i64 %call5 to i32, !dbg !487
  store i32 %conv6, ptr %value, align 4, !dbg !488
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %pint.addr, align 8, !dbg !489
  %tobool8 = icmp ne ptr %11, null, !dbg !489
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !491

if.then9:                                         ; preds = %if.end7
  %12 = load i32, ptr %value, align 4, !dbg !492
  %13 = load ptr, ptr %pint.addr, align 8, !dbg !493
  store i32 %12, ptr %13, align 4, !dbg !494
  br label %if.end10, !dbg !495

if.end10:                                         ; preds = %if.then9, %if.end7
  %14 = load ptr, ptr %cur, align 8, !dbg !496
  %15 = load ptr, ptr %str.addr, align 8, !dbg !498
  %16 = load ptr, ptr %15, align 8, !dbg !499
  %cmp11 = icmp eq ptr %14, %16, !dbg !500
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !501

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !502

if.end14:                                         ; preds = %if.end10
  %17 = load ptr, ptr %str.addr, align 8, !dbg !503
  %18 = load ptr, ptr %17, align 8, !dbg !505
  %19 = load i8, ptr %18, align 1, !dbg !506
  %conv15 = sext i8 %19 to i32, !dbg !506
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !507
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !508

if.then18:                                        ; preds = %if.end14
  %20 = load ptr, ptr %str.addr, align 8, !dbg !509
  %21 = load ptr, ptr %20, align 8, !dbg !511
  %incdec.ptr19 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !511
  store ptr %incdec.ptr19, ptr %20, align 8, !dbg !511
  store i32 2, ptr %retval, align 4, !dbg !512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !512

if.end20:                                         ; preds = %if.end14
  %22 = load ptr, ptr %str.addr, align 8, !dbg !513
  %23 = load ptr, ptr %22, align 8, !dbg !515
  %24 = load i8, ptr %23, align 1, !dbg !516
  %conv21 = sext i8 %24 to i32, !dbg !516
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !517
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !518

if.then24:                                        ; preds = %if.end20
  store i32 3, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end25:                                         ; preds = %if.end20
  store i32 1, ptr %retval, align 4, !dbg !520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !520

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #10, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #10, !dbg !521
  %25 = load i32, ptr %retval, align 4, !dbg !521
  ret i32 %25, !dbg !521
}

; Function Attrs: noredzone
declare !dbg !522 hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone nounwind
define hidden ptr @get_options(ptr noundef %str, i32 noundef %nints, ptr noundef %ints) #0 !dbg !526 {
entry:
  %str.addr = alloca ptr, align 8
  %nints.addr = alloca i32, align 4
  %ints.addr = alloca ptr, align 8
  %validate = alloca i8, align 1
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %pint = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %range_nums = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !530, metadata !DIExpression()), !dbg !542
  store i32 %nints, ptr %nints.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nints.addr, metadata !531, metadata !DIExpression()), !dbg !543
  store ptr %ints, ptr %ints.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ints.addr, metadata !532, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 1, ptr %validate) #10, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %validate, metadata !533, metadata !DIExpression()), !dbg !546
  %0 = load i32, ptr %nints.addr, align 4, !dbg !547
  %cmp = icmp eq i32 %0, 0, !dbg !548
  %frombool = zext i1 %cmp to i8, !dbg !546
  store i8 %frombool, ptr %validate, align 1, !dbg !546
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %res, metadata !534, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %i, metadata !535, metadata !DIExpression()), !dbg !551
  store i32 1, ptr %i, align 4, !dbg !551
  br label %while.cond, !dbg !552

while.cond:                                       ; preds = %cleanup.cont23, %entry
  %1 = load i32, ptr %i, align 4, !dbg !553
  %2 = load i32, ptr %nints.addr, align 4, !dbg !554
  %cmp1 = icmp slt i32 %1, %2, !dbg !555
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !556

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8, ptr %validate, align 1, !dbg !557, !range !316, !noundef !317
  %tobool = trunc i8 %3 to i1, !dbg !557
  br label %lor.end, !dbg !556

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !552

while.body:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pint) #10, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %pint, metadata !536, metadata !DIExpression()), !dbg !559
  %5 = load i8, ptr %validate, align 1, !dbg !560, !range !316, !noundef !317
  %tobool2 = trunc i8 %5 to i1, !dbg !560
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !560

cond.true:                                        ; preds = %while.body
  %6 = load ptr, ptr %ints.addr, align 8, !dbg !561
  br label %cond.end, !dbg !560

cond.false:                                       ; preds = %while.body
  %7 = load ptr, ptr %ints.addr, align 8, !dbg !562
  %8 = load i32, ptr %i, align 4, !dbg !563
  %idx.ext = sext i32 %8 to i64, !dbg !564
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 %idx.ext, !dbg !564
  br label %cond.end, !dbg !560

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %add.ptr, %cond.false ], !dbg !560
  store ptr %cond, ptr %pint, align 8, !dbg !559
  %9 = load ptr, ptr %pint, align 8, !dbg !565
  %call = call i32 @get_option(ptr noundef %str.addr, ptr noundef %9) #11, !dbg !566
  store i32 %call, ptr %res, align 4, !dbg !567
  %10 = load i32, ptr %res, align 4, !dbg !568
  %cmp3 = icmp eq i32 %10, 0, !dbg !570
  br i1 %cmp3, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !572

if.end:                                           ; preds = %cond.end
  %11 = load i32, ptr %res, align 4, !dbg !573
  %cmp4 = icmp eq i32 %11, 3, !dbg !574
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !575

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %n, metadata !538, metadata !DIExpression()), !dbg !577
  %12 = load i8, ptr %validate, align 1, !dbg !578, !range !316, !noundef !317
  %tobool6 = trunc i8 %12 to i1, !dbg !578
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !578

cond.true7:                                       ; preds = %if.then5
  br label %cond.end9, !dbg !578

cond.false8:                                      ; preds = %if.then5
  %13 = load i32, ptr %nints.addr, align 4, !dbg !579
  %14 = load i32, ptr %i, align 4, !dbg !580
  %sub = sub nsw i32 %13, %14, !dbg !581
  br label %cond.end9, !dbg !578

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ 0, %cond.true7 ], [ %sub, %cond.false8 ], !dbg !578
  store i32 %cond10, ptr %n, align 4, !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %range_nums) #10, !dbg !582
  call void @llvm.dbg.declare(metadata ptr %range_nums, metadata !541, metadata !DIExpression()), !dbg !583
  %15 = load ptr, ptr %pint, align 8, !dbg !584
  %16 = load i32, ptr %n, align 4, !dbg !585
  %call11 = call i32 @get_range(ptr noundef %str.addr, ptr noundef %15, i32 noundef %16) #11, !dbg !586
  store i32 %call11, ptr %range_nums, align 4, !dbg !587
  %17 = load i32, ptr %range_nums, align 4, !dbg !588
  %cmp12 = icmp slt i32 %17, 0, !dbg !590
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !591

if.then13:                                        ; preds = %cond.end9
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !592

if.end14:                                         ; preds = %cond.end9
  %18 = load i32, ptr %range_nums, align 4, !dbg !593
  %sub15 = sub nsw i32 %18, 1, !dbg !594
  %19 = load i32, ptr %i, align 4, !dbg !595
  %add = add nsw i32 %19, %sub15, !dbg !595
  store i32 %add, ptr %i, align 4, !dbg !595
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !596
  br label %cleanup, !dbg !596

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %range_nums) #10, !dbg !596
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10, !dbg !596
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !597

if.end17:                                         ; preds = %cleanup.cont, %if.end
  %20 = load i32, ptr %i, align 4, !dbg !598
  %inc = add nsw i32 %20, 1, !dbg !598
  store i32 %inc, ptr %i, align 4, !dbg !598
  %21 = load i32, ptr %res, align 4, !dbg !599
  %cmp18 = icmp eq i32 %21, 1, !dbg !601
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !602

if.then19:                                        ; preds = %if.end17
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !603

if.end20:                                         ; preds = %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !604
  br label %cleanup21, !dbg !604

cleanup21:                                        ; preds = %if.end20, %if.then19, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pint) #10, !dbg !604
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 3, label %while.end
  ]

cleanup.cont23:                                   ; preds = %cleanup21
  br label %while.cond, !dbg !552, !llvm.loop !605

while.end:                                        ; preds = %cleanup21, %lor.end
  %22 = load i32, ptr %i, align 4, !dbg !606
  %sub24 = sub nsw i32 %22, 1, !dbg !607
  %23 = load ptr, ptr %ints.addr, align 8, !dbg !608
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 0, !dbg !608
  store i32 %sub24, ptr %arrayidx, align 4, !dbg !609
  %24 = load ptr, ptr %str.addr, align 8, !dbg !610
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10, !dbg !611
  call void @llvm.lifetime.end.p0(i64 1, ptr %validate) #10, !dbg !611
  ret ptr %24, !dbg !612

unreachable:                                      ; preds = %cleanup21
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @get_range(ptr noundef %str, ptr noundef %pint, i32 noundef %n) #0 !dbg !613 {
entry:
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %inc_counter = alloca i32, align 4
  %upper_range = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !617, metadata !DIExpression()), !dbg !623
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !618, metadata !DIExpression()), !dbg !624
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !619, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %x, metadata !620, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_counter) #10, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %inc_counter, metadata !621, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_range) #10, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %upper_range, metadata !622, metadata !DIExpression()), !dbg !629
  %0 = load ptr, ptr %str.addr, align 8, !dbg !630
  %1 = load ptr, ptr %0, align 8, !dbg !631
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !631
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !631
  %2 = load ptr, ptr %str.addr, align 8, !dbg !632
  %3 = load ptr, ptr %2, align 8, !dbg !633
  %call = call i64 @simple_strtol(ptr noundef %3, ptr noundef null, i32 noundef 0) #11, !dbg !634
  %conv = trunc i64 %call to i32, !dbg !634
  store i32 %conv, ptr %upper_range, align 4, !dbg !635
  %4 = load i32, ptr %upper_range, align 4, !dbg !636
  %5 = load ptr, ptr %pint.addr, align 8, !dbg !637
  %6 = load i32, ptr %5, align 4, !dbg !638
  %sub = sub nsw i32 %4, %6, !dbg !639
  store i32 %sub, ptr %inc_counter, align 4, !dbg !640
  %7 = load ptr, ptr %pint.addr, align 8, !dbg !641
  %8 = load i32, ptr %7, align 4, !dbg !643
  store i32 %8, ptr %x, align 4, !dbg !644
  br label %for.cond, !dbg !645

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !646
  %tobool = icmp ne i32 %9, 0, !dbg !646
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !648

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, ptr %x, align 4, !dbg !649
  %11 = load i32, ptr %upper_range, align 4, !dbg !650
  %cmp = icmp slt i32 %10, %11, !dbg !651
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !652
  br i1 %12, label %for.body, label %for.end, !dbg !653

for.body:                                         ; preds = %land.end
  %13 = load i32, ptr %x, align 4, !dbg !654
  %14 = load ptr, ptr %pint.addr, align 8, !dbg !655
  %incdec.ptr2 = getelementptr inbounds i32, ptr %14, i32 1, !dbg !655
  store ptr %incdec.ptr2, ptr %pint.addr, align 8, !dbg !655
  store i32 %13, ptr %14, align 4, !dbg !656
  br label %for.inc, !dbg !657

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %x, align 4, !dbg !658
  %inc = add nsw i32 %15, 1, !dbg !658
  store i32 %inc, ptr %x, align 4, !dbg !658
  %16 = load i32, ptr %n.addr, align 4, !dbg !659
  %dec = add nsw i32 %16, -1, !dbg !659
  store i32 %dec, ptr %n.addr, align 4, !dbg !659
  br label %for.cond, !dbg !660, !llvm.loop !661

for.end:                                          ; preds = %land.end
  %17 = load i32, ptr %inc_counter, align 4, !dbg !663
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_range) #10, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_counter) #10, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10, !dbg !664
  ret i32 %17, !dbg !665
}

; Function Attrs: noredzone nounwind
define hidden i64 @memparse(ptr noundef %ptr, ptr noundef %retptr) #0 !dbg !666 {
entry:
  %ptr.addr = alloca ptr, align 8
  %retptr.addr = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !670, metadata !DIExpression()), !dbg !674
  store ptr %retptr, ptr %retptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retptr.addr, metadata !671, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #10, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %endptr, metadata !672, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !673, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !680
  %call = call i64 @simple_strtoull(ptr noundef %0, ptr noundef %endptr, i32 noundef 0) #11, !dbg !681
  store i64 %call, ptr %ret, align 8, !dbg !679
  %1 = load ptr, ptr %endptr, align 8, !dbg !682
  %2 = load i8, ptr %1, align 1, !dbg !683
  %conv = sext i8 %2 to i32, !dbg !683
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb
    i32 80, label %sw.bb1
    i32 112, label %sw.bb1
    i32 84, label %sw.bb3
    i32 116, label %sw.bb3
    i32 71, label %sw.bb5
    i32 103, label %sw.bb5
    i32 77, label %sw.bb7
    i32 109, label %sw.bb7
    i32 75, label %sw.bb9
    i32 107, label %sw.bb9
  ], !dbg !684

sw.bb:                                            ; preds = %entry, %entry
  %3 = load i64, ptr %ret, align 8, !dbg !685
  %shl = shl i64 %3, 10, !dbg !685
  store i64 %shl, ptr %ret, align 8, !dbg !685
  br label %sw.bb1, !dbg !687

sw.bb1:                                           ; preds = %entry, %entry, %sw.bb
  %4 = load i64, ptr %ret, align 8, !dbg !688
  %shl2 = shl i64 %4, 10, !dbg !688
  store i64 %shl2, ptr %ret, align 8, !dbg !688
  br label %sw.bb3, !dbg !689

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb1
  %5 = load i64, ptr %ret, align 8, !dbg !690
  %shl4 = shl i64 %5, 10, !dbg !690
  store i64 %shl4, ptr %ret, align 8, !dbg !690
  br label %sw.bb5, !dbg !691

sw.bb5:                                           ; preds = %entry, %entry, %sw.bb3
  %6 = load i64, ptr %ret, align 8, !dbg !692
  %shl6 = shl i64 %6, 10, !dbg !692
  store i64 %shl6, ptr %ret, align 8, !dbg !692
  br label %sw.bb7, !dbg !693

sw.bb7:                                           ; preds = %entry, %entry, %sw.bb5
  %7 = load i64, ptr %ret, align 8, !dbg !694
  %shl8 = shl i64 %7, 10, !dbg !694
  store i64 %shl8, ptr %ret, align 8, !dbg !694
  br label %sw.bb9, !dbg !695

sw.bb9:                                           ; preds = %entry, %entry, %sw.bb7
  %8 = load i64, ptr %ret, align 8, !dbg !696
  %shl10 = shl i64 %8, 10, !dbg !696
  store i64 %shl10, ptr %ret, align 8, !dbg !696
  %9 = load ptr, ptr %endptr, align 8, !dbg !697
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !697
  store ptr %incdec.ptr, ptr %endptr, align 8, !dbg !697
  br label %sw.default, !dbg !698

sw.default:                                       ; preds = %entry, %sw.bb9
  br label %sw.epilog, !dbg !699

sw.epilog:                                        ; preds = %sw.default
  %10 = load ptr, ptr %retptr.addr, align 8, !dbg !700
  %tobool = icmp ne ptr %10, null, !dbg !700
  br i1 %tobool, label %if.then, label %if.end, !dbg !702

if.then:                                          ; preds = %sw.epilog
  %11 = load ptr, ptr %endptr, align 8, !dbg !703
  %12 = load ptr, ptr %retptr.addr, align 8, !dbg !704
  store ptr %11, ptr %12, align 8, !dbg !705
  br label %if.end, !dbg !706

if.end:                                           ; preds = %if.then, %sw.epilog
  %13 = load i64, ptr %ret, align 8, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !708
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #10, !dbg !708
  ret i64 %13, !dbg !709
}

; Function Attrs: noredzone nounwind
define hidden zeroext i1 @parse_option_str(ptr noundef %str, ptr noundef %option) #0 !dbg !710 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !714, metadata !DIExpression()), !dbg !716
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !715, metadata !DIExpression()), !dbg !717
  br label %while.cond, !dbg !718

while.cond:                                       ; preds = %if.end20, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !719
  %1 = load i8, ptr %0, align 1, !dbg !720
  %tobool = icmp ne i8 %1, 0, !dbg !718
  br i1 %tobool, label %while.body, label %while.end21, !dbg !718

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !721
  %3 = load ptr, ptr %option.addr, align 8, !dbg !724
  %4 = load ptr, ptr %option.addr, align 8, !dbg !725
  %call = call i64 @strlen(ptr noundef %4) #11, !dbg !726
  %call1 = call i32 @strncmp(ptr noundef %2, ptr noundef %3, i64 noundef %call) #11, !dbg !727
  %tobool2 = icmp ne i32 %call1, 0, !dbg !727
  br i1 %tobool2, label %if.end7, label %if.then, !dbg !728

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %option.addr, align 8, !dbg !729
  %call3 = call i64 @strlen(ptr noundef %5) #11, !dbg !731
  %6 = load ptr, ptr %str.addr, align 8, !dbg !732
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %call3, !dbg !732
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !732
  %7 = load ptr, ptr %str.addr, align 8, !dbg !733
  %8 = load i8, ptr %7, align 1, !dbg !735
  %tobool4 = icmp ne i8 %8, 0, !dbg !735
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !736

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %str.addr, align 8, !dbg !737
  %10 = load i8, ptr %9, align 1, !dbg !738
  %conv = sext i8 %10 to i32, !dbg !738
  %cmp = icmp eq i32 %conv, 44, !dbg !739
  br i1 %cmp, label %if.then6, label %if.end, !dbg !740

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i1 true, ptr %retval, align 1, !dbg !741
  br label %return, !dbg !741

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !742

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond8, !dbg !743

while.cond8:                                      ; preds = %while.body14, %if.end7
  %11 = load ptr, ptr %str.addr, align 8, !dbg !744
  %12 = load i8, ptr %11, align 1, !dbg !745
  %conv9 = sext i8 %12 to i32, !dbg !745
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !745
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !746

land.rhs:                                         ; preds = %while.cond8
  %13 = load ptr, ptr %str.addr, align 8, !dbg !747
  %14 = load i8, ptr %13, align 1, !dbg !748
  %conv11 = sext i8 %14 to i32, !dbg !748
  %cmp12 = icmp ne i32 %conv11, 44, !dbg !749
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %15 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !750
  br i1 %15, label %while.body14, label %while.end, !dbg !743

while.body14:                                     ; preds = %land.end
  %16 = load ptr, ptr %str.addr, align 8, !dbg !751
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !751
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !751
  br label %while.cond8, !dbg !743, !llvm.loop !752

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %str.addr, align 8, !dbg !753
  %18 = load i8, ptr %17, align 1, !dbg !755
  %conv15 = sext i8 %18 to i32, !dbg !755
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !756
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !757

if.then18:                                        ; preds = %while.end
  %19 = load ptr, ptr %str.addr, align 8, !dbg !758
  %incdec.ptr19 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !758
  store ptr %incdec.ptr19, ptr %str.addr, align 8, !dbg !758
  br label %if.end20, !dbg !759

if.end20:                                         ; preds = %if.then18, %while.end
  br label %while.cond, !dbg !718, !llvm.loop !760

while.end21:                                      ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !762
  br label %return, !dbg !762

return:                                           ; preds = %while.end21, %if.then6
  %20 = load i1, ptr %retval, align 1, !dbg !763
  ret i1 %20, !dbg !763
}

; Function Attrs: noredzone
declare !dbg !764 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !771 hidden i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone nounwind
define hidden ptr @next_arg(ptr noundef %args, ptr noundef %param, ptr noundef %val) #0 !dbg !774 {
entry:
  %args.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %equals = alloca i32, align 4
  %in_quote = alloca i32, align 4
  %quoted = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !778, metadata !DIExpression()), !dbg !785
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !779, metadata !DIExpression()), !dbg !786
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !780, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %i, metadata !781, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 4, ptr %equals) #10, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %equals, metadata !782, metadata !DIExpression()), !dbg !790
  store i32 0, ptr %equals, align 4, !dbg !790
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_quote) #10, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %in_quote, metadata !783, metadata !DIExpression()), !dbg !792
  store i32 0, ptr %in_quote, align 4, !dbg !792
  call void @llvm.lifetime.start.p0(i64 4, ptr %quoted) #10, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %quoted, metadata !784, metadata !DIExpression()), !dbg !793
  store i32 0, ptr %quoted, align 4, !dbg !793
  %0 = load ptr, ptr %args.addr, align 8, !dbg !794
  %1 = load i8, ptr %0, align 1, !dbg !796
  %conv = sext i8 %1 to i32, !dbg !796
  %cmp = icmp eq i32 %conv, 34, !dbg !797
  br i1 %cmp, label %if.then, label %if.end, !dbg !798

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %args.addr, align 8, !dbg !799
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !799
  store ptr %incdec.ptr, ptr %args.addr, align 8, !dbg !799
  store i32 1, ptr %in_quote, align 4, !dbg !801
  store i32 1, ptr %quoted, align 4, !dbg !802
  br label %if.end, !dbg !803

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !804
  br label %for.cond, !dbg !806

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %args.addr, align 8, !dbg !807
  %4 = load i32, ptr %i, align 4, !dbg !809
  %idxprom = zext i32 %4 to i64, !dbg !807
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom, !dbg !807
  %5 = load i8, ptr %arrayidx, align 1, !dbg !807
  %tobool = icmp ne i8 %5, 0, !dbg !810
  br i1 %tobool, label %for.body, label %for.end, !dbg !810

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %args.addr, align 8, !dbg !811
  %7 = load i32, ptr %i, align 4, !dbg !811
  %idxprom2 = zext i32 %7 to i64, !dbg !811
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2, !dbg !811
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !811
  %conv4 = zext i8 %8 to i32, !dbg !811
  %idxprom5 = sext i32 %conv4 to i64, !dbg !811
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr @_ctype, i64 0, i64 %idxprom5, !dbg !811
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !811
  %conv7 = zext i8 %9 to i32, !dbg !811
  %and = and i32 %conv7, 32, !dbg !811
  %cmp8 = icmp ne i32 %and, 0, !dbg !811
  br i1 %cmp8, label %land.lhs.true, label %if.end12, !dbg !814

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %in_quote, align 4, !dbg !815
  %tobool10 = icmp ne i32 %10, 0, !dbg !815
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !816

if.then11:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !817

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %11 = load i32, ptr %equals, align 4, !dbg !818
  %cmp13 = icmp eq i32 %11, 0, !dbg !820
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !821

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr %args.addr, align 8, !dbg !822
  %13 = load i32, ptr %i, align 4, !dbg !825
  %idxprom16 = zext i32 %13 to i64, !dbg !822
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 %idxprom16, !dbg !822
  %14 = load i8, ptr %arrayidx17, align 1, !dbg !822
  %conv18 = sext i8 %14 to i32, !dbg !822
  %cmp19 = icmp eq i32 %conv18, 61, !dbg !826
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !827

if.then21:                                        ; preds = %if.then15
  %15 = load i32, ptr %i, align 4, !dbg !828
  store i32 %15, ptr %equals, align 4, !dbg !829
  br label %if.end22, !dbg !830

if.end22:                                         ; preds = %if.then21, %if.then15
  br label %if.end23, !dbg !831

if.end23:                                         ; preds = %if.end22, %if.end12
  %16 = load ptr, ptr %args.addr, align 8, !dbg !832
  %17 = load i32, ptr %i, align 4, !dbg !834
  %idxprom24 = zext i32 %17 to i64, !dbg !832
  %arrayidx25 = getelementptr inbounds i8, ptr %16, i64 %idxprom24, !dbg !832
  %18 = load i8, ptr %arrayidx25, align 1, !dbg !832
  %conv26 = sext i8 %18 to i32, !dbg !832
  %cmp27 = icmp eq i32 %conv26, 34, !dbg !835
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !836

if.then29:                                        ; preds = %if.end23
  %19 = load i32, ptr %in_quote, align 4, !dbg !837
  %tobool30 = icmp ne i32 %19, 0, !dbg !838
  %lnot = xor i1 %tobool30, true, !dbg !838
  %lnot.ext = zext i1 %lnot to i32, !dbg !838
  store i32 %lnot.ext, ptr %in_quote, align 4, !dbg !839
  br label %if.end31, !dbg !840

if.end31:                                         ; preds = %if.then29, %if.end23
  br label %for.inc, !dbg !841

for.inc:                                          ; preds = %if.end31
  %20 = load i32, ptr %i, align 4, !dbg !842
  %inc = add i32 %20, 1, !dbg !842
  store i32 %inc, ptr %i, align 4, !dbg !842
  br label %for.cond, !dbg !843, !llvm.loop !844

for.end:                                          ; preds = %if.then11, %for.cond
  %21 = load ptr, ptr %args.addr, align 8, !dbg !846
  %22 = load ptr, ptr %param.addr, align 8, !dbg !847
  store ptr %21, ptr %22, align 8, !dbg !848
  %23 = load i32, ptr %equals, align 4, !dbg !849
  %tobool32 = icmp ne i32 %23, 0, !dbg !849
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !851

if.then33:                                        ; preds = %for.end
  %24 = load ptr, ptr %val.addr, align 8, !dbg !852
  store ptr null, ptr %24, align 8, !dbg !853
  br label %if.end53, !dbg !854

if.else:                                          ; preds = %for.end
  %25 = load ptr, ptr %args.addr, align 8, !dbg !855
  %26 = load i32, ptr %equals, align 4, !dbg !857
  %idxprom34 = zext i32 %26 to i64, !dbg !855
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 %idxprom34, !dbg !855
  store i8 0, ptr %arrayidx35, align 1, !dbg !858
  %27 = load ptr, ptr %args.addr, align 8, !dbg !859
  %28 = load i32, ptr %equals, align 4, !dbg !860
  %idx.ext = zext i32 %28 to i64, !dbg !861
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext, !dbg !861
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !862
  %29 = load ptr, ptr %val.addr, align 8, !dbg !863
  store ptr %add.ptr36, ptr %29, align 8, !dbg !864
  %30 = load ptr, ptr %val.addr, align 8, !dbg !865
  %31 = load ptr, ptr %30, align 8, !dbg !867
  %32 = load i8, ptr %31, align 1, !dbg !868
  %conv37 = sext i8 %32 to i32, !dbg !868
  %cmp38 = icmp eq i32 %conv37, 34, !dbg !869
  br i1 %cmp38, label %if.then40, label %if.end52, !dbg !870

if.then40:                                        ; preds = %if.else
  %33 = load ptr, ptr %val.addr, align 8, !dbg !871
  %34 = load ptr, ptr %33, align 8, !dbg !873
  %incdec.ptr41 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !873
  store ptr %incdec.ptr41, ptr %33, align 8, !dbg !873
  %35 = load ptr, ptr %args.addr, align 8, !dbg !874
  %36 = load i32, ptr %i, align 4, !dbg !876
  %sub = sub i32 %36, 1, !dbg !877
  %idxprom42 = zext i32 %sub to i64, !dbg !874
  %arrayidx43 = getelementptr inbounds i8, ptr %35, i64 %idxprom42, !dbg !874
  %37 = load i8, ptr %arrayidx43, align 1, !dbg !874
  %conv44 = sext i8 %37 to i32, !dbg !874
  %cmp45 = icmp eq i32 %conv44, 34, !dbg !878
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !879

if.then47:                                        ; preds = %if.then40
  %38 = load ptr, ptr %args.addr, align 8, !dbg !880
  %39 = load i32, ptr %i, align 4, !dbg !881
  %sub48 = sub i32 %39, 1, !dbg !882
  %idxprom49 = zext i32 %sub48 to i64, !dbg !880
  %arrayidx50 = getelementptr inbounds i8, ptr %38, i64 %idxprom49, !dbg !880
  store i8 0, ptr %arrayidx50, align 1, !dbg !883
  br label %if.end51, !dbg !880

if.end51:                                         ; preds = %if.then47, %if.then40
  br label %if.end52, !dbg !884

if.end52:                                         ; preds = %if.end51, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then33
  %40 = load i32, ptr %quoted, align 4, !dbg !885
  %tobool54 = icmp ne i32 %40, 0, !dbg !885
  br i1 %tobool54, label %land.lhs.true55, label %if.end69, !dbg !887

land.lhs.true55:                                  ; preds = %if.end53
  %41 = load i32, ptr %i, align 4, !dbg !888
  %cmp56 = icmp ugt i32 %41, 0, !dbg !889
  br i1 %cmp56, label %land.lhs.true58, label %if.end69, !dbg !890

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %42 = load ptr, ptr %args.addr, align 8, !dbg !891
  %43 = load i32, ptr %i, align 4, !dbg !892
  %sub59 = sub i32 %43, 1, !dbg !893
  %idxprom60 = zext i32 %sub59 to i64, !dbg !891
  %arrayidx61 = getelementptr inbounds i8, ptr %42, i64 %idxprom60, !dbg !891
  %44 = load i8, ptr %arrayidx61, align 1, !dbg !891
  %conv62 = sext i8 %44 to i32, !dbg !891
  %cmp63 = icmp eq i32 %conv62, 34, !dbg !894
  br i1 %cmp63, label %if.then65, label %if.end69, !dbg !895

if.then65:                                        ; preds = %land.lhs.true58
  %45 = load ptr, ptr %args.addr, align 8, !dbg !896
  %46 = load i32, ptr %i, align 4, !dbg !897
  %sub66 = sub i32 %46, 1, !dbg !898
  %idxprom67 = zext i32 %sub66 to i64, !dbg !896
  %arrayidx68 = getelementptr inbounds i8, ptr %45, i64 %idxprom67, !dbg !896
  store i8 0, ptr %arrayidx68, align 1, !dbg !899
  br label %if.end69, !dbg !896

if.end69:                                         ; preds = %if.then65, %land.lhs.true58, %land.lhs.true55, %if.end53
  %47 = load ptr, ptr %args.addr, align 8, !dbg !900
  %48 = load i32, ptr %i, align 4, !dbg !902
  %idxprom70 = zext i32 %48 to i64, !dbg !900
  %arrayidx71 = getelementptr inbounds i8, ptr %47, i64 %idxprom70, !dbg !900
  %49 = load i8, ptr %arrayidx71, align 1, !dbg !900
  %tobool72 = icmp ne i8 %49, 0, !dbg !900
  br i1 %tobool72, label %if.then73, label %if.else78, !dbg !903

if.then73:                                        ; preds = %if.end69
  %50 = load ptr, ptr %args.addr, align 8, !dbg !904
  %51 = load i32, ptr %i, align 4, !dbg !906
  %idxprom74 = zext i32 %51 to i64, !dbg !904
  %arrayidx75 = getelementptr inbounds i8, ptr %50, i64 %idxprom74, !dbg !904
  store i8 0, ptr %arrayidx75, align 1, !dbg !907
  %52 = load i32, ptr %i, align 4, !dbg !908
  %add = add i32 %52, 1, !dbg !909
  %53 = load ptr, ptr %args.addr, align 8, !dbg !910
  %idx.ext76 = zext i32 %add to i64, !dbg !910
  %add.ptr77 = getelementptr inbounds i8, ptr %53, i64 %idx.ext76, !dbg !910
  store ptr %add.ptr77, ptr %args.addr, align 8, !dbg !910
  br label %if.end81, !dbg !911

if.else78:                                        ; preds = %if.end69
  %54 = load i32, ptr %i, align 4, !dbg !912
  %55 = load ptr, ptr %args.addr, align 8, !dbg !913
  %idx.ext79 = zext i32 %54 to i64, !dbg !913
  %add.ptr80 = getelementptr inbounds i8, ptr %55, i64 %idx.ext79, !dbg !913
  store ptr %add.ptr80, ptr %args.addr, align 8, !dbg !913
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then73
  %56 = load ptr, ptr %args.addr, align 8, !dbg !914
  %call = call ptr @skip_spaces(ptr noundef %56) #11, !dbg !915
  call void @llvm.lifetime.end.p0(i64 4, ptr %quoted) #10, !dbg !916
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_quote) #10, !dbg !916
  call void @llvm.lifetime.end.p0(i64 4, ptr %equals) #10, !dbg !916
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !916
  ret ptr %call, !dbg !917
}

; Function Attrs: noredzone nounwind
define hidden void @choose_random_location(i64 noundef %input, i64 noundef %input_size, ptr noundef %output, i64 noundef %output_size, ptr noundef %virt_addr) #0 !dbg !918 {
entry:
  %input.addr = alloca i64, align 8
  %input_size.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %output_size.addr = alloca i64, align 8
  %virt_addr.addr = alloca ptr, align 8
  %random_addr = alloca i64, align 8
  %min_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x208 = alloca i64, align 8
  %__UNIQUE_ID___y209 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !922, metadata !DIExpression()), !dbg !932
  store i64 %input_size, ptr %input_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input_size.addr, metadata !923, metadata !DIExpression()), !dbg !933
  store ptr %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !924, metadata !DIExpression()), !dbg !934
  store i64 %output_size, ptr %output_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output_size.addr, metadata !925, metadata !DIExpression()), !dbg !935
  store ptr %virt_addr, ptr %virt_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt_addr.addr, metadata !926, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 8, ptr %random_addr) #10, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %random_addr, metadata !927, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_addr) #10, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %min_addr, metadata !928, metadata !DIExpression()), !dbg !939
  %call = call i32 @cmdline_find_option_bool(ptr noundef @.str.6) #11, !dbg !940
  %tobool = icmp ne i32 %call, 0, !dbg !940
  br i1 %tobool, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %entry
  call void @warn(ptr noundef @.str.7) #11, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !946
  %hdr = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 28, !dbg !947
  %loadflags = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 14, !dbg !948
  %1 = load i8, ptr %loadflags, align 1, !dbg !949
  %conv = zext i8 %1 to i32, !dbg !949
  %or = or i32 %conv, 2, !dbg !949
  %conv1 = trunc i32 %or to i8, !dbg !949
  store i8 %conv1, ptr %loadflags, align 1, !dbg !949
  %call2 = call zeroext i1 @pgtable_l5_enabled() #11, !dbg !950
  %2 = zext i1 %call2 to i64, !dbg !950
  %cond = select i1 %call2, i32 52, i32 46, !dbg !950
  %sh_prom = zext i32 %cond to i64, !dbg !950
  %shl = shl i64 1, %sh_prom, !dbg !950
  store i64 %shl, ptr @mem_limit, align 8, !dbg !952
  %3 = load i64, ptr %input.addr, align 8, !dbg !953
  %4 = load i64, ptr %input_size.addr, align 8, !dbg !954
  %5 = load ptr, ptr %output.addr, align 8, !dbg !955
  %6 = load i64, ptr %5, align 8, !dbg !956
  call void @mem_avoid_init(i64 noundef %3, i64 noundef %4, i64 noundef %6) #11, !dbg !957
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x208) #10, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x208, metadata !929, metadata !DIExpression()), !dbg !958
  %7 = load ptr, ptr %output.addr, align 8, !dbg !958
  %8 = load i64, ptr %7, align 8, !dbg !958
  store i64 %8, ptr %__UNIQUE_ID___x208, align 8, !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y209) #10, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y209, metadata !931, metadata !DIExpression()), !dbg !958
  store i64 536870912, ptr %__UNIQUE_ID___y209, align 8, !dbg !958
  %9 = load i64, ptr %__UNIQUE_ID___x208, align 8, !dbg !958
  %10 = load i64, ptr %__UNIQUE_ID___y209, align 8, !dbg !958
  %cmp = icmp ult i64 %9, %10, !dbg !958
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !958

cond.true:                                        ; preds = %if.end
  %11 = load i64, ptr %__UNIQUE_ID___x208, align 8, !dbg !958
  br label %cond.end, !dbg !958

cond.false:                                       ; preds = %if.end
  %12 = load i64, ptr %__UNIQUE_ID___y209, align 8, !dbg !958
  br label %cond.end, !dbg !958

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !958
  store i64 %cond5, ptr %tmp, align 8, !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y209) #10, !dbg !959
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x208) #10, !dbg !959
  %13 = load i64, ptr %tmp, align 8, !dbg !958
  store i64 %13, ptr %min_addr, align 8, !dbg !960
  %14 = load i64, ptr %min_addr, align 8, !dbg !961
  %add = add i64 %14, 2097151, !dbg !961
  %and = and i64 %add, -2097152, !dbg !961
  store i64 %and, ptr %min_addr, align 8, !dbg !962
  %15 = load i64, ptr %min_addr, align 8, !dbg !963
  %16 = load i64, ptr %output_size.addr, align 8, !dbg !964
  %call6 = call i64 @find_random_phys_addr(i64 noundef %15, i64 noundef %16) #11, !dbg !965
  store i64 %call6, ptr %random_addr, align 8, !dbg !966
  %17 = load i64, ptr %random_addr, align 8, !dbg !967
  %tobool7 = icmp ne i64 %17, 0, !dbg !967
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !969

if.then8:                                         ; preds = %cond.end
  call void @warn(ptr noundef @.str.8) #11, !dbg !970
  br label %if.end13, !dbg !972

if.else:                                          ; preds = %cond.end
  %18 = load ptr, ptr %output.addr, align 8, !dbg !973
  %19 = load i64, ptr %18, align 8, !dbg !976
  %20 = load i64, ptr %random_addr, align 8, !dbg !977
  %cmp9 = icmp ne i64 %19, %20, !dbg !978
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !979

if.then11:                                        ; preds = %if.else
  %21 = load i64, ptr %random_addr, align 8, !dbg !980
  %22 = load ptr, ptr %output.addr, align 8, !dbg !981
  store i64 %21, ptr %22, align 8, !dbg !982
  br label %if.end12, !dbg !983

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then8
  %23 = load i64, ptr %output_size.addr, align 8, !dbg !984
  %call14 = call i64 @find_random_virt_addr(i64 noundef 16777216, i64 noundef %23) #11, !dbg !986
  store i64 %call14, ptr %random_addr, align 8, !dbg !987
  %24 = load i64, ptr %random_addr, align 8, !dbg !988
  %25 = load ptr, ptr %virt_addr.addr, align 8, !dbg !989
  store i64 %24, ptr %25, align 8, !dbg !990
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !991
  br label %cleanup, !dbg !991

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_addr) #10, !dbg !991
  call void @llvm.lifetime.end.p0(i64 8, ptr %random_addr) #10, !dbg !991
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !991

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone
declare !dbg !992 hidden i32 @cmdline_find_option_bool(ptr noundef) #3

; Function Attrs: noredzone
declare !dbg !995 hidden void @warn(ptr noundef) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @pgtable_l5_enabled() #4 !dbg !997 {
entry:
  %0 = load i32, ptr @__pgtable_l5_enabled, align 4, !dbg !1001
  %tobool = icmp ne i32 %0, 0, !dbg !1001
  ret i1 %tobool, !dbg !1002
}

; Function Attrs: noredzone nounwind
define internal void @mem_avoid_init(i64 noundef %input, i64 noundef %input_size, i64 noundef %output) #0 !dbg !1003 {
entry:
  %input.addr = alloca i64, align 8
  %input_size.addr = alloca i64, align 8
  %output.addr = alloca i64, align 8
  %init_size = alloca i64, align 8
  %initrd_start = alloca i64, align 8
  %initrd_size = alloca i64, align 8
  %cmd_line = alloca i64, align 8
  %cmd_line_size = alloca i64, align 8
  store i64 %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !1007, metadata !DIExpression()), !dbg !1015
  store i64 %input_size, ptr %input_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input_size.addr, metadata !1008, metadata !DIExpression()), !dbg !1016
  store i64 %output, ptr %output.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !1009, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %init_size) #10, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %init_size, metadata !1010, metadata !DIExpression()), !dbg !1019
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1020
  %hdr = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 28, !dbg !1021
  %init_size1 = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 36, !dbg !1022
  %1 = load i32, ptr %init_size1, align 1, !dbg !1022
  %conv = zext i32 %1 to i64, !dbg !1020
  store i64 %conv, ptr %init_size, align 8, !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %initrd_start) #10, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %initrd_start, metadata !1011, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 8, ptr %initrd_size) #10, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %initrd_size, metadata !1012, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_line) #10, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %cmd_line, metadata !1013, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_line_size) #10, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %cmd_line_size, metadata !1014, metadata !DIExpression()), !dbg !1028
  %2 = load i64, ptr %input.addr, align 8, !dbg !1029
  store i64 %2, ptr @mem_avoid, align 16, !dbg !1030
  %3 = load i64, ptr %output.addr, align 8, !dbg !1031
  %4 = load i64, ptr %init_size, align 8, !dbg !1032
  %add = add i64 %3, %4, !dbg !1033
  %5 = load i64, ptr %input.addr, align 8, !dbg !1034
  %sub = sub i64 %add, %5, !dbg !1035
  store i64 %sub, ptr getelementptr inbounds (%struct.mem_vector, ptr @mem_avoid, i32 0, i32 1), align 8, !dbg !1036
  %6 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1037
  %ext_ramdisk_image = getelementptr inbounds %struct.boot_params, ptr %6, i32 0, i32 11, !dbg !1038
  %7 = load i32, ptr %ext_ramdisk_image, align 1, !dbg !1038
  %conv2 = zext i32 %7 to i64, !dbg !1039
  %shl = shl i64 %conv2, 32, !dbg !1040
  store i64 %shl, ptr %initrd_start, align 8, !dbg !1041
  %8 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1042
  %hdr3 = getelementptr inbounds %struct.boot_params, ptr %8, i32 0, i32 28, !dbg !1043
  %ramdisk_image = getelementptr inbounds %struct.setup_header, ptr %hdr3, i32 0, i32 17, !dbg !1044
  %9 = load i32, ptr %ramdisk_image, align 1, !dbg !1044
  %conv4 = zext i32 %9 to i64, !dbg !1042
  %10 = load i64, ptr %initrd_start, align 8, !dbg !1045
  %or = or i64 %10, %conv4, !dbg !1045
  store i64 %or, ptr %initrd_start, align 8, !dbg !1045
  %11 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1046
  %ext_ramdisk_size = getelementptr inbounds %struct.boot_params, ptr %11, i32 0, i32 12, !dbg !1047
  %12 = load i32, ptr %ext_ramdisk_size, align 1, !dbg !1047
  %conv5 = zext i32 %12 to i64, !dbg !1048
  %shl6 = shl i64 %conv5, 32, !dbg !1049
  store i64 %shl6, ptr %initrd_size, align 8, !dbg !1050
  %13 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1051
  %hdr7 = getelementptr inbounds %struct.boot_params, ptr %13, i32 0, i32 28, !dbg !1052
  %ramdisk_size = getelementptr inbounds %struct.setup_header, ptr %hdr7, i32 0, i32 18, !dbg !1053
  %14 = load i32, ptr %ramdisk_size, align 1, !dbg !1053
  %conv8 = zext i32 %14 to i64, !dbg !1051
  %15 = load i64, ptr %initrd_size, align 8, !dbg !1054
  %or9 = or i64 %15, %conv8, !dbg !1054
  store i64 %or9, ptr %initrd_size, align 8, !dbg !1054
  %16 = load i64, ptr %initrd_start, align 8, !dbg !1055
  store i64 %16, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 1), align 16, !dbg !1056
  %17 = load i64, ptr %initrd_size, align 8, !dbg !1057
  store i64 %17, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 1, i32 1), align 8, !dbg !1058
  %call = call i64 @get_cmd_line_ptr() #11, !dbg !1059
  store i64 %call, ptr %cmd_line, align 8, !dbg !1060
  %18 = load i64, ptr %cmd_line, align 8, !dbg !1061
  %tobool = icmp ne i64 %18, 0, !dbg !1061
  br i1 %tobool, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %entry
  %19 = load i64, ptr %cmd_line, align 8, !dbg !1064
  %20 = inttoptr i64 %19 to ptr, !dbg !1066
  %call10 = call i64 @strnlen(ptr noundef %20, i64 noundef 2047) #11, !dbg !1067
  %add11 = add i64 %call10, 1, !dbg !1068
  store i64 %add11, ptr %cmd_line_size, align 8, !dbg !1069
  %21 = load i64, ptr %cmd_line, align 8, !dbg !1070
  store i64 %21, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 2), align 16, !dbg !1071
  %22 = load i64, ptr %cmd_line_size, align 8, !dbg !1072
  store i64 %22, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 2, i32 1), align 8, !dbg !1073
  br label %if.end, !dbg !1074

if.end:                                           ; preds = %if.then, %entry
  %23 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1075
  %24 = ptrtoint ptr %23 to i64, !dbg !1076
  store i64 %24, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 3), align 16, !dbg !1077
  store i64 4096, ptr getelementptr inbounds ([8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 3, i32 1), align 8, !dbg !1078
  call void @handle_mem_options() #11, !dbg !1079
  %call12 = call i32 @count_immovable_mem_regions() #11, !dbg !1080
  store i32 %call12, ptr @num_immovable_mem, align 4, !dbg !1081
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_line_size) #10, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_line) #10, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %initrd_size) #10, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %initrd_start) #10, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %init_size) #10, !dbg !1082
  ret void, !dbg !1082
}

; Function Attrs: noredzone nounwind
define internal i64 @find_random_phys_addr(i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1083 {
entry:
  %retval = alloca i64, align 8
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %phys_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1087, metadata !DIExpression()), !dbg !1090
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1088, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %phys_addr) #10, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %phys_addr, metadata !1089, metadata !DIExpression()), !dbg !1093
  %0 = load i64, ptr %minimum.addr, align 8, !dbg !1094
  %1 = load i64, ptr %image_size.addr, align 8, !dbg !1096
  %add = add i64 %0, %1, !dbg !1097
  %2 = load i64, ptr @mem_limit, align 8, !dbg !1098
  %cmp = icmp ugt i64 %add, %2, !dbg !1099
  br i1 %cmp, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end:                                           ; preds = %entry
  %3 = load i8, ptr @memmap_too_large, align 1, !dbg !1102, !range !316, !noundef !317
  %tobool = trunc i8 %3 to i1, !dbg !1102
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1104

if.then1:                                         ; preds = %if.end
  call void @__putstr(ptr noundef @.str.19) #11, !dbg !1105
  store i64 0, ptr %retval, align 8, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end2:                                          ; preds = %if.end
  %4 = load i64, ptr %minimum.addr, align 8, !dbg !1108
  %5 = load i64, ptr %image_size.addr, align 8, !dbg !1110
  %call = call zeroext i1 @process_efi_entries(i64 noundef %4, i64 noundef %5) #11, !dbg !1111
  br i1 %call, label %if.end4, label %if.then3, !dbg !1112

if.then3:                                         ; preds = %if.end2
  %6 = load i64, ptr %minimum.addr, align 8, !dbg !1113
  %7 = load i64, ptr %image_size.addr, align 8, !dbg !1114
  call void @process_e820_entries(i64 noundef %6, i64 noundef %7) #11, !dbg !1115
  br label %if.end4, !dbg !1115

if.end4:                                          ; preds = %if.then3, %if.end2
  %call5 = call i64 @slots_fetch_random() #11, !dbg !1116
  store i64 %call5, ptr %phys_addr, align 8, !dbg !1117
  %8 = load i64, ptr %phys_addr, align 8, !dbg !1118
  %9 = load i64, ptr %minimum.addr, align 8, !dbg !1120
  %cmp6 = icmp ult i64 %8, %9, !dbg !1121
  br i1 %cmp6, label %if.then9, label %lor.lhs.false, !dbg !1122

lor.lhs.false:                                    ; preds = %if.end4
  %10 = load i64, ptr %phys_addr, align 8, !dbg !1123
  %11 = load i64, ptr %image_size.addr, align 8, !dbg !1124
  %add7 = add i64 %10, %11, !dbg !1125
  %12 = load i64, ptr @mem_limit, align 8, !dbg !1126
  %cmp8 = icmp ugt i64 %add7, %12, !dbg !1127
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1128

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  call void @warn(ptr noundef @.str.20) #11, !dbg !1129
  store i64 0, ptr %retval, align 8, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load i64, ptr %phys_addr, align 8, !dbg !1132
  store i64 %13, ptr %retval, align 8, !dbg !1133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1133

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %phys_addr) #10, !dbg !1134
  %14 = load i64, ptr %retval, align 8, !dbg !1134
  ret i64 %14, !dbg !1134
}

; Function Attrs: noredzone nounwind
define internal i64 @find_random_virt_addr(i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1135 {
entry:
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %slots = alloca i64, align 8
  %random_addr = alloca i64, align 8
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1137, metadata !DIExpression()), !dbg !1141
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1138, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots) #10, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %slots, metadata !1139, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 8, ptr %random_addr) #10, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %random_addr, metadata !1140, metadata !DIExpression()), !dbg !1145
  %0 = load i64, ptr %minimum.addr, align 8, !dbg !1146
  %sub = sub i64 1073741824, %0, !dbg !1147
  %1 = load i64, ptr %image_size.addr, align 8, !dbg !1148
  %sub1 = sub i64 %sub, %1, !dbg !1149
  %div = udiv i64 %sub1, 2097152, !dbg !1150
  %add = add i64 1, %div, !dbg !1151
  store i64 %add, ptr %slots, align 8, !dbg !1152
  %call = call i64 @kaslr_get_random_long(ptr noundef @.str.26) #11, !dbg !1153
  %2 = load i64, ptr %slots, align 8, !dbg !1154
  %rem = urem i64 %call, %2, !dbg !1155
  store i64 %rem, ptr %random_addr, align 8, !dbg !1156
  %3 = load i64, ptr %random_addr, align 8, !dbg !1157
  %mul = mul i64 %3, 2097152, !dbg !1158
  %4 = load i64, ptr %minimum.addr, align 8, !dbg !1159
  %add2 = add i64 %mul, %4, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 8, ptr %random_addr) #10, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots) #10, !dbg !1161
  ret i64 %add2, !dbg !1162
}

; Function Attrs: noredzone nounwind
define internal i64 @rotate_xor(i64 noundef %hash, ptr noundef %area, i64 noundef %size) #0 !dbg !1163 {
entry:
  %hash.addr = alloca i64, align 8
  %area.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store i64 %hash, ptr %hash.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1169, metadata !DIExpression()), !dbg !1174
  store ptr %area, ptr %area.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %area.addr, metadata !1170, metadata !DIExpression()), !dbg !1175
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1171, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1172, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #10, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1173, metadata !DIExpression()), !dbg !1180
  %0 = load ptr, ptr %area.addr, align 8, !dbg !1181
  store ptr %0, ptr %ptr, align 8, !dbg !1180
  store i64 0, ptr %i, align 8, !dbg !1182
  br label %for.cond, !dbg !1184

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !1185
  %2 = load i64, ptr %size.addr, align 8, !dbg !1187
  %div = udiv i64 %2, 8, !dbg !1188
  %cmp = icmp ult i64 %1, %div, !dbg !1189
  br i1 %cmp, label %for.body, label %for.end, !dbg !1190

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %hash.addr, align 8, !dbg !1191
  %shl = shl i64 %3, 57, !dbg !1193
  %4 = load i64, ptr %hash.addr, align 8, !dbg !1194
  %shr = lshr i64 %4, 7, !dbg !1195
  %or = or i64 %shl, %shr, !dbg !1196
  store i64 %or, ptr %hash.addr, align 8, !dbg !1197
  %5 = load ptr, ptr %ptr, align 8, !dbg !1198
  %6 = load i64, ptr %i, align 8, !dbg !1199
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6, !dbg !1198
  %7 = load i64, ptr %arrayidx, align 8, !dbg !1198
  %8 = load i64, ptr %hash.addr, align 8, !dbg !1200
  %xor = xor i64 %8, %7, !dbg !1200
  store i64 %xor, ptr %hash.addr, align 8, !dbg !1200
  br label %for.inc, !dbg !1201

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !1202
  %inc = add i64 %9, 1, !dbg !1202
  store i64 %inc, ptr %i, align 8, !dbg !1202
  br label %for.cond, !dbg !1203, !llvm.loop !1204

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %hash.addr, align 8, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #10, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !1207
  ret i64 %10, !dbg !1208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone
declare !dbg !1209 hidden i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone
declare !dbg !1213 hidden i64 @get_cmd_line_ptr() #3

; Function Attrs: noredzone
declare !dbg !1214 hidden i64 @strnlen(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone nounwind
define internal void @handle_mem_options() #0 !dbg !1217 {
entry:
  %args = alloca ptr, align 8
  %len = alloca i64, align 8
  %tmp_cmdline = alloca ptr, align 8
  %param = alloca ptr, align 8
  %val = alloca ptr, align 8
  %mem_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #10, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1221, metadata !DIExpression()), !dbg !1234
  %call = call i64 @get_cmd_line_ptr() #11, !dbg !1235
  %0 = inttoptr i64 %call to ptr, !dbg !1236
  store ptr %0, ptr %args, align 8, !dbg !1234
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1222, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_cmdline) #10, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %tmp_cmdline, metadata !1223, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #10, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %param, metadata !1224, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1225, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_size) #10, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %mem_size, metadata !1226, metadata !DIExpression()), !dbg !1245
  %1 = load ptr, ptr %args, align 8, !dbg !1246
  %tobool = icmp ne ptr %1, null, !dbg !1246
  br i1 %tobool, label %if.end, label %if.then, !dbg !1248

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1249

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %args, align 8, !dbg !1250
  %call1 = call i64 @strnlen(ptr noundef %2, i64 noundef 2047) #11, !dbg !1251
  store i64 %call1, ptr %len, align 8, !dbg !1252
  %3 = load i64, ptr %len, align 8, !dbg !1253
  %add = add i64 %3, 1, !dbg !1254
  %conv = trunc i64 %add to i32, !dbg !1253
  %call2 = call ptr @malloc(i32 noundef %conv) #11, !dbg !1255
  store ptr %call2, ptr %tmp_cmdline, align 8, !dbg !1256
  %4 = load ptr, ptr %tmp_cmdline, align 8, !dbg !1257
  %tobool3 = icmp ne ptr %4, null, !dbg !1257
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1259

if.then4:                                         ; preds = %if.end
  call void @error(ptr noundef @.str.9) #13, !dbg !1260
  unreachable, !dbg !1260

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %tmp_cmdline, align 8, !dbg !1261
  %6 = load ptr, ptr %args, align 8, !dbg !1261
  %7 = load i64, ptr %len, align 8, !dbg !1261
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %7, i1 false), !dbg !1261
  %8 = load ptr, ptr %tmp_cmdline, align 8, !dbg !1262
  %9 = load i64, ptr %len, align 8, !dbg !1263
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !1262
  store i8 0, ptr %arrayidx, align 1, !dbg !1264
  %10 = load ptr, ptr %tmp_cmdline, align 8, !dbg !1265
  store ptr %10, ptr %args, align 8, !dbg !1266
  %11 = load ptr, ptr %args, align 8, !dbg !1267
  %call6 = call ptr @skip_spaces(ptr noundef %11) #11, !dbg !1268
  store ptr %call6, ptr %args, align 8, !dbg !1269
  br label %while.cond, !dbg !1270

while.cond:                                       ; preds = %if.end44, %cleanup, %if.end5
  %12 = load ptr, ptr %args, align 8, !dbg !1271
  %13 = load i8, ptr %12, align 1, !dbg !1272
  %tobool7 = icmp ne i8 %13, 0, !dbg !1270
  br i1 %tobool7, label %while.body, label %while.end, !dbg !1270

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %args, align 8, !dbg !1273
  %call8 = call ptr @next_arg(ptr noundef %14, ptr noundef %param, ptr noundef %val) #11, !dbg !1274
  store ptr %call8, ptr %args, align 8, !dbg !1275
  %15 = load ptr, ptr %val, align 8, !dbg !1276
  %tobool9 = icmp ne ptr %15, null, !dbg !1276
  br i1 %tobool9, label %if.end13, label %land.lhs.true, !dbg !1278

land.lhs.true:                                    ; preds = %while.body
  %16 = load ptr, ptr %param, align 8, !dbg !1279
  %call10 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.10) #11, !dbg !1280
  %cmp = icmp eq i32 %call10, 0, !dbg !1281
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !1282

if.then12:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !1283

if.end13:                                         ; preds = %land.lhs.true, %while.body
  %17 = load ptr, ptr %param, align 8, !dbg !1284
  %call14 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.11) #11, !dbg !1285
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1285
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !1286

if.then16:                                        ; preds = %if.end13
  %18 = load ptr, ptr %val, align 8, !dbg !1287
  call void @mem_avoid_memmap(i32 noundef 0, ptr noundef %18) #11, !dbg !1289
  br label %if.end44, !dbg !1290

if.else:                                          ; preds = %if.end13
  %19 = load ptr, ptr %param, align 8, !dbg !1291
  %call17 = call ptr @strstr(ptr noundef %19, ptr noundef @.str.12) #11, !dbg !1292
  %tobool18 = icmp ne ptr %call17, null, !dbg !1292
  br i1 %tobool18, label %if.then19, label %if.else20, !dbg !1293

if.then19:                                        ; preds = %if.else
  %20 = load ptr, ptr %param, align 8, !dbg !1294
  %21 = load ptr, ptr %val, align 8, !dbg !1296
  call void @parse_gb_huge_pages(ptr noundef %20, ptr noundef %21) #11, !dbg !1297
  br label %if.end43, !dbg !1298

if.else20:                                        ; preds = %if.else
  %22 = load ptr, ptr %param, align 8, !dbg !1299
  %call21 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.13) #11, !dbg !1300
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1300
  br i1 %tobool22, label %if.else37, label %if.then23, !dbg !1301

if.then23:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1227, metadata !DIExpression()), !dbg !1303
  %23 = load ptr, ptr %val, align 8, !dbg !1304
  store ptr %23, ptr %p, align 8, !dbg !1303
  %24 = load ptr, ptr %p, align 8, !dbg !1305
  %call24 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.14) #11, !dbg !1307
  %tobool25 = icmp ne i32 %call24, 0, !dbg !1307
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1308

if.then26:                                        ; preds = %if.then23
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1309, !llvm.loop !1310

if.end27:                                         ; preds = %if.then23
  %25 = load ptr, ptr %p, align 8, !dbg !1312
  %call28 = call i64 @memparse(ptr noundef %25, ptr noundef %p) #11, !dbg !1313
  store i64 %call28, ptr %mem_size, align 8, !dbg !1314
  %26 = load i64, ptr %mem_size, align 8, !dbg !1315
  %cmp29 = icmp eq i64 %26, 0, !dbg !1317
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1318

if.then31:                                        ; preds = %if.end27
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1319

if.end32:                                         ; preds = %if.end27
  %27 = load i64, ptr %mem_size, align 8, !dbg !1320
  %28 = load i64, ptr @mem_limit, align 8, !dbg !1322
  %cmp33 = icmp ult i64 %27, %28, !dbg !1323
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1324

if.then35:                                        ; preds = %if.end32
  %29 = load i64, ptr %mem_size, align 8, !dbg !1325
  store i64 %29, ptr @mem_limit, align 8, !dbg !1326
  br label %if.end36, !dbg !1327

if.end36:                                         ; preds = %if.then35, %if.end32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1328
  br label %cleanup, !dbg !1328

cleanup:                                          ; preds = %if.end36, %if.then31, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1328
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end42, !dbg !1329

if.else37:                                        ; preds = %if.else20
  %30 = load ptr, ptr %param, align 8, !dbg !1330
  %call38 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.15) #11, !dbg !1332
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1332
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1333

if.then40:                                        ; preds = %if.else37
  %31 = load ptr, ptr %val, align 8, !dbg !1334
  call void @mem_avoid_memmap(i32 noundef 1, ptr noundef %31) #11, !dbg !1336
  br label %if.end41, !dbg !1337

if.end41:                                         ; preds = %if.then40, %if.else37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %cleanup.cont
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then19
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then16
  br label %while.cond, !dbg !1270, !llvm.loop !1310

while.end:                                        ; preds = %cleanup, %if.then12, %while.cond
  %32 = load ptr, ptr %tmp_cmdline, align 8, !dbg !1338
  call void @free(ptr noundef %32) #11, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1340

cleanup45:                                        ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_size) #10, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #10, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_cmdline) #10, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #10, !dbg !1341
  ret void, !dbg !1341

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @count_immovable_mem_regions() #4 !dbg !1342 {
entry:
  ret i32 0, !dbg !1345
}

; Function Attrs: noredzone
declare !dbg !1346 hidden ptr @malloc(i32 noundef) #3

; Function Attrs: noredzone noreturn
declare !dbg !1349 hidden void @error(ptr noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare !dbg !1352 hidden i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone nounwind
define internal void @mem_avoid_memmap(i32 noundef %mode, ptr noundef %str) #0 !dbg !162 {
entry:
  %mode.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %k = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !166, metadata !DIExpression()), !dbg !1355
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !167, metadata !DIExpression()), !dbg !1356
  %0 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1357
  %cmp = icmp sge i32 %0, 4, !dbg !1359
  br i1 %cmp, label %if.then, label %if.end, !dbg !1360

if.then:                                          ; preds = %entry
  br label %if.end28, !dbg !1361

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1362

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %1 = load ptr, ptr %str.addr, align 8, !dbg !1363
  %tobool = icmp ne ptr %1, null, !dbg !1363
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1364

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1365
  %cmp1 = icmp slt i32 %2, 4, !dbg !1366
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !1367
  br i1 %3, label %while.body, label %while.end, !dbg !1362

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #10, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !168, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %start, metadata !170, metadata !DIExpression()), !dbg !1371
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %size, metadata !171, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %k, metadata !172, metadata !DIExpression()), !dbg !1374
  %4 = load ptr, ptr %str.addr, align 8, !dbg !1375
  %call = call ptr @strchr(ptr noundef %4, i32 noundef 44) #11, !dbg !1376
  store ptr %call, ptr %k, align 8, !dbg !1374
  %5 = load ptr, ptr %k, align 8, !dbg !1377
  %tobool2 = icmp ne ptr %5, null, !dbg !1377
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1379

if.then3:                                         ; preds = %while.body
  %6 = load ptr, ptr %k, align 8, !dbg !1380
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1, !dbg !1380
  store ptr %incdec.ptr, ptr %k, align 8, !dbg !1380
  store i8 0, ptr %6, align 1, !dbg !1381
  br label %if.end4, !dbg !1382

if.end4:                                          ; preds = %if.then3, %while.body
  %7 = load ptr, ptr %str.addr, align 8, !dbg !1383
  %8 = load i32, ptr %mode.addr, align 4, !dbg !1384
  %call5 = call i32 @parse_memmap(ptr noundef %7, ptr noundef %start, ptr noundef %size, i32 noundef %8) #11, !dbg !1385
  store i32 %call5, ptr %rc, align 4, !dbg !1386
  %9 = load i32, ptr %rc, align 4, !dbg !1387
  %cmp6 = icmp slt i32 %9, 0, !dbg !1389
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1390

if.then7:                                         ; preds = %if.end4
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1391

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %k, align 8, !dbg !1392
  store ptr %10, ptr %str.addr, align 8, !dbg !1393
  %11 = load i64, ptr %start, align 8, !dbg !1394
  %cmp9 = icmp eq i64 %11, 0, !dbg !1396
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !1397

if.then10:                                        ; preds = %if.end8
  %12 = load i64, ptr %size, align 8, !dbg !1398
  %cmp11 = icmp ugt i64 %12, 0, !dbg !1401
  br i1 %cmp11, label %land.lhs.true, label %if.end14, !dbg !1402

land.lhs.true:                                    ; preds = %if.then10
  %13 = load i64, ptr %size, align 8, !dbg !1403
  %14 = load i64, ptr @mem_limit, align 8, !dbg !1404
  %cmp12 = icmp ult i64 %13, %14, !dbg !1405
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1406

if.then13:                                        ; preds = %land.lhs.true
  %15 = load i64, ptr %size, align 8, !dbg !1407
  store i64 %15, ptr @mem_limit, align 8, !dbg !1408
  br label %if.end14, !dbg !1409

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %if.then10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1410, !llvm.loop !1411

if.end15:                                         ; preds = %if.end8
  %16 = load i64, ptr %start, align 8, !dbg !1413
  %17 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1414
  %add = add nsw i32 4, %17, !dbg !1415
  %idxprom = sext i32 %add to i64, !dbg !1416
  %arrayidx = getelementptr inbounds [8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 %idxprom, !dbg !1416
  %start16 = getelementptr inbounds %struct.mem_vector, ptr %arrayidx, i32 0, i32 0, !dbg !1417
  store i64 %16, ptr %start16, align 16, !dbg !1418
  %18 = load i64, ptr %size, align 8, !dbg !1419
  %19 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1420
  %add17 = add nsw i32 4, %19, !dbg !1421
  %idxprom18 = sext i32 %add17 to i64, !dbg !1422
  %arrayidx19 = getelementptr inbounds [8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 %idxprom18, !dbg !1422
  %size20 = getelementptr inbounds %struct.mem_vector, ptr %arrayidx19, i32 0, i32 1, !dbg !1423
  store i64 %18, ptr %size20, align 8, !dbg !1424
  %20 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1425
  %inc = add nsw i32 %20, 1, !dbg !1425
  store i32 %inc, ptr @mem_avoid_memmap.i, align 4, !dbg !1425
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1412
  br label %cleanup, !dbg !1412

cleanup:                                          ; preds = %if.end15, %if.end14, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #10, !dbg !1412
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1362, !llvm.loop !1411

while.end:                                        ; preds = %cleanup, %land.end
  %21 = load i32, ptr @mem_avoid_memmap.i, align 4, !dbg !1426
  %cmp24 = icmp sge i32 %21, 4, !dbg !1428
  br i1 %cmp24, label %land.lhs.true25, label %if.end28, !dbg !1429

land.lhs.true25:                                  ; preds = %while.end
  %22 = load ptr, ptr %str.addr, align 8, !dbg !1430
  %tobool26 = icmp ne ptr %22, null, !dbg !1430
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1431

if.then27:                                        ; preds = %land.lhs.true25
  store i8 1, ptr @memmap_too_large, align 1, !dbg !1432
  br label %if.end28, !dbg !1433

if.end28:                                         ; preds = %if.then, %if.then27, %land.lhs.true25, %while.end
  ret void, !dbg !1434

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone
declare !dbg !1435 hidden ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone nounwind
define internal void @parse_gb_huge_pages(ptr noundef %param, ptr noundef %val) #0 !dbg !185 {
entry:
  %param.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !189, metadata !DIExpression()), !dbg !1438
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !190, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %p, metadata !191, metadata !DIExpression()), !dbg !1441
  %0 = load ptr, ptr %param.addr, align 8, !dbg !1442
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.17) #11, !dbg !1444
  %tobool = icmp ne i32 %call, 0, !dbg !1444
  br i1 %tobool, label %if.end6, label %if.then, !dbg !1445

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !1446
  store ptr %1, ptr %p, align 8, !dbg !1448
  %2 = load ptr, ptr %p, align 8, !dbg !1449
  %call1 = call i64 @memparse(ptr noundef %2, ptr noundef %p) #11, !dbg !1451
  %cmp = icmp ne i64 %call1, 1073741824, !dbg !1452
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1453

if.then2:                                         ; preds = %if.then
  store i8 0, ptr @parse_gb_huge_pages.gbpage_sz, align 1, !dbg !1454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1456

if.end:                                           ; preds = %if.then
  %3 = load i8, ptr @parse_gb_huge_pages.gbpage_sz, align 1, !dbg !1457, !range !316, !noundef !317
  %tobool3 = trunc i8 %3 to i1, !dbg !1457
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1459

if.then4:                                         ; preds = %if.end
  call void @warn(ptr noundef @.str.18) #11, !dbg !1460
  br label %if.end5, !dbg !1460

if.end5:                                          ; preds = %if.then4, %if.end
  store i8 1, ptr @parse_gb_huge_pages.gbpage_sz, align 1, !dbg !1461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1462

if.end6:                                          ; preds = %entry
  %4 = load ptr, ptr %param.addr, align 8, !dbg !1463
  %call7 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.12) #11, !dbg !1465
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1465
  br i1 %tobool8, label %if.end12, label %land.lhs.true, !dbg !1466

land.lhs.true:                                    ; preds = %if.end6
  %5 = load i8, ptr @parse_gb_huge_pages.gbpage_sz, align 1, !dbg !1467, !range !316, !noundef !317
  %tobool9 = trunc i8 %5 to i1, !dbg !1467
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1468

if.then10:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %val.addr, align 8, !dbg !1469
  store ptr %6, ptr %p, align 8, !dbg !1471
  %7 = load ptr, ptr %p, align 8, !dbg !1472
  %call11 = call i64 @simple_strtoull(ptr noundef %7, ptr noundef %p, i32 noundef 0) #11, !dbg !1473
  store i64 %call11, ptr @max_gb_huge_pages, align 8, !dbg !1474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1475

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1476
  br label %cleanup, !dbg !1476

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1476

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone
declare !dbg !1477 hidden void @free(ptr noundef) #3

; Function Attrs: noredzone
declare !dbg !1480 hidden ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone nounwind
define internal i32 @parse_memmap(ptr noundef %p, ptr noundef %start, ptr noundef %size, i32 noundef %mode) #0 !dbg !1483 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %oldp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1488, metadata !DIExpression()), !dbg !1497
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1489, metadata !DIExpression()), !dbg !1498
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1490, metadata !DIExpression()), !dbg !1499
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1491, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldp) #10, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %oldp, metadata !1492, metadata !DIExpression()), !dbg !1502
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1503
  %tobool = icmp ne ptr %0, null, !dbg !1503
  br i1 %tobool, label %if.end, label %if.then, !dbg !1505

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1506

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1507
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.16, i64 noundef 8) #11, !dbg !1509
  %tobool1 = icmp ne i32 %call, 0, !dbg !1509
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1510

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1511

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1512
  store ptr %2, ptr %oldp, align 8, !dbg !1513
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1514
  %call4 = call i64 @memparse(ptr noundef %3, ptr noundef %p.addr) #11, !dbg !1515
  %4 = load ptr, ptr %size.addr, align 8, !dbg !1516
  store i64 %call4, ptr %4, align 8, !dbg !1517
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1518
  %6 = load ptr, ptr %oldp, align 8, !dbg !1520
  %cmp = icmp eq ptr %5, %6, !dbg !1521
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1522

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !1523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1523

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1524
  %8 = load i8, ptr %7, align 1, !dbg !1525
  %conv = sext i8 %8 to i32, !dbg !1525
  switch i32 %conv, label %sw.default [
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 33, label %sw.bb
    i32 64, label %sw.bb8
  ], !dbg !1526

sw.bb:                                            ; preds = %if.end6, %if.end6, %if.end6
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1527
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1528
  %call7 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef %p.addr) #11, !dbg !1529
  %10 = load ptr, ptr %start.addr, align 8, !dbg !1530
  store i64 %call7, ptr %10, align 8, !dbg !1531
  store i32 0, ptr %retval, align 4, !dbg !1532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1532

sw.bb8:                                           ; preds = %if.end6
  %11 = load i32, ptr %mode.addr, align 4, !dbg !1533
  %cmp9 = icmp eq i32 %11, 0, !dbg !1534
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !1535

if.then11:                                        ; preds = %sw.bb8
  %12 = load ptr, ptr %size.addr, align 8, !dbg !1536
  store i64 0, ptr %12, align 8, !dbg !1538
  br label %if.end29, !dbg !1539

if.else:                                          ; preds = %sw.bb8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1493, metadata !DIExpression()), !dbg !1541
  %13 = load ptr, ptr %p.addr, align 8, !dbg !1542
  %add.ptr12 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !1543
  %call13 = call i64 @memparse(ptr noundef %add.ptr12, ptr noundef %p.addr) #11, !dbg !1544
  %14 = load ptr, ptr %start.addr, align 8, !dbg !1545
  store i64 %call13, ptr %14, align 8, !dbg !1546
  %15 = load ptr, ptr %p.addr, align 8, !dbg !1547
  %tobool14 = icmp ne ptr %15, null, !dbg !1547
  br i1 %tobool14, label %land.lhs.true, label %if.end28, !dbg !1549

land.lhs.true:                                    ; preds = %if.else
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1550
  %17 = load i8, ptr %16, align 1, !dbg !1551
  %conv15 = sext i8 %17 to i32, !dbg !1551
  %cmp16 = icmp eq i32 %conv15, 58, !dbg !1552
  br i1 %cmp16, label %if.then18, label %if.end28, !dbg !1553

if.then18:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1554
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !1554
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !1554
  %19 = load ptr, ptr %p.addr, align 8, !dbg !1556
  %call19 = call i32 @kstrtoull(ptr noundef %19, i32 noundef 0, ptr noundef %flags) #11, !dbg !1558
  %cmp20 = icmp slt i32 %call19, 0, !dbg !1559
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !1560

if.then22:                                        ; preds = %if.then18
  %20 = load ptr, ptr %size.addr, align 8, !dbg !1561
  store i64 0, ptr %20, align 8, !dbg !1562
  br label %if.end27, !dbg !1563

if.else23:                                        ; preds = %if.then18
  %21 = load i64, ptr %flags, align 8, !dbg !1564
  %and = and i64 %21, 262144, !dbg !1566
  %tobool24 = icmp ne i64 %and, 0, !dbg !1566
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1567

if.then25:                                        ; preds = %if.else23
  store i32 0, ptr %retval, align 4, !dbg !1568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1568

if.end26:                                         ; preds = %if.else23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then22
  br label %if.end28, !dbg !1569

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.else
  %22 = load ptr, ptr %size.addr, align 8, !dbg !1570
  store i64 0, ptr %22, align 8, !dbg !1571
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1572
  br label %cleanup, !dbg !1572

cleanup:                                          ; preds = %if.end28, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !1572
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29

if.end29:                                         ; preds = %cleanup.cont, %if.then11
  br label %sw.default, !dbg !1573

sw.default:                                       ; preds = %if.end6, %if.end29
  %23 = load ptr, ptr %start.addr, align 8, !dbg !1574
  store i64 0, ptr %23, align 8, !dbg !1575
  store i32 0, ptr %retval, align 4, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1576

cleanup30:                                        ; preds = %sw.default, %cleanup, %sw.bb, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldp) #10, !dbg !1577
  %24 = load i32, ptr %retval, align 4, !dbg !1577
  ret i32 %24, !dbg !1577
}

; Function Attrs: noredzone
declare !dbg !1578 hidden i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone nounwind
define internal zeroext i1 @process_efi_entries(i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1582 {
entry:
  %retval = alloca i1, align 1
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %e = alloca ptr, align 8
  %efi_mirror_found = alloca i8, align 1
  %region = alloca %struct.mem_vector, align 8
  %md = alloca ptr, align 8
  %pmap = alloca i64, align 8
  %signature = alloca ptr, align 8
  %nr_desc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1586, metadata !DIExpression()), !dbg !1607
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1587, metadata !DIExpression()), !dbg !1608
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10, !dbg !1609
  call void @llvm.dbg.declare(metadata ptr %e, metadata !1588, metadata !DIExpression()), !dbg !1610
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1611
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 17, !dbg !1612
  store ptr %efi_info, ptr %e, align 8, !dbg !1610
  call void @llvm.lifetime.start.p0(i64 1, ptr %efi_mirror_found) #10, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %efi_mirror_found, metadata !1600, metadata !DIExpression()), !dbg !1614
  store i8 0, ptr %efi_mirror_found, align 1, !dbg !1614
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #10, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %region, metadata !1601, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #10, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %md, metadata !1602, metadata !DIExpression()), !dbg !1618
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmap) #10, !dbg !1619
  call void @llvm.dbg.declare(metadata ptr %pmap, metadata !1603, metadata !DIExpression()), !dbg !1620
  call void @llvm.lifetime.start.p0(i64 8, ptr %signature) #10, !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %signature, metadata !1604, metadata !DIExpression()), !dbg !1622
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_desc) #10, !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %nr_desc, metadata !1605, metadata !DIExpression()), !dbg !1624
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1606, metadata !DIExpression()), !dbg !1626
  %1 = load ptr, ptr %e, align 8, !dbg !1627
  %efi_loader_signature = getelementptr inbounds %struct.efi_info, ptr %1, i32 0, i32 0, !dbg !1628
  store ptr %efi_loader_signature, ptr %signature, align 8, !dbg !1629
  %2 = load ptr, ptr %signature, align 8, !dbg !1630
  %call = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.21, i64 noundef 4) #11, !dbg !1632
  %tobool = icmp ne i32 %call, 0, !dbg !1632
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1633

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %signature, align 8, !dbg !1634
  %call1 = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.22, i64 noundef 4) #11, !dbg !1635
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1635
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1636

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !1637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1637

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %e, align 8, !dbg !1638
  %efi_memmap = getelementptr inbounds %struct.efi_info, ptr %4, i32 0, i32 4, !dbg !1639
  %5 = load i32, ptr %efi_memmap, align 4, !dbg !1639
  %conv = zext i32 %5 to i64, !dbg !1638
  %6 = load ptr, ptr %e, align 8, !dbg !1640
  %efi_memmap_hi = getelementptr inbounds %struct.efi_info, ptr %6, i32 0, i32 7, !dbg !1641
  %7 = load i32, ptr %efi_memmap_hi, align 4, !dbg !1641
  %conv3 = zext i32 %7 to i64, !dbg !1642
  %shl = shl i64 %conv3, 32, !dbg !1643
  %or = or i64 %conv, %shl, !dbg !1644
  store i64 %or, ptr %pmap, align 8, !dbg !1645
  %8 = load ptr, ptr %e, align 8, !dbg !1646
  %efi_memmap_size = getelementptr inbounds %struct.efi_info, ptr %8, i32 0, i32 5, !dbg !1647
  %9 = load i32, ptr %efi_memmap_size, align 4, !dbg !1647
  %10 = load ptr, ptr %e, align 8, !dbg !1648
  %efi_memdesc_size = getelementptr inbounds %struct.efi_info, ptr %10, i32 0, i32 2, !dbg !1649
  %11 = load i32, ptr %efi_memdesc_size, align 4, !dbg !1649
  %div = udiv i32 %9, %11, !dbg !1650
  store i32 %div, ptr %nr_desc, align 4, !dbg !1651
  store i32 0, ptr %i, align 4, !dbg !1652
  br label %for.cond, !dbg !1654

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, ptr %i, align 4, !dbg !1655
  %13 = load i32, ptr %nr_desc, align 4, !dbg !1657
  %cmp = icmp ult i32 %12, %13, !dbg !1658
  br i1 %cmp, label %for.body, label %for.end, !dbg !1659

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %pmap, align 8, !dbg !1660
  %15 = inttoptr i64 %14 to ptr, !dbg !1660
  %16 = load i32, ptr %i, align 4, !dbg !1660
  %17 = load ptr, ptr %e, align 8, !dbg !1660
  %efi_memdesc_size5 = getelementptr inbounds %struct.efi_info, ptr %17, i32 0, i32 2, !dbg !1660
  %18 = load i32, ptr %efi_memdesc_size5, align 4, !dbg !1660
  %mul = mul i32 %16, %18, !dbg !1660
  %idx.ext = zext i32 %mul to i64, !dbg !1660
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext, !dbg !1660
  store ptr %add.ptr, ptr %md, align 8, !dbg !1662
  %19 = load ptr, ptr %md, align 8, !dbg !1663
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %19, i32 0, i32 5, !dbg !1665
  %20 = load i64, ptr %attribute, align 8, !dbg !1665
  %and = and i64 %20, 65536, !dbg !1666
  %tobool6 = icmp ne i64 %and, 0, !dbg !1666
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1667

if.then7:                                         ; preds = %for.body
  store i8 1, ptr %efi_mirror_found, align 1, !dbg !1668
  br label %for.end, !dbg !1670

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !1671

for.inc:                                          ; preds = %if.end8
  %21 = load i32, ptr %i, align 4, !dbg !1672
  %inc = add nsw i32 %21, 1, !dbg !1672
  store i32 %inc, ptr %i, align 4, !dbg !1672
  br label %for.cond, !dbg !1673, !llvm.loop !1674

for.end:                                          ; preds = %if.then7, %for.cond
  store i32 0, ptr %i, align 4, !dbg !1676
  br label %for.cond9, !dbg !1678

for.cond9:                                        ; preds = %for.inc40, %for.end
  %22 = load i32, ptr %i, align 4, !dbg !1679
  %23 = load i32, ptr %nr_desc, align 4, !dbg !1681
  %cmp10 = icmp ult i32 %22, %23, !dbg !1682
  br i1 %cmp10, label %for.body12, label %for.end42, !dbg !1683

for.body12:                                       ; preds = %for.cond9
  %24 = load i64, ptr %pmap, align 8, !dbg !1684
  %25 = inttoptr i64 %24 to ptr, !dbg !1684
  %26 = load i32, ptr %i, align 4, !dbg !1684
  %27 = load ptr, ptr %e, align 8, !dbg !1684
  %efi_memdesc_size13 = getelementptr inbounds %struct.efi_info, ptr %27, i32 0, i32 2, !dbg !1684
  %28 = load i32, ptr %efi_memdesc_size13, align 4, !dbg !1684
  %mul14 = mul i32 %26, %28, !dbg !1684
  %idx.ext15 = zext i32 %mul14 to i64, !dbg !1684
  %add.ptr16 = getelementptr inbounds i8, ptr %25, i64 %idx.ext15, !dbg !1684
  store ptr %add.ptr16, ptr %md, align 8, !dbg !1686
  %29 = load ptr, ptr %md, align 8, !dbg !1687
  %call17 = call zeroext i1 @memory_type_is_free(ptr noundef %29) #11, !dbg !1689
  br i1 %call17, label %if.end19, label %if.then18, !dbg !1690

if.then18:                                        ; preds = %for.body12
  br label %for.inc40, !dbg !1691

if.end19:                                         ; preds = %for.body12
  %call20 = call zeroext i1 @efi_soft_reserve_enabled() #14, !dbg !1692
  br i1 %call20, label %land.lhs.true22, label %if.end27, !dbg !1694

land.lhs.true22:                                  ; preds = %if.end19
  %30 = load ptr, ptr %md, align 8, !dbg !1695
  %attribute23 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 5, !dbg !1696
  %31 = load i64, ptr %attribute23, align 8, !dbg !1696
  %and24 = and i64 %31, 262144, !dbg !1697
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1697
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1698

if.then26:                                        ; preds = %land.lhs.true22
  br label %for.inc40, !dbg !1699

if.end27:                                         ; preds = %land.lhs.true22, %if.end19
  %32 = load i8, ptr %efi_mirror_found, align 1, !dbg !1700, !range !316, !noundef !317
  %tobool28 = trunc i8 %32 to i1, !dbg !1700
  br i1 %tobool28, label %land.lhs.true30, label %if.end35, !dbg !1702

land.lhs.true30:                                  ; preds = %if.end27
  %33 = load ptr, ptr %md, align 8, !dbg !1703
  %attribute31 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %33, i32 0, i32 5, !dbg !1704
  %34 = load i64, ptr %attribute31, align 8, !dbg !1704
  %and32 = and i64 %34, 65536, !dbg !1705
  %tobool33 = icmp ne i64 %and32, 0, !dbg !1705
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !1706

if.then34:                                        ; preds = %land.lhs.true30
  br label %for.inc40, !dbg !1707

if.end35:                                         ; preds = %land.lhs.true30, %if.end27
  %35 = load ptr, ptr %md, align 8, !dbg !1708
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %35, i32 0, i32 2, !dbg !1709
  %36 = load i64, ptr %phys_addr, align 8, !dbg !1709
  %start = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1710
  store i64 %36, ptr %start, align 8, !dbg !1711
  %37 = load ptr, ptr %md, align 8, !dbg !1712
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %37, i32 0, i32 4, !dbg !1713
  %38 = load i64, ptr %num_pages, align 8, !dbg !1713
  %shl36 = shl i64 %38, 12, !dbg !1714
  %size = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 1, !dbg !1715
  store i64 %shl36, ptr %size, align 8, !dbg !1716
  %39 = load i64, ptr %minimum.addr, align 8, !dbg !1717
  %40 = load i64, ptr %image_size.addr, align 8, !dbg !1719
  %call37 = call zeroext i1 @process_mem_region(ptr noundef %region, i64 noundef %39, i64 noundef %40) #11, !dbg !1720
  br i1 %call37, label %if.then38, label %if.end39, !dbg !1721

if.then38:                                        ; preds = %if.end35
  br label %for.end42, !dbg !1722

if.end39:                                         ; preds = %if.end35
  br label %for.inc40, !dbg !1723

for.inc40:                                        ; preds = %if.end39, %if.then34, %if.then26, %if.then18
  %41 = load i32, ptr %i, align 4, !dbg !1724
  %inc41 = add nsw i32 %41, 1, !dbg !1724
  store i32 %inc41, ptr %i, align 4, !dbg !1724
  br label %for.cond9, !dbg !1725, !llvm.loop !1726

for.end42:                                        ; preds = %if.then38, %for.cond9
  store i1 true, ptr %retval, align 1, !dbg !1728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1728

cleanup:                                          ; preds = %for.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_desc) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr %signature) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmap) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 1, ptr %efi_mirror_found) #10, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10, !dbg !1729
  %42 = load i1, ptr %retval, align 1, !dbg !1729
  ret i1 %42, !dbg !1729
}

; Function Attrs: noredzone nounwind
define internal void @process_e820_entries(i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1730 {
entry:
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %region = alloca %struct.mem_vector, align 8
  %entry1 = alloca ptr, align 8
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1734, metadata !DIExpression()), !dbg !1745
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1735, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1736, metadata !DIExpression()), !dbg !1748
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #10, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %region, metadata !1737, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #10, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1738, metadata !DIExpression()), !dbg !1752
  store i32 0, ptr %i, align 4, !dbg !1753
  br label %for.cond, !dbg !1755

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1756
  %1 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1758
  %e820_entries = getelementptr inbounds %struct.boot_params, ptr %1, i32 0, i32 20, !dbg !1759
  %2 = load i8, ptr %e820_entries, align 1, !dbg !1759
  %conv = zext i8 %2 to i32, !dbg !1758
  %cmp = icmp slt i32 %0, %conv, !dbg !1760
  br i1 %cmp, label %for.body, label %for.end, !dbg !1761

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @boot_params_ptr, align 8, !dbg !1762
  %e820_table = getelementptr inbounds %struct.boot_params, ptr %3, i32 0, i32 31, !dbg !1764
  %4 = load i32, ptr %i, align 4, !dbg !1765
  %idxprom = sext i32 %4 to i64, !dbg !1762
  %arrayidx = getelementptr inbounds [128 x %struct.boot_e820_entry], ptr %e820_table, i64 0, i64 %idxprom, !dbg !1762
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !1766
  %5 = load ptr, ptr %entry1, align 8, !dbg !1767
  %type = getelementptr inbounds %struct.boot_e820_entry, ptr %5, i32 0, i32 2, !dbg !1769
  %6 = load i32, ptr %type, align 1, !dbg !1769
  %cmp3 = icmp ne i32 %6, 1, !dbg !1770
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1771

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1772

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %entry1, align 8, !dbg !1773
  %addr = getelementptr inbounds %struct.boot_e820_entry, ptr %7, i32 0, i32 0, !dbg !1774
  %8 = load i64, ptr %addr, align 1, !dbg !1774
  %start = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1775
  store i64 %8, ptr %start, align 8, !dbg !1776
  %9 = load ptr, ptr %entry1, align 8, !dbg !1777
  %size = getelementptr inbounds %struct.boot_e820_entry, ptr %9, i32 0, i32 1, !dbg !1778
  %10 = load i64, ptr %size, align 1, !dbg !1778
  %size5 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 1, !dbg !1779
  store i64 %10, ptr %size5, align 8, !dbg !1780
  %11 = load i64, ptr %minimum.addr, align 8, !dbg !1781
  %12 = load i64, ptr %image_size.addr, align 8, !dbg !1783
  %call = call zeroext i1 @process_mem_region(ptr noundef %region, i64 noundef %11, i64 noundef %12) #11, !dbg !1784
  br i1 %call, label %if.then6, label %if.end7, !dbg !1785

if.then6:                                         ; preds = %if.end
  br label %for.end, !dbg !1786

if.end7:                                          ; preds = %if.end
  br label %for.inc, !dbg !1787

for.inc:                                          ; preds = %if.end7, %if.then
  %13 = load i32, ptr %i, align 4, !dbg !1788
  %inc = add nsw i32 %13, 1, !dbg !1788
  store i32 %inc, ptr %i, align 4, !dbg !1788
  br label %for.cond, !dbg !1789, !llvm.loop !1790

for.end:                                          ; preds = %if.then6, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #10, !dbg !1792
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #10, !dbg !1792
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1792
  ret void, !dbg !1792
}

; Function Attrs: noredzone nounwind
define internal i64 @slots_fetch_random() #0 !dbg !1793 {
entry:
  %retval = alloca i64, align 8
  %slot = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #10, !dbg !1799
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1798, metadata !DIExpression()), !dbg !1802
  %0 = load i64, ptr @slot_max, align 8, !dbg !1803
  %cmp = icmp eq i64 %0, 0, !dbg !1805
  br i1 %cmp, label %if.then, label %if.end, !dbg !1806

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1807

if.end:                                           ; preds = %entry
  %call = call i64 @kaslr_get_random_long(ptr noundef @.str.24) #11, !dbg !1808
  %1 = load i64, ptr @slot_max, align 8, !dbg !1809
  %rem = urem i64 %call, %1, !dbg !1810
  store i64 %rem, ptr %slot, align 8, !dbg !1811
  store i32 0, ptr %i, align 4, !dbg !1812
  br label %for.cond, !dbg !1814

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1815
  %3 = load i32, ptr @slot_area_index, align 4, !dbg !1817
  %cmp1 = icmp ult i32 %2, %3, !dbg !1818
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1819

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %slot, align 8, !dbg !1820
  %5 = load i32, ptr %i, align 4, !dbg !1823
  %idxprom = zext i32 %5 to i64, !dbg !1824
  %arrayidx = getelementptr inbounds [100 x %struct.slot_area], ptr @slot_areas, i64 0, i64 %idxprom, !dbg !1824
  %num = getelementptr inbounds %struct.slot_area, ptr %arrayidx, i32 0, i32 1, !dbg !1825
  %6 = load i64, ptr %num, align 8, !dbg !1825
  %cmp2 = icmp uge i64 %4, %6, !dbg !1826
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1827

if.then3:                                         ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !1828
  %idxprom4 = zext i32 %7 to i64, !dbg !1830
  %arrayidx5 = getelementptr inbounds [100 x %struct.slot_area], ptr @slot_areas, i64 0, i64 %idxprom4, !dbg !1830
  %num6 = getelementptr inbounds %struct.slot_area, ptr %arrayidx5, i32 0, i32 1, !dbg !1831
  %8 = load i64, ptr %num6, align 8, !dbg !1831
  %9 = load i64, ptr %slot, align 8, !dbg !1832
  %sub = sub i64 %9, %8, !dbg !1832
  store i64 %sub, ptr %slot, align 8, !dbg !1832
  br label %for.inc, !dbg !1833

if.end7:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !1834
  %idxprom8 = zext i32 %10 to i64, !dbg !1835
  %arrayidx9 = getelementptr inbounds [100 x %struct.slot_area], ptr @slot_areas, i64 0, i64 %idxprom8, !dbg !1835
  %addr = getelementptr inbounds %struct.slot_area, ptr %arrayidx9, i32 0, i32 0, !dbg !1836
  %11 = load i64, ptr %addr, align 16, !dbg !1836
  %12 = load i64, ptr %slot, align 8, !dbg !1837
  %mul = mul i64 %12, 2097152, !dbg !1838
  %add = add i64 %11, %mul, !dbg !1839
  store i64 %add, ptr %retval, align 8, !dbg !1840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1840

for.inc:                                          ; preds = %if.then3
  %13 = load i32, ptr %i, align 4, !dbg !1841
  %inc = add i32 %13, 1, !dbg !1841
  store i32 %inc, ptr %i, align 4, !dbg !1841
  br label %for.cond, !dbg !1842, !llvm.loop !1843

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !1845
  %15 = load i32, ptr @slot_area_index, align 4, !dbg !1847
  %cmp10 = icmp eq i32 %14, %15, !dbg !1848
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1849

if.then11:                                        ; preds = %for.end
  call void @__putstr(ptr noundef @.str.25) #11, !dbg !1850
  br label %if.end12, !dbg !1850

if.end12:                                         ; preds = %if.then11, %for.end
  store i64 0, ptr %retval, align 8, !dbg !1851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1851

cleanup:                                          ; preds = %if.end12, %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #10, !dbg !1852
  %16 = load i64, ptr %retval, align 8, !dbg !1852
  ret i64 %16, !dbg !1852
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @memory_type_is_free(ptr noundef %md) #4 !dbg !1853 {
entry:
  %retval = alloca i1, align 1
  %md.addr = alloca ptr, align 8
  store ptr %md, ptr %md.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !1857, metadata !DIExpression()), !dbg !1858
  %0 = load ptr, ptr %md.addr, align 8, !dbg !1859
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %0, i32 0, i32 0, !dbg !1861
  %1 = load i32, ptr %type, align 8, !dbg !1861
  %cmp = icmp eq i32 %1, 7, !dbg !1862
  br i1 %cmp, label %if.then, label %if.end, !dbg !1863

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1864
  br label %return, !dbg !1864

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !1866
  ret i1 %2, !dbg !1866
}

; Function Attrs: inlinehint noredzone nounwind willreturn memory(read)
define internal zeroext i1 @efi_soft_reserve_enabled() #9 !dbg !1867 {
entry:
  ret i1 false, !dbg !1868
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @process_mem_region(ptr noundef %region, i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1869 {
entry:
  %retval = alloca i1, align 1
  %region.addr = alloca ptr, align 8
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1874, metadata !DIExpression()), !dbg !1878
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1875, metadata !DIExpression()), !dbg !1879
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1876, metadata !DIExpression()), !dbg !1880
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1877, metadata !DIExpression()), !dbg !1882
  %0 = load i32, ptr @num_immovable_mem, align 4, !dbg !1883
  %tobool = icmp ne i32 %0, 0, !dbg !1883
  br i1 %tobool, label %if.end2, label %if.then, !dbg !1885

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %region.addr, align 8, !dbg !1886
  %2 = load i64, ptr %minimum.addr, align 8, !dbg !1888
  %3 = load i64, ptr %image_size.addr, align 8, !dbg !1889
  call void @__process_mem_region(ptr noundef %1, i64 noundef %2, i64 noundef %3) #11, !dbg !1890
  %4 = load i32, ptr @slot_area_index, align 4, !dbg !1891
  %cmp = icmp eq i32 %4, 100, !dbg !1893
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1894

if.then1:                                         ; preds = %if.then
  call void @__putstr(ptr noundef @.str.23) #11, !dbg !1895
  store i1 true, ptr %retval, align 1, !dbg !1897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1897

if.end:                                           ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

if.end2:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %if.end2, %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1900
  %5 = load i1, ptr %retval, align 1, !dbg !1900
  ret i1 %5, !dbg !1900
}

; Function Attrs: noredzone nounwind
define internal void @__process_mem_region(ptr noundef %entry1, i64 noundef %minimum, i64 noundef %image_size) #0 !dbg !1901 {
entry:
  %entry.addr = alloca ptr, align 8
  %minimum.addr = alloca i64, align 8
  %image_size.addr = alloca i64, align 8
  %region = alloca %struct.mem_vector, align 8
  %overlap = alloca %struct.mem_vector, align 8
  %region_end = alloca i64, align 8
  %__UNIQUE_ID___x204 = alloca i64, align 8
  %__UNIQUE_ID___y205 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x206 = alloca i64, align 8
  %__UNIQUE_ID___y207 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1905, metadata !DIExpression()), !dbg !1917
  store i64 %minimum, ptr %minimum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minimum.addr, metadata !1906, metadata !DIExpression()), !dbg !1918
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !1907, metadata !DIExpression()), !dbg !1919
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #10, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %region, metadata !1908, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.start.p0(i64 16, ptr %overlap) #10, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %overlap, metadata !1909, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_end) #10, !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %region_end, metadata !1910, metadata !DIExpression()), !dbg !1924
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x204) #10, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x204, metadata !1911, metadata !DIExpression()), !dbg !1925
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1925
  %start = getelementptr inbounds %struct.mem_vector, ptr %0, i32 0, i32 0, !dbg !1925
  %1 = load i64, ptr %start, align 8, !dbg !1925
  store i64 %1, ptr %__UNIQUE_ID___x204, align 8, !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y205) #10, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y205, metadata !1913, metadata !DIExpression()), !dbg !1925
  %2 = load i64, ptr %minimum.addr, align 8, !dbg !1925
  store i64 %2, ptr %__UNIQUE_ID___y205, align 8, !dbg !1925
  %3 = load i64, ptr %__UNIQUE_ID___x204, align 8, !dbg !1925
  %4 = load i64, ptr %__UNIQUE_ID___y205, align 8, !dbg !1925
  %cmp = icmp ugt i64 %3, %4, !dbg !1925
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1925

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___x204, align 8, !dbg !1925
  br label %cond.end, !dbg !1925

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___y205, align 8, !dbg !1925
  br label %cond.end, !dbg !1925

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !1925
  store i64 %cond, ptr %tmp, align 8, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y205) #10, !dbg !1926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x204) #10, !dbg !1926
  %7 = load i64, ptr %tmp, align 8, !dbg !1925
  %start2 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1927
  store i64 %7, ptr %start2, align 8, !dbg !1928
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x206) #10, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x206, metadata !1914, metadata !DIExpression()), !dbg !1929
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !1929
  %start3 = getelementptr inbounds %struct.mem_vector, ptr %8, i32 0, i32 0, !dbg !1929
  %9 = load i64, ptr %start3, align 8, !dbg !1929
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !1929
  %size = getelementptr inbounds %struct.mem_vector, ptr %10, i32 0, i32 1, !dbg !1929
  %11 = load i64, ptr %size, align 8, !dbg !1929
  %add = add i64 %9, %11, !dbg !1929
  store i64 %add, ptr %__UNIQUE_ID___x206, align 8, !dbg !1929
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y207) #10, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y207, metadata !1916, metadata !DIExpression()), !dbg !1929
  %12 = load i64, ptr @mem_limit, align 8, !dbg !1929
  store i64 %12, ptr %__UNIQUE_ID___y207, align 8, !dbg !1929
  %13 = load i64, ptr %__UNIQUE_ID___x206, align 8, !dbg !1929
  %14 = load i64, ptr %__UNIQUE_ID___y207, align 8, !dbg !1929
  %cmp5 = icmp ult i64 %13, %14, !dbg !1929
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !1929

cond.true6:                                       ; preds = %cond.end
  %15 = load i64, ptr %__UNIQUE_ID___x206, align 8, !dbg !1929
  br label %cond.end8, !dbg !1929

cond.false7:                                      ; preds = %cond.end
  %16 = load i64, ptr %__UNIQUE_ID___y207, align 8, !dbg !1929
  br label %cond.end8, !dbg !1929

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %15, %cond.true6 ], [ %16, %cond.false7 ], !dbg !1929
  store i64 %cond9, ptr %tmp4, align 8, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y207) #10, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x206) #10, !dbg !1930
  %17 = load i64, ptr %tmp4, align 8, !dbg !1929
  store i64 %17, ptr %region_end, align 8, !dbg !1931
  br label %while.cond, !dbg !1932

while.cond:                                       ; preds = %if.end33, %cond.end8
  %18 = load i32, ptr @slot_area_index, align 4, !dbg !1933
  %cmp10 = icmp ult i32 %18, 100, !dbg !1934
  br i1 %cmp10, label %while.body, label %while.end, !dbg !1932

while.body:                                       ; preds = %while.cond
  %start11 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1935
  %19 = load i64, ptr %start11, align 8, !dbg !1935
  %add12 = add i64 %19, 2097151, !dbg !1935
  %and = and i64 %add12, -2097152, !dbg !1935
  %start13 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1937
  store i64 %and, ptr %start13, align 8, !dbg !1938
  %start14 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1939
  %20 = load i64, ptr %start14, align 8, !dbg !1939
  %21 = load i64, ptr %region_end, align 8, !dbg !1941
  %cmp15 = icmp ugt i64 %20, %21, !dbg !1942
  br i1 %cmp15, label %if.then, label %if.end, !dbg !1943

if.then:                                          ; preds = %while.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1944

if.end:                                           ; preds = %while.body
  %22 = load i64, ptr %region_end, align 8, !dbg !1945
  %start16 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1946
  %23 = load i64, ptr %start16, align 8, !dbg !1946
  %sub = sub i64 %22, %23, !dbg !1947
  %size17 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 1, !dbg !1948
  store i64 %sub, ptr %size17, align 8, !dbg !1949
  %size18 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 1, !dbg !1950
  %24 = load i64, ptr %size18, align 8, !dbg !1950
  %25 = load i64, ptr %image_size.addr, align 8, !dbg !1952
  %cmp19 = icmp ult i64 %24, %25, !dbg !1953
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1954

if.then20:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1955

if.end21:                                         ; preds = %if.end
  %call = call zeroext i1 @mem_avoid_overlap(ptr noundef %region, ptr noundef %overlap) #11, !dbg !1956
  br i1 %call, label %if.end23, label %if.then22, !dbg !1958

if.then22:                                        ; preds = %if.end21
  %26 = load i64, ptr %image_size.addr, align 8, !dbg !1959
  call void @process_gb_huge_pages(ptr noundef %region, i64 noundef %26) #11, !dbg !1961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1962

if.end23:                                         ; preds = %if.end21
  %start24 = getelementptr inbounds %struct.mem_vector, ptr %overlap, i32 0, i32 0, !dbg !1963
  %27 = load i64, ptr %start24, align 8, !dbg !1963
  %start25 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1965
  %28 = load i64, ptr %start25, align 8, !dbg !1965
  %29 = load i64, ptr %image_size.addr, align 8, !dbg !1966
  %add26 = add i64 %28, %29, !dbg !1967
  %cmp27 = icmp uge i64 %27, %add26, !dbg !1968
  br i1 %cmp27, label %if.then28, label %if.end33, !dbg !1969

if.then28:                                        ; preds = %if.end23
  %start29 = getelementptr inbounds %struct.mem_vector, ptr %overlap, i32 0, i32 0, !dbg !1970
  %30 = load i64, ptr %start29, align 8, !dbg !1970
  %start30 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1972
  %31 = load i64, ptr %start30, align 8, !dbg !1972
  %sub31 = sub i64 %30, %31, !dbg !1973
  %size32 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 1, !dbg !1974
  store i64 %sub31, ptr %size32, align 8, !dbg !1975
  %32 = load i64, ptr %image_size.addr, align 8, !dbg !1976
  call void @process_gb_huge_pages(ptr noundef %region, i64 noundef %32) #11, !dbg !1977
  br label %if.end33, !dbg !1978

if.end33:                                         ; preds = %if.then28, %if.end23
  %start34 = getelementptr inbounds %struct.mem_vector, ptr %overlap, i32 0, i32 0, !dbg !1979
  %33 = load i64, ptr %start34, align 8, !dbg !1979
  %size35 = getelementptr inbounds %struct.mem_vector, ptr %overlap, i32 0, i32 1, !dbg !1980
  %34 = load i64, ptr %size35, align 8, !dbg !1980
  %add36 = add i64 %33, %34, !dbg !1981
  %start37 = getelementptr inbounds %struct.mem_vector, ptr %region, i32 0, i32 0, !dbg !1982
  store i64 %add36, ptr %start37, align 8, !dbg !1983
  br label %while.cond, !dbg !1932, !llvm.loop !1984

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1986
  br label %cleanup, !dbg !1986

cleanup:                                          ; preds = %while.end, %if.then22, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_end) #10, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 16, ptr %overlap) #10, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #10, !dbg !1986
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1986

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @mem_avoid_overlap(ptr noundef %img, ptr noundef %overlap) #0 !dbg !1987 {
entry:
  %img.addr = alloca ptr, align 8
  %overlap.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %earliest = alloca i64, align 8
  %is_overlapping = alloca i8, align 1
  %avoid = alloca %struct.mem_vector, align 8
  store ptr %img, ptr %img.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %img.addr, metadata !1991, metadata !DIExpression()), !dbg !1999
  store ptr %overlap, ptr %overlap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %overlap.addr, metadata !1992, metadata !DIExpression()), !dbg !2000
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1993, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #10, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1994, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 8, ptr %earliest) #10, !dbg !2005
  call void @llvm.dbg.declare(metadata ptr %earliest, metadata !1995, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %img.addr, align 8, !dbg !2007
  %start = getelementptr inbounds %struct.mem_vector, ptr %0, i32 0, i32 0, !dbg !2008
  %1 = load i64, ptr %start, align 8, !dbg !2008
  %2 = load ptr, ptr %img.addr, align 8, !dbg !2009
  %size = getelementptr inbounds %struct.mem_vector, ptr %2, i32 0, i32 1, !dbg !2010
  %3 = load i64, ptr %size, align 8, !dbg !2010
  %add = add i64 %1, %3, !dbg !2011
  store i64 %add, ptr %earliest, align 8, !dbg !2006
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_overlapping) #10, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %is_overlapping, metadata !1996, metadata !DIExpression()), !dbg !2013
  store i8 0, ptr %is_overlapping, align 1, !dbg !2013
  store i32 0, ptr %i, align 4, !dbg !2014
  br label %for.cond, !dbg !2016

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !2017
  %cmp = icmp slt i32 %4, 8, !dbg !2019
  br i1 %cmp, label %for.body, label %for.end, !dbg !2020

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %img.addr, align 8, !dbg !2021
  %6 = load i32, ptr %i, align 4, !dbg !2024
  %idxprom = sext i32 %6 to i64, !dbg !2025
  %arrayidx = getelementptr inbounds [8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 %idxprom, !dbg !2025
  %call = call zeroext i1 @mem_overlaps(ptr noundef %5, ptr noundef %arrayidx) #11, !dbg !2026
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2027

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !2028
  %idxprom1 = sext i32 %7 to i64, !dbg !2029
  %arrayidx2 = getelementptr inbounds [8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 %idxprom1, !dbg !2029
  %start3 = getelementptr inbounds %struct.mem_vector, ptr %arrayidx2, i32 0, i32 0, !dbg !2030
  %8 = load i64, ptr %start3, align 16, !dbg !2030
  %9 = load i64, ptr %earliest, align 8, !dbg !2031
  %cmp4 = icmp ult i64 %8, %9, !dbg !2032
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2033

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %overlap.addr, align 8, !dbg !2034
  %11 = load i32, ptr %i, align 4, !dbg !2036
  %idxprom5 = sext i32 %11 to i64, !dbg !2037
  %arrayidx6 = getelementptr inbounds [8 x %struct.mem_vector], ptr @mem_avoid, i64 0, i64 %idxprom5, !dbg !2037
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 16 %arrayidx6, i64 16, i1 false), !dbg !2037
  %12 = load ptr, ptr %overlap.addr, align 8, !dbg !2038
  %start7 = getelementptr inbounds %struct.mem_vector, ptr %12, i32 0, i32 0, !dbg !2039
  %13 = load i64, ptr %start7, align 8, !dbg !2039
  store i64 %13, ptr %earliest, align 8, !dbg !2040
  store i8 1, ptr %is_overlapping, align 1, !dbg !2041
  br label %if.end, !dbg !2042

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2043

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !2044
  %inc = add nsw i32 %14, 1, !dbg !2044
  store i32 %inc, ptr %i, align 4, !dbg !2044
  br label %for.cond, !dbg !2045, !llvm.loop !2046

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr @boot_params_ptr, align 8, !dbg !2048
  %hdr = getelementptr inbounds %struct.boot_params, ptr %15, i32 0, i32 28, !dbg !2049
  %setup_data = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 34, !dbg !2050
  %16 = load i64, ptr %setup_data, align 1, !dbg !2050
  %17 = inttoptr i64 %16 to ptr, !dbg !2051
  store ptr %17, ptr %ptr, align 8, !dbg !2052
  br label %while.cond, !dbg !2053

while.cond:                                       ; preds = %if.end43, %for.end
  %18 = load ptr, ptr %ptr, align 8, !dbg !2054
  %tobool = icmp ne ptr %18, null, !dbg !2053
  br i1 %tobool, label %while.body, label %while.end, !dbg !2053

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %avoid) #10, !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %avoid, metadata !1997, metadata !DIExpression()), !dbg !2056
  %19 = load ptr, ptr %ptr, align 8, !dbg !2057
  %20 = ptrtoint ptr %19 to i64, !dbg !2058
  %start8 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 0, !dbg !2059
  store i64 %20, ptr %start8, align 8, !dbg !2060
  %21 = load ptr, ptr %ptr, align 8, !dbg !2061
  %len = getelementptr inbounds %struct.setup_data, ptr %21, i32 0, i32 2, !dbg !2062
  %22 = load i32, ptr %len, align 4, !dbg !2062
  %conv = zext i32 %22 to i64, !dbg !2061
  %add9 = add i64 16, %conv, !dbg !2063
  %size10 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 1, !dbg !2064
  store i64 %add9, ptr %size10, align 8, !dbg !2065
  %23 = load ptr, ptr %img.addr, align 8, !dbg !2066
  %call11 = call zeroext i1 @mem_overlaps(ptr noundef %23, ptr noundef %avoid) #11, !dbg !2068
  br i1 %call11, label %land.lhs.true13, label %if.end19, !dbg !2069

land.lhs.true13:                                  ; preds = %while.body
  %start14 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 0, !dbg !2070
  %24 = load i64, ptr %start14, align 8, !dbg !2070
  %25 = load i64, ptr %earliest, align 8, !dbg !2071
  %cmp15 = icmp ult i64 %24, %25, !dbg !2072
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !2073

if.then17:                                        ; preds = %land.lhs.true13
  %26 = load ptr, ptr %overlap.addr, align 8, !dbg !2074
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %avoid, i64 16, i1 false), !dbg !2076
  %27 = load ptr, ptr %overlap.addr, align 8, !dbg !2077
  %start18 = getelementptr inbounds %struct.mem_vector, ptr %27, i32 0, i32 0, !dbg !2078
  %28 = load i64, ptr %start18, align 8, !dbg !2078
  store i64 %28, ptr %earliest, align 8, !dbg !2079
  store i8 1, ptr %is_overlapping, align 1, !dbg !2080
  br label %if.end19, !dbg !2081

if.end19:                                         ; preds = %if.then17, %land.lhs.true13, %while.body
  %29 = load ptr, ptr %ptr, align 8, !dbg !2082
  %type = getelementptr inbounds %struct.setup_data, ptr %29, i32 0, i32 1, !dbg !2084
  %30 = load i32, ptr %type, align 8, !dbg !2084
  %cmp20 = icmp eq i32 %30, -2147483648, !dbg !2085
  br i1 %cmp20, label %land.lhs.true22, label %if.end43, !dbg !2086

land.lhs.true22:                                  ; preds = %if.end19
  %31 = load ptr, ptr %ptr, align 8, !dbg !2087
  %data = getelementptr inbounds %struct.setup_data, ptr %31, i32 0, i32 3, !dbg !2088
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data, i64 0, i64 0, !dbg !2089
  %type23 = getelementptr inbounds %struct.setup_indirect, ptr %arraydecay, i32 0, i32 0, !dbg !2089
  %32 = load i32, ptr %type23, align 8, !dbg !2089
  %cmp24 = icmp ne i32 %32, -2147483648, !dbg !2090
  br i1 %cmp24, label %if.then26, label %if.end43, !dbg !2091

if.then26:                                        ; preds = %land.lhs.true22
  %33 = load ptr, ptr %ptr, align 8, !dbg !2092
  %data27 = getelementptr inbounds %struct.setup_data, ptr %33, i32 0, i32 3, !dbg !2094
  %arraydecay28 = getelementptr inbounds [0 x i8], ptr %data27, i64 0, i64 0, !dbg !2095
  %addr = getelementptr inbounds %struct.setup_indirect, ptr %arraydecay28, i32 0, i32 3, !dbg !2095
  %34 = load i64, ptr %addr, align 8, !dbg !2095
  %start29 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 0, !dbg !2096
  store i64 %34, ptr %start29, align 8, !dbg !2097
  %35 = load ptr, ptr %ptr, align 8, !dbg !2098
  %data30 = getelementptr inbounds %struct.setup_data, ptr %35, i32 0, i32 3, !dbg !2099
  %arraydecay31 = getelementptr inbounds [0 x i8], ptr %data30, i64 0, i64 0, !dbg !2100
  %len32 = getelementptr inbounds %struct.setup_indirect, ptr %arraydecay31, i32 0, i32 2, !dbg !2100
  %36 = load i64, ptr %len32, align 8, !dbg !2100
  %size33 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 1, !dbg !2101
  store i64 %36, ptr %size33, align 8, !dbg !2102
  %37 = load ptr, ptr %img.addr, align 8, !dbg !2103
  %call34 = call zeroext i1 @mem_overlaps(ptr noundef %37, ptr noundef %avoid) #11, !dbg !2105
  br i1 %call34, label %land.lhs.true36, label %if.end42, !dbg !2106

land.lhs.true36:                                  ; preds = %if.then26
  %start37 = getelementptr inbounds %struct.mem_vector, ptr %avoid, i32 0, i32 0, !dbg !2107
  %38 = load i64, ptr %start37, align 8, !dbg !2107
  %39 = load i64, ptr %earliest, align 8, !dbg !2108
  %cmp38 = icmp ult i64 %38, %39, !dbg !2109
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !2110

if.then40:                                        ; preds = %land.lhs.true36
  %40 = load ptr, ptr %overlap.addr, align 8, !dbg !2111
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %40, ptr align 8 %avoid, i64 16, i1 false), !dbg !2113
  %41 = load ptr, ptr %overlap.addr, align 8, !dbg !2114
  %start41 = getelementptr inbounds %struct.mem_vector, ptr %41, i32 0, i32 0, !dbg !2115
  %42 = load i64, ptr %start41, align 8, !dbg !2115
  store i64 %42, ptr %earliest, align 8, !dbg !2116
  store i8 1, ptr %is_overlapping, align 1, !dbg !2117
  br label %if.end42, !dbg !2118

if.end42:                                         ; preds = %if.then40, %land.lhs.true36, %if.then26
  br label %if.end43, !dbg !2119

if.end43:                                         ; preds = %if.end42, %land.lhs.true22, %if.end19
  %43 = load ptr, ptr %ptr, align 8, !dbg !2120
  %next = getelementptr inbounds %struct.setup_data, ptr %43, i32 0, i32 0, !dbg !2121
  %44 = load i64, ptr %next, align 8, !dbg !2121
  %45 = inttoptr i64 %44 to ptr, !dbg !2122
  store ptr %45, ptr %ptr, align 8, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 16, ptr %avoid) #10, !dbg !2124
  br label %while.cond, !dbg !2053, !llvm.loop !2125

while.end:                                        ; preds = %while.cond
  %46 = load i8, ptr %is_overlapping, align 1, !dbg !2126, !range !316, !noundef !317
  %tobool44 = trunc i8 %46 to i1, !dbg !2126
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_overlapping) #10, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %earliest) #10, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #10, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2127
  ret i1 %tobool44, !dbg !2128
}

; Function Attrs: noredzone nounwind
define internal void @process_gb_huge_pages(ptr noundef %region, i64 noundef %image_size) #0 !dbg !2129 {
entry:
  %region.addr = alloca ptr, align 8
  %image_size.addr = alloca i64, align 8
  %pud_start = alloca i64, align 8
  %pud_end = alloca i64, align 8
  %gb_huge_pages = alloca i64, align 8
  %tmp = alloca %struct.mem_vector, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !2133, metadata !DIExpression()), !dbg !2139
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !2134, metadata !DIExpression()), !dbg !2140
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_start) #10, !dbg !2141
  call void @llvm.dbg.declare(metadata ptr %pud_start, metadata !2135, metadata !DIExpression()), !dbg !2142
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_end) #10, !dbg !2141
  call void @llvm.dbg.declare(metadata ptr %pud_end, metadata !2136, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr %gb_huge_pages) #10, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %gb_huge_pages, metadata !2137, metadata !DIExpression()), !dbg !2145
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #10, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2138, metadata !DIExpression()), !dbg !2147
  %0 = load i64, ptr @max_gb_huge_pages, align 8, !dbg !2148
  %tobool = icmp ne i64 %0, 0, !dbg !2148
  br i1 %tobool, label %if.end, label %if.then, !dbg !2150

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %region.addr, align 8, !dbg !2151
  %2 = load i64, ptr %image_size.addr, align 8, !dbg !2153
  call void @store_slot_info(ptr noundef %1, i64 noundef %2) #11, !dbg !2154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2155

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %region.addr, align 8, !dbg !2156
  %start = getelementptr inbounds %struct.mem_vector, ptr %3, i32 0, i32 0, !dbg !2156
  %4 = load i64, ptr %start, align 8, !dbg !2156
  %add = add i64 %4, 1073741823, !dbg !2156
  %and = and i64 %add, -1073741824, !dbg !2156
  store i64 %and, ptr %pud_start, align 8, !dbg !2157
  %5 = load ptr, ptr %region.addr, align 8, !dbg !2158
  %start1 = getelementptr inbounds %struct.mem_vector, ptr %5, i32 0, i32 0, !dbg !2158
  %6 = load i64, ptr %start1, align 8, !dbg !2158
  %7 = load ptr, ptr %region.addr, align 8, !dbg !2158
  %size = getelementptr inbounds %struct.mem_vector, ptr %7, i32 0, i32 1, !dbg !2158
  %8 = load i64, ptr %size, align 8, !dbg !2158
  %add2 = add i64 %6, %8, !dbg !2158
  %sub = sub i64 %add2, 1073741823, !dbg !2158
  %add3 = add i64 %sub, 1073741823, !dbg !2158
  %and4 = and i64 %add3, -1073741824, !dbg !2158
  store i64 %and4, ptr %pud_end, align 8, !dbg !2159
  %9 = load i64, ptr %pud_start, align 8, !dbg !2160
  %10 = load i64, ptr %pud_end, align 8, !dbg !2162
  %cmp = icmp uge i64 %9, %10, !dbg !2163
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2164

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %region.addr, align 8, !dbg !2165
  %12 = load i64, ptr %image_size.addr, align 8, !dbg !2167
  call void @store_slot_info(ptr noundef %11, i64 noundef %12) #11, !dbg !2168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2169

if.end6:                                          ; preds = %if.end
  %13 = load i64, ptr %pud_start, align 8, !dbg !2170
  %14 = load ptr, ptr %region.addr, align 8, !dbg !2172
  %start7 = getelementptr inbounds %struct.mem_vector, ptr %14, i32 0, i32 0, !dbg !2173
  %15 = load i64, ptr %start7, align 8, !dbg !2173
  %16 = load i64, ptr %image_size.addr, align 8, !dbg !2174
  %add8 = add i64 %15, %16, !dbg !2175
  %cmp9 = icmp uge i64 %13, %add8, !dbg !2176
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !2177

if.then10:                                        ; preds = %if.end6
  %17 = load ptr, ptr %region.addr, align 8, !dbg !2178
  %start11 = getelementptr inbounds %struct.mem_vector, ptr %17, i32 0, i32 0, !dbg !2180
  %18 = load i64, ptr %start11, align 8, !dbg !2180
  %start12 = getelementptr inbounds %struct.mem_vector, ptr %tmp, i32 0, i32 0, !dbg !2181
  store i64 %18, ptr %start12, align 8, !dbg !2182
  %19 = load i64, ptr %pud_start, align 8, !dbg !2183
  %20 = load ptr, ptr %region.addr, align 8, !dbg !2184
  %start13 = getelementptr inbounds %struct.mem_vector, ptr %20, i32 0, i32 0, !dbg !2185
  %21 = load i64, ptr %start13, align 8, !dbg !2185
  %sub14 = sub i64 %19, %21, !dbg !2186
  %size15 = getelementptr inbounds %struct.mem_vector, ptr %tmp, i32 0, i32 1, !dbg !2187
  store i64 %sub14, ptr %size15, align 8, !dbg !2188
  %22 = load i64, ptr %image_size.addr, align 8, !dbg !2189
  call void @store_slot_info(ptr noundef %tmp, i64 noundef %22) #11, !dbg !2190
  br label %if.end16, !dbg !2191

if.end16:                                         ; preds = %if.then10, %if.end6
  %23 = load i64, ptr %pud_end, align 8, !dbg !2192
  %24 = load i64, ptr %pud_start, align 8, !dbg !2193
  %sub17 = sub i64 %23, %24, !dbg !2194
  %shr = lshr i64 %sub17, 30, !dbg !2195
  store i64 %shr, ptr %gb_huge_pages, align 8, !dbg !2196
  %25 = load i64, ptr %gb_huge_pages, align 8, !dbg !2197
  %26 = load i64, ptr @max_gb_huge_pages, align 8, !dbg !2199
  %cmp18 = icmp ugt i64 %25, %26, !dbg !2200
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2201

if.then19:                                        ; preds = %if.end16
  %27 = load i64, ptr %pud_start, align 8, !dbg !2202
  %28 = load i64, ptr @max_gb_huge_pages, align 8, !dbg !2204
  %shl = shl i64 %28, 30, !dbg !2205
  %add20 = add i64 %27, %shl, !dbg !2206
  store i64 %add20, ptr %pud_end, align 8, !dbg !2207
  store i64 0, ptr @max_gb_huge_pages, align 8, !dbg !2208
  br label %if.end22, !dbg !2209

if.else:                                          ; preds = %if.end16
  %29 = load i64, ptr %gb_huge_pages, align 8, !dbg !2210
  %30 = load i64, ptr @max_gb_huge_pages, align 8, !dbg !2212
  %sub21 = sub i64 %30, %29, !dbg !2212
  store i64 %sub21, ptr @max_gb_huge_pages, align 8, !dbg !2212
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %31 = load ptr, ptr %region.addr, align 8, !dbg !2213
  %start23 = getelementptr inbounds %struct.mem_vector, ptr %31, i32 0, i32 0, !dbg !2215
  %32 = load i64, ptr %start23, align 8, !dbg !2215
  %33 = load ptr, ptr %region.addr, align 8, !dbg !2216
  %size24 = getelementptr inbounds %struct.mem_vector, ptr %33, i32 0, i32 1, !dbg !2217
  %34 = load i64, ptr %size24, align 8, !dbg !2217
  %add25 = add i64 %32, %34, !dbg !2218
  %35 = load i64, ptr %pud_end, align 8, !dbg !2219
  %36 = load i64, ptr %image_size.addr, align 8, !dbg !2220
  %add26 = add i64 %35, %36, !dbg !2221
  %cmp27 = icmp uge i64 %add25, %add26, !dbg !2222
  br i1 %cmp27, label %if.then28, label %if.end35, !dbg !2223

if.then28:                                        ; preds = %if.end22
  %37 = load i64, ptr %pud_end, align 8, !dbg !2224
  %start29 = getelementptr inbounds %struct.mem_vector, ptr %tmp, i32 0, i32 0, !dbg !2226
  store i64 %37, ptr %start29, align 8, !dbg !2227
  %38 = load ptr, ptr %region.addr, align 8, !dbg !2228
  %start30 = getelementptr inbounds %struct.mem_vector, ptr %38, i32 0, i32 0, !dbg !2229
  %39 = load i64, ptr %start30, align 8, !dbg !2229
  %40 = load ptr, ptr %region.addr, align 8, !dbg !2230
  %size31 = getelementptr inbounds %struct.mem_vector, ptr %40, i32 0, i32 1, !dbg !2231
  %41 = load i64, ptr %size31, align 8, !dbg !2231
  %add32 = add i64 %39, %41, !dbg !2232
  %42 = load i64, ptr %pud_end, align 8, !dbg !2233
  %sub33 = sub i64 %add32, %42, !dbg !2234
  %size34 = getelementptr inbounds %struct.mem_vector, ptr %tmp, i32 0, i32 1, !dbg !2235
  store i64 %sub33, ptr %size34, align 8, !dbg !2236
  %43 = load i64, ptr %image_size.addr, align 8, !dbg !2237
  call void @store_slot_info(ptr noundef %tmp, i64 noundef %43) #11, !dbg !2238
  br label %if.end35, !dbg !2239

if.end35:                                         ; preds = %if.then28, %if.end22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2240
  br label %cleanup, !dbg !2240

cleanup:                                          ; preds = %if.end35, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #10, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 8, ptr %gb_huge_pages) #10, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_end) #10, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_start) #10, !dbg !2240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2240

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @mem_overlaps(ptr noundef %one, ptr noundef %two) #0 !dbg !2241 {
entry:
  %retval = alloca i1, align 1
  %one.addr = alloca ptr, align 8
  %two.addr = alloca ptr, align 8
  store ptr %one, ptr %one.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %one.addr, metadata !2243, metadata !DIExpression()), !dbg !2245
  store ptr %two, ptr %two.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %two.addr, metadata !2244, metadata !DIExpression()), !dbg !2246
  %0 = load ptr, ptr %one.addr, align 8, !dbg !2247
  %start = getelementptr inbounds %struct.mem_vector, ptr %0, i32 0, i32 0, !dbg !2249
  %1 = load i64, ptr %start, align 8, !dbg !2249
  %2 = load ptr, ptr %one.addr, align 8, !dbg !2250
  %size = getelementptr inbounds %struct.mem_vector, ptr %2, i32 0, i32 1, !dbg !2251
  %3 = load i64, ptr %size, align 8, !dbg !2251
  %add = add i64 %1, %3, !dbg !2252
  %4 = load ptr, ptr %two.addr, align 8, !dbg !2253
  %start1 = getelementptr inbounds %struct.mem_vector, ptr %4, i32 0, i32 0, !dbg !2254
  %5 = load i64, ptr %start1, align 8, !dbg !2254
  %cmp = icmp ule i64 %add, %5, !dbg !2255
  br i1 %cmp, label %if.then, label %if.end, !dbg !2256

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2257
  br label %return, !dbg !2257

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %one.addr, align 8, !dbg !2258
  %start2 = getelementptr inbounds %struct.mem_vector, ptr %6, i32 0, i32 0, !dbg !2260
  %7 = load i64, ptr %start2, align 8, !dbg !2260
  %8 = load ptr, ptr %two.addr, align 8, !dbg !2261
  %start3 = getelementptr inbounds %struct.mem_vector, ptr %8, i32 0, i32 0, !dbg !2262
  %9 = load i64, ptr %start3, align 8, !dbg !2262
  %10 = load ptr, ptr %two.addr, align 8, !dbg !2263
  %size4 = getelementptr inbounds %struct.mem_vector, ptr %10, i32 0, i32 1, !dbg !2264
  %11 = load i64, ptr %size4, align 8, !dbg !2264
  %add5 = add i64 %9, %11, !dbg !2265
  %cmp6 = icmp uge i64 %7, %add5, !dbg !2266
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2267

if.then7:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2268
  br label %return, !dbg !2268

if.end8:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !2269
  br label %return, !dbg !2269

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !2270
  ret i1 %12, !dbg !2270
}

; Function Attrs: noredzone nounwind
define internal void @store_slot_info(ptr noundef %region, i64 noundef %image_size) #0 !dbg !2271 {
entry:
  %region.addr = alloca ptr, align 8
  %image_size.addr = alloca i64, align 8
  %slot_area = alloca %struct.slot_area, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !2273, metadata !DIExpression()), !dbg !2276
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 16, ptr %slot_area) #10, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %slot_area, metadata !2275, metadata !DIExpression()), !dbg !2279
  %0 = load i32, ptr @slot_area_index, align 4, !dbg !2280
  %cmp = icmp eq i32 %0, 100, !dbg !2282
  br i1 %cmp, label %if.then, label %if.end, !dbg !2283

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2284

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %region.addr, align 8, !dbg !2285
  %start = getelementptr inbounds %struct.mem_vector, ptr %1, i32 0, i32 0, !dbg !2286
  %2 = load i64, ptr %start, align 8, !dbg !2286
  %addr = getelementptr inbounds %struct.slot_area, ptr %slot_area, i32 0, i32 0, !dbg !2287
  store i64 %2, ptr %addr, align 8, !dbg !2288
  %3 = load ptr, ptr %region.addr, align 8, !dbg !2289
  %size = getelementptr inbounds %struct.mem_vector, ptr %3, i32 0, i32 1, !dbg !2290
  %4 = load i64, ptr %size, align 8, !dbg !2290
  %5 = load i64, ptr %image_size.addr, align 8, !dbg !2291
  %sub = sub i64 %4, %5, !dbg !2292
  %div = udiv i64 %sub, 2097152, !dbg !2293
  %add = add i64 1, %div, !dbg !2294
  %num = getelementptr inbounds %struct.slot_area, ptr %slot_area, i32 0, i32 1, !dbg !2295
  store i64 %add, ptr %num, align 8, !dbg !2296
  %6 = load i32, ptr @slot_area_index, align 4, !dbg !2297
  %inc = add i32 %6, 1, !dbg !2297
  store i32 %inc, ptr @slot_area_index, align 4, !dbg !2297
  %idxprom = zext i32 %6 to i64, !dbg !2298
  %arrayidx = getelementptr inbounds [100 x %struct.slot_area], ptr @slot_areas, i64 0, i64 %idxprom, !dbg !2298
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %slot_area, i64 16, i1 false), !dbg !2299
  %num1 = getelementptr inbounds %struct.slot_area, ptr %slot_area, i32 0, i32 1, !dbg !2300
  %7 = load i64, ptr %num1, align 8, !dbg !2300
  %8 = load i64, ptr @slot_max, align 8, !dbg !2301
  %add2 = add i64 %8, %7, !dbg !2301
  store i64 %add2, ptr @slot_max, align 8, !dbg !2301
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2302
  br label %cleanup, !dbg !2302

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %slot_area) #10, !dbg !2302
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2302

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint noredzone nounwind willreturn memory(read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin noredzone "no-builtins" }
attributes #12 = { nounwind memory(read) }
attributes #13 = { nobuiltin noredzone noreturn "no-builtins" }
attributes #14 = { nobuiltin noredzone nounwind willreturn memory(read) "no-builtins" }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/compressed/../../lib/kaslr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d9d19119714a911f11a1e2aec109c7bf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "_ctype", scope: !26, file: !244, line: 12, type: !245, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !27, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.kaslr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/kaslr\22 -D KBUILD_BASENAME=\22kaslr\22 -D KBUILD_MODNAME=\22kaslr\22 -D __KBUILD_MODNAME=kmod_kaslr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/kaslr.ll arch/x86/boot/compressed/kaslr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !60, globals: !105, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "arch/x86/boot/compressed/kaslr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3eadd1c69bc1482571374fdb72bbff4")
!28 = !{!29, !35, !44, !48}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 10, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "false", value: 0)
!34 = !DIEnumerator(name: "true", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mem_avoid_index", file: !27, line: 90, baseType: !31, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42, !43}
!37 = !DIEnumerator(name: "MEM_AVOID_ZO_RANGE", value: 0)
!38 = !DIEnumerator(name: "MEM_AVOID_INITRD", value: 1)
!39 = !DIEnumerator(name: "MEM_AVOID_CMDLINE", value: 2)
!40 = !DIEnumerator(name: "MEM_AVOID_BOOTPARAMS", value: 3)
!41 = !DIEnumerator(name: "MEM_AVOID_MEMMAP_BEGIN", value: 4)
!42 = !DIEnumerator(name: "MEM_AVOID_MEMMAP_END", value: 7)
!43 = !DIEnumerator(name: "MEM_AVOID_MAX", value: 8)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "parse_mode", file: !27, line: 122, baseType: !31, size: 32, elements: !45)
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "PARSE_MEMMAP", value: 0)
!47 = !DIEnumerator(name: "PARSE_EFI", value: 1)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !49, line: 10, baseType: !31, size: 32, elements: !50)
!49 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59}
!51 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!52 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!53 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!54 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!55 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!56 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!57 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!58 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!59 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !69, !72, !85, !86, !98}
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !68, line: 23, baseType: !69)
!68 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !70, line: 31, baseType: !71)
!70 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!71 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !74, line: 51, baseType: !75)
!74 = !DIFile(filename: "arch/x86/boot/compressed/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fce95a19879dc454423d87814ff243aa")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 44, size: 320, elements: !76)
!76 = !{!77, !80, !81, !82, !83, !84}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !74, line: 45, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !68, line: 21, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !70, line: 27, baseType: !31)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !75, file: !74, line: 46, baseType: !78, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !75, file: !74, line: 47, baseType: !67, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !75, file: !74, line: 48, baseType: !67, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !75, file: !74, line: 49, baseType: !67, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !75, file: !74, line: 50, baseType: !67, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !88, line: 53, size: 128, elements: !89)
!88 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!89 = !{!90, !91, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 54, baseType: !69, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !88, line: 55, baseType: !79, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !88, line: 56, baseType: !79, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !88, line: 57, baseType: !94, offset: 128)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !96)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !70, line: 21, baseType: !62)
!96 = !{!97}
!97 = !DISubrange(count: -1)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_indirect", file: !88, line: 61, size: 192, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !88, line: 62, baseType: !79, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !99, file: !88, line: 63, baseType: !79, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !99, file: !88, line: 64, baseType: !69, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !99, file: !88, line: 65, baseType: !69, size: 64, offset: 128)
!105 = !{!0, !7, !12, !17, !19, !24, !106, !108, !113, !118, !120, !126, !134, !139, !144, !146, !151, !156, !158, !160, !173, !178, !183, !192, !197, !199, !201, !203, !208, !213, !215, !217, !222, !231, !233, !235, !237, !242}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !27, line: 850, type: !9, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !27, line: 851, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 38)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !27, line: 877, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 52)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "mem_limit", scope: !26, file: !27, line: 85, type: !67, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "build_str", scope: !26, file: !27, line: 42, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1456, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!124 = !{!125}
!125 = !DISubrange(count: 182)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "mem_avoid", scope: !26, file: !27, line: 100, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1024, elements: !10)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_vector", file: !130, line: 93, size: 128, elements: !131)
!130 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !129, file: !130, line: 94, baseType: !67, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !130, line: 95, baseType: !67, size: 64, offset: 64)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !27, line: 268, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 41)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !27, line: 280, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !27, line: 283, type: !14, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !27, line: 285, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !27, line: 287, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !27, line: 290, type: !148, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !27, line: 298, type: !3, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "i", scope: !162, file: !27, line: 190, type: !61, isLocal: true, isDefinition: true)
!162 = distinct !DISubprogram(name: "mem_avoid_memmap", scope: !27, file: !27, line: 188, type: !163, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !44, !63}
!165 = !{!166, !167, !168, !170, !171, !172}
!166 = !DILocalVariable(name: "mode", arg: 1, scope: !162, file: !27, line: 188, type: !44)
!167 = !DILocalVariable(name: "str", arg: 2, scope: !162, file: !27, line: 188, type: !63)
!168 = !DILocalVariable(name: "rc", scope: !169, file: !27, line: 196, type: !61)
!169 = distinct !DILexicalBlock(scope: !162, file: !27, line: 195, column: 42)
!170 = !DILocalVariable(name: "start", scope: !169, file: !27, line: 197, type: !67)
!171 = !DILocalVariable(name: "size", scope: !169, file: !27, line: 197, type: !67)
!172 = !DILocalVariable(name: "k", scope: !169, file: !27, line: 198, type: !63)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !27, line: 136, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 9)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "memmap_too_large", scope: !26, file: !27, line: 78, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !181, line: 35, baseType: !182)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!182 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "gbpage_sz", scope: !185, file: !27, line: 231, type: !180, isLocal: true, isDefinition: true)
!185 = distinct !DISubprogram(name: "parse_gb_huge_pages", scope: !27, file: !27, line: 229, type: !186, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !63, !63}
!188 = !{!189, !190, !191}
!189 = !DILocalVariable(name: "param", arg: 1, scope: !185, file: !27, line: 229, type: !63)
!190 = !DILocalVariable(name: "val", arg: 2, scope: !185, file: !27, line: 229, type: !63)
!191 = !DILocalVariable(name: "p", scope: !185, file: !27, line: 232, type: !63)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !27, line: 234, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 11)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !27, line: 242, type: !136, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "max_gb_huge_pages", scope: !26, file: !27, line: 227, type: !65, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "num_immovable_mem", scope: !26, file: !27, line: 88, type: !61, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !27, line: 803, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 57)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !27, line: 814, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 34)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !27, line: 719, type: !21, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !27, line: 720, type: !21, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !27, line: 637, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 49)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "slot_areas", scope: !26, file: !27, line: 488, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 12800, elements: !229)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slot_area", file: !27, line: 481, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !225, file: !27, line: 482, baseType: !67, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !225, file: !27, line: 483, baseType: !65, size: 64, offset: 64)
!229 = !{!230}
!230 = !DISubrange(count: 100)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "slot_max", scope: !26, file: !27, line: 490, type: !65, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "slot_area_index", scope: !26, file: !27, line: 489, type: !31, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !27, line: 565, type: !175, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !27, line: 576, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 31)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !27, line: 833, type: !9, isLocal: true, isDefinition: true)
!244 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/ctype.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7cc9aa393bdf975a6b035632c8b6a492")
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2048, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!247 = !{!248}
!248 = !DISubrange(count: 256)
!249 = !{i32 7, !"Dwarf Version", i32 5}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 8, !"PIC Level", i32 2}
!253 = !{i32 7, !"PIE Level", i32 2}
!254 = !{i32 1, !"Code Model", i32 1}
!255 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!256 = distinct !DISubprogram(name: "kaslr_get_random_long", scope: !2, file: !2, line: 49, type: !257, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !260)
!257 = !DISubroutineType(types: !258)
!258 = !{!65, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!260 = !{!261, !262, !264, !265, !266}
!261 = !DILocalVariable(name: "purpose", arg: 1, scope: !256, file: !2, line: 49, type: !259)
!262 = !DILocalVariable(name: "mix_const", scope: !256, file: !2, line: 52, type: !263)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!264 = !DILocalVariable(name: "raw", scope: !256, file: !2, line: 56, type: !65)
!265 = !DILocalVariable(name: "random", scope: !256, file: !2, line: 56, type: !65)
!266 = !DILocalVariable(name: "use_i8254", scope: !256, file: !2, line: 57, type: !180)
!267 = !DILocation(line: 49, column: 49, scope: !256)
!268 = !DILocation(line: 52, column: 2, scope: !256)
!269 = !DILocation(line: 52, column: 22, scope: !256)
!270 = !DILocation(line: 56, column: 2, scope: !256)
!271 = !DILocation(line: 56, column: 16, scope: !256)
!272 = !DILocation(line: 56, column: 21, scope: !256)
!273 = !DILocation(line: 56, column: 30, scope: !256)
!274 = !DILocation(line: 57, column: 2, scope: !256)
!275 = !DILocation(line: 57, column: 7, scope: !256)
!276 = !DILocation(line: 59, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !256, file: !2, line: 59, column: 6)
!278 = !DILocation(line: 59, column: 6, scope: !256)
!279 = !DILocation(line: 60, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 59, column: 15)
!281 = !DILocation(line: 61, column: 3, scope: !280)
!282 = !DILocation(line: 62, column: 2, scope: !280)
!283 = !DILocation(line: 64, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !256, file: !2, line: 64, column: 6)
!285 = !DILocation(line: 64, column: 6, scope: !256)
!286 = !DILocation(line: 65, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 65, column: 7)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 64, column: 39)
!289 = !DILocation(line: 65, column: 7, scope: !288)
!290 = !DILocation(line: 66, column: 4, scope: !287)
!291 = !DILocation(line: 67, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 67, column: 7)
!293 = !DILocation(line: 67, column: 7, scope: !288)
!294 = !DILocation(line: 68, column: 14, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !2, line: 67, column: 26)
!296 = !DILocation(line: 68, column: 11, scope: !295)
!297 = !DILocation(line: 69, column: 14, scope: !295)
!298 = !DILocation(line: 70, column: 3, scope: !295)
!299 = !DILocation(line: 71, column: 2, scope: !288)
!300 = !DILocation(line: 73, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !256, file: !2, line: 73, column: 6)
!302 = !DILocation(line: 73, column: 6, scope: !256)
!303 = !DILocation(line: 74, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 74, column: 7)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 73, column: 36)
!306 = !DILocation(line: 74, column: 7, scope: !305)
!307 = !DILocation(line: 75, column: 4, scope: !304)
!308 = !DILocation(line: 76, column: 9, scope: !305)
!309 = !DILocation(line: 76, column: 7, scope: !305)
!310 = !DILocation(line: 78, column: 13, scope: !305)
!311 = !DILocation(line: 78, column: 10, scope: !305)
!312 = !DILocation(line: 79, column: 13, scope: !305)
!313 = !DILocation(line: 80, column: 2, scope: !305)
!314 = !DILocation(line: 82, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !256, file: !2, line: 82, column: 6)
!316 = !{i8 0, i8 2}
!317 = !{}
!318 = !DILocation(line: 82, column: 6, scope: !256)
!319 = !DILocation(line: 83, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 83, column: 7)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 82, column: 17)
!322 = !DILocation(line: 83, column: 7, scope: !321)
!323 = !DILocation(line: 84, column: 4, scope: !320)
!324 = !DILocation(line: 85, column: 13, scope: !321)
!325 = !DILocation(line: 85, column: 10, scope: !321)
!326 = !DILocation(line: 86, column: 2, scope: !321)
!327 = !DILocation(line: 91, column: 13, scope: !256)
!328 = !DILocation(line: 89, column: 2, scope: !256)
!329 = !{i64 2153462637}
!330 = !DILocation(line: 92, column: 12, scope: !256)
!331 = !DILocation(line: 92, column: 9, scope: !256)
!332 = !DILocation(line: 94, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !256, file: !2, line: 94, column: 6)
!334 = !DILocation(line: 94, column: 6, scope: !256)
!335 = !DILocation(line: 95, column: 3, scope: !333)
!336 = !DILocation(line: 97, column: 9, scope: !256)
!337 = !DILocation(line: 98, column: 1, scope: !256)
!338 = !DILocation(line: 97, column: 2, scope: !256)
!339 = distinct !DISubprogram(name: "get_boot_seed", scope: !27, file: !27, line: 61, type: !340, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!65}
!342 = !{!343}
!343 = !DILocalVariable(name: "hash", scope: !339, file: !27, line: 63, type: !65)
!344 = !DILocation(line: 63, column: 2, scope: !339)
!345 = !DILocation(line: 63, column: 16, scope: !339)
!346 = !DILocation(line: 65, column: 20, scope: !339)
!347 = !DILocation(line: 65, column: 9, scope: !339)
!348 = !DILocation(line: 65, column: 7, scope: !339)
!349 = !DILocation(line: 66, column: 20, scope: !339)
!350 = !DILocation(line: 66, column: 26, scope: !339)
!351 = !DILocation(line: 66, column: 9, scope: !339)
!352 = !DILocation(line: 66, column: 7, scope: !339)
!353 = !DILocation(line: 68, column: 9, scope: !339)
!354 = !DILocation(line: 69, column: 1, scope: !339)
!355 = !DILocation(line: 68, column: 2, scope: !339)
!356 = !DISubprogram(name: "__putstr", scope: !130, file: !130, line: 64, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !259}
!359 = !DISubprogram(name: "has_cpuflag", scope: !130, file: !130, line: 116, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!180, !61}
!362 = distinct !DISubprogram(name: "rdrand_long", scope: !363, file: !363, line: 20, type: !364, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !366)
!363 = !DIFile(filename: "./arch/x86/include/asm/archrandom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8100e45a646ee0ab0040a389cd0f8b61")
!364 = !DISubroutineType(types: !365)
!365 = !{!180, !66}
!366 = !{!367, !368, !369}
!367 = !DILocalVariable(name: "v", arg: 1, scope: !362, file: !363, line: 20, type: !66)
!368 = !DILocalVariable(name: "ok", scope: !362, file: !363, line: 22, type: !180)
!369 = !DILocalVariable(name: "retry", scope: !362, file: !363, line: 23, type: !31)
!370 = !DILocation(line: 20, column: 60, scope: !362)
!371 = !DILocation(line: 22, column: 2, scope: !362)
!372 = !DILocation(line: 22, column: 7, scope: !362)
!373 = !DILocation(line: 23, column: 2, scope: !362)
!374 = !DILocation(line: 23, column: 15, scope: !362)
!375 = !DILocation(line: 24, column: 2, scope: !362)
!376 = !DILocation(line: 27, column: 40, scope: !377)
!377 = distinct !DILexicalBlock(scope: !362, file: !363, line: 24, column: 5)
!378 = !DILocation(line: 25, column: 3, scope: !377)
!379 = !{i64 5949276, i64 2153434054}
!380 = !DILocation(line: 28, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !363, line: 28, column: 7)
!382 = !DILocation(line: 28, column: 7, scope: !377)
!383 = !DILocation(line: 29, column: 4, scope: !381)
!384 = !DILocation(line: 30, column: 2, scope: !377)
!385 = !DILocation(line: 30, column: 11, scope: !362)
!386 = distinct !{!386, !375, !387, !388, !389}
!387 = !DILocation(line: 30, column: 18, scope: !362)
!388 = !{!"llvm.loop.mustprogress"}
!389 = !{!"llvm.loop.unroll.disable"}
!390 = !DILocation(line: 31, column: 2, scope: !362)
!391 = !DILocation(line: 32, column: 1, scope: !362)
!392 = distinct !DISubprogram(name: "rdtsc", scope: !393, file: !393, line: 180, type: !394, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !396)
!393 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!394 = !DISubroutineType(types: !395)
!395 = !{!71}
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "low", scope: !392, file: !393, line: 182, type: !65)
!398 = !DILocalVariable(name: "high", scope: !392, file: !393, line: 182, type: !65)
!399 = !DILocation(line: 182, column: 2, scope: !392)
!400 = !DILocation(line: 184, column: 2, scope: !392)
!401 = !{i64 942914}
!402 = !DILocation(line: 186, column: 9, scope: !392)
!403 = !DILocation(line: 187, column: 1, scope: !392)
!404 = !DILocation(line: 186, column: 2, scope: !392)
!405 = distinct !DISubprogram(name: "i8254", scope: !2, file: !2, line: 34, type: !406, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !411)
!406 = !DISubroutineType(types: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !68, line: 19, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !70, line: 24, baseType: !410)
!410 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!411 = !{!412, !413}
!412 = !DILocalVariable(name: "status", scope: !405, file: !2, line: 36, type: !408)
!413 = !DILocalVariable(name: "timer", scope: !405, file: !2, line: 36, type: !408)
!414 = !DILocation(line: 36, column: 2, scope: !405)
!415 = !DILocation(line: 36, column: 6, scope: !405)
!416 = !DILocation(line: 36, column: 14, scope: !405)
!417 = !DILocation(line: 38, column: 2, scope: !405)
!418 = !DILocation(line: 39, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !405, file: !2, line: 38, column: 5)
!420 = !DILocation(line: 41, column: 12, scope: !419)
!421 = !DILocation(line: 41, column: 10, scope: !419)
!422 = !DILocation(line: 42, column: 12, scope: !419)
!423 = !DILocation(line: 42, column: 10, scope: !419)
!424 = !DILocation(line: 43, column: 12, scope: !419)
!425 = !DILocation(line: 43, column: 37, scope: !419)
!426 = !DILocation(line: 43, column: 9, scope: !419)
!427 = !DILocation(line: 44, column: 2, scope: !419)
!428 = !DILocation(line: 44, column: 11, scope: !405)
!429 = !DILocation(line: 44, column: 18, scope: !405)
!430 = distinct !{!430, !417, !431, !388, !389}
!431 = !DILocation(line: 44, column: 41, scope: !405)
!432 = !DILocation(line: 46, column: 9, scope: !405)
!433 = !DILocation(line: 47, column: 1, scope: !405)
!434 = !DILocation(line: 46, column: 2, scope: !405)
!435 = distinct !DISubprogram(name: "skip_spaces", scope: !27, file: !27, line: 113, type: !436, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!63, !259}
!438 = !{!439}
!439 = !DILocalVariable(name: "str", arg: 1, scope: !435, file: !27, line: 113, type: !259)
!440 = !DILocation(line: 113, column: 31, scope: !435)
!441 = !DILocation(line: 115, column: 2, scope: !435)
!442 = !DILocation(line: 115, column: 9, scope: !435)
!443 = !DILocation(line: 116, column: 3, scope: !435)
!444 = distinct !{!444, !441, !445, !388, !389}
!445 = !DILocation(line: 116, column: 5, scope: !435)
!446 = !DILocation(line: 117, column: 17, scope: !435)
!447 = !DILocation(line: 117, column: 2, scope: !435)
!448 = distinct !DISubprogram(name: "get_option", scope: !449, file: !449, line: 56, type: !450, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !453)
!449 = !DIFile(filename: "arch/x86/boot/compressed/../../../../lib/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e6e1e1bf5ecca5aab0462e451cfcdf2")
!450 = !DISubroutineType(types: !451)
!451 = !{!61, !64, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "str", arg: 1, scope: !448, file: !449, line: 56, type: !64)
!455 = !DILocalVariable(name: "pint", arg: 2, scope: !448, file: !449, line: 56, type: !452)
!456 = !DILocalVariable(name: "cur", scope: !448, file: !449, line: 58, type: !63)
!457 = !DILocalVariable(name: "value", scope: !448, file: !449, line: 59, type: !61)
!458 = !DILocation(line: 56, column: 23, scope: !448)
!459 = !DILocation(line: 56, column: 33, scope: !448)
!460 = !DILocation(line: 58, column: 2, scope: !448)
!461 = !DILocation(line: 58, column: 8, scope: !448)
!462 = !DILocation(line: 58, column: 15, scope: !448)
!463 = !DILocation(line: 58, column: 14, scope: !448)
!464 = !DILocation(line: 59, column: 2, scope: !448)
!465 = !DILocation(line: 59, column: 6, scope: !448)
!466 = !DILocation(line: 61, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !448, file: !449, line: 61, column: 6)
!468 = !DILocation(line: 61, column: 11, scope: !467)
!469 = !DILocation(line: 61, column: 17, scope: !467)
!470 = !DILocation(line: 61, column: 16, scope: !467)
!471 = !DILocation(line: 61, column: 15, scope: !467)
!472 = !DILocation(line: 61, column: 6, scope: !448)
!473 = !DILocation(line: 62, column: 3, scope: !467)
!474 = !DILocation(line: 63, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !448, file: !449, line: 63, column: 6)
!476 = !DILocation(line: 63, column: 6, scope: !475)
!477 = !DILocation(line: 63, column: 11, scope: !475)
!478 = !DILocation(line: 63, column: 6, scope: !448)
!479 = !DILocation(line: 64, column: 28, scope: !475)
!480 = !DILocation(line: 64, column: 35, scope: !475)
!481 = !DILocation(line: 64, column: 12, scope: !475)
!482 = !DILocation(line: 64, column: 11, scope: !475)
!483 = !DILocation(line: 64, column: 9, scope: !475)
!484 = !DILocation(line: 64, column: 3, scope: !475)
!485 = !DILocation(line: 66, column: 27, scope: !475)
!486 = !DILocation(line: 66, column: 32, scope: !475)
!487 = !DILocation(line: 66, column: 11, scope: !475)
!488 = !DILocation(line: 66, column: 9, scope: !475)
!489 = !DILocation(line: 67, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !448, file: !449, line: 67, column: 6)
!491 = !DILocation(line: 67, column: 6, scope: !448)
!492 = !DILocation(line: 68, column: 11, scope: !490)
!493 = !DILocation(line: 68, column: 4, scope: !490)
!494 = !DILocation(line: 68, column: 9, scope: !490)
!495 = !DILocation(line: 68, column: 3, scope: !490)
!496 = !DILocation(line: 69, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !448, file: !449, line: 69, column: 6)
!498 = !DILocation(line: 69, column: 14, scope: !497)
!499 = !DILocation(line: 69, column: 13, scope: !497)
!500 = !DILocation(line: 69, column: 10, scope: !497)
!501 = !DILocation(line: 69, column: 6, scope: !448)
!502 = !DILocation(line: 70, column: 3, scope: !497)
!503 = !DILocation(line: 71, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !448, file: !449, line: 71, column: 6)
!505 = !DILocation(line: 71, column: 7, scope: !504)
!506 = !DILocation(line: 71, column: 6, scope: !504)
!507 = !DILocation(line: 71, column: 12, scope: !504)
!508 = !DILocation(line: 71, column: 6, scope: !448)
!509 = !DILocation(line: 72, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !504, file: !449, line: 71, column: 20)
!511 = !DILocation(line: 72, column: 9, scope: !510)
!512 = !DILocation(line: 73, column: 3, scope: !510)
!513 = !DILocation(line: 75, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !448, file: !449, line: 75, column: 6)
!515 = !DILocation(line: 75, column: 7, scope: !514)
!516 = !DILocation(line: 75, column: 6, scope: !514)
!517 = !DILocation(line: 75, column: 12, scope: !514)
!518 = !DILocation(line: 75, column: 6, scope: !448)
!519 = !DILocation(line: 76, column: 3, scope: !514)
!520 = !DILocation(line: 78, column: 2, scope: !448)
!521 = !DILocation(line: 79, column: 1, scope: !448)
!522 = !DISubprogram(name: "simple_strtoull", scope: !523, file: !523, line: 28, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DIFile(filename: "arch/x86/boot/compressed/../string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57f8c28d9f334417175b0af782b739d7")
!524 = !DISubroutineType(types: !525)
!525 = !{!71, !259, !64, !31}
!526 = distinct !DISubprogram(name: "get_options", scope: !449, file: !449, line: 107, type: !527, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!63, !259, !61, !452}
!529 = !{!530, !531, !532, !533, !534, !535, !536, !538, !541}
!530 = !DILocalVariable(name: "str", arg: 1, scope: !526, file: !449, line: 107, type: !259)
!531 = !DILocalVariable(name: "nints", arg: 2, scope: !526, file: !449, line: 107, type: !61)
!532 = !DILocalVariable(name: "ints", arg: 3, scope: !526, file: !449, line: 107, type: !452)
!533 = !DILocalVariable(name: "validate", scope: !526, file: !449, line: 109, type: !180)
!534 = !DILocalVariable(name: "res", scope: !526, file: !449, line: 110, type: !61)
!535 = !DILocalVariable(name: "i", scope: !526, file: !449, line: 110, type: !61)
!536 = !DILocalVariable(name: "pint", scope: !537, file: !449, line: 113, type: !452)
!537 = distinct !DILexicalBlock(scope: !526, file: !449, line: 112, column: 32)
!538 = !DILocalVariable(name: "n", scope: !539, file: !449, line: 119, type: !61)
!539 = distinct !DILexicalBlock(scope: !540, file: !449, line: 118, column: 17)
!540 = distinct !DILexicalBlock(scope: !537, file: !449, line: 118, column: 7)
!541 = !DILocalVariable(name: "range_nums", scope: !539, file: !449, line: 120, type: !61)
!542 = !DILocation(line: 107, column: 31, scope: !526)
!543 = !DILocation(line: 107, column: 40, scope: !526)
!544 = !DILocation(line: 107, column: 52, scope: !526)
!545 = !DILocation(line: 109, column: 2, scope: !526)
!546 = !DILocation(line: 109, column: 7, scope: !526)
!547 = !DILocation(line: 109, column: 19, scope: !526)
!548 = !DILocation(line: 109, column: 25, scope: !526)
!549 = !DILocation(line: 110, column: 2, scope: !526)
!550 = !DILocation(line: 110, column: 6, scope: !526)
!551 = !DILocation(line: 110, column: 11, scope: !526)
!552 = !DILocation(line: 112, column: 2, scope: !526)
!553 = !DILocation(line: 112, column: 9, scope: !526)
!554 = !DILocation(line: 112, column: 13, scope: !526)
!555 = !DILocation(line: 112, column: 11, scope: !526)
!556 = !DILocation(line: 112, column: 19, scope: !526)
!557 = !DILocation(line: 112, column: 22, scope: !526)
!558 = !DILocation(line: 113, column: 3, scope: !537)
!559 = !DILocation(line: 113, column: 8, scope: !537)
!560 = !DILocation(line: 113, column: 15, scope: !537)
!561 = !DILocation(line: 113, column: 26, scope: !537)
!562 = !DILocation(line: 113, column: 33, scope: !537)
!563 = !DILocation(line: 113, column: 40, scope: !537)
!564 = !DILocation(line: 113, column: 38, scope: !537)
!565 = !DILocation(line: 115, column: 35, scope: !537)
!566 = !DILocation(line: 115, column: 9, scope: !537)
!567 = !DILocation(line: 115, column: 7, scope: !537)
!568 = !DILocation(line: 116, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !537, file: !449, line: 116, column: 7)
!570 = !DILocation(line: 116, column: 11, scope: !569)
!571 = !DILocation(line: 116, column: 7, scope: !537)
!572 = !DILocation(line: 117, column: 4, scope: !569)
!573 = !DILocation(line: 118, column: 7, scope: !540)
!574 = !DILocation(line: 118, column: 11, scope: !540)
!575 = !DILocation(line: 118, column: 7, scope: !537)
!576 = !DILocation(line: 119, column: 4, scope: !539)
!577 = !DILocation(line: 119, column: 8, scope: !539)
!578 = !DILocation(line: 119, column: 12, scope: !539)
!579 = !DILocation(line: 119, column: 27, scope: !539)
!580 = !DILocation(line: 119, column: 35, scope: !539)
!581 = !DILocation(line: 119, column: 33, scope: !539)
!582 = !DILocation(line: 120, column: 4, scope: !539)
!583 = !DILocation(line: 120, column: 8, scope: !539)
!584 = !DILocation(line: 122, column: 42, scope: !539)
!585 = !DILocation(line: 122, column: 48, scope: !539)
!586 = !DILocation(line: 122, column: 17, scope: !539)
!587 = !DILocation(line: 122, column: 15, scope: !539)
!588 = !DILocation(line: 123, column: 8, scope: !589)
!589 = distinct !DILexicalBlock(scope: !539, file: !449, line: 123, column: 8)
!590 = !DILocation(line: 123, column: 19, scope: !589)
!591 = !DILocation(line: 123, column: 8, scope: !539)
!592 = !DILocation(line: 124, column: 5, scope: !589)
!593 = !DILocation(line: 130, column: 10, scope: !539)
!594 = !DILocation(line: 130, column: 21, scope: !539)
!595 = !DILocation(line: 130, column: 6, scope: !539)
!596 = !DILocation(line: 131, column: 3, scope: !540)
!597 = !DILocation(line: 131, column: 3, scope: !539)
!598 = !DILocation(line: 132, column: 4, scope: !537)
!599 = !DILocation(line: 133, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !537, file: !449, line: 133, column: 7)
!601 = !DILocation(line: 133, column: 11, scope: !600)
!602 = !DILocation(line: 133, column: 7, scope: !537)
!603 = !DILocation(line: 134, column: 4, scope: !600)
!604 = !DILocation(line: 135, column: 2, scope: !526)
!605 = distinct !{!605, !552, !604, !388, !389}
!606 = !DILocation(line: 136, column: 12, scope: !526)
!607 = !DILocation(line: 136, column: 14, scope: !526)
!608 = !DILocation(line: 136, column: 2, scope: !526)
!609 = !DILocation(line: 136, column: 10, scope: !526)
!610 = !DILocation(line: 137, column: 17, scope: !526)
!611 = !DILocation(line: 138, column: 1, scope: !526)
!612 = !DILocation(line: 137, column: 2, scope: !526)
!613 = distinct !DISubprogram(name: "get_range", scope: !449, file: !449, line: 23, type: !614, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!61, !64, !452, !61}
!616 = !{!617, !618, !619, !620, !621, !622}
!617 = !DILocalVariable(name: "str", arg: 1, scope: !613, file: !449, line: 23, type: !64)
!618 = !DILocalVariable(name: "pint", arg: 2, scope: !613, file: !449, line: 23, type: !452)
!619 = !DILocalVariable(name: "n", arg: 3, scope: !613, file: !449, line: 23, type: !61)
!620 = !DILocalVariable(name: "x", scope: !613, file: !449, line: 25, type: !61)
!621 = !DILocalVariable(name: "inc_counter", scope: !613, file: !449, line: 25, type: !61)
!622 = !DILocalVariable(name: "upper_range", scope: !613, file: !449, line: 25, type: !61)
!623 = !DILocation(line: 23, column: 29, scope: !613)
!624 = !DILocation(line: 23, column: 39, scope: !613)
!625 = !DILocation(line: 23, column: 49, scope: !613)
!626 = !DILocation(line: 25, column: 2, scope: !613)
!627 = !DILocation(line: 25, column: 6, scope: !613)
!628 = !DILocation(line: 25, column: 9, scope: !613)
!629 = !DILocation(line: 25, column: 22, scope: !613)
!630 = !DILocation(line: 27, column: 4, scope: !613)
!631 = !DILocation(line: 27, column: 8, scope: !613)
!632 = !DILocation(line: 28, column: 32, scope: !613)
!633 = !DILocation(line: 28, column: 31, scope: !613)
!634 = !DILocation(line: 28, column: 16, scope: !613)
!635 = !DILocation(line: 28, column: 14, scope: !613)
!636 = !DILocation(line: 29, column: 16, scope: !613)
!637 = !DILocation(line: 29, column: 31, scope: !613)
!638 = !DILocation(line: 29, column: 30, scope: !613)
!639 = !DILocation(line: 29, column: 28, scope: !613)
!640 = !DILocation(line: 29, column: 14, scope: !613)
!641 = !DILocation(line: 30, column: 12, scope: !642)
!642 = distinct !DILexicalBlock(scope: !613, file: !449, line: 30, column: 2)
!643 = !DILocation(line: 30, column: 11, scope: !642)
!644 = !DILocation(line: 30, column: 9, scope: !642)
!645 = !DILocation(line: 30, column: 7, scope: !642)
!646 = !DILocation(line: 30, column: 18, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !449, line: 30, column: 2)
!648 = !DILocation(line: 30, column: 20, scope: !647)
!649 = !DILocation(line: 30, column: 23, scope: !647)
!650 = !DILocation(line: 30, column: 27, scope: !647)
!651 = !DILocation(line: 30, column: 25, scope: !647)
!652 = !DILocation(line: 0, scope: !647)
!653 = !DILocation(line: 30, column: 2, scope: !642)
!654 = !DILocation(line: 31, column: 13, scope: !647)
!655 = !DILocation(line: 31, column: 8, scope: !647)
!656 = !DILocation(line: 31, column: 11, scope: !647)
!657 = !DILocation(line: 31, column: 3, scope: !647)
!658 = !DILocation(line: 30, column: 41, scope: !647)
!659 = !DILocation(line: 30, column: 46, scope: !647)
!660 = !DILocation(line: 30, column: 2, scope: !647)
!661 = distinct !{!661, !653, !662, !388, !389}
!662 = !DILocation(line: 31, column: 13, scope: !642)
!663 = !DILocation(line: 32, column: 9, scope: !613)
!664 = !DILocation(line: 33, column: 1, scope: !613)
!665 = !DILocation(line: 32, column: 2, scope: !613)
!666 = distinct !DISubprogram(name: "memparse", scope: !449, file: !449, line: 150, type: !667, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!71, !259, !64}
!669 = !{!670, !671, !672, !673}
!670 = !DILocalVariable(name: "ptr", arg: 1, scope: !666, file: !449, line: 150, type: !259)
!671 = !DILocalVariable(name: "retptr", arg: 2, scope: !666, file: !449, line: 150, type: !64)
!672 = !DILocalVariable(name: "endptr", scope: !666, file: !449, line: 152, type: !63)
!673 = !DILocalVariable(name: "ret", scope: !666, file: !449, line: 154, type: !71)
!674 = !DILocation(line: 150, column: 41, scope: !666)
!675 = !DILocation(line: 150, column: 53, scope: !666)
!676 = !DILocation(line: 152, column: 2, scope: !666)
!677 = !DILocation(line: 152, column: 8, scope: !666)
!678 = !DILocation(line: 154, column: 2, scope: !666)
!679 = !DILocation(line: 154, column: 21, scope: !666)
!680 = !DILocation(line: 154, column: 43, scope: !666)
!681 = !DILocation(line: 154, column: 27, scope: !666)
!682 = !DILocation(line: 156, column: 11, scope: !666)
!683 = !DILocation(line: 156, column: 10, scope: !666)
!684 = !DILocation(line: 156, column: 2, scope: !666)
!685 = !DILocation(line: 159, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !666, file: !449, line: 156, column: 19)
!687 = !DILocation(line: 159, column: 3, scope: !686)
!688 = !DILocation(line: 163, column: 7, scope: !686)
!689 = !DILocation(line: 163, column: 3, scope: !686)
!690 = !DILocation(line: 167, column: 7, scope: !686)
!691 = !DILocation(line: 167, column: 3, scope: !686)
!692 = !DILocation(line: 171, column: 7, scope: !686)
!693 = !DILocation(line: 171, column: 3, scope: !686)
!694 = !DILocation(line: 175, column: 7, scope: !686)
!695 = !DILocation(line: 175, column: 3, scope: !686)
!696 = !DILocation(line: 179, column: 7, scope: !686)
!697 = !DILocation(line: 180, column: 9, scope: !686)
!698 = !DILocation(line: 180, column: 3, scope: !686)
!699 = !DILocation(line: 183, column: 3, scope: !686)
!700 = !DILocation(line: 186, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !666, file: !449, line: 186, column: 6)
!702 = !DILocation(line: 186, column: 6, scope: !666)
!703 = !DILocation(line: 187, column: 13, scope: !701)
!704 = !DILocation(line: 187, column: 4, scope: !701)
!705 = !DILocation(line: 187, column: 11, scope: !701)
!706 = !DILocation(line: 187, column: 3, scope: !701)
!707 = !DILocation(line: 189, column: 9, scope: !666)
!708 = !DILocation(line: 190, column: 1, scope: !666)
!709 = !DILocation(line: 189, column: 2, scope: !666)
!710 = distinct !DISubprogram(name: "parse_option_str", scope: !449, file: !449, line: 203, type: !711, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{!180, !259, !259}
!713 = !{!714, !715}
!714 = !DILocalVariable(name: "str", arg: 1, scope: !710, file: !449, line: 203, type: !259)
!715 = !DILocalVariable(name: "option", arg: 2, scope: !710, file: !449, line: 203, type: !259)
!716 = !DILocation(line: 203, column: 35, scope: !710)
!717 = !DILocation(line: 203, column: 52, scope: !710)
!718 = !DILocation(line: 205, column: 2, scope: !710)
!719 = !DILocation(line: 205, column: 10, scope: !710)
!720 = !DILocation(line: 205, column: 9, scope: !710)
!721 = !DILocation(line: 206, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !449, line: 206, column: 7)
!723 = distinct !DILexicalBlock(scope: !710, file: !449, line: 205, column: 15)
!724 = !DILocation(line: 206, column: 21, scope: !722)
!725 = !DILocation(line: 206, column: 36, scope: !722)
!726 = !DILocation(line: 206, column: 29, scope: !722)
!727 = !DILocation(line: 206, column: 8, scope: !722)
!728 = !DILocation(line: 206, column: 7, scope: !723)
!729 = !DILocation(line: 207, column: 18, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !449, line: 206, column: 46)
!731 = !DILocation(line: 207, column: 11, scope: !730)
!732 = !DILocation(line: 207, column: 8, scope: !730)
!733 = !DILocation(line: 208, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !449, line: 208, column: 8)
!735 = !DILocation(line: 208, column: 9, scope: !734)
!736 = !DILocation(line: 208, column: 14, scope: !734)
!737 = !DILocation(line: 208, column: 18, scope: !734)
!738 = !DILocation(line: 208, column: 17, scope: !734)
!739 = !DILocation(line: 208, column: 22, scope: !734)
!740 = !DILocation(line: 208, column: 8, scope: !730)
!741 = !DILocation(line: 209, column: 5, scope: !734)
!742 = !DILocation(line: 210, column: 3, scope: !730)
!743 = !DILocation(line: 212, column: 3, scope: !723)
!744 = !DILocation(line: 212, column: 11, scope: !723)
!745 = !DILocation(line: 212, column: 10, scope: !723)
!746 = !DILocation(line: 212, column: 15, scope: !723)
!747 = !DILocation(line: 212, column: 19, scope: !723)
!748 = !DILocation(line: 212, column: 18, scope: !723)
!749 = !DILocation(line: 212, column: 23, scope: !723)
!750 = !DILocation(line: 0, scope: !723)
!751 = !DILocation(line: 213, column: 7, scope: !723)
!752 = distinct !{!752, !743, !751, !388, !389}
!753 = !DILocation(line: 215, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !723, file: !449, line: 215, column: 7)
!755 = !DILocation(line: 215, column: 7, scope: !754)
!756 = !DILocation(line: 215, column: 12, scope: !754)
!757 = !DILocation(line: 215, column: 7, scope: !723)
!758 = !DILocation(line: 216, column: 7, scope: !754)
!759 = !DILocation(line: 216, column: 4, scope: !754)
!760 = distinct !{!760, !718, !761, !388, !389}
!761 = !DILocation(line: 217, column: 2, scope: !710)
!762 = !DILocation(line: 219, column: 2, scope: !710)
!763 = !DILocation(line: 220, column: 1, scope: !710)
!764 = !DISubprogram(name: "strncmp", scope: !523, file: !523, line: 22, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubroutineType(types: !766)
!766 = !{!61, !259, !259, !767}
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 61, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !769, line: 72, baseType: !770)
!769 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !769, line: 16, baseType: !65)
!771 = !DISubprogram(name: "strlen", scope: !523, file: !523, line: 23, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{!767, !259}
!774 = distinct !DISubprogram(name: "next_arg", scope: !449, file: !449, line: 227, type: !775, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{!63, !63, !64, !64}
!777 = !{!778, !779, !780, !781, !782, !783, !784}
!778 = !DILocalVariable(name: "args", arg: 1, scope: !774, file: !449, line: 227, type: !63)
!779 = !DILocalVariable(name: "param", arg: 2, scope: !774, file: !449, line: 227, type: !64)
!780 = !DILocalVariable(name: "val", arg: 3, scope: !774, file: !449, line: 227, type: !64)
!781 = !DILocalVariable(name: "i", scope: !774, file: !449, line: 229, type: !31)
!782 = !DILocalVariable(name: "equals", scope: !774, file: !449, line: 229, type: !31)
!783 = !DILocalVariable(name: "in_quote", scope: !774, file: !449, line: 230, type: !61)
!784 = !DILocalVariable(name: "quoted", scope: !774, file: !449, line: 230, type: !61)
!785 = !DILocation(line: 227, column: 22, scope: !774)
!786 = !DILocation(line: 227, column: 35, scope: !774)
!787 = !DILocation(line: 227, column: 49, scope: !774)
!788 = !DILocation(line: 229, column: 2, scope: !774)
!789 = !DILocation(line: 229, column: 15, scope: !774)
!790 = !DILocation(line: 229, column: 18, scope: !774)
!791 = !DILocation(line: 230, column: 2, scope: !774)
!792 = !DILocation(line: 230, column: 6, scope: !774)
!793 = !DILocation(line: 230, column: 20, scope: !774)
!794 = !DILocation(line: 232, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !774, file: !449, line: 232, column: 6)
!796 = !DILocation(line: 232, column: 6, scope: !795)
!797 = !DILocation(line: 232, column: 12, scope: !795)
!798 = !DILocation(line: 232, column: 6, scope: !774)
!799 = !DILocation(line: 233, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !449, line: 232, column: 20)
!801 = !DILocation(line: 234, column: 12, scope: !800)
!802 = !DILocation(line: 235, column: 10, scope: !800)
!803 = !DILocation(line: 236, column: 2, scope: !800)
!804 = !DILocation(line: 238, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !774, file: !449, line: 238, column: 2)
!806 = !DILocation(line: 238, column: 7, scope: !805)
!807 = !DILocation(line: 238, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !449, line: 238, column: 2)
!809 = !DILocation(line: 238, column: 19, scope: !808)
!810 = !DILocation(line: 238, column: 2, scope: !805)
!811 = !DILocation(line: 239, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !449, line: 239, column: 7)
!813 = distinct !DILexicalBlock(scope: !808, file: !449, line: 238, column: 28)
!814 = !DILocation(line: 239, column: 24, scope: !812)
!815 = !DILocation(line: 239, column: 28, scope: !812)
!816 = !DILocation(line: 239, column: 7, scope: !813)
!817 = !DILocation(line: 240, column: 4, scope: !812)
!818 = !DILocation(line: 241, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !813, file: !449, line: 241, column: 7)
!820 = !DILocation(line: 241, column: 14, scope: !819)
!821 = !DILocation(line: 241, column: 7, scope: !813)
!822 = !DILocation(line: 242, column: 8, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !449, line: 242, column: 8)
!824 = distinct !DILexicalBlock(scope: !819, file: !449, line: 241, column: 20)
!825 = !DILocation(line: 242, column: 13, scope: !823)
!826 = !DILocation(line: 242, column: 16, scope: !823)
!827 = !DILocation(line: 242, column: 8, scope: !824)
!828 = !DILocation(line: 243, column: 14, scope: !823)
!829 = !DILocation(line: 243, column: 12, scope: !823)
!830 = !DILocation(line: 243, column: 5, scope: !823)
!831 = !DILocation(line: 244, column: 3, scope: !824)
!832 = !DILocation(line: 245, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !813, file: !449, line: 245, column: 7)
!834 = !DILocation(line: 245, column: 12, scope: !833)
!835 = !DILocation(line: 245, column: 15, scope: !833)
!836 = !DILocation(line: 245, column: 7, scope: !813)
!837 = !DILocation(line: 246, column: 16, scope: !833)
!838 = !DILocation(line: 246, column: 15, scope: !833)
!839 = !DILocation(line: 246, column: 13, scope: !833)
!840 = !DILocation(line: 246, column: 4, scope: !833)
!841 = !DILocation(line: 247, column: 2, scope: !813)
!842 = !DILocation(line: 238, column: 24, scope: !808)
!843 = !DILocation(line: 238, column: 2, scope: !808)
!844 = distinct !{!844, !810, !845, !388, !389}
!845 = !DILocation(line: 247, column: 2, scope: !805)
!846 = !DILocation(line: 249, column: 11, scope: !774)
!847 = !DILocation(line: 249, column: 3, scope: !774)
!848 = !DILocation(line: 249, column: 9, scope: !774)
!849 = !DILocation(line: 250, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !774, file: !449, line: 250, column: 6)
!851 = !DILocation(line: 250, column: 6, scope: !774)
!852 = !DILocation(line: 251, column: 4, scope: !850)
!853 = !DILocation(line: 251, column: 8, scope: !850)
!854 = !DILocation(line: 251, column: 3, scope: !850)
!855 = !DILocation(line: 253, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !850, file: !449, line: 252, column: 7)
!857 = !DILocation(line: 253, column: 8, scope: !856)
!858 = !DILocation(line: 253, column: 16, scope: !856)
!859 = !DILocation(line: 254, column: 10, scope: !856)
!860 = !DILocation(line: 254, column: 17, scope: !856)
!861 = !DILocation(line: 254, column: 15, scope: !856)
!862 = !DILocation(line: 254, column: 24, scope: !856)
!863 = !DILocation(line: 254, column: 4, scope: !856)
!864 = !DILocation(line: 254, column: 8, scope: !856)
!865 = !DILocation(line: 257, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !856, file: !449, line: 257, column: 7)
!867 = !DILocation(line: 257, column: 8, scope: !866)
!868 = !DILocation(line: 257, column: 7, scope: !866)
!869 = !DILocation(line: 257, column: 13, scope: !866)
!870 = !DILocation(line: 257, column: 7, scope: !856)
!871 = !DILocation(line: 258, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !449, line: 257, column: 21)
!873 = !DILocation(line: 258, column: 10, scope: !872)
!874 = !DILocation(line: 259, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !449, line: 259, column: 8)
!876 = !DILocation(line: 259, column: 13, scope: !875)
!877 = !DILocation(line: 259, column: 14, scope: !875)
!878 = !DILocation(line: 259, column: 18, scope: !875)
!879 = !DILocation(line: 259, column: 8, scope: !872)
!880 = !DILocation(line: 260, column: 5, scope: !875)
!881 = !DILocation(line: 260, column: 10, scope: !875)
!882 = !DILocation(line: 260, column: 11, scope: !875)
!883 = !DILocation(line: 260, column: 15, scope: !875)
!884 = !DILocation(line: 261, column: 3, scope: !872)
!885 = !DILocation(line: 263, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !774, file: !449, line: 263, column: 6)
!887 = !DILocation(line: 263, column: 13, scope: !886)
!888 = !DILocation(line: 263, column: 16, scope: !886)
!889 = !DILocation(line: 263, column: 18, scope: !886)
!890 = !DILocation(line: 263, column: 22, scope: !886)
!891 = !DILocation(line: 263, column: 25, scope: !886)
!892 = !DILocation(line: 263, column: 30, scope: !886)
!893 = !DILocation(line: 263, column: 31, scope: !886)
!894 = !DILocation(line: 263, column: 35, scope: !886)
!895 = !DILocation(line: 263, column: 6, scope: !774)
!896 = !DILocation(line: 264, column: 3, scope: !886)
!897 = !DILocation(line: 264, column: 8, scope: !886)
!898 = !DILocation(line: 264, column: 9, scope: !886)
!899 = !DILocation(line: 264, column: 13, scope: !886)
!900 = !DILocation(line: 266, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !774, file: !449, line: 266, column: 6)
!902 = !DILocation(line: 266, column: 11, scope: !901)
!903 = !DILocation(line: 266, column: 6, scope: !774)
!904 = !DILocation(line: 267, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !449, line: 266, column: 15)
!906 = !DILocation(line: 267, column: 8, scope: !905)
!907 = !DILocation(line: 267, column: 11, scope: !905)
!908 = !DILocation(line: 268, column: 11, scope: !905)
!909 = !DILocation(line: 268, column: 13, scope: !905)
!910 = !DILocation(line: 268, column: 8, scope: !905)
!911 = !DILocation(line: 269, column: 2, scope: !905)
!912 = !DILocation(line: 270, column: 11, scope: !901)
!913 = !DILocation(line: 270, column: 8, scope: !901)
!914 = !DILocation(line: 273, column: 21, scope: !774)
!915 = !DILocation(line: 273, column: 9, scope: !774)
!916 = !DILocation(line: 274, column: 1, scope: !774)
!917 = !DILocation(line: 273, column: 2, scope: !774)
!918 = distinct !DISubprogram(name: "choose_random_location", scope: !27, file: !27, line: 842, type: !919, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !65, !65, !66, !65, !66}
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929, !931}
!922 = !DILocalVariable(name: "input", arg: 1, scope: !918, file: !27, line: 842, type: !65)
!923 = !DILocalVariable(name: "input_size", arg: 2, scope: !918, file: !27, line: 843, type: !65)
!924 = !DILocalVariable(name: "output", arg: 3, scope: !918, file: !27, line: 844, type: !66)
!925 = !DILocalVariable(name: "output_size", arg: 4, scope: !918, file: !27, line: 845, type: !65)
!926 = !DILocalVariable(name: "virt_addr", arg: 5, scope: !918, file: !27, line: 846, type: !66)
!927 = !DILocalVariable(name: "random_addr", scope: !918, file: !27, line: 848, type: !65)
!928 = !DILocalVariable(name: "min_addr", scope: !918, file: !27, line: 848, type: !65)
!929 = !DILocalVariable(name: "__UNIQUE_ID___x208", scope: !930, file: !27, line: 870, type: !65)
!930 = distinct !DILexicalBlock(scope: !918, file: !27, line: 870, column: 13)
!931 = !DILocalVariable(name: "__UNIQUE_ID___y209", scope: !930, file: !27, line: 870, type: !65)
!932 = !DILocation(line: 842, column: 43, scope: !918)
!933 = !DILocation(line: 843, column: 22, scope: !918)
!934 = !DILocation(line: 844, column: 23, scope: !918)
!935 = !DILocation(line: 845, column: 22, scope: !918)
!936 = !DILocation(line: 846, column: 23, scope: !918)
!937 = !DILocation(line: 848, column: 2, scope: !918)
!938 = !DILocation(line: 848, column: 16, scope: !918)
!939 = !DILocation(line: 848, column: 29, scope: !918)
!940 = !DILocation(line: 850, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !918, file: !27, line: 850, column: 6)
!942 = !DILocation(line: 850, column: 6, scope: !918)
!943 = !DILocation(line: 851, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !27, line: 850, column: 43)
!945 = !DILocation(line: 852, column: 3, scope: !944)
!946 = !DILocation(line: 855, column: 2, scope: !918)
!947 = !DILocation(line: 855, column: 19, scope: !918)
!948 = !DILocation(line: 855, column: 23, scope: !918)
!949 = !DILocation(line: 855, column: 33, scope: !918)
!950 = !DILocation(line: 860, column: 15, scope: !951)
!951 = distinct !DILexicalBlock(scope: !918, file: !27, line: 857, column: 6)
!952 = !DILocation(line: 860, column: 13, scope: !951)
!953 = !DILocation(line: 863, column: 17, scope: !918)
!954 = !DILocation(line: 863, column: 24, scope: !918)
!955 = !DILocation(line: 863, column: 37, scope: !918)
!956 = !DILocation(line: 863, column: 36, scope: !918)
!957 = !DILocation(line: 863, column: 2, scope: !918)
!958 = !DILocation(line: 870, column: 13, scope: !930)
!959 = !DILocation(line: 870, column: 13, scope: !918)
!960 = !DILocation(line: 870, column: 11, scope: !918)
!961 = !DILocation(line: 872, column: 13, scope: !918)
!962 = !DILocation(line: 872, column: 11, scope: !918)
!963 = !DILocation(line: 875, column: 38, scope: !918)
!964 = !DILocation(line: 875, column: 48, scope: !918)
!965 = !DILocation(line: 875, column: 16, scope: !918)
!966 = !DILocation(line: 875, column: 14, scope: !918)
!967 = !DILocation(line: 876, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !918, file: !27, line: 876, column: 6)
!969 = !DILocation(line: 876, column: 6, scope: !918)
!970 = !DILocation(line: 877, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !27, line: 876, column: 20)
!972 = !DILocation(line: 878, column: 2, scope: !971)
!973 = !DILocation(line: 880, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !27, line: 880, column: 7)
!975 = distinct !DILexicalBlock(scope: !968, file: !27, line: 878, column: 9)
!976 = !DILocation(line: 880, column: 7, scope: !974)
!977 = !DILocation(line: 880, column: 18, scope: !974)
!978 = !DILocation(line: 880, column: 15, scope: !974)
!979 = !DILocation(line: 880, column: 7, scope: !975)
!980 = !DILocation(line: 881, column: 14, scope: !974)
!981 = !DILocation(line: 881, column: 5, scope: !974)
!982 = !DILocation(line: 881, column: 12, scope: !974)
!983 = !DILocation(line: 881, column: 4, scope: !974)
!984 = !DILocation(line: 887, column: 59, scope: !985)
!985 = distinct !DILexicalBlock(scope: !918, file: !27, line: 886, column: 6)
!986 = !DILocation(line: 887, column: 17, scope: !985)
!987 = !DILocation(line: 887, column: 15, scope: !985)
!988 = !DILocation(line: 888, column: 15, scope: !918)
!989 = !DILocation(line: 888, column: 3, scope: !918)
!990 = !DILocation(line: 888, column: 13, scope: !918)
!991 = !DILocation(line: 889, column: 1, scope: !918)
!992 = !DISubprogram(name: "cmdline_find_option_bool", scope: !130, file: !130, line: 91, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!61, !259}
!995 = !DISubprogram(name: "warn", scope: !996, file: !996, line: 7, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DIFile(filename: "arch/x86/boot/compressed/error.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b20f0f8db8d544195cf5a95e28d98dc")
!997 = distinct !DISubprogram(name: "pgtable_l5_enabled", scope: !998, file: !998, line: 32, type: !999, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!998 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!180}
!1001 = !DILocation(line: 34, column: 9, scope: !997)
!1002 = !DILocation(line: 34, column: 2, scope: !997)
!1003 = distinct !DISubprogram(name: "mem_avoid_init", scope: !27, file: !27, line: 383, type: !1004, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !65, !65, !65}
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1007 = !DILocalVariable(name: "input", arg: 1, scope: !1003, file: !27, line: 383, type: !65)
!1008 = !DILocalVariable(name: "input_size", arg: 2, scope: !1003, file: !27, line: 383, type: !65)
!1009 = !DILocalVariable(name: "output", arg: 3, scope: !1003, file: !27, line: 384, type: !65)
!1010 = !DILocalVariable(name: "init_size", scope: !1003, file: !27, line: 386, type: !65)
!1011 = !DILocalVariable(name: "initrd_start", scope: !1003, file: !27, line: 387, type: !67)
!1012 = !DILocalVariable(name: "initrd_size", scope: !1003, file: !27, line: 387, type: !67)
!1013 = !DILocalVariable(name: "cmd_line", scope: !1003, file: !27, line: 388, type: !65)
!1014 = !DILocalVariable(name: "cmd_line_size", scope: !1003, file: !27, line: 388, type: !65)
!1015 = !DILocation(line: 383, column: 42, scope: !1003)
!1016 = !DILocation(line: 383, column: 63, scope: !1003)
!1017 = !DILocation(line: 384, column: 21, scope: !1003)
!1018 = !DILocation(line: 386, column: 2, scope: !1003)
!1019 = !DILocation(line: 386, column: 16, scope: !1003)
!1020 = !DILocation(line: 386, column: 28, scope: !1003)
!1021 = !DILocation(line: 386, column: 45, scope: !1003)
!1022 = !DILocation(line: 386, column: 49, scope: !1003)
!1023 = !DILocation(line: 387, column: 2, scope: !1003)
!1024 = !DILocation(line: 387, column: 6, scope: !1003)
!1025 = !DILocation(line: 387, column: 20, scope: !1003)
!1026 = !DILocation(line: 388, column: 2, scope: !1003)
!1027 = !DILocation(line: 388, column: 16, scope: !1003)
!1028 = !DILocation(line: 388, column: 26, scope: !1003)
!1029 = !DILocation(line: 394, column: 40, scope: !1003)
!1030 = !DILocation(line: 394, column: 38, scope: !1003)
!1031 = !DILocation(line: 395, column: 40, scope: !1003)
!1032 = !DILocation(line: 395, column: 49, scope: !1003)
!1033 = !DILocation(line: 395, column: 47, scope: !1003)
!1034 = !DILocation(line: 395, column: 62, scope: !1003)
!1035 = !DILocation(line: 395, column: 60, scope: !1003)
!1036 = !DILocation(line: 395, column: 37, scope: !1003)
!1037 = !DILocation(line: 398, column: 23, scope: !1003)
!1038 = !DILocation(line: 398, column: 40, scope: !1003)
!1039 = !DILocation(line: 398, column: 18, scope: !1003)
!1040 = !DILocation(line: 398, column: 58, scope: !1003)
!1041 = !DILocation(line: 398, column: 16, scope: !1003)
!1042 = !DILocation(line: 399, column: 18, scope: !1003)
!1043 = !DILocation(line: 399, column: 35, scope: !1003)
!1044 = !DILocation(line: 399, column: 39, scope: !1003)
!1045 = !DILocation(line: 399, column: 15, scope: !1003)
!1046 = !DILocation(line: 400, column: 22, scope: !1003)
!1047 = !DILocation(line: 400, column: 39, scope: !1003)
!1048 = !DILocation(line: 400, column: 17, scope: !1003)
!1049 = !DILocation(line: 400, column: 56, scope: !1003)
!1050 = !DILocation(line: 400, column: 15, scope: !1003)
!1051 = !DILocation(line: 401, column: 17, scope: !1003)
!1052 = !DILocation(line: 401, column: 34, scope: !1003)
!1053 = !DILocation(line: 401, column: 38, scope: !1003)
!1054 = !DILocation(line: 401, column: 14, scope: !1003)
!1055 = !DILocation(line: 402, column: 38, scope: !1003)
!1056 = !DILocation(line: 402, column: 36, scope: !1003)
!1057 = !DILocation(line: 403, column: 37, scope: !1003)
!1058 = !DILocation(line: 403, column: 35, scope: !1003)
!1059 = !DILocation(line: 407, column: 13, scope: !1003)
!1060 = !DILocation(line: 407, column: 11, scope: !1003)
!1061 = !DILocation(line: 409, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1003, file: !27, line: 409, column: 6)
!1063 = !DILocation(line: 409, column: 6, scope: !1003)
!1064 = !DILocation(line: 410, column: 35, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !27, line: 409, column: 16)
!1066 = !DILocation(line: 410, column: 27, scope: !1065)
!1067 = !DILocation(line: 410, column: 19, scope: !1065)
!1068 = !DILocation(line: 410, column: 66, scope: !1065)
!1069 = !DILocation(line: 410, column: 17, scope: !1065)
!1070 = !DILocation(line: 411, column: 40, scope: !1065)
!1071 = !DILocation(line: 411, column: 38, scope: !1065)
!1072 = !DILocation(line: 412, column: 39, scope: !1065)
!1073 = !DILocation(line: 412, column: 37, scope: !1065)
!1074 = !DILocation(line: 413, column: 2, scope: !1065)
!1075 = !DILocation(line: 416, column: 57, scope: !1003)
!1076 = !DILocation(line: 416, column: 42, scope: !1003)
!1077 = !DILocation(line: 416, column: 40, scope: !1003)
!1078 = !DILocation(line: 417, column: 39, scope: !1003)
!1079 = !DILocation(line: 422, column: 2, scope: !1003)
!1080 = !DILocation(line: 425, column: 22, scope: !1003)
!1081 = !DILocation(line: 425, column: 20, scope: !1003)
!1082 = !DILocation(line: 426, column: 1, scope: !1003)
!1083 = distinct !DISubprogram(name: "find_random_phys_addr", scope: !27, file: !27, line: 792, type: !1084, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!65, !65, !65}
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "minimum", arg: 1, scope: !1083, file: !27, line: 792, type: !65)
!1088 = !DILocalVariable(name: "image_size", arg: 2, scope: !1083, file: !27, line: 793, type: !65)
!1089 = !DILocalVariable(name: "phys_addr", scope: !1083, file: !27, line: 795, type: !67)
!1090 = !DILocation(line: 792, column: 58, scope: !1083)
!1091 = !DILocation(line: 793, column: 23, scope: !1083)
!1092 = !DILocation(line: 795, column: 2, scope: !1083)
!1093 = !DILocation(line: 795, column: 6, scope: !1083)
!1094 = !DILocation(line: 798, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1083, file: !27, line: 798, column: 6)
!1096 = !DILocation(line: 798, column: 16, scope: !1095)
!1097 = !DILocation(line: 798, column: 14, scope: !1095)
!1098 = !DILocation(line: 798, column: 29, scope: !1095)
!1099 = !DILocation(line: 798, column: 27, scope: !1095)
!1100 = !DILocation(line: 798, column: 6, scope: !1083)
!1101 = !DILocation(line: 799, column: 3, scope: !1095)
!1102 = !DILocation(line: 802, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1083, file: !27, line: 802, column: 6)
!1104 = !DILocation(line: 802, column: 6, scope: !1083)
!1105 = !DILocation(line: 803, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !27, line: 802, column: 24)
!1107 = !DILocation(line: 804, column: 3, scope: !1106)
!1108 = !DILocation(line: 807, column: 27, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1083, file: !27, line: 807, column: 6)
!1110 = !DILocation(line: 807, column: 36, scope: !1109)
!1111 = !DILocation(line: 807, column: 7, scope: !1109)
!1112 = !DILocation(line: 807, column: 6, scope: !1083)
!1113 = !DILocation(line: 808, column: 24, scope: !1109)
!1114 = !DILocation(line: 808, column: 33, scope: !1109)
!1115 = !DILocation(line: 808, column: 3, scope: !1109)
!1116 = !DILocation(line: 810, column: 14, scope: !1083)
!1117 = !DILocation(line: 810, column: 12, scope: !1083)
!1118 = !DILocation(line: 813, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1083, file: !27, line: 813, column: 6)
!1120 = !DILocation(line: 813, column: 18, scope: !1119)
!1121 = !DILocation(line: 813, column: 16, scope: !1119)
!1122 = !DILocation(line: 813, column: 26, scope: !1119)
!1123 = !DILocation(line: 813, column: 29, scope: !1119)
!1124 = !DILocation(line: 813, column: 41, scope: !1119)
!1125 = !DILocation(line: 813, column: 39, scope: !1119)
!1126 = !DILocation(line: 813, column: 54, scope: !1119)
!1127 = !DILocation(line: 813, column: 52, scope: !1119)
!1128 = !DILocation(line: 813, column: 6, scope: !1083)
!1129 = !DILocation(line: 814, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1119, file: !27, line: 813, column: 65)
!1131 = !DILocation(line: 815, column: 3, scope: !1130)
!1132 = !DILocation(line: 818, column: 24, scope: !1083)
!1133 = !DILocation(line: 818, column: 2, scope: !1083)
!1134 = !DILocation(line: 819, column: 1, scope: !1083)
!1135 = distinct !DISubprogram(name: "find_random_virt_addr", scope: !27, file: !27, line: 821, type: !1084, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DILocalVariable(name: "minimum", arg: 1, scope: !1135, file: !27, line: 821, type: !65)
!1138 = !DILocalVariable(name: "image_size", arg: 2, scope: !1135, file: !27, line: 822, type: !65)
!1139 = !DILocalVariable(name: "slots", scope: !1135, file: !27, line: 824, type: !65)
!1140 = !DILocalVariable(name: "random_addr", scope: !1135, file: !27, line: 824, type: !65)
!1141 = !DILocation(line: 821, column: 58, scope: !1135)
!1142 = !DILocation(line: 822, column: 23, scope: !1135)
!1143 = !DILocation(line: 824, column: 2, scope: !1135)
!1144 = !DILocation(line: 824, column: 16, scope: !1135)
!1145 = !DILocation(line: 824, column: 23, scope: !1135)
!1146 = !DILocation(line: 831, column: 35, scope: !1135)
!1147 = !DILocation(line: 831, column: 33, scope: !1135)
!1148 = !DILocation(line: 831, column: 45, scope: !1135)
!1149 = !DILocation(line: 831, column: 43, scope: !1135)
!1150 = !DILocation(line: 831, column: 57, scope: !1135)
!1151 = !DILocation(line: 831, column: 12, scope: !1135)
!1152 = !DILocation(line: 831, column: 8, scope: !1135)
!1153 = !DILocation(line: 833, column: 16, scope: !1135)
!1154 = !DILocation(line: 833, column: 51, scope: !1135)
!1155 = !DILocation(line: 833, column: 49, scope: !1135)
!1156 = !DILocation(line: 833, column: 14, scope: !1135)
!1157 = !DILocation(line: 835, column: 9, scope: !1135)
!1158 = !DILocation(line: 835, column: 21, scope: !1135)
!1159 = !DILocation(line: 835, column: 47, scope: !1135)
!1160 = !DILocation(line: 835, column: 45, scope: !1135)
!1161 = !DILocation(line: 836, column: 1, scope: !1135)
!1162 = !DILocation(line: 835, column: 2, scope: !1135)
!1163 = distinct !DISubprogram(name: "rotate_xor", scope: !27, file: !27, line: 45, type: !1164, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1168)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!65, !65, !1166, !767}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1168 = !{!1169, !1170, !1171, !1172, !1173}
!1169 = !DILocalVariable(name: "hash", arg: 1, scope: !1163, file: !27, line: 45, type: !65)
!1170 = !DILocalVariable(name: "area", arg: 2, scope: !1163, file: !27, line: 45, type: !1166)
!1171 = !DILocalVariable(name: "size", arg: 3, scope: !1163, file: !27, line: 46, type: !767)
!1172 = !DILocalVariable(name: "i", scope: !1163, file: !27, line: 48, type: !767)
!1173 = !DILocalVariable(name: "ptr", scope: !1163, file: !27, line: 49, type: !66)
!1174 = !DILocation(line: 45, column: 47, scope: !1163)
!1175 = !DILocation(line: 45, column: 65, scope: !1163)
!1176 = !DILocation(line: 46, column: 12, scope: !1163)
!1177 = !DILocation(line: 48, column: 2, scope: !1163)
!1178 = !DILocation(line: 48, column: 9, scope: !1163)
!1179 = !DILocation(line: 49, column: 2, scope: !1163)
!1180 = !DILocation(line: 49, column: 17, scope: !1163)
!1181 = !DILocation(line: 49, column: 40, scope: !1163)
!1182 = !DILocation(line: 51, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1163, file: !27, line: 51, column: 2)
!1184 = !DILocation(line: 51, column: 7, scope: !1183)
!1185 = !DILocation(line: 51, column: 14, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !27, line: 51, column: 2)
!1187 = !DILocation(line: 51, column: 18, scope: !1186)
!1188 = !DILocation(line: 51, column: 23, scope: !1186)
!1189 = !DILocation(line: 51, column: 16, scope: !1186)
!1190 = !DILocation(line: 51, column: 2, scope: !1183)
!1191 = !DILocation(line: 53, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !27, line: 51, column: 44)
!1193 = !DILocation(line: 53, column: 16, scope: !1192)
!1194 = !DILocation(line: 53, column: 48, scope: !1192)
!1195 = !DILocation(line: 53, column: 53, scope: !1192)
!1196 = !DILocation(line: 53, column: 45, scope: !1192)
!1197 = !DILocation(line: 53, column: 8, scope: !1192)
!1198 = !DILocation(line: 54, column: 11, scope: !1192)
!1199 = !DILocation(line: 54, column: 15, scope: !1192)
!1200 = !DILocation(line: 54, column: 8, scope: !1192)
!1201 = !DILocation(line: 55, column: 2, scope: !1192)
!1202 = !DILocation(line: 51, column: 40, scope: !1186)
!1203 = !DILocation(line: 51, column: 2, scope: !1186)
!1204 = distinct !{!1204, !1190, !1205, !388, !389}
!1205 = !DILocation(line: 55, column: 2, scope: !1183)
!1206 = !DILocation(line: 57, column: 9, scope: !1163)
!1207 = !DILocation(line: 58, column: 1, scope: !1163)
!1208 = !DILocation(line: 57, column: 2, scope: !1163)
!1209 = !DISubprogram(name: "simple_strtol", scope: !523, file: !523, line: 30, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !259, !64, !31}
!1212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1213 = !DISubprogram(name: "get_cmd_line_ptr", scope: !27, file: !27, line: 39, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubprogram(name: "strnlen", scope: !523, file: !523, line: 26, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!768, !259, !767}
!1217 = distinct !DISubprogram(name: "handle_mem_options", scope: !27, file: !27, line: 254, type: !1218, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null}
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1221 = !DILocalVariable(name: "args", scope: !1217, file: !27, line: 256, type: !63)
!1222 = !DILocalVariable(name: "len", scope: !1217, file: !27, line: 257, type: !767)
!1223 = !DILocalVariable(name: "tmp_cmdline", scope: !1217, file: !27, line: 258, type: !63)
!1224 = !DILocalVariable(name: "param", scope: !1217, file: !27, line: 259, type: !63)
!1225 = !DILocalVariable(name: "val", scope: !1217, file: !27, line: 259, type: !63)
!1226 = !DILocalVariable(name: "mem_size", scope: !1217, file: !27, line: 260, type: !67)
!1227 = !DILocalVariable(name: "p", scope: !1228, file: !27, line: 288, type: !63)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !27, line: 287, column: 37)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !27, line: 287, column: 14)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !27, line: 285, column: 14)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !27, line: 283, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1217, file: !27, line: 277, column: 16)
!1233 = !DILocation(line: 256, column: 2, scope: !1217)
!1234 = !DILocation(line: 256, column: 8, scope: !1217)
!1235 = !DILocation(line: 256, column: 23, scope: !1217)
!1236 = !DILocation(line: 256, column: 15, scope: !1217)
!1237 = !DILocation(line: 257, column: 2, scope: !1217)
!1238 = !DILocation(line: 257, column: 9, scope: !1217)
!1239 = !DILocation(line: 258, column: 2, scope: !1217)
!1240 = !DILocation(line: 258, column: 8, scope: !1217)
!1241 = !DILocation(line: 259, column: 2, scope: !1217)
!1242 = !DILocation(line: 259, column: 8, scope: !1217)
!1243 = !DILocation(line: 259, column: 16, scope: !1217)
!1244 = !DILocation(line: 260, column: 2, scope: !1217)
!1245 = !DILocation(line: 260, column: 6, scope: !1217)
!1246 = !DILocation(line: 262, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1217, file: !27, line: 262, column: 6)
!1248 = !DILocation(line: 262, column: 6, scope: !1217)
!1249 = !DILocation(line: 263, column: 3, scope: !1247)
!1250 = !DILocation(line: 265, column: 16, scope: !1217)
!1251 = !DILocation(line: 265, column: 8, scope: !1217)
!1252 = !DILocation(line: 265, column: 6, scope: !1217)
!1253 = !DILocation(line: 266, column: 23, scope: !1217)
!1254 = !DILocation(line: 266, column: 27, scope: !1217)
!1255 = !DILocation(line: 266, column: 16, scope: !1217)
!1256 = !DILocation(line: 266, column: 14, scope: !1217)
!1257 = !DILocation(line: 267, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1217, file: !27, line: 267, column: 6)
!1259 = !DILocation(line: 267, column: 6, scope: !1217)
!1260 = !DILocation(line: 268, column: 3, scope: !1258)
!1261 = !DILocation(line: 270, column: 2, scope: !1217)
!1262 = !DILocation(line: 271, column: 2, scope: !1217)
!1263 = !DILocation(line: 271, column: 14, scope: !1217)
!1264 = !DILocation(line: 271, column: 19, scope: !1217)
!1265 = !DILocation(line: 272, column: 9, scope: !1217)
!1266 = !DILocation(line: 272, column: 7, scope: !1217)
!1267 = !DILocation(line: 275, column: 21, scope: !1217)
!1268 = !DILocation(line: 275, column: 9, scope: !1217)
!1269 = !DILocation(line: 275, column: 7, scope: !1217)
!1270 = !DILocation(line: 277, column: 2, scope: !1217)
!1271 = !DILocation(line: 277, column: 10, scope: !1217)
!1272 = !DILocation(line: 277, column: 9, scope: !1217)
!1273 = !DILocation(line: 278, column: 19, scope: !1232)
!1274 = !DILocation(line: 278, column: 10, scope: !1232)
!1275 = !DILocation(line: 278, column: 8, scope: !1232)
!1276 = !DILocation(line: 280, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1232, file: !27, line: 280, column: 7)
!1278 = !DILocation(line: 280, column: 12, scope: !1277)
!1279 = !DILocation(line: 280, column: 22, scope: !1277)
!1280 = !DILocation(line: 280, column: 15, scope: !1277)
!1281 = !DILocation(line: 280, column: 35, scope: !1277)
!1282 = !DILocation(line: 280, column: 7, scope: !1232)
!1283 = !DILocation(line: 281, column: 4, scope: !1277)
!1284 = !DILocation(line: 283, column: 15, scope: !1231)
!1285 = !DILocation(line: 283, column: 8, scope: !1231)
!1286 = !DILocation(line: 283, column: 7, scope: !1232)
!1287 = !DILocation(line: 284, column: 35, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1231, file: !27, line: 283, column: 33)
!1289 = !DILocation(line: 284, column: 4, scope: !1288)
!1290 = !DILocation(line: 285, column: 3, scope: !1288)
!1291 = !DILocation(line: 285, column: 50, scope: !1230)
!1292 = !DILocation(line: 285, column: 43, scope: !1230)
!1293 = !DILocation(line: 285, column: 14, scope: !1231)
!1294 = !DILocation(line: 286, column: 24, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1230, file: !27, line: 285, column: 71)
!1296 = !DILocation(line: 286, column: 31, scope: !1295)
!1297 = !DILocation(line: 286, column: 4, scope: !1295)
!1298 = !DILocation(line: 287, column: 3, scope: !1295)
!1299 = !DILocation(line: 287, column: 22, scope: !1229)
!1300 = !DILocation(line: 287, column: 15, scope: !1229)
!1301 = !DILocation(line: 287, column: 14, scope: !1230)
!1302 = !DILocation(line: 288, column: 4, scope: !1228)
!1303 = !DILocation(line: 288, column: 10, scope: !1228)
!1304 = !DILocation(line: 288, column: 14, scope: !1228)
!1305 = !DILocation(line: 290, column: 16, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1228, file: !27, line: 290, column: 8)
!1307 = !DILocation(line: 290, column: 9, scope: !1306)
!1308 = !DILocation(line: 290, column: 8, scope: !1228)
!1309 = !DILocation(line: 291, column: 5, scope: !1306)
!1310 = distinct !{!1310, !1270, !1311, !388, !389}
!1311 = !DILocation(line: 301, column: 2, scope: !1217)
!1312 = !DILocation(line: 292, column: 24, scope: !1228)
!1313 = !DILocation(line: 292, column: 15, scope: !1228)
!1314 = !DILocation(line: 292, column: 13, scope: !1228)
!1315 = !DILocation(line: 293, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1228, file: !27, line: 293, column: 8)
!1317 = !DILocation(line: 293, column: 17, scope: !1316)
!1318 = !DILocation(line: 293, column: 8, scope: !1228)
!1319 = !DILocation(line: 294, column: 5, scope: !1316)
!1320 = !DILocation(line: 296, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1228, file: !27, line: 296, column: 8)
!1322 = !DILocation(line: 296, column: 19, scope: !1321)
!1323 = !DILocation(line: 296, column: 17, scope: !1321)
!1324 = !DILocation(line: 296, column: 8, scope: !1228)
!1325 = !DILocation(line: 297, column: 17, scope: !1321)
!1326 = !DILocation(line: 297, column: 15, scope: !1321)
!1327 = !DILocation(line: 297, column: 5, scope: !1321)
!1328 = !DILocation(line: 298, column: 3, scope: !1229)
!1329 = !DILocation(line: 298, column: 3, scope: !1228)
!1330 = !DILocation(line: 298, column: 22, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1229, file: !27, line: 298, column: 14)
!1332 = !DILocation(line: 298, column: 15, scope: !1331)
!1333 = !DILocation(line: 298, column: 14, scope: !1229)
!1334 = !DILocation(line: 299, column: 32, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !27, line: 298, column: 46)
!1336 = !DILocation(line: 299, column: 4, scope: !1335)
!1337 = !DILocation(line: 300, column: 3, scope: !1335)
!1338 = !DILocation(line: 303, column: 7, scope: !1217)
!1339 = !DILocation(line: 303, column: 2, scope: !1217)
!1340 = !DILocation(line: 304, column: 2, scope: !1217)
!1341 = !DILocation(line: 305, column: 1, scope: !1217)
!1342 = distinct !DISubprogram(name: "count_immovable_mem_regions", scope: !130, file: !130, line: 177, type: !1343, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!61}
!1345 = !DILocation(line: 177, column: 55, scope: !1342)
!1346 = !DISubprogram(name: "malloc", scope: !130, file: !130, line: 62, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!85, !61}
!1349 = !DISubprogram(name: "error", scope: !996, file: !996, line: 8, type: !1350, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !63}
!1352 = !DISubprogram(name: "strcmp", scope: !523, file: !523, line: 21, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!61, !259, !259}
!1355 = !DILocation(line: 188, column: 46, scope: !162)
!1356 = !DILocation(line: 188, column: 58, scope: !162)
!1357 = !DILocation(line: 192, column: 6, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !162, file: !27, line: 192, column: 6)
!1359 = !DILocation(line: 192, column: 8, scope: !1358)
!1360 = !DILocation(line: 192, column: 6, scope: !162)
!1361 = !DILocation(line: 193, column: 3, scope: !1358)
!1362 = !DILocation(line: 195, column: 2, scope: !162)
!1363 = !DILocation(line: 195, column: 9, scope: !162)
!1364 = !DILocation(line: 195, column: 13, scope: !162)
!1365 = !DILocation(line: 195, column: 17, scope: !162)
!1366 = !DILocation(line: 195, column: 19, scope: !162)
!1367 = !DILocation(line: 0, scope: !162)
!1368 = !DILocation(line: 196, column: 3, scope: !169)
!1369 = !DILocation(line: 196, column: 7, scope: !169)
!1370 = !DILocation(line: 197, column: 3, scope: !169)
!1371 = !DILocation(line: 197, column: 7, scope: !169)
!1372 = !DILocation(line: 197, column: 14, scope: !169)
!1373 = !DILocation(line: 198, column: 3, scope: !169)
!1374 = !DILocation(line: 198, column: 9, scope: !169)
!1375 = !DILocation(line: 198, column: 20, scope: !169)
!1376 = !DILocation(line: 198, column: 13, scope: !169)
!1377 = !DILocation(line: 200, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !169, file: !27, line: 200, column: 7)
!1379 = !DILocation(line: 200, column: 7, scope: !169)
!1380 = !DILocation(line: 201, column: 6, scope: !1378)
!1381 = !DILocation(line: 201, column: 9, scope: !1378)
!1382 = !DILocation(line: 201, column: 4, scope: !1378)
!1383 = !DILocation(line: 203, column: 21, scope: !169)
!1384 = !DILocation(line: 203, column: 41, scope: !169)
!1385 = !DILocation(line: 203, column: 8, scope: !169)
!1386 = !DILocation(line: 203, column: 6, scope: !169)
!1387 = !DILocation(line: 204, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !169, file: !27, line: 204, column: 7)
!1389 = !DILocation(line: 204, column: 10, scope: !1388)
!1390 = !DILocation(line: 204, column: 7, scope: !169)
!1391 = !DILocation(line: 205, column: 4, scope: !1388)
!1392 = !DILocation(line: 206, column: 9, scope: !169)
!1393 = !DILocation(line: 206, column: 7, scope: !169)
!1394 = !DILocation(line: 208, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !169, file: !27, line: 208, column: 7)
!1396 = !DILocation(line: 208, column: 13, scope: !1395)
!1397 = !DILocation(line: 208, column: 7, scope: !169)
!1398 = !DILocation(line: 210, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !27, line: 210, column: 8)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !27, line: 208, column: 19)
!1401 = !DILocation(line: 210, column: 13, scope: !1399)
!1402 = !DILocation(line: 210, column: 17, scope: !1399)
!1403 = !DILocation(line: 210, column: 20, scope: !1399)
!1404 = !DILocation(line: 210, column: 27, scope: !1399)
!1405 = !DILocation(line: 210, column: 25, scope: !1399)
!1406 = !DILocation(line: 210, column: 8, scope: !1400)
!1407 = !DILocation(line: 211, column: 17, scope: !1399)
!1408 = !DILocation(line: 211, column: 15, scope: !1399)
!1409 = !DILocation(line: 211, column: 5, scope: !1399)
!1410 = !DILocation(line: 213, column: 4, scope: !1400)
!1411 = distinct !{!1411, !1362, !1412, !388, !389}
!1412 = !DILocation(line: 219, column: 2, scope: !162)
!1413 = !DILocation(line: 216, column: 49, scope: !169)
!1414 = !DILocation(line: 216, column: 38, scope: !169)
!1415 = !DILocation(line: 216, column: 36, scope: !169)
!1416 = !DILocation(line: 216, column: 3, scope: !169)
!1417 = !DILocation(line: 216, column: 41, scope: !169)
!1418 = !DILocation(line: 216, column: 47, scope: !169)
!1419 = !DILocation(line: 217, column: 48, scope: !169)
!1420 = !DILocation(line: 217, column: 38, scope: !169)
!1421 = !DILocation(line: 217, column: 36, scope: !169)
!1422 = !DILocation(line: 217, column: 3, scope: !169)
!1423 = !DILocation(line: 217, column: 41, scope: !169)
!1424 = !DILocation(line: 217, column: 46, scope: !169)
!1425 = !DILocation(line: 218, column: 4, scope: !169)
!1426 = !DILocation(line: 222, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !162, file: !27, line: 222, column: 6)
!1428 = !DILocation(line: 222, column: 9, scope: !1427)
!1429 = !DILocation(line: 222, column: 32, scope: !1427)
!1430 = !DILocation(line: 222, column: 35, scope: !1427)
!1431 = !DILocation(line: 222, column: 6, scope: !162)
!1432 = !DILocation(line: 223, column: 20, scope: !1427)
!1433 = !DILocation(line: 223, column: 3, scope: !1427)
!1434 = !DILocation(line: 224, column: 1, scope: !162)
!1435 = !DISubprogram(name: "strstr", scope: !523, file: !523, line: 24, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!63, !259, !259}
!1438 = !DILocation(line: 229, column: 39, scope: !185)
!1439 = !DILocation(line: 229, column: 52, scope: !185)
!1440 = !DILocation(line: 232, column: 2, scope: !185)
!1441 = !DILocation(line: 232, column: 8, scope: !185)
!1442 = !DILocation(line: 234, column: 14, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !185, file: !27, line: 234, column: 6)
!1444 = !DILocation(line: 234, column: 7, scope: !1443)
!1445 = !DILocation(line: 234, column: 6, scope: !185)
!1446 = !DILocation(line: 235, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !27, line: 234, column: 36)
!1448 = !DILocation(line: 235, column: 5, scope: !1447)
!1449 = !DILocation(line: 236, column: 16, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !27, line: 236, column: 7)
!1451 = !DILocation(line: 236, column: 7, scope: !1450)
!1452 = !DILocation(line: 236, column: 23, scope: !1450)
!1453 = !DILocation(line: 236, column: 7, scope: !1447)
!1454 = !DILocation(line: 237, column: 14, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !27, line: 236, column: 36)
!1456 = !DILocation(line: 238, column: 4, scope: !1455)
!1457 = !DILocation(line: 241, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1447, file: !27, line: 241, column: 7)
!1459 = !DILocation(line: 241, column: 7, scope: !1447)
!1460 = !DILocation(line: 242, column: 4, scope: !1458)
!1461 = !DILocation(line: 243, column: 13, scope: !1447)
!1462 = !DILocation(line: 244, column: 3, scope: !1447)
!1463 = !DILocation(line: 247, column: 14, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !185, file: !27, line: 247, column: 6)
!1465 = !DILocation(line: 247, column: 7, scope: !1464)
!1466 = !DILocation(line: 247, column: 34, scope: !1464)
!1467 = !DILocation(line: 247, column: 37, scope: !1464)
!1468 = !DILocation(line: 247, column: 6, scope: !185)
!1469 = !DILocation(line: 248, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !27, line: 247, column: 48)
!1471 = !DILocation(line: 248, column: 5, scope: !1470)
!1472 = !DILocation(line: 249, column: 39, scope: !1470)
!1473 = !DILocation(line: 249, column: 23, scope: !1470)
!1474 = !DILocation(line: 249, column: 21, scope: !1470)
!1475 = !DILocation(line: 250, column: 3, scope: !1470)
!1476 = !DILocation(line: 252, column: 1, scope: !185)
!1477 = !DISubprogram(name: "free", scope: !130, file: !130, line: 63, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !85}
!1480 = !DISubprogram(name: "strchr", scope: !523, file: !523, line: 25, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!63, !259, !61}
!1483 = distinct !DISubprogram(name: "parse_memmap", scope: !27, file: !27, line: 128, type: !1484, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1487)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!61, !63, !1486, !1486, !44}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493}
!1488 = !DILocalVariable(name: "p", arg: 1, scope: !1483, file: !27, line: 128, type: !63)
!1489 = !DILocalVariable(name: "start", arg: 2, scope: !1483, file: !27, line: 128, type: !1486)
!1490 = !DILocalVariable(name: "size", arg: 3, scope: !1483, file: !27, line: 128, type: !1486)
!1491 = !DILocalVariable(name: "mode", arg: 4, scope: !1483, file: !27, line: 128, type: !44)
!1492 = !DILocalVariable(name: "oldp", scope: !1483, file: !27, line: 130, type: !63)
!1493 = !DILocalVariable(name: "flags", scope: !1494, file: !27, line: 158, type: !67)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !27, line: 157, column: 10)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !27, line: 151, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1483, file: !27, line: 144, column: 14)
!1497 = !DILocation(line: 128, column: 20, scope: !1483)
!1498 = !DILocation(line: 128, column: 28, scope: !1483)
!1499 = !DILocation(line: 128, column: 40, scope: !1483)
!1500 = !DILocation(line: 128, column: 62, scope: !1483)
!1501 = !DILocation(line: 130, column: 2, scope: !1483)
!1502 = !DILocation(line: 130, column: 8, scope: !1483)
!1503 = !DILocation(line: 132, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1483, file: !27, line: 132, column: 6)
!1505 = !DILocation(line: 132, column: 6, scope: !1483)
!1506 = !DILocation(line: 133, column: 3, scope: !1504)
!1507 = !DILocation(line: 136, column: 15, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1483, file: !27, line: 136, column: 6)
!1509 = !DILocation(line: 136, column: 7, scope: !1508)
!1510 = !DILocation(line: 136, column: 6, scope: !1483)
!1511 = !DILocation(line: 137, column: 3, scope: !1508)
!1512 = !DILocation(line: 139, column: 9, scope: !1483)
!1513 = !DILocation(line: 139, column: 7, scope: !1483)
!1514 = !DILocation(line: 140, column: 19, scope: !1483)
!1515 = !DILocation(line: 140, column: 10, scope: !1483)
!1516 = !DILocation(line: 140, column: 3, scope: !1483)
!1517 = !DILocation(line: 140, column: 8, scope: !1483)
!1518 = !DILocation(line: 141, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1483, file: !27, line: 141, column: 6)
!1520 = !DILocation(line: 141, column: 11, scope: !1519)
!1521 = !DILocation(line: 141, column: 8, scope: !1519)
!1522 = !DILocation(line: 141, column: 6, scope: !1483)
!1523 = !DILocation(line: 142, column: 3, scope: !1519)
!1524 = !DILocation(line: 144, column: 11, scope: !1483)
!1525 = !DILocation(line: 144, column: 10, scope: !1483)
!1526 = !DILocation(line: 144, column: 2, scope: !1483)
!1527 = !DILocation(line: 148, column: 21, scope: !1496)
!1528 = !DILocation(line: 148, column: 23, scope: !1496)
!1529 = !DILocation(line: 148, column: 12, scope: !1496)
!1530 = !DILocation(line: 148, column: 4, scope: !1496)
!1531 = !DILocation(line: 148, column: 10, scope: !1496)
!1532 = !DILocation(line: 149, column: 3, scope: !1496)
!1533 = !DILocation(line: 151, column: 7, scope: !1495)
!1534 = !DILocation(line: 151, column: 12, scope: !1495)
!1535 = !DILocation(line: 151, column: 7, scope: !1496)
!1536 = !DILocation(line: 156, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1495, file: !27, line: 151, column: 29)
!1538 = !DILocation(line: 156, column: 10, scope: !1537)
!1539 = !DILocation(line: 157, column: 3, scope: !1537)
!1540 = !DILocation(line: 158, column: 4, scope: !1494)
!1541 = !DILocation(line: 158, column: 8, scope: !1494)
!1542 = !DILocation(line: 164, column: 22, scope: !1494)
!1543 = !DILocation(line: 164, column: 24, scope: !1494)
!1544 = !DILocation(line: 164, column: 13, scope: !1494)
!1545 = !DILocation(line: 164, column: 5, scope: !1494)
!1546 = !DILocation(line: 164, column: 11, scope: !1494)
!1547 = !DILocation(line: 165, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1494, file: !27, line: 165, column: 8)
!1549 = !DILocation(line: 165, column: 10, scope: !1548)
!1550 = !DILocation(line: 165, column: 14, scope: !1548)
!1551 = !DILocation(line: 165, column: 13, scope: !1548)
!1552 = !DILocation(line: 165, column: 16, scope: !1548)
!1553 = !DILocation(line: 165, column: 8, scope: !1494)
!1554 = !DILocation(line: 166, column: 6, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !27, line: 165, column: 24)
!1556 = !DILocation(line: 167, column: 19, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1555, file: !27, line: 167, column: 9)
!1558 = !DILocation(line: 167, column: 9, scope: !1557)
!1559 = !DILocation(line: 167, column: 33, scope: !1557)
!1560 = !DILocation(line: 167, column: 9, scope: !1555)
!1561 = !DILocation(line: 168, column: 7, scope: !1557)
!1562 = !DILocation(line: 168, column: 12, scope: !1557)
!1563 = !DILocation(line: 168, column: 6, scope: !1557)
!1564 = !DILocation(line: 169, column: 14, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1557, file: !27, line: 169, column: 14)
!1566 = !DILocation(line: 169, column: 20, scope: !1565)
!1567 = !DILocation(line: 169, column: 14, scope: !1557)
!1568 = !DILocation(line: 170, column: 6, scope: !1565)
!1569 = !DILocation(line: 171, column: 4, scope: !1555)
!1570 = !DILocation(line: 172, column: 5, scope: !1494)
!1571 = !DILocation(line: 172, column: 10, scope: !1494)
!1572 = !DILocation(line: 173, column: 3, scope: !1495)
!1573 = !DILocation(line: 151, column: 15, scope: !1495)
!1574 = !DILocation(line: 181, column: 4, scope: !1496)
!1575 = !DILocation(line: 181, column: 10, scope: !1496)
!1576 = !DILocation(line: 182, column: 3, scope: !1496)
!1577 = !DILocation(line: 186, column: 1, scope: !1483)
!1578 = !DISubprogram(name: "kstrtoull", scope: !523, file: !523, line: 32, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!61, !259, !31, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1582 = distinct !DISubprogram(name: "process_efi_entries", scope: !27, file: !27, line: 707, type: !1583, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!180, !65, !65}
!1585 = !{!1586, !1587, !1588, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1586 = !DILocalVariable(name: "minimum", arg: 1, scope: !1582, file: !27, line: 707, type: !65)
!1587 = !DILocalVariable(name: "image_size", arg: 2, scope: !1582, file: !27, line: 707, type: !65)
!1588 = !DILocalVariable(name: "e", scope: !1582, file: !27, line: 709, type: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !88, line: 123, size: 256, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !1590, file: !88, line: 124, baseType: !79, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !1590, file: !88, line: 125, baseType: !79, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !1590, file: !88, line: 126, baseType: !79, size: 32, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !1590, file: !88, line: 127, baseType: !79, size: 32, offset: 96)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !1590, file: !88, line: 128, baseType: !79, size: 32, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !1590, file: !88, line: 129, baseType: !79, size: 32, offset: 160)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !1590, file: !88, line: 130, baseType: !79, size: 32, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !1590, file: !88, line: 131, baseType: !79, size: 32, offset: 224)
!1600 = !DILocalVariable(name: "efi_mirror_found", scope: !1582, file: !27, line: 710, type: !180)
!1601 = !DILocalVariable(name: "region", scope: !1582, file: !27, line: 711, type: !129)
!1602 = !DILocalVariable(name: "md", scope: !1582, file: !27, line: 712, type: !72)
!1603 = !DILocalVariable(name: "pmap", scope: !1582, file: !27, line: 713, type: !65)
!1604 = !DILocalVariable(name: "signature", scope: !1582, file: !27, line: 714, type: !63)
!1605 = !DILocalVariable(name: "nr_desc", scope: !1582, file: !27, line: 715, type: !78)
!1606 = !DILocalVariable(name: "i", scope: !1582, file: !27, line: 716, type: !61)
!1607 = !DILocation(line: 707, column: 35, scope: !1582)
!1608 = !DILocation(line: 707, column: 58, scope: !1582)
!1609 = !DILocation(line: 709, column: 2, scope: !1582)
!1610 = !DILocation(line: 709, column: 19, scope: !1582)
!1611 = !DILocation(line: 709, column: 24, scope: !1582)
!1612 = !DILocation(line: 709, column: 41, scope: !1582)
!1613 = !DILocation(line: 710, column: 2, scope: !1582)
!1614 = !DILocation(line: 710, column: 7, scope: !1582)
!1615 = !DILocation(line: 711, column: 2, scope: !1582)
!1616 = !DILocation(line: 711, column: 20, scope: !1582)
!1617 = !DILocation(line: 712, column: 2, scope: !1582)
!1618 = !DILocation(line: 712, column: 21, scope: !1582)
!1619 = !DILocation(line: 713, column: 2, scope: !1582)
!1620 = !DILocation(line: 713, column: 16, scope: !1582)
!1621 = !DILocation(line: 714, column: 2, scope: !1582)
!1622 = !DILocation(line: 714, column: 8, scope: !1582)
!1623 = !DILocation(line: 715, column: 2, scope: !1582)
!1624 = !DILocation(line: 715, column: 6, scope: !1582)
!1625 = !DILocation(line: 716, column: 2, scope: !1582)
!1626 = !DILocation(line: 716, column: 6, scope: !1582)
!1627 = !DILocation(line: 718, column: 23, scope: !1582)
!1628 = !DILocation(line: 718, column: 26, scope: !1582)
!1629 = !DILocation(line: 718, column: 12, scope: !1582)
!1630 = !DILocation(line: 719, column: 14, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1582, file: !27, line: 719, column: 6)
!1632 = !DILocation(line: 719, column: 6, scope: !1631)
!1633 = !DILocation(line: 719, column: 52, scope: !1631)
!1634 = !DILocation(line: 720, column: 14, scope: !1631)
!1635 = !DILocation(line: 720, column: 6, scope: !1631)
!1636 = !DILocation(line: 719, column: 6, scope: !1582)
!1637 = !DILocation(line: 721, column: 3, scope: !1631)
!1638 = !DILocation(line: 731, column: 10, scope: !1582)
!1639 = !DILocation(line: 731, column: 13, scope: !1582)
!1640 = !DILocation(line: 731, column: 34, scope: !1582)
!1641 = !DILocation(line: 731, column: 37, scope: !1582)
!1642 = !DILocation(line: 731, column: 27, scope: !1582)
!1643 = !DILocation(line: 731, column: 51, scope: !1582)
!1644 = !DILocation(line: 731, column: 24, scope: !1582)
!1645 = !DILocation(line: 731, column: 7, scope: !1582)
!1646 = !DILocation(line: 734, column: 12, scope: !1582)
!1647 = !DILocation(line: 734, column: 15, scope: !1582)
!1648 = !DILocation(line: 734, column: 33, scope: !1582)
!1649 = !DILocation(line: 734, column: 36, scope: !1582)
!1650 = !DILocation(line: 734, column: 31, scope: !1582)
!1651 = !DILocation(line: 734, column: 10, scope: !1582)
!1652 = !DILocation(line: 735, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1582, file: !27, line: 735, column: 2)
!1654 = !DILocation(line: 735, column: 7, scope: !1653)
!1655 = !DILocation(line: 735, column: 14, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !27, line: 735, column: 2)
!1657 = !DILocation(line: 735, column: 18, scope: !1656)
!1658 = !DILocation(line: 735, column: 16, scope: !1656)
!1659 = !DILocation(line: 735, column: 2, scope: !1653)
!1660 = !DILocation(line: 736, column: 8, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !27, line: 735, column: 32)
!1662 = !DILocation(line: 736, column: 6, scope: !1661)
!1663 = !DILocation(line: 737, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !27, line: 737, column: 7)
!1665 = !DILocation(line: 737, column: 11, scope: !1664)
!1666 = !DILocation(line: 737, column: 21, scope: !1664)
!1667 = !DILocation(line: 737, column: 7, scope: !1661)
!1668 = !DILocation(line: 738, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !27, line: 737, column: 49)
!1670 = !DILocation(line: 739, column: 4, scope: !1669)
!1671 = !DILocation(line: 741, column: 2, scope: !1661)
!1672 = !DILocation(line: 735, column: 28, scope: !1656)
!1673 = !DILocation(line: 735, column: 2, scope: !1656)
!1674 = distinct !{!1674, !1659, !1675, !388, !389}
!1675 = !DILocation(line: 741, column: 2, scope: !1653)
!1676 = !DILocation(line: 743, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1582, file: !27, line: 743, column: 2)
!1678 = !DILocation(line: 743, column: 7, scope: !1677)
!1679 = !DILocation(line: 743, column: 14, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !27, line: 743, column: 2)
!1681 = !DILocation(line: 743, column: 18, scope: !1680)
!1682 = !DILocation(line: 743, column: 16, scope: !1680)
!1683 = !DILocation(line: 743, column: 2, scope: !1677)
!1684 = !DILocation(line: 744, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !27, line: 743, column: 32)
!1686 = !DILocation(line: 744, column: 6, scope: !1685)
!1687 = !DILocation(line: 746, column: 28, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !27, line: 746, column: 7)
!1689 = !DILocation(line: 746, column: 8, scope: !1688)
!1690 = !DILocation(line: 746, column: 7, scope: !1685)
!1691 = !DILocation(line: 747, column: 4, scope: !1688)
!1692 = !DILocation(line: 749, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !27, line: 749, column: 7)
!1694 = !DILocation(line: 749, column: 34, scope: !1693)
!1695 = !DILocation(line: 750, column: 8, scope: !1693)
!1696 = !DILocation(line: 750, column: 12, scope: !1693)
!1697 = !DILocation(line: 750, column: 22, scope: !1693)
!1698 = !DILocation(line: 749, column: 7, scope: !1685)
!1699 = !DILocation(line: 751, column: 4, scope: !1693)
!1700 = !DILocation(line: 753, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1685, file: !27, line: 753, column: 7)
!1702 = !DILocation(line: 753, column: 24, scope: !1701)
!1703 = !DILocation(line: 754, column: 9, scope: !1701)
!1704 = !DILocation(line: 754, column: 13, scope: !1701)
!1705 = !DILocation(line: 754, column: 23, scope: !1701)
!1706 = !DILocation(line: 753, column: 7, scope: !1685)
!1707 = !DILocation(line: 755, column: 4, scope: !1701)
!1708 = !DILocation(line: 757, column: 18, scope: !1685)
!1709 = !DILocation(line: 757, column: 22, scope: !1685)
!1710 = !DILocation(line: 757, column: 10, scope: !1685)
!1711 = !DILocation(line: 757, column: 16, scope: !1685)
!1712 = !DILocation(line: 758, column: 17, scope: !1685)
!1713 = !DILocation(line: 758, column: 21, scope: !1685)
!1714 = !DILocation(line: 758, column: 31, scope: !1685)
!1715 = !DILocation(line: 758, column: 10, scope: !1685)
!1716 = !DILocation(line: 758, column: 15, scope: !1685)
!1717 = !DILocation(line: 759, column: 35, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1685, file: !27, line: 759, column: 7)
!1719 = !DILocation(line: 759, column: 44, scope: !1718)
!1720 = !DILocation(line: 759, column: 7, scope: !1718)
!1721 = !DILocation(line: 759, column: 7, scope: !1685)
!1722 = !DILocation(line: 760, column: 4, scope: !1718)
!1723 = !DILocation(line: 761, column: 2, scope: !1685)
!1724 = !DILocation(line: 743, column: 28, scope: !1680)
!1725 = !DILocation(line: 743, column: 2, scope: !1680)
!1726 = distinct !{!1726, !1683, !1727, !388, !389}
!1727 = !DILocation(line: 761, column: 2, scope: !1677)
!1728 = !DILocation(line: 762, column: 2, scope: !1582)
!1729 = !DILocation(line: 763, column: 1, scope: !1582)
!1730 = distinct !DISubprogram(name: "process_e820_entries", scope: !27, file: !27, line: 772, type: !1731, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !65, !65}
!1733 = !{!1734, !1735, !1736, !1737, !1738}
!1734 = !DILocalVariable(name: "minimum", arg: 1, scope: !1730, file: !27, line: 772, type: !65)
!1735 = !DILocalVariable(name: "image_size", arg: 2, scope: !1730, file: !27, line: 773, type: !65)
!1736 = !DILocalVariable(name: "i", scope: !1730, file: !27, line: 775, type: !61)
!1737 = !DILocalVariable(name: "region", scope: !1730, file: !27, line: 776, type: !129)
!1738 = !DILocalVariable(name: "entry", scope: !1730, file: !27, line: 777, type: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !88, line: 143, size: 160, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1740, file: !88, line: 144, baseType: !69, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1740, file: !88, line: 145, baseType: !69, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1740, file: !88, line: 146, baseType: !79, size: 32, offset: 128)
!1745 = !DILocation(line: 772, column: 48, scope: !1730)
!1746 = !DILocation(line: 773, column: 20, scope: !1730)
!1747 = !DILocation(line: 775, column: 2, scope: !1730)
!1748 = !DILocation(line: 775, column: 6, scope: !1730)
!1749 = !DILocation(line: 776, column: 2, scope: !1730)
!1750 = !DILocation(line: 776, column: 20, scope: !1730)
!1751 = !DILocation(line: 777, column: 2, scope: !1730)
!1752 = !DILocation(line: 777, column: 26, scope: !1730)
!1753 = !DILocation(line: 780, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1730, file: !27, line: 780, column: 2)
!1755 = !DILocation(line: 780, column: 7, scope: !1754)
!1756 = !DILocation(line: 780, column: 14, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !27, line: 780, column: 2)
!1758 = !DILocation(line: 780, column: 18, scope: !1757)
!1759 = !DILocation(line: 780, column: 35, scope: !1757)
!1760 = !DILocation(line: 780, column: 16, scope: !1757)
!1761 = !DILocation(line: 780, column: 2, scope: !1754)
!1762 = !DILocation(line: 781, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1757, file: !27, line: 780, column: 54)
!1764 = !DILocation(line: 781, column: 29, scope: !1763)
!1765 = !DILocation(line: 781, column: 40, scope: !1763)
!1766 = !DILocation(line: 781, column: 9, scope: !1763)
!1767 = !DILocation(line: 783, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !27, line: 783, column: 7)
!1769 = !DILocation(line: 783, column: 14, scope: !1768)
!1770 = !DILocation(line: 783, column: 19, scope: !1768)
!1771 = !DILocation(line: 783, column: 7, scope: !1763)
!1772 = !DILocation(line: 784, column: 4, scope: !1768)
!1773 = !DILocation(line: 785, column: 18, scope: !1763)
!1774 = !DILocation(line: 785, column: 25, scope: !1763)
!1775 = !DILocation(line: 785, column: 10, scope: !1763)
!1776 = !DILocation(line: 785, column: 16, scope: !1763)
!1777 = !DILocation(line: 786, column: 17, scope: !1763)
!1778 = !DILocation(line: 786, column: 24, scope: !1763)
!1779 = !DILocation(line: 786, column: 10, scope: !1763)
!1780 = !DILocation(line: 786, column: 15, scope: !1763)
!1781 = !DILocation(line: 787, column: 35, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1763, file: !27, line: 787, column: 7)
!1783 = !DILocation(line: 787, column: 44, scope: !1782)
!1784 = !DILocation(line: 787, column: 7, scope: !1782)
!1785 = !DILocation(line: 787, column: 7, scope: !1763)
!1786 = !DILocation(line: 788, column: 4, scope: !1782)
!1787 = !DILocation(line: 789, column: 2, scope: !1763)
!1788 = !DILocation(line: 780, column: 50, scope: !1757)
!1789 = !DILocation(line: 780, column: 2, scope: !1757)
!1790 = distinct !{!1790, !1761, !1791, !388, !389}
!1791 = !DILocation(line: 789, column: 2, scope: !1754)
!1792 = !DILocation(line: 790, column: 1, scope: !1730)
!1793 = distinct !DISubprogram(name: "slots_fetch_random", scope: !27, file: !27, line: 556, type: !1794, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!67}
!1796 = !{!1797, !1798}
!1797 = !DILocalVariable(name: "slot", scope: !1793, file: !27, line: 558, type: !65)
!1798 = !DILocalVariable(name: "i", scope: !1793, file: !27, line: 559, type: !31)
!1799 = !DILocation(line: 558, column: 2, scope: !1793)
!1800 = !DILocation(line: 558, column: 16, scope: !1793)
!1801 = !DILocation(line: 559, column: 2, scope: !1793)
!1802 = !DILocation(line: 559, column: 15, scope: !1793)
!1803 = !DILocation(line: 562, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1793, file: !27, line: 562, column: 6)
!1805 = !DILocation(line: 562, column: 15, scope: !1804)
!1806 = !DILocation(line: 562, column: 6, scope: !1793)
!1807 = !DILocation(line: 563, column: 3, scope: !1804)
!1808 = !DILocation(line: 565, column: 9, scope: !1793)
!1809 = !DILocation(line: 565, column: 45, scope: !1793)
!1810 = !DILocation(line: 565, column: 43, scope: !1793)
!1811 = !DILocation(line: 565, column: 7, scope: !1793)
!1812 = !DILocation(line: 567, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1793, file: !27, line: 567, column: 2)
!1814 = !DILocation(line: 567, column: 7, scope: !1813)
!1815 = !DILocation(line: 567, column: 14, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !27, line: 567, column: 2)
!1817 = !DILocation(line: 567, column: 18, scope: !1816)
!1818 = !DILocation(line: 567, column: 16, scope: !1816)
!1819 = !DILocation(line: 567, column: 2, scope: !1813)
!1820 = !DILocation(line: 568, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !27, line: 568, column: 7)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !27, line: 567, column: 40)
!1823 = !DILocation(line: 568, column: 26, scope: !1821)
!1824 = !DILocation(line: 568, column: 15, scope: !1821)
!1825 = !DILocation(line: 568, column: 29, scope: !1821)
!1826 = !DILocation(line: 568, column: 12, scope: !1821)
!1827 = !DILocation(line: 568, column: 7, scope: !1822)
!1828 = !DILocation(line: 569, column: 23, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !27, line: 568, column: 34)
!1830 = !DILocation(line: 569, column: 12, scope: !1829)
!1831 = !DILocation(line: 569, column: 26, scope: !1829)
!1832 = !DILocation(line: 569, column: 9, scope: !1829)
!1833 = !DILocation(line: 570, column: 4, scope: !1829)
!1834 = !DILocation(line: 572, column: 21, scope: !1822)
!1835 = !DILocation(line: 572, column: 10, scope: !1822)
!1836 = !DILocation(line: 572, column: 24, scope: !1822)
!1837 = !DILocation(line: 572, column: 37, scope: !1822)
!1838 = !DILocation(line: 572, column: 42, scope: !1822)
!1839 = !DILocation(line: 572, column: 29, scope: !1822)
!1840 = !DILocation(line: 572, column: 3, scope: !1822)
!1841 = !DILocation(line: 567, column: 36, scope: !1816)
!1842 = !DILocation(line: 567, column: 2, scope: !1816)
!1843 = distinct !{!1843, !1819, !1844, !388, !389}
!1844 = !DILocation(line: 573, column: 2, scope: !1813)
!1845 = !DILocation(line: 575, column: 6, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1793, file: !27, line: 575, column: 6)
!1847 = !DILocation(line: 575, column: 11, scope: !1846)
!1848 = !DILocation(line: 575, column: 8, scope: !1846)
!1849 = !DILocation(line: 575, column: 6, scope: !1793)
!1850 = !DILocation(line: 576, column: 3, scope: !1846)
!1851 = !DILocation(line: 577, column: 2, scope: !1793)
!1852 = !DILocation(line: 578, column: 1, scope: !1793)
!1853 = distinct !DISubprogram(name: "memory_type_is_free", scope: !27, file: !27, line: 690, type: !1854, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!180, !72}
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "md", arg: 1, scope: !1853, file: !27, line: 690, type: !72)
!1858 = !DILocation(line: 690, column: 59, scope: !1853)
!1859 = !DILocation(line: 692, column: 6, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !27, line: 692, column: 6)
!1861 = !DILocation(line: 692, column: 10, scope: !1860)
!1862 = !DILocation(line: 692, column: 15, scope: !1860)
!1863 = !DILocation(line: 692, column: 6, scope: !1853)
!1864 = !DILocation(line: 693, column: 3, scope: !1860)
!1865 = !DILocation(line: 699, column: 2, scope: !1853)
!1866 = !DILocation(line: 700, column: 1, scope: !1853)
!1867 = distinct !DISubprogram(name: "efi_soft_reserve_enabled", scope: !74, file: !74, line: 125, type: !999, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!1868 = !DILocation(line: 127, column: 2, scope: !1867)
!1869 = distinct !DISubprogram(name: "process_mem_region", scope: !27, file: !27, line: 624, type: !1870, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1873)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!180, !1872, !65, !65}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1873 = !{!1874, !1875, !1876, !1877}
!1874 = !DILocalVariable(name: "region", arg: 1, scope: !1869, file: !27, line: 624, type: !1872)
!1875 = !DILocalVariable(name: "minimum", arg: 2, scope: !1869, file: !27, line: 625, type: !65)
!1876 = !DILocalVariable(name: "image_size", arg: 3, scope: !1869, file: !27, line: 626, type: !65)
!1877 = !DILocalVariable(name: "i", scope: !1869, file: !27, line: 628, type: !61)
!1878 = !DILocation(line: 624, column: 51, scope: !1869)
!1879 = !DILocation(line: 625, column: 25, scope: !1869)
!1880 = !DILocation(line: 626, column: 25, scope: !1869)
!1881 = !DILocation(line: 628, column: 2, scope: !1869)
!1882 = !DILocation(line: 628, column: 6, scope: !1869)
!1883 = !DILocation(line: 633, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1869, file: !27, line: 633, column: 6)
!1885 = !DILocation(line: 633, column: 6, scope: !1869)
!1886 = !DILocation(line: 634, column: 24, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !27, line: 633, column: 26)
!1888 = !DILocation(line: 634, column: 32, scope: !1887)
!1889 = !DILocation(line: 634, column: 41, scope: !1887)
!1890 = !DILocation(line: 634, column: 3, scope: !1887)
!1891 = !DILocation(line: 636, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !27, line: 636, column: 7)
!1893 = !DILocation(line: 636, column: 23, scope: !1892)
!1894 = !DILocation(line: 636, column: 7, scope: !1887)
!1895 = !DILocation(line: 637, column: 4, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !27, line: 636, column: 41)
!1897 = !DILocation(line: 638, column: 4, scope: !1896)
!1898 = !DILocation(line: 640, column: 3, scope: !1887)
!1899 = !DILocation(line: 671, column: 2, scope: !1869)
!1900 = !DILocation(line: 672, column: 1, scope: !1869)
!1901 = distinct !DISubprogram(name: "__process_mem_region", scope: !27, file: !27, line: 580, type: !1902, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !1872, !65, !65}
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1913, !1914, !1916}
!1905 = !DILocalVariable(name: "entry", arg: 1, scope: !1901, file: !27, line: 580, type: !1872)
!1906 = !DILocalVariable(name: "minimum", arg: 2, scope: !1901, file: !27, line: 581, type: !65)
!1907 = !DILocalVariable(name: "image_size", arg: 3, scope: !1901, file: !27, line: 582, type: !65)
!1908 = !DILocalVariable(name: "region", scope: !1901, file: !27, line: 584, type: !129)
!1909 = !DILocalVariable(name: "overlap", scope: !1901, file: !27, line: 584, type: !129)
!1910 = !DILocalVariable(name: "region_end", scope: !1901, file: !27, line: 585, type: !67)
!1911 = !DILocalVariable(name: "__UNIQUE_ID___x204", scope: !1912, file: !27, line: 588, type: !67)
!1912 = distinct !DILexicalBlock(scope: !1901, file: !27, line: 588, column: 17)
!1913 = !DILocalVariable(name: "__UNIQUE_ID___y205", scope: !1912, file: !27, line: 588, type: !67)
!1914 = !DILocalVariable(name: "__UNIQUE_ID___x206", scope: !1915, file: !27, line: 589, type: !67)
!1915 = distinct !DILexicalBlock(scope: !1901, file: !27, line: 589, column: 15)
!1916 = !DILocalVariable(name: "__UNIQUE_ID___y207", scope: !1915, file: !27, line: 589, type: !67)
!1917 = !DILocation(line: 580, column: 53, scope: !1901)
!1918 = !DILocation(line: 581, column: 20, scope: !1901)
!1919 = !DILocation(line: 582, column: 20, scope: !1901)
!1920 = !DILocation(line: 584, column: 2, scope: !1901)
!1921 = !DILocation(line: 584, column: 20, scope: !1901)
!1922 = !DILocation(line: 584, column: 28, scope: !1901)
!1923 = !DILocation(line: 585, column: 2, scope: !1901)
!1924 = !DILocation(line: 585, column: 6, scope: !1901)
!1925 = !DILocation(line: 588, column: 17, scope: !1912)
!1926 = !DILocation(line: 588, column: 17, scope: !1901)
!1927 = !DILocation(line: 588, column: 9, scope: !1901)
!1928 = !DILocation(line: 588, column: 15, scope: !1901)
!1929 = !DILocation(line: 589, column: 15, scope: !1915)
!1930 = !DILocation(line: 589, column: 15, scope: !1901)
!1931 = !DILocation(line: 589, column: 13, scope: !1901)
!1932 = !DILocation(line: 592, column: 2, scope: !1901)
!1933 = !DILocation(line: 592, column: 9, scope: !1901)
!1934 = !DILocation(line: 592, column: 25, scope: !1901)
!1935 = !DILocation(line: 594, column: 18, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1901, file: !27, line: 592, column: 42)
!1937 = !DILocation(line: 594, column: 10, scope: !1936)
!1938 = !DILocation(line: 594, column: 16, scope: !1936)
!1939 = !DILocation(line: 597, column: 14, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !27, line: 597, column: 7)
!1941 = !DILocation(line: 597, column: 22, scope: !1940)
!1942 = !DILocation(line: 597, column: 20, scope: !1940)
!1943 = !DILocation(line: 597, column: 7, scope: !1936)
!1944 = !DILocation(line: 598, column: 4, scope: !1940)
!1945 = !DILocation(line: 601, column: 17, scope: !1936)
!1946 = !DILocation(line: 601, column: 37, scope: !1936)
!1947 = !DILocation(line: 601, column: 28, scope: !1936)
!1948 = !DILocation(line: 601, column: 10, scope: !1936)
!1949 = !DILocation(line: 601, column: 15, scope: !1936)
!1950 = !DILocation(line: 604, column: 14, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1936, file: !27, line: 604, column: 7)
!1952 = !DILocation(line: 604, column: 21, scope: !1951)
!1953 = !DILocation(line: 604, column: 19, scope: !1951)
!1954 = !DILocation(line: 604, column: 7, scope: !1936)
!1955 = !DILocation(line: 605, column: 4, scope: !1951)
!1956 = !DILocation(line: 608, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1936, file: !27, line: 608, column: 7)
!1958 = !DILocation(line: 608, column: 7, scope: !1936)
!1959 = !DILocation(line: 609, column: 35, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !27, line: 608, column: 46)
!1961 = !DILocation(line: 609, column: 4, scope: !1960)
!1962 = !DILocation(line: 610, column: 4, scope: !1960)
!1963 = !DILocation(line: 614, column: 15, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1936, file: !27, line: 614, column: 7)
!1965 = !DILocation(line: 614, column: 31, scope: !1964)
!1966 = !DILocation(line: 614, column: 39, scope: !1964)
!1967 = !DILocation(line: 614, column: 37, scope: !1964)
!1968 = !DILocation(line: 614, column: 21, scope: !1964)
!1969 = !DILocation(line: 614, column: 7, scope: !1936)
!1970 = !DILocation(line: 615, column: 26, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !27, line: 614, column: 51)
!1972 = !DILocation(line: 615, column: 41, scope: !1971)
!1973 = !DILocation(line: 615, column: 32, scope: !1971)
!1974 = !DILocation(line: 615, column: 11, scope: !1971)
!1975 = !DILocation(line: 615, column: 16, scope: !1971)
!1976 = !DILocation(line: 616, column: 35, scope: !1971)
!1977 = !DILocation(line: 616, column: 4, scope: !1971)
!1978 = !DILocation(line: 617, column: 3, scope: !1971)
!1979 = !DILocation(line: 620, column: 26, scope: !1936)
!1980 = !DILocation(line: 620, column: 42, scope: !1936)
!1981 = !DILocation(line: 620, column: 32, scope: !1936)
!1982 = !DILocation(line: 620, column: 10, scope: !1936)
!1983 = !DILocation(line: 620, column: 16, scope: !1936)
!1984 = distinct !{!1984, !1932, !1985, !388, !389}
!1985 = !DILocation(line: 621, column: 2, scope: !1901)
!1986 = !DILocation(line: 622, column: 1, scope: !1901)
!1987 = distinct !DISubprogram(name: "mem_avoid_overlap", scope: !27, file: !27, line: 432, type: !1988, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!180, !1872, !1872}
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1991 = !DILocalVariable(name: "img", arg: 1, scope: !1987, file: !27, line: 432, type: !1872)
!1992 = !DILocalVariable(name: "overlap", arg: 2, scope: !1987, file: !27, line: 433, type: !1872)
!1993 = !DILocalVariable(name: "i", scope: !1987, file: !27, line: 435, type: !61)
!1994 = !DILocalVariable(name: "ptr", scope: !1987, file: !27, line: 436, type: !86)
!1995 = !DILocalVariable(name: "earliest", scope: !1987, file: !27, line: 437, type: !67)
!1996 = !DILocalVariable(name: "is_overlapping", scope: !1987, file: !27, line: 438, type: !180)
!1997 = !DILocalVariable(name: "avoid", scope: !1998, file: !27, line: 452, type: !129)
!1998 = distinct !DILexicalBlock(scope: !1987, file: !27, line: 451, column: 14)
!1999 = !DILocation(line: 432, column: 50, scope: !1987)
!2000 = !DILocation(line: 433, column: 29, scope: !1987)
!2001 = !DILocation(line: 435, column: 2, scope: !1987)
!2002 = !DILocation(line: 435, column: 6, scope: !1987)
!2003 = !DILocation(line: 436, column: 2, scope: !1987)
!2004 = !DILocation(line: 436, column: 21, scope: !1987)
!2005 = !DILocation(line: 437, column: 2, scope: !1987)
!2006 = !DILocation(line: 437, column: 6, scope: !1987)
!2007 = !DILocation(line: 437, column: 17, scope: !1987)
!2008 = !DILocation(line: 437, column: 22, scope: !1987)
!2009 = !DILocation(line: 437, column: 30, scope: !1987)
!2010 = !DILocation(line: 437, column: 35, scope: !1987)
!2011 = !DILocation(line: 437, column: 28, scope: !1987)
!2012 = !DILocation(line: 438, column: 2, scope: !1987)
!2013 = !DILocation(line: 438, column: 7, scope: !1987)
!2014 = !DILocation(line: 440, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1987, file: !27, line: 440, column: 2)
!2016 = !DILocation(line: 440, column: 7, scope: !2015)
!2017 = !DILocation(line: 440, column: 14, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !27, line: 440, column: 2)
!2019 = !DILocation(line: 440, column: 16, scope: !2018)
!2020 = !DILocation(line: 440, column: 2, scope: !2015)
!2021 = !DILocation(line: 441, column: 20, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !27, line: 441, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !27, line: 440, column: 38)
!2024 = !DILocation(line: 441, column: 36, scope: !2022)
!2025 = !DILocation(line: 441, column: 26, scope: !2022)
!2026 = !DILocation(line: 441, column: 7, scope: !2022)
!2027 = !DILocation(line: 441, column: 40, scope: !2022)
!2028 = !DILocation(line: 442, column: 17, scope: !2022)
!2029 = !DILocation(line: 442, column: 7, scope: !2022)
!2030 = !DILocation(line: 442, column: 20, scope: !2022)
!2031 = !DILocation(line: 442, column: 28, scope: !2022)
!2032 = !DILocation(line: 442, column: 26, scope: !2022)
!2033 = !DILocation(line: 441, column: 7, scope: !2023)
!2034 = !DILocation(line: 443, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2022, file: !27, line: 442, column: 38)
!2036 = !DILocation(line: 443, column: 25, scope: !2035)
!2037 = !DILocation(line: 443, column: 15, scope: !2035)
!2038 = !DILocation(line: 444, column: 15, scope: !2035)
!2039 = !DILocation(line: 444, column: 24, scope: !2035)
!2040 = !DILocation(line: 444, column: 13, scope: !2035)
!2041 = !DILocation(line: 445, column: 19, scope: !2035)
!2042 = !DILocation(line: 446, column: 3, scope: !2035)
!2043 = !DILocation(line: 447, column: 2, scope: !2023)
!2044 = !DILocation(line: 440, column: 34, scope: !2018)
!2045 = !DILocation(line: 440, column: 2, scope: !2018)
!2046 = distinct !{!2046, !2020, !2047, !388, !389}
!2047 = !DILocation(line: 447, column: 2, scope: !2015)
!2048 = !DILocation(line: 450, column: 44, scope: !1987)
!2049 = !DILocation(line: 450, column: 61, scope: !1987)
!2050 = !DILocation(line: 450, column: 65, scope: !1987)
!2051 = !DILocation(line: 450, column: 8, scope: !1987)
!2052 = !DILocation(line: 450, column: 6, scope: !1987)
!2053 = !DILocation(line: 451, column: 2, scope: !1987)
!2054 = !DILocation(line: 451, column: 9, scope: !1987)
!2055 = !DILocation(line: 452, column: 3, scope: !1998)
!2056 = !DILocation(line: 452, column: 21, scope: !1998)
!2057 = !DILocation(line: 454, column: 32, scope: !1998)
!2058 = !DILocation(line: 454, column: 17, scope: !1998)
!2059 = !DILocation(line: 454, column: 9, scope: !1998)
!2060 = !DILocation(line: 454, column: 15, scope: !1998)
!2061 = !DILocation(line: 455, column: 31, scope: !1998)
!2062 = !DILocation(line: 455, column: 36, scope: !1998)
!2063 = !DILocation(line: 455, column: 29, scope: !1998)
!2064 = !DILocation(line: 455, column: 9, scope: !1998)
!2065 = !DILocation(line: 455, column: 14, scope: !1998)
!2066 = !DILocation(line: 457, column: 20, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1998, file: !27, line: 457, column: 7)
!2068 = !DILocation(line: 457, column: 7, scope: !2067)
!2069 = !DILocation(line: 457, column: 33, scope: !2067)
!2070 = !DILocation(line: 457, column: 43, scope: !2067)
!2071 = !DILocation(line: 457, column: 51, scope: !2067)
!2072 = !DILocation(line: 457, column: 49, scope: !2067)
!2073 = !DILocation(line: 457, column: 7, scope: !1998)
!2074 = !DILocation(line: 458, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !27, line: 457, column: 62)
!2076 = !DILocation(line: 458, column: 15, scope: !2075)
!2077 = !DILocation(line: 459, column: 15, scope: !2075)
!2078 = !DILocation(line: 459, column: 24, scope: !2075)
!2079 = !DILocation(line: 459, column: 13, scope: !2075)
!2080 = !DILocation(line: 460, column: 19, scope: !2075)
!2081 = !DILocation(line: 461, column: 3, scope: !2075)
!2082 = !DILocation(line: 463, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1998, file: !27, line: 463, column: 7)
!2084 = !DILocation(line: 463, column: 12, scope: !2083)
!2085 = !DILocation(line: 463, column: 17, scope: !2083)
!2086 = !DILocation(line: 463, column: 35, scope: !2083)
!2087 = !DILocation(line: 464, column: 33, scope: !2083)
!2088 = !DILocation(line: 464, column: 38, scope: !2083)
!2089 = !DILocation(line: 464, column: 45, scope: !2083)
!2090 = !DILocation(line: 464, column: 50, scope: !2083)
!2091 = !DILocation(line: 463, column: 7, scope: !1998)
!2092 = !DILocation(line: 465, column: 44, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2083, file: !27, line: 464, column: 69)
!2094 = !DILocation(line: 465, column: 49, scope: !2093)
!2095 = !DILocation(line: 465, column: 56, scope: !2093)
!2096 = !DILocation(line: 465, column: 10, scope: !2093)
!2097 = !DILocation(line: 465, column: 16, scope: !2093)
!2098 = !DILocation(line: 466, column: 43, scope: !2093)
!2099 = !DILocation(line: 466, column: 48, scope: !2093)
!2100 = !DILocation(line: 466, column: 55, scope: !2093)
!2101 = !DILocation(line: 466, column: 10, scope: !2093)
!2102 = !DILocation(line: 466, column: 15, scope: !2093)
!2103 = !DILocation(line: 468, column: 21, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2093, file: !27, line: 468, column: 8)
!2105 = !DILocation(line: 468, column: 8, scope: !2104)
!2106 = !DILocation(line: 468, column: 34, scope: !2104)
!2107 = !DILocation(line: 468, column: 44, scope: !2104)
!2108 = !DILocation(line: 468, column: 52, scope: !2104)
!2109 = !DILocation(line: 468, column: 50, scope: !2104)
!2110 = !DILocation(line: 468, column: 8, scope: !2093)
!2111 = !DILocation(line: 469, column: 6, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2104, file: !27, line: 468, column: 63)
!2113 = !DILocation(line: 469, column: 16, scope: !2112)
!2114 = !DILocation(line: 470, column: 16, scope: !2112)
!2115 = !DILocation(line: 470, column: 25, scope: !2112)
!2116 = !DILocation(line: 470, column: 14, scope: !2112)
!2117 = !DILocation(line: 471, column: 20, scope: !2112)
!2118 = !DILocation(line: 472, column: 4, scope: !2112)
!2119 = !DILocation(line: 473, column: 3, scope: !2093)
!2120 = !DILocation(line: 475, column: 45, scope: !1998)
!2121 = !DILocation(line: 475, column: 50, scope: !1998)
!2122 = !DILocation(line: 475, column: 9, scope: !1998)
!2123 = !DILocation(line: 475, column: 7, scope: !1998)
!2124 = !DILocation(line: 476, column: 2, scope: !1987)
!2125 = distinct !{!2125, !2053, !2124, !388, !389}
!2126 = !DILocation(line: 478, column: 9, scope: !1987)
!2127 = !DILocation(line: 479, column: 1, scope: !1987)
!2128 = !DILocation(line: 478, column: 2, scope: !1987)
!2129 = distinct !DISubprogram(name: "process_gb_huge_pages", scope: !27, file: !27, line: 511, type: !2130, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !1872, !65}
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138}
!2133 = !DILocalVariable(name: "region", arg: 1, scope: !2129, file: !27, line: 511, type: !1872)
!2134 = !DILocalVariable(name: "image_size", arg: 2, scope: !2129, file: !27, line: 511, type: !65)
!2135 = !DILocalVariable(name: "pud_start", scope: !2129, file: !27, line: 513, type: !67)
!2136 = !DILocalVariable(name: "pud_end", scope: !2129, file: !27, line: 513, type: !67)
!2137 = !DILocalVariable(name: "gb_huge_pages", scope: !2129, file: !27, line: 514, type: !65)
!2138 = !DILocalVariable(name: "tmp", scope: !2129, file: !27, line: 515, type: !129)
!2139 = !DILocation(line: 511, column: 42, scope: !2129)
!2140 = !DILocation(line: 511, column: 64, scope: !2129)
!2141 = !DILocation(line: 513, column: 2, scope: !2129)
!2142 = !DILocation(line: 513, column: 6, scope: !2129)
!2143 = !DILocation(line: 513, column: 17, scope: !2129)
!2144 = !DILocation(line: 514, column: 2, scope: !2129)
!2145 = !DILocation(line: 514, column: 16, scope: !2129)
!2146 = !DILocation(line: 515, column: 2, scope: !2129)
!2147 = !DILocation(line: 515, column: 20, scope: !2129)
!2148 = !DILocation(line: 517, column: 37, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2129, file: !27, line: 517, column: 6)
!2150 = !DILocation(line: 517, column: 6, scope: !2129)
!2151 = !DILocation(line: 518, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !27, line: 517, column: 56)
!2153 = !DILocation(line: 518, column: 27, scope: !2152)
!2154 = !DILocation(line: 518, column: 3, scope: !2152)
!2155 = !DILocation(line: 519, column: 3, scope: !2152)
!2156 = !DILocation(line: 523, column: 14, scope: !2129)
!2157 = !DILocation(line: 523, column: 12, scope: !2129)
!2158 = !DILocation(line: 524, column: 12, scope: !2129)
!2159 = !DILocation(line: 524, column: 10, scope: !2129)
!2160 = !DILocation(line: 527, column: 6, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2129, file: !27, line: 527, column: 6)
!2162 = !DILocation(line: 527, column: 19, scope: !2161)
!2163 = !DILocation(line: 527, column: 16, scope: !2161)
!2164 = !DILocation(line: 527, column: 6, scope: !2129)
!2165 = !DILocation(line: 528, column: 19, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !27, line: 527, column: 28)
!2167 = !DILocation(line: 528, column: 27, scope: !2166)
!2168 = !DILocation(line: 528, column: 3, scope: !2166)
!2169 = !DILocation(line: 529, column: 3, scope: !2166)
!2170 = !DILocation(line: 533, column: 6, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2129, file: !27, line: 533, column: 6)
!2172 = !DILocation(line: 533, column: 19, scope: !2171)
!2173 = !DILocation(line: 533, column: 27, scope: !2171)
!2174 = !DILocation(line: 533, column: 35, scope: !2171)
!2175 = !DILocation(line: 533, column: 33, scope: !2171)
!2176 = !DILocation(line: 533, column: 16, scope: !2171)
!2177 = !DILocation(line: 533, column: 6, scope: !2129)
!2178 = !DILocation(line: 534, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2171, file: !27, line: 533, column: 47)
!2180 = !DILocation(line: 534, column: 23, scope: !2179)
!2181 = !DILocation(line: 534, column: 7, scope: !2179)
!2182 = !DILocation(line: 534, column: 13, scope: !2179)
!2183 = !DILocation(line: 535, column: 14, scope: !2179)
!2184 = !DILocation(line: 535, column: 26, scope: !2179)
!2185 = !DILocation(line: 535, column: 34, scope: !2179)
!2186 = !DILocation(line: 535, column: 24, scope: !2179)
!2187 = !DILocation(line: 535, column: 7, scope: !2179)
!2188 = !DILocation(line: 535, column: 12, scope: !2179)
!2189 = !DILocation(line: 536, column: 25, scope: !2179)
!2190 = !DILocation(line: 536, column: 3, scope: !2179)
!2191 = !DILocation(line: 537, column: 2, scope: !2179)
!2192 = !DILocation(line: 540, column: 19, scope: !2129)
!2193 = !DILocation(line: 540, column: 29, scope: !2129)
!2194 = !DILocation(line: 540, column: 27, scope: !2129)
!2195 = !DILocation(line: 540, column: 40, scope: !2129)
!2196 = !DILocation(line: 540, column: 16, scope: !2129)
!2197 = !DILocation(line: 541, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2129, file: !27, line: 541, column: 6)
!2199 = !DILocation(line: 541, column: 22, scope: !2198)
!2200 = !DILocation(line: 541, column: 20, scope: !2198)
!2201 = !DILocation(line: 541, column: 6, scope: !2129)
!2202 = !DILocation(line: 542, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !27, line: 541, column: 41)
!2204 = !DILocation(line: 542, column: 26, scope: !2203)
!2205 = !DILocation(line: 542, column: 44, scope: !2203)
!2206 = !DILocation(line: 542, column: 23, scope: !2203)
!2207 = !DILocation(line: 542, column: 11, scope: !2203)
!2208 = !DILocation(line: 543, column: 21, scope: !2203)
!2209 = !DILocation(line: 544, column: 2, scope: !2203)
!2210 = !DILocation(line: 545, column: 24, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2198, file: !27, line: 544, column: 9)
!2212 = !DILocation(line: 545, column: 21, scope: !2211)
!2213 = !DILocation(line: 549, column: 6, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2129, file: !27, line: 549, column: 6)
!2215 = !DILocation(line: 549, column: 14, scope: !2214)
!2216 = !DILocation(line: 549, column: 22, scope: !2214)
!2217 = !DILocation(line: 549, column: 30, scope: !2214)
!2218 = !DILocation(line: 549, column: 20, scope: !2214)
!2219 = !DILocation(line: 549, column: 38, scope: !2214)
!2220 = !DILocation(line: 549, column: 48, scope: !2214)
!2221 = !DILocation(line: 549, column: 46, scope: !2214)
!2222 = !DILocation(line: 549, column: 35, scope: !2214)
!2223 = !DILocation(line: 549, column: 6, scope: !2129)
!2224 = !DILocation(line: 550, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2214, file: !27, line: 549, column: 60)
!2226 = !DILocation(line: 550, column: 7, scope: !2225)
!2227 = !DILocation(line: 550, column: 13, scope: !2225)
!2228 = !DILocation(line: 551, column: 14, scope: !2225)
!2229 = !DILocation(line: 551, column: 22, scope: !2225)
!2230 = !DILocation(line: 551, column: 30, scope: !2225)
!2231 = !DILocation(line: 551, column: 38, scope: !2225)
!2232 = !DILocation(line: 551, column: 28, scope: !2225)
!2233 = !DILocation(line: 551, column: 45, scope: !2225)
!2234 = !DILocation(line: 551, column: 43, scope: !2225)
!2235 = !DILocation(line: 551, column: 7, scope: !2225)
!2236 = !DILocation(line: 551, column: 12, scope: !2225)
!2237 = !DILocation(line: 552, column: 25, scope: !2225)
!2238 = !DILocation(line: 552, column: 3, scope: !2225)
!2239 = !DILocation(line: 553, column: 2, scope: !2225)
!2240 = !DILocation(line: 554, column: 1, scope: !2129)
!2241 = distinct !DISubprogram(name: "mem_overlaps", scope: !27, file: !27, line: 102, type: !1988, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "one", arg: 1, scope: !2241, file: !27, line: 102, type: !1872)
!2244 = !DILocalVariable(name: "two", arg: 2, scope: !2241, file: !27, line: 102, type: !1872)
!2245 = !DILocation(line: 102, column: 45, scope: !2241)
!2246 = !DILocation(line: 102, column: 69, scope: !2241)
!2247 = !DILocation(line: 105, column: 6, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2241, file: !27, line: 105, column: 6)
!2249 = !DILocation(line: 105, column: 11, scope: !2248)
!2250 = !DILocation(line: 105, column: 19, scope: !2248)
!2251 = !DILocation(line: 105, column: 24, scope: !2248)
!2252 = !DILocation(line: 105, column: 17, scope: !2248)
!2253 = !DILocation(line: 105, column: 32, scope: !2248)
!2254 = !DILocation(line: 105, column: 37, scope: !2248)
!2255 = !DILocation(line: 105, column: 29, scope: !2248)
!2256 = !DILocation(line: 105, column: 6, scope: !2241)
!2257 = !DILocation(line: 106, column: 3, scope: !2248)
!2258 = !DILocation(line: 108, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2241, file: !27, line: 108, column: 6)
!2260 = !DILocation(line: 108, column: 11, scope: !2259)
!2261 = !DILocation(line: 108, column: 20, scope: !2259)
!2262 = !DILocation(line: 108, column: 25, scope: !2259)
!2263 = !DILocation(line: 108, column: 33, scope: !2259)
!2264 = !DILocation(line: 108, column: 38, scope: !2259)
!2265 = !DILocation(line: 108, column: 31, scope: !2259)
!2266 = !DILocation(line: 108, column: 17, scope: !2259)
!2267 = !DILocation(line: 108, column: 6, scope: !2241)
!2268 = !DILocation(line: 109, column: 3, scope: !2259)
!2269 = !DILocation(line: 110, column: 2, scope: !2241)
!2270 = !DILocation(line: 111, column: 1, scope: !2241)
!2271 = distinct !DISubprogram(name: "store_slot_info", scope: !27, file: !27, line: 492, type: !2130, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !2272)
!2272 = !{!2273, !2274, !2275}
!2273 = !DILocalVariable(name: "region", arg: 1, scope: !2271, file: !27, line: 492, type: !1872)
!2274 = !DILocalVariable(name: "image_size", arg: 2, scope: !2271, file: !27, line: 492, type: !65)
!2275 = !DILocalVariable(name: "slot_area", scope: !2271, file: !27, line: 494, type: !225)
!2276 = !DILocation(line: 492, column: 48, scope: !2271)
!2277 = !DILocation(line: 492, column: 70, scope: !2271)
!2278 = !DILocation(line: 494, column: 2, scope: !2271)
!2279 = !DILocation(line: 494, column: 19, scope: !2271)
!2280 = !DILocation(line: 496, column: 6, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2271, file: !27, line: 496, column: 6)
!2282 = !DILocation(line: 496, column: 22, scope: !2281)
!2283 = !DILocation(line: 496, column: 6, scope: !2271)
!2284 = !DILocation(line: 497, column: 3, scope: !2281)
!2285 = !DILocation(line: 499, column: 19, scope: !2271)
!2286 = !DILocation(line: 499, column: 27, scope: !2271)
!2287 = !DILocation(line: 499, column: 12, scope: !2271)
!2288 = !DILocation(line: 499, column: 17, scope: !2271)
!2289 = !DILocation(line: 500, column: 23, scope: !2271)
!2290 = !DILocation(line: 500, column: 31, scope: !2271)
!2291 = !DILocation(line: 500, column: 38, scope: !2271)
!2292 = !DILocation(line: 500, column: 36, scope: !2271)
!2293 = !DILocation(line: 500, column: 50, scope: !2271)
!2294 = !DILocation(line: 500, column: 20, scope: !2271)
!2295 = !DILocation(line: 500, column: 12, scope: !2271)
!2296 = !DILocation(line: 500, column: 16, scope: !2271)
!2297 = !DILocation(line: 502, column: 28, scope: !2271)
!2298 = !DILocation(line: 502, column: 2, scope: !2271)
!2299 = !DILocation(line: 502, column: 34, scope: !2271)
!2300 = !DILocation(line: 503, column: 24, scope: !2271)
!2301 = !DILocation(line: 503, column: 11, scope: !2271)
!2302 = !DILocation(line: 504, column: 1, scope: !2271)
