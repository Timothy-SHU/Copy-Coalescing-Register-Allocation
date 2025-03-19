; ModuleID = 'arch/x86/tools/relocs_32.c'
source_filename = "arch/x86/tools/relocs_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.relocs = type { ptr, i64, i64 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.section = type { %struct.Elf32_Shdr, ptr, ptr, ptr, ptr, ptr }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf32_Rel = type { i32, i32 }

@sym_regex_realmode = internal constant [4 x ptr] [ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.1], align 16, !dbg !0
@sym_regex = internal global ptr null, align 8, !dbg !35
@sym_regex_kernel = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr null, ptr null], align 16, !dbg !51
@sym_regex_c = internal global [4 x %struct.re_pattern_buffer] zeroinitializer, align 16, !dbg !56
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !18
@.str.1 = private unnamed_addr constant [5 x i8] c"^pa_\00", align 1, !dbg !25
@.str.2 = private unnamed_addr constant [16 x i8] c"^real_mode_seg$\00", align 1, !dbg !30
@.str.3 = private unnamed_addr constant [86 x i8] c"^(xen_irq_disable_direct_reloc$|xen_save_fl_direct_reloc$|VDSO|__kcfi_typeid_|__crc_)\00", align 1, !dbg !41
@.str.4 = private unnamed_addr constant [439 x i8] c"^(__init_(begin|end)|__x86_cpu_dev_(start|end)|(__parainstructions|__alt_instructions)(_end)?|(__iommu_table|__apicdrivers|__smp_locks)(_end)?|__(start|end)_pci_.*|__(start|stop)___ksymtab(_gpl)?|__(start|stop)___kcrctab(_gpl)?|__(start|stop)___param|__(start|stop)___modver|__(start|stop)___bug_table|__tracedata_(start|end)|__(start|stop)_notes|__end_rodata|__end_rodata_aligned|__initramfs_start|(jiffies|jiffies_64)|__vvar_page|_end)$\00", align 1, !dbg !46
@ehdr = internal global %struct.Elf32_Ehdr zeroinitializer, align 4, !dbg !145
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot read ELF header: %s\0A\00", align 1, !dbg !85
@.str.6 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1, !dbg !90
@.str.7 = private unnamed_addr constant [14 x i8] c"No ELF magic\0A\00", align 1, !dbg !92
@.str.8 = private unnamed_addr constant [25 x i8] c"Not a %d bit executable\0A\00", align 1, !dbg !97
@.str.9 = private unnamed_addr constant [26 x i8] c"Not a LSB ELF executable\0A\00", align 1, !dbg !102
@.str.10 = private unnamed_addr constant [21 x i8] c"Unknown ELF version\0A\00", align 1, !dbg !107
@shnum = internal global i64 0, align 8, !dbg !177
@shstrndx = internal global i32 0, align 4, !dbg !179
@.str.11 = private unnamed_addr constant [29 x i8] c"Unsupported ELF header type\0A\00", align 1, !dbg !112
@.str.12 = private unnamed_addr constant [12 x i8] c"Not for %s\0A\00", align 1, !dbg !117
@.str.13 = private unnamed_addr constant [5 x i8] c"i386\00", align 1, !dbg !122
@.str.14 = private unnamed_addr constant [21 x i8] c"Bad ELF header size\0A\00", align 1, !dbg !124
@.str.15 = private unnamed_addr constant [26 x i8] c"Bad program header entry\0A\00", align 1, !dbg !126
@.str.16 = private unnamed_addr constant [26 x i8] c"Bad section header entry\0A\00", align 1, !dbg !128
@.str.17 = private unnamed_addr constant [23 x i8] c"Seek to %u failed: %s\0A\00", align 1, !dbg !130
@.str.18 = private unnamed_addr constant [44 x i8] c"Cannot read initial ELF section header: %s\0A\00", align 1, !dbg !135
@.str.19 = private unnamed_addr constant [34 x i8] c"String table index out of bounds\0A\00", align 1, !dbg !140
@secs = internal global ptr null, align 8, !dbg !188
@.str.20 = private unnamed_addr constant [40 x i8] c"Unable to allocate %ld section headers\0A\00", align 1, !dbg !181
@.str.21 = private unnamed_addr constant [44 x i8] c"Cannot read ELF section headers %d/%ld: %s\0A\00", align 1, !dbg !186
@.str.22 = private unnamed_addr constant [38 x i8] c"malloc of %u bytes for strtab failed\0A\00", align 1, !dbg !230
@.str.23 = private unnamed_addr constant [30 x i8] c"Cannot read symbol table: %s\0A\00", align 1, !dbg !235
@.str.24 = private unnamed_addr constant [39 x i8] c"malloc of %u bytes for xsymtab failed\0A\00", align 1, !dbg !240
@.str.25 = private unnamed_addr constant [39 x i8] c"Cannot read extended symbol table: %s\0A\00", align 1, !dbg !245
@shxsymtabndx = internal global i32 0, align 4, !dbg !249
@.str.26 = private unnamed_addr constant [38 x i8] c"malloc of %u bytes for symtab failed\0A\00", align 1, !dbg !247
@shsymtabndx = internal global i32 0, align 4, !dbg !251
@.str.27 = private unnamed_addr constant [38 x i8] c"malloc of %u bytes for relocs failed\0A\00", align 1, !dbg !253
@.str.28 = private unnamed_addr constant [33 x i8] c"%5d %08x  %5d %10s %10s %12s %s\0A\00", align 1, !dbg !255
@.str.29 = private unnamed_addr constant [18 x i8] c"Absolute symbols\0A\00", align 1, !dbg !260
@.str.30 = private unnamed_addr constant [62 x i8] c" Num:    Value Size  Type       Bind        Visibility  Name\0A\00", align 1, !dbg !265
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !270
@.str.32 = private unnamed_addr constant [9 x i8] c"<noname>\00", align 1, !dbg !275
@.str.33 = private unnamed_addr constant [9 x i8] c"ABSOLUTE\00", align 1, !dbg !280
@.str.34 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1, !dbg !282
@sym_type.type_name = internal global [7 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 16, !dbg !307
@.str.35 = private unnamed_addr constant [11 x i8] c"STT_NOTYPE\00", align 1, !dbg !287
@.str.36 = private unnamed_addr constant [11 x i8] c"STT_OBJECT\00", align 1, !dbg !292
@.str.37 = private unnamed_addr constant [9 x i8] c"STT_FUNC\00", align 1, !dbg !294
@.str.38 = private unnamed_addr constant [12 x i8] c"STT_SECTION\00", align 1, !dbg !296
@.str.39 = private unnamed_addr constant [9 x i8] c"STT_FILE\00", align 1, !dbg !298
@.str.40 = private unnamed_addr constant [11 x i8] c"STT_COMMON\00", align 1, !dbg !300
@.str.41 = private unnamed_addr constant [8 x i8] c"STT_TLS\00", align 1, !dbg !302
@.str.42 = private unnamed_addr constant [22 x i8] c"unknown sym type name\00", align 1, !dbg !316
@sym_bind.bind_name = internal global [3 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45], align 16, !dbg !330
@.str.43 = private unnamed_addr constant [10 x i8] c"STB_LOCAL\00", align 1, !dbg !321
@.str.44 = private unnamed_addr constant [11 x i8] c"STB_GLOBAL\00", align 1, !dbg !326
@.str.45 = private unnamed_addr constant [9 x i8] c"STB_WEAK\00", align 1, !dbg !328
@.str.46 = private unnamed_addr constant [22 x i8] c"unknown sym bind name\00", align 1, !dbg !337
@sym_visibility.visibility_name = internal global [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], align 16, !dbg !350
@.str.47 = private unnamed_addr constant [12 x i8] c"STV_DEFAULT\00", align 1, !dbg !339
@.str.48 = private unnamed_addr constant [13 x i8] c"STV_INTERNAL\00", align 1, !dbg !341
@.str.49 = private unnamed_addr constant [11 x i8] c"STV_HIDDEN\00", align 1, !dbg !346
@.str.50 = private unnamed_addr constant [14 x i8] c"STV_PROTECTED\00", align 1, !dbg !348
@.str.51 = private unnamed_addr constant [28 x i8] c"unknown sym visibility name\00", align 1, !dbg !357
@.str.52 = private unnamed_addr constant [25 x i8] c"%08x %08x %10s %08x  %s\0A\00", align 1, !dbg !359
@.str.53 = private unnamed_addr constant [39 x i8] c"WARNING: Absolute relocations present\0A\00", align 1, !dbg !361
@.str.54 = private unnamed_addr constant [49 x i8] c"Offset     Info     Type     Sym.Value Sym.Name\0A\00", align 1, !dbg !363
@rel_type.type_name = internal global [24 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 16, !dbg !401
@.str.55 = private unnamed_addr constant [11 x i8] c"R_386_NONE\00", align 1, !dbg !368
@.str.56 = private unnamed_addr constant [9 x i8] c"R_386_32\00", align 1, !dbg !370
@.str.57 = private unnamed_addr constant [11 x i8] c"R_386_PC32\00", align 1, !dbg !372
@.str.58 = private unnamed_addr constant [12 x i8] c"R_386_GOT32\00", align 1, !dbg !374
@.str.59 = private unnamed_addr constant [12 x i8] c"R_386_PLT32\00", align 1, !dbg !376
@.str.60 = private unnamed_addr constant [11 x i8] c"R_386_COPY\00", align 1, !dbg !378
@.str.61 = private unnamed_addr constant [15 x i8] c"R_386_GLOB_DAT\00", align 1, !dbg !380
@.str.62 = private unnamed_addr constant [15 x i8] c"R_386_JMP_SLOT\00", align 1, !dbg !385
@.str.63 = private unnamed_addr constant [15 x i8] c"R_386_RELATIVE\00", align 1, !dbg !387
@.str.64 = private unnamed_addr constant [13 x i8] c"R_386_GOTOFF\00", align 1, !dbg !389
@.str.65 = private unnamed_addr constant [12 x i8] c"R_386_GOTPC\00", align 1, !dbg !391
@.str.66 = private unnamed_addr constant [9 x i8] c"R_386_16\00", align 1, !dbg !393
@.str.67 = private unnamed_addr constant [11 x i8] c"R_386_PC16\00", align 1, !dbg !395
@.str.68 = private unnamed_addr constant [8 x i8] c"R_386_8\00", align 1, !dbg !397
@.str.69 = private unnamed_addr constant [10 x i8] c"R_386_PC8\00", align 1, !dbg !399
@.str.70 = private unnamed_addr constant [27 x i8] c"unknown type rel type name\00", align 1, !dbg !410
@.str.71 = private unnamed_addr constant [48 x i8] c"reloc section\09reloc type\09symbol\09symbol section\0A\00", align 1, !dbg !415
@.str.72 = private unnamed_addr constant [13 x i8] c"%s\09%s\09%s\09%s\0A\00", align 1, !dbg !420
@relocs16 = internal global %struct.relocs zeroinitializer, align 8, !dbg !449
@.str.73 = private unnamed_addr constant [56 x i8] c"Segment relocations found but --realmode not specified\0A\00", align 1, !dbg !422
@relocs32 = internal global %struct.relocs zeroinitializer, align 8, !dbg !457
@.str.74 = private unnamed_addr constant [28 x i8] c".section \22.data.reloc\22,\22a\22\0A\00", align 1, !dbg !427
@.str.75 = private unnamed_addr constant [11 x i8] c".balign 4\0A\00", align 1, !dbg !429
@stdout = external global ptr, align 8
@.str.76 = private unnamed_addr constant [36 x i8] c"Invalid absolute %s relocation: %s\0A\00", align 1, !dbg !431
@.str.77 = private unnamed_addr constant [38 x i8] c"Unsupported relocation type: %s (%d)\0A\00", align 1, !dbg !436
@.str.78 = private unnamed_addr constant [42 x i8] c"realloc of %ld entries for relocs failed\0A\00", align 1, !dbg !438
@.str.79 = private unnamed_addr constant [30 x i8] c"Invalid %s %s relocation: %s\0A\00", align 1, !dbg !443
@.str.80 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1, !dbg !445
@.str.81 = private unnamed_addr constant [9 x i8] c"relative\00", align 1, !dbg !447
@.str.82 = private unnamed_addr constant [15 x i8] c"\09.long 0x%08x\0A\00", align 1, !dbg !459

; Function Attrs: nounwind uwtable
define dso_local void @process_32(ptr noundef %fp, i32 noundef %use_real_mode, i32 noundef %as_text, i32 noundef %show_absolute_syms, i32 noundef %show_absolute_relocs, i32 noundef %show_reloc_info) #0 !dbg !468 {
entry:
  %fp.addr = alloca ptr, align 8
  %use_real_mode.addr = alloca i32, align 4
  %as_text.addr = alloca i32, align 4
  %show_absolute_syms.addr = alloca i32, align 4
  %show_absolute_relocs.addr = alloca i32, align 4
  %show_reloc_info.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !528, metadata !DIExpression()), !dbg !538
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !529, metadata !DIExpression()), !dbg !541
  store i32 %as_text, ptr %as_text.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %as_text.addr, metadata !530, metadata !DIExpression()), !dbg !542
  store i32 %show_absolute_syms, ptr %show_absolute_syms.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %show_absolute_syms.addr, metadata !531, metadata !DIExpression()), !dbg !543
  store i32 %show_absolute_relocs, ptr %show_absolute_relocs.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %show_absolute_relocs.addr, metadata !532, metadata !DIExpression()), !dbg !544
  store i32 %show_reloc_info, ptr %show_reloc_info.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %show_reloc_info.addr, metadata !533, metadata !DIExpression()), !dbg !545
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !546, !tbaa !539
  call void @regex_init(i32 noundef %0), !dbg !547
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !548, !tbaa !534
  call void @read_ehdr(ptr noundef %1), !dbg !549
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !550, !tbaa !534
  call void @read_shdrs(ptr noundef %2), !dbg !551
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !552, !tbaa !534
  call void @read_strtabs(ptr noundef %3), !dbg !553
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !554, !tbaa !534
  call void @read_symtabs(ptr noundef %4), !dbg !555
  %5 = load ptr, ptr %fp.addr, align 8, !dbg !556, !tbaa !534
  call void @read_relocs(ptr noundef %5), !dbg !557
  %6 = load i32, ptr %show_absolute_syms.addr, align 4, !dbg !558, !tbaa !539
  %tobool = icmp ne i32 %6, 0, !dbg !558
  br i1 %tobool, label %if.then, label %if.end, !dbg !560

if.then:                                          ; preds = %entry
  call void @print_absolute_symbols(), !dbg !561
  br label %return, !dbg !563

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %show_absolute_relocs.addr, align 4, !dbg !564, !tbaa !539
  %tobool1 = icmp ne i32 %7, 0, !dbg !564
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !566

if.then2:                                         ; preds = %if.end
  call void @print_absolute_relocs(), !dbg !567
  br label %return, !dbg !569

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %show_reloc_info.addr, align 4, !dbg !570, !tbaa !539
  %tobool4 = icmp ne i32 %8, 0, !dbg !570
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !572

if.then5:                                         ; preds = %if.end3
  call void @print_reloc_info(), !dbg !573
  br label %return, !dbg !575

if.end6:                                          ; preds = %if.end3
  %9 = load i32, ptr %as_text.addr, align 4, !dbg !576, !tbaa !539
  %10 = load i32, ptr %use_real_mode.addr, align 4, !dbg !577, !tbaa !539
  call void @emit_relocs(i32 noundef %9, i32 noundef %10), !dbg !578
  br label %return, !dbg !579

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  ret void, !dbg !579
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @regex_init(i32 noundef %use_real_mode) #0 !dbg !580 {
entry:
  %use_real_mode.addr = alloca i32, align 4
  %errbuf = alloca [128 x i8], align 16
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !584, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 128, ptr %errbuf) #12, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %errbuf, metadata !585, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %err, metadata !589, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %i, metadata !590, metadata !DIExpression()), !dbg !597
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !598, !tbaa !539
  %tobool = icmp ne i32 %0, 0, !dbg !598
  br i1 %tobool, label %if.then, label %if.else, !dbg !600

if.then:                                          ; preds = %entry
  store ptr @sym_regex_realmode, ptr @sym_regex, align 8, !dbg !601, !tbaa !534
  br label %if.end, !dbg !602

if.else:                                          ; preds = %entry
  store ptr @sym_regex_kernel, ptr @sym_regex, align 8, !dbg !603, !tbaa !534
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !dbg !604, !tbaa !539
  br label %for.cond, !dbg !606

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !607, !tbaa !539
  %cmp = icmp slt i32 %1, 4, !dbg !609
  br i1 %cmp, label %for.body, label %for.end, !dbg !610

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @sym_regex, align 8, !dbg !611, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !614, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !611
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !611
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !611, !tbaa !534
  %tobool1 = icmp ne ptr %4, null, !dbg !611
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !615

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !616

if.end3:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !617, !tbaa !539
  %idxprom4 = sext i32 %5 to i64, !dbg !618
  %arrayidx5 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom4, !dbg !618
  %6 = load ptr, ptr @sym_regex, align 8, !dbg !619, !tbaa !534
  %7 = load i32, ptr %i, align 4, !dbg !620, !tbaa !539
  %idxprom6 = sext i32 %7 to i64, !dbg !619
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 %idxprom6, !dbg !619
  %8 = load ptr, ptr %arrayidx7, align 8, !dbg !619, !tbaa !534
  %call = call i32 @regcomp(ptr noundef %arrayidx5, ptr noundef %8, i32 noundef 9), !dbg !621
  store i32 %call, ptr %err, align 4, !dbg !622, !tbaa !539
  %9 = load i32, ptr %err, align 4, !dbg !623, !tbaa !539
  %tobool8 = icmp ne i32 %9, 0, !dbg !623
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !625

if.then9:                                         ; preds = %if.end3
  %10 = load i32, ptr %err, align 4, !dbg !626, !tbaa !539
  %11 = load i32, ptr %i, align 4, !dbg !628, !tbaa !539
  %idxprom10 = sext i32 %11 to i64, !dbg !629
  %arrayidx11 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom10, !dbg !629
  %arraydecay = getelementptr inbounds [128 x i8], ptr %errbuf, i64 0, i64 0, !dbg !630
  %call12 = call i64 @regerror(i32 noundef %10, ptr noundef %arrayidx11, ptr noundef %arraydecay, i64 noundef 128), !dbg !631
  %arraydecay13 = getelementptr inbounds [128 x i8], ptr %errbuf, i64 0, i64 0, !dbg !632
  call void (ptr, ...) @die(ptr noundef @.str, ptr noundef %arraydecay13) #13, !dbg !633
  unreachable, !dbg !633

if.end14:                                         ; preds = %if.end3
  br label %for.inc, !dbg !634

for.inc:                                          ; preds = %if.end14, %if.then2
  %12 = load i32, ptr %i, align 4, !dbg !635, !tbaa !539
  %inc = add nsw i32 %12, 1, !dbg !635
  store i32 %inc, ptr %i, align 4, !dbg !635, !tbaa !539
  br label %for.cond, !dbg !636, !llvm.loop !637

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12, !dbg !641
  call void @llvm.lifetime.end.p0(i64 128, ptr %errbuf) #12, !dbg !641
  ret void, !dbg !641
}

; Function Attrs: nounwind uwtable
define internal void @read_ehdr(ptr noundef %fp) #0 !dbg !642 {
entry:
  %fp.addr = alloca ptr, align 8
  %shdr = alloca %struct.Elf32_Shdr, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !646, metadata !DIExpression()), !dbg !650
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !651, !tbaa !534
  %call = call i64 @fread(ptr noundef @ehdr, i64 noundef 52, i64 noundef 1, ptr noundef %0), !dbg !653
  %cmp = icmp ne i64 %call, 1, !dbg !654
  br i1 %cmp, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #14, !dbg !656
  %1 = load i32, ptr %call1, align 4, !dbg !656, !tbaa !539
  %call2 = call ptr @strerror(i32 noundef %1) #12, !dbg !658
  call void (ptr, ...) @die(ptr noundef @.str.5, ptr noundef %call2) #13, !dbg !659
  unreachable, !dbg !659

if.end:                                           ; preds = %entry
  %call3 = call i32 @memcmp(ptr noundef @ehdr, ptr noundef @.str.6, i64 noundef 4) #15, !dbg !660
  %cmp4 = icmp ne i32 %call3, 0, !dbg !662
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !663

if.then5:                                         ; preds = %if.end
  call void (ptr, ...) @die(ptr noundef @.str.7) #13, !dbg !664
  unreachable, !dbg !664

if.end6:                                          ; preds = %if.end
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 4), align 4, !dbg !666, !tbaa !668
  %conv = zext i8 %2 to i32, !dbg !666
  %cmp7 = icmp ne i32 %conv, 1, !dbg !669
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !670

if.then9:                                         ; preds = %if.end6
  call void (ptr, ...) @die(ptr noundef @.str.8, i32 noundef 32) #13, !dbg !671
  unreachable, !dbg !671

if.end10:                                         ; preds = %if.end6
  %3 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 5), align 1, !dbg !673, !tbaa !668
  %conv11 = zext i8 %3 to i32, !dbg !673
  %cmp12 = icmp ne i32 %conv11, 1, !dbg !675
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !676

if.then14:                                        ; preds = %if.end10
  call void (ptr, ...) @die(ptr noundef @.str.9) #13, !dbg !677
  unreachable, !dbg !677

if.end15:                                         ; preds = %if.end10
  %4 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @ehdr, i64 0, i64 6), align 2, !dbg !679, !tbaa !668
  %conv16 = zext i8 %4 to i32, !dbg !679
  %cmp17 = icmp ne i32 %conv16, 1, !dbg !681
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !682

if.then19:                                        ; preds = %if.end15
  call void (ptr, ...) @die(ptr noundef @.str.10) #13, !dbg !683
  unreachable, !dbg !683

if.end20:                                         ; preds = %if.end15
  %5 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 1), align 4, !dbg !685, !tbaa !686
  %call21 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %5), !dbg !685
  store i16 %call21, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 1), align 4, !dbg !689, !tbaa !686
  %6 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !690, !tbaa !691
  %call22 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %6), !dbg !690
  store i16 %call22, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !692, !tbaa !691
  %7 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !693, !tbaa !694
  %call23 = call i32 @elf32_to_cpu(i32 noundef %7), !dbg !693
  store i32 %call23, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !695, !tbaa !694
  %8 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 4), align 4, !dbg !696, !tbaa !697
  %call24 = call i32 @elf32_to_cpu(i32 noundef %8), !dbg !696
  store i32 %call24, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 4), align 4, !dbg !698, !tbaa !697
  %9 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 5), align 4, !dbg !699, !tbaa !700
  %call25 = call i32 @elf32_to_cpu(i32 noundef %9), !dbg !699
  store i32 %call25, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 5), align 4, !dbg !701, !tbaa !700
  %10 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !702, !tbaa !703
  %call26 = call i32 @elf32_to_cpu(i32 noundef %10), !dbg !702
  store i32 %call26, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !704, !tbaa !703
  %11 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 7), align 4, !dbg !705, !tbaa !706
  %call27 = call i32 @elf32_to_cpu(i32 noundef %11), !dbg !705
  store i32 %call27, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 7), align 4, !dbg !707, !tbaa !706
  %12 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !708, !tbaa !709
  %call28 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %12), !dbg !708
  store i16 %call28, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !710, !tbaa !709
  %13 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !711, !tbaa !712
  %call29 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %13), !dbg !711
  store i16 %call29, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !713, !tbaa !712
  %14 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 10), align 4, !dbg !714, !tbaa !715
  %call30 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %14), !dbg !714
  store i16 %call30, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 10), align 4, !dbg !716, !tbaa !715
  %15 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !717, !tbaa !718
  %call31 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %15), !dbg !717
  store i16 %call31, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !719, !tbaa !718
  %16 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !720, !tbaa !721
  %call32 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %16), !dbg !720
  store i16 %call32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !722, !tbaa !721
  %17 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !723, !tbaa !724
  %call33 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %17), !dbg !723
  store i16 %call33, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !725, !tbaa !724
  %18 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 12), align 4, !dbg !726, !tbaa !721
  %conv34 = zext i16 %18 to i64, !dbg !727
  store i64 %conv34, ptr @shnum, align 8, !dbg !728, !tbaa !729
  %19 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 13), align 2, !dbg !731, !tbaa !724
  %conv35 = zext i16 %19 to i32, !dbg !732
  store i32 %conv35, ptr @shstrndx, align 4, !dbg !733, !tbaa !539
  %20 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 1), align 4, !dbg !734, !tbaa !686
  %conv36 = zext i16 %20 to i32, !dbg !736
  %cmp37 = icmp ne i32 %conv36, 2, !dbg !737
  br i1 %cmp37, label %land.lhs.true, label %if.end43, !dbg !738

land.lhs.true:                                    ; preds = %if.end20
  %21 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 1), align 4, !dbg !739, !tbaa !686
  %conv39 = zext i16 %21 to i32, !dbg !740
  %cmp40 = icmp ne i32 %conv39, 3, !dbg !741
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !742

if.then42:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @die(ptr noundef @.str.11) #13, !dbg !743
  unreachable, !dbg !743

if.end43:                                         ; preds = %land.lhs.true, %if.end20
  %22 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 2), align 2, !dbg !744, !tbaa !691
  %conv44 = zext i16 %22 to i32, !dbg !746
  %cmp45 = icmp ne i32 %conv44, 3, !dbg !747
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !748

if.then47:                                        ; preds = %if.end43
  call void (ptr, ...) @die(ptr noundef @.str.12, ptr noundef @.str.13) #13, !dbg !749
  unreachable, !dbg !749

if.end48:                                         ; preds = %if.end43
  %23 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 3), align 4, !dbg !750, !tbaa !694
  %cmp49 = icmp ne i32 %23, 1, !dbg !752
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !753

if.then51:                                        ; preds = %if.end48
  call void (ptr, ...) @die(ptr noundef @.str.10) #13, !dbg !754
  unreachable, !dbg !754

if.end52:                                         ; preds = %if.end48
  %24 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 8), align 4, !dbg !755, !tbaa !709
  %conv53 = zext i16 %24 to i64, !dbg !757
  %cmp54 = icmp ne i64 %conv53, 52, !dbg !758
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !759

if.then56:                                        ; preds = %if.end52
  call void (ptr, ...) @die(ptr noundef @.str.14) #13, !dbg !760
  unreachable, !dbg !760

if.end57:                                         ; preds = %if.end52
  %25 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 9), align 2, !dbg !761, !tbaa !712
  %conv58 = zext i16 %25 to i64, !dbg !763
  %cmp59 = icmp ne i64 %conv58, 32, !dbg !764
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !765

if.then61:                                        ; preds = %if.end57
  call void (ptr, ...) @die(ptr noundef @.str.15) #13, !dbg !766
  unreachable, !dbg !766

if.end62:                                         ; preds = %if.end57
  %26 = load i16, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 11), align 2, !dbg !767, !tbaa !718
  %conv63 = zext i16 %26 to i64, !dbg !769
  %cmp64 = icmp ne i64 %conv63, 40, !dbg !770
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !771

if.then66:                                        ; preds = %if.end62
  call void (ptr, ...) @die(ptr noundef @.str.16) #13, !dbg !772
  unreachable, !dbg !772

if.end67:                                         ; preds = %if.end62
  %27 = load i64, ptr @shnum, align 8, !dbg !773, !tbaa !729
  %cmp68 = icmp eq i64 %27, 0, !dbg !774
  br i1 %cmp68, label %if.then72, label %lor.lhs.false, !dbg !775

lor.lhs.false:                                    ; preds = %if.end67
  %28 = load i32, ptr @shstrndx, align 4, !dbg !776, !tbaa !539
  %cmp70 = icmp eq i32 %28, 65535, !dbg !777
  br i1 %cmp70, label %if.then72, label %if.end99, !dbg !778

if.then72:                                        ; preds = %lor.lhs.false, %if.end67
  call void @llvm.lifetime.start.p0(i64 40, ptr %shdr) #12, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %shdr, metadata !647, metadata !DIExpression()), !dbg !780
  %29 = load ptr, ptr %fp.addr, align 8, !dbg !781, !tbaa !534
  %30 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !783, !tbaa !703
  %conv73 = zext i32 %30 to i64, !dbg !784
  %call74 = call i32 @fseek(ptr noundef %29, i64 noundef %conv73, i32 noundef 0), !dbg !785
  %cmp75 = icmp slt i32 %call74, 0, !dbg !786
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !787

if.then77:                                        ; preds = %if.then72
  %31 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !788, !tbaa !703
  %call78 = call ptr @__errno_location() #14, !dbg !789
  %32 = load i32, ptr %call78, align 4, !dbg !789, !tbaa !539
  %call79 = call ptr @strerror(i32 noundef %32) #12, !dbg !790
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %31, ptr noundef %call79) #13, !dbg !791
  unreachable, !dbg !791

if.end80:                                         ; preds = %if.then72
  %33 = load ptr, ptr %fp.addr, align 8, !dbg !792, !tbaa !534
  %call81 = call i64 @fread(ptr noundef %shdr, i64 noundef 40, i64 noundef 1, ptr noundef %33), !dbg !794
  %cmp82 = icmp ne i64 %call81, 1, !dbg !795
  br i1 %cmp82, label %if.then84, label %if.end87, !dbg !796

if.then84:                                        ; preds = %if.end80
  %call85 = call ptr @__errno_location() #14, !dbg !797
  %34 = load i32, ptr %call85, align 4, !dbg !797, !tbaa !539
  %call86 = call ptr @strerror(i32 noundef %34) #12, !dbg !798
  call void (ptr, ...) @die(ptr noundef @.str.18, ptr noundef %call86) #13, !dbg !799
  unreachable, !dbg !799

if.end87:                                         ; preds = %if.end80
  %35 = load i64, ptr @shnum, align 8, !dbg !800, !tbaa !729
  %cmp88 = icmp eq i64 %35, 0, !dbg !802
  br i1 %cmp88, label %if.then90, label %if.end93, !dbg !803

if.then90:                                        ; preds = %if.end87
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 5, !dbg !804
  %36 = load i32, ptr %sh_size, align 4, !dbg !804, !tbaa !805
  %call91 = call i32 @elf32_to_cpu(i32 noundef %36), !dbg !804
  %conv92 = zext i32 %call91 to i64, !dbg !804
  store i64 %conv92, ptr @shnum, align 8, !dbg !807, !tbaa !729
  br label %if.end93, !dbg !808

if.end93:                                         ; preds = %if.then90, %if.end87
  %37 = load i32, ptr @shstrndx, align 4, !dbg !809, !tbaa !539
  %cmp94 = icmp eq i32 %37, 65535, !dbg !811
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !812

if.then96:                                        ; preds = %if.end93
  %sh_link = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 6, !dbg !813
  %38 = load i32, ptr %sh_link, align 4, !dbg !813, !tbaa !814
  %call97 = call i32 @elf32_to_cpu(i32 noundef %38), !dbg !813
  store i32 %call97, ptr @shstrndx, align 4, !dbg !815, !tbaa !539
  br label %if.end98, !dbg !816

if.end98:                                         ; preds = %if.then96, %if.end93
  call void @llvm.lifetime.end.p0(i64 40, ptr %shdr) #12, !dbg !817
  br label %if.end99, !dbg !818

if.end99:                                         ; preds = %if.end98, %lor.lhs.false
  %39 = load i32, ptr @shstrndx, align 4, !dbg !819, !tbaa !539
  %conv100 = zext i32 %39 to i64, !dbg !819
  %40 = load i64, ptr @shnum, align 8, !dbg !821, !tbaa !729
  %cmp101 = icmp uge i64 %conv100, %40, !dbg !822
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !823

if.then103:                                       ; preds = %if.end99
  call void (ptr, ...) @die(ptr noundef @.str.19) #13, !dbg !824
  unreachable, !dbg !824

if.end104:                                        ; preds = %if.end99
  ret void, !dbg !825
}

; Function Attrs: nounwind uwtable
define internal void @read_shdrs(ptr noundef %fp) #0 !dbg !826 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %shdr = alloca %struct.Elf32_Shdr, align 4
  %sec = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !828, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %i, metadata !829, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 40, ptr %shdr) #12, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %shdr, metadata !830, metadata !DIExpression()), !dbg !839
  %0 = load i64, ptr @shnum, align 8, !dbg !840, !tbaa !729
  %call = call noalias ptr @calloc(i64 noundef %0, i64 noundef 80) #16, !dbg !841
  store ptr %call, ptr @secs, align 8, !dbg !842, !tbaa !534
  %1 = load ptr, ptr @secs, align 8, !dbg !843, !tbaa !534
  %tobool = icmp ne ptr %1, null, !dbg !843
  br i1 %tobool, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @shnum, align 8, !dbg !846, !tbaa !729
  call void (ptr, ...) @die(ptr noundef @.str.20, i64 noundef %2) #13, !dbg !848
  unreachable, !dbg !848

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !849, !tbaa !534
  %4 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !851, !tbaa !703
  %conv = zext i32 %4 to i64, !dbg !852
  %call1 = call i32 @fseek(ptr noundef %3, i64 noundef %conv, i32 noundef 0), !dbg !853
  %cmp = icmp slt i32 %call1, 0, !dbg !854
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !855

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds (%struct.Elf32_Ehdr, ptr @ehdr, i32 0, i32 6), align 4, !dbg !856, !tbaa !703
  %call4 = call ptr @__errno_location() #14, !dbg !858
  %6 = load i32, ptr %call4, align 4, !dbg !858, !tbaa !539
  %call5 = call ptr @strerror(i32 noundef %6) #12, !dbg !859
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %5, ptr noundef %call5) #13, !dbg !860
  unreachable, !dbg !860

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !861, !tbaa !539
  br label %for.cond, !dbg !862

for.cond:                                         ; preds = %for.inc, %if.end6
  %7 = load i32, ptr %i, align 4, !dbg !863, !tbaa !539
  %conv7 = sext i32 %7 to i64, !dbg !863
  %8 = load i64, ptr @shnum, align 8, !dbg !864, !tbaa !729
  %cmp8 = icmp ult i64 %conv7, %8, !dbg !865
  br i1 %cmp8, label %for.body, label %for.end, !dbg !866

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !831, metadata !DIExpression()), !dbg !868
  %9 = load ptr, ptr @secs, align 8, !dbg !869, !tbaa !534
  %10 = load i32, ptr %i, align 4, !dbg !870, !tbaa !539
  %idxprom = sext i32 %10 to i64, !dbg !869
  %arrayidx = getelementptr inbounds %struct.section, ptr %9, i64 %idxprom, !dbg !869
  store ptr %arrayidx, ptr %sec, align 8, !dbg !868, !tbaa !534
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !871, !tbaa !534
  %call10 = call i64 @fread(ptr noundef %shdr, i64 noundef 40, i64 noundef 1, ptr noundef %11), !dbg !873
  %cmp11 = icmp ne i64 %call10, 1, !dbg !874
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !875

if.then13:                                        ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !876, !tbaa !539
  %13 = load i64, ptr @shnum, align 8, !dbg !877, !tbaa !729
  %call14 = call ptr @__errno_location() #14, !dbg !878
  %14 = load i32, ptr %call14, align 4, !dbg !878, !tbaa !539
  %call15 = call ptr @strerror(i32 noundef %14) #12, !dbg !879
  call void (ptr, ...) @die(ptr noundef @.str.21, i32 noundef %12, i64 noundef %13, ptr noundef %call15) #13, !dbg !880
  unreachable, !dbg !880

if.end16:                                         ; preds = %for.body
  %sh_name = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 0, !dbg !881
  %15 = load i32, ptr %sh_name, align 4, !dbg !881, !tbaa !882
  %call17 = call i32 @elf32_to_cpu(i32 noundef %15), !dbg !881
  %16 = load ptr, ptr %sec, align 8, !dbg !883, !tbaa !534
  %shdr18 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !884
  %sh_name19 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr18, i32 0, i32 0, !dbg !885
  store i32 %call17, ptr %sh_name19, align 8, !dbg !886, !tbaa !887
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !889
  %17 = load i32, ptr %sh_type, align 4, !dbg !889, !tbaa !890
  %call20 = call i32 @elf32_to_cpu(i32 noundef %17), !dbg !889
  %18 = load ptr, ptr %sec, align 8, !dbg !891, !tbaa !534
  %shdr21 = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 0, !dbg !892
  %sh_type22 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr21, i32 0, i32 1, !dbg !893
  store i32 %call20, ptr %sh_type22, align 4, !dbg !894, !tbaa !895
  %sh_flags = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 2, !dbg !896
  %19 = load i32, ptr %sh_flags, align 4, !dbg !896, !tbaa !897
  %call23 = call i32 @elf32_to_cpu(i32 noundef %19), !dbg !896
  %20 = load ptr, ptr %sec, align 8, !dbg !898, !tbaa !534
  %shdr24 = getelementptr inbounds %struct.section, ptr %20, i32 0, i32 0, !dbg !899
  %sh_flags25 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr24, i32 0, i32 2, !dbg !900
  store i32 %call23, ptr %sh_flags25, align 8, !dbg !901, !tbaa !902
  %sh_addr = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 3, !dbg !903
  %21 = load i32, ptr %sh_addr, align 4, !dbg !903, !tbaa !904
  %call26 = call i32 @elf32_to_cpu(i32 noundef %21), !dbg !903
  %22 = load ptr, ptr %sec, align 8, !dbg !905, !tbaa !534
  %shdr27 = getelementptr inbounds %struct.section, ptr %22, i32 0, i32 0, !dbg !906
  %sh_addr28 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr27, i32 0, i32 3, !dbg !907
  store i32 %call26, ptr %sh_addr28, align 4, !dbg !908, !tbaa !909
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 4, !dbg !910
  %23 = load i32, ptr %sh_offset, align 4, !dbg !910, !tbaa !911
  %call29 = call i32 @elf32_to_cpu(i32 noundef %23), !dbg !910
  %24 = load ptr, ptr %sec, align 8, !dbg !912, !tbaa !534
  %shdr30 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !913
  %sh_offset31 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr30, i32 0, i32 4, !dbg !914
  store i32 %call29, ptr %sh_offset31, align 8, !dbg !915, !tbaa !916
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 5, !dbg !917
  %25 = load i32, ptr %sh_size, align 4, !dbg !917, !tbaa !805
  %call32 = call i32 @elf32_to_cpu(i32 noundef %25), !dbg !917
  %26 = load ptr, ptr %sec, align 8, !dbg !918, !tbaa !534
  %shdr33 = getelementptr inbounds %struct.section, ptr %26, i32 0, i32 0, !dbg !919
  %sh_size34 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr33, i32 0, i32 5, !dbg !920
  store i32 %call32, ptr %sh_size34, align 4, !dbg !921, !tbaa !922
  %sh_link = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 6, !dbg !923
  %27 = load i32, ptr %sh_link, align 4, !dbg !923, !tbaa !814
  %call35 = call i32 @elf32_to_cpu(i32 noundef %27), !dbg !923
  %28 = load ptr, ptr %sec, align 8, !dbg !924, !tbaa !534
  %shdr36 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !925
  %sh_link37 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr36, i32 0, i32 6, !dbg !926
  store i32 %call35, ptr %sh_link37, align 8, !dbg !927, !tbaa !928
  %sh_info = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 7, !dbg !929
  %29 = load i32, ptr %sh_info, align 4, !dbg !929, !tbaa !930
  %call38 = call i32 @elf32_to_cpu(i32 noundef %29), !dbg !929
  %30 = load ptr, ptr %sec, align 8, !dbg !931, !tbaa !534
  %shdr39 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 0, !dbg !932
  %sh_info40 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr39, i32 0, i32 7, !dbg !933
  store i32 %call38, ptr %sh_info40, align 4, !dbg !934, !tbaa !935
  %sh_addralign = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 8, !dbg !936
  %31 = load i32, ptr %sh_addralign, align 4, !dbg !936, !tbaa !937
  %call41 = call i32 @elf32_to_cpu(i32 noundef %31), !dbg !936
  %32 = load ptr, ptr %sec, align 8, !dbg !938, !tbaa !534
  %shdr42 = getelementptr inbounds %struct.section, ptr %32, i32 0, i32 0, !dbg !939
  %sh_addralign43 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr42, i32 0, i32 8, !dbg !940
  store i32 %call41, ptr %sh_addralign43, align 8, !dbg !941, !tbaa !942
  %sh_entsize = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 9, !dbg !943
  %33 = load i32, ptr %sh_entsize, align 4, !dbg !943, !tbaa !944
  %call44 = call i32 @elf32_to_cpu(i32 noundef %33), !dbg !943
  %34 = load ptr, ptr %sec, align 8, !dbg !945, !tbaa !534
  %shdr45 = getelementptr inbounds %struct.section, ptr %34, i32 0, i32 0, !dbg !946
  %sh_entsize46 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr45, i32 0, i32 9, !dbg !947
  store i32 %call44, ptr %sh_entsize46, align 4, !dbg !948, !tbaa !949
  %35 = load ptr, ptr %sec, align 8, !dbg !950, !tbaa !534
  %shdr47 = getelementptr inbounds %struct.section, ptr %35, i32 0, i32 0, !dbg !952
  %sh_link48 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr47, i32 0, i32 6, !dbg !953
  %36 = load i32, ptr %sh_link48, align 8, !dbg !953, !tbaa !928
  %conv49 = zext i32 %36 to i64, !dbg !950
  %37 = load i64, ptr @shnum, align 8, !dbg !954, !tbaa !729
  %cmp50 = icmp ult i64 %conv49, %37, !dbg !955
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !956

if.then52:                                        ; preds = %if.end16
  %38 = load ptr, ptr @secs, align 8, !dbg !957, !tbaa !534
  %39 = load ptr, ptr %sec, align 8, !dbg !958, !tbaa !534
  %shdr53 = getelementptr inbounds %struct.section, ptr %39, i32 0, i32 0, !dbg !959
  %sh_link54 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr53, i32 0, i32 6, !dbg !960
  %40 = load i32, ptr %sh_link54, align 8, !dbg !960, !tbaa !928
  %idxprom55 = zext i32 %40 to i64, !dbg !957
  %arrayidx56 = getelementptr inbounds %struct.section, ptr %38, i64 %idxprom55, !dbg !957
  %41 = load ptr, ptr %sec, align 8, !dbg !961, !tbaa !534
  %link = getelementptr inbounds %struct.section, ptr %41, i32 0, i32 1, !dbg !962
  store ptr %arrayidx56, ptr %link, align 8, !dbg !963, !tbaa !964
  br label %if.end57, !dbg !961

if.end57:                                         ; preds = %if.then52, %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !965
  br label %for.inc, !dbg !966

for.inc:                                          ; preds = %if.end57
  %42 = load i32, ptr %i, align 4, !dbg !967, !tbaa !539
  %inc = add nsw i32 %42, 1, !dbg !967
  store i32 %inc, ptr %i, align 4, !dbg !967, !tbaa !539
  br label %for.cond, !dbg !968, !llvm.loop !969

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40, ptr %shdr) #12, !dbg !971
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !971
  ret void, !dbg !971
}

; Function Attrs: nounwind uwtable
define internal void @read_strtabs(ptr noundef %fp) #0 !dbg !972 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !974, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %i, metadata !975, metadata !DIExpression()), !dbg !982
  store i32 0, ptr %i, align 4, !dbg !983, !tbaa !539
  br label %for.cond, !dbg !984

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !985, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !985
  %1 = load i64, ptr @shnum, align 8, !dbg !986, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !987
  br i1 %cmp, label %for.body, label %for.end, !dbg !988

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !976, metadata !DIExpression()), !dbg !990
  %2 = load ptr, ptr @secs, align 8, !dbg !991, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !992, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !991
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !991
  store ptr %arrayidx, ptr %sec, align 8, !dbg !990, !tbaa !534
  %4 = load ptr, ptr %sec, align 8, !dbg !993, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !995
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !996
  %5 = load i32, ptr %sh_type, align 4, !dbg !996, !tbaa !895
  %cmp2 = icmp ne i32 %5, 3, !dbg !997
  br i1 %cmp2, label %if.then, label %if.end, !dbg !998

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1001, !tbaa !534
  %shdr4 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1002
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !1003
  %7 = load i32, ptr %sh_size, align 4, !dbg !1003, !tbaa !922
  %conv5 = zext i32 %7 to i64, !dbg !1001
  %call = call noalias ptr @malloc(i64 noundef %conv5) #17, !dbg !1004
  %8 = load ptr, ptr %sec, align 8, !dbg !1005, !tbaa !534
  %strtab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 5, !dbg !1006
  store ptr %call, ptr %strtab, align 8, !dbg !1007, !tbaa !1008
  %9 = load ptr, ptr %sec, align 8, !dbg !1009, !tbaa !534
  %strtab6 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 5, !dbg !1011
  %10 = load ptr, ptr %strtab6, align 8, !dbg !1011, !tbaa !1008
  %tobool = icmp ne ptr %10, null, !dbg !1009
  br i1 %tobool, label %if.end10, label %if.then7, !dbg !1012

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %sec, align 8, !dbg !1013, !tbaa !534
  %shdr8 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1015
  %sh_size9 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr8, i32 0, i32 5, !dbg !1016
  %12 = load i32, ptr %sh_size9, align 4, !dbg !1016, !tbaa !922
  call void (ptr, ...) @die(ptr noundef @.str.22, i32 noundef %12) #13, !dbg !1017
  unreachable, !dbg !1017

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1018, !tbaa !534
  %14 = load ptr, ptr %sec, align 8, !dbg !1020, !tbaa !534
  %shdr11 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1021
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr11, i32 0, i32 4, !dbg !1022
  %15 = load i32, ptr %sh_offset, align 8, !dbg !1022, !tbaa !916
  %conv12 = zext i32 %15 to i64, !dbg !1020
  %call13 = call i32 @fseek(ptr noundef %13, i64 noundef %conv12, i32 noundef 0), !dbg !1023
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1024
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !1025

if.then16:                                        ; preds = %if.end10
  %16 = load ptr, ptr %sec, align 8, !dbg !1026, !tbaa !534
  %shdr17 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1028
  %sh_offset18 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr17, i32 0, i32 4, !dbg !1029
  %17 = load i32, ptr %sh_offset18, align 8, !dbg !1029, !tbaa !916
  %call19 = call ptr @__errno_location() #14, !dbg !1030
  %18 = load i32, ptr %call19, align 4, !dbg !1030, !tbaa !539
  %call20 = call ptr @strerror(i32 noundef %18) #12, !dbg !1031
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %17, ptr noundef %call20) #13, !dbg !1032
  unreachable, !dbg !1032

if.end21:                                         ; preds = %if.end10
  %19 = load ptr, ptr %sec, align 8, !dbg !1033, !tbaa !534
  %strtab22 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 5, !dbg !1035
  %20 = load ptr, ptr %strtab22, align 8, !dbg !1035, !tbaa !1008
  %21 = load ptr, ptr %sec, align 8, !dbg !1036, !tbaa !534
  %shdr23 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1037
  %sh_size24 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr23, i32 0, i32 5, !dbg !1038
  %22 = load i32, ptr %sh_size24, align 4, !dbg !1038, !tbaa !922
  %conv25 = zext i32 %22 to i64, !dbg !1036
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1039, !tbaa !534
  %call26 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %conv25, ptr noundef %23), !dbg !1040
  %24 = load ptr, ptr %sec, align 8, !dbg !1041, !tbaa !534
  %shdr27 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1042
  %sh_size28 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr27, i32 0, i32 5, !dbg !1043
  %25 = load i32, ptr %sh_size28, align 4, !dbg !1043, !tbaa !922
  %conv29 = zext i32 %25 to i64, !dbg !1041
  %cmp30 = icmp ne i64 %call26, %conv29, !dbg !1044
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !1045

if.then32:                                        ; preds = %if.end21
  %call33 = call ptr @__errno_location() #14, !dbg !1046
  %26 = load i32, ptr %call33, align 4, !dbg !1046, !tbaa !539
  %call34 = call ptr @strerror(i32 noundef %26) #12, !dbg !1048
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call34) #13, !dbg !1049
  unreachable, !dbg !1049

if.end35:                                         ; preds = %if.end21
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1050
  br label %cleanup, !dbg !1050

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1050
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1051

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load i32, ptr %i, align 4, !dbg !1052, !tbaa !539
  %inc = add nsw i32 %27, 1, !dbg !1052
  store i32 %inc, ptr %i, align 4, !dbg !1052, !tbaa !539
  br label %for.cond, !dbg !1053, !llvm.loop !1054

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1056
  ret void, !dbg !1056

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @read_symtabs(ptr noundef %fp) #0 !dbg !1057 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sec = alloca ptr, align 8
  %num_syms = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sym = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1059, metadata !DIExpression()), !dbg !1072
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1060, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1061, metadata !DIExpression()), !dbg !1075
  store i32 0, ptr %i, align 4, !dbg !1076, !tbaa !539
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %for.inc89, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1078, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !1078
  %1 = load i64, ptr @shnum, align 8, !dbg !1079, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !1080
  br i1 %cmp, label %for.body, label %for.end91, !dbg !1081

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1062, metadata !DIExpression()), !dbg !1083
  %2 = load ptr, ptr @secs, align 8, !dbg !1084, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !1085, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !1084
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1084
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1083, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_syms) #12, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %num_syms, metadata !1066, metadata !DIExpression()), !dbg !1087
  %4 = load ptr, ptr %sec, align 8, !dbg !1088, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1089
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1090
  %5 = load i32, ptr %sh_type, align 4, !dbg !1090, !tbaa !895
  switch i32 %5, label %sw.default [
    i32 18, label %sw.bb
    i32 2, label %sw.bb32
  ], !dbg !1091

sw.bb:                                            ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1092, !tbaa !534
  %shdr2 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1093
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr2, i32 0, i32 5, !dbg !1094
  %7 = load i32, ptr %sh_size, align 4, !dbg !1094, !tbaa !922
  %conv3 = zext i32 %7 to i64, !dbg !1092
  %call = call noalias ptr @malloc(i64 noundef %conv3) #17, !dbg !1095
  %8 = load ptr, ptr %sec, align 8, !dbg !1096, !tbaa !534
  %xsymtab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 3, !dbg !1097
  store ptr %call, ptr %xsymtab, align 8, !dbg !1098, !tbaa !1099
  %9 = load ptr, ptr %sec, align 8, !dbg !1100, !tbaa !534
  %xsymtab4 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 3, !dbg !1102
  %10 = load ptr, ptr %xsymtab4, align 8, !dbg !1102, !tbaa !1099
  %tobool = icmp ne ptr %10, null, !dbg !1100
  br i1 %tobool, label %if.end, label %if.then, !dbg !1103

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %sec, align 8, !dbg !1104, !tbaa !534
  %shdr5 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1106
  %sh_size6 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr5, i32 0, i32 5, !dbg !1107
  %12 = load i32, ptr %sh_size6, align 4, !dbg !1107, !tbaa !922
  call void (ptr, ...) @die(ptr noundef @.str.24, i32 noundef %12) #13, !dbg !1108
  unreachable, !dbg !1108

if.end:                                           ; preds = %sw.bb
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1109, !tbaa !534
  %14 = load ptr, ptr %sec, align 8, !dbg !1111, !tbaa !534
  %shdr7 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1112
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr7, i32 0, i32 4, !dbg !1113
  %15 = load i32, ptr %sh_offset, align 8, !dbg !1113, !tbaa !916
  %conv8 = zext i32 %15 to i64, !dbg !1111
  %call9 = call i32 @fseek(ptr noundef %13, i64 noundef %conv8, i32 noundef 0), !dbg !1114
  %cmp10 = icmp slt i32 %call9, 0, !dbg !1115
  br i1 %cmp10, label %if.then12, label %if.end17, !dbg !1116

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %sec, align 8, !dbg !1117, !tbaa !534
  %shdr13 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1119
  %sh_offset14 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr13, i32 0, i32 4, !dbg !1120
  %17 = load i32, ptr %sh_offset14, align 8, !dbg !1120, !tbaa !916
  %call15 = call ptr @__errno_location() #14, !dbg !1121
  %18 = load i32, ptr %call15, align 4, !dbg !1121, !tbaa !539
  %call16 = call ptr @strerror(i32 noundef %18) #12, !dbg !1122
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %17, ptr noundef %call16) #13, !dbg !1123
  unreachable, !dbg !1123

if.end17:                                         ; preds = %if.end
  %19 = load ptr, ptr %sec, align 8, !dbg !1124, !tbaa !534
  %xsymtab18 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 3, !dbg !1126
  %20 = load ptr, ptr %xsymtab18, align 8, !dbg !1126, !tbaa !1099
  %21 = load ptr, ptr %sec, align 8, !dbg !1127, !tbaa !534
  %shdr19 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1128
  %sh_size20 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr19, i32 0, i32 5, !dbg !1129
  %22 = load i32, ptr %sh_size20, align 4, !dbg !1129, !tbaa !922
  %conv21 = zext i32 %22 to i64, !dbg !1127
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1130, !tbaa !534
  %call22 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %conv21, ptr noundef %23), !dbg !1131
  %24 = load ptr, ptr %sec, align 8, !dbg !1132, !tbaa !534
  %shdr23 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1133
  %sh_size24 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr23, i32 0, i32 5, !dbg !1134
  %25 = load i32, ptr %sh_size24, align 4, !dbg !1134, !tbaa !922
  %conv25 = zext i32 %25 to i64, !dbg !1132
  %cmp26 = icmp ne i64 %call22, %conv25, !dbg !1135
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1136

if.then28:                                        ; preds = %if.end17
  %call29 = call ptr @__errno_location() #14, !dbg !1137
  %26 = load i32, ptr %call29, align 4, !dbg !1137, !tbaa !539
  %call30 = call ptr @strerror(i32 noundef %26) #12, !dbg !1139
  call void (ptr, ...) @die(ptr noundef @.str.25, ptr noundef %call30) #13, !dbg !1140
  unreachable, !dbg !1140

if.end31:                                         ; preds = %if.end17
  %27 = load i32, ptr %i, align 4, !dbg !1141, !tbaa !539
  store i32 %27, ptr @shxsymtabndx, align 4, !dbg !1142, !tbaa !539
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

sw.bb32:                                          ; preds = %for.body
  %28 = load ptr, ptr %sec, align 8, !dbg !1144, !tbaa !534
  %shdr33 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !1145
  %sh_size34 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr33, i32 0, i32 5, !dbg !1146
  %29 = load i32, ptr %sh_size34, align 4, !dbg !1146, !tbaa !922
  %conv35 = zext i32 %29 to i64, !dbg !1144
  %div = udiv i64 %conv35, 16, !dbg !1147
  %conv36 = trunc i64 %div to i32, !dbg !1144
  store i32 %conv36, ptr %num_syms, align 4, !dbg !1148, !tbaa !539
  %30 = load ptr, ptr %sec, align 8, !dbg !1149, !tbaa !534
  %shdr37 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 0, !dbg !1150
  %sh_size38 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr37, i32 0, i32 5, !dbg !1151
  %31 = load i32, ptr %sh_size38, align 4, !dbg !1151, !tbaa !922
  %conv39 = zext i32 %31 to i64, !dbg !1149
  %call40 = call noalias ptr @malloc(i64 noundef %conv39) #17, !dbg !1152
  %32 = load ptr, ptr %sec, align 8, !dbg !1153, !tbaa !534
  %symtab = getelementptr inbounds %struct.section, ptr %32, i32 0, i32 2, !dbg !1154
  store ptr %call40, ptr %symtab, align 8, !dbg !1155, !tbaa !1156
  %33 = load ptr, ptr %sec, align 8, !dbg !1157, !tbaa !534
  %symtab41 = getelementptr inbounds %struct.section, ptr %33, i32 0, i32 2, !dbg !1159
  %34 = load ptr, ptr %symtab41, align 8, !dbg !1159, !tbaa !1156
  %tobool42 = icmp ne ptr %34, null, !dbg !1157
  br i1 %tobool42, label %if.end46, label %if.then43, !dbg !1160

if.then43:                                        ; preds = %sw.bb32
  %35 = load ptr, ptr %sec, align 8, !dbg !1161, !tbaa !534
  %shdr44 = getelementptr inbounds %struct.section, ptr %35, i32 0, i32 0, !dbg !1163
  %sh_size45 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr44, i32 0, i32 5, !dbg !1164
  %36 = load i32, ptr %sh_size45, align 4, !dbg !1164, !tbaa !922
  call void (ptr, ...) @die(ptr noundef @.str.26, i32 noundef %36) #13, !dbg !1165
  unreachable, !dbg !1165

if.end46:                                         ; preds = %sw.bb32
  %37 = load ptr, ptr %fp.addr, align 8, !dbg !1166, !tbaa !534
  %38 = load ptr, ptr %sec, align 8, !dbg !1168, !tbaa !534
  %shdr47 = getelementptr inbounds %struct.section, ptr %38, i32 0, i32 0, !dbg !1169
  %sh_offset48 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr47, i32 0, i32 4, !dbg !1170
  %39 = load i32, ptr %sh_offset48, align 8, !dbg !1170, !tbaa !916
  %conv49 = zext i32 %39 to i64, !dbg !1168
  %call50 = call i32 @fseek(ptr noundef %37, i64 noundef %conv49, i32 noundef 0), !dbg !1171
  %cmp51 = icmp slt i32 %call50, 0, !dbg !1172
  br i1 %cmp51, label %if.then53, label %if.end58, !dbg !1173

if.then53:                                        ; preds = %if.end46
  %40 = load ptr, ptr %sec, align 8, !dbg !1174, !tbaa !534
  %shdr54 = getelementptr inbounds %struct.section, ptr %40, i32 0, i32 0, !dbg !1176
  %sh_offset55 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr54, i32 0, i32 4, !dbg !1177
  %41 = load i32, ptr %sh_offset55, align 8, !dbg !1177, !tbaa !916
  %call56 = call ptr @__errno_location() #14, !dbg !1178
  %42 = load i32, ptr %call56, align 4, !dbg !1178, !tbaa !539
  %call57 = call ptr @strerror(i32 noundef %42) #12, !dbg !1179
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %41, ptr noundef %call57) #13, !dbg !1180
  unreachable, !dbg !1180

if.end58:                                         ; preds = %if.end46
  %43 = load ptr, ptr %sec, align 8, !dbg !1181, !tbaa !534
  %symtab59 = getelementptr inbounds %struct.section, ptr %43, i32 0, i32 2, !dbg !1183
  %44 = load ptr, ptr %symtab59, align 8, !dbg !1183, !tbaa !1156
  %45 = load ptr, ptr %sec, align 8, !dbg !1184, !tbaa !534
  %shdr60 = getelementptr inbounds %struct.section, ptr %45, i32 0, i32 0, !dbg !1185
  %sh_size61 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr60, i32 0, i32 5, !dbg !1186
  %46 = load i32, ptr %sh_size61, align 4, !dbg !1186, !tbaa !922
  %conv62 = zext i32 %46 to i64, !dbg !1184
  %47 = load ptr, ptr %fp.addr, align 8, !dbg !1187, !tbaa !534
  %call63 = call i64 @fread(ptr noundef %44, i64 noundef 1, i64 noundef %conv62, ptr noundef %47), !dbg !1188
  %48 = load ptr, ptr %sec, align 8, !dbg !1189, !tbaa !534
  %shdr64 = getelementptr inbounds %struct.section, ptr %48, i32 0, i32 0, !dbg !1190
  %sh_size65 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr64, i32 0, i32 5, !dbg !1191
  %49 = load i32, ptr %sh_size65, align 4, !dbg !1191, !tbaa !922
  %conv66 = zext i32 %49 to i64, !dbg !1189
  %cmp67 = icmp ne i64 %call63, %conv66, !dbg !1192
  br i1 %cmp67, label %if.then69, label %if.end72, !dbg !1193

if.then69:                                        ; preds = %if.end58
  %call70 = call ptr @__errno_location() #14, !dbg !1194
  %50 = load i32, ptr %call70, align 4, !dbg !1194, !tbaa !539
  %call71 = call ptr @strerror(i32 noundef %50) #12, !dbg !1196
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call71) #13, !dbg !1197
  unreachable, !dbg !1197

if.end72:                                         ; preds = %if.end58
  store i32 0, ptr %j, align 4, !dbg !1198, !tbaa !539
  br label %for.cond73, !dbg !1199

for.cond73:                                       ; preds = %for.inc, %if.end72
  %51 = load i32, ptr %j, align 4, !dbg !1200, !tbaa !539
  %52 = load i32, ptr %num_syms, align 4, !dbg !1201, !tbaa !539
  %cmp74 = icmp slt i32 %51, %52, !dbg !1202
  br i1 %cmp74, label %for.body76, label %for.end, !dbg !1203

for.body76:                                       ; preds = %for.cond73
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1067, metadata !DIExpression()), !dbg !1205
  %53 = load ptr, ptr %sec, align 8, !dbg !1206, !tbaa !534
  %symtab77 = getelementptr inbounds %struct.section, ptr %53, i32 0, i32 2, !dbg !1207
  %54 = load ptr, ptr %symtab77, align 8, !dbg !1207, !tbaa !1156
  %55 = load i32, ptr %j, align 4, !dbg !1208, !tbaa !539
  %idxprom78 = sext i32 %55 to i64, !dbg !1206
  %arrayidx79 = getelementptr inbounds %struct.Elf32_Sym, ptr %54, i64 %idxprom78, !dbg !1206
  store ptr %arrayidx79, ptr %sym, align 8, !dbg !1205, !tbaa !534
  %56 = load ptr, ptr %sym, align 8, !dbg !1209, !tbaa !534
  %st_name = getelementptr inbounds %struct.Elf32_Sym, ptr %56, i32 0, i32 0, !dbg !1209
  %57 = load i32, ptr %st_name, align 4, !dbg !1209, !tbaa !1210
  %call80 = call i32 @elf32_to_cpu(i32 noundef %57), !dbg !1209
  %58 = load ptr, ptr %sym, align 8, !dbg !1212, !tbaa !534
  %st_name81 = getelementptr inbounds %struct.Elf32_Sym, ptr %58, i32 0, i32 0, !dbg !1213
  store i32 %call80, ptr %st_name81, align 4, !dbg !1214, !tbaa !1210
  %59 = load ptr, ptr %sym, align 8, !dbg !1215, !tbaa !534
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %59, i32 0, i32 1, !dbg !1215
  %60 = load i32, ptr %st_value, align 4, !dbg !1215, !tbaa !1216
  %call82 = call i32 @elf32_to_cpu(i32 noundef %60), !dbg !1215
  %61 = load ptr, ptr %sym, align 8, !dbg !1217, !tbaa !534
  %st_value83 = getelementptr inbounds %struct.Elf32_Sym, ptr %61, i32 0, i32 1, !dbg !1218
  store i32 %call82, ptr %st_value83, align 4, !dbg !1219, !tbaa !1216
  %62 = load ptr, ptr %sym, align 8, !dbg !1220, !tbaa !534
  %st_size = getelementptr inbounds %struct.Elf32_Sym, ptr %62, i32 0, i32 2, !dbg !1220
  %63 = load i32, ptr %st_size, align 4, !dbg !1220, !tbaa !1221
  %call84 = call i32 @elf32_to_cpu(i32 noundef %63), !dbg !1220
  %64 = load ptr, ptr %sym, align 8, !dbg !1222, !tbaa !534
  %st_size85 = getelementptr inbounds %struct.Elf32_Sym, ptr %64, i32 0, i32 2, !dbg !1223
  store i32 %call84, ptr %st_size85, align 4, !dbg !1224, !tbaa !1221
  %65 = load ptr, ptr %sym, align 8, !dbg !1225, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %65, i32 0, i32 5, !dbg !1225
  %66 = load i16, ptr %st_shndx, align 2, !dbg !1225, !tbaa !1226
  %call86 = call zeroext i16 @elf16_to_cpu(i16 noundef zeroext %66), !dbg !1225
  %67 = load ptr, ptr %sym, align 8, !dbg !1227, !tbaa !534
  %st_shndx87 = getelementptr inbounds %struct.Elf32_Sym, ptr %67, i32 0, i32 5, !dbg !1228
  store i16 %call86, ptr %st_shndx87, align 2, !dbg !1229, !tbaa !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1230
  br label %for.inc, !dbg !1231

for.inc:                                          ; preds = %for.body76
  %68 = load i32, ptr %j, align 4, !dbg !1232, !tbaa !539
  %inc = add nsw i32 %68, 1, !dbg !1232
  store i32 %inc, ptr %j, align 4, !dbg !1232, !tbaa !539
  br label %for.cond73, !dbg !1233, !llvm.loop !1234

for.end:                                          ; preds = %for.cond73
  %69 = load i32, ptr %i, align 4, !dbg !1236, !tbaa !539
  store i32 %69, ptr @shsymtabndx, align 4, !dbg !1237, !tbaa !539
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1238

sw.default:                                       ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1239

cleanup:                                          ; preds = %sw.default, %for.end, %if.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_syms) #12, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1240
  br label %for.inc89

for.inc89:                                        ; preds = %cleanup
  %70 = load i32, ptr %i, align 4, !dbg !1241, !tbaa !539
  %inc90 = add nsw i32 %70, 1, !dbg !1241
  store i32 %inc90, ptr %i, align 4, !dbg !1241, !tbaa !539
  br label %for.cond, !dbg !1242, !llvm.loop !1243

for.end91:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1245
  ret void, !dbg !1245
}

; Function Attrs: nounwind uwtable
define internal void @read_relocs(ptr noundef %fp) #0 !dbg !1246 {
entry:
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sec = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rel = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1248, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1249, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1250, metadata !DIExpression()), !dbg !1262
  store i32 0, ptr %i, align 4, !dbg !1263, !tbaa !539
  br label %for.cond, !dbg !1264

for.cond:                                         ; preds = %for.inc51, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1265, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !1265
  %1 = load i64, ptr @shnum, align 8, !dbg !1266, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !1267
  br i1 %cmp, label %for.body, label %for.end53, !dbg !1268

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1251, metadata !DIExpression()), !dbg !1270
  %2 = load ptr, ptr @secs, align 8, !dbg !1271, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !1272, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !1271
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1271
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1270, !tbaa !534
  %4 = load ptr, ptr %sec, align 8, !dbg !1273, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1275
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1276
  %5 = load i32, ptr %sh_type, align 4, !dbg !1276, !tbaa !895
  %cmp2 = icmp ne i32 %5, 9, !dbg !1277
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1278

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1281, !tbaa !534
  %shdr4 = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 0, !dbg !1282
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr4, i32 0, i32 5, !dbg !1283
  %7 = load i32, ptr %sh_size, align 4, !dbg !1283, !tbaa !922
  %conv5 = zext i32 %7 to i64, !dbg !1281
  %call = call noalias ptr @malloc(i64 noundef %conv5) #17, !dbg !1284
  %8 = load ptr, ptr %sec, align 8, !dbg !1285, !tbaa !534
  %reltab = getelementptr inbounds %struct.section, ptr %8, i32 0, i32 4, !dbg !1286
  store ptr %call, ptr %reltab, align 8, !dbg !1287, !tbaa !1288
  %9 = load ptr, ptr %sec, align 8, !dbg !1289, !tbaa !534
  %reltab6 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 4, !dbg !1291
  %10 = load ptr, ptr %reltab6, align 8, !dbg !1291, !tbaa !1288
  %tobool = icmp ne ptr %10, null, !dbg !1289
  br i1 %tobool, label %if.end10, label %if.then7, !dbg !1292

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %sec, align 8, !dbg !1293, !tbaa !534
  %shdr8 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1295
  %sh_size9 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr8, i32 0, i32 5, !dbg !1296
  %12 = load i32, ptr %sh_size9, align 4, !dbg !1296, !tbaa !922
  call void (ptr, ...) @die(ptr noundef @.str.27, i32 noundef %12) #13, !dbg !1297
  unreachable, !dbg !1297

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1298, !tbaa !534
  %14 = load ptr, ptr %sec, align 8, !dbg !1300, !tbaa !534
  %shdr11 = getelementptr inbounds %struct.section, ptr %14, i32 0, i32 0, !dbg !1301
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr11, i32 0, i32 4, !dbg !1302
  %15 = load i32, ptr %sh_offset, align 8, !dbg !1302, !tbaa !916
  %conv12 = zext i32 %15 to i64, !dbg !1300
  %call13 = call i32 @fseek(ptr noundef %13, i64 noundef %conv12, i32 noundef 0), !dbg !1303
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1304
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !1305

if.then16:                                        ; preds = %if.end10
  %16 = load ptr, ptr %sec, align 8, !dbg !1306, !tbaa !534
  %shdr17 = getelementptr inbounds %struct.section, ptr %16, i32 0, i32 0, !dbg !1308
  %sh_offset18 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr17, i32 0, i32 4, !dbg !1309
  %17 = load i32, ptr %sh_offset18, align 8, !dbg !1309, !tbaa !916
  %call19 = call ptr @__errno_location() #14, !dbg !1310
  %18 = load i32, ptr %call19, align 4, !dbg !1310, !tbaa !539
  %call20 = call ptr @strerror(i32 noundef %18) #12, !dbg !1311
  call void (ptr, ...) @die(ptr noundef @.str.17, i32 noundef %17, ptr noundef %call20) #13, !dbg !1312
  unreachable, !dbg !1312

if.end21:                                         ; preds = %if.end10
  %19 = load ptr, ptr %sec, align 8, !dbg !1313, !tbaa !534
  %reltab22 = getelementptr inbounds %struct.section, ptr %19, i32 0, i32 4, !dbg !1315
  %20 = load ptr, ptr %reltab22, align 8, !dbg !1315, !tbaa !1288
  %21 = load ptr, ptr %sec, align 8, !dbg !1316, !tbaa !534
  %shdr23 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1317
  %sh_size24 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr23, i32 0, i32 5, !dbg !1318
  %22 = load i32, ptr %sh_size24, align 4, !dbg !1318, !tbaa !922
  %conv25 = zext i32 %22 to i64, !dbg !1316
  %23 = load ptr, ptr %fp.addr, align 8, !dbg !1319, !tbaa !534
  %call26 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %conv25, ptr noundef %23), !dbg !1320
  %24 = load ptr, ptr %sec, align 8, !dbg !1321, !tbaa !534
  %shdr27 = getelementptr inbounds %struct.section, ptr %24, i32 0, i32 0, !dbg !1322
  %sh_size28 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr27, i32 0, i32 5, !dbg !1323
  %25 = load i32, ptr %sh_size28, align 4, !dbg !1323, !tbaa !922
  %conv29 = zext i32 %25 to i64, !dbg !1321
  %cmp30 = icmp ne i64 %call26, %conv29, !dbg !1324
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !1325

if.then32:                                        ; preds = %if.end21
  %call33 = call ptr @__errno_location() #14, !dbg !1326
  %26 = load i32, ptr %call33, align 4, !dbg !1326, !tbaa !539
  %call34 = call ptr @strerror(i32 noundef %26) #12, !dbg !1328
  call void (ptr, ...) @die(ptr noundef @.str.23, ptr noundef %call34) #13, !dbg !1329
  unreachable, !dbg !1329

if.end35:                                         ; preds = %if.end21
  store i32 0, ptr %j, align 4, !dbg !1330, !tbaa !539
  br label %for.cond36, !dbg !1331

for.cond36:                                       ; preds = %for.inc, %if.end35
  %27 = load i32, ptr %j, align 4, !dbg !1332, !tbaa !539
  %conv37 = sext i32 %27 to i64, !dbg !1332
  %28 = load ptr, ptr %sec, align 8, !dbg !1333, !tbaa !534
  %shdr38 = getelementptr inbounds %struct.section, ptr %28, i32 0, i32 0, !dbg !1334
  %sh_size39 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr38, i32 0, i32 5, !dbg !1335
  %29 = load i32, ptr %sh_size39, align 4, !dbg !1335, !tbaa !922
  %conv40 = zext i32 %29 to i64, !dbg !1333
  %div = udiv i64 %conv40, 8, !dbg !1336
  %cmp41 = icmp ult i64 %conv37, %div, !dbg !1337
  br i1 %cmp41, label %for.body43, label %for.end, !dbg !1338

for.body43:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !1255, metadata !DIExpression()), !dbg !1340
  %30 = load ptr, ptr %sec, align 8, !dbg !1341, !tbaa !534
  %reltab44 = getelementptr inbounds %struct.section, ptr %30, i32 0, i32 4, !dbg !1342
  %31 = load ptr, ptr %reltab44, align 8, !dbg !1342, !tbaa !1288
  %32 = load i32, ptr %j, align 4, !dbg !1343, !tbaa !539
  %idxprom45 = sext i32 %32 to i64, !dbg !1341
  %arrayidx46 = getelementptr inbounds %struct.Elf32_Rel, ptr %31, i64 %idxprom45, !dbg !1341
  store ptr %arrayidx46, ptr %rel, align 8, !dbg !1340, !tbaa !534
  %33 = load ptr, ptr %rel, align 8, !dbg !1344, !tbaa !534
  %r_offset = getelementptr inbounds %struct.Elf32_Rel, ptr %33, i32 0, i32 0, !dbg !1344
  %34 = load i32, ptr %r_offset, align 4, !dbg !1344, !tbaa !1345
  %call47 = call i32 @elf32_to_cpu(i32 noundef %34), !dbg !1344
  %35 = load ptr, ptr %rel, align 8, !dbg !1347, !tbaa !534
  %r_offset48 = getelementptr inbounds %struct.Elf32_Rel, ptr %35, i32 0, i32 0, !dbg !1348
  store i32 %call47, ptr %r_offset48, align 4, !dbg !1349, !tbaa !1345
  %36 = load ptr, ptr %rel, align 8, !dbg !1350, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %36, i32 0, i32 1, !dbg !1350
  %37 = load i32, ptr %r_info, align 4, !dbg !1350, !tbaa !1351
  %call49 = call i32 @elf32_to_cpu(i32 noundef %37), !dbg !1350
  %38 = load ptr, ptr %rel, align 8, !dbg !1352, !tbaa !534
  %r_info50 = getelementptr inbounds %struct.Elf32_Rel, ptr %38, i32 0, i32 1, !dbg !1353
  store i32 %call49, ptr %r_info50, align 4, !dbg !1354, !tbaa !1351
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !1355
  br label %for.inc, !dbg !1356

for.inc:                                          ; preds = %for.body43
  %39 = load i32, ptr %j, align 4, !dbg !1357, !tbaa !539
  %inc = add nsw i32 %39, 1, !dbg !1357
  store i32 %inc, ptr %j, align 4, !dbg !1357, !tbaa !539
  br label %for.cond36, !dbg !1358, !llvm.loop !1359

for.end:                                          ; preds = %for.cond36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1361
  br label %cleanup, !dbg !1361

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1361
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc51
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc51, !dbg !1362

for.inc51:                                        ; preds = %cleanup.cont, %cleanup
  %40 = load i32, ptr %i, align 4, !dbg !1363, !tbaa !539
  %inc52 = add nsw i32 %40, 1, !dbg !1363
  store i32 %inc52, ptr %i, align 4, !dbg !1363, !tbaa !539
  br label %for.cond, !dbg !1364, !llvm.loop !1365

for.end53:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1367
  ret void, !dbg !1367

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_absolute_symbols() #0 !dbg !1368 {
entry:
  %i = alloca i32, align 4
  %format = alloca ptr, align 8
  %sec = alloca ptr, align 8
  %sym_strtab = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %sym = alloca ptr, align 8
  %name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1372, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #12, !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %format, metadata !1373, metadata !DIExpression()), !dbg !1388
  store ptr @.str.28, ptr %format, align 8, !dbg !1389, !tbaa !534
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.29), !dbg !1391
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.30), !dbg !1392
  store i32 0, ptr %i, align 4, !dbg !1393, !tbaa !539
  br label %for.cond, !dbg !1394

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1395, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !1395
  %1 = load i64, ptr @shnum, align 8, !dbg !1396, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !1397
  br i1 %cmp, label %for.body, label %for.end37, !dbg !1398

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1374, metadata !DIExpression()), !dbg !1400
  %2 = load ptr, ptr @secs, align 8, !dbg !1401, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !1402, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !1401
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1401
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1400, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !1378, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1379, metadata !DIExpression()), !dbg !1406
  %4 = load ptr, ptr %sec, align 8, !dbg !1407, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1409
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1410
  %5 = load i32, ptr %sh_type, align 4, !dbg !1410, !tbaa !895
  %cmp3 = icmp ne i32 %5, 2, !dbg !1411
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1412

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !1413

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1415, !tbaa !534
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !1416
  %7 = load ptr, ptr %link, align 8, !dbg !1416, !tbaa !964
  %strtab = getelementptr inbounds %struct.section, ptr %7, i32 0, i32 5, !dbg !1417
  %8 = load ptr, ptr %strtab, align 8, !dbg !1417, !tbaa !1008
  store ptr %8, ptr %sym_strtab, align 8, !dbg !1418, !tbaa !534
  store i32 0, ptr %j, align 4, !dbg !1419, !tbaa !539
  br label %for.cond5, !dbg !1420

for.cond5:                                        ; preds = %for.inc, %if.end
  %9 = load i32, ptr %j, align 4, !dbg !1421, !tbaa !539
  %conv6 = sext i32 %9 to i64, !dbg !1421
  %10 = load ptr, ptr %sec, align 8, !dbg !1422, !tbaa !534
  %shdr7 = getelementptr inbounds %struct.section, ptr %10, i32 0, i32 0, !dbg !1423
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr7, i32 0, i32 5, !dbg !1424
  %11 = load i32, ptr %sh_size, align 4, !dbg !1424, !tbaa !922
  %conv8 = zext i32 %11 to i64, !dbg !1422
  %div = udiv i64 %conv8, 16, !dbg !1425
  %cmp9 = icmp ult i64 %conv6, %div, !dbg !1426
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !1427

for.body11:                                       ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1380, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1384, metadata !DIExpression()), !dbg !1431
  %12 = load ptr, ptr %sec, align 8, !dbg !1432, !tbaa !534
  %symtab = getelementptr inbounds %struct.section, ptr %12, i32 0, i32 2, !dbg !1433
  %13 = load ptr, ptr %symtab, align 8, !dbg !1433, !tbaa !1156
  %14 = load i32, ptr %j, align 4, !dbg !1434, !tbaa !539
  %idxprom12 = sext i32 %14 to i64, !dbg !1432
  %arrayidx13 = getelementptr inbounds %struct.Elf32_Sym, ptr %13, i64 %idxprom12, !dbg !1432
  store ptr %arrayidx13, ptr %sym, align 8, !dbg !1435, !tbaa !534
  %15 = load ptr, ptr %sym_strtab, align 8, !dbg !1436, !tbaa !534
  %16 = load ptr, ptr %sym, align 8, !dbg !1437, !tbaa !534
  %call14 = call ptr @sym_name(ptr noundef %15, ptr noundef %16), !dbg !1438
  store ptr %call14, ptr %name, align 8, !dbg !1439, !tbaa !534
  %17 = load ptr, ptr %sym, align 8, !dbg !1440, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %17, i32 0, i32 5, !dbg !1442
  %18 = load i16, ptr %st_shndx, align 2, !dbg !1442, !tbaa !1226
  %conv15 = zext i16 %18 to i32, !dbg !1440
  %cmp16 = icmp ne i32 %conv15, 65521, !dbg !1443
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1444

if.then18:                                        ; preds = %for.body11
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1445

if.end19:                                         ; preds = %for.body11
  %19 = load ptr, ptr %format, align 8, !dbg !1447, !tbaa !534
  %20 = load i32, ptr %j, align 4, !dbg !1448, !tbaa !539
  %21 = load ptr, ptr %sym, align 8, !dbg !1449, !tbaa !534
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %21, i32 0, i32 1, !dbg !1450
  %22 = load i32, ptr %st_value, align 4, !dbg !1450, !tbaa !1216
  %23 = load ptr, ptr %sym, align 8, !dbg !1451, !tbaa !534
  %st_size = getelementptr inbounds %struct.Elf32_Sym, ptr %23, i32 0, i32 2, !dbg !1452
  %24 = load i32, ptr %st_size, align 4, !dbg !1452, !tbaa !1221
  %25 = load ptr, ptr %sym, align 8, !dbg !1453, !tbaa !534
  %st_info = getelementptr inbounds %struct.Elf32_Sym, ptr %25, i32 0, i32 3, !dbg !1453
  %26 = load i8, ptr %st_info, align 4, !dbg !1453, !tbaa !1454
  %conv20 = zext i8 %26 to i32, !dbg !1453
  %and = and i32 %conv20, 15, !dbg !1453
  %call21 = call ptr @sym_type(i32 noundef %and), !dbg !1455
  %27 = load ptr, ptr %sym, align 8, !dbg !1456, !tbaa !534
  %st_info22 = getelementptr inbounds %struct.Elf32_Sym, ptr %27, i32 0, i32 3, !dbg !1456
  %28 = load i8, ptr %st_info22, align 4, !dbg !1456, !tbaa !1454
  %conv23 = zext i8 %28 to i32, !dbg !1456
  %shr = ashr i32 %conv23, 4, !dbg !1456
  %call24 = call ptr @sym_bind(i32 noundef %shr), !dbg !1457
  %29 = load ptr, ptr %sym, align 8, !dbg !1458, !tbaa !534
  %st_other = getelementptr inbounds %struct.Elf32_Sym, ptr %29, i32 0, i32 4, !dbg !1458
  %30 = load i8, ptr %st_other, align 1, !dbg !1458, !tbaa !1459
  %conv25 = zext i8 %30 to i32, !dbg !1458
  %and26 = and i32 %conv25, 3, !dbg !1458
  %call27 = call ptr @sym_visibility(i32 noundef %and26), !dbg !1460
  %31 = load ptr, ptr %name, align 8, !dbg !1461, !tbaa !534
  %call28 = call i32 (ptr, ...) @printf(ptr noundef %19, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %call21, ptr noundef %call24, ptr noundef %call27, ptr noundef %31), !dbg !1462
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1463
  br label %cleanup, !dbg !1463

cleanup:                                          ; preds = %if.end19, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1463
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1464

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %32 = load i32, ptr %j, align 4, !dbg !1465, !tbaa !539
  %inc = add nsw i32 %32, 1, !dbg !1465
  store i32 %inc, ptr %j, align 4, !dbg !1465, !tbaa !539
  br label %for.cond5, !dbg !1466, !llvm.loop !1467

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1469
  br label %cleanup30, !dbg !1469

cleanup30:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1469
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %unreachable [
    i32 0, label %cleanup.cont34
    i32 4, label %for.inc35
  ]

cleanup.cont34:                                   ; preds = %cleanup30
  br label %for.inc35, !dbg !1470

for.inc35:                                        ; preds = %cleanup.cont34, %cleanup30
  %33 = load i32, ptr %i, align 4, !dbg !1471, !tbaa !539
  %inc36 = add nsw i32 %33, 1, !dbg !1471
  store i32 %inc36, ptr %i, align 4, !dbg !1471, !tbaa !539
  br label %for.cond, !dbg !1472, !llvm.loop !1473

for.end37:                                        ; preds = %for.cond
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.31), !dbg !1475
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #12, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1476
  ret void, !dbg !1476

unreachable:                                      ; preds = %cleanup30, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_absolute_relocs() #0 !dbg !1477 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1479, metadata !DIExpression()), !dbg !1498
  call void @llvm.lifetime.start.p0(i64 4, ptr %printed) #12, !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %printed, metadata !1480, metadata !DIExpression()), !dbg !1499
  store i32 0, ptr %printed, align 4, !dbg !1499, !tbaa !539
  call void @llvm.lifetime.start.p0(i64 8, ptr %format) #12, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %format, metadata !1481, metadata !DIExpression()), !dbg !1501
  store ptr @.str.52, ptr %format, align 8, !dbg !1502, !tbaa !534
  store i32 0, ptr %i, align 4, !dbg !1504, !tbaa !539
  br label %for.cond, !dbg !1505

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1506, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !1506
  %1 = load i64, ptr @shnum, align 8, !dbg !1507, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !1508
  br i1 %cmp, label %for.body, label %for.end61, !dbg !1509

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1482, metadata !DIExpression()), !dbg !1511
  %2 = load ptr, ptr @secs, align 8, !dbg !1512, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !1513, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !1512
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !1512
  store ptr %arrayidx, ptr %sec, align 8, !dbg !1511, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_applies) #12, !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %sec_applies, metadata !1486, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_symtab) #12, !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %sec_symtab, metadata !1487, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !1488, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr %sh_symtab) #12, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %sh_symtab, metadata !1489, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1490, metadata !DIExpression()), !dbg !1522
  %4 = load ptr, ptr %sec, align 8, !dbg !1523, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !1525
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !1526
  %5 = load i32, ptr %sh_type, align 4, !dbg !1526, !tbaa !895
  %cmp2 = icmp ne i32 %5, 9, !dbg !1527
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1528

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1529

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !1531, !tbaa !534
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !1532
  %7 = load ptr, ptr %link, align 8, !dbg !1532, !tbaa !964
  store ptr %7, ptr %sec_symtab, align 8, !dbg !1533, !tbaa !534
  %8 = load ptr, ptr @secs, align 8, !dbg !1534, !tbaa !534
  %9 = load ptr, ptr %sec, align 8, !dbg !1535, !tbaa !534
  %shdr4 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 0, !dbg !1536
  %sh_info = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr4, i32 0, i32 7, !dbg !1537
  %10 = load i32, ptr %sh_info, align 4, !dbg !1537, !tbaa !935
  %idxprom5 = zext i32 %10 to i64, !dbg !1534
  %arrayidx6 = getelementptr inbounds %struct.section, ptr %8, i64 %idxprom5, !dbg !1534
  store ptr %arrayidx6, ptr %sec_applies, align 8, !dbg !1538, !tbaa !534
  %11 = load ptr, ptr %sec_applies, align 8, !dbg !1539, !tbaa !534
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !1541
  %sh_flags = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr7, i32 0, i32 2, !dbg !1542
  %12 = load i32, ptr %sh_flags, align 8, !dbg !1542, !tbaa !902
  %and = and i32 %12, 2, !dbg !1543
  %tobool = icmp ne i32 %and, 0, !dbg !1543
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !1544

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1545

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %sec_applies, align 8, !dbg !1547, !tbaa !534
  %shdr10 = getelementptr inbounds %struct.section, ptr %13, i32 0, i32 0, !dbg !1549
  %sh_type11 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr10, i32 0, i32 1, !dbg !1550
  %14 = load i32, ptr %sh_type11, align 4, !dbg !1550, !tbaa !895
  %cmp12 = icmp eq i32 %14, 7, !dbg !1551
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1552

if.then14:                                        ; preds = %if.end9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1553

if.end15:                                         ; preds = %if.end9
  %15 = load ptr, ptr %sec_symtab, align 8, !dbg !1555, !tbaa !534
  %symtab = getelementptr inbounds %struct.section, ptr %15, i32 0, i32 2, !dbg !1556
  %16 = load ptr, ptr %symtab, align 8, !dbg !1556, !tbaa !1156
  store ptr %16, ptr %sh_symtab, align 8, !dbg !1557, !tbaa !534
  %17 = load ptr, ptr %sec_symtab, align 8, !dbg !1558, !tbaa !534
  %link16 = getelementptr inbounds %struct.section, ptr %17, i32 0, i32 1, !dbg !1559
  %18 = load ptr, ptr %link16, align 8, !dbg !1559, !tbaa !964
  %strtab = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 5, !dbg !1560
  %19 = load ptr, ptr %strtab, align 8, !dbg !1560, !tbaa !1008
  store ptr %19, ptr %sym_strtab, align 8, !dbg !1561, !tbaa !534
  store i32 0, ptr %j, align 4, !dbg !1562, !tbaa !539
  br label %for.cond17, !dbg !1563

for.cond17:                                       ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %j, align 4, !dbg !1564, !tbaa !539
  %conv18 = sext i32 %20 to i64, !dbg !1564
  %21 = load ptr, ptr %sec, align 8, !dbg !1565, !tbaa !534
  %shdr19 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !1566
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr19, i32 0, i32 5, !dbg !1567
  %22 = load i32, ptr %sh_size, align 4, !dbg !1567, !tbaa !922
  %conv20 = zext i32 %22 to i64, !dbg !1565
  %div = udiv i64 %conv20, 8, !dbg !1568
  %cmp21 = icmp ult i64 %conv18, %div, !dbg !1569
  br i1 %cmp21, label %for.body23, label %for.end, !dbg !1570

for.body23:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !1491, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !1495, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1496, metadata !DIExpression()), !dbg !1576
  %23 = load ptr, ptr %sec, align 8, !dbg !1577, !tbaa !534
  %reltab = getelementptr inbounds %struct.section, ptr %23, i32 0, i32 4, !dbg !1578
  %24 = load ptr, ptr %reltab, align 8, !dbg !1578, !tbaa !1288
  %25 = load i32, ptr %j, align 4, !dbg !1579, !tbaa !539
  %idxprom24 = sext i32 %25 to i64, !dbg !1577
  %arrayidx25 = getelementptr inbounds %struct.Elf32_Rel, ptr %24, i64 %idxprom24, !dbg !1577
  store ptr %arrayidx25, ptr %rel, align 8, !dbg !1580, !tbaa !534
  %26 = load ptr, ptr %sh_symtab, align 8, !dbg !1581, !tbaa !534
  %27 = load ptr, ptr %rel, align 8, !dbg !1582, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %27, i32 0, i32 1, !dbg !1582
  %28 = load i32, ptr %r_info, align 4, !dbg !1582, !tbaa !1351
  %shr = lshr i32 %28, 8, !dbg !1582
  %idxprom26 = zext i32 %shr to i64, !dbg !1581
  %arrayidx27 = getelementptr inbounds %struct.Elf32_Sym, ptr %26, i64 %idxprom26, !dbg !1581
  store ptr %arrayidx27, ptr %sym, align 8, !dbg !1583, !tbaa !534
  %29 = load ptr, ptr %sym_strtab, align 8, !dbg !1584, !tbaa !534
  %30 = load ptr, ptr %sym, align 8, !dbg !1585, !tbaa !534
  %call = call ptr @sym_name(ptr noundef %29, ptr noundef %30), !dbg !1586
  store ptr %call, ptr %name, align 8, !dbg !1587, !tbaa !534
  %31 = load ptr, ptr %sym, align 8, !dbg !1588, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %31, i32 0, i32 5, !dbg !1590
  %32 = load i16, ptr %st_shndx, align 2, !dbg !1590, !tbaa !1226
  %conv28 = zext i16 %32 to i32, !dbg !1588
  %cmp29 = icmp ne i32 %conv28, 65521, !dbg !1591
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1592

if.then31:                                        ; preds = %for.body23
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1593

if.end32:                                         ; preds = %for.body23
  %33 = load ptr, ptr %name, align 8, !dbg !1595, !tbaa !534
  %call33 = call i32 @is_reloc(i32 noundef 0, ptr noundef %33), !dbg !1597
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1597
  br i1 %tobool34, label %if.then37, label %lor.lhs.false, !dbg !1598

lor.lhs.false:                                    ; preds = %if.end32
  %34 = load ptr, ptr %name, align 8, !dbg !1599, !tbaa !534
  %call35 = call i32 @is_reloc(i32 noundef 1, ptr noundef %34), !dbg !1600
  %tobool36 = icmp ne i32 %call35, 0, !dbg !1600
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1601

if.then37:                                        ; preds = %lor.lhs.false, %if.end32
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1602

if.end38:                                         ; preds = %lor.lhs.false
  %35 = load i32, ptr %printed, align 4, !dbg !1603, !tbaa !539
  %tobool39 = icmp ne i32 %35, 0, !dbg !1603
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !1605

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.53), !dbg !1606
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.54), !dbg !1608
  store i32 1, ptr %printed, align 4, !dbg !1609, !tbaa !539
  br label %if.end43, !dbg !1610

if.end43:                                         ; preds = %if.then40, %if.end38
  %36 = load ptr, ptr %format, align 8, !dbg !1611, !tbaa !534
  %37 = load ptr, ptr %rel, align 8, !dbg !1612, !tbaa !534
  %r_offset = getelementptr inbounds %struct.Elf32_Rel, ptr %37, i32 0, i32 0, !dbg !1613
  %38 = load i32, ptr %r_offset, align 4, !dbg !1613, !tbaa !1345
  %39 = load ptr, ptr %rel, align 8, !dbg !1614, !tbaa !534
  %r_info44 = getelementptr inbounds %struct.Elf32_Rel, ptr %39, i32 0, i32 1, !dbg !1615
  %40 = load i32, ptr %r_info44, align 4, !dbg !1615, !tbaa !1351
  %41 = load ptr, ptr %rel, align 8, !dbg !1616, !tbaa !534
  %r_info45 = getelementptr inbounds %struct.Elf32_Rel, ptr %41, i32 0, i32 1, !dbg !1616
  %42 = load i32, ptr %r_info45, align 4, !dbg !1616, !tbaa !1351
  %and46 = and i32 %42, 255, !dbg !1616
  %call47 = call ptr @rel_type(i32 noundef %and46), !dbg !1617
  %43 = load ptr, ptr %sym, align 8, !dbg !1618, !tbaa !534
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %43, i32 0, i32 1, !dbg !1619
  %44 = load i32, ptr %st_value, align 4, !dbg !1619, !tbaa !1216
  %45 = load ptr, ptr %name, align 8, !dbg !1620, !tbaa !534
  %call48 = call i32 (ptr, ...) @printf(ptr noundef %36, i32 noundef %38, i32 noundef %40, ptr noundef %call47, i32 noundef %44, ptr noundef %45), !dbg !1621
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1622
  br label %cleanup, !dbg !1622

cleanup:                                          ; preds = %if.end43, %if.then37, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !1622
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !1622
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1623

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %46 = load i32, ptr %j, align 4, !dbg !1624, !tbaa !539
  %inc = add nsw i32 %46, 1, !dbg !1624
  store i32 %inc, ptr %j, align 4, !dbg !1624, !tbaa !539
  br label %for.cond17, !dbg !1625, !llvm.loop !1626

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1628
  br label %cleanup51, !dbg !1628

cleanup51:                                        ; preds = %for.end, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %sh_symtab) #12, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_symtab) #12, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_applies) #12, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !1628
  %cleanup.dest57 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest57, label %unreachable [
    i32 0, label %cleanup.cont58
    i32 4, label %for.inc59
  ]

cleanup.cont58:                                   ; preds = %cleanup51
  br label %for.inc59, !dbg !1629

for.inc59:                                        ; preds = %cleanup.cont58, %cleanup51
  %47 = load i32, ptr %i, align 4, !dbg !1630, !tbaa !539
  %inc60 = add nsw i32 %47, 1, !dbg !1630
  store i32 %inc60, ptr %i, align 4, !dbg !1630, !tbaa !539
  br label %for.cond, !dbg !1631, !llvm.loop !1632

for.end61:                                        ; preds = %for.cond
  %48 = load i32, ptr %printed, align 4, !dbg !1634, !tbaa !539
  %tobool62 = icmp ne i32 %48, 0, !dbg !1634
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !1636

if.then63:                                        ; preds = %for.end61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.31), !dbg !1637
  br label %if.end65, !dbg !1637

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 8, ptr %format) #12, !dbg !1638
  call void @llvm.lifetime.end.p0(i64 4, ptr %printed) #12, !dbg !1638
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1638
  ret void, !dbg !1638

unreachable:                                      ; preds = %cleanup51, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @print_reloc_info() #0 !dbg !1639 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.71), !dbg !1640
  call void @walk_relocs(ptr noundef @do_reloc_info), !dbg !1641
  ret void, !dbg !1642
}

; Function Attrs: nounwind uwtable
define internal void @emit_relocs(i32 noundef %as_text, i32 noundef %use_real_mode) #0 !dbg !1643 {
entry:
  %as_text.addr = alloca i32, align 4
  %use_real_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %write_reloc = alloca ptr, align 8
  %do_reloc = alloca ptr, align 8
  store i32 %as_text, ptr %as_text.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %as_text.addr, metadata !1647, metadata !DIExpression()), !dbg !1658
  store i32 %use_real_mode, ptr %use_real_mode.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %use_real_mode.addr, metadata !1648, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1649, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 8, ptr %write_reloc) #12, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %write_reloc, metadata !1650, metadata !DIExpression()), !dbg !1663
  store ptr @write32, ptr %write_reloc, align 8, !dbg !1663, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %do_reloc) #12, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %do_reloc, metadata !1654, metadata !DIExpression()), !dbg !1665
  %0 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1666, !tbaa !539
  %tobool = icmp ne i32 %0, 0, !dbg !1666
  br i1 %tobool, label %if.else, label %if.then, !dbg !1668

if.then:                                          ; preds = %entry
  store ptr @do_reloc32, ptr %do_reloc, align 8, !dbg !1669, !tbaa !534
  br label %if.end, !dbg !1670

if.else:                                          ; preds = %entry
  store ptr @do_reloc_real, ptr %do_reloc, align 8, !dbg !1671, !tbaa !534
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %do_reloc, align 8, !dbg !1672, !tbaa !534
  call void @walk_relocs(ptr noundef %1), !dbg !1673
  %2 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1674, !tbaa !1676
  %tobool1 = icmp ne i64 %2, 0, !dbg !1678
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !1679

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1680, !tbaa !539
  %tobool2 = icmp ne i32 %3, 0, !dbg !1680
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1681

if.then3:                                         ; preds = %land.lhs.true
  call void (ptr, ...) @die(ptr noundef @.str.73) #13, !dbg !1682
  unreachable, !dbg !1682

if.end4:                                          ; preds = %land.lhs.true, %if.end
  call void @sort_relocs(ptr noundef @relocs32), !dbg !1683
  call void @sort_relocs(ptr noundef @relocs16), !dbg !1684
  %4 = load i32, ptr %as_text.addr, align 4, !dbg !1685, !tbaa !539
  %tobool5 = icmp ne i32 %4, 0, !dbg !1685
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !1687

if.then6:                                         ; preds = %if.end4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.74), !dbg !1688
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.75), !dbg !1690
  store ptr @write32_as_text, ptr %write_reloc, align 8, !dbg !1691, !tbaa !534
  br label %if.end8, !dbg !1692

if.end8:                                          ; preds = %if.then6, %if.end4
  %5 = load i32, ptr %use_real_mode.addr, align 4, !dbg !1693, !tbaa !539
  %tobool9 = icmp ne i32 %5, 0, !dbg !1693
  br i1 %tobool9, label %if.then10, label %if.else28, !dbg !1695

if.then10:                                        ; preds = %if.end8
  %6 = load ptr, ptr %write_reloc, align 8, !dbg !1696, !tbaa !534
  %7 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1698, !tbaa !1676
  %conv = trunc i64 %7 to i32, !dbg !1699
  %8 = load ptr, ptr @stdout, align 8, !dbg !1700, !tbaa !534
  %call11 = call i32 %6(i32 noundef %conv, ptr noundef %8), !dbg !1696
  store i32 0, ptr %i, align 4, !dbg !1701, !tbaa !539
  br label %for.cond, !dbg !1703

for.cond:                                         ; preds = %for.inc, %if.then10
  %9 = load i32, ptr %i, align 4, !dbg !1704, !tbaa !539
  %conv12 = sext i32 %9 to i64, !dbg !1704
  %10 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs16, i32 0, i32 1), align 8, !dbg !1706, !tbaa !1676
  %cmp = icmp ult i64 %conv12, %10, !dbg !1707
  br i1 %cmp, label %for.body, label %for.end, !dbg !1708

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %write_reloc, align 8, !dbg !1709, !tbaa !534
  %12 = load ptr, ptr @relocs16, align 8, !dbg !1710, !tbaa !1711
  %13 = load i32, ptr %i, align 4, !dbg !1712, !tbaa !539
  %idxprom = sext i32 %13 to i64, !dbg !1713
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom, !dbg !1713
  %14 = load i32, ptr %arrayidx, align 4, !dbg !1713, !tbaa !539
  %15 = load ptr, ptr @stdout, align 8, !dbg !1714, !tbaa !534
  %call14 = call i32 %11(i32 noundef %14, ptr noundef %15), !dbg !1709
  br label %for.inc, !dbg !1709

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !1715, !tbaa !539
  %inc = add nsw i32 %16, 1, !dbg !1715
  store i32 %inc, ptr %i, align 4, !dbg !1715, !tbaa !539
  br label %for.cond, !dbg !1716, !llvm.loop !1717

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %write_reloc, align 8, !dbg !1719, !tbaa !534
  %18 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1720, !tbaa !1676
  %conv15 = trunc i64 %18 to i32, !dbg !1721
  %19 = load ptr, ptr @stdout, align 8, !dbg !1722, !tbaa !534
  %call16 = call i32 %17(i32 noundef %conv15, ptr noundef %19), !dbg !1719
  store i32 0, ptr %i, align 4, !dbg !1723, !tbaa !539
  br label %for.cond17, !dbg !1725

for.cond17:                                       ; preds = %for.inc25, %for.end
  %20 = load i32, ptr %i, align 4, !dbg !1726, !tbaa !539
  %conv18 = sext i32 %20 to i64, !dbg !1726
  %21 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1728, !tbaa !1676
  %cmp19 = icmp ult i64 %conv18, %21, !dbg !1729
  br i1 %cmp19, label %for.body21, label %for.end27, !dbg !1730

for.body21:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %write_reloc, align 8, !dbg !1731, !tbaa !534
  %23 = load ptr, ptr @relocs32, align 8, !dbg !1732, !tbaa !1711
  %24 = load i32, ptr %i, align 4, !dbg !1733, !tbaa !539
  %idxprom22 = sext i32 %24 to i64, !dbg !1734
  %arrayidx23 = getelementptr inbounds i32, ptr %23, i64 %idxprom22, !dbg !1734
  %25 = load i32, ptr %arrayidx23, align 4, !dbg !1734, !tbaa !539
  %26 = load ptr, ptr @stdout, align 8, !dbg !1735, !tbaa !534
  %call24 = call i32 %22(i32 noundef %25, ptr noundef %26), !dbg !1731
  br label %for.inc25, !dbg !1731

for.inc25:                                        ; preds = %for.body21
  %27 = load i32, ptr %i, align 4, !dbg !1736, !tbaa !539
  %inc26 = add nsw i32 %27, 1, !dbg !1736
  store i32 %inc26, ptr %i, align 4, !dbg !1736, !tbaa !539
  br label %for.cond17, !dbg !1737, !llvm.loop !1738

for.end27:                                        ; preds = %for.cond17
  br label %if.end41, !dbg !1740

if.else28:                                        ; preds = %if.end8
  %28 = load ptr, ptr %write_reloc, align 8, !dbg !1741, !tbaa !534
  %29 = load ptr, ptr @stdout, align 8, !dbg !1743, !tbaa !534
  %call29 = call i32 %28(i32 noundef 0, ptr noundef %29), !dbg !1741
  store i32 0, ptr %i, align 4, !dbg !1744, !tbaa !539
  br label %for.cond30, !dbg !1746

for.cond30:                                       ; preds = %for.inc38, %if.else28
  %30 = load i32, ptr %i, align 4, !dbg !1747, !tbaa !539
  %conv31 = sext i32 %30 to i64, !dbg !1747
  %31 = load i64, ptr getelementptr inbounds (%struct.relocs, ptr @relocs32, i32 0, i32 1), align 8, !dbg !1749, !tbaa !1676
  %cmp32 = icmp ult i64 %conv31, %31, !dbg !1750
  br i1 %cmp32, label %for.body34, label %for.end40, !dbg !1751

for.body34:                                       ; preds = %for.cond30
  %32 = load ptr, ptr %write_reloc, align 8, !dbg !1752, !tbaa !534
  %33 = load ptr, ptr @relocs32, align 8, !dbg !1753, !tbaa !1711
  %34 = load i32, ptr %i, align 4, !dbg !1754, !tbaa !539
  %idxprom35 = sext i32 %34 to i64, !dbg !1755
  %arrayidx36 = getelementptr inbounds i32, ptr %33, i64 %idxprom35, !dbg !1755
  %35 = load i32, ptr %arrayidx36, align 4, !dbg !1755, !tbaa !539
  %36 = load ptr, ptr @stdout, align 8, !dbg !1756, !tbaa !534
  %call37 = call i32 %32(i32 noundef %35, ptr noundef %36), !dbg !1752
  br label %for.inc38, !dbg !1752

for.inc38:                                        ; preds = %for.body34
  %37 = load i32, ptr %i, align 4, !dbg !1757, !tbaa !539
  %inc39 = add nsw i32 %37, 1, !dbg !1757
  store i32 %inc39, ptr %i, align 4, !dbg !1757, !tbaa !539
  br label %for.cond30, !dbg !1758, !llvm.loop !1759

for.end40:                                        ; preds = %for.cond30
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %for.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %do_reloc) #12, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 8, ptr %write_reloc) #12, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1761
  ret void, !dbg !1761
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1762 i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !1768 i64 @regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noreturn
declare !dbg !1775 void @die(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1778 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1784 ptr @strerror(i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1788 ptr @__errno_location() #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1793 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define internal zeroext i16 @elf16_to_cpu(i16 noundef zeroext %val) #0 !dbg !1798 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, ptr %val.addr, align 2, !tbaa !1803
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1802, metadata !DIExpression()), !dbg !1804
  %0 = load i16, ptr %val.addr, align 2, !dbg !1805, !tbaa !1803
  ret i16 %0, !dbg !1806
}

; Function Attrs: nounwind uwtable
define internal i32 @elf32_to_cpu(i32 noundef %val) #0 !dbg !1807 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1811, metadata !DIExpression()), !dbg !1812
  %0 = load i32, ptr %val.addr, align 4, !dbg !1813, !tbaa !539
  ret i32 %0, !dbg !1814
}

declare !dbg !1815 i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1818 noalias ptr @calloc(i64 noundef, i64 noundef) #8

; Function Attrs: nounwind allocsize(0)
declare !dbg !1822 noalias ptr @malloc(i64 noundef) #9

declare !dbg !1825 i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal ptr @sym_name(ptr noundef %sym_strtab, ptr noundef %sym) #0 !dbg !1828 {
entry:
  %sym_strtab.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %sym_strtab, ptr %sym_strtab.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym_strtab.addr, metadata !1832, metadata !DIExpression()), !dbg !1835
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1837
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1834, metadata !DIExpression()), !dbg !1838
  store ptr @.str.32, ptr %name, align 8, !dbg !1839, !tbaa !534
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !1840, !tbaa !534
  %st_name = getelementptr inbounds %struct.Elf32_Sym, ptr %0, i32 0, i32 0, !dbg !1842
  %1 = load i32, ptr %st_name, align 4, !dbg !1842, !tbaa !1210
  %tobool = icmp ne i32 %1, 0, !dbg !1840
  br i1 %tobool, label %if.then, label %if.else, !dbg !1843

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sym_strtab.addr, align 8, !dbg !1844, !tbaa !534
  %3 = load ptr, ptr %sym.addr, align 8, !dbg !1846, !tbaa !534
  %st_name1 = getelementptr inbounds %struct.Elf32_Sym, ptr %3, i32 0, i32 0, !dbg !1847
  %4 = load i32, ptr %st_name1, align 4, !dbg !1847, !tbaa !1210
  %idx.ext = zext i32 %4 to i64, !dbg !1848
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1848
  store ptr %add.ptr, ptr %name, align 8, !dbg !1849, !tbaa !534
  br label %if.end, !dbg !1850

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sym.addr, align 8, !dbg !1851, !tbaa !534
  %call = call i32 @sym_index(ptr noundef %5), !dbg !1853
  %call2 = call ptr @sec_name(i32 noundef %call), !dbg !1854
  store ptr %call2, ptr %name, align 8, !dbg !1855, !tbaa !534
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %name, align 8, !dbg !1856, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1857
  ret ptr %6, !dbg !1858
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_type(i32 noundef %type) #0 !dbg !309 {
entry:
  %type.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !313, metadata !DIExpression()), !dbg !1859
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1860
  call void @llvm.dbg.declare(metadata ptr %name, metadata !314, metadata !DIExpression()), !dbg !1861
  store ptr @.str.42, ptr %name, align 8, !dbg !1861, !tbaa !534
  %0 = load i32, ptr %type.addr, align 4, !dbg !1862, !tbaa !539
  %conv = zext i32 %0 to i64, !dbg !1862
  %cmp = icmp ult i64 %conv, 7, !dbg !1864
  br i1 %cmp, label %if.then, label %if.end, !dbg !1865

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1866, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !1868
  %arrayidx = getelementptr inbounds [7 x ptr], ptr @sym_type.type_name, i64 0, i64 %idxprom, !dbg !1868
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1868, !tbaa !534
  store ptr %2, ptr %name, align 8, !dbg !1869, !tbaa !534
  br label %if.end, !dbg !1870

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !1871, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1872
  ret ptr %3, !dbg !1873
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_bind(i32 noundef %bind) #0 !dbg !332 {
entry:
  %bind.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %bind, ptr %bind.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %bind.addr, metadata !334, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %name, metadata !335, metadata !DIExpression()), !dbg !1876
  store ptr @.str.46, ptr %name, align 8, !dbg !1876, !tbaa !534
  %0 = load i32, ptr %bind.addr, align 4, !dbg !1877, !tbaa !539
  %conv = zext i32 %0 to i64, !dbg !1877
  %cmp = icmp ult i64 %conv, 3, !dbg !1879
  br i1 %cmp, label %if.then, label %if.end, !dbg !1880

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %bind.addr, align 4, !dbg !1881, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !1883
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @sym_bind.bind_name, i64 0, i64 %idxprom, !dbg !1883
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1883, !tbaa !534
  store ptr %2, ptr %name, align 8, !dbg !1884, !tbaa !534
  br label %if.end, !dbg !1885

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !1886, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1887
  ret ptr %3, !dbg !1888
}

; Function Attrs: nounwind uwtable
define internal ptr @sym_visibility(i32 noundef %visibility) #0 !dbg !352 {
entry:
  %visibility.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %visibility, ptr %visibility.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %visibility.addr, metadata !354, metadata !DIExpression()), !dbg !1889
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %name, metadata !355, metadata !DIExpression()), !dbg !1891
  store ptr @.str.51, ptr %name, align 8, !dbg !1891, !tbaa !534
  %0 = load i32, ptr %visibility.addr, align 4, !dbg !1892, !tbaa !539
  %conv = zext i32 %0 to i64, !dbg !1892
  %cmp = icmp ult i64 %conv, 4, !dbg !1894
  br i1 %cmp, label %if.then, label %if.end, !dbg !1895

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %visibility.addr, align 4, !dbg !1896, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !1898
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @sym_visibility.visibility_name, i64 0, i64 %idxprom, !dbg !1898
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1898, !tbaa !534
  store ptr %2, ptr %name, align 8, !dbg !1899, !tbaa !534
  br label %if.end, !dbg !1900

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name, align 8, !dbg !1901, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1902
  ret ptr %3, !dbg !1903
}

; Function Attrs: nounwind uwtable
define internal ptr @sec_name(i32 noundef %shndx) #0 !dbg !1904 {
entry:
  %shndx.addr = alloca i32, align 4
  %sec_strtab = alloca ptr, align 8
  %name = alloca ptr, align 8
  store i32 %shndx, ptr %shndx.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %shndx.addr, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_strtab) #12, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %sec_strtab, metadata !1907, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1908, metadata !DIExpression()), !dbg !1913
  %0 = load ptr, ptr @secs, align 8, !dbg !1914, !tbaa !534
  %1 = load i32, ptr @shstrndx, align 4, !dbg !1915, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !1914
  %arrayidx = getelementptr inbounds %struct.section, ptr %0, i64 %idxprom, !dbg !1914
  %strtab = getelementptr inbounds %struct.section, ptr %arrayidx, i32 0, i32 5, !dbg !1916
  %2 = load ptr, ptr %strtab, align 8, !dbg !1916, !tbaa !1008
  store ptr %2, ptr %sec_strtab, align 8, !dbg !1917, !tbaa !534
  store ptr @.str.32, ptr %name, align 8, !dbg !1918, !tbaa !534
  %3 = load i32, ptr %shndx.addr, align 4, !dbg !1919, !tbaa !539
  %conv = zext i32 %3 to i64, !dbg !1919
  %4 = load i64, ptr @shnum, align 8, !dbg !1921, !tbaa !729
  %cmp = icmp ult i64 %conv, %4, !dbg !1922
  br i1 %cmp, label %if.then, label %if.else, !dbg !1923

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sec_strtab, align 8, !dbg !1924, !tbaa !534
  %6 = load ptr, ptr @secs, align 8, !dbg !1926, !tbaa !534
  %7 = load i32, ptr %shndx.addr, align 4, !dbg !1927, !tbaa !539
  %idxprom2 = zext i32 %7 to i64, !dbg !1926
  %arrayidx3 = getelementptr inbounds %struct.section, ptr %6, i64 %idxprom2, !dbg !1926
  %shdr = getelementptr inbounds %struct.section, ptr %arrayidx3, i32 0, i32 0, !dbg !1928
  %sh_name = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 0, !dbg !1929
  %8 = load i32, ptr %sh_name, align 8, !dbg !1929, !tbaa !887
  %idx.ext = zext i32 %8 to i64, !dbg !1930
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext, !dbg !1930
  store ptr %add.ptr, ptr %name, align 8, !dbg !1931, !tbaa !534
  br label %if.end12, !dbg !1932

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %shndx.addr, align 4, !dbg !1933, !tbaa !539
  %cmp4 = icmp eq i32 %9, 65521, !dbg !1935
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !1936

if.then6:                                         ; preds = %if.else
  store ptr @.str.33, ptr %name, align 8, !dbg !1937, !tbaa !534
  br label %if.end11, !dbg !1939

if.else7:                                         ; preds = %if.else
  %10 = load i32, ptr %shndx.addr, align 4, !dbg !1940, !tbaa !539
  %cmp8 = icmp eq i32 %10, 65522, !dbg !1942
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !1943

if.then10:                                        ; preds = %if.else7
  store ptr @.str.34, ptr %name, align 8, !dbg !1944, !tbaa !534
  br label %if.end, !dbg !1946

if.end:                                           ; preds = %if.then10, %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %11 = load ptr, ptr %name, align 8, !dbg !1947, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_strtab) #12, !dbg !1948
  ret ptr %11, !dbg !1949
}

; Function Attrs: nounwind uwtable
define internal i32 @sym_index(ptr noundef %sym) #0 !dbg !1950 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca ptr, align 8
  %symtab = alloca ptr, align 8
  %xsymtab = alloca ptr, align 8
  %offset = alloca i64, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !1954, metadata !DIExpression()), !dbg !1959
  call void @llvm.lifetime.start.p0(i64 8, ptr %symtab) #12, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %symtab, metadata !1955, metadata !DIExpression()), !dbg !1961
  %0 = load ptr, ptr @secs, align 8, !dbg !1962, !tbaa !534
  %1 = load i32, ptr @shsymtabndx, align 4, !dbg !1963, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !1962
  %arrayidx = getelementptr inbounds %struct.section, ptr %0, i64 %idxprom, !dbg !1962
  %symtab1 = getelementptr inbounds %struct.section, ptr %arrayidx, i32 0, i32 2, !dbg !1964
  %2 = load ptr, ptr %symtab1, align 8, !dbg !1964, !tbaa !1156
  store ptr %2, ptr %symtab, align 8, !dbg !1961, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %xsymtab) #12, !dbg !1965
  call void @llvm.dbg.declare(metadata ptr %xsymtab, metadata !1956, metadata !DIExpression()), !dbg !1966
  %3 = load ptr, ptr @secs, align 8, !dbg !1967, !tbaa !534
  %4 = load i32, ptr @shxsymtabndx, align 4, !dbg !1968, !tbaa !539
  %idxprom2 = zext i32 %4 to i64, !dbg !1967
  %arrayidx3 = getelementptr inbounds %struct.section, ptr %3, i64 %idxprom2, !dbg !1967
  %xsymtab4 = getelementptr inbounds %struct.section, ptr %arrayidx3, i32 0, i32 3, !dbg !1969
  %5 = load ptr, ptr %xsymtab4, align 8, !dbg !1969, !tbaa !1099
  store ptr %5, ptr %xsymtab, align 8, !dbg !1966, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !1970
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1957, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1958, metadata !DIExpression()), !dbg !1973
  %6 = load ptr, ptr %sym.addr, align 8, !dbg !1974, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %6, i32 0, i32 5, !dbg !1976
  %7 = load i16, ptr %st_shndx, align 2, !dbg !1976, !tbaa !1226
  %conv = zext i16 %7 to i32, !dbg !1974
  %cmp = icmp ne i32 %conv, 65535, !dbg !1977
  br i1 %cmp, label %if.then, label %if.end, !dbg !1978

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sym.addr, align 8, !dbg !1979, !tbaa !534
  %st_shndx6 = getelementptr inbounds %struct.Elf32_Sym, ptr %8, i32 0, i32 5, !dbg !1980
  %9 = load i16, ptr %st_shndx6, align 2, !dbg !1980, !tbaa !1226
  %conv7 = zext i16 %9 to i32, !dbg !1979
  store i32 %conv7, ptr %retval, align 4, !dbg !1981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1981

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %sym.addr, align 8, !dbg !1982, !tbaa !534
  %11 = ptrtoint ptr %10 to i64, !dbg !1983
  %12 = load ptr, ptr %symtab, align 8, !dbg !1984, !tbaa !534
  %13 = ptrtoint ptr %12 to i64, !dbg !1985
  %sub = sub i64 %11, %13, !dbg !1986
  store i64 %sub, ptr %offset, align 8, !dbg !1987, !tbaa !729
  %14 = load i64, ptr %offset, align 8, !dbg !1988, !tbaa !729
  %div = udiv i64 %14, 16, !dbg !1989
  %conv8 = trunc i64 %div to i32, !dbg !1988
  store i32 %conv8, ptr %index, align 4, !dbg !1990, !tbaa !539
  %15 = load ptr, ptr %xsymtab, align 8, !dbg !1991, !tbaa !534
  %16 = load i32, ptr %index, align 4, !dbg !1992, !tbaa !539
  %idxprom9 = sext i32 %16 to i64, !dbg !1991
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9, !dbg !1991
  %17 = load i32, ptr %arrayidx10, align 4, !dbg !1991, !tbaa !539
  %call = call i32 @elf32_to_cpu(i32 noundef %17), !dbg !1993
  store i32 %call, ptr %retval, align 4, !dbg !1994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1994

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %xsymtab) #12, !dbg !1995
  call void @llvm.lifetime.end.p0(i64 8, ptr %symtab) #12, !dbg !1995
  %18 = load i32, ptr %retval, align 4, !dbg !1995
  ret i32 %18, !dbg !1995
}

; Function Attrs: nounwind uwtable
define internal i32 @is_reloc(i32 noundef %type, ptr noundef %sym_name) #0 !dbg !1996 {
entry:
  %type.addr = alloca i32, align 4
  %sym_name.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2000, metadata !DIExpression()), !dbg !2002
  store ptr %sym_name, ptr %sym_name.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym_name.addr, metadata !2001, metadata !DIExpression()), !dbg !2003
  %0 = load ptr, ptr @sym_regex, align 8, !dbg !2004, !tbaa !534
  %1 = load i32, ptr %type.addr, align 4, !dbg !2005, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !2004
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !2004
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2004, !tbaa !534
  %tobool = icmp ne ptr %2, null, !dbg !2004
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2006

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !2007, !tbaa !539
  %idxprom1 = zext i32 %3 to i64, !dbg !2008
  %arrayidx2 = getelementptr inbounds [4 x %struct.re_pattern_buffer], ptr @sym_regex_c, i64 0, i64 %idxprom1, !dbg !2008
  %4 = load ptr, ptr %sym_name.addr, align 8, !dbg !2009, !tbaa !534
  %call = call i32 @regexec(ptr noundef %arrayidx2, ptr noundef %4, i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !2010
  %tobool3 = icmp ne i32 %call, 0, !dbg !2011
  %lnot = xor i1 %tobool3, true, !dbg !2011
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2012
  %land.ext = zext i1 %5 to i32, !dbg !2006
  ret i32 %land.ext, !dbg !2013
}

; Function Attrs: nounwind uwtable
define internal ptr @rel_type(i32 noundef %type) #0 !dbg !403 {
entry:
  %type.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !405, metadata !DIExpression()), !dbg !2014
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #12, !dbg !2015
  call void @llvm.dbg.declare(metadata ptr %name, metadata !406, metadata !DIExpression()), !dbg !2016
  store ptr @.str.70, ptr %name, align 8, !dbg !2016, !tbaa !534
  %0 = load i32, ptr %type.addr, align 4, !dbg !2017, !tbaa !539
  %conv = zext i32 %0 to i64, !dbg !2017
  %cmp = icmp ult i64 %conv, 24, !dbg !2019
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2020

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2021, !tbaa !539
  %idxprom = zext i32 %1 to i64, !dbg !2022
  %arrayidx = getelementptr inbounds [24 x ptr], ptr @rel_type.type_name, i64 0, i64 %idxprom, !dbg !2022
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2022, !tbaa !534
  %tobool = icmp ne ptr %2, null, !dbg !2022
  br i1 %tobool, label %if.then, label %if.end, !dbg !2023

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2024, !tbaa !539
  %idxprom2 = zext i32 %3 to i64, !dbg !2026
  %arrayidx3 = getelementptr inbounds [24 x ptr], ptr @rel_type.type_name, i64 0, i64 %idxprom2, !dbg !2026
  %4 = load ptr, ptr %arrayidx3, align 8, !dbg !2026, !tbaa !534
  store ptr %4, ptr %name, align 8, !dbg !2027, !tbaa !534
  br label %if.end, !dbg !2028

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %name, align 8, !dbg !2029, !tbaa !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #12, !dbg !2030
  ret ptr %5, !dbg !2031
}

declare !dbg !2032 i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @walk_relocs(ptr noundef %process) #0 !dbg !2043 {
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
  store ptr %process, ptr %process.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %process.addr, metadata !2047, metadata !DIExpression()), !dbg !2064
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2048, metadata !DIExpression()), !dbg !2066
  store i32 0, ptr %i, align 4, !dbg !2067, !tbaa !539
  br label %for.cond, !dbg !2068

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2069, !tbaa !539
  %conv = sext i32 %0 to i64, !dbg !2069
  %1 = load i64, ptr @shnum, align 8, !dbg !2070, !tbaa !729
  %cmp = icmp ult i64 %conv, %1, !dbg !2071
  br i1 %cmp, label %for.body, label %for.end36, !dbg !2072

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym_strtab) #12, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %sym_strtab, metadata !2049, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr %sh_symtab) #12, !dbg !2075
  call void @llvm.dbg.declare(metadata ptr %sh_symtab, metadata !2053, metadata !DIExpression()), !dbg !2076
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_applies) #12, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %sec_applies, metadata !2054, metadata !DIExpression()), !dbg !2078
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec_symtab) #12, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %sec_symtab, metadata !2055, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2056, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #12, !dbg !2082
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !2057, metadata !DIExpression()), !dbg !2083
  %2 = load ptr, ptr @secs, align 8, !dbg !2084, !tbaa !534
  %3 = load i32, ptr %i, align 4, !dbg !2085, !tbaa !539
  %idxprom = sext i32 %3 to i64, !dbg !2084
  %arrayidx = getelementptr inbounds %struct.section, ptr %2, i64 %idxprom, !dbg !2084
  store ptr %arrayidx, ptr %sec, align 8, !dbg !2083, !tbaa !534
  %4 = load ptr, ptr %sec, align 8, !dbg !2086, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %4, i32 0, i32 0, !dbg !2088
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 1, !dbg !2089
  %5 = load i32, ptr %sh_type, align 4, !dbg !2089, !tbaa !895
  %cmp2 = icmp ne i32 %5, 9, !dbg !2090
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2091

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2092

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %sec, align 8, !dbg !2094, !tbaa !534
  %link = getelementptr inbounds %struct.section, ptr %6, i32 0, i32 1, !dbg !2095
  %7 = load ptr, ptr %link, align 8, !dbg !2095, !tbaa !964
  store ptr %7, ptr %sec_symtab, align 8, !dbg !2096, !tbaa !534
  %8 = load ptr, ptr @secs, align 8, !dbg !2097, !tbaa !534
  %9 = load ptr, ptr %sec, align 8, !dbg !2098, !tbaa !534
  %shdr4 = getelementptr inbounds %struct.section, ptr %9, i32 0, i32 0, !dbg !2099
  %sh_info = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr4, i32 0, i32 7, !dbg !2100
  %10 = load i32, ptr %sh_info, align 4, !dbg !2100, !tbaa !935
  %idxprom5 = zext i32 %10 to i64, !dbg !2097
  %arrayidx6 = getelementptr inbounds %struct.section, ptr %8, i64 %idxprom5, !dbg !2097
  store ptr %arrayidx6, ptr %sec_applies, align 8, !dbg !2101, !tbaa !534
  %11 = load ptr, ptr %sec_applies, align 8, !dbg !2102, !tbaa !534
  %shdr7 = getelementptr inbounds %struct.section, ptr %11, i32 0, i32 0, !dbg !2104
  %sh_flags = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr7, i32 0, i32 2, !dbg !2105
  %12 = load i32, ptr %sh_flags, align 8, !dbg !2105, !tbaa !902
  %and = and i32 %12, 2, !dbg !2106
  %tobool = icmp ne i32 %and, 0, !dbg !2106
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !2107

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2108

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %sec_applies, align 8, !dbg !2110, !tbaa !534
  %shdr10 = getelementptr inbounds %struct.section, ptr %13, i32 0, i32 0, !dbg !2112
  %sh_type11 = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr10, i32 0, i32 1, !dbg !2113
  %14 = load i32, ptr %sh_type11, align 4, !dbg !2113, !tbaa !895
  %cmp12 = icmp eq i32 %14, 7, !dbg !2114
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2115

if.then14:                                        ; preds = %if.end9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2116

if.end15:                                         ; preds = %if.end9
  %15 = load ptr, ptr %sec_symtab, align 8, !dbg !2117, !tbaa !534
  %symtab = getelementptr inbounds %struct.section, ptr %15, i32 0, i32 2, !dbg !2118
  %16 = load ptr, ptr %symtab, align 8, !dbg !2118, !tbaa !1156
  store ptr %16, ptr %sh_symtab, align 8, !dbg !2119, !tbaa !534
  %17 = load ptr, ptr %sec_symtab, align 8, !dbg !2120, !tbaa !534
  %link16 = getelementptr inbounds %struct.section, ptr %17, i32 0, i32 1, !dbg !2121
  %18 = load ptr, ptr %link16, align 8, !dbg !2121, !tbaa !964
  %strtab = getelementptr inbounds %struct.section, ptr %18, i32 0, i32 5, !dbg !2122
  %19 = load ptr, ptr %strtab, align 8, !dbg !2122, !tbaa !1008
  store ptr %19, ptr %sym_strtab, align 8, !dbg !2123, !tbaa !534
  store i32 0, ptr %j, align 4, !dbg !2124, !tbaa !539
  br label %for.cond17, !dbg !2125

for.cond17:                                       ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %j, align 4, !dbg !2126, !tbaa !539
  %conv18 = sext i32 %20 to i64, !dbg !2126
  %21 = load ptr, ptr %sec, align 8, !dbg !2127, !tbaa !534
  %shdr19 = getelementptr inbounds %struct.section, ptr %21, i32 0, i32 0, !dbg !2128
  %sh_size = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr19, i32 0, i32 5, !dbg !2129
  %22 = load i32, ptr %sh_size, align 4, !dbg !2129, !tbaa !922
  %conv20 = zext i32 %22 to i64, !dbg !2127
  %div = udiv i64 %conv20, 8, !dbg !2130
  %cmp21 = icmp ult i64 %conv18, %div, !dbg !2131
  br i1 %cmp21, label %for.body23, label %for.end, !dbg !2132

for.body23:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #12, !dbg !2133
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !2058, metadata !DIExpression()), !dbg !2134
  %23 = load ptr, ptr %sec, align 8, !dbg !2135, !tbaa !534
  %reltab = getelementptr inbounds %struct.section, ptr %23, i32 0, i32 4, !dbg !2136
  %24 = load ptr, ptr %reltab, align 8, !dbg !2136, !tbaa !1288
  %25 = load i32, ptr %j, align 4, !dbg !2137, !tbaa !539
  %idxprom24 = sext i32 %25 to i64, !dbg !2135
  %arrayidx25 = getelementptr inbounds %struct.Elf32_Rel, ptr %24, i64 %idxprom24, !dbg !2135
  store ptr %arrayidx25, ptr %rel, align 8, !dbg !2134, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #12, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %sym, metadata !2062, metadata !DIExpression()), !dbg !2139
  %26 = load ptr, ptr %sh_symtab, align 8, !dbg !2140, !tbaa !534
  %27 = load ptr, ptr %rel, align 8, !dbg !2141, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %27, i32 0, i32 1, !dbg !2141
  %28 = load i32, ptr %r_info, align 4, !dbg !2141, !tbaa !1351
  %shr = lshr i32 %28, 8, !dbg !2141
  %idxprom26 = zext i32 %shr to i64, !dbg !2140
  %arrayidx27 = getelementptr inbounds %struct.Elf32_Sym, ptr %26, i64 %idxprom26, !dbg !2140
  store ptr %arrayidx27, ptr %sym, align 8, !dbg !2139, !tbaa !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %symname) #12, !dbg !2142
  call void @llvm.dbg.declare(metadata ptr %symname, metadata !2063, metadata !DIExpression()), !dbg !2143
  %29 = load ptr, ptr %sym_strtab, align 8, !dbg !2144, !tbaa !534
  %30 = load ptr, ptr %sym, align 8, !dbg !2145, !tbaa !534
  %call = call ptr @sym_name(ptr noundef %29, ptr noundef %30), !dbg !2146
  store ptr %call, ptr %symname, align 8, !dbg !2143, !tbaa !534
  %31 = load ptr, ptr %process.addr, align 8, !dbg !2147, !tbaa !534
  %32 = load ptr, ptr %sec, align 8, !dbg !2148, !tbaa !534
  %33 = load ptr, ptr %rel, align 8, !dbg !2149, !tbaa !534
  %34 = load ptr, ptr %sym, align 8, !dbg !2150, !tbaa !534
  %35 = load ptr, ptr %symname, align 8, !dbg !2151, !tbaa !534
  %call28 = call i32 %31(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35), !dbg !2147
  call void @llvm.lifetime.end.p0(i64 8, ptr %symname) #12, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #12, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #12, !dbg !2152
  br label %for.inc, !dbg !2153

for.inc:                                          ; preds = %for.body23
  %36 = load i32, ptr %j, align 4, !dbg !2154, !tbaa !539
  %inc = add nsw i32 %36, 1, !dbg !2154
  store i32 %inc, ptr %j, align 4, !dbg !2154, !tbaa !539
  br label %for.cond17, !dbg !2155, !llvm.loop !2156

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2158
  br label %cleanup, !dbg !2158

cleanup:                                          ; preds = %for.end, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #12, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_symtab) #12, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec_applies) #12, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %sh_symtab) #12, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym_strtab) #12, !dbg !2158
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc34
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc34, !dbg !2159

for.inc34:                                        ; preds = %cleanup.cont, %cleanup
  %37 = load i32, ptr %i, align 4, !dbg !2160, !tbaa !539
  %inc35 = add nsw i32 %37, 1, !dbg !2160
  store i32 %inc35, ptr %i, align 4, !dbg !2160, !tbaa !539
  br label %for.cond, !dbg !2161, !llvm.loop !2162

for.end36:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2164
  ret void, !dbg !2164

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @do_reloc_info(ptr noundef %sec, ptr noundef %rel, ptr noundef %sym, ptr noundef %symname) #0 !dbg !2165 {
entry:
  %sec.addr = alloca ptr, align 8
  %rel.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  store ptr %sec, ptr %sec.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !2167, metadata !DIExpression()), !dbg !2171
  store ptr %rel, ptr %rel.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %rel.addr, metadata !2168, metadata !DIExpression()), !dbg !2172
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2169, metadata !DIExpression()), !dbg !2173
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2170, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %sec.addr, align 8, !dbg !2175, !tbaa !534
  %shdr = getelementptr inbounds %struct.section, ptr %0, i32 0, i32 0, !dbg !2176
  %sh_info = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr, i32 0, i32 7, !dbg !2177
  %1 = load i32, ptr %sh_info, align 4, !dbg !2177, !tbaa !935
  %call = call ptr @sec_name(i32 noundef %1), !dbg !2178
  %2 = load ptr, ptr %rel.addr, align 8, !dbg !2179, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %2, i32 0, i32 1, !dbg !2179
  %3 = load i32, ptr %r_info, align 4, !dbg !2179, !tbaa !1351
  %and = and i32 %3, 255, !dbg !2179
  %call1 = call ptr @rel_type(i32 noundef %and), !dbg !2180
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !2181, !tbaa !534
  %5 = load ptr, ptr %sym.addr, align 8, !dbg !2182, !tbaa !534
  %call2 = call i32 @sym_index(ptr noundef %5), !dbg !2183
  %call3 = call ptr @sec_name(i32 noundef %call2), !dbg !2184
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.72, ptr noundef %call, ptr noundef %call1, ptr noundef %4, ptr noundef %call3), !dbg !2185
  ret i32 0, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal i32 @write32(i32 noundef %v, ptr noundef %f) #0 !dbg !2187 {
entry:
  %v.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %buf = alloca [4 x i8], align 1
  store i32 %v, ptr %v.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2189, metadata !DIExpression()), !dbg !2193
  store ptr %f, ptr %f.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #12, !dbg !2195
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2191, metadata !DIExpression()), !dbg !2196
  %0 = load i32, ptr %v.addr, align 4, !dbg !2197, !tbaa !539
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !2198
  call void @put_unaligned_le32(i32 noundef %0, ptr noundef %arraydecay), !dbg !2199
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0, !dbg !2200
  %1 = load ptr, ptr %f.addr, align 8, !dbg !2201, !tbaa !534
  %call = call i64 @fwrite(ptr noundef %arraydecay1, i64 noundef 1, i64 noundef 4, ptr noundef %1), !dbg !2202
  %cmp = icmp eq i64 %call, 4, !dbg !2203
  %2 = zext i1 %cmp to i64, !dbg !2202
  %cond = select i1 %cmp, i32 0, i32 -1, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #12, !dbg !2204
  ret i32 %cond, !dbg !2205
}

; Function Attrs: nounwind uwtable
define internal i32 @do_reloc32(ptr noundef %sec, ptr noundef %rel, ptr noundef %sym, ptr noundef %symname) #0 !dbg !2206 {
entry:
  %sec.addr = alloca ptr, align 8
  %rel.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %r_type = alloca i32, align 4
  %shn_abs = alloca i32, align 4
  store ptr %sec, ptr %sec.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !2208, metadata !DIExpression()), !dbg !2214
  store ptr %rel, ptr %rel.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %rel.addr, metadata !2209, metadata !DIExpression()), !dbg !2215
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2210, metadata !DIExpression()), !dbg !2216
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2211, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_type) #12, !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %r_type, metadata !2212, metadata !DIExpression()), !dbg !2219
  %0 = load ptr, ptr %rel.addr, align 8, !dbg !2220, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %0, i32 0, i32 1, !dbg !2220
  %1 = load i32, ptr %r_info, align 4, !dbg !2220, !tbaa !1351
  %and = and i32 %1, 255, !dbg !2220
  store i32 %and, ptr %r_type, align 4, !dbg !2219, !tbaa !539
  call void @llvm.lifetime.start.p0(i64 4, ptr %shn_abs) #12, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %shn_abs, metadata !2213, metadata !DIExpression()), !dbg !2222
  %2 = load ptr, ptr %sym.addr, align 8, !dbg !2223, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i32 0, i32 5, !dbg !2224
  %3 = load i16, ptr %st_shndx, align 2, !dbg !2224, !tbaa !1226
  %conv = zext i16 %3 to i32, !dbg !2223
  %cmp = icmp eq i32 %conv, 65521, !dbg !2225
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2226

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !2227, !tbaa !534
  %call = call i32 @is_reloc(i32 noundef 1, ptr noundef %4), !dbg !2228
  %tobool = icmp ne i32 %call, 0, !dbg !2229
  %lnot = xor i1 %tobool, true, !dbg !2229
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2230
  %land.ext = zext i1 %5 to i32, !dbg !2226
  store i32 %land.ext, ptr %shn_abs, align 4, !dbg !2222, !tbaa !539
  %6 = load i32, ptr %r_type, align 4, !dbg !2231, !tbaa !539
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 21, label %sw.bb
    i32 23, label %sw.bb
    i32 4, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !2232

sw.bb:                                            ; preds = %land.end, %land.end, %land.end, %land.end, %land.end
  br label %sw.epilog, !dbg !2233

sw.bb2:                                           ; preds = %land.end
  %7 = load i32, ptr %shn_abs, align 4, !dbg !2235, !tbaa !539
  %tobool3 = icmp ne i32 %7, 0, !dbg !2235
  br i1 %tobool3, label %if.then, label %if.end8, !dbg !2237

if.then:                                          ; preds = %sw.bb2
  %8 = load ptr, ptr %symname.addr, align 8, !dbg !2238, !tbaa !534
  %call4 = call i32 @is_reloc(i32 noundef 0, ptr noundef %8), !dbg !2241
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2241
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2242

if.then6:                                         ; preds = %if.then
  br label %sw.epilog, !dbg !2243

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %r_type, align 4, !dbg !2244, !tbaa !539
  %call7 = call ptr @rel_type(i32 noundef %9), !dbg !2245
  %10 = load ptr, ptr %symname.addr, align 8, !dbg !2246, !tbaa !534
  call void (ptr, ...) @die(ptr noundef @.str.76, ptr noundef %call7, ptr noundef %10) #13, !dbg !2247
  unreachable, !dbg !2247

if.end8:                                          ; preds = %sw.bb2
  %11 = load ptr, ptr %rel.addr, align 8, !dbg !2248, !tbaa !534
  %r_offset = getelementptr inbounds %struct.Elf32_Rel, ptr %11, i32 0, i32 0, !dbg !2249
  %12 = load i32, ptr %r_offset, align 4, !dbg !2249, !tbaa !1345
  call void @add_reloc(ptr noundef @relocs32, i32 noundef %12), !dbg !2250
  br label %sw.epilog, !dbg !2251

sw.default:                                       ; preds = %land.end
  %13 = load i32, ptr %r_type, align 4, !dbg !2252, !tbaa !539
  %call9 = call ptr @rel_type(i32 noundef %13), !dbg !2253
  %14 = load i32, ptr %r_type, align 4, !dbg !2254, !tbaa !539
  call void (ptr, ...) @die(ptr noundef @.str.77, ptr noundef %call9, i32 noundef %14) #13, !dbg !2255
  unreachable, !dbg !2255

sw.epilog:                                        ; preds = %if.end8, %if.then6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %shn_abs) #12, !dbg !2256
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_type) #12, !dbg !2256
  ret i32 0, !dbg !2257
}

; Function Attrs: nounwind uwtable
define internal i32 @do_reloc_real(ptr noundef %sec, ptr noundef %rel, ptr noundef %sym, ptr noundef %symname) #0 !dbg !2258 {
entry:
  %sec.addr = alloca ptr, align 8
  %rel.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %symname.addr = alloca ptr, align 8
  %r_type = alloca i32, align 4
  %shn_abs = alloca i32, align 4
  store ptr %sec, ptr %sec.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sec.addr, metadata !2260, metadata !DIExpression()), !dbg !2266
  store ptr %rel, ptr %rel.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %rel.addr, metadata !2261, metadata !DIExpression()), !dbg !2267
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2262, metadata !DIExpression()), !dbg !2268
  store ptr %symname, ptr %symname.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %symname.addr, metadata !2263, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_type) #12, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %r_type, metadata !2264, metadata !DIExpression()), !dbg !2271
  %0 = load ptr, ptr %rel.addr, align 8, !dbg !2272, !tbaa !534
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %0, i32 0, i32 1, !dbg !2272
  %1 = load i32, ptr %r_info, align 4, !dbg !2272, !tbaa !1351
  %and = and i32 %1, 255, !dbg !2272
  store i32 %and, ptr %r_type, align 4, !dbg !2271, !tbaa !539
  call void @llvm.lifetime.start.p0(i64 4, ptr %shn_abs) #12, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %shn_abs, metadata !2265, metadata !DIExpression()), !dbg !2274
  %2 = load ptr, ptr %sym.addr, align 8, !dbg !2275, !tbaa !534
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i32 0, i32 5, !dbg !2276
  %3 = load i16, ptr %st_shndx, align 2, !dbg !2276, !tbaa !1226
  %conv = zext i16 %3 to i32, !dbg !2275
  %cmp = icmp eq i32 %conv, 65521, !dbg !2277
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2278

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %symname.addr, align 8, !dbg !2279, !tbaa !534
  %call = call i32 @is_reloc(i32 noundef 1, ptr noundef %4), !dbg !2280
  %tobool = icmp ne i32 %call, 0, !dbg !2281
  %lnot = xor i1 %tobool, true, !dbg !2281
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2282
  %land.ext = zext i1 %5 to i32, !dbg !2278
  store i32 %land.ext, ptr %shn_abs, align 4, !dbg !2274, !tbaa !539
  %6 = load i32, ptr %r_type, align 4, !dbg !2283, !tbaa !539
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 21, label %sw.bb
    i32 23, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb2
    i32 1, label %sw.bb18
  ], !dbg !2284

sw.bb:                                            ; preds = %land.end, %land.end, %land.end, %land.end, %land.end
  br label %sw.epilog, !dbg !2285

sw.bb2:                                           ; preds = %land.end
  %7 = load i32, ptr %shn_abs, align 4, !dbg !2287, !tbaa !539
  %tobool3 = icmp ne i32 %7, 0, !dbg !2287
  br i1 %tobool3, label %if.then, label %if.else, !dbg !2289

if.then:                                          ; preds = %sw.bb2
  %8 = load ptr, ptr %symname.addr, align 8, !dbg !2290, !tbaa !534
  %call4 = call i32 @is_reloc(i32 noundef 0, ptr noundef %8), !dbg !2293
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2293
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2294

if.then6:                                         ; preds = %if.then
  br label %sw.epilog, !dbg !2295

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %symname.addr, align 8, !dbg !2296, !tbaa !534
  %call7 = call i32 @is_reloc(i32 noundef 2, ptr noundef %9), !dbg !2298
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2298
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2299

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %rel.addr, align 8, !dbg !2300, !tbaa !534
  %r_offset = getelementptr inbounds %struct.Elf32_Rel, ptr %10, i32 0, i32 0, !dbg !2302
  %11 = load i32, ptr %r_offset, align 4, !dbg !2302, !tbaa !1345
  call void @add_reloc(ptr noundef @relocs16, i32 noundef %11), !dbg !2303
  br label %sw.epilog, !dbg !2304

if.end10:                                         ; preds = %if.end
  br label %if.end15, !dbg !2305

if.else:                                          ; preds = %sw.bb2
  %12 = load ptr, ptr %symname.addr, align 8, !dbg !2306, !tbaa !534
  %call11 = call i32 @is_reloc(i32 noundef 3, ptr noundef %12), !dbg !2309
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2309
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2310

if.then13:                                        ; preds = %if.else
  br label %sw.epilog, !dbg !2311

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end10
  %13 = load i32, ptr %shn_abs, align 4, !dbg !2312, !tbaa !539
  %tobool16 = icmp ne i32 %13, 0, !dbg !2312
  %14 = zext i1 %tobool16 to i64, !dbg !2312
  %cond = select i1 %tobool16, ptr @.str.80, ptr @.str.81, !dbg !2312
  %15 = load i32, ptr %r_type, align 4, !dbg !2313, !tbaa !539
  %call17 = call ptr @rel_type(i32 noundef %15), !dbg !2314
  %16 = load ptr, ptr %symname.addr, align 8, !dbg !2315, !tbaa !534
  call void (ptr, ...) @die(ptr noundef @.str.79, ptr noundef %cond, ptr noundef %call17, ptr noundef %16) #13, !dbg !2316
  unreachable, !dbg !2316

sw.bb18:                                          ; preds = %land.end
  %17 = load i32, ptr %shn_abs, align 4, !dbg !2317, !tbaa !539
  %tobool19 = icmp ne i32 %17, 0, !dbg !2317
  br i1 %tobool19, label %if.then20, label %if.else30, !dbg !2319

if.then20:                                        ; preds = %sw.bb18
  %18 = load ptr, ptr %symname.addr, align 8, !dbg !2320, !tbaa !534
  %call21 = call i32 @is_reloc(i32 noundef 0, ptr noundef %18), !dbg !2323
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2323
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2324

if.then23:                                        ; preds = %if.then20
  br label %sw.epilog, !dbg !2325

if.end24:                                         ; preds = %if.then20
  %19 = load ptr, ptr %symname.addr, align 8, !dbg !2326, !tbaa !534
  %call25 = call i32 @is_reloc(i32 noundef 1, ptr noundef %19), !dbg !2328
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2328
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !2329

if.then27:                                        ; preds = %if.end24
  %20 = load ptr, ptr %rel.addr, align 8, !dbg !2330, !tbaa !534
  %r_offset28 = getelementptr inbounds %struct.Elf32_Rel, ptr %20, i32 0, i32 0, !dbg !2332
  %21 = load i32, ptr %r_offset28, align 4, !dbg !2332, !tbaa !1345
  call void @add_reloc(ptr noundef @relocs32, i32 noundef %21), !dbg !2333
  br label %sw.epilog, !dbg !2334

if.end29:                                         ; preds = %if.end24
  br label %if.end36, !dbg !2335

if.else30:                                        ; preds = %sw.bb18
  %22 = load ptr, ptr %symname.addr, align 8, !dbg !2336, !tbaa !534
  %call31 = call i32 @is_reloc(i32 noundef 3, ptr noundef %22), !dbg !2339
  %tobool32 = icmp ne i32 %call31, 0, !dbg !2339
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2340

if.then33:                                        ; preds = %if.else30
  %23 = load ptr, ptr %rel.addr, align 8, !dbg !2341, !tbaa !534
  %r_offset34 = getelementptr inbounds %struct.Elf32_Rel, ptr %23, i32 0, i32 0, !dbg !2342
  %24 = load i32, ptr %r_offset34, align 4, !dbg !2342, !tbaa !1345
  call void @add_reloc(ptr noundef @relocs32, i32 noundef %24), !dbg !2343
  br label %if.end35, !dbg !2343

if.end35:                                         ; preds = %if.then33, %if.else30
  br label %sw.epilog, !dbg !2344

if.end36:                                         ; preds = %if.end29
  %25 = load i32, ptr %shn_abs, align 4, !dbg !2345, !tbaa !539
  %tobool37 = icmp ne i32 %25, 0, !dbg !2345
  %26 = zext i1 %tobool37 to i64, !dbg !2345
  %cond38 = select i1 %tobool37, ptr @.str.80, ptr @.str.81, !dbg !2345
  %27 = load i32, ptr %r_type, align 4, !dbg !2346, !tbaa !539
  %call39 = call ptr @rel_type(i32 noundef %27), !dbg !2347
  %28 = load ptr, ptr %symname.addr, align 8, !dbg !2348, !tbaa !534
  call void (ptr, ...) @die(ptr noundef @.str.79, ptr noundef %cond38, ptr noundef %call39, ptr noundef %28) #13, !dbg !2349
  unreachable, !dbg !2349

sw.default:                                       ; preds = %land.end
  %29 = load i32, ptr %r_type, align 4, !dbg !2350, !tbaa !539
  %call40 = call ptr @rel_type(i32 noundef %29), !dbg !2351
  %30 = load i32, ptr %r_type, align 4, !dbg !2352, !tbaa !539
  call void (ptr, ...) @die(ptr noundef @.str.77, ptr noundef %call40, i32 noundef %30) #13, !dbg !2353
  unreachable, !dbg !2353

sw.epilog:                                        ; preds = %if.end35, %if.then27, %if.then23, %if.then13, %if.then9, %if.then6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %shn_abs) #12, !dbg !2354
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_type) #12, !dbg !2354
  ret i32 0, !dbg !2355
}

; Function Attrs: nounwind uwtable
define internal void @sort_relocs(ptr noundef %r) #0 !dbg !2356 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2363, !tbaa !534
  %offset = getelementptr inbounds %struct.relocs, ptr %0, i32 0, i32 0, !dbg !2364
  %1 = load ptr, ptr %offset, align 8, !dbg !2364, !tbaa !1711
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2365, !tbaa !534
  %count = getelementptr inbounds %struct.relocs, ptr %2, i32 0, i32 1, !dbg !2366
  %3 = load i64, ptr %count, align 8, !dbg !2366, !tbaa !1676
  call void @qsort(ptr noundef %1, i64 noundef %3, i64 noundef 4, ptr noundef @cmp_relocs), !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: nounwind uwtable
define internal i32 @write32_as_text(i32 noundef %v, ptr noundef %f) #0 !dbg !2369 {
entry:
  %v.addr = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  store i32 %v, ptr %v.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2371, metadata !DIExpression()), !dbg !2373
  store ptr %f, ptr %f.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2372, metadata !DIExpression()), !dbg !2374
  %0 = load ptr, ptr %f.addr, align 8, !dbg !2375, !tbaa !534
  %1 = load i32, ptr %v.addr, align 4, !dbg !2376, !tbaa !539
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.82, i32 noundef %1), !dbg !2377
  %cmp = icmp sgt i32 %call, 0, !dbg !2378
  %2 = zext i1 %cmp to i64, !dbg !2377
  %cond = select i1 %cmp, i32 0, i32 -1, !dbg !2377
  ret i32 %cond, !dbg !2379
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @put_unaligned_le32(i32 noundef %val, ptr noundef %p) #10 !dbg !2380 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  store ptr %p, ptr %p.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %0 = load i32, ptr %val.addr, align 4, !dbg !2389, !tbaa !539
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2390, !tbaa !534
  call void @__put_unaligned_le32(i32 noundef %0, ptr noundef %1), !dbg !2391
  ret void, !dbg !2392
}

declare !dbg !2393 i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @__put_unaligned_le32(i32 noundef %val, ptr noundef %p) #10 !dbg !2397 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2404, metadata !DIExpression()), !dbg !2406
  store ptr %p, ptr %p.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2405, metadata !DIExpression()), !dbg !2407
  %0 = load i32, ptr %val.addr, align 4, !dbg !2408, !tbaa !539
  %shr = lshr i32 %0, 16, !dbg !2409
  %conv = trunc i32 %shr to i16, !dbg !2408
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2410, !tbaa !534
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 2, !dbg !2411
  call void @__put_unaligned_le16(i16 noundef zeroext %conv, ptr noundef %add.ptr), !dbg !2412
  %2 = load i32, ptr %val.addr, align 4, !dbg !2413, !tbaa !539
  %conv1 = trunc i32 %2 to i16, !dbg !2413
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2414, !tbaa !534
  call void @__put_unaligned_le16(i16 noundef zeroext %conv1, ptr noundef %3), !dbg !2415
  ret void, !dbg !2416
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__put_unaligned_le16(i16 noundef zeroext %val, ptr noundef %p) #10 !dbg !2417 {
entry:
  %val.addr = alloca i16, align 2
  %p.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2, !tbaa !1803
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2421, metadata !DIExpression()), !dbg !2423
  store ptr %p, ptr %p.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2422, metadata !DIExpression()), !dbg !2424
  %0 = load i16, ptr %val.addr, align 2, !dbg !2425, !tbaa !1803
  %conv = trunc i16 %0 to i8, !dbg !2425
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2426, !tbaa !534
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !2426
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !2426, !tbaa !534
  store i8 %conv, ptr %1, align 1, !dbg !2427, !tbaa !668
  %2 = load i16, ptr %val.addr, align 2, !dbg !2428, !tbaa !1803
  %conv1 = zext i16 %2 to i32, !dbg !2428
  %shr = ashr i32 %conv1, 8, !dbg !2429
  %conv2 = trunc i32 %shr to i8, !dbg !2428
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2430, !tbaa !534
  %incdec.ptr3 = getelementptr inbounds i8, ptr %3, i32 1, !dbg !2430
  store ptr %incdec.ptr3, ptr %p.addr, align 8, !dbg !2430, !tbaa !534
  store i8 %conv2, ptr %3, align 1, !dbg !2431, !tbaa !668
  ret void, !dbg !2432
}

; Function Attrs: nounwind uwtable
define internal void @add_reloc(ptr noundef %r, i32 noundef %offset) #0 !dbg !2433 {
entry:
  %r.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %newsize = alloca i64, align 8
  %mem = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2437, metadata !DIExpression()), !dbg !2443
  store i32 %offset, ptr %offset.addr, align 4, !tbaa !539
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2438, metadata !DIExpression()), !dbg !2444
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2445, !tbaa !534
  %count = getelementptr inbounds %struct.relocs, ptr %0, i32 0, i32 1, !dbg !2446
  %1 = load i64, ptr %count, align 8, !dbg !2446, !tbaa !1676
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2447, !tbaa !534
  %size = getelementptr inbounds %struct.relocs, ptr %2, i32 0, i32 2, !dbg !2448
  %3 = load i64, ptr %size, align 8, !dbg !2448, !tbaa !2449
  %cmp = icmp eq i64 %1, %3, !dbg !2450
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2451

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %newsize) #12, !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %newsize, metadata !2439, metadata !DIExpression()), !dbg !2453
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2454, !tbaa !534
  %size1 = getelementptr inbounds %struct.relocs, ptr %4, i32 0, i32 2, !dbg !2455
  %5 = load i64, ptr %size1, align 8, !dbg !2455, !tbaa !2449
  %add = add i64 %5, 50000, !dbg !2456
  store i64 %add, ptr %newsize, align 8, !dbg !2453, !tbaa !729
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #12, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !2442, metadata !DIExpression()), !dbg !2458
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2459, !tbaa !534
  %offset2 = getelementptr inbounds %struct.relocs, ptr %6, i32 0, i32 0, !dbg !2460
  %7 = load ptr, ptr %offset2, align 8, !dbg !2460, !tbaa !1711
  %8 = load i64, ptr %newsize, align 8, !dbg !2461, !tbaa !729
  %mul = mul i64 %8, 4, !dbg !2462
  %call = call ptr @realloc(ptr noundef %7, i64 noundef %mul) #18, !dbg !2463
  store ptr %call, ptr %mem, align 8, !dbg !2458, !tbaa !534
  %9 = load ptr, ptr %mem, align 8, !dbg !2464, !tbaa !534
  %tobool = icmp ne ptr %9, null, !dbg !2464
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2466

if.then3:                                         ; preds = %if.then
  %10 = load i64, ptr %newsize, align 8, !dbg !2467, !tbaa !729
  call void (ptr, ...) @die(ptr noundef @.str.78, i64 noundef %10) #13, !dbg !2468
  unreachable, !dbg !2468

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %mem, align 8, !dbg !2469, !tbaa !534
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2470, !tbaa !534
  %offset4 = getelementptr inbounds %struct.relocs, ptr %12, i32 0, i32 0, !dbg !2471
  store ptr %11, ptr %offset4, align 8, !dbg !2472, !tbaa !1711
  %13 = load i64, ptr %newsize, align 8, !dbg !2473, !tbaa !729
  %14 = load ptr, ptr %r.addr, align 8, !dbg !2474, !tbaa !534
  %size5 = getelementptr inbounds %struct.relocs, ptr %14, i32 0, i32 2, !dbg !2475
  store i64 %13, ptr %size5, align 8, !dbg !2476, !tbaa !2449
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #12, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 8, ptr %newsize) #12, !dbg !2477
  br label %if.end6, !dbg !2478

if.end6:                                          ; preds = %if.end, %entry
  %15 = load i32, ptr %offset.addr, align 4, !dbg !2479, !tbaa !539
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2480, !tbaa !534
  %offset7 = getelementptr inbounds %struct.relocs, ptr %16, i32 0, i32 0, !dbg !2481
  %17 = load ptr, ptr %offset7, align 8, !dbg !2481, !tbaa !1711
  %18 = load ptr, ptr %r.addr, align 8, !dbg !2482, !tbaa !534
  %count8 = getelementptr inbounds %struct.relocs, ptr %18, i32 0, i32 1, !dbg !2483
  %19 = load i64, ptr %count8, align 8, !dbg !2484, !tbaa !1676
  %inc = add i64 %19, 1, !dbg !2484
  store i64 %inc, ptr %count8, align 8, !dbg !2484, !tbaa !1676
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %19, !dbg !2480
  store i32 %15, ptr %arrayidx, align 4, !dbg !2485, !tbaa !539
  ret void, !dbg !2486
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !2487 ptr @realloc(ptr noundef, i64 noundef) #11

declare !dbg !2490 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmp_relocs(ptr noundef %va, ptr noundef %vb) #0 !dbg !2497 {
entry:
  %va.addr = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %va, ptr %va.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %va.addr, metadata !2499, metadata !DIExpression()), !dbg !2505
  store ptr %vb, ptr %vb.addr, align 8, !tbaa !534
  call void @llvm.dbg.declare(metadata ptr %vb.addr, metadata !2500, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #12, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2501, metadata !DIExpression()), !dbg !2508
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %b, metadata !2504, metadata !DIExpression()), !dbg !2509
  %0 = load ptr, ptr %va.addr, align 8, !dbg !2510, !tbaa !534
  store ptr %0, ptr %a, align 8, !dbg !2511, !tbaa !534
  %1 = load ptr, ptr %vb.addr, align 8, !dbg !2512, !tbaa !534
  store ptr %1, ptr %b, align 8, !dbg !2513, !tbaa !534
  %2 = load ptr, ptr %a, align 8, !dbg !2514, !tbaa !534
  %3 = load i32, ptr %2, align 4, !dbg !2515, !tbaa !539
  %4 = load ptr, ptr %b, align 8, !dbg !2516, !tbaa !534
  %5 = load i32, ptr %4, align 4, !dbg !2517, !tbaa !539
  %cmp = icmp eq i32 %3, %5, !dbg !2518
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2519

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2519

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %a, align 8, !dbg !2520, !tbaa !534
  %7 = load i32, ptr %6, align 4, !dbg !2521, !tbaa !539
  %8 = load ptr, ptr %b, align 8, !dbg !2522, !tbaa !534
  %9 = load i32, ptr %8, align 4, !dbg !2523, !tbaa !539
  %cmp1 = icmp ugt i32 %7, %9, !dbg !2524
  %10 = zext i1 %cmp1 to i64, !dbg !2525
  %cond = select i1 %cmp1, i32 1, i32 -1, !dbg !2525
  br label %cond.end, !dbg !2519

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ], !dbg !2519
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #12, !dbg !2526
  ret i32 %cond2, !dbg !2527
}

declare !dbg !2528 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

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
!llvm.module.flags = !{!461, !462, !463, !464, !465, !466}
!llvm.ident = !{!467}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sym_regex_realmode", scope: !2, file: !20, line: 96, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/tools/.relocs_32.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O1 -fomit-frame-pointer -std=gnu11 -I ./tools/include -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/tools/relocs_32.ll arch/x86/tools/relocs_32.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/tools/relocs_32.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1523a5a0d81b212a3f6d503fddf2c729")
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
!14 = !{!15, !16}
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !25, !30, !0, !35, !41, !46, !51, !56, !85, !90, !92, !97, !102, !107, !112, !117, !122, !124, !126, !128, !130, !135, !140, !145, !177, !179, !181, !186, !188, !230, !235, !240, !245, !247, !249, !251, !253, !255, !260, !265, !270, !275, !280, !282, !287, !292, !294, !296, !298, !300, !302, !307, !316, !321, !326, !328, !330, !337, !339, !341, !346, !348, !350, !357, !359, !361, !363, !368, !370, !372, !374, !376, !378, !380, !385, !387, !389, !391, !393, !395, !397, !399, !401, !410, !415, !420, !422, !427, !429, !431, !436, !438, !443, !445, !447, !449, !457, !459}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 147, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "arch/x86/tools/relocs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9821afd1f91ce93c1387f4d3281a03e")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 3)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !20, line: 102, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 40, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !20, line: 108, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 16)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "sym_regex", scope: !2, file: !20, line: 118, type: !37, isLocal: true, isDefinition: true)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !20, line: 56, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 688, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 86)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !20, line: 67, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 3512, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 439)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "sym_regex_kernel", scope: !2, file: !20, line: 48, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 4)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "sym_regex_c", scope: !2, file: !20, line: 120, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !54)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !60, line: 478, baseType: !61)
!60 = !DIFile(filename: "/usr/include/regex.h", directory: "", checksumkind: CSK_MD5, checksum: "6d816f6cca462fea1b68ba10523ed664")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !60, line: 413, size: 512, elements: !62)
!62 = !{!63, !66, !68, !69, !71, !73, !75, !78, !79, !80, !81, !82, !83, !84}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__buffer", scope: !61, file: !60, line: 417, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !60, line: 417, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__allocated", scope: !61, file: !60, line: 420, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !60, line: 56, baseType: !16)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__used", scope: !61, file: !60, line: 423, baseType: !67, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__syntax", scope: !61, file: !60, line: 426, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !60, line: 72, baseType: !16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__fastmap", scope: !61, file: !60, line: 431, baseType: !72, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__translate", scope: !61, file: !60, line: 437, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !61, file: !60, line: 440, baseType: !76, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !16)
!77 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__can_be_null", scope: !61, file: !60, line: 446, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__regs_allocated", scope: !61, file: !60, line: 457, baseType: !7, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__fastmap_accurate", scope: !61, file: !60, line: 461, baseType: !7, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__no_sub", scope: !61, file: !60, line: 465, baseType: !7, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__not_bol", scope: !61, file: !60, line: 469, baseType: !7, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__not_eol", scope: !61, file: !60, line: 472, baseType: !7, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__newline_anchor", scope: !61, file: !60, line: 475, baseType: !7, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !20, line: 369, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 224, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 28)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !20, line: 372, type: !27, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !20, line: 373, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 112, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 14)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !20, line: 376, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 200, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 25)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !20, line: 379, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 208, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 26)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !20, line: 382, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 168, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 21)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !20, line: 403, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 232, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 29)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !20, line: 405, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 12)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !20, line: 405, type: !27, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !20, line: 409, type: !109, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !20, line: 411, type: !104, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !20, line: 413, type: !104, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !20, line: 420, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 184, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 23)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !20, line: 423, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 352, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 44)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !20, line: 433, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 272, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 34)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "ehdr", scope: !2, file: !20, line: 14, type: !147, isLocal: true, isDefinition: true)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Ehdr", file: !148, line: 79, baseType: !149)
!148 = !DIFile(filename: "/usr/include/elf.h", directory: "", checksumkind: CSK_MD5, checksum: "155462709c9e69bfc5630b2917029867")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 63, size: 416, elements: !150)
!150 = !{!151, !153, !160, !161, !165, !167, !169, !170, !171, !172, !173, !174, !175, !176}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "e_ident", scope: !149, file: !148, line: 65, baseType: !152, size: 128)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !33)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "e_type", scope: !149, file: !148, line: 66, baseType: !154, size: 16, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Half", file: !148, line: 27, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 25, baseType: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !158, line: 40, baseType: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !149, file: !148, line: 67, baseType: !154, size: 16, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "e_version", scope: !149, file: !148, line: 68, baseType: !162, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Word", file: !148, line: 31, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 26, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !158, line: 42, baseType: !7)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "e_entry", scope: !149, file: !148, line: 69, baseType: !166, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Addr", file: !148, line: 43, baseType: !163)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "e_phoff", scope: !149, file: !148, line: 70, baseType: !168, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Off", file: !148, line: 47, baseType: !163)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "e_shoff", scope: !149, file: !148, line: 71, baseType: !168, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !149, file: !148, line: 72, baseType: !162, size: 32, offset: 288)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "e_ehsize", scope: !149, file: !148, line: 73, baseType: !154, size: 16, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "e_phentsize", scope: !149, file: !148, line: 74, baseType: !154, size: 16, offset: 336)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "e_phnum", scope: !149, file: !148, line: 75, baseType: !154, size: 16, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "e_shentsize", scope: !149, file: !148, line: 76, baseType: !154, size: 16, offset: 368)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "e_shnum", scope: !149, file: !148, line: 77, baseType: !154, size: 16, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "e_shstrndx", scope: !149, file: !148, line: 78, baseType: !154, size: 16, offset: 400)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "shnum", scope: !2, file: !20, line: 15, type: !16, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "shstrndx", scope: !2, file: !20, line: 16, type: !7, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !20, line: 443, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 320, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 40)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !20, line: 453, type: !137, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "secs", scope: !2, file: !20, line: 46, type: !190, isLocal: true, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section", file: !20, line: 38, size: 640, elements: !192)
!192 = !{!193, !207, !208, !220, !222, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "shdr", scope: !191, file: !20, line: 39, baseType: !194, size: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Shdr", file: !148, line: 394, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 382, size: 320, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sh_name", scope: !195, file: !148, line: 384, baseType: !162, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sh_type", scope: !195, file: !148, line: 385, baseType: !162, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sh_flags", scope: !195, file: !148, line: 386, baseType: !162, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addr", scope: !195, file: !148, line: 387, baseType: !166, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sh_offset", scope: !195, file: !148, line: 388, baseType: !168, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sh_size", scope: !195, file: !148, line: 389, baseType: !162, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sh_link", scope: !195, file: !148, line: 390, baseType: !162, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sh_info", scope: !195, file: !148, line: 391, baseType: !162, size: 32, offset: 224)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sh_addralign", scope: !195, file: !148, line: 392, baseType: !162, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sh_entsize", scope: !195, file: !148, line: 393, baseType: !162, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !191, file: !20, line: 40, baseType: !190, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !191, file: !20, line: 41, baseType: !209, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Sym", file: !148, line: 525, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 517, size: 128, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !211, file: !148, line: 519, baseType: !162, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !211, file: !148, line: 520, baseType: !166, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !211, file: !148, line: 521, baseType: !162, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !211, file: !148, line: 522, baseType: !15, size: 8, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !211, file: !148, line: 523, baseType: !15, size: 8, offset: 104)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !211, file: !148, line: 524, baseType: !219, size: 16, offset: 112)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Section", file: !148, line: 51, baseType: !155)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xsymtab", scope: !191, file: !20, line: 42, baseType: !221, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reltab", scope: !191, file: !20, line: 43, baseType: !223, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf32_Rel", file: !148, line: 636, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 632, size: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "r_offset", scope: !225, file: !148, line: 634, baseType: !166, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "r_info", scope: !225, file: !148, line: 635, baseType: !162, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !191, file: !20, line: 44, baseType: !72, size: 64, offset: 576)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !20, line: 481, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 304, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 38)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !20, line: 490, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 240, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 30)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !20, line: 508, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 312, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 39)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !20, line: 517, type: !242, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !20, line: 528, type: !232, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "shxsymtabndx", scope: !2, file: !20, line: 18, type: !7, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "shsymtabndx", scope: !2, file: !20, line: 17, type: !7, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !20, line: 568, type: !232, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !20, line: 600, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 264, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 33)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !20, line: 602, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 144, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 18)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !20, line: 603, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 496, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 62)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !20, line: 629, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 2)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !20, line: 274, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 72, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 9)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !20, line: 263, type: !277, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !20, line: 266, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 56, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 7)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !20, line: 156, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 88, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 11)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !20, line: 157, type: !289, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !20, line: 158, type: !277, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !20, line: 159, type: !119, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !20, line: 160, type: !277, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !20, line: 161, type: !289, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !20, line: 162, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 8)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "type_name", scope: !309, file: !20, line: 154, type: !315, isLocal: true, isDefinition: true)
!309 = distinct !DISubprogram(name: "sym_type", scope: !20, file: !20, line: 152, type: !310, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!39, !7}
!312 = !{!313, !314}
!313 = !DILocalVariable(name: "type", arg: 1, scope: !309, file: !20, line: 152, type: !7)
!314 = !DILocalVariable(name: "name", scope: !309, file: !20, line: 165, type: !39)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !285)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !20, line: 165, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 176, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 22)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !20, line: 176, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 10)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !20, line: 177, type: !289, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !20, line: 178, type: !277, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "bind_name", scope: !332, file: !20, line: 174, type: !336, isLocal: true, isDefinition: true)
!332 = distinct !DISubprogram(name: "sym_bind", scope: !20, file: !20, line: 172, type: !310, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334, !335}
!334 = !DILocalVariable(name: "bind", arg: 1, scope: !332, file: !20, line: 172, type: !7)
!335 = !DILocalVariable(name: "name", scope: !332, file: !20, line: 181, type: !39)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !23)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !20, line: 181, type: !318, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !20, line: 192, type: !119, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !20, line: 193, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 104, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 13)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !20, line: 194, type: !289, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !20, line: 195, type: !94, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "visibility_name", scope: !352, file: !20, line: 190, type: !356, isLocal: true, isDefinition: true)
!352 = distinct !DISubprogram(name: "sym_visibility", scope: !20, file: !20, line: 188, type: !310, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !353)
!353 = !{!354, !355}
!354 = !DILocalVariable(name: "visibility", arg: 1, scope: !352, file: !20, line: 188, type: !7)
!355 = !DILocalVariable(name: "name", scope: !352, file: !20, line: 198, type: !39)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !54)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !20, line: 198, type: !87, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !20, line: 640, type: !99, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !20, line: 694, type: !242, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !20, line: 696, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 392, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 49)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !20, line: 228, type: !289, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !20, line: 229, type: !277, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !20, line: 230, type: !289, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !20, line: 231, type: !119, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !20, line: 232, type: !119, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !20, line: 233, type: !289, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !20, line: 234, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 120, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 15)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !20, line: 235, type: !382, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !20, line: 236, type: !382, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !20, line: 237, type: !343, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !20, line: 238, type: !119, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !20, line: 241, type: !277, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !20, line: 242, type: !289, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !20, line: 239, type: !304, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !20, line: 240, type: !323, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "type_name", scope: !403, file: !20, line: 207, type: !407, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "rel_type", scope: !20, file: !20, line: 205, type: !310, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!404 = !{!405, !406}
!405 = !DILocalVariable(name: "type", arg: 1, scope: !403, file: !20, line: 205, type: !7)
!406 = !DILocalVariable(name: "name", scope: !403, file: !20, line: 246, type: !39)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1536, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 24)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !20, line: 246, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 216, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 27)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1177, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 384, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 48)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1167, type: !343, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1103, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 448, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 56)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1119, type: !87, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1120, type: !289, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !20, line: 963, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 288, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 36)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !20, line: 972, type: !232, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !20, line: 721, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 336, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 42)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1016, type: !237, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1017, type: !277, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1017, type: !277, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "relocs16", scope: !2, file: !20, line: 28, type: !451, isLocal: true, isDefinition: true)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relocs", file: !20, line: 22, size: 192, elements: !452)
!452 = !{!453, !455, !456}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !451, file: !20, line: 23, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !20, line: 24, baseType: !16, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !451, file: !20, line: 25, baseType: !16, size: 64, offset: 128)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "relocs32", scope: !2, file: !20, line: 29, type: !451, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !20, line: 1077, type: !382, isLocal: true, isDefinition: true)
!461 = !{i32 7, !"Dwarf Version", i32 5}
!462 = !{i32 2, !"Debug Info Version", i32 3}
!463 = !{i32 1, !"wchar_size", i32 4}
!464 = !{i32 8, !"PIC Level", i32 2}
!465 = !{i32 7, !"PIE Level", i32 2}
!466 = !{i32 7, !"uwtable", i32 2}
!467 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!468 = distinct !DISubprogram(name: "process_32", scope: !20, file: !20, line: 1187, type: !469, scopeLine: 1190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471, !478, !478, !478, !478, !478}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !473, line: 7, baseType: !474)
!473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !475, line: 49, size: 1728, elements: !476)
!475 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!476 = !{!477, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !493, !495, !496, !497, !500, !501, !503, !507, !510, !512, !515, !518, !519, !521, !522, !523}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !474, file: !475, line: 51, baseType: !478, size: 32)
!478 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !474, file: !475, line: 54, baseType: !72, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !474, file: !475, line: 55, baseType: !72, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !474, file: !475, line: 56, baseType: !72, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !474, file: !475, line: 57, baseType: !72, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !474, file: !475, line: 58, baseType: !72, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !474, file: !475, line: 59, baseType: !72, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !474, file: !475, line: 60, baseType: !72, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !474, file: !475, line: 61, baseType: !72, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !474, file: !475, line: 64, baseType: !72, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !474, file: !475, line: 65, baseType: !72, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !474, file: !475, line: 66, baseType: !72, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !474, file: !475, line: 68, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !475, line: 36, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !474, file: !475, line: 70, baseType: !494, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !474, file: !475, line: 72, baseType: !478, size: 32, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !474, file: !475, line: 73, baseType: !478, size: 32, offset: 928)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !474, file: !475, line: 74, baseType: !498, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !158, line: 152, baseType: !499)
!499 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !474, file: !475, line: 77, baseType: !159, size: 16, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !474, file: !475, line: 78, baseType: !502, size: 8, offset: 1040)
!502 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !474, file: !475, line: 79, baseType: !504, size: 8, offset: 1048)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 1)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !474, file: !475, line: 81, baseType: !508, size: 64, offset: 1088)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !475, line: 43, baseType: null)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !474, file: !475, line: 89, baseType: !511, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !158, line: 153, baseType: !499)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !474, file: !475, line: 91, baseType: !513, size: 64, offset: 1216)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !475, line: 37, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !474, file: !475, line: 92, baseType: !516, size: 64, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !475, line: 38, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !474, file: !475, line: 93, baseType: !494, size: 64, offset: 1344)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !474, file: !475, line: 94, baseType: !520, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !474, file: !475, line: 95, baseType: !76, size: 64, offset: 1472)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !474, file: !475, line: 96, baseType: !478, size: 32, offset: 1536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !474, file: !475, line: 98, baseType: !524, size: 160, offset: 1568)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 20)
!527 = !{!528, !529, !530, !531, !532, !533}
!528 = !DILocalVariable(name: "fp", arg: 1, scope: !468, file: !20, line: 1187, type: !471)
!529 = !DILocalVariable(name: "use_real_mode", arg: 2, scope: !468, file: !20, line: 1187, type: !478)
!530 = !DILocalVariable(name: "as_text", arg: 3, scope: !468, file: !20, line: 1187, type: !478)
!531 = !DILocalVariable(name: "show_absolute_syms", arg: 4, scope: !468, file: !20, line: 1188, type: !478)
!532 = !DILocalVariable(name: "show_absolute_relocs", arg: 5, scope: !468, file: !20, line: 1188, type: !478)
!533 = !DILocalVariable(name: "show_reloc_info", arg: 6, scope: !468, file: !20, line: 1189, type: !478)
!534 = !{!535, !535, i64 0}
!535 = !{!"any pointer", !536, i64 0}
!536 = !{!"omnipotent char", !537, i64 0}
!537 = !{!"Simple C/C++ TBAA"}
!538 = !DILocation(line: 1187, column: 20, scope: !468)
!539 = !{!540, !540, i64 0}
!540 = !{!"int", !536, i64 0}
!541 = !DILocation(line: 1187, column: 28, scope: !468)
!542 = !DILocation(line: 1187, column: 47, scope: !468)
!543 = !DILocation(line: 1188, column: 11, scope: !468)
!544 = !DILocation(line: 1188, column: 35, scope: !468)
!545 = !DILocation(line: 1189, column: 11, scope: !468)
!546 = !DILocation(line: 1191, column: 13, scope: !468)
!547 = !DILocation(line: 1191, column: 2, scope: !468)
!548 = !DILocation(line: 1192, column: 12, scope: !468)
!549 = !DILocation(line: 1192, column: 2, scope: !468)
!550 = !DILocation(line: 1193, column: 13, scope: !468)
!551 = !DILocation(line: 1193, column: 2, scope: !468)
!552 = !DILocation(line: 1194, column: 15, scope: !468)
!553 = !DILocation(line: 1194, column: 2, scope: !468)
!554 = !DILocation(line: 1195, column: 15, scope: !468)
!555 = !DILocation(line: 1195, column: 2, scope: !468)
!556 = !DILocation(line: 1196, column: 14, scope: !468)
!557 = !DILocation(line: 1196, column: 2, scope: !468)
!558 = !DILocation(line: 1199, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !468, file: !20, line: 1199, column: 6)
!560 = !DILocation(line: 1199, column: 6, scope: !468)
!561 = !DILocation(line: 1200, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !20, line: 1199, column: 26)
!563 = !DILocation(line: 1201, column: 3, scope: !562)
!564 = !DILocation(line: 1203, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !468, file: !20, line: 1203, column: 6)
!566 = !DILocation(line: 1203, column: 6, scope: !468)
!567 = !DILocation(line: 1204, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !20, line: 1203, column: 28)
!569 = !DILocation(line: 1205, column: 3, scope: !568)
!570 = !DILocation(line: 1207, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !468, file: !20, line: 1207, column: 6)
!572 = !DILocation(line: 1207, column: 6, scope: !468)
!573 = !DILocation(line: 1208, column: 3, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !20, line: 1207, column: 23)
!575 = !DILocation(line: 1209, column: 3, scope: !574)
!576 = !DILocation(line: 1211, column: 14, scope: !468)
!577 = !DILocation(line: 1211, column: 23, scope: !468)
!578 = !DILocation(line: 1211, column: 2, scope: !468)
!579 = !DILocation(line: 1212, column: 1, scope: !468)
!580 = distinct !DISubprogram(name: "regex_init", scope: !20, file: !20, line: 127, type: !581, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !478}
!583 = !{!584, !585, !589, !590}
!584 = !DILocalVariable(name: "use_real_mode", arg: 1, scope: !580, file: !20, line: 127, type: !478)
!585 = !DILocalVariable(name: "errbuf", scope: !580, file: !20, line: 129, type: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 128)
!589 = !DILocalVariable(name: "err", scope: !580, file: !20, line: 130, type: !478)
!590 = !DILocalVariable(name: "i", scope: !580, file: !20, line: 131, type: !478)
!591 = !DILocation(line: 127, column: 28, scope: !580)
!592 = !DILocation(line: 129, column: 9, scope: !580)
!593 = !DILocation(line: 129, column: 14, scope: !580)
!594 = !DILocation(line: 130, column: 9, scope: !580)
!595 = !DILocation(line: 130, column: 13, scope: !580)
!596 = !DILocation(line: 131, column: 2, scope: !580)
!597 = !DILocation(line: 131, column: 6, scope: !580)
!598 = !DILocation(line: 133, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !580, file: !20, line: 133, column: 6)
!600 = !DILocation(line: 133, column: 6, scope: !580)
!601 = !DILocation(line: 134, column: 13, scope: !599)
!602 = !DILocation(line: 134, column: 3, scope: !599)
!603 = !DILocation(line: 136, column: 13, scope: !599)
!604 = !DILocation(line: 138, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !580, file: !20, line: 138, column: 2)
!606 = !DILocation(line: 138, column: 7, scope: !605)
!607 = !DILocation(line: 138, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !20, line: 138, column: 2)
!609 = !DILocation(line: 138, column: 16, scope: !608)
!610 = !DILocation(line: 138, column: 2, scope: !605)
!611 = !DILocation(line: 139, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !20, line: 139, column: 7)
!613 = distinct !DILexicalBlock(scope: !608, file: !20, line: 138, column: 36)
!614 = !DILocation(line: 139, column: 18, scope: !612)
!615 = !DILocation(line: 139, column: 7, scope: !613)
!616 = !DILocation(line: 140, column: 4, scope: !612)
!617 = !DILocation(line: 142, column: 30, scope: !613)
!618 = !DILocation(line: 142, column: 18, scope: !613)
!619 = !DILocation(line: 142, column: 34, scope: !613)
!620 = !DILocation(line: 142, column: 44, scope: !613)
!621 = !DILocation(line: 142, column: 9, scope: !613)
!622 = !DILocation(line: 142, column: 7, scope: !613)
!623 = !DILocation(line: 145, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !613, file: !20, line: 145, column: 7)
!625 = !DILocation(line: 145, column: 7, scope: !613)
!626 = !DILocation(line: 146, column: 13, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !20, line: 145, column: 12)
!628 = !DILocation(line: 146, column: 31, scope: !627)
!629 = !DILocation(line: 146, column: 19, scope: !627)
!630 = !DILocation(line: 146, column: 35, scope: !627)
!631 = !DILocation(line: 146, column: 4, scope: !627)
!632 = !DILocation(line: 147, column: 14, scope: !627)
!633 = !DILocation(line: 147, column: 4, scope: !627)
!634 = !DILocation(line: 149, column: 9, scope: !613)
!635 = !DILocation(line: 138, column: 32, scope: !608)
!636 = !DILocation(line: 138, column: 2, scope: !608)
!637 = distinct !{!637, !610, !638, !639, !640}
!638 = !DILocation(line: 149, column: 9, scope: !605)
!639 = !{!"llvm.loop.mustprogress"}
!640 = !{!"llvm.loop.unroll.disable"}
!641 = !DILocation(line: 150, column: 1, scope: !580)
!642 = distinct !DISubprogram(name: "read_ehdr", scope: !20, file: !20, line: 366, type: !643, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !471}
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "fp", arg: 1, scope: !642, file: !20, line: 366, type: !471)
!647 = !DILocalVariable(name: "shdr", scope: !648, file: !20, line: 417, type: !194)
!648 = distinct !DILexicalBlock(scope: !649, file: !20, line: 416, column: 52)
!649 = distinct !DILexicalBlock(scope: !642, file: !20, line: 416, column: 6)
!650 = !DILocation(line: 366, column: 29, scope: !642)
!651 = !DILocation(line: 368, column: 36, scope: !652)
!652 = distinct !DILexicalBlock(scope: !642, file: !20, line: 368, column: 6)
!653 = !DILocation(line: 368, column: 6, scope: !652)
!654 = !DILocation(line: 368, column: 40, scope: !652)
!655 = !DILocation(line: 368, column: 6, scope: !642)
!656 = !DILocation(line: 370, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !20, line: 368, column: 46)
!658 = !DILocation(line: 370, column: 4, scope: !657)
!659 = !DILocation(line: 369, column: 3, scope: !657)
!660 = !DILocation(line: 372, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !642, file: !20, line: 372, column: 6)
!662 = !DILocation(line: 372, column: 44, scope: !661)
!663 = !DILocation(line: 372, column: 6, scope: !642)
!664 = !DILocation(line: 373, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !20, line: 372, column: 50)
!666 = !DILocation(line: 375, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !642, file: !20, line: 375, column: 6)
!668 = !{!536, !536, i64 0}
!669 = !DILocation(line: 375, column: 29, scope: !667)
!670 = !DILocation(line: 375, column: 6, scope: !642)
!671 = !DILocation(line: 376, column: 3, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !20, line: 375, column: 43)
!673 = !DILocation(line: 378, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !642, file: !20, line: 378, column: 6)
!675 = !DILocation(line: 378, column: 28, scope: !674)
!676 = !DILocation(line: 378, column: 6, scope: !642)
!677 = !DILocation(line: 379, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !20, line: 378, column: 44)
!679 = !DILocation(line: 381, column: 6, scope: !680)
!680 = distinct !DILexicalBlock(scope: !642, file: !20, line: 381, column: 6)
!681 = !DILocation(line: 381, column: 31, scope: !680)
!682 = !DILocation(line: 381, column: 6, scope: !642)
!683 = !DILocation(line: 382, column: 3, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !20, line: 381, column: 46)
!685 = !DILocation(line: 385, column: 21, scope: !642)
!686 = !{!687, !688, i64 16}
!687 = !{!"", !536, i64 0, !688, i64 16, !688, i64 18, !540, i64 20, !540, i64 24, !540, i64 28, !540, i64 32, !540, i64 36, !688, i64 40, !688, i64 42, !688, i64 44, !688, i64 46, !688, i64 48, !688, i64 50}
!688 = !{!"short", !536, i64 0}
!689 = !DILocation(line: 385, column: 19, scope: !642)
!690 = !DILocation(line: 386, column: 21, scope: !642)
!691 = !{!687, !688, i64 18}
!692 = !DILocation(line: 386, column: 19, scope: !642)
!693 = !DILocation(line: 387, column: 21, scope: !642)
!694 = !{!687, !540, i64 20}
!695 = !DILocation(line: 387, column: 19, scope: !642)
!696 = !DILocation(line: 388, column: 21, scope: !642)
!697 = !{!687, !540, i64 24}
!698 = !DILocation(line: 388, column: 19, scope: !642)
!699 = !DILocation(line: 389, column: 21, scope: !642)
!700 = !{!687, !540, i64 28}
!701 = !DILocation(line: 389, column: 19, scope: !642)
!702 = !DILocation(line: 390, column: 21, scope: !642)
!703 = !{!687, !540, i64 32}
!704 = !DILocation(line: 390, column: 19, scope: !642)
!705 = !DILocation(line: 391, column: 21, scope: !642)
!706 = !{!687, !540, i64 36}
!707 = !DILocation(line: 391, column: 19, scope: !642)
!708 = !DILocation(line: 392, column: 21, scope: !642)
!709 = !{!687, !688, i64 40}
!710 = !DILocation(line: 392, column: 19, scope: !642)
!711 = !DILocation(line: 393, column: 21, scope: !642)
!712 = !{!687, !688, i64 42}
!713 = !DILocation(line: 393, column: 19, scope: !642)
!714 = !DILocation(line: 394, column: 21, scope: !642)
!715 = !{!687, !688, i64 44}
!716 = !DILocation(line: 394, column: 19, scope: !642)
!717 = !DILocation(line: 395, column: 21, scope: !642)
!718 = !{!687, !688, i64 46}
!719 = !DILocation(line: 395, column: 19, scope: !642)
!720 = !DILocation(line: 396, column: 21, scope: !642)
!721 = !{!687, !688, i64 48}
!722 = !DILocation(line: 396, column: 19, scope: !642)
!723 = !DILocation(line: 397, column: 21, scope: !642)
!724 = !{!687, !688, i64 50}
!725 = !DILocation(line: 397, column: 19, scope: !642)
!726 = !DILocation(line: 399, column: 15, scope: !642)
!727 = !DILocation(line: 399, column: 10, scope: !642)
!728 = !DILocation(line: 399, column: 8, scope: !642)
!729 = !{!730, !730, i64 0}
!730 = !{!"long", !536, i64 0}
!731 = !DILocation(line: 400, column: 18, scope: !642)
!732 = !DILocation(line: 400, column: 13, scope: !642)
!733 = !DILocation(line: 400, column: 11, scope: !642)
!734 = !DILocation(line: 402, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !642, file: !20, line: 402, column: 6)
!736 = !DILocation(line: 402, column: 7, scope: !735)
!737 = !DILocation(line: 402, column: 19, scope: !735)
!738 = !DILocation(line: 402, column: 31, scope: !735)
!739 = !DILocation(line: 402, column: 40, scope: !735)
!740 = !DILocation(line: 402, column: 35, scope: !735)
!741 = !DILocation(line: 402, column: 47, scope: !735)
!742 = !DILocation(line: 402, column: 6, scope: !642)
!743 = !DILocation(line: 403, column: 3, scope: !735)
!744 = !DILocation(line: 404, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !642, file: !20, line: 404, column: 6)
!746 = !DILocation(line: 404, column: 6, scope: !745)
!747 = !DILocation(line: 404, column: 21, scope: !745)
!748 = !DILocation(line: 404, column: 6, scope: !642)
!749 = !DILocation(line: 405, column: 3, scope: !745)
!750 = !DILocation(line: 406, column: 11, scope: !751)
!751 = distinct !DILexicalBlock(scope: !642, file: !20, line: 406, column: 6)
!752 = !DILocation(line: 406, column: 21, scope: !751)
!753 = !DILocation(line: 406, column: 6, scope: !642)
!754 = !DILocation(line: 407, column: 3, scope: !751)
!755 = !DILocation(line: 408, column: 11, scope: !756)
!756 = distinct !DILexicalBlock(scope: !642, file: !20, line: 408, column: 6)
!757 = !DILocation(line: 408, column: 6, scope: !756)
!758 = !DILocation(line: 408, column: 20, scope: !756)
!759 = !DILocation(line: 408, column: 6, scope: !642)
!760 = !DILocation(line: 409, column: 3, scope: !756)
!761 = !DILocation(line: 410, column: 11, scope: !762)
!762 = distinct !DILexicalBlock(scope: !642, file: !20, line: 410, column: 6)
!763 = !DILocation(line: 410, column: 6, scope: !762)
!764 = !DILocation(line: 410, column: 23, scope: !762)
!765 = !DILocation(line: 410, column: 6, scope: !642)
!766 = !DILocation(line: 411, column: 3, scope: !762)
!767 = !DILocation(line: 412, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !642, file: !20, line: 412, column: 6)
!769 = !DILocation(line: 412, column: 6, scope: !768)
!770 = !DILocation(line: 412, column: 23, scope: !768)
!771 = !DILocation(line: 412, column: 6, scope: !642)
!772 = !DILocation(line: 413, column: 3, scope: !768)
!773 = !DILocation(line: 416, column: 6, scope: !649)
!774 = !DILocation(line: 416, column: 12, scope: !649)
!775 = !DILocation(line: 416, column: 25, scope: !649)
!776 = !DILocation(line: 416, column: 28, scope: !649)
!777 = !DILocation(line: 416, column: 37, scope: !649)
!778 = !DILocation(line: 416, column: 6, scope: !642)
!779 = !DILocation(line: 417, column: 3, scope: !648)
!780 = !DILocation(line: 417, column: 12, scope: !648)
!781 = !DILocation(line: 419, column: 13, scope: !782)
!782 = distinct !DILexicalBlock(scope: !648, file: !20, line: 419, column: 7)
!783 = !DILocation(line: 419, column: 22, scope: !782)
!784 = !DILocation(line: 419, column: 17, scope: !782)
!785 = !DILocation(line: 419, column: 7, scope: !782)
!786 = !DILocation(line: 419, column: 41, scope: !782)
!787 = !DILocation(line: 419, column: 7, scope: !648)
!788 = !DILocation(line: 420, column: 46, scope: !782)
!789 = !DILocation(line: 420, column: 64, scope: !782)
!790 = !DILocation(line: 420, column: 55, scope: !782)
!791 = !DILocation(line: 420, column: 4, scope: !782)
!792 = !DILocation(line: 422, column: 37, scope: !793)
!793 = distinct !DILexicalBlock(scope: !648, file: !20, line: 422, column: 7)
!794 = !DILocation(line: 422, column: 7, scope: !793)
!795 = !DILocation(line: 422, column: 41, scope: !793)
!796 = !DILocation(line: 422, column: 7, scope: !648)
!797 = !DILocation(line: 423, column: 65, scope: !793)
!798 = !DILocation(line: 423, column: 56, scope: !793)
!799 = !DILocation(line: 423, column: 4, scope: !793)
!800 = !DILocation(line: 425, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !648, file: !20, line: 425, column: 7)
!802 = !DILocation(line: 425, column: 13, scope: !801)
!803 = !DILocation(line: 425, column: 7, scope: !648)
!804 = !DILocation(line: 426, column: 12, scope: !801)
!805 = !{!806, !540, i64 20}
!806 = !{!"", !540, i64 0, !540, i64 4, !540, i64 8, !540, i64 12, !540, i64 16, !540, i64 20, !540, i64 24, !540, i64 28, !540, i64 32, !540, i64 36}
!807 = !DILocation(line: 426, column: 10, scope: !801)
!808 = !DILocation(line: 426, column: 4, scope: !801)
!809 = !DILocation(line: 428, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !648, file: !20, line: 428, column: 7)
!811 = !DILocation(line: 428, column: 16, scope: !810)
!812 = !DILocation(line: 428, column: 7, scope: !648)
!813 = !DILocation(line: 429, column: 15, scope: !810)
!814 = !{!806, !540, i64 24}
!815 = !DILocation(line: 429, column: 13, scope: !810)
!816 = !DILocation(line: 429, column: 4, scope: !810)
!817 = !DILocation(line: 430, column: 2, scope: !649)
!818 = !DILocation(line: 430, column: 2, scope: !648)
!819 = !DILocation(line: 432, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !642, file: !20, line: 432, column: 6)
!821 = !DILocation(line: 432, column: 18, scope: !820)
!822 = !DILocation(line: 432, column: 15, scope: !820)
!823 = !DILocation(line: 432, column: 6, scope: !642)
!824 = !DILocation(line: 433, column: 3, scope: !820)
!825 = !DILocation(line: 434, column: 1, scope: !642)
!826 = distinct !DISubprogram(name: "read_shdrs", scope: !20, file: !20, line: 436, type: !643, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !827)
!827 = !{!828, !829, !830, !831}
!828 = !DILocalVariable(name: "fp", arg: 1, scope: !826, file: !20, line: 436, type: !471)
!829 = !DILocalVariable(name: "i", scope: !826, file: !20, line: 438, type: !478)
!830 = !DILocalVariable(name: "shdr", scope: !826, file: !20, line: 439, type: !194)
!831 = !DILocalVariable(name: "sec", scope: !832, file: !20, line: 451, type: !190)
!832 = distinct !DILexicalBlock(scope: !833, file: !20, line: 450, column: 30)
!833 = distinct !DILexicalBlock(scope: !834, file: !20, line: 450, column: 2)
!834 = distinct !DILexicalBlock(scope: !826, file: !20, line: 450, column: 2)
!835 = !DILocation(line: 436, column: 30, scope: !826)
!836 = !DILocation(line: 438, column: 2, scope: !826)
!837 = !DILocation(line: 438, column: 6, scope: !826)
!838 = !DILocation(line: 439, column: 2, scope: !826)
!839 = !DILocation(line: 439, column: 11, scope: !826)
!840 = !DILocation(line: 441, column: 16, scope: !826)
!841 = !DILocation(line: 441, column: 9, scope: !826)
!842 = !DILocation(line: 441, column: 7, scope: !826)
!843 = !DILocation(line: 442, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !826, file: !20, line: 442, column: 6)
!845 = !DILocation(line: 442, column: 6, scope: !826)
!846 = !DILocation(line: 444, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !20, line: 442, column: 13)
!848 = !DILocation(line: 443, column: 3, scope: !847)
!849 = !DILocation(line: 446, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !826, file: !20, line: 446, column: 6)
!851 = !DILocation(line: 446, column: 21, scope: !850)
!852 = !DILocation(line: 446, column: 16, scope: !850)
!853 = !DILocation(line: 446, column: 6, scope: !850)
!854 = !DILocation(line: 446, column: 40, scope: !850)
!855 = !DILocation(line: 446, column: 6, scope: !826)
!856 = !DILocation(line: 448, column: 12, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !20, line: 446, column: 45)
!858 = !DILocation(line: 448, column: 30, scope: !857)
!859 = !DILocation(line: 448, column: 21, scope: !857)
!860 = !DILocation(line: 447, column: 3, scope: !857)
!861 = !DILocation(line: 450, column: 9, scope: !834)
!862 = !DILocation(line: 450, column: 7, scope: !834)
!863 = !DILocation(line: 450, column: 14, scope: !833)
!864 = !DILocation(line: 450, column: 18, scope: !833)
!865 = !DILocation(line: 450, column: 16, scope: !833)
!866 = !DILocation(line: 450, column: 2, scope: !834)
!867 = !DILocation(line: 451, column: 3, scope: !832)
!868 = !DILocation(line: 451, column: 19, scope: !832)
!869 = !DILocation(line: 451, column: 26, scope: !832)
!870 = !DILocation(line: 451, column: 31, scope: !832)
!871 = !DILocation(line: 452, column: 37, scope: !872)
!872 = distinct !DILexicalBlock(scope: !832, file: !20, line: 452, column: 7)
!873 = !DILocation(line: 452, column: 7, scope: !872)
!874 = !DILocation(line: 452, column: 41, scope: !872)
!875 = !DILocation(line: 452, column: 7, scope: !832)
!876 = !DILocation(line: 454, column: 8, scope: !872)
!877 = !DILocation(line: 454, column: 11, scope: !872)
!878 = !DILocation(line: 454, column: 27, scope: !872)
!879 = !DILocation(line: 454, column: 18, scope: !872)
!880 = !DILocation(line: 453, column: 4, scope: !872)
!881 = !DILocation(line: 455, column: 28, scope: !832)
!882 = !{!806, !540, i64 0}
!883 = !DILocation(line: 455, column: 3, scope: !832)
!884 = !DILocation(line: 455, column: 8, scope: !832)
!885 = !DILocation(line: 455, column: 13, scope: !832)
!886 = !DILocation(line: 455, column: 26, scope: !832)
!887 = !{!888, !540, i64 0}
!888 = !{!"section", !806, i64 0, !535, i64 40, !535, i64 48, !535, i64 56, !535, i64 64, !535, i64 72}
!889 = !DILocation(line: 456, column: 28, scope: !832)
!890 = !{!806, !540, i64 4}
!891 = !DILocation(line: 456, column: 3, scope: !832)
!892 = !DILocation(line: 456, column: 8, scope: !832)
!893 = !DILocation(line: 456, column: 13, scope: !832)
!894 = !DILocation(line: 456, column: 26, scope: !832)
!895 = !{!888, !540, i64 4}
!896 = !DILocation(line: 457, column: 28, scope: !832)
!897 = !{!806, !540, i64 8}
!898 = !DILocation(line: 457, column: 3, scope: !832)
!899 = !DILocation(line: 457, column: 8, scope: !832)
!900 = !DILocation(line: 457, column: 13, scope: !832)
!901 = !DILocation(line: 457, column: 26, scope: !832)
!902 = !{!888, !540, i64 8}
!903 = !DILocation(line: 458, column: 28, scope: !832)
!904 = !{!806, !540, i64 12}
!905 = !DILocation(line: 458, column: 3, scope: !832)
!906 = !DILocation(line: 458, column: 8, scope: !832)
!907 = !DILocation(line: 458, column: 13, scope: !832)
!908 = !DILocation(line: 458, column: 26, scope: !832)
!909 = !{!888, !540, i64 12}
!910 = !DILocation(line: 459, column: 28, scope: !832)
!911 = !{!806, !540, i64 16}
!912 = !DILocation(line: 459, column: 3, scope: !832)
!913 = !DILocation(line: 459, column: 8, scope: !832)
!914 = !DILocation(line: 459, column: 13, scope: !832)
!915 = !DILocation(line: 459, column: 26, scope: !832)
!916 = !{!888, !540, i64 16}
!917 = !DILocation(line: 460, column: 28, scope: !832)
!918 = !DILocation(line: 460, column: 3, scope: !832)
!919 = !DILocation(line: 460, column: 8, scope: !832)
!920 = !DILocation(line: 460, column: 13, scope: !832)
!921 = !DILocation(line: 460, column: 26, scope: !832)
!922 = !{!888, !540, i64 20}
!923 = !DILocation(line: 461, column: 28, scope: !832)
!924 = !DILocation(line: 461, column: 3, scope: !832)
!925 = !DILocation(line: 461, column: 8, scope: !832)
!926 = !DILocation(line: 461, column: 13, scope: !832)
!927 = !DILocation(line: 461, column: 26, scope: !832)
!928 = !{!888, !540, i64 24}
!929 = !DILocation(line: 462, column: 28, scope: !832)
!930 = !{!806, !540, i64 28}
!931 = !DILocation(line: 462, column: 3, scope: !832)
!932 = !DILocation(line: 462, column: 8, scope: !832)
!933 = !DILocation(line: 462, column: 13, scope: !832)
!934 = !DILocation(line: 462, column: 26, scope: !832)
!935 = !{!888, !540, i64 28}
!936 = !DILocation(line: 463, column: 28, scope: !832)
!937 = !{!806, !540, i64 32}
!938 = !DILocation(line: 463, column: 3, scope: !832)
!939 = !DILocation(line: 463, column: 8, scope: !832)
!940 = !DILocation(line: 463, column: 13, scope: !832)
!941 = !DILocation(line: 463, column: 26, scope: !832)
!942 = !{!888, !540, i64 32}
!943 = !DILocation(line: 464, column: 28, scope: !832)
!944 = !{!806, !540, i64 36}
!945 = !DILocation(line: 464, column: 3, scope: !832)
!946 = !DILocation(line: 464, column: 8, scope: !832)
!947 = !DILocation(line: 464, column: 13, scope: !832)
!948 = !DILocation(line: 464, column: 26, scope: !832)
!949 = !{!888, !540, i64 36}
!950 = !DILocation(line: 465, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !832, file: !20, line: 465, column: 7)
!952 = !DILocation(line: 465, column: 12, scope: !951)
!953 = !DILocation(line: 465, column: 17, scope: !951)
!954 = !DILocation(line: 465, column: 27, scope: !951)
!955 = !DILocation(line: 465, column: 25, scope: !951)
!956 = !DILocation(line: 465, column: 7, scope: !832)
!957 = !DILocation(line: 466, column: 17, scope: !951)
!958 = !DILocation(line: 466, column: 22, scope: !951)
!959 = !DILocation(line: 466, column: 27, scope: !951)
!960 = !DILocation(line: 466, column: 32, scope: !951)
!961 = !DILocation(line: 466, column: 4, scope: !951)
!962 = !DILocation(line: 466, column: 9, scope: !951)
!963 = !DILocation(line: 466, column: 14, scope: !951)
!964 = !{!888, !535, i64 40}
!965 = !DILocation(line: 467, column: 2, scope: !833)
!966 = !DILocation(line: 467, column: 2, scope: !832)
!967 = !DILocation(line: 450, column: 26, scope: !833)
!968 = !DILocation(line: 450, column: 2, scope: !833)
!969 = distinct !{!969, !866, !970, !639, !640}
!970 = !DILocation(line: 467, column: 2, scope: !834)
!971 = !DILocation(line: 469, column: 1, scope: !826)
!972 = distinct !DISubprogram(name: "read_strtabs", scope: !20, file: !20, line: 471, type: !643, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!973 = !{!974, !975, !976}
!974 = !DILocalVariable(name: "fp", arg: 1, scope: !972, file: !20, line: 471, type: !471)
!975 = !DILocalVariable(name: "i", scope: !972, file: !20, line: 473, type: !478)
!976 = !DILocalVariable(name: "sec", scope: !977, file: !20, line: 475, type: !190)
!977 = distinct !DILexicalBlock(scope: !978, file: !20, line: 474, column: 30)
!978 = distinct !DILexicalBlock(scope: !979, file: !20, line: 474, column: 2)
!979 = distinct !DILexicalBlock(scope: !972, file: !20, line: 474, column: 2)
!980 = !DILocation(line: 471, column: 32, scope: !972)
!981 = !DILocation(line: 473, column: 2, scope: !972)
!982 = !DILocation(line: 473, column: 6, scope: !972)
!983 = !DILocation(line: 474, column: 9, scope: !979)
!984 = !DILocation(line: 474, column: 7, scope: !979)
!985 = !DILocation(line: 474, column: 14, scope: !978)
!986 = !DILocation(line: 474, column: 18, scope: !978)
!987 = !DILocation(line: 474, column: 16, scope: !978)
!988 = !DILocation(line: 474, column: 2, scope: !979)
!989 = !DILocation(line: 475, column: 3, scope: !977)
!990 = !DILocation(line: 475, column: 19, scope: !977)
!991 = !DILocation(line: 475, column: 26, scope: !977)
!992 = !DILocation(line: 475, column: 31, scope: !977)
!993 = !DILocation(line: 476, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !977, file: !20, line: 476, column: 7)
!995 = !DILocation(line: 476, column: 12, scope: !994)
!996 = !DILocation(line: 476, column: 17, scope: !994)
!997 = !DILocation(line: 476, column: 25, scope: !994)
!998 = !DILocation(line: 476, column: 7, scope: !977)
!999 = !DILocation(line: 477, column: 4, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !994, file: !20, line: 476, column: 40)
!1001 = !DILocation(line: 479, column: 24, scope: !977)
!1002 = !DILocation(line: 479, column: 29, scope: !977)
!1003 = !DILocation(line: 479, column: 34, scope: !977)
!1004 = !DILocation(line: 479, column: 17, scope: !977)
!1005 = !DILocation(line: 479, column: 3, scope: !977)
!1006 = !DILocation(line: 479, column: 8, scope: !977)
!1007 = !DILocation(line: 479, column: 15, scope: !977)
!1008 = !{!888, !535, i64 72}
!1009 = !DILocation(line: 480, column: 8, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !977, file: !20, line: 480, column: 7)
!1011 = !DILocation(line: 480, column: 13, scope: !1010)
!1012 = !DILocation(line: 480, column: 7, scope: !977)
!1013 = !DILocation(line: 482, column: 8, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !20, line: 480, column: 21)
!1015 = !DILocation(line: 482, column: 13, scope: !1014)
!1016 = !DILocation(line: 482, column: 18, scope: !1014)
!1017 = !DILocation(line: 481, column: 4, scope: !1014)
!1018 = !DILocation(line: 484, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !977, file: !20, line: 484, column: 7)
!1020 = !DILocation(line: 484, column: 17, scope: !1019)
!1021 = !DILocation(line: 484, column: 22, scope: !1019)
!1022 = !DILocation(line: 484, column: 27, scope: !1019)
!1023 = !DILocation(line: 484, column: 7, scope: !1019)
!1024 = !DILocation(line: 484, column: 48, scope: !1019)
!1025 = !DILocation(line: 484, column: 7, scope: !977)
!1026 = !DILocation(line: 486, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !20, line: 484, column: 53)
!1028 = !DILocation(line: 486, column: 13, scope: !1027)
!1029 = !DILocation(line: 486, column: 18, scope: !1027)
!1030 = !DILocation(line: 486, column: 38, scope: !1027)
!1031 = !DILocation(line: 486, column: 29, scope: !1027)
!1032 = !DILocation(line: 485, column: 4, scope: !1027)
!1033 = !DILocation(line: 488, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !977, file: !20, line: 488, column: 7)
!1035 = !DILocation(line: 488, column: 18, scope: !1034)
!1036 = !DILocation(line: 488, column: 29, scope: !1034)
!1037 = !DILocation(line: 488, column: 34, scope: !1034)
!1038 = !DILocation(line: 488, column: 39, scope: !1034)
!1039 = !DILocation(line: 488, column: 48, scope: !1034)
!1040 = !DILocation(line: 488, column: 7, scope: !1034)
!1041 = !DILocation(line: 489, column: 10, scope: !1034)
!1042 = !DILocation(line: 489, column: 15, scope: !1034)
!1043 = !DILocation(line: 489, column: 20, scope: !1034)
!1044 = !DILocation(line: 489, column: 7, scope: !1034)
!1045 = !DILocation(line: 488, column: 7, scope: !977)
!1046 = !DILocation(line: 491, column: 14, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1034, file: !20, line: 489, column: 29)
!1048 = !DILocation(line: 491, column: 5, scope: !1047)
!1049 = !DILocation(line: 490, column: 4, scope: !1047)
!1050 = !DILocation(line: 493, column: 2, scope: !978)
!1051 = !DILocation(line: 493, column: 2, scope: !977)
!1052 = !DILocation(line: 474, column: 26, scope: !978)
!1053 = !DILocation(line: 474, column: 2, scope: !978)
!1054 = distinct !{!1054, !988, !1055, !639, !640}
!1055 = !DILocation(line: 493, column: 2, scope: !979)
!1056 = !DILocation(line: 494, column: 1, scope: !972)
!1057 = distinct !DISubprogram(name: "read_symtabs", scope: !20, file: !20, line: 496, type: !643, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1066, !1067}
!1059 = !DILocalVariable(name: "fp", arg: 1, scope: !1057, file: !20, line: 496, type: !471)
!1060 = !DILocalVariable(name: "i", scope: !1057, file: !20, line: 498, type: !478)
!1061 = !DILocalVariable(name: "j", scope: !1057, file: !20, line: 498, type: !478)
!1062 = !DILocalVariable(name: "sec", scope: !1063, file: !20, line: 501, type: !190)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !20, line: 500, column: 30)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !20, line: 500, column: 2)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !20, line: 500, column: 2)
!1066 = !DILocalVariable(name: "num_syms", scope: !1063, file: !20, line: 502, type: !478)
!1067 = !DILocalVariable(name: "sym", scope: !1068, file: !20, line: 541, type: !209)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !20, line: 540, column: 35)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !20, line: 540, column: 4)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 540, column: 4)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !20, line: 504, column: 30)
!1072 = !DILocation(line: 496, column: 32, scope: !1057)
!1073 = !DILocation(line: 498, column: 2, scope: !1057)
!1074 = !DILocation(line: 498, column: 6, scope: !1057)
!1075 = !DILocation(line: 498, column: 8, scope: !1057)
!1076 = !DILocation(line: 500, column: 9, scope: !1065)
!1077 = !DILocation(line: 500, column: 7, scope: !1065)
!1078 = !DILocation(line: 500, column: 14, scope: !1064)
!1079 = !DILocation(line: 500, column: 18, scope: !1064)
!1080 = !DILocation(line: 500, column: 16, scope: !1064)
!1081 = !DILocation(line: 500, column: 2, scope: !1065)
!1082 = !DILocation(line: 501, column: 3, scope: !1063)
!1083 = !DILocation(line: 501, column: 19, scope: !1063)
!1084 = !DILocation(line: 501, column: 26, scope: !1063)
!1085 = !DILocation(line: 501, column: 31, scope: !1063)
!1086 = !DILocation(line: 502, column: 3, scope: !1063)
!1087 = !DILocation(line: 502, column: 7, scope: !1063)
!1088 = !DILocation(line: 504, column: 11, scope: !1063)
!1089 = !DILocation(line: 504, column: 16, scope: !1063)
!1090 = !DILocation(line: 504, column: 21, scope: !1063)
!1091 = !DILocation(line: 504, column: 3, scope: !1063)
!1092 = !DILocation(line: 506, column: 26, scope: !1071)
!1093 = !DILocation(line: 506, column: 31, scope: !1071)
!1094 = !DILocation(line: 506, column: 36, scope: !1071)
!1095 = !DILocation(line: 506, column: 19, scope: !1071)
!1096 = !DILocation(line: 506, column: 4, scope: !1071)
!1097 = !DILocation(line: 506, column: 9, scope: !1071)
!1098 = !DILocation(line: 506, column: 17, scope: !1071)
!1099 = !{!888, !535, i64 56}
!1100 = !DILocation(line: 507, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 507, column: 8)
!1102 = !DILocation(line: 507, column: 14, scope: !1101)
!1103 = !DILocation(line: 507, column: 8, scope: !1071)
!1104 = !DILocation(line: 509, column: 9, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !20, line: 507, column: 23)
!1106 = !DILocation(line: 509, column: 14, scope: !1105)
!1107 = !DILocation(line: 509, column: 19, scope: !1105)
!1108 = !DILocation(line: 508, column: 5, scope: !1105)
!1109 = !DILocation(line: 511, column: 14, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 511, column: 8)
!1111 = !DILocation(line: 511, column: 18, scope: !1110)
!1112 = !DILocation(line: 511, column: 23, scope: !1110)
!1113 = !DILocation(line: 511, column: 28, scope: !1110)
!1114 = !DILocation(line: 511, column: 8, scope: !1110)
!1115 = !DILocation(line: 511, column: 49, scope: !1110)
!1116 = !DILocation(line: 511, column: 8, scope: !1071)
!1117 = !DILocation(line: 513, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1110, file: !20, line: 511, column: 54)
!1119 = !DILocation(line: 513, column: 14, scope: !1118)
!1120 = !DILocation(line: 513, column: 19, scope: !1118)
!1121 = !DILocation(line: 513, column: 39, scope: !1118)
!1122 = !DILocation(line: 513, column: 30, scope: !1118)
!1123 = !DILocation(line: 512, column: 5, scope: !1118)
!1124 = !DILocation(line: 515, column: 14, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 515, column: 8)
!1126 = !DILocation(line: 515, column: 19, scope: !1125)
!1127 = !DILocation(line: 515, column: 31, scope: !1125)
!1128 = !DILocation(line: 515, column: 36, scope: !1125)
!1129 = !DILocation(line: 515, column: 41, scope: !1125)
!1130 = !DILocation(line: 515, column: 50, scope: !1125)
!1131 = !DILocation(line: 515, column: 8, scope: !1125)
!1132 = !DILocation(line: 516, column: 11, scope: !1125)
!1133 = !DILocation(line: 516, column: 16, scope: !1125)
!1134 = !DILocation(line: 516, column: 21, scope: !1125)
!1135 = !DILocation(line: 516, column: 8, scope: !1125)
!1136 = !DILocation(line: 515, column: 8, scope: !1071)
!1137 = !DILocation(line: 518, column: 18, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !20, line: 516, column: 30)
!1139 = !DILocation(line: 518, column: 9, scope: !1138)
!1140 = !DILocation(line: 517, column: 5, scope: !1138)
!1141 = !DILocation(line: 520, column: 19, scope: !1071)
!1142 = !DILocation(line: 520, column: 17, scope: !1071)
!1143 = !DILocation(line: 521, column: 4, scope: !1071)
!1144 = !DILocation(line: 524, column: 15, scope: !1071)
!1145 = !DILocation(line: 524, column: 20, scope: !1071)
!1146 = !DILocation(line: 524, column: 25, scope: !1071)
!1147 = !DILocation(line: 524, column: 33, scope: !1071)
!1148 = !DILocation(line: 524, column: 13, scope: !1071)
!1149 = !DILocation(line: 526, column: 25, scope: !1071)
!1150 = !DILocation(line: 526, column: 30, scope: !1071)
!1151 = !DILocation(line: 526, column: 35, scope: !1071)
!1152 = !DILocation(line: 526, column: 18, scope: !1071)
!1153 = !DILocation(line: 526, column: 4, scope: !1071)
!1154 = !DILocation(line: 526, column: 9, scope: !1071)
!1155 = !DILocation(line: 526, column: 16, scope: !1071)
!1156 = !{!888, !535, i64 48}
!1157 = !DILocation(line: 527, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 527, column: 8)
!1159 = !DILocation(line: 527, column: 14, scope: !1158)
!1160 = !DILocation(line: 527, column: 8, scope: !1071)
!1161 = !DILocation(line: 529, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !20, line: 527, column: 22)
!1163 = !DILocation(line: 529, column: 14, scope: !1162)
!1164 = !DILocation(line: 529, column: 19, scope: !1162)
!1165 = !DILocation(line: 528, column: 5, scope: !1162)
!1166 = !DILocation(line: 531, column: 14, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 531, column: 8)
!1168 = !DILocation(line: 531, column: 18, scope: !1167)
!1169 = !DILocation(line: 531, column: 23, scope: !1167)
!1170 = !DILocation(line: 531, column: 28, scope: !1167)
!1171 = !DILocation(line: 531, column: 8, scope: !1167)
!1172 = !DILocation(line: 531, column: 49, scope: !1167)
!1173 = !DILocation(line: 531, column: 8, scope: !1071)
!1174 = !DILocation(line: 533, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1167, file: !20, line: 531, column: 54)
!1176 = !DILocation(line: 533, column: 14, scope: !1175)
!1177 = !DILocation(line: 533, column: 19, scope: !1175)
!1178 = !DILocation(line: 533, column: 39, scope: !1175)
!1179 = !DILocation(line: 533, column: 30, scope: !1175)
!1180 = !DILocation(line: 532, column: 5, scope: !1175)
!1181 = !DILocation(line: 535, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1071, file: !20, line: 535, column: 8)
!1183 = !DILocation(line: 535, column: 19, scope: !1182)
!1184 = !DILocation(line: 535, column: 30, scope: !1182)
!1185 = !DILocation(line: 535, column: 35, scope: !1182)
!1186 = !DILocation(line: 535, column: 40, scope: !1182)
!1187 = !DILocation(line: 535, column: 49, scope: !1182)
!1188 = !DILocation(line: 535, column: 8, scope: !1182)
!1189 = !DILocation(line: 536, column: 11, scope: !1182)
!1190 = !DILocation(line: 536, column: 16, scope: !1182)
!1191 = !DILocation(line: 536, column: 21, scope: !1182)
!1192 = !DILocation(line: 536, column: 8, scope: !1182)
!1193 = !DILocation(line: 535, column: 8, scope: !1071)
!1194 = !DILocation(line: 538, column: 18, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1182, file: !20, line: 536, column: 30)
!1196 = !DILocation(line: 538, column: 9, scope: !1195)
!1197 = !DILocation(line: 537, column: 5, scope: !1195)
!1198 = !DILocation(line: 540, column: 11, scope: !1070)
!1199 = !DILocation(line: 540, column: 9, scope: !1070)
!1200 = !DILocation(line: 540, column: 16, scope: !1069)
!1201 = !DILocation(line: 540, column: 20, scope: !1069)
!1202 = !DILocation(line: 540, column: 18, scope: !1069)
!1203 = !DILocation(line: 540, column: 4, scope: !1070)
!1204 = !DILocation(line: 541, column: 5, scope: !1068)
!1205 = !DILocation(line: 541, column: 14, scope: !1068)
!1206 = !DILocation(line: 541, column: 21, scope: !1068)
!1207 = !DILocation(line: 541, column: 26, scope: !1068)
!1208 = !DILocation(line: 541, column: 33, scope: !1068)
!1209 = !DILocation(line: 543, column: 21, scope: !1068)
!1210 = !{!1211, !540, i64 0}
!1211 = !{!"", !540, i64 0, !540, i64 4, !540, i64 8, !536, i64 12, !536, i64 13, !688, i64 14}
!1212 = !DILocation(line: 543, column: 5, scope: !1068)
!1213 = !DILocation(line: 543, column: 10, scope: !1068)
!1214 = !DILocation(line: 543, column: 19, scope: !1068)
!1215 = !DILocation(line: 544, column: 21, scope: !1068)
!1216 = !{!1211, !540, i64 4}
!1217 = !DILocation(line: 544, column: 5, scope: !1068)
!1218 = !DILocation(line: 544, column: 10, scope: !1068)
!1219 = !DILocation(line: 544, column: 19, scope: !1068)
!1220 = !DILocation(line: 545, column: 21, scope: !1068)
!1221 = !{!1211, !540, i64 8}
!1222 = !DILocation(line: 545, column: 5, scope: !1068)
!1223 = !DILocation(line: 545, column: 10, scope: !1068)
!1224 = !DILocation(line: 545, column: 19, scope: !1068)
!1225 = !DILocation(line: 546, column: 21, scope: !1068)
!1226 = !{!1211, !688, i64 14}
!1227 = !DILocation(line: 546, column: 5, scope: !1068)
!1228 = !DILocation(line: 546, column: 10, scope: !1068)
!1229 = !DILocation(line: 546, column: 19, scope: !1068)
!1230 = !DILocation(line: 547, column: 4, scope: !1069)
!1231 = !DILocation(line: 547, column: 4, scope: !1068)
!1232 = !DILocation(line: 540, column: 31, scope: !1069)
!1233 = !DILocation(line: 540, column: 4, scope: !1069)
!1234 = distinct !{!1234, !1203, !1235, !639, !640}
!1235 = !DILocation(line: 547, column: 4, scope: !1070)
!1236 = !DILocation(line: 548, column: 18, scope: !1071)
!1237 = !DILocation(line: 548, column: 16, scope: !1071)
!1238 = !DILocation(line: 549, column: 4, scope: !1071)
!1239 = !DILocation(line: 552, column: 4, scope: !1071)
!1240 = !DILocation(line: 554, column: 2, scope: !1064)
!1241 = !DILocation(line: 500, column: 26, scope: !1064)
!1242 = !DILocation(line: 500, column: 2, scope: !1064)
!1243 = distinct !{!1243, !1081, !1244, !639, !640}
!1244 = !DILocation(line: 554, column: 2, scope: !1065)
!1245 = !DILocation(line: 555, column: 1, scope: !1057)
!1246 = distinct !DISubprogram(name: "read_relocs", scope: !20, file: !20, line: 558, type: !643, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1255}
!1248 = !DILocalVariable(name: "fp", arg: 1, scope: !1246, file: !20, line: 558, type: !471)
!1249 = !DILocalVariable(name: "i", scope: !1246, file: !20, line: 560, type: !478)
!1250 = !DILocalVariable(name: "j", scope: !1246, file: !20, line: 560, type: !478)
!1251 = !DILocalVariable(name: "sec", scope: !1252, file: !20, line: 562, type: !190)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !20, line: 561, column: 30)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !20, line: 561, column: 2)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !20, line: 561, column: 2)
!1255 = !DILocalVariable(name: "rel", scope: !1256, file: !20, line: 581, type: !223)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !20, line: 580, column: 59)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !20, line: 580, column: 3)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !20, line: 580, column: 3)
!1259 = !DILocation(line: 558, column: 31, scope: !1246)
!1260 = !DILocation(line: 560, column: 2, scope: !1246)
!1261 = !DILocation(line: 560, column: 6, scope: !1246)
!1262 = !DILocation(line: 560, column: 8, scope: !1246)
!1263 = !DILocation(line: 561, column: 9, scope: !1254)
!1264 = !DILocation(line: 561, column: 7, scope: !1254)
!1265 = !DILocation(line: 561, column: 14, scope: !1253)
!1266 = !DILocation(line: 561, column: 18, scope: !1253)
!1267 = !DILocation(line: 561, column: 16, scope: !1253)
!1268 = !DILocation(line: 561, column: 2, scope: !1254)
!1269 = !DILocation(line: 562, column: 3, scope: !1252)
!1270 = !DILocation(line: 562, column: 19, scope: !1252)
!1271 = !DILocation(line: 562, column: 26, scope: !1252)
!1272 = !DILocation(line: 562, column: 31, scope: !1252)
!1273 = !DILocation(line: 563, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1252, file: !20, line: 563, column: 7)
!1275 = !DILocation(line: 563, column: 12, scope: !1274)
!1276 = !DILocation(line: 563, column: 17, scope: !1274)
!1277 = !DILocation(line: 563, column: 25, scope: !1274)
!1278 = !DILocation(line: 563, column: 7, scope: !1252)
!1279 = !DILocation(line: 564, column: 4, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !20, line: 563, column: 42)
!1281 = !DILocation(line: 566, column: 24, scope: !1252)
!1282 = !DILocation(line: 566, column: 29, scope: !1252)
!1283 = !DILocation(line: 566, column: 34, scope: !1252)
!1284 = !DILocation(line: 566, column: 17, scope: !1252)
!1285 = !DILocation(line: 566, column: 3, scope: !1252)
!1286 = !DILocation(line: 566, column: 8, scope: !1252)
!1287 = !DILocation(line: 566, column: 15, scope: !1252)
!1288 = !{!888, !535, i64 64}
!1289 = !DILocation(line: 567, column: 8, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1252, file: !20, line: 567, column: 7)
!1291 = !DILocation(line: 567, column: 13, scope: !1290)
!1292 = !DILocation(line: 567, column: 7, scope: !1252)
!1293 = !DILocation(line: 569, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !20, line: 567, column: 21)
!1295 = !DILocation(line: 569, column: 13, scope: !1294)
!1296 = !DILocation(line: 569, column: 18, scope: !1294)
!1297 = !DILocation(line: 568, column: 4, scope: !1294)
!1298 = !DILocation(line: 571, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1252, file: !20, line: 571, column: 7)
!1300 = !DILocation(line: 571, column: 17, scope: !1299)
!1301 = !DILocation(line: 571, column: 22, scope: !1299)
!1302 = !DILocation(line: 571, column: 27, scope: !1299)
!1303 = !DILocation(line: 571, column: 7, scope: !1299)
!1304 = !DILocation(line: 571, column: 48, scope: !1299)
!1305 = !DILocation(line: 571, column: 7, scope: !1252)
!1306 = !DILocation(line: 573, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !20, line: 571, column: 53)
!1308 = !DILocation(line: 573, column: 13, scope: !1307)
!1309 = !DILocation(line: 573, column: 18, scope: !1307)
!1310 = !DILocation(line: 573, column: 38, scope: !1307)
!1311 = !DILocation(line: 573, column: 29, scope: !1307)
!1312 = !DILocation(line: 572, column: 4, scope: !1307)
!1313 = !DILocation(line: 575, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1252, file: !20, line: 575, column: 7)
!1315 = !DILocation(line: 575, column: 18, scope: !1314)
!1316 = !DILocation(line: 575, column: 29, scope: !1314)
!1317 = !DILocation(line: 575, column: 34, scope: !1314)
!1318 = !DILocation(line: 575, column: 39, scope: !1314)
!1319 = !DILocation(line: 575, column: 48, scope: !1314)
!1320 = !DILocation(line: 575, column: 7, scope: !1314)
!1321 = !DILocation(line: 576, column: 10, scope: !1314)
!1322 = !DILocation(line: 576, column: 15, scope: !1314)
!1323 = !DILocation(line: 576, column: 20, scope: !1314)
!1324 = !DILocation(line: 576, column: 7, scope: !1314)
!1325 = !DILocation(line: 575, column: 7, scope: !1252)
!1326 = !DILocation(line: 578, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1314, file: !20, line: 576, column: 29)
!1328 = !DILocation(line: 578, column: 5, scope: !1327)
!1329 = !DILocation(line: 577, column: 4, scope: !1327)
!1330 = !DILocation(line: 580, column: 10, scope: !1258)
!1331 = !DILocation(line: 580, column: 8, scope: !1258)
!1332 = !DILocation(line: 580, column: 15, scope: !1257)
!1333 = !DILocation(line: 580, column: 19, scope: !1257)
!1334 = !DILocation(line: 580, column: 24, scope: !1257)
!1335 = !DILocation(line: 580, column: 29, scope: !1257)
!1336 = !DILocation(line: 580, column: 36, scope: !1257)
!1337 = !DILocation(line: 580, column: 17, scope: !1257)
!1338 = !DILocation(line: 580, column: 3, scope: !1258)
!1339 = !DILocation(line: 581, column: 4, scope: !1256)
!1340 = !DILocation(line: 581, column: 13, scope: !1256)
!1341 = !DILocation(line: 581, column: 20, scope: !1256)
!1342 = !DILocation(line: 581, column: 25, scope: !1256)
!1343 = !DILocation(line: 581, column: 32, scope: !1256)
!1344 = !DILocation(line: 582, column: 20, scope: !1256)
!1345 = !{!1346, !540, i64 0}
!1346 = !{!"", !540, i64 0, !540, i64 4}
!1347 = !DILocation(line: 582, column: 4, scope: !1256)
!1348 = !DILocation(line: 582, column: 9, scope: !1256)
!1349 = !DILocation(line: 582, column: 18, scope: !1256)
!1350 = !DILocation(line: 583, column: 20, scope: !1256)
!1351 = !{!1346, !540, i64 4}
!1352 = !DILocation(line: 583, column: 4, scope: !1256)
!1353 = !DILocation(line: 583, column: 9, scope: !1256)
!1354 = !DILocation(line: 583, column: 18, scope: !1256)
!1355 = !DILocation(line: 587, column: 3, scope: !1257)
!1356 = !DILocation(line: 587, column: 3, scope: !1256)
!1357 = !DILocation(line: 580, column: 55, scope: !1257)
!1358 = !DILocation(line: 580, column: 3, scope: !1257)
!1359 = distinct !{!1359, !1338, !1360, !639, !640}
!1360 = !DILocation(line: 587, column: 3, scope: !1258)
!1361 = !DILocation(line: 588, column: 2, scope: !1253)
!1362 = !DILocation(line: 588, column: 2, scope: !1252)
!1363 = !DILocation(line: 561, column: 26, scope: !1253)
!1364 = !DILocation(line: 561, column: 2, scope: !1253)
!1365 = distinct !{!1365, !1268, !1366, !639, !640}
!1366 = !DILocation(line: 588, column: 2, scope: !1254)
!1367 = !DILocation(line: 589, column: 1, scope: !1246)
!1368 = distinct !DISubprogram(name: "print_absolute_symbols", scope: !20, file: !20, line: 592, type: !1369, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null}
!1371 = !{!1372, !1373, !1374, !1378, !1379, !1380, !1384}
!1372 = !DILocalVariable(name: "i", scope: !1368, file: !20, line: 594, type: !478)
!1373 = !DILocalVariable(name: "format", scope: !1368, file: !20, line: 595, type: !39)
!1374 = !DILocalVariable(name: "sec", scope: !1375, file: !20, line: 605, type: !190)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !20, line: 604, column: 30)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !20, line: 604, column: 2)
!1377 = distinct !DILexicalBlock(scope: !1368, file: !20, line: 604, column: 2)
!1378 = !DILocalVariable(name: "sym_strtab", scope: !1375, file: !20, line: 606, type: !72)
!1379 = !DILocalVariable(name: "j", scope: !1375, file: !20, line: 607, type: !478)
!1380 = !DILocalVariable(name: "sym", scope: !1381, file: !20, line: 614, type: !209)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !20, line: 613, column: 59)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !20, line: 613, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !20, line: 613, column: 3)
!1384 = !DILocalVariable(name: "name", scope: !1381, file: !20, line: 615, type: !39)
!1385 = !DILocation(line: 594, column: 2, scope: !1368)
!1386 = !DILocation(line: 594, column: 6, scope: !1368)
!1387 = !DILocation(line: 595, column: 2, scope: !1368)
!1388 = !DILocation(line: 595, column: 14, scope: !1368)
!1389 = !DILocation(line: 600, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1368, file: !20, line: 597, column: 6)
!1391 = !DILocation(line: 602, column: 2, scope: !1368)
!1392 = !DILocation(line: 603, column: 2, scope: !1368)
!1393 = !DILocation(line: 604, column: 9, scope: !1377)
!1394 = !DILocation(line: 604, column: 7, scope: !1377)
!1395 = !DILocation(line: 604, column: 14, scope: !1376)
!1396 = !DILocation(line: 604, column: 18, scope: !1376)
!1397 = !DILocation(line: 604, column: 16, scope: !1376)
!1398 = !DILocation(line: 604, column: 2, scope: !1377)
!1399 = !DILocation(line: 605, column: 3, scope: !1375)
!1400 = !DILocation(line: 605, column: 19, scope: !1375)
!1401 = !DILocation(line: 605, column: 26, scope: !1375)
!1402 = !DILocation(line: 605, column: 31, scope: !1375)
!1403 = !DILocation(line: 606, column: 3, scope: !1375)
!1404 = !DILocation(line: 606, column: 9, scope: !1375)
!1405 = !DILocation(line: 607, column: 3, scope: !1375)
!1406 = !DILocation(line: 607, column: 7, scope: !1375)
!1407 = !DILocation(line: 609, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1375, file: !20, line: 609, column: 7)
!1409 = !DILocation(line: 609, column: 12, scope: !1408)
!1410 = !DILocation(line: 609, column: 17, scope: !1408)
!1411 = !DILocation(line: 609, column: 25, scope: !1408)
!1412 = !DILocation(line: 609, column: 7, scope: !1375)
!1413 = !DILocation(line: 610, column: 4, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !20, line: 609, column: 40)
!1415 = !DILocation(line: 612, column: 16, scope: !1375)
!1416 = !DILocation(line: 612, column: 21, scope: !1375)
!1417 = !DILocation(line: 612, column: 27, scope: !1375)
!1418 = !DILocation(line: 612, column: 14, scope: !1375)
!1419 = !DILocation(line: 613, column: 10, scope: !1383)
!1420 = !DILocation(line: 613, column: 8, scope: !1383)
!1421 = !DILocation(line: 613, column: 15, scope: !1382)
!1422 = !DILocation(line: 613, column: 19, scope: !1382)
!1423 = !DILocation(line: 613, column: 24, scope: !1382)
!1424 = !DILocation(line: 613, column: 29, scope: !1382)
!1425 = !DILocation(line: 613, column: 36, scope: !1382)
!1426 = !DILocation(line: 613, column: 17, scope: !1382)
!1427 = !DILocation(line: 613, column: 3, scope: !1383)
!1428 = !DILocation(line: 614, column: 4, scope: !1381)
!1429 = !DILocation(line: 614, column: 13, scope: !1381)
!1430 = !DILocation(line: 615, column: 4, scope: !1381)
!1431 = !DILocation(line: 615, column: 16, scope: !1381)
!1432 = !DILocation(line: 616, column: 11, scope: !1381)
!1433 = !DILocation(line: 616, column: 16, scope: !1381)
!1434 = !DILocation(line: 616, column: 23, scope: !1381)
!1435 = !DILocation(line: 616, column: 8, scope: !1381)
!1436 = !DILocation(line: 617, column: 20, scope: !1381)
!1437 = !DILocation(line: 617, column: 32, scope: !1381)
!1438 = !DILocation(line: 617, column: 11, scope: !1381)
!1439 = !DILocation(line: 617, column: 9, scope: !1381)
!1440 = !DILocation(line: 618, column: 8, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1381, file: !20, line: 618, column: 8)
!1442 = !DILocation(line: 618, column: 13, scope: !1441)
!1443 = !DILocation(line: 618, column: 22, scope: !1441)
!1444 = !DILocation(line: 618, column: 8, scope: !1381)
!1445 = !DILocation(line: 619, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !20, line: 618, column: 34)
!1447 = !DILocation(line: 621, column: 11, scope: !1381)
!1448 = !DILocation(line: 622, column: 5, scope: !1381)
!1449 = !DILocation(line: 622, column: 8, scope: !1381)
!1450 = !DILocation(line: 622, column: 13, scope: !1381)
!1451 = !DILocation(line: 622, column: 23, scope: !1381)
!1452 = !DILocation(line: 622, column: 28, scope: !1381)
!1453 = !DILocation(line: 623, column: 14, scope: !1381)
!1454 = !{!1211, !536, i64 12}
!1455 = !DILocation(line: 623, column: 5, scope: !1381)
!1456 = !DILocation(line: 624, column: 14, scope: !1381)
!1457 = !DILocation(line: 624, column: 5, scope: !1381)
!1458 = !DILocation(line: 625, column: 20, scope: !1381)
!1459 = !{!1211, !536, i64 13}
!1460 = !DILocation(line: 625, column: 5, scope: !1381)
!1461 = !DILocation(line: 626, column: 5, scope: !1381)
!1462 = !DILocation(line: 621, column: 4, scope: !1381)
!1463 = !DILocation(line: 627, column: 3, scope: !1382)
!1464 = !DILocation(line: 627, column: 3, scope: !1381)
!1465 = !DILocation(line: 613, column: 55, scope: !1382)
!1466 = !DILocation(line: 613, column: 3, scope: !1382)
!1467 = distinct !{!1467, !1427, !1468, !639, !640}
!1468 = !DILocation(line: 627, column: 3, scope: !1383)
!1469 = !DILocation(line: 628, column: 2, scope: !1376)
!1470 = !DILocation(line: 628, column: 2, scope: !1375)
!1471 = !DILocation(line: 604, column: 26, scope: !1376)
!1472 = !DILocation(line: 604, column: 2, scope: !1376)
!1473 = distinct !{!1473, !1398, !1474, !639, !640}
!1474 = !DILocation(line: 628, column: 2, scope: !1377)
!1475 = !DILocation(line: 629, column: 2, scope: !1368)
!1476 = !DILocation(line: 630, column: 1, scope: !1368)
!1477 = distinct !DISubprogram(name: "print_absolute_relocs", scope: !20, file: !20, line: 632, type: !1369, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1486, !1487, !1488, !1489, !1490, !1491, !1495, !1496}
!1479 = !DILocalVariable(name: "i", scope: !1477, file: !20, line: 634, type: !478)
!1480 = !DILocalVariable(name: "printed", scope: !1477, file: !20, line: 634, type: !478)
!1481 = !DILocalVariable(name: "format", scope: !1477, file: !20, line: 635, type: !39)
!1482 = !DILocalVariable(name: "sec", scope: !1483, file: !20, line: 643, type: !190)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !20, line: 642, column: 30)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !20, line: 642, column: 2)
!1485 = distinct !DILexicalBlock(scope: !1477, file: !20, line: 642, column: 2)
!1486 = !DILocalVariable(name: "sec_applies", scope: !1483, file: !20, line: 644, type: !190)
!1487 = !DILocalVariable(name: "sec_symtab", scope: !1483, file: !20, line: 644, type: !190)
!1488 = !DILocalVariable(name: "sym_strtab", scope: !1483, file: !20, line: 645, type: !72)
!1489 = !DILocalVariable(name: "sh_symtab", scope: !1483, file: !20, line: 646, type: !209)
!1490 = !DILocalVariable(name: "j", scope: !1483, file: !20, line: 647, type: !478)
!1491 = !DILocalVariable(name: "rel", scope: !1492, file: !20, line: 667, type: !223)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !20, line: 666, column: 59)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !20, line: 666, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1483, file: !20, line: 666, column: 3)
!1495 = !DILocalVariable(name: "sym", scope: !1492, file: !20, line: 668, type: !209)
!1496 = !DILocalVariable(name: "name", scope: !1492, file: !20, line: 669, type: !39)
!1497 = !DILocation(line: 634, column: 2, scope: !1477)
!1498 = !DILocation(line: 634, column: 6, scope: !1477)
!1499 = !DILocation(line: 634, column: 9, scope: !1477)
!1500 = !DILocation(line: 635, column: 2, scope: !1477)
!1501 = !DILocation(line: 635, column: 14, scope: !1477)
!1502 = !DILocation(line: 640, column: 10, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1477, file: !20, line: 637, column: 6)
!1504 = !DILocation(line: 642, column: 9, scope: !1485)
!1505 = !DILocation(line: 642, column: 7, scope: !1485)
!1506 = !DILocation(line: 642, column: 14, scope: !1484)
!1507 = !DILocation(line: 642, column: 18, scope: !1484)
!1508 = !DILocation(line: 642, column: 16, scope: !1484)
!1509 = !DILocation(line: 642, column: 2, scope: !1485)
!1510 = !DILocation(line: 643, column: 3, scope: !1483)
!1511 = !DILocation(line: 643, column: 19, scope: !1483)
!1512 = !DILocation(line: 643, column: 26, scope: !1483)
!1513 = !DILocation(line: 643, column: 31, scope: !1483)
!1514 = !DILocation(line: 644, column: 3, scope: !1483)
!1515 = !DILocation(line: 644, column: 19, scope: !1483)
!1516 = !DILocation(line: 644, column: 33, scope: !1483)
!1517 = !DILocation(line: 645, column: 3, scope: !1483)
!1518 = !DILocation(line: 645, column: 9, scope: !1483)
!1519 = !DILocation(line: 646, column: 3, scope: !1483)
!1520 = !DILocation(line: 646, column: 12, scope: !1483)
!1521 = !DILocation(line: 647, column: 3, scope: !1483)
!1522 = !DILocation(line: 647, column: 7, scope: !1483)
!1523 = !DILocation(line: 648, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1483, file: !20, line: 648, column: 7)
!1525 = !DILocation(line: 648, column: 12, scope: !1524)
!1526 = !DILocation(line: 648, column: 17, scope: !1524)
!1527 = !DILocation(line: 648, column: 25, scope: !1524)
!1528 = !DILocation(line: 648, column: 7, scope: !1483)
!1529 = !DILocation(line: 649, column: 4, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !20, line: 648, column: 42)
!1531 = !DILocation(line: 651, column: 17, scope: !1483)
!1532 = !DILocation(line: 651, column: 22, scope: !1483)
!1533 = !DILocation(line: 651, column: 15, scope: !1483)
!1534 = !DILocation(line: 652, column: 18, scope: !1483)
!1535 = !DILocation(line: 652, column: 23, scope: !1483)
!1536 = !DILocation(line: 652, column: 28, scope: !1483)
!1537 = !DILocation(line: 652, column: 33, scope: !1483)
!1538 = !DILocation(line: 652, column: 15, scope: !1483)
!1539 = !DILocation(line: 653, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1483, file: !20, line: 653, column: 7)
!1541 = !DILocation(line: 653, column: 22, scope: !1540)
!1542 = !DILocation(line: 653, column: 27, scope: !1540)
!1543 = !DILocation(line: 653, column: 36, scope: !1540)
!1544 = !DILocation(line: 653, column: 7, scope: !1483)
!1545 = !DILocation(line: 654, column: 4, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !20, line: 653, column: 50)
!1547 = !DILocation(line: 661, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1483, file: !20, line: 661, column: 7)
!1549 = !DILocation(line: 661, column: 20, scope: !1548)
!1550 = !DILocation(line: 661, column: 25, scope: !1548)
!1551 = !DILocation(line: 661, column: 33, scope: !1548)
!1552 = !DILocation(line: 661, column: 7, scope: !1483)
!1553 = !DILocation(line: 662, column: 4, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !20, line: 661, column: 46)
!1555 = !DILocation(line: 664, column: 16, scope: !1483)
!1556 = !DILocation(line: 664, column: 28, scope: !1483)
!1557 = !DILocation(line: 664, column: 14, scope: !1483)
!1558 = !DILocation(line: 665, column: 16, scope: !1483)
!1559 = !DILocation(line: 665, column: 28, scope: !1483)
!1560 = !DILocation(line: 665, column: 34, scope: !1483)
!1561 = !DILocation(line: 665, column: 14, scope: !1483)
!1562 = !DILocation(line: 666, column: 10, scope: !1494)
!1563 = !DILocation(line: 666, column: 8, scope: !1494)
!1564 = !DILocation(line: 666, column: 15, scope: !1493)
!1565 = !DILocation(line: 666, column: 19, scope: !1493)
!1566 = !DILocation(line: 666, column: 24, scope: !1493)
!1567 = !DILocation(line: 666, column: 29, scope: !1493)
!1568 = !DILocation(line: 666, column: 36, scope: !1493)
!1569 = !DILocation(line: 666, column: 17, scope: !1493)
!1570 = !DILocation(line: 666, column: 3, scope: !1494)
!1571 = !DILocation(line: 667, column: 4, scope: !1492)
!1572 = !DILocation(line: 667, column: 13, scope: !1492)
!1573 = !DILocation(line: 668, column: 4, scope: !1492)
!1574 = !DILocation(line: 668, column: 13, scope: !1492)
!1575 = !DILocation(line: 669, column: 4, scope: !1492)
!1576 = !DILocation(line: 669, column: 16, scope: !1492)
!1577 = !DILocation(line: 670, column: 11, scope: !1492)
!1578 = !DILocation(line: 670, column: 16, scope: !1492)
!1579 = !DILocation(line: 670, column: 23, scope: !1492)
!1580 = !DILocation(line: 670, column: 8, scope: !1492)
!1581 = !DILocation(line: 671, column: 11, scope: !1492)
!1582 = !DILocation(line: 671, column: 21, scope: !1492)
!1583 = !DILocation(line: 671, column: 8, scope: !1492)
!1584 = !DILocation(line: 672, column: 20, scope: !1492)
!1585 = !DILocation(line: 672, column: 32, scope: !1492)
!1586 = !DILocation(line: 672, column: 11, scope: !1492)
!1587 = !DILocation(line: 672, column: 9, scope: !1492)
!1588 = !DILocation(line: 673, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1492, file: !20, line: 673, column: 8)
!1590 = !DILocation(line: 673, column: 13, scope: !1589)
!1591 = !DILocation(line: 673, column: 22, scope: !1589)
!1592 = !DILocation(line: 673, column: 8, scope: !1492)
!1593 = !DILocation(line: 674, column: 5, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !20, line: 673, column: 34)
!1595 = !DILocation(line: 690, column: 24, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1492, file: !20, line: 690, column: 8)
!1597 = !DILocation(line: 690, column: 8, scope: !1596)
!1598 = !DILocation(line: 690, column: 30, scope: !1596)
!1599 = !DILocation(line: 690, column: 49, scope: !1596)
!1600 = !DILocation(line: 690, column: 33, scope: !1596)
!1601 = !DILocation(line: 690, column: 8, scope: !1492)
!1602 = !DILocation(line: 691, column: 5, scope: !1596)
!1603 = !DILocation(line: 693, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1492, file: !20, line: 693, column: 8)
!1605 = !DILocation(line: 693, column: 8, scope: !1492)
!1606 = !DILocation(line: 694, column: 5, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !20, line: 693, column: 18)
!1608 = !DILocation(line: 696, column: 5, scope: !1607)
!1609 = !DILocation(line: 698, column: 13, scope: !1607)
!1610 = !DILocation(line: 699, column: 4, scope: !1607)
!1611 = !DILocation(line: 701, column: 11, scope: !1492)
!1612 = !DILocation(line: 702, column: 5, scope: !1492)
!1613 = !DILocation(line: 702, column: 10, scope: !1492)
!1614 = !DILocation(line: 703, column: 5, scope: !1492)
!1615 = !DILocation(line: 703, column: 10, scope: !1492)
!1616 = !DILocation(line: 704, column: 14, scope: !1492)
!1617 = !DILocation(line: 704, column: 5, scope: !1492)
!1618 = !DILocation(line: 705, column: 5, scope: !1492)
!1619 = !DILocation(line: 705, column: 10, scope: !1492)
!1620 = !DILocation(line: 706, column: 5, scope: !1492)
!1621 = !DILocation(line: 701, column: 4, scope: !1492)
!1622 = !DILocation(line: 707, column: 3, scope: !1493)
!1623 = !DILocation(line: 707, column: 3, scope: !1492)
!1624 = !DILocation(line: 666, column: 55, scope: !1493)
!1625 = !DILocation(line: 666, column: 3, scope: !1493)
!1626 = distinct !{!1626, !1570, !1627, !639, !640}
!1627 = !DILocation(line: 707, column: 3, scope: !1494)
!1628 = !DILocation(line: 708, column: 2, scope: !1484)
!1629 = !DILocation(line: 708, column: 2, scope: !1483)
!1630 = !DILocation(line: 642, column: 26, scope: !1484)
!1631 = !DILocation(line: 642, column: 2, scope: !1484)
!1632 = distinct !{!1632, !1509, !1633, !639, !640}
!1633 = !DILocation(line: 708, column: 2, scope: !1485)
!1634 = !DILocation(line: 710, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1477, file: !20, line: 710, column: 6)
!1636 = !DILocation(line: 710, column: 6, scope: !1477)
!1637 = !DILocation(line: 711, column: 3, scope: !1635)
!1638 = !DILocation(line: 712, column: 1, scope: !1477)
!1639 = distinct !DISubprogram(name: "print_reloc_info", scope: !20, file: !20, line: 1175, type: !1369, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1640 = !DILocation(line: 1177, column: 2, scope: !1639)
!1641 = !DILocation(line: 1178, column: 2, scope: !1639)
!1642 = !DILocation(line: 1179, column: 1, scope: !1639)
!1643 = distinct !DISubprogram(name: "emit_relocs", scope: !20, file: !20, line: 1080, type: !1644, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !478, !478}
!1646 = !{!1647, !1648, !1649, !1650, !1654}
!1647 = !DILocalVariable(name: "as_text", arg: 1, scope: !1643, file: !20, line: 1080, type: !478)
!1648 = !DILocalVariable(name: "use_real_mode", arg: 2, scope: !1643, file: !20, line: 1080, type: !478)
!1649 = !DILocalVariable(name: "i", scope: !1643, file: !20, line: 1082, type: !478)
!1650 = !DILocalVariable(name: "write_reloc", scope: !1643, file: !20, line: 1083, type: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!478, !163, !471}
!1654 = !DILocalVariable(name: "do_reloc", scope: !1643, file: !20, line: 1084, type: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!478, !190, !223, !209, !39}
!1658 = !DILocation(line: 1080, column: 29, scope: !1643)
!1659 = !DILocation(line: 1080, column: 42, scope: !1643)
!1660 = !DILocation(line: 1082, column: 2, scope: !1643)
!1661 = !DILocation(line: 1082, column: 6, scope: !1643)
!1662 = !DILocation(line: 1083, column: 2, scope: !1643)
!1663 = !DILocation(line: 1083, column: 8, scope: !1643)
!1664 = !DILocation(line: 1084, column: 2, scope: !1643)
!1665 = !DILocation(line: 1084, column: 8, scope: !1643)
!1666 = !DILocation(line: 1093, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1643, file: !20, line: 1093, column: 6)
!1668 = !DILocation(line: 1093, column: 6, scope: !1643)
!1669 = !DILocation(line: 1094, column: 12, scope: !1667)
!1670 = !DILocation(line: 1094, column: 3, scope: !1667)
!1671 = !DILocation(line: 1096, column: 12, scope: !1667)
!1672 = !DILocation(line: 1100, column: 14, scope: !1643)
!1673 = !DILocation(line: 1100, column: 2, scope: !1643)
!1674 = !DILocation(line: 1102, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1643, file: !20, line: 1102, column: 6)
!1676 = !{!1677, !730, i64 8}
!1677 = !{!"relocs", !535, i64 0, !730, i64 8, !730, i64 16}
!1678 = !DILocation(line: 1102, column: 6, scope: !1675)
!1679 = !DILocation(line: 1102, column: 21, scope: !1675)
!1680 = !DILocation(line: 1102, column: 25, scope: !1675)
!1681 = !DILocation(line: 1102, column: 6, scope: !1643)
!1682 = !DILocation(line: 1103, column: 3, scope: !1675)
!1683 = !DILocation(line: 1106, column: 2, scope: !1643)
!1684 = !DILocation(line: 1111, column: 2, scope: !1643)
!1685 = !DILocation(line: 1115, column: 6, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1643, file: !20, line: 1115, column: 6)
!1687 = !DILocation(line: 1115, column: 6, scope: !1643)
!1688 = !DILocation(line: 1119, column: 3, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !20, line: 1115, column: 15)
!1690 = !DILocation(line: 1120, column: 3, scope: !1689)
!1691 = !DILocation(line: 1121, column: 15, scope: !1689)
!1692 = !DILocation(line: 1122, column: 2, scope: !1689)
!1693 = !DILocation(line: 1124, column: 6, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1643, file: !20, line: 1124, column: 6)
!1695 = !DILocation(line: 1124, column: 6, scope: !1643)
!1696 = !DILocation(line: 1125, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !20, line: 1124, column: 21)
!1698 = !DILocation(line: 1125, column: 24, scope: !1697)
!1699 = !DILocation(line: 1125, column: 15, scope: !1697)
!1700 = !DILocation(line: 1125, column: 31, scope: !1697)
!1701 = !DILocation(line: 1126, column: 10, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !20, line: 1126, column: 3)
!1703 = !DILocation(line: 1126, column: 8, scope: !1702)
!1704 = !DILocation(line: 1126, column: 15, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !20, line: 1126, column: 3)
!1706 = !DILocation(line: 1126, column: 28, scope: !1705)
!1707 = !DILocation(line: 1126, column: 17, scope: !1705)
!1708 = !DILocation(line: 1126, column: 3, scope: !1702)
!1709 = !DILocation(line: 1127, column: 4, scope: !1705)
!1710 = !DILocation(line: 1127, column: 25, scope: !1705)
!1711 = !{!1677, !535, i64 0}
!1712 = !DILocation(line: 1127, column: 32, scope: !1705)
!1713 = !DILocation(line: 1127, column: 16, scope: !1705)
!1714 = !DILocation(line: 1127, column: 36, scope: !1705)
!1715 = !DILocation(line: 1126, column: 36, scope: !1705)
!1716 = !DILocation(line: 1126, column: 3, scope: !1705)
!1717 = distinct !{!1717, !1708, !1718, !639, !640}
!1718 = !DILocation(line: 1127, column: 42, scope: !1702)
!1719 = !DILocation(line: 1129, column: 3, scope: !1697)
!1720 = !DILocation(line: 1129, column: 24, scope: !1697)
!1721 = !DILocation(line: 1129, column: 15, scope: !1697)
!1722 = !DILocation(line: 1129, column: 31, scope: !1697)
!1723 = !DILocation(line: 1130, column: 10, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1697, file: !20, line: 1130, column: 3)
!1725 = !DILocation(line: 1130, column: 8, scope: !1724)
!1726 = !DILocation(line: 1130, column: 15, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !20, line: 1130, column: 3)
!1728 = !DILocation(line: 1130, column: 28, scope: !1727)
!1729 = !DILocation(line: 1130, column: 17, scope: !1727)
!1730 = !DILocation(line: 1130, column: 3, scope: !1724)
!1731 = !DILocation(line: 1131, column: 4, scope: !1727)
!1732 = !DILocation(line: 1131, column: 25, scope: !1727)
!1733 = !DILocation(line: 1131, column: 32, scope: !1727)
!1734 = !DILocation(line: 1131, column: 16, scope: !1727)
!1735 = !DILocation(line: 1131, column: 36, scope: !1727)
!1736 = !DILocation(line: 1130, column: 36, scope: !1727)
!1737 = !DILocation(line: 1130, column: 3, scope: !1727)
!1738 = distinct !{!1738, !1730, !1739, !639, !640}
!1739 = !DILocation(line: 1131, column: 42, scope: !1724)
!1740 = !DILocation(line: 1132, column: 2, scope: !1697)
!1741 = !DILocation(line: 1150, column: 3, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1694, file: !20, line: 1132, column: 9)
!1743 = !DILocation(line: 1150, column: 18, scope: !1742)
!1744 = !DILocation(line: 1153, column: 10, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !20, line: 1153, column: 3)
!1746 = !DILocation(line: 1153, column: 8, scope: !1745)
!1747 = !DILocation(line: 1153, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !20, line: 1153, column: 3)
!1749 = !DILocation(line: 1153, column: 28, scope: !1748)
!1750 = !DILocation(line: 1153, column: 17, scope: !1748)
!1751 = !DILocation(line: 1153, column: 3, scope: !1745)
!1752 = !DILocation(line: 1154, column: 4, scope: !1748)
!1753 = !DILocation(line: 1154, column: 25, scope: !1748)
!1754 = !DILocation(line: 1154, column: 32, scope: !1748)
!1755 = !DILocation(line: 1154, column: 16, scope: !1748)
!1756 = !DILocation(line: 1154, column: 36, scope: !1748)
!1757 = !DILocation(line: 1153, column: 36, scope: !1748)
!1758 = !DILocation(line: 1153, column: 3, scope: !1748)
!1759 = distinct !{!1759, !1751, !1760, !639, !640}
!1760 = !DILocation(line: 1154, column: 42, scope: !1745)
!1761 = !DILocation(line: 1156, column: 1, scope: !1643)
!1762 = !DISubprogram(name: "regcomp", scope: !60, file: !60, line: 675, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!478, !1765, !1767, !478}
!1765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1768 = !DISubprogram(name: "regerror", scope: !60, file: !60, line: 685, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!76, !478, !1771, !1774, !76}
!1771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1774 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!1775 = !DISubprogram(name: "die", scope: !6, file: !6, line: 21, type: !1776, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !72, null}
!1778 = !DISubprogram(name: "fread", scope: !1779, file: !1779, line: 675, type: !1780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1779 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!16, !1782, !76, !76, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !520)
!1783 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !471)
!1784 = !DISubprogram(name: "strerror", scope: !1785, file: !1785, line: 419, type: !1786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1785 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!72, !478}
!1788 = !DISubprogram(name: "__errno_location", scope: !1789, file: !1789, line: 37, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1793 = !DISubprogram(name: "memcmp", scope: !1785, file: !1785, line: 64, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!478, !1796, !1796, !76}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1798 = distinct !DISubprogram(name: "elf16_to_cpu", scope: !20, file: !20, line: 322, type: !1799, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!155, !155}
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "val", arg: 1, scope: !1798, file: !20, line: 322, type: !155)
!1803 = !{!688, !688, i64 0}
!1804 = !DILocation(line: 322, column: 39, scope: !1798)
!1805 = !DILocation(line: 324, column: 9, scope: !1798)
!1806 = !DILocation(line: 324, column: 2, scope: !1798)
!1807 = distinct !DISubprogram(name: "elf32_to_cpu", scope: !20, file: !20, line: 327, type: !1808, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!163, !163}
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "val", arg: 1, scope: !1807, file: !20, line: 327, type: !163)
!1812 = !DILocation(line: 327, column: 39, scope: !1807)
!1813 = !DILocation(line: 329, column: 9, scope: !1807)
!1814 = !DILocation(line: 329, column: 2, scope: !1807)
!1815 = !DISubprogram(name: "fseek", scope: !1779, file: !1779, line: 713, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!478, !471, !499, !478}
!1818 = !DISubprogram(name: "calloc", scope: !1819, file: !1819, line: 543, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1819 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!520, !76, !76}
!1822 = !DISubprogram(name: "malloc", scope: !1819, file: !1819, line: 540, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!520, !76}
!1825 = !DISubprogram(name: "printf", scope: !1779, file: !1779, line: 356, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!478, !1767, null}
!1828 = distinct !DISubprogram(name: "sym_name", scope: !20, file: !20, line: 271, type: !1829, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!39, !39, !209}
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "sym_strtab", arg: 1, scope: !1828, file: !20, line: 271, type: !39)
!1833 = !DILocalVariable(name: "sym", arg: 2, scope: !1828, file: !20, line: 271, type: !209)
!1834 = !DILocalVariable(name: "name", scope: !1828, file: !20, line: 273, type: !39)
!1835 = !DILocation(line: 271, column: 41, scope: !1828)
!1836 = !DILocation(line: 271, column: 62, scope: !1828)
!1837 = !DILocation(line: 273, column: 2, scope: !1828)
!1838 = !DILocation(line: 273, column: 14, scope: !1828)
!1839 = !DILocation(line: 274, column: 7, scope: !1828)
!1840 = !DILocation(line: 275, column: 6, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1828, file: !20, line: 275, column: 6)
!1842 = !DILocation(line: 275, column: 11, scope: !1841)
!1843 = !DILocation(line: 275, column: 6, scope: !1828)
!1844 = !DILocation(line: 276, column: 10, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !20, line: 275, column: 20)
!1846 = !DILocation(line: 276, column: 23, scope: !1845)
!1847 = !DILocation(line: 276, column: 28, scope: !1845)
!1848 = !DILocation(line: 276, column: 21, scope: !1845)
!1849 = !DILocation(line: 276, column: 8, scope: !1845)
!1850 = !DILocation(line: 277, column: 2, scope: !1845)
!1851 = !DILocation(line: 279, column: 29, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1841, file: !20, line: 278, column: 7)
!1853 = !DILocation(line: 279, column: 19, scope: !1852)
!1854 = !DILocation(line: 279, column: 10, scope: !1852)
!1855 = !DILocation(line: 279, column: 8, scope: !1852)
!1856 = !DILocation(line: 281, column: 9, scope: !1828)
!1857 = !DILocation(line: 282, column: 1, scope: !1828)
!1858 = !DILocation(line: 281, column: 2, scope: !1828)
!1859 = !DILocation(line: 152, column: 38, scope: !309)
!1860 = !DILocation(line: 165, column: 2, scope: !309)
!1861 = !DILocation(line: 165, column: 14, scope: !309)
!1862 = !DILocation(line: 166, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !309, file: !20, line: 166, column: 6)
!1864 = !DILocation(line: 166, column: 11, scope: !1863)
!1865 = !DILocation(line: 166, column: 6, scope: !309)
!1866 = !DILocation(line: 167, column: 20, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !20, line: 166, column: 36)
!1868 = !DILocation(line: 167, column: 10, scope: !1867)
!1869 = !DILocation(line: 167, column: 8, scope: !1867)
!1870 = !DILocation(line: 168, column: 2, scope: !1867)
!1871 = !DILocation(line: 169, column: 9, scope: !309)
!1872 = !DILocation(line: 170, column: 1, scope: !309)
!1873 = !DILocation(line: 169, column: 2, scope: !309)
!1874 = !DILocation(line: 172, column: 38, scope: !332)
!1875 = !DILocation(line: 181, column: 2, scope: !332)
!1876 = !DILocation(line: 181, column: 14, scope: !332)
!1877 = !DILocation(line: 182, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !332, file: !20, line: 182, column: 6)
!1879 = !DILocation(line: 182, column: 11, scope: !1878)
!1880 = !DILocation(line: 182, column: 6, scope: !332)
!1881 = !DILocation(line: 183, column: 20, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !20, line: 182, column: 36)
!1883 = !DILocation(line: 183, column: 10, scope: !1882)
!1884 = !DILocation(line: 183, column: 8, scope: !1882)
!1885 = !DILocation(line: 184, column: 2, scope: !1882)
!1886 = !DILocation(line: 185, column: 9, scope: !332)
!1887 = !DILocation(line: 186, column: 1, scope: !332)
!1888 = !DILocation(line: 185, column: 2, scope: !332)
!1889 = !DILocation(line: 188, column: 44, scope: !352)
!1890 = !DILocation(line: 198, column: 2, scope: !352)
!1891 = !DILocation(line: 198, column: 14, scope: !352)
!1892 = !DILocation(line: 199, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !352, file: !20, line: 199, column: 6)
!1894 = !DILocation(line: 199, column: 17, scope: !1893)
!1895 = !DILocation(line: 199, column: 6, scope: !352)
!1896 = !DILocation(line: 200, column: 26, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !20, line: 199, column: 48)
!1898 = !DILocation(line: 200, column: 10, scope: !1897)
!1899 = !DILocation(line: 200, column: 8, scope: !1897)
!1900 = !DILocation(line: 201, column: 2, scope: !1897)
!1901 = !DILocation(line: 202, column: 9, scope: !352)
!1902 = !DILocation(line: 203, column: 1, scope: !352)
!1903 = !DILocation(line: 202, column: 2, scope: !352)
!1904 = distinct !DISubprogram(name: "sec_name", scope: !20, file: !20, line: 253, type: !310, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1905)
!1905 = !{!1906, !1907, !1908}
!1906 = !DILocalVariable(name: "shndx", arg: 1, scope: !1904, file: !20, line: 253, type: !7)
!1907 = !DILocalVariable(name: "sec_strtab", scope: !1904, file: !20, line: 255, type: !39)
!1908 = !DILocalVariable(name: "name", scope: !1904, file: !20, line: 256, type: !39)
!1909 = !DILocation(line: 253, column: 38, scope: !1904)
!1910 = !DILocation(line: 255, column: 2, scope: !1904)
!1911 = !DILocation(line: 255, column: 14, scope: !1904)
!1912 = !DILocation(line: 256, column: 2, scope: !1904)
!1913 = !DILocation(line: 256, column: 14, scope: !1904)
!1914 = !DILocation(line: 257, column: 15, scope: !1904)
!1915 = !DILocation(line: 257, column: 20, scope: !1904)
!1916 = !DILocation(line: 257, column: 30, scope: !1904)
!1917 = !DILocation(line: 257, column: 13, scope: !1904)
!1918 = !DILocation(line: 258, column: 7, scope: !1904)
!1919 = !DILocation(line: 259, column: 6, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1904, file: !20, line: 259, column: 6)
!1921 = !DILocation(line: 259, column: 14, scope: !1920)
!1922 = !DILocation(line: 259, column: 12, scope: !1920)
!1923 = !DILocation(line: 259, column: 6, scope: !1904)
!1924 = !DILocation(line: 260, column: 10, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1920, file: !20, line: 259, column: 21)
!1926 = !DILocation(line: 260, column: 23, scope: !1925)
!1927 = !DILocation(line: 260, column: 28, scope: !1925)
!1928 = !DILocation(line: 260, column: 35, scope: !1925)
!1929 = !DILocation(line: 260, column: 40, scope: !1925)
!1930 = !DILocation(line: 260, column: 21, scope: !1925)
!1931 = !DILocation(line: 260, column: 8, scope: !1925)
!1932 = !DILocation(line: 261, column: 2, scope: !1925)
!1933 = !DILocation(line: 262, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1920, file: !20, line: 262, column: 11)
!1935 = !DILocation(line: 262, column: 17, scope: !1934)
!1936 = !DILocation(line: 262, column: 11, scope: !1920)
!1937 = !DILocation(line: 263, column: 8, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !20, line: 262, column: 29)
!1939 = !DILocation(line: 264, column: 2, scope: !1938)
!1940 = !DILocation(line: 265, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !20, line: 265, column: 11)
!1942 = !DILocation(line: 265, column: 17, scope: !1941)
!1943 = !DILocation(line: 265, column: 11, scope: !1934)
!1944 = !DILocation(line: 266, column: 8, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !20, line: 265, column: 32)
!1946 = !DILocation(line: 267, column: 2, scope: !1945)
!1947 = !DILocation(line: 268, column: 9, scope: !1904)
!1948 = !DILocation(line: 269, column: 1, scope: !1904)
!1949 = !DILocation(line: 268, column: 2, scope: !1904)
!1950 = distinct !DISubprogram(name: "sym_index", scope: !20, file: !20, line: 349, type: !1951, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!478, !209}
!1953 = !{!1954, !1955, !1956, !1957, !1958}
!1954 = !DILocalVariable(name: "sym", arg: 1, scope: !1950, file: !20, line: 349, type: !209)
!1955 = !DILocalVariable(name: "symtab", scope: !1950, file: !20, line: 351, type: !209)
!1956 = !DILocalVariable(name: "xsymtab", scope: !1950, file: !20, line: 352, type: !221)
!1957 = !DILocalVariable(name: "offset", scope: !1950, file: !20, line: 353, type: !16)
!1958 = !DILocalVariable(name: "index", scope: !1950, file: !20, line: 354, type: !478)
!1959 = !DILocation(line: 349, column: 31, scope: !1950)
!1960 = !DILocation(line: 351, column: 2, scope: !1950)
!1961 = !DILocation(line: 351, column: 11, scope: !1950)
!1962 = !DILocation(line: 351, column: 20, scope: !1950)
!1963 = !DILocation(line: 351, column: 25, scope: !1950)
!1964 = !DILocation(line: 351, column: 38, scope: !1950)
!1965 = !DILocation(line: 352, column: 2, scope: !1950)
!1966 = !DILocation(line: 352, column: 14, scope: !1950)
!1967 = !DILocation(line: 352, column: 24, scope: !1950)
!1968 = !DILocation(line: 352, column: 29, scope: !1950)
!1969 = !DILocation(line: 352, column: 43, scope: !1950)
!1970 = !DILocation(line: 353, column: 2, scope: !1950)
!1971 = !DILocation(line: 353, column: 16, scope: !1950)
!1972 = !DILocation(line: 354, column: 2, scope: !1950)
!1973 = !DILocation(line: 354, column: 6, scope: !1950)
!1974 = !DILocation(line: 356, column: 6, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1950, file: !20, line: 356, column: 6)
!1976 = !DILocation(line: 356, column: 11, scope: !1975)
!1977 = !DILocation(line: 356, column: 20, scope: !1975)
!1978 = !DILocation(line: 356, column: 6, scope: !1950)
!1979 = !DILocation(line: 357, column: 10, scope: !1975)
!1980 = !DILocation(line: 357, column: 15, scope: !1975)
!1981 = !DILocation(line: 357, column: 3, scope: !1975)
!1982 = !DILocation(line: 360, column: 26, scope: !1950)
!1983 = !DILocation(line: 360, column: 11, scope: !1950)
!1984 = !DILocation(line: 360, column: 47, scope: !1950)
!1985 = !DILocation(line: 360, column: 32, scope: !1950)
!1986 = !DILocation(line: 360, column: 30, scope: !1950)
!1987 = !DILocation(line: 360, column: 9, scope: !1950)
!1988 = !DILocation(line: 361, column: 10, scope: !1950)
!1989 = !DILocation(line: 361, column: 17, scope: !1950)
!1990 = !DILocation(line: 361, column: 8, scope: !1950)
!1991 = !DILocation(line: 363, column: 22, scope: !1950)
!1992 = !DILocation(line: 363, column: 30, scope: !1950)
!1993 = !DILocation(line: 363, column: 9, scope: !1950)
!1994 = !DILocation(line: 363, column: 2, scope: !1950)
!1995 = !DILocation(line: 364, column: 1, scope: !1950)
!1996 = distinct !DISubprogram(name: "is_reloc", scope: !20, file: !20, line: 121, type: !1997, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!478, !5, !39}
!1999 = !{!2000, !2001}
!2000 = !DILocalVariable(name: "type", arg: 1, scope: !1996, file: !20, line: 121, type: !5)
!2001 = !DILocalVariable(name: "sym_name", arg: 2, scope: !1996, file: !20, line: 121, type: !39)
!2002 = !DILocation(line: 121, column: 34, scope: !1996)
!2003 = !DILocation(line: 121, column: 52, scope: !1996)
!2004 = !DILocation(line: 123, column: 9, scope: !1996)
!2005 = !DILocation(line: 123, column: 19, scope: !1996)
!2006 = !DILocation(line: 123, column: 25, scope: !1996)
!2007 = !DILocation(line: 124, column: 25, scope: !1996)
!2008 = !DILocation(line: 124, column: 13, scope: !1996)
!2009 = !DILocation(line: 124, column: 32, scope: !1996)
!2010 = !DILocation(line: 124, column: 4, scope: !1996)
!2011 = !DILocation(line: 124, column: 3, scope: !1996)
!2012 = !DILocation(line: 0, scope: !1996)
!2013 = !DILocation(line: 123, column: 2, scope: !1996)
!2014 = !DILocation(line: 205, column: 38, scope: !403)
!2015 = !DILocation(line: 246, column: 2, scope: !403)
!2016 = !DILocation(line: 246, column: 14, scope: !403)
!2017 = !DILocation(line: 247, column: 6, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !403, file: !20, line: 247, column: 6)
!2019 = !DILocation(line: 247, column: 11, scope: !2018)
!2020 = !DILocation(line: 247, column: 35, scope: !2018)
!2021 = !DILocation(line: 247, column: 48, scope: !2018)
!2022 = !DILocation(line: 247, column: 38, scope: !2018)
!2023 = !DILocation(line: 247, column: 6, scope: !403)
!2024 = !DILocation(line: 248, column: 20, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2018, file: !20, line: 247, column: 55)
!2026 = !DILocation(line: 248, column: 10, scope: !2025)
!2027 = !DILocation(line: 248, column: 8, scope: !2025)
!2028 = !DILocation(line: 249, column: 2, scope: !2025)
!2029 = !DILocation(line: 250, column: 9, scope: !403)
!2030 = !DILocation(line: 251, column: 1, scope: !403)
!2031 = !DILocation(line: 250, column: 2, scope: !403)
!2032 = !DISubprogram(name: "regexec", scope: !60, file: !60, line: 679, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!478, !1771, !1767, !76, !2035, !478}
!2035 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2036)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmatch_t", file: !60, line: 521, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 517, size: 64, elements: !2039)
!2039 = !{!2040, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rm_so", scope: !2038, file: !60, line: 519, baseType: !2041, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !60, line: 490, baseType: !478)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rm_eo", scope: !2038, file: !60, line: 520, baseType: !2041, size: 32, offset: 32)
!2043 = distinct !DISubprogram(name: "walk_relocs", scope: !20, file: !20, line: 729, type: !2044, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !1655}
!2046 = !{!2047, !2048, !2049, !2053, !2054, !2055, !2056, !2057, !2058, !2062, !2063}
!2047 = !DILocalVariable(name: "process", arg: 1, scope: !2043, file: !20, line: 729, type: !1655)
!2048 = !DILocalVariable(name: "i", scope: !2043, file: !20, line: 732, type: !478)
!2049 = !DILocalVariable(name: "sym_strtab", scope: !2050, file: !20, line: 735, type: !72)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !20, line: 734, column: 30)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !20, line: 734, column: 2)
!2052 = distinct !DILexicalBlock(scope: !2043, file: !20, line: 734, column: 2)
!2053 = !DILocalVariable(name: "sh_symtab", scope: !2050, file: !20, line: 736, type: !209)
!2054 = !DILocalVariable(name: "sec_applies", scope: !2050, file: !20, line: 737, type: !190)
!2055 = !DILocalVariable(name: "sec_symtab", scope: !2050, file: !20, line: 737, type: !190)
!2056 = !DILocalVariable(name: "j", scope: !2050, file: !20, line: 738, type: !478)
!2057 = !DILocalVariable(name: "sec", scope: !2050, file: !20, line: 739, type: !190)
!2058 = !DILocalVariable(name: "rel", scope: !2059, file: !20, line: 761, type: !223)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !20, line: 760, column: 59)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !20, line: 760, column: 3)
!2061 = distinct !DILexicalBlock(scope: !2050, file: !20, line: 760, column: 3)
!2062 = !DILocalVariable(name: "sym", scope: !2059, file: !20, line: 762, type: !209)
!2063 = !DILocalVariable(name: "symname", scope: !2059, file: !20, line: 763, type: !39)
!2064 = !DILocation(line: 729, column: 31, scope: !2043)
!2065 = !DILocation(line: 732, column: 2, scope: !2043)
!2066 = !DILocation(line: 732, column: 6, scope: !2043)
!2067 = !DILocation(line: 734, column: 9, scope: !2052)
!2068 = !DILocation(line: 734, column: 7, scope: !2052)
!2069 = !DILocation(line: 734, column: 14, scope: !2051)
!2070 = !DILocation(line: 734, column: 18, scope: !2051)
!2071 = !DILocation(line: 734, column: 16, scope: !2051)
!2072 = !DILocation(line: 734, column: 2, scope: !2052)
!2073 = !DILocation(line: 735, column: 3, scope: !2050)
!2074 = !DILocation(line: 735, column: 9, scope: !2050)
!2075 = !DILocation(line: 736, column: 3, scope: !2050)
!2076 = !DILocation(line: 736, column: 12, scope: !2050)
!2077 = !DILocation(line: 737, column: 3, scope: !2050)
!2078 = !DILocation(line: 737, column: 19, scope: !2050)
!2079 = !DILocation(line: 737, column: 33, scope: !2050)
!2080 = !DILocation(line: 738, column: 3, scope: !2050)
!2081 = !DILocation(line: 738, column: 7, scope: !2050)
!2082 = !DILocation(line: 739, column: 3, scope: !2050)
!2083 = !DILocation(line: 739, column: 19, scope: !2050)
!2084 = !DILocation(line: 739, column: 26, scope: !2050)
!2085 = !DILocation(line: 739, column: 31, scope: !2050)
!2086 = !DILocation(line: 741, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2050, file: !20, line: 741, column: 7)
!2088 = !DILocation(line: 741, column: 12, scope: !2087)
!2089 = !DILocation(line: 741, column: 17, scope: !2087)
!2090 = !DILocation(line: 741, column: 25, scope: !2087)
!2091 = !DILocation(line: 741, column: 7, scope: !2050)
!2092 = !DILocation(line: 742, column: 4, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !20, line: 741, column: 42)
!2094 = !DILocation(line: 744, column: 17, scope: !2050)
!2095 = !DILocation(line: 744, column: 22, scope: !2050)
!2096 = !DILocation(line: 744, column: 15, scope: !2050)
!2097 = !DILocation(line: 745, column: 18, scope: !2050)
!2098 = !DILocation(line: 745, column: 23, scope: !2050)
!2099 = !DILocation(line: 745, column: 28, scope: !2050)
!2100 = !DILocation(line: 745, column: 33, scope: !2050)
!2101 = !DILocation(line: 745, column: 15, scope: !2050)
!2102 = !DILocation(line: 746, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2050, file: !20, line: 746, column: 7)
!2104 = !DILocation(line: 746, column: 22, scope: !2103)
!2105 = !DILocation(line: 746, column: 27, scope: !2103)
!2106 = !DILocation(line: 746, column: 36, scope: !2103)
!2107 = !DILocation(line: 746, column: 7, scope: !2050)
!2108 = !DILocation(line: 747, column: 4, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !20, line: 746, column: 50)
!2110 = !DILocation(line: 755, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2050, file: !20, line: 755, column: 7)
!2112 = !DILocation(line: 755, column: 20, scope: !2111)
!2113 = !DILocation(line: 755, column: 25, scope: !2111)
!2114 = !DILocation(line: 755, column: 33, scope: !2111)
!2115 = !DILocation(line: 755, column: 7, scope: !2050)
!2116 = !DILocation(line: 756, column: 4, scope: !2111)
!2117 = !DILocation(line: 758, column: 15, scope: !2050)
!2118 = !DILocation(line: 758, column: 27, scope: !2050)
!2119 = !DILocation(line: 758, column: 13, scope: !2050)
!2120 = !DILocation(line: 759, column: 16, scope: !2050)
!2121 = !DILocation(line: 759, column: 28, scope: !2050)
!2122 = !DILocation(line: 759, column: 34, scope: !2050)
!2123 = !DILocation(line: 759, column: 14, scope: !2050)
!2124 = !DILocation(line: 760, column: 10, scope: !2061)
!2125 = !DILocation(line: 760, column: 8, scope: !2061)
!2126 = !DILocation(line: 760, column: 15, scope: !2060)
!2127 = !DILocation(line: 760, column: 19, scope: !2060)
!2128 = !DILocation(line: 760, column: 24, scope: !2060)
!2129 = !DILocation(line: 760, column: 29, scope: !2060)
!2130 = !DILocation(line: 760, column: 36, scope: !2060)
!2131 = !DILocation(line: 760, column: 17, scope: !2060)
!2132 = !DILocation(line: 760, column: 3, scope: !2061)
!2133 = !DILocation(line: 761, column: 4, scope: !2059)
!2134 = !DILocation(line: 761, column: 13, scope: !2059)
!2135 = !DILocation(line: 761, column: 20, scope: !2059)
!2136 = !DILocation(line: 761, column: 25, scope: !2059)
!2137 = !DILocation(line: 761, column: 32, scope: !2059)
!2138 = !DILocation(line: 762, column: 4, scope: !2059)
!2139 = !DILocation(line: 762, column: 13, scope: !2059)
!2140 = !DILocation(line: 762, column: 20, scope: !2059)
!2141 = !DILocation(line: 762, column: 30, scope: !2059)
!2142 = !DILocation(line: 763, column: 4, scope: !2059)
!2143 = !DILocation(line: 763, column: 16, scope: !2059)
!2144 = !DILocation(line: 763, column: 35, scope: !2059)
!2145 = !DILocation(line: 763, column: 47, scope: !2059)
!2146 = !DILocation(line: 763, column: 26, scope: !2059)
!2147 = !DILocation(line: 765, column: 4, scope: !2059)
!2148 = !DILocation(line: 765, column: 12, scope: !2059)
!2149 = !DILocation(line: 765, column: 17, scope: !2059)
!2150 = !DILocation(line: 765, column: 22, scope: !2059)
!2151 = !DILocation(line: 765, column: 27, scope: !2059)
!2152 = !DILocation(line: 766, column: 3, scope: !2060)
!2153 = !DILocation(line: 766, column: 3, scope: !2059)
!2154 = !DILocation(line: 760, column: 55, scope: !2060)
!2155 = !DILocation(line: 760, column: 3, scope: !2060)
!2156 = distinct !{!2156, !2132, !2157, !639, !640}
!2157 = !DILocation(line: 766, column: 3, scope: !2061)
!2158 = !DILocation(line: 767, column: 2, scope: !2051)
!2159 = !DILocation(line: 767, column: 2, scope: !2050)
!2160 = !DILocation(line: 734, column: 26, scope: !2051)
!2161 = !DILocation(line: 734, column: 2, scope: !2051)
!2162 = distinct !{!2162, !2072, !2163, !639, !640}
!2163 = !DILocation(line: 767, column: 2, scope: !2052)
!2164 = !DILocation(line: 768, column: 1, scope: !2043)
!2165 = distinct !DISubprogram(name: "do_reloc_info", scope: !20, file: !20, line: 1164, type: !1656, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "sec", arg: 1, scope: !2165, file: !20, line: 1164, type: !190)
!2168 = !DILocalVariable(name: "rel", arg: 2, scope: !2165, file: !20, line: 1164, type: !223)
!2169 = !DILocalVariable(name: "sym", arg: 3, scope: !2165, file: !20, line: 1164, type: !209)
!2170 = !DILocalVariable(name: "symname", arg: 4, scope: !2165, file: !20, line: 1165, type: !39)
!2171 = !DILocation(line: 1164, column: 42, scope: !2165)
!2172 = !DILocation(line: 1164, column: 56, scope: !2165)
!2173 = !DILocation(line: 1164, column: 72, scope: !2165)
!2174 = !DILocation(line: 1165, column: 17, scope: !2165)
!2175 = !DILocation(line: 1168, column: 12, scope: !2165)
!2176 = !DILocation(line: 1168, column: 17, scope: !2165)
!2177 = !DILocation(line: 1168, column: 22, scope: !2165)
!2178 = !DILocation(line: 1168, column: 3, scope: !2165)
!2179 = !DILocation(line: 1169, column: 12, scope: !2165)
!2180 = !DILocation(line: 1169, column: 3, scope: !2165)
!2181 = !DILocation(line: 1170, column: 3, scope: !2165)
!2182 = !DILocation(line: 1171, column: 22, scope: !2165)
!2183 = !DILocation(line: 1171, column: 12, scope: !2165)
!2184 = !DILocation(line: 1171, column: 3, scope: !2165)
!2185 = !DILocation(line: 1167, column: 2, scope: !2165)
!2186 = !DILocation(line: 1172, column: 2, scope: !2165)
!2187 = distinct !DISubprogram(name: "write32", scope: !20, file: !20, line: 1067, type: !1652, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2188 = !{!2189, !2190, !2191}
!2189 = !DILocalVariable(name: "v", arg: 1, scope: !2187, file: !20, line: 1067, type: !163)
!2190 = !DILocalVariable(name: "f", arg: 2, scope: !2187, file: !20, line: 1067, type: !471)
!2191 = !DILocalVariable(name: "buf", scope: !2187, file: !20, line: 1069, type: !2192)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !54)
!2193 = !DILocation(line: 1067, column: 29, scope: !2187)
!2194 = !DILocation(line: 1067, column: 38, scope: !2187)
!2195 = !DILocation(line: 1069, column: 2, scope: !2187)
!2196 = !DILocation(line: 1069, column: 16, scope: !2187)
!2197 = !DILocation(line: 1071, column: 21, scope: !2187)
!2198 = !DILocation(line: 1071, column: 24, scope: !2187)
!2199 = !DILocation(line: 1071, column: 2, scope: !2187)
!2200 = !DILocation(line: 1072, column: 16, scope: !2187)
!2201 = !DILocation(line: 1072, column: 27, scope: !2187)
!2202 = !DILocation(line: 1072, column: 9, scope: !2187)
!2203 = !DILocation(line: 1072, column: 30, scope: !2187)
!2204 = !DILocation(line: 1073, column: 1, scope: !2187)
!2205 = !DILocation(line: 1072, column: 2, scope: !2187)
!2206 = distinct !DISubprogram(name: "do_reloc32", scope: !20, file: !20, line: 935, type: !1656, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213}
!2208 = !DILocalVariable(name: "sec", arg: 1, scope: !2206, file: !20, line: 935, type: !190)
!2209 = !DILocalVariable(name: "rel", arg: 2, scope: !2206, file: !20, line: 935, type: !223)
!2210 = !DILocalVariable(name: "sym", arg: 3, scope: !2206, file: !20, line: 935, type: !209)
!2211 = !DILocalVariable(name: "symname", arg: 4, scope: !2206, file: !20, line: 936, type: !39)
!2212 = !DILocalVariable(name: "r_type", scope: !2206, file: !20, line: 938, type: !7)
!2213 = !DILocalVariable(name: "shn_abs", scope: !2206, file: !20, line: 939, type: !478)
!2214 = !DILocation(line: 935, column: 39, scope: !2206)
!2215 = !DILocation(line: 935, column: 53, scope: !2206)
!2216 = !DILocation(line: 935, column: 67, scope: !2206)
!2217 = !DILocation(line: 936, column: 21, scope: !2206)
!2218 = !DILocation(line: 938, column: 2, scope: !2206)
!2219 = !DILocation(line: 938, column: 11, scope: !2206)
!2220 = !DILocation(line: 938, column: 20, scope: !2206)
!2221 = !DILocation(line: 939, column: 2, scope: !2206)
!2222 = !DILocation(line: 939, column: 6, scope: !2206)
!2223 = !DILocation(line: 939, column: 17, scope: !2206)
!2224 = !DILocation(line: 939, column: 22, scope: !2206)
!2225 = !DILocation(line: 939, column: 31, scope: !2206)
!2226 = !DILocation(line: 939, column: 43, scope: !2206)
!2227 = !DILocation(line: 939, column: 63, scope: !2206)
!2228 = !DILocation(line: 939, column: 47, scope: !2206)
!2229 = !DILocation(line: 939, column: 46, scope: !2206)
!2230 = !DILocation(line: 0, scope: !2206)
!2231 = !DILocation(line: 941, column: 10, scope: !2206)
!2232 = !DILocation(line: 941, column: 2, scope: !2206)
!2233 = !DILocation(line: 952, column: 3, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2206, file: !20, line: 941, column: 18)
!2235 = !DILocation(line: 955, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !20, line: 955, column: 7)
!2237 = !DILocation(line: 955, column: 7, scope: !2234)
!2238 = !DILocation(line: 960, column: 24, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !20, line: 960, column: 8)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !20, line: 955, column: 16)
!2241 = !DILocation(line: 960, column: 8, scope: !2239)
!2242 = !DILocation(line: 960, column: 8, scope: !2240)
!2243 = !DILocation(line: 961, column: 5, scope: !2239)
!2244 = !DILocation(line: 964, column: 17, scope: !2240)
!2245 = !DILocation(line: 964, column: 8, scope: !2240)
!2246 = !DILocation(line: 964, column: 26, scope: !2240)
!2247 = !DILocation(line: 963, column: 4, scope: !2240)
!2248 = !DILocation(line: 968, column: 24, scope: !2234)
!2249 = !DILocation(line: 968, column: 29, scope: !2234)
!2250 = !DILocation(line: 968, column: 3, scope: !2234)
!2251 = !DILocation(line: 969, column: 3, scope: !2234)
!2252 = !DILocation(line: 973, column: 16, scope: !2234)
!2253 = !DILocation(line: 973, column: 7, scope: !2234)
!2254 = !DILocation(line: 973, column: 25, scope: !2234)
!2255 = !DILocation(line: 972, column: 3, scope: !2234)
!2256 = !DILocation(line: 978, column: 1, scope: !2206)
!2257 = !DILocation(line: 977, column: 2, scope: !2206)
!2258 = distinct !DISubprogram(name: "do_reloc_real", scope: !20, file: !20, line: 980, type: !1656, scopeLine: 982, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265}
!2260 = !DILocalVariable(name: "sec", arg: 1, scope: !2258, file: !20, line: 980, type: !190)
!2261 = !DILocalVariable(name: "rel", arg: 2, scope: !2258, file: !20, line: 980, type: !223)
!2262 = !DILocalVariable(name: "sym", arg: 3, scope: !2258, file: !20, line: 980, type: !209)
!2263 = !DILocalVariable(name: "symname", arg: 4, scope: !2258, file: !20, line: 981, type: !39)
!2264 = !DILocalVariable(name: "r_type", scope: !2258, file: !20, line: 983, type: !7)
!2265 = !DILocalVariable(name: "shn_abs", scope: !2258, file: !20, line: 984, type: !478)
!2266 = !DILocation(line: 980, column: 42, scope: !2258)
!2267 = !DILocation(line: 980, column: 56, scope: !2258)
!2268 = !DILocation(line: 980, column: 70, scope: !2258)
!2269 = !DILocation(line: 981, column: 17, scope: !2258)
!2270 = !DILocation(line: 983, column: 2, scope: !2258)
!2271 = !DILocation(line: 983, column: 11, scope: !2258)
!2272 = !DILocation(line: 983, column: 20, scope: !2258)
!2273 = !DILocation(line: 984, column: 2, scope: !2258)
!2274 = !DILocation(line: 984, column: 6, scope: !2258)
!2275 = !DILocation(line: 984, column: 17, scope: !2258)
!2276 = !DILocation(line: 984, column: 22, scope: !2258)
!2277 = !DILocation(line: 984, column: 31, scope: !2258)
!2278 = !DILocation(line: 984, column: 43, scope: !2258)
!2279 = !DILocation(line: 984, column: 63, scope: !2258)
!2280 = !DILocation(line: 984, column: 47, scope: !2258)
!2281 = !DILocation(line: 984, column: 46, scope: !2258)
!2282 = !DILocation(line: 0, scope: !2258)
!2283 = !DILocation(line: 986, column: 10, scope: !2258)
!2284 = !DILocation(line: 986, column: 2, scope: !2258)
!2285 = !DILocation(line: 997, column: 3, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2258, file: !20, line: 986, column: 18)
!2287 = !DILocation(line: 1000, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2286, file: !20, line: 1000, column: 7)
!2289 = !DILocation(line: 1000, column: 7, scope: !2286)
!2290 = !DILocation(line: 1005, column: 24, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !20, line: 1005, column: 8)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !20, line: 1000, column: 16)
!2293 = !DILocation(line: 1005, column: 8, scope: !2291)
!2294 = !DILocation(line: 1005, column: 8, scope: !2292)
!2295 = !DILocation(line: 1006, column: 5, scope: !2291)
!2296 = !DILocation(line: 1008, column: 24, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !20, line: 1008, column: 8)
!2298 = !DILocation(line: 1008, column: 8, scope: !2297)
!2299 = !DILocation(line: 1008, column: 8, scope: !2292)
!2300 = !DILocation(line: 1009, column: 26, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !20, line: 1008, column: 34)
!2302 = !DILocation(line: 1009, column: 31, scope: !2301)
!2303 = !DILocation(line: 1009, column: 5, scope: !2301)
!2304 = !DILocation(line: 1010, column: 5, scope: !2301)
!2305 = !DILocation(line: 1012, column: 3, scope: !2292)
!2306 = !DILocation(line: 1013, column: 25, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !20, line: 1013, column: 8)
!2308 = distinct !DILexicalBlock(scope: !2288, file: !20, line: 1012, column: 10)
!2309 = !DILocation(line: 1013, column: 9, scope: !2307)
!2310 = !DILocation(line: 1013, column: 8, scope: !2308)
!2311 = !DILocation(line: 1014, column: 5, scope: !2307)
!2312 = !DILocation(line: 1017, column: 7, scope: !2286)
!2313 = !DILocation(line: 1018, column: 16, scope: !2286)
!2314 = !DILocation(line: 1018, column: 7, scope: !2286)
!2315 = !DILocation(line: 1018, column: 25, scope: !2286)
!2316 = !DILocation(line: 1016, column: 3, scope: !2286)
!2317 = !DILocation(line: 1022, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2286, file: !20, line: 1022, column: 7)
!2319 = !DILocation(line: 1022, column: 7, scope: !2286)
!2320 = !DILocation(line: 1027, column: 24, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !20, line: 1027, column: 8)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !20, line: 1022, column: 16)
!2323 = !DILocation(line: 1027, column: 8, scope: !2321)
!2324 = !DILocation(line: 1027, column: 8, scope: !2322)
!2325 = !DILocation(line: 1028, column: 5, scope: !2321)
!2326 = !DILocation(line: 1030, column: 24, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !20, line: 1030, column: 8)
!2328 = !DILocation(line: 1030, column: 8, scope: !2327)
!2329 = !DILocation(line: 1030, column: 8, scope: !2322)
!2330 = !DILocation(line: 1031, column: 26, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !20, line: 1030, column: 34)
!2332 = !DILocation(line: 1031, column: 31, scope: !2331)
!2333 = !DILocation(line: 1031, column: 5, scope: !2331)
!2334 = !DILocation(line: 1032, column: 5, scope: !2331)
!2335 = !DILocation(line: 1034, column: 3, scope: !2322)
!2336 = !DILocation(line: 1035, column: 24, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !20, line: 1035, column: 8)
!2338 = distinct !DILexicalBlock(scope: !2318, file: !20, line: 1034, column: 10)
!2339 = !DILocation(line: 1035, column: 8, scope: !2337)
!2340 = !DILocation(line: 1035, column: 8, scope: !2338)
!2341 = !DILocation(line: 1036, column: 26, scope: !2337)
!2342 = !DILocation(line: 1036, column: 31, scope: !2337)
!2343 = !DILocation(line: 1036, column: 5, scope: !2337)
!2344 = !DILocation(line: 1037, column: 4, scope: !2338)
!2345 = !DILocation(line: 1040, column: 7, scope: !2286)
!2346 = !DILocation(line: 1041, column: 16, scope: !2286)
!2347 = !DILocation(line: 1041, column: 7, scope: !2286)
!2348 = !DILocation(line: 1041, column: 25, scope: !2286)
!2349 = !DILocation(line: 1039, column: 3, scope: !2286)
!2350 = !DILocation(line: 1046, column: 16, scope: !2286)
!2351 = !DILocation(line: 1046, column: 7, scope: !2286)
!2352 = !DILocation(line: 1046, column: 25, scope: !2286)
!2353 = !DILocation(line: 1045, column: 3, scope: !2286)
!2354 = !DILocation(line: 1051, column: 1, scope: !2258)
!2355 = !DILocation(line: 1050, column: 2, scope: !2258)
!2356 = distinct !DISubprogram(name: "sort_relocs", scope: !20, file: !20, line: 1062, type: !2357, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "r", arg: 1, scope: !2356, file: !20, line: 1062, type: !2359)
!2362 = !DILocation(line: 1062, column: 40, scope: !2356)
!2363 = !DILocation(line: 1064, column: 8, scope: !2356)
!2364 = !DILocation(line: 1064, column: 11, scope: !2356)
!2365 = !DILocation(line: 1064, column: 19, scope: !2356)
!2366 = !DILocation(line: 1064, column: 22, scope: !2356)
!2367 = !DILocation(line: 1064, column: 2, scope: !2356)
!2368 = !DILocation(line: 1065, column: 1, scope: !2356)
!2369 = distinct !DISubprogram(name: "write32_as_text", scope: !20, file: !20, line: 1075, type: !1652, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2370)
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "v", arg: 1, scope: !2369, file: !20, line: 1075, type: !163)
!2372 = !DILocalVariable(name: "f", arg: 2, scope: !2369, file: !20, line: 1075, type: !471)
!2373 = !DILocation(line: 1075, column: 37, scope: !2369)
!2374 = !DILocation(line: 1075, column: 46, scope: !2369)
!2375 = !DILocation(line: 1077, column: 17, scope: !2369)
!2376 = !DILocation(line: 1077, column: 47, scope: !2369)
!2377 = !DILocation(line: 1077, column: 9, scope: !2369)
!2378 = !DILocation(line: 1077, column: 50, scope: !2369)
!2379 = !DILocation(line: 1077, column: 2, scope: !2369)
!2380 = distinct !DISubprogram(name: "put_unaligned_le32", scope: !2381, file: !2381, line: 61, type: !2382, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2381 = !DIFile(filename: "./tools/include/tools/le_byteshift.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af0762430017273314a82421eaba8371")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !163, !520}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "val", arg: 1, scope: !2380, file: !2381, line: 61, type: !163)
!2386 = !DILocalVariable(name: "p", arg: 2, scope: !2380, file: !2381, line: 61, type: !520)
!2387 = !DILocation(line: 61, column: 48, scope: !2380)
!2388 = !DILocation(line: 61, column: 59, scope: !2380)
!2389 = !DILocation(line: 63, column: 23, scope: !2380)
!2390 = !DILocation(line: 63, column: 28, scope: !2380)
!2391 = !DILocation(line: 63, column: 2, scope: !2380)
!2392 = !DILocation(line: 64, column: 1, scope: !2380)
!2393 = !DISubprogram(name: "fwrite", scope: !1779, file: !1779, line: 681, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!16, !2396, !76, !76, !1783}
!2396 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1796)
!2397 = distinct !DISubprogram(name: "__put_unaligned_le32", scope: !2381, file: !2381, line: 29, type: !2398, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !163, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !156, line: 24, baseType: !2402)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !158, line: 38, baseType: !15)
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "val", arg: 1, scope: !2397, file: !2381, line: 29, type: !163)
!2405 = !DILocalVariable(name: "p", arg: 2, scope: !2397, file: !2381, line: 29, type: !2400)
!2406 = !DILocation(line: 29, column: 50, scope: !2397)
!2407 = !DILocation(line: 29, column: 64, scope: !2397)
!2408 = !DILocation(line: 31, column: 23, scope: !2397)
!2409 = !DILocation(line: 31, column: 27, scope: !2397)
!2410 = !DILocation(line: 31, column: 34, scope: !2397)
!2411 = !DILocation(line: 31, column: 36, scope: !2397)
!2412 = !DILocation(line: 31, column: 2, scope: !2397)
!2413 = !DILocation(line: 32, column: 23, scope: !2397)
!2414 = !DILocation(line: 32, column: 28, scope: !2397)
!2415 = !DILocation(line: 32, column: 2, scope: !2397)
!2416 = !DILocation(line: 33, column: 1, scope: !2397)
!2417 = distinct !DISubprogram(name: "__put_unaligned_le16", scope: !2381, file: !2381, line: 23, type: !2418, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !155, !2400}
!2420 = !{!2421, !2422}
!2421 = !DILocalVariable(name: "val", arg: 1, scope: !2417, file: !2381, line: 23, type: !155)
!2422 = !DILocalVariable(name: "p", arg: 2, scope: !2417, file: !2381, line: 23, type: !2400)
!2423 = !DILocation(line: 23, column: 50, scope: !2417)
!2424 = !DILocation(line: 23, column: 64, scope: !2417)
!2425 = !DILocation(line: 25, column: 9, scope: !2417)
!2426 = !DILocation(line: 25, column: 4, scope: !2417)
!2427 = !DILocation(line: 25, column: 7, scope: !2417)
!2428 = !DILocation(line: 26, column: 9, scope: !2417)
!2429 = !DILocation(line: 26, column: 13, scope: !2417)
!2430 = !DILocation(line: 26, column: 4, scope: !2417)
!2431 = !DILocation(line: 26, column: 7, scope: !2417)
!2432 = !DILocation(line: 27, column: 1, scope: !2417)
!2433 = distinct !DISubprogram(name: "add_reloc", scope: !20, file: !20, line: 714, type: !2434, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2359, !163}
!2436 = !{!2437, !2438, !2439, !2442}
!2437 = !DILocalVariable(name: "r", arg: 1, scope: !2433, file: !20, line: 714, type: !2359)
!2438 = !DILocalVariable(name: "offset", arg: 2, scope: !2433, file: !20, line: 714, type: !163)
!2439 = !DILocalVariable(name: "newsize", scope: !2440, file: !20, line: 717, type: !16)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !20, line: 716, column: 27)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !20, line: 716, column: 6)
!2442 = !DILocalVariable(name: "mem", scope: !2440, file: !20, line: 718, type: !520)
!2443 = !DILocation(line: 714, column: 38, scope: !2433)
!2444 = !DILocation(line: 714, column: 50, scope: !2433)
!2445 = !DILocation(line: 716, column: 6, scope: !2441)
!2446 = !DILocation(line: 716, column: 9, scope: !2441)
!2447 = !DILocation(line: 716, column: 18, scope: !2441)
!2448 = !DILocation(line: 716, column: 21, scope: !2441)
!2449 = !{!1677, !730, i64 16}
!2450 = !DILocation(line: 716, column: 15, scope: !2441)
!2451 = !DILocation(line: 716, column: 6, scope: !2433)
!2452 = !DILocation(line: 717, column: 3, scope: !2440)
!2453 = !DILocation(line: 717, column: 17, scope: !2440)
!2454 = !DILocation(line: 717, column: 27, scope: !2440)
!2455 = !DILocation(line: 717, column: 30, scope: !2440)
!2456 = !DILocation(line: 717, column: 35, scope: !2440)
!2457 = !DILocation(line: 718, column: 3, scope: !2440)
!2458 = !DILocation(line: 718, column: 9, scope: !2440)
!2459 = !DILocation(line: 718, column: 23, scope: !2440)
!2460 = !DILocation(line: 718, column: 26, scope: !2440)
!2461 = !DILocation(line: 718, column: 34, scope: !2440)
!2462 = !DILocation(line: 718, column: 42, scope: !2440)
!2463 = !DILocation(line: 718, column: 15, scope: !2440)
!2464 = !DILocation(line: 720, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2440, file: !20, line: 720, column: 7)
!2466 = !DILocation(line: 720, column: 7, scope: !2440)
!2467 = !DILocation(line: 722, column: 33, scope: !2465)
!2468 = !DILocation(line: 721, column: 4, scope: !2465)
!2469 = !DILocation(line: 723, column: 15, scope: !2440)
!2470 = !DILocation(line: 723, column: 3, scope: !2440)
!2471 = !DILocation(line: 723, column: 6, scope: !2440)
!2472 = !DILocation(line: 723, column: 13, scope: !2440)
!2473 = !DILocation(line: 724, column: 13, scope: !2440)
!2474 = !DILocation(line: 724, column: 3, scope: !2440)
!2475 = !DILocation(line: 724, column: 6, scope: !2440)
!2476 = !DILocation(line: 724, column: 11, scope: !2440)
!2477 = !DILocation(line: 725, column: 2, scope: !2441)
!2478 = !DILocation(line: 725, column: 2, scope: !2440)
!2479 = !DILocation(line: 726, column: 26, scope: !2433)
!2480 = !DILocation(line: 726, column: 2, scope: !2433)
!2481 = !DILocation(line: 726, column: 5, scope: !2433)
!2482 = !DILocation(line: 726, column: 12, scope: !2433)
!2483 = !DILocation(line: 726, column: 15, scope: !2433)
!2484 = !DILocation(line: 726, column: 20, scope: !2433)
!2485 = !DILocation(line: 726, column: 24, scope: !2433)
!2486 = !DILocation(line: 727, column: 1, scope: !2433)
!2487 = !DISubprogram(name: "realloc", scope: !1819, file: !1819, line: 551, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!520, !520, !76}
!2490 = !DISubprogram(name: "qsort", scope: !1819, file: !1819, line: 838, type: !2491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !520, !76, !76, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1819, line: 816, baseType: !2494)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!478, !1796, !1796}
!2497 = distinct !DISubprogram(name: "cmp_relocs", scope: !20, file: !20, line: 1055, type: !2495, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2498 = !{!2499, !2500, !2501, !2504}
!2499 = !DILocalVariable(name: "va", arg: 1, scope: !2497, file: !20, line: 1055, type: !1796)
!2500 = !DILocalVariable(name: "vb", arg: 2, scope: !2497, file: !20, line: 1055, type: !1796)
!2501 = !DILocalVariable(name: "a", scope: !2497, file: !20, line: 1057, type: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!2504 = !DILocalVariable(name: "b", scope: !2497, file: !20, line: 1057, type: !2502)
!2505 = !DILocation(line: 1055, column: 35, scope: !2497)
!2506 = !DILocation(line: 1055, column: 51, scope: !2497)
!2507 = !DILocation(line: 1057, column: 2, scope: !2497)
!2508 = !DILocation(line: 1057, column: 18, scope: !2497)
!2509 = !DILocation(line: 1057, column: 22, scope: !2497)
!2510 = !DILocation(line: 1058, column: 6, scope: !2497)
!2511 = !DILocation(line: 1058, column: 4, scope: !2497)
!2512 = !DILocation(line: 1058, column: 14, scope: !2497)
!2513 = !DILocation(line: 1058, column: 12, scope: !2497)
!2514 = !DILocation(line: 1059, column: 11, scope: !2497)
!2515 = !DILocation(line: 1059, column: 10, scope: !2497)
!2516 = !DILocation(line: 1059, column: 17, scope: !2497)
!2517 = !DILocation(line: 1059, column: 16, scope: !2497)
!2518 = !DILocation(line: 1059, column: 13, scope: !2497)
!2519 = !DILocation(line: 1059, column: 9, scope: !2497)
!2520 = !DILocation(line: 1059, column: 27, scope: !2497)
!2521 = !DILocation(line: 1059, column: 26, scope: !2497)
!2522 = !DILocation(line: 1059, column: 32, scope: !2497)
!2523 = !DILocation(line: 1059, column: 31, scope: !2497)
!2524 = !DILocation(line: 1059, column: 29, scope: !2497)
!2525 = !DILocation(line: 1059, column: 25, scope: !2497)
!2526 = !DILocation(line: 1060, column: 1, scope: !2497)
!2527 = !DILocation(line: 1059, column: 2, scope: !2497)
!2528 = !DISubprogram(name: "fprintf", scope: !1779, file: !1779, line: 350, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!478, !1783, !1767, null}
