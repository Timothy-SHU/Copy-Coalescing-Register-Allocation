; ModuleID = 'arch/x86/tools/relocs_64.c'
source_filename = "arch/x86/tools/relocs_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.relocs = type { ptr, i64, i64 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.section = type { %struct.Elf64_Shdr, ptr, ptr, ptr, ptr, ptr }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }
%struct.Elf64_Rela = type { i64, i64, i64 }

@sym_regex_realmode = internal constant [4 x ptr] [ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.1], align 16, !dbg !0
@sym_regex = internal global ptr null, align 8, !dbg !43
@sym_regex_kernel = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr null, ptr null], align 16, !dbg !59
@sym_regex_c = internal global [4 x %struct.re_pattern_buffer] zeroinitializer, align 16, !dbg !64
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !26
@.str.1 = private unnamed_addr constant [5 x i8] c"^pa_\00", align 1, !dbg !33
@.str.2 = private unnamed_addr constant [16 x i8] c"^real_mode_seg$\00", align 1, !dbg !38
@.str.3 = private unnamed_addr constant [86 x i8] c"^(xen_irq_disable_direct_reloc$|xen_save_fl_direct_reloc$|VDSO|__kcfi_typeid_|__crc_)\00", align 1, !dbg !49
@.str.4 = private unnamed_addr constant [496 x i8] c"^(__init_(begin|end)|__x86_cpu_dev_(start|end)|(__parainstructions|__alt_instructions)(_end)?|(__iommu_table|__apicdrivers|__smp_locks)(_end)?|__(start|end)_pci_.*|__(start|stop)___ksymtab(_gpl)?|__(start|stop)___kcrctab(_gpl)?|__(start|stop)___param|__(start|stop)___modver|__(start|stop)___bug_table|__tracedata_(start|end)|__(start|stop)_notes|__end_rodata|__end_rodata_aligned|__initramfs_start|(jiffies|jiffies_64)|__per_cpu_load|init_per_cpu__.*|__end_rodata_hpage_align|__vvar_page|_end)$\00", align 1, !dbg !54
@ehdr = internal global %struct.Elf64_Ehdr zeroinitializer, align 8, !dbg !156
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot read ELF header: %s\0A\00", align 1, !dbg !93
@.str.6 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1, !dbg !98
@.str.7 = private unnamed_addr constant [14 x i8] c"No ELF magic\0A\00", align 1, !dbg !100
@.str.8 = private unnamed_addr constant [25 x i8] c"Not a %d bit executable\0A\00", align 1, !dbg !105
@.str.9 = private unnamed_addr constant [26 x i8] c"Not a LSB ELF executable\0A\00", align 1, !dbg !110
@.str.10 = private unnamed_addr constant [21 x i8] c"Unknown ELF version\0A\00", align 1, !dbg !115
@shnum = internal global i64 0, align 8, !dbg !189
@shstrndx = internal global i32 0, align 4, !dbg !191
@.str.11 = private unnamed_addr constant [29 x i8] c"Unsupported ELF header type\0A\00", align 1, !dbg !120
@.str.12 = private unnamed_addr constant [12 x i8] c"Not for %s\0A\00", align 1, !dbg !125
@.str.13 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1, !dbg !130
@.str.14 = private unnamed_addr constant [21 x i8] c"Bad ELF header size\0A\00", align 1, !dbg !135
@.str.15 = private unnamed_addr constant [26 x i8] c"Bad program header entry\0A\00", align 1, !dbg !137
@.str.16 = private unnamed_addr constant [26 x i8] c"Bad section header entry\0A\00", align 1, !dbg !139
@.str.17 = private unnamed_addr constant [24 x i8] c"Seek to %lu failed: %s\0A\00", align 1, !dbg !141
@.str.18 = private unnamed_addr constant [44 x i8] c"Cannot read initial ELF section header: %s\0A\00", align 1, !dbg !146
@.str.19 = private unnamed_addr constant [34 x i8] c"String table index out of bounds\0A\00", align 1, !dbg !151
@secs = internal global ptr null, align 8, !dbg !200
@.str.20 = private unnamed_addr constant [40 x i8] c"Unable to allocate %ld section headers\0A\00", align 1, !dbg !193
@.str.21 = private unnamed_addr constant [44 x i8] c"Cannot read ELF section headers %d/%ld: %s\0A\00", align 1, !dbg !198
@.str.22 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for strtab failed\0A\00", align 1, !dbg !246
@.str.23 = private unnamed_addr constant [30 x i8] c"Cannot read symbol table: %s\0A\00", align 1, !dbg !251
@.str.24 = private unnamed_addr constant [40 x i8] c"malloc of %lu bytes for xsymtab failed\0A\00", align 1, !dbg !256
@.str.25 = private unnamed_addr constant [39 x i8] c"Cannot read extended symbol table: %s\0A\00", align 1, !dbg !258
@shxsymtabndx = internal global i32 0, align 4, !dbg !262
@.str.26 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for symtab failed\0A\00", align 1, !dbg !260
@shsymtabndx = internal global i32 0, align 4, !dbg !264
@.str.27 = private unnamed_addr constant [39 x i8] c"malloc of %lu bytes for relocs failed\0A\00", align 1, !dbg !266
@.str.28 = private unnamed_addr constant [14 x i8] c".data..percpu\00", align 1, !dbg !268
@.str.29 = private unnamed_addr constant [15 x i8] c"__per_cpu_load\00", align 1, !dbg !270
@.str.30 = private unnamed_addr constant [27 x i8] c"can't find __per_cpu_load\0A\00", align 1, !dbg !275
@per_cpu_shndx = internal global i32 -1, align 4, !dbg !289
@per_cpu_load_addr = internal global i64 0, align 8, !dbg !291
@.str.31 = private unnamed_addr constant [9 x i8] c"<noname>\00", align 1, !dbg !280
@.str.32 = private unnamed_addr constant [9 x i8] c"ABSOLUTE\00", align 1, !dbg !285
@.str.33 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1, !dbg !287
@.str.34 = private unnamed_addr constant [35 x i8] c"%5d %016lx %5ld %10s %10s %12s %s\0A\00", align 1, !dbg !293
@.str.35 = private unnamed_addr constant [18 x i8] c"Absolute symbols\0A\00", align 1, !dbg !298
@.str.36 = private unnamed_addr constant [62 x i8] c" Num:    Value Size  Type       Bind        Visibility  Name\0A\00", align 1, !dbg !303
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !308
@sym_type.type_name = internal global [7 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], align 16, !dbg !333
@.str.38 = private unnamed_addr constant [11 x i8] c"STT_NOTYPE\00", align 1, !dbg !313
@.str.39 = private unnamed_addr constant [11 x i8] c"STT_OBJECT\00", align 1, !dbg !318
@.str.40 = private unnamed_addr constant [9 x i8] c"STT_FUNC\00", align 1, !dbg !320
@.str.41 = private unnamed_addr constant [12 x i8] c"STT_SECTION\00", align 1, !dbg !322
@.str.42 = private unnamed_addr constant [9 x i8] c"STT_FILE\00", align 1, !dbg !324
@.str.43 = private unnamed_addr constant [11 x i8] c"STT_COMMON\00", align 1, !dbg !326
@.str.44 = private unnamed_addr constant [8 x i8] c"STT_TLS\00", align 1, !dbg !328
@.str.45 = private unnamed_addr constant [22 x i8] c"unknown sym type name\00", align 1, !dbg !342
@sym_bind.bind_name = internal global [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48], align 16, !dbg !356
@.str.46 = private unnamed_addr constant [10 x i8] c"STB_LOCAL\00", align 1, !dbg !347
@.str.47 = private unnamed_addr constant [11 x i8] c"STB_GLOBAL\00", align 1, !dbg !352
@.str.48 = private unnamed_addr constant [9 x i8] c"STB_WEAK\00", align 1, !dbg !354
@.str.49 = private unnamed_addr constant [22 x i8] c"unknown sym bind name\00", align 1, !dbg !363
@sym_visibility.visibility_name = internal global [4 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], align 16, !dbg !376
@.str.50 = private unnamed_addr constant [12 x i8] c"STV_DEFAULT\00", align 1, !dbg !365
@.str.51 = private unnamed_addr constant [13 x i8] c"STV_INTERNAL\00", align 1, !dbg !367
@.str.52 = private unnamed_addr constant [11 x i8] c"STV_HIDDEN\00", align 1, !dbg !372
@.str.53 = private unnamed_addr constant [14 x i8] c"STV_PROTECTED\00", align 1, !dbg !374
@.str.54 = private unnamed_addr constant [28 x i8] c"unknown sym visibility name\00", align 1, !dbg !383
@.str.55 = private unnamed_addr constant [31 x i8] c"%016lx %016lx %10s %016lx  %s\0A\00", align 1, !dbg !385
@.str.56 = private unnamed_addr constant [39 x i8] c"WARNING: Absolute relocations present\0A\00", align 1, !dbg !390
@.str.57 = private unnamed_addr constant [49 x i8] c"Offset     Info     Type     Sym.Value Sym.Name\0A\00", align 1, !dbg !392
@rel_type.type_name = internal global [25 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.74], align 16, !dbg !434
@.str.58 = private unnamed_addr constant [14 x i8] c"R_X86_64_NONE\00", align 1, !dbg !397
@.str.59 = private unnamed_addr constant [12 x i8] c"R_X86_64_64\00", align 1, !dbg !399
@.str.60 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC32\00", align 1, !dbg !401
@.str.61 = private unnamed_addr constant [15 x i8] c"R_X86_64_GOT32\00", align 1, !dbg !403
@.str.62 = private unnamed_addr constant [15 x i8] c"R_X86_64_PLT32\00", align 1, !dbg !405
@.str.63 = private unnamed_addr constant [14 x i8] c"R_X86_64_COPY\00", align 1, !dbg !407
@.str.64 = private unnamed_addr constant [18 x i8] c"R_X86_64_GLOB_DAT\00", align 1, !dbg !409
@.str.65 = private unnamed_addr constant [19 x i8] c"R_X86_64_JUMP_SLOT\00", align 1, !dbg !411
@.str.66 = private unnamed_addr constant [18 x i8] c"R_X86_64_RELATIVE\00", align 1, !dbg !416
@.str.67 = private unnamed_addr constant [18 x i8] c"R_X86_64_GOTPCREL\00", align 1, !dbg !418
@.str.68 = private unnamed_addr constant [12 x i8] c"R_X86_64_32\00", align 1, !dbg !420
@.str.69 = private unnamed_addr constant [13 x i8] c"R_X86_64_32S\00", align 1, !dbg !422
@.str.70 = private unnamed_addr constant [12 x i8] c"R_X86_64_16\00", align 1, !dbg !424
@.str.71 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC16\00", align 1, !dbg !426
@.str.72 = private unnamed_addr constant [11 x i8] c"R_X86_64_8\00", align 1, !dbg !428
@.str.73 = private unnamed_addr constant [13 x i8] c"R_X86_64_PC8\00", align 1, !dbg !430
@.str.74 = private unnamed_addr constant [14 x i8] c"R_X86_64_PC64\00", align 1, !dbg !432
@.str.75 = private unnamed_addr constant [27 x i8] c"unknown type rel type name\00", align 1, !dbg !441
@.str.76 = private unnamed_addr constant [48 x i8] c"reloc section\09reloc type\09symbol\09symbol section\0A\00", align 1, !dbg !443
@.str.77 = private unnamed_addr constant [13 x i8] c"%s\09%s\09%s\09%s\0A\00", align 1, !dbg !448
@.str.78 = private unnamed_addr constant [43 x i8] c"--realmode not valid for a 64-bit ELF file\00", align 1, !dbg !450
@relocs16 = internal global %struct.relocs zeroinitializer, align 8, !dbg !490
@.str.79 = private unnamed_addr constant [56 x i8] c"Segment relocations found but --realmode not specified\0A\00", align 1, !dbg !455
@relocs32 = internal global %struct.relocs zeroinitializer, align 8, !dbg !498
@relocs32neg = internal global %struct.relocs zeroinitializer, align 8, !dbg !500
@relocs64 = internal global %struct.relocs zeroinitializer, align 8, !dbg !502
@.str.80 = private unnamed_addr constant [28 x i8] c".section \22.data.reloc\22,\22a\22\0A\00", align 1, !dbg !460
@.str.81 = private unnamed_addr constant [11 x i8] c".balign 4\0A\00", align 1, !dbg !462
@stdout = external global ptr, align 8
@.str.82 = private unnamed_addr constant [60 x i8] c"Invalid R_X86_64_PC64 relocation against per-CPU symbol %s\0A\00", align 1, !dbg !464
@.str.83 = private unnamed_addr constant [36 x i8] c"Invalid absolute %s relocation: %s\0A\00", align 1, !dbg !469
@.str.84 = private unnamed_addr constant [42 x i8] c"Relocation offset doesn't fit in 32 bits\0A\00", align 1, !dbg !474
@.str.85 = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1, !dbg !479
@.str.86 = private unnamed_addr constant [13 x i8] c"__init_begin\00", align 1, !dbg !484
@.str.87 = private unnamed_addr constant [14 x i8] c"init_per_cpu_\00", align 1, !dbg !486
@.str.88 = private unnamed_addr constant [42 x i8] c"realloc of %ld entries for relocs failed\0A\00", align 1, !dbg !488
@.str.89 = private unnamed_addr constant [15 x i8] c"\09.long 0x%08x\0A\00", align 1, !dbg !504

; Function Attrs: nounwind uwtable
define dso_local void @process_64(ptr noundef %fp, i32 noundef %use_real_mode, i32 noundef %as_text, i32 noundef %show_absolute_syms, i32 noundef %show_absolute_relocs, i32 noundef %show_reloc_info) #0 !dbg !513 {
entry:
  %fp.addr = alloca ptr, align 8
  %use_real_mode.addr = alloca i32, align 4
  %as_text.addr = alloca i32, align 4
  %show_absolute_syms.addr = alloca i32, align 4
  %show_absolute_relocs.addr = alloca i32, align 4
  %show_reloc_info.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !571, metadata !DIExpression()), !dbg !581
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !572, metadata !DIExpression()), !dbg !584
  store i32 %as_text, ptr %as_text.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %as_text.addr, metadata !573, metadata !DIExpression()), !dbg !585
  store i32 %show_absolute_syms, ptr %show_absolute_syms.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %show_absolute_syms.addr, metadata !574, metadata !DIExpression()), !dbg !586
  store i32 %show_absolute_relocs, ptr %show_absolute_relocs.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %show_absolute_relocs.addr, metadata !575, metadata !DIExpression()), !dbg !587
  store i32 %show_reloc_info, ptr %show_reloc_info.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %show_reloc_info.addr, metadata !576, metadata !DIExpression()), !dbg !588
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !589, !tbaa !582
  call void @regex_init(i32 noundef %0), !dbg !590
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !591, !tbaa !577
  call void @read_ehdr(ptr noundef %1), !dbg !592
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !593, !tbaa !577
  call void @read_shdrs(ptr noundef %2), !dbg !594
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !595, !tbaa !577
  call void @read_strtabs(ptr noundef %3), !dbg !596
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !597, !tbaa !577
  call void @read_symtabs(ptr noundef %4), !dbg !598
  %5 = load ptr, ptr %fp.addr, align 8, !dbg !599, !tbaa !577
  call void @read_relocs(ptr noundef %5), !dbg !600
  call void @percpu_init(), !dbg !601
  %6 = load i32, ptr %show_absolute_syms.addr, align 4, !dbg !603, !tbaa !582
  %tobool = icmp ne i32 %6, 0, !dbg !603
  br i1 %tobool, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  call void @print_absolute_symbols(), !dbg !606
  br label %return, !dbg !608

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %show_absolute_relocs.addr, align 4, !dbg !609, !tbaa !582
  %tobool1 = icmp ne i32 %7, 0, !dbg !609
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !611

if.then2:                                         ; preds = %if.end
  call void @print_absolute_relocs(), !dbg !612
  br label %return, !dbg !614

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %show_reloc_info.addr, align 4, !dbg !615, !tbaa !582
  %tobool4 = icmp ne i32 %8, 0, !dbg !615
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !617

if.then5:                                         ; preds = %if.end3
  call void @print_reloc_info(), !dbg !618
  br label %return, !dbg !620

if.end6:                                          ; preds = %if.end3
  %9 = load i32, ptr %as_text.addr, align 4, !dbg !621, !tbaa !582
  %10 = load i32, ptr %use_real_mode.addr, align 4, !dbg !622, !tbaa !582
  call void @emit_relocs(i32 noundef %9, i32 noundef %10), !dbg !623
  br label %return, !dbg !624

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  ret void, !dbg !624
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @regex_init(i32 noundef %use_real_mode) #0 !dbg !625 {
entry:
  %use_real_mode.addr = alloca i32, align 4
  %errbuf = alloca [128 x i8], align 16
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !629, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 128, ptr %errbuf) #12, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %errbuf, metadata !630, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %err, metadata !634, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %i, metadata !635, metadata !DIExpression()), !dbg !642
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !643, !tbaa !582
  %tobool = icmp ne i32 %0, 0, !dbg !643
  br i1 %tobool, label %if.then, label %if.else, !dbg !645

if.then:                                          ; preds = %entry
  store ptr @sym_regex_realmode, ptr @sym_regex, align 8, !dbg !646, !tbaa !577
  br label %if.end, !dbg !647

if.else:                                          ; preds = %entry
  store ptr @sym_regex_kernel, ptr @sym_regex, align 8, !dbg !648, !tbaa !577
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !dbg !649, !tbaa !582
  br label %for.cond, !dbg !651

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !652, !tbaa !582
  %cmp = icmp slt i32 %1, 4, !dbg !654
  br i1 %cmp, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @sym_regex, align 8, !dbg !656, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !659, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !656
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !656
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !656, !tbaa !577
  %tobool1 = icmp ne ptr %4, null, !dbg !656
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !660

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !661

if.end3:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !662, !tbaa !582
  %idxprom4 = sext i32 %5 to i64, !dbg !663
  %arrayidx5 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom4, !dbg !663
  %6 = load ptr, ptr @sym_regex, align 8, !dbg !664, !tbaa !577
  %7 = load i32, ptr %i, align 4, !dbg !665, !tbaa !582
  %idxprom6 = sext i32 %7 to i64, !dbg !664
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 %idxprom6, !dbg !664
  %8 = load ptr, ptr %arrayidx7, align 8, !dbg !664, !tbaa !577
  %call = call i32 @regcomp(ptr noundef %arrayidx5, ptr noundef %8, i32 noundef 9), !dbg !666
  store i32 %call, ptr %err, align 4, !dbg !667, !tbaa !582
  %9 = load i32, ptr %err, align 4, !dbg !668, !tbaa !582
  %tobool8 = icmp ne i32 %9, 0, !dbg !668
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !670

if.then9:                                         ; preds = %if.end3
  %10 = load i32, ptr %err, align 4, !dbg !671, !tbaa !582
  %11 = load i32, ptr %i, align 4, !dbg !673, !tbaa !582
  %idxprom10 = sext i32 %11 to i64, !dbg !674
  %arrayidx11 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom10, !dbg !674
  %arraydecay = getelementptr inbounds [128 x i8], ptr %errbuf, i64 0, i64 0, !dbg !675
  %call12 = call i64 @regerror(i32 noundef %10, ptr noundef %arrayidx11, ptr noundef %arraydecay, i64 noundef 128), !dbg !676
  %arraydecay13 = getelementptr inbounds [128 x i8], ptr %errbuf, i64 0, i64 0, !dbg !677
  call void (ptr, ...) @die(ptr noundef @.str, ptr noundef %arraydecay13) #13, !dbg !678
  unreachable, !dbg !678

if.end14:                                         ; preds = %if.end3
  br label %for.inc, !dbg !679

for.inc:                                          ; preds = %if.end14, %if.then2
  %12 = load i32, ptr %i, align 4, !dbg !680, !tbaa !582
  %inc = add nsw i32 %12, 1, !dbg !680
  store i32 %inc, ptr %i, align 4, !dbg !680, !tbaa !582
  br label %for.cond, !dbg !681, !llvm.loop !682

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !686
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !686
  call void @llvm.lifetime.end.p0(i64 128, ptr %errbuf) #12, !dbg !686
  ret void, !dbg !686
}

; Function Attrs: nounwind uwtable
define internal void @read_ehdr(ptr noundef %fp) #0 !dbg !687 {
entry:
  %fp.addr = alloca ptr, align 8
  %shdr = alloca %struct.Elf64_Shdr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !691, metadata !DIExpression()), !dbg !695
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !696, !tbaa !577
  %call = call i64 @fread(ptr noundef @ehdr, i64 noundef 64, i64 noundef 1, ptr noundef %0), !dbg !698
  %cmp = icmp ne i64 %call, 1, !dbg !699
  br i1 %cmp, label %if.then, label %if.end, !dbg !700

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #14, !dbg !701
  %1 = load i32, ptr %call1, align 4, !dbg !701, !tbaa !582
  %call2 = call ptr @strerror(i32 noundef %1) #12, !dbg !703
  call void (ptr, ...) @die(ptr noundef @.str.5, ptr noundef %call2) #13, !dbg !704
  unreachable, !dbg !704

if.end:                                           ; preds = %entry
  %call3 = call i32 @memcmp(ptr noundef @ehdr, ptr noundef @.str.6, i64 noundef 4) #15, !dbg !705
  %cmp4 = icmp ne i32 %call3, 0, !dbg !707
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !708

if.then5:                                         ; preds = %if.end
  call void (ptr, ...) @die(ptr noundef @.str.7) #13, !dbg !709
  unreachable, !dbg !709

if.end6:                                          ; preds = %if.end
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 4), align 4, !dbg !711, !tbaa !713
  %conv = zext i8 %2 to i32, !dbg !711
  %cmp7 = icmp ne i32 %conv, 2, !dbg !714
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !715

if.then9:                                         ; preds = %if.end6
  call void (ptr, ...) @die(ptr noundef @.str.8, i32 noundef 64) #13, !dbg !716
  unreachable, !dbg !716

if.end10:                                         ; preds = %if.end6
  %3 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 5), align 1, !dbg !718, !tbaa !713
  %conv11 = zext i8 %3 to i32, !dbg !718
  %cmp12 = icmp ne i32 %conv11, 1, !dbg !720
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !721

if.then14:                                        ; preds = %if.end10
  call void (ptr, ...) @die(ptr noundef @.str.9) #13, !dbg !722
  unreachable, !dbg !722

if.end15:                                         ; preds = %if.end10
  %4 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 6), align 2, !dbg !724, !tbaa !713
  %conv16 = zext i8 %4 to i32, !dbg !724
  %cmp17 = icmp ne i32 %conv16, 1, !dbg !726
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !727

if.then19:                                        ; preds = %if.end15
  call void (ptr, ...) @die(ptr noundef @.str.10) #13, !dbg !728
  unreachable, !dbg !728

if.end20:                                         ; preds = %if.end15
  %5 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 1), align 8, !dbg !730, !tbaa !731
  %call21 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %5), !dbg !730
  store i16 %call21, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 1), align 8, !dbg !735, !tbaa !731
  %6 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !736, !tbaa !737
  %call22 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %6), !dbg !736
  store i16 %call22, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !738, !tbaa !737
  %7 = load i32, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !739, !tbaa !740
  %call23 = call i32 @elf32_to_cpu(i32 noundef %7), !dbg !739
  store i32 %call23, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !741, !tbaa !740
  %8 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 4), align 8, !dbg !742, !tbaa !743
  %call24 = call i64 @elf64_to_cpu(i64 noundef %8), !dbg !742
  store i64 %call24, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 4), align 8, !dbg !744, !tbaa !743
  %9 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 5), align 8, !dbg !745, !tbaa !746
  %call25 = call i64 @elf64_to_cpu(i64 noundef %9), !dbg !745
  store i64 %call25, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 5), align 8, !dbg !747, !tbaa !746
  %10 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !748, !tbaa !749
  %call26 = call i64 @elf64_to_cpu(i64 noundef %10), !dbg !748
  store i64 %call26, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !750, !tbaa !749
  %11 = load i32, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 7), align 8, !dbg !751, !tbaa !752
  %call27 = call i32 @elf32_to_cpu(i32 noundef %11), !dbg !751
  store i32 %call27, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 7), align 8, !dbg !753, !tbaa !752
  %12 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !754, !tbaa !755
  %call28 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %12), !dbg !754
  store i16 %call28, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !756, !tbaa !755
  %13 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !757, !tbaa !758
  %call29 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %13), !dbg !757
  store i16 %call29, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !759, !tbaa !758
  %14 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 10), align 8, !dbg !760, !tbaa !761
  %call30 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %14), !dbg !760
  store i16 %call30, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 10), align 8, !dbg !762, !tbaa !761
  %15 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !763, !tbaa !764
  %call31 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %15), !dbg !763
  store i16 %call31, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !765, !tbaa !764
  %16 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !766, !tbaa !767
  %call32 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %16), !dbg !766
  store i16 %call32, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !768, !tbaa !767
  %17 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !769, !tbaa !770
  %call33 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %17), !dbg !769
  store i16 %call33, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !771, !tbaa !770
  %18 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !772, !tbaa !767
  %conv34 = zext i16 %18 to i64, !dbg !773
  store i64 %conv34, ptr @shnum, align 8, !dbg !774, !tbaa !775
  %19 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !776, !tbaa !770
  %conv35 = zext i16 %19 to i32, !dbg !777
  store i32 %conv35, ptr @shstrndx, align 4, !dbg !778, !tbaa !582
  %20 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 1), align 8, !dbg !779, !tbaa !731
  %conv36 = zext i16 %20 to i32, !dbg !781
  %cmp37 = icmp ne i32 %conv36, 2, !dbg !782
  br i1 %cmp37, label %land.lhs.true, label %if.end43, !dbg !783

land.lhs.true:                                    ; preds = %if.end20
  %21 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 1), align 8, !dbg !784, !tbaa !731
  %conv39 = zext i16 %21 to i32, !dbg !785
  %cmp40 = icmp ne i32 %conv39, 3, !dbg !786
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !787

if.then42:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @die(ptr noundef @.str.11) #13, !dbg !788
  unreachable, !dbg !788

if.end43:                                         ; preds = %land.lhs.true, %if.end20
  %22 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !789, !tbaa !737
  %conv44 = zext i16 %22 to i32, !dbg !791
  %cmp45 = icmp ne i32 %conv44, 62, !dbg !792
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !793

if.then47:                                        ; preds = %if.end43
  call void (ptr, ...) @die(ptr noundef @.str.12, ptr noundef @.str.13) #13, !dbg !794
  unreachable, !dbg !794

if.end48:                                         ; preds = %if.end43
  %23 = load i32, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !795, !tbaa !740
  %cmp49 = icmp ne i32 %23, 1, !dbg !797
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !798

if.then51:                                        ; preds = %if.end48
  call void (ptr, ...) @die(ptr noundef @.str.10) #13, !dbg !799
  unreachable, !dbg !799

if.end52:                                         ; preds = %if.end48
  %24 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !800, !tbaa !755
  %conv53 = zext i16 %24 to i64, !dbg !802
  %cmp54 = icmp ne i64 %conv53, 64, !dbg !803
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !804

if.then56:                                        ; preds = %if.end52
  call void (ptr, ...) @die(ptr noundef @.str.14) #13, !dbg !805
  unreachable, !dbg !805

if.end57:                                         ; preds = %if.end52
  %25 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !806, !tbaa !758
  %conv58 = zext i16 %25 to i64, !dbg !808
  %cmp59 = icmp ne i64 %conv58, 56, !dbg !809
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !810

if.then61:                                        ; preds = %if.end57
  call void (ptr, ...) @die(ptr noundef @.str.15) #13, !dbg !811
  unreachable, !dbg !811

if.end62:                                         ; preds = %if.end57
  %26 = load i16, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !812, !tbaa !764
  %conv63 = zext i16 %26 to i64, !dbg !814
  %cmp64 = icmp ne i64 %conv63, 64, !dbg !815
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !816

if.then66:                                        ; preds = %if.end62
  call void (ptr, ...) @die(ptr noundef @.str.16) #13, !dbg !817
  unreachable, !dbg !817

if.end67:                                         ; preds = %if.end62
  %27 = load i64, ptr @shnum, align 8, !dbg !818, !tbaa !775
  %cmp68 = icmp eq i64 %27, 0, !dbg !819
  br i1 %cmp68, label %if.then72, label %lor.lhs.false, !dbg !820

lor.lhs.false:                                    ; preds = %if.end67
  %28 = load i32, ptr @shstrndx, align 4, !dbg !821, !tbaa !582
  %cmp70 = icmp eq i32 %28, 65535, !dbg !822
  br i1 %cmp70, label %if.then72, label %if.end97, !dbg !823

if.then72:                                        ; preds = %lor.lhs.false, %if.end67
  call void @llvm.lifetime.start.p0(i64 64, ptr %shdr) #12, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %shdr, metadata !692, metadata !DIExpression()), !dbg !825
  %29 = load ptr, ptr %fp.addr, align 8, !dbg !826, !tbaa !577
  %30 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !828, !tbaa !749
  %call73 = call i32 @fseek(ptr noundef %29, i64 noundef %30, i32 noundef 0), !dbg !829
  %cmp74 = icmp slt i32 %call73, 0, !dbg !830
  br i1 %cmp74, label %if.then76, label %if.end79, !dbg !831

if.then76:                                        ; preds = %if.then72
  %31 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !832, !tbaa !749
  %call77 = call ptr @__errno_location() #14, !dbg !833
  %32 = load i32, ptr %call77, align 4, !dbg !833, !tbaa !582
  %call78 = call ptr @strerror(i32 noundef %32) #12, !dbg !834
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %31, ptr noundef %call78) #13, !dbg !835
  unreachable, !dbg !835

if.end79:                                         ; preds = %if.then72
  %33 = load ptr, ptr %fp.addr, align 8, !dbg !836, !tbaa !577
  %call80 = call i64 @fread(ptr noundef %shdr, i64 noundef 64, i64 noundef 1, ptr noundef %33), !dbg !838
  %cmp81 = icmp ne i64 %call80, 1, !dbg !839
  br i1 %cmp81, label %if.then83, label %if.end86, !dbg !840

if.then83:                                        ; preds = %if.end79
  %call84 = call ptr @__errno_location() #14, !dbg !841
  %34 = load i32, ptr %call84, align 4, !dbg !841, !tbaa !582
  %call85 = call ptr @strerror(i32 noundef %34) #12, !dbg !842
  call void (ptr, ...) @die(ptr noundef @.str.18, ptr noundef %call85) #13, !dbg !843
  unreachable, !dbg !843

if.end86:                                         ; preds = %if.end79
  %35 = load i64, ptr @shnum, align 8, !dbg !844, !tbaa !775
  %cmp87 = icmp eq i64 %35, 0, !dbg !846
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !847

if.then89:                                        ; preds = %if.end86
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 5, !dbg !848
  %36 = load i64, ptr %sh_size, align 8, !dbg !848, !tbaa !849
  %call90 = call i64 @elf64_to_cpu(i64 noundef %36), !dbg !848
  store i64 %call90, ptr @shnum, align 8, !dbg !851, !tbaa !775
  br label %if.end91, !dbg !852

if.end91:                                         ; preds = %if.then89, %if.end86
  %37 = load i32, ptr @shstrndx, align 4, !dbg !853, !tbaa !582
  %cmp92 = icmp eq i32 %37, 65535, !dbg !855
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !856

if.then94:                                        ; preds = %if.end91
  %sh_link = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 6, !dbg !857
  %38 = load i32, ptr %sh_link, align 8, !dbg !857, !tbaa !858
  %call95 = call i32 @elf32_to_cpu(i32 noundef %38), !dbg !857
  store i32 %call95, ptr @shstrndx, align 4, !dbg !859, !tbaa !582
  br label %if.end96, !dbg !860

if.end96:                                         ; preds = %if.then94, %if.end91
  call void @llvm.lifetime.end.p0(i64 64, ptr %shdr) #12, !dbg !861
  br label %if.end97, !dbg !862

if.end97:                                         ; preds = %if.end96, %lor.lhs.false
  %39 = load i32, ptr @shstrndx, align 4, !dbg !863, !tbaa !582
  %conv98 = zext i32 %39 to i64, !dbg !863
  %40 = load i64, ptr @shnum, align 8, !dbg !865, !tbaa !775
  %cmp99 = icmp uge i64 %conv98, %40, !dbg !866
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !867

if.then101:                                       ; preds = %if.end97
  call void (ptr, ...) @die(ptr noundef @.str.19) #13, !dbg !868
  unreachable, !dbg !868

if.end102:                                        ; preds = %if.end97
  ret void, !dbg !869
}

; Function Attrs: nounwind uwtable
define internal void @read_shdrs(ptr noundef %fp) #0 !dbg !870 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %shdr = alloca %struct.Elf64_Shdr, align 8
  %sec = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !872, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %i, metadata !873, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 64, ptr %shdr) #12, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %shdr, metadata !874, metadata !DIExpression()), !dbg !883
  %0 = load i64, ptr @shnum, align 8, !dbg !884, !tbaa !775
  %call = call noalias ptr @calloc(i64 noundef %0, i64 noundef 104) #16, !dbg !885
  store ptr %call, ptr @secs, align 8, !dbg !886, !tbaa !577
  %1 = load ptr, ptr @secs, align 8, !dbg !887, !tbaa !577
  %tobool = icmp ne ptr %1, null, !dbg !887
  br i1 %tobool, label %if.end, label %if.then, !dbg !889

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @shnum, align 8, !dbg !890, !tbaa !775
  call void (ptr, ...) @die(ptr noundef @.str.20, i64 noundef %2) #13, !dbg !892
  unreachable, !dbg !892

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !893, !tbaa !577
  %4 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !895, !tbaa !749
  %call1 = call i32 @fseek(ptr noundef %3, i64 noundef %4, i32 noundef 0), !dbg !896
  %cmp = icmp slt i32 %call1, 0, !dbg !897
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !898

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr getelementptr inbounds (%struct.Elf64_Ehdr, ptr @ehdr, i32 0, i32 6), align 8, !dbg !899, !tbaa !749
  %call3 = call ptr @__errno_location() #14, !dbg !901
  %6 = load i32, ptr %call3, align 4, !dbg !901, !tbaa !582
  %call4 = call ptr @strerror(i32 noundef %6) #12, !dbg !902
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %5, ptr noundef %call4) #13, !dbg !903
  unreachable, !dbg !903

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !904, !tbaa !582
  br label %for.cond, !dbg !905

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, ptr %i, align 4, !dbg !906, !tbaa !582
  %conv = sext i32 %7 to i64, !dbg !906
  %8 = load i64, ptr @shnum, align 8, !dbg !907, !tbaa !775
  %cmp6 = icmp ult i64 %conv, %8, !dbg !908
  br i1 %cmp6, label %for.body, label %for.end, !dbg !909

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !875, metadata !DIExpression()), !dbg !911
  %9 = load ptr, ptr @secs, align 8, !dbg !912, !tbaa !577
  %10 = load i32, ptr %i, align 4, !dbg !913, !tbaa !582
  %idxprom = sext i32 %10 to i64, !dbg !912
  %arrayidx = getelementptr inbounds %struct.section, ptr %9, i64 %idxprom, !dbg !912
  store ptr %arrayidx, ptr %sec, align 8, !dbg !911, !tbaa !577
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !914, !tbaa !577
  %call8 = call i64 @fread(ptr noundef %shdr, i64 noundef 64, i64 noundef 1, ptr noundef %11), !dbg !916
  %cmp9 = icmp ne i64 %call8, 1, !dbg !917
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !918

if.then11:                                        ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !919, !tbaa !582
  %13 = load i64, ptr @shnum, align 8, !dbg !920, !tbaa !775
  %call12 = call ptr @__errno_location() #14, !dbg !921
  %14 = load i32, ptr %call12, align 4, !dbg !921, !tbaa !582
  %call13 = call ptr @strerror(i32 noundef %14) #12, !dbg !922
  call void (ptr, ...) @die(ptr noundef @.str.21, i32 noundef %12, i64 noundef %13, ptr noundef %call13) #13, !dbg !923
  unreachable, !dbg !923

if.end14:                                         ; preds = %for.body
  %sh_name = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 0, !dbg !924
  %15 = load i32, ptr %sh_name, align 8, !dbg !924, !tbaa !925
  %call15 = call i32 @elf32_to_cpu(i32 noundef %15), !dbg !924
  %16 = load ptr, ptr %sec, align 8, !dbg !926, !tbaa !577
  %shdr16 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !927
  %sh_name17 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr16, i32 0, i32 0, !dbg !928
  store i32 %call15, ptr %sh_name17, align 8, !dbg !929, !tbaa !930
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !932
  %17 = load i32, ptr %sh_type, align 4, !dbg !932, !tbaa !933
  %call18 = call i32 @elf32_to_cpu(i32 noundef %17), !dbg !932
  %18 = load ptr, ptr %sec, align 8, !dbg !934, !tbaa !577
  %shdr19 = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 0, !dbg !935
  %sh_type20 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr19, i32 0, i32 1, !dbg !936
  store i32 %call18, ptr %sh_type20, align 4, !dbg !937, !tbaa !938
  %sh_flags = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 2, !dbg !939
  %19 = load i64, ptr %sh_flags, align 8, !dbg !939, !tbaa !940
  %call21 = call i64 @elf64_to_cpu(i64 noundef %19), !dbg !939
  %20 = load ptr, ptr %sec, align 8, !dbg !941, !tbaa !577
  %shdr22 = getelementptr inbounds %struct.section, ptr %20, i32 0, i32 0, !dbg !942
  %sh_flags23 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr22, i32 0, i32 2, !dbg !943
  store i64 %call21, ptr %sh_flags23, align 8, !dbg !944, !tbaa !945
  %sh_addr = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 3, !dbg !946
  %21 = load i64, ptr %sh_addr, align 8, !dbg !946, !tbaa !947
  %call24 = call i64 @elf64_to_cpu(i64 noundef %21), !dbg !946
  %22 = load ptr, ptr %sec, align 8, !dbg !948, !tbaa !577
  %shdr25 = getelementptr inbounds %struct.section, ptr %22, i32 0, i32 0, !dbg !949
  %sh_addr26 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr25, i32 0, i32 3, !dbg !950
  store i64 %call24, ptr %sh_addr26, align 8, !dbg !951, !tbaa !952
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 4, !dbg !953
  %23 = load i64, ptr %sh_offset, align 8, !dbg !953, !tbaa !954
  %call27 = call i64 @elf64_to_cpu(i64 noundef %23), !dbg !953
  %24 = load ptr, ptr %sec, align 8, !dbg !955, !tbaa !577
  %shdr28 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !956
  %sh_offset29 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr28, i32 0, i32 4, !dbg !957
  store i64 %call27, ptr %sh_offset29, align 8, !dbg !958, !tbaa !959
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 5, !dbg !960
  %25 = load i64, ptr %sh_size, align 8, !dbg !960, !tbaa !849
  %call30 = call i64 @elf64_to_cpu(i64 noundef %25), !dbg !960
  %26 = load ptr, ptr %sec, align 8, !dbg !961, !tbaa !577
  %shdr31 = getelementptr inbounds %struct.section, ptr %26, i32 0, i32 0, !dbg !962
  %sh_size32 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr31, i32 0, i32 5, !dbg !963
  store i64 %call30, ptr %sh_size32, align 8, !dbg !964, !tbaa !965
  %sh_link = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 6, !dbg !966
  %27 = load i32, ptr %sh_link, align 8, !dbg !966, !tbaa !858
  %call33 = call i32 @elf32_to_cpu(i32 noundef %27), !dbg !966
  %28 = load ptr, ptr %sec, align 8, !dbg !967, !tbaa !577
  %shdr34 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !968
  %sh_link35 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr34, i32 0, i32 6, !dbg !969
  store i32 %call33, ptr %sh_link35, align 8, !dbg !970, !tbaa !971
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 7, !dbg !972
  %29 = load i32, ptr %sh_info, align 4, !dbg !972, !tbaa !973
  %call36 = call i32 @elf32_to_cpu(i32 noundef %29), !dbg !972
  %30 = load ptr, ptr %sec, align 8, !dbg !974, !tbaa !577
  %shdr37 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 0, !dbg !975
  %sh_info38 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr37, i32 0, i32 7, !dbg !976
  store i32 %call36, ptr %sh_info38, align 4, !dbg !977, !tbaa !978
  %sh_addralign = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 8, !dbg !979
  %31 = load i64, ptr %sh_addralign, align 8, !dbg !979, !tbaa !980
  %call39 = call i64 @elf64_to_cpu(i64 noundef %31), !dbg !979
  %32 = load ptr, ptr %sec, align 8, !dbg !981, !tbaa !577
  %shdr40 = getelementptr inbounds %struct.section, ptr %32, i32 0, i32 0, !dbg !982
  %sh_addralign41 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr40, i32 0, i32 8, !dbg !983
  store i64 %call39, ptr %sh_addralign41, align 8, !dbg !984, !tbaa !985
  %sh_entsize = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 9, !dbg !986
  %33 = load i64, ptr %sh_entsize, align 8, !dbg !986, !tbaa !987
  %call42 = call i64 @elf64_to_cpu(i64 noundef %33), !dbg !986
  %34 = load ptr, ptr %sec, align 8, !dbg !988, !tbaa !577
  %shdr43 = getelementptr inbounds %struct.section, ptr %34, i32 0, i32 0, !dbg !989
  %sh_entsize44 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr43, i32 0, i32 9, !dbg !990
  store i64 %call42, ptr %sh_entsize44, align 8, !dbg !991, !tbaa !992
  %35 = load ptr, ptr %sec, align 8, !dbg !993, !tbaa !577
  %shdr45 = getelementptr inbounds %struct.section, ptr %35, i32 0, i32 0, !dbg !995
  %sh_link46 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr45, i32 0, i32 6, !dbg !996
  %36 = load i32, ptr %sh_link46, align 8, !dbg !996, !tbaa !971
  %conv47 = zext i32 %36 to i64, !dbg !993
  %37 = load i64, ptr @shnum, align 8, !dbg !997, !tbaa !775
  %cmp48 = icmp ult i64 %conv47, %37, !dbg !998
  br i1 %cmp48, label %if.then50, label %if.end55, !dbg !999

if.then50:                                        ; preds = %if.end14
  %38 = load ptr, ptr @secs, align 8, !dbg !1000, !tbaa !577
  %39 = load ptr, ptr %sec, align 8, !dbg !1001, !tbaa !577
  %shdr51 = getelementptr inbounds %struct.section, ptr %39, i32 0, i32 0, !dbg !1002
  %sh_link52 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr51, i32 0, i32 6, !dbg !1003
  %40 = load i32, ptr %sh_link52, align 8, !dbg !1003, !tbaa !971
  %idxprom53 = zext i32 %40 to i64, !dbg !1000
  %arrayidx54 = getelementptr inbounds %struct.section, ptr %38, i64 %idxprom53, !dbg !1000
  %41 = load ptr, ptr %sec, align 8, !dbg !1004, !tbaa !577
  %link = getelementptr inbounds %struct.section, ptr %41, i32 0, i32 1, !dbg !1005
  store ptr %arrayidx54, ptr %link, align 8, !dbg !1006, !tbaa !1007
  br label %if.end55, !dbg !1004

if.end55:                                         ; preds = %if.then50, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1008
  br label %for.inc, !dbg !1009

for.inc:                                          ; preds = %if.end55
  %42 = load i32, ptr %i, align 4, !dbg !1010, !tbaa !582
  %inc = add nsw i32 %42, 1, !dbg !1010
  store i32 %inc, ptr %i, align 4, !dbg !1010, !tbaa !582
  br label %for.cond, !dbg !1011, !llvm.loop !1012

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr %shdr) #12, !dbg !1014
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1014
  ret void, !dbg !1014
}

; Function Attrs: nounwind uwtable
define internal void @read_strtabs(ptr noundef %fp) #0 !dbg !1015 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1018, metadata !DIExpression()), !dbg !1025
  store i32 0, ptr %i, align 4, !dbg !1026, !tbaa !582
  br label %for.cond, !dbg !1027

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1028, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1028
  %1 = load i64, ptr @shnum, align 8, !dbg !1029, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1030
  br i1 %cmp, label %for.body, label %for.end, !dbg !1031

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1019, metadata !DIExpression()), !dbg !1033
  %2 = load ptr, ptr @secs, align 8, !dbg !1034, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !1035, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !1034
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1034
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1033, !tbaa !577
  %4 = load ptr, ptr %sec, align 8, !dbg !1036, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1038
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1039
  %5 = load i32, ptr %sh_type, align 4, !dbg !1039, !tbaa !938
  %cmp2 = icmp ne i32 %5, 3, !dbg !1040
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1041

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1042

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1044, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1045
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !1046
  %7 = load i64, ptr %sh_size, align 8, !dbg !1046, !tbaa !965
  %call = call noalias ptr @malloc(i64 noundef %7) #17, !dbg !1047
  %8 = load ptr, ptr %sec, align 8, !dbg !1048, !tbaa !577
  %strtab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 5, !dbg !1049
  store ptr %call, ptr %strtab, align 8, !dbg !1050, !tbaa !1051
  %9 = load ptr, ptr %sec, align 8, !dbg !1052, !tbaa !577
  %strtab5 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 5, !dbg !1054
  %10 = load ptr, ptr %strtab5, align 8, !dbg !1054, !tbaa !1051
  %tobool = icmp ne ptr %10, null, !dbg !1052
  br i1 %tobool, label %if.end9, label %if.then6, !dbg !1055

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %sec, align 8, !dbg !1056, !tbaa !577
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1058
  %sh_size8 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr7, i32 0, i32 5, !dbg !1059
  %12 = load i64, ptr %sh_size8, align 8, !dbg !1059, !tbaa !965
  call void (ptr, ...) @die(ptr noundef @.str.22, i64 noundef %12) #13, !dbg !1060
  unreachable, !dbg !1060

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1061, !tbaa !577
  %14 = load ptr, ptr %sec, align 8, !dbg !1063, !tbaa !577
  %shdr10 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1064
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr10, i32 0, i32 4, !dbg !1065
  %15 = load i64, ptr %sh_offset, align 8, !dbg !1065, !tbaa !959
  %call11 = call i32 @fseek(ptr noundef %13, i64 noundef %15, i32 noundef 0), !dbg !1066
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1067
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !1068

if.then14:                                        ; preds = %if.end9
  %16 = load ptr, ptr %sec, align 8, !dbg !1069, !tbaa !577
  %shdr15 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1071
  %sh_offset16 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr15, i32 0, i32 4, !dbg !1072
  %17 = load i64, ptr %sh_offset16, align 8, !dbg !1072, !tbaa !959
  %call17 = call ptr @__errno_location() #14, !dbg !1073
  %18 = load i32, ptr %call17, align 4, !dbg !1073, !tbaa !582
  %call18 = call ptr @strerror(i32 noundef %18) #12, !dbg !1074
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %17, ptr noundef %call18) #13, !dbg !1075
  unreachable, !dbg !1075

if.end19:                                         ; preds = %if.end9
  %19 = load ptr, ptr %sec, align 8, !dbg !1076, !tbaa !577
  %strtab20 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 5, !dbg !1078
  %20 = load ptr, ptr %strtab20, align 8, !dbg !1078, !tbaa !1051
  %21 = load ptr, ptr %sec, align 8, !dbg !1079, !tbaa !577
  %shdr21 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1080
  %sh_size22 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr21, i32 0, i32 5, !dbg !1081
  %22 = load i64, ptr %sh_size22, align 8, !dbg !1081, !tbaa !965
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1082, !tbaa !577
  %call23 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %22, ptr noundef %23), !dbg !1083
  %24 = load ptr, ptr %sec, align 8, !dbg !1084, !tbaa !577
  %shdr24 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1085
  %sh_size25 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr24, i32 0, i32 5, !dbg !1086
  %25 = load i64, ptr %sh_size25, align 8, !dbg !1086, !tbaa !965
  %cmp26 = icmp ne i64 %call23, %25, !dbg !1087
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1088

if.then28:                                        ; preds = %if.end19
  %call29 = call ptr @__errno_location() #14, !dbg !1089
  %26 = load i32, ptr %call29, align 4, !dbg !1089, !tbaa !582
  %call30 = call ptr @strerror(i32 noundef %26) #12, !dbg !1091
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call30) #13, !dbg !1092
  unreachable, !dbg !1092

if.end31:                                         ; preds = %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1093
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1093
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1094

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load i32, ptr %i, align 4, !dbg !1095, !tbaa !582
  %inc = add nsw i32 %27, 1, !dbg !1095
  store i32 %inc, ptr %i, align 4, !dbg !1095, !tbaa !582
  br label %for.cond, !dbg !1096, !llvm.loop !1097

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1099
  ret void, !dbg !1099

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @read_symtabs(ptr noundef %fp) #0 !dbg !1100 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sec = alloca ptr, align 8
  %num_syms = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sym = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1102, metadata !DIExpression()), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1103, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1104, metadata !DIExpression()), !dbg !1118
  store i32 0, ptr %i, align 4, !dbg !1119, !tbaa !582
  br label %for.cond, !dbg !1120

for.cond:                                         ; preds = %for.inc80, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1121, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1121
  %1 = load i64, ptr @shnum, align 8, !dbg !1122, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1123
  br i1 %cmp, label %for.body, label %for.end82, !dbg !1124

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1105, metadata !DIExpression()), !dbg !1126
  %2 = load ptr, ptr @secs, align 8, !dbg !1127, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !1128, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !1127
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1127
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1126, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_syms) #12, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %num_syms, metadata !1109, metadata !DIExpression()), !dbg !1130
  %4 = load ptr, ptr %sec, align 8, !dbg !1131, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1132
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1133
  %5 = load i32, ptr %sh_type, align 4, !dbg !1133, !tbaa !938
  switch i32 %5, label %sw.default [
    i32 18, label %sw.bb
    i32 2, label %sw.bb28
  ], !dbg !1134

sw.bb:                                            ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1135, !tbaa !577
  %shdr2 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1136
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr2, i32 0, i32 5, !dbg !1137
  %7 = load i64, ptr %sh_size, align 8, !dbg !1137, !tbaa !965
  %call = call noalias ptr @malloc(i64 noundef %7) #17, !dbg !1138
  %8 = load ptr, ptr %sec, align 8, !dbg !1139, !tbaa !577
  %xsymtab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 3, !dbg !1140
  store ptr %call, ptr %xsymtab, align 8, !dbg !1141, !tbaa !1142
  %9 = load ptr, ptr %sec, align 8, !dbg !1143, !tbaa !577
  %xsymtab3 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 3, !dbg !1145
  %10 = load ptr, ptr %xsymtab3, align 8, !dbg !1145, !tbaa !1142
  %tobool = icmp ne ptr %10, null, !dbg !1143
  br i1 %tobool, label %if.end, label %if.then, !dbg !1146

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %sec, align 8, !dbg !1147, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1149
  %sh_size5 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !1150
  %12 = load i64, ptr %sh_size5, align 8, !dbg !1150, !tbaa !965
  call void (ptr, ...) @die(ptr noundef @.str.24, i64 noundef %12) #13, !dbg !1151
  unreachable, !dbg !1151

if.end:                                           ; preds = %sw.bb
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1152, !tbaa !577
  %14 = load ptr, ptr %sec, align 8, !dbg !1154, !tbaa !577
  %shdr6 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1155
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr6, i32 0, i32 4, !dbg !1156
  %15 = load i64, ptr %sh_offset, align 8, !dbg !1156, !tbaa !959
  %call7 = call i32 @fseek(ptr noundef %13, i64 noundef %15, i32 noundef 0), !dbg !1157
  %cmp8 = icmp slt i32 %call7, 0, !dbg !1158
  br i1 %cmp8, label %if.then10, label %if.end15, !dbg !1159

if.then10:                                        ; preds = %if.end
  %16 = load ptr, ptr %sec, align 8, !dbg !1160, !tbaa !577
  %shdr11 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1162
  %sh_offset12 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr11, i32 0, i32 4, !dbg !1163
  %17 = load i64, ptr %sh_offset12, align 8, !dbg !1163, !tbaa !959
  %call13 = call ptr @__errno_location() #14, !dbg !1164
  %18 = load i32, ptr %call13, align 4, !dbg !1164, !tbaa !582
  %call14 = call ptr @strerror(i32 noundef %18) #12, !dbg !1165
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %17, ptr noundef %call14) #13, !dbg !1166
  unreachable, !dbg !1166

if.end15:                                         ; preds = %if.end
  %19 = load ptr, ptr %sec, align 8, !dbg !1167, !tbaa !577
  %xsymtab16 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 3, !dbg !1169
  %20 = load ptr, ptr %xsymtab16, align 8, !dbg !1169, !tbaa !1142
  %21 = load ptr, ptr %sec, align 8, !dbg !1170, !tbaa !577
  %shdr17 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1171
  %sh_size18 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr17, i32 0, i32 5, !dbg !1172
  %22 = load i64, ptr %sh_size18, align 8, !dbg !1172, !tbaa !965
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1173, !tbaa !577
  %call19 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %22, ptr noundef %23), !dbg !1174
  %24 = load ptr, ptr %sec, align 8, !dbg !1175, !tbaa !577
  %shdr20 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1176
  %sh_size21 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr20, i32 0, i32 5, !dbg !1177
  %25 = load i64, ptr %sh_size21, align 8, !dbg !1177, !tbaa !965
  %cmp22 = icmp ne i64 %call19, %25, !dbg !1178
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !1179

if.then24:                                        ; preds = %if.end15
  %call25 = call ptr @__errno_location() #14, !dbg !1180
  %26 = load i32, ptr %call25, align 4, !dbg !1180, !tbaa !582
  %call26 = call ptr @strerror(i32 noundef %26) #12, !dbg !1182
  call void (ptr, ...) @die(ptr noundef @.str.25, ptr noundef %call26) #13, !dbg !1183
  unreachable, !dbg !1183

if.end27:                                         ; preds = %if.end15
  %27 = load i32, ptr %i, align 4, !dbg !1184, !tbaa !582
  store i32 %27, ptr @shxsymtabndx, align 4, !dbg !1185, !tbaa !582
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

sw.bb28:                                          ; preds = %for.body
  %28 = load ptr, ptr %sec, align 8, !dbg !1187, !tbaa !577
  %shdr29 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !1188
  %sh_size30 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr29, i32 0, i32 5, !dbg !1189
  %29 = load i64, ptr %sh_size30, align 8, !dbg !1189, !tbaa !965
  %div = udiv i64 %29, 24, !dbg !1190
  %conv31 = trunc i64 %div to i32, !dbg !1187
  store i32 %conv31, ptr %num_syms, align 4, !dbg !1191, !tbaa !582
  %30 = load ptr, ptr %sec, align 8, !dbg !1192, !tbaa !577
  %shdr32 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 0, !dbg !1193
  %sh_size33 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr32, i32 0, i32 5, !dbg !1194
  %31 = load i64, ptr %sh_size33, align 8, !dbg !1194, !tbaa !965
  %call34 = call noalias ptr @malloc(i64 noundef %31) #17, !dbg !1195
  %32 = load ptr, ptr %sec, align 8, !dbg !1196, !tbaa !577
  %symtab = getelementptr inbounds %struct.section, ptr %32, i32 0, i32 2, !dbg !1197
  store ptr %call34, ptr %symtab, align 8, !dbg !1198, !tbaa !1199
  %33 = load ptr, ptr %sec, align 8, !dbg !1200, !tbaa !577
  %symtab35 = getelementptr inbounds %struct.section, ptr %33, i32 0, i32 2, !dbg !1202
  %34 = load ptr, ptr %symtab35, align 8, !dbg !1202, !tbaa !1199
  %tobool36 = icmp ne ptr %34, null, !dbg !1200
  br i1 %tobool36, label %if.end40, label %if.then37, !dbg !1203

if.then37:                                        ; preds = %sw.bb28
  %35 = load ptr, ptr %sec, align 8, !dbg !1204, !tbaa !577
  %shdr38 = getelementptr inbounds %struct.section, ptr %35, i32 0, i32 0, !dbg !1206
  %sh_size39 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr38, i32 0, i32 5, !dbg !1207
  %36 = load i64, ptr %sh_size39, align 8, !dbg !1207, !tbaa !965
  call void (ptr, ...) @die(ptr noundef @.str.26, i64 noundef %36) #13, !dbg !1208
  unreachable, !dbg !1208

if.end40:                                         ; preds = %sw.bb28
  %37 = load ptr, ptr %fp.addr, align 8, !dbg !1209, !tbaa !577
  %38 = load ptr, ptr %sec, align 8, !dbg !1211, !tbaa !577
  %shdr41 = getelementptr inbounds %struct.section, ptr %38, i32 0, i32 0, !dbg !1212
  %sh_offset42 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr41, i32 0, i32 4, !dbg !1213
  %39 = load i64, ptr %sh_offset42, align 8, !dbg !1213, !tbaa !959
  %call43 = call i32 @fseek(ptr noundef %37, i64 noundef %39, i32 noundef 0), !dbg !1214
  %cmp44 = icmp slt i32 %call43, 0, !dbg !1215
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !1216

if.then46:                                        ; preds = %if.end40
  %40 = load ptr, ptr %sec, align 8, !dbg !1217, !tbaa !577
  %shdr47 = getelementptr inbounds %struct.section, ptr %40, i32 0, i32 0, !dbg !1219
  %sh_offset48 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr47, i32 0, i32 4, !dbg !1220
  %41 = load i64, ptr %sh_offset48, align 8, !dbg !1220, !tbaa !959
  %call49 = call ptr @__errno_location() #14, !dbg !1221
  %42 = load i32, ptr %call49, align 4, !dbg !1221, !tbaa !582
  %call50 = call ptr @strerror(i32 noundef %42) #12, !dbg !1222
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %41, ptr noundef %call50) #13, !dbg !1223
  unreachable, !dbg !1223

if.end51:                                         ; preds = %if.end40
  %43 = load ptr, ptr %sec, align 8, !dbg !1224, !tbaa !577
  %symtab52 = getelementptr inbounds %struct.section, ptr %43, i32 0, i32 2, !dbg !1226
  %44 = load ptr, ptr %symtab52, align 8, !dbg !1226, !tbaa !1199
  %45 = load ptr, ptr %sec, align 8, !dbg !1227, !tbaa !577
  %shdr53 = getelementptr inbounds %struct.section, ptr %45, i32 0, i32 0, !dbg !1228
  %sh_size54 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr53, i32 0, i32 5, !dbg !1229
  %46 = load i64, ptr %sh_size54, align 8, !dbg !1229, !tbaa !965
  %47 = load ptr, ptr %fp.addr, align 8, !dbg !1230, !tbaa !577
  %call55 = call i64 @fread(ptr noundef %44, i64 noundef 1, i64 noundef %46, ptr noundef %47), !dbg !1231
  %48 = load ptr, ptr %sec, align 8, !dbg !1232, !tbaa !577
  %shdr56 = getelementptr inbounds %struct.section, ptr %48, i32 0, i32 0, !dbg !1233
  %sh_size57 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr56, i32 0, i32 5, !dbg !1234
  %49 = load i64, ptr %sh_size57, align 8, !dbg !1234, !tbaa !965
  %cmp58 = icmp ne i64 %call55, %49, !dbg !1235
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !1236

if.then60:                                        ; preds = %if.end51
  %call61 = call ptr @__errno_location() #14, !dbg !1237
  %50 = load i32, ptr %call61, align 4, !dbg !1237, !tbaa !582
  %call62 = call ptr @strerror(i32 noundef %50) #12, !dbg !1239
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call62) #13, !dbg !1240
  unreachable, !dbg !1240

if.end63:                                         ; preds = %if.end51
  store i32 0, ptr %j, align 4, !dbg !1241, !tbaa !582
  br label %for.cond64, !dbg !1242

for.cond64:                                       ; preds = %for.inc, %if.end63
  %51 = load i32, ptr %j, align 4, !dbg !1243, !tbaa !582
  %52 = load i32, ptr %num_syms, align 4, !dbg !1244, !tbaa !582
  %cmp65 = icmp slt i32 %51, %52, !dbg !1245
  br i1 %cmp65, label %for.body67, label %for.end, !dbg !1246

for.body67:                                       ; preds = %for.cond64
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1110, metadata !DIExpression()), !dbg !1248
  %53 = load ptr, ptr %sec, align 8, !dbg !1249, !tbaa !577
  %symtab68 = getelementptr inbounds %struct.section, ptr %53, i32 0, i32 2, !dbg !1250
  %54 = load ptr, ptr %symtab68, align 8, !dbg !1250, !tbaa !1199
  %55 = load i32, ptr %j, align 4, !dbg !1251, !tbaa !582
  %idxprom69 = sext i32 %55 to i64, !dbg !1249
  %arrayidx70 = getelementptr inbounds %struct.Elf64_Sym, ptr %54, i64 %idxprom69, !dbg !1249
  store ptr %arrayidx70, ptr %sym, align 8, !dbg !1248, !tbaa !577
  %56 = load ptr, ptr %sym, align 8, !dbg !1252, !tbaa !577
  %st_name = getelementptr inbounds %struct.Elf64_Sym, ptr %56, i32 0, i32 0, !dbg !1252
  %57 = load i32, ptr %st_name, align 8, !dbg !1252, !tbaa !1253
  %call71 = call i32 @elf32_to_cpu(i32 noundef %57), !dbg !1252
  %58 = load ptr, ptr %sym, align 8, !dbg !1255, !tbaa !577
  %st_name72 = getelementptr inbounds %struct.Elf64_Sym, ptr %58, i32 0, i32 0, !dbg !1256
  store i32 %call71, ptr %st_name72, align 8, !dbg !1257, !tbaa !1253
  %59 = load ptr, ptr %sym, align 8, !dbg !1258, !tbaa !577
  %st_value = getelementptr inbounds %struct.Elf64_Sym, ptr %59, i32 0, i32 4, !dbg !1258
  %60 = load i64, ptr %st_value, align 8, !dbg !1258, !tbaa !1259
  %call73 = call i64 @elf64_to_cpu(i64 noundef %60), !dbg !1258
  %61 = load ptr, ptr %sym, align 8, !dbg !1260, !tbaa !577
  %st_value74 = getelementptr inbounds %struct.Elf64_Sym, ptr %61, i32 0, i32 4, !dbg !1261
  store i64 %call73, ptr %st_value74, align 8, !dbg !1262, !tbaa !1259
  %62 = load ptr, ptr %sym, align 8, !dbg !1263, !tbaa !577
  %st_size = getelementptr inbounds %struct.Elf64_Sym, ptr %62, i32 0, i32 5, !dbg !1263
  %63 = load i64, ptr %st_size, align 8, !dbg !1263, !tbaa !1264
  %call75 = call i64 @elf64_to_cpu(i64 noundef %63), !dbg !1263
  %64 = load ptr, ptr %sym, align 8, !dbg !1265, !tbaa !577
  %st_size76 = getelementptr inbounds %struct.Elf64_Sym, ptr %64, i32 0, i32 5, !dbg !1266
  store i64 %call75, ptr %st_size76, align 8, !dbg !1267, !tbaa !1264
  %65 = load ptr, ptr %sym, align 8, !dbg !1268, !tbaa !577
  %st_shndx = getelementptr inbounds %struct.Elf64_Sym, ptr %65, i32 0, i32 3, !dbg !1268
  %66 = load i16, ptr %st_shndx, align 2, !dbg !1268, !tbaa !1269
  %call77 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %66), !dbg !1268
  %67 = load ptr, ptr %sym, align 8, !dbg !1270, !tbaa !577
  %st_shndx78 = getelementptr inbounds %struct.Elf64_Sym, ptr %67, i32 0, i32 3, !dbg !1271
  store i16 %call77, ptr %st_shndx78, align 2, !dbg !1272, !tbaa !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1273
  br label %for.inc, !dbg !1274

for.inc:                                          ; preds = %for.body67
  %68 = load i32, ptr %j, align 4, !dbg !1275, !tbaa !582
  %inc = add nsw i32 %68, 1, !dbg !1275
  store i32 %inc, ptr %j, align 4, !dbg !1275, !tbaa !582
  br label %for.cond64, !dbg !1276, !llvm.loop !1277

for.end:                                          ; preds = %for.cond64
  %69 = load i32, ptr %i, align 4, !dbg !1279, !tbaa !582
  store i32 %69, ptr @shsymtabndx, align 4, !dbg !1280, !tbaa !582
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

sw.default:                                       ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

cleanup:                                          ; preds = %sw.default, %for.end, %if.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_syms) #12, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1283
  br label %for.inc80

for.inc80:                                        ; preds = %cleanup
  %70 = load i32, ptr %i, align 4, !dbg !1284, !tbaa !582
  %inc81 = add nsw i32 %70, 1, !dbg !1284
  store i32 %inc81, ptr %i, align 4, !dbg !1284, !tbaa !582
  br label %for.cond, !dbg !1285, !llvm.loop !1286

for.end82:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: nounwind uwtable
define internal void @read_relocs(ptr noundef %fp) #0 !dbg !1289 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rel = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1291, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1292, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1293, metadata !DIExpression()), !dbg !1305
  store i32 0, ptr %i, align 4, !dbg !1306, !tbaa !582
  br label %for.cond, !dbg !1307

for.cond:                                         ; preds = %for.inc48, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1308, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1308
  %1 = load i64, ptr @shnum, align 8, !dbg !1309, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1310
  br i1 %cmp, label %for.body, label %for.end50, !dbg !1311

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1294, metadata !DIExpression()), !dbg !1313
  %2 = load ptr, ptr @secs, align 8, !dbg !1314, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !1315, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !1314
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1314
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1313, !tbaa !577
  %4 = load ptr, ptr %sec, align 8, !dbg !1316, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1318
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1319
  %5 = load i32, ptr %sh_type, align 4, !dbg !1319, !tbaa !938
  %cmp2 = icmp ne i32 %5, 4, !dbg !1320
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1321

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1322

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1324, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1325
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !1326
  %7 = load i64, ptr %sh_size, align 8, !dbg !1326, !tbaa !965
  %call = call noalias ptr @malloc(i64 noundef %7) #17, !dbg !1327
  %8 = load ptr, ptr %sec, align 8, !dbg !1328, !tbaa !577
  %reltab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 4, !dbg !1329
  store ptr %call, ptr %reltab, align 8, !dbg !1330, !tbaa !1331
  %9 = load ptr, ptr %sec, align 8, !dbg !1332, !tbaa !577
  %reltab5 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 4, !dbg !1334
  %10 = load ptr, ptr %reltab5, align 8, !dbg !1334, !tbaa !1331
  %tobool = icmp ne ptr %10, null, !dbg !1332
  br i1 %tobool, label %if.end9, label %if.then6, !dbg !1335

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %sec, align 8, !dbg !1336, !tbaa !577
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1338
  %sh_size8 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr7, i32 0, i32 5, !dbg !1339
  %12 = load i64, ptr %sh_size8, align 8, !dbg !1339, !tbaa !965
  call void (ptr, ...) @die(ptr noundef @.str.27, i64 noundef %12) #13, !dbg !1340
  unreachable, !dbg !1340

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1341, !tbaa !577
  %14 = load ptr, ptr %sec, align 8, !dbg !1343, !tbaa !577
  %shdr10 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1344
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr10, i32 0, i32 4, !dbg !1345
  %15 = load i64, ptr %sh_offset, align 8, !dbg !1345, !tbaa !959
  %call11 = call i32 @fseek(ptr noundef %13, i64 noundef %15, i32 noundef 0), !dbg !1346
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1347
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !1348

if.then14:                                        ; preds = %if.end9
  %16 = load ptr, ptr %sec, align 8, !dbg !1349, !tbaa !577
  %shdr15 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1351
  %sh_offset16 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr15, i32 0, i32 4, !dbg !1352
  %17 = load i64, ptr %sh_offset16, align 8, !dbg !1352, !tbaa !959
  %call17 = call ptr @__errno_location() #14, !dbg !1353
  %18 = load i32, ptr %call17, align 4, !dbg !1353, !tbaa !582
  %call18 = call ptr @strerror(i32 noundef %18) #12, !dbg !1354
  call void (ptr, ...) @die(ptr noundef @.str.17, i64 noundef %17, ptr noundef %call18) #13, !dbg !1355
  unreachable, !dbg !1355

if.end19:                                         ; preds = %if.end9
  %19 = load ptr, ptr %sec, align 8, !dbg !1356, !tbaa !577
  %reltab20 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 4, !dbg !1358
  %20 = load ptr, ptr %reltab20, align 8, !dbg !1358, !tbaa !1331
  %21 = load ptr, ptr %sec, align 8, !dbg !1359, !tbaa !577
  %shdr21 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1360
  %sh_size22 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr21, i32 0, i32 5, !dbg !1361
  %22 = load i64, ptr %sh_size22, align 8, !dbg !1361, !tbaa !965
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1362, !tbaa !577
  %call23 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %22, ptr noundef %23), !dbg !1363
  %24 = load ptr, ptr %sec, align 8, !dbg !1364, !tbaa !577
  %shdr24 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1365
  %sh_size25 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr24, i32 0, i32 5, !dbg !1366
  %25 = load i64, ptr %sh_size25, align 8, !dbg !1366, !tbaa !965
  %cmp26 = icmp ne i64 %call23, %25, !dbg !1367
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1368

if.then28:                                        ; preds = %if.end19
  %call29 = call ptr @__errno_location() #14, !dbg !1369
  %26 = load i32, ptr %call29, align 4, !dbg !1369, !tbaa !582
  %call30 = call ptr @strerror(i32 noundef %26) #12, !dbg !1371
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call30) #13, !dbg !1372
  unreachable, !dbg !1372

if.end31:                                         ; preds = %if.end19
  store i32 0, ptr %j, align 4, !dbg !1373, !tbaa !582
  br label %for.cond32, !dbg !1374

for.cond32:                                       ; preds = %for.inc, %if.end31
  %27 = load i32, ptr %j, align 4, !dbg !1375, !tbaa !582
  %conv33 = sext i32 %27 to i64, !dbg !1375
  %28 = load ptr, ptr %sec, align 8, !dbg !1376, !tbaa !577
  %shdr34 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !1377
  %sh_size35 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr34, i32 0, i32 5, !dbg !1378
  %29 = load i64, ptr %sh_size35, align 8, !dbg !1378, !tbaa !965
  %div = udiv i64 %29, 24, !dbg !1379
  %cmp36 = icmp ult i64 %conv33, %div, !dbg !1380
  br i1 %cmp36, label %for.body38, label %for.end, !dbg !1381

for.body38:                                       ; preds = %for.cond32
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !1298, metadata !DIExpression()), !dbg !1383
  %30 = load ptr, ptr %sec, align 8, !dbg !1384, !tbaa !577
  %reltab39 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 4, !dbg !1385
  %31 = load ptr, ptr %reltab39, align 8, !dbg !1385, !tbaa !1331
  %32 = load i32, ptr %j, align 4, !dbg !1386, !tbaa !582
  %idxprom40 = sext i32 %32 to i64, !dbg !1384
  %arrayidx41 = getelementptr inbounds %struct.Elf64_Rela, ptr %31, i64 %idxprom40, !dbg !1384
  store ptr %arrayidx41, ptr %rel, align 8, !dbg !1383, !tbaa !577
  %33 = load ptr, ptr %rel, align 8, !dbg !1387, !tbaa !577
  %r_offset = getelementptr inbounds %struct.Elf64_Rela, ptr %33, i32 0, i32 0, !dbg !1387
  %34 = load i64, ptr %r_offset, align 8, !dbg !1387, !tbaa !1388
  %call42 = call i64 @elf64_to_cpu(i64 noundef %34), !dbg !1387
  %35 = load ptr, ptr %rel, align 8, !dbg !1390, !tbaa !577
  %r_offset43 = getelementptr inbounds %struct.Elf64_Rela, ptr %35, i32 0, i32 0, !dbg !1391
  store i64 %call42, ptr %r_offset43, align 8, !dbg !1392, !tbaa !1388
  %36 = load ptr, ptr %rel, align 8, !dbg !1393, !tbaa !577
  %r_info = getelementptr inbounds %struct.Elf64_Rela, ptr %36, i32 0, i32 1, !dbg !1393
  %37 = load i64, ptr %r_info, align 8, !dbg !1393, !tbaa !1394
  %call44 = call i64 @elf64_to_cpu(i64 noundef %37), !dbg !1393
  %38 = load ptr, ptr %rel, align 8, !dbg !1395, !tbaa !577
  %r_info45 = getelementptr inbounds %struct.Elf64_Rela, ptr %38, i32 0, i32 1, !dbg !1396
  store i64 %call44, ptr %r_info45, align 8, !dbg !1397, !tbaa !1394
  %39 = load ptr, ptr %rel, align 8, !dbg !1398, !tbaa !577
  %r_addend = getelementptr inbounds %struct.Elf64_Rela, ptr %39, i32 0, i32 2, !dbg !1398
  %40 = load i64, ptr %r_addend, align 8, !dbg !1398, !tbaa !1399
  %call46 = call i64 @elf64_to_cpu(i64 noundef %40), !dbg !1398
  %41 = load ptr, ptr %rel, align 8, !dbg !1400, !tbaa !577
  %r_addend47 = getelementptr inbounds %struct.Elf64_Rela, ptr %41, i32 0, i32 2, !dbg !1401
  store i64 %call46, ptr %r_addend47, align 8, !dbg !1402, !tbaa !1399
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !1403
  br label %for.inc, !dbg !1404

for.inc:                                          ; preds = %for.body38
  %42 = load i32, ptr %j, align 4, !dbg !1405, !tbaa !582
  %inc = add nsw i32 %42, 1, !dbg !1405
  store i32 %inc, ptr %j, align 4, !dbg !1405, !tbaa !582
  br label %for.cond32, !dbg !1406, !llvm.loop !1407

for.end:                                          ; preds = %for.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1409
  br label %cleanup, !dbg !1409

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1409
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc48
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc48, !dbg !1410

for.inc48:                                        ; preds = %cleanup.cont, %cleanup
  %43 = load i32, ptr %i, align 4, !dbg !1411, !tbaa !582
  %inc49 = add nsw i32 %43, 1, !dbg !1411
  store i32 %inc49, ptr %i, align 4, !dbg !1411, !tbaa !582
  br label %for.cond, !dbg !1412, !llvm.loop !1413

for.end50:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1415
  ret void, !dbg !1415

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @percpu_init() #0 !dbg !1416 {
entry:
  %i = alloca i32, align 4
  %sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1420, metadata !DIExpression()), !dbg !1426
  store i32 0, ptr %i, align 4, !dbg !1427, !tbaa !582
  br label %for.cond, !dbg !1428

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1429, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1429
  %1 = load i64, ptr @shnum, align 8, !dbg !1430, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1431
  br i1 %cmp, label %for.body, label %for.end, !dbg !1432

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1421, metadata !DIExpression()), !dbg !1434
  %2 = load i32, ptr %i, align 4, !dbg !1435, !tbaa !582
  %call = call ptr @sec_name(i32 noundef %2), !dbg !1437
  %call2 = call i32 @strcmp(ptr noundef %call, ptr noundef @.str.28) #15, !dbg !1438
  %tobool = icmp ne i32 %call2, 0, !dbg !1438
  br i1 %tobool, label %if.then, label %if.end, !dbg !1439

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1440

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr @secs, align 8, !dbg !1441, !tbaa !577
  %4 = load i32, ptr %i, align 4, !dbg !1443, !tbaa !582
  %idxprom = sext i32 %4 to i64, !dbg !1441
  %arrayidx = getelementptr inbounds %struct.section, ptr %3, i64 %idxprom, !dbg !1441
  %shdr = getelementptr inbounds %struct.section, ptr %arrayidx, i32 0, i32 0, !dbg !1444
  %sh_addr = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 3, !dbg !1445
  %5 = load i64, ptr %sh_addr, align 8, !dbg !1445, !tbaa !952
  %cmp3 = icmp ne i64 %5, 0, !dbg !1446
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1447

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1448

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @sym_lookup(ptr noundef @.str.29), !dbg !1449
  store ptr %call7, ptr %sym, align 8, !dbg !1450, !tbaa !577
  %6 = load ptr, ptr %sym, align 8, !dbg !1451, !tbaa !577
  %tobool8 = icmp ne ptr %6, null, !dbg !1451
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1453

if.then9:                                         ; preds = %if.end6
  call void (ptr, ...) @die(ptr noundef @.str.30) #13, !dbg !1454
  unreachable, !dbg !1454

if.end10:                                         ; preds = %if.end6
  %7 = load i32, ptr %i, align 4, !dbg !1455, !tbaa !582
  store i32 %7, ptr @per_cpu_shndx, align 4, !dbg !1456, !tbaa !582
  %8 = load ptr, ptr %sym, align 8, !dbg !1457, !tbaa !577
  %st_value = getelementptr inbounds %struct.Elf64_Sym, ptr %8, i32 0, i32 4, !dbg !1458
  %9 = load i64, ptr %st_value, align 8, !dbg !1458, !tbaa !1259
  store i64 %9, ptr @per_cpu_load_addr, align 8, !dbg !1459, !tbaa !775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1460

cleanup:                                          ; preds = %if.end10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1461
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %10 = load i32, ptr %i, align 4, !dbg !1462, !tbaa !582
  %inc = add nsw i32 %10, 1, !dbg !1462
  store i32 %inc, ptr %i, align 4, !dbg !1462, !tbaa !582
  br label %for.cond, !dbg !1463, !llvm.loop !1464

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1466
  br label %cleanup11, !dbg !1466

cleanup11:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1466
  %cleanup.dest12 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest12, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup11, %cleanup11
  ret void, !dbg !1466

unreachable:                                      ; preds = %cleanup11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_absolute_symbols() #0 !dbg !1467 {
entry:
  %i = alloca i32, align 4
  %format = alloca ptr, align 8
  %sec = alloca ptr, align 8
  %sym_strtab = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sym = alloca ptr, align 8
  %name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1469, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #12, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %format, metadata !1470, metadata !DIExpression()), !dbg !1485
  store ptr @.str.34, ptr %format, align 8, !dbg !1486, !tbaa !577
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.35), !dbg !1488
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.36), !dbg !1489
  store i32 0, ptr %i, align 4, !dbg !1490, !tbaa !582
  br label %for.cond, !dbg !1491

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1492, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1492
  %1 = load i64, ptr @shnum, align 8, !dbg !1493, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1494
  br i1 %cmp, label %for.body, label %for.end36, !dbg !1495

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1471, metadata !DIExpression()), !dbg !1497
  %2 = load ptr, ptr @secs, align 8, !dbg !1498, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !1499, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !1498
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1498
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1497, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !1475, metadata !DIExpression()), !dbg !1501
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1502
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1476, metadata !DIExpression()), !dbg !1503
  %4 = load ptr, ptr %sec, align 8, !dbg !1504, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1506
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1507
  %5 = load i32, ptr %sh_type, align 4, !dbg !1507, !tbaa !938
  %cmp3 = icmp ne i32 %5, 2, !dbg !1508
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1509

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1510

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1512, !tbaa !577
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !1513
  %7 = load ptr, ptr %link, align 8, !dbg !1513, !tbaa !1007
  %strtab = getelementptr inbounds %struct.section, ptr %7, i32 0, i32 5, !dbg !1514
  %8 = load ptr, ptr %strtab, align 8, !dbg !1514, !tbaa !1051
  store ptr %8, ptr %sym_strtab, align 8, !dbg !1515, !tbaa !577
  store i32 0, ptr %j, align 4, !dbg !1516, !tbaa !582
  br label %for.cond5, !dbg !1517

for.cond5:                                        ; preds = %for.inc, %if.end
  %9 = load i32, ptr %j, align 4, !dbg !1518, !tbaa !582
  %conv6 = sext i32 %9 to i64, !dbg !1518
  %10 = load ptr, ptr %sec, align 8, !dbg !1519, !tbaa !577
  %shdr7 = getelementptr inbounds %struct.section, ptr %10, i32 0, i32 0, !dbg !1520
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr7, i32 0, i32 5, !dbg !1521
  %11 = load i64, ptr %sh_size, align 8, !dbg !1521, !tbaa !965
  %div = udiv i64 %11, 24, !dbg !1522
  %cmp8 = icmp ult i64 %conv6, %div, !dbg !1523
  br i1 %cmp8, label %for.body10, label %for.end, !dbg !1524

for.body10:                                       ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1477, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1481, metadata !DIExpression()), !dbg !1528
  %12 = load ptr, ptr %sec, align 8, !dbg !1529, !tbaa !577
  %symtab = getelementptr inbounds %struct.section, ptr %12, i32 0, i32 2, !dbg !1530
  %13 = load ptr, ptr %symtab, align 8, !dbg !1530, !tbaa !1199
  %14 = load i32, ptr %j, align 4, !dbg !1531, !tbaa !582
  %idxprom11 = sext i32 %14 to i64, !dbg !1529
  %arrayidx12 = getelementptr inbounds %struct.Elf64_Sym, ptr %13, i64 %idxprom11, !dbg !1529
  store ptr %arrayidx12, ptr %sym, align 8, !dbg !1532, !tbaa !577
  %15 = load ptr, ptr %sym_strtab, align 8, !dbg !1533, !tbaa !577
  %16 = load ptr, ptr %sym, align 8, !dbg !1534, !tbaa !577
  %call13 = call ptr @sym_name(ptr noundef %15, ptr noundef %16), !dbg !1535
  store ptr %call13, ptr %name, align 8, !dbg !1536, !tbaa !577
  %17 = load ptr, ptr %sym, align 8, !dbg !1537, !tbaa !577
  %st_shndx = getelementptr inbounds %struct.Elf64_Sym, ptr %17, i32 0, i32 3, !dbg !1539
  %18 = load i16, ptr %st_shndx, align 2, !dbg !1539, !tbaa !1269
  %conv14 = zext i16 %18 to i32, !dbg !1537
  %cmp15 = icmp ne i32 %conv14, 65521, !dbg !1540
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1541

if.then17:                                        ; preds = %for.body10
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1542

if.end18:                                         ; preds = %for.body10
  %19 = load ptr, ptr %format, align 8, !dbg !1544, !tbaa !577
  %20 = load i32, ptr %j, align 4, !dbg !1545, !tbaa !582
  %21 = load ptr, ptr %sym, align 8, !dbg !1546, !tbaa !577
  %st_value = getelementptr inbounds %struct.Elf64_Sym, ptr %21, i32 0, i32 4, !dbg !1547
  %22 = load i64, ptr %st_value, align 8, !dbg !1547, !tbaa !1259
  %23 = load ptr, ptr %sym, align 8, !dbg !1548, !tbaa !577
  %st_size = getelementptr inbounds %struct.Elf64_Sym, ptr %23, i32 0, i32 5, !dbg !1549
  %24 = load i64, ptr %st_size, align 8, !dbg !1549, !tbaa !1264
  %25 = load ptr, ptr %sym, align 8, !dbg !1550, !tbaa !577
  %st_info = getelementptr inbounds %struct.Elf64_Sym, ptr %25, i32 0, i32 1, !dbg !1550
  %26 = load i8, ptr %st_info, align 4, !dbg !1550, !tbaa !1551
  %conv19 = zext i8 %26 to i32, !dbg !1550
  %and = and i32 %conv19, 15, !dbg !1550
  %call20 = call ptr @sym_type(i32 noundef %and), !dbg !1552
  %27 = load ptr, ptr %sym, align 8, !dbg !1553, !tbaa !577
  %st_info21 = getelementptr inbounds %struct.Elf64_Sym, ptr %27, i32 0, i32 1, !dbg !1553
  %28 = load i8, ptr %st_info21, align 4, !dbg !1553, !tbaa !1551
  %conv22 = zext i8 %28 to i32, !dbg !1553
  %shr = ashr i32 %conv22, 4, !dbg !1553
  %call23 = call ptr @sym_bind(i32 noundef %shr), !dbg !1554
  %29 = load ptr, ptr %sym, align 8, !dbg !1555, !tbaa !577
  %st_other = getelementptr inbounds %struct.Elf64_Sym, ptr %29, i32 0, i32 2, !dbg !1555
  %30 = load i8, ptr %st_other, align 1, !dbg !1555, !tbaa !1556
  %conv24 = zext i8 %30 to i32, !dbg !1555
  %and25 = and i32 %conv24, 3, !dbg !1555
  %call26 = call ptr @sym_visibility(i32 noundef %and25), !dbg !1557
  %31 = load ptr, ptr %name, align 8, !dbg !1558, !tbaa !577
  %call27 = call i32 (ptr, ...) @printf(ptr noundef %19, i32 noundef %20, i64 noundef %22, i64 noundef %24, ptr noundef %call20, ptr noundef %call23, ptr noundef %call26, ptr noundef %31), !dbg !1559
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1560
  br label %cleanup, !dbg !1560

cleanup:                                          ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1560
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1560
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1561

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %32 = load i32, ptr %j, align 4, !dbg !1562, !tbaa !582
  %inc = add nsw i32 %32, 1, !dbg !1562
  store i32 %inc, ptr %j, align 4, !dbg !1562, !tbaa !582
  br label %for.cond5, !dbg !1563, !llvm.loop !1564

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1566
  br label %cleanup29, !dbg !1566

cleanup29:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !1566
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1566
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %unreachable [
    i32 0, label %cleanup.cont33
    i32 4, label %for.inc34
  ]

cleanup.cont33:                                   ; preds = %cleanup29
  br label %for.inc34, !dbg !1567

for.inc34:                                        ; preds = %cleanup.cont33, %cleanup29
  %33 = load i32, ptr %i, align 4, !dbg !1568, !tbaa !582
  %inc35 = add nsw i32 %33, 1, !dbg !1568
  store i32 %inc35, ptr %i, align 4, !dbg !1568, !tbaa !582
  br label %for.cond, !dbg !1569, !llvm.loop !1570

for.end36:                                        ; preds = %for.cond
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.37), !dbg !1572
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #12, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1573
  ret void, !dbg !1573

unreachable:                                      ; preds = %cleanup29, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_absolute_relocs() #0 !dbg !1574 {
entry:
  %i = alloca i32, align 4
  %printed = alloca i32, align 4
  %format = alloca ptr, align 8
  %sec = alloca ptr, align 8
  %sec_applies = alloca ptr, align 8
  %sec_symtab = alloca ptr, align 8
  %sym_strtab = alloca ptr, align 8
  %sh_symtab = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %rel = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1594
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1576, metadata !DIExpression()), !dbg !1595
  call void @llvm.lifetime.start.p0(i64 4, ptr %printed) #12, !dbg !1594
  call void @llvm.dbg.declare(metadata ptr %printed, metadata !1577, metadata !DIExpression()), !dbg !1596
  store i32 0, ptr %printed, align 4, !dbg !1596, !tbaa !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #12, !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %format, metadata !1578, metadata !DIExpression()), !dbg !1598
  store ptr @.str.55, ptr %format, align 8, !dbg !1599, !tbaa !577
  store i32 0, ptr %i, align 4, !dbg !1601, !tbaa !582
  br label %for.cond, !dbg !1602

for.cond:                                         ; preds = %for.inc58, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1603, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !1603
  %1 = load i64, ptr @shnum, align 8, !dbg !1604, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !1605
  br i1 %cmp, label %for.body, label %for.end60, !dbg !1606

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1607
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1579, metadata !DIExpression()), !dbg !1608
  %2 = load ptr, ptr @secs, align 8, !dbg !1609, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !1610, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !1609
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1609
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1608, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_applies) #12, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %sec_applies, metadata !1583, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_symtab) #12, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %sec_symtab, metadata !1584, metadata !DIExpression()), !dbg !1613
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !1585, metadata !DIExpression()), !dbg !1615
  call void @llvm.lifetime.start.p0(i64 8, ptr %sh_symtab) #12, !dbg !1616
  call void @llvm.dbg.declare(metadata ptr %sh_symtab, metadata !1586, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1618
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1587, metadata !DIExpression()), !dbg !1619
  %4 = load ptr, ptr %sec, align 8, !dbg !1620, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1622
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1623
  %5 = load i32, ptr %sh_type, align 4, !dbg !1623, !tbaa !938
  %cmp2 = icmp ne i32 %5, 4, !dbg !1624
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1625

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !1626

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1628, !tbaa !577
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !1629
  %7 = load ptr, ptr %link, align 8, !dbg !1629, !tbaa !1007
  store ptr %7, ptr %sec_symtab, align 8, !dbg !1630, !tbaa !577
  %8 = load ptr, ptr @secs, align 8, !dbg !1631, !tbaa !577
  %9 = load ptr, ptr %sec, align 8, !dbg !1632, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 0, !dbg !1633
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 7, !dbg !1634
  %10 = load i32, ptr %sh_info, align 4, !dbg !1634, !tbaa !978
  %idxprom5 = zext i32 %10 to i64, !dbg !1631
  %arrayidx6 = getelementptr inbounds %struct.section, ptr %8, i64 %idxprom5, !dbg !1631
  store ptr %arrayidx6, ptr %sec_applies, align 8, !dbg !1635, !tbaa !577
  %11 = load ptr, ptr %sec_applies, align 8, !dbg !1636, !tbaa !577
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1638
  %sh_flags = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr7, i32 0, i32 2, !dbg !1639
  %12 = load i64, ptr %sh_flags, align 8, !dbg !1639, !tbaa !945
  %and = and i64 %12, 2, !dbg !1640
  %tobool = icmp ne i64 %and, 0, !dbg !1640
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1641

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !1642

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %sec_applies, align 8, !dbg !1644, !tbaa !577
  %shdr10 = getelementptr inbounds %struct.section, ptr %13, i32 0, i32 0, !dbg !1646
  %sh_type11 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr10, i32 0, i32 1, !dbg !1647
  %14 = load i32, ptr %sh_type11, align 4, !dbg !1647, !tbaa !938
  %cmp12 = icmp eq i32 %14, 7, !dbg !1648
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1649

if.then14:                                        ; preds = %if.end9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !1650

if.end15:                                         ; preds = %if.end9
  %15 = load ptr, ptr %sec_symtab, align 8, !dbg !1652, !tbaa !577
  %symtab = getelementptr inbounds %struct.section, ptr %15, i32 0, i32 2, !dbg !1653
  %16 = load ptr, ptr %symtab, align 8, !dbg !1653, !tbaa !1199
  store ptr %16, ptr %sh_symtab, align 8, !dbg !1654, !tbaa !577
  %17 = load ptr, ptr %sec_symtab, align 8, !dbg !1655, !tbaa !577
  %link16 = getelementptr inbounds %struct.section, ptr %17, i32 0, i32 1, !dbg !1656
  %18 = load ptr, ptr %link16, align 8, !dbg !1656, !tbaa !1007
  %strtab = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 5, !dbg !1657
  %19 = load ptr, ptr %strtab, align 8, !dbg !1657, !tbaa !1051
  store ptr %19, ptr %sym_strtab, align 8, !dbg !1658, !tbaa !577
  store i32 0, ptr %j, align 4, !dbg !1659, !tbaa !582
  br label %for.cond17, !dbg !1660

for.cond17:                                       ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %j, align 4, !dbg !1661, !tbaa !582
  %conv18 = sext i32 %20 to i64, !dbg !1661
  %21 = load ptr, ptr %sec, align 8, !dbg !1662, !tbaa !577
  %shdr19 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1663
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr19, i32 0, i32 5, !dbg !1664
  %22 = load i64, ptr %sh_size, align 8, !dbg !1664, !tbaa !965
  %div = udiv i64 %22, 24, !dbg !1665
  %cmp20 = icmp ult i64 %conv18, %div, !dbg !1666
  br i1 %cmp20, label %for.body22, label %for.end, !dbg !1667

for.body22:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !1588, metadata !DIExpression()), !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1670
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1592, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1593, metadata !DIExpression()), !dbg !1673
  %23 = load ptr, ptr %sec, align 8, !dbg !1674, !tbaa !577
  %reltab = getelementptr inbounds %struct.section, ptr %23, i32 0, i32 4, !dbg !1675
  %24 = load ptr, ptr %reltab, align 8, !dbg !1675, !tbaa !1331
  %25 = load i32, ptr %j, align 4, !dbg !1676, !tbaa !582
  %idxprom23 = sext i32 %25 to i64, !dbg !1674
  %arrayidx24 = getelementptr inbounds %struct.Elf64_Rela, ptr %24, i64 %idxprom23, !dbg !1674
  store ptr %arrayidx24, ptr %rel, align 8, !dbg !1677, !tbaa !577
  %26 = load ptr, ptr %sh_symtab, align 8, !dbg !1678, !tbaa !577
  %27 = load ptr, ptr %rel, align 8, !dbg !1679, !tbaa !577
  %r_info = getelementptr inbounds %struct.Elf64_Rela, ptr %27, i32 0, i32 1, !dbg !1679
  %28 = load i64, ptr %r_info, align 8, !dbg !1679, !tbaa !1394
  %shr = lshr i64 %28, 32, !dbg !1679
  %arrayidx25 = getelementptr inbounds %struct.Elf64_Sym, ptr %26, i64 %shr, !dbg !1678
  store ptr %arrayidx25, ptr %sym, align 8, !dbg !1680, !tbaa !577
  %29 = load ptr, ptr %sym_strtab, align 8, !dbg !1681, !tbaa !577
  %30 = load ptr, ptr %sym, align 8, !dbg !1682, !tbaa !577
  %call = call ptr @sym_name(ptr noundef %29, ptr noundef %30), !dbg !1683
  store ptr %call, ptr %name, align 8, !dbg !1684, !tbaa !577
  %31 = load ptr, ptr %sym, align 8, !dbg !1685, !tbaa !577
  %st_shndx = getelementptr inbounds %struct.Elf64_Sym, ptr %31, i32 0, i32 3, !dbg !1687
  %32 = load i16, ptr %st_shndx, align 2, !dbg !1687, !tbaa !1269
  %conv26 = zext i16 %32 to i32, !dbg !1685
  %cmp27 = icmp ne i32 %conv26, 65521, !dbg !1688
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1689

if.then29:                                        ; preds = %for.body22
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1690

if.end30:                                         ; preds = %for.body22
  %33 = load ptr, ptr %name, align 8, !dbg !1692, !tbaa !577
  %call31 = call i32 @is_reloc(i32 noundef 0, ptr noundef %33), !dbg !1694
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1694
  br i1 %tobool32, label %if.then35, label %lor.lhs.false, !dbg !1695

lor.lhs.false:                                    ; preds = %if.end30
  %34 = load ptr, ptr %name, align 8, !dbg !1696, !tbaa !577
  %call33 = call i32 @is_reloc(i32 noundef 1, ptr noundef %34), !dbg !1697
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1697
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1698

if.then35:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1699

if.end36:                                         ; preds = %lor.lhs.false
  %35 = load i32, ptr %printed, align 4, !dbg !1700, !tbaa !582
  %tobool37 = icmp ne i32 %35, 0, !dbg !1700
  br i1 %tobool37, label %if.end41, label %if.then38, !dbg !1702

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.56), !dbg !1703
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.57), !dbg !1705
  store i32 1, ptr %printed, align 4, !dbg !1706, !tbaa !582
  br label %if.end41, !dbg !1707

if.end41:                                         ; preds = %if.then38, %if.end36
  %36 = load ptr, ptr %format, align 8, !dbg !1708, !tbaa !577
  %37 = load ptr, ptr %rel, align 8, !dbg !1709, !tbaa !577
  %r_offset = getelementptr inbounds %struct.Elf64_Rela, ptr %37, i32 0, i32 0, !dbg !1710
  %38 = load i64, ptr %r_offset, align 8, !dbg !1710, !tbaa !1388
  %39 = load ptr, ptr %rel, align 8, !dbg !1711, !tbaa !577
  %r_info42 = getelementptr inbounds %struct.Elf64_Rela, ptr %39, i32 0, i32 1, !dbg !1712
  %40 = load i64, ptr %r_info42, align 8, !dbg !1712, !tbaa !1394
  %41 = load ptr, ptr %rel, align 8, !dbg !1713, !tbaa !577
  %r_info43 = getelementptr inbounds %struct.Elf64_Rela, ptr %41, i32 0, i32 1, !dbg !1713
  %42 = load i64, ptr %r_info43, align 8, !dbg !1713, !tbaa !1394
  %and44 = and i64 %42, 4294967295, !dbg !1713
  %conv45 = trunc i64 %and44 to i32, !dbg !1713
  %call46 = call ptr @rel_type(i32 noundef %conv45), !dbg !1714
  %43 = load ptr, ptr %sym, align 8, !dbg !1715, !tbaa !577
  %st_value = getelementptr inbounds %struct.Elf64_Sym, ptr %43, i32 0, i32 4, !dbg !1716
  %44 = load i64, ptr %st_value, align 8, !dbg !1716, !tbaa !1259
  %45 = load ptr, ptr %name, align 8, !dbg !1717, !tbaa !577
  %call47 = call i32 (ptr, ...) @printf(ptr noundef %36, i64 noundef %38, i64 noundef %40, ptr noundef %call46, i64 noundef %44, ptr noundef %45), !dbg !1718
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1719
  br label %cleanup, !dbg !1719

cleanup:                                          ; preds = %if.end41, %if.then35, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !1719
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1720

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %46 = load i32, ptr %j, align 4, !dbg !1721, !tbaa !582
  %inc = add nsw i32 %46, 1, !dbg !1721
  store i32 %inc, ptr %j, align 4, !dbg !1721, !tbaa !582
  br label %for.cond17, !dbg !1722, !llvm.loop !1723

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1725
  br label %cleanup50, !dbg !1725

cleanup50:                                        ; preds = %for.end, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sh_symtab) #12, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_symtab) #12, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_applies) #12, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1725
  %cleanup.dest56 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest56, label %unreachable [
    i32 0, label %cleanup.cont57
    i32 4, label %for.inc58
  ]

cleanup.cont57:                                   ; preds = %cleanup50
  br label %for.inc58, !dbg !1726

for.inc58:                                        ; preds = %cleanup.cont57, %cleanup50
  %47 = load i32, ptr %i, align 4, !dbg !1727, !tbaa !582
  %inc59 = add nsw i32 %47, 1, !dbg !1727
  store i32 %inc59, ptr %i, align 4, !dbg !1727, !tbaa !582
  br label %for.cond, !dbg !1728, !llvm.loop !1729

for.end60:                                        ; preds = %for.cond
  %48 = load i32, ptr %printed, align 4, !dbg !1731, !tbaa !582
  %tobool61 = icmp ne i32 %48, 0, !dbg !1731
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !1733

if.then62:                                        ; preds = %for.end60
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.37), !dbg !1734
  br label %if.end64, !dbg !1734

if.end64:                                         ; preds = %if.then62, %for.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #12, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 4, ptr %printed) #12, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1735
  ret void, !dbg !1735

unreachable:                                      ; preds = %cleanup50, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_reloc_info() #0 !dbg !1736 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.76), !dbg !1737
  call void @walk_relocs(ptr noundef @do_reloc_info), !dbg !1738
  ret void, !dbg !1739
}

; Function Attrs: nounwind uwtable
define internal void @emit_relocs(i32 noundef %as_text, i32 noundef %use_real_mode) #0 !dbg !1740 {
entry:
  %as_text.addr = alloca i32, align 4
  %use_real_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %write_reloc = alloca ptr, align 8
  %do_reloc = alloca ptr, align 8
  store i32 %as_text, ptr %as_text.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %as_text.addr, metadata !1744, metadata !DIExpression()), !dbg !1755
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !1745, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1746, metadata !DIExpression()), !dbg !1758
  call void @llvm.lifetime.start.p0(i64 8, ptr %write_reloc) #12, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %write_reloc, metadata !1747, metadata !DIExpression()), !dbg !1760
  store ptr @write32, ptr %write_reloc, align 8, !dbg !1760, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %do_reloc) #12, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %do_reloc, metadata !1751, metadata !DIExpression()), !dbg !1762
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1763, !tbaa !582
  %tobool = icmp ne i32 %0, 0, !dbg !1763
  br i1 %tobool, label %if.else, label %if.then, !dbg !1765

if.then:                                          ; preds = %entry
  store ptr @do_reloc64, ptr %do_reloc, align 8, !dbg !1766, !tbaa !577
  br label %if.end, !dbg !1767

if.else:                                          ; preds = %entry
  call void (ptr, ...) @die(ptr noundef @.str.78) #13, !dbg !1768
  unreachable, !dbg !1768

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %do_reloc, align 8, !dbg !1769, !tbaa !577
  call void @walk_relocs(ptr noundef %1), !dbg !1770
  %2 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1771, !tbaa !1773
  %tobool1 = icmp ne i64 %2, 0, !dbg !1775
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !1776

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1777, !tbaa !582
  %tobool2 = icmp ne i32 %3, 0, !dbg !1777
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1778

if.then3:                                         ; preds = %land.lhs.true
  call void (ptr, ...) @die(ptr noundef @.str.79) #13, !dbg !1779
  unreachable, !dbg !1779

if.end4:                                          ; preds = %land.lhs.true, %if.end
  call void @sort_relocs(ptr noundef @relocs32), !dbg !1780
  call void @sort_relocs(ptr noundef @relocs32neg), !dbg !1781
  call void @sort_relocs(ptr noundef @relocs64), !dbg !1782
  %4 = load i32, ptr %as_text.addr, align 4, !dbg !1783, !tbaa !582
  %tobool5 = icmp ne i32 %4, 0, !dbg !1783
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !1785

if.then6:                                         ; preds = %if.end4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.80), !dbg !1786
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.81), !dbg !1788
  store ptr @write32_as_text, ptr %write_reloc, align 8, !dbg !1789, !tbaa !577
  br label %if.end8, !dbg !1790

if.end8:                                          ; preds = %if.then6, %if.end4
  %5 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1791, !tbaa !582
  %tobool9 = icmp ne i32 %5, 0, !dbg !1791
  br i1 %tobool9, label %if.then10, label %if.else28, !dbg !1793

if.then10:                                        ; preds = %if.end8
  %6 = load ptr, ptr %write_reloc, align 8, !dbg !1794, !tbaa !577
  %7 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1796, !tbaa !1773
  %conv = trunc i64 %7 to i32, !dbg !1797
  %8 = load ptr, ptr @stdout, align 8, !dbg !1798, !tbaa !577
  %call11 = call i32 %6(i32 noundef %conv, ptr noundef %8), !dbg !1794
  store i32 0, ptr %i, align 4, !dbg !1799, !tbaa !582
  br label %for.cond, !dbg !1801

for.cond:                                         ; preds = %for.inc, %if.then10
  %9 = load i32, ptr %i, align 4, !dbg !1802, !tbaa !582
  %conv12 = sext i32 %9 to i64, !dbg !1802
  %10 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1804, !tbaa !1773
  %cmp = icmp ult i64 %conv12, %10, !dbg !1805
  br i1 %cmp, label %for.body, label %for.end, !dbg !1806

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %write_reloc, align 8, !dbg !1807, !tbaa !577
  %12 = load ptr, ptr @relocs16, align 8, !dbg !1808, !tbaa !1809
  %13 = load i32, ptr %i, align 4, !dbg !1810, !tbaa !582
  %idxprom = sext i32 %13 to i64, !dbg !1811
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom, !dbg !1811
  %14 = load i32, ptr %arrayidx, align 4, !dbg !1811, !tbaa !582
  %15 = load ptr, ptr @stdout, align 8, !dbg !1812, !tbaa !577
  %call14 = call i32 %11(i32 noundef %14, ptr noundef %15), !dbg !1807
  br label %for.inc, !dbg !1807

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !1813, !tbaa !582
  %inc = add nsw i32 %16, 1, !dbg !1813
  store i32 %inc, ptr %i, align 4, !dbg !1813, !tbaa !582
  br label %for.cond, !dbg !1814, !llvm.loop !1815

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %write_reloc, align 8, !dbg !1817, !tbaa !577
  %18 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1818, !tbaa !1773
  %conv15 = trunc i64 %18 to i32, !dbg !1819
  %19 = load ptr, ptr @stdout, align 8, !dbg !1820, !tbaa !577
  %call16 = call i32 %17(i32 noundef %conv15, ptr noundef %19), !dbg !1817
  store i32 0, ptr %i, align 4, !dbg !1821, !tbaa !582
  br label %for.cond17, !dbg !1823

for.cond17:                                       ; preds = %for.inc25, %for.end
  %20 = load i32, ptr %i, align 4, !dbg !1824, !tbaa !582
  %conv18 = sext i32 %20 to i64, !dbg !1824
  %21 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1826, !tbaa !1773
  %cmp19 = icmp ult i64 %conv18, %21, !dbg !1827
  br i1 %cmp19, label %for.body21, label %for.end27, !dbg !1828

for.body21:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %write_reloc, align 8, !dbg !1829, !tbaa !577
  %23 = load ptr, ptr @relocs32, align 8, !dbg !1830, !tbaa !1809
  %24 = load i32, ptr %i, align 4, !dbg !1831, !tbaa !582
  %idxprom22 = sext i32 %24 to i64, !dbg !1832
  %arrayidx23 = getelementptr inbounds i32, ptr %23, i64 %idxprom22, !dbg !1832
  %25 = load i32, ptr %arrayidx23, align 4, !dbg !1832, !tbaa !582
  %26 = load ptr, ptr @stdout, align 8, !dbg !1833, !tbaa !577
  %call24 = call i32 %22(i32 noundef %25, ptr noundef %26), !dbg !1829
  br label %for.inc25, !dbg !1829

for.inc25:                                        ; preds = %for.body21
  %27 = load i32, ptr %i, align 4, !dbg !1834, !tbaa !582
  %inc26 = add nsw i32 %27, 1, !dbg !1834
  store i32 %inc26, ptr %i, align 4, !dbg !1834, !tbaa !582
  br label %for.cond17, !dbg !1835, !llvm.loop !1836

for.end27:                                        ; preds = %for.cond17
  br label %if.end65, !dbg !1838

if.else28:                                        ; preds = %if.end8
  %28 = load ptr, ptr %write_reloc, align 8, !dbg !1839, !tbaa !577
  %29 = load ptr, ptr @stdout, align 8, !dbg !1841, !tbaa !577
  %call29 = call i32 %28(i32 noundef 0, ptr noundef %29), !dbg !1839
  store i32 0, ptr %i, align 4, !dbg !1842, !tbaa !582
  br label %for.cond30, !dbg !1844

for.cond30:                                       ; preds = %for.inc38, %if.else28
  %30 = load i32, ptr %i, align 4, !dbg !1845, !tbaa !582
  %conv31 = sext i32 %30 to i64, !dbg !1845
  %31 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs64, i32 0, i32 1), align 8, !dbg !1847, !tbaa !1773
  %cmp32 = icmp ult i64 %conv31, %31, !dbg !1848
  br i1 %cmp32, label %for.body34, label %for.end40, !dbg !1849

for.body34:                                       ; preds = %for.cond30
  %32 = load ptr, ptr %write_reloc, align 8, !dbg !1850, !tbaa !577
  %33 = load ptr, ptr @relocs64, align 8, !dbg !1851, !tbaa !1809
  %34 = load i32, ptr %i, align 4, !dbg !1852, !tbaa !582
  %idxprom35 = sext i32 %34 to i64, !dbg !1853
  %arrayidx36 = getelementptr inbounds i32, ptr %33, i64 %idxprom35, !dbg !1853
  %35 = load i32, ptr %arrayidx36, align 4, !dbg !1853, !tbaa !582
  %36 = load ptr, ptr @stdout, align 8, !dbg !1854, !tbaa !577
  %call37 = call i32 %32(i32 noundef %35, ptr noundef %36), !dbg !1850
  br label %for.inc38, !dbg !1850

for.inc38:                                        ; preds = %for.body34
  %37 = load i32, ptr %i, align 4, !dbg !1855, !tbaa !582
  %inc39 = add nsw i32 %37, 1, !dbg !1855
  store i32 %inc39, ptr %i, align 4, !dbg !1855, !tbaa !582
  br label %for.cond30, !dbg !1856, !llvm.loop !1857

for.end40:                                        ; preds = %for.cond30
  %38 = load ptr, ptr %write_reloc, align 8, !dbg !1859, !tbaa !577
  %39 = load ptr, ptr @stdout, align 8, !dbg !1860, !tbaa !577
  %call41 = call i32 %38(i32 noundef 0, ptr noundef %39), !dbg !1859
  store i32 0, ptr %i, align 4, !dbg !1861, !tbaa !582
  br label %for.cond42, !dbg !1863

for.cond42:                                       ; preds = %for.inc50, %for.end40
  %40 = load i32, ptr %i, align 4, !dbg !1864, !tbaa !582
  %conv43 = sext i32 %40 to i64, !dbg !1864
  %41 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32neg, i32 0, i32 1), align 8, !dbg !1866, !tbaa !1773
  %cmp44 = icmp ult i64 %conv43, %41, !dbg !1867
  br i1 %cmp44, label %for.body46, label %for.end52, !dbg !1868

for.body46:                                       ; preds = %for.cond42
  %42 = load ptr, ptr %write_reloc, align 8, !dbg !1869, !tbaa !577
  %43 = load ptr, ptr @relocs32neg, align 8, !dbg !1870, !tbaa !1809
  %44 = load i32, ptr %i, align 4, !dbg !1871, !tbaa !582
  %idxprom47 = sext i32 %44 to i64, !dbg !1872
  %arrayidx48 = getelementptr inbounds i32, ptr %43, i64 %idxprom47, !dbg !1872
  %45 = load i32, ptr %arrayidx48, align 4, !dbg !1872, !tbaa !582
  %46 = load ptr, ptr @stdout, align 8, !dbg !1873, !tbaa !577
  %call49 = call i32 %42(i32 noundef %45, ptr noundef %46), !dbg !1869
  br label %for.inc50, !dbg !1869

for.inc50:                                        ; preds = %for.body46
  %47 = load i32, ptr %i, align 4, !dbg !1874, !tbaa !582
  %inc51 = add nsw i32 %47, 1, !dbg !1874
  store i32 %inc51, ptr %i, align 4, !dbg !1874, !tbaa !582
  br label %for.cond42, !dbg !1875, !llvm.loop !1876

for.end52:                                        ; preds = %for.cond42
  %48 = load ptr, ptr %write_reloc, align 8, !dbg !1878, !tbaa !577
  %49 = load ptr, ptr @stdout, align 8, !dbg !1879, !tbaa !577
  %call53 = call i32 %48(i32 noundef 0, ptr noundef %49), !dbg !1878
  store i32 0, ptr %i, align 4, !dbg !1880, !tbaa !582
  br label %for.cond54, !dbg !1882

for.cond54:                                       ; preds = %for.inc62, %for.end52
  %50 = load i32, ptr %i, align 4, !dbg !1883, !tbaa !582
  %conv55 = sext i32 %50 to i64, !dbg !1883
  %51 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1885, !tbaa !1773
  %cmp56 = icmp ult i64 %conv55, %51, !dbg !1886
  br i1 %cmp56, label %for.body58, label %for.end64, !dbg !1887

for.body58:                                       ; preds = %for.cond54
  %52 = load ptr, ptr %write_reloc, align 8, !dbg !1888, !tbaa !577
  %53 = load ptr, ptr @relocs32, align 8, !dbg !1889, !tbaa !1809
  %54 = load i32, ptr %i, align 4, !dbg !1890, !tbaa !582
  %idxprom59 = sext i32 %54 to i64, !dbg !1891
  %arrayidx60 = getelementptr inbounds i32, ptr %53, i64 %idxprom59, !dbg !1891
  %55 = load i32, ptr %arrayidx60, align 4, !dbg !1891, !tbaa !582
  %56 = load ptr, ptr @stdout, align 8, !dbg !1892, !tbaa !577
  %call61 = call i32 %52(i32 noundef %55, ptr noundef %56), !dbg !1888
  br label %for.inc62, !dbg !1888

for.inc62:                                        ; preds = %for.body58
  %57 = load i32, ptr %i, align 4, !dbg !1893, !tbaa !582
  %inc63 = add nsw i32 %57, 1, !dbg !1893
  store i32 %inc63, ptr %i, align 4, !dbg !1893, !tbaa !582
  br label %for.cond54, !dbg !1894, !llvm.loop !1895

for.end64:                                        ; preds = %for.cond54
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %for.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %do_reloc) #12, !dbg !1897
  call void @llvm.lifetime.end.p0(i64 8, ptr %write_reloc) #12, !dbg !1897
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1897
  ret void, !dbg !1897
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1898 i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !1904 i64 @regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noreturn
declare !dbg !1911 void @die(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1914 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1920 ptr @strerror(i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1924 ptr @__errno_location() #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1929 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define internal zeroext i16 @elf16_to_cpu(i16 noundef zeroext %val) #0 !dbg !1934 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, ptr %val.addr, align 2, !tbaa !1939
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1938, metadata !DIExpression()), !dbg !1940
  %0 = load i16, ptr %val.addr, align 2, !dbg !1941, !tbaa !1939
  ret i16 %0, !dbg !1942
}

; Function Attrs: nounwind uwtable
define internal i32 @elf32_to_cpu(i32 noundef %val) #0 !dbg !1943 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load i32, ptr %val.addr, align 4, !dbg !1949, !tbaa !582
  ret i32 %0, !dbg !1950
}

; Function Attrs: nounwind uwtable
define internal i64 @elf64_to_cpu(i64 noundef %val) #0 !dbg !1951 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8, !tbaa !775
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1955, metadata !DIExpression()), !dbg !1956
  %0 = load i64, ptr %val.addr, align 8, !dbg !1957, !tbaa !775
  ret i64 %0, !dbg !1958
}

declare !dbg !1959 i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1962 noalias ptr @calloc(i64 noundef, i64 noundef) #8

; Function Attrs: nounwind allocsize(0)
declare !dbg !1966 noalias ptr @malloc(i64 noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1969 i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal ptr @sec_name(i32 noundef %shndx) #0 !dbg !1972 {
entry:
  %shndx.addr = alloca i32, align 4
  %sec_strtab = alloca ptr, align 8
  %name = alloca ptr, align 8
  store i32 %shndx, ptr %shndx.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %shndx.addr, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_strtab) #12, !dbg !1978
  call void @llvm.dbg.declare(metadata ptr %sec_strtab, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1980
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1976, metadata !DIExpression()), !dbg !1981
  %0 = load ptr, ptr @secs, align 8, !dbg !1982, !tbaa !577
  %1 = load i32, ptr @shstrndx, align 4, !dbg !1983, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !1982
  %arrayidx = getelementptr inbounds %struct.section, ptr %0, i64 %idxprom, !dbg !1982
  %strtab = getelementptr inbounds %struct.section, ptr %arrayidx, i32 0, i32 5, !dbg !1984
  %2 = load ptr, ptr %strtab, align 8, !dbg !1984, !tbaa !1051
  store ptr %2, ptr %sec_strtab, align 8, !dbg !1985, !tbaa !577
  store ptr @.str.31, ptr %name, align 8, !dbg !1986, !tbaa !577
  %3 = load i32, ptr %shndx.addr, align 4, !dbg !1987, !tbaa !582
  %conv = zext i32 %3 to i64, !dbg !1987
  %4 = load i64, ptr @shnum, align 8, !dbg !1989, !tbaa !775
  %cmp = icmp ult i64 %conv, %4, !dbg !1990
  br i1 %cmp, label %if.then, label %if.else, !dbg !1991

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sec_strtab, align 8, !dbg !1992, !tbaa !577
  %6 = load ptr, ptr @secs, align 8, !dbg !1994, !tbaa !577
  %7 = load i32, ptr %shndx.addr, align 4, !dbg !1995, !tbaa !582
  %idxprom2 = zext i32 %7 to i64, !dbg !1994
  %arrayidx3 = getelementptr inbounds %struct.section, ptr %6, i64 %idxprom2, !dbg !1994
  %shdr = getelementptr inbounds %struct.section, ptr %arrayidx3, i32 0, i32 0, !dbg !1996
  %sh_name = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 0, !dbg !1997
  %8 = load i32, ptr %sh_name, align 8, !dbg !1997, !tbaa !930
  %idx.ext = zext i32 %8 to i64, !dbg !1998
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext, !dbg !1998
  store ptr %add.ptr, ptr %name, align 8, !dbg !1999, !tbaa !577
  br label %if.end12, !dbg !2000

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %shndx.addr, align 4, !dbg !2001, !tbaa !582
  %cmp4 = icmp eq i32 %9, 65521, !dbg !2003
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !2004

if.then6:                                         ; preds = %if.else
  store ptr @.str.32, ptr %name, align 8, !dbg !2005, !tbaa !577
  br label %if.end11, !dbg !2007

if.else7:                                         ; preds = %if.else
  %10 = load i32, ptr %shndx.addr, align 4, !dbg !2008, !tbaa !582
  %cmp8 = icmp eq i32 %10, 65522, !dbg !2010
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !2011

if.then10:                                        ; preds = %if.else7
  store ptr @.str.33, ptr %name, align 8, !dbg !2012, !tbaa !577
  br label %if.end, !dbg !2014

if.end:                                           ; preds = %if.then10, %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %11 = load ptr, ptr %name, align 8, !dbg !2015, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2016
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_strtab) #12, !dbg !2016
  ret ptr %11, !dbg !2017
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_lookup(ptr noundef %symname) #0 !dbg !2018 {
entry:
  %retval = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sec = alloca ptr, align 8
  %nsyms = alloca i64, align 8
  %strtab = alloca ptr, align 8
  %symtab = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2022, metadata !DIExpression()), !dbg !2032
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2033
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2023, metadata !DIExpression()), !dbg !2034
  store i32 0, ptr %i, align 4, !dbg !2035, !tbaa !582
  br label %for.cond, !dbg !2036

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2037, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !2037
  %1 = load i64, ptr @shnum, align 8, !dbg !2038, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !2039
  br i1 %cmp, label %for.body, label %for.end23, !dbg !2040

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !2024, metadata !DIExpression()), !dbg !2042
  %2 = load ptr, ptr @secs, align 8, !dbg !2043, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !2044, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !2043
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !2043
  store ptr %arrayidx, ptr %sec, align 8, !dbg !2042, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsyms) #12, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %nsyms, metadata !2028, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %strtab) #12, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %strtab, metadata !2029, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr %symtab) #12, !dbg !2049
  call void @llvm.dbg.declare(metadata ptr %symtab, metadata !2030, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !2031, metadata !DIExpression()), !dbg !2052
  %4 = load ptr, ptr %sec, align 8, !dbg !2053, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !2055
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !2056
  %5 = load i32, ptr %sh_type, align 4, !dbg !2056, !tbaa !938
  %cmp2 = icmp ne i32 %5, 2, !dbg !2057
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2058

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2059

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !2060, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !2061
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !2062
  %7 = load i64, ptr %sh_size, align 8, !dbg !2062, !tbaa !965
  %div = udiv i64 %7, 24, !dbg !2063
  store i64 %div, ptr %nsyms, align 8, !dbg !2064, !tbaa !775
  %8 = load ptr, ptr %sec, align 8, !dbg !2065, !tbaa !577
  %symtab5 = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 2, !dbg !2066
  %9 = load ptr, ptr %symtab5, align 8, !dbg !2066, !tbaa !1199
  store ptr %9, ptr %symtab, align 8, !dbg !2067, !tbaa !577
  %10 = load ptr, ptr %sec, align 8, !dbg !2068, !tbaa !577
  %link = getelementptr inbounds %struct.section, ptr %10, i32 0, i32 1, !dbg !2069
  %11 = load ptr, ptr %link, align 8, !dbg !2069, !tbaa !1007
  %strtab6 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 5, !dbg !2070
  %12 = load ptr, ptr %strtab6, align 8, !dbg !2070, !tbaa !1051
  store ptr %12, ptr %strtab, align 8, !dbg !2071, !tbaa !577
  %13 = load ptr, ptr %symtab, align 8, !dbg !2072, !tbaa !577
  store ptr %13, ptr %sym, align 8, !dbg !2074, !tbaa !577
  br label %for.cond7, !dbg !2075

for.cond7:                                        ; preds = %for.inc, %if.end
  %14 = load i64, ptr %nsyms, align 8, !dbg !2076, !tbaa !775
  %dec = add nsw i64 %14, -1, !dbg !2076
  store i64 %dec, ptr %nsyms, align 8, !dbg !2076, !tbaa !775
  %cmp8 = icmp sge i64 %dec, 0, !dbg !2078
  br i1 %cmp8, label %for.body10, label %for.end, !dbg !2079

for.body10:                                       ; preds = %for.cond7
  %15 = load ptr, ptr %sym, align 8, !dbg !2080, !tbaa !577
  %st_name = getelementptr inbounds %struct.Elf64_Sym, ptr %15, i32 0, i32 0, !dbg !2083
  %16 = load i32, ptr %st_name, align 8, !dbg !2083, !tbaa !1253
  %tobool = icmp ne i32 %16, 0, !dbg !2080
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !2084

if.then11:                                        ; preds = %for.body10
  br label %for.inc, !dbg !2085

if.end12:                                         ; preds = %for.body10
  %17 = load ptr, ptr %symname.addr, align 8, !dbg !2086, !tbaa !577
  %18 = load ptr, ptr %strtab, align 8, !dbg !2088, !tbaa !577
  %19 = load ptr, ptr %sym, align 8, !dbg !2089, !tbaa !577
  %st_name13 = getelementptr inbounds %struct.Elf64_Sym, ptr %19, i32 0, i32 0, !dbg !2090
  %20 = load i32, ptr %st_name13, align 8, !dbg !2090, !tbaa !1253
  %idx.ext = zext i32 %20 to i64, !dbg !2091
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %idx.ext, !dbg !2091
  %call = call i32 @strcmp(ptr noundef %17, ptr noundef %add.ptr) #15, !dbg !2092
  %cmp14 = icmp eq i32 %call, 0, !dbg !2093
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2094

if.then16:                                        ; preds = %if.end12
  %21 = load ptr, ptr %sym, align 8, !dbg !2095, !tbaa !577
  store ptr %21, ptr %retval, align 8, !dbg !2096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2096

if.end17:                                         ; preds = %if.end12
  br label %for.inc, !dbg !2097

for.inc:                                          ; preds = %if.end17, %if.then11
  %22 = load ptr, ptr %sym, align 8, !dbg !2098, !tbaa !577
  %incdec.ptr = getelementptr inbounds %struct.Elf64_Sym, ptr %22, i32 1, !dbg !2098
  store ptr %incdec.ptr, ptr %sym, align 8, !dbg !2098, !tbaa !577
  br label %for.cond7, !dbg !2099, !llvm.loop !2100

for.end:                                          ; preds = %for.cond7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2102
  br label %cleanup, !dbg !2102

cleanup:                                          ; preds = %for.end, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %symtab) #12, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %strtab) #12, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsyms) #12, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !2102
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc22
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc22, !dbg !2103

for.inc22:                                        ; preds = %cleanup.cont, %cleanup
  %23 = load i32, ptr %i, align 4, !dbg !2104, !tbaa !582
  %inc = add nsw i32 %23, 1, !dbg !2104
  store i32 %inc, ptr %i, align 4, !dbg !2104, !tbaa !582
  br label %for.cond, !dbg !2105, !llvm.loop !2106

for.end23:                                        ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !2108

cleanup24:                                        ; preds = %for.end23, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2109
  %24 = load ptr, ptr %retval, align 8, !dbg !2109
  ret ptr %24, !dbg !2109
}

declare !dbg !2110 i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal ptr @sym_name(ptr noundef %sym_strtab, ptr noundef %sym) #0 !dbg !2113 {
entry:
  %sym_strtab.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %sym_strtab, ptr %sym_strtab.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym_strtab.addr, metadata !2117, metadata !DIExpression()), !dbg !2120
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2119, metadata !DIExpression()), !dbg !2123
  store ptr @.str.31, ptr %name, align 8, !dbg !2124, !tbaa !577
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !2125, !tbaa !577
  %st_name = getelementptr inbounds %struct.Elf64_Sym, ptr %0, i32 0, i32 0, !dbg !2127
  %1 = load i32, ptr %st_name, align 8, !dbg !2127, !tbaa !1253
  %tobool = icmp ne i32 %1, 0, !dbg !2125
  br i1 %tobool, label %if.then, label %if.else, !dbg !2128

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sym_strtab.addr, align 8, !dbg !2129, !tbaa !577
  %3 = load ptr, ptr %sym.addr, align 8, !dbg !2131, !tbaa !577
  %st_name1 = getelementptr inbounds %struct.Elf64_Sym, ptr %3, i32 0, i32 0, !dbg !2132
  %4 = load i32, ptr %st_name1, align 8, !dbg !2132, !tbaa !1253
  %idx.ext = zext i32 %4 to i64, !dbg !2133
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !2133
  store ptr %add.ptr, ptr %name, align 8, !dbg !2134, !tbaa !577
  br label %if.end, !dbg !2135

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sym.addr, align 8, !dbg !2136, !tbaa !577
  %call = call i32 @sym_index(ptr noundef %5), !dbg !2138
  %call2 = call ptr @sec_name(i32 noundef %call), !dbg !2139
  store ptr %call2, ptr %name, align 8, !dbg !2140, !tbaa !577
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %name, align 8, !dbg !2141, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2142
  ret ptr %6, !dbg !2143
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_type(i32 noundef %type) #0 !dbg !335 {
entry:
  %type.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !339, metadata !DIExpression()), !dbg !2144
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %name, metadata !340, metadata !DIExpression()), !dbg !2146
  store ptr @.str.45, ptr %name, align 8, !dbg !2146, !tbaa !577
  %0 = load i32, ptr %type.addr, align 4, !dbg !2147, !tbaa !582
  %conv = zext i32 %0 to i64, !dbg !2147
  %cmp = icmp ult i64 %conv, 7, !dbg !2149
  br i1 %cmp, label %if.then, label %if.end, !dbg !2150

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2151, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2153
  %arrayidx = getelementptr inbounds [7 x ptr], ptr @sym_type.type_name, i64 0, i64 %idxprom, !dbg !2153
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2153, !tbaa !577
  store ptr %2, ptr %name, align 8, !dbg !2154, !tbaa !577
  br label %if.end, !dbg !2155

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !2156, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2157
  ret ptr %3, !dbg !2158
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_bind(i32 noundef %bind) #0 !dbg !358 {
entry:
  %bind.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %bind, ptr %bind.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %bind.addr, metadata !360, metadata !DIExpression()), !dbg !2159
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %name, metadata !361, metadata !DIExpression()), !dbg !2161
  store ptr @.str.49, ptr %name, align 8, !dbg !2161, !tbaa !577
  %0 = load i32, ptr %bind.addr, align 4, !dbg !2162, !tbaa !582
  %conv = zext i32 %0 to i64, !dbg !2162
  %cmp = icmp ult i64 %conv, 3, !dbg !2164
  br i1 %cmp, label %if.then, label %if.end, !dbg !2165

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %bind.addr, align 4, !dbg !2166, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2168
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @sym_bind.bind_name, i64 0, i64 %idxprom, !dbg !2168
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2168, !tbaa !577
  store ptr %2, ptr %name, align 8, !dbg !2169, !tbaa !577
  br label %if.end, !dbg !2170

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !2171, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2172
  ret ptr %3, !dbg !2173
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_visibility(i32 noundef %visibility) #0 !dbg !378 {
entry:
  %visibility.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %visibility, ptr %visibility.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %visibility.addr, metadata !380, metadata !DIExpression()), !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2175
  call void @llvm.dbg.declare(metadata ptr %name, metadata !381, metadata !DIExpression()), !dbg !2176
  store ptr @.str.54, ptr %name, align 8, !dbg !2176, !tbaa !577
  %0 = load i32, ptr %visibility.addr, align 4, !dbg !2177, !tbaa !582
  %conv = zext i32 %0 to i64, !dbg !2177
  %cmp = icmp ult i64 %conv, 4, !dbg !2179
  br i1 %cmp, label %if.then, label %if.end, !dbg !2180

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %visibility.addr, align 4, !dbg !2181, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2183
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @sym_visibility.visibility_name, i64 0, i64 %idxprom, !dbg !2183
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2183, !tbaa !577
  store ptr %2, ptr %name, align 8, !dbg !2184, !tbaa !577
  br label %if.end, !dbg !2185

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !2186, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2187
  ret ptr %3, !dbg !2188
}

; Function Attrs: nounwind uwtable
define internal i32 @sym_index(ptr noundef %sym) #0 !dbg !2189 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca ptr, align 8
  %symtab = alloca ptr, align 8
  %xsymtab = alloca ptr, align 8
  %offset = alloca i64, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2193, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 8, ptr %symtab) #12, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %symtab, metadata !2194, metadata !DIExpression()), !dbg !2200
  %0 = load ptr, ptr @secs, align 8, !dbg !2201, !tbaa !577
  %1 = load i32, ptr @shsymtabndx, align 4, !dbg !2202, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2201
  %arrayidx = getelementptr inbounds %struct.section, ptr %0, i64 %idxprom, !dbg !2201
  %symtab1 = getelementptr inbounds %struct.section, ptr %arrayidx, i32 0, i32 2, !dbg !2203
  %2 = load ptr, ptr %symtab1, align 8, !dbg !2203, !tbaa !1199
  store ptr %2, ptr %symtab, align 8, !dbg !2200, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %xsymtab) #12, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %xsymtab, metadata !2195, metadata !DIExpression()), !dbg !2205
  %3 = load ptr, ptr @secs, align 8, !dbg !2206, !tbaa !577
  %4 = load i32, ptr @shxsymtabndx, align 4, !dbg !2207, !tbaa !582
  %idxprom2 = zext i32 %4 to i64, !dbg !2206
  %arrayidx3 = getelementptr inbounds %struct.section, ptr %3, i64 %idxprom2, !dbg !2206
  %xsymtab4 = getelementptr inbounds %struct.section, ptr %arrayidx3, i32 0, i32 3, !dbg !2208
  %5 = load ptr, ptr %xsymtab4, align 8, !dbg !2208, !tbaa !1142
  store ptr %5, ptr %xsymtab, align 8, !dbg !2205, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2196, metadata !DIExpression()), !dbg !2210
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !2211
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2197, metadata !DIExpression()), !dbg !2212
  %6 = load ptr, ptr %sym.addr, align 8, !dbg !2213, !tbaa !577
  %st_shndx = getelementptr inbounds %struct.Elf64_Sym, ptr %6, i32 0, i32 3, !dbg !2215
  %7 = load i16, ptr %st_shndx, align 2, !dbg !2215, !tbaa !1269
  %conv = zext i16 %7 to i32, !dbg !2213
  %cmp = icmp ne i32 %conv, 65535, !dbg !2216
  br i1 %cmp, label %if.then, label %if.end, !dbg !2217

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sym.addr, align 8, !dbg !2218, !tbaa !577
  %st_shndx6 = getelementptr inbounds %struct.Elf64_Sym, ptr %8, i32 0, i32 3, !dbg !2219
  %9 = load i16, ptr %st_shndx6, align 2, !dbg !2219, !tbaa !1269
  %conv7 = zext i16 %9 to i32, !dbg !2218
  store i32 %conv7, ptr %retval, align 4, !dbg !2220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2220

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %sym.addr, align 8, !dbg !2221, !tbaa !577
  %11 = ptrtoint ptr %10 to i64, !dbg !2222
  %12 = load ptr, ptr %symtab, align 8, !dbg !2223, !tbaa !577
  %13 = ptrtoint ptr %12 to i64, !dbg !2224
  %sub = sub i64 %11, %13, !dbg !2225
  store i64 %sub, ptr %offset, align 8, !dbg !2226, !tbaa !775
  %14 = load i64, ptr %offset, align 8, !dbg !2227, !tbaa !775
  %div = udiv i64 %14, 24, !dbg !2228
  %conv8 = trunc i64 %div to i32, !dbg !2227
  store i32 %conv8, ptr %index, align 4, !dbg !2229, !tbaa !582
  %15 = load ptr, ptr %xsymtab, align 8, !dbg !2230, !tbaa !577
  %16 = load i32, ptr %index, align 4, !dbg !2231, !tbaa !582
  %idxprom9 = sext i32 %16 to i64, !dbg !2230
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9, !dbg !2230
  %17 = load i32, ptr %arrayidx10, align 4, !dbg !2230, !tbaa !582
  %call = call i32 @elf32_to_cpu(i32 noundef %17), !dbg !2232
  store i32 %call, ptr %retval, align 4, !dbg !2233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2233

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr %xsymtab) #12, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 8, ptr %symtab) #12, !dbg !2234
  %18 = load i32, ptr %retval, align 4, !dbg !2234
  ret i32 %18, !dbg !2234
}

; Function Attrs: nounwind uwtable
define internal i32 @is_reloc(i32 noundef %type, ptr noundef %sym_name) #0 !dbg !2235 {
entry:
  %type.addr = alloca i32, align 4
  %sym_name.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2239, metadata !DIExpression()), !dbg !2241
  store ptr %sym_name, ptr %sym_name.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym_name.addr, metadata !2240, metadata !DIExpression()), !dbg !2242
  %0 = load ptr, ptr @sym_regex, align 8, !dbg !2243, !tbaa !577
  %1 = load i32, ptr %type.addr, align 4, !dbg !2244, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2243
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !2243
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2243, !tbaa !577
  %tobool = icmp ne ptr %2, null, !dbg !2243
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2245

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !2246, !tbaa !582
  %idxprom1 = zext i32 %3 to i64, !dbg !2247
  %arrayidx2 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom1, !dbg !2247
  %4 = load ptr, ptr %sym_name.addr, align 8, !dbg !2248, !tbaa !577
  %call = call i32 @regexec(ptr noundef %arrayidx2, ptr noundef %4, i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !2249
  %tobool3 = icmp ne i32 %call, 0, !dbg !2250
  %lnot = xor i1 %tobool3, true, !dbg !2250
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2251
  %land.ext = zext i1 %5 to i32, !dbg !2245
  ret i32 %land.ext, !dbg !2252
}

; Function Attrs: nounwind uwtable
define internal ptr @rel_type(i32 noundef %type) #0 !dbg !436 {
entry:
  %type.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !438, metadata !DIExpression()), !dbg !2253
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2254
  call void @llvm.dbg.declare(metadata ptr %name, metadata !439, metadata !DIExpression()), !dbg !2255
  store ptr @.str.75, ptr %name, align 8, !dbg !2255, !tbaa !577
  %0 = load i32, ptr %type.addr, align 4, !dbg !2256, !tbaa !582
  %conv = zext i32 %0 to i64, !dbg !2256
  %cmp = icmp ult i64 %conv, 25, !dbg !2258
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2259

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2260, !tbaa !582
  %idxprom = zext i32 %1 to i64, !dbg !2261
  %arrayidx = getelementptr inbounds [25 x ptr], ptr @rel_type.type_name, i64 0, i64 %idxprom, !dbg !2261
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2261, !tbaa !577
  %tobool = icmp ne ptr %2, null, !dbg !2261
  br i1 %tobool, label %if.then, label %if.end, !dbg !2262

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2263, !tbaa !582
  %idxprom2 = zext i32 %3 to i64, !dbg !2265
  %arrayidx3 = getelementptr inbounds [25 x ptr], ptr @rel_type.type_name, i64 0, i64 %idxprom2, !dbg !2265
  %4 = load ptr, ptr %arrayidx3, align 8, !dbg !2265, !tbaa !577
  store ptr %4, ptr %name, align 8, !dbg !2266, !tbaa !577
  br label %if.end, !dbg !2267

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %name, align 8, !dbg !2268, !tbaa !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2269
  ret ptr %5, !dbg !2270
}

declare !dbg !2271 i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @walk_relocs(ptr noundef %process) #0 !dbg !2282 {
entry:
  %process.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sym_strtab = alloca ptr, align 8
  %sh_symtab = alloca ptr, align 8
  %sec_applies = alloca ptr, align 8
  %sec_symtab = alloca ptr, align 8
  %j = alloca i32, align 4
  %sec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rel = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %symname = alloca ptr, align 8
  store ptr %process, ptr %process.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %process.addr, metadata !2286, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2304
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2287, metadata !DIExpression()), !dbg !2305
  store i32 0, ptr %i, align 4, !dbg !2306, !tbaa !582
  br label %for.cond, !dbg !2307

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2308, !tbaa !582
  %conv = sext i32 %0 to i64, !dbg !2308
  %1 = load i64, ptr @shnum, align 8, !dbg !2309, !tbaa !775
  %cmp = icmp ult i64 %conv, %1, !dbg !2310
  br i1 %cmp, label %for.body, label %for.end34, !dbg !2311

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !2288, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 8, ptr %sh_symtab) #12, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %sh_symtab, metadata !2292, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_applies) #12, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %sec_applies, metadata !2293, metadata !DIExpression()), !dbg !2317
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_symtab) #12, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %sec_symtab, metadata !2294, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2295, metadata !DIExpression()), !dbg !2320
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !2296, metadata !DIExpression()), !dbg !2322
  %2 = load ptr, ptr @secs, align 8, !dbg !2323, !tbaa !577
  %3 = load i32, ptr %i, align 4, !dbg !2324, !tbaa !582
  %idxprom = sext i32 %3 to i64, !dbg !2323
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !2323
  store ptr %arrayidx, ptr %sec, align 8, !dbg !2322, !tbaa !577
  %4 = load ptr, ptr %sec, align 8, !dbg !2325, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !2327
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 1, !dbg !2328
  %5 = load i32, ptr %sh_type, align 4, !dbg !2328, !tbaa !938
  %cmp2 = icmp ne i32 %5, 4, !dbg !2329
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2330

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2331

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !2333, !tbaa !577
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !2334
  %7 = load ptr, ptr %link, align 8, !dbg !2334, !tbaa !1007
  store ptr %7, ptr %sec_symtab, align 8, !dbg !2335, !tbaa !577
  %8 = load ptr, ptr @secs, align 8, !dbg !2336, !tbaa !577
  %9 = load ptr, ptr %sec, align 8, !dbg !2337, !tbaa !577
  %shdr4 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 0, !dbg !2338
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr4, i32 0, i32 7, !dbg !2339
  %10 = load i32, ptr %sh_info, align 4, !dbg !2339, !tbaa !978
  %idxprom5 = zext i32 %10 to i64, !dbg !2336
  %arrayidx6 = getelementptr inbounds %struct.section, ptr %8, i64 %idxprom5, !dbg !2336
  store ptr %arrayidx6, ptr %sec_applies, align 8, !dbg !2340, !tbaa !577
  %11 = load ptr, ptr %sec_applies, align 8, !dbg !2341, !tbaa !577
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !2343
  %sh_flags = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr7, i32 0, i32 2, !dbg !2344
  %12 = load i64, ptr %sh_flags, align 8, !dbg !2344, !tbaa !945
  %and = and i64 %12, 2, !dbg !2345
  %tobool = icmp ne i64 %and, 0, !dbg !2345
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !2346

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2347

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %sec_applies, align 8, !dbg !2349, !tbaa !577
  %shdr10 = getelementptr inbounds %struct.section, ptr %13, i32 0, i32 0, !dbg !2351
  %sh_type11 = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr10, i32 0, i32 1, !dbg !2352
  %14 = load i32, ptr %sh_type11, align 4, !dbg !2352, !tbaa !938
  %cmp12 = icmp eq i32 %14, 7, !dbg !2353
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2354

if.then14:                                        ; preds = %if.end9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2355

if.end15:                                         ; preds = %if.end9
  %15 = load ptr, ptr %sec_symtab, align 8, !dbg !2356, !tbaa !577
  %symtab = getelementptr inbounds %struct.section, ptr %15, i32 0, i32 2, !dbg !2357
  %16 = load ptr, ptr %symtab, align 8, !dbg !2357, !tbaa !1199
  store ptr %16, ptr %sh_symtab, align 8, !dbg !2358, !tbaa !577
  %17 = load ptr, ptr %sec_symtab, align 8, !dbg !2359, !tbaa !577
  %link16 = getelementptr inbounds %struct.section, ptr %17, i32 0, i32 1, !dbg !2360
  %18 = load ptr, ptr %link16, align 8, !dbg !2360, !tbaa !1007
  %strtab = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 5, !dbg !2361
  %19 = load ptr, ptr %strtab, align 8, !dbg !2361, !tbaa !1051
  store ptr %19, ptr %sym_strtab, align 8, !dbg !2362, !tbaa !577
  store i32 0, ptr %j, align 4, !dbg !2363, !tbaa !582
  br label %for.cond17, !dbg !2364

for.cond17:                                       ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %j, align 4, !dbg !2365, !tbaa !582
  %conv18 = sext i32 %20 to i64, !dbg !2365
  %21 = load ptr, ptr %sec, align 8, !dbg !2366, !tbaa !577
  %shdr19 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !2367
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr19, i32 0, i32 5, !dbg !2368
  %22 = load i64, ptr %sh_size, align 8, !dbg !2368, !tbaa !965
  %div = udiv i64 %22, 24, !dbg !2369
  %cmp20 = icmp ult i64 %conv18, %div, !dbg !2370
  br i1 %cmp20, label %for.body22, label %for.end, !dbg !2371

for.body22:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !2297, metadata !DIExpression()), !dbg !2373
  %23 = load ptr, ptr %sec, align 8, !dbg !2374, !tbaa !577
  %reltab = getelementptr inbounds %struct.section, ptr %23, i32 0, i32 4, !dbg !2375
  %24 = load ptr, ptr %reltab, align 8, !dbg !2375, !tbaa !1331
  %25 = load i32, ptr %j, align 4, !dbg !2376, !tbaa !582
  %idxprom23 = sext i32 %25 to i64, !dbg !2374
  %arrayidx24 = getelementptr inbounds %struct.Elf64_Rela, ptr %24, i64 %idxprom23, !dbg !2374
  store ptr %arrayidx24, ptr %rel, align 8, !dbg !2373, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !2301, metadata !DIExpression()), !dbg !2378
  %26 = load ptr, ptr %sh_symtab, align 8, !dbg !2379, !tbaa !577
  %27 = load ptr, ptr %rel, align 8, !dbg !2380, !tbaa !577
  %r_info = getelementptr inbounds %struct.Elf64_Rela, ptr %27, i32 0, i32 1, !dbg !2380
  %28 = load i64, ptr %r_info, align 8, !dbg !2380, !tbaa !1394
  %shr = lshr i64 %28, 32, !dbg !2380
  %arrayidx25 = getelementptr inbounds %struct.Elf64_Sym, ptr %26, i64 %shr, !dbg !2379
  store ptr %arrayidx25, ptr %sym, align 8, !dbg !2378, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %symname) #12, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %symname, metadata !2302, metadata !DIExpression()), !dbg !2382
  %29 = load ptr, ptr %sym_strtab, align 8, !dbg !2383, !tbaa !577
  %30 = load ptr, ptr %sym, align 8, !dbg !2384, !tbaa !577
  %call = call ptr @sym_name(ptr noundef %29, ptr noundef %30), !dbg !2385
  store ptr %call, ptr %symname, align 8, !dbg !2382, !tbaa !577
  %31 = load ptr, ptr %process.addr, align 8, !dbg !2386, !tbaa !577
  %32 = load ptr, ptr %sec, align 8, !dbg !2387, !tbaa !577
  %33 = load ptr, ptr %rel, align 8, !dbg !2388, !tbaa !577
  %34 = load ptr, ptr %sym, align 8, !dbg !2389, !tbaa !577
  %35 = load ptr, ptr %symname, align 8, !dbg !2390, !tbaa !577
  %call26 = call i32 %31(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35), !dbg !2386
  call void @llvm.lifetime.end.p0(i64 8, ptr %symname) #12, !dbg !2391
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !2391
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !2391
  br label %for.inc, !dbg !2392

for.inc:                                          ; preds = %for.body22
  %36 = load i32, ptr %j, align 4, !dbg !2393, !tbaa !582
  %inc = add nsw i32 %36, 1, !dbg !2393
  store i32 %inc, ptr %j, align 4, !dbg !2393, !tbaa !582
  br label %for.cond17, !dbg !2394, !llvm.loop !2395

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2397
  br label %cleanup, !dbg !2397

cleanup:                                          ; preds = %for.end, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_symtab) #12, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_applies) #12, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 8, ptr %sh_symtab) #12, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !2397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc32
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc32, !dbg !2398

for.inc32:                                        ; preds = %cleanup.cont, %cleanup
  %37 = load i32, ptr %i, align 4, !dbg !2399, !tbaa !582
  %inc33 = add nsw i32 %37, 1, !dbg !2399
  store i32 %inc33, ptr %i, align 4, !dbg !2399, !tbaa !582
  br label %for.cond, !dbg !2400, !llvm.loop !2401

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2403
  ret void, !dbg !2403

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @do_reloc_info(ptr noundef %sec, ptr noundef %rel, ptr noundef %sym, ptr noundef %symname) #0 !dbg !2404 {
entry:
  %sec.addr = alloca ptr, align 8
  %rel.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  store ptr %sec, ptr %sec.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !2406, metadata !DIExpression()), !dbg !2410
  store ptr %rel, ptr %rel.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %rel.addr, metadata !2407, metadata !DIExpression()), !dbg !2411
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2408, metadata !DIExpression()), !dbg !2412
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2409, metadata !DIExpression()), !dbg !2413
  %0 = load ptr, ptr %sec.addr, align 8, !dbg !2414, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %0, i32 0, i32 0, !dbg !2415
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 7, !dbg !2416
  %1 = load i32, ptr %sh_info, align 4, !dbg !2416, !tbaa !978
  %call = call ptr @sec_name(i32 noundef %1), !dbg !2417
  %2 = load ptr, ptr %rel.addr, align 8, !dbg !2418, !tbaa !577
  %r_info = getelementptr inbounds %struct.Elf64_Rela, ptr %2, i32 0, i32 1, !dbg !2418
  %3 = load i64, ptr %r_info, align 8, !dbg !2418, !tbaa !1394
  %and = and i64 %3, 4294967295, !dbg !2418
  %conv = trunc i64 %and to i32, !dbg !2418
  %call1 = call ptr @rel_type(i32 noundef %conv), !dbg !2419
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !2420, !tbaa !577
  %5 = load ptr, ptr %sym.addr, align 8, !dbg !2421, !tbaa !577
  %call2 = call i32 @sym_index(ptr noundef %5), !dbg !2422
  %call3 = call ptr @sec_name(i32 noundef %call2), !dbg !2423
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.77, ptr noundef %call, ptr noundef %call1, ptr noundef %4, ptr noundef %call3), !dbg !2424
  ret i32 0, !dbg !2425
}

; Function Attrs: nounwind uwtable
define internal i32 @write32(i32 noundef %v, ptr noundef %f) #0 !dbg !2426 {
entry:
  %v.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %buf = alloca [4 x i8], align 1
  store i32 %v, ptr %v.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2428, metadata !DIExpression()), !dbg !2432
  store ptr %f, ptr %f.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #12, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2430, metadata !DIExpression()), !dbg !2435
  %0 = load i32, ptr %v.addr, align 4, !dbg !2436, !tbaa !582
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !2437
  call void @put_unaligned_le32(i32 noundef %0, ptr noundef %arraydecay), !dbg !2438
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !2439
  %1 = load ptr, ptr %f.addr, align 8, !dbg !2440, !tbaa !577
  %call = call i64 @fwrite(ptr noundef %arraydecay1, i64 noundef 1, i64 noundef 4, ptr noundef %1), !dbg !2441
  %cmp = icmp eq i64 %call, 4, !dbg !2442
  %2 = zext i1 %cmp to i64, !dbg !2441
  %cond = select i1 %cmp, i32 0, i32 -1, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #12, !dbg !2443
  ret i32 %cond, !dbg !2444
}

; Function Attrs: nounwind uwtable
define internal i32 @do_reloc64(ptr noundef %sec, ptr noundef %rel, ptr noundef %sym, ptr noundef %symname) #0 !dbg !2445 {
entry:
  %retval = alloca i32, align 4
  %sec.addr = alloca ptr, align 8
  %rel.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %r_type = alloca i32, align 4
  %offset = alloca i64, align 8
  %shn_abs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sec, ptr %sec.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !2447, metadata !DIExpression()), !dbg !2454
  store ptr %rel, ptr %rel.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %rel.addr, metadata !2448, metadata !DIExpression()), !dbg !2455
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2449, metadata !DIExpression()), !dbg !2456
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2450, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_type) #12, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %r_type, metadata !2451, metadata !DIExpression()), !dbg !2459
  %0 = load ptr, ptr %rel.addr, align 8, !dbg !2460, !tbaa !577
  %r_info = getelementptr inbounds %struct.Elf64_Rela, ptr %0, i32 0, i32 1, !dbg !2460
  %1 = load i64, ptr %r_info, align 8, !dbg !2460, !tbaa !1394
  %and = and i64 %1, 4294967295, !dbg !2460
  %conv = trunc i64 %and to i32, !dbg !2460
  store i32 %conv, ptr %r_type, align 4, !dbg !2459, !tbaa !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2452, metadata !DIExpression()), !dbg !2462
  %2 = load ptr, ptr %rel.addr, align 8, !dbg !2463, !tbaa !577
  %r_offset = getelementptr inbounds %struct.Elf64_Rela, ptr %2, i32 0, i32 0, !dbg !2464
  %3 = load i64, ptr %r_offset, align 8, !dbg !2464, !tbaa !1388
  store i64 %3, ptr %offset, align 8, !dbg !2462, !tbaa !775
  call void @llvm.lifetime.start.p0(i64 4, ptr %shn_abs) #12, !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %shn_abs, metadata !2453, metadata !DIExpression()), !dbg !2466
  %4 = load ptr, ptr %sym.addr, align 8, !dbg !2467, !tbaa !577
  %st_shndx = getelementptr inbounds %struct.Elf64_Sym, ptr %4, i32 0, i32 3, !dbg !2468
  %5 = load i16, ptr %st_shndx, align 2, !dbg !2468, !tbaa !1269
  %conv1 = zext i16 %5 to i32, !dbg !2467
  %cmp = icmp eq i32 %conv1, 65521, !dbg !2469
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2470

land.rhs:                                         ; preds = %entry
  %6 = load ptr, ptr %symname.addr, align 8, !dbg !2471, !tbaa !577
  %call = call i32 @is_reloc(i32 noundef 1, ptr noundef %6), !dbg !2472
  %tobool = icmp ne i32 %call, 0, !dbg !2473
  %lnot = xor i1 %tobool, true, !dbg !2473
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2474
  %land.ext = zext i1 %7 to i32, !dbg !2470
  store i32 %land.ext, ptr %shn_abs, align 4, !dbg !2466, !tbaa !582
  %8 = load ptr, ptr %sym.addr, align 8, !dbg !2475, !tbaa !577
  %st_shndx3 = getelementptr inbounds %struct.Elf64_Sym, ptr %8, i32 0, i32 3, !dbg !2477
  %9 = load i16, ptr %st_shndx3, align 2, !dbg !2477, !tbaa !1269
  %conv4 = zext i16 %9 to i32, !dbg !2475
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !2478
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2479

if.then:                                          ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !2480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2480

if.end:                                           ; preds = %land.end
  %10 = load ptr, ptr %sec.addr, align 8, !dbg !2481, !tbaa !577
  %shdr = getelementptr inbounds %struct.section, ptr %10, i32 0, i32 0, !dbg !2483
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr, i32 0, i32 7, !dbg !2484
  %11 = load i32, ptr %sh_info, align 4, !dbg !2484, !tbaa !978
  %12 = load i32, ptr @per_cpu_shndx, align 4, !dbg !2485, !tbaa !582
  %cmp7 = icmp eq i32 %11, %12, !dbg !2486
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2487

if.then9:                                         ; preds = %if.end
  %13 = load i64, ptr @per_cpu_load_addr, align 8, !dbg !2488, !tbaa !775
  %14 = load i64, ptr %offset, align 8, !dbg !2489, !tbaa !775
  %add = add i64 %14, %13, !dbg !2489
  store i64 %add, ptr %offset, align 8, !dbg !2489, !tbaa !775
  br label %if.end10, !dbg !2490

if.end10:                                         ; preds = %if.then9, %if.end
  %15 = load i32, ptr %r_type, align 4, !dbg !2491, !tbaa !582
  switch i32 %15, label %sw.default [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 24, label %sw.bb16
    i32 10, label %sw.bb21
    i32 11, label %sw.bb21
    i32 1, label %sw.bb21
  ], !dbg !2492

sw.bb:                                            ; preds = %if.end10, %if.end10
  %16 = load ptr, ptr %sym.addr, align 8, !dbg !2493, !tbaa !577
  %17 = load ptr, ptr %symname.addr, align 8, !dbg !2496, !tbaa !577
  %call11 = call i32 @is_percpu_sym(ptr noundef %16, ptr noundef %17), !dbg !2497
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2497
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2498

if.then13:                                        ; preds = %sw.bb
  %18 = load i64, ptr %offset, align 8, !dbg !2499, !tbaa !775
  %conv14 = trunc i64 %18 to i32, !dbg !2499
  call void @add_reloc(ptr noundef @relocs32neg, i32 noundef %conv14), !dbg !2500
  br label %if.end15, !dbg !2500

if.end15:                                         ; preds = %if.then13, %sw.bb
  br label %sw.epilog, !dbg !2501

sw.bb16:                                          ; preds = %if.end10
  %19 = load ptr, ptr %sym.addr, align 8, !dbg !2502, !tbaa !577
  %20 = load ptr, ptr %symname.addr, align 8, !dbg !2504, !tbaa !577
  %call17 = call i32 @is_percpu_sym(ptr noundef %19, ptr noundef %20), !dbg !2505
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2505
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2506

if.then19:                                        ; preds = %sw.bb16
  %21 = load ptr, ptr %symname.addr, align 8, !dbg !2507, !tbaa !577
  call void (ptr, ...) @die(ptr noundef @.str.82, ptr noundef %21) #13, !dbg !2508
  unreachable, !dbg !2508

if.end20:                                         ; preds = %sw.bb16
  br label %sw.epilog, !dbg !2509

sw.bb21:                                          ; preds = %if.end10, %if.end10, %if.end10
  %22 = load ptr, ptr %sym.addr, align 8, !dbg !2510, !tbaa !577
  %23 = load ptr, ptr %symname.addr, align 8, !dbg !2512, !tbaa !577
  %call22 = call i32 @is_percpu_sym(ptr noundef %22, ptr noundef %23), !dbg !2513
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2513
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2514

if.then24:                                        ; preds = %sw.bb21
  br label %sw.epilog, !dbg !2515

if.end25:                                         ; preds = %sw.bb21
  %24 = load i32, ptr %shn_abs, align 4, !dbg !2516, !tbaa !582
  %tobool26 = icmp ne i32 %24, 0, !dbg !2516
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !2518

if.then27:                                        ; preds = %if.end25
  %25 = load ptr, ptr %symname.addr, align 8, !dbg !2519, !tbaa !577
  %call28 = call i32 @is_reloc(i32 noundef 0, ptr noundef %25), !dbg !2522
  %tobool29 = icmp ne i32 %call28, 0, !dbg !2522
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2523

if.then30:                                        ; preds = %if.then27
  br label %sw.epilog, !dbg !2524

if.end31:                                         ; preds = %if.then27
  %26 = load i32, ptr %r_type, align 4, !dbg !2525, !tbaa !582
  %call32 = call ptr @rel_type(i32 noundef %26), !dbg !2526
  %27 = load ptr, ptr %symname.addr, align 8, !dbg !2527, !tbaa !577
  call void (ptr, ...) @die(ptr noundef @.str.83, ptr noundef %call32, ptr noundef %27) #13, !dbg !2528
  unreachable, !dbg !2528

if.end33:                                         ; preds = %if.end25
  %28 = load i64, ptr %offset, align 8, !dbg !2529, !tbaa !775
  %conv34 = trunc i64 %28 to i32, !dbg !2531
  %conv35 = sext i32 %conv34 to i64, !dbg !2531
  %29 = load i64, ptr %offset, align 8, !dbg !2532, !tbaa !775
  %cmp36 = icmp ne i64 %conv35, %29, !dbg !2533
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !2534

if.then38:                                        ; preds = %if.end33
  call void (ptr, ...) @die(ptr noundef @.str.84) #13, !dbg !2535
  unreachable, !dbg !2535

if.end39:                                         ; preds = %if.end33
  %30 = load i32, ptr %r_type, align 4, !dbg !2536, !tbaa !582
  %cmp40 = icmp eq i32 %30, 1, !dbg !2538
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !2539

if.then42:                                        ; preds = %if.end39
  %31 = load i64, ptr %offset, align 8, !dbg !2540, !tbaa !775
  %conv43 = trunc i64 %31 to i32, !dbg !2540
  call void @add_reloc(ptr noundef @relocs64, i32 noundef %conv43), !dbg !2541
  br label %if.end45, !dbg !2541

if.else:                                          ; preds = %if.end39
  %32 = load i64, ptr %offset, align 8, !dbg !2542, !tbaa !775
  %conv44 = trunc i64 %32 to i32, !dbg !2542
  call void @add_reloc(ptr noundef @relocs32, i32 noundef %conv44), !dbg !2543
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  br label %sw.epilog, !dbg !2544

sw.default:                                       ; preds = %if.end10
  %33 = load i32, ptr %r_type, align 4, !dbg !2545, !tbaa !582
  %call46 = call ptr @rel_type(i32 noundef %33), !dbg !2546
  %34 = load i32, ptr %r_type, align 4, !dbg !2547, !tbaa !582
  call void (ptr, ...) @die(ptr noundef @.str.85, ptr noundef %call46, i32 noundef %34) #13, !dbg !2548
  unreachable, !dbg !2548

sw.epilog:                                        ; preds = %if.end45, %if.then30, %if.then24, %if.end20, %if.end15, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !2549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2549

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %shn_abs) #12, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_type) #12, !dbg !2550
  %35 = load i32, ptr %retval, align 4, !dbg !2550
  ret i32 %35, !dbg !2550
}

; Function Attrs: nounwind uwtable
define internal void @sort_relocs(ptr noundef %r) #0 !dbg !2551 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2558, !tbaa !577
  %offset = getelementptr inbounds %struct.relocs, ptr %0, i32 0, i32 0, !dbg !2559
  %1 = load ptr, ptr %offset, align 8, !dbg !2559, !tbaa !1809
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2560, !tbaa !577
  %count = getelementptr inbounds %struct.relocs, ptr %2, i32 0, i32 1, !dbg !2561
  %3 = load i64, ptr %count, align 8, !dbg !2561, !tbaa !1773
  call void @qsort(ptr noundef %1, i64 noundef %3, i64 noundef 4, ptr noundef @cmp_relocs), !dbg !2562
  ret void, !dbg !2563
}

; Function Attrs: nounwind uwtable
define internal i32 @write32_as_text(i32 noundef %v, ptr noundef %f) #0 !dbg !2564 {
entry:
  %v.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  store i32 %v, ptr %v.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2566, metadata !DIExpression()), !dbg !2568
  store ptr %f, ptr %f.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2567, metadata !DIExpression()), !dbg !2569
  %0 = load ptr, ptr %f.addr, align 8, !dbg !2570, !tbaa !577
  %1 = load i32, ptr %v.addr, align 4, !dbg !2571, !tbaa !582
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.89, i32 noundef %1), !dbg !2572
  %cmp = icmp sgt i32 %call, 0, !dbg !2573
  %2 = zext i1 %cmp to i64, !dbg !2572
  %cond = select i1 %cmp, i32 0, i32 -1, !dbg !2572
  ret i32 %cond, !dbg !2574
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #10 !dbg !2575 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2580, metadata !DIExpression()), !dbg !2582
  store ptr %p, ptr %p.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2581, metadata !DIExpression()), !dbg !2583
  %0 = load i32, ptr %val.addr, align 4, !dbg !2584, !tbaa !582
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2585, !tbaa !577
  call void @__put_unaligned_le32(i32 noundef %0, ptr noundef %1), !dbg !2586
  ret void, !dbg !2587
}

declare !dbg !2588 i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @__put_unaligned_le32(i32 noundef %val, ptr noundef %p) #10 !dbg !2592 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2599, metadata !DIExpression()), !dbg !2601
  store ptr %p, ptr %p.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2600, metadata !DIExpression()), !dbg !2602
  %0 = load i32, ptr %val.addr, align 4, !dbg !2603, !tbaa !582
  %shr = lshr i32 %0, 16, !dbg !2604
  %conv = trunc i32 %shr to i16, !dbg !2603
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2605, !tbaa !577
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2, !dbg !2606
  call void @__put_unaligned_le16(i16 noundef zeroext %conv, ptr noundef %add.ptr), !dbg !2607
  %2 = load i32, ptr %val.addr, align 4, !dbg !2608, !tbaa !582
  %conv1 = trunc i32 %2 to i16, !dbg !2608
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2609, !tbaa !577
  call void @__put_unaligned_le16(i16 noundef zeroext %conv1, ptr noundef %3), !dbg !2610
  ret void, !dbg !2611
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__put_unaligned_le16(i16 noundef zeroext %val, ptr noundef %p) #10 !dbg !2612 {
entry:
  %val.addr = alloca i16, align 2
  %p.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2, !tbaa !1939
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2616, metadata !DIExpression()), !dbg !2618
  store ptr %p, ptr %p.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2617, metadata !DIExpression()), !dbg !2619
  %0 = load i16, ptr %val.addr, align 2, !dbg !2620, !tbaa !1939
  %conv = trunc i16 %0 to i8, !dbg !2620
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2621, !tbaa !577
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !2621
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !2621, !tbaa !577
  store i8 %conv, ptr %1, align 1, !dbg !2622, !tbaa !713
  %2 = load i16, ptr %val.addr, align 2, !dbg !2623, !tbaa !1939
  %conv1 = zext i16 %2 to i32, !dbg !2623
  %shr = ashr i32 %conv1, 8, !dbg !2624
  %conv2 = trunc i32 %shr to i8, !dbg !2623
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2625, !tbaa !577
  %incdec.ptr3 = getelementptr inbounds i8, ptr %3, i32 1, !dbg !2625
  store ptr %incdec.ptr3, ptr %p.addr, align 8, !dbg !2625, !tbaa !577
  store i8 %conv2, ptr %3, align 1, !dbg !2626, !tbaa !713
  ret void, !dbg !2627
}

; Function Attrs: nounwind uwtable
define internal i32 @is_percpu_sym(ptr noundef %sym, ptr noundef %symname) #0 !dbg !2628 {
entry:
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %shndx = alloca i32, align 4
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2632, metadata !DIExpression()), !dbg !2635
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2633, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr %shndx) #12, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %shndx, metadata !2634, metadata !DIExpression()), !dbg !2638
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !2639, !tbaa !577
  %call = call i32 @sym_index(ptr noundef %0), !dbg !2640
  store i32 %call, ptr %shndx, align 4, !dbg !2638, !tbaa !582
  %1 = load i32, ptr %shndx, align 4, !dbg !2641, !tbaa !582
  %2 = load i32, ptr @per_cpu_shndx, align 4, !dbg !2642, !tbaa !582
  %cmp = icmp eq i32 %1, %2, !dbg !2643
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2644

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %symname.addr, align 8, !dbg !2645, !tbaa !577
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.86) #15, !dbg !2646
  %tobool = icmp ne i32 %call1, 0, !dbg !2646
  br i1 %tobool, label %land.lhs.true2, label %land.end, !dbg !2647

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !2648, !tbaa !577
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.29) #15, !dbg !2649
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2649
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !2650

land.rhs:                                         ; preds = %land.lhs.true2
  %5 = load ptr, ptr %symname.addr, align 8, !dbg !2651, !tbaa !577
  %call5 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.87, i64 noundef 13) #15, !dbg !2652
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2650
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !2653
  %land.ext = zext i1 %6 to i32, !dbg !2650
  call void @llvm.lifetime.end.p0(i64 4, ptr %shndx) #12, !dbg !2654
  ret i32 %land.ext, !dbg !2655
}

; Function Attrs: nounwind uwtable
define internal void @add_reloc(ptr noundef %r, i32 noundef %offset) #0 !dbg !2656 {
entry:
  %r.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %newsize = alloca i64, align 8
  %mem = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2660, metadata !DIExpression()), !dbg !2666
  store i32 %offset, ptr %offset.addr, align 4, !tbaa !582
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2661, metadata !DIExpression()), !dbg !2667
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2668, !tbaa !577
  %count = getelementptr inbounds %struct.relocs, ptr %0, i32 0, i32 1, !dbg !2669
  %1 = load i64, ptr %count, align 8, !dbg !2669, !tbaa !1773
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2670, !tbaa !577
  %size = getelementptr inbounds %struct.relocs, ptr %2, i32 0, i32 2, !dbg !2671
  %3 = load i64, ptr %size, align 8, !dbg !2671, !tbaa !2672
  %cmp = icmp eq i64 %1, %3, !dbg !2673
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2674

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %newsize) #12, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %newsize, metadata !2662, metadata !DIExpression()), !dbg !2676
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2677, !tbaa !577
  %size1 = getelementptr inbounds %struct.relocs, ptr %4, i32 0, i32 2, !dbg !2678
  %5 = load i64, ptr %size1, align 8, !dbg !2678, !tbaa !2672
  %add = add i64 %5, 50000, !dbg !2679
  store i64 %add, ptr %newsize, align 8, !dbg !2676, !tbaa !775
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #12, !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !2665, metadata !DIExpression()), !dbg !2681
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2682, !tbaa !577
  %offset2 = getelementptr inbounds %struct.relocs, ptr %6, i32 0, i32 0, !dbg !2683
  %7 = load ptr, ptr %offset2, align 8, !dbg !2683, !tbaa !1809
  %8 = load i64, ptr %newsize, align 8, !dbg !2684, !tbaa !775
  %mul = mul i64 %8, 4, !dbg !2685
  %call = call ptr @realloc(ptr noundef %7, i64 noundef %mul) #18, !dbg !2686
  store ptr %call, ptr %mem, align 8, !dbg !2681, !tbaa !577
  %9 = load ptr, ptr %mem, align 8, !dbg !2687, !tbaa !577
  %tobool = icmp ne ptr %9, null, !dbg !2687
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2689

if.then3:                                         ; preds = %if.then
  %10 = load i64, ptr %newsize, align 8, !dbg !2690, !tbaa !775
  call void (ptr, ...) @die(ptr noundef @.str.88, i64 noundef %10) #13, !dbg !2691
  unreachable, !dbg !2691

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %mem, align 8, !dbg !2692, !tbaa !577
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2693, !tbaa !577
  %offset4 = getelementptr inbounds %struct.relocs, ptr %12, i32 0, i32 0, !dbg !2694
  store ptr %11, ptr %offset4, align 8, !dbg !2695, !tbaa !1809
  %13 = load i64, ptr %newsize, align 8, !dbg !2696, !tbaa !775
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2697, !tbaa !577
  %size5 = getelementptr inbounds %struct.relocs, ptr %14, i32 0, i32 2, !dbg !2698
  store i64 %13, ptr %size5, align 8, !dbg !2699, !tbaa !2672
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #12, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 8, ptr %newsize) #12, !dbg !2700
  br label %if.end6, !dbg !2701

if.end6:                                          ; preds = %if.end, %entry
  %15 = load i32, ptr %offset.addr, align 4, !dbg !2702, !tbaa !582
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2703, !tbaa !577
  %offset7 = getelementptr inbounds %struct.relocs, ptr %16, i32 0, i32 0, !dbg !2704
  %17 = load ptr, ptr %offset7, align 8, !dbg !2704, !tbaa !1809
  %18 = load ptr, ptr %r.addr, align 8, !dbg !2705, !tbaa !577
  %count8 = getelementptr inbounds %struct.relocs, ptr %18, i32 0, i32 1, !dbg !2706
  %19 = load i64, ptr %count8, align 8, !dbg !2707, !tbaa !1773
  %inc = add i64 %19, 1, !dbg !2707
  store i64 %inc, ptr %count8, align 8, !dbg !2707, !tbaa !1773
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %19, !dbg !2703
  store i32 %15, ptr %arrayidx, align 4, !dbg !2708, !tbaa !582
  ret void, !dbg !2709
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2710 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind allocsize(1)
declare !dbg !2713 ptr @realloc(ptr noundef, i64 noundef) #11

declare !dbg !2716 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmp_relocs(ptr noundef %va, ptr noundef %vb) #0 !dbg !2723 {
entry:
  %va.addr = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %va, ptr %va.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %va.addr, metadata !2725, metadata !DIExpression()), !dbg !2731
  store ptr %vb, ptr %vb.addr, align 8, !tbaa !577
  call void @llvm.dbg.declare(metadata ptr %vb.addr, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #12, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2727, metadata !DIExpression()), !dbg !2734
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %b, metadata !2730, metadata !DIExpression()), !dbg !2735
  %0 = load ptr, ptr %va.addr, align 8, !dbg !2736, !tbaa !577
  store ptr %0, ptr %a, align 8, !dbg !2737, !tbaa !577
  %1 = load ptr, ptr %vb.addr, align 8, !dbg !2738, !tbaa !577
  store ptr %1, ptr %b, align 8, !dbg !2739, !tbaa !577
  %2 = load ptr, ptr %a, align 8, !dbg !2740, !tbaa !577
  %3 = load i32, ptr %2, align 4, !dbg !2741, !tbaa !582
  %4 = load ptr, ptr %b, align 8, !dbg !2742, !tbaa !577
  %5 = load i32, ptr %4, align 4, !dbg !2743, !tbaa !582
  %cmp = icmp eq i32 %3, %5, !dbg !2744
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2745

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2745

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %a, align 8, !dbg !2746, !tbaa !577
  %7 = load i32, ptr %6, align 4, !dbg !2747, !tbaa !582
  %8 = load ptr, ptr %b, align 8, !dbg !2748, !tbaa !577
  %9 = load i32, ptr %8, align 4, !dbg !2749, !tbaa !582
  %cmp1 = icmp ugt i32 %7, %9, !dbg !2750
  %10 = zext i1 %cmp1 to i64, !dbg !2751
  %cond = select i1 %cmp1, i32 1, i32 -1, !dbg !2751
  br label %cond.end, !dbg !2745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ], !dbg !2745
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #12, !dbg !2752
  ret i32 %cond2, !dbg !2753
}

declare !dbg !2754 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!506, !507, !508, !509, !510, !511}
!llvm.ident = !{!512}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sym_regex_realmode", scope: !2, file: !28, line: 96, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/tools/.relocs_64.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O1 -fomit-frame-pointer -std=gnu11 -I ./tools/include -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/tools/relocs_64.ll arch/x86/tools/relocs_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/tools/relocs_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c9fc36b56d894302e97c773354670cf")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "symtype", file: !6, line: 25, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "arch/x86/tools/relocs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d0059436f6812dc05cb9f158e59cffb")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "S_ABS", value: 0)
!10 = !DIEnumerator(name: "S_REL", value: 1)
!11 = !DIEnumerator(name: "S_SEG", value: 2)
!12 = !DIEnumerator(name: "S_LIN", value: 3)
!13 = !DIEnumerator(name: "S_NSYMTYPES", value: 4)
!14 = !{!15, !16, !17, !22}
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 26, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 41, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 27, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 44, baseType: !24)
!24 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!25 = !{!26, !33, !38, !0, !43, !49, !54, !59, !64, !93, !98, !100, !105, !110, !115, !120, !125, !130, !135, !137, !139, !141, !146, !151, !156, !189, !191, !193, !198, !200, !246, !251, !256, !258, !260, !262, !264, !266, !268, !270, !275, !280, !285, !287, !289, !291, !293, !298, !303, !308, !313, !318, !320, !322, !324, !326, !328, !333, !342, !347, !352, !354, !356, !363, !365, !367, !372, !374, !376, !383, !385, !390, !392, !397, !399, !401, !403, !405, !407, !409, !411, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !441, !443, !448, !450, !455, !460, !462, !464, !469, !474, !479, !484, !486, !488, !490, !498, !500, !502, !504}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !28, line: 147, type: !29, isLocal: true, isDefinition: true)
!28 = !DIFile(filename: "arch/x86/tools/relocs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9821afd1f91ce93c1387f4d3281a03e")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 3)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !28, line: 102, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 5)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !28, line: 108, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 16)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "sym_regex", scope: !2, file: !28, line: 118, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !28, line: 56, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 688, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 86)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !28, line: 67, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3968, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 496)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "sym_regex_kernel", scope: !2, file: !28, line: 48, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "sym_regex_c", scope: !2, file: !28, line: 120, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, elements: !62)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !68, line: 478, baseType: !69)
!68 = !DIFile(filename: "/usr/include/regex.h", directory: "", checksumkind: CSK_MD5, checksum: "6d816f6cca462fea1b68ba10523ed664")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !68, line: 413, size: 512, elements: !70)
!70 = !{!71, !74, !76, !77, !79, !81, !83, !86, !87, !88, !89, !90, !91, !92}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__buffer", scope: !69, file: !68, line: 417, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !68, line: 417, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__allocated", scope: !69, file: !68, line: 420, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !68, line: 56, baseType: !16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__used", scope: !69, file: !68, line: 423, baseType: !75, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__syntax", scope: !69, file: !68, line: 426, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !68, line: 72, baseType: !16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__fastmap", scope: !69, file: !68, line: 431, baseType: !80, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__translate", scope: !69, file: !68, line: 437, baseType: !82, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !69, file: !68, line: 440, baseType: !84, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 18, baseType: !16)
!85 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__can_be_null", scope: !69, file: !68, line: 446, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__regs_allocated", scope: !69, file: !68, line: 457, baseType: !7, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__fastmap_accurate", scope: !69, file: !68, line: 461, baseType: !7, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__no_sub", scope: !69, file: !68, line: 465, baseType: !7, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__not_bol", scope: !69, file: !68, line: 469, baseType: !7, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__not_eol", scope: !69, file: !68, line: 472, baseType: !7, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__newline_anchor", scope: !69, file: !68, line: 475, baseType: !7, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !28, line: 369, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 224, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 28)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !28, line: 372, type: !35, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !28, line: 373, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 14)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !28, line: 376, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !28, line: 379, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 208, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 26)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !28, line: 382, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 168, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 21)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !28, line: 403, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 232, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 29)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !28, line: 405, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 12)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !28, line: 405, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 7)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !28, line: 409, type: !117, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !28, line: 411, type: !112, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !28, line: 413, type: !112, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !28, line: 420, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 24)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !28, line: 423, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 352, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 44)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !28, line: 433, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 272, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 34)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "ehdr", scope: !2, file: !28, line: 14, type: !158, isLocal: true, isDefinition: true)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Ehdr", file: !159, line: 97, baseType: !160)
!159 = !DIFile(filename: "/usr/include/elf.h", directory: "", checksumkind: CSK_MD5, checksum: "155462709c9e69bfc5630b2917029867")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 81, size: 512, elements: !161)
!161 = !{!162, !164, !170, !171, !175, !179, !181, !182, !183, !184, !185, !186, !187, !188}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !160, file: !159, line: 83, baseType: !163, size: 128)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !41)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !160, file: !159, line: 84, baseType: !165, size: 16, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !159, line: 28, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !167, line: 25, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 40, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !160, file: !159, line: 85, baseType: !165, size: 16, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !160, file: !159, line: 86, baseType: !172, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !159, line: 33, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 26, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !160, file: !159, line: 87, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !159, line: 44, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !167, line: 27, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !160, file: !159, line: 88, baseType: !180, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !159, line: 48, baseType: !177)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !160, file: !159, line: 89, baseType: !180, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !160, file: !159, line: 90, baseType: !172, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !160, file: !159, line: 91, baseType: !165, size: 16, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !160, file: !159, line: 92, baseType: !165, size: 16, offset: 432)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !160, file: !159, line: 93, baseType: !165, size: 16, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !160, file: !159, line: 94, baseType: !165, size: 16, offset: 464)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !160, file: !159, line: 95, baseType: !165, size: 16, offset: 480)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !160, file: !159, line: 96, baseType: !165, size: 16, offset: 496)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "shnum", scope: !2, file: !28, line: 15, type: !16, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "shstrndx", scope: !2, file: !28, line: 16, type: !7, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !28, line: 443, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 40)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !28, line: 453, type: !148, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "secs", scope: !2, file: !28, line: 46, type: !202, isLocal: true, isDefinition: true)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section", file: !28, line: 38, size: 832, elements: !204)
!204 = !{!205, !220, !221, !233, !236, !245}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "shdr", scope: !203, file: !28, line: 39, baseType: !206, size: 512)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Shdr", file: !159, line: 408, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 396, size: 512, elements: !208)
!208 = !{!209, !210, !211, !213, !214, !215, !216, !217, !218, !219}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !207, file: !159, line: 398, baseType: !172, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !207, file: !159, line: 399, baseType: !172, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !207, file: !159, line: 400, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !159, line: 39, baseType: !177)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !207, file: !159, line: 401, baseType: !176, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !207, file: !159, line: 402, baseType: !180, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !207, file: !159, line: 403, baseType: !212, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !207, file: !159, line: 404, baseType: !172, size: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !207, file: !159, line: 405, baseType: !172, size: 32, offset: 352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !207, file: !159, line: 406, baseType: !212, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !207, file: !159, line: 407, baseType: !212, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !203, file: !28, line: 40, baseType: !202, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !203, file: !28, line: 41, baseType: !222, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !159, line: 535, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 527, size: 192, elements: !225)
!225 = !{!226, !227, !228, !229, !231, !232}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !224, file: !159, line: 529, baseType: !172, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !224, file: !159, line: 530, baseType: !15, size: 8, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !224, file: !159, line: 531, baseType: !15, size: 8, offset: 40)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !224, file: !159, line: 532, baseType: !230, size: 16, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Section", file: !159, line: 52, baseType: !166)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !224, file: !159, line: 533, baseType: !176, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !224, file: !159, line: 534, baseType: !212, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "xsymtab", scope: !203, file: !28, line: 42, baseType: !234, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Word", file: !159, line: 31, baseType: !173)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "reltab", scope: !203, file: !28, line: 43, baseType: !237, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Rela", file: !159, line: 663, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 658, size: 192, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "r_offset", scope: !239, file: !159, line: 660, baseType: !176, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "r_info", scope: !239, file: !159, line: 661, baseType: !212, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "r_addend", scope: !239, file: !159, line: 662, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sxword", file: !159, line: 40, baseType: !22)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !203, file: !28, line: 44, baseType: !80, size: 64, offset: 768)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !28, line: 481, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 312, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 39)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !28, line: 490, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 240, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !28, line: 508, type: !195, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !28, line: 517, type: !248, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !28, line: 528, type: !248, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "shxsymtabndx", scope: !2, file: !28, line: 18, type: !7, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "shsymtabndx", scope: !2, file: !28, line: 17, type: !7, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !28, line: 568, type: !248, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !28, line: 801, type: !102, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !28, line: 807, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 120, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 15)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !28, line: 809, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 216, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 27)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !28, line: 258, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 9)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !28, line: 263, type: !282, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !28, line: 266, type: !132, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "per_cpu_shndx", scope: !2, file: !28, line: 793, type: !21, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "per_cpu_load_addr", scope: !2, file: !28, line: 794, type: !176, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !28, line: 598, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 280, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 35)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !28, line: 602, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 144, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 18)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !28, line: 603, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 496, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 62)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !28, line: 629, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 2)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !28, line: 156, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 88, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 11)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !28, line: 157, type: !315, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !28, line: 158, type: !282, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !28, line: 159, type: !127, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !28, line: 160, type: !282, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !28, line: 161, type: !315, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !28, line: 162, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "type_name", scope: !335, file: !28, line: 154, type: !341, isLocal: true, isDefinition: true)
!335 = distinct !DISubprogram(name: "sym_type", scope: !28, file: !28, line: 152, type: !336, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!47, !7}
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "type", arg: 1, scope: !335, file: !28, line: 152, type: !7)
!340 = !DILocalVariable(name: "name", scope: !335, file: !28, line: 165, type: !47)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 448, elements: !133)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !28, line: 165, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 176, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 22)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !28, line: 176, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 10)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !28, line: 177, type: !315, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !28, line: 178, type: !282, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "bind_name", scope: !358, file: !28, line: 174, type: !362, isLocal: true, isDefinition: true)
!358 = distinct !DISubprogram(name: "sym_bind", scope: !28, file: !28, line: 172, type: !336, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "bind", arg: 1, scope: !358, file: !28, line: 172, type: !7)
!361 = !DILocalVariable(name: "name", scope: !358, file: !28, line: 181, type: !47)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !31)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !28, line: 181, type: !344, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !28, line: 192, type: !127, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !28, line: 193, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 104, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 13)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !28, line: 194, type: !315, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !28, line: 195, type: !102, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "visibility_name", scope: !378, file: !28, line: 190, type: !382, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "sym_visibility", scope: !28, file: !28, line: 188, type: !336, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!379 = !{!380, !381}
!380 = !DILocalVariable(name: "visibility", arg: 1, scope: !378, file: !28, line: 188, type: !7)
!381 = !DILocalVariable(name: "name", scope: !378, file: !28, line: 198, type: !47)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !62)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !28, line: 198, type: !95, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !28, line: 638, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 248, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 31)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !28, line: 694, type: !248, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !28, line: 696, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 392, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 49)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !28, line: 210, type: !102, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !28, line: 211, type: !127, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !28, line: 213, type: !102, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !28, line: 214, type: !272, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !28, line: 215, type: !272, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !28, line: 216, type: !102, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !28, line: 217, type: !300, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !28, line: 218, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 152, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 19)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !28, line: 219, type: !300, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !28, line: 220, type: !300, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !28, line: 221, type: !127, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !28, line: 222, type: !369, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !28, line: 223, type: !127, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !28, line: 224, type: !102, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !28, line: 225, type: !315, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !28, line: 226, type: !369, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !28, line: 212, type: !102, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "type_name", scope: !436, file: !28, line: 207, type: !440, isLocal: true, isDefinition: true)
!436 = distinct !DISubprogram(name: "rel_type", scope: !28, file: !28, line: 205, type: !336, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!438, !439}
!438 = !DILocalVariable(name: "type", arg: 1, scope: !436, file: !28, line: 205, type: !7)
!439 = !DILocalVariable(name: "name", scope: !436, file: !28, line: 246, type: !47)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1600, elements: !108)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !28, line: 246, type: !277, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1177, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 384, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 48)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1167, type: !369, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1091, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 344, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 43)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1103, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 448, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 56)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1119, type: !95, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1120, type: !315, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !28, line: 883, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 480, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 60)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !28, line: 904, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 288, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 36)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !28, line: 916, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 336, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 42)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !28, line: 925, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 38)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !28, line: 839, type: !369, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !28, line: 841, type: !102, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !28, line: 721, type: !476, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "relocs16", scope: !2, file: !28, line: 28, type: !492, isLocal: true, isDefinition: true)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relocs", file: !28, line: 22, size: 192, elements: !493)
!493 = !{!494, !496, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !492, file: !28, line: 23, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !492, file: !28, line: 24, baseType: !16, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !28, line: 25, baseType: !16, size: 64, offset: 128)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "relocs32", scope: !2, file: !28, line: 29, type: !492, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "relocs32neg", scope: !2, file: !28, line: 31, type: !492, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "relocs64", scope: !2, file: !28, line: 32, type: !492, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !28, line: 1077, type: !272, isLocal: true, isDefinition: true)
!506 = !{i32 7, !"Dwarf Version", i32 5}
!507 = !{i32 2, !"Debug Info Version", i32 3}
!508 = !{i32 1, !"wchar_size", i32 4}
!509 = !{i32 8, !"PIC Level", i32 2}
!510 = !{i32 7, !"PIE Level", i32 2}
!511 = !{i32 7, !"uwtable", i32 2}
!512 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!513 = distinct !DISubprogram(name: "process_64", scope: !28, file: !28, line: 1187, type: !514, scopeLine: 1190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516, !21, !21, !21, !21, !21}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !518, line: 7, baseType: !519)
!518 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !520, line: 49, size: 1728, elements: !521)
!520 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !537, !539, !540, !541, !543, !544, !546, !550, !553, !555, !558, !561, !562, !564, !565, !566}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !519, file: !520, line: 51, baseType: !21, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !519, file: !520, line: 54, baseType: !80, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !519, file: !520, line: 55, baseType: !80, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !519, file: !520, line: 56, baseType: !80, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !519, file: !520, line: 57, baseType: !80, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !519, file: !520, line: 58, baseType: !80, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !519, file: !520, line: 59, baseType: !80, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !519, file: !520, line: 60, baseType: !80, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !519, file: !520, line: 61, baseType: !80, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !519, file: !520, line: 64, baseType: !80, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !519, file: !520, line: 65, baseType: !80, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !519, file: !520, line: 66, baseType: !80, size: 64, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !519, file: !520, line: 68, baseType: !535, size: 64, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !520, line: 36, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !519, file: !520, line: 70, baseType: !538, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !519, file: !520, line: 72, baseType: !21, size: 32, offset: 896)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !519, file: !520, line: 73, baseType: !21, size: 32, offset: 928)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !519, file: !520, line: 74, baseType: !542, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 152, baseType: !24)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !519, file: !520, line: 77, baseType: !169, size: 16, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !519, file: !520, line: 78, baseType: !545, size: 8, offset: 1040)
!545 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !519, file: !520, line: 79, baseType: !547, size: 8, offset: 1048)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 1)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !519, file: !520, line: 81, baseType: !551, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !520, line: 43, baseType: null)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !519, file: !520, line: 89, baseType: !554, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 153, baseType: !24)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !519, file: !520, line: 91, baseType: !556, size: 64, offset: 1216)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !520, line: 37, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !519, file: !520, line: 92, baseType: !559, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !520, line: 38, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !519, file: !520, line: 93, baseType: !538, size: 64, offset: 1344)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !519, file: !520, line: 94, baseType: !563, size: 64, offset: 1408)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !519, file: !520, line: 95, baseType: !84, size: 64, offset: 1472)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !519, file: !520, line: 96, baseType: !21, size: 32, offset: 1536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !519, file: !520, line: 98, baseType: !567, size: 160, offset: 1568)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 20)
!570 = !{!571, !572, !573, !574, !575, !576}
!571 = !DILocalVariable(name: "fp", arg: 1, scope: !513, file: !28, line: 1187, type: !516)
!572 = !DILocalVariable(name: "use_real_mode", arg: 2, scope: !513, file: !28, line: 1187, type: !21)
!573 = !DILocalVariable(name: "as_text", arg: 3, scope: !513, file: !28, line: 1187, type: !21)
!574 = !DILocalVariable(name: "show_absolute_syms", arg: 4, scope: !513, file: !28, line: 1188, type: !21)
!575 = !DILocalVariable(name: "show_absolute_relocs", arg: 5, scope: !513, file: !28, line: 1188, type: !21)
!576 = !DILocalVariable(name: "show_reloc_info", arg: 6, scope: !513, file: !28, line: 1189, type: !21)
!577 = !{!578, !578, i64 0}
!578 = !{!"any pointer", !579, i64 0}
!579 = !{!"omnipotent char", !580, i64 0}
!580 = !{!"Simple C/C++ TBAA"}
!581 = !DILocation(line: 1187, column: 20, scope: !513)
!582 = !{!583, !583, i64 0}
!583 = !{!"int", !579, i64 0}
!584 = !DILocation(line: 1187, column: 28, scope: !513)
!585 = !DILocation(line: 1187, column: 47, scope: !513)
!586 = !DILocation(line: 1188, column: 11, scope: !513)
!587 = !DILocation(line: 1188, column: 35, scope: !513)
!588 = !DILocation(line: 1189, column: 11, scope: !513)
!589 = !DILocation(line: 1191, column: 13, scope: !513)
!590 = !DILocation(line: 1191, column: 2, scope: !513)
!591 = !DILocation(line: 1192, column: 12, scope: !513)
!592 = !DILocation(line: 1192, column: 2, scope: !513)
!593 = !DILocation(line: 1193, column: 13, scope: !513)
!594 = !DILocation(line: 1193, column: 2, scope: !513)
!595 = !DILocation(line: 1194, column: 15, scope: !513)
!596 = !DILocation(line: 1194, column: 2, scope: !513)
!597 = !DILocation(line: 1195, column: 15, scope: !513)
!598 = !DILocation(line: 1195, column: 2, scope: !513)
!599 = !DILocation(line: 1196, column: 14, scope: !513)
!600 = !DILocation(line: 1196, column: 2, scope: !513)
!601 = !DILocation(line: 1198, column: 3, scope: !602)
!602 = distinct !DILexicalBlock(scope: !513, file: !28, line: 1197, column: 6)
!603 = !DILocation(line: 1199, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !513, file: !28, line: 1199, column: 6)
!605 = !DILocation(line: 1199, column: 6, scope: !513)
!606 = !DILocation(line: 1200, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !28, line: 1199, column: 26)
!608 = !DILocation(line: 1201, column: 3, scope: !607)
!609 = !DILocation(line: 1203, column: 6, scope: !610)
!610 = distinct !DILexicalBlock(scope: !513, file: !28, line: 1203, column: 6)
!611 = !DILocation(line: 1203, column: 6, scope: !513)
!612 = !DILocation(line: 1204, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !28, line: 1203, column: 28)
!614 = !DILocation(line: 1205, column: 3, scope: !613)
!615 = !DILocation(line: 1207, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !513, file: !28, line: 1207, column: 6)
!617 = !DILocation(line: 1207, column: 6, scope: !513)
!618 = !DILocation(line: 1208, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !28, line: 1207, column: 23)
!620 = !DILocation(line: 1209, column: 3, scope: !619)
!621 = !DILocation(line: 1211, column: 14, scope: !513)
!622 = !DILocation(line: 1211, column: 23, scope: !513)
!623 = !DILocation(line: 1211, column: 2, scope: !513)
!624 = !DILocation(line: 1212, column: 1, scope: !513)
!625 = distinct !DISubprogram(name: "regex_init", scope: !28, file: !28, line: 127, type: !626, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !21}
!628 = !{!629, !630, !634, !635}
!629 = !DILocalVariable(name: "use_real_mode", arg: 1, scope: !625, file: !28, line: 127, type: !21)
!630 = !DILocalVariable(name: "errbuf", scope: !625, file: !28, line: 129, type: !631)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 128)
!634 = !DILocalVariable(name: "err", scope: !625, file: !28, line: 130, type: !21)
!635 = !DILocalVariable(name: "i", scope: !625, file: !28, line: 131, type: !21)
!636 = !DILocation(line: 127, column: 28, scope: !625)
!637 = !DILocation(line: 129, column: 9, scope: !625)
!638 = !DILocation(line: 129, column: 14, scope: !625)
!639 = !DILocation(line: 130, column: 9, scope: !625)
!640 = !DILocation(line: 130, column: 13, scope: !625)
!641 = !DILocation(line: 131, column: 2, scope: !625)
!642 = !DILocation(line: 131, column: 6, scope: !625)
!643 = !DILocation(line: 133, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !625, file: !28, line: 133, column: 6)
!645 = !DILocation(line: 133, column: 6, scope: !625)
!646 = !DILocation(line: 134, column: 13, scope: !644)
!647 = !DILocation(line: 134, column: 3, scope: !644)
!648 = !DILocation(line: 136, column: 13, scope: !644)
!649 = !DILocation(line: 138, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !625, file: !28, line: 138, column: 2)
!651 = !DILocation(line: 138, column: 7, scope: !650)
!652 = !DILocation(line: 138, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !28, line: 138, column: 2)
!654 = !DILocation(line: 138, column: 16, scope: !653)
!655 = !DILocation(line: 138, column: 2, scope: !650)
!656 = !DILocation(line: 139, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !28, line: 139, column: 7)
!658 = distinct !DILexicalBlock(scope: !653, file: !28, line: 138, column: 36)
!659 = !DILocation(line: 139, column: 18, scope: !657)
!660 = !DILocation(line: 139, column: 7, scope: !658)
!661 = !DILocation(line: 140, column: 4, scope: !657)
!662 = !DILocation(line: 142, column: 30, scope: !658)
!663 = !DILocation(line: 142, column: 18, scope: !658)
!664 = !DILocation(line: 142, column: 34, scope: !658)
!665 = !DILocation(line: 142, column: 44, scope: !658)
!666 = !DILocation(line: 142, column: 9, scope: !658)
!667 = !DILocation(line: 142, column: 7, scope: !658)
!668 = !DILocation(line: 145, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !658, file: !28, line: 145, column: 7)
!670 = !DILocation(line: 145, column: 7, scope: !658)
!671 = !DILocation(line: 146, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !669, file: !28, line: 145, column: 12)
!673 = !DILocation(line: 146, column: 31, scope: !672)
!674 = !DILocation(line: 146, column: 19, scope: !672)
!675 = !DILocation(line: 146, column: 35, scope: !672)
!676 = !DILocation(line: 146, column: 4, scope: !672)
!677 = !DILocation(line: 147, column: 14, scope: !672)
!678 = !DILocation(line: 147, column: 4, scope: !672)
!679 = !DILocation(line: 149, column: 9, scope: !658)
!680 = !DILocation(line: 138, column: 32, scope: !653)
!681 = !DILocation(line: 138, column: 2, scope: !653)
!682 = distinct !{!682, !655, !683, !684, !685}
!683 = !DILocation(line: 149, column: 9, scope: !650)
!684 = !{!"llvm.loop.mustprogress"}
!685 = !{!"llvm.loop.unroll.disable"}
!686 = !DILocation(line: 150, column: 1, scope: !625)
!687 = distinct !DISubprogram(name: "read_ehdr", scope: !28, file: !28, line: 366, type: !688, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !516}
!690 = !{!691, !692}
!691 = !DILocalVariable(name: "fp", arg: 1, scope: !687, file: !28, line: 366, type: !516)
!692 = !DILocalVariable(name: "shdr", scope: !693, file: !28, line: 417, type: !206)
!693 = distinct !DILexicalBlock(scope: !694, file: !28, line: 416, column: 52)
!694 = distinct !DILexicalBlock(scope: !687, file: !28, line: 416, column: 6)
!695 = !DILocation(line: 366, column: 29, scope: !687)
!696 = !DILocation(line: 368, column: 36, scope: !697)
!697 = distinct !DILexicalBlock(scope: !687, file: !28, line: 368, column: 6)
!698 = !DILocation(line: 368, column: 6, scope: !697)
!699 = !DILocation(line: 368, column: 40, scope: !697)
!700 = !DILocation(line: 368, column: 6, scope: !687)
!701 = !DILocation(line: 370, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !28, line: 368, column: 46)
!703 = !DILocation(line: 370, column: 4, scope: !702)
!704 = !DILocation(line: 369, column: 3, scope: !702)
!705 = !DILocation(line: 372, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !687, file: !28, line: 372, column: 6)
!707 = !DILocation(line: 372, column: 44, scope: !706)
!708 = !DILocation(line: 372, column: 6, scope: !687)
!709 = !DILocation(line: 373, column: 3, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !28, line: 372, column: 50)
!711 = !DILocation(line: 375, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !687, file: !28, line: 375, column: 6)
!713 = !{!579, !579, i64 0}
!714 = !DILocation(line: 375, column: 29, scope: !712)
!715 = !DILocation(line: 375, column: 6, scope: !687)
!716 = !DILocation(line: 376, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !28, line: 375, column: 43)
!718 = !DILocation(line: 378, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !687, file: !28, line: 378, column: 6)
!720 = !DILocation(line: 378, column: 28, scope: !719)
!721 = !DILocation(line: 378, column: 6, scope: !687)
!722 = !DILocation(line: 379, column: 3, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !28, line: 378, column: 44)
!724 = !DILocation(line: 381, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !687, file: !28, line: 381, column: 6)
!726 = !DILocation(line: 381, column: 31, scope: !725)
!727 = !DILocation(line: 381, column: 6, scope: !687)
!728 = !DILocation(line: 382, column: 3, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !28, line: 381, column: 46)
!730 = !DILocation(line: 385, column: 21, scope: !687)
!731 = !{!732, !733, i64 16}
!732 = !{!"", !579, i64 0, !733, i64 16, !733, i64 18, !583, i64 20, !734, i64 24, !734, i64 32, !734, i64 40, !583, i64 48, !733, i64 52, !733, i64 54, !733, i64 56, !733, i64 58, !733, i64 60, !733, i64 62}
!733 = !{!"short", !579, i64 0}
!734 = !{!"long", !579, i64 0}
!735 = !DILocation(line: 385, column: 19, scope: !687)
!736 = !DILocation(line: 386, column: 21, scope: !687)
!737 = !{!732, !733, i64 18}
!738 = !DILocation(line: 386, column: 19, scope: !687)
!739 = !DILocation(line: 387, column: 21, scope: !687)
!740 = !{!732, !583, i64 20}
!741 = !DILocation(line: 387, column: 19, scope: !687)
!742 = !DILocation(line: 388, column: 21, scope: !687)
!743 = !{!732, !734, i64 24}
!744 = !DILocation(line: 388, column: 19, scope: !687)
!745 = !DILocation(line: 389, column: 21, scope: !687)
!746 = !{!732, !734, i64 32}
!747 = !DILocation(line: 389, column: 19, scope: !687)
!748 = !DILocation(line: 390, column: 21, scope: !687)
!749 = !{!732, !734, i64 40}
!750 = !DILocation(line: 390, column: 19, scope: !687)
!751 = !DILocation(line: 391, column: 21, scope: !687)
!752 = !{!732, !583, i64 48}
!753 = !DILocation(line: 391, column: 19, scope: !687)
!754 = !DILocation(line: 392, column: 21, scope: !687)
!755 = !{!732, !733, i64 52}
!756 = !DILocation(line: 392, column: 19, scope: !687)
!757 = !DILocation(line: 393, column: 21, scope: !687)
!758 = !{!732, !733, i64 54}
!759 = !DILocation(line: 393, column: 19, scope: !687)
!760 = !DILocation(line: 394, column: 21, scope: !687)
!761 = !{!732, !733, i64 56}
!762 = !DILocation(line: 394, column: 19, scope: !687)
!763 = !DILocation(line: 395, column: 21, scope: !687)
!764 = !{!732, !733, i64 58}
!765 = !DILocation(line: 395, column: 19, scope: !687)
!766 = !DILocation(line: 396, column: 21, scope: !687)
!767 = !{!732, !733, i64 60}
!768 = !DILocation(line: 396, column: 19, scope: !687)
!769 = !DILocation(line: 397, column: 21, scope: !687)
!770 = !{!732, !733, i64 62}
!771 = !DILocation(line: 397, column: 19, scope: !687)
!772 = !DILocation(line: 399, column: 15, scope: !687)
!773 = !DILocation(line: 399, column: 10, scope: !687)
!774 = !DILocation(line: 399, column: 8, scope: !687)
!775 = !{!734, !734, i64 0}
!776 = !DILocation(line: 400, column: 18, scope: !687)
!777 = !DILocation(line: 400, column: 13, scope: !687)
!778 = !DILocation(line: 400, column: 11, scope: !687)
!779 = !DILocation(line: 402, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !687, file: !28, line: 402, column: 6)
!781 = !DILocation(line: 402, column: 7, scope: !780)
!782 = !DILocation(line: 402, column: 19, scope: !780)
!783 = !DILocation(line: 402, column: 31, scope: !780)
!784 = !DILocation(line: 402, column: 40, scope: !780)
!785 = !DILocation(line: 402, column: 35, scope: !780)
!786 = !DILocation(line: 402, column: 47, scope: !780)
!787 = !DILocation(line: 402, column: 6, scope: !687)
!788 = !DILocation(line: 403, column: 3, scope: !780)
!789 = !DILocation(line: 404, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !687, file: !28, line: 404, column: 6)
!791 = !DILocation(line: 404, column: 6, scope: !790)
!792 = !DILocation(line: 404, column: 21, scope: !790)
!793 = !DILocation(line: 404, column: 6, scope: !687)
!794 = !DILocation(line: 405, column: 3, scope: !790)
!795 = !DILocation(line: 406, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !687, file: !28, line: 406, column: 6)
!797 = !DILocation(line: 406, column: 21, scope: !796)
!798 = !DILocation(line: 406, column: 6, scope: !687)
!799 = !DILocation(line: 407, column: 3, scope: !796)
!800 = !DILocation(line: 408, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !687, file: !28, line: 408, column: 6)
!802 = !DILocation(line: 408, column: 6, scope: !801)
!803 = !DILocation(line: 408, column: 20, scope: !801)
!804 = !DILocation(line: 408, column: 6, scope: !687)
!805 = !DILocation(line: 409, column: 3, scope: !801)
!806 = !DILocation(line: 410, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !687, file: !28, line: 410, column: 6)
!808 = !DILocation(line: 410, column: 6, scope: !807)
!809 = !DILocation(line: 410, column: 23, scope: !807)
!810 = !DILocation(line: 410, column: 6, scope: !687)
!811 = !DILocation(line: 411, column: 3, scope: !807)
!812 = !DILocation(line: 412, column: 11, scope: !813)
!813 = distinct !DILexicalBlock(scope: !687, file: !28, line: 412, column: 6)
!814 = !DILocation(line: 412, column: 6, scope: !813)
!815 = !DILocation(line: 412, column: 23, scope: !813)
!816 = !DILocation(line: 412, column: 6, scope: !687)
!817 = !DILocation(line: 413, column: 3, scope: !813)
!818 = !DILocation(line: 416, column: 6, scope: !694)
!819 = !DILocation(line: 416, column: 12, scope: !694)
!820 = !DILocation(line: 416, column: 25, scope: !694)
!821 = !DILocation(line: 416, column: 28, scope: !694)
!822 = !DILocation(line: 416, column: 37, scope: !694)
!823 = !DILocation(line: 416, column: 6, scope: !687)
!824 = !DILocation(line: 417, column: 3, scope: !693)
!825 = !DILocation(line: 417, column: 12, scope: !693)
!826 = !DILocation(line: 419, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !693, file: !28, line: 419, column: 7)
!828 = !DILocation(line: 419, column: 22, scope: !827)
!829 = !DILocation(line: 419, column: 7, scope: !827)
!830 = !DILocation(line: 419, column: 41, scope: !827)
!831 = !DILocation(line: 419, column: 7, scope: !693)
!832 = !DILocation(line: 420, column: 46, scope: !827)
!833 = !DILocation(line: 420, column: 64, scope: !827)
!834 = !DILocation(line: 420, column: 55, scope: !827)
!835 = !DILocation(line: 420, column: 4, scope: !827)
!836 = !DILocation(line: 422, column: 37, scope: !837)
!837 = distinct !DILexicalBlock(scope: !693, file: !28, line: 422, column: 7)
!838 = !DILocation(line: 422, column: 7, scope: !837)
!839 = !DILocation(line: 422, column: 41, scope: !837)
!840 = !DILocation(line: 422, column: 7, scope: !693)
!841 = !DILocation(line: 423, column: 65, scope: !837)
!842 = !DILocation(line: 423, column: 56, scope: !837)
!843 = !DILocation(line: 423, column: 4, scope: !837)
!844 = !DILocation(line: 425, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !693, file: !28, line: 425, column: 7)
!846 = !DILocation(line: 425, column: 13, scope: !845)
!847 = !DILocation(line: 425, column: 7, scope: !693)
!848 = !DILocation(line: 426, column: 12, scope: !845)
!849 = !{!850, !734, i64 32}
!850 = !{!"", !583, i64 0, !583, i64 4, !734, i64 8, !734, i64 16, !734, i64 24, !734, i64 32, !583, i64 40, !583, i64 44, !734, i64 48, !734, i64 56}
!851 = !DILocation(line: 426, column: 10, scope: !845)
!852 = !DILocation(line: 426, column: 4, scope: !845)
!853 = !DILocation(line: 428, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !693, file: !28, line: 428, column: 7)
!855 = !DILocation(line: 428, column: 16, scope: !854)
!856 = !DILocation(line: 428, column: 7, scope: !693)
!857 = !DILocation(line: 429, column: 15, scope: !854)
!858 = !{!850, !583, i64 40}
!859 = !DILocation(line: 429, column: 13, scope: !854)
!860 = !DILocation(line: 429, column: 4, scope: !854)
!861 = !DILocation(line: 430, column: 2, scope: !694)
!862 = !DILocation(line: 430, column: 2, scope: !693)
!863 = !DILocation(line: 432, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !687, file: !28, line: 432, column: 6)
!865 = !DILocation(line: 432, column: 18, scope: !864)
!866 = !DILocation(line: 432, column: 15, scope: !864)
!867 = !DILocation(line: 432, column: 6, scope: !687)
!868 = !DILocation(line: 433, column: 3, scope: !864)
!869 = !DILocation(line: 434, column: 1, scope: !687)
!870 = distinct !DISubprogram(name: "read_shdrs", scope: !28, file: !28, line: 436, type: !688, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DILocalVariable(name: "fp", arg: 1, scope: !870, file: !28, line: 436, type: !516)
!873 = !DILocalVariable(name: "i", scope: !870, file: !28, line: 438, type: !21)
!874 = !DILocalVariable(name: "shdr", scope: !870, file: !28, line: 439, type: !206)
!875 = !DILocalVariable(name: "sec", scope: !876, file: !28, line: 451, type: !202)
!876 = distinct !DILexicalBlock(scope: !877, file: !28, line: 450, column: 30)
!877 = distinct !DILexicalBlock(scope: !878, file: !28, line: 450, column: 2)
!878 = distinct !DILexicalBlock(scope: !870, file: !28, line: 450, column: 2)
!879 = !DILocation(line: 436, column: 30, scope: !870)
!880 = !DILocation(line: 438, column: 2, scope: !870)
!881 = !DILocation(line: 438, column: 6, scope: !870)
!882 = !DILocation(line: 439, column: 2, scope: !870)
!883 = !DILocation(line: 439, column: 11, scope: !870)
!884 = !DILocation(line: 441, column: 16, scope: !870)
!885 = !DILocation(line: 441, column: 9, scope: !870)
!886 = !DILocation(line: 441, column: 7, scope: !870)
!887 = !DILocation(line: 442, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !870, file: !28, line: 442, column: 6)
!889 = !DILocation(line: 442, column: 6, scope: !870)
!890 = !DILocation(line: 444, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !28, line: 442, column: 13)
!892 = !DILocation(line: 443, column: 3, scope: !891)
!893 = !DILocation(line: 446, column: 12, scope: !894)
!894 = distinct !DILexicalBlock(scope: !870, file: !28, line: 446, column: 6)
!895 = !DILocation(line: 446, column: 21, scope: !894)
!896 = !DILocation(line: 446, column: 6, scope: !894)
!897 = !DILocation(line: 446, column: 40, scope: !894)
!898 = !DILocation(line: 446, column: 6, scope: !870)
!899 = !DILocation(line: 448, column: 12, scope: !900)
!900 = distinct !DILexicalBlock(scope: !894, file: !28, line: 446, column: 45)
!901 = !DILocation(line: 448, column: 30, scope: !900)
!902 = !DILocation(line: 448, column: 21, scope: !900)
!903 = !DILocation(line: 447, column: 3, scope: !900)
!904 = !DILocation(line: 450, column: 9, scope: !878)
!905 = !DILocation(line: 450, column: 7, scope: !878)
!906 = !DILocation(line: 450, column: 14, scope: !877)
!907 = !DILocation(line: 450, column: 18, scope: !877)
!908 = !DILocation(line: 450, column: 16, scope: !877)
!909 = !DILocation(line: 450, column: 2, scope: !878)
!910 = !DILocation(line: 451, column: 3, scope: !876)
!911 = !DILocation(line: 451, column: 19, scope: !876)
!912 = !DILocation(line: 451, column: 26, scope: !876)
!913 = !DILocation(line: 451, column: 31, scope: !876)
!914 = !DILocation(line: 452, column: 37, scope: !915)
!915 = distinct !DILexicalBlock(scope: !876, file: !28, line: 452, column: 7)
!916 = !DILocation(line: 452, column: 7, scope: !915)
!917 = !DILocation(line: 452, column: 41, scope: !915)
!918 = !DILocation(line: 452, column: 7, scope: !876)
!919 = !DILocation(line: 454, column: 8, scope: !915)
!920 = !DILocation(line: 454, column: 11, scope: !915)
!921 = !DILocation(line: 454, column: 27, scope: !915)
!922 = !DILocation(line: 454, column: 18, scope: !915)
!923 = !DILocation(line: 453, column: 4, scope: !915)
!924 = !DILocation(line: 455, column: 28, scope: !876)
!925 = !{!850, !583, i64 0}
!926 = !DILocation(line: 455, column: 3, scope: !876)
!927 = !DILocation(line: 455, column: 8, scope: !876)
!928 = !DILocation(line: 455, column: 13, scope: !876)
!929 = !DILocation(line: 455, column: 26, scope: !876)
!930 = !{!931, !583, i64 0}
!931 = !{!"section", !850, i64 0, !578, i64 64, !578, i64 72, !578, i64 80, !578, i64 88, !578, i64 96}
!932 = !DILocation(line: 456, column: 28, scope: !876)
!933 = !{!850, !583, i64 4}
!934 = !DILocation(line: 456, column: 3, scope: !876)
!935 = !DILocation(line: 456, column: 8, scope: !876)
!936 = !DILocation(line: 456, column: 13, scope: !876)
!937 = !DILocation(line: 456, column: 26, scope: !876)
!938 = !{!931, !583, i64 4}
!939 = !DILocation(line: 457, column: 28, scope: !876)
!940 = !{!850, !734, i64 8}
!941 = !DILocation(line: 457, column: 3, scope: !876)
!942 = !DILocation(line: 457, column: 8, scope: !876)
!943 = !DILocation(line: 457, column: 13, scope: !876)
!944 = !DILocation(line: 457, column: 26, scope: !876)
!945 = !{!931, !734, i64 8}
!946 = !DILocation(line: 458, column: 28, scope: !876)
!947 = !{!850, !734, i64 16}
!948 = !DILocation(line: 458, column: 3, scope: !876)
!949 = !DILocation(line: 458, column: 8, scope: !876)
!950 = !DILocation(line: 458, column: 13, scope: !876)
!951 = !DILocation(line: 458, column: 26, scope: !876)
!952 = !{!931, !734, i64 16}
!953 = !DILocation(line: 459, column: 28, scope: !876)
!954 = !{!850, !734, i64 24}
!955 = !DILocation(line: 459, column: 3, scope: !876)
!956 = !DILocation(line: 459, column: 8, scope: !876)
!957 = !DILocation(line: 459, column: 13, scope: !876)
!958 = !DILocation(line: 459, column: 26, scope: !876)
!959 = !{!931, !734, i64 24}
!960 = !DILocation(line: 460, column: 28, scope: !876)
!961 = !DILocation(line: 460, column: 3, scope: !876)
!962 = !DILocation(line: 460, column: 8, scope: !876)
!963 = !DILocation(line: 460, column: 13, scope: !876)
!964 = !DILocation(line: 460, column: 26, scope: !876)
!965 = !{!931, !734, i64 32}
!966 = !DILocation(line: 461, column: 28, scope: !876)
!967 = !DILocation(line: 461, column: 3, scope: !876)
!968 = !DILocation(line: 461, column: 8, scope: !876)
!969 = !DILocation(line: 461, column: 13, scope: !876)
!970 = !DILocation(line: 461, column: 26, scope: !876)
!971 = !{!931, !583, i64 40}
!972 = !DILocation(line: 462, column: 28, scope: !876)
!973 = !{!850, !583, i64 44}
!974 = !DILocation(line: 462, column: 3, scope: !876)
!975 = !DILocation(line: 462, column: 8, scope: !876)
!976 = !DILocation(line: 462, column: 13, scope: !876)
!977 = !DILocation(line: 462, column: 26, scope: !876)
!978 = !{!931, !583, i64 44}
!979 = !DILocation(line: 463, column: 28, scope: !876)
!980 = !{!850, !734, i64 48}
!981 = !DILocation(line: 463, column: 3, scope: !876)
!982 = !DILocation(line: 463, column: 8, scope: !876)
!983 = !DILocation(line: 463, column: 13, scope: !876)
!984 = !DILocation(line: 463, column: 26, scope: !876)
!985 = !{!931, !734, i64 48}
!986 = !DILocation(line: 464, column: 28, scope: !876)
!987 = !{!850, !734, i64 56}
!988 = !DILocation(line: 464, column: 3, scope: !876)
!989 = !DILocation(line: 464, column: 8, scope: !876)
!990 = !DILocation(line: 464, column: 13, scope: !876)
!991 = !DILocation(line: 464, column: 26, scope: !876)
!992 = !{!931, !734, i64 56}
!993 = !DILocation(line: 465, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !876, file: !28, line: 465, column: 7)
!995 = !DILocation(line: 465, column: 12, scope: !994)
!996 = !DILocation(line: 465, column: 17, scope: !994)
!997 = !DILocation(line: 465, column: 27, scope: !994)
!998 = !DILocation(line: 465, column: 25, scope: !994)
!999 = !DILocation(line: 465, column: 7, scope: !876)
!1000 = !DILocation(line: 466, column: 17, scope: !994)
!1001 = !DILocation(line: 466, column: 22, scope: !994)
!1002 = !DILocation(line: 466, column: 27, scope: !994)
!1003 = !DILocation(line: 466, column: 32, scope: !994)
!1004 = !DILocation(line: 466, column: 4, scope: !994)
!1005 = !DILocation(line: 466, column: 9, scope: !994)
!1006 = !DILocation(line: 466, column: 14, scope: !994)
!1007 = !{!931, !578, i64 64}
!1008 = !DILocation(line: 467, column: 2, scope: !877)
!1009 = !DILocation(line: 467, column: 2, scope: !876)
!1010 = !DILocation(line: 450, column: 26, scope: !877)
!1011 = !DILocation(line: 450, column: 2, scope: !877)
!1012 = distinct !{!1012, !909, !1013, !684, !685}
!1013 = !DILocation(line: 467, column: 2, scope: !878)
!1014 = !DILocation(line: 469, column: 1, scope: !870)
!1015 = distinct !DISubprogram(name: "read_strtabs", scope: !28, file: !28, line: 471, type: !688, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DILocalVariable(name: "fp", arg: 1, scope: !1015, file: !28, line: 471, type: !516)
!1018 = !DILocalVariable(name: "i", scope: !1015, file: !28, line: 473, type: !21)
!1019 = !DILocalVariable(name: "sec", scope: !1020, file: !28, line: 475, type: !202)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !28, line: 474, column: 30)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !28, line: 474, column: 2)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !28, line: 474, column: 2)
!1023 = !DILocation(line: 471, column: 32, scope: !1015)
!1024 = !DILocation(line: 473, column: 2, scope: !1015)
!1025 = !DILocation(line: 473, column: 6, scope: !1015)
!1026 = !DILocation(line: 474, column: 9, scope: !1022)
!1027 = !DILocation(line: 474, column: 7, scope: !1022)
!1028 = !DILocation(line: 474, column: 14, scope: !1021)
!1029 = !DILocation(line: 474, column: 18, scope: !1021)
!1030 = !DILocation(line: 474, column: 16, scope: !1021)
!1031 = !DILocation(line: 474, column: 2, scope: !1022)
!1032 = !DILocation(line: 475, column: 3, scope: !1020)
!1033 = !DILocation(line: 475, column: 19, scope: !1020)
!1034 = !DILocation(line: 475, column: 26, scope: !1020)
!1035 = !DILocation(line: 475, column: 31, scope: !1020)
!1036 = !DILocation(line: 476, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1020, file: !28, line: 476, column: 7)
!1038 = !DILocation(line: 476, column: 12, scope: !1037)
!1039 = !DILocation(line: 476, column: 17, scope: !1037)
!1040 = !DILocation(line: 476, column: 25, scope: !1037)
!1041 = !DILocation(line: 476, column: 7, scope: !1020)
!1042 = !DILocation(line: 477, column: 4, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !28, line: 476, column: 40)
!1044 = !DILocation(line: 479, column: 24, scope: !1020)
!1045 = !DILocation(line: 479, column: 29, scope: !1020)
!1046 = !DILocation(line: 479, column: 34, scope: !1020)
!1047 = !DILocation(line: 479, column: 17, scope: !1020)
!1048 = !DILocation(line: 479, column: 3, scope: !1020)
!1049 = !DILocation(line: 479, column: 8, scope: !1020)
!1050 = !DILocation(line: 479, column: 15, scope: !1020)
!1051 = !{!931, !578, i64 96}
!1052 = !DILocation(line: 480, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1020, file: !28, line: 480, column: 7)
!1054 = !DILocation(line: 480, column: 13, scope: !1053)
!1055 = !DILocation(line: 480, column: 7, scope: !1020)
!1056 = !DILocation(line: 482, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !28, line: 480, column: 21)
!1058 = !DILocation(line: 482, column: 13, scope: !1057)
!1059 = !DILocation(line: 482, column: 18, scope: !1057)
!1060 = !DILocation(line: 481, column: 4, scope: !1057)
!1061 = !DILocation(line: 484, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1020, file: !28, line: 484, column: 7)
!1063 = !DILocation(line: 484, column: 17, scope: !1062)
!1064 = !DILocation(line: 484, column: 22, scope: !1062)
!1065 = !DILocation(line: 484, column: 27, scope: !1062)
!1066 = !DILocation(line: 484, column: 7, scope: !1062)
!1067 = !DILocation(line: 484, column: 48, scope: !1062)
!1068 = !DILocation(line: 484, column: 7, scope: !1020)
!1069 = !DILocation(line: 486, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !28, line: 484, column: 53)
!1071 = !DILocation(line: 486, column: 13, scope: !1070)
!1072 = !DILocation(line: 486, column: 18, scope: !1070)
!1073 = !DILocation(line: 486, column: 38, scope: !1070)
!1074 = !DILocation(line: 486, column: 29, scope: !1070)
!1075 = !DILocation(line: 485, column: 4, scope: !1070)
!1076 = !DILocation(line: 488, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1020, file: !28, line: 488, column: 7)
!1078 = !DILocation(line: 488, column: 18, scope: !1077)
!1079 = !DILocation(line: 488, column: 29, scope: !1077)
!1080 = !DILocation(line: 488, column: 34, scope: !1077)
!1081 = !DILocation(line: 488, column: 39, scope: !1077)
!1082 = !DILocation(line: 488, column: 48, scope: !1077)
!1083 = !DILocation(line: 488, column: 7, scope: !1077)
!1084 = !DILocation(line: 489, column: 10, scope: !1077)
!1085 = !DILocation(line: 489, column: 15, scope: !1077)
!1086 = !DILocation(line: 489, column: 20, scope: !1077)
!1087 = !DILocation(line: 489, column: 7, scope: !1077)
!1088 = !DILocation(line: 488, column: 7, scope: !1020)
!1089 = !DILocation(line: 491, column: 14, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1077, file: !28, line: 489, column: 29)
!1091 = !DILocation(line: 491, column: 5, scope: !1090)
!1092 = !DILocation(line: 490, column: 4, scope: !1090)
!1093 = !DILocation(line: 493, column: 2, scope: !1021)
!1094 = !DILocation(line: 493, column: 2, scope: !1020)
!1095 = !DILocation(line: 474, column: 26, scope: !1021)
!1096 = !DILocation(line: 474, column: 2, scope: !1021)
!1097 = distinct !{!1097, !1031, !1098, !684, !685}
!1098 = !DILocation(line: 493, column: 2, scope: !1022)
!1099 = !DILocation(line: 494, column: 1, scope: !1015)
!1100 = distinct !DISubprogram(name: "read_symtabs", scope: !28, file: !28, line: 496, type: !688, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1109, !1110}
!1102 = !DILocalVariable(name: "fp", arg: 1, scope: !1100, file: !28, line: 496, type: !516)
!1103 = !DILocalVariable(name: "i", scope: !1100, file: !28, line: 498, type: !21)
!1104 = !DILocalVariable(name: "j", scope: !1100, file: !28, line: 498, type: !21)
!1105 = !DILocalVariable(name: "sec", scope: !1106, file: !28, line: 501, type: !202)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !28, line: 500, column: 30)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !28, line: 500, column: 2)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !28, line: 500, column: 2)
!1109 = !DILocalVariable(name: "num_syms", scope: !1106, file: !28, line: 502, type: !21)
!1110 = !DILocalVariable(name: "sym", scope: !1111, file: !28, line: 541, type: !222)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !28, line: 540, column: 35)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !28, line: 540, column: 4)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 540, column: 4)
!1114 = distinct !DILexicalBlock(scope: !1106, file: !28, line: 504, column: 30)
!1115 = !DILocation(line: 496, column: 32, scope: !1100)
!1116 = !DILocation(line: 498, column: 2, scope: !1100)
!1117 = !DILocation(line: 498, column: 6, scope: !1100)
!1118 = !DILocation(line: 498, column: 8, scope: !1100)
!1119 = !DILocation(line: 500, column: 9, scope: !1108)
!1120 = !DILocation(line: 500, column: 7, scope: !1108)
!1121 = !DILocation(line: 500, column: 14, scope: !1107)
!1122 = !DILocation(line: 500, column: 18, scope: !1107)
!1123 = !DILocation(line: 500, column: 16, scope: !1107)
!1124 = !DILocation(line: 500, column: 2, scope: !1108)
!1125 = !DILocation(line: 501, column: 3, scope: !1106)
!1126 = !DILocation(line: 501, column: 19, scope: !1106)
!1127 = !DILocation(line: 501, column: 26, scope: !1106)
!1128 = !DILocation(line: 501, column: 31, scope: !1106)
!1129 = !DILocation(line: 502, column: 3, scope: !1106)
!1130 = !DILocation(line: 502, column: 7, scope: !1106)
!1131 = !DILocation(line: 504, column: 11, scope: !1106)
!1132 = !DILocation(line: 504, column: 16, scope: !1106)
!1133 = !DILocation(line: 504, column: 21, scope: !1106)
!1134 = !DILocation(line: 504, column: 3, scope: !1106)
!1135 = !DILocation(line: 506, column: 26, scope: !1114)
!1136 = !DILocation(line: 506, column: 31, scope: !1114)
!1137 = !DILocation(line: 506, column: 36, scope: !1114)
!1138 = !DILocation(line: 506, column: 19, scope: !1114)
!1139 = !DILocation(line: 506, column: 4, scope: !1114)
!1140 = !DILocation(line: 506, column: 9, scope: !1114)
!1141 = !DILocation(line: 506, column: 17, scope: !1114)
!1142 = !{!931, !578, i64 80}
!1143 = !DILocation(line: 507, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 507, column: 8)
!1145 = !DILocation(line: 507, column: 14, scope: !1144)
!1146 = !DILocation(line: 507, column: 8, scope: !1114)
!1147 = !DILocation(line: 509, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !28, line: 507, column: 23)
!1149 = !DILocation(line: 509, column: 14, scope: !1148)
!1150 = !DILocation(line: 509, column: 19, scope: !1148)
!1151 = !DILocation(line: 508, column: 5, scope: !1148)
!1152 = !DILocation(line: 511, column: 14, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 511, column: 8)
!1154 = !DILocation(line: 511, column: 18, scope: !1153)
!1155 = !DILocation(line: 511, column: 23, scope: !1153)
!1156 = !DILocation(line: 511, column: 28, scope: !1153)
!1157 = !DILocation(line: 511, column: 8, scope: !1153)
!1158 = !DILocation(line: 511, column: 49, scope: !1153)
!1159 = !DILocation(line: 511, column: 8, scope: !1114)
!1160 = !DILocation(line: 513, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !28, line: 511, column: 54)
!1162 = !DILocation(line: 513, column: 14, scope: !1161)
!1163 = !DILocation(line: 513, column: 19, scope: !1161)
!1164 = !DILocation(line: 513, column: 39, scope: !1161)
!1165 = !DILocation(line: 513, column: 30, scope: !1161)
!1166 = !DILocation(line: 512, column: 5, scope: !1161)
!1167 = !DILocation(line: 515, column: 14, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 515, column: 8)
!1169 = !DILocation(line: 515, column: 19, scope: !1168)
!1170 = !DILocation(line: 515, column: 31, scope: !1168)
!1171 = !DILocation(line: 515, column: 36, scope: !1168)
!1172 = !DILocation(line: 515, column: 41, scope: !1168)
!1173 = !DILocation(line: 515, column: 50, scope: !1168)
!1174 = !DILocation(line: 515, column: 8, scope: !1168)
!1175 = !DILocation(line: 516, column: 11, scope: !1168)
!1176 = !DILocation(line: 516, column: 16, scope: !1168)
!1177 = !DILocation(line: 516, column: 21, scope: !1168)
!1178 = !DILocation(line: 516, column: 8, scope: !1168)
!1179 = !DILocation(line: 515, column: 8, scope: !1114)
!1180 = !DILocation(line: 518, column: 18, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1168, file: !28, line: 516, column: 30)
!1182 = !DILocation(line: 518, column: 9, scope: !1181)
!1183 = !DILocation(line: 517, column: 5, scope: !1181)
!1184 = !DILocation(line: 520, column: 19, scope: !1114)
!1185 = !DILocation(line: 520, column: 17, scope: !1114)
!1186 = !DILocation(line: 521, column: 4, scope: !1114)
!1187 = !DILocation(line: 524, column: 15, scope: !1114)
!1188 = !DILocation(line: 524, column: 20, scope: !1114)
!1189 = !DILocation(line: 524, column: 25, scope: !1114)
!1190 = !DILocation(line: 524, column: 33, scope: !1114)
!1191 = !DILocation(line: 524, column: 13, scope: !1114)
!1192 = !DILocation(line: 526, column: 25, scope: !1114)
!1193 = !DILocation(line: 526, column: 30, scope: !1114)
!1194 = !DILocation(line: 526, column: 35, scope: !1114)
!1195 = !DILocation(line: 526, column: 18, scope: !1114)
!1196 = !DILocation(line: 526, column: 4, scope: !1114)
!1197 = !DILocation(line: 526, column: 9, scope: !1114)
!1198 = !DILocation(line: 526, column: 16, scope: !1114)
!1199 = !{!931, !578, i64 72}
!1200 = !DILocation(line: 527, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 527, column: 8)
!1202 = !DILocation(line: 527, column: 14, scope: !1201)
!1203 = !DILocation(line: 527, column: 8, scope: !1114)
!1204 = !DILocation(line: 529, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !28, line: 527, column: 22)
!1206 = !DILocation(line: 529, column: 14, scope: !1205)
!1207 = !DILocation(line: 529, column: 19, scope: !1205)
!1208 = !DILocation(line: 528, column: 5, scope: !1205)
!1209 = !DILocation(line: 531, column: 14, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 531, column: 8)
!1211 = !DILocation(line: 531, column: 18, scope: !1210)
!1212 = !DILocation(line: 531, column: 23, scope: !1210)
!1213 = !DILocation(line: 531, column: 28, scope: !1210)
!1214 = !DILocation(line: 531, column: 8, scope: !1210)
!1215 = !DILocation(line: 531, column: 49, scope: !1210)
!1216 = !DILocation(line: 531, column: 8, scope: !1114)
!1217 = !DILocation(line: 533, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !28, line: 531, column: 54)
!1219 = !DILocation(line: 533, column: 14, scope: !1218)
!1220 = !DILocation(line: 533, column: 19, scope: !1218)
!1221 = !DILocation(line: 533, column: 39, scope: !1218)
!1222 = !DILocation(line: 533, column: 30, scope: !1218)
!1223 = !DILocation(line: 532, column: 5, scope: !1218)
!1224 = !DILocation(line: 535, column: 14, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1114, file: !28, line: 535, column: 8)
!1226 = !DILocation(line: 535, column: 19, scope: !1225)
!1227 = !DILocation(line: 535, column: 30, scope: !1225)
!1228 = !DILocation(line: 535, column: 35, scope: !1225)
!1229 = !DILocation(line: 535, column: 40, scope: !1225)
!1230 = !DILocation(line: 535, column: 49, scope: !1225)
!1231 = !DILocation(line: 535, column: 8, scope: !1225)
!1232 = !DILocation(line: 536, column: 11, scope: !1225)
!1233 = !DILocation(line: 536, column: 16, scope: !1225)
!1234 = !DILocation(line: 536, column: 21, scope: !1225)
!1235 = !DILocation(line: 536, column: 8, scope: !1225)
!1236 = !DILocation(line: 535, column: 8, scope: !1114)
!1237 = !DILocation(line: 538, column: 18, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1225, file: !28, line: 536, column: 30)
!1239 = !DILocation(line: 538, column: 9, scope: !1238)
!1240 = !DILocation(line: 537, column: 5, scope: !1238)
!1241 = !DILocation(line: 540, column: 11, scope: !1113)
!1242 = !DILocation(line: 540, column: 9, scope: !1113)
!1243 = !DILocation(line: 540, column: 16, scope: !1112)
!1244 = !DILocation(line: 540, column: 20, scope: !1112)
!1245 = !DILocation(line: 540, column: 18, scope: !1112)
!1246 = !DILocation(line: 540, column: 4, scope: !1113)
!1247 = !DILocation(line: 541, column: 5, scope: !1111)
!1248 = !DILocation(line: 541, column: 14, scope: !1111)
!1249 = !DILocation(line: 541, column: 21, scope: !1111)
!1250 = !DILocation(line: 541, column: 26, scope: !1111)
!1251 = !DILocation(line: 541, column: 33, scope: !1111)
!1252 = !DILocation(line: 543, column: 21, scope: !1111)
!1253 = !{!1254, !583, i64 0}
!1254 = !{!"", !583, i64 0, !579, i64 4, !579, i64 5, !733, i64 6, !734, i64 8, !734, i64 16}
!1255 = !DILocation(line: 543, column: 5, scope: !1111)
!1256 = !DILocation(line: 543, column: 10, scope: !1111)
!1257 = !DILocation(line: 543, column: 19, scope: !1111)
!1258 = !DILocation(line: 544, column: 21, scope: !1111)
!1259 = !{!1254, !734, i64 8}
!1260 = !DILocation(line: 544, column: 5, scope: !1111)
!1261 = !DILocation(line: 544, column: 10, scope: !1111)
!1262 = !DILocation(line: 544, column: 19, scope: !1111)
!1263 = !DILocation(line: 545, column: 21, scope: !1111)
!1264 = !{!1254, !734, i64 16}
!1265 = !DILocation(line: 545, column: 5, scope: !1111)
!1266 = !DILocation(line: 545, column: 10, scope: !1111)
!1267 = !DILocation(line: 545, column: 19, scope: !1111)
!1268 = !DILocation(line: 546, column: 21, scope: !1111)
!1269 = !{!1254, !733, i64 6}
!1270 = !DILocation(line: 546, column: 5, scope: !1111)
!1271 = !DILocation(line: 546, column: 10, scope: !1111)
!1272 = !DILocation(line: 546, column: 19, scope: !1111)
!1273 = !DILocation(line: 547, column: 4, scope: !1112)
!1274 = !DILocation(line: 547, column: 4, scope: !1111)
!1275 = !DILocation(line: 540, column: 31, scope: !1112)
!1276 = !DILocation(line: 540, column: 4, scope: !1112)
!1277 = distinct !{!1277, !1246, !1278, !684, !685}
!1278 = !DILocation(line: 547, column: 4, scope: !1113)
!1279 = !DILocation(line: 548, column: 18, scope: !1114)
!1280 = !DILocation(line: 548, column: 16, scope: !1114)
!1281 = !DILocation(line: 549, column: 4, scope: !1114)
!1282 = !DILocation(line: 552, column: 4, scope: !1114)
!1283 = !DILocation(line: 554, column: 2, scope: !1107)
!1284 = !DILocation(line: 500, column: 26, scope: !1107)
!1285 = !DILocation(line: 500, column: 2, scope: !1107)
!1286 = distinct !{!1286, !1124, !1287, !684, !685}
!1287 = !DILocation(line: 554, column: 2, scope: !1108)
!1288 = !DILocation(line: 555, column: 1, scope: !1100)
!1289 = distinct !DISubprogram(name: "read_relocs", scope: !28, file: !28, line: 558, type: !688, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1298}
!1291 = !DILocalVariable(name: "fp", arg: 1, scope: !1289, file: !28, line: 558, type: !516)
!1292 = !DILocalVariable(name: "i", scope: !1289, file: !28, line: 560, type: !21)
!1293 = !DILocalVariable(name: "j", scope: !1289, file: !28, line: 560, type: !21)
!1294 = !DILocalVariable(name: "sec", scope: !1295, file: !28, line: 562, type: !202)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !28, line: 561, column: 30)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !28, line: 561, column: 2)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !28, line: 561, column: 2)
!1298 = !DILocalVariable(name: "rel", scope: !1299, file: !28, line: 581, type: !237)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !28, line: 580, column: 59)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !28, line: 580, column: 3)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 580, column: 3)
!1302 = !DILocation(line: 558, column: 31, scope: !1289)
!1303 = !DILocation(line: 560, column: 2, scope: !1289)
!1304 = !DILocation(line: 560, column: 6, scope: !1289)
!1305 = !DILocation(line: 560, column: 8, scope: !1289)
!1306 = !DILocation(line: 561, column: 9, scope: !1297)
!1307 = !DILocation(line: 561, column: 7, scope: !1297)
!1308 = !DILocation(line: 561, column: 14, scope: !1296)
!1309 = !DILocation(line: 561, column: 18, scope: !1296)
!1310 = !DILocation(line: 561, column: 16, scope: !1296)
!1311 = !DILocation(line: 561, column: 2, scope: !1297)
!1312 = !DILocation(line: 562, column: 3, scope: !1295)
!1313 = !DILocation(line: 562, column: 19, scope: !1295)
!1314 = !DILocation(line: 562, column: 26, scope: !1295)
!1315 = !DILocation(line: 562, column: 31, scope: !1295)
!1316 = !DILocation(line: 563, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 563, column: 7)
!1318 = !DILocation(line: 563, column: 12, scope: !1317)
!1319 = !DILocation(line: 563, column: 17, scope: !1317)
!1320 = !DILocation(line: 563, column: 25, scope: !1317)
!1321 = !DILocation(line: 563, column: 7, scope: !1295)
!1322 = !DILocation(line: 564, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !28, line: 563, column: 42)
!1324 = !DILocation(line: 566, column: 24, scope: !1295)
!1325 = !DILocation(line: 566, column: 29, scope: !1295)
!1326 = !DILocation(line: 566, column: 34, scope: !1295)
!1327 = !DILocation(line: 566, column: 17, scope: !1295)
!1328 = !DILocation(line: 566, column: 3, scope: !1295)
!1329 = !DILocation(line: 566, column: 8, scope: !1295)
!1330 = !DILocation(line: 566, column: 15, scope: !1295)
!1331 = !{!931, !578, i64 88}
!1332 = !DILocation(line: 567, column: 8, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 567, column: 7)
!1334 = !DILocation(line: 567, column: 13, scope: !1333)
!1335 = !DILocation(line: 567, column: 7, scope: !1295)
!1336 = !DILocation(line: 569, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !28, line: 567, column: 21)
!1338 = !DILocation(line: 569, column: 13, scope: !1337)
!1339 = !DILocation(line: 569, column: 18, scope: !1337)
!1340 = !DILocation(line: 568, column: 4, scope: !1337)
!1341 = !DILocation(line: 571, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 571, column: 7)
!1343 = !DILocation(line: 571, column: 17, scope: !1342)
!1344 = !DILocation(line: 571, column: 22, scope: !1342)
!1345 = !DILocation(line: 571, column: 27, scope: !1342)
!1346 = !DILocation(line: 571, column: 7, scope: !1342)
!1347 = !DILocation(line: 571, column: 48, scope: !1342)
!1348 = !DILocation(line: 571, column: 7, scope: !1295)
!1349 = !DILocation(line: 573, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1342, file: !28, line: 571, column: 53)
!1351 = !DILocation(line: 573, column: 13, scope: !1350)
!1352 = !DILocation(line: 573, column: 18, scope: !1350)
!1353 = !DILocation(line: 573, column: 38, scope: !1350)
!1354 = !DILocation(line: 573, column: 29, scope: !1350)
!1355 = !DILocation(line: 572, column: 4, scope: !1350)
!1356 = !DILocation(line: 575, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1295, file: !28, line: 575, column: 7)
!1358 = !DILocation(line: 575, column: 18, scope: !1357)
!1359 = !DILocation(line: 575, column: 29, scope: !1357)
!1360 = !DILocation(line: 575, column: 34, scope: !1357)
!1361 = !DILocation(line: 575, column: 39, scope: !1357)
!1362 = !DILocation(line: 575, column: 48, scope: !1357)
!1363 = !DILocation(line: 575, column: 7, scope: !1357)
!1364 = !DILocation(line: 576, column: 10, scope: !1357)
!1365 = !DILocation(line: 576, column: 15, scope: !1357)
!1366 = !DILocation(line: 576, column: 20, scope: !1357)
!1367 = !DILocation(line: 576, column: 7, scope: !1357)
!1368 = !DILocation(line: 575, column: 7, scope: !1295)
!1369 = !DILocation(line: 578, column: 14, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1357, file: !28, line: 576, column: 29)
!1371 = !DILocation(line: 578, column: 5, scope: !1370)
!1372 = !DILocation(line: 577, column: 4, scope: !1370)
!1373 = !DILocation(line: 580, column: 10, scope: !1301)
!1374 = !DILocation(line: 580, column: 8, scope: !1301)
!1375 = !DILocation(line: 580, column: 15, scope: !1300)
!1376 = !DILocation(line: 580, column: 19, scope: !1300)
!1377 = !DILocation(line: 580, column: 24, scope: !1300)
!1378 = !DILocation(line: 580, column: 29, scope: !1300)
!1379 = !DILocation(line: 580, column: 36, scope: !1300)
!1380 = !DILocation(line: 580, column: 17, scope: !1300)
!1381 = !DILocation(line: 580, column: 3, scope: !1301)
!1382 = !DILocation(line: 581, column: 4, scope: !1299)
!1383 = !DILocation(line: 581, column: 13, scope: !1299)
!1384 = !DILocation(line: 581, column: 20, scope: !1299)
!1385 = !DILocation(line: 581, column: 25, scope: !1299)
!1386 = !DILocation(line: 581, column: 32, scope: !1299)
!1387 = !DILocation(line: 582, column: 20, scope: !1299)
!1388 = !{!1389, !734, i64 0}
!1389 = !{!"", !734, i64 0, !734, i64 8, !734, i64 16}
!1390 = !DILocation(line: 582, column: 4, scope: !1299)
!1391 = !DILocation(line: 582, column: 9, scope: !1299)
!1392 = !DILocation(line: 582, column: 18, scope: !1299)
!1393 = !DILocation(line: 583, column: 20, scope: !1299)
!1394 = !{!1389, !734, i64 8}
!1395 = !DILocation(line: 583, column: 4, scope: !1299)
!1396 = !DILocation(line: 583, column: 9, scope: !1299)
!1397 = !DILocation(line: 583, column: 18, scope: !1299)
!1398 = !DILocation(line: 585, column: 20, scope: !1299)
!1399 = !{!1389, !734, i64 16}
!1400 = !DILocation(line: 585, column: 4, scope: !1299)
!1401 = !DILocation(line: 585, column: 9, scope: !1299)
!1402 = !DILocation(line: 585, column: 18, scope: !1299)
!1403 = !DILocation(line: 587, column: 3, scope: !1300)
!1404 = !DILocation(line: 587, column: 3, scope: !1299)
!1405 = !DILocation(line: 580, column: 55, scope: !1300)
!1406 = !DILocation(line: 580, column: 3, scope: !1300)
!1407 = distinct !{!1407, !1381, !1408, !684, !685}
!1408 = !DILocation(line: 587, column: 3, scope: !1301)
!1409 = !DILocation(line: 588, column: 2, scope: !1296)
!1410 = !DILocation(line: 588, column: 2, scope: !1295)
!1411 = !DILocation(line: 561, column: 26, scope: !1296)
!1412 = !DILocation(line: 561, column: 2, scope: !1296)
!1413 = distinct !{!1413, !1311, !1414, !684, !685}
!1414 = !DILocation(line: 588, column: 2, scope: !1297)
!1415 = !DILocation(line: 589, column: 1, scope: !1289)
!1416 = distinct !DISubprogram(name: "percpu_init", scope: !28, file: !28, line: 796, type: !1417, scopeLine: 797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null}
!1419 = !{!1420, !1421}
!1420 = !DILocalVariable(name: "i", scope: !1416, file: !28, line: 798, type: !21)
!1421 = !DILocalVariable(name: "sym", scope: !1422, file: !28, line: 800, type: !222)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !28, line: 799, column: 30)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !28, line: 799, column: 2)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !28, line: 799, column: 2)
!1425 = !DILocation(line: 798, column: 2, scope: !1416)
!1426 = !DILocation(line: 798, column: 6, scope: !1416)
!1427 = !DILocation(line: 799, column: 9, scope: !1424)
!1428 = !DILocation(line: 799, column: 7, scope: !1424)
!1429 = !DILocation(line: 799, column: 14, scope: !1423)
!1430 = !DILocation(line: 799, column: 18, scope: !1423)
!1431 = !DILocation(line: 799, column: 16, scope: !1423)
!1432 = !DILocation(line: 799, column: 2, scope: !1424)
!1433 = !DILocation(line: 800, column: 3, scope: !1422)
!1434 = !DILocation(line: 800, column: 14, scope: !1422)
!1435 = !DILocation(line: 801, column: 23, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1422, file: !28, line: 801, column: 7)
!1437 = !DILocation(line: 801, column: 14, scope: !1436)
!1438 = !DILocation(line: 801, column: 7, scope: !1436)
!1439 = !DILocation(line: 801, column: 7, scope: !1422)
!1440 = !DILocation(line: 802, column: 4, scope: !1436)
!1441 = !DILocation(line: 804, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1422, file: !28, line: 804, column: 7)
!1443 = !DILocation(line: 804, column: 12, scope: !1442)
!1444 = !DILocation(line: 804, column: 15, scope: !1442)
!1445 = !DILocation(line: 804, column: 20, scope: !1442)
!1446 = !DILocation(line: 804, column: 28, scope: !1442)
!1447 = !DILocation(line: 804, column: 7, scope: !1422)
!1448 = !DILocation(line: 805, column: 4, scope: !1442)
!1449 = !DILocation(line: 807, column: 9, scope: !1422)
!1450 = !DILocation(line: 807, column: 7, scope: !1422)
!1451 = !DILocation(line: 808, column: 8, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1422, file: !28, line: 808, column: 7)
!1453 = !DILocation(line: 808, column: 7, scope: !1422)
!1454 = !DILocation(line: 809, column: 4, scope: !1452)
!1455 = !DILocation(line: 811, column: 19, scope: !1422)
!1456 = !DILocation(line: 811, column: 17, scope: !1422)
!1457 = !DILocation(line: 812, column: 23, scope: !1422)
!1458 = !DILocation(line: 812, column: 28, scope: !1422)
!1459 = !DILocation(line: 812, column: 21, scope: !1422)
!1460 = !DILocation(line: 813, column: 3, scope: !1422)
!1461 = !DILocation(line: 814, column: 2, scope: !1423)
!1462 = !DILocation(line: 799, column: 26, scope: !1423)
!1463 = !DILocation(line: 799, column: 2, scope: !1423)
!1464 = distinct !{!1464, !1432, !1465, !684, !685}
!1465 = !DILocation(line: 814, column: 2, scope: !1424)
!1466 = !DILocation(line: 815, column: 1, scope: !1416)
!1467 = distinct !DISubprogram(name: "print_absolute_symbols", scope: !28, file: !28, line: 592, type: !1417, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1468)
!1468 = !{!1469, !1470, !1471, !1475, !1476, !1477, !1481}
!1469 = !DILocalVariable(name: "i", scope: !1467, file: !28, line: 594, type: !21)
!1470 = !DILocalVariable(name: "format", scope: !1467, file: !28, line: 595, type: !47)
!1471 = !DILocalVariable(name: "sec", scope: !1472, file: !28, line: 605, type: !202)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !28, line: 604, column: 30)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !28, line: 604, column: 2)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !28, line: 604, column: 2)
!1475 = !DILocalVariable(name: "sym_strtab", scope: !1472, file: !28, line: 606, type: !80)
!1476 = !DILocalVariable(name: "j", scope: !1472, file: !28, line: 607, type: !21)
!1477 = !DILocalVariable(name: "sym", scope: !1478, file: !28, line: 614, type: !222)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !28, line: 613, column: 59)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !28, line: 613, column: 3)
!1480 = distinct !DILexicalBlock(scope: !1472, file: !28, line: 613, column: 3)
!1481 = !DILocalVariable(name: "name", scope: !1478, file: !28, line: 615, type: !47)
!1482 = !DILocation(line: 594, column: 2, scope: !1467)
!1483 = !DILocation(line: 594, column: 6, scope: !1467)
!1484 = !DILocation(line: 595, column: 2, scope: !1467)
!1485 = !DILocation(line: 595, column: 14, scope: !1467)
!1486 = !DILocation(line: 598, column: 10, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1467, file: !28, line: 597, column: 6)
!1488 = !DILocation(line: 602, column: 2, scope: !1467)
!1489 = !DILocation(line: 603, column: 2, scope: !1467)
!1490 = !DILocation(line: 604, column: 9, scope: !1474)
!1491 = !DILocation(line: 604, column: 7, scope: !1474)
!1492 = !DILocation(line: 604, column: 14, scope: !1473)
!1493 = !DILocation(line: 604, column: 18, scope: !1473)
!1494 = !DILocation(line: 604, column: 16, scope: !1473)
!1495 = !DILocation(line: 604, column: 2, scope: !1474)
!1496 = !DILocation(line: 605, column: 3, scope: !1472)
!1497 = !DILocation(line: 605, column: 19, scope: !1472)
!1498 = !DILocation(line: 605, column: 26, scope: !1472)
!1499 = !DILocation(line: 605, column: 31, scope: !1472)
!1500 = !DILocation(line: 606, column: 3, scope: !1472)
!1501 = !DILocation(line: 606, column: 9, scope: !1472)
!1502 = !DILocation(line: 607, column: 3, scope: !1472)
!1503 = !DILocation(line: 607, column: 7, scope: !1472)
!1504 = !DILocation(line: 609, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1472, file: !28, line: 609, column: 7)
!1506 = !DILocation(line: 609, column: 12, scope: !1505)
!1507 = !DILocation(line: 609, column: 17, scope: !1505)
!1508 = !DILocation(line: 609, column: 25, scope: !1505)
!1509 = !DILocation(line: 609, column: 7, scope: !1472)
!1510 = !DILocation(line: 610, column: 4, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1505, file: !28, line: 609, column: 40)
!1512 = !DILocation(line: 612, column: 16, scope: !1472)
!1513 = !DILocation(line: 612, column: 21, scope: !1472)
!1514 = !DILocation(line: 612, column: 27, scope: !1472)
!1515 = !DILocation(line: 612, column: 14, scope: !1472)
!1516 = !DILocation(line: 613, column: 10, scope: !1480)
!1517 = !DILocation(line: 613, column: 8, scope: !1480)
!1518 = !DILocation(line: 613, column: 15, scope: !1479)
!1519 = !DILocation(line: 613, column: 19, scope: !1479)
!1520 = !DILocation(line: 613, column: 24, scope: !1479)
!1521 = !DILocation(line: 613, column: 29, scope: !1479)
!1522 = !DILocation(line: 613, column: 36, scope: !1479)
!1523 = !DILocation(line: 613, column: 17, scope: !1479)
!1524 = !DILocation(line: 613, column: 3, scope: !1480)
!1525 = !DILocation(line: 614, column: 4, scope: !1478)
!1526 = !DILocation(line: 614, column: 13, scope: !1478)
!1527 = !DILocation(line: 615, column: 4, scope: !1478)
!1528 = !DILocation(line: 615, column: 16, scope: !1478)
!1529 = !DILocation(line: 616, column: 11, scope: !1478)
!1530 = !DILocation(line: 616, column: 16, scope: !1478)
!1531 = !DILocation(line: 616, column: 23, scope: !1478)
!1532 = !DILocation(line: 616, column: 8, scope: !1478)
!1533 = !DILocation(line: 617, column: 20, scope: !1478)
!1534 = !DILocation(line: 617, column: 32, scope: !1478)
!1535 = !DILocation(line: 617, column: 11, scope: !1478)
!1536 = !DILocation(line: 617, column: 9, scope: !1478)
!1537 = !DILocation(line: 618, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1478, file: !28, line: 618, column: 8)
!1539 = !DILocation(line: 618, column: 13, scope: !1538)
!1540 = !DILocation(line: 618, column: 22, scope: !1538)
!1541 = !DILocation(line: 618, column: 8, scope: !1478)
!1542 = !DILocation(line: 619, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !28, line: 618, column: 34)
!1544 = !DILocation(line: 621, column: 11, scope: !1478)
!1545 = !DILocation(line: 622, column: 5, scope: !1478)
!1546 = !DILocation(line: 622, column: 8, scope: !1478)
!1547 = !DILocation(line: 622, column: 13, scope: !1478)
!1548 = !DILocation(line: 622, column: 23, scope: !1478)
!1549 = !DILocation(line: 622, column: 28, scope: !1478)
!1550 = !DILocation(line: 623, column: 14, scope: !1478)
!1551 = !{!1254, !579, i64 4}
!1552 = !DILocation(line: 623, column: 5, scope: !1478)
!1553 = !DILocation(line: 624, column: 14, scope: !1478)
!1554 = !DILocation(line: 624, column: 5, scope: !1478)
!1555 = !DILocation(line: 625, column: 20, scope: !1478)
!1556 = !{!1254, !579, i64 5}
!1557 = !DILocation(line: 625, column: 5, scope: !1478)
!1558 = !DILocation(line: 626, column: 5, scope: !1478)
!1559 = !DILocation(line: 621, column: 4, scope: !1478)
!1560 = !DILocation(line: 627, column: 3, scope: !1479)
!1561 = !DILocation(line: 627, column: 3, scope: !1478)
!1562 = !DILocation(line: 613, column: 55, scope: !1479)
!1563 = !DILocation(line: 613, column: 3, scope: !1479)
!1564 = distinct !{!1564, !1524, !1565, !684, !685}
!1565 = !DILocation(line: 627, column: 3, scope: !1480)
!1566 = !DILocation(line: 628, column: 2, scope: !1473)
!1567 = !DILocation(line: 628, column: 2, scope: !1472)
!1568 = !DILocation(line: 604, column: 26, scope: !1473)
!1569 = !DILocation(line: 604, column: 2, scope: !1473)
!1570 = distinct !{!1570, !1495, !1571, !684, !685}
!1571 = !DILocation(line: 628, column: 2, scope: !1474)
!1572 = !DILocation(line: 629, column: 2, scope: !1467)
!1573 = !DILocation(line: 630, column: 1, scope: !1467)
!1574 = distinct !DISubprogram(name: "print_absolute_relocs", scope: !28, file: !28, line: 632, type: !1417, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1583, !1584, !1585, !1586, !1587, !1588, !1592, !1593}
!1576 = !DILocalVariable(name: "i", scope: !1574, file: !28, line: 634, type: !21)
!1577 = !DILocalVariable(name: "printed", scope: !1574, file: !28, line: 634, type: !21)
!1578 = !DILocalVariable(name: "format", scope: !1574, file: !28, line: 635, type: !47)
!1579 = !DILocalVariable(name: "sec", scope: !1580, file: !28, line: 643, type: !202)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !28, line: 642, column: 30)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !28, line: 642, column: 2)
!1582 = distinct !DILexicalBlock(scope: !1574, file: !28, line: 642, column: 2)
!1583 = !DILocalVariable(name: "sec_applies", scope: !1580, file: !28, line: 644, type: !202)
!1584 = !DILocalVariable(name: "sec_symtab", scope: !1580, file: !28, line: 644, type: !202)
!1585 = !DILocalVariable(name: "sym_strtab", scope: !1580, file: !28, line: 645, type: !80)
!1586 = !DILocalVariable(name: "sh_symtab", scope: !1580, file: !28, line: 646, type: !222)
!1587 = !DILocalVariable(name: "j", scope: !1580, file: !28, line: 647, type: !21)
!1588 = !DILocalVariable(name: "rel", scope: !1589, file: !28, line: 667, type: !237)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !28, line: 666, column: 59)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !28, line: 666, column: 3)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !28, line: 666, column: 3)
!1592 = !DILocalVariable(name: "sym", scope: !1589, file: !28, line: 668, type: !222)
!1593 = !DILocalVariable(name: "name", scope: !1589, file: !28, line: 669, type: !47)
!1594 = !DILocation(line: 634, column: 2, scope: !1574)
!1595 = !DILocation(line: 634, column: 6, scope: !1574)
!1596 = !DILocation(line: 634, column: 9, scope: !1574)
!1597 = !DILocation(line: 635, column: 2, scope: !1574)
!1598 = !DILocation(line: 635, column: 14, scope: !1574)
!1599 = !DILocation(line: 638, column: 10, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1574, file: !28, line: 637, column: 6)
!1601 = !DILocation(line: 642, column: 9, scope: !1582)
!1602 = !DILocation(line: 642, column: 7, scope: !1582)
!1603 = !DILocation(line: 642, column: 14, scope: !1581)
!1604 = !DILocation(line: 642, column: 18, scope: !1581)
!1605 = !DILocation(line: 642, column: 16, scope: !1581)
!1606 = !DILocation(line: 642, column: 2, scope: !1582)
!1607 = !DILocation(line: 643, column: 3, scope: !1580)
!1608 = !DILocation(line: 643, column: 19, scope: !1580)
!1609 = !DILocation(line: 643, column: 26, scope: !1580)
!1610 = !DILocation(line: 643, column: 31, scope: !1580)
!1611 = !DILocation(line: 644, column: 3, scope: !1580)
!1612 = !DILocation(line: 644, column: 19, scope: !1580)
!1613 = !DILocation(line: 644, column: 33, scope: !1580)
!1614 = !DILocation(line: 645, column: 3, scope: !1580)
!1615 = !DILocation(line: 645, column: 9, scope: !1580)
!1616 = !DILocation(line: 646, column: 3, scope: !1580)
!1617 = !DILocation(line: 646, column: 12, scope: !1580)
!1618 = !DILocation(line: 647, column: 3, scope: !1580)
!1619 = !DILocation(line: 647, column: 7, scope: !1580)
!1620 = !DILocation(line: 648, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1580, file: !28, line: 648, column: 7)
!1622 = !DILocation(line: 648, column: 12, scope: !1621)
!1623 = !DILocation(line: 648, column: 17, scope: !1621)
!1624 = !DILocation(line: 648, column: 25, scope: !1621)
!1625 = !DILocation(line: 648, column: 7, scope: !1580)
!1626 = !DILocation(line: 649, column: 4, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !28, line: 648, column: 42)
!1628 = !DILocation(line: 651, column: 17, scope: !1580)
!1629 = !DILocation(line: 651, column: 22, scope: !1580)
!1630 = !DILocation(line: 651, column: 15, scope: !1580)
!1631 = !DILocation(line: 652, column: 18, scope: !1580)
!1632 = !DILocation(line: 652, column: 23, scope: !1580)
!1633 = !DILocation(line: 652, column: 28, scope: !1580)
!1634 = !DILocation(line: 652, column: 33, scope: !1580)
!1635 = !DILocation(line: 652, column: 15, scope: !1580)
!1636 = !DILocation(line: 653, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1580, file: !28, line: 653, column: 7)
!1638 = !DILocation(line: 653, column: 22, scope: !1637)
!1639 = !DILocation(line: 653, column: 27, scope: !1637)
!1640 = !DILocation(line: 653, column: 36, scope: !1637)
!1641 = !DILocation(line: 653, column: 7, scope: !1580)
!1642 = !DILocation(line: 654, column: 4, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !28, line: 653, column: 50)
!1644 = !DILocation(line: 661, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1580, file: !28, line: 661, column: 7)
!1646 = !DILocation(line: 661, column: 20, scope: !1645)
!1647 = !DILocation(line: 661, column: 25, scope: !1645)
!1648 = !DILocation(line: 661, column: 33, scope: !1645)
!1649 = !DILocation(line: 661, column: 7, scope: !1580)
!1650 = !DILocation(line: 662, column: 4, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !28, line: 661, column: 46)
!1652 = !DILocation(line: 664, column: 16, scope: !1580)
!1653 = !DILocation(line: 664, column: 28, scope: !1580)
!1654 = !DILocation(line: 664, column: 14, scope: !1580)
!1655 = !DILocation(line: 665, column: 16, scope: !1580)
!1656 = !DILocation(line: 665, column: 28, scope: !1580)
!1657 = !DILocation(line: 665, column: 34, scope: !1580)
!1658 = !DILocation(line: 665, column: 14, scope: !1580)
!1659 = !DILocation(line: 666, column: 10, scope: !1591)
!1660 = !DILocation(line: 666, column: 8, scope: !1591)
!1661 = !DILocation(line: 666, column: 15, scope: !1590)
!1662 = !DILocation(line: 666, column: 19, scope: !1590)
!1663 = !DILocation(line: 666, column: 24, scope: !1590)
!1664 = !DILocation(line: 666, column: 29, scope: !1590)
!1665 = !DILocation(line: 666, column: 36, scope: !1590)
!1666 = !DILocation(line: 666, column: 17, scope: !1590)
!1667 = !DILocation(line: 666, column: 3, scope: !1591)
!1668 = !DILocation(line: 667, column: 4, scope: !1589)
!1669 = !DILocation(line: 667, column: 13, scope: !1589)
!1670 = !DILocation(line: 668, column: 4, scope: !1589)
!1671 = !DILocation(line: 668, column: 13, scope: !1589)
!1672 = !DILocation(line: 669, column: 4, scope: !1589)
!1673 = !DILocation(line: 669, column: 16, scope: !1589)
!1674 = !DILocation(line: 670, column: 11, scope: !1589)
!1675 = !DILocation(line: 670, column: 16, scope: !1589)
!1676 = !DILocation(line: 670, column: 23, scope: !1589)
!1677 = !DILocation(line: 670, column: 8, scope: !1589)
!1678 = !DILocation(line: 671, column: 11, scope: !1589)
!1679 = !DILocation(line: 671, column: 21, scope: !1589)
!1680 = !DILocation(line: 671, column: 8, scope: !1589)
!1681 = !DILocation(line: 672, column: 20, scope: !1589)
!1682 = !DILocation(line: 672, column: 32, scope: !1589)
!1683 = !DILocation(line: 672, column: 11, scope: !1589)
!1684 = !DILocation(line: 672, column: 9, scope: !1589)
!1685 = !DILocation(line: 673, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1589, file: !28, line: 673, column: 8)
!1687 = !DILocation(line: 673, column: 13, scope: !1686)
!1688 = !DILocation(line: 673, column: 22, scope: !1686)
!1689 = !DILocation(line: 673, column: 8, scope: !1589)
!1690 = !DILocation(line: 674, column: 5, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !28, line: 673, column: 34)
!1692 = !DILocation(line: 690, column: 24, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1589, file: !28, line: 690, column: 8)
!1694 = !DILocation(line: 690, column: 8, scope: !1693)
!1695 = !DILocation(line: 690, column: 30, scope: !1693)
!1696 = !DILocation(line: 690, column: 49, scope: !1693)
!1697 = !DILocation(line: 690, column: 33, scope: !1693)
!1698 = !DILocation(line: 690, column: 8, scope: !1589)
!1699 = !DILocation(line: 691, column: 5, scope: !1693)
!1700 = !DILocation(line: 693, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1589, file: !28, line: 693, column: 8)
!1702 = !DILocation(line: 693, column: 8, scope: !1589)
!1703 = !DILocation(line: 694, column: 5, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !28, line: 693, column: 18)
!1705 = !DILocation(line: 696, column: 5, scope: !1704)
!1706 = !DILocation(line: 698, column: 13, scope: !1704)
!1707 = !DILocation(line: 699, column: 4, scope: !1704)
!1708 = !DILocation(line: 701, column: 11, scope: !1589)
!1709 = !DILocation(line: 702, column: 5, scope: !1589)
!1710 = !DILocation(line: 702, column: 10, scope: !1589)
!1711 = !DILocation(line: 703, column: 5, scope: !1589)
!1712 = !DILocation(line: 703, column: 10, scope: !1589)
!1713 = !DILocation(line: 704, column: 14, scope: !1589)
!1714 = !DILocation(line: 704, column: 5, scope: !1589)
!1715 = !DILocation(line: 705, column: 5, scope: !1589)
!1716 = !DILocation(line: 705, column: 10, scope: !1589)
!1717 = !DILocation(line: 706, column: 5, scope: !1589)
!1718 = !DILocation(line: 701, column: 4, scope: !1589)
!1719 = !DILocation(line: 707, column: 3, scope: !1590)
!1720 = !DILocation(line: 707, column: 3, scope: !1589)
!1721 = !DILocation(line: 666, column: 55, scope: !1590)
!1722 = !DILocation(line: 666, column: 3, scope: !1590)
!1723 = distinct !{!1723, !1667, !1724, !684, !685}
!1724 = !DILocation(line: 707, column: 3, scope: !1591)
!1725 = !DILocation(line: 708, column: 2, scope: !1581)
!1726 = !DILocation(line: 708, column: 2, scope: !1580)
!1727 = !DILocation(line: 642, column: 26, scope: !1581)
!1728 = !DILocation(line: 642, column: 2, scope: !1581)
!1729 = distinct !{!1729, !1606, !1730, !684, !685}
!1730 = !DILocation(line: 708, column: 2, scope: !1582)
!1731 = !DILocation(line: 710, column: 6, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1574, file: !28, line: 710, column: 6)
!1733 = !DILocation(line: 710, column: 6, scope: !1574)
!1734 = !DILocation(line: 711, column: 3, scope: !1732)
!1735 = !DILocation(line: 712, column: 1, scope: !1574)
!1736 = distinct !DISubprogram(name: "print_reloc_info", scope: !28, file: !28, line: 1175, type: !1417, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1737 = !DILocation(line: 1177, column: 2, scope: !1736)
!1738 = !DILocation(line: 1178, column: 2, scope: !1736)
!1739 = !DILocation(line: 1179, column: 1, scope: !1736)
!1740 = distinct !DISubprogram(name: "emit_relocs", scope: !28, file: !28, line: 1080, type: !1741, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !21, !21}
!1743 = !{!1744, !1745, !1746, !1747, !1751}
!1744 = !DILocalVariable(name: "as_text", arg: 1, scope: !1740, file: !28, line: 1080, type: !21)
!1745 = !DILocalVariable(name: "use_real_mode", arg: 2, scope: !1740, file: !28, line: 1080, type: !21)
!1746 = !DILocalVariable(name: "i", scope: !1740, file: !28, line: 1082, type: !21)
!1747 = !DILocalVariable(name: "write_reloc", scope: !1740, file: !28, line: 1083, type: !1748)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!21, !173, !516}
!1751 = !DILocalVariable(name: "do_reloc", scope: !1740, file: !28, line: 1084, type: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!21, !202, !237, !222, !47}
!1755 = !DILocation(line: 1080, column: 29, scope: !1740)
!1756 = !DILocation(line: 1080, column: 42, scope: !1740)
!1757 = !DILocation(line: 1082, column: 2, scope: !1740)
!1758 = !DILocation(line: 1082, column: 6, scope: !1740)
!1759 = !DILocation(line: 1083, column: 2, scope: !1740)
!1760 = !DILocation(line: 1083, column: 8, scope: !1740)
!1761 = !DILocation(line: 1084, column: 2, scope: !1740)
!1762 = !DILocation(line: 1084, column: 8, scope: !1740)
!1763 = !DILocation(line: 1088, column: 7, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1740, file: !28, line: 1088, column: 6)
!1765 = !DILocation(line: 1088, column: 6, scope: !1740)
!1766 = !DILocation(line: 1089, column: 12, scope: !1764)
!1767 = !DILocation(line: 1089, column: 3, scope: !1764)
!1768 = !DILocation(line: 1091, column: 3, scope: !1764)
!1769 = !DILocation(line: 1100, column: 14, scope: !1740)
!1770 = !DILocation(line: 1100, column: 2, scope: !1740)
!1771 = !DILocation(line: 1102, column: 15, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1740, file: !28, line: 1102, column: 6)
!1773 = !{!1774, !734, i64 8}
!1774 = !{!"relocs", !578, i64 0, !734, i64 8, !734, i64 16}
!1775 = !DILocation(line: 1102, column: 6, scope: !1772)
!1776 = !DILocation(line: 1102, column: 21, scope: !1772)
!1777 = !DILocation(line: 1102, column: 25, scope: !1772)
!1778 = !DILocation(line: 1102, column: 6, scope: !1740)
!1779 = !DILocation(line: 1103, column: 3, scope: !1772)
!1780 = !DILocation(line: 1106, column: 2, scope: !1740)
!1781 = !DILocation(line: 1108, column: 2, scope: !1740)
!1782 = !DILocation(line: 1109, column: 2, scope: !1740)
!1783 = !DILocation(line: 1115, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1740, file: !28, line: 1115, column: 6)
!1785 = !DILocation(line: 1115, column: 6, scope: !1740)
!1786 = !DILocation(line: 1119, column: 3, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !28, line: 1115, column: 15)
!1788 = !DILocation(line: 1120, column: 3, scope: !1787)
!1789 = !DILocation(line: 1121, column: 15, scope: !1787)
!1790 = !DILocation(line: 1122, column: 2, scope: !1787)
!1791 = !DILocation(line: 1124, column: 6, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1740, file: !28, line: 1124, column: 6)
!1793 = !DILocation(line: 1124, column: 6, scope: !1740)
!1794 = !DILocation(line: 1125, column: 3, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !28, line: 1124, column: 21)
!1796 = !DILocation(line: 1125, column: 24, scope: !1795)
!1797 = !DILocation(line: 1125, column: 15, scope: !1795)
!1798 = !DILocation(line: 1125, column: 31, scope: !1795)
!1799 = !DILocation(line: 1126, column: 10, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !28, line: 1126, column: 3)
!1801 = !DILocation(line: 1126, column: 8, scope: !1800)
!1802 = !DILocation(line: 1126, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !28, line: 1126, column: 3)
!1804 = !DILocation(line: 1126, column: 28, scope: !1803)
!1805 = !DILocation(line: 1126, column: 17, scope: !1803)
!1806 = !DILocation(line: 1126, column: 3, scope: !1800)
!1807 = !DILocation(line: 1127, column: 4, scope: !1803)
!1808 = !DILocation(line: 1127, column: 25, scope: !1803)
!1809 = !{!1774, !578, i64 0}
!1810 = !DILocation(line: 1127, column: 32, scope: !1803)
!1811 = !DILocation(line: 1127, column: 16, scope: !1803)
!1812 = !DILocation(line: 1127, column: 36, scope: !1803)
!1813 = !DILocation(line: 1126, column: 36, scope: !1803)
!1814 = !DILocation(line: 1126, column: 3, scope: !1803)
!1815 = distinct !{!1815, !1806, !1816, !684, !685}
!1816 = !DILocation(line: 1127, column: 42, scope: !1800)
!1817 = !DILocation(line: 1129, column: 3, scope: !1795)
!1818 = !DILocation(line: 1129, column: 24, scope: !1795)
!1819 = !DILocation(line: 1129, column: 15, scope: !1795)
!1820 = !DILocation(line: 1129, column: 31, scope: !1795)
!1821 = !DILocation(line: 1130, column: 10, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1795, file: !28, line: 1130, column: 3)
!1823 = !DILocation(line: 1130, column: 8, scope: !1822)
!1824 = !DILocation(line: 1130, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !28, line: 1130, column: 3)
!1826 = !DILocation(line: 1130, column: 28, scope: !1825)
!1827 = !DILocation(line: 1130, column: 17, scope: !1825)
!1828 = !DILocation(line: 1130, column: 3, scope: !1822)
!1829 = !DILocation(line: 1131, column: 4, scope: !1825)
!1830 = !DILocation(line: 1131, column: 25, scope: !1825)
!1831 = !DILocation(line: 1131, column: 32, scope: !1825)
!1832 = !DILocation(line: 1131, column: 16, scope: !1825)
!1833 = !DILocation(line: 1131, column: 36, scope: !1825)
!1834 = !DILocation(line: 1130, column: 36, scope: !1825)
!1835 = !DILocation(line: 1130, column: 3, scope: !1825)
!1836 = distinct !{!1836, !1828, !1837, !684, !685}
!1837 = !DILocation(line: 1131, column: 42, scope: !1822)
!1838 = !DILocation(line: 1132, column: 2, scope: !1795)
!1839 = !DILocation(line: 1135, column: 3, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1792, file: !28, line: 1132, column: 9)
!1841 = !DILocation(line: 1135, column: 18, scope: !1840)
!1842 = !DILocation(line: 1138, column: 10, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !28, line: 1138, column: 3)
!1844 = !DILocation(line: 1138, column: 8, scope: !1843)
!1845 = !DILocation(line: 1138, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !28, line: 1138, column: 3)
!1847 = !DILocation(line: 1138, column: 28, scope: !1846)
!1848 = !DILocation(line: 1138, column: 17, scope: !1846)
!1849 = !DILocation(line: 1138, column: 3, scope: !1843)
!1850 = !DILocation(line: 1139, column: 4, scope: !1846)
!1851 = !DILocation(line: 1139, column: 25, scope: !1846)
!1852 = !DILocation(line: 1139, column: 32, scope: !1846)
!1853 = !DILocation(line: 1139, column: 16, scope: !1846)
!1854 = !DILocation(line: 1139, column: 36, scope: !1846)
!1855 = !DILocation(line: 1138, column: 36, scope: !1846)
!1856 = !DILocation(line: 1138, column: 3, scope: !1846)
!1857 = distinct !{!1857, !1849, !1858, !684, !685}
!1858 = !DILocation(line: 1139, column: 42, scope: !1843)
!1859 = !DILocation(line: 1142, column: 3, scope: !1840)
!1860 = !DILocation(line: 1142, column: 18, scope: !1840)
!1861 = !DILocation(line: 1145, column: 10, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1840, file: !28, line: 1145, column: 3)
!1863 = !DILocation(line: 1145, column: 8, scope: !1862)
!1864 = !DILocation(line: 1145, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !28, line: 1145, column: 3)
!1866 = !DILocation(line: 1145, column: 31, scope: !1865)
!1867 = !DILocation(line: 1145, column: 17, scope: !1865)
!1868 = !DILocation(line: 1145, column: 3, scope: !1862)
!1869 = !DILocation(line: 1146, column: 4, scope: !1865)
!1870 = !DILocation(line: 1146, column: 28, scope: !1865)
!1871 = !DILocation(line: 1146, column: 35, scope: !1865)
!1872 = !DILocation(line: 1146, column: 16, scope: !1865)
!1873 = !DILocation(line: 1146, column: 39, scope: !1865)
!1874 = !DILocation(line: 1145, column: 39, scope: !1865)
!1875 = !DILocation(line: 1145, column: 3, scope: !1865)
!1876 = distinct !{!1876, !1868, !1877, !684, !685}
!1877 = !DILocation(line: 1146, column: 45, scope: !1862)
!1878 = !DILocation(line: 1150, column: 3, scope: !1840)
!1879 = !DILocation(line: 1150, column: 18, scope: !1840)
!1880 = !DILocation(line: 1153, column: 10, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1840, file: !28, line: 1153, column: 3)
!1882 = !DILocation(line: 1153, column: 8, scope: !1881)
!1883 = !DILocation(line: 1153, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !28, line: 1153, column: 3)
!1885 = !DILocation(line: 1153, column: 28, scope: !1884)
!1886 = !DILocation(line: 1153, column: 17, scope: !1884)
!1887 = !DILocation(line: 1153, column: 3, scope: !1881)
!1888 = !DILocation(line: 1154, column: 4, scope: !1884)
!1889 = !DILocation(line: 1154, column: 25, scope: !1884)
!1890 = !DILocation(line: 1154, column: 32, scope: !1884)
!1891 = !DILocation(line: 1154, column: 16, scope: !1884)
!1892 = !DILocation(line: 1154, column: 36, scope: !1884)
!1893 = !DILocation(line: 1153, column: 36, scope: !1884)
!1894 = !DILocation(line: 1153, column: 3, scope: !1884)
!1895 = distinct !{!1895, !1887, !1896, !684, !685}
!1896 = !DILocation(line: 1154, column: 42, scope: !1881)
!1897 = !DILocation(line: 1156, column: 1, scope: !1740)
!1898 = !DISubprogram(name: "regcomp", scope: !68, file: !68, line: 675, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!21, !1901, !1903, !21}
!1901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!1904 = !DISubprogram(name: "regerror", scope: !68, file: !68, line: 685, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!84, !21, !1907, !1910, !84}
!1907 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!1910 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!1911 = !DISubprogram(name: "die", scope: !6, file: !6, line: 21, type: !1912, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !80, null}
!1914 = !DISubprogram(name: "fread", scope: !1915, file: !1915, line: 675, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!16, !1918, !84, !84, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !563)
!1919 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !516)
!1920 = !DISubprogram(name: "strerror", scope: !1921, file: !1921, line: 419, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1921 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!80, !21}
!1924 = !DISubprogram(name: "__errno_location", scope: !1925, file: !1925, line: 37, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1929 = !DISubprogram(name: "memcmp", scope: !1921, file: !1921, line: 64, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!21, !1932, !1932, !84}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1934 = distinct !DISubprogram(name: "elf16_to_cpu", scope: !28, file: !28, line: 322, type: !1935, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!166, !166}
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "val", arg: 1, scope: !1934, file: !28, line: 322, type: !166)
!1939 = !{!733, !733, i64 0}
!1940 = !DILocation(line: 322, column: 39, scope: !1934)
!1941 = !DILocation(line: 324, column: 9, scope: !1934)
!1942 = !DILocation(line: 324, column: 2, scope: !1934)
!1943 = distinct !DISubprogram(name: "elf32_to_cpu", scope: !28, file: !28, line: 327, type: !1944, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!173, !173}
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "val", arg: 1, scope: !1943, file: !28, line: 327, type: !173)
!1948 = !DILocation(line: 327, column: 39, scope: !1943)
!1949 = !DILocation(line: 329, column: 9, scope: !1943)
!1950 = !DILocation(line: 329, column: 2, scope: !1943)
!1951 = distinct !DISubprogram(name: "elf64_to_cpu", scope: !28, file: !28, line: 336, type: !1952, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!177, !177}
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "val", arg: 1, scope: !1951, file: !28, line: 336, type: !177)
!1956 = !DILocation(line: 336, column: 39, scope: !1951)
!1957 = !DILocation(line: 338, column: 16, scope: !1951)
!1958 = !DILocation(line: 338, column: 9, scope: !1951)
!1959 = !DISubprogram(name: "fseek", scope: !1915, file: !1915, line: 713, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!21, !516, !24, !21}
!1962 = !DISubprogram(name: "calloc", scope: !1963, file: !1963, line: 543, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1963 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!563, !84, !84}
!1966 = !DISubprogram(name: "malloc", scope: !1963, file: !1963, line: 540, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!563, !84}
!1969 = !DISubprogram(name: "strcmp", scope: !1921, file: !1921, line: 156, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!21, !47, !47}
!1972 = distinct !DISubprogram(name: "sec_name", scope: !28, file: !28, line: 253, type: !336, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DILocalVariable(name: "shndx", arg: 1, scope: !1972, file: !28, line: 253, type: !7)
!1975 = !DILocalVariable(name: "sec_strtab", scope: !1972, file: !28, line: 255, type: !47)
!1976 = !DILocalVariable(name: "name", scope: !1972, file: !28, line: 256, type: !47)
!1977 = !DILocation(line: 253, column: 38, scope: !1972)
!1978 = !DILocation(line: 255, column: 2, scope: !1972)
!1979 = !DILocation(line: 255, column: 14, scope: !1972)
!1980 = !DILocation(line: 256, column: 2, scope: !1972)
!1981 = !DILocation(line: 256, column: 14, scope: !1972)
!1982 = !DILocation(line: 257, column: 15, scope: !1972)
!1983 = !DILocation(line: 257, column: 20, scope: !1972)
!1984 = !DILocation(line: 257, column: 30, scope: !1972)
!1985 = !DILocation(line: 257, column: 13, scope: !1972)
!1986 = !DILocation(line: 258, column: 7, scope: !1972)
!1987 = !DILocation(line: 259, column: 6, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1972, file: !28, line: 259, column: 6)
!1989 = !DILocation(line: 259, column: 14, scope: !1988)
!1990 = !DILocation(line: 259, column: 12, scope: !1988)
!1991 = !DILocation(line: 259, column: 6, scope: !1972)
!1992 = !DILocation(line: 260, column: 10, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !28, line: 259, column: 21)
!1994 = !DILocation(line: 260, column: 23, scope: !1993)
!1995 = !DILocation(line: 260, column: 28, scope: !1993)
!1996 = !DILocation(line: 260, column: 35, scope: !1993)
!1997 = !DILocation(line: 260, column: 40, scope: !1993)
!1998 = !DILocation(line: 260, column: 21, scope: !1993)
!1999 = !DILocation(line: 260, column: 8, scope: !1993)
!2000 = !DILocation(line: 261, column: 2, scope: !1993)
!2001 = !DILocation(line: 262, column: 11, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1988, file: !28, line: 262, column: 11)
!2003 = !DILocation(line: 262, column: 17, scope: !2002)
!2004 = !DILocation(line: 262, column: 11, scope: !1988)
!2005 = !DILocation(line: 263, column: 8, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !28, line: 262, column: 29)
!2007 = !DILocation(line: 264, column: 2, scope: !2006)
!2008 = !DILocation(line: 265, column: 11, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !28, line: 265, column: 11)
!2010 = !DILocation(line: 265, column: 17, scope: !2009)
!2011 = !DILocation(line: 265, column: 11, scope: !2002)
!2012 = !DILocation(line: 266, column: 8, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !28, line: 265, column: 32)
!2014 = !DILocation(line: 267, column: 2, scope: !2013)
!2015 = !DILocation(line: 268, column: 9, scope: !1972)
!2016 = !DILocation(line: 269, column: 1, scope: !1972)
!2017 = !DILocation(line: 268, column: 2, scope: !1972)
!2018 = distinct !DISubprogram(name: "sym_lookup", scope: !28, file: !28, line: 284, type: !2019, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!222, !47}
!2021 = !{!2022, !2023, !2024, !2028, !2029, !2030, !2031}
!2022 = !DILocalVariable(name: "symname", arg: 1, scope: !2018, file: !28, line: 284, type: !47)
!2023 = !DILocalVariable(name: "i", scope: !2018, file: !28, line: 286, type: !21)
!2024 = !DILocalVariable(name: "sec", scope: !2025, file: !28, line: 288, type: !202)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !28, line: 287, column: 30)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !28, line: 287, column: 2)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !28, line: 287, column: 2)
!2028 = !DILocalVariable(name: "nsyms", scope: !2025, file: !28, line: 289, type: !24)
!2029 = !DILocalVariable(name: "strtab", scope: !2025, file: !28, line: 290, type: !80)
!2030 = !DILocalVariable(name: "symtab", scope: !2025, file: !28, line: 291, type: !222)
!2031 = !DILocalVariable(name: "sym", scope: !2025, file: !28, line: 292, type: !222)
!2032 = !DILocation(line: 284, column: 40, scope: !2018)
!2033 = !DILocation(line: 286, column: 2, scope: !2018)
!2034 = !DILocation(line: 286, column: 6, scope: !2018)
!2035 = !DILocation(line: 287, column: 9, scope: !2027)
!2036 = !DILocation(line: 287, column: 7, scope: !2027)
!2037 = !DILocation(line: 287, column: 14, scope: !2026)
!2038 = !DILocation(line: 287, column: 18, scope: !2026)
!2039 = !DILocation(line: 287, column: 16, scope: !2026)
!2040 = !DILocation(line: 287, column: 2, scope: !2027)
!2041 = !DILocation(line: 288, column: 3, scope: !2025)
!2042 = !DILocation(line: 288, column: 19, scope: !2025)
!2043 = !DILocation(line: 288, column: 26, scope: !2025)
!2044 = !DILocation(line: 288, column: 31, scope: !2025)
!2045 = !DILocation(line: 289, column: 3, scope: !2025)
!2046 = !DILocation(line: 289, column: 8, scope: !2025)
!2047 = !DILocation(line: 290, column: 3, scope: !2025)
!2048 = !DILocation(line: 290, column: 9, scope: !2025)
!2049 = !DILocation(line: 291, column: 3, scope: !2025)
!2050 = !DILocation(line: 291, column: 12, scope: !2025)
!2051 = !DILocation(line: 292, column: 3, scope: !2025)
!2052 = !DILocation(line: 292, column: 12, scope: !2025)
!2053 = !DILocation(line: 294, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2025, file: !28, line: 294, column: 7)
!2055 = !DILocation(line: 294, column: 12, scope: !2054)
!2056 = !DILocation(line: 294, column: 17, scope: !2054)
!2057 = !DILocation(line: 294, column: 25, scope: !2054)
!2058 = !DILocation(line: 294, column: 7, scope: !2025)
!2059 = !DILocation(line: 295, column: 4, scope: !2054)
!2060 = !DILocation(line: 297, column: 11, scope: !2025)
!2061 = !DILocation(line: 297, column: 16, scope: !2025)
!2062 = !DILocation(line: 297, column: 21, scope: !2025)
!2063 = !DILocation(line: 297, column: 28, scope: !2025)
!2064 = !DILocation(line: 297, column: 9, scope: !2025)
!2065 = !DILocation(line: 298, column: 12, scope: !2025)
!2066 = !DILocation(line: 298, column: 17, scope: !2025)
!2067 = !DILocation(line: 298, column: 10, scope: !2025)
!2068 = !DILocation(line: 299, column: 12, scope: !2025)
!2069 = !DILocation(line: 299, column: 17, scope: !2025)
!2070 = !DILocation(line: 299, column: 23, scope: !2025)
!2071 = !DILocation(line: 299, column: 10, scope: !2025)
!2072 = !DILocation(line: 301, column: 14, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2025, file: !28, line: 301, column: 3)
!2074 = !DILocation(line: 301, column: 12, scope: !2073)
!2075 = !DILocation(line: 301, column: 8, scope: !2073)
!2076 = !DILocation(line: 301, column: 22, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !28, line: 301, column: 3)
!2078 = !DILocation(line: 301, column: 30, scope: !2077)
!2079 = !DILocation(line: 301, column: 3, scope: !2073)
!2080 = !DILocation(line: 302, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !28, line: 302, column: 8)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !28, line: 301, column: 43)
!2083 = !DILocation(line: 302, column: 14, scope: !2081)
!2084 = !DILocation(line: 302, column: 8, scope: !2082)
!2085 = !DILocation(line: 303, column: 5, scope: !2081)
!2086 = !DILocation(line: 304, column: 15, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !28, line: 304, column: 8)
!2088 = !DILocation(line: 304, column: 24, scope: !2087)
!2089 = !DILocation(line: 304, column: 33, scope: !2087)
!2090 = !DILocation(line: 304, column: 38, scope: !2087)
!2091 = !DILocation(line: 304, column: 31, scope: !2087)
!2092 = !DILocation(line: 304, column: 8, scope: !2087)
!2093 = !DILocation(line: 304, column: 47, scope: !2087)
!2094 = !DILocation(line: 304, column: 8, scope: !2082)
!2095 = !DILocation(line: 305, column: 12, scope: !2087)
!2096 = !DILocation(line: 305, column: 5, scope: !2087)
!2097 = !DILocation(line: 306, column: 3, scope: !2082)
!2098 = !DILocation(line: 301, column: 39, scope: !2077)
!2099 = !DILocation(line: 301, column: 3, scope: !2077)
!2100 = distinct !{!2100, !2079, !2101, !684, !685}
!2101 = !DILocation(line: 306, column: 3, scope: !2073)
!2102 = !DILocation(line: 307, column: 2, scope: !2026)
!2103 = !DILocation(line: 307, column: 2, scope: !2025)
!2104 = !DILocation(line: 287, column: 26, scope: !2026)
!2105 = !DILocation(line: 287, column: 2, scope: !2026)
!2106 = distinct !{!2106, !2040, !2107, !684, !685}
!2107 = !DILocation(line: 307, column: 2, scope: !2027)
!2108 = !DILocation(line: 308, column: 2, scope: !2018)
!2109 = !DILocation(line: 309, column: 1, scope: !2018)
!2110 = !DISubprogram(name: "printf", scope: !1915, file: !1915, line: 356, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!21, !1903, null}
!2113 = distinct !DISubprogram(name: "sym_name", scope: !28, file: !28, line: 271, type: !2114, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!47, !47, !222}
!2116 = !{!2117, !2118, !2119}
!2117 = !DILocalVariable(name: "sym_strtab", arg: 1, scope: !2113, file: !28, line: 271, type: !47)
!2118 = !DILocalVariable(name: "sym", arg: 2, scope: !2113, file: !28, line: 271, type: !222)
!2119 = !DILocalVariable(name: "name", scope: !2113, file: !28, line: 273, type: !47)
!2120 = !DILocation(line: 271, column: 41, scope: !2113)
!2121 = !DILocation(line: 271, column: 62, scope: !2113)
!2122 = !DILocation(line: 273, column: 2, scope: !2113)
!2123 = !DILocation(line: 273, column: 14, scope: !2113)
!2124 = !DILocation(line: 274, column: 7, scope: !2113)
!2125 = !DILocation(line: 275, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2113, file: !28, line: 275, column: 6)
!2127 = !DILocation(line: 275, column: 11, scope: !2126)
!2128 = !DILocation(line: 275, column: 6, scope: !2113)
!2129 = !DILocation(line: 276, column: 10, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !28, line: 275, column: 20)
!2131 = !DILocation(line: 276, column: 23, scope: !2130)
!2132 = !DILocation(line: 276, column: 28, scope: !2130)
!2133 = !DILocation(line: 276, column: 21, scope: !2130)
!2134 = !DILocation(line: 276, column: 8, scope: !2130)
!2135 = !DILocation(line: 277, column: 2, scope: !2130)
!2136 = !DILocation(line: 279, column: 29, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2126, file: !28, line: 278, column: 7)
!2138 = !DILocation(line: 279, column: 19, scope: !2137)
!2139 = !DILocation(line: 279, column: 10, scope: !2137)
!2140 = !DILocation(line: 279, column: 8, scope: !2137)
!2141 = !DILocation(line: 281, column: 9, scope: !2113)
!2142 = !DILocation(line: 282, column: 1, scope: !2113)
!2143 = !DILocation(line: 281, column: 2, scope: !2113)
!2144 = !DILocation(line: 152, column: 38, scope: !335)
!2145 = !DILocation(line: 165, column: 2, scope: !335)
!2146 = !DILocation(line: 165, column: 14, scope: !335)
!2147 = !DILocation(line: 166, column: 6, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !335, file: !28, line: 166, column: 6)
!2149 = !DILocation(line: 166, column: 11, scope: !2148)
!2150 = !DILocation(line: 166, column: 6, scope: !335)
!2151 = !DILocation(line: 167, column: 20, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !28, line: 166, column: 36)
!2153 = !DILocation(line: 167, column: 10, scope: !2152)
!2154 = !DILocation(line: 167, column: 8, scope: !2152)
!2155 = !DILocation(line: 168, column: 2, scope: !2152)
!2156 = !DILocation(line: 169, column: 9, scope: !335)
!2157 = !DILocation(line: 170, column: 1, scope: !335)
!2158 = !DILocation(line: 169, column: 2, scope: !335)
!2159 = !DILocation(line: 172, column: 38, scope: !358)
!2160 = !DILocation(line: 181, column: 2, scope: !358)
!2161 = !DILocation(line: 181, column: 14, scope: !358)
!2162 = !DILocation(line: 182, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !358, file: !28, line: 182, column: 6)
!2164 = !DILocation(line: 182, column: 11, scope: !2163)
!2165 = !DILocation(line: 182, column: 6, scope: !358)
!2166 = !DILocation(line: 183, column: 20, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !28, line: 182, column: 36)
!2168 = !DILocation(line: 183, column: 10, scope: !2167)
!2169 = !DILocation(line: 183, column: 8, scope: !2167)
!2170 = !DILocation(line: 184, column: 2, scope: !2167)
!2171 = !DILocation(line: 185, column: 9, scope: !358)
!2172 = !DILocation(line: 186, column: 1, scope: !358)
!2173 = !DILocation(line: 185, column: 2, scope: !358)
!2174 = !DILocation(line: 188, column: 44, scope: !378)
!2175 = !DILocation(line: 198, column: 2, scope: !378)
!2176 = !DILocation(line: 198, column: 14, scope: !378)
!2177 = !DILocation(line: 199, column: 6, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !378, file: !28, line: 199, column: 6)
!2179 = !DILocation(line: 199, column: 17, scope: !2178)
!2180 = !DILocation(line: 199, column: 6, scope: !378)
!2181 = !DILocation(line: 200, column: 26, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !28, line: 199, column: 48)
!2183 = !DILocation(line: 200, column: 10, scope: !2182)
!2184 = !DILocation(line: 200, column: 8, scope: !2182)
!2185 = !DILocation(line: 201, column: 2, scope: !2182)
!2186 = !DILocation(line: 202, column: 9, scope: !378)
!2187 = !DILocation(line: 203, column: 1, scope: !378)
!2188 = !DILocation(line: 202, column: 2, scope: !378)
!2189 = distinct !DISubprogram(name: "sym_index", scope: !28, file: !28, line: 349, type: !2190, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!21, !222}
!2192 = !{!2193, !2194, !2195, !2196, !2197}
!2193 = !DILocalVariable(name: "sym", arg: 1, scope: !2189, file: !28, line: 349, type: !222)
!2194 = !DILocalVariable(name: "symtab", scope: !2189, file: !28, line: 351, type: !222)
!2195 = !DILocalVariable(name: "xsymtab", scope: !2189, file: !28, line: 352, type: !234)
!2196 = !DILocalVariable(name: "offset", scope: !2189, file: !28, line: 353, type: !16)
!2197 = !DILocalVariable(name: "index", scope: !2189, file: !28, line: 354, type: !21)
!2198 = !DILocation(line: 349, column: 31, scope: !2189)
!2199 = !DILocation(line: 351, column: 2, scope: !2189)
!2200 = !DILocation(line: 351, column: 11, scope: !2189)
!2201 = !DILocation(line: 351, column: 20, scope: !2189)
!2202 = !DILocation(line: 351, column: 25, scope: !2189)
!2203 = !DILocation(line: 351, column: 38, scope: !2189)
!2204 = !DILocation(line: 352, column: 2, scope: !2189)
!2205 = !DILocation(line: 352, column: 14, scope: !2189)
!2206 = !DILocation(line: 352, column: 24, scope: !2189)
!2207 = !DILocation(line: 352, column: 29, scope: !2189)
!2208 = !DILocation(line: 352, column: 43, scope: !2189)
!2209 = !DILocation(line: 353, column: 2, scope: !2189)
!2210 = !DILocation(line: 353, column: 16, scope: !2189)
!2211 = !DILocation(line: 354, column: 2, scope: !2189)
!2212 = !DILocation(line: 354, column: 6, scope: !2189)
!2213 = !DILocation(line: 356, column: 6, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2189, file: !28, line: 356, column: 6)
!2215 = !DILocation(line: 356, column: 11, scope: !2214)
!2216 = !DILocation(line: 356, column: 20, scope: !2214)
!2217 = !DILocation(line: 356, column: 6, scope: !2189)
!2218 = !DILocation(line: 357, column: 10, scope: !2214)
!2219 = !DILocation(line: 357, column: 15, scope: !2214)
!2220 = !DILocation(line: 357, column: 3, scope: !2214)
!2221 = !DILocation(line: 360, column: 26, scope: !2189)
!2222 = !DILocation(line: 360, column: 11, scope: !2189)
!2223 = !DILocation(line: 360, column: 47, scope: !2189)
!2224 = !DILocation(line: 360, column: 32, scope: !2189)
!2225 = !DILocation(line: 360, column: 30, scope: !2189)
!2226 = !DILocation(line: 360, column: 9, scope: !2189)
!2227 = !DILocation(line: 361, column: 10, scope: !2189)
!2228 = !DILocation(line: 361, column: 17, scope: !2189)
!2229 = !DILocation(line: 361, column: 8, scope: !2189)
!2230 = !DILocation(line: 363, column: 22, scope: !2189)
!2231 = !DILocation(line: 363, column: 30, scope: !2189)
!2232 = !DILocation(line: 363, column: 9, scope: !2189)
!2233 = !DILocation(line: 363, column: 2, scope: !2189)
!2234 = !DILocation(line: 364, column: 1, scope: !2189)
!2235 = distinct !DISubprogram(name: "is_reloc", scope: !28, file: !28, line: 121, type: !2236, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!21, !5, !47}
!2238 = !{!2239, !2240}
!2239 = !DILocalVariable(name: "type", arg: 1, scope: !2235, file: !28, line: 121, type: !5)
!2240 = !DILocalVariable(name: "sym_name", arg: 2, scope: !2235, file: !28, line: 121, type: !47)
!2241 = !DILocation(line: 121, column: 34, scope: !2235)
!2242 = !DILocation(line: 121, column: 52, scope: !2235)
!2243 = !DILocation(line: 123, column: 9, scope: !2235)
!2244 = !DILocation(line: 123, column: 19, scope: !2235)
!2245 = !DILocation(line: 123, column: 25, scope: !2235)
!2246 = !DILocation(line: 124, column: 25, scope: !2235)
!2247 = !DILocation(line: 124, column: 13, scope: !2235)
!2248 = !DILocation(line: 124, column: 32, scope: !2235)
!2249 = !DILocation(line: 124, column: 4, scope: !2235)
!2250 = !DILocation(line: 124, column: 3, scope: !2235)
!2251 = !DILocation(line: 0, scope: !2235)
!2252 = !DILocation(line: 123, column: 2, scope: !2235)
!2253 = !DILocation(line: 205, column: 38, scope: !436)
!2254 = !DILocation(line: 246, column: 2, scope: !436)
!2255 = !DILocation(line: 246, column: 14, scope: !436)
!2256 = !DILocation(line: 247, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !436, file: !28, line: 247, column: 6)
!2258 = !DILocation(line: 247, column: 11, scope: !2257)
!2259 = !DILocation(line: 247, column: 35, scope: !2257)
!2260 = !DILocation(line: 247, column: 48, scope: !2257)
!2261 = !DILocation(line: 247, column: 38, scope: !2257)
!2262 = !DILocation(line: 247, column: 6, scope: !436)
!2263 = !DILocation(line: 248, column: 20, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !28, line: 247, column: 55)
!2265 = !DILocation(line: 248, column: 10, scope: !2264)
!2266 = !DILocation(line: 248, column: 8, scope: !2264)
!2267 = !DILocation(line: 249, column: 2, scope: !2264)
!2268 = !DILocation(line: 250, column: 9, scope: !436)
!2269 = !DILocation(line: 251, column: 1, scope: !436)
!2270 = !DILocation(line: 250, column: 2, scope: !436)
!2271 = !DISubprogram(name: "regexec", scope: !68, file: !68, line: 679, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!21, !1907, !1903, !84, !2274, !21}
!2274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2275)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmatch_t", file: !68, line: 521, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 517, size: 64, elements: !2278)
!2278 = !{!2279, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rm_so", scope: !2277, file: !68, line: 519, baseType: !2280, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !68, line: 490, baseType: !21)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rm_eo", scope: !2277, file: !68, line: 520, baseType: !2280, size: 32, offset: 32)
!2282 = distinct !DISubprogram(name: "walk_relocs", scope: !28, file: !28, line: 729, type: !2283, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !1752}
!2285 = !{!2286, !2287, !2288, !2292, !2293, !2294, !2295, !2296, !2297, !2301, !2302}
!2286 = !DILocalVariable(name: "process", arg: 1, scope: !2282, file: !28, line: 729, type: !1752)
!2287 = !DILocalVariable(name: "i", scope: !2282, file: !28, line: 732, type: !21)
!2288 = !DILocalVariable(name: "sym_strtab", scope: !2289, file: !28, line: 735, type: !80)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !28, line: 734, column: 30)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !28, line: 734, column: 2)
!2291 = distinct !DILexicalBlock(scope: !2282, file: !28, line: 734, column: 2)
!2292 = !DILocalVariable(name: "sh_symtab", scope: !2289, file: !28, line: 736, type: !222)
!2293 = !DILocalVariable(name: "sec_applies", scope: !2289, file: !28, line: 737, type: !202)
!2294 = !DILocalVariable(name: "sec_symtab", scope: !2289, file: !28, line: 737, type: !202)
!2295 = !DILocalVariable(name: "j", scope: !2289, file: !28, line: 738, type: !21)
!2296 = !DILocalVariable(name: "sec", scope: !2289, file: !28, line: 739, type: !202)
!2297 = !DILocalVariable(name: "rel", scope: !2298, file: !28, line: 761, type: !237)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !28, line: 760, column: 59)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !28, line: 760, column: 3)
!2300 = distinct !DILexicalBlock(scope: !2289, file: !28, line: 760, column: 3)
!2301 = !DILocalVariable(name: "sym", scope: !2298, file: !28, line: 762, type: !222)
!2302 = !DILocalVariable(name: "symname", scope: !2298, file: !28, line: 763, type: !47)
!2303 = !DILocation(line: 729, column: 31, scope: !2282)
!2304 = !DILocation(line: 732, column: 2, scope: !2282)
!2305 = !DILocation(line: 732, column: 6, scope: !2282)
!2306 = !DILocation(line: 734, column: 9, scope: !2291)
!2307 = !DILocation(line: 734, column: 7, scope: !2291)
!2308 = !DILocation(line: 734, column: 14, scope: !2290)
!2309 = !DILocation(line: 734, column: 18, scope: !2290)
!2310 = !DILocation(line: 734, column: 16, scope: !2290)
!2311 = !DILocation(line: 734, column: 2, scope: !2291)
!2312 = !DILocation(line: 735, column: 3, scope: !2289)
!2313 = !DILocation(line: 735, column: 9, scope: !2289)
!2314 = !DILocation(line: 736, column: 3, scope: !2289)
!2315 = !DILocation(line: 736, column: 12, scope: !2289)
!2316 = !DILocation(line: 737, column: 3, scope: !2289)
!2317 = !DILocation(line: 737, column: 19, scope: !2289)
!2318 = !DILocation(line: 737, column: 33, scope: !2289)
!2319 = !DILocation(line: 738, column: 3, scope: !2289)
!2320 = !DILocation(line: 738, column: 7, scope: !2289)
!2321 = !DILocation(line: 739, column: 3, scope: !2289)
!2322 = !DILocation(line: 739, column: 19, scope: !2289)
!2323 = !DILocation(line: 739, column: 26, scope: !2289)
!2324 = !DILocation(line: 739, column: 31, scope: !2289)
!2325 = !DILocation(line: 741, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2289, file: !28, line: 741, column: 7)
!2327 = !DILocation(line: 741, column: 12, scope: !2326)
!2328 = !DILocation(line: 741, column: 17, scope: !2326)
!2329 = !DILocation(line: 741, column: 25, scope: !2326)
!2330 = !DILocation(line: 741, column: 7, scope: !2289)
!2331 = !DILocation(line: 742, column: 4, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !28, line: 741, column: 42)
!2333 = !DILocation(line: 744, column: 17, scope: !2289)
!2334 = !DILocation(line: 744, column: 22, scope: !2289)
!2335 = !DILocation(line: 744, column: 15, scope: !2289)
!2336 = !DILocation(line: 745, column: 18, scope: !2289)
!2337 = !DILocation(line: 745, column: 23, scope: !2289)
!2338 = !DILocation(line: 745, column: 28, scope: !2289)
!2339 = !DILocation(line: 745, column: 33, scope: !2289)
!2340 = !DILocation(line: 745, column: 15, scope: !2289)
!2341 = !DILocation(line: 746, column: 9, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2289, file: !28, line: 746, column: 7)
!2343 = !DILocation(line: 746, column: 22, scope: !2342)
!2344 = !DILocation(line: 746, column: 27, scope: !2342)
!2345 = !DILocation(line: 746, column: 36, scope: !2342)
!2346 = !DILocation(line: 746, column: 7, scope: !2289)
!2347 = !DILocation(line: 747, column: 4, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !28, line: 746, column: 50)
!2349 = !DILocation(line: 755, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2289, file: !28, line: 755, column: 7)
!2351 = !DILocation(line: 755, column: 20, scope: !2350)
!2352 = !DILocation(line: 755, column: 25, scope: !2350)
!2353 = !DILocation(line: 755, column: 33, scope: !2350)
!2354 = !DILocation(line: 755, column: 7, scope: !2289)
!2355 = !DILocation(line: 756, column: 4, scope: !2350)
!2356 = !DILocation(line: 758, column: 15, scope: !2289)
!2357 = !DILocation(line: 758, column: 27, scope: !2289)
!2358 = !DILocation(line: 758, column: 13, scope: !2289)
!2359 = !DILocation(line: 759, column: 16, scope: !2289)
!2360 = !DILocation(line: 759, column: 28, scope: !2289)
!2361 = !DILocation(line: 759, column: 34, scope: !2289)
!2362 = !DILocation(line: 759, column: 14, scope: !2289)
!2363 = !DILocation(line: 760, column: 10, scope: !2300)
!2364 = !DILocation(line: 760, column: 8, scope: !2300)
!2365 = !DILocation(line: 760, column: 15, scope: !2299)
!2366 = !DILocation(line: 760, column: 19, scope: !2299)
!2367 = !DILocation(line: 760, column: 24, scope: !2299)
!2368 = !DILocation(line: 760, column: 29, scope: !2299)
!2369 = !DILocation(line: 760, column: 36, scope: !2299)
!2370 = !DILocation(line: 760, column: 17, scope: !2299)
!2371 = !DILocation(line: 760, column: 3, scope: !2300)
!2372 = !DILocation(line: 761, column: 4, scope: !2298)
!2373 = !DILocation(line: 761, column: 13, scope: !2298)
!2374 = !DILocation(line: 761, column: 20, scope: !2298)
!2375 = !DILocation(line: 761, column: 25, scope: !2298)
!2376 = !DILocation(line: 761, column: 32, scope: !2298)
!2377 = !DILocation(line: 762, column: 4, scope: !2298)
!2378 = !DILocation(line: 762, column: 13, scope: !2298)
!2379 = !DILocation(line: 762, column: 20, scope: !2298)
!2380 = !DILocation(line: 762, column: 30, scope: !2298)
!2381 = !DILocation(line: 763, column: 4, scope: !2298)
!2382 = !DILocation(line: 763, column: 16, scope: !2298)
!2383 = !DILocation(line: 763, column: 35, scope: !2298)
!2384 = !DILocation(line: 763, column: 47, scope: !2298)
!2385 = !DILocation(line: 763, column: 26, scope: !2298)
!2386 = !DILocation(line: 765, column: 4, scope: !2298)
!2387 = !DILocation(line: 765, column: 12, scope: !2298)
!2388 = !DILocation(line: 765, column: 17, scope: !2298)
!2389 = !DILocation(line: 765, column: 22, scope: !2298)
!2390 = !DILocation(line: 765, column: 27, scope: !2298)
!2391 = !DILocation(line: 766, column: 3, scope: !2299)
!2392 = !DILocation(line: 766, column: 3, scope: !2298)
!2393 = !DILocation(line: 760, column: 55, scope: !2299)
!2394 = !DILocation(line: 760, column: 3, scope: !2299)
!2395 = distinct !{!2395, !2371, !2396, !684, !685}
!2396 = !DILocation(line: 766, column: 3, scope: !2300)
!2397 = !DILocation(line: 767, column: 2, scope: !2290)
!2398 = !DILocation(line: 767, column: 2, scope: !2289)
!2399 = !DILocation(line: 734, column: 26, scope: !2290)
!2400 = !DILocation(line: 734, column: 2, scope: !2290)
!2401 = distinct !{!2401, !2311, !2402, !684, !685}
!2402 = !DILocation(line: 767, column: 2, scope: !2291)
!2403 = !DILocation(line: 768, column: 1, scope: !2282)
!2404 = distinct !DISubprogram(name: "do_reloc_info", scope: !28, file: !28, line: 1164, type: !1753, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "sec", arg: 1, scope: !2404, file: !28, line: 1164, type: !202)
!2407 = !DILocalVariable(name: "rel", arg: 2, scope: !2404, file: !28, line: 1164, type: !237)
!2408 = !DILocalVariable(name: "sym", arg: 3, scope: !2404, file: !28, line: 1164, type: !222)
!2409 = !DILocalVariable(name: "symname", arg: 4, scope: !2404, file: !28, line: 1165, type: !47)
!2410 = !DILocation(line: 1164, column: 42, scope: !2404)
!2411 = !DILocation(line: 1164, column: 56, scope: !2404)
!2412 = !DILocation(line: 1164, column: 72, scope: !2404)
!2413 = !DILocation(line: 1165, column: 17, scope: !2404)
!2414 = !DILocation(line: 1168, column: 12, scope: !2404)
!2415 = !DILocation(line: 1168, column: 17, scope: !2404)
!2416 = !DILocation(line: 1168, column: 22, scope: !2404)
!2417 = !DILocation(line: 1168, column: 3, scope: !2404)
!2418 = !DILocation(line: 1169, column: 12, scope: !2404)
!2419 = !DILocation(line: 1169, column: 3, scope: !2404)
!2420 = !DILocation(line: 1170, column: 3, scope: !2404)
!2421 = !DILocation(line: 1171, column: 22, scope: !2404)
!2422 = !DILocation(line: 1171, column: 12, scope: !2404)
!2423 = !DILocation(line: 1171, column: 3, scope: !2404)
!2424 = !DILocation(line: 1167, column: 2, scope: !2404)
!2425 = !DILocation(line: 1172, column: 2, scope: !2404)
!2426 = distinct !DISubprogram(name: "write32", scope: !28, file: !28, line: 1067, type: !1749, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "v", arg: 1, scope: !2426, file: !28, line: 1067, type: !173)
!2429 = !DILocalVariable(name: "f", arg: 2, scope: !2426, file: !28, line: 1067, type: !516)
!2430 = !DILocalVariable(name: "buf", scope: !2426, file: !28, line: 1069, type: !2431)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !62)
!2432 = !DILocation(line: 1067, column: 29, scope: !2426)
!2433 = !DILocation(line: 1067, column: 38, scope: !2426)
!2434 = !DILocation(line: 1069, column: 2, scope: !2426)
!2435 = !DILocation(line: 1069, column: 16, scope: !2426)
!2436 = !DILocation(line: 1071, column: 21, scope: !2426)
!2437 = !DILocation(line: 1071, column: 24, scope: !2426)
!2438 = !DILocation(line: 1071, column: 2, scope: !2426)
!2439 = !DILocation(line: 1072, column: 16, scope: !2426)
!2440 = !DILocation(line: 1072, column: 27, scope: !2426)
!2441 = !DILocation(line: 1072, column: 9, scope: !2426)
!2442 = !DILocation(line: 1072, column: 30, scope: !2426)
!2443 = !DILocation(line: 1073, column: 1, scope: !2426)
!2444 = !DILocation(line: 1072, column: 2, scope: !2426)
!2445 = distinct !DISubprogram(name: "do_reloc64", scope: !28, file: !28, line: 845, type: !1753, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2447 = !DILocalVariable(name: "sec", arg: 1, scope: !2445, file: !28, line: 845, type: !202)
!2448 = !DILocalVariable(name: "rel", arg: 2, scope: !2445, file: !28, line: 845, type: !237)
!2449 = !DILocalVariable(name: "sym", arg: 3, scope: !2445, file: !28, line: 845, type: !222)
!2450 = !DILocalVariable(name: "symname", arg: 4, scope: !2445, file: !28, line: 846, type: !47)
!2451 = !DILocalVariable(name: "r_type", scope: !2445, file: !28, line: 848, type: !7)
!2452 = !DILocalVariable(name: "offset", scope: !2445, file: !28, line: 849, type: !176)
!2453 = !DILocalVariable(name: "shn_abs", scope: !2445, file: !28, line: 850, type: !21)
!2454 = !DILocation(line: 845, column: 39, scope: !2445)
!2455 = !DILocation(line: 845, column: 53, scope: !2445)
!2456 = !DILocation(line: 845, column: 69, scope: !2445)
!2457 = !DILocation(line: 846, column: 21, scope: !2445)
!2458 = !DILocation(line: 848, column: 2, scope: !2445)
!2459 = !DILocation(line: 848, column: 11, scope: !2445)
!2460 = !DILocation(line: 848, column: 20, scope: !2445)
!2461 = !DILocation(line: 849, column: 2, scope: !2445)
!2462 = !DILocation(line: 849, column: 13, scope: !2445)
!2463 = !DILocation(line: 849, column: 22, scope: !2445)
!2464 = !DILocation(line: 849, column: 27, scope: !2445)
!2465 = !DILocation(line: 850, column: 2, scope: !2445)
!2466 = !DILocation(line: 850, column: 6, scope: !2445)
!2467 = !DILocation(line: 850, column: 17, scope: !2445)
!2468 = !DILocation(line: 850, column: 22, scope: !2445)
!2469 = !DILocation(line: 850, column: 31, scope: !2445)
!2470 = !DILocation(line: 850, column: 43, scope: !2445)
!2471 = !DILocation(line: 850, column: 63, scope: !2445)
!2472 = !DILocation(line: 850, column: 47, scope: !2445)
!2473 = !DILocation(line: 850, column: 46, scope: !2445)
!2474 = !DILocation(line: 0, scope: !2445)
!2475 = !DILocation(line: 852, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2445, file: !28, line: 852, column: 6)
!2477 = !DILocation(line: 852, column: 11, scope: !2476)
!2478 = !DILocation(line: 852, column: 20, scope: !2476)
!2479 = !DILocation(line: 852, column: 6, scope: !2445)
!2480 = !DILocation(line: 853, column: 3, scope: !2476)
!2481 = !DILocation(line: 858, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2445, file: !28, line: 858, column: 6)
!2483 = !DILocation(line: 858, column: 11, scope: !2482)
!2484 = !DILocation(line: 858, column: 16, scope: !2482)
!2485 = !DILocation(line: 858, column: 27, scope: !2482)
!2486 = !DILocation(line: 858, column: 24, scope: !2482)
!2487 = !DILocation(line: 858, column: 6, scope: !2445)
!2488 = !DILocation(line: 859, column: 13, scope: !2482)
!2489 = !DILocation(line: 859, column: 10, scope: !2482)
!2490 = !DILocation(line: 859, column: 3, scope: !2482)
!2491 = !DILocation(line: 861, column: 10, scope: !2445)
!2492 = !DILocation(line: 861, column: 2, scope: !2445)
!2493 = !DILocation(line: 874, column: 21, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 874, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2445, file: !28, line: 861, column: 18)
!2496 = !DILocation(line: 874, column: 26, scope: !2494)
!2497 = !DILocation(line: 874, column: 7, scope: !2494)
!2498 = !DILocation(line: 874, column: 7, scope: !2495)
!2499 = !DILocation(line: 875, column: 28, scope: !2494)
!2500 = !DILocation(line: 875, column: 4, scope: !2494)
!2501 = !DILocation(line: 876, column: 3, scope: !2495)
!2502 = !DILocation(line: 882, column: 21, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 882, column: 7)
!2504 = !DILocation(line: 882, column: 26, scope: !2503)
!2505 = !DILocation(line: 882, column: 7, scope: !2503)
!2506 = !DILocation(line: 882, column: 7, scope: !2495)
!2507 = !DILocation(line: 884, column: 8, scope: !2503)
!2508 = !DILocation(line: 883, column: 4, scope: !2503)
!2509 = !DILocation(line: 885, column: 3, scope: !2495)
!2510 = !DILocation(line: 893, column: 21, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 893, column: 7)
!2512 = !DILocation(line: 893, column: 26, scope: !2511)
!2513 = !DILocation(line: 893, column: 7, scope: !2511)
!2514 = !DILocation(line: 893, column: 7, scope: !2495)
!2515 = !DILocation(line: 894, column: 4, scope: !2511)
!2516 = !DILocation(line: 896, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 896, column: 7)
!2518 = !DILocation(line: 896, column: 7, scope: !2495)
!2519 = !DILocation(line: 901, column: 24, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !28, line: 901, column: 8)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !28, line: 896, column: 16)
!2522 = !DILocation(line: 901, column: 8, scope: !2520)
!2523 = !DILocation(line: 901, column: 8, scope: !2521)
!2524 = !DILocation(line: 902, column: 5, scope: !2520)
!2525 = !DILocation(line: 905, column: 17, scope: !2521)
!2526 = !DILocation(line: 905, column: 8, scope: !2521)
!2527 = !DILocation(line: 905, column: 26, scope: !2521)
!2528 = !DILocation(line: 904, column: 4, scope: !2521)
!2529 = !DILocation(line: 915, column: 16, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 915, column: 7)
!2531 = !DILocation(line: 915, column: 7, scope: !2530)
!2532 = !DILocation(line: 915, column: 35, scope: !2530)
!2533 = !DILocation(line: 915, column: 23, scope: !2530)
!2534 = !DILocation(line: 915, column: 7, scope: !2495)
!2535 = !DILocation(line: 916, column: 4, scope: !2530)
!2536 = !DILocation(line: 918, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2495, file: !28, line: 918, column: 7)
!2538 = !DILocation(line: 918, column: 14, scope: !2537)
!2539 = !DILocation(line: 918, column: 7, scope: !2495)
!2540 = !DILocation(line: 919, column: 25, scope: !2537)
!2541 = !DILocation(line: 919, column: 4, scope: !2537)
!2542 = !DILocation(line: 921, column: 25, scope: !2537)
!2543 = !DILocation(line: 921, column: 4, scope: !2537)
!2544 = !DILocation(line: 922, column: 3, scope: !2495)
!2545 = !DILocation(line: 926, column: 16, scope: !2495)
!2546 = !DILocation(line: 926, column: 7, scope: !2495)
!2547 = !DILocation(line: 926, column: 25, scope: !2495)
!2548 = !DILocation(line: 925, column: 3, scope: !2495)
!2549 = !DILocation(line: 930, column: 2, scope: !2445)
!2550 = !DILocation(line: 931, column: 1, scope: !2445)
!2551 = distinct !DISubprogram(name: "sort_relocs", scope: !28, file: !28, line: 1062, type: !2552, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2555)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "r", arg: 1, scope: !2551, file: !28, line: 1062, type: !2554)
!2557 = !DILocation(line: 1062, column: 40, scope: !2551)
!2558 = !DILocation(line: 1064, column: 8, scope: !2551)
!2559 = !DILocation(line: 1064, column: 11, scope: !2551)
!2560 = !DILocation(line: 1064, column: 19, scope: !2551)
!2561 = !DILocation(line: 1064, column: 22, scope: !2551)
!2562 = !DILocation(line: 1064, column: 2, scope: !2551)
!2563 = !DILocation(line: 1065, column: 1, scope: !2551)
!2564 = distinct !DISubprogram(name: "write32_as_text", scope: !28, file: !28, line: 1075, type: !1749, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2565)
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "v", arg: 1, scope: !2564, file: !28, line: 1075, type: !173)
!2567 = !DILocalVariable(name: "f", arg: 2, scope: !2564, file: !28, line: 1075, type: !516)
!2568 = !DILocation(line: 1075, column: 37, scope: !2564)
!2569 = !DILocation(line: 1075, column: 46, scope: !2564)
!2570 = !DILocation(line: 1077, column: 17, scope: !2564)
!2571 = !DILocation(line: 1077, column: 47, scope: !2564)
!2572 = !DILocation(line: 1077, column: 9, scope: !2564)
!2573 = !DILocation(line: 1077, column: 50, scope: !2564)
!2574 = !DILocation(line: 1077, column: 2, scope: !2564)
!2575 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !2576, file: !2576, line: 61, type: !2577, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2576 = !DIFile(filename: "./tools/include/tools/le_byteshift.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af0762430017273314a82421eaba8371")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !173, !563}
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "val", arg: 1, scope: !2575, file: !2576, line: 61, type: !173)
!2581 = !DILocalVariable(name: "p", arg: 2, scope: !2575, file: !2576, line: 61, type: !563)
!2582 = !DILocation(line: 61, column: 48, scope: !2575)
!2583 = !DILocation(line: 61, column: 59, scope: !2575)
!2584 = !DILocation(line: 63, column: 23, scope: !2575)
!2585 = !DILocation(line: 63, column: 28, scope: !2575)
!2586 = !DILocation(line: 63, column: 2, scope: !2575)
!2587 = !DILocation(line: 64, column: 1, scope: !2575)
!2588 = !DISubprogram(name: "fwrite", scope: !1915, file: !1915, line: 681, type: !2589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!16, !2591, !84, !84, !1919}
!2591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1932)
!2592 = distinct !DISubprogram(name: "__put_unaligned_le32", scope: !2576, file: !2576, line: 29, type: !2593, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2598)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !173, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !167, line: 24, baseType: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !15)
!2598 = !{!2599, !2600}
!2599 = !DILocalVariable(name: "val", arg: 1, scope: !2592, file: !2576, line: 29, type: !173)
!2600 = !DILocalVariable(name: "p", arg: 2, scope: !2592, file: !2576, line: 29, type: !2595)
!2601 = !DILocation(line: 29, column: 50, scope: !2592)
!2602 = !DILocation(line: 29, column: 64, scope: !2592)
!2603 = !DILocation(line: 31, column: 23, scope: !2592)
!2604 = !DILocation(line: 31, column: 27, scope: !2592)
!2605 = !DILocation(line: 31, column: 34, scope: !2592)
!2606 = !DILocation(line: 31, column: 36, scope: !2592)
!2607 = !DILocation(line: 31, column: 2, scope: !2592)
!2608 = !DILocation(line: 32, column: 23, scope: !2592)
!2609 = !DILocation(line: 32, column: 28, scope: !2592)
!2610 = !DILocation(line: 32, column: 2, scope: !2592)
!2611 = !DILocation(line: 33, column: 1, scope: !2592)
!2612 = distinct !DISubprogram(name: "__put_unaligned_le16", scope: !2576, file: !2576, line: 23, type: !2613, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !166, !2595}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "val", arg: 1, scope: !2612, file: !2576, line: 23, type: !166)
!2617 = !DILocalVariable(name: "p", arg: 2, scope: !2612, file: !2576, line: 23, type: !2595)
!2618 = !DILocation(line: 23, column: 50, scope: !2612)
!2619 = !DILocation(line: 23, column: 64, scope: !2612)
!2620 = !DILocation(line: 25, column: 9, scope: !2612)
!2621 = !DILocation(line: 25, column: 4, scope: !2612)
!2622 = !DILocation(line: 25, column: 7, scope: !2612)
!2623 = !DILocation(line: 26, column: 9, scope: !2612)
!2624 = !DILocation(line: 26, column: 13, scope: !2612)
!2625 = !DILocation(line: 26, column: 4, scope: !2612)
!2626 = !DILocation(line: 26, column: 7, scope: !2612)
!2627 = !DILocation(line: 27, column: 1, scope: !2612)
!2628 = distinct !DISubprogram(name: "is_percpu_sym", scope: !28, file: !28, line: 834, type: !2629, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!21, !222, !47}
!2631 = !{!2632, !2633, !2634}
!2632 = !DILocalVariable(name: "sym", arg: 1, scope: !2628, file: !28, line: 834, type: !222)
!2633 = !DILocalVariable(name: "symname", arg: 2, scope: !2628, file: !28, line: 834, type: !47)
!2634 = !DILocalVariable(name: "shndx", scope: !2628, file: !28, line: 836, type: !21)
!2635 = !DILocation(line: 834, column: 37, scope: !2628)
!2636 = !DILocation(line: 834, column: 54, scope: !2628)
!2637 = !DILocation(line: 836, column: 2, scope: !2628)
!2638 = !DILocation(line: 836, column: 6, scope: !2628)
!2639 = !DILocation(line: 836, column: 24, scope: !2628)
!2640 = !DILocation(line: 836, column: 14, scope: !2628)
!2641 = !DILocation(line: 838, column: 10, scope: !2628)
!2642 = !DILocation(line: 838, column: 19, scope: !2628)
!2643 = !DILocation(line: 838, column: 16, scope: !2628)
!2644 = !DILocation(line: 838, column: 34, scope: !2628)
!2645 = !DILocation(line: 839, column: 10, scope: !2628)
!2646 = !DILocation(line: 839, column: 3, scope: !2628)
!2647 = !DILocation(line: 839, column: 35, scope: !2628)
!2648 = !DILocation(line: 840, column: 10, scope: !2628)
!2649 = !DILocation(line: 840, column: 3, scope: !2628)
!2650 = !DILocation(line: 840, column: 37, scope: !2628)
!2651 = !DILocation(line: 841, column: 11, scope: !2628)
!2652 = !DILocation(line: 841, column: 3, scope: !2628)
!2653 = !DILocation(line: 0, scope: !2628)
!2654 = !DILocation(line: 842, column: 1, scope: !2628)
!2655 = !DILocation(line: 838, column: 2, scope: !2628)
!2656 = distinct !DISubprogram(name: "add_reloc", scope: !28, file: !28, line: 714, type: !2657, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2554, !173}
!2659 = !{!2660, !2661, !2662, !2665}
!2660 = !DILocalVariable(name: "r", arg: 1, scope: !2656, file: !28, line: 714, type: !2554)
!2661 = !DILocalVariable(name: "offset", arg: 2, scope: !2656, file: !28, line: 714, type: !173)
!2662 = !DILocalVariable(name: "newsize", scope: !2663, file: !28, line: 717, type: !16)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !28, line: 716, column: 27)
!2664 = distinct !DILexicalBlock(scope: !2656, file: !28, line: 716, column: 6)
!2665 = !DILocalVariable(name: "mem", scope: !2663, file: !28, line: 718, type: !563)
!2666 = !DILocation(line: 714, column: 38, scope: !2656)
!2667 = !DILocation(line: 714, column: 50, scope: !2656)
!2668 = !DILocation(line: 716, column: 6, scope: !2664)
!2669 = !DILocation(line: 716, column: 9, scope: !2664)
!2670 = !DILocation(line: 716, column: 18, scope: !2664)
!2671 = !DILocation(line: 716, column: 21, scope: !2664)
!2672 = !{!1774, !734, i64 16}
!2673 = !DILocation(line: 716, column: 15, scope: !2664)
!2674 = !DILocation(line: 716, column: 6, scope: !2656)
!2675 = !DILocation(line: 717, column: 3, scope: !2663)
!2676 = !DILocation(line: 717, column: 17, scope: !2663)
!2677 = !DILocation(line: 717, column: 27, scope: !2663)
!2678 = !DILocation(line: 717, column: 30, scope: !2663)
!2679 = !DILocation(line: 717, column: 35, scope: !2663)
!2680 = !DILocation(line: 718, column: 3, scope: !2663)
!2681 = !DILocation(line: 718, column: 9, scope: !2663)
!2682 = !DILocation(line: 718, column: 23, scope: !2663)
!2683 = !DILocation(line: 718, column: 26, scope: !2663)
!2684 = !DILocation(line: 718, column: 34, scope: !2663)
!2685 = !DILocation(line: 718, column: 42, scope: !2663)
!2686 = !DILocation(line: 718, column: 15, scope: !2663)
!2687 = !DILocation(line: 720, column: 8, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2663, file: !28, line: 720, column: 7)
!2689 = !DILocation(line: 720, column: 7, scope: !2663)
!2690 = !DILocation(line: 722, column: 33, scope: !2688)
!2691 = !DILocation(line: 721, column: 4, scope: !2688)
!2692 = !DILocation(line: 723, column: 15, scope: !2663)
!2693 = !DILocation(line: 723, column: 3, scope: !2663)
!2694 = !DILocation(line: 723, column: 6, scope: !2663)
!2695 = !DILocation(line: 723, column: 13, scope: !2663)
!2696 = !DILocation(line: 724, column: 13, scope: !2663)
!2697 = !DILocation(line: 724, column: 3, scope: !2663)
!2698 = !DILocation(line: 724, column: 6, scope: !2663)
!2699 = !DILocation(line: 724, column: 11, scope: !2663)
!2700 = !DILocation(line: 725, column: 2, scope: !2664)
!2701 = !DILocation(line: 725, column: 2, scope: !2663)
!2702 = !DILocation(line: 726, column: 26, scope: !2656)
!2703 = !DILocation(line: 726, column: 2, scope: !2656)
!2704 = !DILocation(line: 726, column: 5, scope: !2656)
!2705 = !DILocation(line: 726, column: 12, scope: !2656)
!2706 = !DILocation(line: 726, column: 15, scope: !2656)
!2707 = !DILocation(line: 726, column: 20, scope: !2656)
!2708 = !DILocation(line: 726, column: 24, scope: !2656)
!2709 = !DILocation(line: 727, column: 1, scope: !2656)
!2710 = !DISubprogram(name: "strncmp", scope: !1921, file: !1921, line: 159, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!21, !47, !47, !84}
!2713 = !DISubprogram(name: "realloc", scope: !1963, file: !1963, line: 551, type: !2714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!563, !563, !84}
!2716 = !DISubprogram(name: "qsort", scope: !1963, file: !1963, line: 838, type: !2717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !563, !84, !84, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1963, line: 816, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!21, !1932, !1932}
!2723 = distinct !DISubprogram(name: "cmp_relocs", scope: !28, file: !28, line: 1055, type: !2721, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2724)
!2724 = !{!2725, !2726, !2727, !2730}
!2725 = !DILocalVariable(name: "va", arg: 1, scope: !2723, file: !28, line: 1055, type: !1932)
!2726 = !DILocalVariable(name: "vb", arg: 2, scope: !2723, file: !28, line: 1055, type: !1932)
!2727 = !DILocalVariable(name: "a", scope: !2723, file: !28, line: 1057, type: !2728)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!2730 = !DILocalVariable(name: "b", scope: !2723, file: !28, line: 1057, type: !2728)
!2731 = !DILocation(line: 1055, column: 35, scope: !2723)
!2732 = !DILocation(line: 1055, column: 51, scope: !2723)
!2733 = !DILocation(line: 1057, column: 2, scope: !2723)
!2734 = !DILocation(line: 1057, column: 18, scope: !2723)
!2735 = !DILocation(line: 1057, column: 22, scope: !2723)
!2736 = !DILocation(line: 1058, column: 6, scope: !2723)
!2737 = !DILocation(line: 1058, column: 4, scope: !2723)
!2738 = !DILocation(line: 1058, column: 14, scope: !2723)
!2739 = !DILocation(line: 1058, column: 12, scope: !2723)
!2740 = !DILocation(line: 1059, column: 11, scope: !2723)
!2741 = !DILocation(line: 1059, column: 10, scope: !2723)
!2742 = !DILocation(line: 1059, column: 17, scope: !2723)
!2743 = !DILocation(line: 1059, column: 16, scope: !2723)
!2744 = !DILocation(line: 1059, column: 13, scope: !2723)
!2745 = !DILocation(line: 1059, column: 9, scope: !2723)
!2746 = !DILocation(line: 1059, column: 27, scope: !2723)
!2747 = !DILocation(line: 1059, column: 26, scope: !2723)
!2748 = !DILocation(line: 1059, column: 32, scope: !2723)
!2749 = !DILocation(line: 1059, column: 31, scope: !2723)
!2750 = !DILocation(line: 1059, column: 29, scope: !2723)
!2751 = !DILocation(line: 1059, column: 25, scope: !2723)
!2752 = !DILocation(line: 1060, column: 1, scope: !2723)
!2753 = !DILocation(line: 1059, column: 2, scope: !2723)
!2754 = !DISubprogram(name: "fprintf", scope: !1915, file: !1915, line: 350, type: !2755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!21, !1919, !1903, null}
