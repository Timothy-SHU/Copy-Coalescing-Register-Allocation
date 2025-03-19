; ModuleID = 'drivers/acpi/acpica/exconcat.c'
source_filename = "drivers/acpi/acpica/exconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exconcat\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1, !dbg !26
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !31
@.str.2 = private unnamed_addr constant [9 x i8] c" Object]\00", align 1, !dbg !36

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_do_concatenate(ptr noundef %operand0, ptr noundef %operand1, ptr noundef %actual_return_desc, ptr noundef %walk_state) #0 align 16 !dbg !52 {
entry:
  %operand0.addr = alloca ptr, align 8
  %operand1.addr = alloca ptr, align 8
  %actual_return_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %local_operand0 = alloca ptr, align 8
  %local_operand1 = alloca ptr, align 8
  %temp_operand1 = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %operand0_type = alloca i32, align 4
  %operand1_type = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %operand0, ptr %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand0.addr, metadata !813, metadata !DIExpression()), !dbg !827
  store ptr %operand1, ptr %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand1.addr, metadata !814, metadata !DIExpression()), !dbg !828
  store ptr %actual_return_desc, ptr %actual_return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %actual_return_desc.addr, metadata !815, metadata !DIExpression()), !dbg !829
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !816, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_operand0) #5, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %local_operand0, metadata !817, metadata !DIExpression()), !dbg !832
  %0 = load ptr, ptr %operand0.addr, align 8, !dbg !833
  store ptr %0, ptr %local_operand0, align 8, !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_operand1) #5, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %local_operand1, metadata !818, metadata !DIExpression()), !dbg !835
  %1 = load ptr, ptr %operand1.addr, align 8, !dbg !836
  store ptr %1, ptr %local_operand1, align 8, !dbg !835
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_operand1) #5, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %temp_operand1, metadata !819, metadata !DIExpression()), !dbg !838
  store ptr null, ptr %temp_operand1, align 8, !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !820, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #5, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !821, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %operand0_type) #5, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %operand0_type, metadata !822, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 4, ptr %operand1_type) #5, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %operand1_type, metadata !824, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %status, metadata !825, metadata !DIExpression()), !dbg !848
  %2 = load ptr, ptr %operand0.addr, align 8, !dbg !849
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !850
  %3 = load i8, ptr %type, align 1, !dbg !850
  %conv = zext i8 %3 to i32, !dbg !849
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ], !dbg !851

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load ptr, ptr %operand0.addr, align 8, !dbg !852
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 2, !dbg !854
  %5 = load i8, ptr %type1, align 1, !dbg !854
  %conv2 = zext i8 %5 to i32, !dbg !852
  store i32 %conv2, ptr %operand0_type, align 4, !dbg !855
  br label %sw.epilog, !dbg !856

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %operand0.addr, align 8, !dbg !857
  %call = call i32 @acpi_ex_convert_to_object_type_string(ptr noundef %6, ptr noundef %local_operand0) #6, !dbg !858
  store i32 %call, ptr %status, align 4, !dbg !859
  %7 = load i32, ptr %status, align 4, !dbg !860
  %tobool = icmp ne i32 %7, 0, !dbg !860
  br i1 %tobool, label %if.then, label %if.end, !dbg !862

if.then:                                          ; preds = %sw.default
  br label %cleanup, !dbg !863

if.end:                                           ; preds = %sw.default
  store i32 2, ptr %operand0_type, align 4, !dbg !865
  br label %sw.epilog, !dbg !866

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %8 = load ptr, ptr %operand1.addr, align 8, !dbg !867
  %type3 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !868
  %9 = load i8, ptr %type3, align 1, !dbg !868
  %conv4 = zext i8 %9 to i32, !dbg !867
  switch i32 %conv4, label %sw.default8 [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb5
    i32 3, label %sw.bb5
  ], !dbg !869

sw.bb5:                                           ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %10 = load ptr, ptr %operand1.addr, align 8, !dbg !870
  %type6 = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 2, !dbg !872
  %11 = load i8, ptr %type6, align 1, !dbg !872
  %conv7 = zext i8 %11 to i32, !dbg !870
  store i32 %conv7, ptr %operand1_type, align 4, !dbg !873
  br label %sw.epilog13, !dbg !874

sw.default8:                                      ; preds = %sw.epilog
  %12 = load ptr, ptr %operand1.addr, align 8, !dbg !875
  %call9 = call i32 @acpi_ex_convert_to_object_type_string(ptr noundef %12, ptr noundef %local_operand1) #6, !dbg !876
  store i32 %call9, ptr %status, align 4, !dbg !877
  %13 = load i32, ptr %status, align 4, !dbg !878
  %tobool10 = icmp ne i32 %13, 0, !dbg !878
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !880

if.then11:                                        ; preds = %sw.default8
  br label %cleanup, !dbg !881

if.end12:                                         ; preds = %sw.default8
  store i32 2, ptr %operand1_type, align 4, !dbg !883
  br label %sw.epilog13, !dbg !884

sw.epilog13:                                      ; preds = %if.end12, %sw.bb5
  %14 = load i32, ptr %operand0_type, align 4, !dbg !885
  switch i32 %14, label %sw.default23 [
    i32 1, label %sw.bb14
    i32 3, label %sw.bb16
    i32 2, label %sw.bb18
  ], !dbg !886

sw.bb14:                                          ; preds = %sw.epilog13
  %15 = load ptr, ptr %local_operand1, align 8, !dbg !887
  %call15 = call i32 @acpi_ex_convert_to_integer(ptr noundef %15, ptr noundef %temp_operand1, i32 noundef 1) #6, !dbg !889
  store i32 %call15, ptr %status, align 4, !dbg !890
  br label %sw.epilog26, !dbg !891

sw.bb16:                                          ; preds = %sw.epilog13
  %16 = load ptr, ptr %local_operand1, align 8, !dbg !892
  %call17 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %16, ptr noundef %temp_operand1) #6, !dbg !893
  store i32 %call17, ptr %status, align 4, !dbg !894
  br label %sw.epilog26, !dbg !895

sw.bb18:                                          ; preds = %sw.epilog13
  %17 = load i32, ptr %operand1_type, align 4, !dbg !896
  switch i32 %17, label %sw.default21 [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb19
    i32 3, label %sw.bb19
  ], !dbg !897

sw.bb19:                                          ; preds = %sw.bb18, %sw.bb18, %sw.bb18
  %18 = load ptr, ptr %local_operand1, align 8, !dbg !898
  %call20 = call i32 @acpi_ex_convert_to_string(ptr noundef %18, ptr noundef %temp_operand1, i32 noundef 2) #6, !dbg !900
  store i32 %call20, ptr %status, align 4, !dbg !901
  br label %sw.epilog22, !dbg !902

sw.default21:                                     ; preds = %sw.bb18
  store i32 0, ptr %status, align 4, !dbg !903
  br label %sw.epilog22, !dbg !904

sw.epilog22:                                      ; preds = %sw.default21, %sw.bb19
  br label %sw.epilog26, !dbg !905

sw.default23:                                     ; preds = %sw.epilog13
  %19 = load ptr, ptr %operand0.addr, align 8, !dbg !906
  %type24 = getelementptr inbounds %struct.acpi_object_common, ptr %19, i32 0, i32 2, !dbg !906
  %20 = load i8, ptr %type24, align 1, !dbg !906
  %conv25 = zext i8 %20 to i32, !dbg !906
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 158, ptr noundef @.str, i32 noundef %conv25) #6, !dbg !906
  store i32 12303, ptr %status, align 4, !dbg !907
  br label %sw.epilog26, !dbg !908

sw.epilog26:                                      ; preds = %sw.default23, %sw.epilog22, %sw.bb16, %sw.bb14
  %21 = load i32, ptr %status, align 4, !dbg !909
  %tobool27 = icmp ne i32 %21, 0, !dbg !909
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !911

if.then28:                                        ; preds = %sw.epilog26
  br label %cleanup, !dbg !912

if.end29:                                         ; preds = %sw.epilog26
  %22 = load ptr, ptr %local_operand1, align 8, !dbg !914
  %23 = load ptr, ptr %operand1.addr, align 8, !dbg !916
  %cmp = icmp ne ptr %22, %23, !dbg !917
  br i1 %cmp, label %land.lhs.true, label %if.end34, !dbg !918

land.lhs.true:                                    ; preds = %if.end29
  %24 = load ptr, ptr %local_operand1, align 8, !dbg !919
  %25 = load ptr, ptr %temp_operand1, align 8, !dbg !920
  %cmp31 = icmp ne ptr %24, %25, !dbg !921
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !922

if.then33:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %local_operand1, align 8, !dbg !923
  call void @acpi_ut_remove_reference(ptr noundef %26) #6, !dbg !925
  br label %if.end34, !dbg !926

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end29
  %27 = load ptr, ptr %temp_operand1, align 8, !dbg !927
  store ptr %27, ptr %local_operand1, align 8, !dbg !928
  %28 = load i32, ptr %operand0_type, align 4, !dbg !929
  switch i32 %28, label %sw.default79 [
    i32 1, label %sw.bb35
    i32 2, label %sw.bb46
    i32 3, label %sw.bb59
  ], !dbg !930

sw.bb35:                                          ; preds = %if.end34
  %29 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !931
  %conv36 = zext i8 %29 to i32, !dbg !931
  %shl = shl i32 %conv36, 1, !dbg !931
  %conv37 = zext i32 %shl to i64, !dbg !933
  %call38 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv37) #6, !dbg !934
  store ptr %call38, ptr %return_desc, align 8, !dbg !935
  %30 = load ptr, ptr %return_desc, align 8, !dbg !936
  %tobool39 = icmp ne ptr %30, null, !dbg !936
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !938

if.then40:                                        ; preds = %sw.bb35
  store i32 4, ptr %status, align 4, !dbg !939
  br label %cleanup, !dbg !941

if.end41:                                         ; preds = %sw.bb35
  %31 = load ptr, ptr %return_desc, align 8, !dbg !942
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %31, i32 0, i32 5, !dbg !943
  %32 = load ptr, ptr %pointer, align 8, !dbg !943
  store ptr %32, ptr %buffer, align 8, !dbg !944
  %33 = load ptr, ptr %buffer, align 8, !dbg !945
  %34 = load ptr, ptr %operand0.addr, align 8, !dbg !946
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %34, i32 0, i32 6, !dbg !947
  %35 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !948
  %conv42 = zext i8 %35 to i64, !dbg !948
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 8 %value, i64 %conv42, i1 false), !dbg !949
  %36 = load ptr, ptr %buffer, align 8, !dbg !950
  %37 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !951
  %conv43 = zext i8 %37 to i32, !dbg !951
  %idx.ext = sext i32 %conv43 to i64, !dbg !952
  %add.ptr = getelementptr i8, ptr %36, i64 %idx.ext, !dbg !952
  %38 = load ptr, ptr %local_operand1, align 8, !dbg !953
  %value44 = getelementptr inbounds %struct.acpi_object_integer, ptr %38, i32 0, i32 6, !dbg !954
  %39 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !955
  %conv45 = zext i8 %39 to i64, !dbg !955
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 8 %value44, i64 %conv45, i1 false), !dbg !956
  br label %sw.epilog82, !dbg !957

sw.bb46:                                          ; preds = %if.end34
  %40 = load ptr, ptr %local_operand0, align 8, !dbg !958
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %40, i32 0, i32 6, !dbg !959
  %41 = load i32, ptr %length, align 8, !dbg !959
  %conv47 = zext i32 %41 to i64, !dbg !960
  %42 = load ptr, ptr %local_operand1, align 8, !dbg !961
  %length48 = getelementptr inbounds %struct.acpi_object_string, ptr %42, i32 0, i32 6, !dbg !962
  %43 = load i32, ptr %length48, align 8, !dbg !962
  %conv49 = zext i32 %43 to i64, !dbg !961
  %add = add i64 %conv47, %conv49, !dbg !963
  %call50 = call ptr @acpi_ut_create_string_object(i64 noundef %add) #6, !dbg !964
  store ptr %call50, ptr %return_desc, align 8, !dbg !965
  %44 = load ptr, ptr %return_desc, align 8, !dbg !966
  %tobool51 = icmp ne ptr %44, null, !dbg !966
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !968

if.then52:                                        ; preds = %sw.bb46
  store i32 4, ptr %status, align 4, !dbg !969
  br label %cleanup, !dbg !971

if.end53:                                         ; preds = %sw.bb46
  %45 = load ptr, ptr %return_desc, align 8, !dbg !972
  %pointer54 = getelementptr inbounds %struct.acpi_object_string, ptr %45, i32 0, i32 5, !dbg !973
  %46 = load ptr, ptr %pointer54, align 8, !dbg !973
  store ptr %46, ptr %buffer, align 8, !dbg !974
  %47 = load ptr, ptr %buffer, align 8, !dbg !975
  %48 = load ptr, ptr %local_operand0, align 8, !dbg !976
  %pointer55 = getelementptr inbounds %struct.acpi_object_string, ptr %48, i32 0, i32 5, !dbg !977
  %49 = load ptr, ptr %pointer55, align 8, !dbg !977
  %call56 = call ptr @strcpy(ptr noundef %47, ptr noundef %49) #6, !dbg !978
  %50 = load ptr, ptr %buffer, align 8, !dbg !979
  %51 = load ptr, ptr %local_operand1, align 8, !dbg !980
  %pointer57 = getelementptr inbounds %struct.acpi_object_string, ptr %51, i32 0, i32 5, !dbg !981
  %52 = load ptr, ptr %pointer57, align 8, !dbg !981
  %call58 = call ptr @strcat(ptr noundef %50, ptr noundef %52) #6, !dbg !982
  br label %sw.epilog82, !dbg !983

sw.bb59:                                          ; preds = %if.end34
  %53 = load ptr, ptr %operand0.addr, align 8, !dbg !984
  %length60 = getelementptr inbounds %struct.acpi_object_buffer, ptr %53, i32 0, i32 6, !dbg !985
  %54 = load i32, ptr %length60, align 8, !dbg !985
  %conv61 = zext i32 %54 to i64, !dbg !986
  %55 = load ptr, ptr %local_operand1, align 8, !dbg !987
  %length62 = getelementptr inbounds %struct.acpi_object_buffer, ptr %55, i32 0, i32 6, !dbg !988
  %56 = load i32, ptr %length62, align 8, !dbg !988
  %conv63 = zext i32 %56 to i64, !dbg !987
  %add64 = add i64 %conv61, %conv63, !dbg !989
  %call65 = call ptr @acpi_ut_create_buffer_object(i64 noundef %add64) #6, !dbg !990
  store ptr %call65, ptr %return_desc, align 8, !dbg !991
  %57 = load ptr, ptr %return_desc, align 8, !dbg !992
  %tobool66 = icmp ne ptr %57, null, !dbg !992
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !994

if.then67:                                        ; preds = %sw.bb59
  store i32 4, ptr %status, align 4, !dbg !995
  br label %cleanup, !dbg !997

if.end68:                                         ; preds = %sw.bb59
  %58 = load ptr, ptr %return_desc, align 8, !dbg !998
  %pointer69 = getelementptr inbounds %struct.acpi_object_buffer, ptr %58, i32 0, i32 5, !dbg !999
  %59 = load ptr, ptr %pointer69, align 8, !dbg !999
  store ptr %59, ptr %buffer, align 8, !dbg !1000
  %60 = load ptr, ptr %buffer, align 8, !dbg !1001
  %61 = load ptr, ptr %operand0.addr, align 8, !dbg !1002
  %pointer70 = getelementptr inbounds %struct.acpi_object_buffer, ptr %61, i32 0, i32 5, !dbg !1003
  %62 = load ptr, ptr %pointer70, align 8, !dbg !1003
  %63 = load ptr, ptr %operand0.addr, align 8, !dbg !1004
  %length71 = getelementptr inbounds %struct.acpi_object_buffer, ptr %63, i32 0, i32 6, !dbg !1005
  %64 = load i32, ptr %length71, align 8, !dbg !1005
  %conv72 = zext i32 %64 to i64, !dbg !1004
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %62, i64 %conv72, i1 false), !dbg !1006
  %65 = load ptr, ptr %buffer, align 8, !dbg !1007
  %66 = load ptr, ptr %operand0.addr, align 8, !dbg !1008
  %length73 = getelementptr inbounds %struct.acpi_object_buffer, ptr %66, i32 0, i32 6, !dbg !1009
  %67 = load i32, ptr %length73, align 8, !dbg !1009
  %idx.ext74 = zext i32 %67 to i64, !dbg !1010
  %add.ptr75 = getelementptr i8, ptr %65, i64 %idx.ext74, !dbg !1010
  %68 = load ptr, ptr %local_operand1, align 8, !dbg !1011
  %pointer76 = getelementptr inbounds %struct.acpi_object_buffer, ptr %68, i32 0, i32 5, !dbg !1012
  %69 = load ptr, ptr %pointer76, align 8, !dbg !1012
  %70 = load ptr, ptr %local_operand1, align 8, !dbg !1013
  %length77 = getelementptr inbounds %struct.acpi_object_buffer, ptr %70, i32 0, i32 6, !dbg !1014
  %71 = load i32, ptr %length77, align 8, !dbg !1014
  %conv78 = zext i32 %71 to i64, !dbg !1013
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr75, ptr align 1 %69, i64 %conv78, i1 false), !dbg !1015
  br label %sw.epilog82, !dbg !1016

sw.default79:                                     ; preds = %if.end34
  %72 = load ptr, ptr %operand0.addr, align 8, !dbg !1017
  %type80 = getelementptr inbounds %struct.acpi_object_common, ptr %72, i32 0, i32 2, !dbg !1017
  %73 = load i8, ptr %type80, align 1, !dbg !1017
  %conv81 = zext i8 %73 to i32, !dbg !1017
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 265, ptr noundef @.str, i32 noundef %conv81) #6, !dbg !1017
  store i32 12303, ptr %status, align 4, !dbg !1018
  br label %cleanup, !dbg !1019

sw.epilog82:                                      ; preds = %if.end68, %if.end53, %if.end41
  %74 = load ptr, ptr %return_desc, align 8, !dbg !1020
  %75 = load ptr, ptr %actual_return_desc.addr, align 8, !dbg !1021
  store ptr %74, ptr %75, align 8, !dbg !1022
  br label %cleanup, !dbg !1023

cleanup:                                          ; preds = %sw.epilog82, %sw.default79, %if.then67, %if.then52, %if.then40, %if.then28, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !826), !dbg !1024
  %76 = load ptr, ptr %local_operand0, align 8, !dbg !1025
  %77 = load ptr, ptr %operand0.addr, align 8, !dbg !1027
  %cmp83 = icmp ne ptr %76, %77, !dbg !1028
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !1029

if.then85:                                        ; preds = %cleanup
  %78 = load ptr, ptr %local_operand0, align 8, !dbg !1030
  call void @acpi_ut_remove_reference(ptr noundef %78) #6, !dbg !1032
  br label %if.end86, !dbg !1033

if.end86:                                         ; preds = %if.then85, %cleanup
  %79 = load ptr, ptr %local_operand1, align 8, !dbg !1034
  %80 = load ptr, ptr %operand1.addr, align 8, !dbg !1036
  %cmp87 = icmp ne ptr %79, %80, !dbg !1037
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1038

if.then89:                                        ; preds = %if.end86
  %81 = load ptr, ptr %local_operand1, align 8, !dbg !1039
  call void @acpi_ut_remove_reference(ptr noundef %81) #6, !dbg !1041
  br label %if.end90, !dbg !1042

if.end90:                                         ; preds = %if.then89, %if.end86
  %82 = load i32, ptr %status, align 4, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 4, ptr %operand1_type) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 4, ptr %operand0_type) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_operand1) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_operand1) #5, !dbg !1044
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_operand0) #5, !dbg !1044
  ret i32 %82, !dbg !1043
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_convert_to_object_type_string(ptr noundef %obj_desc, ptr noundef %result_desc) #0 align 16 !dbg !1045 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %type_string = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1049, metadata !DIExpression()), !dbg !1054
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !1050, metadata !DIExpression()), !dbg !1055
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1051, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 8, ptr %type_string) #5, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %type_string, metadata !1052, metadata !DIExpression()), !dbg !1059
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1060
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1061
  %1 = load i8, ptr %type, align 1, !dbg !1061
  %conv = zext i8 %1 to i32, !dbg !1060
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv) #6, !dbg !1062
  store ptr %call, ptr %type_string, align 8, !dbg !1063
  %2 = load ptr, ptr %type_string, align 8, !dbg !1064
  %call1 = call i64 @strlen(ptr noundef %2) #6, !dbg !1065
  %add = add i64 %call1, 9, !dbg !1066
  %call2 = call ptr @acpi_ut_create_string_object(i64 noundef %add) #6, !dbg !1067
  store ptr %call2, ptr %return_desc, align 8, !dbg !1068
  %3 = load ptr, ptr %return_desc, align 8, !dbg !1069
  %tobool = icmp ne ptr %3, null, !dbg !1069
  br i1 %tobool, label %if.end, label %if.then, !dbg !1071

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1072

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %return_desc, align 8, !dbg !1074
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %4, i32 0, i32 5, !dbg !1075
  %5 = load ptr, ptr %pointer, align 8, !dbg !1075
  %call3 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.1) #6, !dbg !1076
  %6 = load ptr, ptr %return_desc, align 8, !dbg !1077
  %pointer4 = getelementptr inbounds %struct.acpi_object_string, ptr %6, i32 0, i32 5, !dbg !1078
  %7 = load ptr, ptr %pointer4, align 8, !dbg !1078
  %8 = load ptr, ptr %type_string, align 8, !dbg !1079
  %call5 = call ptr @strcat(ptr noundef %7, ptr noundef %8) #6, !dbg !1080
  %9 = load ptr, ptr %return_desc, align 8, !dbg !1081
  %pointer6 = getelementptr inbounds %struct.acpi_object_string, ptr %9, i32 0, i32 5, !dbg !1082
  %10 = load ptr, ptr %pointer6, align 8, !dbg !1082
  %call7 = call ptr @strcat(ptr noundef %10, ptr noundef @.str.2) #6, !dbg !1083
  %11 = load ptr, ptr %return_desc, align 8, !dbg !1084
  %12 = load ptr, ptr %result_desc.addr, align 8, !dbg !1085
  store ptr %11, ptr %12, align 8, !dbg !1086
  store i32 0, ptr %retval, align 4, !dbg !1087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1087

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %type_string) #5, !dbg !1088
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1088
  %13 = load i32, ptr %retval, align 4, !dbg !1088
  ret i32 %13, !dbg !1088
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1089 dso_local i32 @acpi_ex_convert_to_integer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1093 dso_local i32 @acpi_ex_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1094 dso_local i32 @acpi_ex_convert_to_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1095 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1099 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1103 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1106 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1107 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1111 dso_local ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_concat_template(ptr noundef %operand0, ptr noundef %operand1, ptr noundef %actual_return_desc, ptr noundef %walk_state) #0 align 16 !dbg !1112 {
entry:
  %retval = alloca i32, align 4
  %operand0.addr = alloca ptr, align 8
  %operand1.addr = alloca ptr, align 8
  %actual_return_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %return_desc = alloca ptr, align 8
  %new_buf = alloca ptr, align 8
  %end_tag = alloca ptr, align 8
  %length0 = alloca i64, align 8
  %length1 = alloca i64, align 8
  %new_length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %operand0, ptr %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand0.addr, metadata !1114, metadata !DIExpression()), !dbg !1125
  store ptr %operand1, ptr %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand1.addr, metadata !1115, metadata !DIExpression()), !dbg !1126
  store ptr %actual_return_desc, ptr %actual_return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %actual_return_desc.addr, metadata !1116, metadata !DIExpression()), !dbg !1127
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1117, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1118, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1119, metadata !DIExpression()), !dbg !1132
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_buf) #5, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %new_buf, metadata !1120, metadata !DIExpression()), !dbg !1134
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_tag) #5, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %end_tag, metadata !1121, metadata !DIExpression()), !dbg !1136
  call void @llvm.lifetime.start.p0(i64 8, ptr %length0) #5, !dbg !1137
  call void @llvm.dbg.declare(metadata ptr %length0, metadata !1122, metadata !DIExpression()), !dbg !1138
  call void @llvm.lifetime.start.p0(i64 8, ptr %length1) #5, !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !1123, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_length) #5, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %new_length, metadata !1124, metadata !DIExpression()), !dbg !1142
  %0 = load ptr, ptr %operand0.addr, align 8, !dbg !1143
  %call = call i32 @acpi_ut_get_resource_end_tag(ptr noundef %0, ptr noundef %end_tag) #6, !dbg !1144
  store i32 %call, ptr %status, align 4, !dbg !1145
  %1 = load i32, ptr %status, align 4, !dbg !1146
  %tobool = icmp ne i32 %1, 0, !dbg !1146
  br i1 %tobool, label %if.then, label %if.end, !dbg !1148

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1149
  store i32 %2, ptr %retval, align 4, !dbg !1149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1149

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %end_tag, align 8, !dbg !1151
  %4 = ptrtoint ptr %3 to i64, !dbg !1151
  %5 = inttoptr i64 %4 to ptr, !dbg !1151
  %6 = load ptr, ptr %operand0.addr, align 8, !dbg !1151
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 5, !dbg !1151
  %7 = load ptr, ptr %pointer, align 8, !dbg !1151
  %8 = ptrtoint ptr %7 to i64, !dbg !1151
  %9 = inttoptr i64 %8 to ptr, !dbg !1151
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64, !dbg !1151
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !1151
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1151
  store i64 %sub.ptr.sub, ptr %length0, align 8, !dbg !1152
  %10 = load ptr, ptr %operand1.addr, align 8, !dbg !1153
  %call1 = call i32 @acpi_ut_get_resource_end_tag(ptr noundef %10, ptr noundef %end_tag) #6, !dbg !1154
  store i32 %call1, ptr %status, align 4, !dbg !1155
  %11 = load i32, ptr %status, align 4, !dbg !1156
  %tobool2 = icmp ne i32 %11, 0, !dbg !1156
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1158

if.then3:                                         ; preds = %if.end
  %12 = load i32, ptr %status, align 4, !dbg !1159
  store i32 %12, ptr %retval, align 4, !dbg !1159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1159

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %end_tag, align 8, !dbg !1161
  %14 = ptrtoint ptr %13 to i64, !dbg !1161
  %15 = inttoptr i64 %14 to ptr, !dbg !1161
  %16 = load ptr, ptr %operand1.addr, align 8, !dbg !1161
  %pointer5 = getelementptr inbounds %struct.acpi_object_buffer, ptr %16, i32 0, i32 5, !dbg !1161
  %17 = load ptr, ptr %pointer5, align 8, !dbg !1161
  %18 = ptrtoint ptr %17 to i64, !dbg !1161
  %19 = inttoptr i64 %18 to ptr, !dbg !1161
  %sub.ptr.lhs.cast6 = ptrtoint ptr %15 to i64, !dbg !1161
  %sub.ptr.rhs.cast7 = ptrtoint ptr %19 to i64, !dbg !1161
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !1161
  store i64 %sub.ptr.sub8, ptr %length1, align 8, !dbg !1162
  %20 = load i64, ptr %length0, align 8, !dbg !1163
  %21 = load i64, ptr %length1, align 8, !dbg !1164
  %add = add i64 %20, %21, !dbg !1165
  %add9 = add i64 %add, 2, !dbg !1166
  store i64 %add9, ptr %new_length, align 8, !dbg !1167
  %22 = load i64, ptr %new_length, align 8, !dbg !1168
  %call10 = call ptr @acpi_ut_create_buffer_object(i64 noundef %22) #6, !dbg !1169
  store ptr %call10, ptr %return_desc, align 8, !dbg !1170
  %23 = load ptr, ptr %return_desc, align 8, !dbg !1171
  %tobool11 = icmp ne ptr %23, null, !dbg !1171
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1173

if.then12:                                        ; preds = %if.end4
  store i32 4, ptr %retval, align 4, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1174

if.end13:                                         ; preds = %if.end4
  %24 = load ptr, ptr %return_desc, align 8, !dbg !1176
  %pointer14 = getelementptr inbounds %struct.acpi_object_buffer, ptr %24, i32 0, i32 5, !dbg !1177
  %25 = load ptr, ptr %pointer14, align 8, !dbg !1177
  store ptr %25, ptr %new_buf, align 8, !dbg !1178
  %26 = load ptr, ptr %new_buf, align 8, !dbg !1179
  %27 = load ptr, ptr %operand0.addr, align 8, !dbg !1180
  %pointer15 = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1181
  %28 = load ptr, ptr %pointer15, align 8, !dbg !1181
  %29 = load i64, ptr %length0, align 8, !dbg !1182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %28, i64 %29, i1 false), !dbg !1183
  %30 = load ptr, ptr %new_buf, align 8, !dbg !1184
  %31 = load i64, ptr %length0, align 8, !dbg !1185
  %add.ptr = getelementptr i8, ptr %30, i64 %31, !dbg !1186
  %32 = load ptr, ptr %operand1.addr, align 8, !dbg !1187
  %pointer16 = getelementptr inbounds %struct.acpi_object_buffer, ptr %32, i32 0, i32 5, !dbg !1188
  %33 = load ptr, ptr %pointer16, align 8, !dbg !1188
  %34 = load i64, ptr %length1, align 8, !dbg !1189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %33, i64 %34, i1 false), !dbg !1190
  %35 = load ptr, ptr %new_buf, align 8, !dbg !1191
  %36 = load i64, ptr %new_length, align 8, !dbg !1192
  %sub = sub i64 %36, 1, !dbg !1193
  %arrayidx = getelementptr i8, ptr %35, i64 %sub, !dbg !1191
  store i8 0, ptr %arrayidx, align 1, !dbg !1194
  %37 = load ptr, ptr %new_buf, align 8, !dbg !1195
  %38 = load i64, ptr %new_length, align 8, !dbg !1196
  %sub17 = sub i64 %38, 2, !dbg !1197
  %arrayidx18 = getelementptr i8, ptr %37, i64 %sub17, !dbg !1195
  store i8 121, ptr %arrayidx18, align 1, !dbg !1198
  %39 = load ptr, ptr %return_desc, align 8, !dbg !1199
  %40 = load ptr, ptr %actual_return_desc.addr, align 8, !dbg !1200
  store ptr %39, ptr %40, align 8, !dbg !1201
  store i32 0, ptr %retval, align 4, !dbg !1202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1202

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_length) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %length1) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %length0) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_tag) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_buf) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1203
  %41 = load i32, ptr %retval, align 4, !dbg !1203
  ret i32 %41, !dbg !1203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1204 dso_local i32 @acpi_ut_get_resource_end_tag(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1208 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1211 dso_local i64 @strlen(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exconcat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exconcat\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exconcat.ll drivers/acpi/acpica/exconcat.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exconcat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e430b4b008ade8633e965edd279017")
!4 = !{!5, !12, !7, !16, !18, !22}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !15)
!15 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 42, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!26, !0, !31, !36}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 208, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 26)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 16, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 2)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 9)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 72, elements: !39)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 8, !"cf-protection-branch", i32 1}
!47 = !{i32 4, !"function_return_thunk_extern", i32 1}
!48 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!49 = !{i32 1, !"Code Model", i32 2}
!50 = !{i32 1, !"override-stack-alignment", i32 8}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = distinct !DISubprogram(name: "acpi_ex_do_concatenate", scope: !3, file: !3, line: 47, type: !53, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!53 = !DISubroutineType(types: !54)
!54 = !{!5, !55, !55, !138, !174}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !57, line: 369, size: 576, elements: !58)
!57 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!58 = !{!59, !70, !83, !93, !128, !142, !152, !463, !480, !496, !507, !585, !597, !611, !621, !639, !661, !680, !699, !718, !731, !758, !775, !788, !802, !811}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !56, file: !57, line: 370, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !57, line: 73, size: 128, elements: !61)
!61 = !{!62, !63, !64, !65, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !60, file: !57, line: 74, baseType: !55, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !60, file: !57, line: 74, baseType: !19, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !57, line: 74, baseType: !19, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !60, file: !57, line: 74, baseType: !66, size: 16, offset: 80)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !57, line: 74, baseType: !19, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !56, file: !57, line: 371, baseType: !71, size: 192)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !57, line: 76, size: 192, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !82}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !71, file: !57, line: 77, baseType: !55, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !71, file: !57, line: 77, baseType: !19, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !57, line: 77, baseType: !19, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !71, file: !57, line: 77, baseType: !66, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !57, line: 77, baseType: !19, size: 8, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !71, file: !57, line: 77, baseType: !79, size: 24, offset: 104)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 3)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !71, file: !57, line: 78, baseType: !13, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !56, file: !57, line: 372, baseType: !84, size: 256)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !57, line: 93, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !57, line: 94, baseType: !55, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !57, line: 94, baseType: !19, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !57, line: 94, baseType: !19, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !57, line: 94, baseType: !66, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !57, line: 94, baseType: !19, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !84, file: !57, line: 94, baseType: !16, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !57, line: 94, baseType: !7, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !56, file: !57, line: 373, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !57, line: 97, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !57, line: 98, baseType: !55, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !57, line: 98, baseType: !19, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !57, line: 98, baseType: !19, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !57, line: 98, baseType: !66, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !57, line: 98, baseType: !19, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !94, file: !57, line: 98, baseType: !18, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !57, line: 98, baseType: !7, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !57, line: 99, baseType: !7, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !57, line: 100, baseType: !18, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !57, line: 101, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !108, line: 133, size: 384, elements: !109)
!108 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!109 = !{!110, !111, !112, !113, !114, !123, !124, !125, !126}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !107, file: !108, line: 134, baseType: !55, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !108, line: 135, baseType: !19, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !108, line: 136, baseType: !19, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !108, line: 137, baseType: !66, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !108, line: 138, baseType: !115, size: 32, offset: 96)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !116, line: 328, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !115, file: !116, line: 329, baseType: !7, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !115, file: !116, line: 330, baseType: !120, size: 32)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !107, file: !108, line: 139, baseType: !106, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !107, file: !108, line: 140, baseType: !106, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !107, file: !108, line: 141, baseType: !106, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !107, file: !108, line: 142, baseType: !127, size: 16, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !66)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !56, file: !57, line: 374, baseType: !129, size: 384)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !57, line: 104, size: 384, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !139, !140, !141}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !57, line: 105, baseType: !55, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !57, line: 105, baseType: !19, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !57, line: 105, baseType: !19, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !57, line: 105, baseType: !66, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !57, line: 105, baseType: !19, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !57, line: 105, baseType: !106, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !129, file: !57, line: 106, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !57, line: 107, baseType: !18, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !57, line: 108, baseType: !7, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !129, file: !57, line: 109, baseType: !7, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !56, file: !57, line: 375, baseType: !143, size: 192)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !57, line: 118, size: 192, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !57, line: 119, baseType: !55, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !57, line: 119, baseType: !19, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !57, line: 119, baseType: !19, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !57, line: 119, baseType: !66, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !57, line: 119, baseType: !19, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !143, file: !57, line: 119, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !56, file: !57, line: 376, baseType: !153, size: 448)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !57, line: 144, size: 448, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !460, !461, !462}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !57, line: 145, baseType: !55, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !57, line: 145, baseType: !19, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !57, line: 145, baseType: !19, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !57, line: 145, baseType: !66, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !57, line: 145, baseType: !19, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !153, file: !57, line: 145, baseType: !19, size: 8, offset: 104)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !153, file: !57, line: 146, baseType: !19, size: 8, offset: 112)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !153, file: !57, line: 147, baseType: !19, size: 8, offset: 120)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !153, file: !57, line: 148, baseType: !55, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !57, line: 149, baseType: !55, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !57, line: 150, baseType: !18, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !153, file: !57, line: 154, baseType: !167, size: 64, offset: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !57, line: 151, size: 64, elements: !168)
!168 = !{!169, !459}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !167, file: !57, line: 152, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !108, line: 248, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!5, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !176, line: 37, size: 9024, elements: !177)
!176 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !407, !408, !409, !410, !411, !415, !417, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !442, !443, !444, !445, !446, !447, !448, !449, !451, !457}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !176, line: 38, baseType: !174, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !176, line: 39, baseType: !19, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !175, file: !176, line: 40, baseType: !19, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !175, file: !176, line: 41, baseType: !66, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !175, file: !176, line: 42, baseType: !19, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !175, file: !176, line: 43, baseType: !19, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !175, file: !176, line: 44, baseType: !19, size: 8, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !175, file: !176, line: 45, baseType: !127, size: 16, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !175, file: !176, line: 46, baseType: !19, size: 8, offset: 144)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !175, file: !176, line: 47, baseType: !19, size: 8, offset: 152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !175, file: !176, line: 48, baseType: !19, size: 8, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !175, file: !176, line: 49, baseType: !19, size: 8, offset: 168)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !175, file: !176, line: 50, baseType: !19, size: 8, offset: 176)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !175, file: !176, line: 51, baseType: !19, size: 8, offset: 184)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !175, file: !176, line: 52, baseType: !19, size: 8, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !175, file: !176, line: 53, baseType: !19, size: 8, offset: 200)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !176, line: 54, baseType: !18, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !175, file: !176, line: 55, baseType: !7, size: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !175, file: !176, line: 56, baseType: !7, size: 32, offset: 352)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !175, file: !176, line: 57, baseType: !7, size: 32, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !175, file: !176, line: 58, baseType: !7, size: 32, offset: 416)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !175, file: !176, line: 60, baseType: !200, size: 640, offset: 448)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !108, line: 909, size: 640, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !288, !289, !405, !406}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !200, file: !108, line: 910, baseType: !18, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !108, line: 911, baseType: !18, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !200, file: !108, line: 912, baseType: !18, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !200, file: !108, line: 913, baseType: !18, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !200, file: !108, line: 914, baseType: !18, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !200, file: !108, line: 915, baseType: !208, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !108, line: 891, size: 1600, elements: !210)
!210 = !{!211, !231, !247}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !209, file: !108, line: 892, baseType: !212, size: 448)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !108, line: 844, size: 448, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !230}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !108, line: 845, baseType: !208, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !108, line: 845, baseType: !19, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !108, line: 845, baseType: !19, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !212, file: !108, line: 845, baseType: !66, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !212, file: !108, line: 845, baseType: !18, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !108, line: 845, baseType: !208, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !108, line: 845, baseType: !106, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !212, file: !108, line: 845, baseType: !222, size: 64, offset: 320)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !108, line: 732, size: 64, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !222, file: !108, line: 733, baseType: !13, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !222, file: !108, line: 734, baseType: !7, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !222, file: !108, line: 735, baseType: !16, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !222, file: !108, line: 736, baseType: !18, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !108, line: 737, baseType: !16, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !222, file: !108, line: 738, baseType: !208, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !212, file: !108, line: 845, baseType: !19, size: 8, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !209, file: !108, line: 893, baseType: !232, size: 640)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !108, line: 851, size: 640, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !108, line: 852, baseType: !208, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !108, line: 852, baseType: !19, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !108, line: 852, baseType: !19, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !232, file: !108, line: 852, baseType: !66, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !232, file: !108, line: 852, baseType: !18, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !108, line: 852, baseType: !208, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !108, line: 852, baseType: !106, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !108, line: 852, baseType: !222, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !232, file: !108, line: 852, baseType: !19, size: 8, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !232, file: !108, line: 852, baseType: !16, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !232, file: !108, line: 853, baseType: !18, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !232, file: !108, line: 854, baseType: !7, size: 32, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !108, line: 855, baseType: !7, size: 32, offset: 608)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !209, file: !108, line: 894, baseType: !248, size: 1600)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !108, line: 862, size: 1600, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !108, line: 863, baseType: !208, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !108, line: 863, baseType: !19, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !108, line: 863, baseType: !19, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !248, file: !108, line: 863, baseType: !66, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !248, file: !108, line: 863, baseType: !18, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !108, line: 863, baseType: !208, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !248, file: !108, line: 863, baseType: !106, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !108, line: 863, baseType: !222, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !248, file: !108, line: 863, baseType: !19, size: 8, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !248, file: !108, line: 863, baseType: !208, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !248, file: !108, line: 864, baseType: !208, size: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !248, file: !108, line: 865, baseType: !16, size: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !248, file: !108, line: 866, baseType: !19, size: 8, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !248, file: !108, line: 867, baseType: !16, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !248, file: !108, line: 868, baseType: !16, size: 64, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !248, file: !108, line: 869, baseType: !16, size: 64, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !248, file: !108, line: 870, baseType: !120, size: 32, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !248, file: !108, line: 871, baseType: !7, size: 32, offset: 928)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !248, file: !108, line: 872, baseType: !7, size: 32, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !248, file: !108, line: 873, baseType: !7, size: 32, offset: 992)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !248, file: !108, line: 874, baseType: !7, size: 32, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !248, file: !108, line: 875, baseType: !7, size: 32, offset: 1056)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !248, file: !108, line: 876, baseType: !7, size: 32, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !248, file: !108, line: 877, baseType: !7, size: 32, offset: 1120)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !248, file: !108, line: 878, baseType: !7, size: 32, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !248, file: !108, line: 879, baseType: !7, size: 32, offset: 1184)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !248, file: !108, line: 880, baseType: !7, size: 32, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !248, file: !108, line: 881, baseType: !7, size: 32, offset: 1248)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !248, file: !108, line: 882, baseType: !7, size: 32, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !248, file: !108, line: 883, baseType: !7, size: 32, offset: 1312)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !248, file: !108, line: 884, baseType: !66, size: 16, offset: 1344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !248, file: !108, line: 885, baseType: !19, size: 8, offset: 1360)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !248, file: !108, line: 886, baseType: !19, size: 8, offset: 1368)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !248, file: !108, line: 887, baseType: !19, size: 8, offset: 1376)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !248, file: !108, line: 888, baseType: !285, size: 160, offset: 1384)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 20)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !200, file: !108, line: 916, baseType: !106, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !200, file: !108, line: 917, baseType: !290, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !108, line: 679, size: 640, elements: !292)
!292 = !{!293, !301, !314, !323, !332, !345, !359, !371, !383}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !291, file: !108, line: 680, baseType: !294, size: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !108, line: 575, size: 128, elements: !295)
!295 = !{!296, !297, !298, !299, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !108, line: 576, baseType: !151, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !108, line: 576, baseType: !19, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !108, line: 576, baseType: !19, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !108, line: 576, baseType: !66, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !108, line: 576, baseType: !66, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !291, file: !108, line: 681, baseType: !302, size: 384)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !108, line: 604, size: 384, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !108, line: 605, baseType: !151, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !108, line: 605, baseType: !19, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !108, line: 605, baseType: !19, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !108, line: 605, baseType: !66, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !108, line: 605, baseType: !66, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !302, file: !108, line: 606, baseType: !66, size: 16, offset: 112)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !302, file: !108, line: 607, baseType: !208, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !302, file: !108, line: 608, baseType: !18, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !302, file: !108, line: 609, baseType: !18, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !302, file: !108, line: 610, baseType: !13, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !291, file: !108, line: 682, baseType: !315, size: 192)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !108, line: 582, size: 192, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !108, line: 583, baseType: !151, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !108, line: 583, baseType: !19, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !108, line: 583, baseType: !19, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !108, line: 583, baseType: !66, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !108, line: 583, baseType: !66, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !315, file: !108, line: 584, baseType: !55, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !291, file: !108, line: 683, baseType: !324, size: 192)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !108, line: 616, size: 192, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !108, line: 617, baseType: !151, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !108, line: 617, baseType: !19, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !108, line: 617, baseType: !19, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !108, line: 617, baseType: !66, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !108, line: 617, baseType: !66, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !324, file: !108, line: 618, baseType: !106, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !291, file: !108, line: 684, baseType: !333, size: 448)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !108, line: 621, size: 448, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !108, line: 622, baseType: !151, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !108, line: 622, baseType: !19, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !108, line: 622, baseType: !19, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !108, line: 622, baseType: !66, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !108, line: 622, baseType: !66, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !333, file: !108, line: 623, baseType: !7, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !333, file: !108, line: 624, baseType: !208, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !333, file: !108, line: 625, baseType: !18, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !333, file: !108, line: 626, baseType: !18, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !333, file: !108, line: 627, baseType: !7, size: 32, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !291, file: !108, line: 685, baseType: !346, size: 512)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !108, line: 590, size: 512, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !108, line: 591, baseType: !151, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !108, line: 591, baseType: !19, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !108, line: 591, baseType: !19, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !108, line: 591, baseType: !66, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !108, line: 591, baseType: !66, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !346, file: !108, line: 592, baseType: !7, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !346, file: !108, line: 593, baseType: !55, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !346, file: !108, line: 594, baseType: !55, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !346, file: !108, line: 595, baseType: !174, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !346, file: !108, line: 596, baseType: !151, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !346, file: !108, line: 597, baseType: !7, size: 32, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !291, file: !108, line: 686, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !108, line: 634, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !108, line: 635, baseType: !151, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !108, line: 635, baseType: !19, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !108, line: 635, baseType: !19, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !108, line: 635, baseType: !66, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !108, line: 635, baseType: !66, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !360, file: !108, line: 636, baseType: !19, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !360, file: !108, line: 637, baseType: !174, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !360, file: !108, line: 638, baseType: !55, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !360, file: !108, line: 639, baseType: !13, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !291, file: !108, line: 687, baseType: !372, size: 640)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !108, line: 646, size: 640, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !108, line: 647, baseType: !151, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !108, line: 647, baseType: !19, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !108, line: 647, baseType: !19, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !108, line: 647, baseType: !66, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !108, line: 647, baseType: !66, size: 16, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !372, file: !108, line: 648, baseType: !380, size: 512, offset: 128)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !291, file: !108, line: 688, baseType: !384, size: 320)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !108, line: 669, size: 320, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !108, line: 670, baseType: !151, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !108, line: 670, baseType: !19, size: 8, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !108, line: 670, baseType: !19, size: 8, offset: 72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !384, file: !108, line: 670, baseType: !66, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !384, file: !108, line: 670, baseType: !66, size: 16, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !384, file: !108, line: 671, baseType: !19, size: 8, offset: 112)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !384, file: !108, line: 672, baseType: !106, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !384, file: !108, line: 673, baseType: !55, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !384, file: !108, line: 674, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !108, line: 660, size: 128, elements: !397)
!397 = !{!398, !404}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !396, file: !108, line: 661, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403, !7, !151}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !151)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !396, file: !108, line: 662, baseType: !151, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !200, file: !108, line: 918, baseType: !208, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !200, file: !108, line: 919, baseType: !7, size: 32, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !175, file: !176, line: 61, baseType: !7, size: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !175, file: !176, line: 62, baseType: !7, size: 32, offset: 1120)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !175, file: !176, line: 63, baseType: !66, size: 16, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !175, file: !176, line: 64, baseType: !19, size: 8, offset: 1168)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !175, file: !176, line: 66, baseType: !412, size: 2688, offset: 1216)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2688, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !175, file: !176, line: 67, baseType: !416, size: 3072, offset: 3904)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3072, elements: !381)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !175, file: !176, line: 68, baseType: !418, size: 576, offset: 6976)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, elements: !39)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !175, file: !176, line: 69, baseType: !138, size: 64, offset: 7552)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !175, file: !176, line: 71, baseType: !18, size: 64, offset: 7616)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !175, file: !176, line: 72, baseType: !138, size: 64, offset: 7680)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !175, file: !176, line: 73, baseType: !290, size: 64, offset: 7744)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !175, file: !176, line: 74, baseType: !106, size: 64, offset: 7808)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !175, file: !176, line: 75, baseType: !55, size: 64, offset: 7872)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !175, file: !176, line: 76, baseType: !106, size: 64, offset: 7936)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !175, file: !176, line: 77, baseType: !208, size: 64, offset: 8000)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !175, file: !176, line: 78, baseType: !55, size: 64, offset: 8064)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !175, file: !176, line: 79, baseType: !106, size: 64, offset: 8128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !175, file: !176, line: 80, baseType: !16, size: 64, offset: 8192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !175, file: !176, line: 81, baseType: !208, size: 64, offset: 8256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !175, file: !176, line: 82, baseType: !432, size: 64, offset: 8320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !108, line: 718, size: 128, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !434, file: !108, line: 722, baseType: !7, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !434, file: !108, line: 723, baseType: !7, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !108, line: 724, baseType: !66, size: 16, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !434, file: !108, line: 725, baseType: !19, size: 8, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !434, file: !108, line: 726, baseType: !19, size: 8, offset: 88)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !108, line: 727, baseType: !19, size: 8, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !175, file: !176, line: 83, baseType: !208, size: 64, offset: 8384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !175, file: !176, line: 84, baseType: !55, size: 64, offset: 8448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !175, file: !176, line: 85, baseType: !290, size: 64, offset: 8512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !175, file: !176, line: 86, baseType: !55, size: 64, offset: 8576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !175, file: !176, line: 87, baseType: !290, size: 64, offset: 8640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !175, file: !176, line: 88, baseType: !208, size: 64, offset: 8704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !175, file: !176, line: 89, baseType: !208, size: 64, offset: 8768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !175, file: !176, line: 90, baseType: !450, size: 64, offset: 8832)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !175, file: !176, line: 91, baseType: !452, size: 64, offset: 8896)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !108, line: 652, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!5, !174, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !175, file: !176, line: 92, baseType: !458, size: 64, offset: 8960)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !108, line: 656, baseType: !171)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !167, file: !57, line: 153, baseType: !55, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !153, file: !57, line: 156, baseType: !7, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !153, file: !57, line: 157, baseType: !127, size: 16, offset: 416)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !153, file: !57, line: 158, baseType: !19, size: 8, offset: 432)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !56, file: !57, line: 377, baseType: !464, size: 576)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !57, line: 122, size: 576, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !464, file: !57, line: 123, baseType: !55, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !464, file: !57, line: 123, baseType: !19, size: 8, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !57, line: 123, baseType: !19, size: 8, offset: 72)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !464, file: !57, line: 123, baseType: !66, size: 16, offset: 80)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !57, line: 123, baseType: !19, size: 8, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !464, file: !57, line: 123, baseType: !19, size: 8, offset: 104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !464, file: !57, line: 124, baseType: !66, size: 16, offset: 112)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !464, file: !57, line: 125, baseType: !151, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !464, file: !57, line: 126, baseType: !13, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !464, file: !57, line: 127, baseType: !450, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !464, file: !57, line: 128, baseType: !55, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !57, line: 129, baseType: !55, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !464, file: !57, line: 130, baseType: !106, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !464, file: !57, line: 131, baseType: !19, size: 8, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !56, file: !57, line: 378, baseType: !481, size: 512)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !57, line: 134, size: 512, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !494, !495}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !57, line: 135, baseType: !55, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !57, line: 135, baseType: !19, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !57, line: 135, baseType: !19, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !57, line: 135, baseType: !66, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !57, line: 135, baseType: !19, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !481, file: !57, line: 135, baseType: !19, size: 8, offset: 104)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !481, file: !57, line: 136, baseType: !106, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !57, line: 137, baseType: !55, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !481, file: !57, line: 138, baseType: !55, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !481, file: !57, line: 139, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !13)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !481, file: !57, line: 140, baseType: !7, size: 32, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !481, file: !57, line: 141, baseType: !151, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !56, file: !57, line: 379, baseType: !497, size: 320)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !57, line: 185, size: 320, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !57, line: 186, baseType: !55, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !57, line: 186, baseType: !19, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !57, line: 186, baseType: !19, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !57, line: 186, baseType: !66, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !57, line: 186, baseType: !19, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !57, line: 186, baseType: !505, size: 128, offset: 128)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !34)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !57, line: 186, baseType: !55, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !56, file: !57, line: 380, baseType: !508, size: 384)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !57, line: 188, size: 384, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !57, line: 189, baseType: !55, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !57, line: 189, baseType: !19, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !57, line: 189, baseType: !19, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !57, line: 189, baseType: !66, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !57, line: 189, baseType: !19, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !508, file: !57, line: 190, baseType: !505, size: 128, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !508, file: !57, line: 190, baseType: !55, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !508, file: !57, line: 190, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !108, line: 480, size: 576, elements: !520)
!520 = !{!521, !522, !523, !524, !532, !547, !579, !580, !581, !582, !583, !584}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !108, line: 481, baseType: !106, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !519, file: !108, line: 482, baseType: !518, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !108, line: 483, baseType: !518, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !519, file: !108, line: 484, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !108, line: 497, size: 256, elements: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !526, file: !108, line: 498, baseType: !525, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !108, line: 499, baseType: !525, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !526, file: !108, line: 500, baseType: !518, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !526, file: !108, line: 501, baseType: !7, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !519, file: !108, line: 485, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !108, line: 466, size: 320, elements: !535)
!535 = !{!536, !541, !542, !543, !544, !545, !546}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !534, file: !108, line: 467, baseType: !537, size: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !108, line: 459, size: 128, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !537, file: !108, line: 460, baseType: !19, size: 8)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !108, line: 461, baseType: !13, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !534, file: !108, line: 468, baseType: !537, size: 128, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !534, file: !108, line: 469, baseType: !66, size: 16, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !534, file: !108, line: 470, baseType: !19, size: 8, offset: 272)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !534, file: !108, line: 471, baseType: !19, size: 8, offset: 280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !534, file: !108, line: 472, baseType: !19, size: 8, offset: 288)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !534, file: !108, line: 473, baseType: !19, size: 8, offset: 296)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !519, file: !108, line: 486, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !108, line: 448, size: 192, elements: !550)
!550 = !{!551, !574, !575, !576, !577, !578}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !549, file: !108, line: 449, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !108, line: 438, size: 64, elements: !553)
!553 = !{!554, !555, !568}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !552, file: !108, line: 439, baseType: !106, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !552, file: !108, line: 440, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !108, line: 419, size: 256, elements: !558)
!558 = !{!559, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !557, file: !108, line: 420, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!7, !403, !7, !151}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !557, file: !108, line: 421, baseType: !151, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !557, file: !108, line: 422, baseType: !106, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !557, file: !108, line: 423, baseType: !19, size: 8, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !557, file: !108, line: 424, baseType: !19, size: 8, offset: 200)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !552, file: !108, line: 441, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !108, line: 429, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !570, file: !108, line: 430, baseType: !106, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !108, line: 431, baseType: !569, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !549, file: !108, line: 450, baseType: !533, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !108, line: 451, baseType: !19, size: 8, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !549, file: !108, line: 452, baseType: !19, size: 8, offset: 136)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !549, file: !108, line: 453, baseType: !19, size: 8, offset: 144)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !549, file: !108, line: 454, baseType: !19, size: 8, offset: 152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !519, file: !108, line: 487, baseType: !13, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !519, file: !108, line: 488, baseType: !7, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !519, file: !108, line: 489, baseType: !66, size: 16, offset: 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !519, file: !108, line: 490, baseType: !66, size: 16, offset: 496)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !519, file: !108, line: 491, baseType: !19, size: 8, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !519, file: !108, line: 492, baseType: !19, size: 8, offset: 520)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !56, file: !57, line: 381, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !57, line: 193, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !57, line: 194, baseType: !55, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !57, line: 194, baseType: !19, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !57, line: 194, baseType: !19, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !57, line: 194, baseType: !66, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !57, line: 194, baseType: !19, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !57, line: 194, baseType: !505, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !57, line: 194, baseType: !55, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !586, file: !57, line: 194, baseType: !7, size: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !586, file: !57, line: 195, baseType: !7, size: 32, offset: 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !56, file: !57, line: 382, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !57, line: 198, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !57, line: 199, baseType: !55, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !57, line: 199, baseType: !19, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !57, line: 199, baseType: !19, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !57, line: 199, baseType: !66, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !57, line: 199, baseType: !19, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !598, file: !57, line: 201, baseType: !19, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !598, file: !57, line: 202, baseType: !19, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !57, line: 203, baseType: !505, size: 128, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !57, line: 203, baseType: !55, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !598, file: !57, line: 203, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !13)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !56, file: !57, line: 383, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !57, line: 206, size: 320, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !57, line: 207, baseType: !55, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !57, line: 207, baseType: !19, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !57, line: 207, baseType: !19, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !57, line: 207, baseType: !66, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !57, line: 207, baseType: !19, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !612, file: !57, line: 207, baseType: !505, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !612, file: !57, line: 207, baseType: !55, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !56, file: !57, line: 384, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !57, line: 234, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !57, line: 235, baseType: !55, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !57, line: 235, baseType: !66, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 120)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !57, line: 235, baseType: !106, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !622, file: !57, line: 235, baseType: !7, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !622, file: !57, line: 235, baseType: !7, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !57, line: 235, baseType: !7, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !622, file: !57, line: 235, baseType: !19, size: 8, offset: 296)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !622, file: !57, line: 235, baseType: !55, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !56, file: !57, line: 385, baseType: !640, size: 576)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !57, line: 238, size: 576, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !57, line: 239, baseType: !55, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !57, line: 239, baseType: !66, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 104)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !57, line: 239, baseType: !106, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !640, file: !57, line: 239, baseType: !7, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !640, file: !57, line: 239, baseType: !7, size: 32, offset: 224)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !57, line: 239, baseType: !7, size: 32, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !640, file: !57, line: 239, baseType: !19, size: 8, offset: 296)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !640, file: !57, line: 239, baseType: !66, size: 16, offset: 304)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !640, file: !57, line: 240, baseType: !55, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !640, file: !57, line: 241, baseType: !18, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !640, file: !57, line: 242, baseType: !66, size: 16, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !640, file: !57, line: 243, baseType: !18, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !56, file: !57, line: 386, baseType: !662, size: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !57, line: 263, size: 384, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !57, line: 264, baseType: !55, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !57, line: 264, baseType: !66, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 120)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !57, line: 264, baseType: !106, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !662, file: !57, line: 264, baseType: !7, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !662, file: !57, line: 264, baseType: !7, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !57, line: 264, baseType: !7, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 296)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !662, file: !57, line: 264, baseType: !19, size: 8, offset: 304)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !662, file: !57, line: 265, baseType: !55, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !56, file: !57, line: 387, baseType: !681, size: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !57, line: 246, size: 448, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !681, file: !57, line: 247, baseType: !55, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !681, file: !57, line: 247, baseType: !66, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 104)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 120)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !57, line: 247, baseType: !106, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !681, file: !57, line: 247, baseType: !7, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !681, file: !57, line: 247, baseType: !7, size: 32, offset: 224)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !57, line: 247, baseType: !7, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !681, file: !57, line: 247, baseType: !19, size: 8, offset: 296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !681, file: !57, line: 247, baseType: !55, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !681, file: !57, line: 248, baseType: !55, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !56, file: !57, line: 388, baseType: !700, size: 448)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !57, line: 251, size: 448, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !57, line: 252, baseType: !55, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !57, line: 252, baseType: !66, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 120)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !57, line: 252, baseType: !106, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !700, file: !57, line: 252, baseType: !7, size: 32, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !700, file: !57, line: 252, baseType: !7, size: 32, offset: 224)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !700, file: !57, line: 252, baseType: !7, size: 32, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 288)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !700, file: !57, line: 252, baseType: !19, size: 8, offset: 296)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !700, file: !57, line: 257, baseType: !55, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !700, file: !57, line: 258, baseType: !55, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !56, file: !57, line: 389, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !57, line: 274, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !57, line: 275, baseType: !55, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !57, line: 275, baseType: !19, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !57, line: 275, baseType: !19, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !57, line: 275, baseType: !66, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !57, line: 275, baseType: !19, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !57, line: 275, baseType: !106, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !719, file: !57, line: 276, baseType: !7, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !57, line: 277, baseType: !399, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !719, file: !57, line: 278, baseType: !151, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !57, line: 279, baseType: !505, size: 128, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !56, file: !57, line: 390, baseType: !732, size: 576)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !57, line: 282, size: 576, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !747, !748, !749, !750, !756, !757}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !57, line: 283, baseType: !55, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !57, line: 283, baseType: !19, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !57, line: 283, baseType: !19, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !57, line: 283, baseType: !66, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !57, line: 283, baseType: !19, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !732, file: !57, line: 283, baseType: !19, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !732, file: !57, line: 284, baseType: !19, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !732, file: !57, line: 285, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!5, !7, !493, !7, !746, !151, !151}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !57, line: 286, baseType: !106, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !732, file: !57, line: 287, baseType: !151, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !732, file: !57, line: 288, baseType: !151, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !732, file: !57, line: 289, baseType: !751, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!5, !403, !7, !151, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !732, file: !57, line: 290, baseType: !55, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !57, line: 291, baseType: !55, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !56, file: !57, line: 391, baseType: !759, size: 512)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !57, line: 309, size: 512, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !57, line: 310, baseType: !55, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !57, line: 310, baseType: !19, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !57, line: 310, baseType: !19, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !57, line: 310, baseType: !66, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !57, line: 310, baseType: !19, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !759, file: !57, line: 310, baseType: !19, size: 8, offset: 104)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !759, file: !57, line: 311, baseType: !19, size: 8, offset: 112)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !759, file: !57, line: 312, baseType: !19, size: 8, offset: 120)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !759, file: !57, line: 313, baseType: !151, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !759, file: !57, line: 314, baseType: !106, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !759, file: !57, line: 315, baseType: !138, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !759, file: !57, line: 316, baseType: !18, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !759, file: !57, line: 317, baseType: !18, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !759, file: !57, line: 318, baseType: !7, size: 32, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !56, file: !57, line: 392, baseType: !776, size: 448)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !57, line: 342, size: 448, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !57, line: 343, baseType: !55, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !57, line: 343, baseType: !19, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !57, line: 343, baseType: !19, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !57, line: 343, baseType: !66, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !57, line: 343, baseType: !19, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !776, file: !57, line: 343, baseType: !106, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !776, file: !57, line: 344, baseType: !106, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !776, file: !57, line: 345, baseType: !151, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !776, file: !57, line: 346, baseType: !18, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !776, file: !57, line: 347, baseType: !7, size: 32, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !57, line: 393, baseType: !789, size: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !57, line: 352, size: 256, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !801}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !57, line: 353, baseType: !55, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !57, line: 353, baseType: !19, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !57, line: 353, baseType: !19, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !57, line: 353, baseType: !66, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !57, line: 353, baseType: !19, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !789, file: !57, line: 353, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !403, !151}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !789, file: !57, line: 354, baseType: !151, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !56, file: !57, line: 394, baseType: !803, size: 192)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !57, line: 359, size: 192, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !803, file: !57, line: 360, baseType: !55, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !57, line: 360, baseType: !19, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !57, line: 360, baseType: !19, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !803, file: !57, line: 360, baseType: !66, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !57, line: 360, baseType: !19, size: 8, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !57, line: 360, baseType: !55, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !57, line: 401, baseType: !107, size: 384)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !824, !825, !826}
!813 = !DILocalVariable(name: "operand0", arg: 1, scope: !52, file: !3, line: 47, type: !55)
!814 = !DILocalVariable(name: "operand1", arg: 2, scope: !52, file: !3, line: 48, type: !55)
!815 = !DILocalVariable(name: "actual_return_desc", arg: 3, scope: !52, file: !3, line: 49, type: !138)
!816 = !DILocalVariable(name: "walk_state", arg: 4, scope: !52, file: !3, line: 50, type: !174)
!817 = !DILocalVariable(name: "local_operand0", scope: !52, file: !3, line: 52, type: !55)
!818 = !DILocalVariable(name: "local_operand1", scope: !52, file: !3, line: 53, type: !55)
!819 = !DILocalVariable(name: "temp_operand1", scope: !52, file: !3, line: 54, type: !55)
!820 = !DILocalVariable(name: "return_desc", scope: !52, file: !3, line: 55, type: !55)
!821 = !DILocalVariable(name: "buffer", scope: !52, file: !3, line: 56, type: !16)
!822 = !DILocalVariable(name: "operand0_type", scope: !52, file: !3, line: 57, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!824 = !DILocalVariable(name: "operand1_type", scope: !52, file: !3, line: 58, type: !823)
!825 = !DILocalVariable(name: "status", scope: !52, file: !3, line: 59, type: !5)
!826 = !DILabel(scope: !52, name: "cleanup", file: !3, line: 273)
!827 = !DILocation(line: 47, column: 51, scope: !52)
!828 = !DILocation(line: 48, column: 37, scope: !52)
!829 = !DILocation(line: 49, column: 38, scope: !52)
!830 = !DILocation(line: 50, column: 34, scope: !52)
!831 = !DILocation(line: 52, column: 2, scope: !52)
!832 = !DILocation(line: 52, column: 29, scope: !52)
!833 = !DILocation(line: 52, column: 46, scope: !52)
!834 = !DILocation(line: 53, column: 2, scope: !52)
!835 = !DILocation(line: 53, column: 29, scope: !52)
!836 = !DILocation(line: 53, column: 46, scope: !52)
!837 = !DILocation(line: 54, column: 2, scope: !52)
!838 = !DILocation(line: 54, column: 29, scope: !52)
!839 = !DILocation(line: 55, column: 2, scope: !52)
!840 = !DILocation(line: 55, column: 29, scope: !52)
!841 = !DILocation(line: 56, column: 2, scope: !52)
!842 = !DILocation(line: 56, column: 8, scope: !52)
!843 = !DILocation(line: 57, column: 2, scope: !52)
!844 = !DILocation(line: 57, column: 19, scope: !52)
!845 = !DILocation(line: 58, column: 2, scope: !52)
!846 = !DILocation(line: 58, column: 19, scope: !52)
!847 = !DILocation(line: 59, column: 2, scope: !52)
!848 = !DILocation(line: 59, column: 14, scope: !52)
!849 = !DILocation(line: 65, column: 10, scope: !52)
!850 = !DILocation(line: 65, column: 27, scope: !52)
!851 = !DILocation(line: 65, column: 2, scope: !52)
!852 = !DILocation(line: 70, column: 19, scope: !853)
!853 = distinct !DILexicalBlock(scope: !52, file: !3, line: 65, column: 33)
!854 = !DILocation(line: 70, column: 36, scope: !853)
!855 = !DILocation(line: 70, column: 17, scope: !853)
!856 = !DILocation(line: 71, column: 3, scope: !853)
!857 = !DILocation(line: 78, column: 45, scope: !853)
!858 = !DILocation(line: 78, column: 7, scope: !853)
!859 = !DILocation(line: 77, column: 10, scope: !853)
!860 = !DILocation(line: 80, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !853, file: !3, line: 80, column: 7)
!862 = !DILocation(line: 80, column: 7, scope: !853)
!863 = !DILocation(line: 81, column: 4, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 80, column: 29)
!865 = !DILocation(line: 84, column: 17, scope: !853)
!866 = !DILocation(line: 85, column: 3, scope: !853)
!867 = !DILocation(line: 90, column: 10, scope: !52)
!868 = !DILocation(line: 90, column: 27, scope: !52)
!869 = !DILocation(line: 90, column: 2, scope: !52)
!870 = !DILocation(line: 95, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !52, file: !3, line: 90, column: 33)
!872 = !DILocation(line: 95, column: 36, scope: !871)
!873 = !DILocation(line: 95, column: 17, scope: !871)
!874 = !DILocation(line: 96, column: 3, scope: !871)
!875 = !DILocation(line: 103, column: 45, scope: !871)
!876 = !DILocation(line: 103, column: 7, scope: !871)
!877 = !DILocation(line: 102, column: 10, scope: !871)
!878 = !DILocation(line: 105, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !871, file: !3, line: 105, column: 7)
!880 = !DILocation(line: 105, column: 7, scope: !871)
!881 = !DILocation(line: 106, column: 4, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 105, column: 29)
!883 = !DILocation(line: 109, column: 17, scope: !871)
!884 = !DILocation(line: 110, column: 3, scope: !871)
!885 = !DILocation(line: 120, column: 10, scope: !52)
!886 = !DILocation(line: 120, column: 2, scope: !52)
!887 = !DILocation(line: 124, column: 34, scope: !888)
!888 = distinct !DILexicalBlock(scope: !52, file: !3, line: 120, column: 25)
!889 = !DILocation(line: 124, column: 7, scope: !888)
!890 = !DILocation(line: 123, column: 10, scope: !888)
!891 = !DILocation(line: 126, column: 3, scope: !888)
!892 = !DILocation(line: 131, column: 33, scope: !888)
!893 = !DILocation(line: 131, column: 7, scope: !888)
!894 = !DILocation(line: 130, column: 10, scope: !888)
!895 = !DILocation(line: 132, column: 3, scope: !888)
!896 = !DILocation(line: 136, column: 11, scope: !888)
!897 = !DILocation(line: 136, column: 3, scope: !888)
!898 = !DILocation(line: 144, column: 34, scope: !899)
!899 = distinct !DILexicalBlock(scope: !888, file: !3, line: 136, column: 26)
!900 = !DILocation(line: 144, column: 8, scope: !899)
!901 = !DILocation(line: 143, column: 11, scope: !899)
!902 = !DILocation(line: 147, column: 4, scope: !899)
!903 = !DILocation(line: 151, column: 11, scope: !899)
!904 = !DILocation(line: 152, column: 4, scope: !899)
!905 = !DILocation(line: 154, column: 3, scope: !888)
!906 = !DILocation(line: 158, column: 3, scope: !888)
!907 = !DILocation(line: 160, column: 10, scope: !888)
!908 = !DILocation(line: 161, column: 2, scope: !888)
!909 = !DILocation(line: 163, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !52, file: !3, line: 163, column: 6)
!911 = !DILocation(line: 163, column: 6, scope: !52)
!912 = !DILocation(line: 164, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 163, column: 28)
!914 = !DILocation(line: 169, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !52, file: !3, line: 169, column: 6)
!916 = !DILocation(line: 169, column: 25, scope: !915)
!917 = !DILocation(line: 169, column: 22, scope: !915)
!918 = !DILocation(line: 169, column: 35, scope: !915)
!919 = !DILocation(line: 169, column: 39, scope: !915)
!920 = !DILocation(line: 169, column: 57, scope: !915)
!921 = !DILocation(line: 169, column: 54, scope: !915)
!922 = !DILocation(line: 169, column: 6, scope: !52)
!923 = !DILocation(line: 170, column: 28, scope: !924)
!924 = distinct !DILexicalBlock(scope: !915, file: !3, line: 169, column: 73)
!925 = !DILocation(line: 170, column: 3, scope: !924)
!926 = !DILocation(line: 171, column: 2, scope: !924)
!927 = !DILocation(line: 173, column: 19, scope: !52)
!928 = !DILocation(line: 173, column: 17, scope: !52)
!929 = !DILocation(line: 186, column: 10, scope: !52)
!930 = !DILocation(line: 186, column: 2, scope: !52)
!931 = !DILocation(line: 193, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !52, file: !3, line: 186, column: 25)
!933 = !DILocation(line: 192, column: 46, scope: !932)
!934 = !DILocation(line: 192, column: 17, scope: !932)
!935 = !DILocation(line: 192, column: 15, scope: !932)
!936 = !DILocation(line: 195, column: 8, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 195, column: 7)
!938 = !DILocation(line: 195, column: 7, scope: !932)
!939 = !DILocation(line: 196, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 195, column: 21)
!941 = !DILocation(line: 197, column: 4, scope: !940)
!942 = !DILocation(line: 200, column: 20, scope: !932)
!943 = !DILocation(line: 200, column: 40, scope: !932)
!944 = !DILocation(line: 200, column: 10, scope: !932)
!945 = !DILocation(line: 204, column: 10, scope: !932)
!946 = !DILocation(line: 204, column: 19, scope: !932)
!947 = !DILocation(line: 204, column: 37, scope: !932)
!948 = !DILocation(line: 205, column: 10, scope: !932)
!949 = !DILocation(line: 204, column: 3, scope: !932)
!950 = !DILocation(line: 209, column: 10, scope: !932)
!951 = !DILocation(line: 209, column: 19, scope: !932)
!952 = !DILocation(line: 209, column: 17, scope: !932)
!953 = !DILocation(line: 210, column: 11, scope: !932)
!954 = !DILocation(line: 210, column: 35, scope: !932)
!955 = !DILocation(line: 211, column: 10, scope: !932)
!956 = !DILocation(line: 209, column: 3, scope: !932)
!957 = !DILocation(line: 212, column: 3, scope: !932)
!958 = !DILocation(line: 219, column: 12, scope: !932)
!959 = !DILocation(line: 220, column: 19, scope: !932)
!960 = !DILocation(line: 218, column: 47, scope: !932)
!961 = !DILocation(line: 221, column: 12, scope: !932)
!962 = !DILocation(line: 222, column: 19, scope: !932)
!963 = !DILocation(line: 220, column: 26, scope: !932)
!964 = !DILocation(line: 218, column: 17, scope: !932)
!965 = !DILocation(line: 218, column: 15, scope: !932)
!966 = !DILocation(line: 223, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !932, file: !3, line: 223, column: 7)
!968 = !DILocation(line: 223, column: 7, scope: !932)
!969 = !DILocation(line: 224, column: 11, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 223, column: 21)
!971 = !DILocation(line: 225, column: 4, scope: !970)
!972 = !DILocation(line: 228, column: 12, scope: !932)
!973 = !DILocation(line: 228, column: 32, scope: !932)
!974 = !DILocation(line: 228, column: 10, scope: !932)
!975 = !DILocation(line: 232, column: 10, scope: !932)
!976 = !DILocation(line: 232, column: 18, scope: !932)
!977 = !DILocation(line: 232, column: 41, scope: !932)
!978 = !DILocation(line: 232, column: 3, scope: !932)
!979 = !DILocation(line: 233, column: 10, scope: !932)
!980 = !DILocation(line: 233, column: 18, scope: !932)
!981 = !DILocation(line: 233, column: 41, scope: !932)
!982 = !DILocation(line: 233, column: 3, scope: !932)
!983 = !DILocation(line: 234, column: 3, scope: !932)
!984 = !DILocation(line: 241, column: 12, scope: !932)
!985 = !DILocation(line: 242, column: 12, scope: !932)
!986 = !DILocation(line: 240, column: 47, scope: !932)
!987 = !DILocation(line: 243, column: 12, scope: !932)
!988 = !DILocation(line: 244, column: 19, scope: !932)
!989 = !DILocation(line: 242, column: 19, scope: !932)
!990 = !DILocation(line: 240, column: 17, scope: !932)
!991 = !DILocation(line: 240, column: 15, scope: !932)
!992 = !DILocation(line: 245, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !932, file: !3, line: 245, column: 7)
!994 = !DILocation(line: 245, column: 7, scope: !932)
!995 = !DILocation(line: 246, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 245, column: 21)
!997 = !DILocation(line: 247, column: 4, scope: !996)
!998 = !DILocation(line: 250, column: 20, scope: !932)
!999 = !DILocation(line: 250, column: 40, scope: !932)
!1000 = !DILocation(line: 250, column: 10, scope: !932)
!1001 = !DILocation(line: 254, column: 10, scope: !932)
!1002 = !DILocation(line: 254, column: 18, scope: !932)
!1003 = !DILocation(line: 254, column: 35, scope: !932)
!1004 = !DILocation(line: 255, column: 10, scope: !932)
!1005 = !DILocation(line: 255, column: 27, scope: !932)
!1006 = !DILocation(line: 254, column: 3, scope: !932)
!1007 = !DILocation(line: 256, column: 10, scope: !932)
!1008 = !DILocation(line: 256, column: 19, scope: !932)
!1009 = !DILocation(line: 256, column: 36, scope: !932)
!1010 = !DILocation(line: 256, column: 17, scope: !932)
!1011 = !DILocation(line: 257, column: 10, scope: !932)
!1012 = !DILocation(line: 257, column: 33, scope: !932)
!1013 = !DILocation(line: 258, column: 10, scope: !932)
!1014 = !DILocation(line: 258, column: 33, scope: !932)
!1015 = !DILocation(line: 256, column: 3, scope: !932)
!1016 = !DILocation(line: 259, column: 3, scope: !932)
!1017 = !DILocation(line: 265, column: 3, scope: !932)
!1018 = !DILocation(line: 267, column: 10, scope: !932)
!1019 = !DILocation(line: 268, column: 3, scope: !932)
!1020 = !DILocation(line: 271, column: 24, scope: !52)
!1021 = !DILocation(line: 271, column: 3, scope: !52)
!1022 = !DILocation(line: 271, column: 22, scope: !52)
!1023 = !DILocation(line: 271, column: 2, scope: !52)
!1024 = !DILocation(line: 273, column: 1, scope: !52)
!1025 = !DILocation(line: 274, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !52, file: !3, line: 274, column: 6)
!1027 = !DILocation(line: 274, column: 24, scope: !1026)
!1028 = !DILocation(line: 274, column: 21, scope: !1026)
!1029 = !DILocation(line: 274, column: 6, scope: !52)
!1030 = !DILocation(line: 275, column: 28, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 274, column: 34)
!1032 = !DILocation(line: 275, column: 3, scope: !1031)
!1033 = !DILocation(line: 276, column: 2, scope: !1031)
!1034 = !DILocation(line: 278, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !52, file: !3, line: 278, column: 6)
!1036 = !DILocation(line: 278, column: 24, scope: !1035)
!1037 = !DILocation(line: 278, column: 21, scope: !1035)
!1038 = !DILocation(line: 278, column: 6, scope: !52)
!1039 = !DILocation(line: 279, column: 28, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 278, column: 34)
!1041 = !DILocation(line: 279, column: 3, scope: !1040)
!1042 = !DILocation(line: 280, column: 2, scope: !1040)
!1043 = !DILocation(line: 282, column: 2, scope: !52)
!1044 = !DILocation(line: 283, column: 1, scope: !52)
!1045 = distinct !DISubprogram(name: "acpi_ex_convert_to_object_type_string", scope: !3, file: !3, line: 301, type: !1046, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!5, !55, !138}
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1045, file: !3, line: 301, type: !55)
!1050 = !DILocalVariable(name: "result_desc", arg: 2, scope: !1045, file: !3, line: 302, type: !138)
!1051 = !DILocalVariable(name: "return_desc", scope: !1045, file: !3, line: 304, type: !55)
!1052 = !DILocalVariable(name: "type_string", scope: !1045, file: !3, line: 305, type: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1054 = !DILocation(line: 301, column: 66, scope: !1045)
!1055 = !DILocation(line: 302, column: 39, scope: !1045)
!1056 = !DILocation(line: 304, column: 2, scope: !1045)
!1057 = !DILocation(line: 304, column: 29, scope: !1045)
!1058 = !DILocation(line: 305, column: 2, scope: !1045)
!1059 = !DILocation(line: 305, column: 14, scope: !1045)
!1060 = !DILocation(line: 307, column: 38, scope: !1045)
!1061 = !DILocation(line: 307, column: 55, scope: !1045)
!1062 = !DILocation(line: 307, column: 16, scope: !1045)
!1063 = !DILocation(line: 307, column: 14, scope: !1045)
!1064 = !DILocation(line: 309, column: 64, scope: !1045)
!1065 = !DILocation(line: 309, column: 57, scope: !1045)
!1066 = !DILocation(line: 309, column: 77, scope: !1045)
!1067 = !DILocation(line: 309, column: 16, scope: !1045)
!1068 = !DILocation(line: 309, column: 14, scope: !1045)
!1069 = !DILocation(line: 310, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 310, column: 6)
!1071 = !DILocation(line: 310, column: 6, scope: !1045)
!1072 = !DILocation(line: 311, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 310, column: 20)
!1074 = !DILocation(line: 314, column: 9, scope: !1045)
!1075 = !DILocation(line: 314, column: 29, scope: !1045)
!1076 = !DILocation(line: 314, column: 2, scope: !1045)
!1077 = !DILocation(line: 315, column: 9, scope: !1045)
!1078 = !DILocation(line: 315, column: 29, scope: !1045)
!1079 = !DILocation(line: 315, column: 38, scope: !1045)
!1080 = !DILocation(line: 315, column: 2, scope: !1045)
!1081 = !DILocation(line: 316, column: 9, scope: !1045)
!1082 = !DILocation(line: 316, column: 29, scope: !1045)
!1083 = !DILocation(line: 316, column: 2, scope: !1045)
!1084 = !DILocation(line: 318, column: 17, scope: !1045)
!1085 = !DILocation(line: 318, column: 3, scope: !1045)
!1086 = !DILocation(line: 318, column: 15, scope: !1045)
!1087 = !DILocation(line: 319, column: 2, scope: !1045)
!1088 = !DILocation(line: 320, column: 1, scope: !1045)
!1089 = !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !1090, file: !1090, line: 69, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!5, !55, !138, !7}
!1093 = !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !1090, file: !1090, line: 74, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = !DISubprogram(name: "acpi_ex_convert_to_string", scope: !1090, file: !1090, line: 78, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubprogram(name: "acpi_error", scope: !1096, file: !1096, line: 901, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !1053, !7, !1053, null}
!1099 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1100, file: !1100, line: 369, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !55}
!1103 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !1100, file: !1100, line: 457, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!55, !12}
!1106 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !1100, file: !1100, line: 459, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubprogram(name: "strcpy", scope: !1108, file: !1108, line: 63, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!16, !16, !1053}
!1111 = !DISubprogram(name: "strcat", scope: !1108, file: !1108, line: 79, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = distinct !DISubprogram(name: "acpi_ex_concat_template", scope: !3, file: !3, line: 338, type: !53, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1114 = !DILocalVariable(name: "operand0", arg: 1, scope: !1112, file: !3, line: 338, type: !55)
!1115 = !DILocalVariable(name: "operand1", arg: 2, scope: !1112, file: !3, line: 339, type: !55)
!1116 = !DILocalVariable(name: "actual_return_desc", arg: 3, scope: !1112, file: !3, line: 340, type: !138)
!1117 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1112, file: !3, line: 341, type: !174)
!1118 = !DILocalVariable(name: "status", scope: !1112, file: !3, line: 343, type: !5)
!1119 = !DILocalVariable(name: "return_desc", scope: !1112, file: !3, line: 344, type: !55)
!1120 = !DILocalVariable(name: "new_buf", scope: !1112, file: !3, line: 345, type: !18)
!1121 = !DILocalVariable(name: "end_tag", scope: !1112, file: !3, line: 346, type: !18)
!1122 = !DILocalVariable(name: "length0", scope: !1112, file: !3, line: 347, type: !12)
!1123 = !DILocalVariable(name: "length1", scope: !1112, file: !3, line: 348, type: !12)
!1124 = !DILocalVariable(name: "new_length", scope: !1112, file: !3, line: 349, type: !12)
!1125 = !DILocation(line: 338, column: 52, scope: !1112)
!1126 = !DILocation(line: 339, column: 31, scope: !1112)
!1127 = !DILocation(line: 340, column: 32, scope: !1112)
!1128 = !DILocation(line: 341, column: 28, scope: !1112)
!1129 = !DILocation(line: 343, column: 2, scope: !1112)
!1130 = !DILocation(line: 343, column: 14, scope: !1112)
!1131 = !DILocation(line: 344, column: 2, scope: !1112)
!1132 = !DILocation(line: 344, column: 29, scope: !1112)
!1133 = !DILocation(line: 345, column: 2, scope: !1112)
!1134 = !DILocation(line: 345, column: 6, scope: !1112)
!1135 = !DILocation(line: 346, column: 2, scope: !1112)
!1136 = !DILocation(line: 346, column: 6, scope: !1112)
!1137 = !DILocation(line: 347, column: 2, scope: !1112)
!1138 = !DILocation(line: 347, column: 12, scope: !1112)
!1139 = !DILocation(line: 348, column: 2, scope: !1112)
!1140 = !DILocation(line: 348, column: 12, scope: !1112)
!1141 = !DILocation(line: 349, column: 2, scope: !1112)
!1142 = !DILocation(line: 349, column: 12, scope: !1112)
!1143 = !DILocation(line: 361, column: 40, scope: !1112)
!1144 = !DILocation(line: 361, column: 11, scope: !1112)
!1145 = !DILocation(line: 361, column: 9, scope: !1112)
!1146 = !DILocation(line: 362, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 362, column: 6)
!1148 = !DILocation(line: 362, column: 6, scope: !1112)
!1149 = !DILocation(line: 363, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 362, column: 28)
!1151 = !DILocation(line: 366, column: 12, scope: !1112)
!1152 = !DILocation(line: 366, column: 10, scope: !1112)
!1153 = !DILocation(line: 370, column: 40, scope: !1112)
!1154 = !DILocation(line: 370, column: 11, scope: !1112)
!1155 = !DILocation(line: 370, column: 9, scope: !1112)
!1156 = !DILocation(line: 371, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 371, column: 6)
!1158 = !DILocation(line: 371, column: 6, scope: !1112)
!1159 = !DILocation(line: 372, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 371, column: 28)
!1161 = !DILocation(line: 375, column: 12, scope: !1112)
!1162 = !DILocation(line: 375, column: 10, scope: !1112)
!1163 = !DILocation(line: 379, column: 15, scope: !1112)
!1164 = !DILocation(line: 379, column: 25, scope: !1112)
!1165 = !DILocation(line: 379, column: 23, scope: !1112)
!1166 = !DILocation(line: 379, column: 33, scope: !1112)
!1167 = !DILocation(line: 379, column: 13, scope: !1112)
!1168 = !DILocation(line: 383, column: 45, scope: !1112)
!1169 = !DILocation(line: 383, column: 16, scope: !1112)
!1170 = !DILocation(line: 383, column: 14, scope: !1112)
!1171 = !DILocation(line: 384, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 384, column: 6)
!1173 = !DILocation(line: 384, column: 6, scope: !1112)
!1174 = !DILocation(line: 385, column: 3, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 384, column: 20)
!1176 = !DILocation(line: 392, column: 12, scope: !1112)
!1177 = !DILocation(line: 392, column: 32, scope: !1112)
!1178 = !DILocation(line: 392, column: 10, scope: !1112)
!1179 = !DILocation(line: 393, column: 9, scope: !1112)
!1180 = !DILocation(line: 393, column: 18, scope: !1112)
!1181 = !DILocation(line: 393, column: 35, scope: !1112)
!1182 = !DILocation(line: 393, column: 44, scope: !1112)
!1183 = !DILocation(line: 393, column: 2, scope: !1112)
!1184 = !DILocation(line: 394, column: 9, scope: !1112)
!1185 = !DILocation(line: 394, column: 19, scope: !1112)
!1186 = !DILocation(line: 394, column: 17, scope: !1112)
!1187 = !DILocation(line: 394, column: 28, scope: !1112)
!1188 = !DILocation(line: 394, column: 45, scope: !1112)
!1189 = !DILocation(line: 394, column: 54, scope: !1112)
!1190 = !DILocation(line: 394, column: 2, scope: !1112)
!1191 = !DILocation(line: 398, column: 2, scope: !1112)
!1192 = !DILocation(line: 398, column: 10, scope: !1112)
!1193 = !DILocation(line: 398, column: 21, scope: !1112)
!1194 = !DILocation(line: 398, column: 26, scope: !1112)
!1195 = !DILocation(line: 399, column: 2, scope: !1112)
!1196 = !DILocation(line: 399, column: 10, scope: !1112)
!1197 = !DILocation(line: 399, column: 21, scope: !1112)
!1198 = !DILocation(line: 399, column: 26, scope: !1112)
!1199 = !DILocation(line: 403, column: 24, scope: !1112)
!1200 = !DILocation(line: 403, column: 3, scope: !1112)
!1201 = !DILocation(line: 403, column: 22, scope: !1112)
!1202 = !DILocation(line: 404, column: 2, scope: !1112)
!1203 = !DILocation(line: 405, column: 1, scope: !1112)
!1204 = !DISubprogram(name: "acpi_ut_get_resource_end_tag", scope: !1100, file: !1100, line: 613, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!5, !55, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1208 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1100, file: !1100, line: 225, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1053, !823}
!1211 = !DISubprogram(name: "strlen", scope: !1108, file: !1108, line: 128, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!24, !1053}
