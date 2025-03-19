; ModuleID = 'drivers/firmware/efi/libstub/x86-stub.c'
source_filename = "drivers/firmware/efi/libstub/x86-stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.efi_gcd_memory_space_desc_t = type { i64, i64, i64, i64, i32, ptr, ptr }
%struct.anon = type { ptr, ptr, ptr }
%struct.anon.0 = type { i32, i32, i32 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.2 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.3 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.4 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.5 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.12, i8, i8 }>
%union.anon = type { %struct.anon.8 }
%struct.anon.8 = type { i64 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i8, i8, i16, i32, i64 }
%struct.linux_efi_initrd = type { i64, i64 }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.exit_boot_struct = type { ptr, ptr }
%struct.anon.23 = type { ptr, ptr, ptr }
%struct.anon.24 = type { i32, i32, i32 }
%struct.anon.25 = type { ptr, ptr, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_config_access_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.efi_pci_io_protocol_access_t = type { ptr, ptr }
%struct.efi_pci_io_protocol_config_access_t = type { ptr, ptr }
%struct.anon.26 = type { i32, i32, %struct.efi_pci_io_protocol_access_32_t, %struct.efi_pci_io_protocol_access_32_t, %struct.efi_pci_io_protocol_access_32_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.efi_pci_io_protocol_access_32_t = type { i32, i32 }
%struct.pci_setup_rom = type { %struct.setup_data, i16, i16, i64, i64, i64, i64, i64, [0 x i8] }
%struct.efi_boot_memmap = type { i64, i64, i32, i64, i64, [0 x %struct.efi_memory_desc_t] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@memattr = internal global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [50 x i8] c"\014WARNING: Failed to set EFI_MEMORY_RO attribute\0A\00", align 1, !dbg !332
@.str.1 = private unnamed_addr constant [52 x i8] c"\014WARNING: Failed to clear EFI_MEMORY_XP attribute\0A\00", align 1, !dbg !337
@efi_dxe_table = hidden global ptr null, align 8, !dbg !584
@.str.2 = private unnamed_addr constant [64 x i8] c"\014WARNING: Unable to unprotect memory range [%08lx,%08lx]: %lx\0A\00", align 1, !dbg !342
@__const.efi_pe_entry.proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\A11\1B[b\95\D2\11\8E?\00\A0\C9ir;" }, align 4
@_bss = external hidden global [0 x i8], align 1
@_ebss = external hidden global [0 x i8], align 1
@efi_system_table = hidden global ptr null, align 8, !dbg !382
@image = internal global ptr null, align 8, !dbg !653
@.str.3 = private unnamed_addr constant [57 x i8] c"\013ERROR: Failed to get handle for LOADED_IMAGE_PROTOCOL\0A\00", align 1, !dbg !347
@__const.efi_stub_entry.guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\F6\0CV\F4\EC@JK\A1\92\BF\1DW\D0\B1\89" }, align 4
@boot_params_ptr = external hidden global ptr, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"\014WARNING: Ignoring DXE services table: invalid signature\0A\00", align 1, !dbg !352
@.str.5 = private unnamed_addr constant [44 x i8] c"\013ERROR: efi_setup_5level_paging() failed!\0A\00", align 1, !dbg !357
@.str.6 = private unnamed_addr constant [34 x i8] c"\013ERROR: Failed to parse options\0A\00", align 1, !dbg !362
@efi_mem_encrypt = external hidden global i32, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"\013ERROR: Failed to decompress kernel\0A\00", align 1, !dbg !367
@.str.8 = private unnamed_addr constant [30 x i8] c"\013ERROR: exit_boot() failed!\0A\00", align 1, !dbg !372
@.str.9 = private unnamed_addr constant [35 x i8] c"\013ERROR: efi_stub_entry() failed!\0A\00", align 1, !dbg !377
@efi_is64 = external hidden constant i8, align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"\013ERROR: Unsupported SEV-SNP features detected: 0x%llx\0A\00", align 1, !dbg !692
@parse_options.opts = internal constant [4 x [14 x i8]] [[14 x i8] c"mem=\00\00\00\00\00\00\00\00\00\00", [14 x i8] c"memmap=\00\00\00\00\00\00\00", [14 x i8] c"efi_fake_mem=\00", [14 x i8] c"hugepages=\00\00\00\00"], align 16, !dbg !697
@_ctype = external hidden constant [0 x i8], align 1
@cmdline_memmap_override = internal global ptr null, align 8, !dbg !715
@output_len = external hidden global i32, align 4
@kernel_total_size = external hidden constant i64, align 8
@efi_nokaslr = external hidden global i8, align 1
@efi_decompress_kernel.ami = internal constant [20 x i16] [i16 65, i16 109, i16 101, i16 114, i16 105, i16 99, i16 97, i16 110, i16 32, i16 77, i16 101, i16 103, i16 97, i16 116, i16 114, i16 101, i16 110, i16 100, i16 115, i16 0], align 16, !dbg !717
@.str.11 = private unnamed_addr constant [73 x i8] c"\017DEBUG: AMI firmware v2.0 or older detected - disabling physical KASLR\0A\00", align 1, !dbg !743
@.str.12 = private unnamed_addr constant [69 x i8] c"\016%s detected on the kernel command line - disabling physical KASLR\0A\00", align 1, !dbg !748
@kernel_text_size = external hidden constant i64, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"EFI\00", align 1, !dbg !753
@.str.14 = private unnamed_addr constant [37 x i8] c"\014WARNING: Decompression failed: %s\0A\00", align 1, !dbg !757
@__const.setup_graphics.graphics_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\DE\A9B\90\DC#8J\96\FBz\DE\D0\80Qj" }, align 4
@__const.setup_graphics.uga_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\8B),\98\FA\F4\CBA\B88w\AAh\8F\B89" }, align 4
@__const.setup_uga.pciio_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\00\B2\F5L\B8h\A5L\9E\EC\B2>?P\02\9A" }, align 4
@__const.setup_efi_pci.pci_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\00\B2\F5L\B8h\A5L\9E\EC\B2>?P\02\9A" }, align 4
@.str.15 = private unnamed_addr constant [53 x i8] c"\013ERROR: Failed to allocate memory for 'pci_handle'\0A\00", align 1, !dbg !762
@.str.16 = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to allocate memory for 'rom'\0A\00", align 1, !dbg !767
@.str.17 = private unnamed_addr constant [37 x i8] c"\013ERROR: Failed to read rom->vendor\0A\00", align 1, !dbg !772
@.str.18 = private unnamed_addr constant [36 x i8] c"\013ERROR: Failed to read rom->devid\0A\00", align 1, !dbg !774
@__const.setup_unaccepted_memory.mem_acceptance_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\FE\10\A0\C5\A781E\8AJ\05\00\D2\FD\16I" }, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"EL64\00", align 1, !dbg !779
@.str.20 = private unnamed_addr constant [5 x i8] c"EL32\00", align 1, !dbg !784

; Function Attrs: noredzone nounwind
define hidden i64 @efi_adjust_memory_range_protection(i64 noundef %start, i64 noundef %size) #0 !dbg !814 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %status = alloca i64, align 8
  %desc = alloca %struct.efi_gcd_memory_space_desc_t, align 8
  %end = alloca i64, align 8
  %next = alloca i64, align 8
  %rounded_start = alloca i64, align 8
  %rounded_end = alloca i64, align 8
  %unprotect_start = alloca i64, align 8
  %unprotect_size = alloca i64, align 8
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__y = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp4 = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp7 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__inst18 = alloca ptr, align 8
  %tmp19 = alloca i64, align 8
  %__pad25 = alloca [3 x i64], align 16
  %tmp29 = alloca i64, align 8
  %__pad56 = alloca [3 x i64], align 16
  %tmp60 = alloca i64, align 8
  %__UNIQUE_ID___x404 = alloca i64, align 8
  %__UNIQUE_ID___y405 = alloca i64, align 8
  %tmp79 = alloca i64, align 8
  %__UNIQUE_ID___x406 = alloca i64, align 8
  %__UNIQUE_ID___y407 = alloca i64, align 8
  %tmp85 = alloca i64, align 8
  %__pad96 = alloca [3 x i64], align 16
  %tmp100 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !818, metadata !DIExpression()), !dbg !858
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !819, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %status, metadata !820, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 56, ptr %desc) #9, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !821, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #9, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %end, metadata !822, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %next, metadata !823, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %rounded_start) #9, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %rounded_start, metadata !824, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %rounded_end) #9, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %rounded_end, metadata !825, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %unprotect_start) #9, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %unprotect_start, metadata !826, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %unprotect_size) #9, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %unprotect_size, metadata !827, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #9, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !828, metadata !DIExpression()), !dbg !873
  %0 = load i64, ptr %start.addr, align 8, !dbg !873
  store i64 %0, ptr %__x, align 8, !dbg !873
  %1 = load i64, ptr %__x, align 8, !dbg !873
  %2 = load i64, ptr %__x, align 8, !dbg !873
  %rem = urem i64 %2, 4096, !dbg !873
  %sub = sub i64 %1, %rem, !dbg !873
  store i64 %sub, ptr %tmp, align 8, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #9, !dbg !874
  %3 = load i64, ptr %tmp, align 8, !dbg !873
  store i64 %3, ptr %rounded_start, align 8, !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %__y) #9, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %__y, metadata !830, metadata !DIExpression()), !dbg !876
  store i64 4096, ptr %__y, align 8, !dbg !876
  %4 = load i64, ptr %start.addr, align 8, !dbg !876
  %5 = load i64, ptr %size.addr, align 8, !dbg !876
  %add = add i64 %4, %5, !dbg !876
  %6 = load i64, ptr %__y, align 8, !dbg !876
  %sub2 = sub i64 %6, 1, !dbg !876
  %add3 = add i64 %add, %sub2, !dbg !876
  %7 = load i64, ptr %__y, align 8, !dbg !876
  %div = udiv i64 %add3, %7, !dbg !876
  %8 = load i64, ptr %__y, align 8, !dbg !876
  %mul = mul i64 %div, %8, !dbg !876
  store i64 %mul, ptr %tmp1, align 8, !dbg !876
  call void @llvm.lifetime.end.p0(i64 8, ptr %__y) #9, !dbg !877
  %9 = load i64, ptr %tmp1, align 8, !dbg !876
  store i64 %9, ptr %rounded_end, align 8, !dbg !878
  %10 = load ptr, ptr @memattr, align 8, !dbg !879
  %cmp = icmp ne ptr %10, null, !dbg !880
  br i1 %cmp, label %if.then, label %if.end46, !dbg !881

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !832, metadata !DIExpression()), !dbg !882
  %11 = load ptr, ptr @memattr, align 8, !dbg !882
  store ptr %11, ptr %__inst, align 8, !dbg !882
  %call = call zeroext i1 @efi_is_native() #10, !dbg !882
  br i1 %call, label %cond.true, label %cond.false, !dbg !882

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr %__inst, align 8, !dbg !882
  %set_memory_attributes = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1, !dbg !882
  %13 = load ptr, ptr %set_memory_attributes, align 8, !dbg !882
  %14 = load ptr, ptr %__inst, align 8, !dbg !882
  %15 = load i64, ptr %rounded_start, align 8, !dbg !882
  %16 = load i64, ptr %rounded_end, align 8, !dbg !882
  %17 = load i64, ptr %rounded_start, align 8, !dbg !882
  %sub5 = sub i64 %16, %17, !dbg !882
  %call6 = call win64cc i64 %13(ptr noundef %14, i64 noundef %15, i64 noundef %sub5, i64 noundef 131072) #10, !dbg !882
  br label %cond.end, !dbg !882

cond.false:                                       ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !836, metadata !DIExpression()), !dbg !883
  br label %do.body, !dbg !884

do.body:                                          ; preds = %cond.false
  br label %do.cond, !dbg !886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !886

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %__inst, align 8, !dbg !883
  %set_memory_attributes8 = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 1, !dbg !883
  %19 = load i32, ptr %set_memory_attributes8, align 4, !dbg !883
  %20 = load ptr, ptr %__inst, align 8, !dbg !883
  %21 = load i64, ptr %rounded_start, align 8, !dbg !883
  %and = and i64 %21, 4294967295, !dbg !883
  %22 = load i64, ptr %rounded_start, align 8, !dbg !883
  %shr = lshr i64 %22, 32, !dbg !883
  %23 = load i64, ptr %rounded_end, align 8, !dbg !883
  %24 = load i64, ptr %rounded_start, align 8, !dbg !883
  %sub9 = sub i64 %23, %24, !dbg !883
  %and10 = and i64 %sub9, 4294967295, !dbg !883
  %25 = load i64, ptr %rounded_end, align 8, !dbg !883
  %26 = load i64, ptr %rounded_start, align 8, !dbg !883
  %sub11 = sub i64 %25, %26, !dbg !883
  %shr12 = lshr i64 %sub11, 32, !dbg !883
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !883
  %call13 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %19, ptr noundef %20, i64 noundef %and, i64 noundef %shr, i64 noundef %and10, i64 noundef %shr12, i64 noundef 131072, i64 noundef 0, ptr noundef %arraydecay) #10, !dbg !883
  store i64 %call13, ptr %tmp7, align 8, !dbg !883
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !882
  %27 = load i64, ptr %tmp7, align 8, !dbg !883
  %call14 = call i64 @__efi64_widen_efi_status(i64 noundef %27) #10, !dbg !882
  br label %cond.end, !dbg !882

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %call14, %do.end ], !dbg !882
  store i64 %cond, ptr %tmp4, align 8, !dbg !882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !888
  %28 = load i64, ptr %tmp4, align 8, !dbg !882
  store i64 %28, ptr %status, align 8, !dbg !889
  %29 = load i64, ptr %status, align 8, !dbg !890
  %cmp15 = icmp ne i64 %29, 0, !dbg !892
  br i1 %cmp15, label %if.then16, label %if.end, !dbg !893

if.then16:                                        ; preds = %cond.end
  %call17 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #10, !dbg !894
  %30 = load i64, ptr %status, align 8, !dbg !896
  store i64 %30, ptr %retval, align 8, !dbg !897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

if.end:                                           ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst18) #9, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %__inst18, metadata !841, metadata !DIExpression()), !dbg !898
  %31 = load ptr, ptr @memattr, align 8, !dbg !898
  store ptr %31, ptr %__inst18, align 8, !dbg !898
  %call20 = call zeroext i1 @efi_is_native() #10, !dbg !898
  br i1 %call20, label %cond.true21, label %cond.false24, !dbg !898

cond.true21:                                      ; preds = %if.end
  %32 = load ptr, ptr %__inst18, align 8, !dbg !898
  %clear_memory_attributes = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 2, !dbg !898
  %33 = load ptr, ptr %clear_memory_attributes, align 8, !dbg !898
  %34 = load ptr, ptr %__inst18, align 8, !dbg !898
  %35 = load i64, ptr %rounded_start, align 8, !dbg !898
  %36 = load i64, ptr %rounded_end, align 8, !dbg !898
  %37 = load i64, ptr %rounded_start, align 8, !dbg !898
  %sub22 = sub i64 %36, %37, !dbg !898
  %call23 = call win64cc i64 %33(ptr noundef %34, i64 noundef %35, i64 noundef %sub22, i64 noundef 16384) #10, !dbg !898
  br label %cond.end40, !dbg !898

cond.false24:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad25) #9, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %__pad25, metadata !843, metadata !DIExpression()), !dbg !899
  br label %do.body26, !dbg !900

do.body26:                                        ; preds = %cond.false24
  br label %do.cond27, !dbg !902

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !902

do.end28:                                         ; preds = %do.cond27
  %38 = load ptr, ptr %__inst18, align 8, !dbg !899
  %clear_memory_attributes30 = getelementptr inbounds %struct.anon.0, ptr %38, i32 0, i32 2, !dbg !899
  %39 = load i32, ptr %clear_memory_attributes30, align 8, !dbg !899
  %40 = load ptr, ptr %__inst18, align 8, !dbg !899
  %41 = load i64, ptr %rounded_start, align 8, !dbg !899
  %and31 = and i64 %41, 4294967295, !dbg !899
  %42 = load i64, ptr %rounded_start, align 8, !dbg !899
  %shr32 = lshr i64 %42, 32, !dbg !899
  %43 = load i64, ptr %rounded_end, align 8, !dbg !899
  %44 = load i64, ptr %rounded_start, align 8, !dbg !899
  %sub33 = sub i64 %43, %44, !dbg !899
  %and34 = and i64 %sub33, 4294967295, !dbg !899
  %45 = load i64, ptr %rounded_end, align 8, !dbg !899
  %46 = load i64, ptr %rounded_start, align 8, !dbg !899
  %sub35 = sub i64 %45, %46, !dbg !899
  %shr36 = lshr i64 %sub35, 32, !dbg !899
  %arraydecay37 = getelementptr inbounds [3 x i64], ptr %__pad25, i64 0, i64 0, !dbg !899
  %call38 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %39, ptr noundef %40, i64 noundef %and31, i64 noundef %shr32, i64 noundef %and34, i64 noundef %shr36, i64 noundef 16384, i64 noundef 0, ptr noundef %arraydecay37) #10, !dbg !899
  store i64 %call38, ptr %tmp29, align 8, !dbg !899
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad25) #9, !dbg !898
  %47 = load i64, ptr %tmp29, align 8, !dbg !899
  %call39 = call i64 @__efi64_widen_efi_status(i64 noundef %47) #10, !dbg !898
  br label %cond.end40, !dbg !898

cond.end40:                                       ; preds = %do.end28, %cond.true21
  %cond41 = phi i64 [ %call23, %cond.true21 ], [ %call39, %do.end28 ], !dbg !898
  store i64 %cond41, ptr %tmp19, align 8, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst18) #9, !dbg !904
  %48 = load i64, ptr %tmp19, align 8, !dbg !898
  store i64 %48, ptr %status, align 8, !dbg !905
  %49 = load i64, ptr %status, align 8, !dbg !906
  %cmp42 = icmp ne i64 %49, 0, !dbg !908
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !909

if.then43:                                        ; preds = %cond.end40
  %call44 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.1) #10, !dbg !910
  br label %if.end45, !dbg !910

if.end45:                                         ; preds = %if.then43, %cond.end40
  %50 = load i64, ptr %status, align 8, !dbg !911
  store i64 %50, ptr %retval, align 8, !dbg !912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !912

if.end46:                                         ; preds = %entry
  %51 = load ptr, ptr @efi_dxe_table, align 8, !dbg !913
  %cmp47 = icmp eq ptr %51, null, !dbg !915
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !916

if.then48:                                        ; preds = %if.end46
  store i64 0, ptr %retval, align 8, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

if.end49:                                         ; preds = %if.end46
  %52 = load i64, ptr %start.addr, align 8, !dbg !918
  %53 = load i64, ptr %size.addr, align 8, !dbg !919
  %add50 = add i64 %52, %53, !dbg !920
  store i64 %add50, ptr %end, align 8, !dbg !921
  br label %for.cond, !dbg !922

for.cond:                                         ; preds = %for.inc, %if.end49
  %54 = load i64, ptr %start.addr, align 8, !dbg !923
  %55 = load i64, ptr %end, align 8, !dbg !924
  %cmp51 = icmp ult i64 %54, %55, !dbg !925
  br i1 %cmp51, label %for.body, label %for.end, !dbg !926

for.body:                                         ; preds = %for.cond
  %call52 = call zeroext i1 @efi_is_native() #10, !dbg !927
  br i1 %call52, label %cond.true53, label %cond.false55, !dbg !927

cond.true53:                                      ; preds = %for.body
  %56 = load ptr, ptr @efi_dxe_table, align 8, !dbg !927
  %get_memory_space_descriptor = getelementptr inbounds %struct.anon.1, ptr %56, i32 0, i32 5, !dbg !927
  %57 = load ptr, ptr %get_memory_space_descriptor, align 8, !dbg !927
  %58 = load i64, ptr %start.addr, align 8, !dbg !927
  %call54 = call win64cc i64 %57(i64 noundef %58, ptr noundef %desc) #10, !dbg !927
  br label %cond.end67, !dbg !927

cond.false55:                                     ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad56) #9, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %__pad56, metadata !845, metadata !DIExpression()), !dbg !928
  br label %do.body57, !dbg !929

do.body57:                                        ; preds = %cond.false55
  br label %do.cond58, !dbg !931

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !931

do.end59:                                         ; preds = %do.cond58
  %59 = load ptr, ptr @efi_dxe_table, align 8, !dbg !928
  %get_memory_space_descriptor61 = getelementptr inbounds %struct.anon.2, ptr %59, i32 0, i32 5, !dbg !928
  %60 = load i32, ptr %get_memory_space_descriptor61, align 8, !dbg !928
  %61 = load i64, ptr %start.addr, align 8, !dbg !928
  %and62 = and i64 %61, 4294967295, !dbg !928
  %62 = load i64, ptr %start.addr, align 8, !dbg !928
  %shr63 = lshr i64 %62, 32, !dbg !928
  %arraydecay64 = getelementptr inbounds [3 x i64], ptr %__pad56, i64 0, i64 0, !dbg !928
  %call65 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %60, i64 noundef %and62, i64 noundef %shr63, ptr noundef %desc, ptr noundef %arraydecay64) #10, !dbg !928
  store i64 %call65, ptr %tmp60, align 8, !dbg !928
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad56) #9, !dbg !927
  %63 = load i64, ptr %tmp60, align 8, !dbg !928
  %call66 = call i64 @__efi64_widen_efi_status(i64 noundef %63) #10, !dbg !927
  br label %cond.end67, !dbg !927

cond.end67:                                       ; preds = %do.end59, %cond.true53
  %cond68 = phi i64 [ %call54, %cond.true53 ], [ %call66, %do.end59 ], !dbg !927
  store i64 %cond68, ptr %status, align 8, !dbg !933
  %64 = load i64, ptr %status, align 8, !dbg !934
  %cmp69 = icmp ne i64 %64, 0, !dbg !936
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !937

if.then70:                                        ; preds = %cond.end67
  br label %for.end, !dbg !938

if.end71:                                         ; preds = %cond.end67
  %base_address = getelementptr inbounds %struct.efi_gcd_memory_space_desc_t, ptr %desc, i32 0, i32 0, !dbg !939
  %65 = load i64, ptr %base_address, align 8, !dbg !939
  %length = getelementptr inbounds %struct.efi_gcd_memory_space_desc_t, ptr %desc, i32 0, i32 1, !dbg !940
  %66 = load i64, ptr %length, align 8, !dbg !940
  %add72 = add i64 %65, %66, !dbg !941
  store i64 %add72, ptr %next, align 8, !dbg !942
  %gcd_memory_type = getelementptr inbounds %struct.efi_gcd_memory_space_desc_t, ptr %desc, i32 0, i32 4, !dbg !943
  %67 = load i32, ptr %gcd_memory_type, align 8, !dbg !943
  %cmp73 = icmp ne i32 %67, 2, !dbg !945
  br i1 %cmp73, label %if.then76, label %lor.lhs.false, !dbg !946

lor.lhs.false:                                    ; preds = %if.end71
  %attributes = getelementptr inbounds %struct.efi_gcd_memory_space_desc_t, ptr %desc, i32 0, i32 3, !dbg !947
  %68 = load i64, ptr %attributes, align 8, !dbg !947
  %and74 = and i64 %68, 147456, !dbg !948
  %cmp75 = icmp eq i64 %and74, 0, !dbg !949
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !950

if.then76:                                        ; preds = %lor.lhs.false, %if.end71
  br label %for.inc, !dbg !951

if.end77:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x404) #9, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x404, metadata !850, metadata !DIExpression()), !dbg !952
  %69 = load i64, ptr %rounded_start, align 8, !dbg !952
  store i64 %69, ptr %__UNIQUE_ID___x404, align 8, !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y405) #9, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y405, metadata !852, metadata !DIExpression()), !dbg !952
  %base_address78 = getelementptr inbounds %struct.efi_gcd_memory_space_desc_t, ptr %desc, i32 0, i32 0, !dbg !952
  %70 = load i64, ptr %base_address78, align 8, !dbg !952
  store i64 %70, ptr %__UNIQUE_ID___y405, align 8, !dbg !952
  %71 = load i64, ptr %__UNIQUE_ID___x404, align 8, !dbg !952
  %72 = load i64, ptr %__UNIQUE_ID___y405, align 8, !dbg !952
  %cmp80 = icmp ugt i64 %71, %72, !dbg !952
  br i1 %cmp80, label %cond.true81, label %cond.false82, !dbg !952

cond.true81:                                      ; preds = %if.end77
  %73 = load i64, ptr %__UNIQUE_ID___x404, align 8, !dbg !952
  br label %cond.end83, !dbg !952

cond.false82:                                     ; preds = %if.end77
  %74 = load i64, ptr %__UNIQUE_ID___y405, align 8, !dbg !952
  br label %cond.end83, !dbg !952

cond.end83:                                       ; preds = %cond.false82, %cond.true81
  %cond84 = phi i64 [ %73, %cond.true81 ], [ %74, %cond.false82 ], !dbg !952
  store i64 %cond84, ptr %tmp79, align 8, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y405) #9, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x404) #9, !dbg !953
  %75 = load i64, ptr %tmp79, align 8, !dbg !952
  store i64 %75, ptr %unprotect_start, align 8, !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x406) #9, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x406, metadata !853, metadata !DIExpression()), !dbg !955
  %76 = load i64, ptr %rounded_end, align 8, !dbg !955
  store i64 %76, ptr %__UNIQUE_ID___x406, align 8, !dbg !955
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y407) #9, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y407, metadata !855, metadata !DIExpression()), !dbg !955
  %77 = load i64, ptr %next, align 8, !dbg !955
  store i64 %77, ptr %__UNIQUE_ID___y407, align 8, !dbg !955
  %78 = load i64, ptr %__UNIQUE_ID___x406, align 8, !dbg !955
  %79 = load i64, ptr %__UNIQUE_ID___y407, align 8, !dbg !955
  %cmp86 = icmp ult i64 %78, %79, !dbg !955
  br i1 %cmp86, label %cond.true87, label %cond.false88, !dbg !955

cond.true87:                                      ; preds = %cond.end83
  %80 = load i64, ptr %__UNIQUE_ID___x406, align 8, !dbg !955
  br label %cond.end89, !dbg !955

cond.false88:                                     ; preds = %cond.end83
  %81 = load i64, ptr %__UNIQUE_ID___y407, align 8, !dbg !955
  br label %cond.end89, !dbg !955

cond.end89:                                       ; preds = %cond.false88, %cond.true87
  %cond90 = phi i64 [ %80, %cond.true87 ], [ %81, %cond.false88 ], !dbg !955
  store i64 %cond90, ptr %tmp85, align 8, !dbg !955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y407) #9, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x406) #9, !dbg !956
  %82 = load i64, ptr %tmp85, align 8, !dbg !955
  %83 = load i64, ptr %unprotect_start, align 8, !dbg !957
  %sub91 = sub i64 %82, %83, !dbg !958
  store i64 %sub91, ptr %unprotect_size, align 8, !dbg !959
  %call92 = call zeroext i1 @efi_is_native() #10, !dbg !960
  br i1 %call92, label %cond.true93, label %cond.false95, !dbg !960

cond.true93:                                      ; preds = %cond.end89
  %84 = load ptr, ptr @efi_dxe_table, align 8, !dbg !960
  %set_memory_space_attributes = getelementptr inbounds %struct.anon.1, ptr %84, i32 0, i32 6, !dbg !960
  %85 = load ptr, ptr %set_memory_space_attributes, align 8, !dbg !960
  %86 = load i64, ptr %unprotect_start, align 8, !dbg !960
  %87 = load i64, ptr %unprotect_size, align 8, !dbg !960
  %call94 = call win64cc i64 %85(i64 noundef %86, i64 noundef %87, i64 noundef 8) #10, !dbg !960
  br label %cond.end109, !dbg !960

cond.false95:                                     ; preds = %cond.end89
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad96) #9, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %__pad96, metadata !856, metadata !DIExpression()), !dbg !961
  br label %do.body97, !dbg !962

do.body97:                                        ; preds = %cond.false95
  br label %do.cond98, !dbg !964

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !964

do.end99:                                         ; preds = %do.cond98
  %88 = load ptr, ptr @efi_dxe_table, align 8, !dbg !961
  %set_memory_space_attributes101 = getelementptr inbounds %struct.anon.2, ptr %88, i32 0, i32 6, !dbg !961
  %89 = load i32, ptr %set_memory_space_attributes101, align 4, !dbg !961
  %90 = load i64, ptr %unprotect_start, align 8, !dbg !961
  %and102 = and i64 %90, 4294967295, !dbg !961
  %91 = load i64, ptr %unprotect_start, align 8, !dbg !961
  %shr103 = lshr i64 %91, 32, !dbg !961
  %92 = load i64, ptr %unprotect_size, align 8, !dbg !961
  %and104 = and i64 %92, 4294967295, !dbg !961
  %93 = load i64, ptr %unprotect_size, align 8, !dbg !961
  %shr105 = lshr i64 %93, 32, !dbg !961
  %arraydecay106 = getelementptr inbounds [3 x i64], ptr %__pad96, i64 0, i64 0, !dbg !961
  %call107 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %89, i64 noundef %and102, i64 noundef %shr103, i64 noundef %and104, i64 noundef %shr105, i64 noundef 8, i64 noundef 0, ptr noundef %arraydecay106) #10, !dbg !961
  store i64 %call107, ptr %tmp100, align 8, !dbg !961
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad96) #9, !dbg !960
  %94 = load i64, ptr %tmp100, align 8, !dbg !961
  %call108 = call i64 @__efi64_widen_efi_status(i64 noundef %94) #10, !dbg !960
  br label %cond.end109, !dbg !960

cond.end109:                                      ; preds = %do.end99, %cond.true93
  %cond110 = phi i64 [ %call94, %cond.true93 ], [ %call108, %do.end99 ], !dbg !960
  store i64 %cond110, ptr %status, align 8, !dbg !966
  %95 = load i64, ptr %status, align 8, !dbg !967
  %cmp111 = icmp ne i64 %95, 0, !dbg !969
  br i1 %cmp111, label %if.then112, label %if.end115, !dbg !970

if.then112:                                       ; preds = %cond.end109
  %96 = load i64, ptr %unprotect_start, align 8, !dbg !971
  %97 = load i64, ptr %unprotect_start, align 8, !dbg !971
  %98 = load i64, ptr %unprotect_size, align 8, !dbg !971
  %add113 = add i64 %97, %98, !dbg !971
  %99 = load i64, ptr %status, align 8, !dbg !971
  %call114 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.2, i64 noundef %96, i64 noundef %add113, i64 noundef %99) #10, !dbg !971
  br label %for.end, !dbg !973

if.end115:                                        ; preds = %cond.end109
  br label %for.inc, !dbg !974

for.inc:                                          ; preds = %if.end115, %if.then76
  %100 = load i64, ptr %next, align 8, !dbg !975
  store i64 %100, ptr %start.addr, align 8, !dbg !976
  br label %for.cond, !dbg !977, !llvm.loop !978

for.end:                                          ; preds = %if.then112, %if.then70, %for.cond
  store i64 0, ptr %retval, align 8, !dbg !982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !982

cleanup:                                          ; preds = %for.end, %if.then48, %if.end45, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %unprotect_size) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %unprotect_start) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %rounded_end) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %rounded_start) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 56, ptr %desc) #9, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !983
  %101 = load i64, ptr %retval, align 8, !dbg !983
  ret i64 %101, !dbg !983
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !984 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #10, !dbg !988
  ret i1 %call, !dbg !989
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !990 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load i64, ptr %status.addr, align 8, !dbg !996
  %conv = trunc i64 %0 to i32, !dbg !996
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #10, !dbg !997
  %conv1 = zext i32 %call to i64, !dbg !997
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #10, !dbg !998
  ret i64 %call2, !dbg !999
}

; Function Attrs: noredzone
declare !dbg !1000 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: noredzone
declare !dbg !1003 hidden i32 @efi_printk(ptr noundef, ...) #4

; Function Attrs: noredzone nounwind
define hidden win64cc i64 @efi_pe_entry(ptr noundef %handle, ptr noundef %sys_table_arg) #0 !dbg !1006 {
entry:
  %handle.addr = alloca ptr, align 8
  %sys_table_arg.addr = alloca ptr, align 8
  %proto = alloca %struct.guid_t, align 4
  %boot_params = alloca ptr, align 8
  %hdr = alloca ptr, align 8
  %options_size = alloca i32, align 4
  %status = alloca i64, align 8
  %alloc = alloca i64, align 8
  %cmdline_ptr = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1010, metadata !DIExpression()), !dbg !1338
  store ptr %sys_table_arg, ptr %sys_table_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sys_table_arg.addr, metadata !1011, metadata !DIExpression()), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 16, ptr %proto) #9, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %proto, metadata !1012, metadata !DIExpression()), !dbg !1341
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %proto, ptr align 4 @__const.efi_pe_entry.proto, i64 16, i1 false), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %boot_params) #9, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %boot_params, metadata !1013, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #9, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1330, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0(i64 4, ptr %options_size) #9, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %options_size, metadata !1332, metadata !DIExpression()), !dbg !1347
  store i32 0, ptr %options_size, align 4, !dbg !1347
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1348
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1333, metadata !DIExpression()), !dbg !1349
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc) #9, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %alloc, metadata !1334, metadata !DIExpression()), !dbg !1351
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline_ptr) #9, !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %cmdline_ptr, metadata !1335, metadata !DIExpression()), !dbg !1353
  %call = call zeroext i1 @efi_is_native() #10, !dbg !1354
  br i1 %call, label %if.then, label %if.end, !dbg !1356

if.then:                                          ; preds = %entry
  %call1 = call ptr @memset(ptr noundef @_bss, i32 noundef 0, i64 noundef sub (i64 ptrtoint (ptr @_ebss to i64), i64 ptrtoint (ptr @_bss to i64))) #10, !dbg !1357
  br label %if.end, !dbg !1357

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %sys_table_arg.addr, align 8, !dbg !1358
  store ptr %0, ptr @efi_system_table, align 8, !dbg !1359
  %1 = load ptr, ptr @efi_system_table, align 8, !dbg !1360
  %hdr2 = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 0, !dbg !1362
  %signature = getelementptr inbounds %struct.efi_table_hdr_t, ptr %hdr2, i32 0, i32 0, !dbg !1363
  %2 = load i64, ptr %signature, align 8, !dbg !1363
  %cmp = icmp ne i64 %2, 6076298535811760713, !dbg !1364
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1365

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !1366
  call void @efi_exit(ptr noundef %3, i64 noundef -9223372036854775806) #11, !dbg !1367
  unreachable, !dbg !1367

if.end4:                                          ; preds = %if.end
  %call5 = call zeroext i1 @efi_is_native() #10, !dbg !1368
  br i1 %call5, label %cond.true, label %cond.false10, !dbg !1368

cond.true:                                        ; preds = %if.end4
  %call6 = call zeroext i1 @efi_is_native() #10, !dbg !1368
  br i1 %call6, label %cond.true7, label %cond.false, !dbg !1368

cond.true7:                                       ; preds = %cond.true
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !1368
  %boottime = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 10, !dbg !1368
  %5 = load ptr, ptr %boottime, align 8, !dbg !1368
  br label %cond.end, !dbg !1368

cond.false:                                       ; preds = %cond.true
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !1368
  %boottime8 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %6, i32 0, i32 10, !dbg !1368
  %7 = load i32, ptr %boottime8, align 4, !dbg !1368
  %conv = zext i32 %7 to i64, !dbg !1368
  %8 = inttoptr i64 %conv to ptr, !dbg !1368
  br label %cond.end, !dbg !1368

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi ptr [ %5, %cond.true7 ], [ %8, %cond.false ], !dbg !1368
  %handle_protocol = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 17, !dbg !1368
  %9 = load ptr, ptr %handle_protocol, align 8, !dbg !1368
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !1368
  %call9 = call win64cc i64 %9(ptr noundef %10, ptr noundef %proto, ptr noundef @image) #10, !dbg !1368
  br label %cond.end24, !dbg !1368

cond.false10:                                     ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1336, metadata !DIExpression()), !dbg !1369
  br label %do.body, !dbg !1370

do.body:                                          ; preds = %cond.false10
  br label %do.cond, !dbg !1372

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1372

do.end:                                           ; preds = %do.cond
  %call11 = call zeroext i1 @efi_is_native() #10, !dbg !1369
  br i1 %call11, label %cond.true13, label %cond.false15, !dbg !1369

cond.true13:                                      ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !1369
  %boottime14 = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 10, !dbg !1369
  %12 = load ptr, ptr %boottime14, align 8, !dbg !1369
  br label %cond.end18, !dbg !1369

cond.false15:                                     ; preds = %do.end
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !1369
  %boottime16 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 10, !dbg !1369
  %14 = load i32, ptr %boottime16, align 4, !dbg !1369
  %conv17 = zext i32 %14 to i64, !dbg !1369
  %15 = inttoptr i64 %conv17 to ptr, !dbg !1369
  br label %cond.end18, !dbg !1369

cond.end18:                                       ; preds = %cond.false15, %cond.true13
  %cond19 = phi ptr [ %12, %cond.true13 ], [ %15, %cond.false15 ], !dbg !1369
  %handle_protocol20 = getelementptr inbounds %struct.anon.5, ptr %cond19, i32 0, i32 17, !dbg !1369
  %16 = load i32, ptr %handle_protocol20, align 8, !dbg !1369
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !1369
  %call21 = call ptr @efi64_zero_upper(ptr noundef @image) #10, !dbg !1369
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1369
  %call22 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %16, ptr noundef %17, ptr noundef %proto, ptr noundef %call21, ptr noundef %arraydecay) #10, !dbg !1369
  store i64 %call22, ptr %tmp, align 8, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1368
  %18 = load i64, ptr %tmp, align 8, !dbg !1369
  %call23 = call i64 @__efi64_widen_efi_status(i64 noundef %18) #10, !dbg !1368
  br label %cond.end24, !dbg !1368

cond.end24:                                       ; preds = %cond.end18, %cond.end
  %cond25 = phi i64 [ %call9, %cond.end ], [ %call23, %cond.end18 ], !dbg !1368
  store i64 %cond25, ptr %status, align 8, !dbg !1374
  %19 = load i64, ptr %status, align 8, !dbg !1375
  %cmp26 = icmp ne i64 %19, 0, !dbg !1377
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !1378

if.then28:                                        ; preds = %cond.end24
  %call29 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.3) #10, !dbg !1379
  %20 = load ptr, ptr %handle.addr, align 8, !dbg !1381
  %21 = load i64, ptr %status, align 8, !dbg !1382
  call void @efi_exit(ptr noundef %20, i64 noundef %21) #11, !dbg !1383
  unreachable, !dbg !1383

if.end30:                                         ; preds = %cond.end24
  %call31 = call i64 @efi_allocate_pages(i64 noundef 4096, ptr noundef %alloc, i64 noundef -1) #10, !dbg !1384
  store i64 %call31, ptr %status, align 8, !dbg !1385
  %22 = load i64, ptr %status, align 8, !dbg !1386
  %cmp32 = icmp ne i64 %22, 0, !dbg !1388
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1389

if.then34:                                        ; preds = %if.end30
  %23 = load ptr, ptr %handle.addr, align 8, !dbg !1390
  %24 = load i64, ptr %status, align 8, !dbg !1391
  call void @efi_exit(ptr noundef %23, i64 noundef %24) #11, !dbg !1392
  unreachable, !dbg !1392

if.end35:                                         ; preds = %if.end30
  %25 = load i64, ptr %alloc, align 8, !dbg !1393
  %26 = inttoptr i64 %25 to ptr, !dbg !1394
  %call36 = call ptr @memset(ptr noundef %26, i32 noundef 0, i64 noundef 4096) #10, !dbg !1395
  store ptr %call36, ptr %boot_params, align 8, !dbg !1396
  %27 = load ptr, ptr %boot_params, align 8, !dbg !1397
  %hdr37 = getelementptr inbounds %struct.boot_params, ptr %27, i32 0, i32 28, !dbg !1398
  store ptr %hdr37, ptr %hdr, align 8, !dbg !1399
  %28 = load ptr, ptr %hdr, align 8, !dbg !1400
  %root_flags = getelementptr inbounds %struct.setup_header, ptr %28, i32 0, i32 1, !dbg !1401
  store i16 1, ptr %root_flags, align 1, !dbg !1402
  %29 = load ptr, ptr %hdr, align 8, !dbg !1403
  %vid_mode = getelementptr inbounds %struct.setup_header, ptr %29, i32 0, i32 4, !dbg !1404
  store i16 -1, ptr %vid_mode, align 1, !dbg !1405
  %30 = load ptr, ptr %hdr, align 8, !dbg !1406
  %type_of_loader = getelementptr inbounds %struct.setup_header, ptr %30, i32 0, i32 13, !dbg !1407
  store i8 33, ptr %type_of_loader, align 1, !dbg !1408
  %31 = load ptr, ptr %hdr, align 8, !dbg !1409
  %initrd_addr_max = getelementptr inbounds %struct.setup_header, ptr %31, i32 0, i32 24, !dbg !1410
  store i32 2147483647, ptr %initrd_addr_max, align 1, !dbg !1411
  %32 = load ptr, ptr @image, align 8, !dbg !1412
  %call38 = call ptr @efi_convert_cmdline(ptr noundef %32, ptr noundef %options_size) #10, !dbg !1413
  store ptr %call38, ptr %cmdline_ptr, align 8, !dbg !1414
  %33 = load ptr, ptr %cmdline_ptr, align 8, !dbg !1415
  %tobool = icmp ne ptr %33, null, !dbg !1415
  br i1 %tobool, label %if.end40, label %if.then39, !dbg !1417

if.then39:                                        ; preds = %if.end35
  %34 = load i64, ptr %alloc, align 8, !dbg !1418
  call void @efi_free(i64 noundef 4096, i64 noundef %34) #10, !dbg !1420
  %35 = load ptr, ptr %handle.addr, align 8, !dbg !1421
  call void @efi_exit(ptr noundef %35, i64 noundef -9223372036854775799) #11, !dbg !1422
  unreachable, !dbg !1422

if.end40:                                         ; preds = %if.end35
  %36 = load ptr, ptr %cmdline_ptr, align 8, !dbg !1423
  %37 = ptrtoint ptr %36 to i64, !dbg !1424
  %38 = load ptr, ptr %hdr, align 8, !dbg !1425
  %cmd_line_ptr = getelementptr inbounds %struct.setup_header, ptr %38, i32 0, i32 23, !dbg !1426
  %39 = load ptr, ptr %boot_params, align 8, !dbg !1427
  %ext_cmd_line_ptr = getelementptr inbounds %struct.boot_params, ptr %39, i32 0, i32 13, !dbg !1428
  call void @efi_set_u64_split(i64 noundef %37, ptr noundef %cmd_line_ptr, ptr noundef %ext_cmd_line_ptr) #10, !dbg !1429
  %40 = load ptr, ptr %handle.addr, align 8, !dbg !1430
  %41 = load ptr, ptr %sys_table_arg.addr, align 8, !dbg !1431
  %42 = load ptr, ptr %boot_params, align 8, !dbg !1432
  call void @efi_stub_entry(ptr noundef %40, ptr noundef %41, ptr noundef %42) #11, !dbg !1433
  unreachable, !dbg !1433
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare !dbg !1434 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone noreturn nounwind
define internal void @efi_exit(ptr noundef %handle, i64 noundef %status) #6 !dbg !1442 {
entry:
  %handle.addr = alloca ptr, align 8
  %status.addr = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1446, metadata !DIExpression()), !dbg !1450
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1447, metadata !DIExpression()), !dbg !1451
  %call = call zeroext i1 @efi_is_native() #10, !dbg !1452
  br i1 %call, label %cond.true, label %cond.false5, !dbg !1452

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #10, !dbg !1452
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !1452

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !1452
  %boottime = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 10, !dbg !1452
  %1 = load ptr, ptr %boottime, align 8, !dbg !1452
  br label %cond.end, !dbg !1452

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1452
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !1452
  %3 = load i32, ptr %boottime3, align 4, !dbg !1452
  %conv = zext i32 %3 to i64, !dbg !1452
  %4 = inttoptr i64 %conv to ptr, !dbg !1452
  br label %cond.end, !dbg !1452

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !1452
  %exit = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 25, !dbg !1452
  %5 = load ptr, ptr %exit, align 8, !dbg !1452
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !1452
  %7 = load i64, ptr %status.addr, align 8, !dbg !1452
  %call4 = call win64cc i64 %5(ptr noundef %6, i64 noundef %7, i64 noundef 0, ptr noundef null) #11, !dbg !1452
  unreachable, !dbg !1452

8:                                                ; No predecessors!
  br label %cond.end19, !dbg !1452

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1448, metadata !DIExpression()), !dbg !1453
  br label %do.body, !dbg !1454

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !1456

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1456

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #10, !dbg !1453
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !1453

cond.true8:                                       ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !1453
  %boottime9 = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 10, !dbg !1453
  %10 = load ptr, ptr %boottime9, align 8, !dbg !1453
  br label %cond.end13, !dbg !1453

cond.false10:                                     ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !1453
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %11, i32 0, i32 10, !dbg !1453
  %12 = load i32, ptr %boottime11, align 4, !dbg !1453
  %conv12 = zext i32 %12 to i64, !dbg !1453
  %13 = inttoptr i64 %conv12 to ptr, !dbg !1453
  br label %cond.end13, !dbg !1453

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %10, %cond.true8 ], [ %13, %cond.false10 ], !dbg !1453
  %exit15 = getelementptr inbounds %struct.anon.5, ptr %cond14, i32 0, i32 25, !dbg !1453
  %14 = load i32, ptr %exit15, align 8, !dbg !1453
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !1453
  %16 = load i64, ptr %status.addr, align 8, !dbg !1453
  %call16 = call i32 @efi64_convert_status(i64 noundef %16) #10, !dbg !1453
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1453
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %14, ptr noundef %15, i32 noundef %call16, i32 noundef 0, ptr noundef null, ptr noundef %arraydecay) #10, !dbg !1453
  store i64 %call17, ptr %tmp, align 8, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1452
  %17 = load i64, ptr %tmp, align 8, !dbg !1453
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %17) #10, !dbg !1452
  br label %cond.end19, !dbg !1452

cond.end19:                                       ; preds = %cond.end13, %8
  %cond20 = phi i64 [ undef, %8 ], [ %call18, %cond.end13 ], !dbg !1452
  br label %for.cond, !dbg !1458

for.cond:                                         ; preds = %for.cond, %cond.end19
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1459, !srcloc !1462
  br label %for.cond, !dbg !1463, !llvm.loop !1464
}

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #3 !dbg !1467 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1473
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1474
  store i32 0, ptr %arrayidx, align 4, !dbg !1475
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1476
  ret ptr %1, !dbg !1477
}

; Function Attrs: noredzone
declare !dbg !1478 hidden i64 @efi_allocate_pages(i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !1481 hidden ptr @efi_convert_cmdline(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !1484 hidden void @efi_free(i64 noundef, i64 noundef) #4

; Function Attrs: inlinehint noredzone nounwind
define internal void @efi_set_u64_split(i64 noundef %data, ptr noundef %lo, ptr noundef %hi) #3 !dbg !1487 {
entry:
  %data.addr = alloca i64, align 8
  %lo.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  store i64 %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1491, metadata !DIExpression()), !dbg !1494
  store ptr %lo, ptr %lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lo.addr, metadata !1492, metadata !DIExpression()), !dbg !1495
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !1493, metadata !DIExpression()), !dbg !1496
  %0 = load i64, ptr %data.addr, align 8, !dbg !1497
  %and = and i64 %0, 4294967295, !dbg !1497
  %conv = trunc i64 %and to i32, !dbg !1497
  %1 = load ptr, ptr %lo.addr, align 8, !dbg !1498
  store i32 %conv, ptr %1, align 4, !dbg !1499
  %2 = load i64, ptr %data.addr, align 8, !dbg !1500
  %shr = lshr i64 %2, 16, !dbg !1500
  %shr1 = lshr i64 %shr, 16, !dbg !1500
  %conv2 = trunc i64 %shr1 to i32, !dbg !1500
  %3 = load ptr, ptr %hi.addr, align 8, !dbg !1501
  store i32 %conv2, ptr %3, align 4, !dbg !1502
  ret void, !dbg !1503
}

; Function Attrs: noredzone noreturn nounwind
define hidden void @efi_stub_entry(ptr noundef %handle, ptr noundef %sys_table_arg, ptr noundef %boot_params) #6 !dbg !1504 {
entry:
  %handle.addr = alloca ptr, align 8
  %sys_table_arg.addr = alloca ptr, align 8
  %boot_params.addr = alloca ptr, align 8
  %guid = alloca %struct.guid_t, align 4
  %hdr = alloca ptr, align 8
  %initrd = alloca ptr, align 8
  %kernel_entry = alloca i64, align 8
  %status = alloca i64, align 8
  %.compoundliteral = alloca %struct.guid_t, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cmdline_paddr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1508, metadata !DIExpression()), !dbg !1528
  store ptr %sys_table_arg, ptr %sys_table_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sys_table_arg.addr, metadata !1509, metadata !DIExpression()), !dbg !1529
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !1510, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 16, ptr %guid) #9, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %guid, metadata !1511, metadata !DIExpression()), !dbg !1532
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %guid, ptr align 4 @__const.efi_stub_entry.guid, i64 16, i1 false), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #9, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1512, metadata !DIExpression()), !dbg !1534
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !1535
  %hdr1 = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 28, !dbg !1536
  store ptr %hdr1, ptr %hdr, align 8, !dbg !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %initrd) #9, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %initrd, metadata !1513, metadata !DIExpression()), !dbg !1538
  store ptr null, ptr %initrd, align 8, !dbg !1538
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_entry) #9, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %kernel_entry, metadata !1520, metadata !DIExpression()), !dbg !1540
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1521, metadata !DIExpression()), !dbg !1542
  %1 = load ptr, ptr %boot_params.addr, align 8, !dbg !1543
  store ptr %1, ptr @boot_params_ptr, align 8, !dbg !1544
  %2 = load ptr, ptr %sys_table_arg.addr, align 8, !dbg !1545
  store ptr %2, ptr @efi_system_table, align 8, !dbg !1546
  %3 = load ptr, ptr @efi_system_table, align 8, !dbg !1547
  %hdr2 = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 0, !dbg !1549
  %signature = getelementptr inbounds %struct.efi_table_hdr_t, ptr %hdr2, i32 0, i32 0, !dbg !1550
  %4 = load i64, ptr %signature, align 8, !dbg !1550
  %cmp = icmp ne i64 %4, 6076298535811760713, !dbg !1551
  br i1 %cmp, label %if.then, label %if.end, !dbg !1552

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !1553
  call void @efi_exit(ptr noundef %5, i64 noundef -9223372036854775806) #11, !dbg !1554
  unreachable, !dbg !1554

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @have_unsupported_snp_features() #10, !dbg !1555
  br i1 %call, label %if.then3, label %if.end4, !dbg !1557

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !1558
  call void @efi_exit(ptr noundef %6, i64 noundef -9223372036854775805) #11, !dbg !1559
  unreachable, !dbg !1559

if.end4:                                          ; preds = %if.end
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1560
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !1560
  store i8 -70, ptr %arrayinit.begin, align 1, !dbg !1560
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !1560
  store i8 52, ptr %arrayinit.element, align 1, !dbg !1560
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !1560
  store i8 -83, ptr %arrayinit.element5, align 1, !dbg !1560
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !1560
  store i8 5, ptr %arrayinit.element6, align 1, !dbg !1560
  %arrayinit.element7 = getelementptr inbounds i8, ptr %arrayinit.element6, i64 1, !dbg !1560
  store i8 2, ptr %arrayinit.element7, align 1, !dbg !1560
  %arrayinit.element8 = getelementptr inbounds i8, ptr %arrayinit.element7, i64 1, !dbg !1560
  store i8 111, ptr %arrayinit.element8, align 1, !dbg !1560
  %arrayinit.element9 = getelementptr inbounds i8, ptr %arrayinit.element8, i64 1, !dbg !1560
  store i8 20, ptr %arrayinit.element9, align 1, !dbg !1560
  %arrayinit.element10 = getelementptr inbounds i8, ptr %arrayinit.element9, i64 1, !dbg !1560
  store i8 66, ptr %arrayinit.element10, align 1, !dbg !1560
  %arrayinit.element11 = getelementptr inbounds i8, ptr %arrayinit.element10, i64 1, !dbg !1560
  store i8 -107, ptr %arrayinit.element11, align 1, !dbg !1560
  %arrayinit.element12 = getelementptr inbounds i8, ptr %arrayinit.element11, i64 1, !dbg !1560
  store i8 46, ptr %arrayinit.element12, align 1, !dbg !1560
  %arrayinit.element13 = getelementptr inbounds i8, ptr %arrayinit.element12, i64 1, !dbg !1560
  store i8 77, ptr %arrayinit.element13, align 1, !dbg !1560
  %arrayinit.element14 = getelementptr inbounds i8, ptr %arrayinit.element13, i64 1, !dbg !1560
  store i8 -96, ptr %arrayinit.element14, align 1, !dbg !1560
  %arrayinit.element15 = getelementptr inbounds i8, ptr %arrayinit.element14, i64 1, !dbg !1560
  store i8 57, ptr %arrayinit.element15, align 1, !dbg !1560
  %arrayinit.element16 = getelementptr inbounds i8, ptr %arrayinit.element15, i64 1, !dbg !1560
  store i8 -114, ptr %arrayinit.element16, align 1, !dbg !1560
  %arrayinit.element17 = getelementptr inbounds i8, ptr %arrayinit.element16, i64 1, !dbg !1560
  store i8 43, ptr %arrayinit.element17, align 1, !dbg !1560
  %arrayinit.element18 = getelementptr inbounds i8, ptr %arrayinit.element17, i64 1, !dbg !1560
  store i8 -71, ptr %arrayinit.element18, align 1, !dbg !1560
  %7 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !1563
  %8 = load i64, ptr %7, align 4, !dbg !1563
  %9 = getelementptr inbounds { i64, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !1563
  %10 = load i64, ptr %9, align 4, !dbg !1563
  %call19 = call ptr @get_efi_config_table(i64 %8, i64 %10) #10, !dbg !1563
  store ptr %call19, ptr @efi_dxe_table, align 8, !dbg !1564
  %11 = load ptr, ptr @efi_dxe_table, align 8, !dbg !1565
  %tobool = icmp ne ptr %11, null, !dbg !1565
  br i1 %tobool, label %land.lhs.true, label %if.end25, !dbg !1567

land.lhs.true:                                    ; preds = %if.end4
  %12 = load ptr, ptr @efi_dxe_table, align 8, !dbg !1568
  %hdr20 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 0, !dbg !1569
  %signature21 = getelementptr inbounds %struct.efi_table_hdr_t, ptr %hdr20, i32 0, i32 0, !dbg !1570
  %13 = load i64, ptr %signature21, align 8, !dbg !1570
  %cmp22 = icmp ne i64 %13, 6220110259735058500, !dbg !1571
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !1572

if.then23:                                        ; preds = %land.lhs.true
  %call24 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.4) #10, !dbg !1573
  store ptr null, ptr @efi_dxe_table, align 8, !dbg !1575
  br label %if.end25, !dbg !1576

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.end4
  %call26 = call zeroext i1 @efi_is_native() #10, !dbg !1577
  br i1 %call26, label %cond.true, label %cond.false31, !dbg !1577

cond.true:                                        ; preds = %if.end25
  %call27 = call zeroext i1 @efi_is_native() #10, !dbg !1577
  br i1 %call27, label %cond.true28, label %cond.false, !dbg !1577

cond.true28:                                      ; preds = %cond.true
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !1577
  %boottime = getelementptr inbounds %struct.anon.3, ptr %14, i32 0, i32 10, !dbg !1577
  %15 = load ptr, ptr %boottime, align 8, !dbg !1577
  br label %cond.end, !dbg !1577

cond.false:                                       ; preds = %cond.true
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !1577
  %boottime29 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %16, i32 0, i32 10, !dbg !1577
  %17 = load i32, ptr %boottime29, align 4, !dbg !1577
  %conv = zext i32 %17 to i64, !dbg !1577
  %18 = inttoptr i64 %conv to ptr, !dbg !1577
  br label %cond.end, !dbg !1577

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi ptr [ %15, %cond.true28 ], [ %18, %cond.false ], !dbg !1577
  %locate_protocol = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 38, !dbg !1577
  %19 = load ptr, ptr %locate_protocol, align 8, !dbg !1577
  %call30 = call win64cc i64 %19(ptr noundef %guid, ptr noundef null, ptr noundef @memattr) #10, !dbg !1577
  br label %cond.end45, !dbg !1577

cond.false31:                                     ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1522, metadata !DIExpression()), !dbg !1578
  br label %do.body, !dbg !1579

do.body:                                          ; preds = %cond.false31
  br label %do.cond, !dbg !1581

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1581

do.end:                                           ; preds = %do.cond
  %call32 = call zeroext i1 @efi_is_native() #10, !dbg !1578
  br i1 %call32, label %cond.true34, label %cond.false36, !dbg !1578

cond.true34:                                      ; preds = %do.end
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !1578
  %boottime35 = getelementptr inbounds %struct.anon.3, ptr %20, i32 0, i32 10, !dbg !1578
  %21 = load ptr, ptr %boottime35, align 8, !dbg !1578
  br label %cond.end39, !dbg !1578

cond.false36:                                     ; preds = %do.end
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !1578
  %boottime37 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 10, !dbg !1578
  %23 = load i32, ptr %boottime37, align 4, !dbg !1578
  %conv38 = zext i32 %23 to i64, !dbg !1578
  %24 = inttoptr i64 %conv38 to ptr, !dbg !1578
  br label %cond.end39, !dbg !1578

cond.end39:                                       ; preds = %cond.false36, %cond.true34
  %cond40 = phi ptr [ %21, %cond.true34 ], [ %24, %cond.false36 ], !dbg !1578
  %locate_protocol41 = getelementptr inbounds %struct.anon.5, ptr %cond40, i32 0, i32 38, !dbg !1578
  %25 = load i32, ptr %locate_protocol41, align 4, !dbg !1578
  %call42 = call ptr @efi64_zero_upper(ptr noundef @memattr) #10, !dbg !1578
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1578
  %call43 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, ptr noundef %guid, ptr noundef null, ptr noundef %call42, ptr noundef %arraydecay) #10, !dbg !1578
  store i64 %call43, ptr %tmp, align 8, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1577
  %26 = load i64, ptr %tmp, align 8, !dbg !1578
  %call44 = call i64 @__efi64_widen_efi_status(i64 noundef %26) #10, !dbg !1577
  br label %cond.end45, !dbg !1577

cond.end45:                                       ; preds = %cond.end39, %cond.end
  %cond46 = phi i64 [ %call30, %cond.end ], [ %call44, %cond.end39 ], !dbg !1577
  %call47 = call i64 @efi_setup_5level_paging() #10, !dbg !1583
  store i64 %call47, ptr %status, align 8, !dbg !1584
  %27 = load i64, ptr %status, align 8, !dbg !1585
  %cmp48 = icmp ne i64 %27, 0, !dbg !1587
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !1588

if.then50:                                        ; preds = %cond.end45
  %call51 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.5) #10, !dbg !1589
  br label %fail, !dbg !1591

if.end52:                                         ; preds = %cond.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline_paddr) #9, !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %cmdline_paddr, metadata !1524, metadata !DIExpression()), !dbg !1593
  %28 = load ptr, ptr %hdr, align 8, !dbg !1594
  %cmd_line_ptr = getelementptr inbounds %struct.setup_header, ptr %28, i32 0, i32 23, !dbg !1595
  %29 = load i32, ptr %cmd_line_ptr, align 1, !dbg !1595
  %conv53 = zext i32 %29 to i64, !dbg !1596
  %30 = load ptr, ptr %boot_params.addr, align 8, !dbg !1597
  %ext_cmd_line_ptr = getelementptr inbounds %struct.boot_params, ptr %30, i32 0, i32 13, !dbg !1598
  %31 = load i32, ptr %ext_cmd_line_ptr, align 1, !dbg !1598
  %conv54 = zext i32 %31 to i64, !dbg !1599
  %shl = shl i64 %conv54, 32, !dbg !1600
  %or = or i64 %conv53, %shl, !dbg !1601
  store i64 %or, ptr %cmdline_paddr, align 8, !dbg !1593
  %32 = load i64, ptr %cmdline_paddr, align 8, !dbg !1602
  %33 = inttoptr i64 %32 to ptr, !dbg !1603
  %call55 = call i64 @parse_options(ptr noundef %33) #10, !dbg !1604
  store i64 %call55, ptr %status, align 8, !dbg !1605
  %34 = load i64, ptr %status, align 8, !dbg !1606
  %cmp56 = icmp ne i64 %34, 0, !dbg !1608
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1609

if.then58:                                        ; preds = %if.end52
  %call59 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.6) #10, !dbg !1610
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1612

if.end60:                                         ; preds = %if.end52
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1613
  br label %cleanup, !dbg !1613

cleanup:                                          ; preds = %if.then58, %if.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmdline_paddr) #9, !dbg !1613
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  %35 = load i32, ptr @efi_mem_encrypt, align 4, !dbg !1614
  %cmp61 = icmp sgt i32 %35, 0, !dbg !1616
  br i1 %cmp61, label %if.then63, label %if.end67, !dbg !1617

if.then63:                                        ; preds = %cleanup.cont
  %36 = load ptr, ptr %hdr, align 8, !dbg !1618
  %xloadflags = getelementptr inbounds %struct.setup_header, ptr %36, i32 0, i32 28, !dbg !1619
  %37 = load i16, ptr %xloadflags, align 1, !dbg !1620
  %conv64 = zext i16 %37 to i32, !dbg !1620
  %or65 = or i32 %conv64, 128, !dbg !1620
  %conv66 = trunc i32 %or65 to i16, !dbg !1620
  store i16 %conv66, ptr %xloadflags, align 1, !dbg !1620
  br label %if.end67, !dbg !1618

if.end67:                                         ; preds = %if.then63, %cleanup.cont
  %call68 = call i64 @efi_decompress_kernel(ptr noundef %kernel_entry) #10, !dbg !1621
  store i64 %call68, ptr %status, align 8, !dbg !1622
  %38 = load i64, ptr %status, align 8, !dbg !1623
  %cmp69 = icmp ne i64 %38, 0, !dbg !1625
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !1626

if.then71:                                        ; preds = %if.end67
  %call72 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.7) #10, !dbg !1627
  br label %fail, !dbg !1629

if.end73:                                         ; preds = %if.end67
  %39 = load ptr, ptr @image, align 8, !dbg !1630
  %40 = load ptr, ptr %hdr, align 8, !dbg !1631
  %initrd_addr_max = getelementptr inbounds %struct.setup_header, ptr %40, i32 0, i32 24, !dbg !1632
  %41 = load i32, ptr %initrd_addr_max, align 1, !dbg !1632
  %conv74 = zext i32 %41 to i64, !dbg !1631
  %call75 = call i64 @efi_load_initrd(ptr noundef %39, i64 noundef %conv74, i64 noundef -1, ptr noundef %initrd) #10, !dbg !1633
  store i64 %call75, ptr %status, align 8, !dbg !1634
  %42 = load i64, ptr %status, align 8, !dbg !1635
  %cmp76 = icmp ne i64 %42, 0, !dbg !1637
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !1638

if.then78:                                        ; preds = %if.end73
  br label %fail, !dbg !1639

if.end79:                                         ; preds = %if.end73
  %43 = load ptr, ptr %initrd, align 8, !dbg !1640
  %tobool80 = icmp ne ptr %43, null, !dbg !1640
  br i1 %tobool80, label %land.lhs.true81, label %if.end86, !dbg !1642

land.lhs.true81:                                  ; preds = %if.end79
  %44 = load ptr, ptr %initrd, align 8, !dbg !1643
  %size = getelementptr inbounds %struct.linux_efi_initrd, ptr %44, i32 0, i32 1, !dbg !1644
  %45 = load i64, ptr %size, align 8, !dbg !1644
  %cmp82 = icmp ugt i64 %45, 0, !dbg !1645
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !1646

if.then84:                                        ; preds = %land.lhs.true81
  %46 = load ptr, ptr %initrd, align 8, !dbg !1647
  %base = getelementptr inbounds %struct.linux_efi_initrd, ptr %46, i32 0, i32 0, !dbg !1649
  %47 = load i64, ptr %base, align 8, !dbg !1649
  %48 = load ptr, ptr %hdr, align 8, !dbg !1650
  %ramdisk_image = getelementptr inbounds %struct.setup_header, ptr %48, i32 0, i32 17, !dbg !1651
  %49 = load ptr, ptr %boot_params.addr, align 8, !dbg !1652
  %ext_ramdisk_image = getelementptr inbounds %struct.boot_params, ptr %49, i32 0, i32 11, !dbg !1653
  call void @efi_set_u64_split(i64 noundef %47, ptr noundef %ramdisk_image, ptr noundef %ext_ramdisk_image) #10, !dbg !1654
  %50 = load ptr, ptr %initrd, align 8, !dbg !1655
  %size85 = getelementptr inbounds %struct.linux_efi_initrd, ptr %50, i32 0, i32 1, !dbg !1656
  %51 = load i64, ptr %size85, align 8, !dbg !1656
  %52 = load ptr, ptr %hdr, align 8, !dbg !1657
  %ramdisk_size = getelementptr inbounds %struct.setup_header, ptr %52, i32 0, i32 18, !dbg !1658
  %53 = load ptr, ptr %boot_params.addr, align 8, !dbg !1659
  %ext_ramdisk_size = getelementptr inbounds %struct.boot_params, ptr %53, i32 0, i32 12, !dbg !1660
  call void @efi_set_u64_split(i64 noundef %51, ptr noundef %ramdisk_size, ptr noundef %ext_ramdisk_size) #10, !dbg !1661
  br label %if.end86, !dbg !1662

if.end86:                                         ; preds = %if.then84, %land.lhs.true81, %if.end79
  %54 = load ptr, ptr %boot_params.addr, align 8, !dbg !1663
  %secure_boot = getelementptr inbounds %struct.boot_params, ptr %54, i32 0, i32 24, !dbg !1665
  %55 = load i8, ptr %secure_boot, align 1, !dbg !1665
  %conv87 = zext i8 %55 to i32, !dbg !1663
  %cmp88 = icmp eq i32 %conv87, 0, !dbg !1666
  br i1 %cmp88, label %if.then90, label %if.end94, !dbg !1667

if.then90:                                        ; preds = %if.end86
  %call91 = call i32 @efi_get_secureboot() #10, !dbg !1668
  %conv92 = trunc i32 %call91 to i8, !dbg !1668
  %56 = load ptr, ptr %boot_params.addr, align 8, !dbg !1669
  %secure_boot93 = getelementptr inbounds %struct.boot_params, ptr %56, i32 0, i32 24, !dbg !1670
  store i8 %conv92, ptr %secure_boot93, align 1, !dbg !1671
  br label %if.end94, !dbg !1669

if.end94:                                         ; preds = %if.then90, %if.end86
  call void @efi_enable_reset_attack_mitigation() #10, !dbg !1672
  %call95 = call i64 @efi_random_get_seed() #10, !dbg !1673
  call void @efi_retrieve_tpm2_eventlog() #10, !dbg !1674
  %57 = load ptr, ptr %boot_params.addr, align 8, !dbg !1675
  call void @setup_graphics(ptr noundef %57) #10, !dbg !1676
  %58 = load ptr, ptr %boot_params.addr, align 8, !dbg !1677
  call void @setup_efi_pci(ptr noundef %58) #10, !dbg !1678
  %59 = load ptr, ptr %boot_params.addr, align 8, !dbg !1679
  call void @setup_quirks(ptr noundef %59) #10, !dbg !1680
  call void @setup_unaccepted_memory() #10, !dbg !1681
  %60 = load ptr, ptr %boot_params.addr, align 8, !dbg !1682
  %61 = load ptr, ptr %handle.addr, align 8, !dbg !1683
  %call96 = call i64 @exit_boot(ptr noundef %60, ptr noundef %61) #10, !dbg !1684
  store i64 %call96, ptr %status, align 8, !dbg !1685
  %62 = load i64, ptr %status, align 8, !dbg !1686
  %cmp97 = icmp ne i64 %62, 0, !dbg !1688
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !1689

if.then99:                                        ; preds = %if.end94
  %call100 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.8) #10, !dbg !1690
  br label %fail, !dbg !1692

if.end101:                                        ; preds = %if.end94
  %63 = load ptr, ptr %boot_params.addr, align 8, !dbg !1693
  call void @sev_enable(ptr noundef %63) #10, !dbg !1694
  call void @efi_5level_switch() #10, !dbg !1695
  %64 = load i64, ptr %kernel_entry, align 8, !dbg !1696
  %65 = load ptr, ptr %boot_params.addr, align 8, !dbg !1697
  call void @enter_kernel(i64 noundef %64, ptr noundef %65) #11, !dbg !1698
  unreachable, !dbg !1698

fail:                                             ; preds = %cleanup, %if.then99, %if.then78, %if.then71, %if.then50
  call void @llvm.dbg.label(metadata !1527), !dbg !1699
  %call102 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.9) #10, !dbg !1700
  %66 = load ptr, ptr %handle.addr, align 8, !dbg !1701
  %67 = load i64, ptr %status, align 8, !dbg !1702
  call void @efi_exit(ptr noundef %66, i64 noundef %67) #11, !dbg !1703
  unreachable, !dbg !1703

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @have_unsupported_snp_features() #0 !dbg !1704 {
entry:
  %retval = alloca i1, align 1
  %unsupported = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %unsupported) #9, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %unsupported, metadata !1706, metadata !DIExpression()), !dbg !1708
  %call = call i64 @sev_get_status() #10, !dbg !1709
  %call1 = call i64 @snp_get_unsupported_features(i64 noundef %call) #10, !dbg !1710
  store i64 %call1, ptr %unsupported, align 8, !dbg !1711
  %0 = load i64, ptr %unsupported, align 8, !dbg !1712
  %tobool = icmp ne i64 %0, 0, !dbg !1712
  br i1 %tobool, label %if.then, label %if.end, !dbg !1714

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %unsupported, align 8, !dbg !1715
  %call2 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.10, i64 noundef %1) #10, !dbg !1715
  store i1 true, ptr %retval, align 1, !dbg !1717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1717

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1718

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %unsupported) #9, !dbg !1719
  %2 = load i1, ptr %retval, align 1, !dbg !1719
  ret i1 %2, !dbg !1719
}

; Function Attrs: noredzone
declare !dbg !1720 hidden ptr @get_efi_config_table(i64, i64) #4

; Function Attrs: noredzone
declare !dbg !1723 hidden i64 @efi_setup_5level_paging() #4

; Function Attrs: noredzone nounwind
define internal i64 @parse_options(ptr noundef %cmdline) #0 !dbg !699 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !705, metadata !DIExpression()), !dbg !1727
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %i, metadata !706, metadata !DIExpression()), !dbg !1729
  store i32 0, ptr %i, align 4, !dbg !1729
  br label %for.cond, !dbg !1728

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1730
  %conv = sext i32 %0 to i64, !dbg !1730
  %cmp = icmp ult i64 %conv, 4, !dbg !1731
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1732

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !1732

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %p, metadata !708, metadata !DIExpression()), !dbg !1734
  %1 = load ptr, ptr %cmdline.addr, align 8, !dbg !1735
  %2 = load i32, ptr %i, align 4, !dbg !1736
  %idxprom = sext i32 %2 to i64, !dbg !1737
  %arrayidx = getelementptr inbounds [4 x [14 x i8]], ptr @parse_options.opts, i64 0, i64 %idxprom, !dbg !1737
  %arraydecay = getelementptr inbounds [14 x i8], ptr %arrayidx, i64 0, i64 0, !dbg !1737
  %call = call ptr @strstr(ptr noundef %1, ptr noundef %arraydecay) #10, !dbg !1738
  store ptr %call, ptr %p, align 8, !dbg !1734
  %3 = load ptr, ptr %p, align 8, !dbg !1739
  %4 = load ptr, ptr %cmdline.addr, align 8, !dbg !1741
  %cmp2 = icmp eq ptr %3, %4, !dbg !1742
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !1743

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %p, align 8, !dbg !1744
  %6 = load ptr, ptr %cmdline.addr, align 8, !dbg !1745
  %cmp4 = icmp ugt ptr %5, %6, !dbg !1746
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !1747

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load ptr, ptr %p, align 8, !dbg !1748
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 -1, !dbg !1748
  %8 = load i8, ptr %arrayidx6, align 1, !dbg !1748
  %conv7 = zext i8 %8 to i32, !dbg !1748
  %idxprom8 = sext i32 %conv7 to i64, !dbg !1748
  %arrayidx9 = getelementptr inbounds [0 x i8], ptr @_ctype, i64 0, i64 %idxprom8, !dbg !1748
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !1748
  %conv10 = zext i8 %9 to i32, !dbg !1748
  %and = and i32 %conv10, 32, !dbg !1748
  %cmp11 = icmp ne i32 %and, 0, !dbg !1748
  br i1 %cmp11, label %if.then, label %if.end, !dbg !1749

if.then:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i32, ptr %i, align 4, !dbg !1750
  %idxprom13 = sext i32 %10 to i64, !dbg !1752
  %arrayidx14 = getelementptr inbounds [4 x [14 x i8]], ptr @parse_options.opts, i64 0, i64 %idxprom13, !dbg !1752
  %arraydecay15 = getelementptr inbounds [14 x i8], ptr %arrayidx14, i64 0, i64 0, !dbg !1752
  store ptr %arraydecay15, ptr @cmdline_memmap_override, align 8, !dbg !1753
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1754

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1755
  br label %cleanup, !dbg !1755

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !1755
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1756

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i32, ptr %i, align 4, !dbg !1757
  %inc = add nsw i32 %11, 1, !dbg !1757
  store i32 %inc, ptr %i, align 4, !dbg !1757
  br label %for.cond, !dbg !1758, !llvm.loop !1759

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1758
  br label %for.end

for.end:                                          ; preds = %cleanup16
  %12 = load ptr, ptr %cmdline.addr, align 8, !dbg !1761
  %call17 = call i64 @efi_parse_options(ptr noundef %12) #10, !dbg !1762
  ret i64 %call17, !dbg !1763
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_decompress_kernel(ptr noundef %kernel_entry) #0 !dbg !719 {
entry:
  %retval = alloca i64, align 8
  %kernel_entry.addr = alloca ptr, align 8
  %virt_addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %alloc_size = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %status = alloca i64, align 8
  %seed = alloca [2 x i32], align 4
  %__UNIQUE_ID___x456 = alloca i64, align 8
  %__UNIQUE_ID___y457 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %range = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kernel_entry, ptr %kernel_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kernel_entry.addr, metadata !723, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt_addr) #9, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %virt_addr, metadata !724, metadata !DIExpression()), !dbg !1766
  store i64 16777216, ptr %virt_addr, align 8, !dbg !1766
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !725, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_size) #9, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %alloc_size, metadata !726, metadata !DIExpression()), !dbg !1769
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !727, metadata !DIExpression()), !dbg !1770
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1771
  call void @llvm.dbg.declare(metadata ptr %status, metadata !728, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #9, !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %seed, metadata !729, metadata !DIExpression()), !dbg !1774
  call void @llvm.memset.p0.i64(ptr align 4 %seed, i8 0, i64 8, i1 false), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x456) #9, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x456, metadata !733, metadata !DIExpression()), !dbg !1775
  %0 = load i32, ptr @output_len, align 4, !dbg !1775
  %conv = zext i32 %0 to i64, !dbg !1775
  store i64 %conv, ptr %__UNIQUE_ID___x456, align 8, !dbg !1775
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y457) #9, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y457, metadata !735, metadata !DIExpression()), !dbg !1775
  %1 = load i64, ptr @kernel_total_size, align 8, !dbg !1775
  store i64 %1, ptr %__UNIQUE_ID___y457, align 8, !dbg !1775
  %2 = load i64, ptr %__UNIQUE_ID___x456, align 8, !dbg !1775
  %3 = load i64, ptr %__UNIQUE_ID___y457, align 8, !dbg !1775
  %cmp = icmp ugt i64 %2, %3, !dbg !1775
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1775

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___x456, align 8, !dbg !1775
  br label %cond.end, !dbg !1775

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___y457, align 8, !dbg !1775
  br label %cond.end, !dbg !1775

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !1775
  store i64 %cond, ptr %tmp, align 8, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y457) #9, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x456) #9, !dbg !1776
  %6 = load i64, ptr %tmp, align 8, !dbg !1775
  %add = add i64 %6, 2097151, !dbg !1776
  %and = and i64 %add, -2097152, !dbg !1776
  store i64 %and, ptr %alloc_size, align 8, !dbg !1777
  %7 = load i8, ptr @efi_nokaslr, align 1, !dbg !1778, !range !1779, !noundef !1780
  %tobool = trunc i8 %7 to i1, !dbg !1778
  br i1 %tobool, label %if.end18, label %if.then, !dbg !1781

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %range) #9, !dbg !1782
  call void @llvm.dbg.declare(metadata ptr %range, metadata !736, metadata !DIExpression()), !dbg !1783
  %8 = load i64, ptr @kernel_total_size, align 8, !dbg !1784
  %sub = sub i64 1056964608, %8, !dbg !1785
  store i64 %sub, ptr %range, align 8, !dbg !1783
  %arraydecay = getelementptr inbounds [2 x i32], ptr %seed, i64 0, i64 0, !dbg !1786
  call void @efi_get_seed(ptr noundef %arraydecay, i32 noundef 8) #10, !dbg !1787
  %9 = load i64, ptr %range, align 8, !dbg !1788
  %arrayidx = getelementptr inbounds [2 x i32], ptr %seed, i64 0, i64 1, !dbg !1789
  %10 = load i32, ptr %arrayidx, align 4, !dbg !1789
  %conv3 = zext i32 %10 to i64, !dbg !1789
  %mul = mul i64 %9, %conv3, !dbg !1790
  %shr = lshr i64 %mul, 32, !dbg !1791
  %11 = load i64, ptr %virt_addr, align 8, !dbg !1792
  %add4 = add i64 %11, %shr, !dbg !1792
  store i64 %add4, ptr %virt_addr, align 8, !dbg !1792
  %12 = load i64, ptr %virt_addr, align 8, !dbg !1793
  %and5 = and i64 %12, -2097152, !dbg !1793
  store i64 %and5, ptr %virt_addr, align 8, !dbg !1793
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !1794
  %hdr = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 0, !dbg !1796
  %revision = getelementptr inbounds %struct.efi_table_hdr_t, ptr %hdr, i32 0, i32 1, !dbg !1797
  %14 = load i32, ptr %revision, align 8, !dbg !1797
  %cmp6 = icmp ule i32 %14, 131072, !dbg !1798
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !1799

land.lhs.true:                                    ; preds = %if.then
  %call = call ptr @efistub_fw_vendor() #10, !dbg !1800
  %call8 = call i32 @memcmp(ptr noundef %call, ptr noundef @efi_decompress_kernel.ami, i64 noundef 40) #10, !dbg !1801
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1801
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !1802

if.then10:                                        ; preds = %land.lhs.true
  %call11 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.11) #10, !dbg !1803
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %seed, i64 0, i64 0, !dbg !1805
  store i32 0, ptr %arrayidx12, align 4, !dbg !1806
  br label %if.end17, !dbg !1807

if.else:                                          ; preds = %land.lhs.true, %if.then
  %15 = load ptr, ptr @cmdline_memmap_override, align 8, !dbg !1808
  %tobool13 = icmp ne ptr %15, null, !dbg !1808
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !1810

if.then14:                                        ; preds = %if.else
  %16 = load ptr, ptr @cmdline_memmap_override, align 8, !dbg !1811
  %call15 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.12, ptr noundef %16) #10, !dbg !1811
  %arrayidx16 = getelementptr inbounds [2 x i32], ptr %seed, i64 0, i64 0, !dbg !1813
  store i32 0, ptr %arrayidx16, align 4, !dbg !1814
  br label %if.end, !dbg !1815

if.end:                                           ; preds = %if.then14, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %range) #9, !dbg !1816
  br label %if.end18, !dbg !1817

if.end18:                                         ; preds = %if.end17, %cond.end
  %17 = load i64, ptr %alloc_size, align 8, !dbg !1818
  %arrayidx19 = getelementptr inbounds [2 x i32], ptr %seed, i64 0, i64 0, !dbg !1819
  %18 = load i32, ptr %arrayidx19, align 4, !dbg !1819
  %conv20 = zext i32 %18 to i64, !dbg !1819
  %call21 = call zeroext i1 @efi_is_64bit() #10, !dbg !1820
  %19 = zext i1 %call21 to i64, !dbg !1820
  %cond23 = select i1 %call21, i64 -1, i64 4294967295, !dbg !1820
  %call24 = call i64 @efi_random_alloc(i64 noundef %17, i64 noundef 2097152, ptr noundef %addr, i64 noundef %conv20, i32 noundef 1, i64 noundef 16777216, i64 noundef %cond23) #10, !dbg !1821
  store i64 %call24, ptr %status, align 8, !dbg !1822
  %20 = load i64, ptr %status, align 8, !dbg !1823
  %cmp25 = icmp ne i64 %20, 0, !dbg !1825
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1826

if.then27:                                        ; preds = %if.end18
  %21 = load i64, ptr %status, align 8, !dbg !1827
  store i64 %21, ptr %retval, align 8, !dbg !1828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1828

if.end28:                                         ; preds = %if.end18
  %22 = load i64, ptr %addr, align 8, !dbg !1829
  %23 = inttoptr i64 %22 to ptr, !dbg !1830
  %24 = load i64, ptr %virt_addr, align 8, !dbg !1831
  %call29 = call i64 @decompress_kernel(ptr noundef %23, i64 noundef %24, ptr noundef @error) #10, !dbg !1832
  store i64 %call29, ptr %entry1, align 8, !dbg !1833
  %25 = load i64, ptr %entry1, align 8, !dbg !1834
  %cmp30 = icmp eq i64 %25, -1, !dbg !1836
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1837

if.then32:                                        ; preds = %if.end28
  %26 = load i64, ptr %alloc_size, align 8, !dbg !1838
  %27 = load i64, ptr %addr, align 8, !dbg !1840
  call void @efi_free(i64 noundef %26, i64 noundef %27) #10, !dbg !1841
  store i64 -9223372036854775807, ptr %retval, align 8, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1842

if.end33:                                         ; preds = %if.end28
  %28 = load i64, ptr %addr, align 8, !dbg !1843
  %29 = load i64, ptr %entry1, align 8, !dbg !1844
  %add34 = add i64 %28, %29, !dbg !1845
  %30 = load ptr, ptr %kernel_entry.addr, align 8, !dbg !1846
  store i64 %add34, ptr %30, align 8, !dbg !1847
  %31 = load i64, ptr %addr, align 8, !dbg !1848
  %32 = load i64, ptr @kernel_text_size, align 8, !dbg !1849
  %call35 = call i64 @efi_adjust_memory_range_protection(i64 noundef %31, i64 noundef %32) #10, !dbg !1850
  store i64 %call35, ptr %retval, align 8, !dbg !1851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1851

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #9, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_size) #9, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt_addr) #9, !dbg !1852
  %33 = load i64, ptr %retval, align 8, !dbg !1852
  ret i64 %33, !dbg !1852
}

; Function Attrs: noredzone
declare !dbg !1853 hidden i64 @efi_load_initrd(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !1857 hidden i32 @efi_get_secureboot() #4

; Function Attrs: inlinehint noredzone nounwind
define internal void @efi_enable_reset_attack_mitigation() #3 !dbg !1860 {
entry:
  ret void, !dbg !1863
}

; Function Attrs: noredzone
declare !dbg !1864 hidden i64 @efi_random_get_seed() #4

; Function Attrs: noredzone
declare !dbg !1865 hidden void @efi_retrieve_tpm2_eventlog() #4

; Function Attrs: noredzone nounwind
define internal void @setup_graphics(ptr noundef %boot_params) #0 !dbg !1866 {
entry:
  %boot_params.addr = alloca ptr, align 8
  %graphics_proto = alloca %struct.guid_t, align 4
  %si = alloca ptr, align 8
  %uga_proto = alloca %struct.guid_t, align 4
  %status = alloca i64, align 8
  %size = alloca i64, align 8
  %gop_handle = alloca ptr, align 8
  %uga_handle = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad41 = alloca [3 x i64], align 16
  %tmp45 = alloca i64, align 8
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !1870, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 16, ptr %graphics_proto) #9, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %graphics_proto, metadata !1871, metadata !DIExpression()), !dbg !1887
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %graphics_proto, ptr align 4 @__const.setup_graphics.graphics_proto, i64 16, i1 false), !dbg !1887
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #9, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %si, metadata !1872, metadata !DIExpression()), !dbg !1889
  call void @llvm.lifetime.start.p0(i64 16, ptr %uga_proto) #9, !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %uga_proto, metadata !1874, metadata !DIExpression()), !dbg !1891
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uga_proto, ptr align 4 @__const.setup_graphics.uga_proto, i64 16, i1 false), !dbg !1891
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1875, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1876, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 8, ptr %gop_handle) #9, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %gop_handle, metadata !1877, metadata !DIExpression()), !dbg !1897
  store ptr null, ptr %gop_handle, align 8, !dbg !1897
  call void @llvm.lifetime.start.p0(i64 8, ptr %uga_handle) #9, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %uga_handle, metadata !1878, metadata !DIExpression()), !dbg !1899
  store ptr null, ptr %uga_handle, align 8, !dbg !1899
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !1900
  %screen_info = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 0, !dbg !1901
  store ptr %screen_info, ptr %si, align 8, !dbg !1902
  %1 = load ptr, ptr %si, align 8, !dbg !1903
  %call = call ptr @memset(ptr noundef %1, i32 noundef 0, i64 noundef 64) #10, !dbg !1904
  store i64 0, ptr %size, align 8, !dbg !1905
  %call1 = call zeroext i1 @efi_is_native() #10, !dbg !1906
  br i1 %call1, label %cond.true, label %cond.false6, !dbg !1906

cond.true:                                        ; preds = %entry
  %call2 = call zeroext i1 @efi_is_native() #10, !dbg !1906
  br i1 %call2, label %cond.true3, label %cond.false, !dbg !1906

cond.true3:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1906
  %boottime = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 10, !dbg !1906
  %3 = load ptr, ptr %boottime, align 8, !dbg !1906
  br label %cond.end, !dbg !1906

cond.false:                                       ; preds = %cond.true
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !1906
  %boottime4 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %4, i32 0, i32 10, !dbg !1906
  %5 = load i32, ptr %boottime4, align 4, !dbg !1906
  %conv = zext i32 %5 to i64, !dbg !1906
  %6 = inttoptr i64 %conv to ptr, !dbg !1906
  br label %cond.end, !dbg !1906

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi ptr [ %3, %cond.true3 ], [ %6, %cond.false ], !dbg !1906
  %locate_handle = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 20, !dbg !1906
  %7 = load ptr, ptr %locate_handle, align 8, !dbg !1906
  %8 = load ptr, ptr %gop_handle, align 8, !dbg !1906
  %call5 = call win64cc i64 %7(i32 noundef 2, ptr noundef %graphics_proto, ptr noundef null, ptr noundef %size, ptr noundef %8) #10, !dbg !1906
  br label %cond.end19, !dbg !1906

cond.false6:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1879, metadata !DIExpression()), !dbg !1907
  br label %do.body, !dbg !1908

do.body:                                          ; preds = %cond.false6
  br label %do.cond, !dbg !1910

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1910

do.end:                                           ; preds = %do.cond
  %call7 = call zeroext i1 @efi_is_native() #10, !dbg !1907
  br i1 %call7, label %cond.true9, label %cond.false11, !dbg !1907

cond.true9:                                       ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !1907
  %boottime10 = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 10, !dbg !1907
  %10 = load ptr, ptr %boottime10, align 8, !dbg !1907
  br label %cond.end14, !dbg !1907

cond.false11:                                     ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !1907
  %boottime12 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %11, i32 0, i32 10, !dbg !1907
  %12 = load i32, ptr %boottime12, align 4, !dbg !1907
  %conv13 = zext i32 %12 to i64, !dbg !1907
  %13 = inttoptr i64 %conv13 to ptr, !dbg !1907
  br label %cond.end14, !dbg !1907

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi ptr [ %10, %cond.true9 ], [ %13, %cond.false11 ], !dbg !1907
  %locate_handle16 = getelementptr inbounds %struct.anon.5, ptr %cond15, i32 0, i32 20, !dbg !1907
  %14 = load i32, ptr %locate_handle16, align 4, !dbg !1907
  %15 = load ptr, ptr %gop_handle, align 8, !dbg !1907
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1907
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %14, i32 noundef 2, ptr noundef %graphics_proto, ptr noundef null, ptr noundef %size, ptr noundef %15, ptr noundef %arraydecay) #10, !dbg !1907
  store i64 %call17, ptr %tmp, align 8, !dbg !1907
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1906
  %16 = load i64, ptr %tmp, align 8, !dbg !1907
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %16) #10, !dbg !1906
  br label %cond.end19, !dbg !1906

cond.end19:                                       ; preds = %cond.end14, %cond.end
  %cond20 = phi i64 [ %call5, %cond.end ], [ %call18, %cond.end14 ], !dbg !1906
  store i64 %cond20, ptr %status, align 8, !dbg !1912
  %17 = load i64, ptr %status, align 8, !dbg !1913
  %cmp = icmp eq i64 %17, -9223372036854775803, !dbg !1915
  br i1 %cmp, label %if.then, label %if.end, !dbg !1916

if.then:                                          ; preds = %cond.end19
  %18 = load ptr, ptr %si, align 8, !dbg !1917
  %19 = load i64, ptr %size, align 8, !dbg !1918
  %call22 = call i64 @efi_setup_gop(ptr noundef %18, ptr noundef %graphics_proto, i64 noundef %19) #10, !dbg !1919
  store i64 %call22, ptr %status, align 8, !dbg !1920
  br label %if.end, !dbg !1921

if.end:                                           ; preds = %if.then, %cond.end19
  %20 = load i64, ptr %status, align 8, !dbg !1922
  %cmp23 = icmp ne i64 %20, 0, !dbg !1923
  br i1 %cmp23, label %if.then25, label %if.end66, !dbg !1924

if.then25:                                        ; preds = %if.end
  store i64 0, ptr %size, align 8, !dbg !1925
  %call26 = call zeroext i1 @efi_is_native() #10, !dbg !1926
  br i1 %call26, label %cond.true28, label %cond.false40, !dbg !1926

cond.true28:                                      ; preds = %if.then25
  %call29 = call zeroext i1 @efi_is_native() #10, !dbg !1926
  br i1 %call29, label %cond.true31, label %cond.false33, !dbg !1926

cond.true31:                                      ; preds = %cond.true28
  %21 = load ptr, ptr @efi_system_table, align 8, !dbg !1926
  %boottime32 = getelementptr inbounds %struct.anon.3, ptr %21, i32 0, i32 10, !dbg !1926
  %22 = load ptr, ptr %boottime32, align 8, !dbg !1926
  br label %cond.end36, !dbg !1926

cond.false33:                                     ; preds = %cond.true28
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !1926
  %boottime34 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %23, i32 0, i32 10, !dbg !1926
  %24 = load i32, ptr %boottime34, align 4, !dbg !1926
  %conv35 = zext i32 %24 to i64, !dbg !1926
  %25 = inttoptr i64 %conv35 to ptr, !dbg !1926
  br label %cond.end36, !dbg !1926

cond.end36:                                       ; preds = %cond.false33, %cond.true31
  %cond37 = phi ptr [ %22, %cond.true31 ], [ %25, %cond.false33 ], !dbg !1926
  %locate_handle38 = getelementptr inbounds %struct.anon.4, ptr %cond37, i32 0, i32 20, !dbg !1926
  %26 = load ptr, ptr %locate_handle38, align 8, !dbg !1926
  %27 = load ptr, ptr %uga_handle, align 8, !dbg !1926
  %call39 = call win64cc i64 %26(i32 noundef 2, ptr noundef %uga_proto, ptr noundef null, ptr noundef %size, ptr noundef %27) #10, !dbg !1926
  br label %cond.end59, !dbg !1926

cond.false40:                                     ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad41) #9, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %__pad41, metadata !1881, metadata !DIExpression()), !dbg !1927
  br label %do.body42, !dbg !1928

do.body42:                                        ; preds = %cond.false40
  br label %do.cond43, !dbg !1930

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1930

do.end44:                                         ; preds = %do.cond43
  %call46 = call zeroext i1 @efi_is_native() #10, !dbg !1927
  br i1 %call46, label %cond.true48, label %cond.false50, !dbg !1927

cond.true48:                                      ; preds = %do.end44
  %28 = load ptr, ptr @efi_system_table, align 8, !dbg !1927
  %boottime49 = getelementptr inbounds %struct.anon.3, ptr %28, i32 0, i32 10, !dbg !1927
  %29 = load ptr, ptr %boottime49, align 8, !dbg !1927
  br label %cond.end53, !dbg !1927

cond.false50:                                     ; preds = %do.end44
  %30 = load ptr, ptr @efi_system_table, align 8, !dbg !1927
  %boottime51 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %30, i32 0, i32 10, !dbg !1927
  %31 = load i32, ptr %boottime51, align 4, !dbg !1927
  %conv52 = zext i32 %31 to i64, !dbg !1927
  %32 = inttoptr i64 %conv52 to ptr, !dbg !1927
  br label %cond.end53, !dbg !1927

cond.end53:                                       ; preds = %cond.false50, %cond.true48
  %cond54 = phi ptr [ %29, %cond.true48 ], [ %32, %cond.false50 ], !dbg !1927
  %locate_handle55 = getelementptr inbounds %struct.anon.5, ptr %cond54, i32 0, i32 20, !dbg !1927
  %33 = load i32, ptr %locate_handle55, align 4, !dbg !1927
  %34 = load ptr, ptr %uga_handle, align 8, !dbg !1927
  %arraydecay56 = getelementptr inbounds [3 x i64], ptr %__pad41, i64 0, i64 0, !dbg !1927
  %call57 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %33, i32 noundef 2, ptr noundef %uga_proto, ptr noundef null, ptr noundef %size, ptr noundef %34, ptr noundef %arraydecay56) #10, !dbg !1927
  store i64 %call57, ptr %tmp45, align 8, !dbg !1927
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad41) #9, !dbg !1926
  %35 = load i64, ptr %tmp45, align 8, !dbg !1927
  %call58 = call i64 @__efi64_widen_efi_status(i64 noundef %35) #10, !dbg !1926
  br label %cond.end59, !dbg !1926

cond.end59:                                       ; preds = %cond.end53, %cond.end36
  %cond60 = phi i64 [ %call39, %cond.end36 ], [ %call58, %cond.end53 ], !dbg !1926
  store i64 %cond60, ptr %status, align 8, !dbg !1932
  %36 = load i64, ptr %status, align 8, !dbg !1933
  %cmp61 = icmp eq i64 %36, -9223372036854775803, !dbg !1935
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !1936

if.then63:                                        ; preds = %cond.end59
  %37 = load ptr, ptr %si, align 8, !dbg !1937
  %38 = load i64, ptr %size, align 8, !dbg !1938
  %call64 = call i64 @setup_uga(ptr noundef %37, ptr noundef %uga_proto, i64 noundef %38) #10, !dbg !1939
  br label %if.end65, !dbg !1939

if.end65:                                         ; preds = %if.then63, %cond.end59
  br label %if.end66, !dbg !1940

if.end66:                                         ; preds = %if.end65, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %uga_handle) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %gop_handle) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 16, ptr %uga_proto) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 16, ptr %graphics_proto) #9, !dbg !1941
  ret void, !dbg !1941
}

; Function Attrs: noredzone nounwind
define internal void @setup_efi_pci(ptr noundef %params) #0 !dbg !1942 {
entry:
  %params.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %pci_handle = alloca ptr, align 8
  %pci_proto = alloca %struct.guid_t, align 4
  %size = alloca i64, align 8
  %data = alloca ptr, align 8
  %h = alloca ptr, align 8
  %i = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad35 = alloca [3 x i64], align 16
  %tmp39 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad75 = alloca [3 x i64], align 16
  %tmp79 = alloca i64, align 8
  %pci = alloca ptr, align 8
  %rom = alloca ptr, align 8
  %__pad134 = alloca [3 x i64], align 16
  %tmp138 = alloca i64, align 8
  %__pad186 = alloca [3 x i64], align 16
  %tmp190 = alloca i64, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !1944, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1945, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_handle) #9, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %pci_handle, metadata !1946, metadata !DIExpression()), !dbg !2057
  store ptr null, ptr %pci_handle, align 8, !dbg !2057
  call void @llvm.lifetime.start.p0(i64 16, ptr %pci_proto) #9, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %pci_proto, metadata !1947, metadata !DIExpression()), !dbg !2059
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pci_proto, ptr align 4 @__const.setup_efi_pci.pci_proto, i64 16, i1 false), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1948, metadata !DIExpression()), !dbg !2061
  store i64 0, ptr %size, align 8, !dbg !2061
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !2062
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1949, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !2064
  call void @llvm.dbg.declare(metadata ptr %h, metadata !1950, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1951, metadata !DIExpression()), !dbg !2067
  %call = call zeroext i1 @efi_is_native() #10, !dbg !2068
  br i1 %call, label %cond.true, label %cond.false5, !dbg !2068

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #10, !dbg !2068
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !2068

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !2068
  %boottime = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 10, !dbg !2068
  %1 = load ptr, ptr %boottime, align 8, !dbg !2068
  br label %cond.end, !dbg !2068

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !2068
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !2068
  %3 = load i32, ptr %boottime3, align 4, !dbg !2068
  %conv = zext i32 %3 to i64, !dbg !2068
  %4 = inttoptr i64 %conv to ptr, !dbg !2068
  br label %cond.end, !dbg !2068

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !2068
  %locate_handle = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 20, !dbg !2068
  %5 = load ptr, ptr %locate_handle, align 8, !dbg !2068
  %6 = load ptr, ptr %pci_handle, align 8, !dbg !2068
  %call4 = call win64cc i64 %5(i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %size, ptr noundef %6) #10, !dbg !2068
  br label %cond.end18, !dbg !2068

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1952, metadata !DIExpression()), !dbg !2069
  br label %do.body, !dbg !2070

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !2072

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2072

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #10, !dbg !2069
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !2069

cond.true8:                                       ; preds = %do.end
  %7 = load ptr, ptr @efi_system_table, align 8, !dbg !2069
  %boottime9 = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 10, !dbg !2069
  %8 = load ptr, ptr %boottime9, align 8, !dbg !2069
  br label %cond.end13, !dbg !2069

cond.false10:                                     ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !2069
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %9, i32 0, i32 10, !dbg !2069
  %10 = load i32, ptr %boottime11, align 4, !dbg !2069
  %conv12 = zext i32 %10 to i64, !dbg !2069
  %11 = inttoptr i64 %conv12 to ptr, !dbg !2069
  br label %cond.end13, !dbg !2069

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %8, %cond.true8 ], [ %11, %cond.false10 ], !dbg !2069
  %locate_handle15 = getelementptr inbounds %struct.anon.5, ptr %cond14, i32 0, i32 20, !dbg !2069
  %12 = load i32, ptr %locate_handle15, align 4, !dbg !2069
  %13 = load ptr, ptr %pci_handle, align 8, !dbg !2069
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2069
  %call16 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %12, i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %size, ptr noundef %13, ptr noundef %arraydecay) #10, !dbg !2069
  store i64 %call16, ptr %tmp, align 8, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !2068
  %14 = load i64, ptr %tmp, align 8, !dbg !2069
  %call17 = call i64 @__efi64_widen_efi_status(i64 noundef %14) #10, !dbg !2068
  br label %cond.end18, !dbg !2068

cond.end18:                                       ; preds = %cond.end13, %cond.end
  %cond19 = phi i64 [ %call4, %cond.end ], [ %call17, %cond.end13 ], !dbg !2068
  store i64 %cond19, ptr %status, align 8, !dbg !2074
  %15 = load i64, ptr %status, align 8, !dbg !2075
  %cmp = icmp eq i64 %15, -9223372036854775803, !dbg !2076
  br i1 %cmp, label %if.then, label %if.end95, !dbg !2077

if.then:                                          ; preds = %cond.end18
  %call21 = call zeroext i1 @efi_is_native() #10, !dbg !2078
  br i1 %call21, label %cond.true23, label %cond.false34, !dbg !2078

cond.true23:                                      ; preds = %if.then
  %call24 = call zeroext i1 @efi_is_native() #10, !dbg !2078
  br i1 %call24, label %cond.true26, label %cond.false28, !dbg !2078

cond.true26:                                      ; preds = %cond.true23
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !2078
  %boottime27 = getelementptr inbounds %struct.anon.3, ptr %16, i32 0, i32 10, !dbg !2078
  %17 = load ptr, ptr %boottime27, align 8, !dbg !2078
  br label %cond.end31, !dbg !2078

cond.false28:                                     ; preds = %cond.true23
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !2078
  %boottime29 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %18, i32 0, i32 10, !dbg !2078
  %19 = load i32, ptr %boottime29, align 4, !dbg !2078
  %conv30 = zext i32 %19 to i64, !dbg !2078
  %20 = inttoptr i64 %conv30 to ptr, !dbg !2078
  br label %cond.end31, !dbg !2078

cond.end31:                                       ; preds = %cond.false28, %cond.true26
  %cond32 = phi ptr [ %17, %cond.true26 ], [ %20, %cond.false28 ], !dbg !2078
  %allocate_pool = getelementptr inbounds %struct.anon.4, ptr %cond32, i32 0, i32 6, !dbg !2078
  %21 = load ptr, ptr %allocate_pool, align 8, !dbg !2078
  %22 = load i64, ptr %size, align 8, !dbg !2078
  %call33 = call win64cc i64 %21(i32 noundef 2, i64 noundef %22, ptr noundef %pci_handle) #10, !dbg !2078
  br label %cond.end54, !dbg !2078

cond.false34:                                     ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad35) #9, !dbg !2079
  call void @llvm.dbg.declare(metadata ptr %__pad35, metadata !1954, metadata !DIExpression()), !dbg !2079
  br label %do.body36, !dbg !2080

do.body36:                                        ; preds = %cond.false34
  br label %do.cond37, !dbg !2082

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !2082

do.end38:                                         ; preds = %do.cond37
  %call40 = call zeroext i1 @efi_is_native() #10, !dbg !2079
  br i1 %call40, label %cond.true42, label %cond.false44, !dbg !2079

cond.true42:                                      ; preds = %do.end38
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !2079
  %boottime43 = getelementptr inbounds %struct.anon.3, ptr %23, i32 0, i32 10, !dbg !2079
  %24 = load ptr, ptr %boottime43, align 8, !dbg !2079
  br label %cond.end47, !dbg !2079

cond.false44:                                     ; preds = %do.end38
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !2079
  %boottime45 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 10, !dbg !2079
  %26 = load i32, ptr %boottime45, align 4, !dbg !2079
  %conv46 = zext i32 %26 to i64, !dbg !2079
  %27 = inttoptr i64 %conv46 to ptr, !dbg !2079
  br label %cond.end47, !dbg !2079

cond.end47:                                       ; preds = %cond.false44, %cond.true42
  %cond48 = phi ptr [ %24, %cond.true42 ], [ %27, %cond.false44 ], !dbg !2079
  %allocate_pool49 = getelementptr inbounds %struct.anon.5, ptr %cond48, i32 0, i32 6, !dbg !2079
  %28 = load i32, ptr %allocate_pool49, align 4, !dbg !2079
  %29 = load i64, ptr %size, align 8, !dbg !2079
  %call50 = call ptr @efi64_zero_upper(ptr noundef %pci_handle) #10, !dbg !2079
  %arraydecay51 = getelementptr inbounds [3 x i64], ptr %__pad35, i64 0, i64 0, !dbg !2079
  %call52 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %28, i32 noundef 2, i64 noundef %29, ptr noundef %call50, ptr noundef %arraydecay51) #10, !dbg !2079
  store i64 %call52, ptr %tmp39, align 8, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad35) #9, !dbg !2078
  %30 = load i64, ptr %tmp39, align 8, !dbg !2079
  %call53 = call i64 @__efi64_widen_efi_status(i64 noundef %30) #10, !dbg !2078
  br label %cond.end54, !dbg !2078

cond.end54:                                       ; preds = %cond.end47, %cond.end31
  %cond55 = phi i64 [ %call33, %cond.end31 ], [ %call53, %cond.end47 ], !dbg !2078
  store i64 %cond55, ptr %status, align 8, !dbg !2084
  %31 = load i64, ptr %status, align 8, !dbg !2085
  %cmp56 = icmp ne i64 %31, 0, !dbg !2087
  br i1 %cmp56, label %if.then58, label %if.end, !dbg !2088

if.then58:                                        ; preds = %cond.end54
  %call59 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.15) #10, !dbg !2089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup206, !dbg !2091

if.end:                                           ; preds = %cond.end54
  %call60 = call zeroext i1 @efi_is_native() #10, !dbg !2092
  br i1 %call60, label %cond.true62, label %cond.false74, !dbg !2092

cond.true62:                                      ; preds = %if.end
  %call63 = call zeroext i1 @efi_is_native() #10, !dbg !2092
  br i1 %call63, label %cond.true65, label %cond.false67, !dbg !2092

cond.true65:                                      ; preds = %cond.true62
  %32 = load ptr, ptr @efi_system_table, align 8, !dbg !2092
  %boottime66 = getelementptr inbounds %struct.anon.3, ptr %32, i32 0, i32 10, !dbg !2092
  %33 = load ptr, ptr %boottime66, align 8, !dbg !2092
  br label %cond.end70, !dbg !2092

cond.false67:                                     ; preds = %cond.true62
  %34 = load ptr, ptr @efi_system_table, align 8, !dbg !2092
  %boottime68 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %34, i32 0, i32 10, !dbg !2092
  %35 = load i32, ptr %boottime68, align 4, !dbg !2092
  %conv69 = zext i32 %35 to i64, !dbg !2092
  %36 = inttoptr i64 %conv69 to ptr, !dbg !2092
  br label %cond.end70, !dbg !2092

cond.end70:                                       ; preds = %cond.false67, %cond.true65
  %cond71 = phi ptr [ %33, %cond.true65 ], [ %36, %cond.false67 ], !dbg !2092
  %locate_handle72 = getelementptr inbounds %struct.anon.4, ptr %cond71, i32 0, i32 20, !dbg !2092
  %37 = load ptr, ptr %locate_handle72, align 8, !dbg !2092
  %38 = load ptr, ptr %pci_handle, align 8, !dbg !2092
  %call73 = call win64cc i64 %37(i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %size, ptr noundef %38) #10, !dbg !2092
  br label %cond.end93, !dbg !2092

cond.false74:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad75) #9, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %__pad75, metadata !1958, metadata !DIExpression()), !dbg !2093
  br label %do.body76, !dbg !2094

do.body76:                                        ; preds = %cond.false74
  br label %do.cond77, !dbg !2096

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !2096

do.end78:                                         ; preds = %do.cond77
  %call80 = call zeroext i1 @efi_is_native() #10, !dbg !2093
  br i1 %call80, label %cond.true82, label %cond.false84, !dbg !2093

cond.true82:                                      ; preds = %do.end78
  %39 = load ptr, ptr @efi_system_table, align 8, !dbg !2093
  %boottime83 = getelementptr inbounds %struct.anon.3, ptr %39, i32 0, i32 10, !dbg !2093
  %40 = load ptr, ptr %boottime83, align 8, !dbg !2093
  br label %cond.end87, !dbg !2093

cond.false84:                                     ; preds = %do.end78
  %41 = load ptr, ptr @efi_system_table, align 8, !dbg !2093
  %boottime85 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %41, i32 0, i32 10, !dbg !2093
  %42 = load i32, ptr %boottime85, align 4, !dbg !2093
  %conv86 = zext i32 %42 to i64, !dbg !2093
  %43 = inttoptr i64 %conv86 to ptr, !dbg !2093
  br label %cond.end87, !dbg !2093

cond.end87:                                       ; preds = %cond.false84, %cond.true82
  %cond88 = phi ptr [ %40, %cond.true82 ], [ %43, %cond.false84 ], !dbg !2093
  %locate_handle89 = getelementptr inbounds %struct.anon.5, ptr %cond88, i32 0, i32 20, !dbg !2093
  %44 = load i32, ptr %locate_handle89, align 4, !dbg !2093
  %45 = load ptr, ptr %pci_handle, align 8, !dbg !2093
  %arraydecay90 = getelementptr inbounds [3 x i64], ptr %__pad75, i64 0, i64 0, !dbg !2093
  %call91 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %44, i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %size, ptr noundef %45, ptr noundef %arraydecay90) #10, !dbg !2093
  store i64 %call91, ptr %tmp79, align 8, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad75) #9, !dbg !2092
  %46 = load i64, ptr %tmp79, align 8, !dbg !2093
  %call92 = call i64 @__efi64_widen_efi_status(i64 noundef %46) #10, !dbg !2092
  br label %cond.end93, !dbg !2092

cond.end93:                                       ; preds = %cond.end87, %cond.end70
  %cond94 = phi i64 [ %call73, %cond.end70 ], [ %call92, %cond.end87 ], !dbg !2092
  store i64 %cond94, ptr %status, align 8, !dbg !2098
  br label %if.end95, !dbg !2099

if.end95:                                         ; preds = %cond.end93, %cond.end18
  %47 = load i64, ptr %status, align 8, !dbg !2100
  %cmp96 = icmp ne i64 %47, 0, !dbg !2102
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !2103

if.then98:                                        ; preds = %if.end95
  br label %free_handle, !dbg !2104

if.end99:                                         ; preds = %if.end95
  %48 = load ptr, ptr %params.addr, align 8, !dbg !2105
  %hdr = getelementptr inbounds %struct.boot_params, ptr %48, i32 0, i32 28, !dbg !2106
  %setup_data = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 34, !dbg !2107
  %49 = load i64, ptr %setup_data, align 1, !dbg !2107
  %50 = inttoptr i64 %49 to ptr, !dbg !2108
  store ptr %50, ptr %data, align 8, !dbg !2109
  br label %while.cond, !dbg !2110

while.cond:                                       ; preds = %while.body, %if.end99
  %51 = load ptr, ptr %data, align 8, !dbg !2111
  %tobool = icmp ne ptr %51, null, !dbg !2111
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2112

land.rhs:                                         ; preds = %while.cond
  %52 = load ptr, ptr %data, align 8, !dbg !2113
  %next = getelementptr inbounds %struct.setup_data, ptr %52, i32 0, i32 0, !dbg !2114
  %53 = load i64, ptr %next, align 8, !dbg !2114
  %tobool100 = icmp ne i64 %53, 0, !dbg !2112
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %tobool100, %land.rhs ], !dbg !2115
  br i1 %54, label %while.body, label %while.end, !dbg !2110

while.body:                                       ; preds = %land.end
  %55 = load ptr, ptr %data, align 8, !dbg !2116
  %next101 = getelementptr inbounds %struct.setup_data, ptr %55, i32 0, i32 0, !dbg !2117
  %56 = load i64, ptr %next101, align 8, !dbg !2117
  %57 = inttoptr i64 %56 to ptr, !dbg !2118
  store ptr %57, ptr %data, align 8, !dbg !2119
  br label %while.cond, !dbg !2110, !llvm.loop !2120

while.end:                                        ; preds = %land.end
  store i32 0, ptr %i, align 4, !dbg !2121
  br label %for.cond, !dbg !2121

for.cond:                                         ; preds = %for.inc, %while.end
  %58 = load i32, ptr %i, align 4, !dbg !2122
  %conv102 = sext i32 %58 to i64, !dbg !2122
  %59 = load i64, ptr %size, align 8, !dbg !2122
  %call103 = call zeroext i1 @efi_is_native() #10, !dbg !2122
  %60 = zext i1 %call103 to i64, !dbg !2122
  %cond105 = select i1 %call103, i64 8, i64 4, !dbg !2122
  %div = udiv i64 %59, %cond105, !dbg !2122
  %cmp106 = icmp ult i64 %conv102, %div, !dbg !2122
  br i1 %cmp106, label %land.rhs108, label %land.end119, !dbg !2122

land.rhs108:                                      ; preds = %for.cond
  %call109 = call zeroext i1 @efi_is_native() #10, !dbg !2122
  br i1 %call109, label %cond.true111, label %cond.false112, !dbg !2122

cond.true111:                                     ; preds = %land.rhs108
  %61 = load ptr, ptr %pci_handle, align 8, !dbg !2122
  %62 = load i32, ptr %i, align 4, !dbg !2122
  %idxprom = sext i32 %62 to i64, !dbg !2122
  %arrayidx = getelementptr inbounds ptr, ptr %61, i64 %idxprom, !dbg !2122
  %63 = load ptr, ptr %arrayidx, align 8, !dbg !2122
  br label %cond.end116, !dbg !2122

cond.false112:                                    ; preds = %land.rhs108
  %64 = load ptr, ptr %pci_handle, align 8, !dbg !2122
  %65 = load i32, ptr %i, align 4, !dbg !2122
  %idxprom113 = sext i32 %65 to i64, !dbg !2122
  %arrayidx114 = getelementptr inbounds i32, ptr %64, i64 %idxprom113, !dbg !2122
  %66 = load i32, ptr %arrayidx114, align 4, !dbg !2122
  %conv115 = zext i32 %66 to i64, !dbg !2122
  %67 = inttoptr i64 %conv115 to ptr, !dbg !2122
  br label %cond.end116, !dbg !2122

cond.end116:                                      ; preds = %cond.false112, %cond.true111
  %cond117 = phi ptr [ %63, %cond.true111 ], [ %67, %cond.false112 ], !dbg !2122
  store ptr %cond117, ptr %h, align 8, !dbg !2122
  %tobool118 = icmp ne ptr %cond117, null, !dbg !2122
  br i1 %tobool118, label %lor.end, label %lor.rhs, !dbg !2122

lor.rhs:                                          ; preds = %cond.end116
  br label %lor.end, !dbg !2122

lor.end:                                          ; preds = %lor.rhs, %cond.end116
  %68 = phi i1 [ true, %cond.end116 ], [ true, %lor.rhs ]
  br label %land.end119

land.end119:                                      ; preds = %lor.end, %for.cond
  %69 = phi i1 [ false, %for.cond ], [ %68, %lor.end ], !dbg !2123
  br i1 %69, label %for.body, label %for.end, !dbg !2121

for.body:                                         ; preds = %land.end119
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci) #9, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %pci, metadata !1960, metadata !DIExpression()), !dbg !2125
  store ptr null, ptr %pci, align 8, !dbg !2125
  call void @llvm.lifetime.start.p0(i64 8, ptr %rom) #9, !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %rom, metadata !2031, metadata !DIExpression()), !dbg !2127
  %call120 = call zeroext i1 @efi_is_native() #10, !dbg !2128
  br i1 %call120, label %cond.true122, label %cond.false133, !dbg !2128

cond.true122:                                     ; preds = %for.body
  %call123 = call zeroext i1 @efi_is_native() #10, !dbg !2128
  br i1 %call123, label %cond.true125, label %cond.false127, !dbg !2128

cond.true125:                                     ; preds = %cond.true122
  %70 = load ptr, ptr @efi_system_table, align 8, !dbg !2128
  %boottime126 = getelementptr inbounds %struct.anon.3, ptr %70, i32 0, i32 10, !dbg !2128
  %71 = load ptr, ptr %boottime126, align 8, !dbg !2128
  br label %cond.end130, !dbg !2128

cond.false127:                                    ; preds = %cond.true122
  %72 = load ptr, ptr @efi_system_table, align 8, !dbg !2128
  %boottime128 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %72, i32 0, i32 10, !dbg !2128
  %73 = load i32, ptr %boottime128, align 4, !dbg !2128
  %conv129 = zext i32 %73 to i64, !dbg !2128
  %74 = inttoptr i64 %conv129 to ptr, !dbg !2128
  br label %cond.end130, !dbg !2128

cond.end130:                                      ; preds = %cond.false127, %cond.true125
  %cond131 = phi ptr [ %71, %cond.true125 ], [ %74, %cond.false127 ], !dbg !2128
  %handle_protocol = getelementptr inbounds %struct.anon.4, ptr %cond131, i32 0, i32 17, !dbg !2128
  %75 = load ptr, ptr %handle_protocol, align 8, !dbg !2128
  %76 = load ptr, ptr %h, align 8, !dbg !2128
  %call132 = call win64cc i64 %75(ptr noundef %76, ptr noundef %pci_proto, ptr noundef %pci) #10, !dbg !2128
  br label %cond.end153, !dbg !2128

cond.false133:                                    ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad134) #9, !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %__pad134, metadata !2048, metadata !DIExpression()), !dbg !2129
  br label %do.body135, !dbg !2130

do.body135:                                       ; preds = %cond.false133
  br label %do.cond136, !dbg !2132

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !2132

do.end137:                                        ; preds = %do.cond136
  %call139 = call zeroext i1 @efi_is_native() #10, !dbg !2129
  br i1 %call139, label %cond.true141, label %cond.false143, !dbg !2129

cond.true141:                                     ; preds = %do.end137
  %77 = load ptr, ptr @efi_system_table, align 8, !dbg !2129
  %boottime142 = getelementptr inbounds %struct.anon.3, ptr %77, i32 0, i32 10, !dbg !2129
  %78 = load ptr, ptr %boottime142, align 8, !dbg !2129
  br label %cond.end146, !dbg !2129

cond.false143:                                    ; preds = %do.end137
  %79 = load ptr, ptr @efi_system_table, align 8, !dbg !2129
  %boottime144 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %79, i32 0, i32 10, !dbg !2129
  %80 = load i32, ptr %boottime144, align 4, !dbg !2129
  %conv145 = zext i32 %80 to i64, !dbg !2129
  %81 = inttoptr i64 %conv145 to ptr, !dbg !2129
  br label %cond.end146, !dbg !2129

cond.end146:                                      ; preds = %cond.false143, %cond.true141
  %cond147 = phi ptr [ %78, %cond.true141 ], [ %81, %cond.false143 ], !dbg !2129
  %handle_protocol148 = getelementptr inbounds %struct.anon.5, ptr %cond147, i32 0, i32 17, !dbg !2129
  %82 = load i32, ptr %handle_protocol148, align 8, !dbg !2129
  %83 = load ptr, ptr %h, align 8, !dbg !2129
  %call149 = call ptr @efi64_zero_upper(ptr noundef %pci) #10, !dbg !2129
  %arraydecay150 = getelementptr inbounds [3 x i64], ptr %__pad134, i64 0, i64 0, !dbg !2129
  %call151 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %82, ptr noundef %83, ptr noundef %pci_proto, ptr noundef %call149, ptr noundef %arraydecay150) #10, !dbg !2129
  store i64 %call151, ptr %tmp138, align 8, !dbg !2129
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad134) #9, !dbg !2128
  %84 = load i64, ptr %tmp138, align 8, !dbg !2129
  %call152 = call i64 @__efi64_widen_efi_status(i64 noundef %84) #10, !dbg !2128
  br label %cond.end153, !dbg !2128

cond.end153:                                      ; preds = %cond.end146, %cond.end130
  %cond154 = phi i64 [ %call132, %cond.end130 ], [ %call152, %cond.end146 ], !dbg !2128
  store i64 %cond154, ptr %status, align 8, !dbg !2134
  %85 = load i64, ptr %status, align 8, !dbg !2135
  %cmp155 = icmp ne i64 %85, 0, !dbg !2137
  br i1 %cmp155, label %if.then158, label %lor.lhs.false, !dbg !2138

lor.lhs.false:                                    ; preds = %cond.end153
  %86 = load ptr, ptr %pci, align 8, !dbg !2139
  %tobool157 = icmp ne ptr %86, null, !dbg !2139
  br i1 %tobool157, label %if.end159, label %if.then158, !dbg !2140

if.then158:                                       ; preds = %lor.lhs.false, %cond.end153
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2141

if.end159:                                        ; preds = %lor.lhs.false
  %87 = load ptr, ptr %pci, align 8, !dbg !2142
  %call160 = call i64 @preserve_pci_rom_image(ptr noundef %87, ptr noundef %rom) #10, !dbg !2143
  store i64 %call160, ptr %status, align 8, !dbg !2144
  %88 = load i64, ptr %status, align 8, !dbg !2145
  %cmp161 = icmp ne i64 %88, 0, !dbg !2147
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !2148

if.then163:                                       ; preds = %if.end159
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2149

if.end164:                                        ; preds = %if.end159
  %89 = load ptr, ptr %data, align 8, !dbg !2150
  %tobool165 = icmp ne ptr %89, null, !dbg !2150
  br i1 %tobool165, label %if.then166, label %if.else, !dbg !2152

if.then166:                                       ; preds = %if.end164
  %90 = load ptr, ptr %rom, align 8, !dbg !2153
  %91 = ptrtoint ptr %90 to i64, !dbg !2154
  %92 = load ptr, ptr %data, align 8, !dbg !2155
  %next167 = getelementptr inbounds %struct.setup_data, ptr %92, i32 0, i32 0, !dbg !2156
  store i64 %91, ptr %next167, align 8, !dbg !2157
  br label %if.end170, !dbg !2155

if.else:                                          ; preds = %if.end164
  %93 = load ptr, ptr %rom, align 8, !dbg !2158
  %94 = ptrtoint ptr %93 to i64, !dbg !2159
  %95 = load ptr, ptr %params.addr, align 8, !dbg !2160
  %hdr168 = getelementptr inbounds %struct.boot_params, ptr %95, i32 0, i32 28, !dbg !2161
  %setup_data169 = getelementptr inbounds %struct.setup_header, ptr %hdr168, i32 0, i32 34, !dbg !2162
  store i64 %94, ptr %setup_data169, align 1, !dbg !2163
  br label %if.end170

if.end170:                                        ; preds = %if.else, %if.then166
  %96 = load ptr, ptr %rom, align 8, !dbg !2164
  store ptr %96, ptr %data, align 8, !dbg !2165
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2166
  br label %cleanup, !dbg !2166

cleanup:                                          ; preds = %if.end170, %if.then163, %if.then158
  call void @llvm.lifetime.end.p0(i64 8, ptr %rom) #9, !dbg !2166
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci) #9, !dbg !2166
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 13, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2167

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %97 = load i32, ptr %i, align 4, !dbg !2122
  %inc = add nsw i32 %97, 1, !dbg !2122
  store i32 %inc, ptr %i, align 4, !dbg !2122
  br label %for.cond, !dbg !2122, !llvm.loop !2168

for.end:                                          ; preds = %land.end119
  br label %free_handle, !dbg !2169

free_handle:                                      ; preds = %for.end, %if.then98
  call void @llvm.dbg.label(metadata !2050), !dbg !2170
  %call172 = call zeroext i1 @efi_is_native() #10, !dbg !2171
  br i1 %call172, label %cond.true174, label %cond.false185, !dbg !2171

cond.true174:                                     ; preds = %free_handle
  %call175 = call zeroext i1 @efi_is_native() #10, !dbg !2171
  br i1 %call175, label %cond.true177, label %cond.false179, !dbg !2171

cond.true177:                                     ; preds = %cond.true174
  %98 = load ptr, ptr @efi_system_table, align 8, !dbg !2171
  %boottime178 = getelementptr inbounds %struct.anon.3, ptr %98, i32 0, i32 10, !dbg !2171
  %99 = load ptr, ptr %boottime178, align 8, !dbg !2171
  br label %cond.end182, !dbg !2171

cond.false179:                                    ; preds = %cond.true174
  %100 = load ptr, ptr @efi_system_table, align 8, !dbg !2171
  %boottime180 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %100, i32 0, i32 10, !dbg !2171
  %101 = load i32, ptr %boottime180, align 4, !dbg !2171
  %conv181 = zext i32 %101 to i64, !dbg !2171
  %102 = inttoptr i64 %conv181 to ptr, !dbg !2171
  br label %cond.end182, !dbg !2171

cond.end182:                                      ; preds = %cond.false179, %cond.true177
  %cond183 = phi ptr [ %99, %cond.true177 ], [ %102, %cond.false179 ], !dbg !2171
  %free_pool = getelementptr inbounds %struct.anon.4, ptr %cond183, i32 0, i32 7, !dbg !2171
  %103 = load ptr, ptr %free_pool, align 8, !dbg !2171
  %104 = load ptr, ptr %pci_handle, align 8, !dbg !2171
  %call184 = call win64cc i64 %103(ptr noundef %104) #10, !dbg !2171
  br label %cond.end204, !dbg !2171

cond.false185:                                    ; preds = %free_handle
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad186) #9, !dbg !2172
  call void @llvm.dbg.declare(metadata ptr %__pad186, metadata !2051, metadata !DIExpression()), !dbg !2172
  br label %do.body187, !dbg !2173

do.body187:                                       ; preds = %cond.false185
  br label %do.cond188, !dbg !2175

do.cond188:                                       ; preds = %do.body187
  br label %do.end189, !dbg !2175

do.end189:                                        ; preds = %do.cond188
  %call191 = call zeroext i1 @efi_is_native() #10, !dbg !2172
  br i1 %call191, label %cond.true193, label %cond.false195, !dbg !2172

cond.true193:                                     ; preds = %do.end189
  %105 = load ptr, ptr @efi_system_table, align 8, !dbg !2172
  %boottime194 = getelementptr inbounds %struct.anon.3, ptr %105, i32 0, i32 10, !dbg !2172
  %106 = load ptr, ptr %boottime194, align 8, !dbg !2172
  br label %cond.end198, !dbg !2172

cond.false195:                                    ; preds = %do.end189
  %107 = load ptr, ptr @efi_system_table, align 8, !dbg !2172
  %boottime196 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %107, i32 0, i32 10, !dbg !2172
  %108 = load i32, ptr %boottime196, align 4, !dbg !2172
  %conv197 = zext i32 %108 to i64, !dbg !2172
  %109 = inttoptr i64 %conv197 to ptr, !dbg !2172
  br label %cond.end198, !dbg !2172

cond.end198:                                      ; preds = %cond.false195, %cond.true193
  %cond199 = phi ptr [ %106, %cond.true193 ], [ %109, %cond.false195 ], !dbg !2172
  %free_pool200 = getelementptr inbounds %struct.anon.5, ptr %cond199, i32 0, i32 7, !dbg !2172
  %110 = load i32, ptr %free_pool200, align 8, !dbg !2172
  %111 = load ptr, ptr %pci_handle, align 8, !dbg !2172
  %arraydecay201 = getelementptr inbounds [3 x i64], ptr %__pad186, i64 0, i64 0, !dbg !2172
  %call202 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %110, ptr noundef %111, ptr noundef %arraydecay201) #10, !dbg !2172
  store i64 %call202, ptr %tmp190, align 8, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad186) #9, !dbg !2171
  %112 = load i64, ptr %tmp190, align 8, !dbg !2172
  %call203 = call i64 @__efi64_widen_efi_status(i64 noundef %112) #10, !dbg !2171
  br label %cond.end204, !dbg !2171

cond.end204:                                      ; preds = %cond.end198, %cond.end182
  %cond205 = phi i64 [ %call184, %cond.end182 ], [ %call203, %cond.end198 ], !dbg !2171
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2177
  br label %cleanup206, !dbg !2177

cleanup206:                                       ; preds = %cond.end204, %if.then58
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 16, ptr %pci_proto) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_handle) #9, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2177
  %cleanup.dest213 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest213, label %unreachable [
    i32 0, label %cleanup.cont214
    i32 1, label %cleanup.cont214
  ]

cleanup.cont214:                                  ; preds = %cleanup206, %cleanup206
  ret void, !dbg !2177

unreachable:                                      ; preds = %cleanup206, %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal void @setup_quirks(ptr noundef %boot_params) #0 !dbg !2178 {
entry:
  %boot_params.addr = alloca ptr, align 8
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !2180, metadata !DIExpression()), !dbg !2181
  ret void, !dbg !2182
}

; Function Attrs: noredzone nounwind
define internal void @setup_unaccepted_memory() #0 !dbg !2183 {
entry:
  %mem_acceptance_proto = alloca %struct.guid_t, align 4
  %proto = alloca ptr, align 8
  %status = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %mem_acceptance_proto) #9, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %mem_acceptance_proto, metadata !2185, metadata !DIExpression()), !dbg !2204
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %mem_acceptance_proto, ptr align 4 @__const.setup_unaccepted_memory.mem_acceptance_proto, i64 16, i1 false), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto) #9, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %proto, metadata !2186, metadata !DIExpression()), !dbg !2206
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2202, metadata !DIExpression()), !dbg !2208
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto) #9, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 16, ptr %mem_acceptance_proto) #9, !dbg !2209
  ret void, !dbg !2209
}

; Function Attrs: noredzone nounwind
define internal i64 @exit_boot(ptr noundef %boot_params, ptr noundef %handle) #0 !dbg !2210 {
entry:
  %retval = alloca i64, align 8
  %boot_params.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %e820ext = alloca ptr, align 8
  %e820ext_size = alloca i32, align 4
  %status = alloca i64, align 8
  %priv = alloca %struct.exit_boot_struct, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !2214, metadata !DIExpression()), !dbg !2225
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2215, metadata !DIExpression()), !dbg !2226
  call void @llvm.lifetime.start.p0(i64 8, ptr %e820ext) #9, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %e820ext, metadata !2216, metadata !DIExpression()), !dbg !2228
  store ptr null, ptr %e820ext, align 8, !dbg !2228
  call void @llvm.lifetime.start.p0(i64 4, ptr %e820ext_size) #9, !dbg !2229
  call void @llvm.dbg.declare(metadata ptr %e820ext_size, metadata !2217, metadata !DIExpression()), !dbg !2230
  store i32 0, ptr %e820ext_size, align 4, !dbg !2230
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2218, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 16, ptr %priv) #9, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !2219, metadata !DIExpression()), !dbg !2234
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !2235
  %boot_params1 = getelementptr inbounds %struct.exit_boot_struct, ptr %priv, i32 0, i32 0, !dbg !2236
  store ptr %0, ptr %boot_params1, align 8, !dbg !2237
  %1 = load ptr, ptr %boot_params.addr, align 8, !dbg !2238
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %1, i32 0, i32 17, !dbg !2239
  %efi = getelementptr inbounds %struct.exit_boot_struct, ptr %priv, i32 0, i32 1, !dbg !2240
  store ptr %efi_info, ptr %efi, align 8, !dbg !2241
  %2 = load ptr, ptr %boot_params.addr, align 8, !dbg !2242
  %call = call i64 @allocate_e820(ptr noundef %2, ptr noundef %e820ext, ptr noundef %e820ext_size) #10, !dbg !2243
  store i64 %call, ptr %status, align 8, !dbg !2244
  %3 = load i64, ptr %status, align 8, !dbg !2245
  %cmp = icmp ne i64 %3, 0, !dbg !2247
  br i1 %cmp, label %if.then, label %if.end, !dbg !2248

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %status, align 8, !dbg !2249
  store i64 %4, ptr %retval, align 8, !dbg !2250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2250

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !2251
  %call2 = call i64 @efi_exit_boot_services(ptr noundef %5, ptr noundef %priv, ptr noundef @exit_boot_func) #10, !dbg !2252
  store i64 %call2, ptr %status, align 8, !dbg !2253
  %6 = load i64, ptr %status, align 8, !dbg !2254
  %cmp3 = icmp ne i64 %6, 0, !dbg !2256
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2257

if.then4:                                         ; preds = %if.end
  %7 = load i64, ptr %status, align 8, !dbg !2258
  store i64 %7, ptr %retval, align 8, !dbg !2259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2259

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %boot_params.addr, align 8, !dbg !2260
  %alt_mem_k = getelementptr inbounds %struct.boot_params, ptr %8, i32 0, i32 18, !dbg !2261
  store i32 32768, ptr %alt_mem_k, align 1, !dbg !2262
  %9 = load ptr, ptr %boot_params.addr, align 8, !dbg !2263
  %10 = load ptr, ptr %e820ext, align 8, !dbg !2264
  %11 = load i32, ptr %e820ext_size, align 4, !dbg !2265
  %call6 = call i64 @setup_e820(ptr noundef %9, ptr noundef %10, i32 noundef %11) #10, !dbg !2266
  store i64 %call6, ptr %status, align 8, !dbg !2267
  %12 = load i64, ptr %status, align 8, !dbg !2268
  %cmp7 = icmp ne i64 %12, 0, !dbg !2270
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2271

if.then8:                                         ; preds = %if.end5
  %13 = load i64, ptr %status, align 8, !dbg !2272
  store i64 %13, ptr %retval, align 8, !dbg !2273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2273

if.end9:                                          ; preds = %if.end5
  store i64 0, ptr %retval, align 8, !dbg !2274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2274

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %priv) #9, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr %e820ext_size) #9, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %e820ext) #9, !dbg !2275
  %14 = load i64, ptr %retval, align 8, !dbg !2275
  ret i64 %14, !dbg !2275
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @sev_enable(ptr noundef %bp) #3 !dbg !2276 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !2279, metadata !DIExpression()), !dbg !2280
  ret void, !dbg !2281
}

; Function Attrs: noredzone
declare !dbg !2282 hidden void @efi_5level_switch() #4

; Function Attrs: noredzone noreturn nounwind
define internal void @enter_kernel(i64 noundef %kernel_addr, ptr noundef %boot_params) #6 !dbg !2283 {
entry:
  %kernel_addr.addr = alloca i64, align 8
  %boot_params.addr = alloca ptr, align 8
  store i64 %kernel_addr, ptr %kernel_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kernel_addr.addr, metadata !2287, metadata !DIExpression()), !dbg !2289
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !2288, metadata !DIExpression()), !dbg !2290
  %0 = load i64, ptr %kernel_addr.addr, align 8, !dbg !2291
  %1 = load ptr, ptr %boot_params.addr, align 8, !dbg !2292
  call void asm sideeffect "jmp *$0", "r,{si},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1) #9, !dbg !2293, !srcloc !2294
  br label %do.body, !dbg !2295

do.body:                                          ; preds = %entry
  call void asm sideeffect "458:\0A\09.pushsection .discard.unreachable\0A\09.long 458b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 458) #9, !dbg !2296, !srcloc !2299
  unreachable, !dbg !2300

do.end:                                           ; No predecessors!
  unreachable, !dbg !2301
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone nounwind
define hidden void @efi_handover_entry(ptr noundef %handle, ptr noundef %sys_table_arg, ptr noundef %boot_params) #0 !dbg !2302 {
entry:
  %handle.addr = alloca ptr, align 8
  %sys_table_arg.addr = alloca ptr, align 8
  %boot_params.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2304, metadata !DIExpression()), !dbg !2307
  store ptr %sys_table_arg, ptr %sys_table_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sys_table_arg.addr, metadata !2305, metadata !DIExpression()), !dbg !2308
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !2306, metadata !DIExpression()), !dbg !2309
  %call = call ptr @memset(ptr noundef @_bss, i32 noundef 0, i64 noundef sub (i64 ptrtoint (ptr @_ebss to i64), i64 ptrtoint (ptr @_bss to i64))) #10, !dbg !2310
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2311
  %1 = load ptr, ptr %sys_table_arg.addr, align 8, !dbg !2312
  %2 = load ptr, ptr %boot_params.addr, align 8, !dbg !2313
  call void @efi_stub_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !2314
  unreachable, !dbg !2314
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !2315 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !2316, !range !1779, !noundef !1780
  %tobool = trunc i8 %0 to i1, !dbg !2316
  ret i1 %tobool, !dbg !2317
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !2318 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2323, metadata !DIExpression()), !dbg !2325
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2324, metadata !DIExpression()), !dbg !2326
  %0 = load i64, ptr %word.addr, align 8, !dbg !2327
  %1 = load i32, ptr %shift.addr, align 4, !dbg !2328
  %and = and i32 %1, 63, !dbg !2329
  %sh_prom = zext i32 %and to i64, !dbg !2330
  %shr = lshr i64 %0, %sh_prom, !dbg !2330
  %2 = load i64, ptr %word.addr, align 8, !dbg !2331
  %3 = load i32, ptr %shift.addr, align 4, !dbg !2332
  %sub = sub i32 0, %3, !dbg !2333
  %and1 = and i32 %sub, 63, !dbg !2334
  %sh_prom2 = zext i32 %and1 to i64, !dbg !2335
  %shl = shl i64 %2, %sh_prom2, !dbg !2335
  %or = or i64 %shr, %shl, !dbg !2336
  ret i64 %or, !dbg !2337
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !2338 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2342, metadata !DIExpression()), !dbg !2344
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2343, metadata !DIExpression()), !dbg !2345
  %0 = load i32, ptr %word.addr, align 4, !dbg !2346
  %1 = load i32, ptr %shift.addr, align 4, !dbg !2347
  %and = and i32 %1, 31, !dbg !2348
  %shl = shl i32 %0, %and, !dbg !2349
  %2 = load i32, ptr %word.addr, align 4, !dbg !2350
  %3 = load i32, ptr %shift.addr, align 4, !dbg !2351
  %sub = sub i32 0, %3, !dbg !2352
  %and1 = and i32 %sub, 31, !dbg !2353
  %shr = lshr i32 %2, %and1, !dbg !2354
  %or = or i32 %shl, %shr, !dbg !2355
  ret i32 %or, !dbg !2356
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @efi64_convert_status(i64 noundef %status) #3 !dbg !2357 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %0 = load i64, ptr %status.addr, align 8, !dbg !2363
  %1 = load i64, ptr %status.addr, align 8, !dbg !2364
  %shr = lshr i64 %1, 32, !dbg !2365
  %or = or i64 %0, %shr, !dbg !2366
  %conv = trunc i64 %or to i32, !dbg !2367
  ret i32 %conv, !dbg !2368
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @snp_get_unsupported_features(i64 noundef %status) #3 !dbg !2369 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2373, metadata !DIExpression()), !dbg !2374
  ret i64 0, !dbg !2375
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @sev_get_status() #3 !dbg !2376 {
entry:
  ret i64 0, !dbg !2379
}

; Function Attrs: noredzone
declare !dbg !2380 hidden ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !2384 hidden i64 @efi_parse_options(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone nounwind
define internal void @efi_get_seed(ptr noundef %seed, i32 noundef %size) #0 !dbg !2385 {
entry:
  %seed.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !2389, metadata !DIExpression()), !dbg !2391
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2390, metadata !DIExpression()), !dbg !2392
  %0 = load i32, ptr %size.addr, align 4, !dbg !2393
  %conv = sext i32 %0 to i64, !dbg !2393
  %1 = load ptr, ptr %seed.addr, align 8, !dbg !2394
  %call = call i64 @efi_get_random_bytes(i64 noundef %conv, ptr noundef %1) #10, !dbg !2395
  %call1 = call i64 @kaslr_get_random_long(ptr noundef @.str.13) #10, !dbg !2396
  %2 = load ptr, ptr %seed.addr, align 8, !dbg !2397
  %3 = load i64, ptr %2, align 8, !dbg !2398
  %xor = xor i64 %3, %call1, !dbg !2398
  store i64 %xor, ptr %2, align 8, !dbg !2398
  ret void, !dbg !2399
}

; Function Attrs: noredzone
declare !dbg !2400 hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone nounwind
define internal ptr @efistub_fw_vendor() #0 !dbg !2403 {
entry:
  %vendor = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vendor) #9, !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !2407, metadata !DIExpression()), !dbg !2409
  %call = call zeroext i1 @efi_is_native() #10, !dbg !2410
  br i1 %call, label %cond.true, label %cond.false, !dbg !2410

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !2410
  %fw_vendor = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 1, !dbg !2410
  %1 = load i64, ptr %fw_vendor, align 8, !dbg !2410
  br label %cond.end, !dbg !2410

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !2410
  %fw_vendor1 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 1, !dbg !2410
  %3 = load i32, ptr %fw_vendor1, align 8, !dbg !2410
  %conv = zext i32 %3 to i64, !dbg !2410
  br label %cond.end, !dbg !2410

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %conv, %cond.false ], !dbg !2410
  store i64 %cond, ptr %vendor, align 8, !dbg !2409
  %4 = load i64, ptr %vendor, align 8, !dbg !2411
  %5 = inttoptr i64 %4 to ptr, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 8, ptr %vendor) #9, !dbg !2413
  ret ptr %5, !dbg !2414
}

; Function Attrs: noredzone
declare !dbg !2415 hidden i64 @efi_random_alloc(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !2418 hidden i64 @decompress_kernel(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone nounwind
define internal void @error(ptr noundef %str) #0 !dbg !2426 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  %0 = load ptr, ptr %str.addr, align 8, !dbg !2430
  %call = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.14, ptr noundef %0) #10, !dbg !2430
  ret void, !dbg !2431
}

; Function Attrs: noredzone
declare !dbg !2432 hidden i64 @efi_get_random_bytes(i64 noundef, ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !2436 hidden i64 @kaslr_get_random_long(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !2440 hidden i64 @efi_setup_gop(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone nounwind
define internal i64 @setup_uga(ptr noundef %si, ptr noundef %uga_proto, i64 noundef %size) #0 !dbg !2443 {
entry:
  %retval = alloca i64, align 8
  %si.addr = alloca ptr, align 8
  %uga_proto.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %status = alloca i64, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %uga_handle = alloca ptr, align 8
  %uga = alloca ptr, align 8
  %first_uga = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %i = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad36 = alloca [3 x i64], align 16
  %tmp40 = alloca i64, align 8
  %pciio_proto = alloca %struct.guid_t, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %depth = alloca i32, align 4
  %refresh = alloca i32, align 4
  %pciio = alloca ptr, align 8
  %__pad89 = alloca [3 x i64], align 16
  %tmp93 = alloca i64, align 8
  %__pad129 = alloca [3 x i64], align 16
  %tmp133 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp150 = alloca i64, align 8
  %__pad156 = alloca [3 x i64], align 16
  %tmp160 = alloca i64, align 8
  %__pad202 = alloca [3 x i64], align 16
  %tmp206 = alloca i64, align 8
  store ptr %si, ptr %si.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %si.addr, metadata !2445, metadata !DIExpression()), !dbg !2499
  store ptr %uga_proto, ptr %uga_proto.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uga_proto.addr, metadata !2446, metadata !DIExpression()), !dbg !2500
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2447, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2448, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #9, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %width, metadata !2449, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #9, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %height, metadata !2450, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0(i64 8, ptr %uga_handle) #9, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %uga_handle, metadata !2451, metadata !DIExpression()), !dbg !2508
  store ptr null, ptr %uga_handle, align 8, !dbg !2508
  call void @llvm.lifetime.start.p0(i64 8, ptr %uga) #9, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %uga, metadata !2452, metadata !DIExpression()), !dbg !2510
  store ptr null, ptr %uga, align 8, !dbg !2510
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_uga) #9, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %first_uga, metadata !2472, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #9, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2473, metadata !DIExpression()), !dbg !2513
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2514
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2474, metadata !DIExpression()), !dbg !2515
  %call = call zeroext i1 @efi_is_native() #10, !dbg !2516
  br i1 %call, label %cond.true, label %cond.false5, !dbg !2516

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #10, !dbg !2516
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !2516

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !2516
  %boottime = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 10, !dbg !2516
  %1 = load ptr, ptr %boottime, align 8, !dbg !2516
  br label %cond.end, !dbg !2516

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !2516
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !2516
  %3 = load i32, ptr %boottime3, align 4, !dbg !2516
  %conv = zext i32 %3 to i64, !dbg !2516
  %4 = inttoptr i64 %conv to ptr, !dbg !2516
  br label %cond.end, !dbg !2516

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !2516
  %allocate_pool = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 6, !dbg !2516
  %5 = load ptr, ptr %allocate_pool, align 8, !dbg !2516
  %6 = load i64, ptr %size.addr, align 8, !dbg !2516
  %call4 = call win64cc i64 %5(i32 noundef 2, i64 noundef %6, ptr noundef %uga_handle) #10, !dbg !2516
  br label %cond.end19, !dbg !2516

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !2475, metadata !DIExpression()), !dbg !2517
  br label %do.body, !dbg !2518

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !2520

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2520

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #10, !dbg !2517
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !2517

cond.true8:                                       ; preds = %do.end
  %7 = load ptr, ptr @efi_system_table, align 8, !dbg !2517
  %boottime9 = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 10, !dbg !2517
  %8 = load ptr, ptr %boottime9, align 8, !dbg !2517
  br label %cond.end13, !dbg !2517

cond.false10:                                     ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !2517
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %9, i32 0, i32 10, !dbg !2517
  %10 = load i32, ptr %boottime11, align 4, !dbg !2517
  %conv12 = zext i32 %10 to i64, !dbg !2517
  %11 = inttoptr i64 %conv12 to ptr, !dbg !2517
  br label %cond.end13, !dbg !2517

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %8, %cond.true8 ], [ %11, %cond.false10 ], !dbg !2517
  %allocate_pool15 = getelementptr inbounds %struct.anon.5, ptr %cond14, i32 0, i32 6, !dbg !2517
  %12 = load i32, ptr %allocate_pool15, align 4, !dbg !2517
  %13 = load i64, ptr %size.addr, align 8, !dbg !2517
  %call16 = call ptr @efi64_zero_upper(ptr noundef %uga_handle) #10, !dbg !2517
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2517
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %12, i32 noundef 2, i64 noundef %13, ptr noundef %call16, ptr noundef %arraydecay) #10, !dbg !2517
  store i64 %call17, ptr %tmp, align 8, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !2516
  %14 = load i64, ptr %tmp, align 8, !dbg !2517
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %14) #10, !dbg !2516
  br label %cond.end19, !dbg !2516

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !2516
  store i64 %cond20, ptr %status, align 8, !dbg !2522
  %15 = load i64, ptr %status, align 8, !dbg !2523
  %cmp = icmp ne i64 %15, 0, !dbg !2525
  br i1 %cmp, label %if.then, label %if.end, !dbg !2526

if.then:                                          ; preds = %cond.end19
  %16 = load i64, ptr %status, align 8, !dbg !2527
  store i64 %16, ptr %retval, align 8, !dbg !2528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222, !dbg !2528

if.end:                                           ; preds = %cond.end19
  %call22 = call zeroext i1 @efi_is_native() #10, !dbg !2529
  br i1 %call22, label %cond.true24, label %cond.false35, !dbg !2529

cond.true24:                                      ; preds = %if.end
  %call25 = call zeroext i1 @efi_is_native() #10, !dbg !2529
  br i1 %call25, label %cond.true27, label %cond.false29, !dbg !2529

cond.true27:                                      ; preds = %cond.true24
  %17 = load ptr, ptr @efi_system_table, align 8, !dbg !2529
  %boottime28 = getelementptr inbounds %struct.anon.3, ptr %17, i32 0, i32 10, !dbg !2529
  %18 = load ptr, ptr %boottime28, align 8, !dbg !2529
  br label %cond.end32, !dbg !2529

cond.false29:                                     ; preds = %cond.true24
  %19 = load ptr, ptr @efi_system_table, align 8, !dbg !2529
  %boottime30 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %19, i32 0, i32 10, !dbg !2529
  %20 = load i32, ptr %boottime30, align 4, !dbg !2529
  %conv31 = zext i32 %20 to i64, !dbg !2529
  %21 = inttoptr i64 %conv31 to ptr, !dbg !2529
  br label %cond.end32, !dbg !2529

cond.end32:                                       ; preds = %cond.false29, %cond.true27
  %cond33 = phi ptr [ %18, %cond.true27 ], [ %21, %cond.false29 ], !dbg !2529
  %locate_handle = getelementptr inbounds %struct.anon.4, ptr %cond33, i32 0, i32 20, !dbg !2529
  %22 = load ptr, ptr %locate_handle, align 8, !dbg !2529
  %23 = load ptr, ptr %uga_proto.addr, align 8, !dbg !2529
  %24 = load ptr, ptr %uga_handle, align 8, !dbg !2529
  %call34 = call win64cc i64 %22(i32 noundef 2, ptr noundef %23, ptr noundef null, ptr noundef %size.addr, ptr noundef %24) #10, !dbg !2529
  br label %cond.end54, !dbg !2529

cond.false35:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad36) #9, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %__pad36, metadata !2477, metadata !DIExpression()), !dbg !2530
  br label %do.body37, !dbg !2531

do.body37:                                        ; preds = %cond.false35
  br label %do.cond38, !dbg !2533

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2533

do.end39:                                         ; preds = %do.cond38
  %call41 = call zeroext i1 @efi_is_native() #10, !dbg !2530
  br i1 %call41, label %cond.true43, label %cond.false45, !dbg !2530

cond.true43:                                      ; preds = %do.end39
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !2530
  %boottime44 = getelementptr inbounds %struct.anon.3, ptr %25, i32 0, i32 10, !dbg !2530
  %26 = load ptr, ptr %boottime44, align 8, !dbg !2530
  br label %cond.end48, !dbg !2530

cond.false45:                                     ; preds = %do.end39
  %27 = load ptr, ptr @efi_system_table, align 8, !dbg !2530
  %boottime46 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %27, i32 0, i32 10, !dbg !2530
  %28 = load i32, ptr %boottime46, align 4, !dbg !2530
  %conv47 = zext i32 %28 to i64, !dbg !2530
  %29 = inttoptr i64 %conv47 to ptr, !dbg !2530
  br label %cond.end48, !dbg !2530

cond.end48:                                       ; preds = %cond.false45, %cond.true43
  %cond49 = phi ptr [ %26, %cond.true43 ], [ %29, %cond.false45 ], !dbg !2530
  %locate_handle50 = getelementptr inbounds %struct.anon.5, ptr %cond49, i32 0, i32 20, !dbg !2530
  %30 = load i32, ptr %locate_handle50, align 4, !dbg !2530
  %31 = load ptr, ptr %uga_proto.addr, align 8, !dbg !2530
  %32 = load ptr, ptr %uga_handle, align 8, !dbg !2530
  %arraydecay51 = getelementptr inbounds [3 x i64], ptr %__pad36, i64 0, i64 0, !dbg !2530
  %call52 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %30, i32 noundef 2, ptr noundef %31, ptr noundef null, ptr noundef %size.addr, ptr noundef %32, ptr noundef %arraydecay51) #10, !dbg !2530
  store i64 %call52, ptr %tmp40, align 8, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad36) #9, !dbg !2529
  %33 = load i64, ptr %tmp40, align 8, !dbg !2530
  %call53 = call i64 @__efi64_widen_efi_status(i64 noundef %33) #10, !dbg !2529
  br label %cond.end54, !dbg !2529

cond.end54:                                       ; preds = %cond.end48, %cond.end32
  %cond55 = phi i64 [ %call34, %cond.end32 ], [ %call53, %cond.end48 ], !dbg !2529
  store i64 %cond55, ptr %status, align 8, !dbg !2535
  %34 = load i64, ptr %status, align 8, !dbg !2536
  %cmp56 = icmp ne i64 %34, 0, !dbg !2538
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2539

if.then58:                                        ; preds = %cond.end54
  br label %free_handle, !dbg !2540

if.end59:                                         ; preds = %cond.end54
  store i32 0, ptr %height, align 4, !dbg !2541
  store i32 0, ptr %width, align 4, !dbg !2542
  store ptr null, ptr %first_uga, align 8, !dbg !2543
  store i32 0, ptr %i, align 4, !dbg !2544
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %for.inc, %if.end59
  %35 = load i32, ptr %i, align 4, !dbg !2545
  %conv60 = sext i32 %35 to i64, !dbg !2545
  %36 = load i64, ptr %size.addr, align 8, !dbg !2545
  %call61 = call zeroext i1 @efi_is_native() #10, !dbg !2545
  %37 = zext i1 %call61 to i64, !dbg !2545
  %cond63 = select i1 %call61, i64 8, i64 4, !dbg !2545
  %div = udiv i64 %36, %cond63, !dbg !2545
  %cmp64 = icmp ult i64 %conv60, %div, !dbg !2545
  br i1 %cmp64, label %land.rhs, label %land.end, !dbg !2545

land.rhs:                                         ; preds = %for.cond
  %call66 = call zeroext i1 @efi_is_native() #10, !dbg !2545
  br i1 %call66, label %cond.true68, label %cond.false69, !dbg !2545

cond.true68:                                      ; preds = %land.rhs
  %38 = load ptr, ptr %uga_handle, align 8, !dbg !2545
  %39 = load i32, ptr %i, align 4, !dbg !2545
  %idxprom = sext i32 %39 to i64, !dbg !2545
  %arrayidx = getelementptr inbounds ptr, ptr %38, i64 %idxprom, !dbg !2545
  %40 = load ptr, ptr %arrayidx, align 8, !dbg !2545
  br label %cond.end73, !dbg !2545

cond.false69:                                     ; preds = %land.rhs
  %41 = load ptr, ptr %uga_handle, align 8, !dbg !2545
  %42 = load i32, ptr %i, align 4, !dbg !2545
  %idxprom70 = sext i32 %42 to i64, !dbg !2545
  %arrayidx71 = getelementptr inbounds i32, ptr %41, i64 %idxprom70, !dbg !2545
  %43 = load i32, ptr %arrayidx71, align 4, !dbg !2545
  %conv72 = zext i32 %43 to i64, !dbg !2545
  %44 = inttoptr i64 %conv72 to ptr, !dbg !2545
  br label %cond.end73, !dbg !2545

cond.end73:                                       ; preds = %cond.false69, %cond.true68
  %cond74 = phi ptr [ %40, %cond.true68 ], [ %44, %cond.false69 ], !dbg !2545
  store ptr %cond74, ptr %handle, align 8, !dbg !2545
  %tobool = icmp ne ptr %cond74, null, !dbg !2545
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2545

lor.rhs:                                          ; preds = %cond.end73
  br label %lor.end, !dbg !2545

lor.end:                                          ; preds = %lor.rhs, %cond.end73
  %45 = phi i1 [ true, %cond.end73 ], [ true, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %46 = phi i1 [ false, %for.cond ], [ %45, %lor.end ], !dbg !2546
  br i1 %46, label %for.body, label %for.end, !dbg !2544

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %pciio_proto) #9, !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %pciio_proto, metadata !2479, metadata !DIExpression()), !dbg !2548
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pciio_proto, ptr align 4 @__const.setup_uga.pciio_proto, i64 16, i1 false), !dbg !2548
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #9, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %w, metadata !2483, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %h, metadata !2484, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #9, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !2485, metadata !DIExpression()), !dbg !2552
  call void @llvm.lifetime.start.p0(i64 4, ptr %refresh) #9, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %refresh, metadata !2486, metadata !DIExpression()), !dbg !2553
  call void @llvm.lifetime.start.p0(i64 8, ptr %pciio) #9, !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %pciio, metadata !2487, metadata !DIExpression()), !dbg !2555
  %call75 = call zeroext i1 @efi_is_native() #10, !dbg !2556
  br i1 %call75, label %cond.true77, label %cond.false88, !dbg !2556

cond.true77:                                      ; preds = %for.body
  %call78 = call zeroext i1 @efi_is_native() #10, !dbg !2556
  br i1 %call78, label %cond.true80, label %cond.false82, !dbg !2556

cond.true80:                                      ; preds = %cond.true77
  %47 = load ptr, ptr @efi_system_table, align 8, !dbg !2556
  %boottime81 = getelementptr inbounds %struct.anon.3, ptr %47, i32 0, i32 10, !dbg !2556
  %48 = load ptr, ptr %boottime81, align 8, !dbg !2556
  br label %cond.end85, !dbg !2556

cond.false82:                                     ; preds = %cond.true77
  %49 = load ptr, ptr @efi_system_table, align 8, !dbg !2556
  %boottime83 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %49, i32 0, i32 10, !dbg !2556
  %50 = load i32, ptr %boottime83, align 4, !dbg !2556
  %conv84 = zext i32 %50 to i64, !dbg !2556
  %51 = inttoptr i64 %conv84 to ptr, !dbg !2556
  br label %cond.end85, !dbg !2556

cond.end85:                                       ; preds = %cond.false82, %cond.true80
  %cond86 = phi ptr [ %48, %cond.true80 ], [ %51, %cond.false82 ], !dbg !2556
  %handle_protocol = getelementptr inbounds %struct.anon.4, ptr %cond86, i32 0, i32 17, !dbg !2556
  %52 = load ptr, ptr %handle_protocol, align 8, !dbg !2556
  %53 = load ptr, ptr %handle, align 8, !dbg !2556
  %54 = load ptr, ptr %uga_proto.addr, align 8, !dbg !2556
  %call87 = call win64cc i64 %52(ptr noundef %53, ptr noundef %54, ptr noundef %uga) #10, !dbg !2556
  br label %cond.end108, !dbg !2556

cond.false88:                                     ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad89) #9, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %__pad89, metadata !2488, metadata !DIExpression()), !dbg !2557
  br label %do.body90, !dbg !2558

do.body90:                                        ; preds = %cond.false88
  br label %do.cond91, !dbg !2560

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !2560

do.end92:                                         ; preds = %do.cond91
  %call94 = call zeroext i1 @efi_is_native() #10, !dbg !2557
  br i1 %call94, label %cond.true96, label %cond.false98, !dbg !2557

cond.true96:                                      ; preds = %do.end92
  %55 = load ptr, ptr @efi_system_table, align 8, !dbg !2557
  %boottime97 = getelementptr inbounds %struct.anon.3, ptr %55, i32 0, i32 10, !dbg !2557
  %56 = load ptr, ptr %boottime97, align 8, !dbg !2557
  br label %cond.end101, !dbg !2557

cond.false98:                                     ; preds = %do.end92
  %57 = load ptr, ptr @efi_system_table, align 8, !dbg !2557
  %boottime99 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %57, i32 0, i32 10, !dbg !2557
  %58 = load i32, ptr %boottime99, align 4, !dbg !2557
  %conv100 = zext i32 %58 to i64, !dbg !2557
  %59 = inttoptr i64 %conv100 to ptr, !dbg !2557
  br label %cond.end101, !dbg !2557

cond.end101:                                      ; preds = %cond.false98, %cond.true96
  %cond102 = phi ptr [ %56, %cond.true96 ], [ %59, %cond.false98 ], !dbg !2557
  %handle_protocol103 = getelementptr inbounds %struct.anon.5, ptr %cond102, i32 0, i32 17, !dbg !2557
  %60 = load i32, ptr %handle_protocol103, align 8, !dbg !2557
  %61 = load ptr, ptr %handle, align 8, !dbg !2557
  %62 = load ptr, ptr %uga_proto.addr, align 8, !dbg !2557
  %call104 = call ptr @efi64_zero_upper(ptr noundef %uga) #10, !dbg !2557
  %arraydecay105 = getelementptr inbounds [3 x i64], ptr %__pad89, i64 0, i64 0, !dbg !2557
  %call106 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %call104, ptr noundef %arraydecay105) #10, !dbg !2557
  store i64 %call106, ptr %tmp93, align 8, !dbg !2557
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad89) #9, !dbg !2556
  %63 = load i64, ptr %tmp93, align 8, !dbg !2557
  %call107 = call i64 @__efi64_widen_efi_status(i64 noundef %63) #10, !dbg !2556
  br label %cond.end108, !dbg !2556

cond.end108:                                      ; preds = %cond.end101, %cond.end85
  %cond109 = phi i64 [ %call87, %cond.end85 ], [ %call107, %cond.end101 ], !dbg !2556
  store i64 %cond109, ptr %status, align 8, !dbg !2562
  %64 = load i64, ptr %status, align 8, !dbg !2563
  %cmp110 = icmp ne i64 %64, 0, !dbg !2565
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !2566

if.then112:                                       ; preds = %cond.end108
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2567

if.end113:                                        ; preds = %cond.end108
  store ptr null, ptr %pciio, align 8, !dbg !2568
  %call114 = call zeroext i1 @efi_is_native() #10, !dbg !2569
  br i1 %call114, label %cond.true116, label %cond.false128, !dbg !2569

cond.true116:                                     ; preds = %if.end113
  %call117 = call zeroext i1 @efi_is_native() #10, !dbg !2569
  br i1 %call117, label %cond.true119, label %cond.false121, !dbg !2569

cond.true119:                                     ; preds = %cond.true116
  %65 = load ptr, ptr @efi_system_table, align 8, !dbg !2569
  %boottime120 = getelementptr inbounds %struct.anon.3, ptr %65, i32 0, i32 10, !dbg !2569
  %66 = load ptr, ptr %boottime120, align 8, !dbg !2569
  br label %cond.end124, !dbg !2569

cond.false121:                                    ; preds = %cond.true116
  %67 = load ptr, ptr @efi_system_table, align 8, !dbg !2569
  %boottime122 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %67, i32 0, i32 10, !dbg !2569
  %68 = load i32, ptr %boottime122, align 4, !dbg !2569
  %conv123 = zext i32 %68 to i64, !dbg !2569
  %69 = inttoptr i64 %conv123 to ptr, !dbg !2569
  br label %cond.end124, !dbg !2569

cond.end124:                                      ; preds = %cond.false121, %cond.true119
  %cond125 = phi ptr [ %66, %cond.true119 ], [ %69, %cond.false121 ], !dbg !2569
  %handle_protocol126 = getelementptr inbounds %struct.anon.4, ptr %cond125, i32 0, i32 17, !dbg !2569
  %70 = load ptr, ptr %handle_protocol126, align 8, !dbg !2569
  %71 = load ptr, ptr %handle, align 8, !dbg !2569
  %call127 = call win64cc i64 %70(ptr noundef %71, ptr noundef %pciio_proto, ptr noundef %pciio) #10, !dbg !2569
  br label %cond.end148, !dbg !2569

cond.false128:                                    ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad129) #9, !dbg !2570
  call void @llvm.dbg.declare(metadata ptr %__pad129, metadata !2490, metadata !DIExpression()), !dbg !2570
  br label %do.body130, !dbg !2571

do.body130:                                       ; preds = %cond.false128
  br label %do.cond131, !dbg !2573

do.cond131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !2573

do.end132:                                        ; preds = %do.cond131
  %call134 = call zeroext i1 @efi_is_native() #10, !dbg !2570
  br i1 %call134, label %cond.true136, label %cond.false138, !dbg !2570

cond.true136:                                     ; preds = %do.end132
  %72 = load ptr, ptr @efi_system_table, align 8, !dbg !2570
  %boottime137 = getelementptr inbounds %struct.anon.3, ptr %72, i32 0, i32 10, !dbg !2570
  %73 = load ptr, ptr %boottime137, align 8, !dbg !2570
  br label %cond.end141, !dbg !2570

cond.false138:                                    ; preds = %do.end132
  %74 = load ptr, ptr @efi_system_table, align 8, !dbg !2570
  %boottime139 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %74, i32 0, i32 10, !dbg !2570
  %75 = load i32, ptr %boottime139, align 4, !dbg !2570
  %conv140 = zext i32 %75 to i64, !dbg !2570
  %76 = inttoptr i64 %conv140 to ptr, !dbg !2570
  br label %cond.end141, !dbg !2570

cond.end141:                                      ; preds = %cond.false138, %cond.true136
  %cond142 = phi ptr [ %73, %cond.true136 ], [ %76, %cond.false138 ], !dbg !2570
  %handle_protocol143 = getelementptr inbounds %struct.anon.5, ptr %cond142, i32 0, i32 17, !dbg !2570
  %77 = load i32, ptr %handle_protocol143, align 8, !dbg !2570
  %78 = load ptr, ptr %handle, align 8, !dbg !2570
  %call144 = call ptr @efi64_zero_upper(ptr noundef %pciio) #10, !dbg !2570
  %arraydecay145 = getelementptr inbounds [3 x i64], ptr %__pad129, i64 0, i64 0, !dbg !2570
  %call146 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %77, ptr noundef %78, ptr noundef %pciio_proto, ptr noundef %call144, ptr noundef %arraydecay145) #10, !dbg !2570
  store i64 %call146, ptr %tmp133, align 8, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad129) #9, !dbg !2569
  %79 = load i64, ptr %tmp133, align 8, !dbg !2570
  %call147 = call i64 @__efi64_widen_efi_status(i64 noundef %79) #10, !dbg !2569
  br label %cond.end148, !dbg !2569

cond.end148:                                      ; preds = %cond.end141, %cond.end124
  %cond149 = phi i64 [ %call127, %cond.end124 ], [ %call147, %cond.end141 ], !dbg !2569
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !2492, metadata !DIExpression()), !dbg !2575
  %80 = load ptr, ptr %uga, align 8, !dbg !2575
  store ptr %80, ptr %__inst, align 8, !dbg !2575
  %call151 = call zeroext i1 @efi_is_native() #10, !dbg !2575
  br i1 %call151, label %cond.true153, label %cond.false155, !dbg !2575

cond.true153:                                     ; preds = %cond.end148
  %81 = load ptr, ptr %__inst, align 8, !dbg !2575
  %get_mode = getelementptr inbounds %struct.anon.23, ptr %81, i32 0, i32 0, !dbg !2575
  %82 = load ptr, ptr %get_mode, align 8, !dbg !2575
  %83 = load ptr, ptr %__inst, align 8, !dbg !2575
  %call154 = call win64cc i64 %82(ptr noundef %83, ptr noundef %w, ptr noundef %h, ptr noundef %depth, ptr noundef %refresh) #10, !dbg !2575
  br label %cond.end165, !dbg !2575

cond.false155:                                    ; preds = %cond.end148
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad156) #9, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %__pad156, metadata !2494, metadata !DIExpression()), !dbg !2576
  br label %do.body157, !dbg !2577

do.body157:                                       ; preds = %cond.false155
  br label %do.cond158, !dbg !2579

do.cond158:                                       ; preds = %do.body157
  br label %do.end159, !dbg !2579

do.end159:                                        ; preds = %do.cond158
  %84 = load ptr, ptr %__inst, align 8, !dbg !2576
  %get_mode161 = getelementptr inbounds %struct.anon.24, ptr %84, i32 0, i32 0, !dbg !2576
  %85 = load i32, ptr %get_mode161, align 8, !dbg !2576
  %86 = load ptr, ptr %__inst, align 8, !dbg !2576
  %arraydecay162 = getelementptr inbounds [3 x i64], ptr %__pad156, i64 0, i64 0, !dbg !2576
  %call163 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %85, ptr noundef %86, ptr noundef %w, ptr noundef %h, ptr noundef %depth, ptr noundef %refresh, ptr noundef %arraydecay162) #10, !dbg !2576
  store i64 %call163, ptr %tmp160, align 8, !dbg !2576
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad156) #9, !dbg !2575
  %87 = load i64, ptr %tmp160, align 8, !dbg !2576
  %call164 = call i64 @__efi64_widen_efi_status(i64 noundef %87) #10, !dbg !2575
  br label %cond.end165, !dbg !2575

cond.end165:                                      ; preds = %do.end159, %cond.true153
  %cond166 = phi i64 [ %call154, %cond.true153 ], [ %call164, %do.end159 ], !dbg !2575
  store i64 %cond166, ptr %tmp150, align 8, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !2581
  %88 = load i64, ptr %tmp150, align 8, !dbg !2575
  store i64 %88, ptr %status, align 8, !dbg !2582
  %89 = load i64, ptr %status, align 8, !dbg !2583
  %cmp167 = icmp eq i64 %89, 0, !dbg !2585
  br i1 %cmp167, label %land.lhs.true, label %if.end175, !dbg !2586

land.lhs.true:                                    ; preds = %cond.end165
  %90 = load ptr, ptr %first_uga, align 8, !dbg !2587
  %tobool169 = icmp ne ptr %90, null, !dbg !2587
  br i1 %tobool169, label %lor.lhs.false, label %if.then171, !dbg !2588

lor.lhs.false:                                    ; preds = %land.lhs.true
  %91 = load ptr, ptr %pciio, align 8, !dbg !2589
  %tobool170 = icmp ne ptr %91, null, !dbg !2589
  br i1 %tobool170, label %if.then171, label %if.end175, !dbg !2590

if.then171:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %92 = load i32, ptr %w, align 4, !dbg !2591
  store i32 %92, ptr %width, align 4, !dbg !2593
  %93 = load i32, ptr %h, align 4, !dbg !2594
  store i32 %93, ptr %height, align 4, !dbg !2595
  %94 = load ptr, ptr %pciio, align 8, !dbg !2596
  %tobool172 = icmp ne ptr %94, null, !dbg !2596
  br i1 %tobool172, label %if.then173, label %if.end174, !dbg !2598

if.then173:                                       ; preds = %if.then171
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2599

if.end174:                                        ; preds = %if.then171
  %95 = load ptr, ptr %uga, align 8, !dbg !2600
  store ptr %95, ptr %first_uga, align 8, !dbg !2601
  br label %if.end175, !dbg !2602

if.end175:                                        ; preds = %if.end174, %lor.lhs.false, %cond.end165
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2603
  br label %cleanup, !dbg !2603

cleanup:                                          ; preds = %if.end175, %if.then173, %if.then112
  call void @llvm.lifetime.end.p0(i64 8, ptr %pciio) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 4, ptr %refresh) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %pciio_proto) #9, !dbg !2603
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %for.inc
    i32 7, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2604

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %96 = load i32, ptr %i, align 4, !dbg !2545
  %inc = add nsw i32 %96, 1, !dbg !2545
  store i32 %inc, ptr %i, align 4, !dbg !2545
  br label %for.cond, !dbg !2545, !llvm.loop !2605

for.end:                                          ; preds = %cleanup, %land.end
  %97 = load i32, ptr %width, align 4, !dbg !2607
  %tobool181 = icmp ne i32 %97, 0, !dbg !2607
  br i1 %tobool181, label %if.end185, label %land.lhs.true182, !dbg !2609

land.lhs.true182:                                 ; preds = %for.end
  %98 = load i32, ptr %height, align 4, !dbg !2610
  %tobool183 = icmp ne i32 %98, 0, !dbg !2610
  br i1 %tobool183, label %if.end185, label %if.then184, !dbg !2611

if.then184:                                       ; preds = %land.lhs.true182
  br label %free_handle, !dbg !2612

if.end185:                                        ; preds = %land.lhs.true182, %for.end
  %99 = load ptr, ptr %si.addr, align 8, !dbg !2613
  %orig_video_isVGA = getelementptr inbounds %struct.screen_info, ptr %99, i32 0, i32 11, !dbg !2614
  store i8 112, ptr %orig_video_isVGA, align 1, !dbg !2615
  %100 = load ptr, ptr %si.addr, align 8, !dbg !2616
  %lfb_depth = getelementptr inbounds %struct.screen_info, ptr %100, i32 0, i32 15, !dbg !2617
  store i16 32, ptr %lfb_depth, align 1, !dbg !2618
  %101 = load i32, ptr %width, align 4, !dbg !2619
  %conv186 = trunc i32 %101 to i16, !dbg !2619
  %102 = load ptr, ptr %si.addr, align 8, !dbg !2620
  %lfb_width = getelementptr inbounds %struct.screen_info, ptr %102, i32 0, i32 13, !dbg !2621
  store i16 %conv186, ptr %lfb_width, align 1, !dbg !2622
  %103 = load i32, ptr %height, align 4, !dbg !2623
  %conv187 = trunc i32 %103 to i16, !dbg !2623
  %104 = load ptr, ptr %si.addr, align 8, !dbg !2624
  %lfb_height = getelementptr inbounds %struct.screen_info, ptr %104, i32 0, i32 14, !dbg !2625
  store i16 %conv187, ptr %lfb_height, align 1, !dbg !2626
  %105 = load ptr, ptr %si.addr, align 8, !dbg !2627
  %red_size = getelementptr inbounds %struct.screen_info, ptr %105, i32 0, i32 21, !dbg !2628
  store i8 8, ptr %red_size, align 1, !dbg !2629
  %106 = load ptr, ptr %si.addr, align 8, !dbg !2630
  %red_pos = getelementptr inbounds %struct.screen_info, ptr %106, i32 0, i32 22, !dbg !2631
  store i8 16, ptr %red_pos, align 1, !dbg !2632
  %107 = load ptr, ptr %si.addr, align 8, !dbg !2633
  %green_size = getelementptr inbounds %struct.screen_info, ptr %107, i32 0, i32 23, !dbg !2634
  store i8 8, ptr %green_size, align 1, !dbg !2635
  %108 = load ptr, ptr %si.addr, align 8, !dbg !2636
  %green_pos = getelementptr inbounds %struct.screen_info, ptr %108, i32 0, i32 24, !dbg !2637
  store i8 8, ptr %green_pos, align 1, !dbg !2638
  %109 = load ptr, ptr %si.addr, align 8, !dbg !2639
  %blue_size = getelementptr inbounds %struct.screen_info, ptr %109, i32 0, i32 25, !dbg !2640
  store i8 8, ptr %blue_size, align 1, !dbg !2641
  %110 = load ptr, ptr %si.addr, align 8, !dbg !2642
  %blue_pos = getelementptr inbounds %struct.screen_info, ptr %110, i32 0, i32 26, !dbg !2643
  store i8 0, ptr %blue_pos, align 1, !dbg !2644
  %111 = load ptr, ptr %si.addr, align 8, !dbg !2645
  %rsvd_size = getelementptr inbounds %struct.screen_info, ptr %111, i32 0, i32 27, !dbg !2646
  store i8 8, ptr %rsvd_size, align 1, !dbg !2647
  %112 = load ptr, ptr %si.addr, align 8, !dbg !2648
  %rsvd_pos = getelementptr inbounds %struct.screen_info, ptr %112, i32 0, i32 28, !dbg !2649
  store i8 24, ptr %rsvd_pos, align 1, !dbg !2650
  br label %free_handle, !dbg !2648

free_handle:                                      ; preds = %if.end185, %if.then184, %if.then58
  call void @llvm.dbg.label(metadata !2496), !dbg !2651
  %call188 = call zeroext i1 @efi_is_native() #10, !dbg !2652
  br i1 %call188, label %cond.true190, label %cond.false201, !dbg !2652

cond.true190:                                     ; preds = %free_handle
  %call191 = call zeroext i1 @efi_is_native() #10, !dbg !2652
  br i1 %call191, label %cond.true193, label %cond.false195, !dbg !2652

cond.true193:                                     ; preds = %cond.true190
  %113 = load ptr, ptr @efi_system_table, align 8, !dbg !2652
  %boottime194 = getelementptr inbounds %struct.anon.3, ptr %113, i32 0, i32 10, !dbg !2652
  %114 = load ptr, ptr %boottime194, align 8, !dbg !2652
  br label %cond.end198, !dbg !2652

cond.false195:                                    ; preds = %cond.true190
  %115 = load ptr, ptr @efi_system_table, align 8, !dbg !2652
  %boottime196 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %115, i32 0, i32 10, !dbg !2652
  %116 = load i32, ptr %boottime196, align 4, !dbg !2652
  %conv197 = zext i32 %116 to i64, !dbg !2652
  %117 = inttoptr i64 %conv197 to ptr, !dbg !2652
  br label %cond.end198, !dbg !2652

cond.end198:                                      ; preds = %cond.false195, %cond.true193
  %cond199 = phi ptr [ %114, %cond.true193 ], [ %117, %cond.false195 ], !dbg !2652
  %free_pool = getelementptr inbounds %struct.anon.4, ptr %cond199, i32 0, i32 7, !dbg !2652
  %118 = load ptr, ptr %free_pool, align 8, !dbg !2652
  %119 = load ptr, ptr %uga_handle, align 8, !dbg !2652
  %call200 = call win64cc i64 %118(ptr noundef %119) #10, !dbg !2652
  br label %cond.end220, !dbg !2652

cond.false201:                                    ; preds = %free_handle
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad202) #9, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %__pad202, metadata !2497, metadata !DIExpression()), !dbg !2653
  br label %do.body203, !dbg !2654

do.body203:                                       ; preds = %cond.false201
  br label %do.cond204, !dbg !2656

do.cond204:                                       ; preds = %do.body203
  br label %do.end205, !dbg !2656

do.end205:                                        ; preds = %do.cond204
  %call207 = call zeroext i1 @efi_is_native() #10, !dbg !2653
  br i1 %call207, label %cond.true209, label %cond.false211, !dbg !2653

cond.true209:                                     ; preds = %do.end205
  %120 = load ptr, ptr @efi_system_table, align 8, !dbg !2653
  %boottime210 = getelementptr inbounds %struct.anon.3, ptr %120, i32 0, i32 10, !dbg !2653
  %121 = load ptr, ptr %boottime210, align 8, !dbg !2653
  br label %cond.end214, !dbg !2653

cond.false211:                                    ; preds = %do.end205
  %122 = load ptr, ptr @efi_system_table, align 8, !dbg !2653
  %boottime212 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %122, i32 0, i32 10, !dbg !2653
  %123 = load i32, ptr %boottime212, align 4, !dbg !2653
  %conv213 = zext i32 %123 to i64, !dbg !2653
  %124 = inttoptr i64 %conv213 to ptr, !dbg !2653
  br label %cond.end214, !dbg !2653

cond.end214:                                      ; preds = %cond.false211, %cond.true209
  %cond215 = phi ptr [ %121, %cond.true209 ], [ %124, %cond.false211 ], !dbg !2653
  %free_pool216 = getelementptr inbounds %struct.anon.5, ptr %cond215, i32 0, i32 7, !dbg !2653
  %125 = load i32, ptr %free_pool216, align 8, !dbg !2653
  %126 = load ptr, ptr %uga_handle, align 8, !dbg !2653
  %arraydecay217 = getelementptr inbounds [3 x i64], ptr %__pad202, i64 0, i64 0, !dbg !2653
  %call218 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %125, ptr noundef %126, ptr noundef %arraydecay217) #10, !dbg !2653
  store i64 %call218, ptr %tmp206, align 8, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad202) #9, !dbg !2652
  %127 = load i64, ptr %tmp206, align 8, !dbg !2653
  %call219 = call i64 @__efi64_widen_efi_status(i64 noundef %127) #10, !dbg !2652
  br label %cond.end220, !dbg !2652

cond.end220:                                      ; preds = %cond.end214, %cond.end198
  %cond221 = phi i64 [ %call200, %cond.end198 ], [ %call219, %cond.end214 ], !dbg !2652
  %128 = load i64, ptr %status, align 8, !dbg !2658
  store i64 %128, ptr %retval, align 8, !dbg !2659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222, !dbg !2659

cleanup222:                                       ; preds = %cond.end220, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_uga) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %uga) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %uga_handle) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #9, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2660
  %129 = load i64, ptr %retval, align 8, !dbg !2660
  ret i64 %129, !dbg !2660

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i64 @preserve_pci_rom_image(ptr noundef %pci, ptr noundef %__rom) #0 !dbg !2661 {
entry:
  %retval = alloca i64, align 8
  %pci.addr = alloca ptr, align 8
  %__rom.addr = alloca ptr, align 8
  %rom = alloca ptr, align 8
  %status = alloca i64, align 8
  %size = alloca i64, align 8
  %romsize = alloca i64, align 8
  %romimage = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp51 = alloca i64, align 8
  %__pad58 = alloca [3 x i64], align 16
  %tmp62 = alloca i64, align 8
  %__inst76 = alloca ptr, align 8
  %tmp77 = alloca i64, align 8
  %__pad85 = alloca [3 x i64], align 16
  %tmp89 = alloca i64, align 8
  %__inst103 = alloca ptr, align 8
  %tmp104 = alloca i64, align 8
  %__pad110 = alloca [3 x i64], align 16
  %tmp114 = alloca i64, align 8
  %__pad149 = alloca [3 x i64], align 16
  %tmp153 = alloca i64, align 8
  store ptr %pci, ptr %pci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci.addr, metadata !2666, metadata !DIExpression()), !dbg !2690
  store ptr %__rom, ptr %__rom.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__rom.addr, metadata !2667, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %rom) #9, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %rom, metadata !2668, metadata !DIExpression()), !dbg !2693
  store ptr null, ptr %rom, align 8, !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2669, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2670, metadata !DIExpression()), !dbg !2697
  call void @llvm.lifetime.start.p0(i64 8, ptr %romsize) #9, !dbg !2698
  call void @llvm.dbg.declare(metadata ptr %romsize, metadata !2671, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.start.p0(i64 8, ptr %romimage) #9, !dbg !2700
  call void @llvm.dbg.declare(metadata ptr %romimage, metadata !2672, metadata !DIExpression()), !dbg !2701
  %call = call zeroext i1 @efi_is_native() #10, !dbg !2702
  br i1 %call, label %cond.true, label %cond.false, !dbg !2702

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %pci.addr, align 8, !dbg !2702
  %romimage1 = getelementptr inbounds %struct.anon.25, ptr %0, i32 0, i32 16, !dbg !2702
  %1 = load ptr, ptr %romimage1, align 8, !dbg !2702
  br label %cond.end, !dbg !2702

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %pci.addr, align 8, !dbg !2702
  %romimage2 = getelementptr inbounds %struct.anon.26, ptr %2, i32 0, i32 16, !dbg !2702
  %3 = load i32, ptr %romimage2, align 8, !dbg !2702
  %conv = zext i32 %3 to i64, !dbg !2702
  %4 = inttoptr i64 %conv to ptr, !dbg !2702
  br label %cond.end, !dbg !2702

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !2702
  store ptr %cond, ptr %romimage, align 8, !dbg !2703
  %call3 = call zeroext i1 @efi_is_native() #10, !dbg !2704
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !2704

cond.true5:                                       ; preds = %cond.end
  %5 = load ptr, ptr %pci.addr, align 8, !dbg !2704
  %romsize6 = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 15, !dbg !2704
  %6 = load i64, ptr %romsize6, align 8, !dbg !2704
  br label %cond.end9, !dbg !2704

cond.false7:                                      ; preds = %cond.end
  %7 = load ptr, ptr %pci.addr, align 8, !dbg !2704
  %romsize8 = getelementptr inbounds %struct.anon.26, ptr %7, i32 0, i32 15, !dbg !2704
  %8 = load i64, ptr %romsize8, align 8, !dbg !2704
  br label %cond.end9, !dbg !2704

cond.end9:                                        ; preds = %cond.false7, %cond.true5
  %cond10 = phi i64 [ %6, %cond.true5 ], [ %8, %cond.false7 ], !dbg !2704
  store i64 %cond10, ptr %romsize, align 8, !dbg !2705
  %9 = load ptr, ptr %romimage, align 8, !dbg !2706
  %tobool = icmp ne ptr %9, null, !dbg !2706
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2708

lor.lhs.false:                                    ; preds = %cond.end9
  %10 = load i64, ptr %romsize, align 8, !dbg !2709
  %tobool11 = icmp ne i64 %10, 0, !dbg !2709
  br i1 %tobool11, label %lor.lhs.false12, label %if.then, !dbg !2710

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %11 = load i64, ptr %romsize, align 8, !dbg !2711
  %cmp = icmp ugt i64 %11, 16777216, !dbg !2712
  br i1 %cmp, label %if.then, label %if.end, !dbg !2713

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false, %cond.end9
  store i64 -9223372036854775806, ptr %retval, align 8, !dbg !2714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2714

if.end:                                           ; preds = %lor.lhs.false12
  %12 = load i64, ptr %romsize, align 8, !dbg !2715
  %add = add i64 %12, 64, !dbg !2716
  store i64 %add, ptr %size, align 8, !dbg !2717
  %call14 = call zeroext i1 @efi_is_native() #10, !dbg !2718
  br i1 %call14, label %cond.true16, label %cond.false26, !dbg !2718

cond.true16:                                      ; preds = %if.end
  %call17 = call zeroext i1 @efi_is_native() #10, !dbg !2718
  br i1 %call17, label %cond.true19, label %cond.false20, !dbg !2718

cond.true19:                                      ; preds = %cond.true16
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !2718
  %boottime = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 10, !dbg !2718
  %14 = load ptr, ptr %boottime, align 8, !dbg !2718
  br label %cond.end23, !dbg !2718

cond.false20:                                     ; preds = %cond.true16
  %15 = load ptr, ptr @efi_system_table, align 8, !dbg !2718
  %boottime21 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %15, i32 0, i32 10, !dbg !2718
  %16 = load i32, ptr %boottime21, align 4, !dbg !2718
  %conv22 = zext i32 %16 to i64, !dbg !2718
  %17 = inttoptr i64 %conv22 to ptr, !dbg !2718
  br label %cond.end23, !dbg !2718

cond.end23:                                       ; preds = %cond.false20, %cond.true19
  %cond24 = phi ptr [ %14, %cond.true19 ], [ %17, %cond.false20 ], !dbg !2718
  %allocate_pool = getelementptr inbounds %struct.anon.4, ptr %cond24, i32 0, i32 6, !dbg !2718
  %18 = load ptr, ptr %allocate_pool, align 8, !dbg !2718
  %19 = load i64, ptr %size, align 8, !dbg !2718
  %call25 = call win64cc i64 %18(i32 noundef 2, i64 noundef %19, ptr noundef %rom) #10, !dbg !2718
  br label %cond.end40, !dbg !2718

cond.false26:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !2719
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !2673, metadata !DIExpression()), !dbg !2719
  br label %do.body, !dbg !2720

do.body:                                          ; preds = %cond.false26
  br label %do.cond, !dbg !2722

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2722

do.end:                                           ; preds = %do.cond
  %call27 = call zeroext i1 @efi_is_native() #10, !dbg !2719
  br i1 %call27, label %cond.true29, label %cond.false31, !dbg !2719

cond.true29:                                      ; preds = %do.end
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !2719
  %boottime30 = getelementptr inbounds %struct.anon.3, ptr %20, i32 0, i32 10, !dbg !2719
  %21 = load ptr, ptr %boottime30, align 8, !dbg !2719
  br label %cond.end34, !dbg !2719

cond.false31:                                     ; preds = %do.end
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !2719
  %boottime32 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 10, !dbg !2719
  %23 = load i32, ptr %boottime32, align 4, !dbg !2719
  %conv33 = zext i32 %23 to i64, !dbg !2719
  %24 = inttoptr i64 %conv33 to ptr, !dbg !2719
  br label %cond.end34, !dbg !2719

cond.end34:                                       ; preds = %cond.false31, %cond.true29
  %cond35 = phi ptr [ %21, %cond.true29 ], [ %24, %cond.false31 ], !dbg !2719
  %allocate_pool36 = getelementptr inbounds %struct.anon.5, ptr %cond35, i32 0, i32 6, !dbg !2719
  %25 = load i32, ptr %allocate_pool36, align 4, !dbg !2719
  %26 = load i64, ptr %size, align 8, !dbg !2719
  %call37 = call ptr @efi64_zero_upper(ptr noundef %rom) #10, !dbg !2719
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2719
  %call38 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, i32 noundef 2, i64 noundef %26, ptr noundef %call37, ptr noundef %arraydecay) #10, !dbg !2719
  store i64 %call38, ptr %tmp, align 8, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !2718
  %27 = load i64, ptr %tmp, align 8, !dbg !2719
  %call39 = call i64 @__efi64_widen_efi_status(i64 noundef %27) #10, !dbg !2718
  br label %cond.end40, !dbg !2718

cond.end40:                                       ; preds = %cond.end34, %cond.end23
  %cond41 = phi i64 [ %call25, %cond.end23 ], [ %call39, %cond.end34 ], !dbg !2718
  store i64 %cond41, ptr %status, align 8, !dbg !2724
  %28 = load i64, ptr %status, align 8, !dbg !2725
  %cmp42 = icmp ne i64 %28, 0, !dbg !2727
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !2728

if.then44:                                        ; preds = %cond.end40
  %call45 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.16) #10, !dbg !2729
  %29 = load i64, ptr %status, align 8, !dbg !2731
  store i64 %29, ptr %retval, align 8, !dbg !2732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2732

if.end46:                                         ; preds = %cond.end40
  %30 = load ptr, ptr %rom, align 8, !dbg !2733
  %call47 = call ptr @memset(ptr noundef %30, i32 noundef 0, i64 noundef 64) #10, !dbg !2734
  %31 = load ptr, ptr %rom, align 8, !dbg !2735
  %data = getelementptr inbounds %struct.pci_setup_rom, ptr %31, i32 0, i32 0, !dbg !2736
  %type = getelementptr inbounds %struct.setup_data, ptr %data, i32 0, i32 1, !dbg !2737
  store i32 3, ptr %type, align 8, !dbg !2738
  %32 = load i64, ptr %size, align 8, !dbg !2739
  %sub = sub i64 %32, 16, !dbg !2740
  %conv48 = trunc i64 %sub to i32, !dbg !2739
  %33 = load ptr, ptr %rom, align 8, !dbg !2741
  %data49 = getelementptr inbounds %struct.pci_setup_rom, ptr %33, i32 0, i32 0, !dbg !2742
  %len = getelementptr inbounds %struct.setup_data, ptr %data49, i32 0, i32 2, !dbg !2743
  store i32 %conv48, ptr %len, align 4, !dbg !2744
  %34 = load ptr, ptr %rom, align 8, !dbg !2745
  %data50 = getelementptr inbounds %struct.pci_setup_rom, ptr %34, i32 0, i32 0, !dbg !2746
  %next = getelementptr inbounds %struct.setup_data, ptr %data50, i32 0, i32 0, !dbg !2747
  store i64 0, ptr %next, align 8, !dbg !2748
  %35 = load i64, ptr %romsize, align 8, !dbg !2749
  %36 = load ptr, ptr %rom, align 8, !dbg !2750
  %pcilen = getelementptr inbounds %struct.pci_setup_rom, ptr %36, i32 0, i32 3, !dbg !2751
  store i64 %35, ptr %pcilen, align 8, !dbg !2752
  %37 = load ptr, ptr %rom, align 8, !dbg !2753
  %38 = load ptr, ptr %__rom.addr, align 8, !dbg !2754
  store ptr %37, ptr %38, align 8, !dbg !2755
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !2675, metadata !DIExpression()), !dbg !2756
  %39 = load ptr, ptr %pci.addr, align 8, !dbg !2756
  store ptr %39, ptr %__inst, align 8, !dbg !2756
  %call52 = call zeroext i1 @efi_is_native() #10, !dbg !2756
  br i1 %call52, label %cond.true54, label %cond.false57, !dbg !2756

cond.true54:                                      ; preds = %if.end46
  %40 = load ptr, ptr %__inst, align 8, !dbg !2756
  %pci55 = getelementptr inbounds %struct.anon.25, ptr %40, i32 0, i32 4, !dbg !2756
  %read = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci55, i32 0, i32 0, !dbg !2756
  %41 = load ptr, ptr %read, align 8, !dbg !2756
  %42 = load ptr, ptr %__inst, align 8, !dbg !2756
  %43 = load ptr, ptr %rom, align 8, !dbg !2756
  %vendor = getelementptr inbounds %struct.pci_setup_rom, ptr %43, i32 0, i32 1, !dbg !2756
  %call56 = call win64cc i64 %41(ptr noundef %42, i32 noundef 1, i32 noundef 0, i64 noundef 1, ptr noundef %vendor) #10, !dbg !2756
  br label %cond.end69, !dbg !2756

cond.false57:                                     ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad58) #9, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %__pad58, metadata !2677, metadata !DIExpression()), !dbg !2757
  br label %do.body59, !dbg !2758

do.body59:                                        ; preds = %cond.false57
  br label %do.cond60, !dbg !2760

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !2760

do.end61:                                         ; preds = %do.cond60
  %44 = load ptr, ptr %__inst, align 8, !dbg !2757
  %pci63 = getelementptr inbounds %struct.anon.26, ptr %44, i32 0, i32 4, !dbg !2757
  %read64 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci63, i32 0, i32 0, !dbg !2757
  %45 = load i32, ptr %read64, align 8, !dbg !2757
  %46 = load ptr, ptr %__inst, align 8, !dbg !2757
  %47 = load ptr, ptr %rom, align 8, !dbg !2757
  %vendor65 = getelementptr inbounds %struct.pci_setup_rom, ptr %47, i32 0, i32 1, !dbg !2757
  %arraydecay66 = getelementptr inbounds [3 x i64], ptr %__pad58, i64 0, i64 0, !dbg !2757
  %call67 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %45, ptr noundef %46, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef %vendor65, ptr noundef %arraydecay66) #10, !dbg !2757
  store i64 %call67, ptr %tmp62, align 8, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad58) #9, !dbg !2756
  %48 = load i64, ptr %tmp62, align 8, !dbg !2757
  %call68 = call i64 @__efi64_widen_efi_status(i64 noundef %48) #10, !dbg !2756
  br label %cond.end69, !dbg !2756

cond.end69:                                       ; preds = %do.end61, %cond.true54
  %cond70 = phi i64 [ %call56, %cond.true54 ], [ %call68, %do.end61 ], !dbg !2756
  store i64 %cond70, ptr %tmp51, align 8, !dbg !2756
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !2762
  %49 = load i64, ptr %tmp51, align 8, !dbg !2756
  store i64 %49, ptr %status, align 8, !dbg !2763
  %50 = load i64, ptr %status, align 8, !dbg !2764
  %cmp71 = icmp ne i64 %50, 0, !dbg !2766
  br i1 %cmp71, label %if.then73, label %if.end75, !dbg !2767

if.then73:                                        ; preds = %cond.end69
  %call74 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.17) #10, !dbg !2768
  br label %free_struct, !dbg !2770

if.end75:                                         ; preds = %cond.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst76) #9, !dbg !2771
  call void @llvm.dbg.declare(metadata ptr %__inst76, metadata !2679, metadata !DIExpression()), !dbg !2771
  %51 = load ptr, ptr %pci.addr, align 8, !dbg !2771
  store ptr %51, ptr %__inst76, align 8, !dbg !2771
  %call78 = call zeroext i1 @efi_is_native() #10, !dbg !2771
  br i1 %call78, label %cond.true80, label %cond.false84, !dbg !2771

cond.true80:                                      ; preds = %if.end75
  %52 = load ptr, ptr %__inst76, align 8, !dbg !2771
  %pci81 = getelementptr inbounds %struct.anon.25, ptr %52, i32 0, i32 4, !dbg !2771
  %read82 = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci81, i32 0, i32 0, !dbg !2771
  %53 = load ptr, ptr %read82, align 8, !dbg !2771
  %54 = load ptr, ptr %__inst76, align 8, !dbg !2771
  %55 = load ptr, ptr %rom, align 8, !dbg !2771
  %devid = getelementptr inbounds %struct.pci_setup_rom, ptr %55, i32 0, i32 2, !dbg !2771
  %call83 = call win64cc i64 %53(ptr noundef %54, i32 noundef 1, i32 noundef 2, i64 noundef 1, ptr noundef %devid) #10, !dbg !2771
  br label %cond.end96, !dbg !2771

cond.false84:                                     ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad85) #9, !dbg !2772
  call void @llvm.dbg.declare(metadata ptr %__pad85, metadata !2681, metadata !DIExpression()), !dbg !2772
  br label %do.body86, !dbg !2773

do.body86:                                        ; preds = %cond.false84
  br label %do.cond87, !dbg !2775

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !2775

do.end88:                                         ; preds = %do.cond87
  %56 = load ptr, ptr %__inst76, align 8, !dbg !2772
  %pci90 = getelementptr inbounds %struct.anon.26, ptr %56, i32 0, i32 4, !dbg !2772
  %read91 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci90, i32 0, i32 0, !dbg !2772
  %57 = load i32, ptr %read91, align 8, !dbg !2772
  %58 = load ptr, ptr %__inst76, align 8, !dbg !2772
  %59 = load ptr, ptr %rom, align 8, !dbg !2772
  %devid92 = getelementptr inbounds %struct.pci_setup_rom, ptr %59, i32 0, i32 2, !dbg !2772
  %arraydecay93 = getelementptr inbounds [3 x i64], ptr %__pad85, i64 0, i64 0, !dbg !2772
  %call94 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %57, ptr noundef %58, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef %devid92, ptr noundef %arraydecay93) #10, !dbg !2772
  store i64 %call94, ptr %tmp89, align 8, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad85) #9, !dbg !2771
  %60 = load i64, ptr %tmp89, align 8, !dbg !2772
  %call95 = call i64 @__efi64_widen_efi_status(i64 noundef %60) #10, !dbg !2771
  br label %cond.end96, !dbg !2771

cond.end96:                                       ; preds = %do.end88, %cond.true80
  %cond97 = phi i64 [ %call83, %cond.true80 ], [ %call95, %do.end88 ], !dbg !2771
  store i64 %cond97, ptr %tmp77, align 8, !dbg !2771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst76) #9, !dbg !2777
  %61 = load i64, ptr %tmp77, align 8, !dbg !2771
  store i64 %61, ptr %status, align 8, !dbg !2778
  %62 = load i64, ptr %status, align 8, !dbg !2779
  %cmp98 = icmp ne i64 %62, 0, !dbg !2781
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !2782

if.then100:                                       ; preds = %cond.end96
  %call101 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.18) #10, !dbg !2783
  br label %free_struct, !dbg !2785

if.end102:                                        ; preds = %cond.end96
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst103) #9, !dbg !2786
  call void @llvm.dbg.declare(metadata ptr %__inst103, metadata !2683, metadata !DIExpression()), !dbg !2786
  %63 = load ptr, ptr %pci.addr, align 8, !dbg !2786
  store ptr %63, ptr %__inst103, align 8, !dbg !2786
  %call105 = call zeroext i1 @efi_is_native() #10, !dbg !2786
  br i1 %call105, label %cond.true107, label %cond.false109, !dbg !2786

cond.true107:                                     ; preds = %if.end102
  %64 = load ptr, ptr %__inst103, align 8, !dbg !2786
  %get_location = getelementptr inbounds %struct.anon.25, ptr %64, i32 0, i32 11, !dbg !2786
  %65 = load ptr, ptr %get_location, align 8, !dbg !2786
  %66 = load ptr, ptr %__inst103, align 8, !dbg !2786
  %67 = load ptr, ptr %rom, align 8, !dbg !2786
  %segment = getelementptr inbounds %struct.pci_setup_rom, ptr %67, i32 0, i32 4, !dbg !2786
  %68 = load ptr, ptr %rom, align 8, !dbg !2786
  %bus = getelementptr inbounds %struct.pci_setup_rom, ptr %68, i32 0, i32 5, !dbg !2786
  %69 = load ptr, ptr %rom, align 8, !dbg !2786
  %device = getelementptr inbounds %struct.pci_setup_rom, ptr %69, i32 0, i32 6, !dbg !2786
  %70 = load ptr, ptr %rom, align 8, !dbg !2786
  %function = getelementptr inbounds %struct.pci_setup_rom, ptr %70, i32 0, i32 7, !dbg !2786
  %call108 = call win64cc i64 %65(ptr noundef %66, ptr noundef %segment, ptr noundef %bus, ptr noundef %device, ptr noundef %function) #10, !dbg !2786
  br label %cond.end127, !dbg !2786

cond.false109:                                    ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad110) #9, !dbg !2787
  call void @llvm.dbg.declare(metadata ptr %__pad110, metadata !2685, metadata !DIExpression()), !dbg !2787
  br label %do.body111, !dbg !2788

do.body111:                                       ; preds = %cond.false109
  br label %do.cond112, !dbg !2790

do.cond112:                                       ; preds = %do.body111
  br label %do.end113, !dbg !2790

do.end113:                                        ; preds = %do.cond112
  %71 = load ptr, ptr %__inst103, align 8, !dbg !2787
  %get_location115 = getelementptr inbounds %struct.anon.26, ptr %71, i32 0, i32 11, !dbg !2787
  %72 = load i32, ptr %get_location115, align 8, !dbg !2787
  %73 = load ptr, ptr %__inst103, align 8, !dbg !2787
  %74 = load ptr, ptr %rom, align 8, !dbg !2787
  %segment116 = getelementptr inbounds %struct.pci_setup_rom, ptr %74, i32 0, i32 4, !dbg !2787
  %call117 = call ptr @efi64_zero_upper(ptr noundef %segment116) #10, !dbg !2787
  %75 = load ptr, ptr %rom, align 8, !dbg !2787
  %bus118 = getelementptr inbounds %struct.pci_setup_rom, ptr %75, i32 0, i32 5, !dbg !2787
  %call119 = call ptr @efi64_zero_upper(ptr noundef %bus118) #10, !dbg !2787
  %76 = load ptr, ptr %rom, align 8, !dbg !2787
  %device120 = getelementptr inbounds %struct.pci_setup_rom, ptr %76, i32 0, i32 6, !dbg !2787
  %call121 = call ptr @efi64_zero_upper(ptr noundef %device120) #10, !dbg !2787
  %77 = load ptr, ptr %rom, align 8, !dbg !2787
  %function122 = getelementptr inbounds %struct.pci_setup_rom, ptr %77, i32 0, i32 7, !dbg !2787
  %call123 = call ptr @efi64_zero_upper(ptr noundef %function122) #10, !dbg !2787
  %arraydecay124 = getelementptr inbounds [3 x i64], ptr %__pad110, i64 0, i64 0, !dbg !2787
  %call125 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %72, ptr noundef %73, ptr noundef %call117, ptr noundef %call119, ptr noundef %call121, ptr noundef %call123, ptr noundef %arraydecay124) #10, !dbg !2787
  store i64 %call125, ptr %tmp114, align 8, !dbg !2787
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad110) #9, !dbg !2786
  %78 = load i64, ptr %tmp114, align 8, !dbg !2787
  %call126 = call i64 @__efi64_widen_efi_status(i64 noundef %78) #10, !dbg !2786
  br label %cond.end127, !dbg !2786

cond.end127:                                      ; preds = %do.end113, %cond.true107
  %cond128 = phi i64 [ %call108, %cond.true107 ], [ %call126, %do.end113 ], !dbg !2786
  store i64 %cond128, ptr %tmp104, align 8, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst103) #9, !dbg !2792
  %79 = load i64, ptr %tmp104, align 8, !dbg !2786
  store i64 %79, ptr %status, align 8, !dbg !2793
  %80 = load i64, ptr %status, align 8, !dbg !2794
  %cmp129 = icmp ne i64 %80, 0, !dbg !2796
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !2797

if.then131:                                       ; preds = %cond.end127
  br label %free_struct, !dbg !2798

if.end132:                                        ; preds = %cond.end127
  %81 = load ptr, ptr %rom, align 8, !dbg !2799
  %romdata = getelementptr inbounds %struct.pci_setup_rom, ptr %81, i32 0, i32 8, !dbg !2800
  %arraydecay133 = getelementptr inbounds [0 x i8], ptr %romdata, i64 0, i64 0, !dbg !2799
  %82 = load ptr, ptr %romimage, align 8, !dbg !2801
  %83 = load i64, ptr %romsize, align 8, !dbg !2802
  %call134 = call ptr @memcpy(ptr noundef %arraydecay133, ptr noundef %82, i64 noundef %83) #10, !dbg !2803
  %84 = load i64, ptr %status, align 8, !dbg !2804
  store i64 %84, ptr %retval, align 8, !dbg !2805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2805

free_struct:                                      ; preds = %if.then131, %if.then100, %if.then73
  call void @llvm.dbg.label(metadata !2687), !dbg !2806
  %call135 = call zeroext i1 @efi_is_native() #10, !dbg !2807
  br i1 %call135, label %cond.true137, label %cond.false148, !dbg !2807

cond.true137:                                     ; preds = %free_struct
  %call138 = call zeroext i1 @efi_is_native() #10, !dbg !2807
  br i1 %call138, label %cond.true140, label %cond.false142, !dbg !2807

cond.true140:                                     ; preds = %cond.true137
  %85 = load ptr, ptr @efi_system_table, align 8, !dbg !2807
  %boottime141 = getelementptr inbounds %struct.anon.3, ptr %85, i32 0, i32 10, !dbg !2807
  %86 = load ptr, ptr %boottime141, align 8, !dbg !2807
  br label %cond.end145, !dbg !2807

cond.false142:                                    ; preds = %cond.true137
  %87 = load ptr, ptr @efi_system_table, align 8, !dbg !2807
  %boottime143 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %87, i32 0, i32 10, !dbg !2807
  %88 = load i32, ptr %boottime143, align 4, !dbg !2807
  %conv144 = zext i32 %88 to i64, !dbg !2807
  %89 = inttoptr i64 %conv144 to ptr, !dbg !2807
  br label %cond.end145, !dbg !2807

cond.end145:                                      ; preds = %cond.false142, %cond.true140
  %cond146 = phi ptr [ %86, %cond.true140 ], [ %89, %cond.false142 ], !dbg !2807
  %free_pool = getelementptr inbounds %struct.anon.4, ptr %cond146, i32 0, i32 7, !dbg !2807
  %90 = load ptr, ptr %free_pool, align 8, !dbg !2807
  %91 = load ptr, ptr %rom, align 8, !dbg !2807
  %call147 = call win64cc i64 %90(ptr noundef %91) #10, !dbg !2807
  br label %cond.end167, !dbg !2807

cond.false148:                                    ; preds = %free_struct
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad149) #9, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %__pad149, metadata !2688, metadata !DIExpression()), !dbg !2808
  br label %do.body150, !dbg !2809

do.body150:                                       ; preds = %cond.false148
  br label %do.cond151, !dbg !2811

do.cond151:                                       ; preds = %do.body150
  br label %do.end152, !dbg !2811

do.end152:                                        ; preds = %do.cond151
  %call154 = call zeroext i1 @efi_is_native() #10, !dbg !2808
  br i1 %call154, label %cond.true156, label %cond.false158, !dbg !2808

cond.true156:                                     ; preds = %do.end152
  %92 = load ptr, ptr @efi_system_table, align 8, !dbg !2808
  %boottime157 = getelementptr inbounds %struct.anon.3, ptr %92, i32 0, i32 10, !dbg !2808
  %93 = load ptr, ptr %boottime157, align 8, !dbg !2808
  br label %cond.end161, !dbg !2808

cond.false158:                                    ; preds = %do.end152
  %94 = load ptr, ptr @efi_system_table, align 8, !dbg !2808
  %boottime159 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %94, i32 0, i32 10, !dbg !2808
  %95 = load i32, ptr %boottime159, align 4, !dbg !2808
  %conv160 = zext i32 %95 to i64, !dbg !2808
  %96 = inttoptr i64 %conv160 to ptr, !dbg !2808
  br label %cond.end161, !dbg !2808

cond.end161:                                      ; preds = %cond.false158, %cond.true156
  %cond162 = phi ptr [ %93, %cond.true156 ], [ %96, %cond.false158 ], !dbg !2808
  %free_pool163 = getelementptr inbounds %struct.anon.5, ptr %cond162, i32 0, i32 7, !dbg !2808
  %97 = load i32, ptr %free_pool163, align 8, !dbg !2808
  %98 = load ptr, ptr %rom, align 8, !dbg !2808
  %arraydecay164 = getelementptr inbounds [3 x i64], ptr %__pad149, i64 0, i64 0, !dbg !2808
  %call165 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %97, ptr noundef %98, ptr noundef %arraydecay164) #10, !dbg !2808
  store i64 %call165, ptr %tmp153, align 8, !dbg !2808
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad149) #9, !dbg !2807
  %99 = load i64, ptr %tmp153, align 8, !dbg !2808
  %call166 = call i64 @__efi64_widen_efi_status(i64 noundef %99) #10, !dbg !2807
  br label %cond.end167, !dbg !2807

cond.end167:                                      ; preds = %cond.end161, %cond.end145
  %cond168 = phi i64 [ %call147, %cond.end145 ], [ %call166, %cond.end161 ], !dbg !2807
  %100 = load i64, ptr %status, align 8, !dbg !2813
  store i64 %100, ptr %retval, align 8, !dbg !2814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2814

cleanup:                                          ; preds = %cond.end167, %if.end132, %if.then44, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %romimage) #9, !dbg !2815
  call void @llvm.lifetime.end.p0(i64 8, ptr %romsize) #9, !dbg !2815
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !2815
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2815
  call void @llvm.lifetime.end.p0(i64 8, ptr %rom) #9, !dbg !2815
  %101 = load i64, ptr %retval, align 8, !dbg !2815
  ret i64 %101, !dbg !2815
}

; Function Attrs: noredzone
declare !dbg !2816 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone nounwind
define internal i64 @allocate_e820(ptr noundef %params, ptr noundef %e820ext, ptr noundef %e820ext_size) #0 !dbg !2819 {
entry:
  %retval = alloca i64, align 8
  %params.addr = alloca ptr, align 8
  %e820ext.addr = alloca ptr, align 8
  %e820ext_size.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %status = alloca i64, align 8
  %nr_desc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nr_e820ext = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !2824, metadata !DIExpression()), !dbg !2845
  store ptr %e820ext, ptr %e820ext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext.addr, metadata !2825, metadata !DIExpression()), !dbg !2846
  store ptr %e820ext_size, ptr %e820ext_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext_size.addr, metadata !2826, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #9, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %map, metadata !2827, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !2850
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2838, metadata !DIExpression()), !dbg !2851
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_desc) #9, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %nr_desc, metadata !2839, metadata !DIExpression()), !dbg !2853
  %call = call i64 @efi_get_memory_map(ptr noundef %map, i1 noundef zeroext false) #10, !dbg !2854
  store i64 %call, ptr %status, align 8, !dbg !2855
  %0 = load i64, ptr %status, align 8, !dbg !2856
  %cmp = icmp ne i64 %0, 0, !dbg !2858
  br i1 %cmp, label %if.then, label %if.end, !dbg !2859

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %status, align 8, !dbg !2860
  store i64 %1, ptr %retval, align 8, !dbg !2861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2861

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %map, align 8, !dbg !2862
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %2, i32 0, i32 0, !dbg !2863
  %3 = load i64, ptr %map_size, align 8, !dbg !2863
  %4 = load ptr, ptr %map, align 8, !dbg !2864
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %4, i32 0, i32 1, !dbg !2865
  %5 = load i64, ptr %desc_size, align 8, !dbg !2865
  %div = udiv i64 %3, %5, !dbg !2866
  %conv = trunc i64 %div to i32, !dbg !2862
  store i32 %conv, ptr %nr_desc, align 4, !dbg !2867
  %6 = load i32, ptr %nr_desc, align 4, !dbg !2868
  %conv1 = zext i32 %6 to i64, !dbg !2868
  %cmp2 = icmp ugt i64 %conv1, 120, !dbg !2869
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !2870

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_e820ext) #9, !dbg !2871
  call void @llvm.dbg.declare(metadata ptr %nr_e820ext, metadata !2840, metadata !DIExpression()), !dbg !2872
  %7 = load i32, ptr %nr_desc, align 4, !dbg !2873
  %conv5 = zext i32 %7 to i64, !dbg !2873
  %sub = sub i64 %conv5, 128, !dbg !2874
  %add = add i64 %sub, 8, !dbg !2875
  %conv6 = trunc i64 %add to i32, !dbg !2873
  store i32 %conv6, ptr %nr_e820ext, align 4, !dbg !2872
  %8 = load i32, ptr %nr_e820ext, align 4, !dbg !2876
  %9 = load ptr, ptr %e820ext.addr, align 8, !dbg !2877
  %10 = load ptr, ptr %e820ext_size.addr, align 8, !dbg !2878
  %call7 = call i64 @alloc_e820ext(i32 noundef %8, ptr noundef %9, ptr noundef %10) #10, !dbg !2879
  store i64 %call7, ptr %status, align 8, !dbg !2880
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_e820ext) #9, !dbg !2881
  br label %if.end8, !dbg !2882

if.end8:                                          ; preds = %if.then4, %if.end
  %call9 = call zeroext i1 @efi_is_native() #10, !dbg !2883
  br i1 %call9, label %cond.true, label %cond.false17, !dbg !2883

cond.true:                                        ; preds = %if.end8
  %call11 = call zeroext i1 @efi_is_native() #10, !dbg !2883
  br i1 %call11, label %cond.true13, label %cond.false, !dbg !2883

cond.true13:                                      ; preds = %cond.true
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !2883
  %boottime = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 10, !dbg !2883
  %12 = load ptr, ptr %boottime, align 8, !dbg !2883
  br label %cond.end, !dbg !2883

cond.false:                                       ; preds = %cond.true
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !2883
  %boottime14 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 10, !dbg !2883
  %14 = load i32, ptr %boottime14, align 4, !dbg !2883
  %conv15 = zext i32 %14 to i64, !dbg !2883
  %15 = inttoptr i64 %conv15 to ptr, !dbg !2883
  br label %cond.end, !dbg !2883

cond.end:                                         ; preds = %cond.false, %cond.true13
  %cond = phi ptr [ %12, %cond.true13 ], [ %15, %cond.false ], !dbg !2883
  %free_pool = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 7, !dbg !2883
  %16 = load ptr, ptr %free_pool, align 8, !dbg !2883
  %17 = load ptr, ptr %map, align 8, !dbg !2883
  %call16 = call win64cc i64 %16(ptr noundef %17) #10, !dbg !2883
  br label %cond.end30, !dbg !2883

cond.false17:                                     ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !2843, metadata !DIExpression()), !dbg !2884
  br label %do.body, !dbg !2885

do.body:                                          ; preds = %cond.false17
  br label %do.cond, !dbg !2887

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2887

do.end:                                           ; preds = %do.cond
  %call18 = call zeroext i1 @efi_is_native() #10, !dbg !2884
  br i1 %call18, label %cond.true20, label %cond.false22, !dbg !2884

cond.true20:                                      ; preds = %do.end
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !2884
  %boottime21 = getelementptr inbounds %struct.anon.3, ptr %18, i32 0, i32 10, !dbg !2884
  %19 = load ptr, ptr %boottime21, align 8, !dbg !2884
  br label %cond.end25, !dbg !2884

cond.false22:                                     ; preds = %do.end
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !2884
  %boottime23 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %20, i32 0, i32 10, !dbg !2884
  %21 = load i32, ptr %boottime23, align 4, !dbg !2884
  %conv24 = zext i32 %21 to i64, !dbg !2884
  %22 = inttoptr i64 %conv24 to ptr, !dbg !2884
  br label %cond.end25, !dbg !2884

cond.end25:                                       ; preds = %cond.false22, %cond.true20
  %cond26 = phi ptr [ %19, %cond.true20 ], [ %22, %cond.false22 ], !dbg !2884
  %free_pool27 = getelementptr inbounds %struct.anon.5, ptr %cond26, i32 0, i32 7, !dbg !2884
  %23 = load i32, ptr %free_pool27, align 8, !dbg !2884
  %24 = load ptr, ptr %map, align 8, !dbg !2884
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !2884
  %call28 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %23, ptr noundef %24, ptr noundef %arraydecay) #10, !dbg !2884
  store i64 %call28, ptr %tmp, align 8, !dbg !2884
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !2883
  %25 = load i64, ptr %tmp, align 8, !dbg !2884
  %call29 = call i64 @__efi64_widen_efi_status(i64 noundef %25) #10, !dbg !2883
  br label %cond.end30, !dbg !2883

cond.end30:                                       ; preds = %cond.end25, %cond.end
  %cond31 = phi i64 [ %call16, %cond.end ], [ %call29, %cond.end25 ], !dbg !2883
  %26 = load i64, ptr %status, align 8, !dbg !2889
  store i64 %26, ptr %retval, align 8, !dbg !2890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2890

cleanup:                                          ; preds = %cond.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_desc) #9, !dbg !2891
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !2891
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #9, !dbg !2891
  %27 = load i64, ptr %retval, align 8, !dbg !2891
  ret i64 %27, !dbg !2891
}

; Function Attrs: noredzone
declare !dbg !2892 hidden i64 @efi_exit_boot_services(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone nounwind
define internal i64 @exit_boot_func(ptr noundef %map, ptr noundef %priv) #0 !dbg !2899 {
entry:
  %map.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %signature = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !2901, metadata !DIExpression()), !dbg !2906
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.lifetime.start.p0(i64 8, ptr %signature) #9, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %signature, metadata !2903, metadata !DIExpression()), !dbg !2909
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2904, metadata !DIExpression()), !dbg !2911
  %0 = load ptr, ptr %priv.addr, align 8, !dbg !2912
  store ptr %0, ptr %p, align 8, !dbg !2911
  %call = call zeroext i1 @efi_is_64bit() #10, !dbg !2913
  %1 = zext i1 %call to i64, !dbg !2913
  %cond = select i1 %call, ptr @.str.19, ptr @.str.20, !dbg !2913
  store ptr %cond, ptr %signature, align 8, !dbg !2914
  %2 = load ptr, ptr %p, align 8, !dbg !2915
  %efi = getelementptr inbounds %struct.exit_boot_struct, ptr %2, i32 0, i32 1, !dbg !2916
  %3 = load ptr, ptr %efi, align 8, !dbg !2916
  %efi_loader_signature = getelementptr inbounds %struct.efi_info, ptr %3, i32 0, i32 0, !dbg !2917
  %4 = load ptr, ptr %signature, align 8, !dbg !2918
  %call1 = call ptr @memcpy(ptr noundef %efi_loader_signature, ptr noundef %4, i64 noundef 4) #10, !dbg !2919
  %5 = load ptr, ptr @efi_system_table, align 8, !dbg !2920
  %6 = ptrtoint ptr %5 to i64, !dbg !2921
  %7 = load ptr, ptr %p, align 8, !dbg !2922
  %efi2 = getelementptr inbounds %struct.exit_boot_struct, ptr %7, i32 0, i32 1, !dbg !2923
  %8 = load ptr, ptr %efi2, align 8, !dbg !2923
  %efi_systab = getelementptr inbounds %struct.efi_info, ptr %8, i32 0, i32 1, !dbg !2924
  %9 = load ptr, ptr %p, align 8, !dbg !2925
  %efi3 = getelementptr inbounds %struct.exit_boot_struct, ptr %9, i32 0, i32 1, !dbg !2926
  %10 = load ptr, ptr %efi3, align 8, !dbg !2926
  %efi_systab_hi = getelementptr inbounds %struct.efi_info, ptr %10, i32 0, i32 6, !dbg !2927
  call void @efi_set_u64_split(i64 noundef %6, ptr noundef %efi_systab, ptr noundef %efi_systab_hi) #10, !dbg !2928
  %11 = load ptr, ptr %map.addr, align 8, !dbg !2929
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %11, i32 0, i32 1, !dbg !2930
  %12 = load i64, ptr %desc_size, align 8, !dbg !2930
  %conv = trunc i64 %12 to i32, !dbg !2929
  %13 = load ptr, ptr %p, align 8, !dbg !2931
  %efi4 = getelementptr inbounds %struct.exit_boot_struct, ptr %13, i32 0, i32 1, !dbg !2932
  %14 = load ptr, ptr %efi4, align 8, !dbg !2932
  %efi_memdesc_size = getelementptr inbounds %struct.efi_info, ptr %14, i32 0, i32 2, !dbg !2933
  store i32 %conv, ptr %efi_memdesc_size, align 4, !dbg !2934
  %15 = load ptr, ptr %map.addr, align 8, !dbg !2935
  %desc_ver = getelementptr inbounds %struct.efi_boot_memmap, ptr %15, i32 0, i32 2, !dbg !2936
  %16 = load i32, ptr %desc_ver, align 8, !dbg !2936
  %17 = load ptr, ptr %p, align 8, !dbg !2937
  %efi5 = getelementptr inbounds %struct.exit_boot_struct, ptr %17, i32 0, i32 1, !dbg !2938
  %18 = load ptr, ptr %efi5, align 8, !dbg !2938
  %efi_memdesc_version = getelementptr inbounds %struct.efi_info, ptr %18, i32 0, i32 3, !dbg !2939
  store i32 %16, ptr %efi_memdesc_version, align 4, !dbg !2940
  %19 = load ptr, ptr %map.addr, align 8, !dbg !2941
  %map6 = getelementptr inbounds %struct.efi_boot_memmap, ptr %19, i32 0, i32 5, !dbg !2942
  %arraydecay = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map6, i64 0, i64 0, !dbg !2941
  %20 = ptrtoint ptr %arraydecay to i64, !dbg !2943
  %21 = load ptr, ptr %p, align 8, !dbg !2944
  %efi7 = getelementptr inbounds %struct.exit_boot_struct, ptr %21, i32 0, i32 1, !dbg !2945
  %22 = load ptr, ptr %efi7, align 8, !dbg !2945
  %efi_memmap = getelementptr inbounds %struct.efi_info, ptr %22, i32 0, i32 4, !dbg !2946
  %23 = load ptr, ptr %p, align 8, !dbg !2947
  %efi8 = getelementptr inbounds %struct.exit_boot_struct, ptr %23, i32 0, i32 1, !dbg !2948
  %24 = load ptr, ptr %efi8, align 8, !dbg !2948
  %efi_memmap_hi = getelementptr inbounds %struct.efi_info, ptr %24, i32 0, i32 7, !dbg !2949
  call void @efi_set_u64_split(i64 noundef %20, ptr noundef %efi_memmap, ptr noundef %efi_memmap_hi) #10, !dbg !2950
  %25 = load ptr, ptr %map.addr, align 8, !dbg !2951
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %25, i32 0, i32 0, !dbg !2952
  %26 = load i64, ptr %map_size, align 8, !dbg !2952
  %conv9 = trunc i64 %26 to i32, !dbg !2951
  %27 = load ptr, ptr %p, align 8, !dbg !2953
  %efi10 = getelementptr inbounds %struct.exit_boot_struct, ptr %27, i32 0, i32 1, !dbg !2954
  %28 = load ptr, ptr %efi10, align 8, !dbg !2954
  %efi_memmap_size = getelementptr inbounds %struct.efi_info, ptr %28, i32 0, i32 5, !dbg !2955
  store i32 %conv9, ptr %efi_memmap_size, align 4, !dbg !2956
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !2957
  call void @llvm.lifetime.end.p0(i64 8, ptr %signature) #9, !dbg !2957
  ret i64 0, !dbg !2958
}

; Function Attrs: noredzone nounwind
define internal i64 @setup_e820(ptr noundef %params, ptr noundef %e820ext, i32 noundef %e820ext_size) #0 !dbg !2959 {
entry:
  %retval = alloca i64, align 8
  %params.addr = alloca ptr, align 8
  %e820ext.addr = alloca ptr, align 8
  %e820ext_size.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %efi = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %nr_entries = alloca i32, align 4
  %nr_desc = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca ptr, align 8
  %e820_type = alloca i32, align 4
  %m = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %need = alloca i32, align 4
  %nr_e820ext = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !2963, metadata !DIExpression()), !dbg !2984
  store ptr %e820ext, ptr %e820ext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext.addr, metadata !2964, metadata !DIExpression()), !dbg !2985
  store i32 %e820ext_size, ptr %e820ext_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %e820ext_size.addr, metadata !2965, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2966, metadata !DIExpression()), !dbg !2988
  %0 = load ptr, ptr %params.addr, align 8, !dbg !2989
  %e820_table = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 31, !dbg !2990
  %arraydecay = getelementptr inbounds [128 x %struct.boot_e820_entry], ptr %e820_table, i64 0, i64 0, !dbg !2989
  store ptr %arraydecay, ptr %entry1, align 8, !dbg !2988
  call void @llvm.lifetime.start.p0(i64 8, ptr %efi) #9, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %efi, metadata !2967, metadata !DIExpression()), !dbg !2992
  %1 = load ptr, ptr %params.addr, align 8, !dbg !2993
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %1, i32 0, i32 17, !dbg !2994
  store ptr %efi_info, ptr %efi, align 8, !dbg !2992
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #9, !dbg !2995
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2968, metadata !DIExpression()), !dbg !2996
  store ptr null, ptr %prev, align 8, !dbg !2996
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_entries) #9, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %nr_entries, metadata !2969, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_desc) #9, !dbg !2999
  call void @llvm.dbg.declare(metadata ptr %nr_desc, metadata !2970, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !3001
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2971, metadata !DIExpression()), !dbg !3002
  store i32 0, ptr %nr_entries, align 4, !dbg !3003
  %2 = load ptr, ptr %efi, align 8, !dbg !3004
  %efi_memmap_size = getelementptr inbounds %struct.efi_info, ptr %2, i32 0, i32 5, !dbg !3005
  %3 = load i32, ptr %efi_memmap_size, align 4, !dbg !3005
  %4 = load ptr, ptr %efi, align 8, !dbg !3006
  %efi_memdesc_size = getelementptr inbounds %struct.efi_info, ptr %4, i32 0, i32 2, !dbg !3007
  %5 = load i32, ptr %efi_memdesc_size, align 4, !dbg !3007
  %div = udiv i32 %3, %5, !dbg !3008
  store i32 %div, ptr %nr_desc, align 4, !dbg !3009
  store i32 0, ptr %i, align 4, !dbg !3010
  br label %for.cond, !dbg !3011

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !3012
  %7 = load i32, ptr %nr_desc, align 4, !dbg !3013
  %cmp = icmp ult i32 %6, %7, !dbg !3014
  br i1 %cmp, label %for.body, label %for.end, !dbg !3015

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #9, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %d, metadata !2972, metadata !DIExpression()), !dbg !3017
  call void @llvm.lifetime.start.p0(i64 4, ptr %e820_type) #9, !dbg !3018
  call void @llvm.dbg.declare(metadata ptr %e820_type, metadata !2976, metadata !DIExpression()), !dbg !3019
  store i32 0, ptr %e820_type, align 4, !dbg !3019
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #9, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %m, metadata !2977, metadata !DIExpression()), !dbg !3021
  %8 = load ptr, ptr %efi, align 8, !dbg !3022
  %efi_memmap = getelementptr inbounds %struct.efi_info, ptr %8, i32 0, i32 4, !dbg !3023
  %9 = load i32, ptr %efi_memmap, align 4, !dbg !3023
  %conv = zext i32 %9 to i64, !dbg !3022
  store i64 %conv, ptr %m, align 8, !dbg !3021
  %10 = load ptr, ptr %efi, align 8, !dbg !3024
  %efi_memmap_hi = getelementptr inbounds %struct.efi_info, ptr %10, i32 0, i32 7, !dbg !3025
  %11 = load i32, ptr %efi_memmap_hi, align 4, !dbg !3025
  %conv2 = zext i32 %11 to i64, !dbg !3026
  %shl = shl i64 %conv2, 32, !dbg !3027
  %12 = load i64, ptr %m, align 8, !dbg !3028
  %or = or i64 %12, %shl, !dbg !3028
  store i64 %or, ptr %m, align 8, !dbg !3028
  %13 = load i64, ptr %m, align 8, !dbg !3029
  %14 = inttoptr i64 %13 to ptr, !dbg !3029
  %15 = load i32, ptr %i, align 4, !dbg !3029
  %16 = load ptr, ptr %efi, align 8, !dbg !3029
  %efi_memdesc_size3 = getelementptr inbounds %struct.efi_info, ptr %16, i32 0, i32 2, !dbg !3029
  %17 = load i32, ptr %efi_memdesc_size3, align 4, !dbg !3029
  %mul = mul i32 %15, %17, !dbg !3029
  %idx.ext = zext i32 %mul to i64, !dbg !3029
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !3029
  store ptr %add.ptr, ptr %d, align 8, !dbg !3030
  %18 = load ptr, ptr %d, align 8, !dbg !3031
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %18, i32 0, i32 0, !dbg !3032
  %19 = load i32, ptr %type, align 8, !dbg !3032
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
    i32 1, label %sw.bb6
    i32 2, label %sw.bb6
    i32 3, label %sw.bb6
    i32 4, label %sw.bb6
    i32 7, label %sw.bb6
    i32 10, label %sw.bb8
    i32 14, label %sw.bb9
    i32 15, label %sw.bb10
  ], !dbg !3033

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  store i32 2, ptr %e820_type, align 4, !dbg !3034
  br label %sw.epilog, !dbg !3036

sw.bb4:                                           ; preds = %for.body
  store i32 5, ptr %e820_type, align 4, !dbg !3037
  br label %sw.epilog, !dbg !3038

sw.bb5:                                           ; preds = %for.body
  store i32 3, ptr %e820_type, align 4, !dbg !3039
  br label %sw.epilog, !dbg !3040

sw.bb6:                                           ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %call = call zeroext i1 @efi_soft_reserve_enabled() #12, !dbg !3041
  br i1 %call, label %land.lhs.true, label %if.else, !dbg !3043

land.lhs.true:                                    ; preds = %sw.bb6
  %20 = load ptr, ptr %d, align 8, !dbg !3044
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %20, i32 0, i32 5, !dbg !3045
  %21 = load i64, ptr %attribute, align 8, !dbg !3045
  %and = and i64 %21, 262144, !dbg !3046
  %tobool = icmp ne i64 %and, 0, !dbg !3046
  br i1 %tobool, label %if.then, label %if.else, !dbg !3047

if.then:                                          ; preds = %land.lhs.true
  store i32 -268435457, ptr %e820_type, align 4, !dbg !3048
  br label %if.end, !dbg !3049

if.else:                                          ; preds = %land.lhs.true, %sw.bb6
  store i32 1, ptr %e820_type, align 4, !dbg !3050
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !3051

sw.bb8:                                           ; preds = %for.body
  store i32 4, ptr %e820_type, align 4, !dbg !3052
  br label %sw.epilog, !dbg !3053

sw.bb9:                                           ; preds = %for.body
  store i32 7, ptr %e820_type, align 4, !dbg !3054
  br label %sw.epilog, !dbg !3055

sw.bb10:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !3056

sw.default:                                       ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !3058

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %if.end, %sw.bb5, %sw.bb4, %sw.bb
  %22 = load ptr, ptr %prev, align 8, !dbg !3059
  %tobool11 = icmp ne ptr %22, null, !dbg !3059
  br i1 %tobool11, label %land.lhs.true12, label %if.end23, !dbg !3061

land.lhs.true12:                                  ; preds = %sw.epilog
  %23 = load ptr, ptr %prev, align 8, !dbg !3062
  %type13 = getelementptr inbounds %struct.boot_e820_entry, ptr %23, i32 0, i32 2, !dbg !3063
  %24 = load i32, ptr %type13, align 1, !dbg !3063
  %25 = load i32, ptr %e820_type, align 4, !dbg !3064
  %cmp14 = icmp eq i32 %24, %25, !dbg !3065
  br i1 %cmp14, label %land.lhs.true16, label %if.end23, !dbg !3066

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %26 = load ptr, ptr %prev, align 8, !dbg !3067
  %addr = getelementptr inbounds %struct.boot_e820_entry, ptr %26, i32 0, i32 0, !dbg !3068
  %27 = load i64, ptr %addr, align 1, !dbg !3068
  %28 = load ptr, ptr %prev, align 8, !dbg !3069
  %size = getelementptr inbounds %struct.boot_e820_entry, ptr %28, i32 0, i32 1, !dbg !3070
  %29 = load i64, ptr %size, align 1, !dbg !3070
  %add = add i64 %27, %29, !dbg !3071
  %30 = load ptr, ptr %d, align 8, !dbg !3072
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 2, !dbg !3073
  %31 = load i64, ptr %phys_addr, align 8, !dbg !3073
  %cmp17 = icmp eq i64 %add, %31, !dbg !3074
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !3075

if.then19:                                        ; preds = %land.lhs.true16
  %32 = load ptr, ptr %d, align 8, !dbg !3076
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %32, i32 0, i32 4, !dbg !3078
  %33 = load i64, ptr %num_pages, align 8, !dbg !3078
  %shl20 = shl i64 %33, 12, !dbg !3079
  %34 = load ptr, ptr %prev, align 8, !dbg !3080
  %size21 = getelementptr inbounds %struct.boot_e820_entry, ptr %34, i32 0, i32 1, !dbg !3081
  %35 = load i64, ptr %size21, align 1, !dbg !3082
  %add22 = add i64 %35, %shl20, !dbg !3082
  store i64 %add22, ptr %size21, align 1, !dbg !3082
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !3083

if.end23:                                         ; preds = %land.lhs.true16, %land.lhs.true12, %sw.epilog
  %36 = load i32, ptr %nr_entries, align 4, !dbg !3084
  %conv24 = zext i32 %36 to i64, !dbg !3084
  %cmp25 = icmp eq i64 %conv24, 128, !dbg !3085
  br i1 %cmp25, label %if.then27, label %if.end38, !dbg !3086

if.then27:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #9, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %need, metadata !2978, metadata !DIExpression()), !dbg !3088
  %37 = load i32, ptr %nr_desc, align 4, !dbg !3089
  %38 = load i32, ptr %i, align 4, !dbg !3090
  %sub = sub i32 %37, %38, !dbg !3091
  %conv28 = zext i32 %sub to i64, !dbg !3092
  %mul29 = mul i64 %conv28, 20, !dbg !3093
  %add30 = add i64 %mul29, 16, !dbg !3094
  %conv31 = trunc i64 %add30 to i32, !dbg !3092
  store i32 %conv31, ptr %need, align 4, !dbg !3088
  %39 = load ptr, ptr %e820ext.addr, align 8, !dbg !3095
  %tobool32 = icmp ne ptr %39, null, !dbg !3095
  br i1 %tobool32, label %lor.lhs.false, label %if.then35, !dbg !3097

lor.lhs.false:                                    ; preds = %if.then27
  %40 = load i32, ptr %e820ext_size.addr, align 4, !dbg !3098
  %41 = load i32, ptr %need, align 4, !dbg !3099
  %cmp33 = icmp ult i32 %40, %41, !dbg !3100
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !3101

if.then35:                                        ; preds = %lor.lhs.false, %if.then27
  store i64 -9223372036854775803, ptr %retval, align 8, !dbg !3102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3102

if.end36:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %e820ext.addr, align 8, !dbg !3103
  %data = getelementptr inbounds %struct.setup_data, ptr %42, i32 0, i32 3, !dbg !3104
  %arraydecay37 = getelementptr inbounds [0 x i8], ptr %data, i64 0, i64 0, !dbg !3103
  store ptr %arraydecay37, ptr %entry1, align 8, !dbg !3105
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3106
  br label %cleanup, !dbg !3106

cleanup:                                          ; preds = %if.end36, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #9, !dbg !3106
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end38, !dbg !3107

if.end38:                                         ; preds = %cleanup.cont, %if.end23
  %43 = load ptr, ptr %d, align 8, !dbg !3108
  %phys_addr39 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %43, i32 0, i32 2, !dbg !3109
  %44 = load i64, ptr %phys_addr39, align 8, !dbg !3109
  %45 = load ptr, ptr %entry1, align 8, !dbg !3110
  %addr40 = getelementptr inbounds %struct.boot_e820_entry, ptr %45, i32 0, i32 0, !dbg !3111
  store i64 %44, ptr %addr40, align 1, !dbg !3112
  %46 = load ptr, ptr %d, align 8, !dbg !3113
  %num_pages41 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %46, i32 0, i32 4, !dbg !3114
  %47 = load i64, ptr %num_pages41, align 8, !dbg !3114
  %shl42 = shl i64 %47, 12, !dbg !3115
  %48 = load ptr, ptr %entry1, align 8, !dbg !3116
  %size43 = getelementptr inbounds %struct.boot_e820_entry, ptr %48, i32 0, i32 1, !dbg !3117
  store i64 %shl42, ptr %size43, align 1, !dbg !3118
  %49 = load i32, ptr %e820_type, align 4, !dbg !3119
  %50 = load ptr, ptr %entry1, align 8, !dbg !3120
  %type44 = getelementptr inbounds %struct.boot_e820_entry, ptr %50, i32 0, i32 2, !dbg !3121
  store i32 %49, ptr %type44, align 1, !dbg !3122
  %51 = load ptr, ptr %entry1, align 8, !dbg !3123
  %incdec.ptr = getelementptr inbounds %struct.boot_e820_entry, ptr %51, i32 1, !dbg !3123
  store ptr %incdec.ptr, ptr %entry1, align 8, !dbg !3123
  store ptr %51, ptr %prev, align 8, !dbg !3124
  %52 = load i32, ptr %nr_entries, align 4, !dbg !3125
  %inc = add i32 %52, 1, !dbg !3125
  store i32 %inc, ptr %nr_entries, align 4, !dbg !3125
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3126
  br label %cleanup45, !dbg !3126

cleanup45:                                        ; preds = %if.end38, %cleanup, %if.then19, %sw.default, %sw.bb10
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #9, !dbg !3126
  call void @llvm.lifetime.end.p0(i64 4, ptr %e820_type) #9, !dbg !3126
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #9, !dbg !3126
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %cleanup61 [
    i32 0, label %cleanup.cont49
    i32 4, label %for.inc
  ]

cleanup.cont49:                                   ; preds = %cleanup45
  br label %for.inc, !dbg !3127

for.inc:                                          ; preds = %cleanup.cont49, %cleanup45
  %53 = load i32, ptr %i, align 4, !dbg !3128
  %inc50 = add nsw i32 %53, 1, !dbg !3128
  store i32 %inc50, ptr %i, align 4, !dbg !3128
  br label %for.cond, !dbg !3129, !llvm.loop !3130

for.end:                                          ; preds = %for.cond
  %54 = load i32, ptr %nr_entries, align 4, !dbg !3132
  %conv51 = zext i32 %54 to i64, !dbg !3132
  %cmp52 = icmp ugt i64 %conv51, 128, !dbg !3133
  br i1 %cmp52, label %if.then54, label %if.end59, !dbg !3134

if.then54:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_e820ext) #9, !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %nr_e820ext, metadata !2981, metadata !DIExpression()), !dbg !3136
  %55 = load i32, ptr %nr_entries, align 4, !dbg !3137
  %conv55 = zext i32 %55 to i64, !dbg !3137
  %sub56 = sub i64 %conv55, 128, !dbg !3138
  %conv57 = trunc i64 %sub56 to i32, !dbg !3137
  store i32 %conv57, ptr %nr_e820ext, align 4, !dbg !3136
  %56 = load ptr, ptr %params.addr, align 8, !dbg !3139
  %57 = load ptr, ptr %e820ext.addr, align 8, !dbg !3140
  %58 = load i32, ptr %nr_e820ext, align 4, !dbg !3141
  call void @add_e820ext(ptr noundef %56, ptr noundef %57, i32 noundef %58) #10, !dbg !3142
  %59 = load i32, ptr %nr_e820ext, align 4, !dbg !3143
  %60 = load i32, ptr %nr_entries, align 4, !dbg !3144
  %sub58 = sub i32 %60, %59, !dbg !3144
  store i32 %sub58, ptr %nr_entries, align 4, !dbg !3144
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_e820ext) #9, !dbg !3145
  br label %if.end59, !dbg !3146

if.end59:                                         ; preds = %if.then54, %for.end
  %61 = load i32, ptr %nr_entries, align 4, !dbg !3147
  %conv60 = trunc i32 %61 to i8, !dbg !3148
  %62 = load ptr, ptr %params.addr, align 8, !dbg !3149
  %e820_entries = getelementptr inbounds %struct.boot_params, ptr %62, i32 0, i32 20, !dbg !3150
  store i8 %conv60, ptr %e820_entries, align 1, !dbg !3151
  store i64 0, ptr %retval, align 8, !dbg !3152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !3152

cleanup61:                                        ; preds = %if.end59, %cleanup45
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_desc) #9, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_entries) #9, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #9, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr %efi) #9, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !3153
  %63 = load i64, ptr %retval, align 8, !dbg !3153
  ret i64 %63, !dbg !3153
}

; Function Attrs: noredzone
declare !dbg !3154 hidden i64 @efi_get_memory_map(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone nounwind
define internal i64 @alloc_e820ext(i32 noundef %nr_desc, ptr noundef %e820ext, ptr noundef %e820ext_size) #0 !dbg !3158 {
entry:
  %nr_desc.addr = alloca i32, align 4
  %e820ext.addr = alloca ptr, align 8
  %e820ext_size.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %size = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad37 = alloca [3 x i64], align 16
  %tmp41 = alloca i64, align 8
  store i32 %nr_desc, ptr %nr_desc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_desc.addr, metadata !3162, metadata !DIExpression()), !dbg !3173
  store ptr %e820ext, ptr %e820ext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext.addr, metadata !3163, metadata !DIExpression()), !dbg !3174
  store ptr %e820ext_size, ptr %e820ext_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext_size.addr, metadata !3164, metadata !DIExpression()), !dbg !3175
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3165, metadata !DIExpression()), !dbg !3177
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !3178
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3166, metadata !DIExpression()), !dbg !3179
  %0 = load i32, ptr %nr_desc.addr, align 4, !dbg !3180
  %conv = zext i32 %0 to i64, !dbg !3180
  %mul = mul i64 20, %conv, !dbg !3181
  %add = add i64 16, %mul, !dbg !3182
  store i64 %add, ptr %size, align 8, !dbg !3183
  %1 = load ptr, ptr %e820ext.addr, align 8, !dbg !3184
  %2 = load ptr, ptr %1, align 8, !dbg !3185
  %tobool = icmp ne ptr %2, null, !dbg !3185
  br i1 %tobool, label %if.then, label %if.end, !dbg !3186

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @efi_is_native() #10, !dbg !3187
  br i1 %call, label %cond.true, label %cond.false8, !dbg !3187

cond.true:                                        ; preds = %if.then
  %call2 = call zeroext i1 @efi_is_native() #10, !dbg !3187
  br i1 %call2, label %cond.true4, label %cond.false, !dbg !3187

cond.true4:                                       ; preds = %cond.true
  %3 = load ptr, ptr @efi_system_table, align 8, !dbg !3187
  %boottime = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 10, !dbg !3187
  %4 = load ptr, ptr %boottime, align 8, !dbg !3187
  br label %cond.end, !dbg !3187

cond.false:                                       ; preds = %cond.true
  %5 = load ptr, ptr @efi_system_table, align 8, !dbg !3187
  %boottime5 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %5, i32 0, i32 10, !dbg !3187
  %6 = load i32, ptr %boottime5, align 4, !dbg !3187
  %conv6 = zext i32 %6 to i64, !dbg !3187
  %7 = inttoptr i64 %conv6 to ptr, !dbg !3187
  br label %cond.end, !dbg !3187

cond.end:                                         ; preds = %cond.false, %cond.true4
  %cond = phi ptr [ %4, %cond.true4 ], [ %7, %cond.false ], !dbg !3187
  %free_pool = getelementptr inbounds %struct.anon.4, ptr %cond, i32 0, i32 7, !dbg !3187
  %8 = load ptr, ptr %free_pool, align 8, !dbg !3187
  %9 = load ptr, ptr %e820ext.addr, align 8, !dbg !3187
  %10 = load ptr, ptr %9, align 8, !dbg !3187
  %call7 = call win64cc i64 %8(ptr noundef %10) #10, !dbg !3187
  br label %cond.end21, !dbg !3187

cond.false8:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !3188
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !3167, metadata !DIExpression()), !dbg !3188
  br label %do.body, !dbg !3189

do.body:                                          ; preds = %cond.false8
  br label %do.cond, !dbg !3191

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3191

do.end:                                           ; preds = %do.cond
  %call9 = call zeroext i1 @efi_is_native() #10, !dbg !3188
  br i1 %call9, label %cond.true11, label %cond.false13, !dbg !3188

cond.true11:                                      ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !3188
  %boottime12 = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 10, !dbg !3188
  %12 = load ptr, ptr %boottime12, align 8, !dbg !3188
  br label %cond.end16, !dbg !3188

cond.false13:                                     ; preds = %do.end
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !3188
  %boottime14 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 10, !dbg !3188
  %14 = load i32, ptr %boottime14, align 4, !dbg !3188
  %conv15 = zext i32 %14 to i64, !dbg !3188
  %15 = inttoptr i64 %conv15 to ptr, !dbg !3188
  br label %cond.end16, !dbg !3188

cond.end16:                                       ; preds = %cond.false13, %cond.true11
  %cond17 = phi ptr [ %12, %cond.true11 ], [ %15, %cond.false13 ], !dbg !3188
  %free_pool18 = getelementptr inbounds %struct.anon.5, ptr %cond17, i32 0, i32 7, !dbg !3188
  %16 = load i32, ptr %free_pool18, align 8, !dbg !3188
  %17 = load ptr, ptr %e820ext.addr, align 8, !dbg !3188
  %18 = load ptr, ptr %17, align 8, !dbg !3188
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !3188
  %call19 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %16, ptr noundef %18, ptr noundef %arraydecay) #10, !dbg !3188
  store i64 %call19, ptr %tmp, align 8, !dbg !3188
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !3187
  %19 = load i64, ptr %tmp, align 8, !dbg !3188
  %call20 = call i64 @__efi64_widen_efi_status(i64 noundef %19) #10, !dbg !3187
  br label %cond.end21, !dbg !3187

cond.end21:                                       ; preds = %cond.end16, %cond.end
  %cond22 = phi i64 [ %call7, %cond.end ], [ %call20, %cond.end16 ], !dbg !3187
  %20 = load ptr, ptr %e820ext.addr, align 8, !dbg !3193
  store ptr null, ptr %20, align 8, !dbg !3194
  %21 = load ptr, ptr %e820ext_size.addr, align 8, !dbg !3195
  store i32 0, ptr %21, align 4, !dbg !3196
  br label %if.end, !dbg !3197

if.end:                                           ; preds = %cond.end21, %entry
  %call23 = call zeroext i1 @efi_is_native() #10, !dbg !3198
  br i1 %call23, label %cond.true25, label %cond.false36, !dbg !3198

cond.true25:                                      ; preds = %if.end
  %call26 = call zeroext i1 @efi_is_native() #10, !dbg !3198
  br i1 %call26, label %cond.true28, label %cond.false30, !dbg !3198

cond.true28:                                      ; preds = %cond.true25
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !3198
  %boottime29 = getelementptr inbounds %struct.anon.3, ptr %22, i32 0, i32 10, !dbg !3198
  %23 = load ptr, ptr %boottime29, align 8, !dbg !3198
  br label %cond.end33, !dbg !3198

cond.false30:                                     ; preds = %cond.true25
  %24 = load ptr, ptr @efi_system_table, align 8, !dbg !3198
  %boottime31 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %24, i32 0, i32 10, !dbg !3198
  %25 = load i32, ptr %boottime31, align 4, !dbg !3198
  %conv32 = zext i32 %25 to i64, !dbg !3198
  %26 = inttoptr i64 %conv32 to ptr, !dbg !3198
  br label %cond.end33, !dbg !3198

cond.end33:                                       ; preds = %cond.false30, %cond.true28
  %cond34 = phi ptr [ %23, %cond.true28 ], [ %26, %cond.false30 ], !dbg !3198
  %allocate_pool = getelementptr inbounds %struct.anon.4, ptr %cond34, i32 0, i32 6, !dbg !3198
  %27 = load ptr, ptr %allocate_pool, align 8, !dbg !3198
  %28 = load i64, ptr %size, align 8, !dbg !3198
  %29 = load ptr, ptr %e820ext.addr, align 8, !dbg !3198
  %call35 = call win64cc i64 %27(i32 noundef 2, i64 noundef %28, ptr noundef %29) #10, !dbg !3198
  br label %cond.end56, !dbg !3198

cond.false36:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad37) #9, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %__pad37, metadata !3171, metadata !DIExpression()), !dbg !3199
  br label %do.body38, !dbg !3200

do.body38:                                        ; preds = %cond.false36
  br label %do.cond39, !dbg !3202

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !3202

do.end40:                                         ; preds = %do.cond39
  %call42 = call zeroext i1 @efi_is_native() #10, !dbg !3199
  br i1 %call42, label %cond.true44, label %cond.false46, !dbg !3199

cond.true44:                                      ; preds = %do.end40
  %30 = load ptr, ptr @efi_system_table, align 8, !dbg !3199
  %boottime45 = getelementptr inbounds %struct.anon.3, ptr %30, i32 0, i32 10, !dbg !3199
  %31 = load ptr, ptr %boottime45, align 8, !dbg !3199
  br label %cond.end49, !dbg !3199

cond.false46:                                     ; preds = %do.end40
  %32 = load ptr, ptr @efi_system_table, align 8, !dbg !3199
  %boottime47 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %32, i32 0, i32 10, !dbg !3199
  %33 = load i32, ptr %boottime47, align 4, !dbg !3199
  %conv48 = zext i32 %33 to i64, !dbg !3199
  %34 = inttoptr i64 %conv48 to ptr, !dbg !3199
  br label %cond.end49, !dbg !3199

cond.end49:                                       ; preds = %cond.false46, %cond.true44
  %cond50 = phi ptr [ %31, %cond.true44 ], [ %34, %cond.false46 ], !dbg !3199
  %allocate_pool51 = getelementptr inbounds %struct.anon.5, ptr %cond50, i32 0, i32 6, !dbg !3199
  %35 = load i32, ptr %allocate_pool51, align 4, !dbg !3199
  %36 = load i64, ptr %size, align 8, !dbg !3199
  %37 = load ptr, ptr %e820ext.addr, align 8, !dbg !3199
  %call52 = call ptr @efi64_zero_upper(ptr noundef %37) #10, !dbg !3199
  %arraydecay53 = getelementptr inbounds [3 x i64], ptr %__pad37, i64 0, i64 0, !dbg !3199
  %call54 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %35, i32 noundef 2, i64 noundef %36, ptr noundef %call52, ptr noundef %arraydecay53) #10, !dbg !3199
  store i64 %call54, ptr %tmp41, align 8, !dbg !3199
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad37) #9, !dbg !3198
  %38 = load i64, ptr %tmp41, align 8, !dbg !3199
  %call55 = call i64 @__efi64_widen_efi_status(i64 noundef %38) #10, !dbg !3198
  br label %cond.end56, !dbg !3198

cond.end56:                                       ; preds = %cond.end49, %cond.end33
  %cond57 = phi i64 [ %call35, %cond.end33 ], [ %call55, %cond.end49 ], !dbg !3198
  store i64 %cond57, ptr %status, align 8, !dbg !3204
  %39 = load i64, ptr %status, align 8, !dbg !3205
  %cmp = icmp eq i64 %39, 0, !dbg !3207
  br i1 %cmp, label %if.then59, label %if.end61, !dbg !3208

if.then59:                                        ; preds = %cond.end56
  %40 = load i64, ptr %size, align 8, !dbg !3209
  %conv60 = trunc i64 %40 to i32, !dbg !3209
  %41 = load ptr, ptr %e820ext_size.addr, align 8, !dbg !3210
  store i32 %conv60, ptr %41, align 4, !dbg !3211
  br label %if.end61, !dbg !3212

if.end61:                                         ; preds = %if.then59, %cond.end56
  %42 = load i64, ptr %status, align 8, !dbg !3213
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !3214
  ret i64 %42, !dbg !3215
}

; Function Attrs: inlinehint noredzone nounwind willreturn memory(read)
define internal zeroext i1 @efi_soft_reserve_enabled() #8 !dbg !3216 {
entry:
  ret i1 false, !dbg !3217
}

; Function Attrs: noredzone nounwind
define internal void @add_e820ext(ptr noundef %params, ptr noundef %e820ext, i32 noundef %nr_entries) #0 !dbg !3218 {
entry:
  %params.addr = alloca ptr, align 8
  %e820ext.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !3222, metadata !DIExpression()), !dbg !3226
  store ptr %e820ext, ptr %e820ext.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e820ext.addr, metadata !3223, metadata !DIExpression()), !dbg !3227
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3225, metadata !DIExpression()), !dbg !3230
  %0 = load ptr, ptr %e820ext.addr, align 8, !dbg !3231
  %type = getelementptr inbounds %struct.setup_data, ptr %0, i32 0, i32 1, !dbg !3232
  store i32 1, ptr %type, align 8, !dbg !3233
  %1 = load i32, ptr %nr_entries.addr, align 4, !dbg !3234
  %conv = zext i32 %1 to i64, !dbg !3234
  %mul = mul i64 %conv, 20, !dbg !3235
  %conv1 = trunc i64 %mul to i32, !dbg !3234
  %2 = load ptr, ptr %e820ext.addr, align 8, !dbg !3236
  %len = getelementptr inbounds %struct.setup_data, ptr %2, i32 0, i32 2, !dbg !3237
  store i32 %conv1, ptr %len, align 4, !dbg !3238
  %3 = load ptr, ptr %e820ext.addr, align 8, !dbg !3239
  %next = getelementptr inbounds %struct.setup_data, ptr %3, i32 0, i32 0, !dbg !3240
  store i64 0, ptr %next, align 8, !dbg !3241
  %4 = load ptr, ptr %params.addr, align 8, !dbg !3242
  %hdr = getelementptr inbounds %struct.boot_params, ptr %4, i32 0, i32 28, !dbg !3243
  %setup_data = getelementptr inbounds %struct.setup_header, ptr %hdr, i32 0, i32 34, !dbg !3244
  %5 = load i64, ptr %setup_data, align 1, !dbg !3244
  %6 = inttoptr i64 %5 to ptr, !dbg !3245
  store ptr %6, ptr %data, align 8, !dbg !3246
  br label %while.cond, !dbg !3247

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %data, align 8, !dbg !3248
  %tobool = icmp ne ptr %7, null, !dbg !3248
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3249

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %data, align 8, !dbg !3250
  %next2 = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 0, !dbg !3251
  %9 = load i64, ptr %next2, align 8, !dbg !3251
  %tobool3 = icmp ne i64 %9, 0, !dbg !3249
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ], !dbg !3252
  br i1 %10, label %while.body, label %while.end, !dbg !3247

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %data, align 8, !dbg !3253
  %next4 = getelementptr inbounds %struct.setup_data, ptr %11, i32 0, i32 0, !dbg !3254
  %12 = load i64, ptr %next4, align 8, !dbg !3254
  %13 = inttoptr i64 %12 to ptr, !dbg !3255
  store ptr %13, ptr %data, align 8, !dbg !3256
  br label %while.cond, !dbg !3247, !llvm.loop !3257

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %data, align 8, !dbg !3258
  %tobool5 = icmp ne ptr %14, null, !dbg !3258
  br i1 %tobool5, label %if.then, label %if.else, !dbg !3260

if.then:                                          ; preds = %while.end
  %15 = load ptr, ptr %e820ext.addr, align 8, !dbg !3261
  %16 = ptrtoint ptr %15 to i64, !dbg !3262
  %17 = load ptr, ptr %data, align 8, !dbg !3263
  %next6 = getelementptr inbounds %struct.setup_data, ptr %17, i32 0, i32 0, !dbg !3264
  store i64 %16, ptr %next6, align 8, !dbg !3265
  br label %if.end, !dbg !3263

if.else:                                          ; preds = %while.end
  %18 = load ptr, ptr %e820ext.addr, align 8, !dbg !3266
  %19 = ptrtoint ptr %18 to i64, !dbg !3267
  %20 = load ptr, ptr %params.addr, align 8, !dbg !3268
  %hdr7 = getelementptr inbounds %struct.boot_params, ptr %20, i32 0, i32 28, !dbg !3269
  %setup_data8 = getelementptr inbounds %struct.setup_header, ptr %hdr7, i32 0, i32 34, !dbg !3270
  store i64 %19, ptr %setup_data8, align 1, !dbg !3271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !3272
  ret void, !dbg !3272
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone noreturn nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint noredzone nounwind willreturn memory(read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone "no-builtins" }
attributes #11 = { nobuiltin noredzone noreturn "no-builtins" }
attributes #12 = { nobuiltin noredzone nounwind willreturn memory(read) "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!808, !809, !810, !811, !812}
!llvm.ident = !{!813}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memattr", scope: !2, file: !3, line: 29, type: !786, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.x86-stub.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/x86-stub\22 -D KBUILD_BASENAME=\22x86_stub\22 -D KBUILD_MODNAME=\22x86_stub\22 -D __KBUILD_MODNAME=kmod_x86_stub -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/x86-stub.ll drivers/firmware/efi/libstub/x86-stub.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !331, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/libstub/x86-stub.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a11dec91e24ad3592efce1c312555713")
!4 = !{!5, !16, !21, !28, !33, !48}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 376, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "EfiGcdMemoryTypeNonExistent", value: 0)
!10 = !DIEnumerator(name: "EfiGcdMemoryTypeReserved", value: 1)
!11 = !DIEnumerator(name: "EfiGcdMemoryTypeSystemMemory", value: 2)
!12 = !DIEnumerator(name: "EfiGcdMemoryTypeMemoryMappedIo", value: 3)
!13 = !DIEnumerator(name: "EfiGcdMemoryTypePersistent", value: 4)
!14 = !DIEnumerator(name: "EfiGcdMemoryTypeMoreReliable", value: 5)
!15 = !DIEnumerator(name: "EfiGcdMemoryTypeMaximum", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 243, baseType: !7, size: 32, elements: !17)
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!19 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!20 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_secureboot_mode", file: !22, line: 1137, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "efi_secureboot_mode_unset", value: 0)
!25 = !DIEnumerator(name: "efi_secureboot_mode_unknown", value: 1)
!26 = !DIEnumerator(name: "efi_secureboot_mode_disabled", value: 2)
!27 = !DIEnumerator(name: "efi_secureboot_mode_enabled", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 10, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "false", value: 0)
!32 = !DIEnumerator(name: "true", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 686, baseType: !7, size: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "EfiPciIoWidthUint8", value: 0)
!36 = !DIEnumerator(name: "EfiPciIoWidthUint16", value: 1)
!37 = !DIEnumerator(name: "EfiPciIoWidthUint32", value: 2)
!38 = !DIEnumerator(name: "EfiPciIoWidthUint64", value: 3)
!39 = !DIEnumerator(name: "EfiPciIoWidthFifoUint8", value: 4)
!40 = !DIEnumerator(name: "EfiPciIoWidthFifoUint16", value: 5)
!41 = !DIEnumerator(name: "EfiPciIoWidthFifoUint32", value: 6)
!42 = !DIEnumerator(name: "EfiPciIoWidthFifoUint64", value: 7)
!43 = !DIEnumerator(name: "EfiPciIoWidthFillUint8", value: 8)
!44 = !DIEnumerator(name: "EfiPciIoWidthFillUint16", value: 9)
!45 = !DIEnumerator(name: "EfiPciIoWidthFillUint32", value: 10)
!46 = !DIEnumerator(name: "EfiPciIoWidthFillUint64", value: 11)
!47 = !DIEnumerator(name: "EfiPciIoWidthMaximum", value: 12)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !49, line: 10, baseType: !7, size: 32, elements: !50)
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
!60 = !{!61, !62, !67, !69, !70, !110, !93, !301, !105, !157, !104, !199, !147, !303, !314, !315, !325, !177}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !63, line: 23, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !65, line: 31, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !63, line: 21, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !65, line: 27, baseType: !7)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !22, line: 250, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !6, line: 252, size: 3008, elements: !73)
!73 = !{!74, !253}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !6, line: 253, baseType: !75, size: 3008)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !6, line: 253, size: 3008, elements: !76)
!76 = !{!77, !86, !87, !88, !96, !100, !106, !111, !115, !125, !130, !134, !135, !139, !140, !141, !142, !143, !160, !161, !162, !167, !183, !187, !194, !201, !205, !209, !213, !214, !218, !219, !220, !224, !225, !226, !227, !228, !229, !233, !237, !241, !242, !248, !252}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !75, file: !6, line: 254, baseType: !78, size: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !22, line: 90, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 84, size: 192, elements: !80)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !79, file: !22, line: 85, baseType: !62, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !79, file: !22, line: 86, baseType: !67, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !79, file: !22, line: 87, baseType: !67, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !79, file: !22, line: 88, baseType: !67, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !79, file: !22, line: 89, baseType: !67, size: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !75, file: !6, line: 255, baseType: !61, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !75, file: !6, line: 256, baseType: !61, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !75, file: !6, line: 257, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !91)
!91 = !{!92, !93, !93, !69, !94}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !22, line: 47, baseType: !69)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !22, line: 50, baseType: !62)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !75, file: !6, line: 259, baseType: !97, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !99)
!99 = !{!92, !95, !69}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !75, file: !6, line: 261, baseType: !101, size: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !103)
!103 = !{!92, !104, !61, !104, !104, !105}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !75, file: !6, line: 264, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !109)
!109 = !{!92, !93, !69, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !75, file: !6, line: 266, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !114)
!114 = !{!92, !61}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !75, file: !6, line: 267, baseType: !116, size: 64, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !118)
!118 = !{!92, !67, !69, !119, !61, !124}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !6, line: 212, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !122)
!122 = !{null, !123, !61}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !6, line: 210, baseType: !61)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !75, file: !6, line: 270, baseType: !126, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !128)
!128 = !{!92, !123, !129, !62}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !6, line: 247, baseType: !16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !75, file: !6, line: 272, baseType: !131, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !133)
!133 = !{!92, !69, !124, !104}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !75, file: !6, line: 275, baseType: !61, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !75, file: !6, line: 276, baseType: !136, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !138)
!138 = !{!92, !123}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !75, file: !6, line: 277, baseType: !61, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !75, file: !6, line: 278, baseType: !61, size: 64, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !75, file: !6, line: 279, baseType: !61, size: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !75, file: !6, line: 280, baseType: !61, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !75, file: !6, line: 281, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !146)
!146 = !{!92, !147, !148, !110}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !22, line: 51, baseType: !61)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !22, line: 74, baseType: !150, align: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !151, line: 17, baseType: !152)
!151 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 15, size: 128, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !152, file: !151, line: 16, baseType: !155, size: 128)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !158)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !65, line: 21, baseType: !157)
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !{!159}
!159 = !DISubrange(count: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !75, file: !6, line: 283, baseType: !61, size: 64, offset: 1280)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !75, file: !6, line: 284, baseType: !61, size: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !75, file: !6, line: 285, baseType: !163, size: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !165)
!165 = !{!92, !93, !148, !61, !104, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !75, file: !6, line: 288, baseType: !168, size: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !170)
!170 = !{!92, !148, !171, !166}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !6, line: 176, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !22, line: 985, size: 32, elements: !175)
!175 = !{!176, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !22, line: 986, baseType: !177, size: 8)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !63, line: 17, baseType: !156)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !174, file: !22, line: 987, baseType: !177, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !174, file: !22, line: 988, baseType: !180, size: 16, offset: 16)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !63, line: 19, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !65, line: 24, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !75, file: !6, line: 291, baseType: !184, size: 64, offset: 1536)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !186)
!186 = !{!92, !148, !61}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !75, file: !6, line: 293, baseType: !188, size: 64, offset: 1600)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !190)
!190 = !{!92, !191, !147, !172, !61, !69, !166}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !192, line: 35, baseType: !193)
!192 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!193 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !75, file: !6, line: 297, baseType: !195, size: 64, offset: 1664)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !197)
!197 = !{!92, !147, !104, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !22, line: 49, baseType: !180)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !75, file: !6, line: 299, baseType: !202, size: 64, offset: 1728)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !204)
!204 = !{!92, !147, !92, !69, !199}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !75, file: !6, line: 303, baseType: !206, size: 64, offset: 1792)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !208)
!208 = !{!92, !147}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !75, file: !6, line: 304, baseType: !210, size: 64, offset: 1856)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !212)
!212 = !{!92, !147, !69}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !75, file: !6, line: 306, baseType: !61, size: 64, offset: 1920)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !75, file: !6, line: 307, baseType: !215, size: 64, offset: 1984)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !217)
!217 = !{!92, !69}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !75, file: !6, line: 308, baseType: !61, size: 64, offset: 2048)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !75, file: !6, line: 309, baseType: !61, size: 64, offset: 2112)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !75, file: !6, line: 310, baseType: !221, size: 64, offset: 2176)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !223)
!223 = !{!92, !147, !147, !147}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !75, file: !6, line: 313, baseType: !61, size: 64, offset: 2240)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !75, file: !6, line: 314, baseType: !61, size: 64, offset: 2304)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !75, file: !6, line: 315, baseType: !61, size: 64, offset: 2368)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !75, file: !6, line: 316, baseType: !61, size: 64, offset: 2432)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !75, file: !6, line: 317, baseType: !61, size: 64, offset: 2496)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !75, file: !6, line: 318, baseType: !230, size: 64, offset: 2560)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !232)
!232 = !{!92, !148, !61, !110}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !75, file: !6, line: 320, baseType: !234, size: 64, offset: 2624)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !236)
!236 = !{!92, !166, null}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !75, file: !6, line: 321, baseType: !238, size: 64, offset: 2688)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !240)
!240 = !{!92, !147, null}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !75, file: !6, line: 322, baseType: !61, size: 64, offset: 2752)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !75, file: !6, line: 323, baseType: !243, size: 64, offset: 2816)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !245)
!245 = !{null, !61, !246, !69}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !75, file: !6, line: 324, baseType: !249, size: 64, offset: 2880)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !251)
!251 = !{null, !61, !69, !157}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !75, file: !6, line: 325, baseType: !61, size: 64, offset: 2944)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !72, file: !6, line: 373, baseType: !254, size: 1600)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !6, line: 327, size: 1600, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !254, file: !6, line: 328, baseType: !78, size: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !254, file: !6, line: 329, baseType: !67, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !254, file: !6, line: 330, baseType: !67, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !254, file: !6, line: 331, baseType: !67, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !254, file: !6, line: 332, baseType: !67, size: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !254, file: !6, line: 333, baseType: !67, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !254, file: !6, line: 334, baseType: !67, size: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !254, file: !6, line: 335, baseType: !67, size: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !254, file: !6, line: 336, baseType: !67, size: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !254, file: !6, line: 337, baseType: !67, size: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !254, file: !6, line: 338, baseType: !67, size: 32, offset: 480)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !254, file: !6, line: 339, baseType: !67, size: 32, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !254, file: !6, line: 340, baseType: !67, size: 32, offset: 544)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !254, file: !6, line: 341, baseType: !67, size: 32, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !254, file: !6, line: 342, baseType: !67, size: 32, offset: 608)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !254, file: !6, line: 343, baseType: !67, size: 32, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !254, file: !6, line: 344, baseType: !67, size: 32, offset: 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !254, file: !6, line: 345, baseType: !67, size: 32, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !254, file: !6, line: 346, baseType: !67, size: 32, offset: 736)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !254, file: !6, line: 347, baseType: !67, size: 32, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !254, file: !6, line: 348, baseType: !67, size: 32, offset: 800)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !254, file: !6, line: 349, baseType: !67, size: 32, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !254, file: !6, line: 350, baseType: !67, size: 32, offset: 864)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !254, file: !6, line: 351, baseType: !67, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !254, file: !6, line: 352, baseType: !67, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !254, file: !6, line: 353, baseType: !67, size: 32, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !254, file: !6, line: 354, baseType: !67, size: 32, offset: 992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !254, file: !6, line: 355, baseType: !67, size: 32, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !254, file: !6, line: 356, baseType: !67, size: 32, offset: 1056)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !254, file: !6, line: 357, baseType: !67, size: 32, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !254, file: !6, line: 358, baseType: !67, size: 32, offset: 1120)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !254, file: !6, line: 359, baseType: !67, size: 32, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !254, file: !6, line: 360, baseType: !67, size: 32, offset: 1184)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !254, file: !6, line: 361, baseType: !67, size: 32, offset: 1216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !254, file: !6, line: 362, baseType: !67, size: 32, offset: 1248)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !254, file: !6, line: 363, baseType: !67, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !254, file: !6, line: 364, baseType: !67, size: 32, offset: 1312)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !254, file: !6, line: 365, baseType: !67, size: 32, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !254, file: !6, line: 366, baseType: !67, size: 32, offset: 1376)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !254, file: !6, line: 367, baseType: !67, size: 32, offset: 1408)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !254, file: !6, line: 368, baseType: !67, size: 32, offset: 1440)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !254, file: !6, line: 369, baseType: !67, size: 32, offset: 1472)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !254, file: !6, line: 370, baseType: !67, size: 32, offset: 1504)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !254, file: !6, line: 371, baseType: !67, size: 32, offset: 1536)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !254, file: !6, line: 372, baseType: !67, size: 32, offset: 1568)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !305, line: 53, size: 128, elements: !306)
!305 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!306 = !{!307, !308, !309, !310}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !305, line: 54, baseType: !64, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 55, baseType: !68, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !304, file: !305, line: 56, baseType: !68, size: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !304, file: !305, line: 57, baseType: !311, offset: 128)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: -1)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !192, line: 113, baseType: !62)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !22, line: 145, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 138, size: 320, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !22, line: 139, baseType: !67, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !317, file: !22, line: 140, baseType: !67, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !317, file: !22, line: 141, baseType: !62, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !317, file: !22, line: 142, baseType: !62, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !317, file: !22, line: 143, baseType: !62, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !317, file: !22, line: 144, baseType: !62, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !305, line: 143, size: 160, elements: !327)
!327 = !{!328, !329, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !326, file: !305, line: 144, baseType: !64, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !326, file: !305, line: 145, baseType: !64, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !305, line: 146, baseType: !68, size: 32, offset: 128)
!331 = !{!332, !337, !342, !347, !352, !357, !362, !367, !372, !377, !382, !584, !0, !653, !692, !697, !715, !717, !743, !748, !753, !757, !762, !767, !772, !774, !779, !784}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 400, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 50)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 416, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 52)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 512, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 64)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 456, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 57)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 900, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 472, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 59)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 910, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 352, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 44)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 926, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 272, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 34)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 936, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 304, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 38)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 985, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 240, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 30)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 999, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 280, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 35)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "efi_system_table", scope: !2, file: !3, line: 26, type: !384, isLocal: false, isDefinition: true)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_t", file: !22, line: 533, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 516, size: 960, elements: !388)
!388 = !{!389, !567}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !22, line: 517, baseType: !390, size: 960)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !22, line: 517, size: 960, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !422, !423, !443, !444, !445, !564, !565, !566}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !390, file: !22, line: 518, baseType: !78, size: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !390, file: !22, line: 519, baseType: !69, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !390, file: !22, line: 520, baseType: !67, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !390, file: !22, line: 521, baseType: !69, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !390, file: !22, line: 522, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_input_protocol_t", file: !22, line: 513, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_input_protocol", file: !6, line: 487, size: 192, elements: !400)
!400 = !{!401, !416}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !6, line: 488, baseType: !402, size: 192)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !6, line: 488, size: 192, elements: !403)
!403 = !{!404, !405, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !402, file: !6, line: 489, baseType: !61, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !402, file: !6, line: 490, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !408)
!408 = !{!92, !397, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_input_key_t", file: !6, line: 485, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 482, size: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "scan_code", scope: !411, file: !6, line: 483, baseType: !180, size: 16)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_char", scope: !411, file: !6, line: 484, baseType: !200, size: 16, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !402, file: !6, line: 492, baseType: !123, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !399, file: !6, line: 498, baseType: !417, size: 96)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !6, line: 494, size: 96, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !417, file: !6, line: 495, baseType: !67, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !417, file: !6, line: 496, baseType: !67, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !417, file: !6, line: 497, baseType: !67, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !390, file: !22, line: 523, baseType: !69, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !390, file: !22, line: 524, baseType: !424, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_output_protocol_t", file: !22, line: 514, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_output_protocol", file: !6, line: 503, size: 192, elements: !427)
!427 = !{!428, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !6, line: 504, baseType: !429, size: 192)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !426, file: !6, line: 504, size: 192, elements: !430)
!430 = !{!431, !432, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !429, file: !6, line: 505, baseType: !61, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !429, file: !6, line: 506, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !435)
!435 = !{!92, !424, !199}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !429, file: !6, line: 508, baseType: !61, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !426, file: !6, line: 514, baseType: !438, size: 96)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !426, file: !6, line: 510, size: 96, elements: !439)
!439 = !{!440, !441, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !438, file: !6, line: 511, baseType: !67, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !438, file: !6, line: 512, baseType: !67, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !438, file: !6, line: 513, baseType: !67, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !390, file: !22, line: 525, baseType: !69, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !390, file: !22, line: 526, baseType: !69, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !390, file: !22, line: 527, baseType: !446, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_t", file: !22, line: 336, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 317, size: 1088, elements: !449)
!449 = !{!450, !545}
!450 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !22, line: 318, baseType: !451, size: 1088)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !22, line: 318, size: 1088, elements: !452)
!452 = !{!453, !454, !483, !487, !493, !497, !501, !502, !506, !510, !514, !518, !522, !535, !541}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !451, file: !22, line: 319, baseType: !78, size: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !451, file: !22, line: 320, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !457)
!457 = !{!92, !458, !476}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !22, line: 242, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 230, size: 128, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !460, file: !22, line: 231, baseType: !180, size: 16)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !460, file: !22, line: 232, baseType: !177, size: 8, offset: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !460, file: !22, line: 233, baseType: !177, size: 8, offset: 24)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !460, file: !22, line: 234, baseType: !177, size: 8, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !460, file: !22, line: 235, baseType: !177, size: 8, offset: 40)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !460, file: !22, line: 236, baseType: !177, size: 8, offset: 48)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !460, file: !22, line: 237, baseType: !177, size: 8, offset: 56)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !460, file: !22, line: 238, baseType: !67, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !460, file: !22, line: 239, baseType: !471, size: 16, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !63, line: 18, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !65, line: 23, baseType: !473)
!473 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !460, file: !22, line: 240, baseType: !177, size: 8, offset: 112)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !460, file: !22, line: 241, baseType: !177, size: 8, offset: 120)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !22, line: 248, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 244, size: 96, elements: !479)
!479 = !{!480, !481, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !478, file: !22, line: 245, baseType: !67, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !478, file: !22, line: 246, baseType: !67, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !478, file: !22, line: 247, baseType: !177, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !451, file: !22, line: 321, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !486)
!486 = !{!92, !458}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !451, file: !22, line: 322, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !490)
!490 = !{!92, !491, !491, !458}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !22, line: 48, baseType: !177)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !451, file: !22, line: 323, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !496)
!496 = !{!92, !492, !458}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !451, file: !22, line: 324, baseType: !498, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !500)
!500 = !{!92, !69, !69, !67, !315}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !451, file: !22, line: 325, baseType: !61, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !451, file: !22, line: 326, baseType: !503, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !505)
!505 = !{!92, !199, !148, !105, !104, !61}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !451, file: !22, line: 327, baseType: !507, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !509)
!509 = !{!92, !104, !199, !148}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !451, file: !22, line: 328, baseType: !511, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !513)
!513 = !{!92, !199, !148, !67, !69, !61}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !451, file: !22, line: 329, baseType: !515, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !517)
!517 = !{!92, !105}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !451, file: !22, line: 330, baseType: !519, size: 64, offset: 832)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !521)
!521 = !{null, !93, !92, !69, !199}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !451, file: !22, line: 331, baseType: !523, size: 64, offset: 896)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !525)
!525 = !{!92, !526, !69, !69}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !22, line: 152, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 147, size: 224, elements: !530)
!530 = !{!531, !532, !533, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !529, file: !22, line: 148, baseType: !149, size: 128, align: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !529, file: !22, line: 149, baseType: !67, size: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !22, line: 150, baseType: !67, size: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !529, file: !22, line: 151, baseType: !67, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !451, file: !22, line: 332, baseType: !536, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !538)
!538 = !{!92, !526, !69, !539, !540}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !451, file: !22, line: 333, baseType: !542, size: 64, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !544)
!544 = !{!92, !67, !539, !539, !539}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !448, file: !22, line: 335, baseType: !546, size: 640)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_32_t", file: !22, line: 281, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 265, size: 640, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !547, file: !22, line: 266, baseType: !78, size: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !547, file: !22, line: 267, baseType: !67, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !547, file: !22, line: 268, baseType: !67, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !547, file: !22, line: 269, baseType: !67, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !547, file: !22, line: 270, baseType: !67, size: 32, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !547, file: !22, line: 271, baseType: !67, size: 32, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !547, file: !22, line: 272, baseType: !67, size: 32, offset: 352)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !547, file: !22, line: 273, baseType: !67, size: 32, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !547, file: !22, line: 274, baseType: !67, size: 32, offset: 416)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !547, file: !22, line: 275, baseType: !67, size: 32, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !547, file: !22, line: 276, baseType: !67, size: 32, offset: 480)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !547, file: !22, line: 277, baseType: !67, size: 32, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !547, file: !22, line: 278, baseType: !67, size: 32, offset: 544)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !547, file: !22, line: 279, baseType: !67, size: 32, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !547, file: !22, line: 280, baseType: !67, size: 32, offset: 608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !390, file: !22, line: 528, baseType: !70, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !390, file: !22, line: 529, baseType: !69, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !390, file: !22, line: 530, baseType: !69, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !387, file: !22, line: 532, baseType: !568, size: 576)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_32_t", file: !22, line: 511, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 497, size: 576, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !569, file: !22, line: 498, baseType: !78, size: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !569, file: !22, line: 499, baseType: !67, size: 32, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !569, file: !22, line: 500, baseType: !67, size: 32, offset: 224)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !569, file: !22, line: 501, baseType: !67, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !569, file: !22, line: 502, baseType: !67, size: 32, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !569, file: !22, line: 503, baseType: !67, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !569, file: !22, line: 504, baseType: !67, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !569, file: !22, line: 505, baseType: !67, size: 32, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !569, file: !22, line: 506, baseType: !67, size: 32, offset: 416)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !569, file: !22, line: 507, baseType: !67, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !569, file: !22, line: 508, baseType: !67, size: 32, offset: 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !569, file: !22, line: 509, baseType: !67, size: 32, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !569, file: !22, line: 510, baseType: !67, size: 32, offset: 544)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "efi_dxe_table", scope: !2, file: !3, line: 27, type: !586, isLocal: false, isDefinition: true)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_dxe_services_table_t", file: !6, line: 44, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_dxe_services_table", file: !6, line: 399, size: 1344, elements: !590)
!590 = !{!591, !631}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !6, line: 400, baseType: !592, size: 1344)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !6, line: 400, size: 1344, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !615, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !592, file: !6, line: 401, baseType: !78, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "add_memory_space", scope: !592, file: !6, line: 402, baseType: !61, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_memory_space", scope: !592, file: !6, line: 403, baseType: !61, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "free_memory_space", scope: !592, file: !6, line: 404, baseType: !61, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory_space", scope: !592, file: !6, line: 405, baseType: !61, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_space_descriptor", scope: !592, file: !6, line: 406, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !602)
!602 = !{!92, !95, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_gcd_memory_space_desc_t", file: !6, line: 394, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 386, size: 448, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !613, !614}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !605, file: !6, line: 387, baseType: !95, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !605, file: !6, line: 388, baseType: !62, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !605, file: !6, line: 389, baseType: !62, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !605, file: !6, line: 390, baseType: !62, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gcd_memory_type", scope: !605, file: !6, line: 391, baseType: !612, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_gcd_memory_type_t", file: !6, line: 384, baseType: !5)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "image_handle", scope: !605, file: !6, line: 392, baseType: !61, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !605, file: !6, line: 393, baseType: !61, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_space_attributes", scope: !592, file: !6, line: 408, baseType: !616, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !618)
!618 = !{!92, !95, !62, !62}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_space_map", scope: !592, file: !6, line: 410, baseType: !61, size: 64, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "add_io_space", scope: !592, file: !6, line: 411, baseType: !61, size: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_io_space", scope: !592, file: !6, line: 412, baseType: !61, size: 64, offset: 704)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "free_io_space", scope: !592, file: !6, line: 413, baseType: !61, size: 64, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "remove_io_space", scope: !592, file: !6, line: 414, baseType: !61, size: 64, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_io_space_descriptor", scope: !592, file: !6, line: 415, baseType: !61, size: 64, offset: 896)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get_io_space_map", scope: !592, file: !6, line: 416, baseType: !61, size: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !592, file: !6, line: 417, baseType: !61, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !592, file: !6, line: 418, baseType: !61, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !592, file: !6, line: 419, baseType: !61, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "process_firmware_volume", scope: !592, file: !6, line: 420, baseType: !61, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_space_capabilities", scope: !592, file: !6, line: 421, baseType: !61, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !589, file: !6, line: 443, baseType: !632, size: 768)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !6, line: 423, size: 768, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !632, file: !6, line: 424, baseType: !78, size: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "add_memory_space", scope: !632, file: !6, line: 425, baseType: !67, size: 32, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_memory_space", scope: !632, file: !6, line: 426, baseType: !67, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "free_memory_space", scope: !632, file: !6, line: 427, baseType: !67, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory_space", scope: !632, file: !6, line: 428, baseType: !67, size: 32, offset: 288)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_space_descriptor", scope: !632, file: !6, line: 429, baseType: !67, size: 32, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_space_attributes", scope: !632, file: !6, line: 430, baseType: !67, size: 32, offset: 352)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_space_map", scope: !632, file: !6, line: 431, baseType: !67, size: 32, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "add_io_space", scope: !632, file: !6, line: 432, baseType: !67, size: 32, offset: 416)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_io_space", scope: !632, file: !6, line: 433, baseType: !67, size: 32, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "free_io_space", scope: !632, file: !6, line: 434, baseType: !67, size: 32, offset: 480)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "remove_io_space", scope: !632, file: !6, line: 435, baseType: !67, size: 32, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_io_space_descriptor", scope: !632, file: !6, line: 436, baseType: !67, size: 32, offset: 544)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_io_space_map", scope: !632, file: !6, line: 437, baseType: !67, size: 32, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !632, file: !6, line: 438, baseType: !67, size: 32, offset: 608)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !632, file: !6, line: 439, baseType: !67, size: 32, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !632, file: !6, line: 440, baseType: !67, size: 32, offset: 672)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "process_firmware_volume", scope: !632, file: !6, line: 441, baseType: !67, size: 32, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_space_capabilities", scope: !632, file: !6, line: 442, baseType: !67, size: 32, offset: 736)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "image", scope: !2, file: !3, line: 28, type: !655, isLocal: true, isDefinition: true)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_loaded_image_t", file: !6, line: 610, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 579, size: 768, elements: !658)
!658 = !{!659, !676}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !6, line: 580, baseType: !660, size: 768)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !6, line: 580, size: 768, elements: !661)
!661 = !{!662, !663, !664, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !660, file: !6, line: 581, baseType: !67, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !660, file: !6, line: 582, baseType: !147, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !660, file: !6, line: 583, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !660, file: !6, line: 584, baseType: !147, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !660, file: !6, line: 585, baseType: !61, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !660, file: !6, line: 586, baseType: !61, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !660, file: !6, line: 587, baseType: !67, size: 32, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !660, file: !6, line: 588, baseType: !61, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !660, file: !6, line: 589, baseType: !61, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !660, file: !6, line: 590, baseType: !64, size: 64, align: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !660, file: !6, line: 591, baseType: !7, size: 32, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !660, file: !6, line: 592, baseType: !7, size: 32, offset: 672)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !660, file: !6, line: 593, baseType: !206, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !657, file: !6, line: 609, baseType: !677, size: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !6, line: 595, size: 512, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !677, file: !6, line: 596, baseType: !67, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !677, file: !6, line: 597, baseType: !67, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !677, file: !6, line: 598, baseType: !67, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !677, file: !6, line: 599, baseType: !67, size: 32, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !677, file: !6, line: 600, baseType: !67, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !677, file: !6, line: 601, baseType: !67, size: 32, offset: 160)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !677, file: !6, line: 602, baseType: !67, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !677, file: !6, line: 603, baseType: !67, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !677, file: !6, line: 604, baseType: !67, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !677, file: !6, line: 605, baseType: !64, size: 64, align: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !677, file: !6, line: 606, baseType: !67, size: 32, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !677, file: !6, line: 607, baseType: !67, size: 32, offset: 416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !677, file: !6, line: 608, baseType: !67, size: 32, offset: 448)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 448, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 56)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "opts", scope: !699, file: !3, line: 790, type: !711, isLocal: true, isDefinition: true)
!699 = distinct !DISubprogram(name: "parse_options", scope: !3, file: !3, line: 788, type: !700, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!700 = !DISubroutineType(types: !701)
!701 = !{!92, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!704 = !{!705, !706, !708}
!705 = !DILocalVariable(name: "cmdline", arg: 1, scope: !699, file: !3, line: 788, type: !702)
!706 = !DILocalVariable(name: "i", scope: !707, file: !3, line: 794, type: !93)
!707 = distinct !DILexicalBlock(scope: !699, file: !3, line: 794, column: 2)
!708 = !DILocalVariable(name: "p", scope: !709, file: !3, line: 795, type: !702)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 794, column: 45)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 794, column: 2)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 448, elements: !712)
!712 = !{!713, !714}
!713 = !DISubrange(count: 4)
!714 = !DISubrange(count: 14)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "cmdline_memmap_override", scope: !2, file: !3, line: 786, type: !702, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "ami", scope: !719, file: !3, line: 819, type: !739, isLocal: true, isDefinition: true)
!719 = distinct !DISubprogram(name: "efi_decompress_kernel", scope: !3, file: !3, line: 806, type: !720, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!92, !104}
!722 = !{!723, !724, !725, !726, !727, !728, !729, !733, !735, !736}
!723 = !DILocalVariable(name: "kernel_entry", arg: 1, scope: !719, file: !3, line: 806, type: !104)
!724 = !DILocalVariable(name: "virt_addr", scope: !719, file: !3, line: 808, type: !69)
!725 = !DILocalVariable(name: "addr", scope: !719, file: !3, line: 809, type: !69)
!726 = !DILocalVariable(name: "alloc_size", scope: !719, file: !3, line: 809, type: !69)
!727 = !DILocalVariable(name: "entry", scope: !719, file: !3, line: 809, type: !69)
!728 = !DILocalVariable(name: "status", scope: !719, file: !3, line: 810, type: !92)
!729 = !DILocalVariable(name: "seed", scope: !719, file: !3, line: 811, type: !730)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 2)
!733 = !DILocalVariable(name: "__UNIQUE_ID___x456", scope: !734, file: !3, line: 814, type: !69)
!734 = distinct !DILexicalBlock(scope: !719, file: !3, line: 814, column: 15)
!735 = !DILocalVariable(name: "__UNIQUE_ID___y457", scope: !734, file: !3, line: 814, type: !69)
!736 = !DILocalVariable(name: "range", scope: !737, file: !3, line: 818, type: !62)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 817, column: 57)
!738 = distinct !DILexicalBlock(scope: !719, file: !3, line: 817, column: 6)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 320, elements: !741)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!741 = !{!742}
!742 = !DISubrange(count: 20)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !3, line: 835, type: !745, isLocal: true, isDefinition: true)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 584, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 73)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 838, type: !750, isLocal: true, isDefinition: true)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 552, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 69)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 778, type: !755, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 32, elements: !756)
!756 = !{!713}
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 783, type: !759, isLocal: true, isDefinition: true)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 296, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 37)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !764, isLocal: true, isDefinition: true)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 424, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 53)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !769, isLocal: true, isDefinition: true)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 368, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 46)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !759, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 288, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 36)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !3, line: 713, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 40, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 5)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !781, isLocal: true, isDefinition: true)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_attribute_protocol_t", file: !6, line: 446, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_memory_attribute_protocol", file: !6, line: 448, size: 192, elements: !789)
!789 = !{!790, !802}
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !6, line: 449, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !6, line: 449, size: 192, elements: !792)
!792 = !{!793, !797, !801}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_attributes", scope: !791, file: !6, line: 450, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !796)
!796 = !{!92, !786, !95, !62, !539}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_attributes", scope: !791, file: !6, line: 453, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !800)
!800 = !{!92, !786, !95, !62, !62}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clear_memory_attributes", scope: !791, file: !6, line: 456, baseType: !798, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !788, file: !6, line: 463, baseType: !803, size: 96)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !788, file: !6, line: 459, size: 96, elements: !804)
!804 = !{!805, !806, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_attributes", scope: !803, file: !6, line: 460, baseType: !67, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "set_memory_attributes", scope: !803, file: !6, line: 461, baseType: !67, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "clear_memory_attributes", scope: !803, file: !6, line: 462, baseType: !67, size: 32, offset: 64)
!808 = !{i32 7, !"Dwarf Version", i32 5}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 2}
!811 = !{i32 8, !"PIC Level", i32 2}
!812 = !{i32 1, !"Code Model", i32 1}
!813 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!814 = distinct !DISubprogram(name: "efi_adjust_memory_range_protection", scope: !3, file: !3, line: 228, type: !815, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!92, !69, !69}
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !830, !832, !836, !841, !843, !845, !850, !852, !853, !855, !856}
!818 = !DILocalVariable(name: "start", arg: 1, scope: !814, file: !3, line: 228, type: !69)
!819 = !DILocalVariable(name: "size", arg: 2, scope: !814, file: !3, line: 229, type: !69)
!820 = !DILocalVariable(name: "status", scope: !814, file: !3, line: 231, type: !92)
!821 = !DILocalVariable(name: "desc", scope: !814, file: !3, line: 232, type: !604)
!822 = !DILocalVariable(name: "end", scope: !814, file: !3, line: 233, type: !69)
!823 = !DILocalVariable(name: "next", scope: !814, file: !3, line: 233, type: !69)
!824 = !DILocalVariable(name: "rounded_start", scope: !814, file: !3, line: 234, type: !69)
!825 = !DILocalVariable(name: "rounded_end", scope: !814, file: !3, line: 234, type: !69)
!826 = !DILocalVariable(name: "unprotect_start", scope: !814, file: !3, line: 235, type: !69)
!827 = !DILocalVariable(name: "unprotect_size", scope: !814, file: !3, line: 235, type: !69)
!828 = !DILocalVariable(name: "__x", scope: !829, file: !3, line: 237, type: !69)
!829 = distinct !DILexicalBlock(scope: !814, file: !3, line: 237, column: 18)
!830 = !DILocalVariable(name: "__y", scope: !831, file: !3, line: 238, type: !69)
!831 = distinct !DILexicalBlock(scope: !814, file: !3, line: 238, column: 16)
!832 = !DILocalVariable(name: "__inst", scope: !833, file: !3, line: 241, type: !786)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 241, column: 12)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 240, column: 23)
!835 = distinct !DILexicalBlock(scope: !814, file: !3, line: 240, column: 6)
!836 = !DILocalVariable(name: "__pad", scope: !837, file: !3, line: 241, type: !838)
!837 = distinct !DILexicalBlock(scope: !833, file: !3, line: 241, column: 12)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 3)
!841 = !DILocalVariable(name: "__inst", scope: !842, file: !3, line: 250, type: !786)
!842 = distinct !DILexicalBlock(scope: !834, file: !3, line: 250, column: 12)
!843 = !DILocalVariable(name: "__pad", scope: !844, file: !3, line: 250, type: !838)
!844 = distinct !DILexicalBlock(scope: !842, file: !3, line: 250, column: 12)
!845 = !DILocalVariable(name: "__pad", scope: !846, file: !3, line: 270, type: !838)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 270, column: 12)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 268, column: 54)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 268, column: 2)
!849 = distinct !DILexicalBlock(scope: !814, file: !3, line: 268, column: 2)
!850 = !DILocalVariable(name: "__UNIQUE_ID___x404", scope: !851, file: !3, line: 286, type: !69)
!851 = distinct !DILexicalBlock(scope: !847, file: !3, line: 286, column: 21)
!852 = !DILocalVariable(name: "__UNIQUE_ID___y405", scope: !851, file: !3, line: 286, type: !69)
!853 = !DILocalVariable(name: "__UNIQUE_ID___x406", scope: !854, file: !3, line: 287, type: !69)
!854 = distinct !DILexicalBlock(scope: !847, file: !3, line: 287, column: 20)
!855 = !DILocalVariable(name: "__UNIQUE_ID___y407", scope: !854, file: !3, line: 287, type: !69)
!856 = !DILocalVariable(name: "__pad", scope: !857, file: !3, line: 289, type: !838)
!857 = distinct !DILexicalBlock(scope: !847, file: !3, line: 289, column: 12)
!858 = !DILocation(line: 228, column: 63, scope: !814)
!859 = !DILocation(line: 229, column: 21, scope: !814)
!860 = !DILocation(line: 231, column: 2, scope: !814)
!861 = !DILocation(line: 231, column: 15, scope: !814)
!862 = !DILocation(line: 232, column: 2, scope: !814)
!863 = !DILocation(line: 232, column: 30, scope: !814)
!864 = !DILocation(line: 233, column: 2, scope: !814)
!865 = !DILocation(line: 233, column: 16, scope: !814)
!866 = !DILocation(line: 233, column: 21, scope: !814)
!867 = !DILocation(line: 234, column: 2, scope: !814)
!868 = !DILocation(line: 234, column: 16, scope: !814)
!869 = !DILocation(line: 234, column: 31, scope: !814)
!870 = !DILocation(line: 235, column: 2, scope: !814)
!871 = !DILocation(line: 235, column: 16, scope: !814)
!872 = !DILocation(line: 235, column: 33, scope: !814)
!873 = !DILocation(line: 237, column: 18, scope: !829)
!874 = !DILocation(line: 237, column: 18, scope: !814)
!875 = !DILocation(line: 237, column: 16, scope: !814)
!876 = !DILocation(line: 238, column: 16, scope: !831)
!877 = !DILocation(line: 238, column: 16, scope: !814)
!878 = !DILocation(line: 238, column: 14, scope: !814)
!879 = !DILocation(line: 240, column: 6, scope: !835)
!880 = !DILocation(line: 240, column: 14, scope: !835)
!881 = !DILocation(line: 240, column: 6, scope: !814)
!882 = !DILocation(line: 241, column: 12, scope: !833)
!883 = !DILocation(line: 241, column: 12, scope: !837)
!884 = !DILocation(line: 241, column: 12, scope: !885)
!885 = distinct !DILexicalBlock(scope: !837, file: !3, line: 241, column: 12)
!886 = !DILocation(line: 241, column: 12, scope: !887)
!887 = distinct !DILexicalBlock(scope: !885, file: !3, line: 241, column: 12)
!888 = !DILocation(line: 241, column: 12, scope: !834)
!889 = !DILocation(line: 241, column: 10, scope: !834)
!890 = !DILocation(line: 245, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !834, file: !3, line: 245, column: 7)
!892 = !DILocation(line: 245, column: 14, scope: !891)
!893 = !DILocation(line: 245, column: 7, scope: !834)
!894 = !DILocation(line: 246, column: 4, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !3, line: 245, column: 30)
!896 = !DILocation(line: 247, column: 11, scope: !895)
!897 = !DILocation(line: 247, column: 4, scope: !895)
!898 = !DILocation(line: 250, column: 12, scope: !842)
!899 = !DILocation(line: 250, column: 12, scope: !844)
!900 = !DILocation(line: 250, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !844, file: !3, line: 250, column: 12)
!902 = !DILocation(line: 250, column: 12, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !3, line: 250, column: 12)
!904 = !DILocation(line: 250, column: 12, scope: !834)
!905 = !DILocation(line: 250, column: 10, scope: !834)
!906 = !DILocation(line: 254, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !834, file: !3, line: 254, column: 7)
!908 = !DILocation(line: 254, column: 14, scope: !907)
!909 = !DILocation(line: 254, column: 7, scope: !834)
!910 = !DILocation(line: 255, column: 4, scope: !907)
!911 = !DILocation(line: 256, column: 10, scope: !834)
!912 = !DILocation(line: 256, column: 3, scope: !834)
!913 = !DILocation(line: 259, column: 6, scope: !914)
!914 = distinct !DILexicalBlock(scope: !814, file: !3, line: 259, column: 6)
!915 = !DILocation(line: 259, column: 20, scope: !914)
!916 = !DILocation(line: 259, column: 6, scope: !814)
!917 = !DILocation(line: 260, column: 3, scope: !914)
!918 = !DILocation(line: 268, column: 13, scope: !849)
!919 = !DILocation(line: 268, column: 21, scope: !849)
!920 = !DILocation(line: 268, column: 19, scope: !849)
!921 = !DILocation(line: 268, column: 11, scope: !849)
!922 = !DILocation(line: 268, column: 7, scope: !849)
!923 = !DILocation(line: 268, column: 27, scope: !848)
!924 = !DILocation(line: 268, column: 35, scope: !848)
!925 = !DILocation(line: 268, column: 33, scope: !848)
!926 = !DILocation(line: 268, column: 2, scope: !849)
!927 = !DILocation(line: 270, column: 12, scope: !847)
!928 = !DILocation(line: 270, column: 12, scope: !846)
!929 = !DILocation(line: 270, column: 12, scope: !930)
!930 = distinct !DILexicalBlock(scope: !846, file: !3, line: 270, column: 12)
!931 = !DILocation(line: 270, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !930, file: !3, line: 270, column: 12)
!933 = !DILocation(line: 270, column: 10, scope: !847)
!934 = !DILocation(line: 272, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !847, file: !3, line: 272, column: 7)
!936 = !DILocation(line: 272, column: 14, scope: !935)
!937 = !DILocation(line: 272, column: 7, scope: !847)
!938 = !DILocation(line: 273, column: 4, scope: !935)
!939 = !DILocation(line: 275, column: 15, scope: !847)
!940 = !DILocation(line: 275, column: 35, scope: !847)
!941 = !DILocation(line: 275, column: 28, scope: !847)
!942 = !DILocation(line: 275, column: 8, scope: !847)
!943 = !DILocation(line: 282, column: 12, scope: !944)
!944 = distinct !DILexicalBlock(scope: !847, file: !3, line: 282, column: 7)
!945 = !DILocation(line: 282, column: 28, scope: !944)
!946 = !DILocation(line: 282, column: 60, scope: !944)
!947 = !DILocation(line: 283, column: 13, scope: !944)
!948 = !DILocation(line: 283, column: 24, scope: !944)
!949 = !DILocation(line: 283, column: 59, scope: !944)
!950 = !DILocation(line: 282, column: 7, scope: !847)
!951 = !DILocation(line: 284, column: 4, scope: !944)
!952 = !DILocation(line: 286, column: 21, scope: !851)
!953 = !DILocation(line: 286, column: 21, scope: !847)
!954 = !DILocation(line: 286, column: 19, scope: !847)
!955 = !DILocation(line: 287, column: 20, scope: !854)
!956 = !DILocation(line: 287, column: 20, scope: !847)
!957 = !DILocation(line: 287, column: 45, scope: !847)
!958 = !DILocation(line: 287, column: 43, scope: !847)
!959 = !DILocation(line: 287, column: 18, scope: !847)
!960 = !DILocation(line: 289, column: 12, scope: !847)
!961 = !DILocation(line: 289, column: 12, scope: !857)
!962 = !DILocation(line: 289, column: 12, scope: !963)
!963 = distinct !DILexicalBlock(scope: !857, file: !3, line: 289, column: 12)
!964 = !DILocation(line: 289, column: 12, scope: !965)
!965 = distinct !DILexicalBlock(scope: !963, file: !3, line: 289, column: 12)
!966 = !DILocation(line: 289, column: 10, scope: !847)
!967 = !DILocation(line: 293, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !847, file: !3, line: 293, column: 7)
!969 = !DILocation(line: 293, column: 14, scope: !968)
!970 = !DILocation(line: 293, column: 7, scope: !847)
!971 = !DILocation(line: 294, column: 4, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !3, line: 293, column: 30)
!973 = !DILocation(line: 298, column: 4, scope: !972)
!974 = !DILocation(line: 300, column: 2, scope: !847)
!975 = !DILocation(line: 268, column: 48, scope: !848)
!976 = !DILocation(line: 268, column: 46, scope: !848)
!977 = !DILocation(line: 268, column: 2, scope: !848)
!978 = distinct !{!978, !926, !979, !980, !981}
!979 = !DILocation(line: 300, column: 2, scope: !849)
!980 = !{!"llvm.loop.mustprogress"}
!981 = !{!"llvm.loop.unroll.disable"}
!982 = !DILocation(line: 301, column: 2, scope: !814)
!983 = !DILocation(line: 302, column: 1, scope: !814)
!984 = distinct !DISubprogram(name: "efi_is_native", scope: !985, file: !985, line: 205, type: !986, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!985 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!986 = !DISubroutineType(types: !987)
!987 = !{!191}
!988 = !DILocation(line: 207, column: 9, scope: !984)
!989 = !DILocation(line: 207, column: 2, scope: !984)
!990 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !985, file: !985, line: 346, type: !991, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!92, !62}
!993 = !{!994}
!994 = !DILocalVariable(name: "status", arg: 1, scope: !990, file: !985, line: 346, type: !62)
!995 = !DILocation(line: 346, column: 57, scope: !990)
!996 = !DILocation(line: 349, column: 21, scope: !990)
!997 = !DILocation(line: 349, column: 15, scope: !990)
!998 = !DILocation(line: 349, column: 9, scope: !990)
!999 = !DILocation(line: 349, column: 2, scope: !990)
!1000 = !DISubprogram(name: "__efi64_thunk", scope: !985, file: !985, line: 158, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!62, !67, null}
!1003 = !DISubprogram(name: "efi_printk", scope: !6, file: !6, line: 972, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!93, !702, null}
!1006 = distinct !DISubprogram(name: "efi_pe_entry", scope: !3, file: !3, line: 469, type: !1007, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1008)
!1008 = !{!92, !147, !665}
!1009 = !{!1010, !1011, !1012, !1013, !1330, !1332, !1333, !1334, !1335, !1336}
!1010 = !DILocalVariable(name: "handle", arg: 1, scope: !1006, file: !3, line: 469, type: !147)
!1011 = !DILocalVariable(name: "sys_table_arg", arg: 2, scope: !1006, file: !3, line: 470, type: !665)
!1012 = !DILocalVariable(name: "proto", scope: !1006, file: !3, line: 472, type: !149)
!1013 = !DILocalVariable(name: "boot_params", scope: !1006, file: !3, line: 473, type: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !305, line: 186, size: 32768, elements: !1016)
!1016 = !{!1017, !1058, !1071, !1073, !1074, !1082, !1083, !1087, !1088, !1089, !1096, !1103, !1104, !1105, !1106, !1110, !1111, !1119, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1143, !1185, !1187, !1189, !1191, !1195, !1326}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !1015, file: !305, line: 187, baseType: !1018, size: 512)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !1019, line: 11, size: 512, elements: !1020)
!1019 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !1018, file: !1019, line: 12, baseType: !156, size: 8)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !1018, file: !1019, line: 13, baseType: !156, size: 8, offset: 8)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !1018, file: !1019, line: 14, baseType: !181, size: 16, offset: 16)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !1018, file: !1019, line: 15, baseType: !181, size: 16, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !1018, file: !1019, line: 16, baseType: !156, size: 8, offset: 48)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !1018, file: !1019, line: 17, baseType: !156, size: 8, offset: 56)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !1019, line: 18, baseType: !156, size: 8, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !1018, file: !1019, line: 19, baseType: !156, size: 8, offset: 72)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !1018, file: !1019, line: 20, baseType: !181, size: 16, offset: 80)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !1018, file: !1019, line: 21, baseType: !181, size: 16, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !1018, file: !1019, line: 22, baseType: !156, size: 8, offset: 112)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !1018, file: !1019, line: 23, baseType: !156, size: 8, offset: 120)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !1018, file: !1019, line: 24, baseType: !181, size: 16, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !1018, file: !1019, line: 27, baseType: !181, size: 16, offset: 144)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !1018, file: !1019, line: 28, baseType: !181, size: 16, offset: 160)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !1018, file: !1019, line: 29, baseType: !181, size: 16, offset: 176)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !1018, file: !1019, line: 30, baseType: !68, size: 32, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !1018, file: !1019, line: 31, baseType: !68, size: 32, offset: 224)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !1018, file: !1019, line: 32, baseType: !181, size: 16, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !1018, file: !1019, line: 32, baseType: !181, size: 16, offset: 272)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !1018, file: !1019, line: 33, baseType: !181, size: 16, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !1018, file: !1019, line: 34, baseType: !156, size: 8, offset: 304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !1018, file: !1019, line: 35, baseType: !156, size: 8, offset: 312)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !1018, file: !1019, line: 36, baseType: !156, size: 8, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !1018, file: !1019, line: 37, baseType: !156, size: 8, offset: 328)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !1018, file: !1019, line: 38, baseType: !156, size: 8, offset: 336)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !1018, file: !1019, line: 39, baseType: !156, size: 8, offset: 344)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !1018, file: !1019, line: 40, baseType: !156, size: 8, offset: 352)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !1018, file: !1019, line: 41, baseType: !156, size: 8, offset: 360)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !1018, file: !1019, line: 42, baseType: !181, size: 16, offset: 368)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !1018, file: !1019, line: 43, baseType: !181, size: 16, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1018, file: !1019, line: 44, baseType: !181, size: 16, offset: 400)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !1018, file: !1019, line: 45, baseType: !181, size: 16, offset: 416)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !1018, file: !1019, line: 46, baseType: !68, size: 32, offset: 432)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !1018, file: !1019, line: 47, baseType: !68, size: 32, offset: 464)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !1018, file: !1019, line: 48, baseType: !1057, size: 16, offset: 496)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16, elements: !731)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !1015, file: !305, line: 188, baseType: !1059, size: 160, offset: 512)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !1060, line: 25, size: 160, elements: !1061)
!1060 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1059, file: !1060, line: 26, baseType: !181, size: 16)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !1059, file: !1060, line: 27, baseType: !181, size: 16, offset: 16)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1059, file: !1060, line: 28, baseType: !68, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !1059, file: !1060, line: 29, baseType: !181, size: 16, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !1059, file: !1060, line: 30, baseType: !181, size: 16, offset: 80)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1060, line: 31, baseType: !181, size: 16, offset: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !1059, file: !1060, line: 32, baseType: !181, size: 16, offset: 112)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !1059, file: !1060, line: 33, baseType: !181, size: 16, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !1059, file: !1060, line: 34, baseType: !181, size: 16, offset: 144)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !1015, file: !305, line: 189, baseType: !1072, size: 32, offset: 672)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32, elements: !756)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !1015, file: !305, line: 190, baseType: !64, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !1015, file: !305, line: 191, baseType: !1075, size: 128, offset: 768)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !1076, line: 23, size: 128, elements: !1077)
!1076 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1075, file: !1076, line: 24, baseType: !68, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !1075, file: !1076, line: 25, baseType: !68, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1075, file: !1076, line: 26, baseType: !68, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !1075, file: !1076, line: 27, baseType: !68, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !1015, file: !305, line: 192, baseType: !64, size: 64, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !1015, file: !305, line: 193, baseType: !1084, size: 64, offset: 960)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 8)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !1015, file: !305, line: 194, baseType: !155, size: 128, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !1015, file: !305, line: 195, baseType: !155, size: 128, offset: 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !1015, file: !305, line: 196, baseType: !1090, size: 128, offset: 1280)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !305, line: 110, size: 128, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1090, file: !305, line: 111, baseType: !181, size: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1090, file: !305, line: 112, baseType: !1094, size: 112, offset: 16)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 112, elements: !1095)
!1095 = !{!714}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !1015, file: !305, line: 197, baseType: !1097, size: 128, offset: 1408)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !305, line: 116, size: 128, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !1097, file: !305, line: 117, baseType: !68, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !1097, file: !305, line: 118, baseType: !68, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !1097, file: !305, line: 119, baseType: !68, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !1097, file: !305, line: 120, baseType: !68, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !1015, file: !305, line: 198, baseType: !68, size: 32, offset: 1536)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !1015, file: !305, line: 199, baseType: !68, size: 32, offset: 1568)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !1015, file: !305, line: 200, baseType: !68, size: 32, offset: 1600)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !1015, file: !305, line: 201, baseType: !1107, size: 896, offset: 1632)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 896, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !1015, file: !305, line: 202, baseType: !68, size: 32, offset: 2528)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !1015, file: !305, line: 203, baseType: !1112, size: 1024, offset: 2560)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !1113, line: 5, size: 1024, elements: !1114)
!1113 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1112, file: !1113, line: 6, baseType: !1116, size: 1024)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !1015, file: !305, line: 204, baseType: !1120, size: 256, offset: 3584)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !305, line: 123, size: 256, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !1120, file: !305, line: 124, baseType: !68, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !1120, file: !305, line: 125, baseType: !68, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !1120, file: !305, line: 126, baseType: !68, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !1120, file: !305, line: 127, baseType: !68, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !1120, file: !305, line: 128, baseType: !68, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !1120, file: !305, line: 129, baseType: !68, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !1120, file: !305, line: 130, baseType: !68, size: 32, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !1120, file: !305, line: 131, baseType: !68, size: 32, offset: 224)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !1015, file: !305, line: 205, baseType: !68, size: 32, offset: 3840)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !1015, file: !305, line: 206, baseType: !68, size: 32, offset: 3872)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !1015, file: !305, line: 207, baseType: !156, size: 8, offset: 3904)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !1015, file: !305, line: 208, baseType: !156, size: 8, offset: 3912)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !1015, file: !305, line: 209, baseType: !156, size: 8, offset: 3920)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !1015, file: !305, line: 210, baseType: !156, size: 8, offset: 3928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !1015, file: !305, line: 211, baseType: !156, size: 8, offset: 3936)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !1015, file: !305, line: 212, baseType: !1057, size: 16, offset: 3944)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1015, file: !305, line: 224, baseType: !156, size: 8, offset: 3960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !1015, file: !305, line: 225, baseType: !1140, size: 8, offset: 3968)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 8, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 1)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !1015, file: !305, line: 226, baseType: !1144, size: 984, offset: 3976)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !305, line: 68, size: 984, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !1144, file: !305, line: 69, baseType: !156, size: 8)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !1144, file: !305, line: 70, baseType: !181, size: 16, offset: 8)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !1144, file: !305, line: 71, baseType: !68, size: 32, offset: 24)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !1144, file: !305, line: 72, baseType: !181, size: 16, offset: 56)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !1144, file: !305, line: 73, baseType: !181, size: 16, offset: 72)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !1144, file: !305, line: 74, baseType: !181, size: 16, offset: 88)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !1144, file: !305, line: 75, baseType: !181, size: 16, offset: 104)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1144, file: !305, line: 76, baseType: !181, size: 16, offset: 120)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1144, file: !305, line: 77, baseType: !68, size: 32, offset: 136)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1144, file: !305, line: 78, baseType: !181, size: 16, offset: 168)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !1144, file: !305, line: 79, baseType: !68, size: 32, offset: 184)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !1144, file: !305, line: 80, baseType: !181, size: 16, offset: 216)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !1144, file: !305, line: 81, baseType: !181, size: 16, offset: 232)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !1144, file: !305, line: 82, baseType: !156, size: 8, offset: 248)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !1144, file: !305, line: 83, baseType: !156, size: 8, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !1144, file: !305, line: 84, baseType: !181, size: 16, offset: 264)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !1144, file: !305, line: 85, baseType: !68, size: 32, offset: 280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !1144, file: !305, line: 86, baseType: !68, size: 32, offset: 312)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !1144, file: !305, line: 87, baseType: !68, size: 32, offset: 344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !1144, file: !305, line: 88, baseType: !68, size: 32, offset: 376)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !1144, file: !305, line: 89, baseType: !181, size: 16, offset: 408)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !1144, file: !305, line: 90, baseType: !156, size: 8, offset: 424)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !1144, file: !305, line: 91, baseType: !156, size: 8, offset: 432)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !1144, file: !305, line: 92, baseType: !68, size: 32, offset: 440)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !1144, file: !305, line: 93, baseType: !68, size: 32, offset: 472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !1144, file: !305, line: 94, baseType: !68, size: 32, offset: 504)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !1144, file: !305, line: 95, baseType: !156, size: 8, offset: 536)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !1144, file: !305, line: 96, baseType: !156, size: 8, offset: 544)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !1144, file: !305, line: 97, baseType: !181, size: 16, offset: 552)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !1144, file: !305, line: 98, baseType: !68, size: 32, offset: 568)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !1144, file: !305, line: 99, baseType: !68, size: 32, offset: 600)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !1144, file: !305, line: 100, baseType: !64, size: 64, offset: 632)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !1144, file: !305, line: 101, baseType: !68, size: 32, offset: 696)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !1144, file: !305, line: 102, baseType: !68, size: 32, offset: 728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !1144, file: !305, line: 103, baseType: !64, size: 64, offset: 760)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !1144, file: !305, line: 104, baseType: !64, size: 64, offset: 824)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !1144, file: !305, line: 105, baseType: !68, size: 32, offset: 888)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !1144, file: !305, line: 106, baseType: !68, size: 32, offset: 920)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !1144, file: !305, line: 107, baseType: !68, size: 32, offset: 952)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !1015, file: !305, line: 227, baseType: !1186, size: 288, offset: 4960)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 288, elements: !777)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !1015, file: !305, line: 228, baseType: !1188, size: 512, offset: 5248)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 512, elements: !158)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !1015, file: !305, line: 229, baseType: !1190, size: 20480, offset: 5760)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 20480, elements: !1117)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !1015, file: !305, line: 230, baseType: !1192, size: 384, offset: 26240)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 384, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 48)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !1015, file: !305, line: 231, baseType: !1196, size: 3936, offset: 26624)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 3936, elements: !1324)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !1198, line: 173, size: 656, elements: !1199)
!1198 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1197, file: !1198, line: 174, baseType: !156, size: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1197, file: !1198, line: 175, baseType: !156, size: 8, offset: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !1197, file: !1198, line: 176, baseType: !181, size: 16, offset: 16)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !1197, file: !1198, line: 177, baseType: !181, size: 16, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !1197, file: !1198, line: 178, baseType: !156, size: 8, offset: 48)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !1197, file: !1198, line: 179, baseType: !156, size: 8, offset: 56)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1197, file: !1198, line: 180, baseType: !1207, size: 592, offset: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !1198, line: 72, size: 592, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1256, !1322, !1323}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1207, file: !1198, line: 73, baseType: !181, size: 16)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !1207, file: !1198, line: 74, baseType: !181, size: 16, offset: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !1207, file: !1198, line: 75, baseType: !68, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !1207, file: !1198, line: 76, baseType: !68, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !1207, file: !1198, line: 77, baseType: !68, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !1207, file: !1198, line: 78, baseType: !64, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !1207, file: !1198, line: 79, baseType: !181, size: 16, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !1207, file: !1198, line: 80, baseType: !68, size: 32, offset: 208)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1207, file: !1198, line: 81, baseType: !181, size: 16, offset: 240)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !1207, file: !1198, line: 82, baseType: !156, size: 8, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1207, file: !1198, line: 83, baseType: !156, size: 8, offset: 264)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1207, file: !1198, line: 84, baseType: !181, size: 16, offset: 272)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !1207, file: !1198, line: 85, baseType: !1072, size: 32, offset: 288)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !1207, file: !1198, line: 86, baseType: !1084, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !1207, file: !1198, line: 113, baseType: !1224, size: 64, offset: 384)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1198, line: 87, size: 64, elements: !1225)
!1225 = !{!1226, !1232, !1240, !1244, !1248, !1252}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !1224, file: !1198, line: 92, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 88, size: 64, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1227, file: !1198, line: 89, baseType: !181, size: 16)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1227, file: !1198, line: 90, baseType: !181, size: 16, offset: 16)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1227, file: !1198, line: 91, baseType: !68, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !1224, file: !1198, line: 99, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 93, size: 64, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1233, file: !1198, line: 94, baseType: !156, size: 8)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1233, file: !1198, line: 95, baseType: !156, size: 8, offset: 8)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1233, file: !1198, line: 96, baseType: !156, size: 8, offset: 16)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1233, file: !1198, line: 97, baseType: !156, size: 8, offset: 24)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1233, file: !1198, line: 98, baseType: !68, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !1224, file: !1198, line: 103, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 101, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1241, file: !1198, line: 102, baseType: !64, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !1224, file: !1198, line: 106, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 104, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1245, file: !1198, line: 105, baseType: !64, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !1224, file: !1198, line: 109, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 107, size: 64, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1249, file: !1198, line: 108, baseType: !64, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !1224, file: !1198, line: 112, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !1198, line: 110, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1253, file: !1198, line: 111, baseType: !64, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !1207, file: !1198, line: 168, baseType: !1257, size: 128, offset: 448)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1198, line: 114, size: 128, elements: !1258)
!1258 = !{!1259, !1267, !1276, !1283, !1288, !1293, !1298, !1303, !1309, !1317}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !1257, file: !1198, line: 121, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 115, size: 128, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1260, file: !1198, line: 116, baseType: !156, size: 8)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1260, file: !1198, line: 117, baseType: !156, size: 8, offset: 8)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1260, file: !1198, line: 118, baseType: !181, size: 16, offset: 16)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1260, file: !1198, line: 119, baseType: !68, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1260, file: !1198, line: 120, baseType: !64, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !1257, file: !1198, line: 129, baseType: !1268, size: 128)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 122, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1268, file: !1198, line: 123, baseType: !156, size: 8)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !1268, file: !1198, line: 124, baseType: !156, size: 8, offset: 8)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1268, file: !1198, line: 125, baseType: !156, size: 8, offset: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1268, file: !1198, line: 126, baseType: !156, size: 8, offset: 24)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1268, file: !1198, line: 127, baseType: !68, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1268, file: !1198, line: 128, baseType: !64, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !1257, file: !1198, line: 135, baseType: !1277, size: 128)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 130, size: 128, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1277, file: !1198, line: 131, baseType: !181, size: 16)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !1277, file: !1198, line: 132, baseType: !64, size: 64, offset: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1277, file: !1198, line: 133, baseType: !181, size: 16, offset: 80)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1277, file: !1198, line: 134, baseType: !68, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !1257, file: !1198, line: 139, baseType: !1284, size: 128)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 136, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !1284, file: !1198, line: 137, baseType: !64, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1284, file: !1198, line: 138, baseType: !64, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !1257, file: !1198, line: 143, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 140, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !1289, file: !1198, line: 141, baseType: !64, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1289, file: !1198, line: 142, baseType: !64, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !1257, file: !1198, line: 147, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 144, size: 128, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !1294, file: !1198, line: 145, baseType: !64, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !1294, file: !1198, line: 146, baseType: !64, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !1257, file: !1198, line: 151, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 148, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !1299, file: !1198, line: 149, baseType: !64, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1299, file: !1198, line: 150, baseType: !64, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !1257, file: !1198, line: 156, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 152, size: 128, elements: !1305)
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !1304, file: !1198, line: 153, baseType: !68, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1304, file: !1198, line: 154, baseType: !68, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1304, file: !1198, line: 155, baseType: !64, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !1257, file: !1198, line: 163, baseType: !1310, size: 128)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 157, size: 128, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1310, file: !1198, line: 158, baseType: !156, size: 8)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1310, file: !1198, line: 159, baseType: !156, size: 8, offset: 8)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1310, file: !1198, line: 160, baseType: !181, size: 16, offset: 16)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1310, file: !1198, line: 161, baseType: !68, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1310, file: !1198, line: 162, baseType: !64, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !1257, file: !1198, line: 167, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1198, line: 164, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1318, file: !1198, line: 165, baseType: !64, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1318, file: !1198, line: 166, baseType: !64, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1207, file: !1198, line: 169, baseType: !156, size: 8, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1207, file: !1198, line: 170, baseType: !156, size: 8, offset: 584)
!1324 = !{!1325}
!1325 = !DISubrange(count: 6)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !1015, file: !305, line: 232, baseType: !1327, size: 2208, offset: 30560)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2208, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 276)
!1330 = !DILocalVariable(name: "hdr", scope: !1006, file: !3, line: 474, type: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1332 = !DILocalVariable(name: "options_size", scope: !1006, file: !3, line: 475, type: !93)
!1333 = !DILocalVariable(name: "status", scope: !1006, file: !3, line: 476, type: !92)
!1334 = !DILocalVariable(name: "alloc", scope: !1006, file: !3, line: 477, type: !69)
!1335 = !DILocalVariable(name: "cmdline_ptr", scope: !1006, file: !3, line: 478, type: !301)
!1336 = !DILocalVariable(name: "__pad", scope: !1337, file: !3, line: 489, type: !838)
!1337 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 489, column: 11)
!1338 = !DILocation(line: 469, column: 49, scope: !1006)
!1339 = !DILocation(line: 470, column: 28, scope: !1006)
!1340 = !DILocation(line: 472, column: 2, scope: !1006)
!1341 = !DILocation(line: 472, column: 13, scope: !1006)
!1342 = !DILocation(line: 473, column: 2, scope: !1006)
!1343 = !DILocation(line: 473, column: 22, scope: !1006)
!1344 = !DILocation(line: 474, column: 2, scope: !1006)
!1345 = !DILocation(line: 474, column: 23, scope: !1006)
!1346 = !DILocation(line: 475, column: 2, scope: !1006)
!1347 = !DILocation(line: 475, column: 6, scope: !1006)
!1348 = !DILocation(line: 476, column: 2, scope: !1006)
!1349 = !DILocation(line: 476, column: 15, scope: !1006)
!1350 = !DILocation(line: 477, column: 2, scope: !1006)
!1351 = !DILocation(line: 477, column: 16, scope: !1006)
!1352 = !DILocation(line: 478, column: 2, scope: !1006)
!1353 = !DILocation(line: 478, column: 8, scope: !1006)
!1354 = !DILocation(line: 480, column: 6, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 480, column: 6)
!1356 = !DILocation(line: 480, column: 6, scope: !1006)
!1357 = !DILocation(line: 481, column: 3, scope: !1355)
!1358 = !DILocation(line: 483, column: 21, scope: !1006)
!1359 = !DILocation(line: 483, column: 19, scope: !1006)
!1360 = !DILocation(line: 486, column: 6, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 486, column: 6)
!1362 = !DILocation(line: 486, column: 24, scope: !1361)
!1363 = !DILocation(line: 486, column: 28, scope: !1361)
!1364 = !DILocation(line: 486, column: 38, scope: !1361)
!1365 = !DILocation(line: 486, column: 6, scope: !1006)
!1366 = !DILocation(line: 487, column: 12, scope: !1361)
!1367 = !DILocation(line: 487, column: 3, scope: !1361)
!1368 = !DILocation(line: 489, column: 11, scope: !1006)
!1369 = !DILocation(line: 489, column: 11, scope: !1337)
!1370 = !DILocation(line: 489, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 489, column: 11)
!1372 = !DILocation(line: 489, column: 11, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 489, column: 11)
!1374 = !DILocation(line: 489, column: 9, scope: !1006)
!1375 = !DILocation(line: 490, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 490, column: 6)
!1377 = !DILocation(line: 490, column: 13, scope: !1376)
!1378 = !DILocation(line: 490, column: 6, scope: !1006)
!1379 = !DILocation(line: 491, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 490, column: 29)
!1381 = !DILocation(line: 492, column: 12, scope: !1380)
!1382 = !DILocation(line: 492, column: 20, scope: !1380)
!1383 = !DILocation(line: 492, column: 3, scope: !1380)
!1384 = !DILocation(line: 495, column: 11, scope: !1006)
!1385 = !DILocation(line: 495, column: 9, scope: !1006)
!1386 = !DILocation(line: 496, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 496, column: 6)
!1388 = !DILocation(line: 496, column: 13, scope: !1387)
!1389 = !DILocation(line: 496, column: 6, scope: !1006)
!1390 = !DILocation(line: 497, column: 12, scope: !1387)
!1391 = !DILocation(line: 497, column: 20, scope: !1387)
!1392 = !DILocation(line: 497, column: 3, scope: !1387)
!1393 = !DILocation(line: 499, column: 31, scope: !1006)
!1394 = !DILocation(line: 499, column: 23, scope: !1006)
!1395 = !DILocation(line: 499, column: 16, scope: !1006)
!1396 = !DILocation(line: 499, column: 14, scope: !1006)
!1397 = !DILocation(line: 500, column: 13, scope: !1006)
!1398 = !DILocation(line: 500, column: 26, scope: !1006)
!1399 = !DILocation(line: 500, column: 10, scope: !1006)
!1400 = !DILocation(line: 503, column: 2, scope: !1006)
!1401 = !DILocation(line: 503, column: 7, scope: !1006)
!1402 = !DILocation(line: 503, column: 18, scope: !1006)
!1403 = !DILocation(line: 504, column: 2, scope: !1006)
!1404 = !DILocation(line: 504, column: 7, scope: !1006)
!1405 = !DILocation(line: 504, column: 16, scope: !1006)
!1406 = !DILocation(line: 506, column: 2, scope: !1006)
!1407 = !DILocation(line: 506, column: 7, scope: !1006)
!1408 = !DILocation(line: 506, column: 22, scope: !1006)
!1409 = !DILocation(line: 507, column: 2, scope: !1006)
!1410 = !DILocation(line: 507, column: 7, scope: !1006)
!1411 = !DILocation(line: 507, column: 23, scope: !1006)
!1412 = !DILocation(line: 510, column: 36, scope: !1006)
!1413 = !DILocation(line: 510, column: 16, scope: !1006)
!1414 = !DILocation(line: 510, column: 14, scope: !1006)
!1415 = !DILocation(line: 511, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 511, column: 6)
!1417 = !DILocation(line: 511, column: 6, scope: !1006)
!1418 = !DILocation(line: 512, column: 24, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 511, column: 20)
!1420 = !DILocation(line: 512, column: 3, scope: !1419)
!1421 = !DILocation(line: 513, column: 12, scope: !1419)
!1422 = !DILocation(line: 513, column: 3, scope: !1419)
!1423 = !DILocation(line: 516, column: 35, scope: !1006)
!1424 = !DILocation(line: 516, column: 20, scope: !1006)
!1425 = !DILocation(line: 516, column: 49, scope: !1006)
!1426 = !DILocation(line: 516, column: 54, scope: !1006)
!1427 = !DILocation(line: 517, column: 7, scope: !1006)
!1428 = !DILocation(line: 517, column: 20, scope: !1006)
!1429 = !DILocation(line: 516, column: 2, scope: !1006)
!1430 = !DILocation(line: 519, column: 17, scope: !1006)
!1431 = !DILocation(line: 519, column: 25, scope: !1006)
!1432 = !DILocation(line: 519, column: 40, scope: !1006)
!1433 = !DILocation(line: 519, column: 2, scope: !1006)
!1434 = !DISubprogram(name: "memset", scope: !1435, file: !1435, line: 22, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1435 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!61, !61, !93, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !192, line: 61, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1440, line: 72, baseType: !1441)
!1440 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1440, line: 16, baseType: !69)
!1442 = distinct !DISubprogram(name: "efi_exit", scope: !3, file: !3, line: 453, type: !1443, scopeLine: 454, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !147, !92}
!1445 = !{!1446, !1447, !1448}
!1446 = !DILocalVariable(name: "handle", arg: 1, scope: !1442, file: !3, line: 453, type: !147)
!1447 = !DILocalVariable(name: "status", arg: 2, scope: !1442, file: !3, line: 453, type: !92)
!1448 = !DILocalVariable(name: "__pad", scope: !1449, file: !3, line: 455, type: !838)
!1449 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 455, column: 2)
!1450 = !DILocation(line: 453, column: 46, scope: !1442)
!1451 = !DILocation(line: 453, column: 67, scope: !1442)
!1452 = !DILocation(line: 455, column: 2, scope: !1442)
!1453 = !DILocation(line: 455, column: 2, scope: !1449)
!1454 = !DILocation(line: 455, column: 2, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 455, column: 2)
!1456 = !DILocation(line: 455, column: 2, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 455, column: 2)
!1458 = !DILocation(line: 456, column: 2, scope: !1442)
!1459 = !DILocation(line: 457, column: 3, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 456, column: 2)
!1461 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 456, column: 2)
!1462 = !{i64 11698}
!1463 = !DILocation(line: 456, column: 2, scope: !1460)
!1464 = distinct !{!1464, !1465, !1466, !981}
!1465 = !DILocation(line: 456, column: 2, scope: !1461)
!1466 = !DILocation(line: 457, column: 12, scope: !1461)
!1467 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !985, file: !985, line: 239, type: !1468, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!61, !61}
!1470 = !{!1471}
!1471 = !DILocalVariable(name: "p", arg: 1, scope: !1467, file: !985, line: 239, type: !61)
!1472 = !DILocation(line: 239, column: 44, scope: !1467)
!1473 = !DILocation(line: 241, column: 10, scope: !1467)
!1474 = !DILocation(line: 241, column: 2, scope: !1467)
!1475 = !DILocation(line: 241, column: 16, scope: !1467)
!1476 = !DILocation(line: 242, column: 9, scope: !1467)
!1477 = !DILocation(line: 242, column: 2, scope: !1467)
!1478 = !DISubprogram(name: "efi_allocate_pages", scope: !6, file: !6, line: 983, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!92, !69, !104, !69}
!1481 = !DISubprogram(name: "efi_convert_cmdline", scope: !6, file: !6, line: 978, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!301, !655, !540}
!1484 = !DISubprogram(name: "efi_free", scope: !6, file: !6, line: 974, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !69, !69}
!1487 = distinct !DISubprogram(name: "efi_set_u64_split", scope: !6, file: !6, line: 132, type: !1488, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !62, !105, !105}
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "data", arg: 1, scope: !1487, file: !6, line: 132, type: !62)
!1492 = !DILocalVariable(name: "lo", arg: 2, scope: !1487, file: !6, line: 132, type: !105)
!1493 = !DILocalVariable(name: "hi", arg: 3, scope: !1487, file: !6, line: 132, type: !105)
!1494 = !DILocation(line: 132, column: 28, scope: !1487)
!1495 = !DILocation(line: 132, column: 39, scope: !1487)
!1496 = !DILocation(line: 132, column: 48, scope: !1487)
!1497 = !DILocation(line: 134, column: 8, scope: !1487)
!1498 = !DILocation(line: 134, column: 3, scope: !1487)
!1499 = !DILocation(line: 134, column: 6, scope: !1487)
!1500 = !DILocation(line: 135, column: 8, scope: !1487)
!1501 = !DILocation(line: 135, column: 3, scope: !1487)
!1502 = !DILocation(line: 135, column: 6, scope: !1487)
!1503 = !DILocation(line: 136, column: 1, scope: !1487)
!1504 = distinct !DISubprogram(name: "efi_stub_entry", scope: !3, file: !3, line: 876, type: !1505, scopeLine: 879, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !147, !665, !1014}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1520, !1521, !1522, !1524, !1527}
!1508 = !DILocalVariable(name: "handle", arg: 1, scope: !1504, file: !3, line: 876, type: !147)
!1509 = !DILocalVariable(name: "sys_table_arg", arg: 2, scope: !1504, file: !3, line: 877, type: !665)
!1510 = !DILocalVariable(name: "boot_params", arg: 3, scope: !1504, file: !3, line: 878, type: !1014)
!1511 = !DILocalVariable(name: "guid", scope: !1504, file: !3, line: 880, type: !149)
!1512 = !DILocalVariable(name: "hdr", scope: !1504, file: !3, line: 881, type: !1331)
!1513 = !DILocalVariable(name: "initrd", scope: !1504, file: !3, line: 882, type: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_efi_initrd", file: !22, line: 1339, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1516, file: !22, line: 1340, baseType: !69, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1516, file: !22, line: 1341, baseType: !69, size: 64, offset: 64)
!1520 = !DILocalVariable(name: "kernel_entry", scope: !1504, file: !3, line: 883, type: !69)
!1521 = !DILocalVariable(name: "status", scope: !1504, file: !3, line: 884, type: !92)
!1522 = !DILocalVariable(name: "__pad", scope: !1523, file: !3, line: 906, type: !838)
!1523 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 906, column: 2)
!1524 = !DILocalVariable(name: "cmdline_paddr", scope: !1525, file: !3, line: 922, type: !69)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 921, column: 44)
!1526 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 921, column: 6)
!1527 = !DILabel(scope: !1504, name: "fail", file: !3, line: 998)
!1528 = !DILocation(line: 876, column: 45, scope: !1504)
!1529 = !DILocation(line: 877, column: 31, scope: !1504)
!1530 = !DILocation(line: 878, column: 31, scope: !1504)
!1531 = !DILocation(line: 880, column: 2, scope: !1504)
!1532 = !DILocation(line: 880, column: 13, scope: !1504)
!1533 = !DILocation(line: 881, column: 2, scope: !1504)
!1534 = !DILocation(line: 881, column: 23, scope: !1504)
!1535 = !DILocation(line: 881, column: 30, scope: !1504)
!1536 = !DILocation(line: 881, column: 43, scope: !1504)
!1537 = !DILocation(line: 882, column: 2, scope: !1504)
!1538 = !DILocation(line: 882, column: 33, scope: !1504)
!1539 = !DILocation(line: 883, column: 2, scope: !1504)
!1540 = !DILocation(line: 883, column: 16, scope: !1504)
!1541 = !DILocation(line: 884, column: 2, scope: !1504)
!1542 = !DILocation(line: 884, column: 15, scope: !1504)
!1543 = !DILocation(line: 886, column: 20, scope: !1504)
!1544 = !DILocation(line: 886, column: 18, scope: !1504)
!1545 = !DILocation(line: 888, column: 21, scope: !1504)
!1546 = !DILocation(line: 888, column: 19, scope: !1504)
!1547 = !DILocation(line: 890, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 890, column: 6)
!1549 = !DILocation(line: 890, column: 24, scope: !1548)
!1550 = !DILocation(line: 890, column: 28, scope: !1548)
!1551 = !DILocation(line: 890, column: 38, scope: !1548)
!1552 = !DILocation(line: 890, column: 6, scope: !1504)
!1553 = !DILocation(line: 891, column: 12, scope: !1548)
!1554 = !DILocation(line: 891, column: 3, scope: !1548)
!1555 = !DILocation(line: 893, column: 6, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 893, column: 6)
!1557 = !DILocation(line: 893, column: 6, scope: !1504)
!1558 = !DILocation(line: 894, column: 12, scope: !1556)
!1559 = !DILocation(line: 894, column: 3, scope: !1556)
!1560 = !DILocation(line: 897, column: 40, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 896, column: 49)
!1562 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 896, column: 6)
!1563 = !DILocation(line: 897, column: 19, scope: !1561)
!1564 = !DILocation(line: 897, column: 17, scope: !1561)
!1565 = !DILocation(line: 898, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 898, column: 7)
!1567 = !DILocation(line: 898, column: 21, scope: !1566)
!1568 = !DILocation(line: 899, column: 7, scope: !1566)
!1569 = !DILocation(line: 899, column: 22, scope: !1566)
!1570 = !DILocation(line: 899, column: 26, scope: !1566)
!1571 = !DILocation(line: 899, column: 36, scope: !1566)
!1572 = !DILocation(line: 898, column: 7, scope: !1561)
!1573 = !DILocation(line: 900, column: 4, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 899, column: 73)
!1575 = !DILocation(line: 901, column: 18, scope: !1574)
!1576 = !DILocation(line: 902, column: 3, scope: !1574)
!1577 = !DILocation(line: 906, column: 2, scope: !1504)
!1578 = !DILocation(line: 906, column: 2, scope: !1523)
!1579 = !DILocation(line: 906, column: 2, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 906, column: 2)
!1581 = !DILocation(line: 906, column: 2, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 906, column: 2)
!1583 = !DILocation(line: 908, column: 11, scope: !1504)
!1584 = !DILocation(line: 908, column: 9, scope: !1504)
!1585 = !DILocation(line: 909, column: 6, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 909, column: 6)
!1587 = !DILocation(line: 909, column: 13, scope: !1586)
!1588 = !DILocation(line: 909, column: 6, scope: !1504)
!1589 = !DILocation(line: 910, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 909, column: 29)
!1591 = !DILocation(line: 911, column: 3, scope: !1590)
!1592 = !DILocation(line: 922, column: 3, scope: !1525)
!1593 = !DILocation(line: 922, column: 17, scope: !1525)
!1594 = !DILocation(line: 922, column: 39, scope: !1525)
!1595 = !DILocation(line: 922, column: 44, scope: !1525)
!1596 = !DILocation(line: 922, column: 34, scope: !1525)
!1597 = !DILocation(line: 923, column: 19, scope: !1525)
!1598 = !DILocation(line: 923, column: 32, scope: !1525)
!1599 = !DILocation(line: 923, column: 14, scope: !1525)
!1600 = !DILocation(line: 923, column: 49, scope: !1525)
!1601 = !DILocation(line: 922, column: 57, scope: !1525)
!1602 = !DILocation(line: 924, column: 34, scope: !1525)
!1603 = !DILocation(line: 924, column: 26, scope: !1525)
!1604 = !DILocation(line: 924, column: 12, scope: !1525)
!1605 = !DILocation(line: 924, column: 10, scope: !1525)
!1606 = !DILocation(line: 925, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 925, column: 7)
!1608 = !DILocation(line: 925, column: 14, scope: !1607)
!1609 = !DILocation(line: 925, column: 7, scope: !1525)
!1610 = !DILocation(line: 926, column: 4, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 925, column: 30)
!1612 = !DILocation(line: 927, column: 4, scope: !1611)
!1613 = !DILocation(line: 929, column: 2, scope: !1526)
!1614 = !DILocation(line: 931, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 931, column: 6)
!1616 = !DILocation(line: 931, column: 22, scope: !1615)
!1617 = !DILocation(line: 931, column: 6, scope: !1504)
!1618 = !DILocation(line: 932, column: 3, scope: !1615)
!1619 = !DILocation(line: 932, column: 8, scope: !1615)
!1620 = !DILocation(line: 932, column: 19, scope: !1615)
!1621 = !DILocation(line: 934, column: 11, scope: !1504)
!1622 = !DILocation(line: 934, column: 9, scope: !1504)
!1623 = !DILocation(line: 935, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 935, column: 6)
!1625 = !DILocation(line: 935, column: 13, scope: !1624)
!1626 = !DILocation(line: 935, column: 6, scope: !1504)
!1627 = !DILocation(line: 936, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 935, column: 29)
!1629 = !DILocation(line: 937, column: 3, scope: !1628)
!1630 = !DILocation(line: 949, column: 27, scope: !1504)
!1631 = !DILocation(line: 949, column: 34, scope: !1504)
!1632 = !DILocation(line: 949, column: 39, scope: !1504)
!1633 = !DILocation(line: 949, column: 11, scope: !1504)
!1634 = !DILocation(line: 949, column: 9, scope: !1504)
!1635 = !DILocation(line: 951, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 951, column: 6)
!1637 = !DILocation(line: 951, column: 13, scope: !1636)
!1638 = !DILocation(line: 951, column: 6, scope: !1504)
!1639 = !DILocation(line: 952, column: 3, scope: !1636)
!1640 = !DILocation(line: 953, column: 6, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 953, column: 6)
!1642 = !DILocation(line: 953, column: 13, scope: !1641)
!1643 = !DILocation(line: 953, column: 16, scope: !1641)
!1644 = !DILocation(line: 953, column: 24, scope: !1641)
!1645 = !DILocation(line: 953, column: 29, scope: !1641)
!1646 = !DILocation(line: 953, column: 6, scope: !1504)
!1647 = !DILocation(line: 954, column: 21, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 953, column: 34)
!1649 = !DILocation(line: 954, column: 29, scope: !1648)
!1650 = !DILocation(line: 954, column: 36, scope: !1648)
!1651 = !DILocation(line: 954, column: 41, scope: !1648)
!1652 = !DILocation(line: 955, column: 8, scope: !1648)
!1653 = !DILocation(line: 955, column: 21, scope: !1648)
!1654 = !DILocation(line: 954, column: 3, scope: !1648)
!1655 = !DILocation(line: 956, column: 21, scope: !1648)
!1656 = !DILocation(line: 956, column: 29, scope: !1648)
!1657 = !DILocation(line: 956, column: 36, scope: !1648)
!1658 = !DILocation(line: 956, column: 41, scope: !1648)
!1659 = !DILocation(line: 957, column: 8, scope: !1648)
!1660 = !DILocation(line: 957, column: 21, scope: !1648)
!1661 = !DILocation(line: 956, column: 3, scope: !1648)
!1662 = !DILocation(line: 958, column: 2, scope: !1648)
!1663 = !DILocation(line: 965, column: 6, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 965, column: 6)
!1665 = !DILocation(line: 965, column: 19, scope: !1664)
!1666 = !DILocation(line: 965, column: 31, scope: !1664)
!1667 = !DILocation(line: 965, column: 6, scope: !1504)
!1668 = !DILocation(line: 966, column: 30, scope: !1664)
!1669 = !DILocation(line: 966, column: 3, scope: !1664)
!1670 = !DILocation(line: 966, column: 16, scope: !1664)
!1671 = !DILocation(line: 966, column: 28, scope: !1664)
!1672 = !DILocation(line: 969, column: 2, scope: !1504)
!1673 = !DILocation(line: 971, column: 2, scope: !1504)
!1674 = !DILocation(line: 973, column: 2, scope: !1504)
!1675 = !DILocation(line: 975, column: 17, scope: !1504)
!1676 = !DILocation(line: 975, column: 2, scope: !1504)
!1677 = !DILocation(line: 977, column: 16, scope: !1504)
!1678 = !DILocation(line: 977, column: 2, scope: !1504)
!1679 = !DILocation(line: 979, column: 15, scope: !1504)
!1680 = !DILocation(line: 979, column: 2, scope: !1504)
!1681 = !DILocation(line: 981, column: 2, scope: !1504)
!1682 = !DILocation(line: 983, column: 21, scope: !1504)
!1683 = !DILocation(line: 983, column: 34, scope: !1504)
!1684 = !DILocation(line: 983, column: 11, scope: !1504)
!1685 = !DILocation(line: 983, column: 9, scope: !1504)
!1686 = !DILocation(line: 984, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 984, column: 6)
!1688 = !DILocation(line: 984, column: 13, scope: !1687)
!1689 = !DILocation(line: 984, column: 6, scope: !1504)
!1690 = !DILocation(line: 985, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 984, column: 29)
!1692 = !DILocation(line: 986, column: 3, scope: !1691)
!1693 = !DILocation(line: 993, column: 13, scope: !1504)
!1694 = !DILocation(line: 993, column: 2, scope: !1504)
!1695 = !DILocation(line: 995, column: 2, scope: !1504)
!1696 = !DILocation(line: 997, column: 15, scope: !1504)
!1697 = !DILocation(line: 997, column: 29, scope: !1504)
!1698 = !DILocation(line: 997, column: 2, scope: !1504)
!1699 = !DILocation(line: 998, column: 1, scope: !1504)
!1700 = !DILocation(line: 999, column: 2, scope: !1504)
!1701 = !DILocation(line: 1001, column: 11, scope: !1504)
!1702 = !DILocation(line: 1001, column: 19, scope: !1504)
!1703 = !DILocation(line: 1001, column: 2, scope: !1504)
!1704 = distinct !DISubprogram(name: "have_unsupported_snp_features", scope: !3, file: !3, line: 757, type: !986, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1705 = !{!1706}
!1706 = !DILocalVariable(name: "unsupported", scope: !1704, file: !3, line: 759, type: !62)
!1707 = !DILocation(line: 759, column: 2, scope: !1704)
!1708 = !DILocation(line: 759, column: 6, scope: !1704)
!1709 = !DILocation(line: 761, column: 45, scope: !1704)
!1710 = !DILocation(line: 761, column: 16, scope: !1704)
!1711 = !DILocation(line: 761, column: 14, scope: !1704)
!1712 = !DILocation(line: 762, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 762, column: 6)
!1714 = !DILocation(line: 762, column: 6, scope: !1704)
!1715 = !DILocation(line: 763, column: 3, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 762, column: 19)
!1717 = !DILocation(line: 765, column: 3, scope: !1716)
!1718 = !DILocation(line: 767, column: 2, scope: !1704)
!1719 = !DILocation(line: 768, column: 1, scope: !1704)
!1720 = !DISubprogram(name: "get_efi_config_table", scope: !6, file: !6, line: 966, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!61, !149}
!1723 = !DISubprogram(name: "efi_setup_5level_paging", scope: !1724, file: !1724, line: 12, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1724 = !DIFile(filename: "drivers/firmware/efi/libstub/x86-stub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02e6a13ce78661bd94c0adf19feab12a")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!92}
!1727 = !DILocation(line: 788, column: 47, scope: !699)
!1728 = !DILocation(line: 794, column: 7, scope: !707)
!1729 = !DILocation(line: 794, column: 11, scope: !707)
!1730 = !DILocation(line: 794, column: 18, scope: !710)
!1731 = !DILocation(line: 794, column: 20, scope: !710)
!1732 = !DILocation(line: 794, column: 2, scope: !707)
!1733 = !DILocation(line: 795, column: 3, scope: !709)
!1734 = !DILocation(line: 795, column: 15, scope: !709)
!1735 = !DILocation(line: 795, column: 26, scope: !709)
!1736 = !DILocation(line: 795, column: 40, scope: !709)
!1737 = !DILocation(line: 795, column: 35, scope: !709)
!1738 = !DILocation(line: 795, column: 19, scope: !709)
!1739 = !DILocation(line: 797, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !709, file: !3, line: 797, column: 7)
!1741 = !DILocation(line: 797, column: 12, scope: !1740)
!1742 = !DILocation(line: 797, column: 9, scope: !1740)
!1743 = !DILocation(line: 797, column: 20, scope: !1740)
!1744 = !DILocation(line: 797, column: 24, scope: !1740)
!1745 = !DILocation(line: 797, column: 28, scope: !1740)
!1746 = !DILocation(line: 797, column: 26, scope: !1740)
!1747 = !DILocation(line: 797, column: 36, scope: !1740)
!1748 = !DILocation(line: 797, column: 39, scope: !1740)
!1749 = !DILocation(line: 797, column: 7, scope: !709)
!1750 = !DILocation(line: 798, column: 35, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 797, column: 56)
!1752 = !DILocation(line: 798, column: 30, scope: !1751)
!1753 = !DILocation(line: 798, column: 28, scope: !1751)
!1754 = !DILocation(line: 799, column: 4, scope: !1751)
!1755 = !DILocation(line: 801, column: 2, scope: !710)
!1756 = !DILocation(line: 801, column: 2, scope: !709)
!1757 = !DILocation(line: 794, column: 41, scope: !710)
!1758 = !DILocation(line: 794, column: 2, scope: !710)
!1759 = distinct !{!1759, !1732, !1760, !980, !981}
!1760 = !DILocation(line: 801, column: 2, scope: !707)
!1761 = !DILocation(line: 803, column: 27, scope: !699)
!1762 = !DILocation(line: 803, column: 9, scope: !699)
!1763 = !DILocation(line: 803, column: 2, scope: !699)
!1764 = !DILocation(line: 806, column: 58, scope: !719)
!1765 = !DILocation(line: 808, column: 2, scope: !719)
!1766 = !DILocation(line: 808, column: 16, scope: !719)
!1767 = !DILocation(line: 809, column: 2, scope: !719)
!1768 = !DILocation(line: 809, column: 16, scope: !719)
!1769 = !DILocation(line: 809, column: 22, scope: !719)
!1770 = !DILocation(line: 809, column: 34, scope: !719)
!1771 = !DILocation(line: 810, column: 2, scope: !719)
!1772 = !DILocation(line: 810, column: 15, scope: !719)
!1773 = !DILocation(line: 811, column: 2, scope: !719)
!1774 = !DILocation(line: 811, column: 6, scope: !719)
!1775 = !DILocation(line: 814, column: 15, scope: !734)
!1776 = !DILocation(line: 814, column: 15, scope: !719)
!1777 = !DILocation(line: 814, column: 13, scope: !719)
!1778 = !DILocation(line: 817, column: 44, scope: !738)
!1779 = !{i8 0, i8 2}
!1780 = !{}
!1781 = !DILocation(line: 817, column: 6, scope: !719)
!1782 = !DILocation(line: 818, column: 3, scope: !737)
!1783 = !DILocation(line: 818, column: 7, scope: !737)
!1784 = !DILocation(line: 818, column: 56, scope: !737)
!1785 = !DILocation(line: 818, column: 54, scope: !737)
!1786 = !DILocation(line: 821, column: 16, scope: !737)
!1787 = !DILocation(line: 821, column: 3, scope: !737)
!1788 = !DILocation(line: 823, column: 17, scope: !737)
!1789 = !DILocation(line: 823, column: 25, scope: !737)
!1790 = !DILocation(line: 823, column: 23, scope: !737)
!1791 = !DILocation(line: 823, column: 34, scope: !737)
!1792 = !DILocation(line: 823, column: 13, scope: !737)
!1793 = !DILocation(line: 824, column: 13, scope: !737)
!1794 = !DILocation(line: 833, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !737, file: !3, line: 833, column: 7)
!1796 = !DILocation(line: 833, column: 25, scope: !1795)
!1797 = !DILocation(line: 833, column: 29, scope: !1795)
!1798 = !DILocation(line: 833, column: 38, scope: !1795)
!1799 = !DILocation(line: 833, column: 72, scope: !1795)
!1800 = !DILocation(line: 834, column: 15, scope: !1795)
!1801 = !DILocation(line: 834, column: 8, scope: !1795)
!1802 = !DILocation(line: 833, column: 7, scope: !737)
!1803 = !DILocation(line: 835, column: 4, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 834, column: 55)
!1805 = !DILocation(line: 836, column: 4, scope: !1804)
!1806 = !DILocation(line: 836, column: 12, scope: !1804)
!1807 = !DILocation(line: 837, column: 3, scope: !1804)
!1808 = !DILocation(line: 837, column: 14, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 837, column: 14)
!1810 = !DILocation(line: 837, column: 14, scope: !1795)
!1811 = !DILocation(line: 838, column: 4, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 837, column: 39)
!1813 = !DILocation(line: 840, column: 4, scope: !1812)
!1814 = !DILocation(line: 840, column: 12, scope: !1812)
!1815 = !DILocation(line: 841, column: 3, scope: !1812)
!1816 = !DILocation(line: 842, column: 2, scope: !738)
!1817 = !DILocation(line: 842, column: 2, scope: !737)
!1818 = !DILocation(line: 844, column: 28, scope: !719)
!1819 = !DILocation(line: 845, column: 7, scope: !719)
!1820 = !DILocation(line: 847, column: 7, scope: !719)
!1821 = !DILocation(line: 844, column: 11, scope: !719)
!1822 = !DILocation(line: 844, column: 9, scope: !719)
!1823 = !DILocation(line: 848, column: 6, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !719, file: !3, line: 848, column: 6)
!1825 = !DILocation(line: 848, column: 13, scope: !1824)
!1826 = !DILocation(line: 848, column: 6, scope: !719)
!1827 = !DILocation(line: 849, column: 10, scope: !1824)
!1828 = !DILocation(line: 849, column: 3, scope: !1824)
!1829 = !DILocation(line: 851, column: 36, scope: !719)
!1830 = !DILocation(line: 851, column: 28, scope: !719)
!1831 = !DILocation(line: 851, column: 42, scope: !719)
!1832 = !DILocation(line: 851, column: 10, scope: !719)
!1833 = !DILocation(line: 851, column: 8, scope: !719)
!1834 = !DILocation(line: 852, column: 6, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !719, file: !3, line: 852, column: 6)
!1836 = !DILocation(line: 852, column: 12, scope: !1835)
!1837 = !DILocation(line: 852, column: 6, scope: !719)
!1838 = !DILocation(line: 853, column: 12, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 852, column: 26)
!1840 = !DILocation(line: 853, column: 24, scope: !1839)
!1841 = !DILocation(line: 853, column: 3, scope: !1839)
!1842 = !DILocation(line: 854, column: 3, scope: !1839)
!1843 = !DILocation(line: 857, column: 18, scope: !719)
!1844 = !DILocation(line: 857, column: 25, scope: !719)
!1845 = !DILocation(line: 857, column: 23, scope: !719)
!1846 = !DILocation(line: 857, column: 3, scope: !719)
!1847 = !DILocation(line: 857, column: 16, scope: !719)
!1848 = !DILocation(line: 859, column: 44, scope: !719)
!1849 = !DILocation(line: 859, column: 50, scope: !719)
!1850 = !DILocation(line: 859, column: 9, scope: !719)
!1851 = !DILocation(line: 859, column: 2, scope: !719)
!1852 = !DILocation(line: 860, column: 1, scope: !719)
!1853 = !DISubprogram(name: "efi_load_initrd", scope: !6, file: !6, line: 1024, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!92, !655, !69, !69, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1857 = !DISubprogram(name: "efi_get_secureboot", scope: !6, file: !6, line: 1055, type: !1858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!21}
!1860 = distinct !DISubprogram(name: "efi_enable_reset_attack_mitigation", scope: !6, file: !6, line: 1061, type: !1861, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null}
!1863 = !DILocation(line: 1061, column: 44, scope: !1860)
!1864 = !DISubprogram(name: "efi_random_get_seed", scope: !6, file: !6, line: 962, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1865 = !DISubprogram(name: "efi_retrieve_tpm2_eventlog", scope: !6, file: !6, line: 1064, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1866 = distinct !DISubprogram(name: "setup_graphics", scope: !3, file: !3, line: 424, type: !1867, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1014}
!1869 = !{!1870, !1871, !1872, !1874, !1875, !1876, !1877, !1878, !1879, !1881}
!1870 = !DILocalVariable(name: "boot_params", arg: 1, scope: !1866, file: !3, line: 424, type: !1014)
!1871 = !DILocalVariable(name: "graphics_proto", scope: !1866, file: !3, line: 426, type: !149)
!1872 = !DILocalVariable(name: "si", scope: !1866, file: !3, line: 427, type: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1874 = !DILocalVariable(name: "uga_proto", scope: !1866, file: !3, line: 428, type: !149)
!1875 = !DILocalVariable(name: "status", scope: !1866, file: !3, line: 429, type: !92)
!1876 = !DILocalVariable(name: "size", scope: !1866, file: !3, line: 430, type: !69)
!1877 = !DILocalVariable(name: "gop_handle", scope: !1866, file: !3, line: 431, type: !110)
!1878 = !DILocalVariable(name: "uga_handle", scope: !1866, file: !3, line: 432, type: !110)
!1879 = !DILocalVariable(name: "__pad", scope: !1880, file: !3, line: 438, type: !838)
!1880 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 438, column: 11)
!1881 = !DILocalVariable(name: "__pad", scope: !1882, file: !3, line: 445, type: !838)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 445, column: 12)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 443, column: 29)
!1884 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 443, column: 6)
!1885 = !DILocation(line: 424, column: 48, scope: !1866)
!1886 = !DILocation(line: 426, column: 2, scope: !1866)
!1887 = !DILocation(line: 426, column: 13, scope: !1866)
!1888 = !DILocation(line: 427, column: 2, scope: !1866)
!1889 = !DILocation(line: 427, column: 22, scope: !1866)
!1890 = !DILocation(line: 428, column: 2, scope: !1866)
!1891 = !DILocation(line: 428, column: 13, scope: !1866)
!1892 = !DILocation(line: 429, column: 2, scope: !1866)
!1893 = !DILocation(line: 429, column: 15, scope: !1866)
!1894 = !DILocation(line: 430, column: 2, scope: !1866)
!1895 = !DILocation(line: 430, column: 16, scope: !1866)
!1896 = !DILocation(line: 431, column: 2, scope: !1866)
!1897 = !DILocation(line: 431, column: 9, scope: !1866)
!1898 = !DILocation(line: 432, column: 2, scope: !1866)
!1899 = !DILocation(line: 432, column: 9, scope: !1866)
!1900 = !DILocation(line: 434, column: 8, scope: !1866)
!1901 = !DILocation(line: 434, column: 21, scope: !1866)
!1902 = !DILocation(line: 434, column: 5, scope: !1866)
!1903 = !DILocation(line: 435, column: 9, scope: !1866)
!1904 = !DILocation(line: 435, column: 2, scope: !1866)
!1905 = !DILocation(line: 437, column: 7, scope: !1866)
!1906 = !DILocation(line: 438, column: 11, scope: !1866)
!1907 = !DILocation(line: 438, column: 11, scope: !1880)
!1908 = !DILocation(line: 438, column: 11, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 438, column: 11)
!1910 = !DILocation(line: 438, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 438, column: 11)
!1912 = !DILocation(line: 438, column: 9, scope: !1866)
!1913 = !DILocation(line: 440, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 440, column: 6)
!1915 = !DILocation(line: 440, column: 13, scope: !1914)
!1916 = !DILocation(line: 440, column: 6, scope: !1866)
!1917 = !DILocation(line: 441, column: 26, scope: !1914)
!1918 = !DILocation(line: 441, column: 47, scope: !1914)
!1919 = !DILocation(line: 441, column: 12, scope: !1914)
!1920 = !DILocation(line: 441, column: 10, scope: !1914)
!1921 = !DILocation(line: 441, column: 3, scope: !1914)
!1922 = !DILocation(line: 443, column: 6, scope: !1884)
!1923 = !DILocation(line: 443, column: 13, scope: !1884)
!1924 = !DILocation(line: 443, column: 6, scope: !1866)
!1925 = !DILocation(line: 444, column: 8, scope: !1883)
!1926 = !DILocation(line: 445, column: 12, scope: !1883)
!1927 = !DILocation(line: 445, column: 12, scope: !1882)
!1928 = !DILocation(line: 445, column: 12, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 445, column: 12)
!1930 = !DILocation(line: 445, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 445, column: 12)
!1932 = !DILocation(line: 445, column: 10, scope: !1883)
!1933 = !DILocation(line: 447, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 447, column: 7)
!1935 = !DILocation(line: 447, column: 14, scope: !1934)
!1936 = !DILocation(line: 447, column: 7, scope: !1883)
!1937 = !DILocation(line: 448, column: 14, scope: !1934)
!1938 = !DILocation(line: 448, column: 30, scope: !1934)
!1939 = !DILocation(line: 448, column: 4, scope: !1934)
!1940 = !DILocation(line: 449, column: 2, scope: !1883)
!1941 = !DILocation(line: 450, column: 1, scope: !1866)
!1942 = distinct !DISubprogram(name: "setup_efi_pci", scope: !3, file: !3, line: 119, type: !1867, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1954, !1958, !1960, !2031, !2048, !2050, !2051}
!1944 = !DILocalVariable(name: "params", arg: 1, scope: !1942, file: !3, line: 119, type: !1014)
!1945 = !DILocalVariable(name: "status", scope: !1942, file: !3, line: 121, type: !92)
!1946 = !DILocalVariable(name: "pci_handle", scope: !1942, file: !3, line: 122, type: !110)
!1947 = !DILocalVariable(name: "pci_proto", scope: !1942, file: !3, line: 123, type: !149)
!1948 = !DILocalVariable(name: "size", scope: !1942, file: !3, line: 124, type: !69)
!1949 = !DILocalVariable(name: "data", scope: !1942, file: !3, line: 125, type: !303)
!1950 = !DILocalVariable(name: "h", scope: !1942, file: !3, line: 126, type: !147)
!1951 = !DILocalVariable(name: "i", scope: !1942, file: !3, line: 127, type: !93)
!1952 = !DILocalVariable(name: "__pad", scope: !1953, file: !3, line: 129, type: !838)
!1953 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 129, column: 11)
!1954 = !DILocalVariable(name: "__pad", scope: !1955, file: !3, line: 133, type: !838)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 133, column: 12)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 132, column: 38)
!1957 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 132, column: 6)
!1958 = !DILocalVariable(name: "__pad", scope: !1959, file: !3, line: 141, type: !838)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 141, column: 12)
!1960 = !DILocalVariable(name: "pci", scope: !1961, file: !3, line: 154, type: !1964)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 153, column: 46)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 153, column: 2)
!1963 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 153, column: 2)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_t", file: !6, line: 716, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_pci_io_protocol", file: !6, line: 735, size: 1280, elements: !1967)
!1967 = !{!1968, !2006}
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !6, line: 736, baseType: !1969, size: 1280)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1966, file: !6, line: 736, size: 1280, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1979, !1980, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2001, !2002, !2003, !2004, !2005}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "poll_mem", scope: !1969, file: !6, line: 737, baseType: !61, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "poll_io", scope: !1969, file: !6, line: 738, baseType: !61, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1969, file: !6, line: 739, baseType: !1974, size: 128, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_access_t", file: !6, line: 728, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 725, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1975, file: !6, line: 726, baseType: !61, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1975, file: !6, line: 727, baseType: !61, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1969, file: !6, line: 740, baseType: !1974, size: 128, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !1969, file: !6, line: 741, baseType: !1981, size: 128, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_config_access_t", file: !6, line: 733, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 730, size: 128, elements: !1983)
!1983 = !{!1984, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1982, file: !6, line: 731, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_cfg_t", file: !6, line: 719, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !1988)
!1988 = !{!92, !1964, !1989, !67, !69, !61}
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PCI_IO_PROTOCOL_WIDTH", file: !6, line: 700, baseType: !33)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1982, file: !6, line: 732, baseType: !1985, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !1969, file: !6, line: 742, baseType: !61, size: 64, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1969, file: !6, line: 743, baseType: !61, size: 64, offset: 576)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1969, file: !6, line: 744, baseType: !61, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_buffer", scope: !1969, file: !6, line: 745, baseType: !61, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffer", scope: !1969, file: !6, line: 746, baseType: !61, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1969, file: !6, line: 747, baseType: !61, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "get_location", scope: !1969, file: !6, line: 748, baseType: !1998, size: 64, offset: 896)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !2000)
!2000 = !{!92, !1964, !104, !104, !104, !104}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1969, file: !6, line: 753, baseType: !61, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "get_bar_attributes", scope: !1969, file: !6, line: 754, baseType: !61, size: 64, offset: 1024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "set_bar_attributes", scope: !1969, file: !6, line: 755, baseType: !61, size: 64, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "romsize", scope: !1969, file: !6, line: 756, baseType: !314, size: 64, offset: 1152)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "romimage", scope: !1969, file: !6, line: 757, baseType: !61, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !1966, file: !6, line: 777, baseType: !2007, size: 704)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1966, file: !6, line: 759, size: 704, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "poll_mem", scope: !2007, file: !6, line: 760, baseType: !67, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "poll_io", scope: !2007, file: !6, line: 761, baseType: !67, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2007, file: !6, line: 762, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_access_32_t", file: !6, line: 714, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 711, size: 64, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2013, file: !6, line: 712, baseType: !67, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2013, file: !6, line: 713, baseType: !67, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2007, file: !6, line: 763, baseType: !2012, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !2007, file: !6, line: 764, baseType: !2012, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !2007, file: !6, line: 765, baseType: !67, size: 32, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2007, file: !6, line: 766, baseType: !67, size: 32, offset: 288)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2007, file: !6, line: 767, baseType: !67, size: 32, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_buffer", scope: !2007, file: !6, line: 768, baseType: !67, size: 32, offset: 352)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffer", scope: !2007, file: !6, line: 769, baseType: !67, size: 32, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2007, file: !6, line: 770, baseType: !67, size: 32, offset: 416)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "get_location", scope: !2007, file: !6, line: 771, baseType: !67, size: 32, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2007, file: !6, line: 772, baseType: !67, size: 32, offset: 480)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "get_bar_attributes", scope: !2007, file: !6, line: 773, baseType: !67, size: 32, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "set_bar_attributes", scope: !2007, file: !6, line: 774, baseType: !67, size: 32, offset: 544)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "romsize", scope: !2007, file: !6, line: 775, baseType: !62, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "romimage", scope: !2007, file: !6, line: 776, baseType: !67, size: 32, offset: 640)
!2031 = !DILocalVariable(name: "rom", scope: !1961, file: !3, line: 155, type: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_setup_rom", file: !2034, line: 127, size: 512, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!2035 = !{!2036, !2037, !2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2033, file: !2034, line: 128, baseType: !304, size: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2033, file: !2034, line: 129, baseType: !2038, size: 16, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !192, line: 109, baseType: !180)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !2033, file: !2034, line: 130, baseType: !2038, size: 16, offset: 144)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pcilen", scope: !2033, file: !2034, line: 131, baseType: !314, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !2033, file: !2034, line: 132, baseType: !69, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2033, file: !2034, line: 133, baseType: !69, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2033, file: !2034, line: 134, baseType: !69, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2033, file: !2034, line: 135, baseType: !69, size: 64, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "romdata", scope: !2033, file: !2034, line: 136, baseType: !2046, offset: 512)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2047, elements: !312)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !192, line: 108, baseType: !177)
!2048 = !DILocalVariable(name: "__pad", scope: !2049, file: !3, line: 157, type: !838)
!2049 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 157, column: 12)
!2050 = !DILabel(scope: !1942, name: "free_handle", file: !3, line: 174)
!2051 = !DILocalVariable(name: "__pad", scope: !2052, file: !3, line: 175, type: !838)
!2052 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 175, column: 2)
!2053 = !DILocation(line: 119, column: 47, scope: !1942)
!2054 = !DILocation(line: 121, column: 2, scope: !1942)
!2055 = !DILocation(line: 121, column: 15, scope: !1942)
!2056 = !DILocation(line: 122, column: 2, scope: !1942)
!2057 = !DILocation(line: 122, column: 9, scope: !1942)
!2058 = !DILocation(line: 123, column: 2, scope: !1942)
!2059 = !DILocation(line: 123, column: 13, scope: !1942)
!2060 = !DILocation(line: 124, column: 2, scope: !1942)
!2061 = !DILocation(line: 124, column: 16, scope: !1942)
!2062 = !DILocation(line: 125, column: 2, scope: !1942)
!2063 = !DILocation(line: 125, column: 21, scope: !1942)
!2064 = !DILocation(line: 126, column: 2, scope: !1942)
!2065 = !DILocation(line: 126, column: 15, scope: !1942)
!2066 = !DILocation(line: 127, column: 2, scope: !1942)
!2067 = !DILocation(line: 127, column: 6, scope: !1942)
!2068 = !DILocation(line: 129, column: 11, scope: !1942)
!2069 = !DILocation(line: 129, column: 11, scope: !1953)
!2070 = !DILocation(line: 129, column: 11, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 129, column: 11)
!2072 = !DILocation(line: 129, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 129, column: 11)
!2074 = !DILocation(line: 129, column: 9, scope: !1942)
!2075 = !DILocation(line: 132, column: 6, scope: !1957)
!2076 = !DILocation(line: 132, column: 13, scope: !1957)
!2077 = !DILocation(line: 132, column: 6, scope: !1942)
!2078 = !DILocation(line: 133, column: 12, scope: !1956)
!2079 = !DILocation(line: 133, column: 12, scope: !1955)
!2080 = !DILocation(line: 133, column: 12, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 133, column: 12)
!2082 = !DILocation(line: 133, column: 12, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 133, column: 12)
!2084 = !DILocation(line: 133, column: 10, scope: !1956)
!2085 = !DILocation(line: 136, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 136, column: 7)
!2087 = !DILocation(line: 136, column: 14, scope: !2086)
!2088 = !DILocation(line: 136, column: 7, scope: !1956)
!2089 = !DILocation(line: 137, column: 4, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 136, column: 30)
!2091 = !DILocation(line: 138, column: 4, scope: !2090)
!2092 = !DILocation(line: 141, column: 12, scope: !1956)
!2093 = !DILocation(line: 141, column: 12, scope: !1959)
!2094 = !DILocation(line: 141, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 141, column: 12)
!2096 = !DILocation(line: 141, column: 12, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 141, column: 12)
!2098 = !DILocation(line: 141, column: 10, scope: !1956)
!2099 = !DILocation(line: 143, column: 2, scope: !1956)
!2100 = !DILocation(line: 145, column: 6, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 145, column: 6)
!2102 = !DILocation(line: 145, column: 13, scope: !2101)
!2103 = !DILocation(line: 145, column: 6, scope: !1942)
!2104 = !DILocation(line: 146, column: 3, scope: !2101)
!2105 = !DILocation(line: 148, column: 45, scope: !1942)
!2106 = !DILocation(line: 148, column: 53, scope: !1942)
!2107 = !DILocation(line: 148, column: 57, scope: !1942)
!2108 = !DILocation(line: 148, column: 9, scope: !1942)
!2109 = !DILocation(line: 148, column: 7, scope: !1942)
!2110 = !DILocation(line: 150, column: 2, scope: !1942)
!2111 = !DILocation(line: 150, column: 9, scope: !1942)
!2112 = !DILocation(line: 150, column: 14, scope: !1942)
!2113 = !DILocation(line: 150, column: 17, scope: !1942)
!2114 = !DILocation(line: 150, column: 23, scope: !1942)
!2115 = !DILocation(line: 0, scope: !1942)
!2116 = !DILocation(line: 151, column: 46, scope: !1942)
!2117 = !DILocation(line: 151, column: 52, scope: !1942)
!2118 = !DILocation(line: 151, column: 10, scope: !1942)
!2119 = !DILocation(line: 151, column: 8, scope: !1942)
!2120 = distinct !{!2120, !2110, !2117, !980, !981}
!2121 = !DILocation(line: 153, column: 2, scope: !1963)
!2122 = !DILocation(line: 153, column: 2, scope: !1962)
!2123 = !DILocation(line: 0, scope: !1962)
!2124 = !DILocation(line: 154, column: 3, scope: !1961)
!2125 = !DILocation(line: 154, column: 26, scope: !1961)
!2126 = !DILocation(line: 155, column: 3, scope: !1961)
!2127 = !DILocation(line: 155, column: 25, scope: !1961)
!2128 = !DILocation(line: 157, column: 12, scope: !1961)
!2129 = !DILocation(line: 157, column: 12, scope: !2049)
!2130 = !DILocation(line: 157, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 157, column: 12)
!2132 = !DILocation(line: 157, column: 12, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 157, column: 12)
!2134 = !DILocation(line: 157, column: 10, scope: !1961)
!2135 = !DILocation(line: 159, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 159, column: 7)
!2137 = !DILocation(line: 159, column: 14, scope: !2136)
!2138 = !DILocation(line: 159, column: 29, scope: !2136)
!2139 = !DILocation(line: 159, column: 33, scope: !2136)
!2140 = !DILocation(line: 159, column: 7, scope: !1961)
!2141 = !DILocation(line: 160, column: 4, scope: !2136)
!2142 = !DILocation(line: 162, column: 35, scope: !1961)
!2143 = !DILocation(line: 162, column: 12, scope: !1961)
!2144 = !DILocation(line: 162, column: 10, scope: !1961)
!2145 = !DILocation(line: 163, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 163, column: 7)
!2147 = !DILocation(line: 163, column: 14, scope: !2146)
!2148 = !DILocation(line: 163, column: 7, scope: !1961)
!2149 = !DILocation(line: 164, column: 4, scope: !2146)
!2150 = !DILocation(line: 166, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 166, column: 7)
!2152 = !DILocation(line: 166, column: 7, scope: !1961)
!2153 = !DILocation(line: 167, column: 32, scope: !2151)
!2154 = !DILocation(line: 167, column: 17, scope: !2151)
!2155 = !DILocation(line: 167, column: 4, scope: !2151)
!2156 = !DILocation(line: 167, column: 10, scope: !2151)
!2157 = !DILocation(line: 167, column: 15, scope: !2151)
!2158 = !DILocation(line: 169, column: 44, scope: !2151)
!2159 = !DILocation(line: 169, column: 29, scope: !2151)
!2160 = !DILocation(line: 169, column: 4, scope: !2151)
!2161 = !DILocation(line: 169, column: 12, scope: !2151)
!2162 = !DILocation(line: 169, column: 16, scope: !2151)
!2163 = !DILocation(line: 169, column: 27, scope: !2151)
!2164 = !DILocation(line: 171, column: 31, scope: !1961)
!2165 = !DILocation(line: 171, column: 8, scope: !1961)
!2166 = !DILocation(line: 172, column: 2, scope: !1962)
!2167 = !DILocation(line: 172, column: 2, scope: !1961)
!2168 = distinct !{!2168, !2121, !2169, !980, !981}
!2169 = !DILocation(line: 172, column: 2, scope: !1963)
!2170 = !DILocation(line: 174, column: 1, scope: !1942)
!2171 = !DILocation(line: 175, column: 2, scope: !1942)
!2172 = !DILocation(line: 175, column: 2, scope: !2052)
!2173 = !DILocation(line: 175, column: 2, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 175, column: 2)
!2175 = !DILocation(line: 175, column: 2, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 175, column: 2)
!2177 = !DILocation(line: 176, column: 1, scope: !1942)
!2178 = distinct !DISubprogram(name: "setup_quirks", scope: !3, file: !3, line: 336, type: !1867, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "boot_params", arg: 1, scope: !2178, file: !3, line: 336, type: !1014)
!2181 = !DILocation(line: 336, column: 46, scope: !2178)
!2182 = !DILocation(line: 341, column: 1, scope: !2178)
!2183 = distinct !DISubprogram(name: "setup_unaccepted_memory", scope: !3, file: !3, line: 304, type: !1861, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2184 = !{!2185, !2186, !2202}
!2185 = !DILocalVariable(name: "mem_acceptance_proto", scope: !2183, file: !3, line: 306, type: !149)
!2186 = !DILocalVariable(name: "proto", scope: !2183, file: !3, line: 307, type: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "sev_memory_acceptance_protocol_t", file: !3, line: 31, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sev_memory_acceptance_protocol", file: !3, line: 32, size: 64, elements: !2190)
!2190 = !{!2191, !2198}
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !3, line: 33, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !3, line: 33, size: 64, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unaccepted_memory", scope: !2192, file: !3, line: 34, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !2197)
!2197 = !{!92, !2187}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !2189, file: !3, line: 39, baseType: !2199, size: 32)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !3, line: 37, size: 32, elements: !2200)
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unaccepted_memory", scope: !2199, file: !3, line: 38, baseType: !67, size: 32)
!2202 = !DILocalVariable(name: "status", scope: !2183, file: !3, line: 308, type: !92)
!2203 = !DILocation(line: 306, column: 2, scope: !2183)
!2204 = !DILocation(line: 306, column: 13, scope: !2183)
!2205 = !DILocation(line: 307, column: 2, scope: !2183)
!2206 = !DILocation(line: 307, column: 36, scope: !2183)
!2207 = !DILocation(line: 308, column: 2, scope: !2183)
!2208 = !DILocation(line: 308, column: 15, scope: !2183)
!2209 = !DILocation(line: 325, column: 1, scope: !2183)
!2210 = distinct !DISubprogram(name: "exit_boot", scope: !3, file: !3, line: 728, type: !2211, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!92, !1014, !61}
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219}
!2214 = !DILocalVariable(name: "boot_params", arg: 1, scope: !2210, file: !3, line: 728, type: !1014)
!2215 = !DILocalVariable(name: "handle", arg: 2, scope: !2210, file: !3, line: 728, type: !61)
!2216 = !DILocalVariable(name: "e820ext", scope: !2210, file: !3, line: 730, type: !303)
!2217 = !DILocalVariable(name: "e820ext_size", scope: !2210, file: !3, line: 731, type: !68)
!2218 = !DILocalVariable(name: "status", scope: !2210, file: !3, line: 732, type: !92)
!2219 = !DILocalVariable(name: "priv", scope: !2210, file: !3, line: 733, type: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exit_boot_struct", file: !3, line: 702, size: 128, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "boot_params", scope: !2220, file: !3, line: 703, baseType: !1014, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "efi", scope: !2220, file: !3, line: 704, baseType: !2224, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!2225 = !DILocation(line: 728, column: 51, scope: !2210)
!2226 = !DILocation(line: 728, column: 70, scope: !2210)
!2227 = !DILocation(line: 730, column: 2, scope: !2210)
!2228 = !DILocation(line: 730, column: 21, scope: !2210)
!2229 = !DILocation(line: 731, column: 2, scope: !2210)
!2230 = !DILocation(line: 731, column: 8, scope: !2210)
!2231 = !DILocation(line: 732, column: 2, scope: !2210)
!2232 = !DILocation(line: 732, column: 15, scope: !2210)
!2233 = !DILocation(line: 733, column: 2, scope: !2210)
!2234 = !DILocation(line: 733, column: 26, scope: !2210)
!2235 = !DILocation(line: 735, column: 21, scope: !2210)
!2236 = !DILocation(line: 735, column: 7, scope: !2210)
!2237 = !DILocation(line: 735, column: 19, scope: !2210)
!2238 = !DILocation(line: 736, column: 15, scope: !2210)
!2239 = !DILocation(line: 736, column: 28, scope: !2210)
!2240 = !DILocation(line: 736, column: 7, scope: !2210)
!2241 = !DILocation(line: 736, column: 12, scope: !2210)
!2242 = !DILocation(line: 738, column: 25, scope: !2210)
!2243 = !DILocation(line: 738, column: 11, scope: !2210)
!2244 = !DILocation(line: 738, column: 9, scope: !2210)
!2245 = !DILocation(line: 739, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 739, column: 6)
!2247 = !DILocation(line: 739, column: 13, scope: !2246)
!2248 = !DILocation(line: 739, column: 6, scope: !2210)
!2249 = !DILocation(line: 740, column: 10, scope: !2246)
!2250 = !DILocation(line: 740, column: 3, scope: !2246)
!2251 = !DILocation(line: 743, column: 34, scope: !2210)
!2252 = !DILocation(line: 743, column: 11, scope: !2210)
!2253 = !DILocation(line: 743, column: 9, scope: !2210)
!2254 = !DILocation(line: 744, column: 6, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 744, column: 6)
!2256 = !DILocation(line: 744, column: 13, scope: !2255)
!2257 = !DILocation(line: 744, column: 6, scope: !2210)
!2258 = !DILocation(line: 745, column: 10, scope: !2255)
!2259 = !DILocation(line: 745, column: 3, scope: !2255)
!2260 = !DILocation(line: 748, column: 2, scope: !2210)
!2261 = !DILocation(line: 748, column: 15, scope: !2210)
!2262 = !DILocation(line: 748, column: 25, scope: !2210)
!2263 = !DILocation(line: 750, column: 22, scope: !2210)
!2264 = !DILocation(line: 750, column: 35, scope: !2210)
!2265 = !DILocation(line: 750, column: 44, scope: !2210)
!2266 = !DILocation(line: 750, column: 11, scope: !2210)
!2267 = !DILocation(line: 750, column: 9, scope: !2210)
!2268 = !DILocation(line: 751, column: 6, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 751, column: 6)
!2270 = !DILocation(line: 751, column: 13, scope: !2269)
!2271 = !DILocation(line: 751, column: 6, scope: !2210)
!2272 = !DILocation(line: 752, column: 10, scope: !2269)
!2273 = !DILocation(line: 752, column: 3, scope: !2269)
!2274 = !DILocation(line: 754, column: 2, scope: !2210)
!2275 = !DILocation(line: 755, column: 1, scope: !2210)
!2276 = distinct !DISubprogram(name: "sev_enable", scope: !2277, file: !2277, line: 222, type: !1867, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2277 = !DIFile(filename: "./arch/x86/include/asm/sev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1121459c44dd4b204cffd62c421bf03d")
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "bp", arg: 1, scope: !2276, file: !2277, line: 222, type: !1014)
!2280 = !DILocation(line: 222, column: 51, scope: !2276)
!2281 = !DILocation(line: 222, column: 57, scope: !2276)
!2282 = !DISubprogram(name: "efi_5level_switch", scope: !1724, file: !1724, line: 13, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2283 = distinct !DISubprogram(name: "enter_kernel", scope: !3, file: !3, line: 862, type: !2284, scopeLine: 864, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !69, !1014}
!2286 = !{!2287, !2288}
!2287 = !DILocalVariable(name: "kernel_addr", arg: 1, scope: !2283, file: !3, line: 862, type: !69)
!2288 = !DILocalVariable(name: "boot_params", arg: 2, scope: !2283, file: !3, line: 863, type: !1014)
!2289 = !DILocation(line: 862, column: 51, scope: !2283)
!2290 = !DILocation(line: 863, column: 29, scope: !2283)
!2291 = !DILocation(line: 866, column: 21, scope: !2283)
!2292 = !DILocation(line: 866, column: 39, scope: !2283)
!2293 = !DILocation(line: 866, column: 2, scope: !2283)
!2294 = !{i64 22327}
!2295 = !DILocation(line: 868, column: 2, scope: !2283)
!2296 = !DILocation(line: 868, column: 2, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 868, column: 2)
!2298 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 868, column: 2)
!2299 = !{i64 2156953244, i64 2156953069, i64 2156953120, i64 2156953172, i64 2156953200}
!2300 = !DILocation(line: 868, column: 2, scope: !2298)
!2301 = !DILocation(line: 869, column: 1, scope: !2283)
!2302 = distinct !DISubprogram(name: "efi_handover_entry", scope: !3, file: !3, line: 1005, type: !1505, scopeLine: 1007, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2303 = !{!2304, !2305, !2306}
!2304 = !DILocalVariable(name: "handle", arg: 1, scope: !2302, file: !3, line: 1005, type: !147)
!2305 = !DILocalVariable(name: "sys_table_arg", arg: 2, scope: !2302, file: !3, line: 1005, type: !665)
!2306 = !DILocalVariable(name: "boot_params", arg: 3, scope: !2302, file: !3, line: 1006, type: !1014)
!2307 = !DILocation(line: 1005, column: 38, scope: !2302)
!2308 = !DILocation(line: 1005, column: 66, scope: !2302)
!2309 = !DILocation(line: 1006, column: 24, scope: !2302)
!2310 = !DILocation(line: 1008, column: 2, scope: !2302)
!2311 = !DILocation(line: 1009, column: 17, scope: !2302)
!2312 = !DILocation(line: 1009, column: 25, scope: !2302)
!2313 = !DILocation(line: 1009, column: 40, scope: !2302)
!2314 = !DILocation(line: 1009, column: 2, scope: !2302)
!2315 = distinct !DISubprogram(name: "efi_is_64bit", scope: !985, file: !985, line: 198, type: !986, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2316 = !DILocation(line: 202, column: 9, scope: !2315)
!2317 = !DILocation(line: 202, column: 2, scope: !2315)
!2318 = distinct !DISubprogram(name: "ror64", scope: !2319, file: !2319, line: 115, type: !2320, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2319 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!64, !64, !7}
!2322 = !{!2323, !2324}
!2323 = !DILocalVariable(name: "word", arg: 1, scope: !2318, file: !2319, line: 115, type: !64)
!2324 = !DILocalVariable(name: "shift", arg: 2, scope: !2318, file: !2319, line: 115, type: !7)
!2325 = !DILocation(line: 115, column: 33, scope: !2318)
!2326 = !DILocation(line: 115, column: 52, scope: !2318)
!2327 = !DILocation(line: 117, column: 10, scope: !2318)
!2328 = !DILocation(line: 117, column: 19, scope: !2318)
!2329 = !DILocation(line: 117, column: 25, scope: !2318)
!2330 = !DILocation(line: 117, column: 15, scope: !2318)
!2331 = !DILocation(line: 117, column: 35, scope: !2318)
!2332 = !DILocation(line: 117, column: 46, scope: !2318)
!2333 = !DILocation(line: 117, column: 45, scope: !2318)
!2334 = !DILocation(line: 117, column: 53, scope: !2318)
!2335 = !DILocation(line: 117, column: 40, scope: !2318)
!2336 = !DILocation(line: 117, column: 32, scope: !2318)
!2337 = !DILocation(line: 117, column: 2, scope: !2318)
!2338 = distinct !DISubprogram(name: "rol32", scope: !2319, file: !2319, line: 125, type: !2339, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!68, !68, !7}
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "word", arg: 1, scope: !2338, file: !2319, line: 125, type: !68)
!2343 = !DILocalVariable(name: "shift", arg: 2, scope: !2338, file: !2319, line: 125, type: !7)
!2344 = !DILocation(line: 125, column: 33, scope: !2338)
!2345 = !DILocation(line: 125, column: 52, scope: !2338)
!2346 = !DILocation(line: 127, column: 10, scope: !2338)
!2347 = !DILocation(line: 127, column: 19, scope: !2338)
!2348 = !DILocation(line: 127, column: 25, scope: !2338)
!2349 = !DILocation(line: 127, column: 15, scope: !2338)
!2350 = !DILocation(line: 127, column: 35, scope: !2338)
!2351 = !DILocation(line: 127, column: 46, scope: !2338)
!2352 = !DILocation(line: 127, column: 45, scope: !2338)
!2353 = !DILocation(line: 127, column: 53, scope: !2338)
!2354 = !DILocation(line: 127, column: 40, scope: !2338)
!2355 = !DILocation(line: 127, column: 32, scope: !2338)
!2356 = !DILocation(line: 127, column: 2, scope: !2338)
!2357 = distinct !DISubprogram(name: "efi64_convert_status", scope: !985, file: !985, line: 245, type: !2358, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!67, !92}
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "status", arg: 1, scope: !2357, file: !985, line: 245, type: !92)
!2362 = !DILocation(line: 245, column: 53, scope: !2357)
!2363 = !DILocation(line: 247, column: 15, scope: !2357)
!2364 = !DILocation(line: 247, column: 29, scope: !2357)
!2365 = !DILocation(line: 247, column: 36, scope: !2357)
!2366 = !DILocation(line: 247, column: 22, scope: !2357)
!2367 = !DILocation(line: 247, column: 9, scope: !2357)
!2368 = !DILocation(line: 247, column: 2, scope: !2357)
!2369 = distinct !DISubprogram(name: "snp_get_unsupported_features", scope: !2277, file: !2277, line: 242, type: !2370, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!62, !62}
!2372 = !{!2373}
!2373 = !DILocalVariable(name: "status", arg: 1, scope: !2369, file: !2277, line: 242, type: !62)
!2374 = !DILocation(line: 242, column: 52, scope: !2369)
!2375 = !DILocation(line: 242, column: 62, scope: !2369)
!2376 = distinct !DISubprogram(name: "sev_get_status", scope: !2277, file: !2277, line: 243, type: !2377, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!62}
!2379 = !DILocation(line: 243, column: 42, scope: !2376)
!2380 = !DISubprogram(name: "strstr", scope: !2381, file: !2381, line: 122, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2381 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!301, !702, !702}
!2384 = !DISubprogram(name: "efi_parse_options", scope: !6, file: !6, line: 1000, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = distinct !DISubprogram(name: "efi_get_seed", scope: !3, file: !3, line: 770, type: !2386, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !61, !93}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "seed", arg: 1, scope: !2385, file: !3, line: 770, type: !61)
!2390 = !DILocalVariable(name: "size", arg: 2, scope: !2385, file: !3, line: 770, type: !93)
!2391 = !DILocation(line: 770, column: 32, scope: !2385)
!2392 = !DILocation(line: 770, column: 42, scope: !2385)
!2393 = !DILocation(line: 772, column: 23, scope: !2385)
!2394 = !DILocation(line: 772, column: 29, scope: !2385)
!2395 = !DILocation(line: 772, column: 2, scope: !2385)
!2396 = !DILocation(line: 778, column: 28, scope: !2385)
!2397 = !DILocation(line: 778, column: 20, scope: !2385)
!2398 = !DILocation(line: 778, column: 25, scope: !2385)
!2399 = !DILocation(line: 779, column: 1, scope: !2385)
!2400 = !DISubprogram(name: "memcmp", scope: !2381, file: !2381, line: 196, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!93, !246, !246, !1439}
!2403 = distinct !DISubprogram(name: "efistub_fw_vendor", scope: !3, file: !3, line: 327, type: !2404, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!199}
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "vendor", scope: !2403, file: !3, line: 329, type: !69)
!2408 = !DILocation(line: 329, column: 2, scope: !2403)
!2409 = !DILocation(line: 329, column: 16, scope: !2403)
!2410 = !DILocation(line: 329, column: 25, scope: !2403)
!2411 = !DILocation(line: 331, column: 25, scope: !2403)
!2412 = !DILocation(line: 331, column: 9, scope: !2403)
!2413 = !DILocation(line: 332, column: 1, scope: !2403)
!2414 = !DILocation(line: 331, column: 2, scope: !2403)
!2415 = !DISubprogram(name: "efi_random_alloc", scope: !6, file: !6, line: 957, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!92, !69, !69, !104, !69, !93, !69, !69}
!2418 = !DISubprogram(name: "decompress_kernel", scope: !2419, file: !2419, line: 87, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2419 = !DIFile(filename: "./arch/x86/include/asm/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6693c14e2d1cb6547c3dd239e509b272")
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!69, !2422, !69, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !301}
!2426 = distinct !DISubprogram(name: "error", scope: !3, file: !3, line: 781, type: !2424, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "str", arg: 1, scope: !2426, file: !3, line: 781, type: !301)
!2429 = !DILocation(line: 781, column: 25, scope: !2426)
!2430 = !DILocation(line: 783, column: 2, scope: !2426)
!2431 = !DILocation(line: 784, column: 1, scope: !2426)
!2432 = !DISubprogram(name: "efi_get_random_bytes", scope: !6, file: !6, line: 955, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!92, !69, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2436 = !DISubprogram(name: "kaslr_get_random_long", scope: !2437, file: !2437, line: 5, type: !2438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2437 = !DIFile(filename: "./arch/x86/include/asm/kaslr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bde560627748bf8418f9ac53248d5409")
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!69, !702}
!2440 = !DISubprogram(name: "efi_setup_gop", scope: !6, file: !6, line: 1004, type: !2441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!92, !1873, !148, !69}
!2443 = distinct !DISubprogram(name: "setup_uga", scope: !3, file: !3, line: 347, type: !2441, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2472, !2473, !2474, !2475, !2477, !2479, !2483, !2484, !2485, !2486, !2487, !2488, !2490, !2492, !2494, !2496, !2497}
!2445 = !DILocalVariable(name: "si", arg: 1, scope: !2443, file: !3, line: 347, type: !1873)
!2446 = !DILocalVariable(name: "uga_proto", arg: 2, scope: !2443, file: !3, line: 347, type: !148)
!2447 = !DILocalVariable(name: "size", arg: 3, scope: !2443, file: !3, line: 347, type: !69)
!2448 = !DILocalVariable(name: "status", scope: !2443, file: !3, line: 349, type: !92)
!2449 = !DILocalVariable(name: "width", scope: !2443, file: !3, line: 350, type: !67)
!2450 = !DILocalVariable(name: "height", scope: !2443, file: !3, line: 350, type: !67)
!2451 = !DILocalVariable(name: "uga_handle", scope: !2443, file: !3, line: 351, type: !110)
!2452 = !DILocalVariable(name: "uga", scope: !2443, file: !3, line: 352, type: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_uga_draw_protocol_t", file: !6, line: 466, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_uga_draw_protocol", file: !6, line: 468, size: 192, elements: !2456)
!2456 = !{!2457, !2466}
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !6, line: 469, baseType: !2458, size: 192)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2455, file: !6, line: 469, size: 192, elements: !2459)
!2459 = !{!2460, !2464, !2465}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_mode", scope: !2458, file: !6, line: 470, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !2463)
!2463 = !{!92, !2453, !105, !105, !105, !105}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !2458, file: !6, line: 472, baseType: !61, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "blt", scope: !2458, file: !6, line: 473, baseType: !61, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !2455, file: !6, line: 479, baseType: !2467, size: 96)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2455, file: !6, line: 475, size: 96, elements: !2468)
!2468 = !{!2469, !2470, !2471}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_mode", scope: !2467, file: !6, line: 476, baseType: !67, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !2467, file: !6, line: 477, baseType: !67, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "blt", scope: !2467, file: !6, line: 478, baseType: !67, size: 32, offset: 64)
!2472 = !DILocalVariable(name: "first_uga", scope: !2443, file: !3, line: 352, type: !2453)
!2473 = !DILocalVariable(name: "handle", scope: !2443, file: !3, line: 353, type: !147)
!2474 = !DILocalVariable(name: "i", scope: !2443, file: !3, line: 354, type: !93)
!2475 = !DILocalVariable(name: "__pad", scope: !2476, file: !3, line: 356, type: !838)
!2476 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 356, column: 11)
!2477 = !DILocalVariable(name: "__pad", scope: !2478, file: !3, line: 361, type: !838)
!2478 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 361, column: 11)
!2479 = !DILocalVariable(name: "pciio_proto", scope: !2480, file: !3, line: 371, type: !149)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 370, column: 51)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 370, column: 2)
!2482 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 370, column: 2)
!2483 = !DILocalVariable(name: "w", scope: !2480, file: !3, line: 372, type: !67)
!2484 = !DILocalVariable(name: "h", scope: !2480, file: !3, line: 372, type: !67)
!2485 = !DILocalVariable(name: "depth", scope: !2480, file: !3, line: 372, type: !67)
!2486 = !DILocalVariable(name: "refresh", scope: !2480, file: !3, line: 372, type: !67)
!2487 = !DILocalVariable(name: "pciio", scope: !2480, file: !3, line: 373, type: !61)
!2488 = !DILocalVariable(name: "__pad", scope: !2489, file: !3, line: 375, type: !838)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 375, column: 12)
!2490 = !DILocalVariable(name: "__pad", scope: !2491, file: !3, line: 381, type: !838)
!2491 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 381, column: 3)
!2492 = !DILocalVariable(name: "__inst", scope: !2493, file: !3, line: 383, type: !2453)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 383, column: 12)
!2494 = !DILocalVariable(name: "__pad", scope: !2495, file: !3, line: 383, type: !838)
!2495 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 383, column: 12)
!2496 = !DILabel(scope: !2443, name: "free_handle", file: !3, line: 418)
!2497 = !DILocalVariable(name: "__pad", scope: !2498, file: !3, line: 419, type: !838)
!2498 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 419, column: 2)
!2499 = !DILocation(line: 347, column: 31, scope: !2443)
!2500 = !DILocation(line: 347, column: 47, scope: !2443)
!2501 = !DILocation(line: 347, column: 72, scope: !2443)
!2502 = !DILocation(line: 349, column: 2, scope: !2443)
!2503 = !DILocation(line: 349, column: 15, scope: !2443)
!2504 = !DILocation(line: 350, column: 2, scope: !2443)
!2505 = !DILocation(line: 350, column: 6, scope: !2443)
!2506 = !DILocation(line: 350, column: 13, scope: !2443)
!2507 = !DILocation(line: 351, column: 2, scope: !2443)
!2508 = !DILocation(line: 351, column: 9, scope: !2443)
!2509 = !DILocation(line: 352, column: 2, scope: !2443)
!2510 = !DILocation(line: 352, column: 27, scope: !2443)
!2511 = !DILocation(line: 352, column: 40, scope: !2443)
!2512 = !DILocation(line: 353, column: 2, scope: !2443)
!2513 = !DILocation(line: 353, column: 15, scope: !2443)
!2514 = !DILocation(line: 354, column: 2, scope: !2443)
!2515 = !DILocation(line: 354, column: 6, scope: !2443)
!2516 = !DILocation(line: 356, column: 11, scope: !2443)
!2517 = !DILocation(line: 356, column: 11, scope: !2476)
!2518 = !DILocation(line: 356, column: 11, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 356, column: 11)
!2520 = !DILocation(line: 356, column: 11, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 356, column: 11)
!2522 = !DILocation(line: 356, column: 9, scope: !2443)
!2523 = !DILocation(line: 358, column: 6, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 358, column: 6)
!2525 = !DILocation(line: 358, column: 13, scope: !2524)
!2526 = !DILocation(line: 358, column: 6, scope: !2443)
!2527 = !DILocation(line: 359, column: 10, scope: !2524)
!2528 = !DILocation(line: 359, column: 3, scope: !2524)
!2529 = !DILocation(line: 361, column: 11, scope: !2443)
!2530 = !DILocation(line: 361, column: 11, scope: !2478)
!2531 = !DILocation(line: 361, column: 11, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 361, column: 11)
!2533 = !DILocation(line: 361, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 361, column: 11)
!2535 = !DILocation(line: 361, column: 9, scope: !2443)
!2536 = !DILocation(line: 363, column: 6, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 363, column: 6)
!2538 = !DILocation(line: 363, column: 13, scope: !2537)
!2539 = !DILocation(line: 363, column: 6, scope: !2443)
!2540 = !DILocation(line: 364, column: 3, scope: !2537)
!2541 = !DILocation(line: 366, column: 9, scope: !2443)
!2542 = !DILocation(line: 367, column: 8, scope: !2443)
!2543 = !DILocation(line: 369, column: 12, scope: !2443)
!2544 = !DILocation(line: 370, column: 2, scope: !2482)
!2545 = !DILocation(line: 370, column: 2, scope: !2481)
!2546 = !DILocation(line: 0, scope: !2481)
!2547 = !DILocation(line: 371, column: 3, scope: !2480)
!2548 = !DILocation(line: 371, column: 14, scope: !2480)
!2549 = !DILocation(line: 372, column: 3, scope: !2480)
!2550 = !DILocation(line: 372, column: 7, scope: !2480)
!2551 = !DILocation(line: 372, column: 10, scope: !2480)
!2552 = !DILocation(line: 372, column: 13, scope: !2480)
!2553 = !DILocation(line: 372, column: 20, scope: !2480)
!2554 = !DILocation(line: 373, column: 3, scope: !2480)
!2555 = !DILocation(line: 373, column: 9, scope: !2480)
!2556 = !DILocation(line: 375, column: 12, scope: !2480)
!2557 = !DILocation(line: 375, column: 12, scope: !2489)
!2558 = !DILocation(line: 375, column: 12, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 375, column: 12)
!2560 = !DILocation(line: 375, column: 12, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 375, column: 12)
!2562 = !DILocation(line: 375, column: 10, scope: !2480)
!2563 = !DILocation(line: 377, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 377, column: 7)
!2565 = !DILocation(line: 377, column: 14, scope: !2564)
!2566 = !DILocation(line: 377, column: 7, scope: !2480)
!2567 = !DILocation(line: 378, column: 4, scope: !2564)
!2568 = !DILocation(line: 380, column: 9, scope: !2480)
!2569 = !DILocation(line: 381, column: 3, scope: !2480)
!2570 = !DILocation(line: 381, column: 3, scope: !2491)
!2571 = !DILocation(line: 381, column: 3, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 381, column: 3)
!2573 = !DILocation(line: 381, column: 3, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 381, column: 3)
!2575 = !DILocation(line: 383, column: 12, scope: !2493)
!2576 = !DILocation(line: 383, column: 12, scope: !2495)
!2577 = !DILocation(line: 383, column: 12, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 383, column: 12)
!2579 = !DILocation(line: 383, column: 12, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 383, column: 12)
!2581 = !DILocation(line: 383, column: 12, scope: !2480)
!2582 = !DILocation(line: 383, column: 10, scope: !2480)
!2583 = !DILocation(line: 384, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 384, column: 7)
!2585 = !DILocation(line: 384, column: 14, scope: !2584)
!2586 = !DILocation(line: 384, column: 29, scope: !2584)
!2587 = !DILocation(line: 384, column: 34, scope: !2584)
!2588 = !DILocation(line: 384, column: 44, scope: !2584)
!2589 = !DILocation(line: 384, column: 47, scope: !2584)
!2590 = !DILocation(line: 384, column: 7, scope: !2480)
!2591 = !DILocation(line: 385, column: 12, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 384, column: 55)
!2593 = !DILocation(line: 385, column: 10, scope: !2592)
!2594 = !DILocation(line: 386, column: 13, scope: !2592)
!2595 = !DILocation(line: 386, column: 11, scope: !2592)
!2596 = !DILocation(line: 392, column: 8, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 392, column: 8)
!2598 = !DILocation(line: 392, column: 8, scope: !2592)
!2599 = !DILocation(line: 393, column: 5, scope: !2597)
!2600 = !DILocation(line: 395, column: 16, scope: !2592)
!2601 = !DILocation(line: 395, column: 14, scope: !2592)
!2602 = !DILocation(line: 396, column: 3, scope: !2592)
!2603 = !DILocation(line: 397, column: 2, scope: !2481)
!2604 = !DILocation(line: 397, column: 2, scope: !2480)
!2605 = distinct !{!2605, !2544, !2606, !980, !981}
!2606 = !DILocation(line: 397, column: 2, scope: !2482)
!2607 = !DILocation(line: 399, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 399, column: 6)
!2609 = !DILocation(line: 399, column: 13, scope: !2608)
!2610 = !DILocation(line: 399, column: 17, scope: !2608)
!2611 = !DILocation(line: 399, column: 6, scope: !2443)
!2612 = !DILocation(line: 400, column: 3, scope: !2608)
!2613 = !DILocation(line: 403, column: 2, scope: !2443)
!2614 = !DILocation(line: 403, column: 6, scope: !2443)
!2615 = !DILocation(line: 403, column: 23, scope: !2443)
!2616 = !DILocation(line: 405, column: 2, scope: !2443)
!2617 = !DILocation(line: 405, column: 6, scope: !2443)
!2618 = !DILocation(line: 405, column: 17, scope: !2443)
!2619 = !DILocation(line: 406, column: 19, scope: !2443)
!2620 = !DILocation(line: 406, column: 2, scope: !2443)
!2621 = !DILocation(line: 406, column: 6, scope: !2443)
!2622 = !DILocation(line: 406, column: 17, scope: !2443)
!2623 = !DILocation(line: 407, column: 20, scope: !2443)
!2624 = !DILocation(line: 407, column: 2, scope: !2443)
!2625 = !DILocation(line: 407, column: 6, scope: !2443)
!2626 = !DILocation(line: 407, column: 18, scope: !2443)
!2627 = !DILocation(line: 409, column: 2, scope: !2443)
!2628 = !DILocation(line: 409, column: 6, scope: !2443)
!2629 = !DILocation(line: 409, column: 16, scope: !2443)
!2630 = !DILocation(line: 410, column: 2, scope: !2443)
!2631 = !DILocation(line: 410, column: 6, scope: !2443)
!2632 = !DILocation(line: 410, column: 15, scope: !2443)
!2633 = !DILocation(line: 411, column: 2, scope: !2443)
!2634 = !DILocation(line: 411, column: 6, scope: !2443)
!2635 = !DILocation(line: 411, column: 18, scope: !2443)
!2636 = !DILocation(line: 412, column: 2, scope: !2443)
!2637 = !DILocation(line: 412, column: 6, scope: !2443)
!2638 = !DILocation(line: 412, column: 17, scope: !2443)
!2639 = !DILocation(line: 413, column: 2, scope: !2443)
!2640 = !DILocation(line: 413, column: 6, scope: !2443)
!2641 = !DILocation(line: 413, column: 17, scope: !2443)
!2642 = !DILocation(line: 414, column: 2, scope: !2443)
!2643 = !DILocation(line: 414, column: 6, scope: !2443)
!2644 = !DILocation(line: 414, column: 16, scope: !2443)
!2645 = !DILocation(line: 415, column: 2, scope: !2443)
!2646 = !DILocation(line: 415, column: 6, scope: !2443)
!2647 = !DILocation(line: 415, column: 17, scope: !2443)
!2648 = !DILocation(line: 416, column: 2, scope: !2443)
!2649 = !DILocation(line: 416, column: 6, scope: !2443)
!2650 = !DILocation(line: 416, column: 16, scope: !2443)
!2651 = !DILocation(line: 418, column: 1, scope: !2443)
!2652 = !DILocation(line: 419, column: 2, scope: !2443)
!2653 = !DILocation(line: 419, column: 2, scope: !2498)
!2654 = !DILocation(line: 419, column: 2, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 419, column: 2)
!2656 = !DILocation(line: 419, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 419, column: 2)
!2658 = !DILocation(line: 421, column: 9, scope: !2443)
!2659 = !DILocation(line: 421, column: 2, scope: !2443)
!2660 = !DILocation(line: 422, column: 1, scope: !2443)
!2661 = distinct !DISubprogram(name: "preserve_pci_rom_image", scope: !3, file: !3, line: 43, type: !2662, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2665)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!92, !1964, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2675, !2677, !2679, !2681, !2683, !2685, !2687, !2688}
!2666 = !DILocalVariable(name: "pci", arg: 1, scope: !2661, file: !3, line: 43, type: !1964)
!2667 = !DILocalVariable(name: "__rom", arg: 2, scope: !2661, file: !3, line: 43, type: !2664)
!2668 = !DILocalVariable(name: "rom", scope: !2661, file: !3, line: 45, type: !2032)
!2669 = !DILocalVariable(name: "status", scope: !2661, file: !3, line: 46, type: !92)
!2670 = !DILocalVariable(name: "size", scope: !2661, file: !3, line: 47, type: !69)
!2671 = !DILocalVariable(name: "romsize", scope: !2661, file: !3, line: 48, type: !314)
!2672 = !DILocalVariable(name: "romimage", scope: !2661, file: !3, line: 49, type: !61)
!2673 = !DILocalVariable(name: "__pad", scope: !2674, file: !3, line: 65, type: !838)
!2674 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 65, column: 11)
!2675 = !DILocalVariable(name: "__inst", scope: !2676, file: !3, line: 80, type: !1964)
!2676 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 80, column: 11)
!2677 = !DILocalVariable(name: "__pad", scope: !2678, file: !3, line: 80, type: !838)
!2678 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 80, column: 11)
!2679 = !DILocalVariable(name: "__inst", scope: !2680, file: !3, line: 88, type: !1964)
!2680 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 88, column: 11)
!2681 = !DILocalVariable(name: "__pad", scope: !2682, file: !3, line: 88, type: !838)
!2682 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 88, column: 11)
!2683 = !DILocalVariable(name: "__inst", scope: !2684, file: !3, line: 96, type: !1964)
!2684 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 96, column: 11)
!2685 = !DILocalVariable(name: "__pad", scope: !2686, file: !3, line: 96, type: !838)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 96, column: 11)
!2687 = !DILabel(scope: !2661, name: "free_struct", file: !3, line: 105)
!2688 = !DILocalVariable(name: "__pad", scope: !2689, file: !3, line: 106, type: !838)
!2689 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 106, column: 2)
!2690 = !DILocation(line: 43, column: 47, scope: !2661)
!2691 = !DILocation(line: 43, column: 75, scope: !2661)
!2692 = !DILocation(line: 45, column: 2, scope: !2661)
!2693 = !DILocation(line: 45, column: 24, scope: !2661)
!2694 = !DILocation(line: 46, column: 2, scope: !2661)
!2695 = !DILocation(line: 46, column: 15, scope: !2661)
!2696 = !DILocation(line: 47, column: 2, scope: !2661)
!2697 = !DILocation(line: 47, column: 16, scope: !2661)
!2698 = !DILocation(line: 48, column: 2, scope: !2661)
!2699 = !DILocation(line: 48, column: 11, scope: !2661)
!2700 = !DILocation(line: 49, column: 2, scope: !2661)
!2701 = !DILocation(line: 49, column: 8, scope: !2661)
!2702 = !DILocation(line: 58, column: 13, scope: !2661)
!2703 = !DILocation(line: 58, column: 11, scope: !2661)
!2704 = !DILocation(line: 59, column: 12, scope: !2661)
!2705 = !DILocation(line: 59, column: 10, scope: !2661)
!2706 = !DILocation(line: 60, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 60, column: 6)
!2708 = !DILocation(line: 60, column: 16, scope: !2707)
!2709 = !DILocation(line: 60, column: 20, scope: !2707)
!2710 = !DILocation(line: 60, column: 28, scope: !2707)
!2711 = !DILocation(line: 60, column: 31, scope: !2707)
!2712 = !DILocation(line: 60, column: 39, scope: !2707)
!2713 = !DILocation(line: 60, column: 6, scope: !2661)
!2714 = !DILocation(line: 61, column: 3, scope: !2707)
!2715 = !DILocation(line: 63, column: 9, scope: !2661)
!2716 = !DILocation(line: 63, column: 17, scope: !2661)
!2717 = !DILocation(line: 63, column: 7, scope: !2661)
!2718 = !DILocation(line: 65, column: 11, scope: !2661)
!2719 = !DILocation(line: 65, column: 11, scope: !2674)
!2720 = !DILocation(line: 65, column: 11, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 65, column: 11)
!2722 = !DILocation(line: 65, column: 11, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 65, column: 11)
!2724 = !DILocation(line: 65, column: 9, scope: !2661)
!2725 = !DILocation(line: 67, column: 6, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 67, column: 6)
!2727 = !DILocation(line: 67, column: 13, scope: !2726)
!2728 = !DILocation(line: 67, column: 6, scope: !2661)
!2729 = !DILocation(line: 68, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 67, column: 29)
!2731 = !DILocation(line: 69, column: 10, scope: !2730)
!2732 = !DILocation(line: 69, column: 3, scope: !2730)
!2733 = !DILocation(line: 72, column: 9, scope: !2661)
!2734 = !DILocation(line: 72, column: 2, scope: !2661)
!2735 = !DILocation(line: 74, column: 2, scope: !2661)
!2736 = !DILocation(line: 74, column: 7, scope: !2661)
!2737 = !DILocation(line: 74, column: 12, scope: !2661)
!2738 = !DILocation(line: 74, column: 17, scope: !2661)
!2739 = !DILocation(line: 75, column: 18, scope: !2661)
!2740 = !DILocation(line: 75, column: 23, scope: !2661)
!2741 = !DILocation(line: 75, column: 2, scope: !2661)
!2742 = !DILocation(line: 75, column: 7, scope: !2661)
!2743 = !DILocation(line: 75, column: 12, scope: !2661)
!2744 = !DILocation(line: 75, column: 16, scope: !2661)
!2745 = !DILocation(line: 76, column: 2, scope: !2661)
!2746 = !DILocation(line: 76, column: 7, scope: !2661)
!2747 = !DILocation(line: 76, column: 12, scope: !2661)
!2748 = !DILocation(line: 76, column: 17, scope: !2661)
!2749 = !DILocation(line: 77, column: 16, scope: !2661)
!2750 = !DILocation(line: 77, column: 2, scope: !2661)
!2751 = !DILocation(line: 77, column: 7, scope: !2661)
!2752 = !DILocation(line: 77, column: 14, scope: !2661)
!2753 = !DILocation(line: 78, column: 11, scope: !2661)
!2754 = !DILocation(line: 78, column: 3, scope: !2661)
!2755 = !DILocation(line: 78, column: 9, scope: !2661)
!2756 = !DILocation(line: 80, column: 11, scope: !2676)
!2757 = !DILocation(line: 80, column: 11, scope: !2678)
!2758 = !DILocation(line: 80, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 80, column: 11)
!2760 = !DILocation(line: 80, column: 11, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 80, column: 11)
!2762 = !DILocation(line: 80, column: 11, scope: !2661)
!2763 = !DILocation(line: 80, column: 9, scope: !2661)
!2764 = !DILocation(line: 83, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 83, column: 6)
!2766 = !DILocation(line: 83, column: 13, scope: !2765)
!2767 = !DILocation(line: 83, column: 6, scope: !2661)
!2768 = !DILocation(line: 84, column: 3, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 83, column: 29)
!2770 = !DILocation(line: 85, column: 3, scope: !2769)
!2771 = !DILocation(line: 88, column: 11, scope: !2680)
!2772 = !DILocation(line: 88, column: 11, scope: !2682)
!2773 = !DILocation(line: 88, column: 11, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 88, column: 11)
!2775 = !DILocation(line: 88, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 88, column: 11)
!2777 = !DILocation(line: 88, column: 11, scope: !2661)
!2778 = !DILocation(line: 88, column: 9, scope: !2661)
!2779 = !DILocation(line: 91, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 91, column: 6)
!2781 = !DILocation(line: 91, column: 13, scope: !2780)
!2782 = !DILocation(line: 91, column: 6, scope: !2661)
!2783 = !DILocation(line: 92, column: 3, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 91, column: 29)
!2785 = !DILocation(line: 93, column: 3, scope: !2784)
!2786 = !DILocation(line: 96, column: 11, scope: !2684)
!2787 = !DILocation(line: 96, column: 11, scope: !2686)
!2788 = !DILocation(line: 96, column: 11, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 96, column: 11)
!2790 = !DILocation(line: 96, column: 11, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 96, column: 11)
!2792 = !DILocation(line: 96, column: 11, scope: !2661)
!2793 = !DILocation(line: 96, column: 9, scope: !2661)
!2794 = !DILocation(line: 99, column: 6, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 99, column: 6)
!2796 = !DILocation(line: 99, column: 13, scope: !2795)
!2797 = !DILocation(line: 99, column: 6, scope: !2661)
!2798 = !DILocation(line: 100, column: 3, scope: !2795)
!2799 = !DILocation(line: 102, column: 9, scope: !2661)
!2800 = !DILocation(line: 102, column: 14, scope: !2661)
!2801 = !DILocation(line: 102, column: 23, scope: !2661)
!2802 = !DILocation(line: 102, column: 33, scope: !2661)
!2803 = !DILocation(line: 102, column: 2, scope: !2661)
!2804 = !DILocation(line: 103, column: 9, scope: !2661)
!2805 = !DILocation(line: 103, column: 2, scope: !2661)
!2806 = !DILocation(line: 105, column: 1, scope: !2661)
!2807 = !DILocation(line: 106, column: 2, scope: !2661)
!2808 = !DILocation(line: 106, column: 2, scope: !2689)
!2809 = !DILocation(line: 106, column: 2, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 106, column: 2)
!2811 = !DILocation(line: 106, column: 2, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 106, column: 2)
!2813 = !DILocation(line: 107, column: 9, scope: !2661)
!2814 = !DILocation(line: 107, column: 2, scope: !2661)
!2815 = !DILocation(line: 108, column: 1, scope: !2661)
!2816 = !DISubprogram(name: "memcpy", scope: !1435, file: !1435, line: 18, type: !2817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!61, !61, !246, !1438}
!2819 = distinct !DISubprogram(name: "allocate_e820", scope: !3, file: !3, line: 675, type: !2820, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!92, !1014, !2822, !105}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2823 = !{!2824, !2825, !2826, !2827, !2838, !2839, !2840, !2843}
!2824 = !DILocalVariable(name: "params", arg: 1, scope: !2819, file: !3, line: 675, type: !1014)
!2825 = !DILocalVariable(name: "e820ext", arg: 2, scope: !2819, file: !3, line: 676, type: !2822)
!2826 = !DILocalVariable(name: "e820ext_size", arg: 3, scope: !2819, file: !3, line: 677, type: !105)
!2827 = !DILocalVariable(name: "map", scope: !2819, file: !3, line: 679, type: !2828)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_boot_memmap", file: !22, line: 535, size: 320, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !2829, file: !22, line: 536, baseType: !69, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !2829, file: !22, line: 537, baseType: !69, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ver", scope: !2829, file: !22, line: 538, baseType: !67, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "map_key", scope: !2829, file: !22, line: 539, baseType: !69, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "buff_size", scope: !2829, file: !22, line: 540, baseType: !69, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2829, file: !22, line: 541, baseType: !2837, offset: 320)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !312)
!2838 = !DILocalVariable(name: "status", scope: !2819, file: !3, line: 680, type: !92)
!2839 = !DILocalVariable(name: "nr_desc", scope: !2819, file: !3, line: 681, type: !68)
!2840 = !DILocalVariable(name: "nr_e820ext", scope: !2841, file: !3, line: 689, type: !67)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 688, column: 74)
!2842 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 688, column: 6)
!2843 = !DILocalVariable(name: "__pad", scope: !2844, file: !3, line: 698, type: !838)
!2844 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 698, column: 2)
!2845 = !DILocation(line: 675, column: 55, scope: !2819)
!2846 = !DILocation(line: 676, column: 27, scope: !2819)
!2847 = !DILocation(line: 677, column: 12, scope: !2819)
!2848 = !DILocation(line: 679, column: 2, scope: !2819)
!2849 = !DILocation(line: 679, column: 26, scope: !2819)
!2850 = !DILocation(line: 680, column: 2, scope: !2819)
!2851 = !DILocation(line: 680, column: 15, scope: !2819)
!2852 = !DILocation(line: 681, column: 2, scope: !2819)
!2853 = !DILocation(line: 681, column: 8, scope: !2819)
!2854 = !DILocation(line: 683, column: 11, scope: !2819)
!2855 = !DILocation(line: 683, column: 9, scope: !2819)
!2856 = !DILocation(line: 684, column: 6, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 684, column: 6)
!2858 = !DILocation(line: 684, column: 13, scope: !2857)
!2859 = !DILocation(line: 684, column: 6, scope: !2819)
!2860 = !DILocation(line: 685, column: 10, scope: !2857)
!2861 = !DILocation(line: 685, column: 3, scope: !2857)
!2862 = !DILocation(line: 687, column: 12, scope: !2819)
!2863 = !DILocation(line: 687, column: 17, scope: !2819)
!2864 = !DILocation(line: 687, column: 28, scope: !2819)
!2865 = !DILocation(line: 687, column: 33, scope: !2819)
!2866 = !DILocation(line: 687, column: 26, scope: !2819)
!2867 = !DILocation(line: 687, column: 10, scope: !2819)
!2868 = !DILocation(line: 688, column: 6, scope: !2842)
!2869 = !DILocation(line: 688, column: 14, scope: !2842)
!2870 = !DILocation(line: 688, column: 6, scope: !2819)
!2871 = !DILocation(line: 689, column: 3, scope: !2841)
!2872 = !DILocation(line: 689, column: 7, scope: !2841)
!2873 = !DILocation(line: 689, column: 20, scope: !2841)
!2874 = !DILocation(line: 689, column: 28, scope: !2841)
!2875 = !DILocation(line: 689, column: 61, scope: !2841)
!2876 = !DILocation(line: 692, column: 26, scope: !2841)
!2877 = !DILocation(line: 692, column: 38, scope: !2841)
!2878 = !DILocation(line: 692, column: 47, scope: !2841)
!2879 = !DILocation(line: 692, column: 12, scope: !2841)
!2880 = !DILocation(line: 692, column: 10, scope: !2841)
!2881 = !DILocation(line: 693, column: 2, scope: !2842)
!2882 = !DILocation(line: 693, column: 2, scope: !2841)
!2883 = !DILocation(line: 698, column: 2, scope: !2819)
!2884 = !DILocation(line: 698, column: 2, scope: !2844)
!2885 = !DILocation(line: 698, column: 2, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 698, column: 2)
!2887 = !DILocation(line: 698, column: 2, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 698, column: 2)
!2889 = !DILocation(line: 699, column: 9, scope: !2819)
!2890 = !DILocation(line: 699, column: 2, scope: !2819)
!2891 = !DILocation(line: 700, column: 1, scope: !2819)
!2892 = !DISubprogram(name: "efi_exit_boot_services", scope: !6, file: !6, line: 941, type: !2893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!92, !61, !61, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_exit_boot_map_processing", file: !6, line: 937, baseType: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!92, !2828, !61}
!2899 = distinct !DISubprogram(name: "exit_boot_func", scope: !3, file: !3, line: 707, type: !2897, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2900)
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DILocalVariable(name: "map", arg: 1, scope: !2899, file: !3, line: 707, type: !2828)
!2902 = !DILocalVariable(name: "priv", arg: 2, scope: !2899, file: !3, line: 708, type: !61)
!2903 = !DILocalVariable(name: "signature", scope: !2899, file: !3, line: 710, type: !702)
!2904 = !DILocalVariable(name: "p", scope: !2899, file: !3, line: 711, type: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2906 = !DILocation(line: 707, column: 60, scope: !2899)
!2907 = !DILocation(line: 708, column: 14, scope: !2899)
!2908 = !DILocation(line: 710, column: 2, scope: !2899)
!2909 = !DILocation(line: 710, column: 14, scope: !2899)
!2910 = !DILocation(line: 711, column: 2, scope: !2899)
!2911 = !DILocation(line: 711, column: 27, scope: !2899)
!2912 = !DILocation(line: 711, column: 31, scope: !2899)
!2913 = !DILocation(line: 713, column: 14, scope: !2899)
!2914 = !DILocation(line: 713, column: 12, scope: !2899)
!2915 = !DILocation(line: 715, column: 10, scope: !2899)
!2916 = !DILocation(line: 715, column: 13, scope: !2899)
!2917 = !DILocation(line: 715, column: 18, scope: !2899)
!2918 = !DILocation(line: 715, column: 40, scope: !2899)
!2919 = !DILocation(line: 715, column: 2, scope: !2899)
!2920 = !DILocation(line: 717, column: 35, scope: !2899)
!2921 = !DILocation(line: 717, column: 20, scope: !2899)
!2922 = !DILocation(line: 718, column: 7, scope: !2899)
!2923 = !DILocation(line: 718, column: 10, scope: !2899)
!2924 = !DILocation(line: 718, column: 15, scope: !2899)
!2925 = !DILocation(line: 718, column: 28, scope: !2899)
!2926 = !DILocation(line: 718, column: 31, scope: !2899)
!2927 = !DILocation(line: 718, column: 36, scope: !2899)
!2928 = !DILocation(line: 717, column: 2, scope: !2899)
!2929 = !DILocation(line: 719, column: 29, scope: !2899)
!2930 = !DILocation(line: 719, column: 34, scope: !2899)
!2931 = !DILocation(line: 719, column: 2, scope: !2899)
!2932 = !DILocation(line: 719, column: 5, scope: !2899)
!2933 = !DILocation(line: 719, column: 10, scope: !2899)
!2934 = !DILocation(line: 719, column: 27, scope: !2899)
!2935 = !DILocation(line: 720, column: 32, scope: !2899)
!2936 = !DILocation(line: 720, column: 37, scope: !2899)
!2937 = !DILocation(line: 720, column: 2, scope: !2899)
!2938 = !DILocation(line: 720, column: 5, scope: !2899)
!2939 = !DILocation(line: 720, column: 10, scope: !2899)
!2940 = !DILocation(line: 720, column: 30, scope: !2899)
!2941 = !DILocation(line: 721, column: 35, scope: !2899)
!2942 = !DILocation(line: 721, column: 40, scope: !2899)
!2943 = !DILocation(line: 721, column: 20, scope: !2899)
!2944 = !DILocation(line: 722, column: 7, scope: !2899)
!2945 = !DILocation(line: 722, column: 10, scope: !2899)
!2946 = !DILocation(line: 722, column: 15, scope: !2899)
!2947 = !DILocation(line: 722, column: 28, scope: !2899)
!2948 = !DILocation(line: 722, column: 31, scope: !2899)
!2949 = !DILocation(line: 722, column: 36, scope: !2899)
!2950 = !DILocation(line: 721, column: 2, scope: !2899)
!2951 = !DILocation(line: 723, column: 29, scope: !2899)
!2952 = !DILocation(line: 723, column: 34, scope: !2899)
!2953 = !DILocation(line: 723, column: 2, scope: !2899)
!2954 = !DILocation(line: 723, column: 5, scope: !2899)
!2955 = !DILocation(line: 723, column: 10, scope: !2899)
!2956 = !DILocation(line: 723, column: 27, scope: !2899)
!2957 = !DILocation(line: 726, column: 1, scope: !2899)
!2958 = !DILocation(line: 725, column: 2, scope: !2899)
!2959 = distinct !DISubprogram(name: "setup_e820", scope: !3, file: !3, line: 544, type: !2960, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!92, !1014, !303, !67}
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2976, !2977, !2978, !2981}
!2963 = !DILocalVariable(name: "params", arg: 1, scope: !2959, file: !3, line: 544, type: !1014)
!2964 = !DILocalVariable(name: "e820ext", arg: 2, scope: !2959, file: !3, line: 544, type: !303)
!2965 = !DILocalVariable(name: "e820ext_size", arg: 3, scope: !2959, file: !3, line: 544, type: !67)
!2966 = !DILocalVariable(name: "entry", scope: !2959, file: !3, line: 546, type: !325)
!2967 = !DILocalVariable(name: "efi", scope: !2959, file: !3, line: 547, type: !2224)
!2968 = !DILocalVariable(name: "prev", scope: !2959, file: !3, line: 548, type: !325)
!2969 = !DILocalVariable(name: "nr_entries", scope: !2959, file: !3, line: 549, type: !67)
!2970 = !DILocalVariable(name: "nr_desc", scope: !2959, file: !3, line: 550, type: !67)
!2971 = !DILocalVariable(name: "i", scope: !2959, file: !3, line: 551, type: !93)
!2972 = !DILocalVariable(name: "d", scope: !2973, file: !3, line: 557, type: !315)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 556, column: 32)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 556, column: 2)
!2975 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 556, column: 2)
!2976 = !DILocalVariable(name: "e820_type", scope: !2973, file: !3, line: 558, type: !7)
!2977 = !DILocalVariable(name: "m", scope: !2973, file: !3, line: 559, type: !69)
!2978 = !DILocalVariable(name: "need", scope: !2979, file: !3, line: 623, type: !67)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 622, column: 53)
!2980 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 622, column: 7)
!2981 = !DILocalVariable(name: "nr_e820ext", scope: !2982, file: !3, line: 641, type: !67)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 640, column: 51)
!2983 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 640, column: 6)
!2984 = !DILocation(line: 544, column: 32, scope: !2959)
!2985 = !DILocation(line: 544, column: 59, scope: !2959)
!2986 = !DILocation(line: 544, column: 72, scope: !2959)
!2987 = !DILocation(line: 546, column: 2, scope: !2959)
!2988 = !DILocation(line: 546, column: 26, scope: !2959)
!2989 = !DILocation(line: 546, column: 34, scope: !2959)
!2990 = !DILocation(line: 546, column: 42, scope: !2959)
!2991 = !DILocation(line: 547, column: 2, scope: !2959)
!2992 = !DILocation(line: 547, column: 19, scope: !2959)
!2993 = !DILocation(line: 547, column: 26, scope: !2959)
!2994 = !DILocation(line: 547, column: 34, scope: !2959)
!2995 = !DILocation(line: 548, column: 2, scope: !2959)
!2996 = !DILocation(line: 548, column: 26, scope: !2959)
!2997 = !DILocation(line: 549, column: 2, scope: !2959)
!2998 = !DILocation(line: 549, column: 6, scope: !2959)
!2999 = !DILocation(line: 550, column: 2, scope: !2959)
!3000 = !DILocation(line: 550, column: 6, scope: !2959)
!3001 = !DILocation(line: 551, column: 2, scope: !2959)
!3002 = !DILocation(line: 551, column: 6, scope: !2959)
!3003 = !DILocation(line: 553, column: 13, scope: !2959)
!3004 = !DILocation(line: 554, column: 12, scope: !2959)
!3005 = !DILocation(line: 554, column: 17, scope: !2959)
!3006 = !DILocation(line: 554, column: 35, scope: !2959)
!3007 = !DILocation(line: 554, column: 40, scope: !2959)
!3008 = !DILocation(line: 554, column: 33, scope: !2959)
!3009 = !DILocation(line: 554, column: 10, scope: !2959)
!3010 = !DILocation(line: 556, column: 9, scope: !2975)
!3011 = !DILocation(line: 556, column: 7, scope: !2975)
!3012 = !DILocation(line: 556, column: 14, scope: !2974)
!3013 = !DILocation(line: 556, column: 18, scope: !2974)
!3014 = !DILocation(line: 556, column: 16, scope: !2974)
!3015 = !DILocation(line: 556, column: 2, scope: !2975)
!3016 = !DILocation(line: 557, column: 3, scope: !2973)
!3017 = !DILocation(line: 557, column: 22, scope: !2973)
!3018 = !DILocation(line: 558, column: 3, scope: !2973)
!3019 = !DILocation(line: 558, column: 16, scope: !2973)
!3020 = !DILocation(line: 559, column: 3, scope: !2973)
!3021 = !DILocation(line: 559, column: 17, scope: !2973)
!3022 = !DILocation(line: 559, column: 21, scope: !2973)
!3023 = !DILocation(line: 559, column: 26, scope: !2973)
!3024 = !DILocation(line: 562, column: 13, scope: !2973)
!3025 = !DILocation(line: 562, column: 18, scope: !2973)
!3026 = !DILocation(line: 562, column: 8, scope: !2973)
!3027 = !DILocation(line: 562, column: 32, scope: !2973)
!3028 = !DILocation(line: 562, column: 5, scope: !2973)
!3029 = !DILocation(line: 565, column: 7, scope: !2973)
!3030 = !DILocation(line: 565, column: 5, scope: !2973)
!3031 = !DILocation(line: 566, column: 11, scope: !2973)
!3032 = !DILocation(line: 566, column: 14, scope: !2973)
!3033 = !DILocation(line: 566, column: 3, scope: !2973)
!3034 = !DILocation(line: 573, column: 14, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 566, column: 20)
!3036 = !DILocation(line: 574, column: 4, scope: !3035)
!3037 = !DILocation(line: 577, column: 14, scope: !3035)
!3038 = !DILocation(line: 578, column: 4, scope: !3035)
!3039 = !DILocation(line: 581, column: 14, scope: !3035)
!3040 = !DILocation(line: 582, column: 4, scope: !3035)
!3041 = !DILocation(line: 589, column: 8, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 589, column: 8)
!3043 = !DILocation(line: 589, column: 35, scope: !3042)
!3044 = !DILocation(line: 590, column: 9, scope: !3042)
!3045 = !DILocation(line: 590, column: 12, scope: !3042)
!3046 = !DILocation(line: 590, column: 22, scope: !3042)
!3047 = !DILocation(line: 589, column: 8, scope: !3035)
!3048 = !DILocation(line: 591, column: 15, scope: !3042)
!3049 = !DILocation(line: 591, column: 5, scope: !3042)
!3050 = !DILocation(line: 593, column: 15, scope: !3042)
!3051 = !DILocation(line: 594, column: 4, scope: !3035)
!3052 = !DILocation(line: 597, column: 14, scope: !3035)
!3053 = !DILocation(line: 598, column: 4, scope: !3035)
!3054 = !DILocation(line: 601, column: 14, scope: !3035)
!3055 = !DILocation(line: 602, column: 4, scope: !3035)
!3056 = !DILocation(line: 606, column: 5, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 605, column: 8)
!3058 = !DILocation(line: 612, column: 4, scope: !3035)
!3059 = !DILocation(line: 616, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 616, column: 7)
!3061 = !DILocation(line: 616, column: 12, scope: !3060)
!3062 = !DILocation(line: 616, column: 15, scope: !3060)
!3063 = !DILocation(line: 616, column: 21, scope: !3060)
!3064 = !DILocation(line: 616, column: 29, scope: !3060)
!3065 = !DILocation(line: 616, column: 26, scope: !3060)
!3066 = !DILocation(line: 616, column: 39, scope: !3060)
!3067 = !DILocation(line: 617, column: 8, scope: !3060)
!3068 = !DILocation(line: 617, column: 14, scope: !3060)
!3069 = !DILocation(line: 617, column: 21, scope: !3060)
!3070 = !DILocation(line: 617, column: 27, scope: !3060)
!3071 = !DILocation(line: 617, column: 19, scope: !3060)
!3072 = !DILocation(line: 617, column: 36, scope: !3060)
!3073 = !DILocation(line: 617, column: 39, scope: !3060)
!3074 = !DILocation(line: 617, column: 33, scope: !3060)
!3075 = !DILocation(line: 616, column: 7, scope: !2973)
!3076 = !DILocation(line: 618, column: 18, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 617, column: 50)
!3078 = !DILocation(line: 618, column: 21, scope: !3077)
!3079 = !DILocation(line: 618, column: 31, scope: !3077)
!3080 = !DILocation(line: 618, column: 4, scope: !3077)
!3081 = !DILocation(line: 618, column: 10, scope: !3077)
!3082 = !DILocation(line: 618, column: 15, scope: !3077)
!3083 = !DILocation(line: 619, column: 4, scope: !3077)
!3084 = !DILocation(line: 622, column: 7, scope: !2980)
!3085 = !DILocation(line: 622, column: 18, scope: !2980)
!3086 = !DILocation(line: 622, column: 7, scope: !2973)
!3087 = !DILocation(line: 623, column: 4, scope: !2979)
!3088 = !DILocation(line: 623, column: 8, scope: !2979)
!3089 = !DILocation(line: 623, column: 16, scope: !2979)
!3090 = !DILocation(line: 623, column: 26, scope: !2979)
!3091 = !DILocation(line: 623, column: 24, scope: !2979)
!3092 = !DILocation(line: 623, column: 15, scope: !2979)
!3093 = !DILocation(line: 623, column: 29, scope: !2979)
!3094 = !DILocation(line: 623, column: 57, scope: !2979)
!3095 = !DILocation(line: 626, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 626, column: 8)
!3097 = !DILocation(line: 626, column: 17, scope: !3096)
!3098 = !DILocation(line: 626, column: 20, scope: !3096)
!3099 = !DILocation(line: 626, column: 35, scope: !3096)
!3100 = !DILocation(line: 626, column: 33, scope: !3096)
!3101 = !DILocation(line: 626, column: 8, scope: !2979)
!3102 = !DILocation(line: 627, column: 5, scope: !3096)
!3103 = !DILocation(line: 630, column: 38, scope: !2979)
!3104 = !DILocation(line: 630, column: 47, scope: !2979)
!3105 = !DILocation(line: 630, column: 10, scope: !2979)
!3106 = !DILocation(line: 631, column: 3, scope: !2980)
!3107 = !DILocation(line: 631, column: 3, scope: !2979)
!3108 = !DILocation(line: 633, column: 17, scope: !2973)
!3109 = !DILocation(line: 633, column: 20, scope: !2973)
!3110 = !DILocation(line: 633, column: 3, scope: !2973)
!3111 = !DILocation(line: 633, column: 10, scope: !2973)
!3112 = !DILocation(line: 633, column: 15, scope: !2973)
!3113 = !DILocation(line: 634, column: 17, scope: !2973)
!3114 = !DILocation(line: 634, column: 20, scope: !2973)
!3115 = !DILocation(line: 634, column: 30, scope: !2973)
!3116 = !DILocation(line: 634, column: 3, scope: !2973)
!3117 = !DILocation(line: 634, column: 10, scope: !2973)
!3118 = !DILocation(line: 634, column: 15, scope: !2973)
!3119 = !DILocation(line: 635, column: 17, scope: !2973)
!3120 = !DILocation(line: 635, column: 3, scope: !2973)
!3121 = !DILocation(line: 635, column: 10, scope: !2973)
!3122 = !DILocation(line: 635, column: 15, scope: !2973)
!3123 = !DILocation(line: 636, column: 15, scope: !2973)
!3124 = !DILocation(line: 636, column: 8, scope: !2973)
!3125 = !DILocation(line: 637, column: 13, scope: !2973)
!3126 = !DILocation(line: 638, column: 2, scope: !2974)
!3127 = !DILocation(line: 638, column: 2, scope: !2973)
!3128 = !DILocation(line: 556, column: 28, scope: !2974)
!3129 = !DILocation(line: 556, column: 2, scope: !2974)
!3130 = distinct !{!3130, !3015, !3131, !980, !981}
!3131 = !DILocation(line: 638, column: 2, scope: !2975)
!3132 = !DILocation(line: 640, column: 6, scope: !2983)
!3133 = !DILocation(line: 640, column: 17, scope: !2983)
!3134 = !DILocation(line: 640, column: 6, scope: !2959)
!3135 = !DILocation(line: 641, column: 3, scope: !2982)
!3136 = !DILocation(line: 641, column: 7, scope: !2982)
!3137 = !DILocation(line: 641, column: 20, scope: !2982)
!3138 = !DILocation(line: 641, column: 31, scope: !2982)
!3139 = !DILocation(line: 643, column: 15, scope: !2982)
!3140 = !DILocation(line: 643, column: 23, scope: !2982)
!3141 = !DILocation(line: 643, column: 32, scope: !2982)
!3142 = !DILocation(line: 643, column: 3, scope: !2982)
!3143 = !DILocation(line: 644, column: 17, scope: !2982)
!3144 = !DILocation(line: 644, column: 14, scope: !2982)
!3145 = !DILocation(line: 645, column: 2, scope: !2983)
!3146 = !DILocation(line: 645, column: 2, scope: !2982)
!3147 = !DILocation(line: 647, column: 29, scope: !2959)
!3148 = !DILocation(line: 647, column: 25, scope: !2959)
!3149 = !DILocation(line: 647, column: 2, scope: !2959)
!3150 = !DILocation(line: 647, column: 10, scope: !2959)
!3151 = !DILocation(line: 647, column: 23, scope: !2959)
!3152 = !DILocation(line: 649, column: 2, scope: !2959)
!3153 = !DILocation(line: 650, column: 1, scope: !2959)
!3154 = !DISubprogram(name: "efi_get_memory_map", scope: !6, file: !6, line: 980, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!92, !3157, !191}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!3158 = distinct !DISubprogram(name: "alloc_e820ext", scope: !3, file: !3, line: 652, type: !3159, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!92, !67, !2822, !105}
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3171}
!3162 = !DILocalVariable(name: "nr_desc", arg: 1, scope: !3158, file: !3, line: 652, type: !67)
!3163 = !DILocalVariable(name: "e820ext", arg: 2, scope: !3158, file: !3, line: 652, type: !2822)
!3164 = !DILocalVariable(name: "e820ext_size", arg: 3, scope: !3158, file: !3, line: 653, type: !105)
!3165 = !DILocalVariable(name: "status", scope: !3158, file: !3, line: 655, type: !92)
!3166 = !DILocalVariable(name: "size", scope: !3158, file: !3, line: 656, type: !69)
!3167 = !DILocalVariable(name: "__pad", scope: !3168, file: !3, line: 662, type: !838)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 662, column: 3)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 661, column: 16)
!3170 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 661, column: 6)
!3171 = !DILocalVariable(name: "__pad", scope: !3172, file: !3, line: 667, type: !838)
!3172 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 667, column: 11)
!3173 = !DILocation(line: 652, column: 39, scope: !3158)
!3174 = !DILocation(line: 652, column: 68, scope: !3158)
!3175 = !DILocation(line: 653, column: 12, scope: !3158)
!3176 = !DILocation(line: 655, column: 2, scope: !3158)
!3177 = !DILocation(line: 655, column: 15, scope: !3158)
!3178 = !DILocation(line: 656, column: 2, scope: !3158)
!3179 = !DILocation(line: 656, column: 16, scope: !3158)
!3180 = !DILocation(line: 659, column: 31, scope: !3158)
!3181 = !DILocation(line: 659, column: 29, scope: !3158)
!3182 = !DILocation(line: 658, column: 35, scope: !3158)
!3183 = !DILocation(line: 658, column: 7, scope: !3158)
!3184 = !DILocation(line: 661, column: 7, scope: !3170)
!3185 = !DILocation(line: 661, column: 6, scope: !3170)
!3186 = !DILocation(line: 661, column: 6, scope: !3158)
!3187 = !DILocation(line: 662, column: 3, scope: !3169)
!3188 = !DILocation(line: 662, column: 3, scope: !3168)
!3189 = !DILocation(line: 662, column: 3, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 662, column: 3)
!3191 = !DILocation(line: 662, column: 3, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 662, column: 3)
!3193 = !DILocation(line: 663, column: 4, scope: !3169)
!3194 = !DILocation(line: 663, column: 12, scope: !3169)
!3195 = !DILocation(line: 664, column: 4, scope: !3169)
!3196 = !DILocation(line: 664, column: 17, scope: !3169)
!3197 = !DILocation(line: 665, column: 2, scope: !3169)
!3198 = !DILocation(line: 667, column: 11, scope: !3158)
!3199 = !DILocation(line: 667, column: 11, scope: !3172)
!3200 = !DILocation(line: 667, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 667, column: 11)
!3202 = !DILocation(line: 667, column: 11, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 667, column: 11)
!3204 = !DILocation(line: 667, column: 9, scope: !3158)
!3205 = !DILocation(line: 669, column: 6, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 669, column: 6)
!3207 = !DILocation(line: 669, column: 13, scope: !3206)
!3208 = !DILocation(line: 669, column: 6, scope: !3158)
!3209 = !DILocation(line: 670, column: 19, scope: !3206)
!3210 = !DILocation(line: 670, column: 4, scope: !3206)
!3211 = !DILocation(line: 670, column: 17, scope: !3206)
!3212 = !DILocation(line: 670, column: 3, scope: !3206)
!3213 = !DILocation(line: 672, column: 9, scope: !3158)
!3214 = !DILocation(line: 673, column: 1, scope: !3158)
!3215 = !DILocation(line: 672, column: 2, scope: !3158)
!3216 = distinct !DISubprogram(name: "efi_soft_reserve_enabled", scope: !22, file: !22, line: 888, type: !986, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3217 = !DILocation(line: 890, column: 2, scope: !3216)
!3218 = distinct !DISubprogram(name: "add_e820ext", scope: !3, file: !3, line: 523, type: !3219, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !1014, !303, !67}
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "params", arg: 1, scope: !3218, file: !3, line: 523, type: !1014)
!3223 = !DILocalVariable(name: "e820ext", arg: 2, scope: !3218, file: !3, line: 524, type: !303)
!3224 = !DILocalVariable(name: "nr_entries", arg: 3, scope: !3218, file: !3, line: 524, type: !67)
!3225 = !DILocalVariable(name: "data", scope: !3218, file: !3, line: 526, type: !303)
!3226 = !DILocation(line: 523, column: 45, scope: !3218)
!3227 = !DILocation(line: 524, column: 23, scope: !3218)
!3228 = !DILocation(line: 524, column: 36, scope: !3218)
!3229 = !DILocation(line: 526, column: 2, scope: !3218)
!3230 = !DILocation(line: 526, column: 21, scope: !3218)
!3231 = !DILocation(line: 528, column: 2, scope: !3218)
!3232 = !DILocation(line: 528, column: 11, scope: !3218)
!3233 = !DILocation(line: 528, column: 16, scope: !3218)
!3234 = !DILocation(line: 529, column: 18, scope: !3218)
!3235 = !DILocation(line: 529, column: 29, scope: !3218)
!3236 = !DILocation(line: 529, column: 2, scope: !3218)
!3237 = !DILocation(line: 529, column: 11, scope: !3218)
!3238 = !DILocation(line: 529, column: 16, scope: !3218)
!3239 = !DILocation(line: 530, column: 2, scope: !3218)
!3240 = !DILocation(line: 530, column: 11, scope: !3218)
!3241 = !DILocation(line: 530, column: 16, scope: !3218)
!3242 = !DILocation(line: 532, column: 45, scope: !3218)
!3243 = !DILocation(line: 532, column: 53, scope: !3218)
!3244 = !DILocation(line: 532, column: 57, scope: !3218)
!3245 = !DILocation(line: 532, column: 9, scope: !3218)
!3246 = !DILocation(line: 532, column: 7, scope: !3218)
!3247 = !DILocation(line: 534, column: 2, scope: !3218)
!3248 = !DILocation(line: 534, column: 9, scope: !3218)
!3249 = !DILocation(line: 534, column: 14, scope: !3218)
!3250 = !DILocation(line: 534, column: 17, scope: !3218)
!3251 = !DILocation(line: 534, column: 23, scope: !3218)
!3252 = !DILocation(line: 0, scope: !3218)
!3253 = !DILocation(line: 535, column: 46, scope: !3218)
!3254 = !DILocation(line: 535, column: 52, scope: !3218)
!3255 = !DILocation(line: 535, column: 10, scope: !3218)
!3256 = !DILocation(line: 535, column: 8, scope: !3218)
!3257 = distinct !{!3257, !3247, !3254, !980, !981}
!3258 = !DILocation(line: 537, column: 6, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 537, column: 6)
!3260 = !DILocation(line: 537, column: 6, scope: !3218)
!3261 = !DILocation(line: 538, column: 31, scope: !3259)
!3262 = !DILocation(line: 538, column: 16, scope: !3259)
!3263 = !DILocation(line: 538, column: 3, scope: !3259)
!3264 = !DILocation(line: 538, column: 9, scope: !3259)
!3265 = !DILocation(line: 538, column: 14, scope: !3259)
!3266 = !DILocation(line: 540, column: 43, scope: !3259)
!3267 = !DILocation(line: 540, column: 28, scope: !3259)
!3268 = !DILocation(line: 540, column: 3, scope: !3259)
!3269 = !DILocation(line: 540, column: 11, scope: !3259)
!3270 = !DILocation(line: 540, column: 15, scope: !3259)
!3271 = !DILocation(line: 540, column: 26, scope: !3259)
!3272 = !DILocation(line: 541, column: 1, scope: !3218)
