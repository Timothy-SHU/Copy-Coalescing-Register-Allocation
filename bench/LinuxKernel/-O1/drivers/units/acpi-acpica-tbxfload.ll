; ModuleID = 'drivers/acpi/acpica/tbxfload.c'
source_filename = "drivers/acpi/acpica/tbxfload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_load_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_load_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_unload_parent_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_unload_parent_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_unload_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_unload_table ; .previous"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }

@_acpi_module_name = internal constant [9 x i8] c"tbxfload\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"During Region initialization\00", align 1, !dbg !787
@.str.1 = private unnamed_addr constant [41 x i8] c"While loading namespace from ACPI tables\00", align 1, !dbg !792
@acpi_gbl_namespace_initialized = external dso_local global i8, align 1
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1, !dbg !797
@acpi_gbl_DSDT = external dso_local global ptr, align 8
@acpi_gbl_copy_dsdt_locally = external dso_local global i8, align 1
@acpi_gbl_original_dsdt_header = external dso_local global %struct.acpi_table_header, align 1
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"[DSDT] table load failed\00", align 1, !dbg !802
@.str.4 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1, !dbg !807
@.str.5 = private unnamed_addr constant [5 x i8] c"PSDT\00", align 1, !dbg !809
@.str.6 = private unnamed_addr constant [5 x i8] c"OSDT\00", align 1, !dbg !811
@.str.7 = private unnamed_addr constant [34 x i8] c"(%4.4s:%8.8s) while loading table\00", align 1, !dbg !813
@.str.8 = private unnamed_addr constant [52 x i8] c"%u ACPI AML tables successfully acquired and loaded\00", align 1, !dbg !818
@.str.9 = private unnamed_addr constant [38 x i8] c"%u table load failures, %u successful\00", align 1, !dbg !823
@.str.10 = private unnamed_addr constant [39 x i8] c"Host-directed Dynamic ACPI Table Load:\00", align 1, !dbg !828
@__UNIQUE_ID___addressable_acpi_load_table174 = internal global ptr @acpi_load_table, section ".discard.addressable", align 8, !dbg !833
@__UNIQUE_ID___addressable_acpi_unload_parent_table175 = internal global ptr @acpi_unload_parent_table, section ".discard.addressable", align 8, !dbg !835
@__UNIQUE_ID___addressable_acpi_unload_table176 = internal global ptr @acpi_unload_table, section ".discard.addressable", align 8, !dbg !837
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_load_table174, ptr @__UNIQUE_ID___addressable_acpi_unload_parent_table175, ptr @__UNIQUE_ID___addressable_acpi_unload_table176], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_load_tables() #0 section ".init.text" align 16 !dbg !850 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %status, metadata !854, metadata !DIExpression()), !dbg !856
  %call = call i32 @acpi_ev_install_region_handlers() #7, !dbg !857
  store i32 %call, ptr %status, align 4, !dbg !858
  %0 = load i32, ptr %status, align 4, !dbg !859
  %tobool = icmp ne i32 %0, 0, !dbg !859
  br i1 %tobool, label %if.then, label %if.end, !dbg !861

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !862
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 52, i32 noundef %1, ptr noundef @.str) #7, !dbg !862
  %2 = load i32, ptr %status, align 4, !dbg !864
  store i32 %2, ptr %retval, align 4, !dbg !864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !864

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_tb_load_namespace() #7, !dbg !865
  store i32 %call1, ptr %status, align 4, !dbg !866
  %3 = load i32, ptr %status, align 4, !dbg !867
  %cmp = icmp eq i32 %3, 16387, !dbg !869
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !870

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %status, align 4, !dbg !871
  br label %if.end3, !dbg !873

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %status, align 4, !dbg !874
  %tobool4 = icmp ne i32 %4, 0, !dbg !874
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !876

if.then5:                                         ; preds = %if.end3
  %5 = load i32, ptr %status, align 4, !dbg !877
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 68, i32 noundef %5, ptr noundef @.str.1) #7, !dbg !877
  br label %if.end6, !dbg !879

if.end6:                                          ; preds = %if.then5, %if.end3
  %call7 = call i32 @acpi_ns_initialize_objects() #7, !dbg !880
  store i32 %call7, ptr %status, align 4, !dbg !881
  %6 = load i32, ptr %status, align 4, !dbg !882
  %tobool8 = icmp ne i32 %6, 0, !dbg !882
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !884

if.then9:                                         ; preds = %if.end6
  store i8 1, ptr @acpi_gbl_namespace_initialized, align 1, !dbg !885
  br label %if.end10, !dbg !887

if.end10:                                         ; preds = %if.then9, %if.end6
  %7 = load i32, ptr %status, align 4, !dbg !888
  store i32 %7, ptr %retval, align 4, !dbg !888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !888

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !889
  %8 = load i32, ptr %retval, align 4, !dbg !889
  ret i32 %8, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !890 dso_local i32 @acpi_ev_install_region_handlers() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !892 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_load_namespace() #4 align 16 !dbg !897 {
entry:
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %new_dsdt = alloca ptr, align 8
  %table = alloca ptr, align 8
  %tables_loaded = alloca i32, align 4
  %tables_failed = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %status, metadata !899, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %i, metadata !900, metadata !DIExpression()), !dbg !935
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_dsdt) #6, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %new_dsdt, metadata !901, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #6, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %table, metadata !918, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 4, ptr %tables_loaded) #6, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %tables_loaded, metadata !929, metadata !DIExpression()), !dbg !941
  store i32 0, ptr %tables_loaded, align 4, !dbg !941
  call void @llvm.lifetime.start.p0(i64 4, ptr %tables_failed) #6, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %tables_failed, metadata !930, metadata !DIExpression()), !dbg !943
  store i32 0, ptr %tables_failed, align 4, !dbg !943
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !944
  %0 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !945
  %1 = load i32, ptr @acpi_gbl_dsdt_index, align 4, !dbg !946
  %idxprom = zext i32 %1 to i64, !dbg !947
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %0, i64 %idxprom, !dbg !947
  store ptr %arrayidx, ptr %table, align 8, !dbg !948
  %2 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !949
  %tobool = icmp ne i32 %2, 0, !dbg !951
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !952

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !953
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %3, i32 0, i32 3, !dbg !953
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !953
  %4 = ptrtoint ptr %arraydecay to i64, !dbg !953
  %5 = inttoptr i64 %4 to ptr, !dbg !953
  %6 = load i32, ptr %5, align 4, !dbg !953
  %7 = load i32, ptr @.str.2, align 4, !dbg !953
  %cmp = icmp eq i32 %6, %7, !dbg !953
  br i1 %cmp, label %lor.lhs.false1, label %if.then, !dbg !954

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %table, align 8, !dbg !955
  %call2 = call i32 @acpi_tb_validate_table(ptr noundef %8) #7, !dbg !955
  %tobool3 = icmp ne i32 %call2, 0, !dbg !955
  br i1 %tobool3, label %if.then, label %if.end, !dbg !956

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 2, ptr %status, align 4, !dbg !957
  br label %unlock_and_exit, !dbg !959

if.end:                                           ; preds = %lor.lhs.false1
  %9 = load ptr, ptr %table, align 8, !dbg !960
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %9, i32 0, i32 1, !dbg !961
  %10 = load ptr, ptr %pointer, align 8, !dbg !961
  store ptr %10, ptr @acpi_gbl_DSDT, align 8, !dbg !962
  %11 = load i8, ptr @acpi_gbl_copy_dsdt_locally, align 1, !dbg !963
  %tobool4 = icmp ne i8 %11, 0, !dbg !963
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !965

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr @acpi_gbl_dsdt_index, align 4, !dbg !966
  %call6 = call ptr @acpi_tb_copy_dsdt(i32 noundef %12) #7, !dbg !968
  store ptr %call6, ptr %new_dsdt, align 8, !dbg !969
  %13 = load ptr, ptr %new_dsdt, align 8, !dbg !970
  %tobool7 = icmp ne ptr %13, null, !dbg !970
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !972

if.then8:                                         ; preds = %if.then5
  %14 = load ptr, ptr %new_dsdt, align 8, !dbg !973
  store ptr %14, ptr @acpi_gbl_DSDT, align 8, !dbg !975
  br label %if.end9, !dbg !976

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10, !dbg !977

if.end10:                                         ; preds = %if.end9, %if.end
  %15 = load ptr, ptr @acpi_gbl_DSDT, align 8, !dbg !978
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @acpi_gbl_original_dsdt_header, ptr align 1 %15, i64 36, i1 false), !dbg !979
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !980
  %16 = load i32, ptr @acpi_gbl_dsdt_index, align 4, !dbg !981
  %17 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !982
  %call12 = call i32 @acpi_ns_load_table(i32 noundef %16, ptr noundef %17) #7, !dbg !983
  store i32 %call12, ptr %status, align 4, !dbg !984
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !985
  %18 = load i32, ptr %status, align 4, !dbg !986
  %tobool14 = icmp ne i32 %18, 0, !dbg !986
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !988

if.then15:                                        ; preds = %if.end10
  %19 = load i32, ptr %status, align 4, !dbg !989
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 161, i32 noundef %19, ptr noundef @.str.3) #7, !dbg !989
  %20 = load i32, ptr %tables_failed, align 4, !dbg !991
  %inc = add i32 %20, 1, !dbg !991
  store i32 %inc, ptr %tables_failed, align 4, !dbg !991
  br label %if.end17, !dbg !992

if.else:                                          ; preds = %if.end10
  %21 = load i32, ptr %tables_loaded, align 4, !dbg !993
  %inc16 = add i32 %21, 1, !dbg !993
  store i32 %inc16, ptr %tables_loaded, align 4, !dbg !993
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  store i32 0, ptr %i, align 4, !dbg !995
  br label %for.cond, !dbg !997

for.cond:                                         ; preds = %for.inc, %if.end17
  %22 = load i32, ptr %i, align 4, !dbg !998
  %23 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !1000
  %cmp18 = icmp ult i32 %22, %23, !dbg !1001
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1002

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !1003
  %25 = load i32, ptr %i, align 4, !dbg !1005
  %idxprom19 = zext i32 %25 to i64, !dbg !1006
  %arrayidx20 = getelementptr %struct.acpi_table_desc, ptr %24, i64 %idxprom19, !dbg !1006
  store ptr %arrayidx20, ptr %table, align 8, !dbg !1007
  %26 = load ptr, ptr %table, align 8, !dbg !1008
  %address = getelementptr inbounds %struct.acpi_table_desc, ptr %26, i32 0, i32 0, !dbg !1010
  %27 = load i64, ptr %address, align 8, !dbg !1010
  %tobool21 = icmp ne i64 %27, 0, !dbg !1008
  br i1 %tobool21, label %lor.lhs.false22, label %if.then36, !dbg !1011

lor.lhs.false22:                                  ; preds = %for.body
  %28 = load ptr, ptr %table, align 8, !dbg !1012
  %signature23 = getelementptr inbounds %struct.acpi_table_desc, ptr %28, i32 0, i32 3, !dbg !1012
  %arraydecay24 = getelementptr inbounds [4 x i8], ptr %signature23, i64 0, i64 0, !dbg !1012
  %29 = ptrtoint ptr %arraydecay24 to i64, !dbg !1012
  %30 = inttoptr i64 %29 to ptr, !dbg !1012
  %31 = load i32, ptr %30, align 4, !dbg !1012
  %32 = load i32, ptr @.str.4, align 4, !dbg !1012
  %cmp25 = icmp eq i32 %31, %32, !dbg !1012
  br i1 %cmp25, label %lor.lhs.false33, label %land.lhs.true, !dbg !1013

land.lhs.true:                                    ; preds = %lor.lhs.false22
  %33 = load ptr, ptr %table, align 8, !dbg !1014
  %signature26 = getelementptr inbounds %struct.acpi_table_desc, ptr %33, i32 0, i32 3, !dbg !1014
  %arraydecay27 = getelementptr inbounds [4 x i8], ptr %signature26, i64 0, i64 0, !dbg !1014
  %34 = ptrtoint ptr %arraydecay27 to i64, !dbg !1014
  %35 = inttoptr i64 %34 to ptr, !dbg !1014
  %36 = load i32, ptr %35, align 4, !dbg !1014
  %37 = load i32, ptr @.str.5, align 4, !dbg !1014
  %cmp28 = icmp eq i32 %36, %37, !dbg !1014
  br i1 %cmp28, label %lor.lhs.false33, label %land.lhs.true29, !dbg !1015

land.lhs.true29:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %table, align 8, !dbg !1016
  %signature30 = getelementptr inbounds %struct.acpi_table_desc, ptr %38, i32 0, i32 3, !dbg !1016
  %arraydecay31 = getelementptr inbounds [4 x i8], ptr %signature30, i64 0, i64 0, !dbg !1016
  %39 = ptrtoint ptr %arraydecay31 to i64, !dbg !1016
  %40 = inttoptr i64 %39 to ptr, !dbg !1016
  %41 = load i32, ptr %40, align 4, !dbg !1016
  %42 = load i32, ptr @.str.6, align 4, !dbg !1016
  %cmp32 = icmp eq i32 %41, %42, !dbg !1016
  br i1 %cmp32, label %lor.lhs.false33, label %if.then36, !dbg !1017

lor.lhs.false33:                                  ; preds = %land.lhs.true29, %land.lhs.true, %lor.lhs.false22
  %43 = load ptr, ptr %table, align 8, !dbg !1018
  %call34 = call i32 @acpi_tb_validate_table(ptr noundef %43) #7, !dbg !1018
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1018
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1019

if.then36:                                        ; preds = %lor.lhs.false33, %land.lhs.true29, %for.body
  br label %for.inc, !dbg !1020

if.end37:                                         ; preds = %lor.lhs.false33
  %call38 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !1022
  %44 = load i32, ptr %i, align 4, !dbg !1023
  %45 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1024
  %call39 = call i32 @acpi_ns_load_table(i32 noundef %44, ptr noundef %45) #7, !dbg !1025
  store i32 %call39, ptr %status, align 4, !dbg !1026
  %call40 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !1027
  %46 = load i32, ptr %status, align 4, !dbg !1028
  %tobool41 = icmp ne i32 %46, 0, !dbg !1028
  br i1 %tobool41, label %if.then42, label %if.else48, !dbg !1030

if.then42:                                        ; preds = %if.end37
  %47 = load i32, ptr %status, align 4, !dbg !1031
  %48 = load ptr, ptr %table, align 8, !dbg !1031
  %signature43 = getelementptr inbounds %struct.acpi_table_desc, ptr %48, i32 0, i32 3, !dbg !1031
  %arraydecay44 = getelementptr inbounds [4 x i8], ptr %signature43, i64 0, i64 0, !dbg !1031
  %49 = load ptr, ptr %table, align 8, !dbg !1031
  %pointer45 = getelementptr inbounds %struct.acpi_table_desc, ptr %49, i32 0, i32 1, !dbg !1031
  %50 = load ptr, ptr %pointer45, align 8, !dbg !1031
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %50, i32 0, i32 5, !dbg !1031
  %arraydecay46 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !1031
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 189, i32 noundef %47, ptr noundef @.str.7, ptr noundef %arraydecay44, ptr noundef %arraydecay46) #7, !dbg !1031
  %51 = load i32, ptr %tables_failed, align 4, !dbg !1033
  %inc47 = add i32 %51, 1, !dbg !1033
  store i32 %inc47, ptr %tables_failed, align 4, !dbg !1033
  br label %if.end50, !dbg !1034

if.else48:                                        ; preds = %if.end37
  %52 = load i32, ptr %tables_loaded, align 4, !dbg !1035
  %inc49 = add i32 %52, 1, !dbg !1035
  store i32 %inc49, ptr %tables_loaded, align 4, !dbg !1035
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then42
  br label %for.inc, !dbg !1037

for.inc:                                          ; preds = %if.end50, %if.then36
  %53 = load i32, ptr %i, align 4, !dbg !1038
  %inc51 = add i32 %53, 1, !dbg !1038
  store i32 %inc51, ptr %i, align 4, !dbg !1038
  br label %for.cond, !dbg !1039, !llvm.loop !1040

for.end:                                          ; preds = %for.cond
  %54 = load i32, ptr %tables_failed, align 4, !dbg !1044
  %tobool52 = icmp ne i32 %54, 0, !dbg !1044
  br i1 %tobool52, label %if.else54, label %if.then53, !dbg !1046

if.then53:                                        ; preds = %for.end
  %55 = load i32, ptr %tables_loaded, align 4, !dbg !1047
  call void (ptr, ...) @acpi_info(ptr noundef @.str.8, i32 noundef %55) #7, !dbg !1047
  br label %if.end55, !dbg !1049

if.else54:                                        ; preds = %for.end
  %56 = load i32, ptr %tables_failed, align 4, !dbg !1050
  %57 = load i32, ptr %tables_loaded, align 4, !dbg !1050
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 208, ptr noundef @.str.9, i32 noundef %56, i32 noundef %57) #7, !dbg !1050
  store i32 16387, ptr %status, align 4, !dbg !1052
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  br label %unlock_and_exit, !dbg !1044

unlock_and_exit:                                  ; preds = %if.end55, %if.then
  call void @llvm.dbg.label(metadata !931), !dbg !1053
  %call56 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !1054
  %58 = load i32, ptr %status, align 4, !dbg !1055
  call void @llvm.lifetime.end.p0(i64 4, ptr %tables_failed) #6, !dbg !1056
  call void @llvm.lifetime.end.p0(i64 4, ptr %tables_loaded) #6, !dbg !1056
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #6, !dbg !1056
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_dsdt) #6, !dbg !1056
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1056
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1056
  ret i32 %58, !dbg !1055
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1057 dso_local i32 @acpi_ns_initialize_objects() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1059 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1064 dso_local i32 @acpi_tb_validate_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1068 dso_local ptr @acpi_tb_copy_dsdt(i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1071 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1072 dso_local i32 @acpi_ns_load_table(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1075 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1078 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_install_table(ptr noundef %table) #0 section ".init.text" align 16 !dbg !1081 {
entry:
  %table.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1085, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1086, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #6, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1087, metadata !DIExpression()), !dbg !1092
  %0 = load ptr, ptr %table.addr, align 8, !dbg !1093
  %1 = ptrtoint ptr %0 to i64, !dbg !1093
  %2 = load ptr, ptr %table.addr, align 8, !dbg !1094
  %call = call i32 @acpi_tb_install_standard_table(i64 noundef %1, i8 noundef zeroext 0, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %table_index) #7, !dbg !1095
  store i32 %call, ptr %status, align 4, !dbg !1096
  %3 = load i32, ptr %status, align 4, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #6, !dbg !1098
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1098
  ret i32 %3, !dbg !1097
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1099 dso_local i32 @acpi_tb_install_standard_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_install_physical_table(i64 noundef %address) #0 section ".init.text" align 16 !dbg !1102 {
entry:
  %address.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1106, metadata !DIExpression()), !dbg !1109
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #6, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1108, metadata !DIExpression()), !dbg !1113
  %0 = load i64, ptr %address.addr, align 8, !dbg !1114
  %call = call i32 @acpi_tb_install_standard_table(i64 noundef %0, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %table_index) #7, !dbg !1115
  store i32 %call, ptr %status, align 4, !dbg !1116
  %1 = load i32, ptr %status, align 4, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #6, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1118
  ret i32 %1, !dbg !1117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_load_table(ptr noundef %table, ptr noundef %table_idx) #4 align 16 !dbg !1119 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %table_idx.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1123, metadata !DIExpression()), !dbg !1127
  store ptr %table_idx, ptr %table_idx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_idx.addr, metadata !1124, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1125, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #6, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !1126, metadata !DIExpression()), !dbg !1132
  %0 = load ptr, ptr %table.addr, align 8, !dbg !1133
  %tobool = icmp ne ptr %0, null, !dbg !1133
  br i1 %tobool, label %if.end, label %if.then, !dbg !1135

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1136

if.end:                                           ; preds = %entry
  call void (ptr, ...) @acpi_info(ptr noundef @.str.10) #7, !dbg !1138
  %1 = load ptr, ptr %table.addr, align 8, !dbg !1139
  %2 = ptrtoint ptr %1 to i64, !dbg !1139
  %3 = load ptr, ptr %table.addr, align 8, !dbg !1140
  %call = call i32 @acpi_tb_install_and_load_table(i64 noundef %2, i8 noundef zeroext 0, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %table_index) #7, !dbg !1141
  store i32 %call, ptr %status, align 4, !dbg !1142
  %4 = load ptr, ptr %table_idx.addr, align 8, !dbg !1143
  %tobool1 = icmp ne ptr %4, null, !dbg !1143
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1145

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %table_index, align 4, !dbg !1146
  %6 = load ptr, ptr %table_idx.addr, align 8, !dbg !1148
  store i32 %5, ptr %6, align 4, !dbg !1149
  br label %if.end3, !dbg !1150

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %status, align 4, !dbg !1151
  %tobool4 = icmp ne i32 %7, 0, !dbg !1151
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1153

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @acpi_ns_initialize_objects() #7, !dbg !1154
  br label %if.end7, !dbg !1156

if.end7:                                          ; preds = %if.then5, %if.end3
  %8 = load i32, ptr %status, align 4, !dbg !1157
  store i32 %8, ptr %retval, align 4, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #6, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1158
  %9 = load i32, ptr %retval, align 4, !dbg !1158
  ret i32 %9, !dbg !1158
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1159 dso_local i32 @acpi_tb_install_and_load_table(i64 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_unload_parent_table(ptr noundef %object) #4 align 16 !dbg !1162 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1166, metadata !DIExpression()), !dbg !1171
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1167, metadata !DIExpression()), !dbg !1173
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1174
  %1 = ptrtoint ptr %0 to i64, !dbg !1174
  %2 = inttoptr i64 %1 to ptr, !dbg !1174
  store ptr %2, ptr %node, align 8, !dbg !1173
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1168, metadata !DIExpression()), !dbg !1176
  store i32 6, ptr %status, align 4, !dbg !1176
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #6, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !1169, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1170, metadata !DIExpression()), !dbg !1180
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1181
  %tobool = icmp ne ptr %3, null, !dbg !1181
  br i1 %tobool, label %if.end, label %if.then, !dbg !1183

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1186
  %owner_id1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 8, !dbg !1187
  %5 = load i16, ptr %owner_id1, align 8, !dbg !1187
  store i16 %5, ptr %owner_id, align 2, !dbg !1188
  %6 = load i16, ptr %owner_id, align 2, !dbg !1189
  %tobool2 = icmp ne i16 %6, 0, !dbg !1189
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1191

if.then3:                                         ; preds = %if.end
  store i32 8, ptr %retval, align 4, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

if.end4:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !1194
  store i32 %call, ptr %status, align 4, !dbg !1195
  %7 = load i32, ptr %status, align 4, !dbg !1196
  %tobool5 = icmp ne i32 %7, 0, !dbg !1196
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1198

if.then6:                                         ; preds = %if.end4
  %8 = load i32, ptr %status, align 4, !dbg !1199
  store i32 %8, ptr %retval, align 4, !dbg !1199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1199

if.end7:                                          ; preds = %if.end4
  store i32 0, ptr %i, align 4, !dbg !1201
  br label %for.cond, !dbg !1203

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4, !dbg !1204
  %10 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !1206
  %cmp = icmp ult i32 %9, %10, !dbg !1207
  br i1 %cmp, label %for.body, label %for.end, !dbg !1208

for.body:                                         ; preds = %for.cond
  %11 = load i16, ptr %owner_id, align 2, !dbg !1209
  %conv = zext i16 %11 to i32, !dbg !1209
  %12 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !1212
  %13 = load i32, ptr %i, align 4, !dbg !1213
  %idxprom = zext i32 %13 to i64, !dbg !1214
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %12, i64 %idxprom, !dbg !1214
  %owner_id8 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 4, !dbg !1215
  %14 = load i16, ptr %owner_id8, align 8, !dbg !1215
  %conv9 = zext i16 %14 to i32, !dbg !1214
  %cmp10 = icmp ne i32 %conv, %conv9, !dbg !1216
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1217

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !1218

if.end13:                                         ; preds = %for.body
  %15 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !1220
  %16 = load i32, ptr %i, align 4, !dbg !1220
  %idxprom14 = zext i32 %16 to i64, !dbg !1220
  %arrayidx15 = getelementptr %struct.acpi_table_desc, ptr %15, i64 %idxprom14, !dbg !1220
  %signature = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx15, i32 0, i32 3, !dbg !1220
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1220
  %17 = ptrtoint ptr %arraydecay to i64, !dbg !1220
  %18 = inttoptr i64 %17 to ptr, !dbg !1220
  %19 = load i32, ptr %18, align 4, !dbg !1220
  %20 = load i32, ptr @.str.2, align 4, !dbg !1220
  %cmp16 = icmp eq i32 %19, %20, !dbg !1220
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1222

if.then18:                                        ; preds = %if.end13
  store i32 8, ptr %status, align 4, !dbg !1223
  br label %for.end, !dbg !1225

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !1226
  %21 = load i32, ptr %i, align 4, !dbg !1227
  %call21 = call i32 @acpi_tb_unload_table(i32 noundef %21) #7, !dbg !1228
  store i32 %call21, ptr %status, align 4, !dbg !1229
  %call22 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #7, !dbg !1230
  br label %for.end, !dbg !1231

for.inc:                                          ; preds = %if.then12
  %22 = load i32, ptr %i, align 4, !dbg !1232
  %inc = add i32 %22, 1, !dbg !1232
  store i32 %inc, ptr %i, align 4, !dbg !1232
  br label %for.cond, !dbg !1233, !llvm.loop !1234

for.end:                                          ; preds = %if.end19, %if.then18, %for.cond
  %call23 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #7, !dbg !1236
  %23 = load i32, ptr %status, align 4, !dbg !1237
  store i32 %23, ptr %retval, align 4, !dbg !1237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1237

cleanup:                                          ; preds = %for.end, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #6, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1238
  %24 = load i32, ptr %retval, align 4, !dbg !1238
  ret i32 %24, !dbg !1238
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1239 dso_local i32 @acpi_tb_unload_table(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_unload_table(i32 noundef %table_index) #4 align 16 !dbg !1242 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %table_index, ptr %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !1244, metadata !DIExpression()), !dbg !1246
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1245, metadata !DIExpression()), !dbg !1248
  %0 = load i32, ptr %table_index.addr, align 4, !dbg !1249
  %cmp = icmp eq i32 %0, 1, !dbg !1251
  br i1 %cmp, label %if.then, label %if.end, !dbg !1252

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %table_index.addr, align 4, !dbg !1255
  %call = call i32 @acpi_tb_unload_table(i32 noundef %1) #7, !dbg !1256
  store i32 %call, ptr %status, align 4, !dbg !1257
  %2 = load i32, ptr %status, align 4, !dbg !1258
  store i32 %2, ptr %retval, align 4, !dbg !1258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1258

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1259
  %3 = load i32, ptr %retval, align 4, !dbg !1259
  ret i32 %3, !dbg !1259
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!841, !842, !843, !844, !845, !846, !847, !848}
!llvm.ident = !{!849}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !839, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbxfload.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbxfload\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbxfload.ll drivers/acpi/acpica/tbxfload.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !786, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbxfload.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "493df36eeb08f0b2906ecb89ae56c6df")
!4 = !{!5, !12, !13, !16, !17}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !19, line: 133, size: 384, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!20 = !{!21, !773, !774, !775, !776, !782, !783, !784, !785}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !18, file: !19, line: 134, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !24, line: 369, size: 576, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!25 = !{!26, !40, !56, !68, !82, !96, !105, !422, !439, !455, !468, !546, !558, !572, !582, !600, !622, !641, !660, !679, !692, !719, !736, !749, !763, !772}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !23, file: !24, line: 370, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !24, line: 73, size: 128, elements: !28)
!28 = !{!29, !30, !34, !35, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !27, file: !24, line: 74, baseType: !22, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !27, file: !24, line: 74, baseType: !36, size: 16, offset: 80)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !23, file: !24, line: 371, baseType: !41, size: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !24, line: 76, size: 192, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !52}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !24, line: 77, baseType: !22, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !24, line: 77, baseType: !31, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !24, line: 77, baseType: !31, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !24, line: 77, baseType: !36, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !24, line: 77, baseType: !31, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !41, file: !24, line: 77, baseType: !49, size: 24, offset: 104)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !41, file: !24, line: 78, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !55)
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !23, file: !24, line: 372, baseType: !57, size: 256)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !24, line: 93, size: 256, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !67}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !24, line: 94, baseType: !22, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !24, line: 94, baseType: !31, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !24, line: 94, baseType: !31, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !24, line: 94, baseType: !36, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !24, line: 94, baseType: !31, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !57, file: !24, line: 94, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !57, file: !24, line: 94, baseType: !7, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !23, file: !24, line: 373, baseType: !69, size: 384)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !24, line: 97, size: 384, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !78, !79, !80, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !24, line: 98, baseType: !22, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !24, line: 98, baseType: !31, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !24, line: 98, baseType: !31, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !24, line: 98, baseType: !36, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !24, line: 98, baseType: !31, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !24, line: 98, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !24, line: 98, baseType: !7, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !69, file: !24, line: 99, baseType: !7, size: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !69, file: !24, line: 100, baseType: !77, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !24, line: 101, baseType: !17, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !23, file: !24, line: 374, baseType: !83, size: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !24, line: 104, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !93, !94, !95}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !24, line: 105, baseType: !22, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !24, line: 105, baseType: !31, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !24, line: 105, baseType: !31, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !24, line: 105, baseType: !36, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !24, line: 105, baseType: !31, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !24, line: 105, baseType: !17, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !83, file: !24, line: 106, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !83, file: !24, line: 107, baseType: !77, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !83, file: !24, line: 108, baseType: !7, size: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !83, file: !24, line: 109, baseType: !7, size: 32, offset: 352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !23, file: !24, line: 375, baseType: !97, size: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !24, line: 118, size: 192, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !24, line: 119, baseType: !22, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !24, line: 119, baseType: !31, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !24, line: 119, baseType: !31, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !24, line: 119, baseType: !36, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !24, line: 119, baseType: !31, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !97, file: !24, line: 119, baseType: !16, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !23, file: !24, line: 376, baseType: !106, size: 448)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !24, line: 144, size: 448, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !419, !420, !421}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !24, line: 145, baseType: !22, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !24, line: 145, baseType: !31, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !24, line: 145, baseType: !31, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !24, line: 145, baseType: !36, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !24, line: 145, baseType: !31, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !106, file: !24, line: 145, baseType: !31, size: 8, offset: 104)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !106, file: !24, line: 146, baseType: !31, size: 8, offset: 112)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !106, file: !24, line: 147, baseType: !31, size: 8, offset: 120)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !24, line: 148, baseType: !22, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !24, line: 149, baseType: !22, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !24, line: 150, baseType: !77, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !106, file: !24, line: 154, baseType: !120, size: 64, offset: 320)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !24, line: 151, size: 64, elements: !121)
!121 = !{!122, !418}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !120, file: !24, line: 152, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !19, line: 248, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!5, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !129, line: 37, size: 9024, elements: !130)
!129 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !364, !365, !366, !367, !368, !372, !374, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !401, !402, !403, !404, !405, !406, !407, !408, !410, !416}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !129, line: 38, baseType: !127, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !129, line: 39, baseType: !31, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !128, file: !129, line: 40, baseType: !31, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !128, file: !129, line: 41, baseType: !36, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !128, file: !129, line: 42, baseType: !31, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !128, file: !129, line: 43, baseType: !31, size: 8, offset: 104)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !128, file: !129, line: 44, baseType: !31, size: 8, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !128, file: !129, line: 45, baseType: !139, size: 16, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !36)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !128, file: !129, line: 46, baseType: !31, size: 8, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !128, file: !129, line: 47, baseType: !31, size: 8, offset: 152)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !128, file: !129, line: 48, baseType: !31, size: 8, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !128, file: !129, line: 49, baseType: !31, size: 8, offset: 168)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !128, file: !129, line: 50, baseType: !31, size: 8, offset: 176)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !128, file: !129, line: 51, baseType: !31, size: 8, offset: 184)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !128, file: !129, line: 52, baseType: !31, size: 8, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !128, file: !129, line: 53, baseType: !31, size: 8, offset: 200)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !128, file: !129, line: 54, baseType: !77, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !128, file: !129, line: 55, baseType: !7, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !128, file: !129, line: 56, baseType: !7, size: 32, offset: 352)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !128, file: !129, line: 57, baseType: !7, size: 32, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !128, file: !129, line: 58, baseType: !7, size: 32, offset: 416)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !128, file: !129, line: 60, baseType: !154, size: 640, offset: 448)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !19, line: 909, size: 640, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !245, !246, !362, !363}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !154, file: !19, line: 910, baseType: !77, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !154, file: !19, line: 911, baseType: !77, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !154, file: !19, line: 912, baseType: !77, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !154, file: !19, line: 913, baseType: !77, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !154, file: !19, line: 914, baseType: !77, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !154, file: !19, line: 915, baseType: !162, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !19, line: 891, size: 1600, elements: !164)
!164 = !{!165, !185, !201}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !163, file: !19, line: 892, baseType: !166, size: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !19, line: 844, size: 448, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !184}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !19, line: 845, baseType: !162, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !19, line: 845, baseType: !31, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !19, line: 845, baseType: !31, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !166, file: !19, line: 845, baseType: !36, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !166, file: !19, line: 845, baseType: !77, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !19, line: 845, baseType: !162, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !19, line: 845, baseType: !17, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !166, file: !19, line: 845, baseType: !176, size: 64, offset: 320)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !19, line: 732, size: 64, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !176, file: !19, line: 733, baseType: !53, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !176, file: !19, line: 734, baseType: !7, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !176, file: !19, line: 735, baseType: !65, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !176, file: !19, line: 736, baseType: !77, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !19, line: 737, baseType: !65, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !176, file: !19, line: 738, baseType: !162, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !166, file: !19, line: 845, baseType: !31, size: 8, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !163, file: !19, line: 893, baseType: !186, size: 640)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !19, line: 851, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !186, file: !19, line: 852, baseType: !162, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !19, line: 852, baseType: !31, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !19, line: 852, baseType: !31, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !186, file: !19, line: 852, baseType: !36, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !19, line: 852, baseType: !77, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !19, line: 852, baseType: !162, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !19, line: 852, baseType: !17, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !186, file: !19, line: 852, baseType: !176, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !186, file: !19, line: 852, baseType: !31, size: 8, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !186, file: !19, line: 852, baseType: !65, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !19, line: 853, baseType: !77, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !186, file: !19, line: 854, baseType: !7, size: 32, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !19, line: 855, baseType: !7, size: 32, offset: 608)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !163, file: !19, line: 894, baseType: !202, size: 1600)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !19, line: 862, size: 1600, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !19, line: 863, baseType: !162, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !19, line: 863, baseType: !31, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !19, line: 863, baseType: !31, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !19, line: 863, baseType: !36, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !19, line: 863, baseType: !77, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !19, line: 863, baseType: !162, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !19, line: 863, baseType: !17, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !19, line: 863, baseType: !176, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !19, line: 863, baseType: !31, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !202, file: !19, line: 863, baseType: !162, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !202, file: !19, line: 864, baseType: !162, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !202, file: !19, line: 865, baseType: !65, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !202, file: !19, line: 866, baseType: !31, size: 8, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !202, file: !19, line: 867, baseType: !65, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !202, file: !19, line: 868, baseType: !65, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !202, file: !19, line: 869, baseType: !65, size: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !202, file: !19, line: 870, baseType: !221, size: 32, offset: 896)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 4)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !202, file: !19, line: 871, baseType: !7, size: 32, offset: 928)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !202, file: !19, line: 872, baseType: !7, size: 32, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !202, file: !19, line: 873, baseType: !7, size: 32, offset: 992)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !202, file: !19, line: 874, baseType: !7, size: 32, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !202, file: !19, line: 875, baseType: !7, size: 32, offset: 1056)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !202, file: !19, line: 876, baseType: !7, size: 32, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !202, file: !19, line: 877, baseType: !7, size: 32, offset: 1120)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !202, file: !19, line: 878, baseType: !7, size: 32, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !202, file: !19, line: 879, baseType: !7, size: 32, offset: 1184)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !202, file: !19, line: 880, baseType: !7, size: 32, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !202, file: !19, line: 881, baseType: !7, size: 32, offset: 1248)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !202, file: !19, line: 882, baseType: !7, size: 32, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !202, file: !19, line: 883, baseType: !7, size: 32, offset: 1312)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !202, file: !19, line: 884, baseType: !36, size: 16, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !202, file: !19, line: 885, baseType: !31, size: 8, offset: 1360)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !202, file: !19, line: 886, baseType: !31, size: 8, offset: 1368)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !202, file: !19, line: 887, baseType: !31, size: 8, offset: 1376)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !202, file: !19, line: 888, baseType: !242, size: 160, offset: 1384)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 20)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !154, file: !19, line: 916, baseType: !17, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !154, file: !19, line: 917, baseType: !247, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !19, line: 679, size: 640, elements: !249)
!249 = !{!250, !258, !271, !280, !289, !302, !316, !328, !340}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !248, file: !19, line: 680, baseType: !251, size: 128)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !19, line: 575, size: 128, elements: !252)
!252 = !{!253, !254, !255, !256, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !19, line: 576, baseType: !16, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !19, line: 576, baseType: !31, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !19, line: 576, baseType: !31, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !19, line: 576, baseType: !36, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !19, line: 576, baseType: !36, size: 16, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !248, file: !19, line: 681, baseType: !259, size: 384)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !19, line: 604, size: 384, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !19, line: 605, baseType: !16, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !259, file: !19, line: 605, baseType: !31, size: 8, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !19, line: 605, baseType: !31, size: 8, offset: 72)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !259, file: !19, line: 605, baseType: !36, size: 16, offset: 80)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !259, file: !19, line: 605, baseType: !36, size: 16, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !259, file: !19, line: 606, baseType: !36, size: 16, offset: 112)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !259, file: !19, line: 607, baseType: !162, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !259, file: !19, line: 608, baseType: !77, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !259, file: !19, line: 609, baseType: !77, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !259, file: !19, line: 610, baseType: !53, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !248, file: !19, line: 682, baseType: !272, size: 192)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !19, line: 582, size: 192, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !19, line: 583, baseType: !16, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !272, file: !19, line: 583, baseType: !31, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !19, line: 583, baseType: !31, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !19, line: 583, baseType: !36, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !19, line: 583, baseType: !36, size: 16, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !272, file: !19, line: 584, baseType: !22, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !248, file: !19, line: 683, baseType: !281, size: 192)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !19, line: 616, size: 192, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !19, line: 617, baseType: !16, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !19, line: 617, baseType: !31, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !19, line: 617, baseType: !31, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !19, line: 617, baseType: !36, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !19, line: 617, baseType: !36, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !19, line: 618, baseType: !17, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !248, file: !19, line: 684, baseType: !290, size: 448)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !19, line: 621, size: 448, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !19, line: 622, baseType: !16, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !19, line: 622, baseType: !31, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !19, line: 622, baseType: !31, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !19, line: 622, baseType: !36, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !19, line: 622, baseType: !36, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !290, file: !19, line: 623, baseType: !7, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !290, file: !19, line: 624, baseType: !162, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !290, file: !19, line: 625, baseType: !77, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !290, file: !19, line: 626, baseType: !77, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !290, file: !19, line: 627, baseType: !7, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !248, file: !19, line: 685, baseType: !303, size: 512)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !19, line: 590, size: 512, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !19, line: 591, baseType: !16, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !19, line: 591, baseType: !31, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !19, line: 591, baseType: !31, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !19, line: 591, baseType: !36, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !19, line: 591, baseType: !36, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !303, file: !19, line: 592, baseType: !7, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !303, file: !19, line: 593, baseType: !22, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !303, file: !19, line: 594, baseType: !22, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !303, file: !19, line: 595, baseType: !127, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !303, file: !19, line: 596, baseType: !16, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !303, file: !19, line: 597, baseType: !7, size: 32, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !248, file: !19, line: 686, baseType: !317, size: 320)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !19, line: 634, size: 320, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !19, line: 635, baseType: !16, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !19, line: 635, baseType: !31, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !19, line: 635, baseType: !31, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !19, line: 635, baseType: !36, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !19, line: 635, baseType: !36, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !317, file: !19, line: 636, baseType: !31, size: 8, offset: 112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !317, file: !19, line: 637, baseType: !127, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !317, file: !19, line: 638, baseType: !22, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !317, file: !19, line: 639, baseType: !53, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !248, file: !19, line: 687, baseType: !329, size: 640)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !19, line: 646, size: 640, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !19, line: 647, baseType: !16, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !19, line: 647, baseType: !31, size: 8, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !19, line: 647, baseType: !31, size: 8, offset: 72)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !19, line: 647, baseType: !36, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !19, line: 647, baseType: !36, size: 16, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !329, file: !19, line: 648, baseType: !337, size: 512, offset: 128)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !248, file: !19, line: 688, baseType: !341, size: 320)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !19, line: 669, size: 320, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !19, line: 670, baseType: !16, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !19, line: 670, baseType: !31, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !19, line: 670, baseType: !31, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !19, line: 670, baseType: !36, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !19, line: 670, baseType: !36, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !341, file: !19, line: 671, baseType: !31, size: 8, offset: 112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !341, file: !19, line: 672, baseType: !17, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !341, file: !19, line: 673, baseType: !22, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !341, file: !19, line: 674, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !19, line: 660, size: 128, elements: !354)
!354 = !{!355, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !353, file: !19, line: 661, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360, !7, !16}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !353, file: !19, line: 662, baseType: !16, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !154, file: !19, line: 918, baseType: !162, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !154, file: !19, line: 919, baseType: !7, size: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !128, file: !129, line: 61, baseType: !7, size: 32, offset: 1088)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !128, file: !129, line: 62, baseType: !7, size: 32, offset: 1120)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !128, file: !129, line: 63, baseType: !36, size: 16, offset: 1152)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !128, file: !129, line: 64, baseType: !31, size: 8, offset: 1168)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !128, file: !129, line: 66, baseType: !369, size: 2688, offset: 1216)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2688, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !128, file: !129, line: 67, baseType: !373, size: 3072, offset: 3904)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3072, elements: !338)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !128, file: !129, line: 68, baseType: !375, size: 576, offset: 6976)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 576, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 9)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !128, file: !129, line: 69, baseType: !92, size: 64, offset: 7552)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !128, file: !129, line: 71, baseType: !77, size: 64, offset: 7616)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !128, file: !129, line: 72, baseType: !92, size: 64, offset: 7680)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !128, file: !129, line: 73, baseType: !247, size: 64, offset: 7744)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !128, file: !129, line: 74, baseType: !17, size: 64, offset: 7808)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !128, file: !129, line: 75, baseType: !22, size: 64, offset: 7872)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !128, file: !129, line: 76, baseType: !17, size: 64, offset: 7936)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !128, file: !129, line: 77, baseType: !162, size: 64, offset: 8000)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !128, file: !129, line: 78, baseType: !22, size: 64, offset: 8064)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !128, file: !129, line: 79, baseType: !17, size: 64, offset: 8128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !128, file: !129, line: 80, baseType: !65, size: 64, offset: 8192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !128, file: !129, line: 81, baseType: !162, size: 64, offset: 8256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !128, file: !129, line: 82, baseType: !391, size: 64, offset: 8320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !19, line: 718, size: 128, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !393, file: !19, line: 722, baseType: !7, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !393, file: !19, line: 723, baseType: !7, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !19, line: 724, baseType: !36, size: 16, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !393, file: !19, line: 725, baseType: !31, size: 8, offset: 80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !393, file: !19, line: 726, baseType: !31, size: 8, offset: 88)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !393, file: !19, line: 727, baseType: !31, size: 8, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !128, file: !129, line: 83, baseType: !162, size: 64, offset: 8384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !128, file: !129, line: 84, baseType: !22, size: 64, offset: 8448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !128, file: !129, line: 85, baseType: !247, size: 64, offset: 8512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !128, file: !129, line: 86, baseType: !22, size: 64, offset: 8576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !128, file: !129, line: 87, baseType: !247, size: 64, offset: 8640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !128, file: !129, line: 88, baseType: !162, size: 64, offset: 8704)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !128, file: !129, line: 89, baseType: !162, size: 64, offset: 8768)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !128, file: !129, line: 90, baseType: !409, size: 64, offset: 8832)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !128, file: !129, line: 91, baseType: !411, size: 64, offset: 8896)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !19, line: 652, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!5, !127, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !128, file: !129, line: 92, baseType: !417, size: 64, offset: 8960)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !19, line: 656, baseType: !124)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !120, file: !24, line: 153, baseType: !22, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !24, line: 156, baseType: !7, size: 32, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !106, file: !24, line: 157, baseType: !139, size: 16, offset: 416)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !106, file: !24, line: 158, baseType: !31, size: 8, offset: 432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !23, file: !24, line: 377, baseType: !423, size: 576)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !24, line: 122, size: 576, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !423, file: !24, line: 123, baseType: !22, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !423, file: !24, line: 123, baseType: !31, size: 8, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !24, line: 123, baseType: !31, size: 8, offset: 72)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !423, file: !24, line: 123, baseType: !36, size: 16, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !24, line: 123, baseType: !31, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !423, file: !24, line: 123, baseType: !31, size: 8, offset: 104)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !423, file: !24, line: 124, baseType: !36, size: 16, offset: 112)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !423, file: !24, line: 125, baseType: !16, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !423, file: !24, line: 126, baseType: !53, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !423, file: !24, line: 127, baseType: !409, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !423, file: !24, line: 128, baseType: !22, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !24, line: 129, baseType: !22, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !423, file: !24, line: 130, baseType: !17, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !423, file: !24, line: 131, baseType: !31, size: 8, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !23, file: !24, line: 378, baseType: !440, size: 512)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !24, line: 134, size: 512, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !453, !454}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !24, line: 135, baseType: !22, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !24, line: 135, baseType: !31, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !24, line: 135, baseType: !31, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !24, line: 135, baseType: !36, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !24, line: 135, baseType: !31, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !440, file: !24, line: 135, baseType: !31, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !24, line: 136, baseType: !17, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !440, file: !24, line: 137, baseType: !22, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !24, line: 138, baseType: !22, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !440, file: !24, line: 139, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !53)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !440, file: !24, line: 140, baseType: !7, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !440, file: !24, line: 141, baseType: !16, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !23, file: !24, line: 379, baseType: !456, size: 320)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !24, line: 185, size: 320, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !467}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !24, line: 186, baseType: !22, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !24, line: 186, baseType: !31, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !24, line: 186, baseType: !31, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !24, line: 186, baseType: !36, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !24, line: 186, baseType: !31, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !456, file: !24, line: 186, baseType: !464, size: 128, offset: 128)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 2)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !24, line: 186, baseType: !22, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !23, file: !24, line: 380, baseType: !469, size: 384)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !24, line: 188, size: 384, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !24, line: 189, baseType: !22, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !24, line: 189, baseType: !31, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !24, line: 189, baseType: !31, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !24, line: 189, baseType: !36, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !24, line: 189, baseType: !31, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !469, file: !24, line: 190, baseType: !464, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !24, line: 190, baseType: !22, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !469, file: !24, line: 190, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !19, line: 480, size: 576, elements: !481)
!481 = !{!482, !483, !484, !485, !493, !508, !540, !541, !542, !543, !544, !545}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !19, line: 481, baseType: !17, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !480, file: !19, line: 482, baseType: !479, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !19, line: 483, baseType: !479, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !480, file: !19, line: 484, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !19, line: 497, size: 256, elements: !488)
!488 = !{!489, !490, !491, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !487, file: !19, line: 498, baseType: !486, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !19, line: 499, baseType: !486, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !487, file: !19, line: 500, baseType: !479, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !487, file: !19, line: 501, baseType: !7, size: 32, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !480, file: !19, line: 485, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !19, line: 466, size: 320, elements: !496)
!496 = !{!497, !502, !503, !504, !505, !506, !507}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !495, file: !19, line: 467, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !19, line: 459, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !19, line: 460, baseType: !31, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !19, line: 461, baseType: !53, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !495, file: !19, line: 468, baseType: !498, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !495, file: !19, line: 469, baseType: !36, size: 16, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !495, file: !19, line: 470, baseType: !31, size: 8, offset: 272)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !495, file: !19, line: 471, baseType: !31, size: 8, offset: 280)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !495, file: !19, line: 472, baseType: !31, size: 8, offset: 288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !495, file: !19, line: 473, baseType: !31, size: 8, offset: 296)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !480, file: !19, line: 486, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !19, line: 448, size: 192, elements: !511)
!511 = !{!512, !535, !536, !537, !538, !539}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !510, file: !19, line: 449, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !19, line: 438, size: 64, elements: !514)
!514 = !{!515, !516, !529}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !513, file: !19, line: 439, baseType: !17, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !19, line: 440, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !19, line: 419, size: 256, elements: !519)
!519 = !{!520, !525, !526, !527, !528}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !518, file: !19, line: 420, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!7, !360, !7, !16}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !518, file: !19, line: 421, baseType: !16, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !518, file: !19, line: 422, baseType: !17, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !518, file: !19, line: 423, baseType: !31, size: 8, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !518, file: !19, line: 424, baseType: !31, size: 8, offset: 200)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !19, line: 441, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !19, line: 429, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !531, file: !19, line: 430, baseType: !17, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !19, line: 431, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !510, file: !19, line: 450, baseType: !494, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !19, line: 451, baseType: !31, size: 8, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !510, file: !19, line: 452, baseType: !31, size: 8, offset: 136)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !510, file: !19, line: 453, baseType: !31, size: 8, offset: 144)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !510, file: !19, line: 454, baseType: !31, size: 8, offset: 152)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !19, line: 487, baseType: !53, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !480, file: !19, line: 488, baseType: !7, size: 32, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !480, file: !19, line: 489, baseType: !36, size: 16, offset: 480)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !480, file: !19, line: 490, baseType: !36, size: 16, offset: 496)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !480, file: !19, line: 491, baseType: !31, size: 8, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !480, file: !19, line: 492, baseType: !31, size: 8, offset: 520)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !23, file: !24, line: 381, baseType: !547, size: 384)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !24, line: 193, size: 384, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !547, file: !24, line: 194, baseType: !22, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !24, line: 194, baseType: !31, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !24, line: 194, baseType: !31, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !547, file: !24, line: 194, baseType: !36, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !24, line: 194, baseType: !31, size: 8, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !547, file: !24, line: 194, baseType: !464, size: 128, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !547, file: !24, line: 194, baseType: !22, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !547, file: !24, line: 194, baseType: !7, size: 32, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !547, file: !24, line: 195, baseType: !7, size: 32, offset: 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !23, file: !24, line: 382, baseType: !559, size: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !24, line: 198, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !24, line: 199, baseType: !22, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !24, line: 199, baseType: !31, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !24, line: 199, baseType: !31, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !24, line: 199, baseType: !36, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !24, line: 199, baseType: !31, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !559, file: !24, line: 201, baseType: !31, size: 8, offset: 104)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !559, file: !24, line: 202, baseType: !31, size: 8, offset: 112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !559, file: !24, line: 203, baseType: !464, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !559, file: !24, line: 203, baseType: !22, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !559, file: !24, line: 203, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !53)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !23, file: !24, line: 383, baseType: !573, size: 320)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !24, line: 206, size: 320, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !24, line: 207, baseType: !22, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !24, line: 207, baseType: !31, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !24, line: 207, baseType: !31, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !24, line: 207, baseType: !36, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !24, line: 207, baseType: !31, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !24, line: 207, baseType: !464, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !24, line: 207, baseType: !22, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !23, file: !24, line: 384, baseType: !583, size: 384)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !24, line: 234, size: 384, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !24, line: 235, baseType: !22, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !24, line: 235, baseType: !36, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 104)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 112)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 120)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !24, line: 235, baseType: !17, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !583, file: !24, line: 235, baseType: !7, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !583, file: !24, line: 235, baseType: !7, size: 32, offset: 224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !583, file: !24, line: 235, baseType: !7, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !583, file: !24, line: 235, baseType: !31, size: 8, offset: 296)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !583, file: !24, line: 235, baseType: !22, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !23, file: !24, line: 385, baseType: !601, size: 576)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !24, line: 238, size: 576, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !24, line: 239, baseType: !22, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !24, line: 239, baseType: !36, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !24, line: 239, baseType: !17, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !24, line: 239, baseType: !7, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !24, line: 239, baseType: !7, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !24, line: 239, baseType: !7, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !24, line: 239, baseType: !31, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !601, file: !24, line: 239, baseType: !36, size: 16, offset: 304)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !24, line: 240, baseType: !22, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !601, file: !24, line: 241, baseType: !77, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !601, file: !24, line: 242, baseType: !36, size: 16, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !601, file: !24, line: 243, baseType: !77, size: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !23, file: !24, line: 386, baseType: !623, size: 384)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !24, line: 263, size: 384, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !24, line: 264, baseType: !22, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !24, line: 264, baseType: !36, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !24, line: 264, baseType: !17, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !24, line: 264, baseType: !7, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !24, line: 264, baseType: !7, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !24, line: 264, baseType: !7, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !623, file: !24, line: 264, baseType: !31, size: 8, offset: 304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !623, file: !24, line: 265, baseType: !22, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !23, file: !24, line: 387, baseType: !642, size: 448)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !24, line: 246, size: 448, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !24, line: 247, baseType: !22, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !24, line: 247, baseType: !36, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !24, line: 247, baseType: !17, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !24, line: 247, baseType: !7, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !24, line: 247, baseType: !7, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !24, line: 247, baseType: !7, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !24, line: 247, baseType: !31, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !642, file: !24, line: 247, baseType: !22, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !642, file: !24, line: 248, baseType: !22, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !23, file: !24, line: 388, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !24, line: 251, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !24, line: 252, baseType: !22, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !24, line: 252, baseType: !36, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !24, line: 252, baseType: !17, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !24, line: 252, baseType: !7, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !24, line: 252, baseType: !7, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !24, line: 252, baseType: !7, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !24, line: 252, baseType: !31, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !661, file: !24, line: 257, baseType: !22, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !661, file: !24, line: 258, baseType: !22, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !23, file: !24, line: 389, baseType: !680, size: 512)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !24, line: 274, size: 512, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !24, line: 275, baseType: !22, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !24, line: 275, baseType: !31, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !24, line: 275, baseType: !31, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !24, line: 275, baseType: !36, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !24, line: 275, baseType: !31, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !24, line: 275, baseType: !17, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !680, file: !24, line: 276, baseType: !7, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !680, file: !24, line: 277, baseType: !356, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !680, file: !24, line: 278, baseType: !16, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !24, line: 279, baseType: !464, size: 128, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !23, file: !24, line: 390, baseType: !693, size: 576)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !24, line: 282, size: 576, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !708, !709, !710, !711, !717, !718}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !24, line: 283, baseType: !22, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !24, line: 283, baseType: !31, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !24, line: 283, baseType: !31, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !24, line: 283, baseType: !36, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !24, line: 283, baseType: !31, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !693, file: !24, line: 283, baseType: !31, size: 8, offset: 104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !693, file: !24, line: 284, baseType: !31, size: 8, offset: 112)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !693, file: !24, line: 285, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!5, !7, !452, !7, !707, !16, !16}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !24, line: 286, baseType: !17, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !693, file: !24, line: 287, baseType: !16, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !693, file: !24, line: 288, baseType: !16, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !693, file: !24, line: 289, baseType: !712, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!5, !360, !7, !16, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !693, file: !24, line: 290, baseType: !22, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !24, line: 291, baseType: !22, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !23, file: !24, line: 391, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !24, line: 309, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !24, line: 310, baseType: !22, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !24, line: 310, baseType: !31, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !24, line: 310, baseType: !31, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !24, line: 310, baseType: !36, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !24, line: 310, baseType: !31, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !720, file: !24, line: 310, baseType: !31, size: 8, offset: 104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !720, file: !24, line: 311, baseType: !31, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !720, file: !24, line: 312, baseType: !31, size: 8, offset: 120)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !720, file: !24, line: 313, baseType: !16, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !24, line: 314, baseType: !17, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !720, file: !24, line: 315, baseType: !92, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !720, file: !24, line: 316, baseType: !77, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !720, file: !24, line: 317, baseType: !77, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !720, file: !24, line: 318, baseType: !7, size: 32, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !23, file: !24, line: 392, baseType: !737, size: 448)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !24, line: 342, size: 448, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !24, line: 343, baseType: !22, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !24, line: 343, baseType: !31, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !24, line: 343, baseType: !31, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !24, line: 343, baseType: !36, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !24, line: 343, baseType: !31, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !737, file: !24, line: 343, baseType: !17, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !737, file: !24, line: 344, baseType: !17, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !737, file: !24, line: 345, baseType: !16, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !737, file: !24, line: 346, baseType: !77, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !737, file: !24, line: 347, baseType: !7, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 393, baseType: !750, size: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !24, line: 352, size: 256, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !24, line: 353, baseType: !22, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !24, line: 353, baseType: !31, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !24, line: 353, baseType: !31, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !24, line: 353, baseType: !36, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !24, line: 353, baseType: !31, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !750, file: !24, line: 353, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !360, !16}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !750, file: !24, line: 354, baseType: !16, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !23, file: !24, line: 394, baseType: !764, size: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !24, line: 359, size: 192, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !24, line: 360, baseType: !22, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !24, line: 360, baseType: !31, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !24, line: 360, baseType: !31, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !24, line: 360, baseType: !36, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !24, line: 360, baseType: !31, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !24, line: 360, baseType: !22, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !24, line: 401, baseType: !18, size: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !18, file: !19, line: 135, baseType: !31, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !19, line: 136, baseType: !31, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 137, baseType: !36, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !19, line: 138, baseType: !777, size: 32, offset: 96)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !778, line: 328, size: 32, elements: !779)
!778 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !777, file: !778, line: 329, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !777, file: !778, line: 330, baseType: !221, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !18, file: !19, line: 139, baseType: !17, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !18, file: !19, line: 140, baseType: !17, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !18, file: !19, line: 141, baseType: !17, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !18, file: !19, line: 142, baseType: !139, size: 16, offset: 320)
!786 = !{!787, !792, !797, !802, !807, !809, !811, !813, !818, !823, !828, !833, !835, !837, !0}
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !789, isLocal: true, isDefinition: true)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 232, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 29)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 328, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 41)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !799, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 40, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 5)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 200, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 25)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !799, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !799, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !799, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 272, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 34)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 416, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 52)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 304, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 38)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 312, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 39)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_load_table174", scope: !2, file: !3, line: 340, type: !16, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_unload_parent_table175", scope: !2, file: !3, line: 422, type: !16, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_unload_table176", scope: !2, file: !3, line: 454, type: !16, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 72, elements: !376)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!841 = !{i32 7, !"Dwarf Version", i32 5}
!842 = !{i32 2, !"Debug Info Version", i32 3}
!843 = !{i32 1, !"wchar_size", i32 2}
!844 = !{i32 8, !"cf-protection-branch", i32 1}
!845 = !{i32 4, !"function_return_thunk_extern", i32 1}
!846 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!847 = !{i32 1, !"Code Model", i32 2}
!848 = !{i32 1, !"override-stack-alignment", i32 8}
!849 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!850 = distinct !DISubprogram(name: "acpi_load_tables", scope: !3, file: !3, line: 32, type: !851, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!5}
!853 = !{!854}
!854 = !DILocalVariable(name: "status", scope: !850, file: !3, line: 34, type: !5)
!855 = !DILocation(line: 34, column: 2, scope: !850)
!856 = !DILocation(line: 34, column: 14, scope: !850)
!857 = !DILocation(line: 50, column: 11, scope: !850)
!858 = !DILocation(line: 50, column: 9, scope: !850)
!859 = !DILocation(line: 51, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !850, file: !3, line: 51, column: 6)
!861 = !DILocation(line: 51, column: 6, scope: !850)
!862 = !DILocation(line: 52, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 51, column: 28)
!864 = !DILocation(line: 54, column: 3, scope: !863)
!865 = !DILocation(line: 59, column: 11, scope: !850)
!866 = !DILocation(line: 59, column: 9, scope: !850)
!867 = !DILocation(line: 63, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !850, file: !3, line: 63, column: 6)
!869 = !DILocation(line: 63, column: 13, scope: !868)
!870 = !DILocation(line: 63, column: 6, scope: !850)
!871 = !DILocation(line: 64, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 63, column: 35)
!873 = !DILocation(line: 65, column: 2, scope: !872)
!874 = !DILocation(line: 67, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !850, file: !3, line: 67, column: 6)
!876 = !DILocation(line: 67, column: 6, scope: !850)
!877 = !DILocation(line: 68, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !3, line: 67, column: 28)
!879 = !DILocation(line: 70, column: 2, scope: !878)
!880 = !DILocation(line: 79, column: 11, scope: !850)
!881 = !DILocation(line: 79, column: 9, scope: !850)
!882 = !DILocation(line: 80, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !850, file: !3, line: 80, column: 6)
!884 = !DILocation(line: 80, column: 6, scope: !850)
!885 = !DILocation(line: 81, column: 34, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 80, column: 28)
!887 = !DILocation(line: 82, column: 2, scope: !886)
!888 = !DILocation(line: 84, column: 2, scope: !850)
!889 = !DILocation(line: 85, column: 1, scope: !850)
!890 = !DISubprogram(name: "acpi_ev_install_region_handlers", scope: !891, file: !891, line: 162, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!892 = !DISubprogram(name: "acpi_exception", scope: !893, file: !893, line: 906, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!894 = !DISubroutineType(types: !895)
!895 = !{null, !896, !7, !5, !896, null}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!897 = distinct !DISubprogram(name: "acpi_tb_load_namespace", scope: !3, file: !3, line: 101, type: !851, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!898 = !{!899, !900, !901, !918, !929, !930, !931}
!899 = !DILocalVariable(name: "status", scope: !897, file: !3, line: 103, type: !5)
!900 = !DILocalVariable(name: "i", scope: !897, file: !3, line: 104, type: !7)
!901 = !DILocalVariable(name: "new_dsdt", scope: !897, file: !3, line: 105, type: !902)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !778, line: 68, size: 288, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !913, !915, !916, !917}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !903, file: !778, line: 69, baseType: !221, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !903, file: !778, line: 70, baseType: !7, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !903, file: !778, line: 71, baseType: !31, size: 8, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !903, file: !778, line: 72, baseType: !31, size: 8, offset: 72)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !903, file: !778, line: 73, baseType: !910, size: 48, offset: 80)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 48, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 6)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !903, file: !778, line: 74, baseType: !914, size: 64, offset: 128)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !338)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !903, file: !778, line: 75, baseType: !7, size: 32, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !903, file: !778, line: 76, baseType: !221, size: 32, offset: 224)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !903, file: !778, line: 77, baseType: !7, size: 32, offset: 256)
!918 = !DILocalVariable(name: "table", scope: !897, file: !3, line: 106, type: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !778, line: 335, size: 256, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !920, file: !778, line: 336, baseType: !452, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !920, file: !778, line: 337, baseType: !902, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !920, file: !778, line: 338, baseType: !7, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !920, file: !778, line: 339, baseType: !777, size: 32, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !920, file: !778, line: 340, baseType: !139, size: 16, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !778, line: 341, baseType: !31, size: 8, offset: 208)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !920, file: !778, line: 342, baseType: !36, size: 16, offset: 224)
!929 = !DILocalVariable(name: "tables_loaded", scope: !897, file: !3, line: 107, type: !7)
!930 = !DILocalVariable(name: "tables_failed", scope: !897, file: !3, line: 108, type: !7)
!931 = !DILabel(scope: !897, name: "unlock_and_exit", file: !3, line: 221)
!932 = !DILocation(line: 103, column: 2, scope: !897)
!933 = !DILocation(line: 103, column: 14, scope: !897)
!934 = !DILocation(line: 104, column: 2, scope: !897)
!935 = !DILocation(line: 104, column: 6, scope: !897)
!936 = !DILocation(line: 105, column: 2, scope: !897)
!937 = !DILocation(line: 105, column: 28, scope: !897)
!938 = !DILocation(line: 106, column: 2, scope: !897)
!939 = !DILocation(line: 106, column: 26, scope: !897)
!940 = !DILocation(line: 107, column: 2, scope: !897)
!941 = !DILocation(line: 107, column: 6, scope: !897)
!942 = !DILocation(line: 108, column: 2, scope: !897)
!943 = !DILocation(line: 108, column: 6, scope: !897)
!944 = !DILocation(line: 112, column: 8, scope: !897)
!945 = !DILocation(line: 118, column: 36, scope: !897)
!946 = !DILocation(line: 118, column: 43, scope: !897)
!947 = !DILocation(line: 118, column: 11, scope: !897)
!948 = !DILocation(line: 118, column: 8, scope: !897)
!949 = !DILocation(line: 120, column: 32, scope: !950)
!950 = distinct !DILexicalBlock(scope: !897, file: !3, line: 120, column: 6)
!951 = !DILocation(line: 120, column: 7, scope: !950)
!952 = !DILocation(line: 120, column: 52, scope: !950)
!953 = !DILocation(line: 121, column: 7, scope: !950)
!954 = !DILocation(line: 121, column: 67, scope: !950)
!955 = !DILocation(line: 122, column: 6, scope: !950)
!956 = !DILocation(line: 120, column: 6, scope: !897)
!957 = !DILocation(line: 123, column: 10, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !3, line: 122, column: 51)
!959 = !DILocation(line: 124, column: 3, scope: !958)
!960 = !DILocation(line: 133, column: 18, scope: !897)
!961 = !DILocation(line: 133, column: 25, scope: !897)
!962 = !DILocation(line: 133, column: 16, scope: !897)
!963 = !DILocation(line: 141, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !897, file: !3, line: 141, column: 6)
!965 = !DILocation(line: 141, column: 6, scope: !897)
!966 = !DILocation(line: 142, column: 32, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 141, column: 34)
!968 = !DILocation(line: 142, column: 14, scope: !967)
!969 = !DILocation(line: 142, column: 12, scope: !967)
!970 = !DILocation(line: 143, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 143, column: 7)
!972 = !DILocation(line: 143, column: 7, scope: !967)
!973 = !DILocation(line: 144, column: 20, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 143, column: 17)
!975 = !DILocation(line: 144, column: 18, scope: !974)
!976 = !DILocation(line: 145, column: 3, scope: !974)
!977 = !DILocation(line: 146, column: 2, scope: !967)
!978 = !DILocation(line: 152, column: 41, scope: !897)
!979 = !DILocation(line: 152, column: 2, scope: !897)
!980 = !DILocation(line: 157, column: 8, scope: !897)
!981 = !DILocation(line: 158, column: 30, scope: !897)
!982 = !DILocation(line: 158, column: 51, scope: !897)
!983 = !DILocation(line: 158, column: 11, scope: !897)
!984 = !DILocation(line: 158, column: 9, scope: !897)
!985 = !DILocation(line: 159, column: 8, scope: !897)
!986 = !DILocation(line: 160, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !897, file: !3, line: 160, column: 6)
!988 = !DILocation(line: 160, column: 6, scope: !897)
!989 = !DILocation(line: 161, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 160, column: 28)
!991 = !DILocation(line: 162, column: 16, scope: !990)
!992 = !DILocation(line: 163, column: 2, scope: !990)
!993 = !DILocation(line: 164, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !987, file: !3, line: 163, column: 9)
!995 = !DILocation(line: 169, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !897, file: !3, line: 169, column: 2)
!997 = !DILocation(line: 169, column: 7, scope: !996)
!998 = !DILocation(line: 169, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 169, column: 2)
!1000 = !DILocation(line: 169, column: 43, scope: !999)
!1001 = !DILocation(line: 169, column: 16, scope: !999)
!1002 = !DILocation(line: 169, column: 2, scope: !996)
!1003 = !DILocation(line: 170, column: 37, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 169, column: 69)
!1005 = !DILocation(line: 170, column: 44, scope: !1004)
!1006 = !DILocation(line: 170, column: 12, scope: !1004)
!1007 = !DILocation(line: 170, column: 9, scope: !1004)
!1008 = !DILocation(line: 172, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 172, column: 7)
!1010 = !DILocation(line: 172, column: 15, scope: !1009)
!1011 = !DILocation(line: 172, column: 23, scope: !1009)
!1012 = !DILocation(line: 173, column: 9, scope: !1009)
!1013 = !DILocation(line: 175, column: 8, scope: !1009)
!1014 = !DILocation(line: 175, column: 12, scope: !1009)
!1015 = !DILocation(line: 177, column: 8, scope: !1009)
!1016 = !DILocation(line: 177, column: 12, scope: !1009)
!1017 = !DILocation(line: 179, column: 7, scope: !1009)
!1018 = !DILocation(line: 179, column: 10, scope: !1009)
!1019 = !DILocation(line: 172, column: 7, scope: !1004)
!1020 = !DILocation(line: 180, column: 4, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 179, column: 55)
!1022 = !DILocation(line: 185, column: 9, scope: !1004)
!1023 = !DILocation(line: 186, column: 31, scope: !1004)
!1024 = !DILocation(line: 186, column: 34, scope: !1004)
!1025 = !DILocation(line: 186, column: 12, scope: !1004)
!1026 = !DILocation(line: 186, column: 10, scope: !1004)
!1027 = !DILocation(line: 187, column: 9, scope: !1004)
!1028 = !DILocation(line: 188, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 188, column: 7)
!1030 = !DILocation(line: 188, column: 7, scope: !1004)
!1031 = !DILocation(line: 189, column: 4, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 188, column: 29)
!1033 = !DILocation(line: 194, column: 17, scope: !1032)
!1034 = !DILocation(line: 200, column: 3, scope: !1032)
!1035 = !DILocation(line: 201, column: 17, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 200, column: 10)
!1037 = !DILocation(line: 203, column: 2, scope: !1004)
!1038 = !DILocation(line: 169, column: 64, scope: !999)
!1039 = !DILocation(line: 169, column: 2, scope: !999)
!1040 = distinct !{!1040, !1002, !1041, !1042, !1043}
!1041 = !DILocation(line: 203, column: 2, scope: !996)
!1042 = !{!"llvm.loop.mustprogress"}
!1043 = !{!"llvm.loop.unroll.disable"}
!1044 = !DILocation(line: 205, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !897, file: !3, line: 205, column: 6)
!1046 = !DILocation(line: 205, column: 6, scope: !897)
!1047 = !DILocation(line: 206, column: 3, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 205, column: 22)
!1049 = !DILocation(line: 207, column: 2, scope: !1048)
!1050 = !DILocation(line: 208, column: 3, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 207, column: 9)
!1052 = !DILocation(line: 214, column: 10, scope: !1051)
!1053 = !DILocation(line: 221, column: 1, scope: !897)
!1054 = !DILocation(line: 222, column: 8, scope: !897)
!1055 = !DILocation(line: 223, column: 2, scope: !897)
!1056 = !DILocation(line: 224, column: 1, scope: !897)
!1057 = !DISubprogram(name: "acpi_ns_initialize_objects", scope: !1058, file: !1058, line: 57, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1059 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1060, file: !1060, line: 646, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!5, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !19, line: 17, baseType: !7)
!1064 = !DISubprogram(name: "acpi_tb_validate_table", scope: !1065, file: !1065, line: 72, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!5, !919}
!1068 = !DISubprogram(name: "acpi_tb_copy_dsdt", scope: !1065, file: !1065, line: 129, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!902, !7}
!1071 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1060, file: !1060, line: 648, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubprogram(name: "acpi_ns_load_table", scope: !1058, file: !1058, line: 71, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!5, !7, !17}
!1075 = !DISubprogram(name: "acpi_info", scope: !893, file: !893, line: 917, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !896, null}
!1078 = !DISubprogram(name: "acpi_error", scope: !893, file: !893, line: 901, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !896, !7, !896, null}
!1081 = distinct !DISubprogram(name: "acpi_install_table", scope: !3, file: !3, line: 241, type: !1082, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!5, !902}
!1084 = !{!1085, !1086, !1087}
!1085 = !DILocalVariable(name: "table", arg: 1, scope: !1081, file: !3, line: 241, type: !902)
!1086 = !DILocalVariable(name: "status", scope: !1081, file: !3, line: 243, type: !5)
!1087 = !DILocalVariable(name: "table_index", scope: !1081, file: !3, line: 244, type: !7)
!1088 = !DILocation(line: 241, column: 46, scope: !1081)
!1089 = !DILocation(line: 243, column: 2, scope: !1081)
!1090 = !DILocation(line: 243, column: 14, scope: !1081)
!1091 = !DILocation(line: 244, column: 2, scope: !1081)
!1092 = !DILocation(line: 244, column: 6, scope: !1081)
!1093 = !DILocation(line: 248, column: 42, scope: !1081)
!1094 = !DILocation(line: 250, column: 7, scope: !1081)
!1095 = !DILocation(line: 248, column: 11, scope: !1081)
!1096 = !DILocation(line: 248, column: 9, scope: !1081)
!1097 = !DILocation(line: 253, column: 2, scope: !1081)
!1098 = !DILocation(line: 254, column: 1, scope: !1081)
!1099 = !DISubprogram(name: "acpi_tb_install_standard_table", scope: !1065, file: !1065, line: 88, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!5, !452, !31, !902, !31, !31, !12}
!1102 = distinct !DISubprogram(name: "acpi_install_physical_table", scope: !3, file: !3, line: 272, type: !1103, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!5, !452}
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "address", arg: 1, scope: !1102, file: !3, line: 272, type: !452)
!1107 = !DILocalVariable(name: "status", scope: !1102, file: !3, line: 274, type: !5)
!1108 = !DILocalVariable(name: "table_index", scope: !1102, file: !3, line: 275, type: !7)
!1109 = !DILocation(line: 272, column: 51, scope: !1102)
!1110 = !DILocation(line: 274, column: 2, scope: !1102)
!1111 = !DILocation(line: 274, column: 14, scope: !1102)
!1112 = !DILocation(line: 275, column: 2, scope: !1102)
!1113 = !DILocation(line: 275, column: 6, scope: !1102)
!1114 = !DILocation(line: 279, column: 42, scope: !1102)
!1115 = !DILocation(line: 279, column: 11, scope: !1102)
!1116 = !DILocation(line: 279, column: 9, scope: !1102)
!1117 = !DILocation(line: 284, column: 2, scope: !1102)
!1118 = !DILocation(line: 285, column: 1, scope: !1102)
!1119 = distinct !DISubprogram(name: "acpi_load_table", scope: !3, file: !3, line: 307, type: !1120, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!5, !902, !12}
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DILocalVariable(name: "table", arg: 1, scope: !1119, file: !3, line: 307, type: !902)
!1124 = !DILocalVariable(name: "table_idx", arg: 2, scope: !1119, file: !3, line: 307, type: !12)
!1125 = !DILocalVariable(name: "status", scope: !1119, file: !3, line: 309, type: !5)
!1126 = !DILocalVariable(name: "table_index", scope: !1119, file: !3, line: 310, type: !7)
!1127 = !DILocation(line: 307, column: 55, scope: !1119)
!1128 = !DILocation(line: 307, column: 67, scope: !1119)
!1129 = !DILocation(line: 309, column: 2, scope: !1119)
!1130 = !DILocation(line: 309, column: 14, scope: !1119)
!1131 = !DILocation(line: 310, column: 2, scope: !1119)
!1132 = !DILocation(line: 310, column: 6, scope: !1119)
!1133 = !DILocation(line: 316, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 316, column: 6)
!1135 = !DILocation(line: 316, column: 6, scope: !1119)
!1136 = !DILocation(line: 317, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 316, column: 14)
!1138 = !DILocation(line: 322, column: 2, scope: !1119)
!1139 = !DILocation(line: 323, column: 42, scope: !1119)
!1140 = !DILocation(line: 325, column: 7, scope: !1119)
!1141 = !DILocation(line: 323, column: 11, scope: !1119)
!1142 = !DILocation(line: 323, column: 9, scope: !1119)
!1143 = !DILocation(line: 326, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 326, column: 6)
!1145 = !DILocation(line: 326, column: 6, scope: !1119)
!1146 = !DILocation(line: 327, column: 16, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 326, column: 17)
!1148 = !DILocation(line: 327, column: 4, scope: !1147)
!1149 = !DILocation(line: 327, column: 14, scope: !1147)
!1150 = !DILocation(line: 328, column: 2, scope: !1147)
!1151 = !DILocation(line: 330, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 330, column: 6)
!1153 = !DILocation(line: 330, column: 6, scope: !1119)
!1154 = !DILocation(line: 334, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 330, column: 28)
!1156 = !DILocation(line: 335, column: 2, scope: !1155)
!1157 = !DILocation(line: 337, column: 2, scope: !1119)
!1158 = !DILocation(line: 338, column: 1, scope: !1119)
!1159 = !DISubprogram(name: "acpi_tb_install_and_load_table", scope: !1065, file: !1065, line: 99, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!5, !452, !31, !902, !31, !12}
!1162 = distinct !DISubprogram(name: "acpi_unload_parent_table", scope: !3, file: !3, line: 357, type: !1163, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!5, !360}
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DILocalVariable(name: "object", arg: 1, scope: !1162, file: !3, line: 357, type: !360)
!1167 = !DILocalVariable(name: "node", scope: !1162, file: !3, line: 359, type: !17)
!1168 = !DILocalVariable(name: "status", scope: !1162, file: !3, line: 361, type: !5)
!1169 = !DILocalVariable(name: "owner_id", scope: !1162, file: !3, line: 362, type: !139)
!1170 = !DILocalVariable(name: "i", scope: !1162, file: !3, line: 363, type: !7)
!1171 = !DILocation(line: 357, column: 50, scope: !1162)
!1172 = !DILocation(line: 359, column: 2, scope: !1162)
!1173 = !DILocation(line: 359, column: 30, scope: !1162)
!1174 = !DILocation(line: 360, column: 6, scope: !1162)
!1175 = !DILocation(line: 361, column: 2, scope: !1162)
!1176 = !DILocation(line: 361, column: 14, scope: !1162)
!1177 = !DILocation(line: 362, column: 2, scope: !1162)
!1178 = !DILocation(line: 362, column: 16, scope: !1162)
!1179 = !DILocation(line: 363, column: 2, scope: !1162)
!1180 = !DILocation(line: 363, column: 6, scope: !1162)
!1181 = !DILocation(line: 369, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 369, column: 6)
!1183 = !DILocation(line: 369, column: 6, scope: !1162)
!1184 = !DILocation(line: 370, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 369, column: 15)
!1186 = !DILocation(line: 377, column: 13, scope: !1162)
!1187 = !DILocation(line: 377, column: 19, scope: !1162)
!1188 = !DILocation(line: 377, column: 11, scope: !1162)
!1189 = !DILocation(line: 378, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 378, column: 6)
!1191 = !DILocation(line: 378, column: 6, scope: !1162)
!1192 = !DILocation(line: 382, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 378, column: 17)
!1194 = !DILocation(line: 387, column: 11, scope: !1162)
!1195 = !DILocation(line: 387, column: 9, scope: !1162)
!1196 = !DILocation(line: 388, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 388, column: 6)
!1198 = !DILocation(line: 388, column: 6, scope: !1162)
!1199 = !DILocation(line: 389, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 388, column: 28)
!1201 = !DILocation(line: 394, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 394, column: 2)
!1203 = !DILocation(line: 394, column: 7, scope: !1202)
!1204 = !DILocation(line: 394, column: 14, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 394, column: 2)
!1206 = !DILocation(line: 394, column: 43, scope: !1205)
!1207 = !DILocation(line: 394, column: 16, scope: !1205)
!1208 = !DILocation(line: 394, column: 2, scope: !1202)
!1209 = !DILocation(line: 395, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 395, column: 7)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 394, column: 69)
!1212 = !DILocation(line: 395, column: 44, scope: !1210)
!1213 = !DILocation(line: 395, column: 51, scope: !1210)
!1214 = !DILocation(line: 395, column: 19, scope: !1210)
!1215 = !DILocation(line: 395, column: 54, scope: !1210)
!1216 = !DILocation(line: 395, column: 16, scope: !1210)
!1217 = !DILocation(line: 395, column: 7, scope: !1211)
!1218 = !DILocation(line: 396, column: 4, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 395, column: 64)
!1220 = !DILocation(line: 405, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 405, column: 7)
!1222 = !DILocation(line: 405, column: 7, scope: !1211)
!1223 = !DILocation(line: 408, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 407, column: 24)
!1225 = !DILocation(line: 409, column: 4, scope: !1224)
!1226 = !DILocation(line: 412, column: 9, scope: !1211)
!1227 = !DILocation(line: 413, column: 33, scope: !1211)
!1228 = !DILocation(line: 413, column: 12, scope: !1211)
!1229 = !DILocation(line: 413, column: 10, scope: !1211)
!1230 = !DILocation(line: 414, column: 9, scope: !1211)
!1231 = !DILocation(line: 415, column: 3, scope: !1211)
!1232 = !DILocation(line: 394, column: 65, scope: !1205)
!1233 = !DILocation(line: 394, column: 2, scope: !1205)
!1234 = distinct !{!1234, !1208, !1235, !1042, !1043}
!1235 = !DILocation(line: 416, column: 2, scope: !1202)
!1236 = !DILocation(line: 418, column: 8, scope: !1162)
!1237 = !DILocation(line: 419, column: 2, scope: !1162)
!1238 = !DILocation(line: 420, column: 1, scope: !1162)
!1239 = !DISubprogram(name: "acpi_tb_unload_table", scope: !1065, file: !1065, line: 104, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!5, !7}
!1242 = distinct !DISubprogram(name: "acpi_unload_table", scope: !3, file: !3, line: 437, type: !1240, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1243)
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "table_index", arg: 1, scope: !1242, file: !3, line: 437, type: !7)
!1245 = !DILocalVariable(name: "status", scope: !1242, file: !3, line: 439, type: !5)
!1246 = !DILocation(line: 437, column: 35, scope: !1242)
!1247 = !DILocation(line: 439, column: 2, scope: !1242)
!1248 = !DILocation(line: 439, column: 14, scope: !1242)
!1249 = !DILocation(line: 443, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 443, column: 6)
!1251 = !DILocation(line: 443, column: 18, scope: !1250)
!1252 = !DILocation(line: 443, column: 6, scope: !1242)
!1253 = !DILocation(line: 447, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 443, column: 24)
!1255 = !DILocation(line: 450, column: 32, scope: !1242)
!1256 = !DILocation(line: 450, column: 11, scope: !1242)
!1257 = !DILocation(line: 450, column: 9, scope: !1242)
!1258 = !DILocation(line: 451, column: 2, scope: !1242)
!1259 = !DILocation(line: 452, column: 1, scope: !1242)
