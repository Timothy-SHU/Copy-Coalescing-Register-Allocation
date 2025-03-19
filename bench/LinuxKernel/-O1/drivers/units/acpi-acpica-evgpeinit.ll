; ModuleID = 'drivers/acpi/acpica/evgpeinit.c'
source_filename = "drivers/acpi/acpica/evgpeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_gpe_walk_info = type { ptr, ptr, i16, i16, i8 }
%struct.acpi_gpe_xrupt_info = type { ptr, ptr, ptr, i32 }
%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }

@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_xgpe0_block_logical_address = external dso_local global i64, align 8
@acpi_gbl_fadt_gpe_device = external dso_local global ptr, align 8
@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x ptr], align 16
@_acpi_module_name = internal constant [10 x i8] c"evgpeinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 0\00", align 1, !dbg !796
@acpi_gbl_xgpe1_block_logical_address = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"GPE0 block (GPE 0 to %u) overlaps the GPE1 block (GPE %u to %u) - Ignoring GPE1\00", align 1, !dbg !801
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 1\00", align 1, !dbg !806
@acpi_gbl_gpe_xrupt_list_head = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"While decoding _Lxx/_Exx methods\00", align 1, !dbg !808
@.str.4 = private unnamed_addr constant [20 x i8] c"Enabled %u new GPEs\00", align 1, !dbg !813
@.str.5 = private unnamed_addr constant [55 x i8] c"For GPE 0x%.2X, found both _L%2.2X and _E%2.2X methods\00", align 1, !dbg !815

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_gpe_initialize() #0 align 16 !dbg !833 {
entry:
  %retval = alloca i32, align 4
  %register_count0 = alloca i32, align 4
  %register_count1 = alloca i32, align 4
  %gpe_number_max = alloca i32, align 4
  %status = alloca i32, align 4
  %address = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_count0) #4, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %register_count0, metadata !837, metadata !DIExpression()), !dbg !844
  store i32 0, ptr %register_count0, align 4, !dbg !844
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_count1) #4, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %register_count1, metadata !838, metadata !DIExpression()), !dbg !846
  store i32 0, ptr %register_count1, align 4, !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_number_max) #4, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %gpe_number_max, metadata !839, metadata !DIExpression()), !dbg !848
  store i32 0, ptr %gpe_number_max, align 4, !dbg !848
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %status, metadata !840, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #4, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %address, metadata !841, metadata !DIExpression()), !dbg !852
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !853
  store i32 %call, ptr %status, align 4, !dbg !854
  %0 = load i32, ptr %status, align 4, !dbg !855
  %tobool = icmp ne i32 %0, 0, !dbg !855
  br i1 %tobool, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !858
  store i32 %1, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !858

if.end:                                           ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 51), align 1, !dbg !860
  %conv = zext i8 %2 to i32, !dbg !860
  %cmp = icmp eq i32 %conv, 0, !dbg !860
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !860

cond.true:                                        ; preds = %if.end
  %3 = load i64, ptr @acpi_gbl_xgpe0_block_logical_address, align 8, !dbg !860
  br label %cond.end, !dbg !860

cond.false:                                       ; preds = %if.end
  %4 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 51, i32 4), align 1, !dbg !860
  br label %cond.end, !dbg !860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !860
  store i64 %cond, ptr %address, align 8, !dbg !861
  %5 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 23), align 1, !dbg !862
  %conv2 = zext i8 %5 to i32, !dbg !864
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !864
  br i1 %tobool3, label %land.lhs.true, label %if.end14, !dbg !865

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i64, ptr %address, align 8, !dbg !866
  %tobool4 = icmp ne i64 %6, 0, !dbg !866
  br i1 %tobool4, label %if.then5, label %if.end14, !dbg !867

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 23), align 1, !dbg !868
  %conv6 = zext i8 %7 to i32, !dbg !870
  %div = sdiv i32 %conv6, 2, !dbg !871
  %conv7 = trunc i32 %div to i16, !dbg !872
  %conv8 = zext i16 %conv7 to i32, !dbg !872
  store i32 %conv8, ptr %register_count0, align 4, !dbg !873
  %8 = load i32, ptr %register_count0, align 4, !dbg !874
  %mul = mul i32 %8, 8, !dbg !875
  %sub = sub i32 %mul, 1, !dbg !876
  store i32 %sub, ptr %gpe_number_max, align 4, !dbg !877
  %9 = load ptr, ptr @acpi_gbl_fadt_gpe_device, align 8, !dbg !878
  %10 = load i64, ptr %address, align 8, !dbg !879
  %11 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 51), align 1, !dbg !880
  %12 = load i32, ptr %register_count0, align 4, !dbg !881
  %13 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !882
  %conv9 = zext i16 %13 to i32, !dbg !883
  %call10 = call i32 @acpi_ev_create_gpe_block(ptr noundef %9, i64 noundef %10, i8 noundef zeroext %11, i32 noundef %12, i16 noundef zeroext 0, i32 noundef %conv9, ptr noundef @acpi_gbl_gpe_fadt_blocks) #5, !dbg !884
  store i32 %call10, ptr %status, align 4, !dbg !885
  %14 = load i32, ptr %status, align 4, !dbg !886
  %tobool11 = icmp ne i32 %14, 0, !dbg !886
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !888

if.then12:                                        ; preds = %if.then5
  %15 = load i32, ptr %status, align 4, !dbg !889
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 119, i32 noundef %15, ptr noundef @.str) #5, !dbg !889
  br label %if.end13, !dbg !891

if.end13:                                         ; preds = %if.then12, %if.then5
  br label %if.end14, !dbg !892

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %cond.end
  %16 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 52), align 1, !dbg !893
  %conv15 = zext i8 %16 to i32, !dbg !893
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !893
  br i1 %cmp16, label %cond.true18, label %cond.false19, !dbg !893

cond.true18:                                      ; preds = %if.end14
  %17 = load i64, ptr @acpi_gbl_xgpe1_block_logical_address, align 8, !dbg !893
  br label %cond.end20, !dbg !893

cond.false19:                                     ; preds = %if.end14
  %18 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 52, i32 4), align 1, !dbg !893
  br label %cond.end20, !dbg !893

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ %17, %cond.true18 ], [ %18, %cond.false19 ], !dbg !893
  store i64 %cond21, ptr %address, align 8, !dbg !894
  %19 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 24), align 1, !dbg !895
  %conv22 = zext i8 %19 to i32, !dbg !897
  %tobool23 = icmp ne i32 %conv22, 0, !dbg !897
  br i1 %tobool23, label %land.lhs.true24, label %if.end48, !dbg !898

land.lhs.true24:                                  ; preds = %cond.end20
  %20 = load i64, ptr %address, align 8, !dbg !899
  %tobool25 = icmp ne i64 %20, 0, !dbg !899
  br i1 %tobool25, label %if.then26, label %if.end48, !dbg !900

if.then26:                                        ; preds = %land.lhs.true24
  %21 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 24), align 1, !dbg !901
  %conv27 = zext i8 %21 to i32, !dbg !903
  %div28 = sdiv i32 %conv27, 2, !dbg !904
  %conv29 = trunc i32 %div28 to i16, !dbg !905
  %conv30 = zext i16 %conv29 to i32, !dbg !905
  store i32 %conv30, ptr %register_count1, align 4, !dbg !906
  %22 = load i32, ptr %register_count0, align 4, !dbg !907
  %tobool31 = icmp ne i32 %22, 0, !dbg !909
  br i1 %tobool31, label %land.lhs.true32, label %if.else, !dbg !910

land.lhs.true32:                                  ; preds = %if.then26
  %23 = load i32, ptr %gpe_number_max, align 4, !dbg !911
  %24 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !912
  %conv33 = zext i8 %24 to i32, !dbg !913
  %cmp34 = icmp uge i32 %23, %conv33, !dbg !914
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !915

if.then36:                                        ; preds = %land.lhs.true32
  %25 = load i32, ptr %gpe_number_max, align 4, !dbg !916
  %26 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !916
  %conv37 = zext i8 %26 to i32, !dbg !916
  %27 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !916
  %conv38 = zext i8 %27 to i32, !dbg !916
  %28 = load i32, ptr %register_count1, align 4, !dbg !916
  %mul39 = mul i32 %28, 8, !dbg !916
  %sub40 = sub i32 %mul39, 1, !dbg !916
  %add = add i32 %conv38, %sub40, !dbg !916
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 136, ptr noundef @.str.1, i32 noundef %25, i32 noundef %conv37, i32 noundef %add) #5, !dbg !916
  store i32 0, ptr %register_count1, align 4, !dbg !918
  br label %if.end47, !dbg !919

if.else:                                          ; preds = %land.lhs.true32, %if.then26
  %29 = load ptr, ptr @acpi_gbl_fadt_gpe_device, align 8, !dbg !920
  %30 = load i64, ptr %address, align 8, !dbg !922
  %31 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 52), align 1, !dbg !923
  %32 = load i32, ptr %register_count1, align 4, !dbg !924
  %33 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !925
  %conv41 = zext i8 %33 to i16, !dbg !926
  %34 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !927
  %conv42 = zext i16 %34 to i32, !dbg !928
  %call43 = call i32 @acpi_ev_create_gpe_block(ptr noundef %29, i64 noundef %30, i8 noundef zeroext %31, i32 noundef %32, i16 noundef zeroext %conv41, i32 noundef %conv42, ptr noundef getelementptr inbounds ([2 x ptr], ptr @acpi_gbl_gpe_fadt_blocks, i64 0, i64 1)) #5, !dbg !929
  store i32 %call43, ptr %status, align 4, !dbg !930
  %35 = load i32, ptr %status, align 4, !dbg !931
  %tobool44 = icmp ne i32 %35, 0, !dbg !931
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !933

if.then45:                                        ; preds = %if.else
  %36 = load i32, ptr %status, align 4, !dbg !934
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 162, i32 noundef %36, ptr noundef @.str.2) #5, !dbg !934
  br label %if.end46, !dbg !936

if.end46:                                         ; preds = %if.then45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then36
  br label %if.end48, !dbg !937

if.end48:                                         ; preds = %if.end47, %land.lhs.true24, %cond.end20
  %37 = load i32, ptr %register_count0, align 4, !dbg !938
  %38 = load i32, ptr %register_count1, align 4, !dbg !940
  %add49 = add i32 %37, %38, !dbg !941
  %cmp50 = icmp eq i32 %add49, 0, !dbg !942
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !943

if.then52:                                        ; preds = %if.end48
  br label %cleanup, !dbg !944

if.end53:                                         ; preds = %if.end48
  br label %cleanup, !dbg !946

cleanup:                                          ; preds = %if.end53, %if.then52
  call void @llvm.dbg.label(metadata !842), !dbg !947
  %call54 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !948
  store i32 0, ptr %retval, align 4, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !949

cleanup55:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #4, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_number_max) #4, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_count1) #4, !dbg !950
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_count0) #4, !dbg !950
  %39 = load i32, ptr %retval, align 4, !dbg !950
  ret i32 %39, !dbg !950
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !951 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !956 dso_local i32 @acpi_ev_create_gpe_block(ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !961 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !966 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !969 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ev_update_gpes(i16 noundef zeroext %table_owner_id) #0 align 16 !dbg !970 {
entry:
  %table_owner_id.addr = alloca i16, align 2
  %gpe_xrupt_info = alloca ptr, align 8
  %gpe_block = alloca ptr, align 8
  %walk_info = alloca %struct.acpi_gpe_walk_info, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %table_owner_id, ptr %table_owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %table_owner_id.addr, metadata !974, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_info) #4, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info, metadata !975, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #4, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !976, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 24, ptr %walk_info) #4, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %walk_info, metadata !977, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !986
  call void @llvm.dbg.declare(metadata ptr %status, metadata !978, metadata !DIExpression()), !dbg !987
  store i32 0, ptr %status, align 4, !dbg !987
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #5, !dbg !988
  store i32 %call, ptr %status, align 4, !dbg !989
  %0 = load i32, ptr %status, align 4, !dbg !990
  %tobool = icmp ne i32 %0, 0, !dbg !990
  br i1 %tobool, label %if.then, label %if.end, !dbg !992

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 2, !dbg !995
  store i16 0, ptr %count, align 8, !dbg !996
  %1 = load i16, ptr %table_owner_id.addr, align 2, !dbg !997
  %owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 3, !dbg !998
  store i16 %1, ptr %owner_id, align 2, !dbg !999
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 4, !dbg !1000
  store i8 1, ptr %execute_by_owner_id, align 4, !dbg !1001
  %2 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1002
  store ptr %2, ptr %gpe_xrupt_info, align 8, !dbg !1003
  br label %while.cond, !dbg !1004

while.cond:                                       ; preds = %while.end, %if.end
  %3 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !1005
  %tobool1 = icmp ne ptr %3, null, !dbg !1004
  br i1 %tobool1, label %while.body, label %while.end12, !dbg !1004

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !1006
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %4, i32 0, i32 2, !dbg !1008
  %5 = load ptr, ptr %gpe_block_list_head, align 8, !dbg !1008
  store ptr %5, ptr %gpe_block, align 8, !dbg !1009
  br label %while.cond2, !dbg !1010

while.cond2:                                      ; preds = %if.end10, %while.body
  %6 = load ptr, ptr %gpe_block, align 8, !dbg !1011
  %tobool3 = icmp ne ptr %6, null, !dbg !1010
  br i1 %tobool3, label %while.body4, label %while.end, !dbg !1010

while.body4:                                      ; preds = %while.cond2
  %7 = load ptr, ptr %gpe_block, align 8, !dbg !1012
  %gpe_block5 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 1, !dbg !1014
  store ptr %7, ptr %gpe_block5, align 8, !dbg !1015
  %8 = load ptr, ptr %gpe_block, align 8, !dbg !1016
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %8, i32 0, i32 0, !dbg !1017
  %9 = load ptr, ptr %node, align 8, !dbg !1017
  %gpe_device = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 0, !dbg !1018
  store ptr %9, ptr %gpe_device, align 8, !dbg !1019
  %gpe_device6 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 0, !dbg !1020
  %10 = load ptr, ptr %gpe_device6, align 8, !dbg !1020
  %call7 = call i32 @acpi_ns_walk_namespace(i32 noundef 8, ptr noundef %10, i32 noundef -1, i32 noundef 0, ptr noundef @acpi_ev_match_gpe_method, ptr noundef null, ptr noundef %walk_info, ptr noundef null) #5, !dbg !1021
  store i32 %call7, ptr %status, align 4, !dbg !1022
  %11 = load i32, ptr %status, align 4, !dbg !1023
  %tobool8 = icmp ne i32 %11, 0, !dbg !1023
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1025

if.then9:                                         ; preds = %while.body4
  %12 = load i32, ptr %status, align 4, !dbg !1026
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 247, i32 noundef %12, ptr noundef @.str.3) #5, !dbg !1026
  br label %if.end10, !dbg !1028

if.end10:                                         ; preds = %if.then9, %while.body4
  %13 = load ptr, ptr %gpe_block, align 8, !dbg !1029
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %13, i32 0, i32 2, !dbg !1030
  %14 = load ptr, ptr %next, align 8, !dbg !1030
  store ptr %14, ptr %gpe_block, align 8, !dbg !1031
  br label %while.cond2, !dbg !1010, !llvm.loop !1032

while.end:                                        ; preds = %while.cond2
  %15 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !1036
  %next11 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %15, i32 0, i32 1, !dbg !1037
  %16 = load ptr, ptr %next11, align 8, !dbg !1037
  store ptr %16, ptr %gpe_xrupt_info, align 8, !dbg !1038
  br label %while.cond, !dbg !1004, !llvm.loop !1039

while.end12:                                      ; preds = %while.cond
  %count13 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 2, !dbg !1041
  %17 = load i16, ptr %count13, align 8, !dbg !1041
  %tobool14 = icmp ne i16 %17, 0, !dbg !1043
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1044

if.then15:                                        ; preds = %while.end12
  %count16 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 2, !dbg !1045
  %18 = load i16, ptr %count16, align 8, !dbg !1045
  %conv = zext i16 %18 to i32, !dbg !1045
  call void (ptr, ...) @acpi_info(ptr noundef @.str.4, i32 noundef %conv) #5, !dbg !1045
  br label %if.end17, !dbg !1047

if.end17:                                         ; preds = %if.then15, %while.end12
  %call18 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #5, !dbg !1048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1049

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 24, ptr %walk_info) #4, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #4, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_info) #4, !dbg !1050
  ret void, !dbg !1050
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1051 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_match_gpe_method(ptr noundef %obj_handle, i32 noundef %level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1057 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %method_node = alloca ptr, align 8
  %walk_info = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %gpe_number = alloca i32, align 4
  %temp_gpe_number = alloca i8, align 1
  %name = alloca [5 x i8], align 1
  %type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1059, metadata !DIExpression()), !dbg !1074
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1060, metadata !DIExpression()), !dbg !1075
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1061, metadata !DIExpression()), !dbg !1076
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1062, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_node) #4, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %method_node, metadata !1063, metadata !DIExpression()), !dbg !1079
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1080
  %1 = ptrtoint ptr %0 to i64, !dbg !1080
  %2 = inttoptr i64 %1 to ptr, !dbg !1080
  store ptr %2, ptr %method_node, align 8, !dbg !1079
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_info) #4, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %walk_info, metadata !1064, metadata !DIExpression()), !dbg !1082
  %3 = load ptr, ptr %context.addr, align 8, !dbg !1083
  %4 = ptrtoint ptr %3 to i64, !dbg !1083
  %5 = inttoptr i64 %4 to ptr, !dbg !1083
  store ptr %5, ptr %walk_info, align 8, !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #4, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1065, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1066, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_number) #4, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %gpe_number, metadata !1067, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 1, ptr %temp_gpe_number) #4, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %temp_gpe_number, metadata !1068, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 5, ptr %name) #4, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1069, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #4, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1073, metadata !DIExpression()), !dbg !1095
  %6 = load ptr, ptr %walk_info, align 8, !dbg !1096
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %6, i32 0, i32 4, !dbg !1098
  %7 = load i8, ptr %execute_by_owner_id, align 4, !dbg !1098
  %conv = zext i8 %7 to i32, !dbg !1099
  %tobool = icmp ne i32 %conv, 0, !dbg !1099
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1100

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %method_node, align 8, !dbg !1101
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 8, !dbg !1102
  %9 = load i16, ptr %owner_id, align 8, !dbg !1102
  %conv1 = zext i16 %9 to i32, !dbg !1101
  %10 = load ptr, ptr %walk_info, align 8, !dbg !1103
  %owner_id2 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %10, i32 0, i32 3, !dbg !1104
  %11 = load i16, ptr %owner_id2, align 2, !dbg !1104
  %conv3 = zext i16 %11 to i32, !dbg !1103
  %cmp = icmp ne i32 %conv1, %conv3, !dbg !1105
  br i1 %cmp, label %if.then, label %if.end, !dbg !1106

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %method_node, align 8, !dbg !1109
  %name5 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 4, !dbg !1109
  %13 = load i32, ptr %name5, align 4, !dbg !1109
  %arraydecay = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !1109
  store i32 %13, ptr %arraydecay, align 4, !dbg !1109
  %arrayidx = getelementptr [5 x i8], ptr %name, i64 0, i64 4, !dbg !1110
  store i8 0, ptr %arrayidx, align 1, !dbg !1111
  %arrayidx6 = getelementptr [5 x i8], ptr %name, i64 0, i64 0, !dbg !1112
  %14 = load i8, ptr %arrayidx6, align 1, !dbg !1112
  %conv7 = zext i8 %14 to i32, !dbg !1112
  %cmp8 = icmp ne i32 %conv7, 95, !dbg !1114
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1115

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr [5 x i8], ptr %name, i64 0, i64 1, !dbg !1118
  %15 = load i8, ptr %arrayidx12, align 1, !dbg !1118
  %conv13 = zext i8 %15 to i32, !dbg !1118
  switch i32 %conv13, label %sw.default [
    i32 76, label %sw.bb
    i32 69, label %sw.bb14
  ], !dbg !1119

sw.bb:                                            ; preds = %if.end11
  store i8 8, ptr %type, align 1, !dbg !1120
  br label %sw.epilog, !dbg !1122

sw.bb14:                                          ; preds = %if.end11
  store i8 0, ptr %type, align 1, !dbg !1123
  br label %sw.epilog, !dbg !1124

sw.default:                                       ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb
  %arrayidx15 = getelementptr [5 x i8], ptr %name, i64 0, i64 2, !dbg !1126
  %call = call i32 @acpi_ut_ascii_to_hex_byte(ptr noundef %arrayidx15, ptr noundef %temp_gpe_number) #5, !dbg !1127
  store i32 %call, ptr %status, align 4, !dbg !1128
  %16 = load i32, ptr %status, align 4, !dbg !1129
  %tobool16 = icmp ne i32 %16, 0, !dbg !1129
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1131

if.then17:                                        ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

if.end18:                                         ; preds = %sw.epilog
  %17 = load i8, ptr %temp_gpe_number, align 1, !dbg !1134
  %conv19 = zext i8 %17 to i32, !dbg !1135
  store i32 %conv19, ptr %gpe_number, align 4, !dbg !1136
  %18 = load i32, ptr %gpe_number, align 4, !dbg !1137
  %19 = load ptr, ptr %walk_info, align 8, !dbg !1138
  %gpe_block = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %19, i32 0, i32 1, !dbg !1139
  %20 = load ptr, ptr %gpe_block, align 8, !dbg !1139
  %call20 = call ptr @acpi_ev_low_get_gpe_info(i32 noundef %18, ptr noundef %20) #5, !dbg !1140
  store ptr %call20, ptr %gpe_event_info, align 8, !dbg !1141
  %21 = load ptr, ptr %gpe_event_info, align 8, !dbg !1142
  %tobool21 = icmp ne ptr %21, null, !dbg !1142
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1144

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

if.end23:                                         ; preds = %if.end18
  %22 = load ptr, ptr %gpe_event_info, align 8, !dbg !1147
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %22, i32 0, i32 2, !dbg !1147
  %23 = load i8, ptr %flags, align 8, !dbg !1147
  %conv24 = zext i8 %23 to i32, !dbg !1147
  %and = and i32 %conv24, 7, !dbg !1147
  %conv25 = trunc i32 %and to i8, !dbg !1147
  %conv26 = zext i8 %conv25 to i32, !dbg !1147
  %cmp27 = icmp eq i32 %conv26, 2, !dbg !1149
  br i1 %cmp27, label %if.then36, label %lor.lhs.false, !dbg !1150

lor.lhs.false:                                    ; preds = %if.end23
  %24 = load ptr, ptr %gpe_event_info, align 8, !dbg !1151
  %flags29 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %24, i32 0, i32 2, !dbg !1151
  %25 = load i8, ptr %flags29, align 8, !dbg !1151
  %conv30 = zext i8 %25 to i32, !dbg !1151
  %and31 = and i32 %conv30, 7, !dbg !1151
  %conv32 = trunc i32 %and31 to i8, !dbg !1151
  %conv33 = zext i8 %conv32 to i32, !dbg !1151
  %cmp34 = icmp eq i32 %conv33, 4, !dbg !1152
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1153

if.then36:                                        ; preds = %lor.lhs.false, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !1154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1154

if.end37:                                         ; preds = %lor.lhs.false
  %26 = load ptr, ptr %gpe_event_info, align 8, !dbg !1156
  %flags38 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %26, i32 0, i32 2, !dbg !1156
  %27 = load i8, ptr %flags38, align 8, !dbg !1156
  %conv39 = zext i8 %27 to i32, !dbg !1156
  %and40 = and i32 %conv39, 7, !dbg !1156
  %conv41 = trunc i32 %and40 to i8, !dbg !1156
  %conv42 = zext i8 %conv41 to i32, !dbg !1156
  %cmp43 = icmp eq i32 %conv42, 1, !dbg !1158
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !1159

if.then45:                                        ; preds = %if.end37
  %28 = load i8, ptr %type, align 1, !dbg !1160
  %conv46 = zext i8 %28 to i32, !dbg !1160
  %29 = load ptr, ptr %gpe_event_info, align 8, !dbg !1163
  %flags47 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %29, i32 0, i32 2, !dbg !1164
  %30 = load i8, ptr %flags47, align 8, !dbg !1164
  %conv48 = zext i8 %30 to i32, !dbg !1163
  %and49 = and i32 %conv48, 8, !dbg !1165
  %cmp50 = icmp ne i32 %conv46, %and49, !dbg !1166
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1167

if.then52:                                        ; preds = %if.then45
  %31 = load i32, ptr %gpe_number, align 4, !dbg !1168
  %32 = load i32, ptr %gpe_number, align 4, !dbg !1168
  %33 = load i32, ptr %gpe_number, align 4, !dbg !1168
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 398, ptr noundef @.str.5, i32 noundef %31, i32 noundef %32, i32 noundef %33) #5, !dbg !1168
  br label %if.end53, !dbg !1170

if.end53:                                         ; preds = %if.then52, %if.then45
  store i32 0, ptr %retval, align 4, !dbg !1171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1171

if.end54:                                         ; preds = %if.end37
  %34 = load ptr, ptr %gpe_event_info, align 8, !dbg !1172
  %call55 = call i32 @acpi_hw_low_set_gpe(ptr noundef %34, i32 noundef 1) #5, !dbg !1173
  %35 = load ptr, ptr %gpe_event_info, align 8, !dbg !1174
  %flags56 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %35, i32 0, i32 2, !dbg !1175
  %36 = load i8, ptr %flags56, align 8, !dbg !1176
  %conv57 = zext i8 %36 to i32, !dbg !1176
  %and58 = and i32 %conv57, -8, !dbg !1176
  %conv59 = trunc i32 %and58 to i8, !dbg !1176
  store i8 %conv59, ptr %flags56, align 8, !dbg !1176
  %37 = load i8, ptr %type, align 1, !dbg !1177
  %conv60 = zext i8 %37 to i32, !dbg !1177
  %or = or i32 %conv60, 1, !dbg !1178
  %conv61 = trunc i32 %or to i8, !dbg !1179
  %conv62 = zext i8 %conv61 to i32, !dbg !1179
  %38 = load ptr, ptr %gpe_event_info, align 8, !dbg !1180
  %flags63 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %38, i32 0, i32 2, !dbg !1181
  %39 = load i8, ptr %flags63, align 8, !dbg !1182
  %conv64 = zext i8 %39 to i32, !dbg !1182
  %or65 = or i32 %conv64, %conv62, !dbg !1182
  %conv66 = trunc i32 %or65 to i8, !dbg !1182
  store i8 %conv66, ptr %flags63, align 8, !dbg !1182
  %40 = load ptr, ptr %method_node, align 8, !dbg !1183
  %41 = load ptr, ptr %gpe_event_info, align 8, !dbg !1184
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %41, i32 0, i32 0, !dbg !1185
  store ptr %40, ptr %dispatch, align 8, !dbg !1186
  store i32 0, ptr %retval, align 4, !dbg !1187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1187

cleanup:                                          ; preds = %if.end54, %if.end53, %if.then36, %if.then22, %if.then17, %sw.default, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 5, ptr %name) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 1, ptr %temp_gpe_number) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_number) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_info) #4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_node) #4, !dbg !1188
  %42 = load i32, ptr %retval, align 4, !dbg !1188
  ret i32 %42, !dbg !1188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1189 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1192 dso_local i32 @acpi_ut_ascii_to_hex_byte(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1195 dso_local ptr @acpi_ev_low_get_gpe_info(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1198 dso_local i32 @acpi_hw_low_set_gpe(ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!824, !825, !826, !827, !828, !829, !830, !831}
!llvm.ident = !{!832}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !820, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evgpeinit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evgpeinit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evgpeinit.ll drivers/acpi/acpica/evgpeinit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !795, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeinit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d84c4a3bcf30805c81672dee7517ce")
!4 = !{!5, !12, !15, !18, !19, !22, !783, !786, !794, !101, !7}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !14)
!14 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !17)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !24, line: 133, size: 384, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!25 = !{!26, !770, !771, !772, !773, !779, !780, !781, !782}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !23, file: !24, line: 134, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !29, line: 369, size: 576, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!30 = !{!31, !39, !52, !64, !78, !92, !102, !419, !436, !452, !465, !543, !555, !569, !579, !597, !619, !638, !657, !676, !689, !716, !733, !746, !760, !769}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 370, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !29, line: 73, size: 128, elements: !33)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !32, file: !29, line: 74, baseType: !27, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 74, baseType: !7, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !29, line: 74, baseType: !7, size: 8, offset: 72)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !32, file: !29, line: 74, baseType: !15, size: 16, offset: 80)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 74, baseType: !7, size: 8, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !28, file: !29, line: 371, baseType: !40, size: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !29, line: 76, size: 192, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !29, line: 77, baseType: !27, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !29, line: 77, baseType: !7, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !29, line: 77, baseType: !7, size: 8, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !29, line: 77, baseType: !15, size: 16, offset: 80)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !29, line: 77, baseType: !7, size: 8, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !40, file: !29, line: 77, baseType: !48, size: 24, offset: 104)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 3)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !40, file: !29, line: 78, baseType: !12, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !28, file: !29, line: 372, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !29, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !29, line: 94, baseType: !27, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !29, line: 94, baseType: !7, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !29, line: 94, baseType: !7, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !29, line: 94, baseType: !15, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !29, line: 94, baseType: !7, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !53, file: !29, line: 94, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !29, line: 94, baseType: !19, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !28, file: !29, line: 373, baseType: !65, size: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !29, line: 97, size: 384, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74, !75, !76, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !29, line: 98, baseType: !27, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !29, line: 98, baseType: !7, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !29, line: 98, baseType: !7, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !29, line: 98, baseType: !15, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !29, line: 98, baseType: !7, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !29, line: 98, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !29, line: 98, baseType: !19, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !65, file: !29, line: 99, baseType: !19, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !65, file: !29, line: 100, baseType: !73, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !29, line: 101, baseType: !22, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !28, file: !29, line: 374, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !29, line: 104, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !29, line: 105, baseType: !27, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !29, line: 105, baseType: !7, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !29, line: 105, baseType: !7, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !29, line: 105, baseType: !15, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !29, line: 105, baseType: !7, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !29, line: 105, baseType: !22, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !79, file: !29, line: 106, baseType: !88, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !29, line: 107, baseType: !73, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !29, line: 108, baseType: !19, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !79, file: !29, line: 109, baseType: !19, size: 32, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !28, file: !29, line: 375, baseType: !93, size: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !29, line: 118, size: 192, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !29, line: 119, baseType: !27, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !29, line: 119, baseType: !7, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !29, line: 119, baseType: !7, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !29, line: 119, baseType: !15, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !29, line: 119, baseType: !7, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !93, file: !29, line: 119, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !28, file: !29, line: 376, baseType: !103, size: 448)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !29, line: 144, size: 448, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !416, !417, !418}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !29, line: 145, baseType: !27, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !29, line: 145, baseType: !7, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !29, line: 145, baseType: !7, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !29, line: 145, baseType: !15, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !29, line: 145, baseType: !7, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !103, file: !29, line: 145, baseType: !7, size: 8, offset: 104)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !103, file: !29, line: 146, baseType: !7, size: 8, offset: 112)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !103, file: !29, line: 147, baseType: !7, size: 8, offset: 120)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !29, line: 148, baseType: !27, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !29, line: 149, baseType: !27, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !29, line: 150, baseType: !73, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !103, file: !29, line: 154, baseType: !117, size: 64, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !29, line: 151, size: 64, elements: !118)
!118 = !{!119, !415}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !117, file: !29, line: 152, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !24, line: 248, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!18, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !126, line: 37, size: 9024, elements: !127)
!126 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !361, !362, !363, !364, !365, !369, !371, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !398, !399, !400, !401, !402, !403, !404, !405, !407, !413}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 38, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !126, line: 39, baseType: !7, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !125, file: !126, line: 40, baseType: !7, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !125, file: !126, line: 41, baseType: !15, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !125, file: !126, line: 42, baseType: !7, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !125, file: !126, line: 43, baseType: !7, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !125, file: !126, line: 44, baseType: !7, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !126, line: 45, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !15)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !125, file: !126, line: 46, baseType: !7, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !125, file: !126, line: 47, baseType: !7, size: 8, offset: 152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !125, file: !126, line: 48, baseType: !7, size: 8, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !125, file: !126, line: 49, baseType: !7, size: 8, offset: 168)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !125, file: !126, line: 50, baseType: !7, size: 8, offset: 176)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !125, file: !126, line: 51, baseType: !7, size: 8, offset: 184)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !125, file: !126, line: 52, baseType: !7, size: 8, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !125, file: !126, line: 53, baseType: !7, size: 8, offset: 200)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !125, file: !126, line: 54, baseType: !73, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !125, file: !126, line: 55, baseType: !19, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !125, file: !126, line: 56, baseType: !19, size: 32, offset: 352)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !125, file: !126, line: 57, baseType: !19, size: 32, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !125, file: !126, line: 58, baseType: !19, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !125, file: !126, line: 60, baseType: !151, size: 640, offset: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !24, line: 909, size: 640, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !242, !243, !359, !360}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !24, line: 910, baseType: !73, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !24, line: 911, baseType: !73, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !151, file: !24, line: 912, baseType: !73, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !151, file: !24, line: 913, baseType: !73, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !151, file: !24, line: 914, baseType: !73, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !151, file: !24, line: 915, baseType: !159, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !24, line: 891, size: 1600, elements: !161)
!161 = !{!162, !182, !198}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !160, file: !24, line: 892, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !24, line: 844, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !24, line: 845, baseType: !159, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !24, line: 845, baseType: !7, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !24, line: 845, baseType: !7, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !163, file: !24, line: 845, baseType: !15, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !24, line: 845, baseType: !73, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !24, line: 845, baseType: !159, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !24, line: 845, baseType: !22, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !163, file: !24, line: 845, baseType: !173, size: 64, offset: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !24, line: 732, size: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !173, file: !24, line: 733, baseType: !12, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !24, line: 734, baseType: !19, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !173, file: !24, line: 735, baseType: !61, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !173, file: !24, line: 736, baseType: !73, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !24, line: 737, baseType: !61, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !173, file: !24, line: 738, baseType: !159, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !163, file: !24, line: 845, baseType: !7, size: 8, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !160, file: !24, line: 893, baseType: !183, size: 640)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !24, line: 851, size: 640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !24, line: 852, baseType: !159, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !24, line: 852, baseType: !7, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !24, line: 852, baseType: !7, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !24, line: 852, baseType: !15, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !24, line: 852, baseType: !73, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !24, line: 852, baseType: !159, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !24, line: 852, baseType: !22, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !24, line: 852, baseType: !173, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !24, line: 852, baseType: !7, size: 8, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !183, file: !24, line: 852, baseType: !61, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !24, line: 853, baseType: !73, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !183, file: !24, line: 854, baseType: !19, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !24, line: 855, baseType: !19, size: 32, offset: 608)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !160, file: !24, line: 894, baseType: !199, size: 1600)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !24, line: 862, size: 1600, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !24, line: 863, baseType: !159, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !24, line: 863, baseType: !7, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !24, line: 863, baseType: !7, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !24, line: 863, baseType: !15, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !24, line: 863, baseType: !73, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !24, line: 863, baseType: !159, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !24, line: 863, baseType: !22, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !24, line: 863, baseType: !173, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !24, line: 863, baseType: !7, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !199, file: !24, line: 863, baseType: !159, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !199, file: !24, line: 864, baseType: !159, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !199, file: !24, line: 865, baseType: !61, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !199, file: !24, line: 866, baseType: !7, size: 8, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !199, file: !24, line: 867, baseType: !61, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !199, file: !24, line: 868, baseType: !61, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !199, file: !24, line: 869, baseType: !61, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !199, file: !24, line: 870, baseType: !218, size: 32, offset: 896)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 4)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !199, file: !24, line: 871, baseType: !19, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !199, file: !24, line: 872, baseType: !19, size: 32, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !199, file: !24, line: 873, baseType: !19, size: 32, offset: 992)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !199, file: !24, line: 874, baseType: !19, size: 32, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !199, file: !24, line: 875, baseType: !19, size: 32, offset: 1056)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !199, file: !24, line: 876, baseType: !19, size: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !199, file: !24, line: 877, baseType: !19, size: 32, offset: 1120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !199, file: !24, line: 878, baseType: !19, size: 32, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !199, file: !24, line: 879, baseType: !19, size: 32, offset: 1184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !199, file: !24, line: 880, baseType: !19, size: 32, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !199, file: !24, line: 881, baseType: !19, size: 32, offset: 1248)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !199, file: !24, line: 882, baseType: !19, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !199, file: !24, line: 883, baseType: !19, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !199, file: !24, line: 884, baseType: !15, size: 16, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !199, file: !24, line: 885, baseType: !7, size: 8, offset: 1360)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !199, file: !24, line: 886, baseType: !7, size: 8, offset: 1368)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !199, file: !24, line: 887, baseType: !7, size: 8, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !199, file: !24, line: 888, baseType: !239, size: 160, offset: 1384)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 20)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !151, file: !24, line: 916, baseType: !22, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !151, file: !24, line: 917, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !24, line: 679, size: 640, elements: !246)
!246 = !{!247, !255, !268, !277, !286, !299, !313, !325, !337}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !245, file: !24, line: 680, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !24, line: 575, size: 128, elements: !249)
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !24, line: 576, baseType: !101, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !24, line: 576, baseType: !7, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !24, line: 576, baseType: !7, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !24, line: 576, baseType: !15, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !24, line: 576, baseType: !15, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !245, file: !24, line: 681, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !24, line: 604, size: 384, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !24, line: 605, baseType: !101, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !24, line: 605, baseType: !7, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !24, line: 605, baseType: !7, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !24, line: 605, baseType: !15, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !24, line: 605, baseType: !15, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !256, file: !24, line: 606, baseType: !15, size: 16, offset: 112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !256, file: !24, line: 607, baseType: !159, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !256, file: !24, line: 608, baseType: !73, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !256, file: !24, line: 609, baseType: !73, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !256, file: !24, line: 610, baseType: !12, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !245, file: !24, line: 682, baseType: !269, size: 192)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !24, line: 582, size: 192, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !24, line: 583, baseType: !101, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !24, line: 583, baseType: !7, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !24, line: 583, baseType: !7, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !24, line: 583, baseType: !15, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !24, line: 583, baseType: !15, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !269, file: !24, line: 584, baseType: !27, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !24, line: 683, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !24, line: 616, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !24, line: 617, baseType: !101, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !24, line: 617, baseType: !7, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !24, line: 617, baseType: !7, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !24, line: 617, baseType: !15, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !24, line: 617, baseType: !15, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !24, line: 618, baseType: !22, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !245, file: !24, line: 684, baseType: !287, size: 448)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !24, line: 621, size: 448, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !24, line: 622, baseType: !101, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !24, line: 622, baseType: !7, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !24, line: 622, baseType: !7, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !24, line: 622, baseType: !15, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !24, line: 622, baseType: !15, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !287, file: !24, line: 623, baseType: !19, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !287, file: !24, line: 624, baseType: !159, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !287, file: !24, line: 625, baseType: !73, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !287, file: !24, line: 626, baseType: !73, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !287, file: !24, line: 627, baseType: !19, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !245, file: !24, line: 685, baseType: !300, size: 512)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !24, line: 590, size: 512, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !24, line: 591, baseType: !101, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !24, line: 591, baseType: !7, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !24, line: 591, baseType: !7, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !24, line: 591, baseType: !15, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !24, line: 591, baseType: !15, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !300, file: !24, line: 592, baseType: !19, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !300, file: !24, line: 593, baseType: !27, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !300, file: !24, line: 594, baseType: !27, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !300, file: !24, line: 595, baseType: !124, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !300, file: !24, line: 596, baseType: !101, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !300, file: !24, line: 597, baseType: !19, size: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !245, file: !24, line: 686, baseType: !314, size: 320)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !24, line: 634, size: 320, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !24, line: 635, baseType: !101, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !24, line: 635, baseType: !7, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !24, line: 635, baseType: !7, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !24, line: 635, baseType: !15, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !24, line: 635, baseType: !15, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !314, file: !24, line: 636, baseType: !7, size: 8, offset: 112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !314, file: !24, line: 637, baseType: !124, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !314, file: !24, line: 638, baseType: !27, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !314, file: !24, line: 639, baseType: !12, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !24, line: 687, baseType: !326, size: 640)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !24, line: 646, size: 640, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !24, line: 647, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !24, line: 647, baseType: !7, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !24, line: 647, baseType: !7, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !24, line: 647, baseType: !15, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !24, line: 647, baseType: !15, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !326, file: !24, line: 648, baseType: !334, size: 512, offset: 128)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 512, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !245, file: !24, line: 688, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !24, line: 669, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !24, line: 670, baseType: !101, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !24, line: 670, baseType: !7, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !24, line: 670, baseType: !7, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !24, line: 670, baseType: !15, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !24, line: 670, baseType: !15, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !338, file: !24, line: 671, baseType: !7, size: 8, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !24, line: 672, baseType: !22, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !338, file: !24, line: 673, baseType: !27, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !338, file: !24, line: 674, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !24, line: 660, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !350, file: !24, line: 661, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !19, !101}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !101)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !350, file: !24, line: 662, baseType: !101, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !151, file: !24, line: 918, baseType: !159, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !151, file: !24, line: 919, baseType: !19, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !125, file: !126, line: 61, baseType: !19, size: 32, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !125, file: !126, line: 62, baseType: !19, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !125, file: !126, line: 63, baseType: !15, size: 16, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !125, file: !126, line: 64, baseType: !7, size: 8, offset: 1168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !125, file: !126, line: 66, baseType: !366, size: 2688, offset: 1216)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2688, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 7)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !125, file: !126, line: 67, baseType: !370, size: 3072, offset: 3904)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 3072, elements: !335)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !125, file: !126, line: 68, baseType: !372, size: 576, offset: 6976)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 576, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 9)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !125, file: !126, line: 69, baseType: !88, size: 64, offset: 7552)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !125, file: !126, line: 71, baseType: !73, size: 64, offset: 7616)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !125, file: !126, line: 72, baseType: !88, size: 64, offset: 7680)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !125, file: !126, line: 73, baseType: !244, size: 64, offset: 7744)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !125, file: !126, line: 74, baseType: !22, size: 64, offset: 7808)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !125, file: !126, line: 75, baseType: !27, size: 64, offset: 7872)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !125, file: !126, line: 76, baseType: !22, size: 64, offset: 7936)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !125, file: !126, line: 77, baseType: !159, size: 64, offset: 8000)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !125, file: !126, line: 78, baseType: !27, size: 64, offset: 8064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !125, file: !126, line: 79, baseType: !22, size: 64, offset: 8128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !125, file: !126, line: 80, baseType: !61, size: 64, offset: 8192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !125, file: !126, line: 81, baseType: !159, size: 64, offset: 8256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !125, file: !126, line: 82, baseType: !388, size: 64, offset: 8320)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !24, line: 718, size: 128, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !390, file: !24, line: 722, baseType: !19, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !390, file: !24, line: 723, baseType: !19, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !24, line: 724, baseType: !15, size: 16, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !390, file: !24, line: 725, baseType: !7, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !390, file: !24, line: 726, baseType: !7, size: 8, offset: 88)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !24, line: 727, baseType: !7, size: 8, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !125, file: !126, line: 83, baseType: !159, size: 64, offset: 8384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !125, file: !126, line: 84, baseType: !27, size: 64, offset: 8448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !125, file: !126, line: 85, baseType: !244, size: 64, offset: 8512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !125, file: !126, line: 86, baseType: !27, size: 64, offset: 8576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !125, file: !126, line: 87, baseType: !244, size: 64, offset: 8640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !125, file: !126, line: 88, baseType: !159, size: 64, offset: 8704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !125, file: !126, line: 89, baseType: !159, size: 64, offset: 8768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !125, file: !126, line: 90, baseType: !406, size: 64, offset: 8832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !125, file: !126, line: 91, baseType: !408, size: 64, offset: 8896)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !24, line: 652, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!18, !124, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !125, file: !126, line: 92, baseType: !414, size: 64, offset: 8960)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !24, line: 656, baseType: !121)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !117, file: !29, line: 153, baseType: !27, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !29, line: 156, baseType: !19, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !103, file: !29, line: 157, baseType: !136, size: 16, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !103, file: !29, line: 158, baseType: !7, size: 8, offset: 432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !28, file: !29, line: 377, baseType: !420, size: 576)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !29, line: 122, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !420, file: !29, line: 123, baseType: !27, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !29, line: 123, baseType: !7, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !29, line: 123, baseType: !7, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !420, file: !29, line: 123, baseType: !15, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !29, line: 123, baseType: !7, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !420, file: !29, line: 123, baseType: !7, size: 8, offset: 104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !420, file: !29, line: 124, baseType: !15, size: 16, offset: 112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !420, file: !29, line: 125, baseType: !101, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !420, file: !29, line: 126, baseType: !12, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !420, file: !29, line: 127, baseType: !406, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !420, file: !29, line: 128, baseType: !27, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !29, line: 129, baseType: !27, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !29, line: 130, baseType: !22, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !420, file: !29, line: 131, baseType: !7, size: 8, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !28, file: !29, line: 378, baseType: !437, size: 512)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !29, line: 134, size: 512, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !451}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !29, line: 135, baseType: !27, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !29, line: 135, baseType: !7, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !29, line: 135, baseType: !7, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !29, line: 135, baseType: !15, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !29, line: 135, baseType: !7, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !437, file: !29, line: 135, baseType: !7, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !29, line: 136, baseType: !22, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !437, file: !29, line: 137, baseType: !27, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !29, line: 138, baseType: !27, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !437, file: !29, line: 139, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !12)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !29, line: 140, baseType: !19, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !437, file: !29, line: 141, baseType: !101, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !28, file: !29, line: 379, baseType: !453, size: 320)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !29, line: 185, size: 320, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !464}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !29, line: 186, baseType: !27, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !29, line: 186, baseType: !7, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !29, line: 186, baseType: !7, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !29, line: 186, baseType: !15, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !29, line: 186, baseType: !7, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !453, file: !29, line: 186, baseType: !461, size: 128, offset: 128)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 2)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !453, file: !29, line: 186, baseType: !27, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !28, file: !29, line: 380, baseType: !466, size: 384)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !29, line: 188, size: 384, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !29, line: 189, baseType: !27, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !29, line: 189, baseType: !7, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !29, line: 189, baseType: !7, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !29, line: 189, baseType: !15, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !29, line: 189, baseType: !7, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !29, line: 190, baseType: !461, size: 128, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !29, line: 190, baseType: !27, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !466, file: !29, line: 190, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !24, line: 480, size: 576, elements: !478)
!478 = !{!479, !480, !481, !482, !490, !505, !537, !538, !539, !540, !541, !542}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !24, line: 481, baseType: !22, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !477, file: !24, line: 482, baseType: !476, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !24, line: 483, baseType: !476, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !477, file: !24, line: 484, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !24, line: 497, size: 256, elements: !485)
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !484, file: !24, line: 498, baseType: !483, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !24, line: 499, baseType: !483, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !484, file: !24, line: 500, baseType: !476, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !484, file: !24, line: 501, baseType: !19, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !477, file: !24, line: 485, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !24, line: 466, size: 320, elements: !493)
!493 = !{!494, !499, !500, !501, !502, !503, !504}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !492, file: !24, line: 467, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !24, line: 459, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !24, line: 460, baseType: !7, size: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !24, line: 461, baseType: !12, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !492, file: !24, line: 468, baseType: !495, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !492, file: !24, line: 469, baseType: !15, size: 16, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !492, file: !24, line: 470, baseType: !7, size: 8, offset: 272)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !492, file: !24, line: 471, baseType: !7, size: 8, offset: 280)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !492, file: !24, line: 472, baseType: !7, size: 8, offset: 288)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !492, file: !24, line: 473, baseType: !7, size: 8, offset: 296)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !477, file: !24, line: 486, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !24, line: 448, size: 192, elements: !508)
!508 = !{!509, !532, !533, !534, !535, !536}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !507, file: !24, line: 449, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !24, line: 438, size: 64, elements: !511)
!511 = !{!512, !513, !526}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !510, file: !24, line: 439, baseType: !22, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !24, line: 440, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !24, line: 419, size: 256, elements: !516)
!516 = !{!517, !522, !523, !524, !525}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !24, line: 420, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!19, !357, !19, !101}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !515, file: !24, line: 421, baseType: !101, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !515, file: !24, line: 422, baseType: !22, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !515, file: !24, line: 423, baseType: !7, size: 8, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !515, file: !24, line: 424, baseType: !7, size: 8, offset: 200)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !510, file: !24, line: 441, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !24, line: 429, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !528, file: !24, line: 430, baseType: !22, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !24, line: 431, baseType: !527, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !507, file: !24, line: 450, baseType: !491, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !24, line: 451, baseType: !7, size: 8, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !507, file: !24, line: 452, baseType: !7, size: 8, offset: 136)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !507, file: !24, line: 453, baseType: !7, size: 8, offset: 144)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !507, file: !24, line: 454, baseType: !7, size: 8, offset: 152)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !477, file: !24, line: 487, baseType: !12, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !477, file: !24, line: 488, baseType: !19, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !477, file: !24, line: 489, baseType: !15, size: 16, offset: 480)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !477, file: !24, line: 490, baseType: !15, size: 16, offset: 496)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !24, line: 491, baseType: !7, size: 8, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !477, file: !24, line: 492, baseType: !7, size: 8, offset: 520)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !28, file: !29, line: 381, baseType: !544, size: 384)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !29, line: 193, size: 384, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !544, file: !29, line: 194, baseType: !27, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !544, file: !29, line: 194, baseType: !7, size: 8, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !29, line: 194, baseType: !7, size: 8, offset: 72)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !544, file: !29, line: 194, baseType: !15, size: 16, offset: 80)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !29, line: 194, baseType: !7, size: 8, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !544, file: !29, line: 194, baseType: !461, size: 128, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !544, file: !29, line: 194, baseType: !27, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !544, file: !29, line: 194, baseType: !19, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !544, file: !29, line: 195, baseType: !19, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !28, file: !29, line: 382, baseType: !556, size: 384)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !29, line: 198, size: 384, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !29, line: 199, baseType: !27, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !29, line: 199, baseType: !7, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !29, line: 199, baseType: !7, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !29, line: 199, baseType: !15, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !29, line: 199, baseType: !7, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !556, file: !29, line: 201, baseType: !7, size: 8, offset: 104)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !556, file: !29, line: 202, baseType: !7, size: 8, offset: 112)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !556, file: !29, line: 203, baseType: !461, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !556, file: !29, line: 203, baseType: !27, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !556, file: !29, line: 203, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !12)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !28, file: !29, line: 383, baseType: !570, size: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !29, line: 206, size: 320, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !29, line: 207, baseType: !27, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !29, line: 207, baseType: !7, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !29, line: 207, baseType: !7, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !29, line: 207, baseType: !15, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !29, line: 207, baseType: !7, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !570, file: !29, line: 207, baseType: !461, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !29, line: 207, baseType: !27, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !28, file: !29, line: 384, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !29, line: 234, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !29, line: 235, baseType: !27, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !29, line: 235, baseType: !15, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !29, line: 235, baseType: !22, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !580, file: !29, line: 235, baseType: !19, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !580, file: !29, line: 235, baseType: !19, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !29, line: 235, baseType: !19, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !580, file: !29, line: 235, baseType: !7, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !580, file: !29, line: 235, baseType: !27, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !28, file: !29, line: 385, baseType: !598, size: 576)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !29, line: 238, size: 576, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !29, line: 239, baseType: !27, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !29, line: 239, baseType: !15, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !29, line: 239, baseType: !22, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !598, file: !29, line: 239, baseType: !19, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !598, file: !29, line: 239, baseType: !19, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !29, line: 239, baseType: !19, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 288)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !598, file: !29, line: 239, baseType: !7, size: 8, offset: 296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !598, file: !29, line: 239, baseType: !15, size: 16, offset: 304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !598, file: !29, line: 240, baseType: !27, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !598, file: !29, line: 241, baseType: !73, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !598, file: !29, line: 242, baseType: !15, size: 16, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !598, file: !29, line: 243, baseType: !73, size: 64, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !28, file: !29, line: 386, baseType: !620, size: 384)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !29, line: 263, size: 384, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !29, line: 264, baseType: !27, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !29, line: 264, baseType: !15, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !29, line: 264, baseType: !22, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !29, line: 264, baseType: !19, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !29, line: 264, baseType: !19, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !29, line: 264, baseType: !19, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !620, file: !29, line: 264, baseType: !7, size: 8, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !620, file: !29, line: 265, baseType: !27, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !28, file: !29, line: 387, baseType: !639, size: 448)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !29, line: 246, size: 448, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !29, line: 247, baseType: !27, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !29, line: 247, baseType: !15, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !29, line: 247, baseType: !22, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !29, line: 247, baseType: !19, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !29, line: 247, baseType: !19, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !29, line: 247, baseType: !19, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !29, line: 247, baseType: !7, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !639, file: !29, line: 247, baseType: !27, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !639, file: !29, line: 248, baseType: !27, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !28, file: !29, line: 388, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !29, line: 251, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !29, line: 252, baseType: !27, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !29, line: 252, baseType: !15, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !29, line: 252, baseType: !22, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !29, line: 252, baseType: !19, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !29, line: 252, baseType: !19, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !29, line: 252, baseType: !19, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !29, line: 252, baseType: !7, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !658, file: !29, line: 257, baseType: !27, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !658, file: !29, line: 258, baseType: !27, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !28, file: !29, line: 389, baseType: !677, size: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !29, line: 274, size: 512, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !29, line: 275, baseType: !27, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !29, line: 275, baseType: !7, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !29, line: 275, baseType: !7, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !29, line: 275, baseType: !15, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !29, line: 275, baseType: !7, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !29, line: 275, baseType: !22, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !677, file: !29, line: 276, baseType: !19, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !677, file: !29, line: 277, baseType: !353, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !677, file: !29, line: 278, baseType: !101, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !29, line: 279, baseType: !461, size: 128, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !28, file: !29, line: 390, baseType: !690, size: 576)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !29, line: 282, size: 576, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !705, !706, !707, !708, !714, !715}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !29, line: 283, baseType: !27, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !29, line: 283, baseType: !7, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !29, line: 283, baseType: !7, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !29, line: 283, baseType: !15, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !29, line: 283, baseType: !7, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !690, file: !29, line: 283, baseType: !7, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !690, file: !29, line: 284, baseType: !7, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !29, line: 285, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!18, !19, !449, !19, !704, !101, !101}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !29, line: 286, baseType: !22, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !29, line: 287, baseType: !101, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !690, file: !29, line: 288, baseType: !101, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !690, file: !29, line: 289, baseType: !709, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!18, !357, !19, !101, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !690, file: !29, line: 290, baseType: !27, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !29, line: 291, baseType: !27, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !28, file: !29, line: 391, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !29, line: 309, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !29, line: 310, baseType: !27, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !29, line: 310, baseType: !7, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !29, line: 310, baseType: !7, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !29, line: 310, baseType: !15, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !29, line: 310, baseType: !7, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !717, file: !29, line: 310, baseType: !7, size: 8, offset: 104)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !717, file: !29, line: 311, baseType: !7, size: 8, offset: 112)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !717, file: !29, line: 312, baseType: !7, size: 8, offset: 120)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !717, file: !29, line: 313, baseType: !101, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !29, line: 314, baseType: !22, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !717, file: !29, line: 315, baseType: !88, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !717, file: !29, line: 316, baseType: !73, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !717, file: !29, line: 317, baseType: !73, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !717, file: !29, line: 318, baseType: !19, size: 32, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !28, file: !29, line: 392, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !29, line: 342, size: 448, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !29, line: 343, baseType: !27, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !29, line: 343, baseType: !7, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !29, line: 343, baseType: !7, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !29, line: 343, baseType: !15, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !29, line: 343, baseType: !7, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !734, file: !29, line: 343, baseType: !22, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !734, file: !29, line: 344, baseType: !22, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !734, file: !29, line: 345, baseType: !101, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !734, file: !29, line: 346, baseType: !73, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !734, file: !29, line: 347, baseType: !19, size: 32, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !29, line: 393, baseType: !747, size: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !29, line: 352, size: 256, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !759}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !29, line: 353, baseType: !27, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !29, line: 353, baseType: !7, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !29, line: 353, baseType: !7, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !29, line: 353, baseType: !15, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !29, line: 353, baseType: !7, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !747, file: !29, line: 353, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !357, !101}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !747, file: !29, line: 354, baseType: !101, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !28, file: !29, line: 394, baseType: !761, size: 192)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !29, line: 359, size: 192, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !29, line: 360, baseType: !27, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !29, line: 360, baseType: !7, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !29, line: 360, baseType: !7, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !29, line: 360, baseType: !15, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !29, line: 360, baseType: !7, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !29, line: 360, baseType: !27, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !28, file: !29, line: 401, baseType: !23, size: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !23, file: !24, line: 135, baseType: !7, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !24, line: 136, baseType: !7, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !24, line: 137, baseType: !15, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !24, line: 138, baseType: !774, size: 32, offset: 96)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !775, line: 328, size: 32, elements: !776)
!775 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !774, file: !775, line: 329, baseType: !19, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !774, file: !775, line: 330, baseType: !218, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !23, file: !24, line: 139, baseType: !22, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !23, file: !24, line: 140, baseType: !22, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !23, file: !24, line: 141, baseType: !22, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !23, file: !24, line: 142, baseType: !136, size: 16, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !784, line: 42, baseType: !785)
!784 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!785 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_walk_info", file: !24, line: 504, size: 192, elements: !788)
!788 = !{!789, !790, !791, !792, !793}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !787, file: !24, line: 505, baseType: !22, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !787, file: !24, line: 506, baseType: !476, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !787, file: !24, line: 507, baseType: !15, size: 16, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !787, file: !24, line: 508, baseType: !136, size: 16, offset: 144)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "execute_by_owner_id", scope: !787, file: !24, line: 509, baseType: !7, size: 8, offset: 160)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!795 = !{!796, !801, !806, !808, !813, !815, !0}
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 232, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 29)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 80)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !798, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 264, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 33)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !239, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 440, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 55)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 80, elements: !822)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!822 = !{!823}
!823 = !DISubrange(count: 10)
!824 = !{i32 7, !"Dwarf Version", i32 5}
!825 = !{i32 2, !"Debug Info Version", i32 3}
!826 = !{i32 1, !"wchar_size", i32 2}
!827 = !{i32 8, !"cf-protection-branch", i32 1}
!828 = !{i32 4, !"function_return_thunk_extern", i32 1}
!829 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!830 = !{i32 1, !"Code Model", i32 2}
!831 = !{i32 1, !"override-stack-alignment", i32 8}
!832 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!833 = distinct !DISubprogram(name: "acpi_ev_gpe_initialize", scope: !3, file: !3, line: 56, type: !834, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!18}
!836 = !{!837, !838, !839, !840, !841, !842}
!837 = !DILocalVariable(name: "register_count0", scope: !833, file: !3, line: 58, type: !19)
!838 = !DILocalVariable(name: "register_count1", scope: !833, file: !3, line: 59, type: !19)
!839 = !DILocalVariable(name: "gpe_number_max", scope: !833, file: !3, line: 60, type: !19)
!840 = !DILocalVariable(name: "status", scope: !833, file: !3, line: 61, type: !18)
!841 = !DILocalVariable(name: "address", scope: !833, file: !3, line: 62, type: !12)
!842 = !DILabel(scope: !833, name: "cleanup", file: !3, line: 184)
!843 = !DILocation(line: 58, column: 2, scope: !833)
!844 = !DILocation(line: 58, column: 6, scope: !833)
!845 = !DILocation(line: 59, column: 2, scope: !833)
!846 = !DILocation(line: 59, column: 6, scope: !833)
!847 = !DILocation(line: 60, column: 2, scope: !833)
!848 = !DILocation(line: 60, column: 6, scope: !833)
!849 = !DILocation(line: 61, column: 2, scope: !833)
!850 = !DILocation(line: 61, column: 14, scope: !833)
!851 = !DILocation(line: 62, column: 2, scope: !833)
!852 = !DILocation(line: 62, column: 6, scope: !833)
!853 = !DILocation(line: 69, column: 11, scope: !833)
!854 = !DILocation(line: 69, column: 9, scope: !833)
!855 = !DILocation(line: 70, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !833, file: !3, line: 70, column: 6)
!857 = !DILocation(line: 70, column: 6, scope: !833)
!858 = !DILocation(line: 71, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 70, column: 28)
!860 = !DILocation(line: 99, column: 12, scope: !833)
!861 = !DILocation(line: 99, column: 10, scope: !833)
!862 = !DILocation(line: 101, column: 20, scope: !863)
!863 = distinct !DILexicalBlock(scope: !833, file: !3, line: 101, column: 6)
!864 = !DILocation(line: 101, column: 6, scope: !863)
!865 = !DILocation(line: 101, column: 38, scope: !863)
!866 = !DILocation(line: 101, column: 41, scope: !863)
!867 = !DILocation(line: 101, column: 6, scope: !833)
!868 = !DILocation(line: 105, column: 41, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 101, column: 50)
!870 = !DILocation(line: 105, column: 27, scope: !869)
!871 = !DILocation(line: 105, column: 59, scope: !869)
!872 = !DILocation(line: 105, column: 21, scope: !869)
!873 = !DILocation(line: 105, column: 19, scope: !869)
!874 = !DILocation(line: 107, column: 8, scope: !869)
!875 = !DILocation(line: 107, column: 24, scope: !869)
!876 = !DILocation(line: 107, column: 51, scope: !869)
!877 = !DILocation(line: 106, column: 18, scope: !869)
!878 = !DILocation(line: 111, column: 37, scope: !869)
!879 = !DILocation(line: 112, column: 9, scope: !869)
!880 = !DILocation(line: 114, column: 9, scope: !869)
!881 = !DILocation(line: 114, column: 19, scope: !869)
!882 = !DILocation(line: 115, column: 23, scope: !869)
!883 = !DILocation(line: 115, column: 9, scope: !869)
!884 = !DILocation(line: 111, column: 12, scope: !869)
!885 = !DILocation(line: 111, column: 10, scope: !869)
!886 = !DILocation(line: 118, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !869, file: !3, line: 118, column: 7)
!888 = !DILocation(line: 118, column: 7, scope: !869)
!889 = !DILocation(line: 119, column: 4, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 118, column: 29)
!891 = !DILocation(line: 121, column: 3, scope: !890)
!892 = !DILocation(line: 122, column: 2, scope: !869)
!893 = !DILocation(line: 124, column: 12, scope: !833)
!894 = !DILocation(line: 124, column: 10, scope: !833)
!895 = !DILocation(line: 126, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !833, file: !3, line: 126, column: 6)
!897 = !DILocation(line: 126, column: 6, scope: !896)
!898 = !DILocation(line: 126, column: 38, scope: !896)
!899 = !DILocation(line: 126, column: 41, scope: !896)
!900 = !DILocation(line: 126, column: 6, scope: !833)
!901 = !DILocation(line: 130, column: 41, scope: !902)
!902 = distinct !DILexicalBlock(scope: !896, file: !3, line: 126, column: 50)
!903 = !DILocation(line: 130, column: 27, scope: !902)
!904 = !DILocation(line: 130, column: 59, scope: !902)
!905 = !DILocation(line: 130, column: 21, scope: !902)
!906 = !DILocation(line: 130, column: 19, scope: !902)
!907 = !DILocation(line: 134, column: 8, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 134, column: 7)
!909 = !DILocation(line: 134, column: 7, scope: !908)
!910 = !DILocation(line: 134, column: 25, scope: !908)
!911 = !DILocation(line: 135, column: 8, scope: !908)
!912 = !DILocation(line: 135, column: 40, scope: !908)
!913 = !DILocation(line: 135, column: 26, scope: !908)
!914 = !DILocation(line: 135, column: 23, scope: !908)
!915 = !DILocation(line: 134, column: 7, scope: !902)
!916 = !DILocation(line: 136, column: 4, scope: !917)
!917 = distinct !DILexicalBlock(scope: !908, file: !3, line: 135, column: 52)
!918 = !DILocation(line: 146, column: 20, scope: !917)
!919 = !DILocation(line: 147, column: 3, scope: !917)
!920 = !DILocation(line: 151, column: 33, scope: !921)
!921 = distinct !DILexicalBlock(scope: !908, file: !3, line: 147, column: 10)
!922 = !DILocation(line: 152, column: 12, scope: !921)
!923 = !DILocation(line: 154, column: 12, scope: !921)
!924 = !DILocation(line: 154, column: 22, scope: !921)
!925 = !DILocation(line: 155, column: 26, scope: !921)
!926 = !DILocation(line: 155, column: 12, scope: !921)
!927 = !DILocation(line: 157, column: 12, scope: !921)
!928 = !DILocation(line: 156, column: 12, scope: !921)
!929 = !DILocation(line: 151, column: 8, scope: !921)
!930 = !DILocation(line: 150, column: 11, scope: !921)
!931 = !DILocation(line: 161, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !921, file: !3, line: 161, column: 8)
!933 = !DILocation(line: 161, column: 8, scope: !921)
!934 = !DILocation(line: 162, column: 5, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 161, column: 30)
!936 = !DILocation(line: 164, column: 4, scope: !935)
!937 = !DILocation(line: 171, column: 2, scope: !902)
!938 = !DILocation(line: 175, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !833, file: !3, line: 175, column: 6)
!940 = !DILocation(line: 175, column: 25, scope: !939)
!941 = !DILocation(line: 175, column: 23, scope: !939)
!942 = !DILocation(line: 175, column: 42, scope: !939)
!943 = !DILocation(line: 175, column: 6, scope: !833)
!944 = !DILocation(line: 181, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !3, line: 175, column: 48)
!946 = !DILocation(line: 175, column: 45, scope: !939)
!947 = !DILocation(line: 184, column: 1, scope: !833)
!948 = !DILocation(line: 185, column: 8, scope: !833)
!949 = !DILocation(line: 186, column: 2, scope: !833)
!950 = !DILocation(line: 187, column: 1, scope: !833)
!951 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !952, file: !952, line: 646, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!953 = !DISubroutineType(types: !954)
!954 = !{!18, !955}
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !24, line: 17, baseType: !19)
!956 = !DISubprogram(name: "acpi_ev_create_gpe_block", scope: !957, file: !957, line: 95, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!958 = !DISubroutineType(types: !959)
!959 = !{!18, !22, !12, !7, !19, !15, !19, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!961 = !DISubprogram(name: "acpi_exception", scope: !962, file: !962, line: 906, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!963 = !DISubroutineType(types: !964)
!964 = !{null, !965, !19, !18, !965, null}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!966 = !DISubprogram(name: "acpi_error", scope: !962, file: !962, line: 901, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !965, !19, !965, null}
!969 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !952, file: !952, line: 648, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = distinct !DISubprogram(name: "acpi_ev_update_gpes", scope: !3, file: !3, line: 203, type: !971, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !136}
!973 = !{!974, !975, !976, !977, !978}
!974 = !DILocalVariable(name: "table_owner_id", arg: 1, scope: !970, file: !3, line: 203, type: !136)
!975 = !DILocalVariable(name: "gpe_xrupt_info", scope: !970, file: !3, line: 205, type: !483)
!976 = !DILocalVariable(name: "gpe_block", scope: !970, file: !3, line: 206, type: !476)
!977 = !DILocalVariable(name: "walk_info", scope: !970, file: !3, line: 207, type: !787)
!978 = !DILocalVariable(name: "status", scope: !970, file: !3, line: 208, type: !18)
!979 = !DILocation(line: 203, column: 40, scope: !970)
!980 = !DILocation(line: 205, column: 2, scope: !970)
!981 = !DILocation(line: 205, column: 30, scope: !970)
!982 = !DILocation(line: 206, column: 2, scope: !970)
!983 = !DILocation(line: 206, column: 30, scope: !970)
!984 = !DILocation(line: 207, column: 2, scope: !970)
!985 = !DILocation(line: 207, column: 28, scope: !970)
!986 = !DILocation(line: 208, column: 2, scope: !970)
!987 = !DILocation(line: 208, column: 14, scope: !970)
!988 = !DILocation(line: 219, column: 11, scope: !970)
!989 = !DILocation(line: 219, column: 9, scope: !970)
!990 = !DILocation(line: 220, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !970, file: !3, line: 220, column: 6)
!992 = !DILocation(line: 220, column: 6, scope: !970)
!993 = !DILocation(line: 221, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 220, column: 28)
!995 = !DILocation(line: 224, column: 12, scope: !970)
!996 = !DILocation(line: 224, column: 18, scope: !970)
!997 = !DILocation(line: 225, column: 23, scope: !970)
!998 = !DILocation(line: 225, column: 12, scope: !970)
!999 = !DILocation(line: 225, column: 21, scope: !970)
!1000 = !DILocation(line: 226, column: 12, scope: !970)
!1001 = !DILocation(line: 226, column: 32, scope: !970)
!1002 = !DILocation(line: 230, column: 19, scope: !970)
!1003 = !DILocation(line: 230, column: 17, scope: !970)
!1004 = !DILocation(line: 231, column: 2, scope: !970)
!1005 = !DILocation(line: 231, column: 9, scope: !970)
!1006 = !DILocation(line: 235, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !970, file: !3, line: 231, column: 25)
!1008 = !DILocation(line: 235, column: 31, scope: !1007)
!1009 = !DILocation(line: 235, column: 13, scope: !1007)
!1010 = !DILocation(line: 236, column: 3, scope: !1007)
!1011 = !DILocation(line: 236, column: 10, scope: !1007)
!1012 = !DILocation(line: 237, column: 26, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 236, column: 21)
!1014 = !DILocation(line: 237, column: 14, scope: !1013)
!1015 = !DILocation(line: 237, column: 24, scope: !1013)
!1016 = !DILocation(line: 238, column: 27, scope: !1013)
!1017 = !DILocation(line: 238, column: 38, scope: !1013)
!1018 = !DILocation(line: 238, column: 14, scope: !1013)
!1019 = !DILocation(line: 238, column: 25, scope: !1013)
!1020 = !DILocation(line: 241, column: 18, scope: !1013)
!1021 = !DILocation(line: 240, column: 13, scope: !1013)
!1022 = !DILocation(line: 240, column: 11, scope: !1013)
!1023 = !DILocation(line: 246, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 246, column: 8)
!1025 = !DILocation(line: 246, column: 8, scope: !1013)
!1026 = !DILocation(line: 247, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 246, column: 30)
!1028 = !DILocation(line: 249, column: 4, scope: !1027)
!1029 = !DILocation(line: 251, column: 16, scope: !1013)
!1030 = !DILocation(line: 251, column: 27, scope: !1013)
!1031 = !DILocation(line: 251, column: 14, scope: !1013)
!1032 = distinct !{!1032, !1010, !1033, !1034, !1035}
!1033 = !DILocation(line: 252, column: 3, scope: !1007)
!1034 = !{!"llvm.loop.mustprogress"}
!1035 = !{!"llvm.loop.unroll.disable"}
!1036 = !DILocation(line: 254, column: 20, scope: !1007)
!1037 = !DILocation(line: 254, column: 36, scope: !1007)
!1038 = !DILocation(line: 254, column: 18, scope: !1007)
!1039 = distinct !{!1039, !1004, !1040, !1034, !1035}
!1040 = !DILocation(line: 255, column: 2, scope: !970)
!1041 = !DILocation(line: 257, column: 16, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !970, file: !3, line: 257, column: 6)
!1043 = !DILocation(line: 257, column: 6, scope: !1042)
!1044 = !DILocation(line: 257, column: 6, scope: !970)
!1045 = !DILocation(line: 258, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 257, column: 23)
!1047 = !DILocation(line: 259, column: 2, scope: !1046)
!1048 = !DILocation(line: 261, column: 8, scope: !970)
!1049 = !DILocation(line: 262, column: 2, scope: !970)
!1050 = !DILocation(line: 263, column: 1, scope: !970)
!1051 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1052, file: !1052, line: 77, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!18, !1055, !357, !19, !19, !1056, !1056, !101, !713}
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !19)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !6, line: 1135, baseType: !710)
!1057 = distinct !DISubprogram(name: "acpi_ev_match_gpe_method", scope: !3, file: !3, line: 292, type: !711, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1073}
!1059 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1057, file: !3, line: 292, type: !357)
!1060 = !DILocalVariable(name: "level", arg: 2, scope: !1057, file: !3, line: 293, type: !19)
!1061 = !DILocalVariable(name: "context", arg: 3, scope: !1057, file: !3, line: 293, type: !101)
!1062 = !DILocalVariable(name: "return_value", arg: 4, scope: !1057, file: !3, line: 293, type: !713)
!1063 = !DILocalVariable(name: "method_node", scope: !1057, file: !3, line: 295, type: !22)
!1064 = !DILocalVariable(name: "walk_info", scope: !1057, file: !3, line: 297, type: !786)
!1065 = !DILocalVariable(name: "gpe_event_info", scope: !1057, file: !3, line: 299, type: !506)
!1066 = !DILocalVariable(name: "status", scope: !1057, file: !3, line: 300, type: !18)
!1067 = !DILocalVariable(name: "gpe_number", scope: !1057, file: !3, line: 301, type: !19)
!1068 = !DILocalVariable(name: "temp_gpe_number", scope: !1057, file: !3, line: 302, type: !7)
!1069 = !DILocalVariable(name: "name", scope: !1057, file: !3, line: 303, type: !1070)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 40, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 5)
!1073 = !DILocalVariable(name: "type", scope: !1057, file: !3, line: 304, type: !7)
!1074 = !DILocation(line: 292, column: 38, scope: !1057)
!1075 = !DILocation(line: 293, column: 9, scope: !1057)
!1076 = !DILocation(line: 293, column: 22, scope: !1057)
!1077 = !DILocation(line: 293, column: 38, scope: !1057)
!1078 = !DILocation(line: 295, column: 2, scope: !1057)
!1079 = !DILocation(line: 295, column: 30, scope: !1057)
!1080 = !DILocation(line: 296, column: 6, scope: !1057)
!1081 = !DILocation(line: 297, column: 2, scope: !1057)
!1082 = !DILocation(line: 297, column: 29, scope: !1057)
!1083 = !DILocation(line: 298, column: 6, scope: !1057)
!1084 = !DILocation(line: 299, column: 2, scope: !1057)
!1085 = !DILocation(line: 299, column: 30, scope: !1057)
!1086 = !DILocation(line: 300, column: 2, scope: !1057)
!1087 = !DILocation(line: 300, column: 14, scope: !1057)
!1088 = !DILocation(line: 301, column: 2, scope: !1057)
!1089 = !DILocation(line: 301, column: 6, scope: !1057)
!1090 = !DILocation(line: 302, column: 2, scope: !1057)
!1091 = !DILocation(line: 302, column: 5, scope: !1057)
!1092 = !DILocation(line: 303, column: 2, scope: !1057)
!1093 = !DILocation(line: 303, column: 7, scope: !1057)
!1094 = !DILocation(line: 304, column: 2, scope: !1057)
!1095 = !DILocation(line: 304, column: 5, scope: !1057)
!1096 = !DILocation(line: 310, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 310, column: 6)
!1098 = !DILocation(line: 310, column: 18, scope: !1097)
!1099 = !DILocation(line: 310, column: 6, scope: !1097)
!1100 = !DILocation(line: 310, column: 39, scope: !1097)
!1101 = !DILocation(line: 311, column: 7, scope: !1097)
!1102 = !DILocation(line: 311, column: 20, scope: !1097)
!1103 = !DILocation(line: 311, column: 32, scope: !1097)
!1104 = !DILocation(line: 311, column: 43, scope: !1097)
!1105 = !DILocation(line: 311, column: 29, scope: !1097)
!1106 = !DILocation(line: 310, column: 6, scope: !1057)
!1107 = !DILocation(line: 312, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 311, column: 54)
!1109 = !DILocation(line: 320, column: 2, scope: !1057)
!1110 = !DILocation(line: 321, column: 2, scope: !1057)
!1111 = !DILocation(line: 321, column: 26, scope: !1057)
!1112 = !DILocation(line: 325, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 325, column: 6)
!1114 = !DILocation(line: 325, column: 14, scope: !1113)
!1115 = !DILocation(line: 325, column: 6, scope: !1057)
!1116 = !DILocation(line: 326, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 325, column: 22)
!1118 = !DILocation(line: 333, column: 10, scope: !1057)
!1119 = !DILocation(line: 333, column: 2, scope: !1057)
!1120 = !DILocation(line: 336, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 333, column: 19)
!1122 = !DILocation(line: 337, column: 3, scope: !1121)
!1123 = !DILocation(line: 341, column: 8, scope: !1121)
!1124 = !DILocation(line: 342, column: 3, scope: !1121)
!1125 = !DILocation(line: 351, column: 3, scope: !1121)
!1126 = !DILocation(line: 356, column: 38, scope: !1057)
!1127 = !DILocation(line: 356, column: 11, scope: !1057)
!1128 = !DILocation(line: 356, column: 9, scope: !1057)
!1129 = !DILocation(line: 357, column: 6, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 357, column: 6)
!1131 = !DILocation(line: 357, column: 6, scope: !1057)
!1132 = !DILocation(line: 364, column: 3, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 357, column: 28)
!1134 = !DILocation(line: 369, column: 20, scope: !1057)
!1135 = !DILocation(line: 369, column: 15, scope: !1057)
!1136 = !DILocation(line: 369, column: 13, scope: !1057)
!1137 = !DILocation(line: 371, column: 31, scope: !1057)
!1138 = !DILocation(line: 371, column: 43, scope: !1057)
!1139 = !DILocation(line: 371, column: 54, scope: !1057)
!1140 = !DILocation(line: 371, column: 6, scope: !1057)
!1141 = !DILocation(line: 370, column: 17, scope: !1057)
!1142 = !DILocation(line: 372, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 372, column: 6)
!1144 = !DILocation(line: 372, column: 6, scope: !1057)
!1145 = !DILocation(line: 378, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 372, column: 23)
!1147 = !DILocation(line: 381, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 381, column: 6)
!1149 = !DILocation(line: 381, column: 53, scope: !1148)
!1150 = !DILocation(line: 382, column: 34, scope: !1148)
!1151 = !DILocation(line: 383, column: 7, scope: !1148)
!1152 = !DILocation(line: 383, column: 53, scope: !1148)
!1153 = !DILocation(line: 381, column: 6, scope: !1057)
!1154 = !DILocation(line: 388, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 384, column: 39)
!1156 = !DILocation(line: 391, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 391, column: 6)
!1158 = !DILocation(line: 391, column: 52, scope: !1157)
!1159 = !DILocation(line: 391, column: 6, scope: !1057)
!1160 = !DILocation(line: 397, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 397, column: 7)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 392, column: 32)
!1163 = !DILocation(line: 397, column: 16, scope: !1161)
!1164 = !DILocation(line: 397, column: 32, scope: !1161)
!1165 = !DILocation(line: 397, column: 38, scope: !1161)
!1166 = !DILocation(line: 397, column: 12, scope: !1161)
!1167 = !DILocation(line: 397, column: 7, scope: !1162)
!1168 = !DILocation(line: 398, column: 4, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 397, column: 67)
!1170 = !DILocation(line: 401, column: 3, scope: !1169)
!1171 = !DILocation(line: 402, column: 3, scope: !1162)
!1172 = !DILocation(line: 407, column: 28, scope: !1057)
!1173 = !DILocation(line: 407, column: 8, scope: !1057)
!1174 = !DILocation(line: 413, column: 2, scope: !1057)
!1175 = !DILocation(line: 413, column: 18, scope: !1057)
!1176 = !DILocation(line: 413, column: 24, scope: !1057)
!1177 = !DILocation(line: 414, column: 32, scope: !1057)
!1178 = !DILocation(line: 414, column: 37, scope: !1057)
!1179 = !DILocation(line: 414, column: 27, scope: !1057)
!1180 = !DILocation(line: 414, column: 2, scope: !1057)
!1181 = !DILocation(line: 414, column: 18, scope: !1057)
!1182 = !DILocation(line: 414, column: 24, scope: !1057)
!1183 = !DILocation(line: 415, column: 41, scope: !1057)
!1184 = !DILocation(line: 415, column: 2, scope: !1057)
!1185 = !DILocation(line: 415, column: 18, scope: !1057)
!1186 = !DILocation(line: 415, column: 39, scope: !1057)
!1187 = !DILocation(line: 420, column: 2, scope: !1057)
!1188 = !DILocation(line: 421, column: 1, scope: !1057)
!1189 = !DISubprogram(name: "acpi_info", scope: !962, file: !962, line: 917, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !965, null}
!1192 = !DISubprogram(name: "acpi_ut_ascii_to_hex_byte", scope: !952, file: !952, line: 243, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!18, !61, !73}
!1195 = !DISubprogram(name: "acpi_ev_low_get_gpe_info", scope: !957, file: !957, line: 81, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!506, !19, !476}
!1198 = !DISubprogram(name: "acpi_hw_low_set_gpe", scope: !1199, file: !1199, line: 88, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!18, !506, !19}
