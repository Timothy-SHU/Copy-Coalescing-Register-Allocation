; ModuleID = 'drivers/acpi/acpica/rsmisc.c'
source_filename = "drivers/acpi/acpica/rsmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_rsconvert_info = type { i8, i8, i8, i8 }
%struct.aml_resource_large_header = type <{ i8, i16 }>

@_acpi_module_name = internal constant [7 x i8] c"rsmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [61 x i8] c"Misaligned resource pointer (get): %p Type 0x%2.2X Length %u\00", align 1, !dbg !72
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid conversion sub-opcode\00", align 1, !dbg !77
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid conversion opcode\00", align 1, !dbg !82

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_convert_aml_to_resource(ptr noundef %resource, ptr noundef %aml, ptr noundef %info) #0 align 16 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %aml_resource_length = alloca i16, align 2
  %source = alloca ptr, align 8
  %destination = alloca ptr, align 8
  %target = alloca ptr, align 8
  %count = alloca i8, align 1
  %flags_mode = alloca i8, align 1
  %item_count = alloca i16, align 2
  %temp16 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !883, metadata !DIExpression()), !dbg !895
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !884, metadata !DIExpression()), !dbg !896
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !885, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 2, ptr %aml_resource_length) #6, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %aml_resource_length, metadata !886, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #6, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %source, metadata !887, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 8, ptr %destination) #6, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %destination, metadata !888, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #6, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %target, metadata !889, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 1, ptr %count) #6, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %count, metadata !890, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags_mode) #6, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %flags_mode, metadata !891, metadata !DIExpression()), !dbg !909
  store i8 0, ptr %flags_mode, align 1, !dbg !909
  call void @llvm.lifetime.start.p0(i64 2, ptr %item_count) #6, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %item_count, metadata !892, metadata !DIExpression()), !dbg !911
  store i16 0, ptr %item_count, align 2, !dbg !911
  call void @llvm.lifetime.start.p0(i64 2, ptr %temp16) #6, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %temp16, metadata !893, metadata !DIExpression()), !dbg !913
  store i16 0, ptr %temp16, align 2, !dbg !913
  %0 = load ptr, ptr %info.addr, align 8, !dbg !914
  %tobool = icmp ne ptr %0, null, !dbg !914
  br i1 %tobool, label %if.end, label %if.then, !dbg !916

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !919
  %2 = ptrtoint ptr %1 to i64, !dbg !921
  %and = and i64 %2, 3, !dbg !922
  %tobool1 = icmp ne i64 %and, 0, !dbg !922
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !923

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %resource.addr, align 8, !dbg !924
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !924
  %type = getelementptr inbounds %struct.acpi_resource, ptr %4, i32 0, i32 0, !dbg !924
  %5 = load i32, ptr %type, align 1, !dbg !924
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !924
  %length = getelementptr inbounds %struct.acpi_resource, ptr %6, i32 0, i32 1, !dbg !924
  %7 = load i32, ptr %length, align 1, !dbg !924
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 58, ptr noundef @.str, ptr noundef %3, i32 noundef %5, i32 noundef %7) #7, !dbg !924
  br label %if.end3, !dbg !926

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %aml.addr, align 8, !dbg !927
  %call = call zeroext i16 @acpi_ut_get_resource_length(ptr noundef %8) #7, !dbg !928
  store i16 %call, ptr %aml_resource_length, align 2, !dbg !929
  %9 = load ptr, ptr %info.addr, align 8, !dbg !930
  %value = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %9, i32 0, i32 3, !dbg !930
  %10 = load i8, ptr %value, align 1, !dbg !930
  store i8 %10, ptr %count, align 1, !dbg !931
  br label %while.cond, !dbg !932

while.cond:                                       ; preds = %sw.epilog279, %if.end3
  %11 = load i8, ptr %count, align 1, !dbg !933
  %tobool4 = icmp ne i8 %11, 0, !dbg !932
  br i1 %tobool4, label %while.body, label %while.end, !dbg !932

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %target, align 8, !dbg !934
  %12 = load ptr, ptr %aml.addr, align 8, !dbg !936
  %13 = ptrtoint ptr %12 to i64, !dbg !936
  %14 = inttoptr i64 %13 to ptr, !dbg !936
  %15 = load ptr, ptr %info.addr, align 8, !dbg !936
  %aml_offset = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %15, i32 0, i32 2, !dbg !936
  %16 = load i8, ptr %aml_offset, align 1, !dbg !936
  %conv = zext i8 %16 to i64, !dbg !936
  %add.ptr = getelementptr i8, ptr %14, i64 %conv, !dbg !936
  %17 = ptrtoint ptr %add.ptr to i64, !dbg !936
  %18 = inttoptr i64 %17 to ptr, !dbg !936
  store ptr %18, ptr %source, align 8, !dbg !937
  %19 = load ptr, ptr %resource.addr, align 8, !dbg !938
  %20 = ptrtoint ptr %19 to i64, !dbg !938
  %21 = inttoptr i64 %20 to ptr, !dbg !938
  %22 = load ptr, ptr %info.addr, align 8, !dbg !938
  %resource_offset = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %22, i32 0, i32 1, !dbg !938
  %23 = load i8, ptr %resource_offset, align 1, !dbg !938
  %conv5 = zext i8 %23 to i64, !dbg !938
  %add.ptr6 = getelementptr i8, ptr %21, i64 %conv5, !dbg !938
  %24 = ptrtoint ptr %add.ptr6 to i64, !dbg !938
  %25 = inttoptr i64 %24 to ptr, !dbg !938
  store ptr %25, ptr %destination, align 8, !dbg !939
  %26 = load ptr, ptr %info.addr, align 8, !dbg !940
  %opcode = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %26, i32 0, i32 0, !dbg !941
  %27 = load i8, ptr %opcode, align 1, !dbg !941
  %conv7 = zext i8 %27 to i32, !dbg !940
  switch i32 %conv7, label %sw.default278 [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog279
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
    i32 4, label %sw.bb23
    i32 5, label %sw.bb30
    i32 6, label %sw.bb37
    i32 10, label %sw.bb44
    i32 11, label %sw.bb52
    i32 12, label %sw.bb61
    i32 14, label %sw.bb75
    i32 13, label %sw.bb85
    i32 16, label %sw.bb110
    i32 15, label %sw.bb120
    i32 21, label %sw.bb133
    i32 26, label %sw.bb139
    i32 27, label %sw.bb139
    i32 28, label %sw.bb139
    i32 29, label %sw.bb139
    i32 22, label %sw.bb147
    i32 23, label %sw.bb157
    i32 25, label %sw.bb166
    i32 24, label %sw.bb176
    i32 30, label %sw.bb189
    i32 17, label %sw.bb194
    i32 7, label %sw.bb199
    i32 31, label %sw.bb204
    i32 32, label %sw.bb211
    i32 8, label %sw.bb231
    i32 9, label %sw.bb246
    i32 20, label %sw.bb260
  ], !dbg !942

sw.bb:                                            ; preds = %while.body
  %28 = load ptr, ptr %resource.addr, align 8, !dbg !943
  %29 = load ptr, ptr %info.addr, align 8, !dbg !945
  %aml_offset8 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %29, i32 0, i32 2, !dbg !945
  %30 = load i8, ptr %aml_offset8, align 1, !dbg !945
  %conv9 = zext i8 %30 to i64, !dbg !945
  call void @llvm.memset.p0.i64(ptr align 1 %28, i8 0, i64 %conv9, i1 false), !dbg !946
  %31 = load ptr, ptr %info.addr, align 8, !dbg !947
  %resource_offset10 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %31, i32 0, i32 1, !dbg !947
  %32 = load i8, ptr %resource_offset10, align 1, !dbg !947
  %conv11 = zext i8 %32 to i32, !dbg !947
  %33 = load ptr, ptr %resource.addr, align 8, !dbg !948
  %type12 = getelementptr inbounds %struct.acpi_resource, ptr %33, i32 0, i32 0, !dbg !949
  store i32 %conv11, ptr %type12, align 1, !dbg !950
  %34 = load ptr, ptr %info.addr, align 8, !dbg !951
  %aml_offset13 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %34, i32 0, i32 2, !dbg !951
  %35 = load i8, ptr %aml_offset13, align 1, !dbg !951
  %conv14 = zext i8 %35 to i32, !dbg !951
  %36 = load ptr, ptr %resource.addr, align 8, !dbg !952
  %length15 = getelementptr inbounds %struct.acpi_resource, ptr %36, i32 0, i32 1, !dbg !953
  store i32 %conv14, ptr %length15, align 1, !dbg !954
  br label %sw.epilog279, !dbg !955

sw.bb16:                                          ; preds = %while.body
  store i8 1, ptr %flags_mode, align 1, !dbg !956
  br label %sw.epilog279, !dbg !957

sw.bb17:                                          ; preds = %while.body
  %37 = load ptr, ptr %source, align 8, !dbg !958
  %38 = ptrtoint ptr %37 to i64, !dbg !958
  %39 = inttoptr i64 %38 to ptr, !dbg !958
  %40 = load i8, ptr %39, align 1, !dbg !958
  %conv18 = zext i8 %40 to i32, !dbg !958
  %41 = load ptr, ptr %info.addr, align 8, !dbg !958
  %value19 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %41, i32 0, i32 3, !dbg !958
  %42 = load i8, ptr %value19, align 1, !dbg !958
  %conv20 = zext i8 %42 to i32, !dbg !958
  %shr = ashr i32 %conv18, %conv20, !dbg !958
  %and21 = and i32 %shr, 1, !dbg !958
  %conv22 = trunc i32 %and21 to i8, !dbg !958
  %43 = load ptr, ptr %destination, align 8, !dbg !958
  %44 = ptrtoint ptr %43 to i64, !dbg !958
  %45 = inttoptr i64 %44 to ptr, !dbg !958
  store i8 %conv22, ptr %45, align 1, !dbg !958
  br label %sw.epilog279, !dbg !959

sw.bb23:                                          ; preds = %while.body
  %46 = load ptr, ptr %source, align 8, !dbg !960
  %47 = ptrtoint ptr %46 to i64, !dbg !960
  %48 = inttoptr i64 %47 to ptr, !dbg !960
  %49 = load i8, ptr %48, align 1, !dbg !960
  %conv24 = zext i8 %49 to i32, !dbg !960
  %50 = load ptr, ptr %info.addr, align 8, !dbg !960
  %value25 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %50, i32 0, i32 3, !dbg !960
  %51 = load i8, ptr %value25, align 1, !dbg !960
  %conv26 = zext i8 %51 to i32, !dbg !960
  %shr27 = ashr i32 %conv24, %conv26, !dbg !960
  %and28 = and i32 %shr27, 3, !dbg !960
  %conv29 = trunc i32 %and28 to i8, !dbg !960
  %52 = load ptr, ptr %destination, align 8, !dbg !960
  %53 = ptrtoint ptr %52 to i64, !dbg !960
  %54 = inttoptr i64 %53 to ptr, !dbg !960
  store i8 %conv29, ptr %54, align 1, !dbg !960
  br label %sw.epilog279, !dbg !961

sw.bb30:                                          ; preds = %while.body
  %55 = load ptr, ptr %source, align 8, !dbg !962
  %56 = ptrtoint ptr %55 to i64, !dbg !962
  %57 = inttoptr i64 %56 to ptr, !dbg !962
  %58 = load i8, ptr %57, align 1, !dbg !962
  %conv31 = zext i8 %58 to i32, !dbg !962
  %59 = load ptr, ptr %info.addr, align 8, !dbg !962
  %value32 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %59, i32 0, i32 3, !dbg !962
  %60 = load i8, ptr %value32, align 1, !dbg !962
  %conv33 = zext i8 %60 to i32, !dbg !962
  %shr34 = ashr i32 %conv31, %conv33, !dbg !962
  %and35 = and i32 %shr34, 7, !dbg !962
  %conv36 = trunc i32 %and35 to i8, !dbg !962
  %61 = load ptr, ptr %destination, align 8, !dbg !962
  %62 = ptrtoint ptr %61 to i64, !dbg !962
  %63 = inttoptr i64 %62 to ptr, !dbg !962
  store i8 %conv36, ptr %63, align 1, !dbg !962
  br label %sw.epilog279, !dbg !963

sw.bb37:                                          ; preds = %while.body
  %64 = load ptr, ptr %source, align 8, !dbg !964
  %65 = ptrtoint ptr %64 to i64, !dbg !964
  %66 = inttoptr i64 %65 to ptr, !dbg !964
  %67 = load i8, ptr %66, align 1, !dbg !964
  %conv38 = zext i8 %67 to i32, !dbg !964
  %68 = load ptr, ptr %info.addr, align 8, !dbg !964
  %value39 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %68, i32 0, i32 3, !dbg !964
  %69 = load i8, ptr %value39, align 1, !dbg !964
  %conv40 = zext i8 %69 to i32, !dbg !964
  %shr41 = ashr i32 %conv38, %conv40, !dbg !964
  %and42 = and i32 %shr41, 63, !dbg !964
  %conv43 = trunc i32 %and42 to i8, !dbg !964
  %70 = load ptr, ptr %destination, align 8, !dbg !964
  %71 = ptrtoint ptr %70 to i64, !dbg !964
  %72 = inttoptr i64 %71 to ptr, !dbg !964
  store i8 %conv43, ptr %72, align 1, !dbg !964
  br label %sw.epilog279, !dbg !965

sw.bb44:                                          ; preds = %while.body
  %73 = load ptr, ptr %source, align 8, !dbg !966
  %74 = ptrtoint ptr %73 to i64, !dbg !966
  %75 = inttoptr i64 %74 to ptr, !dbg !966
  %76 = load i8, ptr %75, align 1, !dbg !966
  %conv45 = zext i8 %76 to i16, !dbg !966
  store i16 %conv45, ptr %item_count, align 2, !dbg !967
  %77 = load i16, ptr %item_count, align 2, !dbg !968
  %conv46 = trunc i16 %77 to i8, !dbg !968
  %78 = load ptr, ptr %destination, align 8, !dbg !968
  %79 = ptrtoint ptr %78 to i64, !dbg !968
  %80 = inttoptr i64 %79 to ptr, !dbg !968
  store i8 %conv46, ptr %80, align 1, !dbg !968
  %81 = load ptr, ptr %resource.addr, align 8, !dbg !969
  %length47 = getelementptr inbounds %struct.acpi_resource, ptr %81, i32 0, i32 1, !dbg !970
  %82 = load i32, ptr %length47, align 1, !dbg !970
  %83 = load ptr, ptr %info.addr, align 8, !dbg !971
  %value48 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %83, i32 0, i32 3, !dbg !972
  %84 = load i8, ptr %value48, align 1, !dbg !972
  %conv49 = zext i8 %84 to i32, !dbg !971
  %85 = load i16, ptr %item_count, align 2, !dbg !973
  %conv50 = zext i16 %85 to i32, !dbg !973
  %sub = sub i32 %conv50, 1, !dbg !974
  %mul = mul i32 %conv49, %sub, !dbg !975
  %add = add i32 %82, %mul, !dbg !976
  %86 = load ptr, ptr %resource.addr, align 8, !dbg !977
  %length51 = getelementptr inbounds %struct.acpi_resource, ptr %86, i32 0, i32 1, !dbg !978
  store i32 %add, ptr %length51, align 1, !dbg !979
  br label %sw.epilog279, !dbg !980

sw.bb52:                                          ; preds = %while.body
  %87 = load i16, ptr %aml_resource_length, align 2, !dbg !981
  store i16 %87, ptr %item_count, align 2, !dbg !982
  %88 = load i16, ptr %item_count, align 2, !dbg !983
  %89 = load ptr, ptr %destination, align 8, !dbg !983
  %90 = ptrtoint ptr %89 to i64, !dbg !983
  %91 = inttoptr i64 %90 to ptr, !dbg !983
  store i16 %88, ptr %91, align 2, !dbg !983
  %92 = load ptr, ptr %resource.addr, align 8, !dbg !984
  %length53 = getelementptr inbounds %struct.acpi_resource, ptr %92, i32 0, i32 1, !dbg !985
  %93 = load i32, ptr %length53, align 1, !dbg !985
  %94 = load ptr, ptr %info.addr, align 8, !dbg !986
  %value54 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %94, i32 0, i32 3, !dbg !987
  %95 = load i8, ptr %value54, align 1, !dbg !987
  %conv55 = zext i8 %95 to i32, !dbg !986
  %96 = load i16, ptr %item_count, align 2, !dbg !988
  %conv56 = zext i16 %96 to i32, !dbg !988
  %sub57 = sub i32 %conv56, 1, !dbg !989
  %mul58 = mul i32 %conv55, %sub57, !dbg !990
  %add59 = add i32 %93, %mul58, !dbg !991
  %97 = load ptr, ptr %resource.addr, align 8, !dbg !992
  %length60 = getelementptr inbounds %struct.acpi_resource, ptr %97, i32 0, i32 1, !dbg !993
  store i32 %add59, ptr %length60, align 1, !dbg !994
  br label %sw.epilog279, !dbg !995

sw.bb61:                                          ; preds = %while.body
  %98 = load ptr, ptr %aml.addr, align 8, !dbg !996
  %99 = ptrtoint ptr %98 to i64, !dbg !996
  %100 = inttoptr i64 %99 to ptr, !dbg !996
  %101 = load ptr, ptr %info.addr, align 8, !dbg !996
  %value62 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %101, i32 0, i32 3, !dbg !996
  %102 = load i8, ptr %value62, align 1, !dbg !996
  %conv63 = zext i8 %102 to i64, !dbg !996
  %add.ptr64 = getelementptr i8, ptr %100, i64 %conv63, !dbg !996
  %103 = ptrtoint ptr %add.ptr64 to i64, !dbg !996
  %104 = inttoptr i64 %103 to ptr, !dbg !996
  store ptr %104, ptr %target, align 8, !dbg !997
  %105 = load ptr, ptr %target, align 8, !dbg !998
  %106 = ptrtoint ptr %105 to i64, !dbg !998
  %107 = inttoptr i64 %106 to ptr, !dbg !998
  %108 = load i16, ptr %107, align 2, !dbg !998
  %conv65 = zext i16 %108 to i32, !dbg !998
  %109 = load ptr, ptr %source, align 8, !dbg !999
  %110 = ptrtoint ptr %109 to i64, !dbg !999
  %111 = inttoptr i64 %110 to ptr, !dbg !999
  %112 = load i16, ptr %111, align 2, !dbg !999
  %conv66 = zext i16 %112 to i32, !dbg !999
  %sub67 = sub i32 %conv65, %conv66, !dbg !1000
  %conv68 = trunc i32 %sub67 to i16, !dbg !998
  store i16 %conv68, ptr %item_count, align 2, !dbg !1001
  %113 = load ptr, ptr %resource.addr, align 8, !dbg !1002
  %length69 = getelementptr inbounds %struct.acpi_resource, ptr %113, i32 0, i32 1, !dbg !1003
  %114 = load i32, ptr %length69, align 1, !dbg !1003
  %115 = load i16, ptr %item_count, align 2, !dbg !1004
  %conv70 = zext i16 %115 to i32, !dbg !1004
  %add71 = add i32 %114, %conv70, !dbg !1005
  %116 = load ptr, ptr %resource.addr, align 8, !dbg !1006
  %length72 = getelementptr inbounds %struct.acpi_resource, ptr %116, i32 0, i32 1, !dbg !1007
  store i32 %add71, ptr %length72, align 1, !dbg !1008
  %117 = load i16, ptr %item_count, align 2, !dbg !1009
  %conv73 = zext i16 %117 to i32, !dbg !1009
  %div = sdiv i32 %conv73, 2, !dbg !1010
  %conv74 = trunc i32 %div to i16, !dbg !1009
  store i16 %conv74, ptr %item_count, align 2, !dbg !1011
  %118 = load i16, ptr %item_count, align 2, !dbg !1012
  %119 = load ptr, ptr %destination, align 8, !dbg !1012
  %120 = ptrtoint ptr %119 to i64, !dbg !1012
  %121 = inttoptr i64 %120 to ptr, !dbg !1012
  store i16 %118, ptr %121, align 2, !dbg !1012
  br label %sw.epilog279, !dbg !1013

sw.bb75:                                          ; preds = %while.body
  %122 = load ptr, ptr %source, align 8, !dbg !1014
  %123 = ptrtoint ptr %122 to i64, !dbg !1014
  %124 = inttoptr i64 %123 to ptr, !dbg !1014
  %125 = load i8, ptr %124, align 1, !dbg !1014
  %conv76 = zext i8 %125 to i16, !dbg !1014
  store i16 %conv76, ptr %item_count, align 2, !dbg !1015
  %126 = load i16, ptr %item_count, align 2, !dbg !1016
  %conv77 = trunc i16 %126 to i8, !dbg !1016
  %127 = load ptr, ptr %destination, align 8, !dbg !1016
  %128 = ptrtoint ptr %127 to i64, !dbg !1016
  %129 = inttoptr i64 %128 to ptr, !dbg !1016
  store i8 %conv77, ptr %129, align 1, !dbg !1016
  %130 = load ptr, ptr %resource.addr, align 8, !dbg !1017
  %length78 = getelementptr inbounds %struct.acpi_resource, ptr %130, i32 0, i32 1, !dbg !1018
  %131 = load i32, ptr %length78, align 1, !dbg !1018
  %132 = load ptr, ptr %info.addr, align 8, !dbg !1019
  %value79 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %132, i32 0, i32 3, !dbg !1020
  %133 = load i8, ptr %value79, align 1, !dbg !1020
  %conv80 = zext i8 %133 to i32, !dbg !1019
  %134 = load i16, ptr %item_count, align 2, !dbg !1021
  %conv81 = zext i16 %134 to i32, !dbg !1021
  %mul82 = mul i32 %conv80, %conv81, !dbg !1022
  %add83 = add i32 %131, %mul82, !dbg !1023
  %135 = load ptr, ptr %resource.addr, align 8, !dbg !1024
  %length84 = getelementptr inbounds %struct.acpi_resource, ptr %135, i32 0, i32 1, !dbg !1025
  store i32 %add83, ptr %length84, align 1, !dbg !1026
  br label %sw.epilog279, !dbg !1027

sw.bb85:                                          ; preds = %while.body
  %136 = load ptr, ptr %aml.addr, align 8, !dbg !1028
  %137 = ptrtoint ptr %136 to i64, !dbg !1028
  %138 = inttoptr i64 %137 to ptr, !dbg !1028
  %139 = load ptr, ptr %info.addr, align 8, !dbg !1028
  %value86 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %139, i32 0, i32 3, !dbg !1028
  %140 = load i8, ptr %value86, align 1, !dbg !1028
  %conv87 = zext i8 %140 to i32, !dbg !1028
  %add88 = add i32 %conv87, 2, !dbg !1028
  %conv89 = sext i32 %add88 to i64, !dbg !1028
  %add.ptr90 = getelementptr i8, ptr %138, i64 %conv89, !dbg !1028
  %141 = ptrtoint ptr %add.ptr90 to i64, !dbg !1028
  %142 = inttoptr i64 %141 to ptr, !dbg !1028
  store ptr %142, ptr %target, align 8, !dbg !1029
  %143 = load ptr, ptr %target, align 8, !dbg !1030
  %144 = ptrtoint ptr %143 to i64, !dbg !1030
  %145 = inttoptr i64 %144 to ptr, !dbg !1030
  %146 = load i16, ptr %145, align 2, !dbg !1030
  %tobool91 = icmp ne i16 %146, 0, !dbg !1030
  br i1 %tobool91, label %if.then92, label %if.else, !dbg !1032

if.then92:                                        ; preds = %sw.bb85
  %147 = load ptr, ptr %aml.addr, align 8, !dbg !1033
  %148 = ptrtoint ptr %147 to i64, !dbg !1033
  %149 = inttoptr i64 %148 to ptr, !dbg !1033
  %150 = load ptr, ptr %info.addr, align 8, !dbg !1033
  %value93 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %150, i32 0, i32 3, !dbg !1033
  %151 = load i8, ptr %value93, align 1, !dbg !1033
  %conv94 = zext i8 %151 to i64, !dbg !1033
  %add.ptr95 = getelementptr i8, ptr %149, i64 %conv94, !dbg !1033
  %152 = ptrtoint ptr %add.ptr95 to i64, !dbg !1033
  %153 = inttoptr i64 %152 to ptr, !dbg !1033
  store ptr %153, ptr %target, align 8, !dbg !1035
  %154 = load ptr, ptr %target, align 8, !dbg !1036
  %155 = ptrtoint ptr %154 to i64, !dbg !1036
  %156 = inttoptr i64 %155 to ptr, !dbg !1036
  %157 = load i16, ptr %156, align 2, !dbg !1036
  %conv96 = zext i16 %157 to i32, !dbg !1036
  %158 = load ptr, ptr %source, align 8, !dbg !1037
  %159 = ptrtoint ptr %158 to i64, !dbg !1037
  %160 = inttoptr i64 %159 to ptr, !dbg !1037
  %161 = load i16, ptr %160, align 2, !dbg !1037
  %conv97 = zext i16 %161 to i32, !dbg !1037
  %sub98 = sub i32 %conv96, %conv97, !dbg !1038
  %conv99 = trunc i32 %sub98 to i16, !dbg !1036
  store i16 %conv99, ptr %item_count, align 2, !dbg !1039
  br label %if.end105, !dbg !1040

if.else:                                          ; preds = %sw.bb85
  %162 = load ptr, ptr %aml.addr, align 8, !dbg !1041
  %resource_length = getelementptr inbounds %struct.aml_resource_large_header, ptr %162, i32 0, i32 1, !dbg !1043
  %163 = load i16, ptr %resource_length, align 1, !dbg !1043
  %conv100 = zext i16 %163 to i64, !dbg !1041
  %add101 = add i64 %conv100, 3, !dbg !1044
  %164 = load ptr, ptr %source, align 8, !dbg !1045
  %165 = ptrtoint ptr %164 to i64, !dbg !1045
  %166 = inttoptr i64 %165 to ptr, !dbg !1045
  %167 = load i16, ptr %166, align 2, !dbg !1045
  %conv102 = zext i16 %167 to i64, !dbg !1045
  %sub103 = sub i64 %add101, %conv102, !dbg !1046
  %conv104 = trunc i64 %sub103 to i16, !dbg !1041
  store i16 %conv104, ptr %item_count, align 2, !dbg !1047
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then92
  %168 = load ptr, ptr %resource.addr, align 8, !dbg !1048
  %length106 = getelementptr inbounds %struct.acpi_resource, ptr %168, i32 0, i32 1, !dbg !1049
  %169 = load i32, ptr %length106, align 1, !dbg !1049
  %170 = load i16, ptr %item_count, align 2, !dbg !1050
  %conv107 = zext i16 %170 to i32, !dbg !1050
  %add108 = add i32 %169, %conv107, !dbg !1051
  %171 = load ptr, ptr %resource.addr, align 8, !dbg !1052
  %length109 = getelementptr inbounds %struct.acpi_resource, ptr %171, i32 0, i32 1, !dbg !1053
  store i32 %add108, ptr %length109, align 1, !dbg !1054
  %172 = load i16, ptr %item_count, align 2, !dbg !1055
  %173 = load ptr, ptr %destination, align 8, !dbg !1055
  %174 = ptrtoint ptr %173 to i64, !dbg !1055
  %175 = inttoptr i64 %174 to ptr, !dbg !1055
  store i16 %172, ptr %175, align 2, !dbg !1055
  br label %sw.epilog279, !dbg !1056

sw.bb110:                                         ; preds = %while.body
  %176 = load ptr, ptr %source, align 8, !dbg !1057
  %177 = load i16, ptr %176, align 2, !dbg !1057
  store i16 %177, ptr %temp16, align 2, !dbg !1057
  %178 = load i16, ptr %temp16, align 2, !dbg !1058
  %conv111 = zext i16 %178 to i32, !dbg !1058
  %179 = load ptr, ptr %info.addr, align 8, !dbg !1059
  %value112 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %179, i32 0, i32 3, !dbg !1060
  %180 = load i8, ptr %value112, align 1, !dbg !1060
  %conv113 = zext i8 %180 to i32, !dbg !1059
  %sub114 = sub i32 %conv111, %conv113, !dbg !1061
  %conv115 = trunc i32 %sub114 to i16, !dbg !1058
  store i16 %conv115, ptr %item_count, align 2, !dbg !1062
  %181 = load ptr, ptr %resource.addr, align 8, !dbg !1063
  %length116 = getelementptr inbounds %struct.acpi_resource, ptr %181, i32 0, i32 1, !dbg !1064
  %182 = load i32, ptr %length116, align 1, !dbg !1064
  %183 = load i16, ptr %item_count, align 2, !dbg !1065
  %conv117 = zext i16 %183 to i32, !dbg !1065
  %add118 = add i32 %182, %conv117, !dbg !1066
  %184 = load ptr, ptr %resource.addr, align 8, !dbg !1067
  %length119 = getelementptr inbounds %struct.acpi_resource, ptr %184, i32 0, i32 1, !dbg !1068
  store i32 %add118, ptr %length119, align 1, !dbg !1069
  %185 = load i16, ptr %item_count, align 2, !dbg !1070
  %186 = load ptr, ptr %destination, align 8, !dbg !1070
  %187 = ptrtoint ptr %186 to i64, !dbg !1070
  %188 = inttoptr i64 %187 to ptr, !dbg !1070
  store i16 %185, ptr %188, align 2, !dbg !1070
  br label %sw.epilog279, !dbg !1071

sw.bb120:                                         ; preds = %while.body
  %189 = load ptr, ptr %source, align 8, !dbg !1072
  %190 = load i16, ptr %189, align 2, !dbg !1072
  store i16 %190, ptr %temp16, align 2, !dbg !1072
  %191 = load i16, ptr %aml_resource_length, align 2, !dbg !1073
  %conv121 = zext i16 %191 to i64, !dbg !1073
  %add122 = add i64 %conv121, 3, !dbg !1074
  %192 = load i16, ptr %temp16, align 2, !dbg !1075
  %conv123 = zext i16 %192 to i64, !dbg !1075
  %sub124 = sub i64 %add122, %conv123, !dbg !1076
  %193 = load ptr, ptr %info.addr, align 8, !dbg !1077
  %value125 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %193, i32 0, i32 3, !dbg !1078
  %194 = load i8, ptr %value125, align 1, !dbg !1078
  %conv126 = zext i8 %194 to i64, !dbg !1077
  %sub127 = sub i64 %sub124, %conv126, !dbg !1079
  %conv128 = trunc i64 %sub127 to i16, !dbg !1080
  store i16 %conv128, ptr %item_count, align 2, !dbg !1081
  %195 = load ptr, ptr %resource.addr, align 8, !dbg !1082
  %length129 = getelementptr inbounds %struct.acpi_resource, ptr %195, i32 0, i32 1, !dbg !1083
  %196 = load i32, ptr %length129, align 1, !dbg !1083
  %197 = load i16, ptr %item_count, align 2, !dbg !1084
  %conv130 = zext i16 %197 to i32, !dbg !1084
  %add131 = add i32 %196, %conv130, !dbg !1085
  %198 = load ptr, ptr %resource.addr, align 8, !dbg !1086
  %length132 = getelementptr inbounds %struct.acpi_resource, ptr %198, i32 0, i32 1, !dbg !1087
  store i32 %add131, ptr %length132, align 1, !dbg !1088
  %199 = load i16, ptr %item_count, align 2, !dbg !1089
  %200 = load ptr, ptr %destination, align 8, !dbg !1089
  %201 = ptrtoint ptr %200 to i64, !dbg !1089
  %202 = inttoptr i64 %201 to ptr, !dbg !1089
  store i16 %199, ptr %202, align 2, !dbg !1089
  br label %sw.epilog279, !dbg !1090

sw.bb133:                                         ; preds = %while.body
  %203 = load ptr, ptr %resource.addr, align 8, !dbg !1091
  %length134 = getelementptr inbounds %struct.acpi_resource, ptr %203, i32 0, i32 1, !dbg !1092
  %204 = load i32, ptr %length134, align 1, !dbg !1092
  %205 = load ptr, ptr %info.addr, align 8, !dbg !1093
  %value135 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %205, i32 0, i32 3, !dbg !1094
  %206 = load i8, ptr %value135, align 1, !dbg !1094
  %conv136 = zext i8 %206 to i32, !dbg !1093
  %add137 = add i32 %204, %conv136, !dbg !1095
  %207 = load ptr, ptr %resource.addr, align 8, !dbg !1096
  %length138 = getelementptr inbounds %struct.acpi_resource, ptr %207, i32 0, i32 1, !dbg !1097
  store i32 %add137, ptr %length138, align 1, !dbg !1098
  br label %sw.epilog279, !dbg !1099

sw.bb139:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  %208 = load ptr, ptr %info.addr, align 8, !dbg !1100
  %value140 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %208, i32 0, i32 3, !dbg !1102
  %209 = load i8, ptr %value140, align 1, !dbg !1102
  %tobool141 = icmp ne i8 %209, 0, !dbg !1100
  br i1 %tobool141, label %if.then142, label %if.end145, !dbg !1103

if.then142:                                       ; preds = %sw.bb139
  %210 = load ptr, ptr %info.addr, align 8, !dbg !1104
  %value143 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %210, i32 0, i32 3, !dbg !1106
  %211 = load i8, ptr %value143, align 1, !dbg !1106
  %conv144 = zext i8 %211 to i16, !dbg !1104
  store i16 %conv144, ptr %item_count, align 2, !dbg !1107
  br label %if.end145, !dbg !1108

if.end145:                                        ; preds = %if.then142, %sw.bb139
  %212 = load ptr, ptr %destination, align 8, !dbg !1109
  %213 = load ptr, ptr %source, align 8, !dbg !1110
  %214 = load i16, ptr %item_count, align 2, !dbg !1111
  %215 = load ptr, ptr %info.addr, align 8, !dbg !1112
  %opcode146 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %215, i32 0, i32 0, !dbg !1113
  %216 = load i8, ptr %opcode146, align 1, !dbg !1113
  call void @acpi_rs_move_data(ptr noundef %212, ptr noundef %213, i16 noundef zeroext %214, i8 noundef zeroext %216) #7, !dbg !1114
  br label %sw.epilog279, !dbg !1115

sw.bb147:                                         ; preds = %while.body
  %217 = load ptr, ptr %resource.addr, align 8, !dbg !1116
  %218 = ptrtoint ptr %217 to i64, !dbg !1116
  %219 = inttoptr i64 %218 to ptr, !dbg !1116
  %220 = load ptr, ptr %resource.addr, align 8, !dbg !1116
  %length148 = getelementptr inbounds %struct.acpi_resource, ptr %220, i32 0, i32 1, !dbg !1116
  %221 = load i32, ptr %length148, align 1, !dbg !1116
  %222 = load i16, ptr %item_count, align 2, !dbg !1116
  %conv149 = zext i16 %222 to i32, !dbg !1116
  %mul150 = mul i32 %conv149, 2, !dbg !1116
  %sub151 = sub i32 %221, %mul150, !dbg !1116
  %conv152 = zext i32 %sub151 to i64, !dbg !1116
  %add.ptr153 = getelementptr i8, ptr %219, i64 %conv152, !dbg !1116
  %223 = ptrtoint ptr %add.ptr153 to i64, !dbg !1116
  %224 = inttoptr i64 %223 to ptr, !dbg !1116
  store ptr %224, ptr %target, align 8, !dbg !1117
  %225 = load ptr, ptr %target, align 8, !dbg !1118
  %226 = ptrtoint ptr %225 to i64, !dbg !1118
  %227 = inttoptr i64 %226 to ptr, !dbg !1118
  %228 = load ptr, ptr %destination, align 8, !dbg !1119
  store ptr %227, ptr %228, align 8, !dbg !1120
  %229 = load ptr, ptr %aml.addr, align 8, !dbg !1121
  %230 = ptrtoint ptr %229 to i64, !dbg !1121
  %231 = inttoptr i64 %230 to ptr, !dbg !1121
  %232 = load ptr, ptr %source, align 8, !dbg !1121
  %233 = ptrtoint ptr %232 to i64, !dbg !1121
  %234 = inttoptr i64 %233 to ptr, !dbg !1121
  %235 = load i16, ptr %234, align 2, !dbg !1121
  %conv154 = zext i16 %235 to i64, !dbg !1121
  %add.ptr155 = getelementptr i8, ptr %231, i64 %conv154, !dbg !1121
  %236 = ptrtoint ptr %add.ptr155 to i64, !dbg !1121
  %237 = inttoptr i64 %236 to ptr, !dbg !1121
  store ptr %237, ptr %source, align 8, !dbg !1122
  %238 = load ptr, ptr %target, align 8, !dbg !1123
  %239 = load ptr, ptr %source, align 8, !dbg !1124
  %240 = load i16, ptr %item_count, align 2, !dbg !1125
  %241 = load ptr, ptr %info.addr, align 8, !dbg !1126
  %opcode156 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %241, i32 0, i32 0, !dbg !1127
  %242 = load i8, ptr %opcode156, align 1, !dbg !1127
  call void @acpi_rs_move_data(ptr noundef %238, ptr noundef %239, i16 noundef zeroext %240, i8 noundef zeroext %242) #7, !dbg !1128
  br label %sw.epilog279, !dbg !1129

sw.bb157:                                         ; preds = %while.body
  %243 = load ptr, ptr %resource.addr, align 8, !dbg !1130
  %244 = ptrtoint ptr %243 to i64, !dbg !1130
  %245 = inttoptr i64 %244 to ptr, !dbg !1130
  %246 = load ptr, ptr %resource.addr, align 8, !dbg !1130
  %length158 = getelementptr inbounds %struct.acpi_resource, ptr %246, i32 0, i32 1, !dbg !1130
  %247 = load i32, ptr %length158, align 1, !dbg !1130
  %248 = load i16, ptr %item_count, align 2, !dbg !1130
  %conv159 = zext i16 %248 to i32, !dbg !1130
  %sub160 = sub i32 %247, %conv159, !dbg !1130
  %conv161 = zext i32 %sub160 to i64, !dbg !1130
  %add.ptr162 = getelementptr i8, ptr %245, i64 %conv161, !dbg !1130
  %249 = ptrtoint ptr %add.ptr162 to i64, !dbg !1130
  %250 = inttoptr i64 %249 to ptr, !dbg !1130
  store ptr %250, ptr %target, align 8, !dbg !1131
  %251 = load ptr, ptr %target, align 8, !dbg !1132
  %252 = ptrtoint ptr %251 to i64, !dbg !1132
  %253 = inttoptr i64 %252 to ptr, !dbg !1132
  %254 = load ptr, ptr %destination, align 8, !dbg !1133
  store ptr %253, ptr %254, align 8, !dbg !1134
  %255 = load ptr, ptr %aml.addr, align 8, !dbg !1135
  %256 = ptrtoint ptr %255 to i64, !dbg !1135
  %257 = inttoptr i64 %256 to ptr, !dbg !1135
  %258 = load ptr, ptr %source, align 8, !dbg !1135
  %259 = ptrtoint ptr %258 to i64, !dbg !1135
  %260 = inttoptr i64 %259 to ptr, !dbg !1135
  %261 = load i16, ptr %260, align 2, !dbg !1135
  %conv163 = zext i16 %261 to i64, !dbg !1135
  %add.ptr164 = getelementptr i8, ptr %257, i64 %conv163, !dbg !1135
  %262 = ptrtoint ptr %add.ptr164 to i64, !dbg !1135
  %263 = inttoptr i64 %262 to ptr, !dbg !1135
  store ptr %263, ptr %source, align 8, !dbg !1136
  %264 = load ptr, ptr %target, align 8, !dbg !1137
  %265 = load ptr, ptr %source, align 8, !dbg !1138
  %266 = load i16, ptr %item_count, align 2, !dbg !1139
  %267 = load ptr, ptr %info.addr, align 8, !dbg !1140
  %opcode165 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %267, i32 0, i32 0, !dbg !1141
  %268 = load i8, ptr %opcode165, align 1, !dbg !1141
  call void @acpi_rs_move_data(ptr noundef %264, ptr noundef %265, i16 noundef zeroext %266, i8 noundef zeroext %268) #7, !dbg !1142
  br label %sw.epilog279, !dbg !1143

sw.bb166:                                         ; preds = %while.body
  %269 = load ptr, ptr %resource.addr, align 8, !dbg !1144
  %270 = ptrtoint ptr %269 to i64, !dbg !1144
  %271 = inttoptr i64 %270 to ptr, !dbg !1144
  %272 = load ptr, ptr %resource.addr, align 8, !dbg !1144
  %length167 = getelementptr inbounds %struct.acpi_resource, ptr %272, i32 0, i32 1, !dbg !1144
  %273 = load i32, ptr %length167, align 1, !dbg !1144
  %274 = load i16, ptr %item_count, align 2, !dbg !1144
  %conv168 = zext i16 %274 to i32, !dbg !1144
  %sub169 = sub i32 %273, %conv168, !dbg !1144
  %conv170 = zext i32 %sub169 to i64, !dbg !1144
  %add.ptr171 = getelementptr i8, ptr %271, i64 %conv170, !dbg !1144
  %275 = ptrtoint ptr %add.ptr171 to i64, !dbg !1144
  %276 = inttoptr i64 %275 to ptr, !dbg !1144
  store ptr %276, ptr %target, align 8, !dbg !1145
  %277 = load ptr, ptr %target, align 8, !dbg !1146
  %278 = ptrtoint ptr %277 to i64, !dbg !1146
  %279 = inttoptr i64 %278 to ptr, !dbg !1146
  %280 = load ptr, ptr %destination, align 8, !dbg !1147
  store ptr %279, ptr %280, align 8, !dbg !1148
  %281 = load ptr, ptr %aml.addr, align 8, !dbg !1149
  %282 = ptrtoint ptr %281 to i64, !dbg !1149
  %283 = inttoptr i64 %282 to ptr, !dbg !1149
  %284 = load ptr, ptr %info.addr, align 8, !dbg !1149
  %value172 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %284, i32 0, i32 3, !dbg !1149
  %285 = load i8, ptr %value172, align 1, !dbg !1149
  %conv173 = zext i8 %285 to i64, !dbg !1149
  %add.ptr174 = getelementptr i8, ptr %283, i64 %conv173, !dbg !1149
  %286 = ptrtoint ptr %add.ptr174 to i64, !dbg !1149
  %287 = inttoptr i64 %286 to ptr, !dbg !1149
  store ptr %287, ptr %source, align 8, !dbg !1150
  %288 = load ptr, ptr %target, align 8, !dbg !1151
  %289 = load ptr, ptr %source, align 8, !dbg !1152
  %290 = load i16, ptr %item_count, align 2, !dbg !1153
  %291 = load ptr, ptr %info.addr, align 8, !dbg !1154
  %opcode175 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %291, i32 0, i32 0, !dbg !1155
  %292 = load i8, ptr %opcode175, align 1, !dbg !1155
  call void @acpi_rs_move_data(ptr noundef %288, ptr noundef %289, i16 noundef zeroext %290, i8 noundef zeroext %292) #7, !dbg !1156
  br label %sw.epilog279, !dbg !1157

sw.bb176:                                         ; preds = %while.body
  %293 = load ptr, ptr %resource.addr, align 8, !dbg !1158
  %294 = ptrtoint ptr %293 to i64, !dbg !1158
  %295 = inttoptr i64 %294 to ptr, !dbg !1158
  %296 = load ptr, ptr %resource.addr, align 8, !dbg !1158
  %length177 = getelementptr inbounds %struct.acpi_resource, ptr %296, i32 0, i32 1, !dbg !1158
  %297 = load i32, ptr %length177, align 1, !dbg !1158
  %298 = load i16, ptr %item_count, align 2, !dbg !1158
  %conv178 = zext i16 %298 to i32, !dbg !1158
  %sub179 = sub i32 %297, %conv178, !dbg !1158
  %conv180 = zext i32 %sub179 to i64, !dbg !1158
  %add.ptr181 = getelementptr i8, ptr %295, i64 %conv180, !dbg !1158
  %299 = ptrtoint ptr %add.ptr181 to i64, !dbg !1158
  %300 = inttoptr i64 %299 to ptr, !dbg !1158
  store ptr %300, ptr %target, align 8, !dbg !1159
  %301 = load ptr, ptr %target, align 8, !dbg !1160
  %302 = ptrtoint ptr %301 to i64, !dbg !1160
  %303 = inttoptr i64 %302 to ptr, !dbg !1160
  %304 = load ptr, ptr %destination, align 8, !dbg !1161
  store ptr %303, ptr %304, align 8, !dbg !1162
  %305 = load ptr, ptr %source, align 8, !dbg !1163
  %306 = load i16, ptr %305, align 2, !dbg !1163
  store i16 %306, ptr %temp16, align 2, !dbg !1163
  %307 = load ptr, ptr %aml.addr, align 8, !dbg !1164
  %308 = ptrtoint ptr %307 to i64, !dbg !1164
  %309 = inttoptr i64 %308 to ptr, !dbg !1164
  %310 = load i16, ptr %temp16, align 2, !dbg !1164
  %conv182 = zext i16 %310 to i32, !dbg !1164
  %311 = load ptr, ptr %info.addr, align 8, !dbg !1164
  %value183 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %311, i32 0, i32 3, !dbg !1164
  %312 = load i8, ptr %value183, align 1, !dbg !1164
  %conv184 = zext i8 %312 to i32, !dbg !1164
  %add185 = add i32 %conv182, %conv184, !dbg !1164
  %conv186 = sext i32 %add185 to i64, !dbg !1164
  %add.ptr187 = getelementptr i8, ptr %309, i64 %conv186, !dbg !1164
  %313 = ptrtoint ptr %add.ptr187 to i64, !dbg !1164
  %314 = inttoptr i64 %313 to ptr, !dbg !1164
  store ptr %314, ptr %source, align 8, !dbg !1165
  %315 = load ptr, ptr %target, align 8, !dbg !1166
  %316 = load ptr, ptr %source, align 8, !dbg !1167
  %317 = load i16, ptr %item_count, align 2, !dbg !1168
  %318 = load ptr, ptr %info.addr, align 8, !dbg !1169
  %opcode188 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %318, i32 0, i32 0, !dbg !1170
  %319 = load i8, ptr %opcode188, align 1, !dbg !1170
  call void @acpi_rs_move_data(ptr noundef %315, ptr noundef %316, i16 noundef zeroext %317, i8 noundef zeroext %319) #7, !dbg !1171
  br label %sw.epilog279, !dbg !1172

sw.bb189:                                         ; preds = %while.body
  %320 = load ptr, ptr %destination, align 8, !dbg !1173
  %321 = load ptr, ptr %info.addr, align 8, !dbg !1174
  %aml_offset190 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %321, i32 0, i32 2, !dbg !1175
  %322 = load i8, ptr %aml_offset190, align 1, !dbg !1175
  %conv191 = zext i8 %322 to i32, !dbg !1174
  %323 = trunc i32 %conv191 to i8, !dbg !1176
  %324 = load ptr, ptr %info.addr, align 8, !dbg !1177
  %value192 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %324, i32 0, i32 3, !dbg !1178
  %325 = load i8, ptr %value192, align 1, !dbg !1178
  %conv193 = zext i8 %325 to i64, !dbg !1177
  call void @llvm.memset.p0.i64(ptr align 1 %320, i8 %323, i64 %conv193, i1 false), !dbg !1176
  br label %sw.epilog279, !dbg !1179

sw.bb194:                                         ; preds = %while.body
  %326 = load ptr, ptr %resource.addr, align 8, !dbg !1180
  %327 = ptrtoint ptr %326 to i64, !dbg !1180
  %328 = inttoptr i64 %327 to ptr, !dbg !1180
  %329 = load ptr, ptr %info.addr, align 8, !dbg !1180
  %value195 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %329, i32 0, i32 3, !dbg !1180
  %330 = load i8, ptr %value195, align 1, !dbg !1180
  %conv196 = zext i8 %330 to i64, !dbg !1180
  %add.ptr197 = getelementptr i8, ptr %328, i64 %conv196, !dbg !1180
  %331 = ptrtoint ptr %add.ptr197 to i64, !dbg !1180
  %332 = inttoptr i64 %331 to ptr, !dbg !1180
  store ptr %332, ptr %target, align 8, !dbg !1181
  %333 = load ptr, ptr %destination, align 8, !dbg !1182
  %334 = load ptr, ptr %source, align 8, !dbg !1183
  %335 = load ptr, ptr %target, align 8, !dbg !1184
  %336 = ptrtoint ptr %335 to i64, !dbg !1184
  %337 = inttoptr i64 %336 to ptr, !dbg !1184
  %338 = load i16, ptr %337, align 2, !dbg !1184
  %conv198 = zext i16 %338 to i64, !dbg !1184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %334, i64 %conv198, i1 false), !dbg !1185
  br label %sw.epilog279, !dbg !1186

sw.bb199:                                         ; preds = %while.body
  %339 = load ptr, ptr %resource.addr, align 8, !dbg !1187
  %340 = load ptr, ptr %aml.addr, align 8, !dbg !1189
  %call200 = call zeroext i8 @acpi_rs_get_address_common(ptr noundef %339, ptr noundef %340) #7, !dbg !1190
  %tobool201 = icmp ne i8 %call200, 0, !dbg !1190
  br i1 %tobool201, label %if.end203, label %if.then202, !dbg !1191

if.then202:                                       ; preds = %sw.bb199
  store i32 12311, ptr %retval, align 4, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

if.end203:                                        ; preds = %sw.bb199
  br label %sw.epilog279, !dbg !1194

sw.bb204:                                         ; preds = %while.body
  %341 = load i16, ptr %aml_resource_length, align 2, !dbg !1195
  %342 = load ptr, ptr %info.addr, align 8, !dbg !1196
  %value205 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %342, i32 0, i32 3, !dbg !1197
  %343 = load i8, ptr %value205, align 1, !dbg !1197
  %conv206 = zext i8 %343 to i16, !dbg !1196
  %344 = load ptr, ptr %destination, align 8, !dbg !1198
  %345 = load ptr, ptr %aml.addr, align 8, !dbg !1199
  %call207 = call zeroext i16 @acpi_rs_get_resource_source(i16 noundef zeroext %341, i16 noundef zeroext %conv206, ptr noundef %344, ptr noundef %345, ptr noundef null) #7, !dbg !1200
  %conv208 = zext i16 %call207 to i32, !dbg !1200
  %346 = load ptr, ptr %resource.addr, align 8, !dbg !1201
  %length209 = getelementptr inbounds %struct.acpi_resource, ptr %346, i32 0, i32 1, !dbg !1202
  %347 = load i32, ptr %length209, align 1, !dbg !1203
  %add210 = add i32 %347, %conv208, !dbg !1203
  store i32 %add210, ptr %length209, align 1, !dbg !1203
  br label %sw.epilog279, !dbg !1204

sw.bb211:                                         ; preds = %while.body
  %348 = load ptr, ptr %resource.addr, align 8, !dbg !1205
  %349 = ptrtoint ptr %348 to i64, !dbg !1205
  %350 = inttoptr i64 %349 to ptr, !dbg !1205
  %351 = load ptr, ptr %info.addr, align 8, !dbg !1205
  %aml_offset212 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %351, i32 0, i32 2, !dbg !1205
  %352 = load i8, ptr %aml_offset212, align 1, !dbg !1205
  %conv213 = zext i8 %352 to i32, !dbg !1205
  %353 = load i16, ptr %item_count, align 2, !dbg !1205
  %conv214 = zext i16 %353 to i32, !dbg !1205
  %mul215 = mul i32 %conv214, 4, !dbg !1205
  %add216 = add i32 %conv213, %mul215, !dbg !1205
  %conv217 = sext i32 %add216 to i64, !dbg !1205
  %add.ptr218 = getelementptr i8, ptr %350, i64 %conv217, !dbg !1205
  %354 = ptrtoint ptr %add.ptr218 to i64, !dbg !1205
  %355 = inttoptr i64 %354 to ptr, !dbg !1205
  store ptr %355, ptr %target, align 8, !dbg !1206
  %356 = load i16, ptr %aml_resource_length, align 2, !dbg !1207
  %357 = load i16, ptr %item_count, align 2, !dbg !1208
  %conv219 = zext i16 %357 to i32, !dbg !1208
  %sub220 = sub i32 %conv219, 1, !dbg !1209
  %conv221 = sext i32 %sub220 to i64, !dbg !1210
  %mul222 = mul i64 %conv221, 4, !dbg !1211
  %358 = load ptr, ptr %info.addr, align 8, !dbg !1212
  %value223 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %358, i32 0, i32 3, !dbg !1213
  %359 = load i8, ptr %value223, align 1, !dbg !1213
  %conv224 = zext i8 %359 to i64, !dbg !1212
  %add225 = add i64 %mul222, %conv224, !dbg !1214
  %conv226 = trunc i64 %add225 to i16, !dbg !1215
  %360 = load ptr, ptr %destination, align 8, !dbg !1216
  %361 = load ptr, ptr %aml.addr, align 8, !dbg !1217
  %362 = load ptr, ptr %target, align 8, !dbg !1218
  %call227 = call zeroext i16 @acpi_rs_get_resource_source(i16 noundef zeroext %356, i16 noundef zeroext %conv226, ptr noundef %360, ptr noundef %361, ptr noundef %362) #7, !dbg !1219
  %conv228 = zext i16 %call227 to i32, !dbg !1219
  %363 = load ptr, ptr %resource.addr, align 8, !dbg !1220
  %length229 = getelementptr inbounds %struct.acpi_resource, ptr %363, i32 0, i32 1, !dbg !1221
  %364 = load i32, ptr %length229, align 1, !dbg !1222
  %add230 = add i32 %364, %conv228, !dbg !1222
  store i32 %add230, ptr %length229, align 1, !dbg !1222
  br label %sw.epilog279, !dbg !1223

sw.bb231:                                         ; preds = %while.body
  %365 = load ptr, ptr %source, align 8, !dbg !1224
  %366 = ptrtoint ptr %365 to i64, !dbg !1224
  %367 = inttoptr i64 %366 to ptr, !dbg !1224
  %368 = load i8, ptr %367, align 1, !dbg !1224
  %conv232 = zext i8 %368 to i16, !dbg !1224
  %369 = load ptr, ptr %destination, align 8, !dbg !1225
  %call233 = call zeroext i8 @acpi_rs_decode_bitmask(i16 noundef zeroext %conv232, ptr noundef %369) #7, !dbg !1226
  %conv234 = zext i8 %call233 to i16, !dbg !1226
  store i16 %conv234, ptr %item_count, align 2, !dbg !1227
  %370 = load i16, ptr %item_count, align 2, !dbg !1228
  %tobool235 = icmp ne i16 %370, 0, !dbg !1228
  br i1 %tobool235, label %if.then236, label %if.end241, !dbg !1230

if.then236:                                       ; preds = %sw.bb231
  %371 = load i16, ptr %item_count, align 2, !dbg !1231
  %conv237 = zext i16 %371 to i32, !dbg !1231
  %sub238 = sub i32 %conv237, 1, !dbg !1233
  %372 = load ptr, ptr %resource.addr, align 8, !dbg !1234
  %length239 = getelementptr inbounds %struct.acpi_resource, ptr %372, i32 0, i32 1, !dbg !1235
  %373 = load i32, ptr %length239, align 1, !dbg !1236
  %add240 = add i32 %373, %sub238, !dbg !1236
  store i32 %add240, ptr %length239, align 1, !dbg !1236
  br label %if.end241, !dbg !1237

if.end241:                                        ; preds = %if.then236, %sw.bb231
  %374 = load ptr, ptr %resource.addr, align 8, !dbg !1238
  %375 = ptrtoint ptr %374 to i64, !dbg !1238
  %376 = inttoptr i64 %375 to ptr, !dbg !1238
  %377 = load ptr, ptr %info.addr, align 8, !dbg !1238
  %value242 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %377, i32 0, i32 3, !dbg !1238
  %378 = load i8, ptr %value242, align 1, !dbg !1238
  %conv243 = zext i8 %378 to i64, !dbg !1238
  %add.ptr244 = getelementptr i8, ptr %376, i64 %conv243, !dbg !1238
  %379 = ptrtoint ptr %add.ptr244 to i64, !dbg !1238
  %380 = inttoptr i64 %379 to ptr, !dbg !1238
  store ptr %380, ptr %target, align 8, !dbg !1239
  %381 = load i16, ptr %item_count, align 2, !dbg !1240
  %conv245 = trunc i16 %381 to i8, !dbg !1240
  %382 = load ptr, ptr %target, align 8, !dbg !1240
  %383 = ptrtoint ptr %382 to i64, !dbg !1240
  %384 = inttoptr i64 %383 to ptr, !dbg !1240
  store i8 %conv245, ptr %384, align 1, !dbg !1240
  br label %sw.epilog279, !dbg !1241

sw.bb246:                                         ; preds = %while.body
  %385 = load ptr, ptr %source, align 8, !dbg !1242
  %386 = load i16, ptr %385, align 2, !dbg !1242
  store i16 %386, ptr %temp16, align 2, !dbg !1242
  %387 = load i16, ptr %temp16, align 2, !dbg !1243
  %388 = load ptr, ptr %destination, align 8, !dbg !1244
  %call247 = call zeroext i8 @acpi_rs_decode_bitmask(i16 noundef zeroext %387, ptr noundef %388) #7, !dbg !1245
  %conv248 = zext i8 %call247 to i16, !dbg !1245
  store i16 %conv248, ptr %item_count, align 2, !dbg !1246
  %389 = load i16, ptr %item_count, align 2, !dbg !1247
  %tobool249 = icmp ne i16 %389, 0, !dbg !1247
  br i1 %tobool249, label %if.then250, label %if.end255, !dbg !1249

if.then250:                                       ; preds = %sw.bb246
  %390 = load i16, ptr %item_count, align 2, !dbg !1250
  %conv251 = zext i16 %390 to i32, !dbg !1250
  %sub252 = sub i32 %conv251, 1, !dbg !1252
  %391 = load ptr, ptr %resource.addr, align 8, !dbg !1253
  %length253 = getelementptr inbounds %struct.acpi_resource, ptr %391, i32 0, i32 1, !dbg !1254
  %392 = load i32, ptr %length253, align 1, !dbg !1255
  %add254 = add i32 %392, %sub252, !dbg !1255
  store i32 %add254, ptr %length253, align 1, !dbg !1255
  br label %if.end255, !dbg !1256

if.end255:                                        ; preds = %if.then250, %sw.bb246
  %393 = load ptr, ptr %resource.addr, align 8, !dbg !1257
  %394 = ptrtoint ptr %393 to i64, !dbg !1257
  %395 = inttoptr i64 %394 to ptr, !dbg !1257
  %396 = load ptr, ptr %info.addr, align 8, !dbg !1257
  %value256 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %396, i32 0, i32 3, !dbg !1257
  %397 = load i8, ptr %value256, align 1, !dbg !1257
  %conv257 = zext i8 %397 to i64, !dbg !1257
  %add.ptr258 = getelementptr i8, ptr %395, i64 %conv257, !dbg !1257
  %398 = ptrtoint ptr %add.ptr258 to i64, !dbg !1257
  %399 = inttoptr i64 %398 to ptr, !dbg !1257
  store ptr %399, ptr %target, align 8, !dbg !1258
  %400 = load i16, ptr %item_count, align 2, !dbg !1259
  %conv259 = trunc i16 %400 to i8, !dbg !1259
  %401 = load ptr, ptr %target, align 8, !dbg !1259
  %402 = ptrtoint ptr %401 to i64, !dbg !1259
  %403 = inttoptr i64 %402 to ptr, !dbg !1259
  store i8 %conv259, ptr %403, align 1, !dbg !1259
  br label %sw.epilog279, !dbg !1260

sw.bb260:                                         ; preds = %while.body
  %404 = load ptr, ptr %info.addr, align 8, !dbg !1261
  %resource_offset261 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %404, i32 0, i32 1, !dbg !1262
  %405 = load i8, ptr %resource_offset261, align 1, !dbg !1262
  %conv262 = zext i8 %405 to i32, !dbg !1261
  switch i32 %conv262, label %sw.default [
    i32 0, label %sw.bb263
    i32 1, label %sw.bb270
  ], !dbg !1263

sw.bb263:                                         ; preds = %sw.bb260
  %406 = load i16, ptr %aml_resource_length, align 2, !dbg !1264
  %conv264 = zext i16 %406 to i32, !dbg !1264
  %407 = load ptr, ptr %info.addr, align 8, !dbg !1267
  %value265 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %407, i32 0, i32 3, !dbg !1268
  %408 = load i8, ptr %value265, align 1, !dbg !1268
  %conv266 = zext i8 %408 to i32, !dbg !1267
  %cmp = icmp ne i32 %conv264, %conv266, !dbg !1269
  br i1 %cmp, label %if.then268, label %if.end269, !dbg !1270

if.then268:                                       ; preds = %sw.bb263
  br label %exit, !dbg !1271

if.end269:                                        ; preds = %sw.bb263
  br label %sw.epilog, !dbg !1273

sw.bb270:                                         ; preds = %sw.bb260
  %409 = load ptr, ptr %source, align 8, !dbg !1274
  %410 = ptrtoint ptr %409 to i64, !dbg !1274
  %411 = inttoptr i64 %410 to ptr, !dbg !1274
  %412 = load i8, ptr %411, align 1, !dbg !1274
  %conv271 = zext i8 %412 to i32, !dbg !1274
  %413 = load ptr, ptr %info.addr, align 8, !dbg !1276
  %value272 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %413, i32 0, i32 3, !dbg !1277
  %414 = load i8, ptr %value272, align 1, !dbg !1277
  %conv273 = zext i8 %414 to i32, !dbg !1276
  %cmp274 = icmp ne i32 %conv271, %conv273, !dbg !1278
  br i1 %cmp274, label %if.then276, label %if.end277, !dbg !1279

if.then276:                                       ; preds = %sw.bb270
  br label %exit, !dbg !1280

if.end277:                                        ; preds = %sw.bb270
  br label %sw.epilog, !dbg !1282

sw.default:                                       ; preds = %sw.bb260
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 403, ptr noundef @.str.1) #7, !dbg !1283
  store i32 4097, ptr %retval, align 4, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

sw.epilog:                                        ; preds = %if.end277, %if.end269
  br label %sw.epilog279, !dbg !1285

sw.default278:                                    ; preds = %while.body
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 411, ptr noundef @.str.2) #7, !dbg !1286
  store i32 4097, ptr %retval, align 4, !dbg !1287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1287

sw.epilog279:                                     ; preds = %sw.epilog, %if.end255, %if.end241, %sw.bb211, %sw.bb204, %if.end203, %sw.bb194, %sw.bb189, %sw.bb176, %sw.bb166, %sw.bb157, %sw.bb147, %if.end145, %sw.bb133, %sw.bb120, %sw.bb110, %if.end105, %sw.bb75, %while.body, %sw.bb61, %sw.bb52, %sw.bb44, %sw.bb37, %sw.bb30, %sw.bb23, %sw.bb17, %sw.bb16, %sw.bb
  %415 = load i8, ptr %count, align 1, !dbg !1288
  %dec = add i8 %415, -1, !dbg !1288
  store i8 %dec, ptr %count, align 1, !dbg !1288
  %416 = load ptr, ptr %info.addr, align 8, !dbg !1289
  %incdec.ptr = getelementptr %struct.acpi_rsconvert_info, ptr %416, i32 1, !dbg !1289
  store ptr %incdec.ptr, ptr %info.addr, align 8, !dbg !1289
  br label %while.cond, !dbg !932, !llvm.loop !1290

while.end:                                        ; preds = %while.cond
  br label %exit, !dbg !932

exit:                                             ; preds = %while.end, %if.then276, %if.then268
  call void @llvm.dbg.label(metadata !894), !dbg !1294
  %417 = load i8, ptr %flags_mode, align 1, !dbg !1295
  %tobool280 = icmp ne i8 %417, 0, !dbg !1295
  br i1 %tobool280, label %if.end288, label %if.then281, !dbg !1297

if.then281:                                       ; preds = %exit
  %418 = load ptr, ptr %resource.addr, align 8, !dbg !1298
  %length282 = getelementptr inbounds %struct.acpi_resource, ptr %418, i32 0, i32 1, !dbg !1298
  %419 = load i32, ptr %length282, align 1, !dbg !1298
  %conv283 = zext i32 %419 to i64, !dbg !1298
  %add284 = add i64 %conv283, 7, !dbg !1298
  %and285 = and i64 %add284, -8, !dbg !1298
  %conv286 = trunc i64 %and285 to i32, !dbg !1300
  %420 = load ptr, ptr %resource.addr, align 8, !dbg !1301
  %length287 = getelementptr inbounds %struct.acpi_resource, ptr %420, i32 0, i32 1, !dbg !1302
  store i32 %conv286, ptr %length287, align 1, !dbg !1303
  br label %if.end288, !dbg !1304

if.end288:                                        ; preds = %if.then281, %exit
  store i32 0, ptr %retval, align 4, !dbg !1305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1305

cleanup:                                          ; preds = %if.end288, %sw.default278, %sw.default, %if.then202, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %temp16) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 2, ptr %item_count) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags_mode) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 1, ptr %count) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 8, ptr %destination) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #6, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 2, ptr %aml_resource_length) #6, !dbg !1306
  %421 = load i32, ptr %retval, align 4, !dbg !1306
  ret i32 %421, !dbg !1306
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1307 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1312 dso_local zeroext i16 @acpi_ut_get_resource_length(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1316 dso_local void @acpi_rs_move_data(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1319 dso_local zeroext i8 @acpi_rs_get_address_common(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1322 dso_local zeroext i16 @acpi_rs_get_resource_source(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1326 dso_local zeroext i8 @acpi_rs_decode_bitmask(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1329 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_convert_resource_to_aml(ptr noundef %resource, ptr noundef %aml, ptr noundef %info) #0 align 16 !dbg !1330 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %destination = alloca ptr, align 8
  %target = alloca ptr, align 8
  %aml_length = alloca i32, align 4
  %count = alloca i8, align 1
  %temp16 = alloca i16, align 2
  %item_count = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !1332, metadata !DIExpression()), !dbg !1344
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !1333, metadata !DIExpression()), !dbg !1345
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1334, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #6, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %source, metadata !1335, metadata !DIExpression()), !dbg !1348
  store ptr null, ptr %source, align 8, !dbg !1348
  call void @llvm.lifetime.start.p0(i64 8, ptr %destination) #6, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %destination, metadata !1336, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #6, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1337, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_length) #6, !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %aml_length, metadata !1338, metadata !DIExpression()), !dbg !1354
  store i32 0, ptr %aml_length, align 4, !dbg !1354
  call void @llvm.lifetime.start.p0(i64 1, ptr %count) #6, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1340, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 2, ptr %temp16) #6, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %temp16, metadata !1341, metadata !DIExpression()), !dbg !1358
  store i16 0, ptr %temp16, align 2, !dbg !1358
  call void @llvm.lifetime.start.p0(i64 2, ptr %item_count) #6, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %item_count, metadata !1342, metadata !DIExpression()), !dbg !1360
  store i16 0, ptr %item_count, align 2, !dbg !1360
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1361
  %tobool = icmp ne ptr %0, null, !dbg !1361
  br i1 %tobool, label %if.end, label %if.then, !dbg !1363

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1364

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !1366
  %value = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %1, i32 0, i32 3, !dbg !1366
  %2 = load i8, ptr %value, align 1, !dbg !1366
  store i8 %2, ptr %count, align 1, !dbg !1367
  br label %while.cond, !dbg !1368

while.cond:                                       ; preds = %sw.epilog191, %if.end
  %3 = load i8, ptr %count, align 1, !dbg !1369
  %tobool1 = icmp ne i8 %3, 0, !dbg !1368
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1368

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !1370
  %5 = ptrtoint ptr %4 to i64, !dbg !1370
  %6 = inttoptr i64 %5 to ptr, !dbg !1370
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1370
  %resource_offset = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %7, i32 0, i32 1, !dbg !1370
  %8 = load i8, ptr %resource_offset, align 1, !dbg !1370
  %conv = zext i8 %8 to i64, !dbg !1370
  %add.ptr = getelementptr i8, ptr %6, i64 %conv, !dbg !1370
  %9 = ptrtoint ptr %add.ptr to i64, !dbg !1370
  %10 = inttoptr i64 %9 to ptr, !dbg !1370
  store ptr %10, ptr %source, align 8, !dbg !1372
  %11 = load ptr, ptr %aml.addr, align 8, !dbg !1373
  %12 = ptrtoint ptr %11 to i64, !dbg !1373
  %13 = inttoptr i64 %12 to ptr, !dbg !1373
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1373
  %aml_offset = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %14, i32 0, i32 2, !dbg !1373
  %15 = load i8, ptr %aml_offset, align 1, !dbg !1373
  %conv2 = zext i8 %15 to i64, !dbg !1373
  %add.ptr3 = getelementptr i8, ptr %13, i64 %conv2, !dbg !1373
  %16 = ptrtoint ptr %add.ptr3 to i64, !dbg !1373
  %17 = inttoptr i64 %16 to ptr, !dbg !1373
  store ptr %17, ptr %destination, align 8, !dbg !1374
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1375
  %opcode = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %18, i32 0, i32 0, !dbg !1376
  %19 = load i8, ptr %opcode, align 1, !dbg !1376
  %conv4 = zext i8 %19 to i32, !dbg !1375
  switch i32 %conv4, label %sw.default190 [
    i32 1, label %sw.bb
    i32 0, label %sw.epilog191
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
    i32 4, label %sw.bb19
    i32 5, label %sw.bb30
    i32 6, label %sw.bb41
    i32 10, label %sw.bb52
    i32 11, label %sw.bb60
    i32 12, label %sw.bb65
    i32 14, label %sw.bb76
    i32 13, label %sw.bb84
    i32 16, label %sw.bb94
    i32 15, label %sw.bb104
    i32 21, label %sw.bb109
    i32 26, label %sw.bb112
    i32 27, label %sw.bb112
    i32 28, label %sw.bb112
    i32 29, label %sw.bb112
    i32 22, label %sw.bb120
    i32 23, label %sw.bb124
    i32 25, label %sw.bb128
    i32 24, label %sw.bb134
    i32 7, label %sw.bb140
    i32 32, label %sw.bb141
    i32 31, label %sw.bb143
    i32 8, label %sw.bb147
    i32 9, label %sw.bb153
    i32 19, label %sw.bb158
    i32 20, label %sw.bb165
    i32 18, label %sw.bb179
  ], !dbg !1377

sw.bb:                                            ; preds = %while.body
  %20 = load ptr, ptr %aml.addr, align 8, !dbg !1378
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1380
  %aml_offset5 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %21, i32 0, i32 2, !dbg !1380
  %22 = load i8, ptr %aml_offset5, align 1, !dbg !1380
  %conv6 = zext i8 %22 to i64, !dbg !1380
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %conv6, i1 false), !dbg !1381
  %23 = load ptr, ptr %info.addr, align 8, !dbg !1382
  %aml_offset7 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %23, i32 0, i32 2, !dbg !1382
  %24 = load i8, ptr %aml_offset7, align 1, !dbg !1382
  %conv8 = zext i8 %24 to i32, !dbg !1382
  store i32 %conv8, ptr %aml_length, align 4, !dbg !1383
  %25 = load ptr, ptr %info.addr, align 8, !dbg !1384
  %resource_offset9 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %25, i32 0, i32 1, !dbg !1384
  %26 = load i8, ptr %resource_offset9, align 1, !dbg !1384
  %27 = load i32, ptr %aml_length, align 4, !dbg !1385
  %28 = load ptr, ptr %aml.addr, align 8, !dbg !1386
  call void @acpi_rs_set_resource_header(i8 noundef zeroext %26, i32 noundef %27, ptr noundef %28) #7, !dbg !1387
  br label %sw.epilog191, !dbg !1388

sw.bb10:                                          ; preds = %while.body
  %29 = load ptr, ptr %destination, align 8, !dbg !1389
  %30 = ptrtoint ptr %29 to i64, !dbg !1389
  %31 = inttoptr i64 %30 to ptr, !dbg !1389
  store i8 0, ptr %31, align 1, !dbg !1389
  br label %sw.epilog191, !dbg !1390

sw.bb11:                                          ; preds = %while.body
  %32 = load ptr, ptr %source, align 8, !dbg !1391
  %33 = ptrtoint ptr %32 to i64, !dbg !1391
  %34 = inttoptr i64 %33 to ptr, !dbg !1391
  %35 = load i8, ptr %34, align 1, !dbg !1391
  %conv12 = zext i8 %35 to i32, !dbg !1391
  %and = and i32 %conv12, 1, !dbg !1391
  %36 = load ptr, ptr %info.addr, align 8, !dbg !1391
  %value13 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %36, i32 0, i32 3, !dbg !1391
  %37 = load i8, ptr %value13, align 1, !dbg !1391
  %conv14 = zext i8 %37 to i32, !dbg !1391
  %shl = shl i32 %and, %conv14, !dbg !1391
  %conv15 = trunc i32 %shl to i8, !dbg !1391
  %conv16 = zext i8 %conv15 to i32, !dbg !1391
  %38 = load ptr, ptr %destination, align 8, !dbg !1391
  %39 = ptrtoint ptr %38 to i64, !dbg !1391
  %40 = inttoptr i64 %39 to ptr, !dbg !1391
  %41 = load i8, ptr %40, align 1, !dbg !1391
  %conv17 = zext i8 %41 to i32, !dbg !1391
  %or = or i32 %conv17, %conv16, !dbg !1391
  %conv18 = trunc i32 %or to i8, !dbg !1391
  store i8 %conv18, ptr %40, align 1, !dbg !1391
  br label %sw.epilog191, !dbg !1392

sw.bb19:                                          ; preds = %while.body
  %42 = load ptr, ptr %source, align 8, !dbg !1393
  %43 = ptrtoint ptr %42 to i64, !dbg !1393
  %44 = inttoptr i64 %43 to ptr, !dbg !1393
  %45 = load i8, ptr %44, align 1, !dbg !1393
  %conv20 = zext i8 %45 to i32, !dbg !1393
  %and21 = and i32 %conv20, 3, !dbg !1393
  %46 = load ptr, ptr %info.addr, align 8, !dbg !1393
  %value22 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %46, i32 0, i32 3, !dbg !1393
  %47 = load i8, ptr %value22, align 1, !dbg !1393
  %conv23 = zext i8 %47 to i32, !dbg !1393
  %shl24 = shl i32 %and21, %conv23, !dbg !1393
  %conv25 = trunc i32 %shl24 to i8, !dbg !1393
  %conv26 = zext i8 %conv25 to i32, !dbg !1393
  %48 = load ptr, ptr %destination, align 8, !dbg !1393
  %49 = ptrtoint ptr %48 to i64, !dbg !1393
  %50 = inttoptr i64 %49 to ptr, !dbg !1393
  %51 = load i8, ptr %50, align 1, !dbg !1393
  %conv27 = zext i8 %51 to i32, !dbg !1393
  %or28 = or i32 %conv27, %conv26, !dbg !1393
  %conv29 = trunc i32 %or28 to i8, !dbg !1393
  store i8 %conv29, ptr %50, align 1, !dbg !1393
  br label %sw.epilog191, !dbg !1394

sw.bb30:                                          ; preds = %while.body
  %52 = load ptr, ptr %source, align 8, !dbg !1395
  %53 = ptrtoint ptr %52 to i64, !dbg !1395
  %54 = inttoptr i64 %53 to ptr, !dbg !1395
  %55 = load i8, ptr %54, align 1, !dbg !1395
  %conv31 = zext i8 %55 to i32, !dbg !1395
  %and32 = and i32 %conv31, 7, !dbg !1395
  %56 = load ptr, ptr %info.addr, align 8, !dbg !1395
  %value33 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %56, i32 0, i32 3, !dbg !1395
  %57 = load i8, ptr %value33, align 1, !dbg !1395
  %conv34 = zext i8 %57 to i32, !dbg !1395
  %shl35 = shl i32 %and32, %conv34, !dbg !1395
  %conv36 = trunc i32 %shl35 to i8, !dbg !1395
  %conv37 = zext i8 %conv36 to i32, !dbg !1395
  %58 = load ptr, ptr %destination, align 8, !dbg !1395
  %59 = ptrtoint ptr %58 to i64, !dbg !1395
  %60 = inttoptr i64 %59 to ptr, !dbg !1395
  %61 = load i8, ptr %60, align 1, !dbg !1395
  %conv38 = zext i8 %61 to i32, !dbg !1395
  %or39 = or i32 %conv38, %conv37, !dbg !1395
  %conv40 = trunc i32 %or39 to i8, !dbg !1395
  store i8 %conv40, ptr %60, align 1, !dbg !1395
  br label %sw.epilog191, !dbg !1396

sw.bb41:                                          ; preds = %while.body
  %62 = load ptr, ptr %source, align 8, !dbg !1397
  %63 = ptrtoint ptr %62 to i64, !dbg !1397
  %64 = inttoptr i64 %63 to ptr, !dbg !1397
  %65 = load i8, ptr %64, align 1, !dbg !1397
  %conv42 = zext i8 %65 to i32, !dbg !1397
  %and43 = and i32 %conv42, 63, !dbg !1397
  %66 = load ptr, ptr %info.addr, align 8, !dbg !1397
  %value44 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %66, i32 0, i32 3, !dbg !1397
  %67 = load i8, ptr %value44, align 1, !dbg !1397
  %conv45 = zext i8 %67 to i32, !dbg !1397
  %shl46 = shl i32 %and43, %conv45, !dbg !1397
  %conv47 = trunc i32 %shl46 to i8, !dbg !1397
  %conv48 = zext i8 %conv47 to i32, !dbg !1397
  %68 = load ptr, ptr %destination, align 8, !dbg !1397
  %69 = ptrtoint ptr %68 to i64, !dbg !1397
  %70 = inttoptr i64 %69 to ptr, !dbg !1397
  %71 = load i8, ptr %70, align 1, !dbg !1397
  %conv49 = zext i8 %71 to i32, !dbg !1397
  %or50 = or i32 %conv49, %conv48, !dbg !1397
  %conv51 = trunc i32 %or50 to i8, !dbg !1397
  store i8 %conv51, ptr %70, align 1, !dbg !1397
  br label %sw.epilog191, !dbg !1398

sw.bb52:                                          ; preds = %while.body
  %72 = load ptr, ptr %source, align 8, !dbg !1399
  %73 = ptrtoint ptr %72 to i64, !dbg !1399
  %74 = inttoptr i64 %73 to ptr, !dbg !1399
  %75 = load i8, ptr %74, align 1, !dbg !1399
  %conv53 = zext i8 %75 to i16, !dbg !1399
  store i16 %conv53, ptr %item_count, align 2, !dbg !1400
  %76 = load i16, ptr %item_count, align 2, !dbg !1401
  %conv54 = trunc i16 %76 to i8, !dbg !1401
  %77 = load ptr, ptr %destination, align 8, !dbg !1401
  %78 = ptrtoint ptr %77 to i64, !dbg !1401
  %79 = inttoptr i64 %78 to ptr, !dbg !1401
  store i8 %conv54, ptr %79, align 1, !dbg !1401
  %80 = load i32, ptr %aml_length, align 4, !dbg !1402
  %81 = load ptr, ptr %info.addr, align 8, !dbg !1403
  %value55 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %81, i32 0, i32 3, !dbg !1404
  %82 = load i8, ptr %value55, align 1, !dbg !1404
  %conv56 = zext i8 %82 to i32, !dbg !1403
  %83 = load i16, ptr %item_count, align 2, !dbg !1405
  %conv57 = zext i16 %83 to i32, !dbg !1405
  %sub = sub i32 %conv57, 1, !dbg !1406
  %mul = mul i32 %conv56, %sub, !dbg !1407
  %add = add i32 %80, %mul, !dbg !1408
  %conv58 = trunc i32 %add to i16, !dbg !1409
  %conv59 = zext i16 %conv58 to i32, !dbg !1409
  store i32 %conv59, ptr %aml_length, align 4, !dbg !1410
  br label %sw.epilog191, !dbg !1411

sw.bb60:                                          ; preds = %while.body
  %84 = load ptr, ptr %source, align 8, !dbg !1412
  %85 = ptrtoint ptr %84 to i64, !dbg !1412
  %86 = inttoptr i64 %85 to ptr, !dbg !1412
  %87 = load i16, ptr %86, align 2, !dbg !1412
  store i16 %87, ptr %item_count, align 2, !dbg !1413
  %88 = load i32, ptr %aml_length, align 4, !dbg !1414
  %89 = load i16, ptr %item_count, align 2, !dbg !1415
  %conv61 = zext i16 %89 to i32, !dbg !1415
  %add62 = add i32 %88, %conv61, !dbg !1416
  %conv63 = trunc i32 %add62 to i16, !dbg !1417
  %conv64 = zext i16 %conv63 to i32, !dbg !1417
  store i32 %conv64, ptr %aml_length, align 4, !dbg !1418
  %90 = load i32, ptr %aml_length, align 4, !dbg !1419
  %91 = load ptr, ptr %aml.addr, align 8, !dbg !1420
  call void @acpi_rs_set_resource_length(i32 noundef %90, ptr noundef %91) #7, !dbg !1421
  br label %sw.epilog191, !dbg !1422

sw.bb65:                                          ; preds = %while.body
  %92 = load ptr, ptr %source, align 8, !dbg !1423
  %93 = ptrtoint ptr %92 to i64, !dbg !1423
  %94 = inttoptr i64 %93 to ptr, !dbg !1423
  %95 = load i16, ptr %94, align 2, !dbg !1423
  store i16 %95, ptr %item_count, align 2, !dbg !1424
  %96 = load i32, ptr %aml_length, align 4, !dbg !1425
  %conv66 = trunc i32 %96 to i16, !dbg !1425
  %97 = load ptr, ptr %destination, align 8, !dbg !1425
  %98 = ptrtoint ptr %97 to i64, !dbg !1425
  %99 = inttoptr i64 %98 to ptr, !dbg !1425
  store i16 %conv66, ptr %99, align 2, !dbg !1425
  %100 = load i32, ptr %aml_length, align 4, !dbg !1426
  %101 = load i16, ptr %item_count, align 2, !dbg !1427
  %conv67 = zext i16 %101 to i32, !dbg !1427
  %mul68 = mul i32 %conv67, 2, !dbg !1428
  %add69 = add i32 %100, %mul68, !dbg !1429
  %conv70 = trunc i32 %add69 to i16, !dbg !1430
  %conv71 = zext i16 %conv70 to i32, !dbg !1430
  store i32 %conv71, ptr %aml_length, align 4, !dbg !1431
  %102 = load ptr, ptr %aml.addr, align 8, !dbg !1432
  %103 = ptrtoint ptr %102 to i64, !dbg !1432
  %104 = inttoptr i64 %103 to ptr, !dbg !1432
  %105 = load ptr, ptr %info.addr, align 8, !dbg !1432
  %value72 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %105, i32 0, i32 3, !dbg !1432
  %106 = load i8, ptr %value72, align 1, !dbg !1432
  %conv73 = zext i8 %106 to i64, !dbg !1432
  %add.ptr74 = getelementptr i8, ptr %104, i64 %conv73, !dbg !1432
  %107 = ptrtoint ptr %add.ptr74 to i64, !dbg !1432
  %108 = inttoptr i64 %107 to ptr, !dbg !1432
  store ptr %108, ptr %target, align 8, !dbg !1433
  %109 = load i32, ptr %aml_length, align 4, !dbg !1434
  %conv75 = trunc i32 %109 to i16, !dbg !1434
  %110 = load ptr, ptr %target, align 8, !dbg !1434
  %111 = ptrtoint ptr %110 to i64, !dbg !1434
  %112 = inttoptr i64 %111 to ptr, !dbg !1434
  store i16 %conv75, ptr %112, align 2, !dbg !1434
  %113 = load i32, ptr %aml_length, align 4, !dbg !1435
  %114 = load ptr, ptr %aml.addr, align 8, !dbg !1436
  call void @acpi_rs_set_resource_length(i32 noundef %113, ptr noundef %114) #7, !dbg !1437
  br label %sw.epilog191, !dbg !1438

sw.bb76:                                          ; preds = %while.body
  %115 = load ptr, ptr %source, align 8, !dbg !1439
  %116 = ptrtoint ptr %115 to i64, !dbg !1439
  %117 = inttoptr i64 %116 to ptr, !dbg !1439
  %118 = load i16, ptr %117, align 2, !dbg !1439
  store i16 %118, ptr %item_count, align 2, !dbg !1440
  %119 = load i16, ptr %item_count, align 2, !dbg !1441
  %120 = load ptr, ptr %destination, align 8, !dbg !1441
  %121 = ptrtoint ptr %120 to i64, !dbg !1441
  %122 = inttoptr i64 %121 to ptr, !dbg !1441
  store i16 %119, ptr %122, align 2, !dbg !1441
  %123 = load i32, ptr %aml_length, align 4, !dbg !1442
  %124 = load ptr, ptr %info.addr, align 8, !dbg !1443
  %value77 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %124, i32 0, i32 3, !dbg !1444
  %125 = load i8, ptr %value77, align 1, !dbg !1444
  %conv78 = zext i8 %125 to i32, !dbg !1443
  %126 = load i16, ptr %item_count, align 2, !dbg !1445
  %conv79 = zext i16 %126 to i32, !dbg !1445
  %mul80 = mul i32 %conv78, %conv79, !dbg !1446
  %add81 = add i32 %123, %mul80, !dbg !1447
  %conv82 = trunc i32 %add81 to i16, !dbg !1448
  %conv83 = zext i16 %conv82 to i32, !dbg !1448
  store i32 %conv83, ptr %aml_length, align 4, !dbg !1449
  %127 = load i32, ptr %aml_length, align 4, !dbg !1450
  %128 = load ptr, ptr %aml.addr, align 8, !dbg !1451
  call void @acpi_rs_set_resource_length(i32 noundef %127, ptr noundef %128) #7, !dbg !1452
  br label %sw.epilog191, !dbg !1453

sw.bb84:                                          ; preds = %while.body
  %129 = load ptr, ptr %source, align 8, !dbg !1454
  %130 = ptrtoint ptr %129 to i64, !dbg !1454
  %131 = inttoptr i64 %130 to ptr, !dbg !1454
  %132 = load i16, ptr %131, align 2, !dbg !1454
  store i16 %132, ptr %item_count, align 2, !dbg !1455
  %133 = load i32, ptr %aml_length, align 4, !dbg !1456
  %conv85 = trunc i32 %133 to i16, !dbg !1456
  %134 = load ptr, ptr %destination, align 8, !dbg !1456
  %135 = ptrtoint ptr %134 to i64, !dbg !1456
  %136 = inttoptr i64 %135 to ptr, !dbg !1456
  store i16 %conv85, ptr %136, align 2, !dbg !1456
  %137 = load i32, ptr %aml_length, align 4, !dbg !1457
  %138 = load i16, ptr %item_count, align 2, !dbg !1458
  %conv86 = zext i16 %138 to i32, !dbg !1458
  %add87 = add i32 %137, %conv86, !dbg !1459
  %conv88 = trunc i32 %add87 to i16, !dbg !1460
  %conv89 = zext i16 %conv88 to i32, !dbg !1460
  store i32 %conv89, ptr %aml_length, align 4, !dbg !1461
  %139 = load ptr, ptr %aml.addr, align 8, !dbg !1462
  %140 = ptrtoint ptr %139 to i64, !dbg !1462
  %141 = inttoptr i64 %140 to ptr, !dbg !1462
  %142 = load ptr, ptr %info.addr, align 8, !dbg !1462
  %value90 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %142, i32 0, i32 3, !dbg !1462
  %143 = load i8, ptr %value90, align 1, !dbg !1462
  %conv91 = zext i8 %143 to i64, !dbg !1462
  %add.ptr92 = getelementptr i8, ptr %141, i64 %conv91, !dbg !1462
  %144 = ptrtoint ptr %add.ptr92 to i64, !dbg !1462
  %145 = inttoptr i64 %144 to ptr, !dbg !1462
  store ptr %145, ptr %target, align 8, !dbg !1463
  %146 = load i32, ptr %aml_length, align 4, !dbg !1464
  %conv93 = trunc i32 %146 to i16, !dbg !1464
  %147 = load ptr, ptr %target, align 8, !dbg !1464
  %148 = ptrtoint ptr %147 to i64, !dbg !1464
  %149 = inttoptr i64 %148 to ptr, !dbg !1464
  store i16 %conv93, ptr %149, align 2, !dbg !1464
  %150 = load i32, ptr %aml_length, align 4, !dbg !1465
  %151 = load ptr, ptr %aml.addr, align 8, !dbg !1466
  call void @acpi_rs_set_resource_length(i32 noundef %150, ptr noundef %151) #7, !dbg !1467
  br label %sw.epilog191, !dbg !1468

sw.bb94:                                          ; preds = %while.body
  %152 = load ptr, ptr %source, align 8, !dbg !1469
  %153 = ptrtoint ptr %152 to i64, !dbg !1469
  %154 = inttoptr i64 %153 to ptr, !dbg !1469
  %155 = load i16, ptr %154, align 2, !dbg !1469
  store i16 %155, ptr %item_count, align 2, !dbg !1470
  %156 = load i16, ptr %item_count, align 2, !dbg !1471
  %conv95 = zext i16 %156 to i32, !dbg !1471
  %157 = load ptr, ptr %info.addr, align 8, !dbg !1471
  %value96 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %157, i32 0, i32 3, !dbg !1471
  %158 = load i8, ptr %value96, align 1, !dbg !1471
  %conv97 = zext i8 %158 to i32, !dbg !1471
  %add98 = add i32 %conv95, %conv97, !dbg !1471
  %conv99 = trunc i32 %add98 to i16, !dbg !1471
  %159 = load ptr, ptr %destination, align 8, !dbg !1471
  %160 = ptrtoint ptr %159 to i64, !dbg !1471
  %161 = inttoptr i64 %160 to ptr, !dbg !1471
  store i16 %conv99, ptr %161, align 2, !dbg !1471
  %162 = load i32, ptr %aml_length, align 4, !dbg !1472
  %163 = load i16, ptr %item_count, align 2, !dbg !1473
  %conv100 = zext i16 %163 to i32, !dbg !1473
  %add101 = add i32 %162, %conv100, !dbg !1474
  %conv102 = trunc i32 %add101 to i16, !dbg !1475
  %conv103 = zext i16 %conv102 to i32, !dbg !1475
  store i32 %conv103, ptr %aml_length, align 4, !dbg !1476
  %164 = load i32, ptr %aml_length, align 4, !dbg !1477
  %165 = load ptr, ptr %aml.addr, align 8, !dbg !1478
  call void @acpi_rs_set_resource_length(i32 noundef %164, ptr noundef %165) #7, !dbg !1479
  br label %sw.epilog191, !dbg !1480

sw.bb104:                                         ; preds = %while.body
  %166 = load ptr, ptr %source, align 8, !dbg !1481
  %167 = ptrtoint ptr %166 to i64, !dbg !1481
  %168 = inttoptr i64 %167 to ptr, !dbg !1481
  %169 = load i16, ptr %168, align 2, !dbg !1481
  store i16 %169, ptr %item_count, align 2, !dbg !1482
  %170 = load i32, ptr %aml_length, align 4, !dbg !1483
  %171 = load i16, ptr %item_count, align 2, !dbg !1484
  %conv105 = zext i16 %171 to i32, !dbg !1484
  %add106 = add i32 %170, %conv105, !dbg !1485
  %conv107 = trunc i32 %add106 to i16, !dbg !1486
  %conv108 = zext i16 %conv107 to i32, !dbg !1486
  store i32 %conv108, ptr %aml_length, align 4, !dbg !1487
  %172 = load i32, ptr %aml_length, align 4, !dbg !1488
  %173 = load ptr, ptr %aml.addr, align 8, !dbg !1489
  call void @acpi_rs_set_resource_length(i32 noundef %172, ptr noundef %173) #7, !dbg !1490
  br label %sw.epilog191, !dbg !1491

sw.bb109:                                         ; preds = %while.body
  %174 = load ptr, ptr %info.addr, align 8, !dbg !1492
  %value110 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %174, i32 0, i32 3, !dbg !1493
  %175 = load i8, ptr %value110, align 1, !dbg !1493
  %conv111 = zext i8 %175 to i32, !dbg !1492
  %176 = load ptr, ptr %aml.addr, align 8, !dbg !1494
  call void @acpi_rs_set_resource_length(i32 noundef %conv111, ptr noundef %176) #7, !dbg !1495
  br label %sw.epilog191, !dbg !1496

sw.bb112:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  %177 = load ptr, ptr %info.addr, align 8, !dbg !1497
  %value113 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %177, i32 0, i32 3, !dbg !1499
  %178 = load i8, ptr %value113, align 1, !dbg !1499
  %tobool114 = icmp ne i8 %178, 0, !dbg !1497
  br i1 %tobool114, label %if.then115, label %if.end118, !dbg !1500

if.then115:                                       ; preds = %sw.bb112
  %179 = load ptr, ptr %info.addr, align 8, !dbg !1501
  %value116 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %179, i32 0, i32 3, !dbg !1503
  %180 = load i8, ptr %value116, align 1, !dbg !1503
  %conv117 = zext i8 %180 to i16, !dbg !1501
  store i16 %conv117, ptr %item_count, align 2, !dbg !1504
  br label %if.end118, !dbg !1505

if.end118:                                        ; preds = %if.then115, %sw.bb112
  %181 = load ptr, ptr %destination, align 8, !dbg !1506
  %182 = load ptr, ptr %source, align 8, !dbg !1507
  %183 = load i16, ptr %item_count, align 2, !dbg !1508
  %184 = load ptr, ptr %info.addr, align 8, !dbg !1509
  %opcode119 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %184, i32 0, i32 0, !dbg !1510
  %185 = load i8, ptr %opcode119, align 1, !dbg !1510
  call void @acpi_rs_move_data(ptr noundef %181, ptr noundef %182, i16 noundef zeroext %183, i8 noundef zeroext %185) #7, !dbg !1511
  br label %sw.epilog191, !dbg !1512

sw.bb120:                                         ; preds = %while.body
  %186 = load ptr, ptr %aml.addr, align 8, !dbg !1513
  %187 = ptrtoint ptr %186 to i64, !dbg !1513
  %188 = inttoptr i64 %187 to ptr, !dbg !1513
  %189 = load ptr, ptr %destination, align 8, !dbg !1513
  %190 = ptrtoint ptr %189 to i64, !dbg !1513
  %191 = inttoptr i64 %190 to ptr, !dbg !1513
  %192 = load i16, ptr %191, align 2, !dbg !1513
  %conv121 = zext i16 %192 to i64, !dbg !1513
  %add.ptr122 = getelementptr i8, ptr %188, i64 %conv121, !dbg !1513
  %193 = ptrtoint ptr %add.ptr122 to i64, !dbg !1513
  %194 = inttoptr i64 %193 to ptr, !dbg !1513
  store ptr %194, ptr %destination, align 8, !dbg !1514
  %195 = load ptr, ptr %source, align 8, !dbg !1515
  %196 = load ptr, ptr %195, align 8, !dbg !1516
  store ptr %196, ptr %source, align 8, !dbg !1517
  %197 = load ptr, ptr %destination, align 8, !dbg !1518
  %198 = load ptr, ptr %source, align 8, !dbg !1519
  %199 = load i16, ptr %item_count, align 2, !dbg !1520
  %200 = load ptr, ptr %info.addr, align 8, !dbg !1521
  %opcode123 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %200, i32 0, i32 0, !dbg !1522
  %201 = load i8, ptr %opcode123, align 1, !dbg !1522
  call void @acpi_rs_move_data(ptr noundef %197, ptr noundef %198, i16 noundef zeroext %199, i8 noundef zeroext %201) #7, !dbg !1523
  br label %sw.epilog191, !dbg !1524

sw.bb124:                                         ; preds = %while.body
  %202 = load ptr, ptr %aml.addr, align 8, !dbg !1525
  %203 = ptrtoint ptr %202 to i64, !dbg !1525
  %204 = inttoptr i64 %203 to ptr, !dbg !1525
  %205 = load ptr, ptr %destination, align 8, !dbg !1525
  %206 = ptrtoint ptr %205 to i64, !dbg !1525
  %207 = inttoptr i64 %206 to ptr, !dbg !1525
  %208 = load i16, ptr %207, align 2, !dbg !1525
  %conv125 = zext i16 %208 to i64, !dbg !1525
  %add.ptr126 = getelementptr i8, ptr %204, i64 %conv125, !dbg !1525
  %209 = ptrtoint ptr %add.ptr126 to i64, !dbg !1525
  %210 = inttoptr i64 %209 to ptr, !dbg !1525
  store ptr %210, ptr %destination, align 8, !dbg !1526
  %211 = load ptr, ptr %source, align 8, !dbg !1527
  %212 = load ptr, ptr %211, align 8, !dbg !1528
  store ptr %212, ptr %source, align 8, !dbg !1529
  %213 = load ptr, ptr %destination, align 8, !dbg !1530
  %214 = load ptr, ptr %source, align 8, !dbg !1531
  %215 = load i16, ptr %item_count, align 2, !dbg !1532
  %216 = load ptr, ptr %info.addr, align 8, !dbg !1533
  %opcode127 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %216, i32 0, i32 0, !dbg !1534
  %217 = load i8, ptr %opcode127, align 1, !dbg !1534
  call void @acpi_rs_move_data(ptr noundef %213, ptr noundef %214, i16 noundef zeroext %215, i8 noundef zeroext %217) #7, !dbg !1535
  br label %sw.epilog191, !dbg !1536

sw.bb128:                                         ; preds = %while.body
  %218 = load ptr, ptr %aml.addr, align 8, !dbg !1537
  %219 = ptrtoint ptr %218 to i64, !dbg !1537
  %220 = inttoptr i64 %219 to ptr, !dbg !1537
  %221 = load i32, ptr %aml_length, align 4, !dbg !1537
  %222 = load i16, ptr %item_count, align 2, !dbg !1537
  %conv129 = zext i16 %222 to i32, !dbg !1537
  %sub130 = sub i32 %221, %conv129, !dbg !1537
  %conv131 = zext i32 %sub130 to i64, !dbg !1537
  %add.ptr132 = getelementptr i8, ptr %220, i64 %conv131, !dbg !1537
  %223 = ptrtoint ptr %add.ptr132 to i64, !dbg !1537
  %224 = inttoptr i64 %223 to ptr, !dbg !1537
  store ptr %224, ptr %destination, align 8, !dbg !1538
  %225 = load ptr, ptr %source, align 8, !dbg !1539
  %226 = load ptr, ptr %225, align 8, !dbg !1540
  store ptr %226, ptr %source, align 8, !dbg !1541
  %227 = load ptr, ptr %destination, align 8, !dbg !1542
  %228 = load ptr, ptr %source, align 8, !dbg !1543
  %229 = load i16, ptr %item_count, align 2, !dbg !1544
  %230 = load ptr, ptr %info.addr, align 8, !dbg !1545
  %opcode133 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %230, i32 0, i32 0, !dbg !1546
  %231 = load i8, ptr %opcode133, align 1, !dbg !1546
  call void @acpi_rs_move_data(ptr noundef %227, ptr noundef %228, i16 noundef zeroext %229, i8 noundef zeroext %231) #7, !dbg !1547
  br label %sw.epilog191, !dbg !1548

sw.bb134:                                         ; preds = %while.body
  %232 = load ptr, ptr %aml.addr, align 8, !dbg !1549
  %233 = ptrtoint ptr %232 to i64, !dbg !1549
  %234 = inttoptr i64 %233 to ptr, !dbg !1549
  %235 = load i32, ptr %aml_length, align 4, !dbg !1549
  %236 = load i16, ptr %item_count, align 2, !dbg !1549
  %conv135 = zext i16 %236 to i32, !dbg !1549
  %sub136 = sub i32 %235, %conv135, !dbg !1549
  %conv137 = zext i32 %sub136 to i64, !dbg !1549
  %add.ptr138 = getelementptr i8, ptr %234, i64 %conv137, !dbg !1549
  %237 = ptrtoint ptr %add.ptr138 to i64, !dbg !1549
  %238 = inttoptr i64 %237 to ptr, !dbg !1549
  store ptr %238, ptr %destination, align 8, !dbg !1550
  %239 = load ptr, ptr %source, align 8, !dbg !1551
  %240 = load ptr, ptr %239, align 8, !dbg !1552
  store ptr %240, ptr %source, align 8, !dbg !1553
  %241 = load ptr, ptr %destination, align 8, !dbg !1554
  %242 = load ptr, ptr %source, align 8, !dbg !1555
  %243 = load i16, ptr %item_count, align 2, !dbg !1556
  %244 = load ptr, ptr %info.addr, align 8, !dbg !1557
  %opcode139 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %244, i32 0, i32 0, !dbg !1558
  %245 = load i8, ptr %opcode139, align 1, !dbg !1558
  call void @acpi_rs_move_data(ptr noundef %241, ptr noundef %242, i16 noundef zeroext %243, i8 noundef zeroext %245) #7, !dbg !1559
  br label %sw.epilog191, !dbg !1560

sw.bb140:                                         ; preds = %while.body
  %246 = load ptr, ptr %aml.addr, align 8, !dbg !1561
  %247 = load ptr, ptr %resource.addr, align 8, !dbg !1562
  call void @acpi_rs_set_address_common(ptr noundef %246, ptr noundef %247) #7, !dbg !1563
  br label %sw.epilog191, !dbg !1564

sw.bb141:                                         ; preds = %while.body
  %248 = load ptr, ptr %aml.addr, align 8, !dbg !1565
  %249 = load i32, ptr %aml_length, align 4, !dbg !1566
  %conv142 = trunc i32 %249 to i16, !dbg !1567
  %250 = load ptr, ptr %source, align 8, !dbg !1568
  %call = call i32 @acpi_rs_set_resource_source(ptr noundef %248, i16 noundef zeroext %conv142, ptr noundef %250) #7, !dbg !1569
  store i32 %call, ptr %aml_length, align 4, !dbg !1570
  %251 = load i32, ptr %aml_length, align 4, !dbg !1571
  %252 = load ptr, ptr %aml.addr, align 8, !dbg !1572
  call void @acpi_rs_set_resource_length(i32 noundef %251, ptr noundef %252) #7, !dbg !1573
  br label %sw.epilog191, !dbg !1574

sw.bb143:                                         ; preds = %while.body
  %253 = load ptr, ptr %aml.addr, align 8, !dbg !1575
  %254 = load ptr, ptr %info.addr, align 8, !dbg !1576
  %value144 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %254, i32 0, i32 3, !dbg !1577
  %255 = load i8, ptr %value144, align 1, !dbg !1577
  %conv145 = zext i8 %255 to i16, !dbg !1576
  %256 = load ptr, ptr %source, align 8, !dbg !1578
  %call146 = call i32 @acpi_rs_set_resource_source(ptr noundef %253, i16 noundef zeroext %conv145, ptr noundef %256) #7, !dbg !1579
  store i32 %call146, ptr %aml_length, align 4, !dbg !1580
  %257 = load i32, ptr %aml_length, align 4, !dbg !1581
  %258 = load ptr, ptr %aml.addr, align 8, !dbg !1582
  call void @acpi_rs_set_resource_length(i32 noundef %257, ptr noundef %258) #7, !dbg !1583
  br label %sw.epilog191, !dbg !1584

sw.bb147:                                         ; preds = %while.body
  %259 = load ptr, ptr %source, align 8, !dbg !1585
  %260 = load ptr, ptr %resource.addr, align 8, !dbg !1585
  %261 = ptrtoint ptr %260 to i64, !dbg !1585
  %262 = inttoptr i64 %261 to ptr, !dbg !1585
  %263 = load ptr, ptr %info.addr, align 8, !dbg !1585
  %value148 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %263, i32 0, i32 3, !dbg !1585
  %264 = load i8, ptr %value148, align 1, !dbg !1585
  %conv149 = zext i8 %264 to i64, !dbg !1585
  %add.ptr150 = getelementptr i8, ptr %262, i64 %conv149, !dbg !1585
  %265 = ptrtoint ptr %add.ptr150 to i64, !dbg !1585
  %266 = inttoptr i64 %265 to ptr, !dbg !1585
  %267 = load i8, ptr %266, align 1, !dbg !1585
  %call151 = call zeroext i16 @acpi_rs_encode_bitmask(ptr noundef %259, i8 noundef zeroext %267) #7, !dbg !1585
  %conv152 = trunc i16 %call151 to i8, !dbg !1585
  %268 = load ptr, ptr %destination, align 8, !dbg !1585
  %269 = ptrtoint ptr %268 to i64, !dbg !1585
  %270 = inttoptr i64 %269 to ptr, !dbg !1585
  store i8 %conv152, ptr %270, align 1, !dbg !1585
  br label %sw.epilog191, !dbg !1586

sw.bb153:                                         ; preds = %while.body
  %271 = load ptr, ptr %source, align 8, !dbg !1587
  %272 = load ptr, ptr %resource.addr, align 8, !dbg !1588
  %273 = ptrtoint ptr %272 to i64, !dbg !1588
  %274 = inttoptr i64 %273 to ptr, !dbg !1588
  %275 = load ptr, ptr %info.addr, align 8, !dbg !1588
  %value154 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %275, i32 0, i32 3, !dbg !1588
  %276 = load i8, ptr %value154, align 1, !dbg !1588
  %conv155 = zext i8 %276 to i64, !dbg !1588
  %add.ptr156 = getelementptr i8, ptr %274, i64 %conv155, !dbg !1588
  %277 = ptrtoint ptr %add.ptr156 to i64, !dbg !1588
  %278 = inttoptr i64 %277 to ptr, !dbg !1588
  %279 = load i8, ptr %278, align 1, !dbg !1589
  %call157 = call zeroext i16 @acpi_rs_encode_bitmask(ptr noundef %271, i8 noundef zeroext %279) #7, !dbg !1590
  store i16 %call157, ptr %temp16, align 2, !dbg !1591
  %280 = load i16, ptr %temp16, align 2, !dbg !1592
  %281 = load ptr, ptr %destination, align 8, !dbg !1592
  store i16 %280, ptr %281, align 2, !dbg !1592
  br label %sw.epilog191, !dbg !1593

sw.bb158:                                         ; preds = %while.body
  %282 = load i16, ptr %item_count, align 2, !dbg !1594
  %conv159 = zext i16 %282 to i32, !dbg !1594
  %283 = load ptr, ptr %info.addr, align 8, !dbg !1596
  %value160 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %283, i32 0, i32 3, !dbg !1597
  %284 = load i8, ptr %value160, align 1, !dbg !1597
  %conv161 = zext i8 %284 to i32, !dbg !1596
  %cmp = icmp sle i32 %conv159, %conv161, !dbg !1598
  br i1 %cmp, label %if.then163, label %if.end164, !dbg !1599

if.then163:                                       ; preds = %sw.bb158
  br label %exit, !dbg !1600

if.end164:                                        ; preds = %sw.bb158
  br label %sw.epilog191, !dbg !1602

sw.bb165:                                         ; preds = %while.body
  %285 = load ptr, ptr %info.addr, align 8, !dbg !1603
  %resource_offset166 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %285, i32 0, i32 1, !dbg !1603
  %286 = load i8, ptr %resource_offset166, align 1, !dbg !1603
  %conv167 = zext i8 %286 to i32, !dbg !1603
  switch i32 %conv167, label %sw.default [
    i32 1, label %sw.bb168
  ], !dbg !1604

sw.bb168:                                         ; preds = %sw.bb165
  %287 = load ptr, ptr %resource.addr, align 8, !dbg !1605
  %288 = ptrtoint ptr %287 to i64, !dbg !1605
  %289 = inttoptr i64 %288 to ptr, !dbg !1605
  %290 = load ptr, ptr %info.addr, align 8, !dbg !1605
  %aml_offset169 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %290, i32 0, i32 2, !dbg !1605
  %291 = load i8, ptr %aml_offset169, align 1, !dbg !1605
  %conv170 = zext i8 %291 to i64, !dbg !1605
  %add.ptr171 = getelementptr i8, ptr %289, i64 %conv170, !dbg !1605
  %292 = ptrtoint ptr %add.ptr171 to i64, !dbg !1605
  %293 = inttoptr i64 %292 to ptr, !dbg !1605
  %294 = load i8, ptr %293, align 1, !dbg !1608
  %conv172 = zext i8 %294 to i32, !dbg !1608
  %295 = load ptr, ptr %info.addr, align 8, !dbg !1609
  %value173 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %295, i32 0, i32 3, !dbg !1609
  %296 = load i8, ptr %value173, align 1, !dbg !1609
  %conv174 = zext i8 %296 to i32, !dbg !1609
  %cmp175 = icmp ne i32 %conv172, %conv174, !dbg !1610
  br i1 %cmp175, label %if.then177, label %if.end178, !dbg !1611

if.then177:                                       ; preds = %sw.bb168
  br label %exit, !dbg !1612

if.end178:                                        ; preds = %sw.bb168
  br label %sw.epilog, !dbg !1614

sw.default:                                       ; preds = %sw.bb165
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 740, ptr noundef @.str.1) #7, !dbg !1615
  store i32 4097, ptr %retval, align 4, !dbg !1616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1616

sw.epilog:                                        ; preds = %if.end178
  br label %sw.epilog191, !dbg !1617

sw.bb179:                                         ; preds = %while.body
  %297 = load ptr, ptr %resource.addr, align 8, !dbg !1618
  %298 = ptrtoint ptr %297 to i64, !dbg !1618
  %299 = inttoptr i64 %298 to ptr, !dbg !1618
  %300 = load ptr, ptr %info.addr, align 8, !dbg !1618
  %aml_offset180 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %300, i32 0, i32 2, !dbg !1618
  %301 = load i8, ptr %aml_offset180, align 1, !dbg !1618
  %conv181 = zext i8 %301 to i64, !dbg !1618
  %add.ptr182 = getelementptr i8, ptr %299, i64 %conv181, !dbg !1618
  %302 = ptrtoint ptr %add.ptr182 to i64, !dbg !1618
  %303 = inttoptr i64 %302 to ptr, !dbg !1618
  %304 = load i8, ptr %303, align 1, !dbg !1620
  %conv183 = zext i8 %304 to i32, !dbg !1620
  %305 = load ptr, ptr %info.addr, align 8, !dbg !1621
  %value184 = getelementptr inbounds %struct.acpi_rsconvert_info, ptr %305, i32 0, i32 3, !dbg !1621
  %306 = load i8, ptr %value184, align 1, !dbg !1621
  %conv185 = zext i8 %306 to i32, !dbg !1621
  %cmp186 = icmp eq i32 %conv183, %conv185, !dbg !1622
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !1623

if.then188:                                       ; preds = %sw.bb179
  br label %exit, !dbg !1624

if.end189:                                        ; preds = %sw.bb179
  br label %sw.epilog191, !dbg !1626

sw.default190:                                    ; preds = %while.body
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 759, ptr noundef @.str.2) #7, !dbg !1627
  store i32 4097, ptr %retval, align 4, !dbg !1628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1628

sw.epilog191:                                     ; preds = %if.end189, %sw.epilog, %if.end164, %sw.bb153, %sw.bb147, %sw.bb143, %sw.bb141, %sw.bb140, %sw.bb134, %sw.bb128, %sw.bb124, %sw.bb120, %if.end118, %sw.bb109, %sw.bb104, %sw.bb94, %sw.bb84, %sw.bb76, %while.body, %sw.bb65, %sw.bb60, %sw.bb52, %sw.bb41, %sw.bb30, %sw.bb19, %sw.bb11, %sw.bb10, %sw.bb
  %307 = load i8, ptr %count, align 1, !dbg !1629
  %dec = add i8 %307, -1, !dbg !1629
  store i8 %dec, ptr %count, align 1, !dbg !1629
  %308 = load ptr, ptr %info.addr, align 8, !dbg !1630
  %incdec.ptr = getelementptr %struct.acpi_rsconvert_info, ptr %308, i32 1, !dbg !1630
  store ptr %incdec.ptr, ptr %info.addr, align 8, !dbg !1630
  br label %while.cond, !dbg !1368, !llvm.loop !1631

while.end:                                        ; preds = %while.cond
  br label %exit, !dbg !1368

exit:                                             ; preds = %while.end, %if.then188, %if.then177, %if.then163
  call void @llvm.dbg.label(metadata !1343), !dbg !1633
  store i32 0, ptr %retval, align 4, !dbg !1634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1634

cleanup:                                          ; preds = %exit, %sw.default190, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %item_count) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 2, ptr %temp16) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 1, ptr %count) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_length) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 8, ptr %destination) #6, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #6, !dbg !1635
  %309 = load i32, ptr %retval, align 4, !dbg !1635
  ret i32 %309, !dbg !1635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1636 dso_local void @acpi_rs_set_resource_header(i8 noundef zeroext, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1639 dso_local void @acpi_rs_set_resource_length(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1642 dso_local void @acpi_rs_set_address_common(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1645 dso_local i32 @acpi_rs_set_resource_source(ptr noundef, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1648 dso_local zeroext i16 @acpi_rs_encode_bitmask(ptr noundef, i8 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !87, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.rsmisc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22rsmisc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/rsmisc.ll drivers/acpi/acpica/rsmisc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !71, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsmisc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed5ea1ea8998d8af6b5e1b15b75990d")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2965293fe7c26b9b589feaadd667de1d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!9 = !DIEnumerator(name: "ACPI_RSC_INITGET", value: 0)
!10 = !DIEnumerator(name: "ACPI_RSC_INITSET", value: 1)
!11 = !DIEnumerator(name: "ACPI_RSC_FLAGINIT", value: 2)
!12 = !DIEnumerator(name: "ACPI_RSC_1BITFLAG", value: 3)
!13 = !DIEnumerator(name: "ACPI_RSC_2BITFLAG", value: 4)
!14 = !DIEnumerator(name: "ACPI_RSC_3BITFLAG", value: 5)
!15 = !DIEnumerator(name: "ACPI_RSC_6BITFLAG", value: 6)
!16 = !DIEnumerator(name: "ACPI_RSC_ADDRESS", value: 7)
!17 = !DIEnumerator(name: "ACPI_RSC_BITMASK", value: 8)
!18 = !DIEnumerator(name: "ACPI_RSC_BITMASK16", value: 9)
!19 = !DIEnumerator(name: "ACPI_RSC_COUNT", value: 10)
!20 = !DIEnumerator(name: "ACPI_RSC_COUNT16", value: 11)
!21 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_PIN", value: 12)
!22 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_RES", value: 13)
!23 = !DIEnumerator(name: "ACPI_RSC_COUNT_GPIO_VEN", value: 14)
!24 = !DIEnumerator(name: "ACPI_RSC_COUNT_SERIAL_RES", value: 15)
!25 = !DIEnumerator(name: "ACPI_RSC_COUNT_SERIAL_VEN", value: 16)
!26 = !DIEnumerator(name: "ACPI_RSC_DATA8", value: 17)
!27 = !DIEnumerator(name: "ACPI_RSC_EXIT_EQ", value: 18)
!28 = !DIEnumerator(name: "ACPI_RSC_EXIT_LE", value: 19)
!29 = !DIEnumerator(name: "ACPI_RSC_EXIT_NE", value: 20)
!30 = !DIEnumerator(name: "ACPI_RSC_LENGTH", value: 21)
!31 = !DIEnumerator(name: "ACPI_RSC_MOVE_GPIO_PIN", value: 22)
!32 = !DIEnumerator(name: "ACPI_RSC_MOVE_GPIO_RES", value: 23)
!33 = !DIEnumerator(name: "ACPI_RSC_MOVE_SERIAL_RES", value: 24)
!34 = !DIEnumerator(name: "ACPI_RSC_MOVE_SERIAL_VEN", value: 25)
!35 = !DIEnumerator(name: "ACPI_RSC_MOVE8", value: 26)
!36 = !DIEnumerator(name: "ACPI_RSC_MOVE16", value: 27)
!37 = !DIEnumerator(name: "ACPI_RSC_MOVE32", value: 28)
!38 = !DIEnumerator(name: "ACPI_RSC_MOVE64", value: 29)
!39 = !DIEnumerator(name: "ACPI_RSC_SET8", value: 30)
!40 = !DIEnumerator(name: "ACPI_RSC_SOURCE", value: 31)
!41 = !DIEnumerator(name: "ACPI_RSC_SOURCEX", value: 32)
!42 = !{!43, !49, !53, !54, !57, !58, !61, !64, !65, !67, !68, !69, !45}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !44, line: 421, baseType: !45)
!44 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !46, line: 21, baseType: !47)
!46 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !48, line: 27, baseType: !7)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !44, line: 127, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !46, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !48, line: 31, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 42, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !46, line: 17, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !46, line: 19, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !48, line: 24, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !70, line: 16, baseType: !61)
!70 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!71 = !{!72, !77, !82, !0}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 488, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 61)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 240, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 30)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 208, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 26)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 56, elements: !89)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!89 = !{!90}
!90 = !DISubrange(count: 7)
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 8, !"cf-protection-branch", i32 1}
!95 = !{i32 4, !"function_return_thunk_extern", i32 1}
!96 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!97 = !{i32 1, !"Code Model", i32 2}
!98 = !{i32 1, !"override-stack-alignment", i32 8}
!99 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!100 = distinct !DISubprogram(name: "acpi_rs_convert_aml_to_resource", scope: !3, file: !3, line: 35, type: !101, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!101 = !DISubroutineType(types: !102)
!102 = !{!43, !103, !519, !875}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !70, line: 678, size: 544, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !70, line: 679, baseType: !45, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !104, file: !70, line: 680, baseType: !45, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !70, line: 681, baseType: !109, size: 480, offset: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !70, line: 639, size: 480, elements: !110)
!110 = !{!111, !134, !151, !157, !165, !170, !176, !181, !191, !195, !203, !211, !217, !257, !275, !293, !305, !326, !334, !353, !369, !389, !411, !426, !439, !451, !464, !478, !489, !501, !510}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !109, file: !70, line: 640, baseType: !112, size: 56)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !70, line: 138, size: 56, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !112, file: !70, line: 139, baseType: !58, size: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !112, file: !70, line: 140, baseType: !58, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !112, file: !70, line: 141, baseType: !58, size: 8, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !112, file: !70, line: 142, baseType: !58, size: 8, offset: 24)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !112, file: !70, line: 143, baseType: !58, size: 8, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !112, file: !70, line: 144, baseType: !58, size: 8, offset: 40)
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !70, line: 145, baseType: !121, size: 8, offset: 48)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !70, line: 145, size: 8, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !121, file: !70, line: 146, baseType: !58, size: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !70, line: 147, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !121, file: !70, line: 147, elements: !126)
!126 = !{!127, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !125, file: !70, line: 147, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !70, line: 147, elements: !129)
!129 = !{}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !125, file: !70, line: 147, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: -1)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !109, file: !70, line: 641, baseType: !135, size: 40)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !70, line: 151, size: 40, elements: !136)
!136 = !{!137, !138, !139, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !70, line: 152, baseType: !58, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !135, file: !70, line: 153, baseType: !58, size: 8, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !135, file: !70, line: 154, baseType: !58, size: 8, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !135, file: !70, line: 155, baseType: !58, size: 8, offset: 24)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !70, line: 156, baseType: !142, size: 8, offset: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !70, line: 156, size: 8, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !142, file: !70, line: 157, baseType: !58, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !70, line: 158, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !70, line: 158, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !146, file: !70, line: 158, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !70, line: 158, elements: !129)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !146, file: !70, line: 158, baseType: !131)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !109, file: !70, line: 642, baseType: !152, size: 24)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !70, line: 162, size: 24, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !152, file: !70, line: 163, baseType: !58, size: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !152, file: !70, line: 164, baseType: !58, size: 8, offset: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !152, file: !70, line: 165, baseType: !58, size: 8, offset: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !109, file: !70, line: 643, baseType: !158, size: 56)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !70, line: 173, size: 56, elements: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !158, file: !70, line: 174, baseType: !58, size: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !158, file: !70, line: 175, baseType: !58, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !158, file: !70, line: 176, baseType: !58, size: 8, offset: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !158, file: !70, line: 177, baseType: !61, size: 16, offset: 24)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !158, file: !70, line: 178, baseType: !61, size: 16, offset: 40)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !109, file: !70, line: 644, baseType: !166, size: 24)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !70, line: 181, size: 24, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !166, file: !70, line: 182, baseType: !61, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !166, file: !70, line: 183, baseType: !58, size: 8, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !109, file: !70, line: 645, baseType: !171, size: 40)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !70, line: 186, size: 40, elements: !172)
!172 = !{!173, !174, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !171, file: !70, line: 187, baseType: !61, size: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !171, file: !70, line: 188, baseType: !61, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !171, file: !70, line: 189, baseType: !58, size: 8, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !109, file: !70, line: 646, baseType: !177, size: 16)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !70, line: 201, size: 16, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !177, file: !70, line: 202, baseType: !61, size: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !177, file: !70, line: 203, baseType: !131, offset: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !109, file: !70, line: 647, baseType: !182, size: 152)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !70, line: 208, size: 152, elements: !183)
!183 = !{!184, !185, !186, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !182, file: !70, line: 209, baseType: !61, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !182, file: !70, line: 210, baseType: !58, size: 8, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !182, file: !70, line: 211, baseType: !187, size: 128, offset: 24)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !182, file: !70, line: 212, baseType: !131, offset: 152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !109, file: !70, line: 648, baseType: !192, size: 8)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !70, line: 215, size: 8, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !192, file: !70, line: 216, baseType: !58, size: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !109, file: !70, line: 649, baseType: !196, size: 72)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !70, line: 219, size: 72, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !196, file: !70, line: 220, baseType: !58, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !196, file: !70, line: 221, baseType: !61, size: 16, offset: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !196, file: !70, line: 222, baseType: !61, size: 16, offset: 24)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !196, file: !70, line: 223, baseType: !61, size: 16, offset: 40)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !196, file: !70, line: 224, baseType: !61, size: 16, offset: 56)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !109, file: !70, line: 650, baseType: !204, size: 136)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !70, line: 227, size: 136, elements: !205)
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !204, file: !70, line: 228, baseType: !58, size: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !204, file: !70, line: 229, baseType: !45, size: 32, offset: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !204, file: !70, line: 230, baseType: !45, size: 32, offset: 40)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !204, file: !70, line: 231, baseType: !45, size: 32, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !204, file: !70, line: 232, baseType: !45, size: 32, offset: 104)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !109, file: !70, line: 651, baseType: !212, size: 72)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !70, line: 235, size: 72, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !212, file: !70, line: 236, baseType: !58, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !212, file: !70, line: 237, baseType: !45, size: 32, offset: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !212, file: !70, line: 238, baseType: !45, size: 32, offset: 40)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !109, file: !70, line: 652, baseType: !218, size: 240)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !70, line: 312, size: 240, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !243, !251}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !218, file: !70, line: 313, baseType: !58, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !218, file: !70, line: 313, baseType: !58, size: 8, offset: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !218, file: !70, line: 313, baseType: !58, size: 8, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !218, file: !70, line: 313, baseType: !58, size: 8, offset: 24)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !218, file: !70, line: 313, baseType: !58, size: 8, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !218, file: !70, line: 313, baseType: !226, size: 32, offset: 40)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !70, line: 255, size: 32, elements: !227)
!227 = !{!228, !235, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !226, file: !70, line: 256, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !70, line: 241, size: 32, elements: !230)
!230 = !{!231, !232, !233, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !229, file: !70, line: 242, baseType: !58, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !229, file: !70, line: 243, baseType: !58, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !229, file: !70, line: 244, baseType: !58, size: 8, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !229, file: !70, line: 245, baseType: !58, size: 8, offset: 24)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !226, file: !70, line: 257, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !70, line: 248, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !236, file: !70, line: 249, baseType: !58, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !236, file: !70, line: 250, baseType: !58, size: 8, offset: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !236, file: !70, line: 251, baseType: !58, size: 8, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !236, file: !70, line: 252, baseType: !58, size: 8, offset: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !226, file: !70, line: 261, baseType: !58, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !218, file: !70, line: 313, baseType: !244, size: 80, offset: 72)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !70, line: 285, size: 80, elements: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !244, file: !70, line: 286, baseType: !61, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !244, file: !70, line: 287, baseType: !61, size: 16, offset: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !244, file: !70, line: 288, baseType: !61, size: 16, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !244, file: !70, line: 289, baseType: !61, size: 16, offset: 48)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !244, file: !70, line: 290, baseType: !61, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !218, file: !70, line: 314, baseType: !252, size: 88, offset: 152)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !70, line: 269, size: 88, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !252, file: !70, line: 270, baseType: !58, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !252, file: !70, line: 271, baseType: !61, size: 16, offset: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !252, file: !70, line: 272, baseType: !65, size: 64, offset: 24)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !109, file: !70, line: 653, baseType: !258, size: 320)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !70, line: 317, size: 320, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !258, file: !70, line: 318, baseType: !58, size: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !258, file: !70, line: 318, baseType: !58, size: 8, offset: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !258, file: !70, line: 318, baseType: !58, size: 8, offset: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !258, file: !70, line: 318, baseType: !58, size: 8, offset: 24)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !258, file: !70, line: 318, baseType: !58, size: 8, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !258, file: !70, line: 318, baseType: !226, size: 32, offset: 40)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !258, file: !70, line: 318, baseType: !267, size: 160, offset: 72)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !70, line: 293, size: 160, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !267, file: !70, line: 294, baseType: !45, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !267, file: !70, line: 295, baseType: !45, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !267, file: !70, line: 296, baseType: !45, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !267, file: !70, line: 297, baseType: !45, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !267, file: !70, line: 298, baseType: !45, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !258, file: !70, line: 319, baseType: !252, size: 88, offset: 232)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !109, file: !70, line: 654, baseType: !276, size: 480)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !70, line: 322, size: 480, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !276, file: !70, line: 323, baseType: !58, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !276, file: !70, line: 323, baseType: !58, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !276, file: !70, line: 323, baseType: !58, size: 8, offset: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !276, file: !70, line: 323, baseType: !58, size: 8, offset: 24)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !276, file: !70, line: 323, baseType: !58, size: 8, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !276, file: !70, line: 323, baseType: !226, size: 32, offset: 40)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !276, file: !70, line: 323, baseType: !285, size: 320, offset: 72)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !70, line: 301, size: 320, elements: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !285, file: !70, line: 302, baseType: !50, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !285, file: !70, line: 303, baseType: !50, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !285, file: !70, line: 304, baseType: !50, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !285, file: !70, line: 305, baseType: !50, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !285, file: !70, line: 306, baseType: !50, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !276, file: !70, line: 324, baseType: !252, size: 88, offset: 392)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !109, file: !70, line: 655, baseType: !294, size: 464)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !70, line: 327, size: 464, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !294, file: !70, line: 328, baseType: !58, size: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !294, file: !70, line: 328, baseType: !58, size: 8, offset: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !294, file: !70, line: 328, baseType: !58, size: 8, offset: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !294, file: !70, line: 328, baseType: !58, size: 8, offset: 24)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !294, file: !70, line: 328, baseType: !58, size: 8, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !294, file: !70, line: 328, baseType: !226, size: 32, offset: 40)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !294, file: !70, line: 328, baseType: !58, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !294, file: !70, line: 329, baseType: !285, size: 320, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !294, file: !70, line: 330, baseType: !50, size: 64, offset: 400)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !109, file: !70, line: 656, baseType: !306, size: 168)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !70, line: 333, size: 168, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !306, file: !70, line: 334, baseType: !58, size: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !306, file: !70, line: 335, baseType: !58, size: 8, offset: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !306, file: !70, line: 336, baseType: !58, size: 8, offset: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !306, file: !70, line: 337, baseType: !58, size: 8, offset: 24)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !306, file: !70, line: 338, baseType: !58, size: 8, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !306, file: !70, line: 339, baseType: !58, size: 8, offset: 40)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !306, file: !70, line: 340, baseType: !252, size: 88, offset: 48)
!315 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !70, line: 341, baseType: !316, size: 32, offset: 136)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !70, line: 341, size: 32, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !316, file: !70, line: 342, baseType: !45, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !70, line: 343, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !70, line: 343, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !320, file: !70, line: 343, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !70, line: 343, elements: !129)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !320, file: !70, line: 343, baseType: !325)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !132)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !109, file: !70, line: 657, baseType: !327, size: 96)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !70, line: 347, size: 96, elements: !328)
!328 = !{!329, !330, !331, !332, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !327, file: !70, line: 348, baseType: !58, size: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !327, file: !70, line: 349, baseType: !58, size: 8, offset: 8)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !327, file: !70, line: 350, baseType: !58, size: 8, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !327, file: !70, line: 351, baseType: !58, size: 8, offset: 24)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !327, file: !70, line: 352, baseType: !50, size: 64, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !109, file: !70, line: 658, baseType: !335, size: 352)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !70, line: 355, size: 352, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !335, file: !70, line: 356, baseType: !58, size: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !335, file: !70, line: 357, baseType: !58, size: 8, offset: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !335, file: !70, line: 358, baseType: !58, size: 8, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !335, file: !70, line: 359, baseType: !58, size: 8, offset: 24)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !335, file: !70, line: 360, baseType: !58, size: 8, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !335, file: !70, line: 361, baseType: !58, size: 8, offset: 40)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !335, file: !70, line: 362, baseType: !58, size: 8, offset: 48)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !335, file: !70, line: 363, baseType: !58, size: 8, offset: 56)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !335, file: !70, line: 364, baseType: !58, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !335, file: !70, line: 365, baseType: !61, size: 16, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !335, file: !70, line: 366, baseType: !61, size: 16, offset: 88)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !335, file: !70, line: 367, baseType: !61, size: 16, offset: 104)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !335, file: !70, line: 368, baseType: !61, size: 16, offset: 120)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !335, file: !70, line: 369, baseType: !252, size: 88, offset: 136)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !335, file: !70, line: 370, baseType: !64, size: 64, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !335, file: !70, line: 371, baseType: !57, size: 64, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !109, file: !70, line: 659, baseType: !354, size: 288)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !70, line: 422, size: 288, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !354, file: !70, line: 423, baseType: !58, size: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 24)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 40)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !354, file: !70, line: 423, baseType: !61, size: 16, offset: 48)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !354, file: !70, line: 423, baseType: !61, size: 16, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !354, file: !70, line: 423, baseType: !252, size: 88, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !354, file: !70, line: 423, baseType: !57, size: 64, offset: 168)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !354, file: !70, line: 423, baseType: !58, size: 8, offset: 232)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !354, file: !70, line: 424, baseType: !61, size: 16, offset: 240)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !354, file: !70, line: 425, baseType: !45, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !109, file: !70, line: 660, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !70, line: 433, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !370, file: !70, line: 434, baseType: !58, size: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 24)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 40)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !370, file: !70, line: 434, baseType: !61, size: 16, offset: 48)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !370, file: !70, line: 434, baseType: !61, size: 16, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !370, file: !70, line: 434, baseType: !252, size: 88, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !370, file: !70, line: 434, baseType: !57, size: 64, offset: 168)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !370, file: !70, line: 434, baseType: !58, size: 8, offset: 232)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !370, file: !70, line: 435, baseType: !58, size: 8, offset: 240)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !370, file: !70, line: 436, baseType: !58, size: 8, offset: 248)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !370, file: !70, line: 437, baseType: !58, size: 8, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !370, file: !70, line: 438, baseType: !58, size: 8, offset: 264)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !370, file: !70, line: 439, baseType: !61, size: 16, offset: 272)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !370, file: !70, line: 440, baseType: !45, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !109, file: !70, line: 661, baseType: !390, size: 344)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !70, line: 463, size: 344, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !390, file: !70, line: 464, baseType: !58, size: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 8)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 24)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 40)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !390, file: !70, line: 464, baseType: !61, size: 16, offset: 48)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !390, file: !70, line: 464, baseType: !61, size: 16, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !390, file: !70, line: 464, baseType: !252, size: 88, offset: 80)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !390, file: !70, line: 464, baseType: !57, size: 64, offset: 168)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !390, file: !70, line: 464, baseType: !58, size: 8, offset: 232)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !390, file: !70, line: 465, baseType: !58, size: 8, offset: 240)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !390, file: !70, line: 466, baseType: !58, size: 8, offset: 248)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !390, file: !70, line: 467, baseType: !58, size: 8, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !390, file: !70, line: 468, baseType: !58, size: 8, offset: 264)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !390, file: !70, line: 469, baseType: !58, size: 8, offset: 272)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !390, file: !70, line: 470, baseType: !61, size: 16, offset: 280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !390, file: !70, line: 471, baseType: !61, size: 16, offset: 296)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !390, file: !70, line: 472, baseType: !45, size: 32, offset: 312)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !109, file: !70, line: 662, baseType: !412, size: 248)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !70, line: 518, size: 248, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !412, file: !70, line: 519, baseType: !58, size: 8)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 8)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 24)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 40)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !412, file: !70, line: 519, baseType: !61, size: 16, offset: 48)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !412, file: !70, line: 519, baseType: !61, size: 16, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !412, file: !70, line: 519, baseType: !252, size: 88, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !412, file: !70, line: 519, baseType: !57, size: 64, offset: 168)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !412, file: !70, line: 519, baseType: !58, size: 8, offset: 232)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !412, file: !70, line: 520, baseType: !58, size: 8, offset: 240)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !109, file: !70, line: 663, baseType: !427, size: 232)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !70, line: 407, size: 232, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !427, file: !70, line: 408, baseType: !58, size: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !70, line: 408, baseType: !58, size: 8, offset: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !427, file: !70, line: 408, baseType: !58, size: 8, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !427, file: !70, line: 408, baseType: !58, size: 8, offset: 24)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !427, file: !70, line: 408, baseType: !58, size: 8, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !427, file: !70, line: 408, baseType: !58, size: 8, offset: 40)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !427, file: !70, line: 408, baseType: !61, size: 16, offset: 48)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !427, file: !70, line: 408, baseType: !61, size: 16, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !427, file: !70, line: 408, baseType: !252, size: 88, offset: 80)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !427, file: !70, line: 408, baseType: !57, size: 64, offset: 168)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !109, file: !70, line: 664, baseType: !440, size: 288)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !70, line: 523, size: 288, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !440, file: !70, line: 524, baseType: !58, size: 8)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !440, file: !70, line: 525, baseType: !58, size: 8, offset: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !440, file: !70, line: 526, baseType: !58, size: 8, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !440, file: !70, line: 527, baseType: !61, size: 16, offset: 24)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !440, file: !70, line: 528, baseType: !61, size: 16, offset: 40)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !440, file: !70, line: 529, baseType: !61, size: 16, offset: 56)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !440, file: !70, line: 530, baseType: !252, size: 88, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !440, file: !70, line: 531, baseType: !64, size: 64, offset: 160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !440, file: !70, line: 532, baseType: !57, size: 64, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !109, file: !70, line: 665, baseType: !452, size: 312)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !70, line: 535, size: 312, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !452, file: !70, line: 536, baseType: !58, size: 8)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !452, file: !70, line: 537, baseType: !58, size: 8, offset: 8)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !452, file: !70, line: 538, baseType: !58, size: 8, offset: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !452, file: !70, line: 539, baseType: !58, size: 8, offset: 24)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !452, file: !70, line: 540, baseType: !45, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !452, file: !70, line: 541, baseType: !61, size: 16, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !452, file: !70, line: 542, baseType: !61, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !452, file: !70, line: 543, baseType: !252, size: 88, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !452, file: !70, line: 544, baseType: !64, size: 64, offset: 184)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !452, file: !70, line: 545, baseType: !57, size: 64, offset: 248)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !109, file: !70, line: 666, baseType: !465, size: 256)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !70, line: 574, size: 256, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !477}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !465, file: !70, line: 575, baseType: !58, size: 8)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !465, file: !70, line: 576, baseType: !58, size: 8, offset: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !465, file: !70, line: 577, baseType: !61, size: 16, offset: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !465, file: !70, line: 578, baseType: !61, size: 16, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !465, file: !70, line: 579, baseType: !64, size: 64, offset: 48)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !465, file: !70, line: 580, baseType: !473, size: 80, offset: 112)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !70, line: 264, size: 80, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !473, file: !70, line: 265, baseType: !61, size: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !473, file: !70, line: 266, baseType: !65, size: 64, offset: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !465, file: !70, line: 581, baseType: !57, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !109, file: !70, line: 667, baseType: !479, size: 288)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !70, line: 584, size: 288, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !479, file: !70, line: 585, baseType: !58, size: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !479, file: !70, line: 586, baseType: !58, size: 8, offset: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !479, file: !70, line: 587, baseType: !58, size: 8, offset: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !479, file: !70, line: 588, baseType: !61, size: 16, offset: 24)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !479, file: !70, line: 589, baseType: !61, size: 16, offset: 40)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !479, file: !70, line: 590, baseType: !252, size: 88, offset: 56)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !479, file: !70, line: 591, baseType: !473, size: 80, offset: 144)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !479, file: !70, line: 592, baseType: !57, size: 64, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !109, file: !70, line: 668, baseType: !490, size: 312)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !70, line: 595, size: 312, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !490, file: !70, line: 596, baseType: !58, size: 8)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !490, file: !70, line: 597, baseType: !58, size: 8, offset: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !490, file: !70, line: 598, baseType: !58, size: 8, offset: 16)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !490, file: !70, line: 599, baseType: !58, size: 8, offset: 24)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !490, file: !70, line: 600, baseType: !45, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !490, file: !70, line: 601, baseType: !61, size: 16, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !490, file: !70, line: 602, baseType: !252, size: 88, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !490, file: !70, line: 603, baseType: !473, size: 80, offset: 168)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !490, file: !70, line: 604, baseType: !57, size: 64, offset: 248)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !109, file: !70, line: 669, baseType: !502, size: 160)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !70, line: 548, size: 160, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !502, file: !70, line: 549, baseType: !58, size: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !70, line: 550, baseType: !58, size: 8, offset: 8)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !502, file: !70, line: 551, baseType: !58, size: 8, offset: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !502, file: !70, line: 552, baseType: !61, size: 16, offset: 24)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !502, file: !70, line: 553, baseType: !45, size: 32, offset: 40)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !502, file: !70, line: 554, baseType: !252, size: 88, offset: 72)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !109, file: !70, line: 673, baseType: !511, size: 72)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !70, line: 309, size: 72, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !511, file: !70, line: 310, baseType: !58, size: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !511, file: !70, line: 310, baseType: !58, size: 8, offset: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !511, file: !70, line: 310, baseType: !58, size: 8, offset: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !511, file: !70, line: 310, baseType: !58, size: 8, offset: 24)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !511, file: !70, line: 310, baseType: !58, size: 8, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !511, file: !70, line: 310, baseType: !226, size: 32, offset: 40)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !521, line: 513, size: 448, elements: !522)
!521 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39fadf1e91338a4bdfc4b9e2f15bad0f")
!522 = !{!523, !524, !528, !533, !539, !545, !550, !554, !563, !569, !576, !580, !585, !595, !605, !610, !620, !628, !641, !654, !667, !683, !700, !717, !731, !748, !765, !777, !789, !803, !817, !828, !841, !855, !864, !872, !873, !874}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !520, file: !521, line: 516, baseType: !58, size: 8)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !520, file: !521, line: 517, baseType: !525, size: 8)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !521, line: 118, size: 8, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !521, line: 119, baseType: !58, size: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !520, file: !521, line: 518, baseType: !529, size: 24)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !521, line: 178, size: 24, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !529, file: !521, line: 179, baseType: !58, size: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !529, file: !521, line: 179, baseType: !61, size: 16, offset: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !520, file: !521, line: 522, baseType: !534, size: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !521, line: 121, size: 32, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !534, file: !521, line: 122, baseType: !58, size: 8)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !534, file: !521, line: 122, baseType: !61, size: 16, offset: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !521, line: 123, baseType: !58, size: 8, offset: 24)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !520, file: !521, line: 523, baseType: !540, size: 24)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !521, line: 130, size: 24, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !521, line: 131, baseType: !58, size: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !540, file: !521, line: 131, baseType: !58, size: 8, offset: 8)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !521, line: 132, baseType: !58, size: 8, offset: 16)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !520, file: !521, line: 524, baseType: !546, size: 16)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !521, line: 135, size: 16, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !546, file: !521, line: 136, baseType: !58, size: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !521, line: 136, baseType: !58, size: 8, offset: 8)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !520, file: !521, line: 525, baseType: !551, size: 8)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !521, line: 142, size: 8, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !521, line: 143, baseType: !58, size: 8)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !520, file: !521, line: 526, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !521, line: 145, size: 64, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !521, line: 146, baseType: !58, size: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !521, line: 146, baseType: !58, size: 8, offset: 8)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !555, file: !521, line: 147, baseType: !61, size: 16, offset: 16)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !555, file: !521, line: 148, baseType: !61, size: 16, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !555, file: !521, line: 149, baseType: !58, size: 8, offset: 48)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !555, file: !521, line: 150, baseType: !58, size: 8, offset: 56)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !520, file: !521, line: 527, baseType: !564, size: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !521, line: 153, size: 32, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !564, file: !521, line: 154, baseType: !58, size: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !564, file: !521, line: 154, baseType: !61, size: 16, offset: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !564, file: !521, line: 155, baseType: !58, size: 8, offset: 24)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !520, file: !521, line: 528, baseType: !570, size: 48)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !521, line: 165, size: 48, elements: !571)
!571 = !{!572, !573, !574, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !521, line: 166, baseType: !58, size: 8)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !570, file: !521, line: 166, baseType: !61, size: 16, offset: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !570, file: !521, line: 167, baseType: !61, size: 16, offset: 24)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !570, file: !521, line: 168, baseType: !58, size: 8, offset: 40)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !520, file: !521, line: 529, baseType: !577, size: 8)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !521, line: 158, size: 8, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !521, line: 159, baseType: !58, size: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !520, file: !521, line: 530, baseType: !581, size: 16)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !521, line: 161, size: 16, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !521, line: 162, baseType: !58, size: 8)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !581, file: !521, line: 162, baseType: !58, size: 8, offset: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !520, file: !521, line: 534, baseType: !586, size: 96)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !521, line: 187, size: 96, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !521, line: 188, baseType: !58, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !586, file: !521, line: 188, baseType: !61, size: 16, offset: 8)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !521, line: 188, baseType: !58, size: 8, offset: 24)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !586, file: !521, line: 189, baseType: !61, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !586, file: !521, line: 190, baseType: !61, size: 16, offset: 48)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !586, file: !521, line: 191, baseType: !61, size: 16, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !586, file: !521, line: 192, baseType: !61, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !520, file: !521, line: 535, baseType: !596, size: 120)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !521, line: 271, size: 120, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !521, line: 272, baseType: !58, size: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !596, file: !521, line: 272, baseType: !61, size: 16, offset: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !596, file: !521, line: 272, baseType: !58, size: 8, offset: 24)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !596, file: !521, line: 273, baseType: !58, size: 8, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !596, file: !521, line: 274, baseType: !58, size: 8, offset: 40)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !596, file: !521, line: 275, baseType: !58, size: 8, offset: 48)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !596, file: !521, line: 276, baseType: !50, size: 64, offset: 56)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !520, file: !521, line: 536, baseType: !606, size: 24)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !521, line: 195, size: 24, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !521, line: 196, baseType: !58, size: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !606, file: !521, line: 196, baseType: !61, size: 16, offset: 8)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !520, file: !521, line: 537, baseType: !611, size: 160)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !521, line: 198, size: 160, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !521, line: 199, baseType: !58, size: 8)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !611, file: !521, line: 199, baseType: !61, size: 16, offset: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !521, line: 199, baseType: !58, size: 8, offset: 24)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !611, file: !521, line: 200, baseType: !45, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !611, file: !521, line: 201, baseType: !45, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !611, file: !521, line: 202, baseType: !45, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !611, file: !521, line: 203, baseType: !45, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !520, file: !521, line: 538, baseType: !621, size: 96)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !521, line: 206, size: 96, elements: !622)
!622 = !{!623, !624, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !521, line: 207, baseType: !58, size: 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !621, file: !521, line: 207, baseType: !61, size: 16, offset: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !521, line: 207, baseType: !58, size: 8, offset: 24)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !621, file: !521, line: 208, baseType: !45, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !621, file: !521, line: 209, baseType: !45, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !520, file: !521, line: 539, baseType: !629, size: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !521, line: 252, size: 128, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !521, line: 253, baseType: !58, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !629, file: !521, line: 253, baseType: !61, size: 16, offset: 8)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !629, file: !521, line: 254, baseType: !58, size: 8, offset: 24)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !521, line: 254, baseType: !58, size: 8, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !629, file: !521, line: 254, baseType: !58, size: 8, offset: 40)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !629, file: !521, line: 254, baseType: !61, size: 16, offset: 48)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !629, file: !521, line: 255, baseType: !61, size: 16, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !629, file: !521, line: 256, baseType: !61, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !629, file: !521, line: 257, baseType: !61, size: 16, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !629, file: !521, line: 258, baseType: !61, size: 16, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !520, file: !521, line: 540, baseType: !642, size: 208)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !521, line: 243, size: 208, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !521, line: 244, baseType: !58, size: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !642, file: !521, line: 244, baseType: !61, size: 16, offset: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !642, file: !521, line: 245, baseType: !58, size: 8, offset: 24)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !521, line: 245, baseType: !58, size: 8, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !642, file: !521, line: 245, baseType: !58, size: 8, offset: 40)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !642, file: !521, line: 245, baseType: !45, size: 32, offset: 48)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !642, file: !521, line: 246, baseType: !45, size: 32, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !642, file: !521, line: 247, baseType: !45, size: 32, offset: 112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !642, file: !521, line: 248, baseType: !45, size: 32, offset: 144)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !642, file: !521, line: 249, baseType: !45, size: 32, offset: 176)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !520, file: !521, line: 541, baseType: !655, size: 368)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !521, line: 234, size: 368, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !521, line: 235, baseType: !58, size: 8)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !655, file: !521, line: 235, baseType: !61, size: 16, offset: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !655, file: !521, line: 236, baseType: !58, size: 8, offset: 24)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !521, line: 236, baseType: !58, size: 8, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !655, file: !521, line: 236, baseType: !58, size: 8, offset: 40)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !655, file: !521, line: 236, baseType: !50, size: 64, offset: 48)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !655, file: !521, line: 237, baseType: !50, size: 64, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !655, file: !521, line: 238, baseType: !50, size: 64, offset: 176)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !655, file: !521, line: 239, baseType: !50, size: 64, offset: 240)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !655, file: !521, line: 240, baseType: !50, size: 64, offset: 304)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !520, file: !521, line: 542, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !521, line: 220, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !521, line: 221, baseType: !58, size: 8)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !668, file: !521, line: 221, baseType: !61, size: 16, offset: 8)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !668, file: !521, line: 222, baseType: !58, size: 8, offset: 24)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !521, line: 222, baseType: !58, size: 8, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !668, file: !521, line: 222, baseType: !58, size: 8, offset: 40)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !668, file: !521, line: 222, baseType: !58, size: 8, offset: 48)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !668, file: !521, line: 223, baseType: !58, size: 8, offset: 56)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !668, file: !521, line: 224, baseType: !50, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !668, file: !521, line: 225, baseType: !50, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !668, file: !521, line: 226, baseType: !50, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !668, file: !521, line: 227, baseType: !50, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !668, file: !521, line: 228, baseType: !50, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !668, file: !521, line: 229, baseType: !50, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !520, file: !521, line: 543, baseType: !684, size: 72)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !521, line: 261, size: 72, elements: !685)
!685 = !{!686, !687, !688, !689, !690}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !521, line: 262, baseType: !58, size: 8)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !684, file: !521, line: 262, baseType: !61, size: 16, offset: 8)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !521, line: 262, baseType: !58, size: 8, offset: 24)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !684, file: !521, line: 263, baseType: !58, size: 8, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !521, line: 264, baseType: !691, size: 32, offset: 40)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !521, line: 264, size: 32, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !691, file: !521, line: 265, baseType: !45, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !521, line: 266, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !521, line: 266, elements: !696)
!696 = !{!697, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !695, file: !521, line: 266, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !521, line: 266, elements: !129)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !695, file: !521, line: 266, baseType: !325)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !520, file: !521, line: 544, baseType: !701, size: 184)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !521, line: 281, size: 184, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !521, line: 282, baseType: !58, size: 8)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !701, file: !521, line: 282, baseType: !61, size: 16, offset: 8)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !701, file: !521, line: 282, baseType: !58, size: 8, offset: 24)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !701, file: !521, line: 283, baseType: !58, size: 8, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !521, line: 284, baseType: !61, size: 16, offset: 40)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !701, file: !521, line: 285, baseType: !61, size: 16, offset: 56)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !701, file: !521, line: 286, baseType: !58, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !701, file: !521, line: 287, baseType: !61, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !701, file: !521, line: 288, baseType: !61, size: 16, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !701, file: !521, line: 289, baseType: !61, size: 16, offset: 112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !701, file: !521, line: 290, baseType: !58, size: 8, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !701, file: !521, line: 291, baseType: !61, size: 16, offset: 136)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !701, file: !521, line: 292, baseType: !61, size: 16, offset: 152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !701, file: !521, line: 293, baseType: !61, size: 16, offset: 168)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !520, file: !521, line: 545, baseType: !718, size: 144)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !521, line: 346, size: 144, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !521, line: 347, baseType: !58, size: 8)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !718, file: !521, line: 347, baseType: !61, size: 16, offset: 8)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !718, file: !521, line: 348, baseType: !58, size: 8, offset: 24)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !718, file: !521, line: 348, baseType: !58, size: 8, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !521, line: 348, baseType: !58, size: 8, offset: 40)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !521, line: 348, baseType: !58, size: 8, offset: 48)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !718, file: !521, line: 348, baseType: !61, size: 16, offset: 56)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !718, file: !521, line: 348, baseType: !58, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !718, file: !521, line: 348, baseType: !61, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !718, file: !521, line: 348, baseType: !45, size: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !718, file: !521, line: 349, baseType: !61, size: 16, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !520, file: !521, line: 546, baseType: !732, size: 168)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !521, line: 361, size: 168, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !521, line: 362, baseType: !58, size: 8)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !732, file: !521, line: 362, baseType: !61, size: 16, offset: 8)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !732, file: !521, line: 363, baseType: !58, size: 8, offset: 24)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !732, file: !521, line: 363, baseType: !58, size: 8, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !521, line: 363, baseType: !58, size: 8, offset: 40)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !521, line: 363, baseType: !58, size: 8, offset: 48)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !732, file: !521, line: 363, baseType: !61, size: 16, offset: 56)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !732, file: !521, line: 363, baseType: !58, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !732, file: !521, line: 363, baseType: !61, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !732, file: !521, line: 363, baseType: !45, size: 32, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !732, file: !521, line: 364, baseType: !58, size: 8, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !732, file: !521, line: 365, baseType: !58, size: 8, offset: 136)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !732, file: !521, line: 366, baseType: !58, size: 8, offset: 144)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !732, file: !521, line: 367, baseType: !61, size: 16, offset: 152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !520, file: !521, line: 547, baseType: !749, size: 176)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !521, line: 379, size: 176, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !521, line: 380, baseType: !58, size: 8)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !749, file: !521, line: 380, baseType: !61, size: 16, offset: 8)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !749, file: !521, line: 381, baseType: !58, size: 8, offset: 24)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !749, file: !521, line: 381, baseType: !58, size: 8, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !521, line: 381, baseType: !58, size: 8, offset: 40)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !521, line: 381, baseType: !58, size: 8, offset: 48)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !749, file: !521, line: 381, baseType: !61, size: 16, offset: 56)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !749, file: !521, line: 381, baseType: !58, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !749, file: !521, line: 381, baseType: !61, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !749, file: !521, line: 381, baseType: !45, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !749, file: !521, line: 382, baseType: !61, size: 16, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !749, file: !521, line: 383, baseType: !61, size: 16, offset: 144)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !749, file: !521, line: 384, baseType: !58, size: 8, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !749, file: !521, line: 385, baseType: !58, size: 8, offset: 168)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !520, file: !521, line: 548, baseType: !766, size: 96)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_csi2_serialbus", file: !521, line: 333, size: 96, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !521, line: 334, baseType: !58, size: 8)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !766, file: !521, line: 334, baseType: !61, size: 16, offset: 8)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !766, file: !521, line: 334, baseType: !58, size: 8, offset: 24)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !766, file: !521, line: 334, baseType: !58, size: 8, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !521, line: 334, baseType: !58, size: 8, offset: 40)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !521, line: 334, baseType: !58, size: 8, offset: 48)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !766, file: !521, line: 334, baseType: !61, size: 16, offset: 56)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !766, file: !521, line: 334, baseType: !58, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !766, file: !521, line: 334, baseType: !61, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !520, file: !521, line: 549, baseType: !778, size: 96)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !521, line: 330, size: 96, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !521, line: 331, baseType: !58, size: 8)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !778, file: !521, line: 331, baseType: !61, size: 16, offset: 8)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !778, file: !521, line: 331, baseType: !58, size: 8, offset: 24)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !778, file: !521, line: 331, baseType: !58, size: 8, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !521, line: 331, baseType: !58, size: 8, offset: 40)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !521, line: 331, baseType: !58, size: 8, offset: 48)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !778, file: !521, line: 331, baseType: !61, size: 16, offset: 56)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !778, file: !521, line: 331, baseType: !58, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !778, file: !521, line: 331, baseType: !61, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !520, file: !521, line: 550, baseType: !790, size: 144)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !521, line: 397, size: 144, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !521, line: 398, baseType: !58, size: 8)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !790, file: !521, line: 398, baseType: !61, size: 16, offset: 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !790, file: !521, line: 398, baseType: !58, size: 8, offset: 24)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !521, line: 399, baseType: !61, size: 16, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !790, file: !521, line: 400, baseType: !58, size: 8, offset: 48)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !790, file: !521, line: 401, baseType: !61, size: 16, offset: 56)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !790, file: !521, line: 402, baseType: !61, size: 16, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !790, file: !521, line: 403, baseType: !58, size: 8, offset: 88)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !790, file: !521, line: 404, baseType: !61, size: 16, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !790, file: !521, line: 405, baseType: !61, size: 16, offset: 112)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !790, file: !521, line: 406, baseType: !61, size: 16, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !520, file: !521, line: 551, baseType: !804, size: 160)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !521, line: 417, size: 160, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !521, line: 418, baseType: !58, size: 8)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !804, file: !521, line: 418, baseType: !61, size: 16, offset: 8)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !804, file: !521, line: 418, baseType: !58, size: 8, offset: 24)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !521, line: 419, baseType: !61, size: 16, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !804, file: !521, line: 420, baseType: !58, size: 8, offset: 48)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !804, file: !521, line: 421, baseType: !45, size: 32, offset: 56)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !804, file: !521, line: 422, baseType: !61, size: 16, offset: 88)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !804, file: !521, line: 423, baseType: !58, size: 8, offset: 104)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !804, file: !521, line: 424, baseType: !61, size: 16, offset: 112)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !804, file: !521, line: 425, baseType: !61, size: 16, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !804, file: !521, line: 426, baseType: !61, size: 16, offset: 144)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !520, file: !521, line: 552, baseType: !818, size: 112)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !521, line: 451, size: 112, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !818, file: !521, line: 452, baseType: !58, size: 8)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !818, file: !521, line: 452, baseType: !61, size: 16, offset: 8)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !818, file: !521, line: 452, baseType: !58, size: 8, offset: 24)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !521, line: 453, baseType: !61, size: 16, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !818, file: !521, line: 454, baseType: !61, size: 16, offset: 48)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !818, file: !521, line: 455, baseType: !61, size: 16, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !818, file: !521, line: 456, baseType: !61, size: 16, offset: 80)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !818, file: !521, line: 457, baseType: !61, size: 16, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !520, file: !521, line: 553, baseType: !829, size: 136)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !521, line: 468, size: 136, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !829, file: !521, line: 469, baseType: !58, size: 8)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !829, file: !521, line: 469, baseType: !61, size: 16, offset: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !829, file: !521, line: 469, baseType: !58, size: 8, offset: 24)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !521, line: 470, baseType: !61, size: 16, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !829, file: !521, line: 471, baseType: !61, size: 16, offset: 48)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !829, file: !521, line: 472, baseType: !58, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !829, file: !521, line: 473, baseType: !61, size: 16, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !829, file: !521, line: 474, baseType: !61, size: 16, offset: 88)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !829, file: !521, line: 475, baseType: !61, size: 16, offset: 104)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !829, file: !521, line: 476, baseType: !61, size: 16, offset: 120)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !520, file: !521, line: 554, baseType: !842, size: 160)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !521, line: 487, size: 160, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !842, file: !521, line: 488, baseType: !58, size: 8)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !842, file: !521, line: 488, baseType: !61, size: 16, offset: 8)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !842, file: !521, line: 488, baseType: !58, size: 8, offset: 24)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !521, line: 489, baseType: !61, size: 16, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !842, file: !521, line: 490, baseType: !58, size: 8, offset: 48)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !842, file: !521, line: 491, baseType: !45, size: 32, offset: 56)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !842, file: !521, line: 492, baseType: !58, size: 8, offset: 88)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !842, file: !521, line: 493, baseType: !61, size: 16, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !842, file: !521, line: 494, baseType: !61, size: 16, offset: 112)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !842, file: !521, line: 495, baseType: !61, size: 16, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !842, file: !521, line: 496, baseType: !61, size: 16, offset: 144)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !520, file: !521, line: 555, baseType: !856, size: 96)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_clock_input", file: !521, line: 437, size: 96, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !856, file: !521, line: 438, baseType: !58, size: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !856, file: !521, line: 438, baseType: !61, size: 16, offset: 8)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !856, file: !521, line: 438, baseType: !58, size: 8, offset: 24)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !521, line: 439, baseType: !61, size: 16, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !856, file: !521, line: 440, baseType: !61, size: 16, offset: 48)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !856, file: !521, line: 441, baseType: !45, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !521, line: 559, baseType: !865, size: 48)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !521, line: 217, size: 48, elements: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !865, file: !521, line: 218, baseType: !58, size: 8)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !865, file: !521, line: 218, baseType: !61, size: 16, offset: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !865, file: !521, line: 218, baseType: !58, size: 8, offset: 24)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !521, line: 218, baseType: !58, size: 8, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !865, file: !521, line: 218, baseType: !58, size: 8, offset: 40)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !520, file: !521, line: 560, baseType: !45, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !520, file: !521, line: 561, baseType: !61, size: 16)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !520, file: !521, line: 562, baseType: !58, size: 8)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rsconvert_info", file: !6, line: 32, size: 32, elements: !877)
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !876, file: !6, line: 33, baseType: !58, size: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "resource_offset", scope: !876, file: !6, line: 34, baseType: !58, size: 8, offset: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "aml_offset", scope: !876, file: !6, line: 35, baseType: !58, size: 8, offset: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !876, file: !6, line: 36, baseType: !58, size: 8, offset: 24)
!882 = !{!883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894}
!883 = !DILocalVariable(name: "resource", arg: 1, scope: !100, file: !3, line: 35, type: !103)
!884 = !DILocalVariable(name: "aml", arg: 2, scope: !100, file: !3, line: 36, type: !519)
!885 = !DILocalVariable(name: "info", arg: 3, scope: !100, file: !3, line: 37, type: !875)
!886 = !DILocalVariable(name: "aml_resource_length", scope: !100, file: !3, line: 39, type: !69)
!887 = !DILocalVariable(name: "source", scope: !100, file: !3, line: 40, type: !53)
!888 = !DILocalVariable(name: "destination", scope: !100, file: !3, line: 41, type: !53)
!889 = !DILocalVariable(name: "target", scope: !100, file: !3, line: 42, type: !65)
!890 = !DILocalVariable(name: "count", scope: !100, file: !3, line: 43, type: !58)
!891 = !DILocalVariable(name: "flags_mode", scope: !100, file: !3, line: 44, type: !58)
!892 = !DILocalVariable(name: "item_count", scope: !100, file: !3, line: 45, type: !61)
!893 = !DILocalVariable(name: "temp16", scope: !100, file: !3, line: 46, type: !61)
!894 = !DILabel(scope: !100, name: "exit", file: !3, line: 419)
!895 = !DILocation(line: 35, column: 55, scope: !100)
!896 = !DILocation(line: 36, column: 25, scope: !100)
!897 = !DILocation(line: 37, column: 33, scope: !100)
!898 = !DILocation(line: 39, column: 2, scope: !100)
!899 = !DILocation(line: 39, column: 17, scope: !100)
!900 = !DILocation(line: 40, column: 2, scope: !100)
!901 = !DILocation(line: 40, column: 8, scope: !100)
!902 = !DILocation(line: 41, column: 2, scope: !100)
!903 = !DILocation(line: 41, column: 8, scope: !100)
!904 = !DILocation(line: 42, column: 2, scope: !100)
!905 = !DILocation(line: 42, column: 8, scope: !100)
!906 = !DILocation(line: 43, column: 2, scope: !100)
!907 = !DILocation(line: 43, column: 5, scope: !100)
!908 = !DILocation(line: 44, column: 2, scope: !100)
!909 = !DILocation(line: 44, column: 5, scope: !100)
!910 = !DILocation(line: 45, column: 2, scope: !100)
!911 = !DILocation(line: 45, column: 6, scope: !100)
!912 = !DILocation(line: 46, column: 2, scope: !100)
!913 = !DILocation(line: 46, column: 6, scope: !100)
!914 = !DILocation(line: 50, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !100, file: !3, line: 50, column: 6)
!916 = !DILocation(line: 50, column: 6, scope: !100)
!917 = !DILocation(line: 51, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 50, column: 13)
!919 = !DILocation(line: 54, column: 18, scope: !920)
!920 = distinct !DILexicalBlock(scope: !100, file: !3, line: 54, column: 6)
!921 = !DILocation(line: 54, column: 7, scope: !920)
!922 = !DILocation(line: 54, column: 28, scope: !920)
!923 = !DILocation(line: 54, column: 6, scope: !100)
!924 = !DILocation(line: 58, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 54, column: 35)
!926 = !DILocation(line: 61, column: 2, scope: !925)
!927 = !DILocation(line: 65, column: 52, scope: !100)
!928 = !DILocation(line: 65, column: 24, scope: !100)
!929 = !DILocation(line: 65, column: 22, scope: !100)
!930 = !DILocation(line: 71, column: 10, scope: !100)
!931 = !DILocation(line: 71, column: 8, scope: !100)
!932 = !DILocation(line: 72, column: 2, scope: !100)
!933 = !DILocation(line: 72, column: 9, scope: !100)
!934 = !DILocation(line: 73, column: 10, scope: !935)
!935 = distinct !DILexicalBlock(scope: !100, file: !3, line: 72, column: 16)
!936 = !DILocation(line: 79, column: 12, scope: !935)
!937 = !DILocation(line: 79, column: 10, scope: !935)
!938 = !DILocation(line: 81, column: 7, scope: !935)
!939 = !DILocation(line: 80, column: 15, scope: !935)
!940 = !DILocation(line: 83, column: 11, scope: !935)
!941 = !DILocation(line: 83, column: 17, scope: !935)
!942 = !DILocation(line: 83, column: 3, scope: !935)
!943 = !DILocation(line: 88, column: 11, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !3, line: 83, column: 25)
!945 = !DILocation(line: 88, column: 24, scope: !944)
!946 = !DILocation(line: 88, column: 4, scope: !944)
!947 = !DILocation(line: 89, column: 21, scope: !944)
!948 = !DILocation(line: 89, column: 4, scope: !944)
!949 = !DILocation(line: 89, column: 14, scope: !944)
!950 = !DILocation(line: 89, column: 19, scope: !944)
!951 = !DILocation(line: 90, column: 23, scope: !944)
!952 = !DILocation(line: 90, column: 4, scope: !944)
!953 = !DILocation(line: 90, column: 14, scope: !944)
!954 = !DILocation(line: 90, column: 21, scope: !944)
!955 = !DILocation(line: 91, column: 4, scope: !944)
!956 = !DILocation(line: 98, column: 15, scope: !944)
!957 = !DILocation(line: 99, column: 4, scope: !944)
!958 = !DILocation(line: 105, column: 4, scope: !944)
!959 = !DILocation(line: 107, column: 4, scope: !944)
!960 = !DILocation(line: 113, column: 4, scope: !944)
!961 = !DILocation(line: 115, column: 4, scope: !944)
!962 = !DILocation(line: 121, column: 4, scope: !944)
!963 = !DILocation(line: 123, column: 4, scope: !944)
!964 = !DILocation(line: 129, column: 4, scope: !944)
!965 = !DILocation(line: 131, column: 4, scope: !944)
!966 = !DILocation(line: 135, column: 17, scope: !944)
!967 = !DILocation(line: 135, column: 15, scope: !944)
!968 = !DILocation(line: 136, column: 4, scope: !944)
!969 = !DILocation(line: 138, column: 23, scope: !944)
!970 = !DILocation(line: 138, column: 33, scope: !944)
!971 = !DILocation(line: 139, column: 9, scope: !944)
!972 = !DILocation(line: 139, column: 15, scope: !944)
!973 = !DILocation(line: 139, column: 24, scope: !944)
!974 = !DILocation(line: 139, column: 35, scope: !944)
!975 = !DILocation(line: 139, column: 21, scope: !944)
!976 = !DILocation(line: 138, column: 40, scope: !944)
!977 = !DILocation(line: 138, column: 4, scope: !944)
!978 = !DILocation(line: 138, column: 14, scope: !944)
!979 = !DILocation(line: 138, column: 21, scope: !944)
!980 = !DILocation(line: 140, column: 4, scope: !944)
!981 = !DILocation(line: 144, column: 17, scope: !944)
!982 = !DILocation(line: 144, column: 15, scope: !944)
!983 = !DILocation(line: 145, column: 4, scope: !944)
!984 = !DILocation(line: 147, column: 23, scope: !944)
!985 = !DILocation(line: 147, column: 33, scope: !944)
!986 = !DILocation(line: 148, column: 9, scope: !944)
!987 = !DILocation(line: 148, column: 15, scope: !944)
!988 = !DILocation(line: 148, column: 24, scope: !944)
!989 = !DILocation(line: 148, column: 35, scope: !944)
!990 = !DILocation(line: 148, column: 21, scope: !944)
!991 = !DILocation(line: 147, column: 40, scope: !944)
!992 = !DILocation(line: 147, column: 4, scope: !944)
!993 = !DILocation(line: 147, column: 14, scope: !944)
!994 = !DILocation(line: 147, column: 21, scope: !944)
!995 = !DILocation(line: 149, column: 4, scope: !944)
!996 = !DILocation(line: 153, column: 13, scope: !944)
!997 = !DILocation(line: 153, column: 11, scope: !944)
!998 = !DILocation(line: 154, column: 17, scope: !944)
!999 = !DILocation(line: 154, column: 38, scope: !944)
!1000 = !DILocation(line: 154, column: 36, scope: !944)
!1001 = !DILocation(line: 154, column: 15, scope: !944)
!1002 = !DILocation(line: 156, column: 23, scope: !944)
!1003 = !DILocation(line: 156, column: 33, scope: !944)
!1004 = !DILocation(line: 156, column: 42, scope: !944)
!1005 = !DILocation(line: 156, column: 40, scope: !944)
!1006 = !DILocation(line: 156, column: 4, scope: !944)
!1007 = !DILocation(line: 156, column: 14, scope: !944)
!1008 = !DILocation(line: 156, column: 21, scope: !944)
!1009 = !DILocation(line: 157, column: 17, scope: !944)
!1010 = !DILocation(line: 157, column: 28, scope: !944)
!1011 = !DILocation(line: 157, column: 15, scope: !944)
!1012 = !DILocation(line: 158, column: 4, scope: !944)
!1013 = !DILocation(line: 159, column: 4, scope: !944)
!1014 = !DILocation(line: 163, column: 17, scope: !944)
!1015 = !DILocation(line: 163, column: 15, scope: !944)
!1016 = !DILocation(line: 164, column: 4, scope: !944)
!1017 = !DILocation(line: 167, column: 8, scope: !944)
!1018 = !DILocation(line: 167, column: 18, scope: !944)
!1019 = !DILocation(line: 167, column: 28, scope: !944)
!1020 = !DILocation(line: 167, column: 34, scope: !944)
!1021 = !DILocation(line: 167, column: 42, scope: !944)
!1022 = !DILocation(line: 167, column: 40, scope: !944)
!1023 = !DILocation(line: 167, column: 25, scope: !944)
!1024 = !DILocation(line: 166, column: 4, scope: !944)
!1025 = !DILocation(line: 166, column: 14, scope: !944)
!1026 = !DILocation(line: 166, column: 21, scope: !944)
!1027 = !DILocation(line: 168, column: 4, scope: !944)
!1028 = !DILocation(line: 175, column: 13, scope: !944)
!1029 = !DILocation(line: 175, column: 11, scope: !944)
!1030 = !DILocation(line: 176, column: 8, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !944, file: !3, line: 176, column: 8)
!1032 = !DILocation(line: 176, column: 8, scope: !944)
!1033 = !DILocation(line: 180, column: 14, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 176, column: 28)
!1035 = !DILocation(line: 180, column: 12, scope: !1034)
!1036 = !DILocation(line: 182, column: 9, scope: !1034)
!1037 = !DILocation(line: 182, column: 30, scope: !1034)
!1038 = !DILocation(line: 182, column: 28, scope: !1034)
!1039 = !DILocation(line: 181, column: 16, scope: !1034)
!1040 = !DILocation(line: 183, column: 4, scope: !1034)
!1041 = !DILocation(line: 186, column: 18, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 183, column: 11)
!1043 = !DILocation(line: 186, column: 36, scope: !1042)
!1044 = !DILocation(line: 186, column: 52, scope: !1042)
!1045 = !DILocation(line: 188, column: 9, scope: !1042)
!1046 = !DILocation(line: 187, column: 50, scope: !1042)
!1047 = !DILocation(line: 186, column: 16, scope: !1042)
!1048 = !DILocation(line: 191, column: 23, scope: !944)
!1049 = !DILocation(line: 191, column: 33, scope: !944)
!1050 = !DILocation(line: 191, column: 42, scope: !944)
!1051 = !DILocation(line: 191, column: 40, scope: !944)
!1052 = !DILocation(line: 191, column: 4, scope: !944)
!1053 = !DILocation(line: 191, column: 14, scope: !944)
!1054 = !DILocation(line: 191, column: 21, scope: !944)
!1055 = !DILocation(line: 192, column: 4, scope: !944)
!1056 = !DILocation(line: 193, column: 4, scope: !944)
!1057 = !DILocation(line: 197, column: 4, scope: !944)
!1058 = !DILocation(line: 198, column: 17, scope: !944)
!1059 = !DILocation(line: 198, column: 26, scope: !944)
!1060 = !DILocation(line: 198, column: 32, scope: !944)
!1061 = !DILocation(line: 198, column: 24, scope: !944)
!1062 = !DILocation(line: 198, column: 15, scope: !944)
!1063 = !DILocation(line: 200, column: 23, scope: !944)
!1064 = !DILocation(line: 200, column: 33, scope: !944)
!1065 = !DILocation(line: 200, column: 42, scope: !944)
!1066 = !DILocation(line: 200, column: 40, scope: !944)
!1067 = !DILocation(line: 200, column: 4, scope: !944)
!1068 = !DILocation(line: 200, column: 14, scope: !944)
!1069 = !DILocation(line: 200, column: 21, scope: !944)
!1070 = !DILocation(line: 201, column: 4, scope: !944)
!1071 = !DILocation(line: 202, column: 4, scope: !944)
!1072 = !DILocation(line: 206, column: 4, scope: !944)
!1073 = !DILocation(line: 207, column: 18, scope: !944)
!1074 = !DILocation(line: 207, column: 38, scope: !944)
!1075 = !DILocation(line: 209, column: 10, scope: !944)
!1076 = !DILocation(line: 209, column: 8, scope: !944)
!1077 = !DILocation(line: 209, column: 19, scope: !944)
!1078 = !DILocation(line: 209, column: 25, scope: !944)
!1079 = !DILocation(line: 209, column: 17, scope: !944)
!1080 = !DILocation(line: 207, column: 17, scope: !944)
!1081 = !DILocation(line: 207, column: 15, scope: !944)
!1082 = !DILocation(line: 211, column: 23, scope: !944)
!1083 = !DILocation(line: 211, column: 33, scope: !944)
!1084 = !DILocation(line: 211, column: 42, scope: !944)
!1085 = !DILocation(line: 211, column: 40, scope: !944)
!1086 = !DILocation(line: 211, column: 4, scope: !944)
!1087 = !DILocation(line: 211, column: 14, scope: !944)
!1088 = !DILocation(line: 211, column: 21, scope: !944)
!1089 = !DILocation(line: 212, column: 4, scope: !944)
!1090 = !DILocation(line: 213, column: 4, scope: !944)
!1091 = !DILocation(line: 217, column: 23, scope: !944)
!1092 = !DILocation(line: 217, column: 33, scope: !944)
!1093 = !DILocation(line: 217, column: 42, scope: !944)
!1094 = !DILocation(line: 217, column: 48, scope: !944)
!1095 = !DILocation(line: 217, column: 40, scope: !944)
!1096 = !DILocation(line: 217, column: 4, scope: !944)
!1097 = !DILocation(line: 217, column: 14, scope: !944)
!1098 = !DILocation(line: 217, column: 21, scope: !944)
!1099 = !DILocation(line: 218, column: 4, scope: !944)
!1100 = !DILocation(line: 228, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !944, file: !3, line: 228, column: 8)
!1102 = !DILocation(line: 228, column: 14, scope: !1101)
!1103 = !DILocation(line: 228, column: 8, scope: !944)
!1104 = !DILocation(line: 229, column: 18, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 228, column: 21)
!1106 = !DILocation(line: 229, column: 24, scope: !1105)
!1107 = !DILocation(line: 229, column: 16, scope: !1105)
!1108 = !DILocation(line: 230, column: 4, scope: !1105)
!1109 = !DILocation(line: 231, column: 22, scope: !944)
!1110 = !DILocation(line: 231, column: 35, scope: !944)
!1111 = !DILocation(line: 231, column: 43, scope: !944)
!1112 = !DILocation(line: 232, column: 8, scope: !944)
!1113 = !DILocation(line: 232, column: 14, scope: !944)
!1114 = !DILocation(line: 231, column: 4, scope: !944)
!1115 = !DILocation(line: 233, column: 4, scope: !944)
!1116 = !DILocation(line: 239, column: 21, scope: !944)
!1117 = !DILocation(line: 239, column: 11, scope: !944)
!1118 = !DILocation(line: 242, column: 27, scope: !944)
!1119 = !DILocation(line: 242, column: 13, scope: !944)
!1120 = !DILocation(line: 242, column: 25, scope: !944)
!1121 = !DILocation(line: 246, column: 13, scope: !944)
!1122 = !DILocation(line: 246, column: 11, scope: !944)
!1123 = !DILocation(line: 247, column: 22, scope: !944)
!1124 = !DILocation(line: 247, column: 30, scope: !944)
!1125 = !DILocation(line: 247, column: 38, scope: !944)
!1126 = !DILocation(line: 248, column: 8, scope: !944)
!1127 = !DILocation(line: 248, column: 14, scope: !944)
!1128 = !DILocation(line: 247, column: 4, scope: !944)
!1129 = !DILocation(line: 249, column: 4, scope: !944)
!1130 = !DILocation(line: 255, column: 21, scope: !944)
!1131 = !DILocation(line: 255, column: 11, scope: !944)
!1132 = !DILocation(line: 258, column: 26, scope: !944)
!1133 = !DILocation(line: 258, column: 12, scope: !944)
!1134 = !DILocation(line: 258, column: 24, scope: !944)
!1135 = !DILocation(line: 262, column: 13, scope: !944)
!1136 = !DILocation(line: 262, column: 11, scope: !944)
!1137 = !DILocation(line: 263, column: 22, scope: !944)
!1138 = !DILocation(line: 263, column: 30, scope: !944)
!1139 = !DILocation(line: 263, column: 38, scope: !944)
!1140 = !DILocation(line: 264, column: 8, scope: !944)
!1141 = !DILocation(line: 264, column: 14, scope: !944)
!1142 = !DILocation(line: 263, column: 4, scope: !944)
!1143 = !DILocation(line: 265, column: 4, scope: !944)
!1144 = !DILocation(line: 271, column: 21, scope: !944)
!1145 = !DILocation(line: 271, column: 11, scope: !944)
!1146 = !DILocation(line: 274, column: 26, scope: !944)
!1147 = !DILocation(line: 274, column: 12, scope: !944)
!1148 = !DILocation(line: 274, column: 24, scope: !944)
!1149 = !DILocation(line: 278, column: 13, scope: !944)
!1150 = !DILocation(line: 278, column: 11, scope: !944)
!1151 = !DILocation(line: 279, column: 22, scope: !944)
!1152 = !DILocation(line: 279, column: 30, scope: !944)
!1153 = !DILocation(line: 279, column: 38, scope: !944)
!1154 = !DILocation(line: 280, column: 8, scope: !944)
!1155 = !DILocation(line: 280, column: 14, scope: !944)
!1156 = !DILocation(line: 279, column: 4, scope: !944)
!1157 = !DILocation(line: 281, column: 4, scope: !944)
!1158 = !DILocation(line: 287, column: 21, scope: !944)
!1159 = !DILocation(line: 287, column: 11, scope: !944)
!1160 = !DILocation(line: 290, column: 26, scope: !944)
!1161 = !DILocation(line: 290, column: 12, scope: !944)
!1162 = !DILocation(line: 290, column: 24, scope: !944)
!1163 = !DILocation(line: 294, column: 4, scope: !944)
!1164 = !DILocation(line: 296, column: 8, scope: !944)
!1165 = !DILocation(line: 295, column: 11, scope: !944)
!1166 = !DILocation(line: 297, column: 22, scope: !944)
!1167 = !DILocation(line: 297, column: 30, scope: !944)
!1168 = !DILocation(line: 297, column: 38, scope: !944)
!1169 = !DILocation(line: 298, column: 8, scope: !944)
!1170 = !DILocation(line: 298, column: 14, scope: !944)
!1171 = !DILocation(line: 297, column: 4, scope: !944)
!1172 = !DILocation(line: 299, column: 4, scope: !944)
!1173 = !DILocation(line: 303, column: 11, scope: !944)
!1174 = !DILocation(line: 303, column: 24, scope: !944)
!1175 = !DILocation(line: 303, column: 30, scope: !944)
!1176 = !DILocation(line: 303, column: 4, scope: !944)
!1177 = !DILocation(line: 303, column: 42, scope: !944)
!1178 = !DILocation(line: 303, column: 48, scope: !944)
!1179 = !DILocation(line: 304, column: 4, scope: !944)
!1180 = !DILocation(line: 308, column: 13, scope: !944)
!1181 = !DILocation(line: 308, column: 11, scope: !944)
!1182 = !DILocation(line: 309, column: 11, scope: !944)
!1183 = !DILocation(line: 309, column: 24, scope: !944)
!1184 = !DILocation(line: 309, column: 32, scope: !944)
!1185 = !DILocation(line: 309, column: 4, scope: !944)
!1186 = !DILocation(line: 310, column: 4, scope: !944)
!1187 = !DILocation(line: 316, column: 36, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !944, file: !3, line: 316, column: 8)
!1189 = !DILocation(line: 316, column: 46, scope: !1188)
!1190 = !DILocation(line: 316, column: 9, scope: !1188)
!1191 = !DILocation(line: 316, column: 8, scope: !944)
!1192 = !DILocation(line: 317, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 316, column: 52)
!1194 = !DILocation(line: 320, column: 4, scope: !944)
!1195 = !DILocation(line: 327, column: 36, scope: !944)
!1196 = !DILocation(line: 328, column: 8, scope: !944)
!1197 = !DILocation(line: 328, column: 14, scope: !944)
!1198 = !DILocation(line: 329, column: 8, scope: !944)
!1199 = !DILocation(line: 329, column: 21, scope: !944)
!1200 = !DILocation(line: 327, column: 8, scope: !944)
!1201 = !DILocation(line: 326, column: 4, scope: !944)
!1202 = !DILocation(line: 326, column: 14, scope: !944)
!1203 = !DILocation(line: 326, column: 21, scope: !944)
!1204 = !DILocation(line: 330, column: 4, scope: !944)
!1205 = !DILocation(line: 337, column: 13, scope: !944)
!1206 = !DILocation(line: 337, column: 11, scope: !944)
!1207 = !DILocation(line: 342, column: 36, scope: !944)
!1208 = !DILocation(line: 344, column: 11, scope: !944)
!1209 = !DILocation(line: 344, column: 22, scope: !944)
!1210 = !DILocation(line: 344, column: 10, scope: !944)
!1211 = !DILocation(line: 345, column: 14, scope: !944)
!1212 = !DILocation(line: 346, column: 9, scope: !944)
!1213 = !DILocation(line: 346, column: 15, scope: !944)
!1214 = !DILocation(line: 345, column: 29, scope: !944)
!1215 = !DILocation(line: 343, column: 8, scope: !944)
!1216 = !DILocation(line: 347, column: 8, scope: !944)
!1217 = !DILocation(line: 347, column: 21, scope: !944)
!1218 = !DILocation(line: 348, column: 8, scope: !944)
!1219 = !DILocation(line: 342, column: 8, scope: !944)
!1220 = !DILocation(line: 341, column: 4, scope: !944)
!1221 = !DILocation(line: 341, column: 14, scope: !944)
!1222 = !DILocation(line: 341, column: 21, scope: !944)
!1223 = !DILocation(line: 349, column: 4, scope: !944)
!1224 = !DILocation(line: 356, column: 31, scope: !944)
!1225 = !DILocation(line: 357, column: 10, scope: !944)
!1226 = !DILocation(line: 356, column: 8, scope: !944)
!1227 = !DILocation(line: 355, column: 15, scope: !944)
!1228 = !DILocation(line: 358, column: 8, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !944, file: !3, line: 358, column: 8)
!1230 = !DILocation(line: 358, column: 8, scope: !944)
!1231 = !DILocation(line: 359, column: 26, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 358, column: 20)
!1233 = !DILocation(line: 359, column: 37, scope: !1232)
!1234 = !DILocation(line: 359, column: 5, scope: !1232)
!1235 = !DILocation(line: 359, column: 15, scope: !1232)
!1236 = !DILocation(line: 359, column: 22, scope: !1232)
!1237 = !DILocation(line: 360, column: 4, scope: !1232)
!1238 = !DILocation(line: 362, column: 13, scope: !944)
!1239 = !DILocation(line: 362, column: 11, scope: !944)
!1240 = !DILocation(line: 363, column: 4, scope: !944)
!1241 = !DILocation(line: 364, column: 4, scope: !944)
!1242 = !DILocation(line: 370, column: 4, scope: !944)
!1243 = !DILocation(line: 373, column: 31, scope: !944)
!1244 = !DILocation(line: 373, column: 39, scope: !944)
!1245 = !DILocation(line: 373, column: 8, scope: !944)
!1246 = !DILocation(line: 372, column: 15, scope: !944)
!1247 = !DILocation(line: 374, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !944, file: !3, line: 374, column: 8)
!1249 = !DILocation(line: 374, column: 8, scope: !944)
!1250 = !DILocation(line: 375, column: 26, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 374, column: 20)
!1252 = !DILocation(line: 375, column: 37, scope: !1251)
!1253 = !DILocation(line: 375, column: 5, scope: !1251)
!1254 = !DILocation(line: 375, column: 15, scope: !1251)
!1255 = !DILocation(line: 375, column: 22, scope: !1251)
!1256 = !DILocation(line: 376, column: 4, scope: !1251)
!1257 = !DILocation(line: 378, column: 13, scope: !944)
!1258 = !DILocation(line: 378, column: 11, scope: !944)
!1259 = !DILocation(line: 379, column: 4, scope: !944)
!1260 = !DILocation(line: 380, column: 4, scope: !944)
!1261 = !DILocation(line: 386, column: 12, scope: !944)
!1262 = !DILocation(line: 386, column: 18, scope: !944)
!1263 = !DILocation(line: 386, column: 4, scope: !944)
!1264 = !DILocation(line: 389, column: 9, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 389, column: 9)
!1266 = distinct !DILexicalBlock(scope: !944, file: !3, line: 386, column: 35)
!1267 = !DILocation(line: 389, column: 32, scope: !1265)
!1268 = !DILocation(line: 389, column: 38, scope: !1265)
!1269 = !DILocation(line: 389, column: 29, scope: !1265)
!1270 = !DILocation(line: 389, column: 9, scope: !1266)
!1271 = !DILocation(line: 390, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 389, column: 45)
!1273 = !DILocation(line: 392, column: 5, scope: !1266)
!1274 = !DILocation(line: 396, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 396, column: 9)
!1276 = !DILocation(line: 396, column: 30, scope: !1275)
!1277 = !DILocation(line: 396, column: 36, scope: !1275)
!1278 = !DILocation(line: 396, column: 27, scope: !1275)
!1279 = !DILocation(line: 396, column: 9, scope: !1266)
!1280 = !DILocation(line: 397, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 396, column: 43)
!1282 = !DILocation(line: 399, column: 5, scope: !1266)
!1283 = !DILocation(line: 403, column: 5, scope: !1266)
!1284 = !DILocation(line: 405, column: 5, scope: !1266)
!1285 = !DILocation(line: 407, column: 4, scope: !944)
!1286 = !DILocation(line: 411, column: 4, scope: !944)
!1287 = !DILocation(line: 412, column: 4, scope: !944)
!1288 = !DILocation(line: 415, column: 8, scope: !935)
!1289 = !DILocation(line: 416, column: 7, scope: !935)
!1290 = distinct !{!1290, !932, !1291, !1292, !1293}
!1291 = !DILocation(line: 417, column: 2, scope: !100)
!1292 = !{!"llvm.loop.mustprogress"}
!1293 = !{!"llvm.loop.unroll.disable"}
!1294 = !DILocation(line: 419, column: 1, scope: !100)
!1295 = !DILocation(line: 420, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !100, file: !3, line: 420, column: 6)
!1297 = !DILocation(line: 420, column: 6, scope: !100)
!1298 = !DILocation(line: 425, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 420, column: 19)
!1300 = !DILocation(line: 424, column: 22, scope: !1299)
!1301 = !DILocation(line: 424, column: 3, scope: !1299)
!1302 = !DILocation(line: 424, column: 13, scope: !1299)
!1303 = !DILocation(line: 424, column: 20, scope: !1299)
!1304 = !DILocation(line: 426, column: 2, scope: !1299)
!1305 = !DILocation(line: 427, column: 2, scope: !100)
!1306 = !DILocation(line: 428, column: 1, scope: !100)
!1307 = !DISubprogram(name: "acpi_warning", scope: !1308, file: !1308, line: 912, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1308 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !1311, !45, !1311, null}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1312 = !DISubprogram(name: "acpi_ut_get_resource_length", scope: !1313, file: !1313, line: 606, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!61, !53}
!1316 = !DISubprogram(name: "acpi_rs_move_data", scope: !6, file: !6, line: 245, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !53, !53, !61, !58}
!1319 = !DISubprogram(name: "acpi_rs_get_address_common", scope: !6, file: !6, line: 225, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!58, !103, !519}
!1322 = !DISubprogram(name: "acpi_rs_get_resource_source", scope: !6, file: !6, line: 253, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!69, !69, !69, !1325, !519, !65}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1326 = !DISubprogram(name: "acpi_rs_decode_bitmask", scope: !6, file: !6, line: 248, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!58, !61, !57}
!1329 = !DISubprogram(name: "acpi_error", scope: !1308, file: !1308, line: 901, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = distinct !DISubprogram(name: "acpi_rs_convert_resource_to_aml", scope: !3, file: !3, line: 446, type: !101, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1340, !1341, !1342, !1343}
!1332 = !DILocalVariable(name: "resource", arg: 1, scope: !1330, file: !3, line: 446, type: !103)
!1333 = !DILocalVariable(name: "aml", arg: 2, scope: !1330, file: !3, line: 447, type: !519)
!1334 = !DILocalVariable(name: "info", arg: 3, scope: !1330, file: !3, line: 448, type: !875)
!1335 = !DILocalVariable(name: "source", scope: !1330, file: !3, line: 450, type: !53)
!1336 = !DILocalVariable(name: "destination", scope: !1330, file: !3, line: 451, type: !53)
!1337 = !DILocalVariable(name: "target", scope: !1330, file: !3, line: 452, type: !65)
!1338 = !DILocalVariable(name: "aml_length", scope: !1330, file: !3, line: 453, type: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rsdesc_size", file: !70, line: 17, baseType: !45)
!1340 = !DILocalVariable(name: "count", scope: !1330, file: !3, line: 454, type: !58)
!1341 = !DILocalVariable(name: "temp16", scope: !1330, file: !3, line: 455, type: !61)
!1342 = !DILocalVariable(name: "item_count", scope: !1330, file: !3, line: 456, type: !61)
!1343 = !DILabel(scope: !1330, name: "exit", file: !3, line: 767)
!1344 = !DILocation(line: 446, column: 55, scope: !1330)
!1345 = !DILocation(line: 447, column: 25, scope: !1330)
!1346 = !DILocation(line: 448, column: 33, scope: !1330)
!1347 = !DILocation(line: 450, column: 2, scope: !1330)
!1348 = !DILocation(line: 450, column: 8, scope: !1330)
!1349 = !DILocation(line: 451, column: 2, scope: !1330)
!1350 = !DILocation(line: 451, column: 8, scope: !1330)
!1351 = !DILocation(line: 452, column: 2, scope: !1330)
!1352 = !DILocation(line: 452, column: 8, scope: !1330)
!1353 = !DILocation(line: 453, column: 2, scope: !1330)
!1354 = !DILocation(line: 453, column: 19, scope: !1330)
!1355 = !DILocation(line: 454, column: 2, scope: !1330)
!1356 = !DILocation(line: 454, column: 5, scope: !1330)
!1357 = !DILocation(line: 455, column: 2, scope: !1330)
!1358 = !DILocation(line: 455, column: 6, scope: !1330)
!1359 = !DILocation(line: 456, column: 2, scope: !1330)
!1360 = !DILocation(line: 456, column: 6, scope: !1330)
!1361 = !DILocation(line: 460, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 460, column: 6)
!1363 = !DILocation(line: 460, column: 6, scope: !1330)
!1364 = !DILocation(line: 461, column: 3, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 460, column: 13)
!1366 = !DILocation(line: 468, column: 10, scope: !1330)
!1367 = !DILocation(line: 468, column: 8, scope: !1330)
!1368 = !DILocation(line: 470, column: 2, scope: !1330)
!1369 = !DILocation(line: 470, column: 9, scope: !1330)
!1370 = !DILocation(line: 475, column: 12, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 470, column: 16)
!1372 = !DILocation(line: 475, column: 10, scope: !1371)
!1373 = !DILocation(line: 476, column: 17, scope: !1371)
!1374 = !DILocation(line: 476, column: 15, scope: !1371)
!1375 = !DILocation(line: 478, column: 11, scope: !1371)
!1376 = !DILocation(line: 478, column: 17, scope: !1371)
!1377 = !DILocation(line: 478, column: 3, scope: !1371)
!1378 = !DILocation(line: 481, column: 11, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 478, column: 25)
!1380 = !DILocation(line: 481, column: 19, scope: !1379)
!1381 = !DILocation(line: 481, column: 4, scope: !1379)
!1382 = !DILocation(line: 482, column: 17, scope: !1379)
!1383 = !DILocation(line: 482, column: 15, scope: !1379)
!1384 = !DILocation(line: 483, column: 32, scope: !1379)
!1385 = !DILocation(line: 484, column: 11, scope: !1379)
!1386 = !DILocation(line: 484, column: 23, scope: !1379)
!1387 = !DILocation(line: 483, column: 4, scope: !1379)
!1388 = !DILocation(line: 485, column: 4, scope: !1379)
!1389 = !DILocation(line: 494, column: 4, scope: !1379)
!1390 = !DILocation(line: 495, column: 4, scope: !1379)
!1391 = !DILocation(line: 501, column: 4, scope: !1379)
!1392 = !DILocation(line: 504, column: 4, scope: !1379)
!1393 = !DILocation(line: 510, column: 4, scope: !1379)
!1394 = !DILocation(line: 513, column: 4, scope: !1379)
!1395 = !DILocation(line: 519, column: 4, scope: !1379)
!1396 = !DILocation(line: 522, column: 4, scope: !1379)
!1397 = !DILocation(line: 528, column: 4, scope: !1379)
!1398 = !DILocation(line: 531, column: 4, scope: !1379)
!1399 = !DILocation(line: 535, column: 17, scope: !1379)
!1400 = !DILocation(line: 535, column: 15, scope: !1379)
!1401 = !DILocation(line: 536, column: 4, scope: !1379)
!1402 = !DILocation(line: 539, column: 9, scope: !1379)
!1403 = !DILocation(line: 539, column: 23, scope: !1379)
!1404 = !DILocation(line: 539, column: 29, scope: !1379)
!1405 = !DILocation(line: 539, column: 38, scope: !1379)
!1406 = !DILocation(line: 539, column: 49, scope: !1379)
!1407 = !DILocation(line: 539, column: 35, scope: !1379)
!1408 = !DILocation(line: 539, column: 20, scope: !1379)
!1409 = !DILocation(line: 538, column: 17, scope: !1379)
!1410 = !DILocation(line: 538, column: 15, scope: !1379)
!1411 = !DILocation(line: 540, column: 4, scope: !1379)
!1412 = !DILocation(line: 544, column: 17, scope: !1379)
!1413 = !DILocation(line: 544, column: 15, scope: !1379)
!1414 = !DILocation(line: 545, column: 24, scope: !1379)
!1415 = !DILocation(line: 545, column: 37, scope: !1379)
!1416 = !DILocation(line: 545, column: 35, scope: !1379)
!1417 = !DILocation(line: 545, column: 17, scope: !1379)
!1418 = !DILocation(line: 545, column: 15, scope: !1379)
!1419 = !DILocation(line: 546, column: 32, scope: !1379)
!1420 = !DILocation(line: 546, column: 44, scope: !1379)
!1421 = !DILocation(line: 546, column: 4, scope: !1379)
!1422 = !DILocation(line: 547, column: 4, scope: !1379)
!1423 = !DILocation(line: 551, column: 17, scope: !1379)
!1424 = !DILocation(line: 551, column: 15, scope: !1379)
!1425 = !DILocation(line: 552, column: 4, scope: !1379)
!1426 = !DILocation(line: 554, column: 23, scope: !1379)
!1427 = !DILocation(line: 554, column: 36, scope: !1379)
!1428 = !DILocation(line: 554, column: 47, scope: !1379)
!1429 = !DILocation(line: 554, column: 34, scope: !1379)
!1430 = !DILocation(line: 554, column: 17, scope: !1379)
!1431 = !DILocation(line: 554, column: 15, scope: !1379)
!1432 = !DILocation(line: 555, column: 13, scope: !1379)
!1433 = !DILocation(line: 555, column: 11, scope: !1379)
!1434 = !DILocation(line: 556, column: 4, scope: !1379)
!1435 = !DILocation(line: 557, column: 32, scope: !1379)
!1436 = !DILocation(line: 557, column: 44, scope: !1379)
!1437 = !DILocation(line: 557, column: 4, scope: !1379)
!1438 = !DILocation(line: 558, column: 4, scope: !1379)
!1439 = !DILocation(line: 562, column: 17, scope: !1379)
!1440 = !DILocation(line: 562, column: 15, scope: !1379)
!1441 = !DILocation(line: 563, column: 4, scope: !1379)
!1442 = !DILocation(line: 566, column: 14, scope: !1379)
!1443 = !DILocation(line: 566, column: 28, scope: !1379)
!1444 = !DILocation(line: 566, column: 34, scope: !1379)
!1445 = !DILocation(line: 566, column: 42, scope: !1379)
!1446 = !DILocation(line: 566, column: 40, scope: !1379)
!1447 = !DILocation(line: 566, column: 25, scope: !1379)
!1448 = !DILocation(line: 566, column: 8, scope: !1379)
!1449 = !DILocation(line: 565, column: 15, scope: !1379)
!1450 = !DILocation(line: 567, column: 32, scope: !1379)
!1451 = !DILocation(line: 567, column: 44, scope: !1379)
!1452 = !DILocation(line: 567, column: 4, scope: !1379)
!1453 = !DILocation(line: 568, column: 4, scope: !1379)
!1454 = !DILocation(line: 574, column: 17, scope: !1379)
!1455 = !DILocation(line: 574, column: 15, scope: !1379)
!1456 = !DILocation(line: 575, column: 4, scope: !1379)
!1457 = !DILocation(line: 579, column: 23, scope: !1379)
!1458 = !DILocation(line: 579, column: 36, scope: !1379)
!1459 = !DILocation(line: 579, column: 34, scope: !1379)
!1460 = !DILocation(line: 579, column: 17, scope: !1379)
!1461 = !DILocation(line: 579, column: 15, scope: !1379)
!1462 = !DILocation(line: 580, column: 13, scope: !1379)
!1463 = !DILocation(line: 580, column: 11, scope: !1379)
!1464 = !DILocation(line: 584, column: 4, scope: !1379)
!1465 = !DILocation(line: 586, column: 32, scope: !1379)
!1466 = !DILocation(line: 586, column: 44, scope: !1379)
!1467 = !DILocation(line: 586, column: 4, scope: !1379)
!1468 = !DILocation(line: 587, column: 4, scope: !1379)
!1469 = !DILocation(line: 591, column: 17, scope: !1379)
!1470 = !DILocation(line: 591, column: 15, scope: !1379)
!1471 = !DILocation(line: 592, column: 4, scope: !1379)
!1472 = !DILocation(line: 593, column: 23, scope: !1379)
!1473 = !DILocation(line: 593, column: 36, scope: !1379)
!1474 = !DILocation(line: 593, column: 34, scope: !1379)
!1475 = !DILocation(line: 593, column: 17, scope: !1379)
!1476 = !DILocation(line: 593, column: 15, scope: !1379)
!1477 = !DILocation(line: 594, column: 32, scope: !1379)
!1478 = !DILocation(line: 594, column: 44, scope: !1379)
!1479 = !DILocation(line: 594, column: 4, scope: !1379)
!1480 = !DILocation(line: 595, column: 4, scope: !1379)
!1481 = !DILocation(line: 599, column: 17, scope: !1379)
!1482 = !DILocation(line: 599, column: 15, scope: !1379)
!1483 = !DILocation(line: 600, column: 23, scope: !1379)
!1484 = !DILocation(line: 600, column: 36, scope: !1379)
!1485 = !DILocation(line: 600, column: 34, scope: !1379)
!1486 = !DILocation(line: 600, column: 17, scope: !1379)
!1487 = !DILocation(line: 600, column: 15, scope: !1379)
!1488 = !DILocation(line: 601, column: 32, scope: !1379)
!1489 = !DILocation(line: 601, column: 44, scope: !1379)
!1490 = !DILocation(line: 601, column: 4, scope: !1379)
!1491 = !DILocation(line: 602, column: 4, scope: !1379)
!1492 = !DILocation(line: 606, column: 32, scope: !1379)
!1493 = !DILocation(line: 606, column: 38, scope: !1379)
!1494 = !DILocation(line: 606, column: 45, scope: !1379)
!1495 = !DILocation(line: 606, column: 4, scope: !1379)
!1496 = !DILocation(line: 607, column: 4, scope: !1379)
!1497 = !DILocation(line: 614, column: 8, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 614, column: 8)
!1499 = !DILocation(line: 614, column: 14, scope: !1498)
!1500 = !DILocation(line: 614, column: 8, scope: !1379)
!1501 = !DILocation(line: 615, column: 18, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 614, column: 21)
!1503 = !DILocation(line: 615, column: 24, scope: !1502)
!1504 = !DILocation(line: 615, column: 16, scope: !1502)
!1505 = !DILocation(line: 616, column: 4, scope: !1502)
!1506 = !DILocation(line: 617, column: 22, scope: !1379)
!1507 = !DILocation(line: 617, column: 35, scope: !1379)
!1508 = !DILocation(line: 617, column: 43, scope: !1379)
!1509 = !DILocation(line: 618, column: 8, scope: !1379)
!1510 = !DILocation(line: 618, column: 14, scope: !1379)
!1511 = !DILocation(line: 617, column: 4, scope: !1379)
!1512 = !DILocation(line: 619, column: 4, scope: !1379)
!1513 = !DILocation(line: 623, column: 26, scope: !1379)
!1514 = !DILocation(line: 623, column: 16, scope: !1379)
!1515 = !DILocation(line: 626, column: 22, scope: !1379)
!1516 = !DILocation(line: 626, column: 13, scope: !1379)
!1517 = !DILocation(line: 626, column: 11, scope: !1379)
!1518 = !DILocation(line: 627, column: 22, scope: !1379)
!1519 = !DILocation(line: 627, column: 35, scope: !1379)
!1520 = !DILocation(line: 627, column: 43, scope: !1379)
!1521 = !DILocation(line: 628, column: 8, scope: !1379)
!1522 = !DILocation(line: 628, column: 14, scope: !1379)
!1523 = !DILocation(line: 627, column: 4, scope: !1379)
!1524 = !DILocation(line: 629, column: 4, scope: !1379)
!1525 = !DILocation(line: 635, column: 26, scope: !1379)
!1526 = !DILocation(line: 635, column: 16, scope: !1379)
!1527 = !DILocation(line: 638, column: 21, scope: !1379)
!1528 = !DILocation(line: 638, column: 13, scope: !1379)
!1529 = !DILocation(line: 638, column: 11, scope: !1379)
!1530 = !DILocation(line: 639, column: 22, scope: !1379)
!1531 = !DILocation(line: 639, column: 35, scope: !1379)
!1532 = !DILocation(line: 639, column: 43, scope: !1379)
!1533 = !DILocation(line: 640, column: 8, scope: !1379)
!1534 = !DILocation(line: 640, column: 14, scope: !1379)
!1535 = !DILocation(line: 639, column: 4, scope: !1379)
!1536 = !DILocation(line: 641, column: 4, scope: !1379)
!1537 = !DILocation(line: 645, column: 26, scope: !1379)
!1538 = !DILocation(line: 645, column: 16, scope: !1379)
!1539 = !DILocation(line: 648, column: 21, scope: !1379)
!1540 = !DILocation(line: 648, column: 13, scope: !1379)
!1541 = !DILocation(line: 648, column: 11, scope: !1379)
!1542 = !DILocation(line: 649, column: 22, scope: !1379)
!1543 = !DILocation(line: 649, column: 35, scope: !1379)
!1544 = !DILocation(line: 649, column: 43, scope: !1379)
!1545 = !DILocation(line: 650, column: 8, scope: !1379)
!1546 = !DILocation(line: 650, column: 14, scope: !1379)
!1547 = !DILocation(line: 649, column: 4, scope: !1379)
!1548 = !DILocation(line: 651, column: 4, scope: !1379)
!1549 = !DILocation(line: 655, column: 26, scope: !1379)
!1550 = !DILocation(line: 655, column: 16, scope: !1379)
!1551 = !DILocation(line: 658, column: 21, scope: !1379)
!1552 = !DILocation(line: 658, column: 13, scope: !1379)
!1553 = !DILocation(line: 658, column: 11, scope: !1379)
!1554 = !DILocation(line: 659, column: 22, scope: !1379)
!1555 = !DILocation(line: 659, column: 35, scope: !1379)
!1556 = !DILocation(line: 659, column: 43, scope: !1379)
!1557 = !DILocation(line: 660, column: 8, scope: !1379)
!1558 = !DILocation(line: 660, column: 14, scope: !1379)
!1559 = !DILocation(line: 659, column: 4, scope: !1379)
!1560 = !DILocation(line: 661, column: 4, scope: !1379)
!1561 = !DILocation(line: 667, column: 31, scope: !1379)
!1562 = !DILocation(line: 667, column: 36, scope: !1379)
!1563 = !DILocation(line: 667, column: 4, scope: !1379)
!1564 = !DILocation(line: 668, column: 4, scope: !1379)
!1565 = !DILocation(line: 675, column: 36, scope: !1379)
!1566 = !DILocation(line: 677, column: 8, scope: !1379)
!1567 = !DILocation(line: 676, column: 8, scope: !1379)
!1568 = !DILocation(line: 677, column: 20, scope: !1379)
!1569 = !DILocation(line: 675, column: 8, scope: !1379)
!1570 = !DILocation(line: 674, column: 15, scope: !1379)
!1571 = !DILocation(line: 678, column: 32, scope: !1379)
!1572 = !DILocation(line: 678, column: 44, scope: !1379)
!1573 = !DILocation(line: 678, column: 4, scope: !1379)
!1574 = !DILocation(line: 679, column: 4, scope: !1379)
!1575 = !DILocation(line: 687, column: 36, scope: !1379)
!1576 = !DILocation(line: 687, column: 41, scope: !1379)
!1577 = !DILocation(line: 687, column: 47, scope: !1379)
!1578 = !DILocation(line: 688, column: 8, scope: !1379)
!1579 = !DILocation(line: 687, column: 8, scope: !1379)
!1580 = !DILocation(line: 686, column: 15, scope: !1379)
!1581 = !DILocation(line: 689, column: 32, scope: !1379)
!1582 = !DILocation(line: 689, column: 44, scope: !1379)
!1583 = !DILocation(line: 689, column: 4, scope: !1379)
!1584 = !DILocation(line: 690, column: 4, scope: !1379)
!1585 = !DILocation(line: 696, column: 4, scope: !1379)
!1586 = !DILocation(line: 702, column: 4, scope: !1379)
!1587 = !DILocation(line: 709, column: 31, scope: !1379)
!1588 = !DILocation(line: 710, column: 11, scope: !1379)
!1589 = !DILocation(line: 710, column: 10, scope: !1379)
!1590 = !DILocation(line: 709, column: 8, scope: !1379)
!1591 = !DILocation(line: 708, column: 11, scope: !1379)
!1592 = !DILocation(line: 712, column: 4, scope: !1379)
!1593 = !DILocation(line: 713, column: 4, scope: !1379)
!1594 = !DILocation(line: 719, column: 8, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 719, column: 8)
!1596 = !DILocation(line: 719, column: 22, scope: !1595)
!1597 = !DILocation(line: 719, column: 28, scope: !1595)
!1598 = !DILocation(line: 719, column: 19, scope: !1595)
!1599 = !DILocation(line: 719, column: 8, scope: !1379)
!1600 = !DILocation(line: 720, column: 5, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 719, column: 35)
!1602 = !DILocation(line: 722, column: 4, scope: !1379)
!1603 = !DILocation(line: 728, column: 12, scope: !1379)
!1604 = !DILocation(line: 728, column: 4, scope: !1379)
!1605 = !DILocation(line: 731, column: 10, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 731, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 728, column: 34)
!1608 = !DILocation(line: 731, column: 9, scope: !1606)
!1609 = !DILocation(line: 733, column: 9, scope: !1606)
!1610 = !DILocation(line: 732, column: 31, scope: !1606)
!1611 = !DILocation(line: 731, column: 9, scope: !1607)
!1612 = !DILocation(line: 734, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 733, column: 30)
!1614 = !DILocation(line: 736, column: 5, scope: !1607)
!1615 = !DILocation(line: 740, column: 5, scope: !1607)
!1616 = !DILocation(line: 742, column: 5, scope: !1607)
!1617 = !DILocation(line: 744, column: 4, scope: !1379)
!1618 = !DILocation(line: 750, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 750, column: 8)
!1620 = !DILocation(line: 750, column: 8, scope: !1619)
!1621 = !DILocation(line: 752, column: 8, scope: !1619)
!1622 = !DILocation(line: 751, column: 30, scope: !1619)
!1623 = !DILocation(line: 750, column: 8, scope: !1379)
!1624 = !DILocation(line: 753, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 752, column: 29)
!1626 = !DILocation(line: 755, column: 4, scope: !1379)
!1627 = !DILocation(line: 759, column: 4, scope: !1379)
!1628 = !DILocation(line: 760, column: 4, scope: !1379)
!1629 = !DILocation(line: 763, column: 8, scope: !1371)
!1630 = !DILocation(line: 764, column: 7, scope: !1371)
!1631 = distinct !{!1631, !1368, !1632, !1292, !1293}
!1632 = !DILocation(line: 765, column: 2, scope: !1330)
!1633 = !DILocation(line: 767, column: 1, scope: !1330)
!1634 = !DILocation(line: 768, column: 2, scope: !1330)
!1635 = !DILocation(line: 769, column: 1, scope: !1330)
!1636 = !DISubprogram(name: "acpi_rs_set_resource_header", scope: !6, file: !6, line: 264, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !58, !1339, !519}
!1639 = !DISubprogram(name: "acpi_rs_set_resource_length", scope: !6, file: !6, line: 269, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1339, !519}
!1642 = !DISubprogram(name: "acpi_rs_set_address_common", scope: !6, file: !6, line: 221, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !519, !103}
!1645 = !DISubprogram(name: "acpi_rs_set_resource_source", scope: !6, file: !6, line: 259, type: !1646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1339, !519, !69, !1325}
!1648 = !DISubprogram(name: "acpi_rs_encode_bitmask", scope: !6, file: !6, line: 250, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!61, !57, !58}
