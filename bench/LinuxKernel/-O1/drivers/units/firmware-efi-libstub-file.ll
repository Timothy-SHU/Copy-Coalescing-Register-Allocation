; ModuleID = 'drivers/firmware/efi/libstub/file.c'
source_filename = "drivers/firmware/efi/libstub/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.finfo = type { %struct.efi_file_info_t, [256 x i16] }
%struct.efi_file_info_t = type { i64, i64, i64, %struct.efi_time_t, %struct.efi_time_t, %struct.efi_time_t, i64, [0 x i16] }
%struct.efi_time_t = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.anon = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, i32, ptr }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.1 = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.2 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.3 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.4 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.6 = type { ptr, ptr }
%struct.anon.7 = type { i32, i32 }
%struct.efi_generic_dev_path = type { i8, i8, i16 }
%struct.efi_file_path_dev_path = type { %struct.efi_generic_dev_path, [0 x i16] }
%struct.anon.8 = type { i64, ptr }
%struct.anon.9 = type { i64, i32 }

@efi_nochunk = external hidden global i8, align 1
@.str = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to allocate memory for files\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"\013ERROR: Failed to read file\0A\00", align 1, !dbg !7
@efi_is64 = external hidden constant i8, align 1
@__const.efi_open_device_path.text_to_dp_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"!\9A\C9\05\0F\C7\D2J\8A_5\DF3C\F5\1E" }, align 4
@efi_open_device_path.text_to_dp = internal global ptr null, align 8, !dbg !12
@__const.efi_open_device_path.fs_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\22[N\96Yd\D2\11\8E9\00\A0\C9ir;" }, align 4
@efi_system_table = external hidden global ptr, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"\014WARNING: Unexpected device path node type: (%x, %x)\0A\00", align 1, !dbg !377
@.str.3 = private unnamed_addr constant [32 x i8] c"\013ERROR: Failed to open volume\0A\00", align 1, !dbg !382
@__const.efi_open_volume.fs_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\22[N\96Yd\D2\11\8E9\00\A0\C9ir;" }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\013ERROR: Failed to handle fs_proto\0A\00", align 1, !dbg !387
@__const.efi_open_file.info_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\92nW\09?m\D2\11\8E9\00\A0\C9ir;" }, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"\013ERROR: Failed to open file: %ls\0A\00", align 1, !dbg !392
@.str.6 = private unnamed_addr constant [34 x i8] c"\013ERROR: Failed to get file info\0A\00", align 1, !dbg !397

; Function Attrs: noredzone nounwind
define hidden i64 @handle_cmdline_files(ptr noundef %image, ptr noundef %optstr, i32 noundef %optstr_size, i64 noundef %soft_limit, i64 noundef %hard_limit, ptr noundef %load_addr, ptr noundef %load_size) #0 !dbg !474 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %optstr.addr = alloca ptr, align 8
  %optstr_size.addr = alloca i32, align 4
  %soft_limit.addr = alloca i64, align 8
  %hard_limit.addr = alloca i64, align 8
  %load_addr.addr = alloca ptr, align 8
  %load_size.addr = alloca ptr, align 8
  %cmdline = alloca ptr, align 8
  %cmdline_len = alloca i32, align 4
  %efi_chunk_size = alloca i64, align 8
  %volume = alloca ptr, align 8
  %file = alloca ptr, align 8
  %alloc_addr = alloca i64, align 8
  %alloc_size = alloca i64, align 8
  %status = alloca i64, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fi = alloca %struct.finfo, align 8
  %size = alloca i64, align 8
  %addr = alloca ptr, align 8
  %old_addr = alloca i64, align 8
  %chunksize = alloca i64, align 8
  %__UNIQUE_ID___x377 = alloca i64, align 8
  %__UNIQUE_ID___y378 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp78 = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp85 = alloca i64, align 8
  %__inst102 = alloca ptr, align 8
  %tmp103 = alloca i64, align 8
  %__pad109 = alloca [3 x i64], align 16
  %tmp113 = alloca i64, align 8
  %__inst120 = alloca ptr, align 8
  %tmp121 = alloca i64, align 8
  %__pad128 = alloca [3 x i64], align 16
  %tmp132 = alloca i64, align 8
  %__inst152 = alloca ptr, align 8
  %tmp153 = alloca i64, align 8
  %__pad160 = alloca [3 x i64], align 16
  %tmp164 = alloca i64, align 8
  %__inst171 = alloca ptr, align 8
  %tmp172 = alloca i64, align 8
  %__pad179 = alloca [3 x i64], align 16
  %tmp183 = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !705, metadata !DIExpression()), !dbg !756
  store ptr %optstr, ptr %optstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %optstr.addr, metadata !706, metadata !DIExpression()), !dbg !757
  store i32 %optstr_size, ptr %optstr_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %optstr_size.addr, metadata !707, metadata !DIExpression()), !dbg !758
  store i64 %soft_limit, ptr %soft_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %soft_limit.addr, metadata !708, metadata !DIExpression()), !dbg !759
  store i64 %hard_limit, ptr %hard_limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hard_limit.addr, metadata !709, metadata !DIExpression()), !dbg !760
  store ptr %load_addr, ptr %load_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_addr.addr, metadata !710, metadata !DIExpression()), !dbg !761
  store ptr %load_size, ptr %load_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %load_size.addr, metadata !711, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline) #6, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %cmdline, metadata !712, metadata !DIExpression()), !dbg !764
  %call = call zeroext i1 @efi_is_native() #7, !dbg !765
  br i1 %call, label %cond.true, label %cond.false, !dbg !765

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %image.addr, align 8, !dbg !765
  %load_options = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 7, !dbg !765
  %1 = load ptr, ptr %load_options, align 8, !dbg !765
  br label %cond.end, !dbg !765

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %image.addr, align 8, !dbg !765
  %load_options1 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 7, !dbg !765
  %3 = load i32, ptr %load_options1, align 4, !dbg !765
  %conv = zext i32 %3 to i64, !dbg !765
  %4 = inttoptr i64 %conv to ptr, !dbg !765
  br label %cond.end, !dbg !765

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !765
  store ptr %cond, ptr %cmdline, align 8, !dbg !764
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmdline_len) #6, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %cmdline_len, metadata !713, metadata !DIExpression()), !dbg !767
  %call2 = call zeroext i1 @efi_is_native() #7, !dbg !768
  br i1 %call2, label %cond.true4, label %cond.false5, !dbg !768

cond.true4:                                       ; preds = %cond.end
  %5 = load ptr, ptr %image.addr, align 8, !dbg !768
  %load_options_size = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 6, !dbg !768
  %6 = load i32, ptr %load_options_size, align 8, !dbg !768
  br label %cond.end9, !dbg !768

cond.false5:                                      ; preds = %cond.end
  %7 = load ptr, ptr %image.addr, align 8, !dbg !768
  %load_options_size6 = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 6, !dbg !768
  %8 = load i32, ptr %load_options_size6, align 8, !dbg !768
  %conv7 = zext i32 %8 to i64, !dbg !768
  %conv8 = trunc i64 %conv7 to i32, !dbg !768
  br label %cond.end9, !dbg !768

cond.end9:                                        ; preds = %cond.false5, %cond.true4
  %cond10 = phi i32 [ %6, %cond.true4 ], [ %conv8, %cond.false5 ], !dbg !768
  store i32 %cond10, ptr %cmdline_len, align 4, !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %efi_chunk_size) #6, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %efi_chunk_size, metadata !714, metadata !DIExpression()), !dbg !770
  store i64 -1, ptr %efi_chunk_size, align 8, !dbg !770
  call void @llvm.lifetime.start.p0(i64 8, ptr %volume) #6, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %volume, metadata !715, metadata !DIExpression()), !dbg !772
  store ptr null, ptr %volume, align 8, !dbg !772
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #6, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %file, metadata !716, metadata !DIExpression()), !dbg !774
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_addr) #6, !dbg !775
  call void @llvm.dbg.declare(metadata ptr %alloc_addr, metadata !717, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_size) #6, !dbg !777
  call void @llvm.dbg.declare(metadata ptr %alloc_size, metadata !718, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %status, metadata !719, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !720, metadata !DIExpression()), !dbg !782
  %9 = load ptr, ptr %load_addr.addr, align 8, !dbg !783
  %tobool = icmp ne ptr %9, null, !dbg !783
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !785

lor.lhs.false:                                    ; preds = %cond.end9
  %10 = load ptr, ptr %load_size.addr, align 8, !dbg !786
  %tobool11 = icmp ne ptr %10, null, !dbg !786
  br i1 %tobool11, label %if.end, label %if.then, !dbg !787

if.then:                                          ; preds = %lor.lhs.false, %cond.end9
  store i64 -9223372036854775806, ptr %retval, align 8, !dbg !788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190, !dbg !788

if.end:                                           ; preds = %lor.lhs.false
  call void @efi_apply_loadoptions_quirk(ptr noundef %cmdline, ptr noundef %cmdline_len) #7, !dbg !789
  %11 = load i32, ptr %cmdline_len, align 4, !dbg !790
  %conv12 = zext i32 %11 to i64, !dbg !790
  %div = udiv i64 %conv12, 2, !dbg !790
  %conv13 = trunc i64 %div to i32, !dbg !790
  store i32 %conv13, ptr %cmdline_len, align 4, !dbg !790
  %12 = load i8, ptr @efi_nochunk, align 1, !dbg !791, !range !793, !noundef !794
  %tobool14 = trunc i8 %12 to i1, !dbg !791
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !795

if.then15:                                        ; preds = %if.end
  store i64 1048576, ptr %efi_chunk_size, align 8, !dbg !796
  br label %if.end16, !dbg !797

if.end16:                                         ; preds = %if.then15, %if.end
  store i64 0, ptr %alloc_size, align 8, !dbg !798
  store i64 0, ptr %alloc_addr, align 8, !dbg !799
  br label %do.body, !dbg !800

do.body:                                          ; preds = %do.cond144, %if.end16
  call void @llvm.lifetime.start.p0(i64 592, ptr %fi) #6, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %fi, metadata !721, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %size, metadata !723, metadata !DIExpression()), !dbg !804
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !724, metadata !DIExpression()), !dbg !806
  %13 = load ptr, ptr %cmdline, align 8, !dbg !807
  %14 = load i32, ptr %cmdline_len, align 4, !dbg !808
  %15 = load ptr, ptr %optstr.addr, align 8, !dbg !809
  %16 = load i32, ptr %optstr_size.addr, align 4, !dbg !810
  %filename = getelementptr inbounds %struct.finfo, ptr %fi, i32 0, i32 1, !dbg !811
  %arraydecay = getelementptr inbounds [256 x i16], ptr %filename, i64 0, i64 0, !dbg !812
  %call17 = call i32 @find_file_option(ptr noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %arraydecay, i32 noundef 256) #7, !dbg !813
  store i32 %call17, ptr %offset, align 4, !dbg !814
  %17 = load i32, ptr %offset, align 4, !dbg !815
  %tobool18 = icmp ne i32 %17, 0, !dbg !815
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !817

if.then19:                                        ; preds = %do.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup139, !dbg !818

if.end20:                                         ; preds = %do.body
  %18 = load i32, ptr %offset, align 4, !dbg !819
  %19 = load ptr, ptr %cmdline, align 8, !dbg !820
  %idx.ext = sext i32 %18 to i64, !dbg !820
  %add.ptr = getelementptr inbounds i16, ptr %19, i64 %idx.ext, !dbg !820
  store ptr %add.ptr, ptr %cmdline, align 8, !dbg !820
  %20 = load i32, ptr %offset, align 4, !dbg !821
  %21 = load i32, ptr %cmdline_len, align 4, !dbg !822
  %sub = sub i32 %21, %20, !dbg !822
  store i32 %sub, ptr %cmdline_len, align 4, !dbg !822
  %call21 = call i64 @efi_open_device_path(ptr noundef %volume, ptr noundef %fi) #7, !dbg !823
  store i64 %call21, ptr %status, align 8, !dbg !824
  %22 = load i64, ptr %status, align 8, !dbg !825
  %cmp = icmp eq i64 %22, -9223372036854775805, !dbg !827
  br i1 %cmp, label %if.then26, label %lor.lhs.false23, !dbg !828

lor.lhs.false23:                                  ; preds = %if.end20
  %23 = load i64, ptr %status, align 8, !dbg !829
  %cmp24 = icmp eq i64 %23, -9223372036854775794, !dbg !830
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !831

if.then26:                                        ; preds = %lor.lhs.false23, %if.end20
  %24 = load ptr, ptr %image.addr, align 8, !dbg !832
  %call27 = call i64 @efi_open_volume(ptr noundef %24, ptr noundef %volume) #7, !dbg !833
  store i64 %call27, ptr %status, align 8, !dbg !834
  br label %if.end28, !dbg !835

if.end28:                                         ; preds = %if.then26, %lor.lhs.false23
  %25 = load i64, ptr %status, align 8, !dbg !836
  %cmp29 = icmp ne i64 %25, 0, !dbg !838
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !839

if.then31:                                        ; preds = %if.end28
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup139, !dbg !840

if.end32:                                         ; preds = %if.end28
  %26 = load ptr, ptr %volume, align 8, !dbg !841
  %call33 = call i64 @efi_open_file(ptr noundef %26, ptr noundef %fi, ptr noundef %file, ptr noundef %size) #7, !dbg !842
  store i64 %call33, ptr %status, align 8, !dbg !843
  %27 = load i64, ptr %status, align 8, !dbg !844
  %cmp34 = icmp ne i64 %27, 0, !dbg !846
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !847

if.then36:                                        ; preds = %if.end32
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup139, !dbg !848

if.end37:                                         ; preds = %if.end32
  %28 = load i64, ptr %alloc_size, align 8, !dbg !849
  %29 = load i64, ptr %size, align 8, !dbg !849
  %add = add i64 %28, %29, !dbg !849
  %sub38 = sub i64 %add, 1, !dbg !849
  %or = or i64 %sub38, 4095, !dbg !849
  %add39 = add i64 %or, 1, !dbg !849
  %30 = load i64, ptr %alloc_size, align 8, !dbg !850
  %sub40 = sub i64 %30, 1, !dbg !850
  %or41 = or i64 %sub40, 4095, !dbg !850
  %add42 = add i64 %or41, 1, !dbg !850
  %cmp43 = icmp ugt i64 %add39, %add42, !dbg !851
  br i1 %cmp43, label %if.then45, label %if.end68, !dbg !852

if.then45:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_addr) #6, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %old_addr, metadata !725, metadata !DIExpression()), !dbg !854
  %31 = load i64, ptr %alloc_addr, align 8, !dbg !855
  store i64 %31, ptr %old_addr, align 8, !dbg !854
  store i64 -9223372036854775799, ptr %status, align 8, !dbg !856
  %32 = load i64, ptr %soft_limit.addr, align 8, !dbg !857
  %33 = load i64, ptr %hard_limit.addr, align 8, !dbg !859
  %cmp46 = icmp ult i64 %32, %33, !dbg !860
  br i1 %cmp46, label %if.then48, label %if.end51, !dbg !861

if.then48:                                        ; preds = %if.then45
  %34 = load i64, ptr %alloc_size, align 8, !dbg !862
  %35 = load i64, ptr %size, align 8, !dbg !863
  %add49 = add i64 %34, %35, !dbg !864
  %36 = load i64, ptr %soft_limit.addr, align 8, !dbg !865
  %call50 = call i64 @efi_allocate_pages(i64 noundef %add49, ptr noundef %alloc_addr, i64 noundef %36) #7, !dbg !866
  store i64 %call50, ptr %status, align 8, !dbg !867
  br label %if.end51, !dbg !868

if.end51:                                         ; preds = %if.then48, %if.then45
  %37 = load i64, ptr %status, align 8, !dbg !869
  %cmp52 = icmp eq i64 %37, -9223372036854775799, !dbg !871
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !872

if.then54:                                        ; preds = %if.end51
  %38 = load i64, ptr %alloc_size, align 8, !dbg !873
  %39 = load i64, ptr %size, align 8, !dbg !874
  %add55 = add i64 %38, %39, !dbg !875
  %40 = load i64, ptr %hard_limit.addr, align 8, !dbg !876
  %call56 = call i64 @efi_allocate_pages(i64 noundef %add55, ptr noundef %alloc_addr, i64 noundef %40) #7, !dbg !877
  store i64 %call56, ptr %status, align 8, !dbg !878
  br label %if.end57, !dbg !879

if.end57:                                         ; preds = %if.then54, %if.end51
  %41 = load i64, ptr %status, align 8, !dbg !880
  %cmp58 = icmp ne i64 %41, 0, !dbg !882
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !883

if.then60:                                        ; preds = %if.end57
  %call61 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #7, !dbg !884
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

if.end62:                                         ; preds = %if.end57
  %42 = load i64, ptr %old_addr, align 8, !dbg !887
  %cmp63 = icmp ne i64 %42, 0, !dbg !889
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !890

if.then65:                                        ; preds = %if.end62
  %43 = load i64, ptr %alloc_addr, align 8, !dbg !891
  %44 = inttoptr i64 %43 to ptr, !dbg !893
  %45 = load i64, ptr %old_addr, align 8, !dbg !894
  %46 = inttoptr i64 %45 to ptr, !dbg !895
  %47 = load i64, ptr %alloc_size, align 8, !dbg !896
  %call66 = call ptr @memcpy(ptr noundef %44, ptr noundef %46, i64 noundef %47) #7, !dbg !897
  %48 = load i64, ptr %alloc_size, align 8, !dbg !898
  %49 = load i64, ptr %old_addr, align 8, !dbg !899
  call void @efi_free(i64 noundef %48, i64 noundef %49) #7, !dbg !900
  br label %if.end67, !dbg !901

if.end67:                                         ; preds = %if.then65, %if.end62
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !902
  br label %cleanup, !dbg !902

cleanup:                                          ; preds = %if.then60, %if.end67
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_addr) #6, !dbg !902
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup139 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end68, !dbg !903

if.end68:                                         ; preds = %cleanup.cont, %if.end37
  %50 = load i64, ptr %alloc_addr, align 8, !dbg !904
  %51 = inttoptr i64 %50 to ptr, !dbg !905
  %52 = load i64, ptr %alloc_size, align 8, !dbg !906
  %add.ptr69 = getelementptr inbounds i8, ptr %51, i64 %52, !dbg !907
  store ptr %add.ptr69, ptr %addr, align 8, !dbg !908
  %53 = load i64, ptr %size, align 8, !dbg !909
  %54 = load i64, ptr %alloc_size, align 8, !dbg !910
  %add70 = add i64 %54, %53, !dbg !910
  store i64 %add70, ptr %alloc_size, align 8, !dbg !910
  br label %while.cond, !dbg !911

while.cond:                                       ; preds = %cleanup.cont101, %if.end68
  %55 = load i64, ptr %size, align 8, !dbg !912
  %tobool71 = icmp ne i64 %55, 0, !dbg !911
  br i1 %tobool71, label %while.body, label %while.end, !dbg !911

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunksize) #6, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %chunksize, metadata !728, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x377) #6, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x377, metadata !730, metadata !DIExpression()), !dbg !915
  %56 = load i64, ptr %size, align 8, !dbg !915
  store i64 %56, ptr %__UNIQUE_ID___x377, align 8, !dbg !915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y378) #6, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y378, metadata !732, metadata !DIExpression()), !dbg !915
  %57 = load i64, ptr %efi_chunk_size, align 8, !dbg !915
  store i64 %57, ptr %__UNIQUE_ID___y378, align 8, !dbg !915
  %58 = load i64, ptr %__UNIQUE_ID___x377, align 8, !dbg !915
  %59 = load i64, ptr %__UNIQUE_ID___y378, align 8, !dbg !915
  %cmp72 = icmp ult i64 %58, %59, !dbg !915
  br i1 %cmp72, label %cond.true74, label %cond.false75, !dbg !915

cond.true74:                                      ; preds = %while.body
  %60 = load i64, ptr %__UNIQUE_ID___x377, align 8, !dbg !915
  br label %cond.end76, !dbg !915

cond.false75:                                     ; preds = %while.body
  %61 = load i64, ptr %__UNIQUE_ID___y378, align 8, !dbg !915
  br label %cond.end76, !dbg !915

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi i64 [ %60, %cond.true74 ], [ %61, %cond.false75 ], !dbg !915
  store i64 %cond77, ptr %tmp, align 8, !dbg !915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y378) #6, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x377) #6, !dbg !916
  %62 = load i64, ptr %tmp, align 8, !dbg !915
  store i64 %62, ptr %chunksize, align 8, !dbg !914
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !733, metadata !DIExpression()), !dbg !917
  %63 = load ptr, ptr %file, align 8, !dbg !917
  store ptr %63, ptr %__inst, align 8, !dbg !917
  %call79 = call zeroext i1 @efi_is_native() #7, !dbg !917
  br i1 %call79, label %cond.true81, label %cond.false83, !dbg !917

cond.true81:                                      ; preds = %cond.end76
  %64 = load ptr, ptr %__inst, align 8, !dbg !917
  %read = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 4, !dbg !917
  %65 = load ptr, ptr %read, align 8, !dbg !917
  %66 = load ptr, ptr %__inst, align 8, !dbg !917
  %67 = load ptr, ptr %addr, align 8, !dbg !917
  %call82 = call win64cc i64 %65(ptr noundef %66, ptr noundef %chunksize, ptr noundef %67) #7, !dbg !917
  br label %cond.end90, !dbg !917

cond.false83:                                     ; preds = %cond.end76
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !735, metadata !DIExpression()), !dbg !918
  br label %do.body84, !dbg !919

do.body84:                                        ; preds = %cond.false83
  br label %do.cond, !dbg !921

do.cond:                                          ; preds = %do.body84
  br label %do.end, !dbg !921

do.end:                                           ; preds = %do.cond
  %68 = load ptr, ptr %__inst, align 8, !dbg !918
  %read86 = getelementptr inbounds %struct.anon.2, ptr %68, i32 0, i32 4, !dbg !918
  %69 = load i32, ptr %read86, align 4, !dbg !918
  %70 = load ptr, ptr %__inst, align 8, !dbg !918
  %71 = load ptr, ptr %addr, align 8, !dbg !918
  %arraydecay87 = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !918
  %call88 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %69, ptr noundef %70, ptr noundef %chunksize, ptr noundef %71, ptr noundef %arraydecay87) #7, !dbg !918
  store i64 %call88, ptr %tmp85, align 8, !dbg !918
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !917
  %72 = load i64, ptr %tmp85, align 8, !dbg !918
  %call89 = call i64 @__efi64_widen_efi_status(i64 noundef %72) #7, !dbg !917
  br label %cond.end90, !dbg !917

cond.end90:                                       ; preds = %do.end, %cond.true81
  %cond91 = phi i64 [ %call82, %cond.true81 ], [ %call89, %do.end ], !dbg !917
  store i64 %cond91, ptr %tmp78, align 8, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !923
  %73 = load i64, ptr %tmp78, align 8, !dbg !917
  store i64 %73, ptr %status, align 8, !dbg !924
  %74 = load i64, ptr %status, align 8, !dbg !925
  %cmp92 = icmp ne i64 %74, 0, !dbg !927
  br i1 %cmp92, label %if.then94, label %if.end96, !dbg !928

if.then94:                                        ; preds = %cond.end90
  %call95 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.1) #7, !dbg !929
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !931

if.end96:                                         ; preds = %cond.end90
  %75 = load i64, ptr %chunksize, align 8, !dbg !932
  %76 = load ptr, ptr %addr, align 8, !dbg !933
  %add.ptr97 = getelementptr inbounds i8, ptr %76, i64 %75, !dbg !933
  store ptr %add.ptr97, ptr %addr, align 8, !dbg !933
  %77 = load i64, ptr %chunksize, align 8, !dbg !934
  %78 = load i64, ptr %size, align 8, !dbg !935
  %sub98 = sub i64 %78, %77, !dbg !935
  store i64 %sub98, ptr %size, align 8, !dbg !935
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !936
  br label %cleanup99, !dbg !936

cleanup99:                                        ; preds = %if.then94, %if.end96
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunksize) #6, !dbg !936
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %cleanup139 [
    i32 0, label %cleanup.cont101
  ]

cleanup.cont101:                                  ; preds = %cleanup99
  br label %while.cond, !dbg !911, !llvm.loop !937

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst102) #6, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %__inst102, metadata !737, metadata !DIExpression()), !dbg !940
  %79 = load ptr, ptr %file, align 8, !dbg !940
  store ptr %79, ptr %__inst102, align 8, !dbg !940
  %call104 = call zeroext i1 @efi_is_native() #7, !dbg !940
  br i1 %call104, label %cond.true106, label %cond.false108, !dbg !940

cond.true106:                                     ; preds = %while.end
  %80 = load ptr, ptr %__inst102, align 8, !dbg !940
  %close = getelementptr inbounds %struct.anon.1, ptr %80, i32 0, i32 2, !dbg !940
  %81 = load ptr, ptr %close, align 8, !dbg !940
  %82 = load ptr, ptr %__inst102, align 8, !dbg !940
  %call107 = call win64cc i64 %81(ptr noundef %82) #7, !dbg !940
  br label %cond.end118, !dbg !940

cond.false108:                                    ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad109) #6, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %__pad109, metadata !739, metadata !DIExpression()), !dbg !941
  br label %do.body110, !dbg !942

do.body110:                                       ; preds = %cond.false108
  br label %do.cond111, !dbg !944

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !944

do.end112:                                        ; preds = %do.cond111
  %83 = load ptr, ptr %__inst102, align 8, !dbg !941
  %close114 = getelementptr inbounds %struct.anon.2, ptr %83, i32 0, i32 2, !dbg !941
  %84 = load i32, ptr %close114, align 4, !dbg !941
  %85 = load ptr, ptr %__inst102, align 8, !dbg !941
  %arraydecay115 = getelementptr inbounds [3 x i64], ptr %__pad109, i64 0, i64 0, !dbg !941
  %call116 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %84, ptr noundef %85, ptr noundef %arraydecay115) #7, !dbg !941
  store i64 %call116, ptr %tmp113, align 8, !dbg !941
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad109) #6, !dbg !940
  %86 = load i64, ptr %tmp113, align 8, !dbg !941
  %call117 = call i64 @__efi64_widen_efi_status(i64 noundef %86) #7, !dbg !940
  br label %cond.end118, !dbg !940

cond.end118:                                      ; preds = %do.end112, %cond.true106
  %cond119 = phi i64 [ %call107, %cond.true106 ], [ %call117, %do.end112 ], !dbg !940
  store i64 %cond119, ptr %tmp103, align 8, !dbg !940
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst102) #6, !dbg !946
  %87 = load i64, ptr %tmp103, align 8, !dbg !940
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst120) #6, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %__inst120, metadata !741, metadata !DIExpression()), !dbg !947
  %88 = load ptr, ptr %volume, align 8, !dbg !947
  store ptr %88, ptr %__inst120, align 8, !dbg !947
  %call122 = call zeroext i1 @efi_is_native() #7, !dbg !947
  br i1 %call122, label %cond.true124, label %cond.false127, !dbg !947

cond.true124:                                     ; preds = %cond.end118
  %89 = load ptr, ptr %__inst120, align 8, !dbg !947
  %close125 = getelementptr inbounds %struct.anon.1, ptr %89, i32 0, i32 2, !dbg !947
  %90 = load ptr, ptr %close125, align 8, !dbg !947
  %91 = load ptr, ptr %__inst120, align 8, !dbg !947
  %call126 = call win64cc i64 %90(ptr noundef %91) #7, !dbg !947
  br label %cond.end137, !dbg !947

cond.false127:                                    ; preds = %cond.end118
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad128) #6, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %__pad128, metadata !743, metadata !DIExpression()), !dbg !948
  br label %do.body129, !dbg !949

do.body129:                                       ; preds = %cond.false127
  br label %do.cond130, !dbg !951

do.cond130:                                       ; preds = %do.body129
  br label %do.end131, !dbg !951

do.end131:                                        ; preds = %do.cond130
  %92 = load ptr, ptr %__inst120, align 8, !dbg !948
  %close133 = getelementptr inbounds %struct.anon.2, ptr %92, i32 0, i32 2, !dbg !948
  %93 = load i32, ptr %close133, align 4, !dbg !948
  %94 = load ptr, ptr %__inst120, align 8, !dbg !948
  %arraydecay134 = getelementptr inbounds [3 x i64], ptr %__pad128, i64 0, i64 0, !dbg !948
  %call135 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %93, ptr noundef %94, ptr noundef %arraydecay134) #7, !dbg !948
  store i64 %call135, ptr %tmp132, align 8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad128) #6, !dbg !947
  %95 = load i64, ptr %tmp132, align 8, !dbg !948
  %call136 = call i64 @__efi64_widen_efi_status(i64 noundef %95) #7, !dbg !947
  br label %cond.end137, !dbg !947

cond.end137:                                      ; preds = %do.end131, %cond.true124
  %cond138 = phi i64 [ %call126, %cond.true124 ], [ %call136, %do.end131 ], !dbg !947
  store i64 %cond138, ptr %tmp121, align 8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst120) #6, !dbg !953
  %96 = load i64, ptr %tmp121, align 8, !dbg !947
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !954
  br label %cleanup139, !dbg !954

cleanup139:                                       ; preds = %if.then36, %if.then31, %cond.end137, %cleanup99, %cleanup, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #6, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !954
  call void @llvm.lifetime.end.p0(i64 592, ptr %fi) #6, !dbg !954
  %cleanup.dest142 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest142, label %cleanup190 [
    i32 0, label %cleanup.cont143
    i32 2, label %do.end147
    i32 6, label %err_close_file
    i32 5, label %err_close_volume
    i32 4, label %err_free_alloc
  ]

cleanup.cont143:                                  ; preds = %cleanup139
  br label %do.cond144, !dbg !955

do.cond144:                                       ; preds = %cleanup.cont143
  %97 = load i32, ptr %offset, align 4, !dbg !956
  %cmp145 = icmp sgt i32 %97, 0, !dbg !957
  br i1 %cmp145, label %do.body, label %do.end147, !dbg !955, !llvm.loop !958

do.end147:                                        ; preds = %do.cond144, %cleanup139
  %98 = load i64, ptr %alloc_addr, align 8, !dbg !960
  %99 = load ptr, ptr %load_addr.addr, align 8, !dbg !961
  store i64 %98, ptr %99, align 8, !dbg !962
  %100 = load i64, ptr %alloc_size, align 8, !dbg !963
  %101 = load ptr, ptr %load_size.addr, align 8, !dbg !964
  store i64 %100, ptr %101, align 8, !dbg !965
  %102 = load ptr, ptr %load_size.addr, align 8, !dbg !966
  %103 = load i64, ptr %102, align 8, !dbg !968
  %cmp148 = icmp eq i64 %103, 0, !dbg !969
  br i1 %cmp148, label %if.then150, label %if.end151, !dbg !970

if.then150:                                       ; preds = %do.end147
  store i64 -9223372036854775802, ptr %retval, align 8, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190, !dbg !971

if.end151:                                        ; preds = %do.end147
  store i64 0, ptr %retval, align 8, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190, !dbg !972

err_close_file:                                   ; preds = %cleanup139
  call void @llvm.dbg.label(metadata !745), !dbg !973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst152) #6, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %__inst152, metadata !746, metadata !DIExpression()), !dbg !974
  %104 = load ptr, ptr %file, align 8, !dbg !974
  store ptr %104, ptr %__inst152, align 8, !dbg !974
  %call154 = call zeroext i1 @efi_is_native() #7, !dbg !974
  br i1 %call154, label %cond.true156, label %cond.false159, !dbg !974

cond.true156:                                     ; preds = %err_close_file
  %105 = load ptr, ptr %__inst152, align 8, !dbg !974
  %close157 = getelementptr inbounds %struct.anon.1, ptr %105, i32 0, i32 2, !dbg !974
  %106 = load ptr, ptr %close157, align 8, !dbg !974
  %107 = load ptr, ptr %__inst152, align 8, !dbg !974
  %call158 = call win64cc i64 %106(ptr noundef %107) #7, !dbg !974
  br label %cond.end169, !dbg !974

cond.false159:                                    ; preds = %err_close_file
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad160) #6, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %__pad160, metadata !748, metadata !DIExpression()), !dbg !975
  br label %do.body161, !dbg !976

do.body161:                                       ; preds = %cond.false159
  br label %do.cond162, !dbg !978

do.cond162:                                       ; preds = %do.body161
  br label %do.end163, !dbg !978

do.end163:                                        ; preds = %do.cond162
  %108 = load ptr, ptr %__inst152, align 8, !dbg !975
  %close165 = getelementptr inbounds %struct.anon.2, ptr %108, i32 0, i32 2, !dbg !975
  %109 = load i32, ptr %close165, align 4, !dbg !975
  %110 = load ptr, ptr %__inst152, align 8, !dbg !975
  %arraydecay166 = getelementptr inbounds [3 x i64], ptr %__pad160, i64 0, i64 0, !dbg !975
  %call167 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %109, ptr noundef %110, ptr noundef %arraydecay166) #7, !dbg !975
  store i64 %call167, ptr %tmp164, align 8, !dbg !975
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad160) #6, !dbg !974
  %111 = load i64, ptr %tmp164, align 8, !dbg !975
  %call168 = call i64 @__efi64_widen_efi_status(i64 noundef %111) #7, !dbg !974
  br label %cond.end169, !dbg !974

cond.end169:                                      ; preds = %do.end163, %cond.true156
  %cond170 = phi i64 [ %call158, %cond.true156 ], [ %call168, %do.end163 ], !dbg !974
  store i64 %cond170, ptr %tmp153, align 8, !dbg !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst152) #6, !dbg !980
  %112 = load i64, ptr %tmp153, align 8, !dbg !974
  br label %err_close_volume, !dbg !980

err_close_volume:                                 ; preds = %cond.end169, %cleanup139
  call void @llvm.dbg.label(metadata !750), !dbg !981
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst171) #6, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %__inst171, metadata !751, metadata !DIExpression()), !dbg !982
  %113 = load ptr, ptr %volume, align 8, !dbg !982
  store ptr %113, ptr %__inst171, align 8, !dbg !982
  %call173 = call zeroext i1 @efi_is_native() #7, !dbg !982
  br i1 %call173, label %cond.true175, label %cond.false178, !dbg !982

cond.true175:                                     ; preds = %err_close_volume
  %114 = load ptr, ptr %__inst171, align 8, !dbg !982
  %close176 = getelementptr inbounds %struct.anon.1, ptr %114, i32 0, i32 2, !dbg !982
  %115 = load ptr, ptr %close176, align 8, !dbg !982
  %116 = load ptr, ptr %__inst171, align 8, !dbg !982
  %call177 = call win64cc i64 %115(ptr noundef %116) #7, !dbg !982
  br label %cond.end188, !dbg !982

cond.false178:                                    ; preds = %err_close_volume
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad179) #6, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %__pad179, metadata !753, metadata !DIExpression()), !dbg !983
  br label %do.body180, !dbg !984

do.body180:                                       ; preds = %cond.false178
  br label %do.cond181, !dbg !986

do.cond181:                                       ; preds = %do.body180
  br label %do.end182, !dbg !986

do.end182:                                        ; preds = %do.cond181
  %117 = load ptr, ptr %__inst171, align 8, !dbg !983
  %close184 = getelementptr inbounds %struct.anon.2, ptr %117, i32 0, i32 2, !dbg !983
  %118 = load i32, ptr %close184, align 4, !dbg !983
  %119 = load ptr, ptr %__inst171, align 8, !dbg !983
  %arraydecay185 = getelementptr inbounds [3 x i64], ptr %__pad179, i64 0, i64 0, !dbg !983
  %call186 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %118, ptr noundef %119, ptr noundef %arraydecay185) #7, !dbg !983
  store i64 %call186, ptr %tmp183, align 8, !dbg !983
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad179) #6, !dbg !982
  %120 = load i64, ptr %tmp183, align 8, !dbg !983
  %call187 = call i64 @__efi64_widen_efi_status(i64 noundef %120) #7, !dbg !982
  br label %cond.end188, !dbg !982

cond.end188:                                      ; preds = %do.end182, %cond.true175
  %cond189 = phi i64 [ %call177, %cond.true175 ], [ %call187, %do.end182 ], !dbg !982
  store i64 %cond189, ptr %tmp172, align 8, !dbg !982
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst171) #6, !dbg !988
  %121 = load i64, ptr %tmp172, align 8, !dbg !982
  br label %err_free_alloc, !dbg !988

err_free_alloc:                                   ; preds = %cond.end188, %cleanup139
  call void @llvm.dbg.label(metadata !755), !dbg !989
  %122 = load i64, ptr %alloc_size, align 8, !dbg !990
  %123 = load i64, ptr %alloc_addr, align 8, !dbg !991
  call void @efi_free(i64 noundef %122, i64 noundef %123) #7, !dbg !992
  %124 = load i64, ptr %status, align 8, !dbg !993
  store i64 %124, ptr %retval, align 8, !dbg !994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190, !dbg !994

cleanup190:                                       ; preds = %err_free_alloc, %if.end151, %if.then150, %cleanup139, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_size) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_addr) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %volume) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %efi_chunk_size) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmdline_len) #6, !dbg !995
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmdline) #6, !dbg !995
  %125 = load i64, ptr %retval, align 8, !dbg !995
  ret i64 %125, !dbg !995
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !996 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !1000
  ret i1 %call, !dbg !1001
}

; Function Attrs: noredzone
declare !dbg !1002 hidden void @efi_apply_loadoptions_quirk(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone nounwind
define internal i32 @find_file_option(ptr noundef %cmdline, i32 noundef %cmdline_len, ptr noundef %prefix, i32 noundef %prefix_size, ptr noundef %result, i32 noundef %result_len) #0 !dbg !1005 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %cmdline_len.addr = alloca i32, align 4
  %prefix.addr = alloca ptr, align 8
  %prefix_size.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %result_len.addr = alloca i32, align 4
  %prefix_len = alloca i32, align 4
  %found = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca i16, align 2
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !1009, metadata !DIExpression()), !dbg !1020
  store i32 %cmdline_len, ptr %cmdline_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmdline_len.addr, metadata !1010, metadata !DIExpression()), !dbg !1021
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !1011, metadata !DIExpression()), !dbg !1022
  store i32 %prefix_size, ptr %prefix_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prefix_size.addr, metadata !1012, metadata !DIExpression()), !dbg !1023
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1013, metadata !DIExpression()), !dbg !1024
  store i32 %result_len, ptr %result_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %result_len.addr, metadata !1014, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix_len) #6, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %prefix_len, metadata !1015, metadata !DIExpression()), !dbg !1027
  %0 = load i32, ptr %prefix_size.addr, align 4, !dbg !1028
  %div = sdiv i32 %0, 2, !dbg !1029
  store i32 %div, ptr %prefix_len, align 4, !dbg !1027
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #6, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1016, metadata !DIExpression()), !dbg !1031
  store i8 0, ptr %found, align 1, !dbg !1031
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1017, metadata !DIExpression()), !dbg !1033
  %1 = load i32, ptr %prefix_len, align 4, !dbg !1034
  store i32 %1, ptr %i, align 4, !dbg !1036
  br label %for.cond, !dbg !1037

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1038
  %3 = load i32, ptr %cmdline_len.addr, align 4, !dbg !1040
  %cmp = icmp slt i32 %2, %3, !dbg !1041
  br i1 %cmp, label %for.body, label %for.end, !dbg !1042

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cmdline.addr, align 8, !dbg !1043
  %5 = load i32, ptr %i, align 4, !dbg !1046
  %6 = load i32, ptr %prefix_len, align 4, !dbg !1047
  %sub = sub nsw i32 %5, %6, !dbg !1048
  %idxprom = sext i32 %sub to i64, !dbg !1043
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom, !dbg !1043
  %7 = load ptr, ptr %prefix.addr, align 8, !dbg !1049
  %8 = load i32, ptr %prefix_size.addr, align 4, !dbg !1050
  %conv = sext i32 %8 to i64, !dbg !1050
  %call = call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %7, i64 noundef %conv) #7, !dbg !1051
  %tobool = icmp ne i32 %call, 0, !dbg !1051
  br i1 %tobool, label %if.end, label %if.then, !dbg !1052

if.then:                                          ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !1053
  br label %for.end, !dbg !1055

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1056

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !1057
  %inc = add nsw i32 %9, 1, !dbg !1057
  store i32 %inc, ptr %i, align 4, !dbg !1057
  br label %for.cond, !dbg !1058, !llvm.loop !1059

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i8, ptr %found, align 1, !dbg !1061, !range !793, !noundef !794
  %tobool1 = trunc i8 %10 to i1, !dbg !1061
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1063

if.then2:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !1064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1064

if.end3:                                          ; preds = %for.end
  br label %while.cond, !dbg !1065

while.cond:                                       ; preds = %while.body, %if.end3
  %11 = load i32, ptr %i, align 4, !dbg !1066
  %12 = load i32, ptr %cmdline_len.addr, align 4, !dbg !1067
  %cmp4 = icmp slt i32 %11, %12, !dbg !1068
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !1069

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %cmdline.addr, align 8, !dbg !1070
  %14 = load i32, ptr %i, align 4, !dbg !1071
  %idxprom6 = sext i32 %14 to i64, !dbg !1070
  %arrayidx7 = getelementptr inbounds i16, ptr %13, i64 %idxprom6, !dbg !1070
  %15 = load i16, ptr %arrayidx7, align 2, !dbg !1070
  %conv8 = zext i16 %15 to i32, !dbg !1070
  %cmp9 = icmp eq i32 %conv8, 47, !dbg !1072
  br i1 %cmp9, label %lor.end, label %lor.rhs, !dbg !1073

lor.rhs:                                          ; preds = %land.rhs
  %16 = load ptr, ptr %cmdline.addr, align 8, !dbg !1074
  %17 = load i32, ptr %i, align 4, !dbg !1075
  %idxprom11 = sext i32 %17 to i64, !dbg !1074
  %arrayidx12 = getelementptr inbounds i16, ptr %16, i64 %idxprom11, !dbg !1074
  %18 = load i16, ptr %arrayidx12, align 2, !dbg !1074
  %conv13 = zext i16 %18 to i32, !dbg !1074
  %cmp14 = icmp eq i32 %conv13, 92, !dbg !1076
  br label %lor.end, !dbg !1073

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %19 = phi i1 [ true, %land.rhs ], [ %cmp14, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %19, %lor.end ], !dbg !1077
  br i1 %20, label %while.body, label %while.end, !dbg !1065

while.body:                                       ; preds = %land.end
  %21 = load i32, ptr %i, align 4, !dbg !1078
  %inc16 = add nsw i32 %21, 1, !dbg !1078
  store i32 %inc16, ptr %i, align 4, !dbg !1078
  br label %while.cond, !dbg !1065, !llvm.loop !1079

while.end:                                        ; preds = %land.end
  br label %while.cond17, !dbg !1080

while.cond17:                                     ; preds = %cleanup.cont, %while.end
  %22 = load i32, ptr %result_len.addr, align 4, !dbg !1081
  %dec = add nsw i32 %22, -1, !dbg !1081
  store i32 %dec, ptr %result_len.addr, align 4, !dbg !1081
  %cmp18 = icmp sgt i32 %dec, 0, !dbg !1082
  br i1 %cmp18, label %land.rhs20, label %land.end23, !dbg !1083

land.rhs20:                                       ; preds = %while.cond17
  %23 = load i32, ptr %i, align 4, !dbg !1084
  %24 = load i32, ptr %cmdline_len.addr, align 4, !dbg !1085
  %cmp21 = icmp slt i32 %23, %24, !dbg !1086
  br label %land.end23

land.end23:                                       ; preds = %land.rhs20, %while.cond17
  %25 = phi i1 [ false, %while.cond17 ], [ %cmp21, %land.rhs20 ], !dbg !1077
  br i1 %25, label %while.body24, label %while.end40, !dbg !1080

while.body24:                                     ; preds = %land.end23
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #6, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1018, metadata !DIExpression()), !dbg !1088
  %26 = load ptr, ptr %cmdline.addr, align 8, !dbg !1089
  %27 = load i32, ptr %i, align 4, !dbg !1090
  %inc25 = add nsw i32 %27, 1, !dbg !1090
  store i32 %inc25, ptr %i, align 4, !dbg !1090
  %idxprom26 = sext i32 %27 to i64, !dbg !1089
  %arrayidx27 = getelementptr inbounds i16, ptr %26, i64 %idxprom26, !dbg !1089
  %28 = load i16, ptr %arrayidx27, align 2, !dbg !1089
  store i16 %28, ptr %c, align 2, !dbg !1088
  %29 = load i16, ptr %c, align 2, !dbg !1091
  %conv28 = zext i16 %29 to i32, !dbg !1091
  %cmp29 = icmp eq i32 %conv28, 0, !dbg !1093
  br i1 %cmp29, label %if.then38, label %lor.lhs.false, !dbg !1094

lor.lhs.false:                                    ; preds = %while.body24
  %30 = load i16, ptr %c, align 2, !dbg !1095
  %conv31 = zext i16 %30 to i32, !dbg !1095
  %cmp32 = icmp eq i32 %conv31, 10, !dbg !1096
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34, !dbg !1097

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %31 = load i16, ptr %c, align 2, !dbg !1098
  %conv35 = zext i16 %31 to i32, !dbg !1098
  %cmp36 = icmp eq i32 %conv35, 32, !dbg !1099
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1100

if.then38:                                        ; preds = %lor.lhs.false34, %lor.lhs.false, %while.body24
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end39:                                         ; preds = %lor.lhs.false34
  %32 = load i16, ptr %c, align 2, !dbg !1102
  %33 = load ptr, ptr %result.addr, align 8, !dbg !1103
  %incdec.ptr = getelementptr inbounds i16, ptr %33, i32 1, !dbg !1103
  store ptr %incdec.ptr, ptr %result.addr, align 8, !dbg !1103
  store i16 %32, ptr %33, align 2, !dbg !1104
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1105
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end39, %if.then38
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #6, !dbg !1105
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %while.end40
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond17, !dbg !1080, !llvm.loop !1106

while.end40:                                      ; preds = %cleanup, %land.end23
  %34 = load ptr, ptr %result.addr, align 8, !dbg !1107
  store i16 0, ptr %34, align 2, !dbg !1108
  %35 = load i32, ptr %i, align 4, !dbg !1109
  store i32 %35, ptr %retval, align 4, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1110

cleanup41:                                        ; preds = %while.end40, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #6, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix_len) #6, !dbg !1111
  %36 = load i32, ptr %retval, align 4, !dbg !1111
  ret i32 %36, !dbg !1111

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_open_device_path(ptr noundef %volume, ptr noundef %fi) #0 !dbg !14 {
entry:
  %retval = alloca i64, align 8
  %volume.addr = alloca ptr, align 8
  %fi.addr = alloca ptr, align 8
  %text_to_dp_guid = alloca %struct.guid_t, align 4
  %fs_proto = alloca %struct.guid_t, align 4
  %initrd_dp = alloca ptr, align 8
  %io = alloca ptr, align 8
  %fpath = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad28 = alloca [3 x i64], align 16
  %tmp32 = alloca i64, align 8
  %__pad54 = alloca [3 x i64], align 16
  %tmp58 = alloca i64, align 8
  %__pad92 = alloca [3 x i64], align 16
  %tmp96 = alloca i64, align 8
  %__UNIQUE_ID___x372 = alloca i64, align 8
  %__UNIQUE_ID___y373 = alloca i64, align 8
  %tmp137 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp145 = alloca i64, align 8
  %__pad151 = alloca [3 x i64], align 16
  %tmp155 = alloca i64, align 8
  store ptr %volume, ptr %volume.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %volume.addr, metadata !403, metadata !DIExpression()), !dbg !1112
  store ptr %fi, ptr %fi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !404, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 16, ptr %text_to_dp_guid) #6, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %text_to_dp_guid, metadata !405, metadata !DIExpression()), !dbg !1115
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %text_to_dp_guid, ptr align 4 @__const.efi_open_device_path.text_to_dp_guid, i64 16, i1 false), !dbg !1115
  call void @llvm.lifetime.start.p0(i64 16, ptr %fs_proto) #6, !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %fs_proto, metadata !406, metadata !DIExpression()), !dbg !1117
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fs_proto, ptr align 4 @__const.efi_open_device_path.fs_proto, i64 16, i1 false), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr %initrd_dp) #6, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %initrd_dp, metadata !407, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #6, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %io, metadata !408, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpath) #6, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %fpath, metadata !426, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #6, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !427, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !1126
  call void @llvm.dbg.declare(metadata ptr %status, metadata !428, metadata !DIExpression()), !dbg !1127
  %0 = load ptr, ptr @efi_open_device_path.text_to_dp, align 8, !dbg !1128
  %tobool = icmp ne ptr %0, null, !dbg !1128
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1129

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @efi_is_native() #7, !dbg !1130
  br i1 %call, label %cond.true, label %cond.false5, !dbg !1130

cond.true:                                        ; preds = %land.lhs.true
  %call1 = call zeroext i1 @efi_is_native() #7, !dbg !1130
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !1130

cond.true2:                                       ; preds = %cond.true
  %1 = load ptr, ptr @efi_system_table, align 8, !dbg !1130
  %boottime = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 10, !dbg !1130
  %2 = load ptr, ptr %boottime, align 8, !dbg !1130
  br label %cond.end, !dbg !1130

cond.false:                                       ; preds = %cond.true
  %3 = load ptr, ptr @efi_system_table, align 8, !dbg !1130
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %3, i32 0, i32 10, !dbg !1130
  %4 = load i32, ptr %boottime3, align 4, !dbg !1130
  %conv = zext i32 %4 to i64, !dbg !1130
  %5 = inttoptr i64 %conv to ptr, !dbg !1130
  br label %cond.end, !dbg !1130

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %2, %cond.true2 ], [ %5, %cond.false ], !dbg !1130
  %locate_protocol = getelementptr inbounds %struct.anon.3, ptr %cond, i32 0, i32 38, !dbg !1130
  %6 = load ptr, ptr %locate_protocol, align 8, !dbg !1130
  %call4 = call win64cc i64 %6(ptr noundef %text_to_dp_guid, ptr noundef null, ptr noundef @efi_open_device_path.text_to_dp) #7, !dbg !1130
  br label %cond.end19, !dbg !1130

cond.false5:                                      ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !429, metadata !DIExpression()), !dbg !1131
  br label %do.body, !dbg !1132

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !1134

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1134

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #7, !dbg !1131
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !1131

cond.true8:                                       ; preds = %do.end
  %7 = load ptr, ptr @efi_system_table, align 8, !dbg !1131
  %boottime9 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 10, !dbg !1131
  %8 = load ptr, ptr %boottime9, align 8, !dbg !1131
  br label %cond.end13, !dbg !1131

cond.false10:                                     ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !1131
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %9, i32 0, i32 10, !dbg !1131
  %10 = load i32, ptr %boottime11, align 4, !dbg !1131
  %conv12 = zext i32 %10 to i64, !dbg !1131
  %11 = inttoptr i64 %conv12 to ptr, !dbg !1131
  br label %cond.end13, !dbg !1131

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %8, %cond.true8 ], [ %11, %cond.false10 ], !dbg !1131
  %locate_protocol15 = getelementptr inbounds %struct.anon.4, ptr %cond14, i32 0, i32 38, !dbg !1131
  %12 = load i32, ptr %locate_protocol15, align 4, !dbg !1131
  %call16 = call ptr @efi64_zero_upper(ptr noundef @efi_open_device_path.text_to_dp) #7, !dbg !1131
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1131
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %12, ptr noundef %text_to_dp_guid, ptr noundef null, ptr noundef %call16, ptr noundef %arraydecay) #7, !dbg !1131
  store i64 %call17, ptr %tmp, align 8, !dbg !1131
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !1130
  %13 = load i64, ptr %tmp, align 8, !dbg !1131
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %13) #7, !dbg !1130
  br label %cond.end19, !dbg !1130

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !1130
  %cmp = icmp ne i64 %cond20, 0, !dbg !1136
  br i1 %cmp, label %if.then, label %if.end, !dbg !1137

if.then:                                          ; preds = %cond.end19
  store i64 -9223372036854775805, ptr %retval, align 8, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

if.end:                                           ; preds = %cond.end19, %entry
  %call22 = call zeroext i1 @efi_is_native() #7, !dbg !1139
  br i1 %call22, label %cond.true24, label %cond.false27, !dbg !1139

cond.true24:                                      ; preds = %if.end
  %14 = load ptr, ptr @efi_open_device_path.text_to_dp, align 8, !dbg !1139
  %convert_text_to_device_path = getelementptr inbounds %struct.anon.6, ptr %14, i32 0, i32 1, !dbg !1139
  %15 = load ptr, ptr %convert_text_to_device_path, align 8, !dbg !1139
  %16 = load ptr, ptr %fi.addr, align 8, !dbg !1139
  %filename = getelementptr inbounds %struct.finfo, ptr %16, i32 0, i32 1, !dbg !1139
  %arraydecay25 = getelementptr inbounds [256 x i16], ptr %filename, i64 0, i64 0, !dbg !1139
  %call26 = call win64cc ptr %15(ptr noundef %arraydecay25) #7, !dbg !1139
  br label %cond.end38, !dbg !1139

cond.false27:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad28) #6, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %__pad28, metadata !435, metadata !DIExpression()), !dbg !1140
  br label %do.body29, !dbg !1141

do.body29:                                        ; preds = %cond.false27
  br label %do.cond30, !dbg !1143

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1143

do.end31:                                         ; preds = %do.cond30
  %17 = load ptr, ptr @efi_open_device_path.text_to_dp, align 8, !dbg !1140
  %convert_text_to_device_path33 = getelementptr inbounds %struct.anon.7, ptr %17, i32 0, i32 1, !dbg !1140
  %18 = load i32, ptr %convert_text_to_device_path33, align 4, !dbg !1140
  %19 = load ptr, ptr %fi.addr, align 8, !dbg !1140
  %filename34 = getelementptr inbounds %struct.finfo, ptr %19, i32 0, i32 1, !dbg !1140
  %arraydecay35 = getelementptr inbounds [256 x i16], ptr %filename34, i64 0, i64 0, !dbg !1140
  %arraydecay36 = getelementptr inbounds [3 x i64], ptr %__pad28, i64 0, i64 0, !dbg !1140
  %call37 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %18, ptr noundef %arraydecay35, ptr noundef %arraydecay36) #7, !dbg !1140
  store i64 %call37, ptr %tmp32, align 8, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad28) #6, !dbg !1139
  %20 = load i64, ptr %tmp32, align 8, !dbg !1140
  %21 = inttoptr i64 %20 to ptr, !dbg !1139
  br label %cond.end38, !dbg !1139

cond.end38:                                       ; preds = %do.end31, %cond.true24
  %cond39 = phi ptr [ %call26, %cond.true24 ], [ %21, %do.end31 ], !dbg !1139
  store ptr %cond39, ptr %initrd_dp, align 8, !dbg !1145
  %call40 = call zeroext i1 @efi_is_native() #7, !dbg !1146
  br i1 %call40, label %cond.true42, label %cond.false53, !dbg !1146

cond.true42:                                      ; preds = %cond.end38
  %call43 = call zeroext i1 @efi_is_native() #7, !dbg !1146
  br i1 %call43, label %cond.true45, label %cond.false47, !dbg !1146

cond.true45:                                      ; preds = %cond.true42
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !1146
  %boottime46 = getelementptr inbounds %struct.anon.5, ptr %22, i32 0, i32 10, !dbg !1146
  %23 = load ptr, ptr %boottime46, align 8, !dbg !1146
  br label %cond.end50, !dbg !1146

cond.false47:                                     ; preds = %cond.true42
  %24 = load ptr, ptr @efi_system_table, align 8, !dbg !1146
  %boottime48 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %24, i32 0, i32 10, !dbg !1146
  %25 = load i32, ptr %boottime48, align 4, !dbg !1146
  %conv49 = zext i32 %25 to i64, !dbg !1146
  %26 = inttoptr i64 %conv49 to ptr, !dbg !1146
  br label %cond.end50, !dbg !1146

cond.end50:                                       ; preds = %cond.false47, %cond.true45
  %cond51 = phi ptr [ %23, %cond.true45 ], [ %26, %cond.false47 ], !dbg !1146
  %locate_device_path = getelementptr inbounds %struct.anon.3, ptr %cond51, i32 0, i32 21, !dbg !1146
  %27 = load ptr, ptr %locate_device_path, align 8, !dbg !1146
  %call52 = call win64cc i64 %27(ptr noundef %fs_proto, ptr noundef %initrd_dp, ptr noundef %handle) #7, !dbg !1146
  br label %cond.end73, !dbg !1146

cond.false53:                                     ; preds = %cond.end38
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad54) #6, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %__pad54, metadata !437, metadata !DIExpression()), !dbg !1147
  br label %do.body55, !dbg !1148

do.body55:                                        ; preds = %cond.false53
  br label %do.cond56, !dbg !1150

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !1150

do.end57:                                         ; preds = %do.cond56
  %call59 = call zeroext i1 @efi_is_native() #7, !dbg !1147
  br i1 %call59, label %cond.true61, label %cond.false63, !dbg !1147

cond.true61:                                      ; preds = %do.end57
  %28 = load ptr, ptr @efi_system_table, align 8, !dbg !1147
  %boottime62 = getelementptr inbounds %struct.anon.5, ptr %28, i32 0, i32 10, !dbg !1147
  %29 = load ptr, ptr %boottime62, align 8, !dbg !1147
  br label %cond.end66, !dbg !1147

cond.false63:                                     ; preds = %do.end57
  %30 = load ptr, ptr @efi_system_table, align 8, !dbg !1147
  %boottime64 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %30, i32 0, i32 10, !dbg !1147
  %31 = load i32, ptr %boottime64, align 4, !dbg !1147
  %conv65 = zext i32 %31 to i64, !dbg !1147
  %32 = inttoptr i64 %conv65 to ptr, !dbg !1147
  br label %cond.end66, !dbg !1147

cond.end66:                                       ; preds = %cond.false63, %cond.true61
  %cond67 = phi ptr [ %29, %cond.true61 ], [ %32, %cond.false63 ], !dbg !1147
  %locate_device_path68 = getelementptr inbounds %struct.anon.4, ptr %cond67, i32 0, i32 21, !dbg !1147
  %33 = load i32, ptr %locate_device_path68, align 8, !dbg !1147
  %call69 = call ptr @efi64_zero_upper(ptr noundef %handle) #7, !dbg !1147
  %arraydecay70 = getelementptr inbounds [3 x i64], ptr %__pad54, i64 0, i64 0, !dbg !1147
  %call71 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %33, ptr noundef %fs_proto, ptr noundef %initrd_dp, ptr noundef %call69, ptr noundef %arraydecay70) #7, !dbg !1147
  store i64 %call71, ptr %tmp58, align 8, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad54) #6, !dbg !1146
  %34 = load i64, ptr %tmp58, align 8, !dbg !1147
  %call72 = call i64 @__efi64_widen_efi_status(i64 noundef %34) #7, !dbg !1146
  br label %cond.end73, !dbg !1146

cond.end73:                                       ; preds = %cond.end66, %cond.end50
  %cond74 = phi i64 [ %call52, %cond.end50 ], [ %call72, %cond.end66 ], !dbg !1146
  %tobool75 = icmp ne i64 %cond74, 0, !dbg !1146
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1146

cond.true76:                                      ; preds = %cond.end73
  br label %cond.end113, !dbg !1146

cond.false77:                                     ; preds = %cond.end73
  %call78 = call zeroext i1 @efi_is_native() #7, !dbg !1152
  br i1 %call78, label %cond.true80, label %cond.false91, !dbg !1152

cond.true80:                                      ; preds = %cond.false77
  %call81 = call zeroext i1 @efi_is_native() #7, !dbg !1152
  br i1 %call81, label %cond.true83, label %cond.false85, !dbg !1152

cond.true83:                                      ; preds = %cond.true80
  %35 = load ptr, ptr @efi_system_table, align 8, !dbg !1152
  %boottime84 = getelementptr inbounds %struct.anon.5, ptr %35, i32 0, i32 10, !dbg !1152
  %36 = load ptr, ptr %boottime84, align 8, !dbg !1152
  br label %cond.end88, !dbg !1152

cond.false85:                                     ; preds = %cond.true80
  %37 = load ptr, ptr @efi_system_table, align 8, !dbg !1152
  %boottime86 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %37, i32 0, i32 10, !dbg !1152
  %38 = load i32, ptr %boottime86, align 4, !dbg !1152
  %conv87 = zext i32 %38 to i64, !dbg !1152
  %39 = inttoptr i64 %conv87 to ptr, !dbg !1152
  br label %cond.end88, !dbg !1152

cond.end88:                                       ; preds = %cond.false85, %cond.true83
  %cond89 = phi ptr [ %36, %cond.true83 ], [ %39, %cond.false85 ], !dbg !1152
  %handle_protocol = getelementptr inbounds %struct.anon.3, ptr %cond89, i32 0, i32 17, !dbg !1152
  %40 = load ptr, ptr %handle_protocol, align 8, !dbg !1152
  %41 = load ptr, ptr %handle, align 8, !dbg !1152
  %call90 = call win64cc i64 %40(ptr noundef %41, ptr noundef %fs_proto, ptr noundef %io) #7, !dbg !1152
  br label %cond.end111, !dbg !1152

cond.false91:                                     ; preds = %cond.false77
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad92) #6, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %__pad92, metadata !440, metadata !DIExpression()), !dbg !1153
  br label %do.body93, !dbg !1154

do.body93:                                        ; preds = %cond.false91
  br label %do.cond94, !dbg !1156

do.cond94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !1156

do.end95:                                         ; preds = %do.cond94
  %call97 = call zeroext i1 @efi_is_native() #7, !dbg !1153
  br i1 %call97, label %cond.true99, label %cond.false101, !dbg !1153

cond.true99:                                      ; preds = %do.end95
  %42 = load ptr, ptr @efi_system_table, align 8, !dbg !1153
  %boottime100 = getelementptr inbounds %struct.anon.5, ptr %42, i32 0, i32 10, !dbg !1153
  %43 = load ptr, ptr %boottime100, align 8, !dbg !1153
  br label %cond.end104, !dbg !1153

cond.false101:                                    ; preds = %do.end95
  %44 = load ptr, ptr @efi_system_table, align 8, !dbg !1153
  %boottime102 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %44, i32 0, i32 10, !dbg !1153
  %45 = load i32, ptr %boottime102, align 4, !dbg !1153
  %conv103 = zext i32 %45 to i64, !dbg !1153
  %46 = inttoptr i64 %conv103 to ptr, !dbg !1153
  br label %cond.end104, !dbg !1153

cond.end104:                                      ; preds = %cond.false101, %cond.true99
  %cond105 = phi ptr [ %43, %cond.true99 ], [ %46, %cond.false101 ], !dbg !1153
  %handle_protocol106 = getelementptr inbounds %struct.anon.4, ptr %cond105, i32 0, i32 17, !dbg !1153
  %47 = load i32, ptr %handle_protocol106, align 8, !dbg !1153
  %48 = load ptr, ptr %handle, align 8, !dbg !1153
  %call107 = call ptr @efi64_zero_upper(ptr noundef %io) #7, !dbg !1153
  %arraydecay108 = getelementptr inbounds [3 x i64], ptr %__pad92, i64 0, i64 0, !dbg !1153
  %call109 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %47, ptr noundef %48, ptr noundef %fs_proto, ptr noundef %call107, ptr noundef %arraydecay108) #7, !dbg !1153
  store i64 %call109, ptr %tmp96, align 8, !dbg !1153
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad92) #6, !dbg !1152
  %49 = load i64, ptr %tmp96, align 8, !dbg !1153
  %call110 = call i64 @__efi64_widen_efi_status(i64 noundef %49) #7, !dbg !1152
  br label %cond.end111, !dbg !1152

cond.end111:                                      ; preds = %cond.end104, %cond.end88
  %cond112 = phi i64 [ %call90, %cond.end88 ], [ %call110, %cond.end104 ], !dbg !1152
  br label %cond.end113, !dbg !1146

cond.end113:                                      ; preds = %cond.end111, %cond.true76
  %cond114 = phi i64 [ %cond74, %cond.true76 ], [ %cond112, %cond.end111 ], !dbg !1146
  %cmp115 = icmp ne i64 %cond114, 0, !dbg !1158
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !1159

if.then117:                                       ; preds = %cond.end113
  store i64 -9223372036854775794, ptr %retval, align 8, !dbg !1160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1160

if.end118:                                        ; preds = %cond.end113
  %50 = load ptr, ptr %initrd_dp, align 8, !dbg !1161
  %type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %50, i32 0, i32 0, !dbg !1163
  %51 = load i8, ptr %type, align 1, !dbg !1163
  %conv119 = zext i8 %51 to i32, !dbg !1161
  %cmp120 = icmp ne i32 %conv119, 4, !dbg !1164
  br i1 %cmp120, label %if.then125, label %lor.lhs.false, !dbg !1165

lor.lhs.false:                                    ; preds = %if.end118
  %52 = load ptr, ptr %initrd_dp, align 8, !dbg !1166
  %sub_type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %52, i32 0, i32 1, !dbg !1167
  %53 = load i8, ptr %sub_type, align 1, !dbg !1167
  %conv122 = zext i8 %53 to i32, !dbg !1166
  %cmp123 = icmp ne i32 %conv122, 4, !dbg !1168
  br i1 %cmp123, label %if.then125, label %if.end131, !dbg !1169

if.then125:                                       ; preds = %lor.lhs.false, %if.end118
  %54 = load ptr, ptr %initrd_dp, align 8, !dbg !1170
  %type126 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %54, i32 0, i32 0, !dbg !1170
  %55 = load i8, ptr %type126, align 1, !dbg !1170
  %conv127 = zext i8 %55 to i32, !dbg !1170
  %56 = load ptr, ptr %initrd_dp, align 8, !dbg !1170
  %sub_type128 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %56, i32 0, i32 1, !dbg !1170
  %57 = load i8, ptr %sub_type128, align 1, !dbg !1170
  %conv129 = zext i8 %57 to i32, !dbg !1170
  %call130 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.2, i32 noundef %conv127, i32 noundef %conv129) #7, !dbg !1170
  store i64 -9223372036854775807, ptr %retval, align 8, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1172

if.end131:                                        ; preds = %lor.lhs.false
  %58 = load ptr, ptr %initrd_dp, align 8, !dbg !1173
  store ptr %58, ptr %fpath, align 8, !dbg !1174
  %59 = load ptr, ptr %fi.addr, align 8, !dbg !1175
  %filename132 = getelementptr inbounds %struct.finfo, ptr %59, i32 0, i32 1, !dbg !1176
  %arraydecay133 = getelementptr inbounds [256 x i16], ptr %filename132, i64 0, i64 0, !dbg !1175
  %60 = load ptr, ptr %fpath, align 8, !dbg !1177
  %filename134 = getelementptr inbounds %struct.efi_file_path_dev_path, ptr %60, i32 0, i32 1, !dbg !1178
  %arraydecay135 = getelementptr inbounds [0 x i16], ptr %filename134, i64 0, i64 0, !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x372) #6, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x372, metadata !442, metadata !DIExpression()), !dbg !1179
  store i64 512, ptr %__UNIQUE_ID___x372, align 8, !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y373) #6, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y373, metadata !444, metadata !DIExpression()), !dbg !1179
  %61 = load ptr, ptr %fpath, align 8, !dbg !1179
  %header = getelementptr inbounds %struct.efi_file_path_dev_path, ptr %61, i32 0, i32 0, !dbg !1179
  %length = getelementptr inbounds %struct.efi_generic_dev_path, ptr %header, i32 0, i32 2, !dbg !1179
  %62 = load i16, ptr %length, align 1, !dbg !1179
  %conv136 = zext i16 %62 to i64, !dbg !1179
  %sub = sub i64 %conv136, 4, !dbg !1179
  store i64 %sub, ptr %__UNIQUE_ID___y373, align 8, !dbg !1179
  %63 = load i64, ptr %__UNIQUE_ID___x372, align 8, !dbg !1179
  %64 = load i64, ptr %__UNIQUE_ID___y373, align 8, !dbg !1179
  %cmp138 = icmp ult i64 %63, %64, !dbg !1179
  br i1 %cmp138, label %cond.true140, label %cond.false141, !dbg !1179

cond.true140:                                     ; preds = %if.end131
  %65 = load i64, ptr %__UNIQUE_ID___x372, align 8, !dbg !1179
  br label %cond.end142, !dbg !1179

cond.false141:                                    ; preds = %if.end131
  %66 = load i64, ptr %__UNIQUE_ID___y373, align 8, !dbg !1179
  br label %cond.end142, !dbg !1179

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi i64 [ %65, %cond.true140 ], [ %66, %cond.false141 ], !dbg !1179
  store i64 %cond143, ptr %tmp137, align 8, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y373) #6, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x372) #6, !dbg !1180
  %67 = load i64, ptr %tmp137, align 8, !dbg !1179
  %call144 = call ptr @memcpy(ptr noundef %arraydecay133, ptr noundef %arraydecay135, i64 noundef %67) #7, !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !445, metadata !DIExpression()), !dbg !1182
  %68 = load ptr, ptr %io, align 8, !dbg !1182
  store ptr %68, ptr %__inst, align 8, !dbg !1182
  %call146 = call zeroext i1 @efi_is_native() #7, !dbg !1182
  br i1 %call146, label %cond.true148, label %cond.false150, !dbg !1182

cond.true148:                                     ; preds = %cond.end142
  %69 = load ptr, ptr %__inst, align 8, !dbg !1182
  %open_volume = getelementptr inbounds %struct.anon.8, ptr %69, i32 0, i32 1, !dbg !1182
  %70 = load ptr, ptr %open_volume, align 8, !dbg !1182
  %71 = load ptr, ptr %__inst, align 8, !dbg !1182
  %72 = load ptr, ptr %volume.addr, align 8, !dbg !1182
  %call149 = call win64cc i64 %70(ptr noundef %71, ptr noundef %72) #7, !dbg !1182
  br label %cond.end161, !dbg !1182

cond.false150:                                    ; preds = %cond.end142
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad151) #6, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %__pad151, metadata !447, metadata !DIExpression()), !dbg !1183
  br label %do.body152, !dbg !1184

do.body152:                                       ; preds = %cond.false150
  br label %do.cond153, !dbg !1186

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !1186

do.end154:                                        ; preds = %do.cond153
  %73 = load ptr, ptr %__inst, align 8, !dbg !1183
  %open_volume156 = getelementptr inbounds %struct.anon.9, ptr %73, i32 0, i32 1, !dbg !1183
  %74 = load i32, ptr %open_volume156, align 8, !dbg !1183
  %75 = load ptr, ptr %__inst, align 8, !dbg !1183
  %76 = load ptr, ptr %volume.addr, align 8, !dbg !1183
  %call157 = call ptr @efi64_zero_upper(ptr noundef %76) #7, !dbg !1183
  %arraydecay158 = getelementptr inbounds [3 x i64], ptr %__pad151, i64 0, i64 0, !dbg !1183
  %call159 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %74, ptr noundef %75, ptr noundef %call157, ptr noundef %arraydecay158) #7, !dbg !1183
  store i64 %call159, ptr %tmp155, align 8, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad151) #6, !dbg !1182
  %77 = load i64, ptr %tmp155, align 8, !dbg !1183
  %call160 = call i64 @__efi64_widen_efi_status(i64 noundef %77) #7, !dbg !1182
  br label %cond.end161, !dbg !1182

cond.end161:                                      ; preds = %do.end154, %cond.true148
  %cond162 = phi i64 [ %call149, %cond.true148 ], [ %call160, %do.end154 ], !dbg !1182
  store i64 %cond162, ptr %tmp145, align 8, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !1188
  %78 = load i64, ptr %tmp145, align 8, !dbg !1182
  store i64 %78, ptr %status, align 8, !dbg !1189
  %79 = load i64, ptr %status, align 8, !dbg !1190
  %cmp163 = icmp ne i64 %79, 0, !dbg !1192
  br i1 %cmp163, label %if.then165, label %if.end167, !dbg !1193

if.then165:                                       ; preds = %cond.end161
  %call166 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.3) #7, !dbg !1194
  br label %if.end167, !dbg !1194

if.end167:                                        ; preds = %if.then165, %cond.end161
  %80 = load i64, ptr %status, align 8, !dbg !1195
  store i64 %80, ptr %retval, align 8, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1196

cleanup:                                          ; preds = %if.end167, %if.then125, %if.then117, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpath) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %initrd_dp) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 16, ptr %fs_proto) #6, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 16, ptr %text_to_dp_guid) #6, !dbg !1197
  %81 = load i64, ptr %retval, align 8, !dbg !1197
  ret i64 %81, !dbg !1197
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_open_volume(ptr noundef %image, ptr noundef %fh) #0 !dbg !1198 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %fh.addr = alloca ptr, align 8
  %fs_proto = alloca %struct.guid_t, align 4
  %io = alloca ptr, align 8
  %status = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp40 = alloca i64, align 8
  %__pad46 = alloca [3 x i64], align 16
  %tmp50 = alloca i64, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !1202, metadata !DIExpression()), !dbg !1213
  store ptr %fh, ptr %fh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fh.addr, metadata !1203, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 16, ptr %fs_proto) #6, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %fs_proto, metadata !1204, metadata !DIExpression()), !dbg !1216
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fs_proto, ptr align 4 @__const.efi_open_volume.fs_proto, i64 16, i1 false), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 8, ptr %io) #6, !dbg !1217
  call void @llvm.dbg.declare(metadata ptr %io, metadata !1205, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1206, metadata !DIExpression()), !dbg !1220
  %call = call zeroext i1 @efi_is_native() #7, !dbg !1221
  br i1 %call, label %cond.true, label %cond.false13, !dbg !1221

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #7, !dbg !1221
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !1221

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !1221
  %boottime = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 10, !dbg !1221
  %1 = load ptr, ptr %boottime, align 8, !dbg !1221
  br label %cond.end, !dbg !1221

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !1221
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !1221
  %3 = load i32, ptr %boottime3, align 4, !dbg !1221
  %conv = zext i32 %3 to i64, !dbg !1221
  %4 = inttoptr i64 %conv to ptr, !dbg !1221
  br label %cond.end, !dbg !1221

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !1221
  %handle_protocol = getelementptr inbounds %struct.anon.3, ptr %cond, i32 0, i32 17, !dbg !1221
  %5 = load ptr, ptr %handle_protocol, align 8, !dbg !1221
  %call4 = call zeroext i1 @efi_is_native() #7, !dbg !1221
  br i1 %call4, label %cond.true6, label %cond.false7, !dbg !1221

cond.true6:                                       ; preds = %cond.end
  %6 = load ptr, ptr %image.addr, align 8, !dbg !1221
  %device_handle = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3, !dbg !1221
  %7 = load ptr, ptr %device_handle, align 8, !dbg !1221
  br label %cond.end10, !dbg !1221

cond.false7:                                      ; preds = %cond.end
  %8 = load ptr, ptr %image.addr, align 8, !dbg !1221
  %device_handle8 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 3, !dbg !1221
  %9 = load i32, ptr %device_handle8, align 4, !dbg !1221
  %conv9 = zext i32 %9 to i64, !dbg !1221
  %10 = inttoptr i64 %conv9 to ptr, !dbg !1221
  br label %cond.end10, !dbg !1221

cond.end10:                                       ; preds = %cond.false7, %cond.true6
  %cond11 = phi ptr [ %7, %cond.true6 ], [ %10, %cond.false7 ], !dbg !1221
  %call12 = call win64cc i64 %5(ptr noundef %cond11, ptr noundef %fs_proto, ptr noundef %io) #7, !dbg !1221
  br label %cond.end36, !dbg !1221

cond.false13:                                     ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1207, metadata !DIExpression()), !dbg !1222
  br label %do.body, !dbg !1223

do.body:                                          ; preds = %cond.false13
  br label %do.cond, !dbg !1225

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1225

do.end:                                           ; preds = %do.cond
  %call14 = call zeroext i1 @efi_is_native() #7, !dbg !1222
  br i1 %call14, label %cond.true16, label %cond.false18, !dbg !1222

cond.true16:                                      ; preds = %do.end
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !1222
  %boottime17 = getelementptr inbounds %struct.anon.5, ptr %11, i32 0, i32 10, !dbg !1222
  %12 = load ptr, ptr %boottime17, align 8, !dbg !1222
  br label %cond.end21, !dbg !1222

cond.false18:                                     ; preds = %do.end
  %13 = load ptr, ptr @efi_system_table, align 8, !dbg !1222
  %boottime19 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %13, i32 0, i32 10, !dbg !1222
  %14 = load i32, ptr %boottime19, align 4, !dbg !1222
  %conv20 = zext i32 %14 to i64, !dbg !1222
  %15 = inttoptr i64 %conv20 to ptr, !dbg !1222
  br label %cond.end21, !dbg !1222

cond.end21:                                       ; preds = %cond.false18, %cond.true16
  %cond22 = phi ptr [ %12, %cond.true16 ], [ %15, %cond.false18 ], !dbg !1222
  %handle_protocol23 = getelementptr inbounds %struct.anon.4, ptr %cond22, i32 0, i32 17, !dbg !1222
  %16 = load i32, ptr %handle_protocol23, align 8, !dbg !1222
  %call24 = call zeroext i1 @efi_is_native() #7, !dbg !1222
  br i1 %call24, label %cond.true26, label %cond.false28, !dbg !1222

cond.true26:                                      ; preds = %cond.end21
  %17 = load ptr, ptr %image.addr, align 8, !dbg !1222
  %device_handle27 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 3, !dbg !1222
  %18 = load ptr, ptr %device_handle27, align 8, !dbg !1222
  br label %cond.end31, !dbg !1222

cond.false28:                                     ; preds = %cond.end21
  %19 = load ptr, ptr %image.addr, align 8, !dbg !1222
  %device_handle29 = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 3, !dbg !1222
  %20 = load i32, ptr %device_handle29, align 4, !dbg !1222
  %conv30 = zext i32 %20 to i64, !dbg !1222
  %21 = inttoptr i64 %conv30 to ptr, !dbg !1222
  br label %cond.end31, !dbg !1222

cond.end31:                                       ; preds = %cond.false28, %cond.true26
  %cond32 = phi ptr [ %18, %cond.true26 ], [ %21, %cond.false28 ], !dbg !1222
  %call33 = call ptr @efi64_zero_upper(ptr noundef %io) #7, !dbg !1222
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1222
  %call34 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %16, ptr noundef %cond32, ptr noundef %fs_proto, ptr noundef %call33, ptr noundef %arraydecay) #7, !dbg !1222
  store i64 %call34, ptr %tmp, align 8, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !1221
  %22 = load i64, ptr %tmp, align 8, !dbg !1222
  %call35 = call i64 @__efi64_widen_efi_status(i64 noundef %22) #7, !dbg !1221
  br label %cond.end36, !dbg !1221

cond.end36:                                       ; preds = %cond.end31, %cond.end10
  %cond37 = phi i64 [ %call12, %cond.end10 ], [ %call35, %cond.end31 ], !dbg !1221
  store i64 %cond37, ptr %status, align 8, !dbg !1227
  %23 = load i64, ptr %status, align 8, !dbg !1228
  %cmp = icmp ne i64 %23, 0, !dbg !1230
  br i1 %cmp, label %if.then, label %if.end, !dbg !1231

if.then:                                          ; preds = %cond.end36
  %call39 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.4) #7, !dbg !1232
  %24 = load i64, ptr %status, align 8, !dbg !1234
  store i64 %24, ptr %retval, align 8, !dbg !1235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1235

if.end:                                           ; preds = %cond.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1209, metadata !DIExpression()), !dbg !1236
  %25 = load ptr, ptr %io, align 8, !dbg !1236
  store ptr %25, ptr %__inst, align 8, !dbg !1236
  %call41 = call zeroext i1 @efi_is_native() #7, !dbg !1236
  br i1 %call41, label %cond.true43, label %cond.false45, !dbg !1236

cond.true43:                                      ; preds = %if.end
  %26 = load ptr, ptr %__inst, align 8, !dbg !1236
  %open_volume = getelementptr inbounds %struct.anon.8, ptr %26, i32 0, i32 1, !dbg !1236
  %27 = load ptr, ptr %open_volume, align 8, !dbg !1236
  %28 = load ptr, ptr %__inst, align 8, !dbg !1236
  %29 = load ptr, ptr %fh.addr, align 8, !dbg !1236
  %call44 = call win64cc i64 %27(ptr noundef %28, ptr noundef %29) #7, !dbg !1236
  br label %cond.end56, !dbg !1236

cond.false45:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad46) #6, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %__pad46, metadata !1211, metadata !DIExpression()), !dbg !1237
  br label %do.body47, !dbg !1238

do.body47:                                        ; preds = %cond.false45
  br label %do.cond48, !dbg !1240

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !1240

do.end49:                                         ; preds = %do.cond48
  %30 = load ptr, ptr %__inst, align 8, !dbg !1237
  %open_volume51 = getelementptr inbounds %struct.anon.9, ptr %30, i32 0, i32 1, !dbg !1237
  %31 = load i32, ptr %open_volume51, align 8, !dbg !1237
  %32 = load ptr, ptr %__inst, align 8, !dbg !1237
  %33 = load ptr, ptr %fh.addr, align 8, !dbg !1237
  %call52 = call ptr @efi64_zero_upper(ptr noundef %33) #7, !dbg !1237
  %arraydecay53 = getelementptr inbounds [3 x i64], ptr %__pad46, i64 0, i64 0, !dbg !1237
  %call54 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %31, ptr noundef %32, ptr noundef %call52, ptr noundef %arraydecay53) #7, !dbg !1237
  store i64 %call54, ptr %tmp50, align 8, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad46) #6, !dbg !1236
  %34 = load i64, ptr %tmp50, align 8, !dbg !1237
  %call55 = call i64 @__efi64_widen_efi_status(i64 noundef %34) #7, !dbg !1236
  br label %cond.end56, !dbg !1236

cond.end56:                                       ; preds = %do.end49, %cond.true43
  %cond57 = phi i64 [ %call44, %cond.true43 ], [ %call55, %do.end49 ], !dbg !1236
  store i64 %cond57, ptr %tmp40, align 8, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !1242
  %35 = load i64, ptr %tmp40, align 8, !dbg !1236
  store i64 %35, ptr %status, align 8, !dbg !1243
  %36 = load i64, ptr %status, align 8, !dbg !1244
  %cmp58 = icmp ne i64 %36, 0, !dbg !1246
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !1247

if.then60:                                        ; preds = %cond.end56
  %call61 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.3) #7, !dbg !1248
  br label %if.end62, !dbg !1248

if.end62:                                         ; preds = %if.then60, %cond.end56
  %37 = load i64, ptr %status, align 8, !dbg !1249
  store i64 %37, ptr %retval, align 8, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %if.end62, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 8, ptr %io) #6, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 16, ptr %fs_proto) #6, !dbg !1251
  %38 = load i64, ptr %retval, align 8, !dbg !1251
  ret i64 %38, !dbg !1251
}

; Function Attrs: noredzone nounwind
define internal i64 @efi_open_file(ptr noundef %volume, ptr noundef %fi, ptr noundef %handle, ptr noundef %file_size) #0 !dbg !1252 {
entry:
  %retval = alloca i64, align 8
  %volume.addr = alloca ptr, align 8
  %fi.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %file_size.addr = alloca ptr, align 8
  %info_guid = alloca %struct.guid_t, align 4
  %fh = alloca ptr, align 8
  %info_sz = alloca i64, align 8
  %status = alloca i64, align 8
  %c = alloca ptr, align 8
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__inst24 = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  %__pad31 = alloca [3 x i64], align 16
  %tmp35 = alloca i64, align 8
  %__inst46 = alloca ptr, align 8
  %tmp47 = alloca i64, align 8
  %__pad53 = alloca [3 x i64], align 16
  %tmp57 = alloca i64, align 8
  store ptr %volume, ptr %volume.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %volume.addr, metadata !1256, metadata !DIExpression()), !dbg !1279
  store ptr %fi, ptr %fi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !1257, metadata !DIExpression()), !dbg !1280
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1258, metadata !DIExpression()), !dbg !1281
  store ptr %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !1259, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 16, ptr %info_guid) #6, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %info_guid, metadata !1260, metadata !DIExpression()), !dbg !1284
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %info_guid, ptr align 4 @__const.efi_open_file.info_guid, i64 16, i1 false), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 8, ptr %fh) #6, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %fh, metadata !1261, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_sz) #6, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %info_sz, metadata !1262, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1263, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1264, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !1293
  %filename = getelementptr inbounds %struct.finfo, ptr %0, i32 0, i32 1, !dbg !1295
  %arraydecay = getelementptr inbounds [256 x i16], ptr %filename, i64 0, i64 0, !dbg !1293
  store ptr %arraydecay, ptr %c, align 8, !dbg !1296
  br label %for.cond, !dbg !1297

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %c, align 8, !dbg !1298
  %2 = load i16, ptr %1, align 2, !dbg !1300
  %conv = zext i16 %2 to i32, !dbg !1300
  %cmp = icmp ne i32 %conv, 0, !dbg !1301
  br i1 %cmp, label %for.body, label %for.end, !dbg !1302

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %c, align 8, !dbg !1303
  %4 = load i16, ptr %3, align 2, !dbg !1306
  %conv2 = zext i16 %4 to i32, !dbg !1306
  %cmp3 = icmp eq i32 %conv2, 47, !dbg !1307
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1308

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %c, align 8, !dbg !1309
  store i16 92, ptr %5, align 2, !dbg !1310
  br label %if.end, !dbg !1311

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1312

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %c, align 8, !dbg !1313
  %incdec.ptr = getelementptr inbounds i16, ptr %6, i32 1, !dbg !1313
  store ptr %incdec.ptr, ptr %c, align 8, !dbg !1313
  br label %for.cond, !dbg !1314, !llvm.loop !1315

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1265, metadata !DIExpression()), !dbg !1317
  %7 = load ptr, ptr %volume.addr, align 8, !dbg !1317
  store ptr %7, ptr %__inst, align 8, !dbg !1317
  %call = call zeroext i1 @efi_is_native() #7, !dbg !1317
  br i1 %call, label %cond.true, label %cond.false, !dbg !1317

cond.true:                                        ; preds = %for.end
  %8 = load ptr, ptr %__inst, align 8, !dbg !1317
  %open = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1, !dbg !1317
  %9 = load ptr, ptr %open, align 8, !dbg !1317
  %10 = load ptr, ptr %__inst, align 8, !dbg !1317
  %11 = load ptr, ptr %fi.addr, align 8, !dbg !1317
  %filename6 = getelementptr inbounds %struct.finfo, ptr %11, i32 0, i32 1, !dbg !1317
  %arraydecay7 = getelementptr inbounds [256 x i16], ptr %filename6, i64 0, i64 0, !dbg !1317
  %call8 = call win64cc i64 %9(ptr noundef %10, ptr noundef %fh, ptr noundef %arraydecay7, i64 noundef 1, i64 noundef 0) #7, !dbg !1317
  br label %cond.end, !dbg !1317

cond.false:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !1318
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1267, metadata !DIExpression()), !dbg !1318
  br label %do.body, !dbg !1319

do.body:                                          ; preds = %cond.false
  br label %do.cond, !dbg !1321

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1321

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %__inst, align 8, !dbg !1318
  %open10 = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1, !dbg !1318
  %13 = load i32, ptr %open10, align 8, !dbg !1318
  %14 = load ptr, ptr %__inst, align 8, !dbg !1318
  %call11 = call ptr @efi64_zero_upper(ptr noundef %fh) #7, !dbg !1318
  %15 = load ptr, ptr %fi.addr, align 8, !dbg !1318
  %filename12 = getelementptr inbounds %struct.finfo, ptr %15, i32 0, i32 1, !dbg !1318
  %arraydecay13 = getelementptr inbounds [256 x i16], ptr %filename12, i64 0, i64 0, !dbg !1318
  %arraydecay14 = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1318
  %call15 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %13, ptr noundef %14, ptr noundef %call11, ptr noundef %arraydecay13, i32 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef %arraydecay14) #7, !dbg !1318
  store i64 %call15, ptr %tmp9, align 8, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !1317
  %16 = load i64, ptr %tmp9, align 8, !dbg !1318
  %call16 = call i64 @__efi64_widen_efi_status(i64 noundef %16) #7, !dbg !1317
  br label %cond.end, !dbg !1317

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi i64 [ %call8, %cond.true ], [ %call16, %do.end ], !dbg !1317
  store i64 %cond, ptr %tmp, align 8, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !1323
  %17 = load i64, ptr %tmp, align 8, !dbg !1317
  store i64 %17, ptr %status, align 8, !dbg !1324
  %18 = load i64, ptr %status, align 8, !dbg !1325
  %cmp17 = icmp ne i64 %18, 0, !dbg !1327
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !1328

if.then19:                                        ; preds = %cond.end
  %19 = load ptr, ptr %fi.addr, align 8, !dbg !1329
  %filename20 = getelementptr inbounds %struct.finfo, ptr %19, i32 0, i32 1, !dbg !1329
  %arraydecay21 = getelementptr inbounds [256 x i16], ptr %filename20, i64 0, i64 0, !dbg !1329
  %call22 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.5, ptr noundef %arraydecay21) #7, !dbg !1329
  %20 = load i64, ptr %status, align 8, !dbg !1331
  store i64 %20, ptr %retval, align 8, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

if.end23:                                         ; preds = %cond.end
  store i64 592, ptr %info_sz, align 8, !dbg !1333
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst24) #6, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %__inst24, metadata !1269, metadata !DIExpression()), !dbg !1334
  %21 = load ptr, ptr %fh, align 8, !dbg !1334
  store ptr %21, ptr %__inst24, align 8, !dbg !1334
  %call26 = call zeroext i1 @efi_is_native() #7, !dbg !1334
  br i1 %call26, label %cond.true28, label %cond.false30, !dbg !1334

cond.true28:                                      ; preds = %if.end23
  %22 = load ptr, ptr %__inst24, align 8, !dbg !1334
  %get_info = getelementptr inbounds %struct.anon.1, ptr %22, i32 0, i32 8, !dbg !1334
  %23 = load ptr, ptr %get_info, align 8, !dbg !1334
  %24 = load ptr, ptr %__inst24, align 8, !dbg !1334
  %25 = load ptr, ptr %fi.addr, align 8, !dbg !1334
  %call29 = call win64cc i64 %23(ptr noundef %24, ptr noundef %info_guid, ptr noundef %info_sz, ptr noundef %25) #7, !dbg !1334
  br label %cond.end40, !dbg !1334

cond.false30:                                     ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad31) #6, !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %__pad31, metadata !1271, metadata !DIExpression()), !dbg !1335
  br label %do.body32, !dbg !1336

do.body32:                                        ; preds = %cond.false30
  br label %do.cond33, !dbg !1338

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1338

do.end34:                                         ; preds = %do.cond33
  %26 = load ptr, ptr %__inst24, align 8, !dbg !1335
  %get_info36 = getelementptr inbounds %struct.anon.2, ptr %26, i32 0, i32 8, !dbg !1335
  %27 = load i32, ptr %get_info36, align 4, !dbg !1335
  %28 = load ptr, ptr %__inst24, align 8, !dbg !1335
  %29 = load ptr, ptr %fi.addr, align 8, !dbg !1335
  %arraydecay37 = getelementptr inbounds [3 x i64], ptr %__pad31, i64 0, i64 0, !dbg !1335
  %call38 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %27, ptr noundef %28, ptr noundef %info_guid, ptr noundef %info_sz, ptr noundef %29, ptr noundef %arraydecay37) #7, !dbg !1335
  store i64 %call38, ptr %tmp35, align 8, !dbg !1335
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad31) #6, !dbg !1334
  %30 = load i64, ptr %tmp35, align 8, !dbg !1335
  %call39 = call i64 @__efi64_widen_efi_status(i64 noundef %30) #7, !dbg !1334
  br label %cond.end40, !dbg !1334

cond.end40:                                       ; preds = %do.end34, %cond.true28
  %cond41 = phi i64 [ %call29, %cond.true28 ], [ %call39, %do.end34 ], !dbg !1334
  store i64 %cond41, ptr %tmp25, align 8, !dbg !1334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst24) #6, !dbg !1340
  %31 = load i64, ptr %tmp25, align 8, !dbg !1334
  store i64 %31, ptr %status, align 8, !dbg !1341
  %32 = load i64, ptr %status, align 8, !dbg !1342
  %cmp42 = icmp ne i64 %32, 0, !dbg !1343
  br i1 %cmp42, label %if.then44, label %if.end64, !dbg !1344

if.then44:                                        ; preds = %cond.end40
  %call45 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.6) #7, !dbg !1345
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst46) #6, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %__inst46, metadata !1273, metadata !DIExpression()), !dbg !1346
  %33 = load ptr, ptr %fh, align 8, !dbg !1346
  store ptr %33, ptr %__inst46, align 8, !dbg !1346
  %call48 = call zeroext i1 @efi_is_native() #7, !dbg !1346
  br i1 %call48, label %cond.true50, label %cond.false52, !dbg !1346

cond.true50:                                      ; preds = %if.then44
  %34 = load ptr, ptr %__inst46, align 8, !dbg !1346
  %close = getelementptr inbounds %struct.anon.1, ptr %34, i32 0, i32 2, !dbg !1346
  %35 = load ptr, ptr %close, align 8, !dbg !1346
  %36 = load ptr, ptr %__inst46, align 8, !dbg !1346
  %call51 = call win64cc i64 %35(ptr noundef %36) #7, !dbg !1346
  br label %cond.end62, !dbg !1346

cond.false52:                                     ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad53) #6, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %__pad53, metadata !1277, metadata !DIExpression()), !dbg !1347
  br label %do.body54, !dbg !1348

do.body54:                                        ; preds = %cond.false52
  br label %do.cond55, !dbg !1350

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1350

do.end56:                                         ; preds = %do.cond55
  %37 = load ptr, ptr %__inst46, align 8, !dbg !1347
  %close58 = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 2, !dbg !1347
  %38 = load i32, ptr %close58, align 4, !dbg !1347
  %39 = load ptr, ptr %__inst46, align 8, !dbg !1347
  %arraydecay59 = getelementptr inbounds [3 x i64], ptr %__pad53, i64 0, i64 0, !dbg !1347
  %call60 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %38, ptr noundef %39, ptr noundef %arraydecay59) #7, !dbg !1347
  store i64 %call60, ptr %tmp57, align 8, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad53) #6, !dbg !1346
  %40 = load i64, ptr %tmp57, align 8, !dbg !1347
  %call61 = call i64 @__efi64_widen_efi_status(i64 noundef %40) #7, !dbg !1346
  br label %cond.end62, !dbg !1346

cond.end62:                                       ; preds = %do.end56, %cond.true50
  %cond63 = phi i64 [ %call51, %cond.true50 ], [ %call61, %do.end56 ], !dbg !1346
  store i64 %cond63, ptr %tmp47, align 8, !dbg !1346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst46) #6, !dbg !1352
  %41 = load i64, ptr %tmp47, align 8, !dbg !1346
  %42 = load i64, ptr %status, align 8, !dbg !1353
  store i64 %42, ptr %retval, align 8, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1354

if.end64:                                         ; preds = %cond.end40
  %43 = load ptr, ptr %fh, align 8, !dbg !1355
  %44 = load ptr, ptr %handle.addr, align 8, !dbg !1356
  store ptr %43, ptr %44, align 8, !dbg !1357
  %45 = load ptr, ptr %fi.addr, align 8, !dbg !1358
  %info = getelementptr inbounds %struct.finfo, ptr %45, i32 0, i32 0, !dbg !1359
  %file_size65 = getelementptr inbounds %struct.efi_file_info_t, ptr %info, i32 0, i32 1, !dbg !1360
  %46 = load i64, ptr %file_size65, align 8, !dbg !1360
  %47 = load ptr, ptr %file_size.addr, align 8, !dbg !1361
  store i64 %46, ptr %47, align 8, !dbg !1362
  store i64 0, ptr %retval, align 8, !dbg !1363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1363

cleanup:                                          ; preds = %if.end64, %cond.end62, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_sz) #6, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %fh) #6, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 16, ptr %info_guid) #6, !dbg !1364
  %48 = load i64, ptr %retval, align 8, !dbg !1364
  ret i64 %48, !dbg !1364
}

; Function Attrs: noredzone
declare !dbg !1365 hidden i64 @efi_allocate_pages(i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !1368 hidden i32 @efi_printk(ptr noundef, ...) #4

; Function Attrs: noredzone
declare !dbg !1373 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone
declare !dbg !1381 hidden void @efi_free(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !1384 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  %0 = load i64, ptr %status.addr, align 8, !dbg !1390
  %conv = trunc i64 %0 to i32, !dbg !1390
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #7, !dbg !1391
  %conv1 = zext i32 %call to i64, !dbg !1391
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #7, !dbg !1392
  ret i64 %call2, !dbg !1393
}

; Function Attrs: noredzone
declare !dbg !1394 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !1397 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !1398, !range !793, !noundef !794
  %tobool = trunc i8 %0 to i1, !dbg !1398
  ret i1 %tobool, !dbg !1399
}

; Function Attrs: noredzone
declare !dbg !1400 hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #3 !dbg !1404 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1408, metadata !DIExpression()), !dbg !1409
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1410
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1411
  store i32 0, ptr %arrayidx, align 4, !dbg !1412
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1413
  ret ptr %1, !dbg !1414
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !1415 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1420, metadata !DIExpression()), !dbg !1422
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !1421, metadata !DIExpression()), !dbg !1423
  %0 = load i64, ptr %word.addr, align 8, !dbg !1424
  %1 = load i32, ptr %shift.addr, align 4, !dbg !1425
  %and = and i32 %1, 63, !dbg !1426
  %sh_prom = zext i32 %and to i64, !dbg !1427
  %shr = lshr i64 %0, %sh_prom, !dbg !1427
  %2 = load i64, ptr %word.addr, align 8, !dbg !1428
  %3 = load i32, ptr %shift.addr, align 4, !dbg !1429
  %sub = sub i32 0, %3, !dbg !1430
  %and1 = and i32 %sub, 63, !dbg !1431
  %sh_prom2 = zext i32 %and1 to i64, !dbg !1432
  %shl = shl i64 %2, %sh_prom2, !dbg !1432
  %or = or i64 %shr, %shl, !dbg !1433
  ret i64 %or, !dbg !1434
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !1435 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1439, metadata !DIExpression()), !dbg !1441
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !1440, metadata !DIExpression()), !dbg !1442
  %0 = load i32, ptr %word.addr, align 4, !dbg !1443
  %1 = load i32, ptr %shift.addr, align 4, !dbg !1444
  %and = and i32 %1, 31, !dbg !1445
  %shl = shl i32 %0, %and, !dbg !1446
  %2 = load i32, ptr %word.addr, align 4, !dbg !1447
  %3 = load i32, ptr %shift.addr, align 4, !dbg !1448
  %sub = sub i32 0, %3, !dbg !1449
  %and1 = and i32 %sub, 31, !dbg !1450
  %shr = lshr i32 %2, %and1, !dbg !1451
  %or = or i32 %shl, %shr, !dbg !1452
  ret i32 %or, !dbg !1453
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!146}
!llvm.module.flags = !{!468, !469, !470, !471, !472}
!llvm.ident = !{!473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d38cddabe881415e6f75344ee531b691")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 46)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "text_to_dp", scope: !14, file: !2, line: 132, type: !449, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "efi_open_device_path", scope: !2, file: !2, line: 128, type: !15, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !402)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20, !106}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !18, line: 47, baseType: !19)
!18 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_file_protocol_t", file: !23, line: 623, baseType: !24)
!23 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_file_protocol", file: !23, line: 625, size: 704, elements: !25)
!25 = !{!26, !89}
!26 = !DIDerivedType(tag: DW_TAG_member, scope: !24, file: !23, line: 626, baseType: !27, size: 704)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !23, line: 626, size: 704, elements: !28)
!28 = !{!29, !35, !44, !48, !49, !55, !59, !64, !68, !84, !88}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !27, file: !23, line: 627, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !27, file: !23, line: 628, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !38)
!38 = !{!17, !21, !20, !39, !30, !30}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !18, line: 49, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !27, file: !23, line: 632, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !47)
!47 = !{!17, !21}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "delete", scope: !27, file: !23, line: 633, baseType: !45, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !27, file: !23, line: 634, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !52)
!52 = !{!17, !21, !53, !54}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !27, file: !23, line: 637, baseType: !56, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !58)
!58 = !{!17, !21, !19, !54}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "get_position", scope: !27, file: !23, line: 639, baseType: !60, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !62)
!62 = !{!17, !21, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "set_position", scope: !27, file: !23, line: 641, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !67)
!67 = !{!17, !21, !30}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !27, file: !23, line: 643, baseType: !69, size: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !71)
!71 = !{!17, !21, !72, !53, !54}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !18, line: 74, baseType: !74, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !75, line: 17, baseType: !76)
!75 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 15, size: 128, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !76, file: !75, line: 16, baseType: !79, size: 128)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !82)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !27, file: !23, line: 647, baseType: !85, size: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !87)
!87 = !{!17, !21, !72, !19, !54}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !27, file: !23, line: 651, baseType: !45, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !24, file: !23, line: 665, baseType: !90, size: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !23, line: 653, size: 384, elements: !91)
!91 = !{!92, !93, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !90, file: !23, line: 654, baseType: !30, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !90, file: !23, line: 655, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !90, file: !23, line: 656, baseType: !94, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "delete", scope: !90, file: !23, line: 657, baseType: !94, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !90, file: !23, line: 658, baseType: !94, size: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !90, file: !23, line: 659, baseType: !94, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "get_position", scope: !90, file: !23, line: 660, baseType: !94, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set_position", scope: !90, file: !23, line: 661, baseType: !94, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !90, file: !23, line: 662, baseType: !94, size: 32, offset: 288)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !90, file: !23, line: 663, baseType: !94, size: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !90, file: !23, line: 664, baseType: !94, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finfo", file: !2, line: 32, size: 4736, elements: !108)
!108 = !{!109, !142}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !107, file: !2, line: 33, baseType: !110, size: 640)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_file_info_t", file: !23, line: 621, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 612, size: 640, elements: !112)
!112 = !{!113, !114, !115, !116, !135, !136, !137, !138}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !111, file: !23, line: 613, baseType: !30, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !111, file: !23, line: 614, baseType: !30, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "phys_size", scope: !111, file: !23, line: 615, baseType: !30, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "create_time", scope: !111, file: !23, line: 616, baseType: !117, size: 128, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_t", file: !18, line: 242, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 230, size: 128, elements: !119)
!119 = !{!120, !121, !123, !124, !125, !126, !127, !128, !129, !133, !134}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !118, file: !18, line: 231, baseType: !41, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !118, file: !18, line: 232, baseType: !122, size: 8, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !118, file: !18, line: 233, baseType: !122, size: 8, offset: 24)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !118, file: !18, line: 234, baseType: !122, size: 8, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !118, file: !18, line: 235, baseType: !122, size: 8, offset: 40)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !118, file: !18, line: 236, baseType: !122, size: 8, offset: 48)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !118, file: !18, line: 237, baseType: !122, size: 8, offset: 56)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nanosecond", scope: !118, file: !18, line: 238, baseType: !94, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timezone", scope: !118, file: !18, line: 239, baseType: !130, size: 16, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !31, line: 18, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !132)
!132 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !118, file: !18, line: 240, baseType: !122, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !118, file: !18, line: 241, baseType: !122, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last_access_time", scope: !111, file: !23, line: 617, baseType: !117, size: 128, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "modification_time", scope: !111, file: !23, line: 618, baseType: !117, size: 128, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !111, file: !23, line: 619, baseType: !32, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !111, file: !23, line: 620, baseType: !139, offset: 640)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: -1)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !107, file: !2, line: 34, baseType: !143, size: 4096, offset: 640)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/file\22 -D KBUILD_BASENAME=\22file\22 -D KBUILD_MODNAME=\22file\22 -D __KBUILD_MODNAME=kmod_file -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/file.ll drivers/firmware/efi/libstub/file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !158, globals: !376, splitDebugInlining: false, nameTableKind: None)
!147 = !{!148, !153}
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 243, baseType: !96, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!151 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!152 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !96, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0)
!157 = !DIEnumerator(name: "true", value: 1)
!158 = !{!54, !19, !94, !159, !162, !163, !200, !250, !371, !195, !237, !30}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !18, line: 250, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !23, line: 252, size: 3008, elements: !166)
!166 = !{!167, !323}
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !23, line: 253, baseType: !168, size: 3008)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !23, line: 253, size: 3008, elements: !169)
!169 = !{!170, !179, !180, !181, !187, !191, !196, !201, !205, !215, !220, !224, !225, !229, !230, !231, !232, !233, !238, !239, !240, !245, !257, !261, !268, !273, !277, !281, !285, !286, !290, !291, !292, !296, !297, !298, !299, !300, !301, !305, !309, !313, !314, !318, !322}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !168, file: !23, line: 254, baseType: !171, size: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !18, line: 90, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 84, size: 192, elements: !173)
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !172, file: !18, line: 85, baseType: !30, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !172, file: !18, line: 86, baseType: !94, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !172, file: !18, line: 87, baseType: !94, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !172, file: !18, line: 88, baseType: !94, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !172, file: !18, line: 89, baseType: !94, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !168, file: !23, line: 255, baseType: !54, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !168, file: !23, line: 256, baseType: !54, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !168, file: !23, line: 257, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !184)
!184 = !{!17, !162, !162, !19, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !18, line: 50, baseType: !30)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !168, file: !23, line: 259, baseType: !188, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !190)
!190 = !{!17, !186, !19}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !168, file: !23, line: 261, baseType: !192, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !194)
!194 = !{!17, !53, !54, !53, !53, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !168, file: !23, line: 264, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !199)
!199 = !{!17, !162, !19, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !168, file: !23, line: 266, baseType: !202, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !204)
!204 = !{!17, !54}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !168, file: !23, line: 267, baseType: !206, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !208)
!208 = !{!17, !94, !19, !209, !54, !214}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !23, line: 212, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !212)
!212 = !{null, !213, !54}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !23, line: 210, baseType: !54)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !168, file: !23, line: 270, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !218)
!218 = !{!17, !213, !219, !30}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !23, line: 247, baseType: !148)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !168, file: !23, line: 272, baseType: !221, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !223)
!223 = !{!17, !19, !214, !53}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !168, file: !23, line: 275, baseType: !54, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !168, file: !23, line: 276, baseType: !226, size: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !228)
!228 = !{!17, !213}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !168, file: !23, line: 277, baseType: !54, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !168, file: !23, line: 278, baseType: !54, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !168, file: !23, line: 279, baseType: !54, size: 64, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !168, file: !23, line: 280, baseType: !54, size: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !168, file: !23, line: 281, baseType: !234, size: 64, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !236)
!236 = !{!17, !237, !72, !200}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !18, line: 51, baseType: !54)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !168, file: !23, line: 283, baseType: !54, size: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !168, file: !23, line: 284, baseType: !54, size: 64, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !168, file: !23, line: 285, baseType: !241, size: 64, offset: 1408)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !243)
!243 = !{!17, !162, !72, !54, !53, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !168, file: !23, line: 288, baseType: !246, size: 64, offset: 1472)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !248)
!248 = !{!17, !72, !249, !244}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !23, line: 176, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !18, line: 985, size: 32, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !252, file: !18, line: 986, baseType: !122, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !252, file: !18, line: 987, baseType: !122, size: 8, offset: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !252, file: !18, line: 988, baseType: !41, size: 16, offset: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !168, file: !23, line: 291, baseType: !258, size: 64, offset: 1536)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !260)
!260 = !{!17, !72, !54}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !168, file: !23, line: 293, baseType: !262, size: 64, offset: 1600)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !264)
!264 = !{!17, !265, !237, !250, !54, !19, !244}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !266, line: 35, baseType: !267)
!266 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!267 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !168, file: !23, line: 297, baseType: !269, size: 64, offset: 1664)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !271)
!271 = !{!17, !237, !53, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !168, file: !23, line: 299, baseType: !274, size: 64, offset: 1728)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !276)
!276 = !{!17, !237, !17, !19, !39}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !168, file: !23, line: 303, baseType: !278, size: 64, offset: 1792)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !280)
!280 = !{!17, !237}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !168, file: !23, line: 304, baseType: !282, size: 64, offset: 1856)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !284)
!284 = !{!17, !237, !19}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !168, file: !23, line: 306, baseType: !54, size: 64, offset: 1920)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !168, file: !23, line: 307, baseType: !287, size: 64, offset: 1984)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !289)
!289 = !{!17, !19}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !168, file: !23, line: 308, baseType: !54, size: 64, offset: 2048)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !168, file: !23, line: 309, baseType: !54, size: 64, offset: 2112)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !168, file: !23, line: 310, baseType: !293, size: 64, offset: 2176)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !295)
!295 = !{!17, !237, !237, !237}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !168, file: !23, line: 313, baseType: !54, size: 64, offset: 2240)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !168, file: !23, line: 314, baseType: !54, size: 64, offset: 2304)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !168, file: !23, line: 315, baseType: !54, size: 64, offset: 2368)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !168, file: !23, line: 316, baseType: !54, size: 64, offset: 2432)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !168, file: !23, line: 317, baseType: !54, size: 64, offset: 2496)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !168, file: !23, line: 318, baseType: !302, size: 64, offset: 2560)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !304)
!304 = !{!17, !72, !54, !200}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !168, file: !23, line: 320, baseType: !306, size: 64, offset: 2624)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !308)
!308 = !{!17, !244, null}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !168, file: !23, line: 321, baseType: !310, size: 64, offset: 2688)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !312)
!312 = !{!17, !237, null}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !168, file: !23, line: 322, baseType: !54, size: 64, offset: 2752)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !168, file: !23, line: 323, baseType: !315, size: 64, offset: 2816)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !317)
!317 = !{null, !54, !160, !19}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !168, file: !23, line: 324, baseType: !319, size: 64, offset: 2880)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !321)
!321 = !{null, !54, !19, !81}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !168, file: !23, line: 325, baseType: !54, size: 64, offset: 2944)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !165, file: !23, line: 373, baseType: !324, size: 1600)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !23, line: 327, size: 1600, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !324, file: !23, line: 328, baseType: !171, size: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !324, file: !23, line: 329, baseType: !94, size: 32, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !324, file: !23, line: 330, baseType: !94, size: 32, offset: 224)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !324, file: !23, line: 331, baseType: !94, size: 32, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !324, file: !23, line: 332, baseType: !94, size: 32, offset: 288)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !324, file: !23, line: 333, baseType: !94, size: 32, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !324, file: !23, line: 334, baseType: !94, size: 32, offset: 352)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !324, file: !23, line: 335, baseType: !94, size: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !324, file: !23, line: 336, baseType: !94, size: 32, offset: 416)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !324, file: !23, line: 337, baseType: !94, size: 32, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !324, file: !23, line: 338, baseType: !94, size: 32, offset: 480)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !324, file: !23, line: 339, baseType: !94, size: 32, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !324, file: !23, line: 340, baseType: !94, size: 32, offset: 544)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !324, file: !23, line: 341, baseType: !94, size: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !324, file: !23, line: 342, baseType: !94, size: 32, offset: 608)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !324, file: !23, line: 343, baseType: !94, size: 32, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !324, file: !23, line: 344, baseType: !94, size: 32, offset: 672)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !324, file: !23, line: 345, baseType: !94, size: 32, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !324, file: !23, line: 346, baseType: !94, size: 32, offset: 736)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !324, file: !23, line: 347, baseType: !94, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !324, file: !23, line: 348, baseType: !94, size: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !324, file: !23, line: 349, baseType: !94, size: 32, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !324, file: !23, line: 350, baseType: !94, size: 32, offset: 864)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !324, file: !23, line: 351, baseType: !94, size: 32, offset: 896)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !324, file: !23, line: 352, baseType: !94, size: 32, offset: 928)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !324, file: !23, line: 353, baseType: !94, size: 32, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !324, file: !23, line: 354, baseType: !94, size: 32, offset: 992)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !324, file: !23, line: 355, baseType: !94, size: 32, offset: 1024)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !324, file: !23, line: 356, baseType: !94, size: 32, offset: 1056)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !324, file: !23, line: 357, baseType: !94, size: 32, offset: 1088)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !324, file: !23, line: 358, baseType: !94, size: 32, offset: 1120)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !324, file: !23, line: 359, baseType: !94, size: 32, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !324, file: !23, line: 360, baseType: !94, size: 32, offset: 1184)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !324, file: !23, line: 361, baseType: !94, size: 32, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !324, file: !23, line: 362, baseType: !94, size: 32, offset: 1248)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !324, file: !23, line: 363, baseType: !94, size: 32, offset: 1280)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !324, file: !23, line: 364, baseType: !94, size: 32, offset: 1312)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !324, file: !23, line: 365, baseType: !94, size: 32, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !324, file: !23, line: 366, baseType: !94, size: 32, offset: 1376)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !324, file: !23, line: 367, baseType: !94, size: 32, offset: 1408)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !324, file: !23, line: 368, baseType: !94, size: 32, offset: 1440)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !324, file: !23, line: 369, baseType: !94, size: 32, offset: 1472)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !324, file: !23, line: 370, baseType: !94, size: 32, offset: 1504)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !324, file: !23, line: 371, baseType: !94, size: 32, offset: 1536)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !324, file: !23, line: 372, baseType: !94, size: 32, offset: 1568)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_file_path_dev_path", file: !18, line: 1023, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !372, file: !18, line: 1024, baseType: !252, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !372, file: !18, line: 1025, baseType: !139, offset: 32)
!376 = !{!0, !7, !12, !377, !382, !387, !392, !397}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 55)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 32)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 36)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 35)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 34)
!402 = !{!403, !404, !405, !406, !407, !408, !426, !427, !428, !429, !435, !437, !440, !442, !444, !445, !447}
!403 = !DILocalVariable(name: "volume", arg: 1, scope: !14, file: !2, line: 128, type: !20)
!404 = !DILocalVariable(name: "fi", arg: 2, scope: !14, file: !2, line: 129, type: !106)
!405 = !DILocalVariable(name: "text_to_dp_guid", scope: !14, file: !2, line: 131, type: !73)
!406 = !DILocalVariable(name: "fs_proto", scope: !14, file: !2, line: 133, type: !73)
!407 = !DILocalVariable(name: "initrd_dp", scope: !14, file: !2, line: 134, type: !250)
!408 = !DILocalVariable(name: "io", scope: !14, file: !2, line: 135, type: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_file_system_protocol_t", file: !23, line: 668, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_file_system_protocol", file: !23, line: 670, size: 128, elements: !412)
!412 = !{!413, !421}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !23, line: 671, baseType: !414, size: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !23, line: 671, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !414, file: !23, line: 672, baseType: !30, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "open_volume", scope: !414, file: !23, line: 673, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !420)
!420 = !{!17, !409, !20}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !411, file: !23, line: 679, baseType: !422, size: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !23, line: 676, size: 128, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !422, file: !23, line: 677, baseType: !30, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "open_volume", scope: !422, file: !23, line: 678, baseType: !94, size: 32, offset: 64)
!426 = !DILocalVariable(name: "fpath", scope: !14, file: !2, line: 136, type: !371)
!427 = !DILocalVariable(name: "handle", scope: !14, file: !2, line: 137, type: !237)
!428 = !DILocalVariable(name: "status", scope: !14, file: !2, line: 138, type: !17)
!429 = !DILocalVariable(name: "__pad", scope: !430, file: !2, line: 142, type: !432)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 142, column: 6)
!431 = distinct !DILexicalBlock(scope: !14, file: !2, line: 141, column: 6)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 3)
!435 = !DILocalVariable(name: "__pad", scope: !436, file: !2, line: 148, type: !432)
!436 = distinct !DILexicalBlock(scope: !14, file: !2, line: 148, column: 14)
!437 = !DILocalVariable(name: "__pad", scope: !438, file: !2, line: 152, type: !432)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 152, column: 7)
!439 = distinct !DILexicalBlock(scope: !14, file: !2, line: 152, column: 6)
!440 = !DILocalVariable(name: "__pad", scope: !441, file: !2, line: 153, type: !432)
!441 = distinct !DILexicalBlock(scope: !439, file: !2, line: 153, column: 7)
!442 = !DILocalVariable(name: "__UNIQUE_ID___x372", scope: !443, file: !2, line: 168, type: !19)
!443 = distinct !DILexicalBlock(scope: !14, file: !2, line: 168, column: 9)
!444 = !DILocalVariable(name: "__UNIQUE_ID___y373", scope: !443, file: !2, line: 168, type: !19)
!445 = !DILocalVariable(name: "__inst", scope: !446, file: !2, line: 171, type: !409)
!446 = distinct !DILexicalBlock(scope: !14, file: !2, line: 171, column: 11)
!447 = !DILocalVariable(name: "__pad", scope: !448, file: !2, line: 171, type: !432)
!448 = distinct !DILexicalBlock(scope: !446, file: !2, line: 171, column: 11)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_from_text_protocol_t", file: !23, line: 208, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_device_path_from_text_protocol", file: !23, line: 195, size: 128, elements: !452)
!452 = !{!453, !463}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !451, file: !23, line: 196, baseType: !454, size: 128)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !23, line: 196, size: 128, elements: !455)
!455 = !{!456, !462}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "convert_text_to_device_node", scope: !454, file: !23, line: 198, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !459)
!459 = !{!250, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "convert_text_to_device_path", scope: !454, file: !23, line: 200, baseType: !457, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !451, file: !23, line: 205, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !23, line: 202, size: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "convert_text_to_device_node", scope: !464, file: !23, line: 203, baseType: !94, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "convert_text_to_device_path", scope: !464, file: !23, line: 204, baseType: !94, size: 32, offset: 32)
!468 = !{i32 7, !"Dwarf Version", i32 5}
!469 = !{i32 2, !"Debug Info Version", i32 3}
!470 = !{i32 1, !"wchar_size", i32 2}
!471 = !{i32 8, !"PIC Level", i32 2}
!472 = !{i32 1, !"Code Model", i32 1}
!473 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!474 = distinct !DISubprogram(name: "handle_cmdline_files", scope: !2, file: !2, line: 184, type: !475, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !704)
!475 = !DISubroutineType(types: !476)
!476 = !{!17, !477, !460, !162, !19, !19, !53, !53}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_loaded_image_t", file: !23, line: 610, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 579, size: 768, elements: !480)
!480 = !{!481, !688}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !23, line: 580, baseType: !482, size: 768)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !23, line: 580, size: 768, elements: !483)
!483 = !{!484, !485, !486, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !482, file: !23, line: 581, baseType: !94, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !482, file: !23, line: 582, baseType: !237, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !482, file: !23, line: 583, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_t", file: !18, line: 533, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 516, size: 960, elements: !490)
!490 = !{!491, !661}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !18, line: 517, baseType: !492, size: 960)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !18, line: 517, size: 960, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !524, !525, !545, !546, !547, !658, !659, !660}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !492, file: !18, line: 518, baseType: !171, size: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !492, file: !18, line: 519, baseType: !19, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !492, file: !18, line: 520, baseType: !94, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !492, file: !18, line: 521, baseType: !19, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !492, file: !18, line: 522, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_input_protocol_t", file: !18, line: 513, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_input_protocol", file: !23, line: 487, size: 192, elements: !502)
!502 = !{!503, !518}
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !23, line: 488, baseType: !504, size: 192)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !23, line: 488, size: 192, elements: !505)
!505 = !{!506, !507, !517}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !504, file: !23, line: 489, baseType: !54, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !504, file: !23, line: 490, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !510)
!510 = !{!17, !499, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_input_key_t", file: !23, line: 485, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 482, size: 32, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "scan_code", scope: !513, file: !23, line: 483, baseType: !41, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_char", scope: !513, file: !23, line: 484, baseType: !40, size: 16, offset: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !504, file: !23, line: 492, baseType: !213, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !501, file: !23, line: 498, baseType: !519, size: 96)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !23, line: 494, size: 96, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !519, file: !23, line: 495, baseType: !94, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "read_keystroke", scope: !519, file: !23, line: 496, baseType: !94, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_key", scope: !519, file: !23, line: 497, baseType: !94, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !492, file: !18, line: 523, baseType: !19, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !492, file: !18, line: 524, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_simple_text_output_protocol_t", file: !18, line: 514, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_simple_text_output_protocol", file: !23, line: 503, size: 192, elements: !529)
!529 = !{!530, !539}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !23, line: 504, baseType: !531, size: 192)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !23, line: 504, size: 192, elements: !532)
!532 = !{!533, !534, !538}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !531, file: !23, line: 505, baseType: !54, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !531, file: !23, line: 506, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !537)
!537 = !{!17, !526, !39}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !531, file: !23, line: 508, baseType: !54, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !528, file: !23, line: 514, baseType: !540, size: 96)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !528, file: !23, line: 510, size: 96, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !540, file: !23, line: 511, baseType: !94, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "output_string", scope: !540, file: !23, line: 512, baseType: !94, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "test_string", scope: !540, file: !23, line: 513, baseType: !94, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !492, file: !18, line: 525, baseType: !19, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !492, file: !18, line: 526, baseType: !19, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !492, file: !18, line: 527, baseType: !548, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_t", file: !18, line: 336, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 317, size: 1088, elements: !551)
!551 = !{!552, !639}
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !18, line: 318, baseType: !553, size: 1088)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !550, file: !18, line: 318, size: 1088, elements: !554)
!554 = !{!555, !556, !568, !572, !578, !582, !596, !597, !601, !605, !609, !613, !617, !630, !635}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !553, file: !18, line: 319, baseType: !171, size: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !553, file: !18, line: 320, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !559)
!559 = !{!17, !560, !561}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_time_cap_t", file: !18, line: 248, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 244, size: 96, elements: !564)
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !563, file: !18, line: 245, baseType: !94, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !563, file: !18, line: 246, baseType: !94, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sets_to_zero", scope: !563, file: !18, line: 247, baseType: !122, size: 8, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !553, file: !18, line: 321, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !571)
!571 = !{!17, !560}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !553, file: !18, line: 322, baseType: !573, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !575)
!575 = !{!17, !576, !576, !560}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_bool_t", file: !18, line: 48, baseType: !122)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !553, file: !18, line: 323, baseType: !579, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !581)
!581 = !{!17, !577, !560}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !553, file: !18, line: 324, baseType: !583, size: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !585)
!585 = !{!17, !19, !19, !94, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !18, line: 145, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 138, size: 320, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !18, line: 139, baseType: !94, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !588, file: !18, line: 140, baseType: !94, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !588, file: !18, line: 141, baseType: !30, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !588, file: !18, line: 142, baseType: !30, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !588, file: !18, line: 143, baseType: !30, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !588, file: !18, line: 144, baseType: !30, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !553, file: !18, line: 325, baseType: !54, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !553, file: !18, line: 326, baseType: !598, size: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !600)
!600 = !{!17, !39, !72, !195, !53, !54}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !553, file: !18, line: 327, baseType: !602, size: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !604)
!604 = !{!17, !53, !39, !72}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !553, file: !18, line: 328, baseType: !606, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !608)
!608 = !{!17, !39, !72, !94, !19, !54}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !553, file: !18, line: 329, baseType: !610, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !612)
!612 = !{!17, !195}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !553, file: !18, line: 330, baseType: !614, size: 64, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !616)
!616 = !{null, !162, !17, !19, !39}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !553, file: !18, line: 331, baseType: !618, size: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !620)
!620 = !{!17, !621, !19, !19}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_capsule_header_t", file: !18, line: 152, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 147, size: 224, elements: !625)
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !624, file: !18, line: 148, baseType: !73, size: 128, align: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !624, file: !18, line: 149, baseType: !94, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !18, line: 150, baseType: !94, size: 32, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "imagesize", scope: !624, file: !18, line: 151, baseType: !94, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !553, file: !18, line: 332, baseType: !631, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !633)
!633 = !{!17, !621, !19, !63, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !553, file: !18, line: 333, baseType: !636, size: 64, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !638)
!638 = !{!17, !94, !63, !63, !63}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !550, file: !18, line: 335, baseType: !640, size: 640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_runtime_services_32_t", file: !18, line: 281, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 265, size: 640, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !641, file: !18, line: 266, baseType: !171, size: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !641, file: !18, line: 267, baseType: !94, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !641, file: !18, line: 268, baseType: !94, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !641, file: !18, line: 269, baseType: !94, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !641, file: !18, line: 270, baseType: !94, size: 32, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "set_virtual_address_map", scope: !641, file: !18, line: 271, baseType: !94, size: 32, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "convert_pointer", scope: !641, file: !18, line: 272, baseType: !94, size: 32, offset: 352)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !641, file: !18, line: 273, baseType: !94, size: 32, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable", scope: !641, file: !18, line: 274, baseType: !94, size: 32, offset: 416)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !641, file: !18, line: 275, baseType: !94, size: 32, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_high_mono_count", scope: !641, file: !18, line: 276, baseType: !94, size: 32, offset: 480)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reset_system", scope: !641, file: !18, line: 277, baseType: !94, size: 32, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !641, file: !18, line: 278, baseType: !94, size: 32, offset: 544)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_caps", scope: !641, file: !18, line: 279, baseType: !94, size: 32, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !641, file: !18, line: 280, baseType: !94, size: 32, offset: 608)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !492, file: !18, line: 528, baseType: !163, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !492, file: !18, line: 529, baseType: !19, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !492, file: !18, line: 530, baseType: !19, size: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !489, file: !18, line: 532, baseType: !662, size: 576)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_32_t", file: !18, line: 511, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 497, size: 576, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !663, file: !18, line: 498, baseType: !171, size: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !663, file: !18, line: 499, baseType: !94, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !663, file: !18, line: 500, baseType: !94, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !663, file: !18, line: 501, baseType: !94, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !663, file: !18, line: 502, baseType: !94, size: 32, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !663, file: !18, line: 503, baseType: !94, size: 32, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !663, file: !18, line: 504, baseType: !94, size: 32, offset: 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !663, file: !18, line: 505, baseType: !94, size: 32, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !663, file: !18, line: 506, baseType: !94, size: 32, offset: 416)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !663, file: !18, line: 507, baseType: !94, size: 32, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !663, file: !18, line: 508, baseType: !94, size: 32, offset: 480)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !663, file: !18, line: 509, baseType: !94, size: 32, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !663, file: !18, line: 510, baseType: !94, size: 32, offset: 544)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !482, file: !23, line: 584, baseType: !237, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !482, file: !23, line: 585, baseType: !54, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !482, file: !23, line: 586, baseType: !54, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !482, file: !23, line: 587, baseType: !94, size: 32, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !482, file: !23, line: 588, baseType: !54, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !482, file: !23, line: 589, baseType: !54, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !482, file: !23, line: 590, baseType: !32, size: 64, align: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !482, file: !23, line: 591, baseType: !96, size: 32, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !482, file: !23, line: 592, baseType: !96, size: 32, offset: 672)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !482, file: !23, line: 593, baseType: !278, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !479, file: !23, line: 609, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !23, line: 595, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !689, file: !23, line: 596, baseType: !94, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handle", scope: !689, file: !23, line: 597, baseType: !94, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "system_table", scope: !689, file: !23, line: 598, baseType: !94, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "device_handle", scope: !689, file: !23, line: 599, baseType: !94, size: 32, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", scope: !689, file: !23, line: 600, baseType: !94, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !689, file: !23, line: 601, baseType: !94, size: 32, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "load_options_size", scope: !689, file: !23, line: 602, baseType: !94, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "load_options", scope: !689, file: !23, line: 603, baseType: !94, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "image_base", scope: !689, file: !23, line: 604, baseType: !94, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "image_size", scope: !689, file: !23, line: 605, baseType: !32, size: 64, align: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "image_code_type", scope: !689, file: !23, line: 606, baseType: !94, size: 32, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "image_data_type", scope: !689, file: !23, line: 607, baseType: !94, size: 32, offset: 416)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !689, file: !23, line: 608, baseType: !94, size: 32, offset: 448)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !723, !724, !725, !728, !730, !732, !733, !735, !737, !739, !741, !743, !745, !746, !748, !750, !751, !753, !755}
!705 = !DILocalVariable(name: "image", arg: 1, scope: !474, file: !2, line: 184, type: !477)
!706 = !DILocalVariable(name: "optstr", arg: 2, scope: !474, file: !2, line: 185, type: !460)
!707 = !DILocalVariable(name: "optstr_size", arg: 3, scope: !474, file: !2, line: 186, type: !162)
!708 = !DILocalVariable(name: "soft_limit", arg: 4, scope: !474, file: !2, line: 187, type: !19)
!709 = !DILocalVariable(name: "hard_limit", arg: 5, scope: !474, file: !2, line: 188, type: !19)
!710 = !DILocalVariable(name: "load_addr", arg: 6, scope: !474, file: !2, line: 189, type: !53)
!711 = !DILocalVariable(name: "load_size", arg: 7, scope: !474, file: !2, line: 190, type: !53)
!712 = !DILocalVariable(name: "cmdline", scope: !474, file: !2, line: 192, type: !460)
!713 = !DILocalVariable(name: "cmdline_len", scope: !474, file: !2, line: 193, type: !94)
!714 = !DILocalVariable(name: "efi_chunk_size", scope: !474, file: !2, line: 194, type: !19)
!715 = !DILocalVariable(name: "volume", scope: !474, file: !2, line: 195, type: !21)
!716 = !DILocalVariable(name: "file", scope: !474, file: !2, line: 196, type: !21)
!717 = !DILocalVariable(name: "alloc_addr", scope: !474, file: !2, line: 197, type: !19)
!718 = !DILocalVariable(name: "alloc_size", scope: !474, file: !2, line: 198, type: !19)
!719 = !DILocalVariable(name: "status", scope: !474, file: !2, line: 199, type: !17)
!720 = !DILocalVariable(name: "offset", scope: !474, file: !2, line: 200, type: !162)
!721 = !DILocalVariable(name: "fi", scope: !722, file: !2, line: 213, type: !107)
!722 = distinct !DILexicalBlock(scope: !474, file: !2, line: 212, column: 5)
!723 = !DILocalVariable(name: "size", scope: !722, file: !2, line: 214, type: !19)
!724 = !DILocalVariable(name: "addr", scope: !722, file: !2, line: 215, type: !54)
!725 = !DILocalVariable(name: "old_addr", scope: !726, file: !2, line: 247, type: !19)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 246, column: 46)
!727 = distinct !DILexicalBlock(scope: !722, file: !2, line: 245, column: 7)
!728 = !DILocalVariable(name: "chunksize", scope: !729, file: !2, line: 279, type: !19)
!729 = distinct !DILexicalBlock(scope: !722, file: !2, line: 278, column: 16)
!730 = !DILocalVariable(name: "__UNIQUE_ID___x377", scope: !731, file: !2, line: 279, type: !19)
!731 = distinct !DILexicalBlock(scope: !729, file: !2, line: 279, column: 30)
!732 = !DILocalVariable(name: "__UNIQUE_ID___y378", scope: !731, file: !2, line: 279, type: !19)
!733 = !DILocalVariable(name: "__inst", scope: !734, file: !2, line: 281, type: !21)
!734 = distinct !DILexicalBlock(scope: !729, file: !2, line: 281, column: 13)
!735 = !DILocalVariable(name: "__pad", scope: !736, file: !2, line: 281, type: !432)
!736 = distinct !DILexicalBlock(scope: !734, file: !2, line: 281, column: 13)
!737 = !DILocalVariable(name: "__inst", scope: !738, file: !2, line: 289, type: !21)
!738 = distinct !DILexicalBlock(scope: !722, file: !2, line: 289, column: 3)
!739 = !DILocalVariable(name: "__pad", scope: !740, file: !2, line: 289, type: !432)
!740 = distinct !DILexicalBlock(scope: !738, file: !2, line: 289, column: 3)
!741 = !DILocalVariable(name: "__inst", scope: !742, file: !2, line: 290, type: !21)
!742 = distinct !DILexicalBlock(scope: !722, file: !2, line: 290, column: 3)
!743 = !DILocalVariable(name: "__pad", scope: !744, file: !2, line: 290, type: !432)
!744 = distinct !DILexicalBlock(scope: !742, file: !2, line: 290, column: 3)
!745 = !DILabel(scope: !474, name: "err_close_file", file: !2, line: 300)
!746 = !DILocalVariable(name: "__inst", scope: !747, file: !2, line: 301, type: !21)
!747 = distinct !DILexicalBlock(scope: !474, file: !2, line: 301, column: 2)
!748 = !DILocalVariable(name: "__pad", scope: !749, file: !2, line: 301, type: !432)
!749 = distinct !DILexicalBlock(scope: !747, file: !2, line: 301, column: 2)
!750 = !DILabel(scope: !474, name: "err_close_volume", file: !2, line: 303)
!751 = !DILocalVariable(name: "__inst", scope: !752, file: !2, line: 304, type: !21)
!752 = distinct !DILexicalBlock(scope: !474, file: !2, line: 304, column: 2)
!753 = !DILocalVariable(name: "__pad", scope: !754, file: !2, line: 304, type: !432)
!754 = distinct !DILexicalBlock(scope: !752, file: !2, line: 304, column: 2)
!755 = !DILabel(scope: !474, name: "err_free_alloc", file: !2, line: 306)
!756 = !DILocation(line: 184, column: 55, scope: !474)
!757 = !DILocation(line: 185, column: 27, scope: !474)
!758 = !DILocation(line: 186, column: 11, scope: !474)
!759 = !DILocation(line: 187, column: 21, scope: !474)
!760 = !DILocation(line: 188, column: 21, scope: !474)
!761 = !DILocation(line: 189, column: 22, scope: !474)
!762 = !DILocation(line: 190, column: 22, scope: !474)
!763 = !DILocation(line: 192, column: 2, scope: !474)
!764 = !DILocation(line: 192, column: 22, scope: !474)
!765 = !DILocation(line: 192, column: 32, scope: !474)
!766 = !DILocation(line: 193, column: 2, scope: !474)
!767 = !DILocation(line: 193, column: 6, scope: !474)
!768 = !DILocation(line: 193, column: 20, scope: !474)
!769 = !DILocation(line: 194, column: 2, scope: !474)
!770 = !DILocation(line: 194, column: 16, scope: !474)
!771 = !DILocation(line: 195, column: 2, scope: !474)
!772 = !DILocation(line: 195, column: 23, scope: !474)
!773 = !DILocation(line: 196, column: 2, scope: !474)
!774 = !DILocation(line: 196, column: 23, scope: !474)
!775 = !DILocation(line: 197, column: 2, scope: !474)
!776 = !DILocation(line: 197, column: 16, scope: !474)
!777 = !DILocation(line: 198, column: 2, scope: !474)
!778 = !DILocation(line: 198, column: 16, scope: !474)
!779 = !DILocation(line: 199, column: 2, scope: !474)
!780 = !DILocation(line: 199, column: 15, scope: !474)
!781 = !DILocation(line: 200, column: 2, scope: !474)
!782 = !DILocation(line: 200, column: 6, scope: !474)
!783 = !DILocation(line: 202, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !474, file: !2, line: 202, column: 6)
!785 = !DILocation(line: 202, column: 17, scope: !784)
!786 = !DILocation(line: 202, column: 21, scope: !784)
!787 = !DILocation(line: 202, column: 6, scope: !474)
!788 = !DILocation(line: 203, column: 3, scope: !784)
!789 = !DILocation(line: 205, column: 2, scope: !474)
!790 = !DILocation(line: 206, column: 14, scope: !474)
!791 = !DILocation(line: 208, column: 33, scope: !792)
!792 = distinct !DILexicalBlock(scope: !474, file: !2, line: 208, column: 6)
!793 = !{i8 0, i8 2}
!794 = !{}
!795 = !DILocation(line: 208, column: 6, scope: !474)
!796 = !DILocation(line: 209, column: 18, scope: !792)
!797 = !DILocation(line: 209, column: 3, scope: !792)
!798 = !DILocation(line: 211, column: 26, scope: !474)
!799 = !DILocation(line: 211, column: 13, scope: !474)
!800 = !DILocation(line: 212, column: 2, scope: !474)
!801 = !DILocation(line: 213, column: 3, scope: !722)
!802 = !DILocation(line: 213, column: 16, scope: !722)
!803 = !DILocation(line: 214, column: 3, scope: !722)
!804 = !DILocation(line: 214, column: 17, scope: !722)
!805 = !DILocation(line: 215, column: 3, scope: !722)
!806 = !DILocation(line: 215, column: 9, scope: !722)
!807 = !DILocation(line: 217, column: 29, scope: !722)
!808 = !DILocation(line: 217, column: 38, scope: !722)
!809 = !DILocation(line: 218, column: 8, scope: !722)
!810 = !DILocation(line: 218, column: 16, scope: !722)
!811 = !DILocation(line: 219, column: 11, scope: !722)
!812 = !DILocation(line: 219, column: 8, scope: !722)
!813 = !DILocation(line: 217, column: 12, scope: !722)
!814 = !DILocation(line: 217, column: 10, scope: !722)
!815 = !DILocation(line: 221, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !722, file: !2, line: 221, column: 7)
!817 = !DILocation(line: 221, column: 7, scope: !722)
!818 = !DILocation(line: 222, column: 4, scope: !816)
!819 = !DILocation(line: 224, column: 14, scope: !722)
!820 = !DILocation(line: 224, column: 11, scope: !722)
!821 = !DILocation(line: 225, column: 18, scope: !722)
!822 = !DILocation(line: 225, column: 15, scope: !722)
!823 = !DILocation(line: 227, column: 12, scope: !722)
!824 = !DILocation(line: 227, column: 10, scope: !722)
!825 = !DILocation(line: 228, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !722, file: !2, line: 228, column: 7)
!827 = !DILocation(line: 228, column: 14, scope: !826)
!828 = !DILocation(line: 228, column: 33, scope: !826)
!829 = !DILocation(line: 228, column: 36, scope: !826)
!830 = !DILocation(line: 228, column: 43, scope: !826)
!831 = !DILocation(line: 228, column: 7, scope: !722)
!832 = !DILocation(line: 230, column: 29, scope: !826)
!833 = !DILocation(line: 230, column: 13, scope: !826)
!834 = !DILocation(line: 230, column: 11, scope: !826)
!835 = !DILocation(line: 230, column: 4, scope: !826)
!836 = !DILocation(line: 232, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !722, file: !2, line: 232, column: 7)
!838 = !DILocation(line: 232, column: 14, scope: !837)
!839 = !DILocation(line: 232, column: 7, scope: !722)
!840 = !DILocation(line: 233, column: 4, scope: !837)
!841 = !DILocation(line: 235, column: 26, scope: !722)
!842 = !DILocation(line: 235, column: 12, scope: !722)
!843 = !DILocation(line: 235, column: 10, scope: !722)
!844 = !DILocation(line: 236, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !722, file: !2, line: 236, column: 7)
!846 = !DILocation(line: 236, column: 14, scope: !845)
!847 = !DILocation(line: 236, column: 7, scope: !722)
!848 = !DILocation(line: 237, column: 4, scope: !845)
!849 = !DILocation(line: 245, column: 7, scope: !727)
!850 = !DILocation(line: 246, column: 7, scope: !727)
!851 = !DILocation(line: 245, column: 52, scope: !727)
!852 = !DILocation(line: 245, column: 7, scope: !722)
!853 = !DILocation(line: 247, column: 4, scope: !726)
!854 = !DILocation(line: 247, column: 18, scope: !726)
!855 = !DILocation(line: 247, column: 29, scope: !726)
!856 = !DILocation(line: 249, column: 11, scope: !726)
!857 = !DILocation(line: 250, column: 8, scope: !858)
!858 = distinct !DILexicalBlock(scope: !726, file: !2, line: 250, column: 8)
!859 = !DILocation(line: 250, column: 21, scope: !858)
!860 = !DILocation(line: 250, column: 19, scope: !858)
!861 = !DILocation(line: 250, column: 8, scope: !726)
!862 = !DILocation(line: 251, column: 33, scope: !858)
!863 = !DILocation(line: 251, column: 46, scope: !858)
!864 = !DILocation(line: 251, column: 44, scope: !858)
!865 = !DILocation(line: 253, column: 12, scope: !858)
!866 = !DILocation(line: 251, column: 14, scope: !858)
!867 = !DILocation(line: 251, column: 12, scope: !858)
!868 = !DILocation(line: 251, column: 5, scope: !858)
!869 = !DILocation(line: 254, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !726, file: !2, line: 254, column: 8)
!871 = !DILocation(line: 254, column: 15, scope: !870)
!872 = !DILocation(line: 254, column: 8, scope: !726)
!873 = !DILocation(line: 255, column: 33, scope: !870)
!874 = !DILocation(line: 255, column: 46, scope: !870)
!875 = !DILocation(line: 255, column: 44, scope: !870)
!876 = !DILocation(line: 257, column: 12, scope: !870)
!877 = !DILocation(line: 255, column: 14, scope: !870)
!878 = !DILocation(line: 255, column: 12, scope: !870)
!879 = !DILocation(line: 255, column: 5, scope: !870)
!880 = !DILocation(line: 258, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !726, file: !2, line: 258, column: 8)
!882 = !DILocation(line: 258, column: 15, scope: !881)
!883 = !DILocation(line: 258, column: 8, scope: !726)
!884 = !DILocation(line: 259, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !2, line: 258, column: 31)
!886 = !DILocation(line: 260, column: 5, scope: !885)
!887 = !DILocation(line: 263, column: 8, scope: !888)
!888 = distinct !DILexicalBlock(scope: !726, file: !2, line: 263, column: 8)
!889 = !DILocation(line: 263, column: 17, scope: !888)
!890 = !DILocation(line: 263, column: 8, scope: !726)
!891 = !DILocation(line: 270, column: 20, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !2, line: 263, column: 23)
!893 = !DILocation(line: 270, column: 12, scope: !892)
!894 = !DILocation(line: 270, column: 40, scope: !892)
!895 = !DILocation(line: 270, column: 32, scope: !892)
!896 = !DILocation(line: 270, column: 50, scope: !892)
!897 = !DILocation(line: 270, column: 5, scope: !892)
!898 = !DILocation(line: 271, column: 14, scope: !892)
!899 = !DILocation(line: 271, column: 26, scope: !892)
!900 = !DILocation(line: 271, column: 5, scope: !892)
!901 = !DILocation(line: 272, column: 4, scope: !892)
!902 = !DILocation(line: 273, column: 3, scope: !727)
!903 = !DILocation(line: 273, column: 3, scope: !726)
!904 = !DILocation(line: 275, column: 18, scope: !722)
!905 = !DILocation(line: 275, column: 10, scope: !722)
!906 = !DILocation(line: 275, column: 31, scope: !722)
!907 = !DILocation(line: 275, column: 29, scope: !722)
!908 = !DILocation(line: 275, column: 8, scope: !722)
!909 = !DILocation(line: 276, column: 17, scope: !722)
!910 = !DILocation(line: 276, column: 14, scope: !722)
!911 = !DILocation(line: 278, column: 3, scope: !722)
!912 = !DILocation(line: 278, column: 10, scope: !722)
!913 = !DILocation(line: 279, column: 4, scope: !729)
!914 = !DILocation(line: 279, column: 18, scope: !729)
!915 = !DILocation(line: 279, column: 30, scope: !731)
!916 = !DILocation(line: 279, column: 30, scope: !729)
!917 = !DILocation(line: 281, column: 13, scope: !734)
!918 = !DILocation(line: 281, column: 13, scope: !736)
!919 = !DILocation(line: 281, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !736, file: !2, line: 281, column: 13)
!921 = !DILocation(line: 281, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !2, line: 281, column: 13)
!923 = !DILocation(line: 281, column: 13, scope: !729)
!924 = !DILocation(line: 281, column: 11, scope: !729)
!925 = !DILocation(line: 282, column: 8, scope: !926)
!926 = distinct !DILexicalBlock(scope: !729, file: !2, line: 282, column: 8)
!927 = !DILocation(line: 282, column: 15, scope: !926)
!928 = !DILocation(line: 282, column: 8, scope: !729)
!929 = !DILocation(line: 283, column: 5, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !2, line: 282, column: 31)
!931 = !DILocation(line: 284, column: 5, scope: !930)
!932 = !DILocation(line: 286, column: 12, scope: !729)
!933 = !DILocation(line: 286, column: 9, scope: !729)
!934 = !DILocation(line: 287, column: 12, scope: !729)
!935 = !DILocation(line: 287, column: 9, scope: !729)
!936 = !DILocation(line: 288, column: 3, scope: !722)
!937 = distinct !{!937, !911, !936, !938, !939}
!938 = !{!"llvm.loop.mustprogress"}
!939 = !{!"llvm.loop.unroll.disable"}
!940 = !DILocation(line: 289, column: 3, scope: !738)
!941 = !DILocation(line: 289, column: 3, scope: !740)
!942 = !DILocation(line: 289, column: 3, scope: !943)
!943 = distinct !DILexicalBlock(scope: !740, file: !2, line: 289, column: 3)
!944 = !DILocation(line: 289, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !943, file: !2, line: 289, column: 3)
!946 = !DILocation(line: 289, column: 3, scope: !722)
!947 = !DILocation(line: 290, column: 3, scope: !742)
!948 = !DILocation(line: 290, column: 3, scope: !744)
!949 = !DILocation(line: 290, column: 3, scope: !950)
!950 = distinct !DILexicalBlock(scope: !744, file: !2, line: 290, column: 3)
!951 = !DILocation(line: 290, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !950, file: !2, line: 290, column: 3)
!953 = !DILocation(line: 290, column: 3, scope: !722)
!954 = !DILocation(line: 291, column: 2, scope: !474)
!955 = !DILocation(line: 291, column: 2, scope: !722)
!956 = !DILocation(line: 291, column: 11, scope: !474)
!957 = !DILocation(line: 291, column: 18, scope: !474)
!958 = distinct !{!958, !800, !959, !938, !939}
!959 = !DILocation(line: 291, column: 21, scope: !474)
!960 = !DILocation(line: 293, column: 15, scope: !474)
!961 = !DILocation(line: 293, column: 3, scope: !474)
!962 = !DILocation(line: 293, column: 13, scope: !474)
!963 = !DILocation(line: 294, column: 15, scope: !474)
!964 = !DILocation(line: 294, column: 3, scope: !474)
!965 = !DILocation(line: 294, column: 13, scope: !474)
!966 = !DILocation(line: 296, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !474, file: !2, line: 296, column: 6)
!968 = !DILocation(line: 296, column: 6, scope: !967)
!969 = !DILocation(line: 296, column: 17, scope: !967)
!970 = !DILocation(line: 296, column: 6, scope: !474)
!971 = !DILocation(line: 297, column: 3, scope: !967)
!972 = !DILocation(line: 298, column: 2, scope: !474)
!973 = !DILocation(line: 300, column: 1, scope: !474)
!974 = !DILocation(line: 301, column: 2, scope: !747)
!975 = !DILocation(line: 301, column: 2, scope: !749)
!976 = !DILocation(line: 301, column: 2, scope: !977)
!977 = distinct !DILexicalBlock(scope: !749, file: !2, line: 301, column: 2)
!978 = !DILocation(line: 301, column: 2, scope: !979)
!979 = distinct !DILexicalBlock(scope: !977, file: !2, line: 301, column: 2)
!980 = !DILocation(line: 301, column: 2, scope: !474)
!981 = !DILocation(line: 303, column: 1, scope: !474)
!982 = !DILocation(line: 304, column: 2, scope: !752)
!983 = !DILocation(line: 304, column: 2, scope: !754)
!984 = !DILocation(line: 304, column: 2, scope: !985)
!985 = distinct !DILexicalBlock(scope: !754, file: !2, line: 304, column: 2)
!986 = !DILocation(line: 304, column: 2, scope: !987)
!987 = distinct !DILexicalBlock(scope: !985, file: !2, line: 304, column: 2)
!988 = !DILocation(line: 304, column: 2, scope: !474)
!989 = !DILocation(line: 306, column: 1, scope: !474)
!990 = !DILocation(line: 307, column: 11, scope: !474)
!991 = !DILocation(line: 307, column: 23, scope: !474)
!992 = !DILocation(line: 307, column: 2, scope: !474)
!993 = !DILocation(line: 308, column: 9, scope: !474)
!994 = !DILocation(line: 308, column: 2, scope: !474)
!995 = !DILocation(line: 309, column: 1, scope: !474)
!996 = distinct !DISubprogram(name: "efi_is_native", scope: !997, file: !997, line: 205, type: !998, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146)
!997 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!998 = !DISubroutineType(types: !999)
!999 = !{!265}
!1000 = !DILocation(line: 207, column: 9, scope: !996)
!1001 = !DILocation(line: 207, column: 2, scope: !996)
!1002 = !DISubprogram(name: "efi_apply_loadoptions_quirk", scope: !23, file: !23, line: 976, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !159, !195}
!1005 = distinct !DISubprogram(name: "find_file_option", scope: !2, file: !2, line: 95, type: !1006, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!162, !460, !162, !460, !162, !39, !162}
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018}
!1009 = !DILocalVariable(name: "cmdline", arg: 1, scope: !1005, file: !2, line: 95, type: !460)
!1010 = !DILocalVariable(name: "cmdline_len", arg: 2, scope: !1005, file: !2, line: 95, type: !162)
!1011 = !DILocalVariable(name: "prefix", arg: 3, scope: !1005, file: !2, line: 96, type: !460)
!1012 = !DILocalVariable(name: "prefix_size", arg: 4, scope: !1005, file: !2, line: 96, type: !162)
!1013 = !DILocalVariable(name: "result", arg: 5, scope: !1005, file: !2, line: 97, type: !39)
!1014 = !DILocalVariable(name: "result_len", arg: 6, scope: !1005, file: !2, line: 97, type: !162)
!1015 = !DILocalVariable(name: "prefix_len", scope: !1005, file: !2, line: 99, type: !162)
!1016 = !DILocalVariable(name: "found", scope: !1005, file: !2, line: 100, type: !265)
!1017 = !DILocalVariable(name: "i", scope: !1005, file: !2, line: 101, type: !162)
!1018 = !DILocalVariable(name: "c", scope: !1019, file: !2, line: 118, type: !40)
!1019 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 117, column: 46)
!1020 = !DILocation(line: 95, column: 49, scope: !1005)
!1021 = !DILocation(line: 95, column: 62, scope: !1005)
!1022 = !DILocation(line: 96, column: 28, scope: !1005)
!1023 = !DILocation(line: 96, column: 40, scope: !1005)
!1024 = !DILocation(line: 97, column: 22, scope: !1005)
!1025 = !DILocation(line: 97, column: 34, scope: !1005)
!1026 = !DILocation(line: 99, column: 2, scope: !1005)
!1027 = !DILocation(line: 99, column: 6, scope: !1005)
!1028 = !DILocation(line: 99, column: 19, scope: !1005)
!1029 = !DILocation(line: 99, column: 31, scope: !1005)
!1030 = !DILocation(line: 100, column: 2, scope: !1005)
!1031 = !DILocation(line: 100, column: 7, scope: !1005)
!1032 = !DILocation(line: 101, column: 2, scope: !1005)
!1033 = !DILocation(line: 101, column: 6, scope: !1005)
!1034 = !DILocation(line: 103, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 103, column: 2)
!1036 = !DILocation(line: 103, column: 9, scope: !1035)
!1037 = !DILocation(line: 103, column: 7, scope: !1035)
!1038 = !DILocation(line: 103, column: 23, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 103, column: 2)
!1040 = !DILocation(line: 103, column: 27, scope: !1039)
!1041 = !DILocation(line: 103, column: 25, scope: !1039)
!1042 = !DILocation(line: 103, column: 2, scope: !1035)
!1043 = !DILocation(line: 104, column: 16, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 104, column: 7)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 103, column: 45)
!1046 = !DILocation(line: 104, column: 24, scope: !1044)
!1047 = !DILocation(line: 104, column: 28, scope: !1044)
!1048 = !DILocation(line: 104, column: 26, scope: !1044)
!1049 = !DILocation(line: 104, column: 41, scope: !1044)
!1050 = !DILocation(line: 104, column: 49, scope: !1044)
!1051 = !DILocation(line: 104, column: 8, scope: !1044)
!1052 = !DILocation(line: 104, column: 7, scope: !1045)
!1053 = !DILocation(line: 105, column: 10, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 104, column: 63)
!1055 = !DILocation(line: 106, column: 4, scope: !1054)
!1056 = !DILocation(line: 108, column: 2, scope: !1045)
!1057 = !DILocation(line: 103, column: 41, scope: !1039)
!1058 = !DILocation(line: 103, column: 2, scope: !1039)
!1059 = distinct !{!1059, !1042, !1060, !938, !939}
!1060 = !DILocation(line: 108, column: 2, scope: !1035)
!1061 = !DILocation(line: 110, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 110, column: 6)
!1063 = !DILocation(line: 110, column: 6, scope: !1005)
!1064 = !DILocation(line: 111, column: 3, scope: !1062)
!1065 = !DILocation(line: 114, column: 2, scope: !1005)
!1066 = !DILocation(line: 114, column: 9, scope: !1005)
!1067 = !DILocation(line: 114, column: 13, scope: !1005)
!1068 = !DILocation(line: 114, column: 11, scope: !1005)
!1069 = !DILocation(line: 114, column: 25, scope: !1005)
!1070 = !DILocation(line: 114, column: 29, scope: !1005)
!1071 = !DILocation(line: 114, column: 37, scope: !1005)
!1072 = !DILocation(line: 114, column: 40, scope: !1005)
!1073 = !DILocation(line: 114, column: 48, scope: !1005)
!1074 = !DILocation(line: 114, column: 51, scope: !1005)
!1075 = !DILocation(line: 114, column: 59, scope: !1005)
!1076 = !DILocation(line: 114, column: 62, scope: !1005)
!1077 = !DILocation(line: 0, scope: !1005)
!1078 = !DILocation(line: 115, column: 4, scope: !1005)
!1079 = distinct !{!1079, !1065, !1078, !938, !939}
!1080 = !DILocation(line: 117, column: 2, scope: !1005)
!1081 = !DILocation(line: 117, column: 9, scope: !1005)
!1082 = !DILocation(line: 117, column: 22, scope: !1005)
!1083 = !DILocation(line: 117, column: 26, scope: !1005)
!1084 = !DILocation(line: 117, column: 29, scope: !1005)
!1085 = !DILocation(line: 117, column: 33, scope: !1005)
!1086 = !DILocation(line: 117, column: 31, scope: !1005)
!1087 = !DILocation(line: 118, column: 3, scope: !1019)
!1088 = !DILocation(line: 118, column: 16, scope: !1019)
!1089 = !DILocation(line: 118, column: 20, scope: !1019)
!1090 = !DILocation(line: 118, column: 29, scope: !1019)
!1091 = !DILocation(line: 120, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 120, column: 7)
!1093 = !DILocation(line: 120, column: 9, scope: !1092)
!1094 = !DILocation(line: 120, column: 18, scope: !1092)
!1095 = !DILocation(line: 120, column: 21, scope: !1092)
!1096 = !DILocation(line: 120, column: 23, scope: !1092)
!1097 = !DILocation(line: 120, column: 32, scope: !1092)
!1098 = !DILocation(line: 120, column: 35, scope: !1092)
!1099 = !DILocation(line: 120, column: 37, scope: !1092)
!1100 = !DILocation(line: 120, column: 7, scope: !1019)
!1101 = !DILocation(line: 121, column: 4, scope: !1092)
!1102 = !DILocation(line: 122, column: 15, scope: !1019)
!1103 = !DILocation(line: 122, column: 10, scope: !1019)
!1104 = !DILocation(line: 122, column: 13, scope: !1019)
!1105 = !DILocation(line: 123, column: 2, scope: !1005)
!1106 = distinct !{!1106, !1080, !1105, !938, !939}
!1107 = !DILocation(line: 124, column: 3, scope: !1005)
!1108 = !DILocation(line: 124, column: 10, scope: !1005)
!1109 = !DILocation(line: 125, column: 9, scope: !1005)
!1110 = !DILocation(line: 125, column: 2, scope: !1005)
!1111 = !DILocation(line: 126, column: 1, scope: !1005)
!1112 = !DILocation(line: 128, column: 64, scope: !14)
!1113 = !DILocation(line: 129, column: 21, scope: !14)
!1114 = !DILocation(line: 131, column: 2, scope: !14)
!1115 = !DILocation(line: 131, column: 13, scope: !14)
!1116 = !DILocation(line: 133, column: 2, scope: !14)
!1117 = !DILocation(line: 133, column: 13, scope: !14)
!1118 = !DILocation(line: 134, column: 2, scope: !14)
!1119 = !DILocation(line: 134, column: 30, scope: !14)
!1120 = !DILocation(line: 135, column: 2, scope: !14)
!1121 = !DILocation(line: 135, column: 37, scope: !14)
!1122 = !DILocation(line: 136, column: 2, scope: !14)
!1123 = !DILocation(line: 136, column: 33, scope: !14)
!1124 = !DILocation(line: 137, column: 2, scope: !14)
!1125 = !DILocation(line: 137, column: 15, scope: !14)
!1126 = !DILocation(line: 138, column: 2, scope: !14)
!1127 = !DILocation(line: 138, column: 15, scope: !14)
!1128 = !DILocation(line: 141, column: 7, scope: !431)
!1129 = !DILocation(line: 141, column: 18, scope: !431)
!1130 = !DILocation(line: 142, column: 6, scope: !431)
!1131 = !DILocation(line: 142, column: 6, scope: !430)
!1132 = !DILocation(line: 142, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !430, file: !2, line: 142, column: 6)
!1134 = !DILocation(line: 142, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 142, column: 6)
!1136 = !DILocation(line: 143, column: 26, scope: !431)
!1137 = !DILocation(line: 141, column: 6, scope: !14)
!1138 = !DILocation(line: 144, column: 3, scope: !431)
!1139 = !DILocation(line: 148, column: 14, scope: !14)
!1140 = !DILocation(line: 148, column: 14, scope: !436)
!1141 = !DILocation(line: 148, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !436, file: !2, line: 148, column: 14)
!1143 = !DILocation(line: 148, column: 14, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 148, column: 14)
!1145 = !DILocation(line: 148, column: 12, scope: !14)
!1146 = !DILocation(line: 152, column: 7, scope: !439)
!1147 = !DILocation(line: 152, column: 7, scope: !438)
!1148 = !DILocation(line: 152, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !438, file: !2, line: 152, column: 7)
!1150 = !DILocation(line: 152, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 152, column: 7)
!1152 = !DILocation(line: 153, column: 7, scope: !439)
!1153 = !DILocation(line: 153, column: 7, scope: !441)
!1154 = !DILocation(line: 153, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !441, file: !2, line: 153, column: 7)
!1156 = !DILocation(line: 153, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 153, column: 7)
!1158 = !DILocation(line: 154, column: 6, scope: !439)
!1159 = !DILocation(line: 152, column: 6, scope: !14)
!1160 = !DILocation(line: 155, column: 3, scope: !439)
!1161 = !DILocation(line: 158, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !14, file: !2, line: 158, column: 6)
!1163 = !DILocation(line: 158, column: 17, scope: !1162)
!1164 = !DILocation(line: 158, column: 22, scope: !1162)
!1165 = !DILocation(line: 158, column: 39, scope: !1162)
!1166 = !DILocation(line: 159, column: 6, scope: !1162)
!1167 = !DILocation(line: 159, column: 17, scope: !1162)
!1168 = !DILocation(line: 159, column: 26, scope: !1162)
!1169 = !DILocation(line: 158, column: 6, scope: !14)
!1170 = !DILocation(line: 160, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 159, column: 49)
!1172 = !DILocation(line: 162, column: 3, scope: !1171)
!1173 = !DILocation(line: 166, column: 43, scope: !14)
!1174 = !DILocation(line: 166, column: 8, scope: !14)
!1175 = !DILocation(line: 167, column: 9, scope: !14)
!1176 = !DILocation(line: 167, column: 13, scope: !14)
!1177 = !DILocation(line: 167, column: 23, scope: !14)
!1178 = !DILocation(line: 167, column: 30, scope: !14)
!1179 = !DILocation(line: 168, column: 9, scope: !443)
!1180 = !DILocation(line: 168, column: 9, scope: !14)
!1181 = !DILocation(line: 167, column: 2, scope: !14)
!1182 = !DILocation(line: 171, column: 11, scope: !446)
!1183 = !DILocation(line: 171, column: 11, scope: !448)
!1184 = !DILocation(line: 171, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !448, file: !2, line: 171, column: 11)
!1186 = !DILocation(line: 171, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 171, column: 11)
!1188 = !DILocation(line: 171, column: 11, scope: !14)
!1189 = !DILocation(line: 171, column: 9, scope: !14)
!1190 = !DILocation(line: 172, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !14, file: !2, line: 172, column: 6)
!1192 = !DILocation(line: 172, column: 13, scope: !1191)
!1193 = !DILocation(line: 172, column: 6, scope: !14)
!1194 = !DILocation(line: 173, column: 3, scope: !1191)
!1195 = !DILocation(line: 175, column: 9, scope: !14)
!1196 = !DILocation(line: 175, column: 2, scope: !14)
!1197 = !DILocation(line: 176, column: 1, scope: !14)
!1198 = distinct !DISubprogram(name: "efi_open_volume", scope: !2, file: !2, line: 74, type: !1199, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!17, !477, !20}
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1209, !1211}
!1202 = !DILocalVariable(name: "image", arg: 1, scope: !1198, file: !2, line: 74, type: !477)
!1203 = !DILocalVariable(name: "fh", arg: 2, scope: !1198, file: !2, line: 75, type: !20)
!1204 = !DILocalVariable(name: "fs_proto", scope: !1198, file: !2, line: 77, type: !73)
!1205 = !DILocalVariable(name: "io", scope: !1198, file: !2, line: 78, type: !409)
!1206 = !DILocalVariable(name: "status", scope: !1198, file: !2, line: 79, type: !17)
!1207 = !DILocalVariable(name: "__pad", scope: !1208, file: !2, line: 81, type: !432)
!1208 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 81, column: 11)
!1209 = !DILocalVariable(name: "__inst", scope: !1210, file: !2, line: 88, type: !409)
!1210 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 88, column: 11)
!1211 = !DILocalVariable(name: "__pad", scope: !1212, file: !2, line: 88, type: !432)
!1212 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 88, column: 11)
!1213 = !DILocation(line: 74, column: 57, scope: !1198)
!1214 = !DILocation(line: 75, column: 31, scope: !1198)
!1215 = !DILocation(line: 77, column: 2, scope: !1198)
!1216 = !DILocation(line: 77, column: 13, scope: !1198)
!1217 = !DILocation(line: 78, column: 2, scope: !1198)
!1218 = !DILocation(line: 78, column: 37, scope: !1198)
!1219 = !DILocation(line: 79, column: 2, scope: !1198)
!1220 = !DILocation(line: 79, column: 15, scope: !1198)
!1221 = !DILocation(line: 81, column: 11, scope: !1198)
!1222 = !DILocation(line: 81, column: 11, scope: !1208)
!1223 = !DILocation(line: 81, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 81, column: 11)
!1225 = !DILocation(line: 81, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 81, column: 11)
!1227 = !DILocation(line: 81, column: 9, scope: !1198)
!1228 = !DILocation(line: 83, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 83, column: 6)
!1230 = !DILocation(line: 83, column: 13, scope: !1229)
!1231 = !DILocation(line: 83, column: 6, scope: !1198)
!1232 = !DILocation(line: 84, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 83, column: 29)
!1234 = !DILocation(line: 85, column: 10, scope: !1233)
!1235 = !DILocation(line: 85, column: 3, scope: !1233)
!1236 = !DILocation(line: 88, column: 11, scope: !1210)
!1237 = !DILocation(line: 88, column: 11, scope: !1212)
!1238 = !DILocation(line: 88, column: 11, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 88, column: 11)
!1240 = !DILocation(line: 88, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 88, column: 11)
!1242 = !DILocation(line: 88, column: 11, scope: !1198)
!1243 = !DILocation(line: 88, column: 9, scope: !1198)
!1244 = !DILocation(line: 89, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 89, column: 6)
!1246 = !DILocation(line: 89, column: 13, scope: !1245)
!1247 = !DILocation(line: 89, column: 6, scope: !1198)
!1248 = !DILocation(line: 90, column: 3, scope: !1245)
!1249 = !DILocation(line: 92, column: 9, scope: !1198)
!1250 = !DILocation(line: 92, column: 2, scope: !1198)
!1251 = !DILocation(line: 93, column: 1, scope: !1198)
!1252 = distinct !DISubprogram(name: "efi_open_file", scope: !2, file: !2, line: 37, type: !1253, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!17, !21, !106, !20, !53}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1267, !1269, !1271, !1273, !1277}
!1256 = !DILocalVariable(name: "volume", arg: 1, scope: !1252, file: !2, line: 37, type: !21)
!1257 = !DILocalVariable(name: "fi", arg: 2, scope: !1252, file: !2, line: 38, type: !106)
!1258 = !DILocalVariable(name: "handle", arg: 3, scope: !1252, file: !2, line: 39, type: !20)
!1259 = !DILocalVariable(name: "file_size", arg: 4, scope: !1252, file: !2, line: 40, type: !53)
!1260 = !DILocalVariable(name: "info_guid", scope: !1252, file: !2, line: 42, type: !73)
!1261 = !DILocalVariable(name: "fh", scope: !1252, file: !2, line: 43, type: !21)
!1262 = !DILocalVariable(name: "info_sz", scope: !1252, file: !2, line: 44, type: !19)
!1263 = !DILocalVariable(name: "status", scope: !1252, file: !2, line: 45, type: !17)
!1264 = !DILocalVariable(name: "c", scope: !1252, file: !2, line: 46, type: !39)
!1265 = !DILocalVariable(name: "__inst", scope: !1266, file: !2, line: 54, type: !21)
!1266 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 54, column: 11)
!1267 = !DILocalVariable(name: "__pad", scope: !1268, file: !2, line: 54, type: !432)
!1268 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 54, column: 11)
!1269 = !DILocalVariable(name: "__inst", scope: !1270, file: !2, line: 62, type: !21)
!1270 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 62, column: 11)
!1271 = !DILocalVariable(name: "__pad", scope: !1272, file: !2, line: 62, type: !432)
!1272 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 62, column: 11)
!1273 = !DILocalVariable(name: "__inst", scope: !1274, file: !2, line: 65, type: !21)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 65, column: 3)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 63, column: 29)
!1276 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 63, column: 6)
!1277 = !DILocalVariable(name: "__pad", scope: !1278, file: !2, line: 65, type: !432)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 65, column: 3)
!1279 = !DILocation(line: 37, column: 56, scope: !1252)
!1280 = !DILocation(line: 38, column: 21, scope: !1252)
!1281 = !DILocation(line: 39, column: 29, scope: !1252)
!1282 = !DILocation(line: 40, column: 22, scope: !1252)
!1283 = !DILocation(line: 42, column: 2, scope: !1252)
!1284 = !DILocation(line: 42, column: 13, scope: !1252)
!1285 = !DILocation(line: 43, column: 2, scope: !1252)
!1286 = !DILocation(line: 43, column: 23, scope: !1252)
!1287 = !DILocation(line: 44, column: 2, scope: !1252)
!1288 = !DILocation(line: 44, column: 16, scope: !1252)
!1289 = !DILocation(line: 45, column: 2, scope: !1252)
!1290 = !DILocation(line: 45, column: 15, scope: !1252)
!1291 = !DILocation(line: 46, column: 2, scope: !1252)
!1292 = !DILocation(line: 46, column: 16, scope: !1252)
!1293 = !DILocation(line: 49, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 49, column: 2)
!1295 = !DILocation(line: 49, column: 15, scope: !1294)
!1296 = !DILocation(line: 49, column: 9, scope: !1294)
!1297 = !DILocation(line: 49, column: 7, scope: !1294)
!1298 = !DILocation(line: 49, column: 26, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 49, column: 2)
!1300 = !DILocation(line: 49, column: 25, scope: !1299)
!1301 = !DILocation(line: 49, column: 28, scope: !1299)
!1302 = !DILocation(line: 49, column: 2, scope: !1294)
!1303 = !DILocation(line: 50, column: 8, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 50, column: 7)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 49, column: 43)
!1306 = !DILocation(line: 50, column: 7, scope: !1304)
!1307 = !DILocation(line: 50, column: 10, scope: !1304)
!1308 = !DILocation(line: 50, column: 7, scope: !1305)
!1309 = !DILocation(line: 51, column: 5, scope: !1304)
!1310 = !DILocation(line: 51, column: 7, scope: !1304)
!1311 = !DILocation(line: 51, column: 4, scope: !1304)
!1312 = !DILocation(line: 52, column: 2, scope: !1305)
!1313 = !DILocation(line: 49, column: 39, scope: !1299)
!1314 = !DILocation(line: 49, column: 2, scope: !1299)
!1315 = distinct !{!1315, !1302, !1316, !938, !939}
!1316 = !DILocation(line: 52, column: 2, scope: !1294)
!1317 = !DILocation(line: 54, column: 11, scope: !1266)
!1318 = !DILocation(line: 54, column: 11, scope: !1268)
!1319 = !DILocation(line: 54, column: 11, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 54, column: 11)
!1321 = !DILocation(line: 54, column: 11, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 54, column: 11)
!1323 = !DILocation(line: 54, column: 11, scope: !1252)
!1324 = !DILocation(line: 54, column: 9, scope: !1252)
!1325 = !DILocation(line: 56, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 56, column: 6)
!1327 = !DILocation(line: 56, column: 13, scope: !1326)
!1328 = !DILocation(line: 56, column: 6, scope: !1252)
!1329 = !DILocation(line: 57, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 56, column: 29)
!1331 = !DILocation(line: 58, column: 10, scope: !1330)
!1332 = !DILocation(line: 58, column: 3, scope: !1330)
!1333 = !DILocation(line: 61, column: 10, scope: !1252)
!1334 = !DILocation(line: 62, column: 11, scope: !1270)
!1335 = !DILocation(line: 62, column: 11, scope: !1272)
!1336 = !DILocation(line: 62, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 62, column: 11)
!1338 = !DILocation(line: 62, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 62, column: 11)
!1340 = !DILocation(line: 62, column: 11, scope: !1252)
!1341 = !DILocation(line: 62, column: 9, scope: !1252)
!1342 = !DILocation(line: 63, column: 6, scope: !1276)
!1343 = !DILocation(line: 63, column: 13, scope: !1276)
!1344 = !DILocation(line: 63, column: 6, scope: !1252)
!1345 = !DILocation(line: 64, column: 3, scope: !1275)
!1346 = !DILocation(line: 65, column: 3, scope: !1274)
!1347 = !DILocation(line: 65, column: 3, scope: !1278)
!1348 = !DILocation(line: 65, column: 3, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 65, column: 3)
!1350 = !DILocation(line: 65, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 65, column: 3)
!1352 = !DILocation(line: 65, column: 3, scope: !1275)
!1353 = !DILocation(line: 66, column: 10, scope: !1275)
!1354 = !DILocation(line: 66, column: 3, scope: !1275)
!1355 = !DILocation(line: 69, column: 12, scope: !1252)
!1356 = !DILocation(line: 69, column: 3, scope: !1252)
!1357 = !DILocation(line: 69, column: 10, scope: !1252)
!1358 = !DILocation(line: 70, column: 15, scope: !1252)
!1359 = !DILocation(line: 70, column: 19, scope: !1252)
!1360 = !DILocation(line: 70, column: 24, scope: !1252)
!1361 = !DILocation(line: 70, column: 3, scope: !1252)
!1362 = !DILocation(line: 70, column: 13, scope: !1252)
!1363 = !DILocation(line: 71, column: 2, scope: !1252)
!1364 = !DILocation(line: 72, column: 1, scope: !1252)
!1365 = !DISubprogram(name: "efi_allocate_pages", scope: !23, file: !23, line: 983, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!17, !19, !53, !19}
!1368 = !DISubprogram(name: "efi_printk", scope: !23, file: !23, line: 972, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!162, !1371, null}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1373 = !DISubprogram(name: "memcpy", scope: !1374, file: !1374, line: 18, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!54, !54, !160, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !266, line: 61, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1379, line: 72, baseType: !1380)
!1379 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1379, line: 16, baseType: !19)
!1381 = !DISubprogram(name: "efi_free", scope: !23, file: !23, line: 974, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !19, !19}
!1384 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !997, file: !997, line: 346, type: !1385, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!17, !30}
!1387 = !{!1388}
!1388 = !DILocalVariable(name: "status", arg: 1, scope: !1384, file: !997, line: 346, type: !30)
!1389 = !DILocation(line: 346, column: 57, scope: !1384)
!1390 = !DILocation(line: 349, column: 21, scope: !1384)
!1391 = !DILocation(line: 349, column: 15, scope: !1384)
!1392 = !DILocation(line: 349, column: 9, scope: !1384)
!1393 = !DILocation(line: 349, column: 2, scope: !1384)
!1394 = !DISubprogram(name: "__efi64_thunk", scope: !997, file: !997, line: 158, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!30, !94, null}
!1397 = distinct !DISubprogram(name: "efi_is_64bit", scope: !997, file: !997, line: 198, type: !998, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146)
!1398 = !DILocation(line: 202, column: 9, scope: !1397)
!1399 = !DILocation(line: 202, column: 2, scope: !1397)
!1400 = !DISubprogram(name: "memcmp", scope: !1401, file: !1401, line: 196, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1401 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!162, !160, !160, !1378}
!1404 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !997, file: !997, line: 239, type: !1405, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!54, !54}
!1407 = !{!1408}
!1408 = !DILocalVariable(name: "p", arg: 1, scope: !1404, file: !997, line: 239, type: !54)
!1409 = !DILocation(line: 239, column: 44, scope: !1404)
!1410 = !DILocation(line: 241, column: 10, scope: !1404)
!1411 = !DILocation(line: 241, column: 2, scope: !1404)
!1412 = !DILocation(line: 241, column: 16, scope: !1404)
!1413 = !DILocation(line: 242, column: 9, scope: !1404)
!1414 = !DILocation(line: 242, column: 2, scope: !1404)
!1415 = distinct !DISubprogram(name: "ror64", scope: !1416, file: !1416, line: 115, type: !1417, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1419)
!1416 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!32, !32, !96}
!1419 = !{!1420, !1421}
!1420 = !DILocalVariable(name: "word", arg: 1, scope: !1415, file: !1416, line: 115, type: !32)
!1421 = !DILocalVariable(name: "shift", arg: 2, scope: !1415, file: !1416, line: 115, type: !96)
!1422 = !DILocation(line: 115, column: 33, scope: !1415)
!1423 = !DILocation(line: 115, column: 52, scope: !1415)
!1424 = !DILocation(line: 117, column: 10, scope: !1415)
!1425 = !DILocation(line: 117, column: 19, scope: !1415)
!1426 = !DILocation(line: 117, column: 25, scope: !1415)
!1427 = !DILocation(line: 117, column: 15, scope: !1415)
!1428 = !DILocation(line: 117, column: 35, scope: !1415)
!1429 = !DILocation(line: 117, column: 46, scope: !1415)
!1430 = !DILocation(line: 117, column: 45, scope: !1415)
!1431 = !DILocation(line: 117, column: 53, scope: !1415)
!1432 = !DILocation(line: 117, column: 40, scope: !1415)
!1433 = !DILocation(line: 117, column: 32, scope: !1415)
!1434 = !DILocation(line: 117, column: 2, scope: !1415)
!1435 = distinct !DISubprogram(name: "rol32", scope: !1416, file: !1416, line: 125, type: !1436, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !146, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!95, !95, !96}
!1438 = !{!1439, !1440}
!1439 = !DILocalVariable(name: "word", arg: 1, scope: !1435, file: !1416, line: 125, type: !95)
!1440 = !DILocalVariable(name: "shift", arg: 2, scope: !1435, file: !1416, line: 125, type: !96)
!1441 = !DILocation(line: 125, column: 33, scope: !1435)
!1442 = !DILocation(line: 125, column: 52, scope: !1435)
!1443 = !DILocation(line: 127, column: 10, scope: !1435)
!1444 = !DILocation(line: 127, column: 19, scope: !1435)
!1445 = !DILocation(line: 127, column: 25, scope: !1435)
!1446 = !DILocation(line: 127, column: 15, scope: !1435)
!1447 = !DILocation(line: 127, column: 35, scope: !1435)
!1448 = !DILocation(line: 127, column: 46, scope: !1435)
!1449 = !DILocation(line: 127, column: 45, scope: !1435)
!1450 = !DILocation(line: 127, column: 53, scope: !1435)
!1451 = !DILocation(line: 127, column: 40, scope: !1435)
!1452 = !DILocation(line: 127, column: 32, scope: !1435)
!1453 = !DILocation(line: 127, column: 2, scope: !1435)
