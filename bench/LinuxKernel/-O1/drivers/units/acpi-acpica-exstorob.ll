; ModuleID = 'drivers/acpi/acpica/exstorob.c'
source_filename = "drivers/acpi/acpica/exstorob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_store_buffer_to_buffer(ptr noundef %source_desc, ptr noundef %target_desc) #0 align 16 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %target_desc.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !820, metadata !DIExpression()), !dbg !824
  store ptr %target_desc, ptr %target_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_desc.addr, metadata !821, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #15, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %length, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !823, metadata !DIExpression()), !dbg !829
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !830
  %1 = load ptr, ptr %target_desc.addr, align 8, !dbg !832
  %cmp = icmp eq ptr %0, %1, !dbg !833
  br i1 %cmp, label %if.then, label %if.end, !dbg !834

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !835

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %source_desc.addr, align 8, !dbg !837
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %2, i32 0, i32 5, !dbg !837
  %3 = load ptr, ptr %pointer, align 8, !dbg !837
  %4 = ptrtoint ptr %3 to i64, !dbg !837
  %5 = inttoptr i64 %4 to ptr, !dbg !837
  store ptr %5, ptr %buffer, align 8, !dbg !838
  %6 = load ptr, ptr %source_desc.addr, align 8, !dbg !839
  %length1 = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 6, !dbg !840
  %7 = load i32, ptr %length1, align 8, !dbg !840
  store i32 %7, ptr %length, align 4, !dbg !841
  %8 = load ptr, ptr %target_desc.addr, align 8, !dbg !842
  %length2 = getelementptr inbounds %struct.acpi_object_buffer, ptr %8, i32 0, i32 6, !dbg !844
  %9 = load i32, ptr %length2, align 8, !dbg !844
  %cmp3 = icmp eq i32 %9, 0, !dbg !845
  br i1 %cmp3, label %if.then4, label %lor.lhs.false, !dbg !846

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %target_desc.addr, align 8, !dbg !847
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 4, !dbg !848
  %11 = load i8, ptr %flags, align 4, !dbg !848
  %conv = zext i8 %11 to i32, !dbg !847
  %and = and i32 %conv, 2, !dbg !849
  %tobool = icmp ne i32 %and, 0, !dbg !849
  br i1 %tobool, label %if.then4, label %if.end12, !dbg !850

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load i32, ptr %length, align 4, !dbg !851
  %conv5 = zext i32 %12 to i64, !dbg !851
  %call = call ptr @acpi_os_allocate(i64 noundef %conv5) #16, !dbg !851
  %13 = load ptr, ptr %target_desc.addr, align 8, !dbg !853
  %pointer6 = getelementptr inbounds %struct.acpi_object_buffer, ptr %13, i32 0, i32 5, !dbg !854
  store ptr %call, ptr %pointer6, align 8, !dbg !855
  %14 = load ptr, ptr %target_desc.addr, align 8, !dbg !856
  %pointer7 = getelementptr inbounds %struct.acpi_object_buffer, ptr %14, i32 0, i32 5, !dbg !858
  %15 = load ptr, ptr %pointer7, align 8, !dbg !858
  %tobool8 = icmp ne ptr %15, null, !dbg !856
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !859

if.then9:                                         ; preds = %if.then4
  store i32 4, ptr %retval, align 4, !dbg !860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !860

if.end10:                                         ; preds = %if.then4
  %16 = load i32, ptr %length, align 4, !dbg !862
  %17 = load ptr, ptr %target_desc.addr, align 8, !dbg !863
  %length11 = getelementptr inbounds %struct.acpi_object_buffer, ptr %17, i32 0, i32 6, !dbg !864
  store i32 %16, ptr %length11, align 8, !dbg !865
  br label %if.end12, !dbg !866

if.end12:                                         ; preds = %if.end10, %lor.lhs.false
  %18 = load i32, ptr %length, align 4, !dbg !867
  %19 = load ptr, ptr %target_desc.addr, align 8, !dbg !869
  %length13 = getelementptr inbounds %struct.acpi_object_buffer, ptr %19, i32 0, i32 6, !dbg !870
  %20 = load i32, ptr %length13, align 8, !dbg !870
  %cmp14 = icmp ule i32 %18, %20, !dbg !871
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !872

if.then16:                                        ; preds = %if.end12
  %21 = load ptr, ptr %target_desc.addr, align 8, !dbg !873
  %pointer17 = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 5, !dbg !875
  %22 = load ptr, ptr %pointer17, align 8, !dbg !875
  %23 = load ptr, ptr %target_desc.addr, align 8, !dbg !876
  %length18 = getelementptr inbounds %struct.acpi_object_buffer, ptr %23, i32 0, i32 6, !dbg !877
  %24 = load i32, ptr %length18, align 8, !dbg !877
  %conv19 = zext i32 %24 to i64, !dbg !876
  call void @llvm.memset.p0.i64(ptr align 1 %22, i8 0, i64 %conv19, i1 false), !dbg !878
  %25 = load ptr, ptr %target_desc.addr, align 8, !dbg !879
  %pointer20 = getelementptr inbounds %struct.acpi_object_buffer, ptr %25, i32 0, i32 5, !dbg !880
  %26 = load ptr, ptr %pointer20, align 8, !dbg !880
  %27 = load ptr, ptr %buffer, align 8, !dbg !881
  %28 = load i32, ptr %length, align 4, !dbg !882
  %conv21 = zext i32 %28 to i64, !dbg !882
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %conv21, i1 false), !dbg !883
  br label %if.end25, !dbg !884

if.else:                                          ; preds = %if.end12
  %29 = load ptr, ptr %target_desc.addr, align 8, !dbg !885
  %pointer22 = getelementptr inbounds %struct.acpi_object_buffer, ptr %29, i32 0, i32 5, !dbg !887
  %30 = load ptr, ptr %pointer22, align 8, !dbg !887
  %31 = load ptr, ptr %buffer, align 8, !dbg !888
  %32 = load ptr, ptr %target_desc.addr, align 8, !dbg !889
  %length23 = getelementptr inbounds %struct.acpi_object_buffer, ptr %32, i32 0, i32 6, !dbg !890
  %33 = load i32, ptr %length23, align 8, !dbg !890
  %conv24 = zext i32 %33 to i64, !dbg !889
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %31, i64 %conv24, i1 false), !dbg !891
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  %34 = load ptr, ptr %source_desc.addr, align 8, !dbg !892
  %flags26 = getelementptr inbounds %struct.acpi_object_buffer, ptr %34, i32 0, i32 4, !dbg !893
  %35 = load i8, ptr %flags26, align 4, !dbg !893
  %36 = load ptr, ptr %target_desc.addr, align 8, !dbg !894
  %flags27 = getelementptr inbounds %struct.acpi_object_buffer, ptr %36, i32 0, i32 4, !dbg !895
  store i8 %35, ptr %flags27, align 4, !dbg !896
  %37 = load ptr, ptr %target_desc.addr, align 8, !dbg !897
  %flags28 = getelementptr inbounds %struct.acpi_object_common, ptr %37, i32 0, i32 4, !dbg !898
  %38 = load i8, ptr %flags28, align 4, !dbg !899
  %conv29 = zext i8 %38 to i32, !dbg !899
  %and30 = and i32 %conv29, -3, !dbg !899
  %conv31 = trunc i32 %and30 to i8, !dbg !899
  store i8 %conv31, ptr %flags28, align 4, !dbg !899
  store i32 0, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

cleanup:                                          ; preds = %if.end25, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !901
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #15, !dbg !901
  %39 = load i32, ptr %retval, align 4, !dbg !901
  ret i32 %39, !dbg !901
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #3 align 16 !dbg !902 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !907, metadata !DIExpression()), !dbg !918
  %0 = load i64, ptr %size.addr, align 8, !dbg !919
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !908, metadata !DIExpression()), !dbg !920
  br label %do.body, !dbg !920

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !910, metadata !DIExpression()), !dbg !921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !913, metadata !DIExpression()), !dbg !921
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !921
  %conv = zext i1 %cmp to i32, !dbg !921
  store i32 1, ptr %tmp, align 4, !dbg !921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !922
  %1 = load i32, ptr %tmp, align 4, !dbg !921
  %call = call i64 @arch_local_save_flags() #16, !dbg !922
  store i64 %call, ptr %_flags, align 8, !dbg !922
  br label %do.cond, !dbg !922

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !922

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !914, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !917, metadata !DIExpression()), !dbg !923
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !923
  %conv6 = zext i1 %cmp5 to i32, !dbg !923
  store i32 1, ptr %tmp7, align 4, !dbg !923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !924
  %2 = load i32, ptr %tmp7, align 4, !dbg !923
  %3 = load i64, ptr %_flags, align 8, !dbg !924
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !924
  store i32 %call9, ptr %tmp8, align 4, !dbg !924
  %4 = load i32, ptr %tmp8, align 4, !dbg !924
  store i32 %4, ptr %tmp1, align 4, !dbg !922
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !925
  %5 = load i32, ptr %tmp1, align 4, !dbg !920
  %tobool = icmp ne i32 %5, 0, !dbg !925
  %6 = zext i1 %tobool to i64, !dbg !925
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !925
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !926
  ret ptr %call10, !dbg !927
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_store_string_to_string(ptr noundef %source_desc, ptr noundef %target_desc) #0 align 16 !dbg !928 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %target_desc.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !930, metadata !DIExpression()), !dbg !934
  store ptr %target_desc, ptr %target_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_desc.addr, metadata !931, metadata !DIExpression()), !dbg !935
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #15, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %length, metadata !932, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !933, metadata !DIExpression()), !dbg !939
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !940
  %1 = load ptr, ptr %target_desc.addr, align 8, !dbg !942
  %cmp = icmp eq ptr %0, %1, !dbg !943
  br i1 %cmp, label %if.then, label %if.end, !dbg !944

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %source_desc.addr, align 8, !dbg !947
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %2, i32 0, i32 5, !dbg !947
  %3 = load ptr, ptr %pointer, align 8, !dbg !947
  %4 = ptrtoint ptr %3 to i64, !dbg !947
  %5 = inttoptr i64 %4 to ptr, !dbg !947
  store ptr %5, ptr %buffer, align 8, !dbg !948
  %6 = load ptr, ptr %source_desc.addr, align 8, !dbg !949
  %length1 = getelementptr inbounds %struct.acpi_object_string, ptr %6, i32 0, i32 6, !dbg !950
  %7 = load i32, ptr %length1, align 8, !dbg !950
  store i32 %7, ptr %length, align 4, !dbg !951
  %8 = load i32, ptr %length, align 4, !dbg !952
  %9 = load ptr, ptr %target_desc.addr, align 8, !dbg !954
  %length2 = getelementptr inbounds %struct.acpi_object_string, ptr %9, i32 0, i32 6, !dbg !955
  %10 = load i32, ptr %length2, align 8, !dbg !955
  %cmp3 = icmp ult i32 %8, %10, !dbg !956
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !957

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %target_desc.addr, align 8, !dbg !958
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 4, !dbg !959
  %12 = load i8, ptr %flags, align 4, !dbg !959
  %conv = zext i8 %12 to i32, !dbg !958
  %and = and i32 %conv, 2, !dbg !960
  %tobool = icmp ne i32 %and, 0, !dbg !960
  br i1 %tobool, label %if.else, label %if.then4, !dbg !961

if.then4:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %target_desc.addr, align 8, !dbg !962
  %pointer5 = getelementptr inbounds %struct.acpi_object_string, ptr %13, i32 0, i32 5, !dbg !964
  %14 = load ptr, ptr %pointer5, align 8, !dbg !964
  %15 = load ptr, ptr %target_desc.addr, align 8, !dbg !965
  %length6 = getelementptr inbounds %struct.acpi_object_string, ptr %15, i32 0, i32 6, !dbg !966
  %16 = load i32, ptr %length6, align 8, !dbg !966
  %conv7 = zext i32 %16 to i64, !dbg !967
  %add = add i64 %conv7, 1, !dbg !968
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %add, i1 false), !dbg !969
  %17 = load ptr, ptr %target_desc.addr, align 8, !dbg !970
  %pointer8 = getelementptr inbounds %struct.acpi_object_string, ptr %17, i32 0, i32 5, !dbg !971
  %18 = load ptr, ptr %pointer8, align 8, !dbg !971
  %19 = load ptr, ptr %buffer, align 8, !dbg !972
  %20 = load i32, ptr %length, align 4, !dbg !973
  %conv9 = zext i32 %20 to i64, !dbg !973
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %conv9, i1 false), !dbg !974
  br label %if.end33, !dbg !975

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load ptr, ptr %target_desc.addr, align 8, !dbg !976
  %pointer10 = getelementptr inbounds %struct.acpi_object_string, ptr %21, i32 0, i32 5, !dbg !979
  %22 = load ptr, ptr %pointer10, align 8, !dbg !979
  %tobool11 = icmp ne ptr %22, null, !dbg !976
  br i1 %tobool11, label %land.lhs.true12, label %if.end19, !dbg !980

land.lhs.true12:                                  ; preds = %if.else
  %23 = load ptr, ptr %target_desc.addr, align 8, !dbg !981
  %flags13 = getelementptr inbounds %struct.acpi_object_common, ptr %23, i32 0, i32 4, !dbg !982
  %24 = load i8, ptr %flags13, align 4, !dbg !982
  %conv14 = zext i8 %24 to i32, !dbg !981
  %and15 = and i32 %conv14, 2, !dbg !983
  %tobool16 = icmp ne i32 %and15, 0, !dbg !983
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !984

if.then17:                                        ; preds = %land.lhs.true12
  %25 = load ptr, ptr %target_desc.addr, align 8, !dbg !985
  %pointer18 = getelementptr inbounds %struct.acpi_object_string, ptr %25, i32 0, i32 5, !dbg !985
  %26 = load ptr, ptr %pointer18, align 8, !dbg !985
  call void @acpi_os_free(ptr noundef %26) #16, !dbg !985
  br label %if.end19, !dbg !987

if.end19:                                         ; preds = %if.then17, %land.lhs.true12, %if.else
  %27 = load i32, ptr %length, align 4, !dbg !988
  %conv20 = zext i32 %27 to i64, !dbg !988
  %add21 = add i64 %conv20, 1, !dbg !988
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %add21) #16, !dbg !988
  %28 = load ptr, ptr %target_desc.addr, align 8, !dbg !989
  %pointer22 = getelementptr inbounds %struct.acpi_object_string, ptr %28, i32 0, i32 5, !dbg !990
  store ptr %call, ptr %pointer22, align 8, !dbg !991
  %29 = load ptr, ptr %target_desc.addr, align 8, !dbg !992
  %pointer23 = getelementptr inbounds %struct.acpi_object_string, ptr %29, i32 0, i32 5, !dbg !994
  %30 = load ptr, ptr %pointer23, align 8, !dbg !994
  %tobool24 = icmp ne ptr %30, null, !dbg !992
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !995

if.then25:                                        ; preds = %if.end19
  store i32 4, ptr %retval, align 4, !dbg !996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !996

if.end26:                                         ; preds = %if.end19
  %31 = load ptr, ptr %target_desc.addr, align 8, !dbg !998
  %flags27 = getelementptr inbounds %struct.acpi_object_common, ptr %31, i32 0, i32 4, !dbg !999
  %32 = load i8, ptr %flags27, align 4, !dbg !1000
  %conv28 = zext i8 %32 to i32, !dbg !1000
  %and29 = and i32 %conv28, -3, !dbg !1000
  %conv30 = trunc i32 %and29 to i8, !dbg !1000
  store i8 %conv30, ptr %flags27, align 4, !dbg !1000
  %33 = load ptr, ptr %target_desc.addr, align 8, !dbg !1001
  %pointer31 = getelementptr inbounds %struct.acpi_object_string, ptr %33, i32 0, i32 5, !dbg !1002
  %34 = load ptr, ptr %pointer31, align 8, !dbg !1002
  %35 = load ptr, ptr %buffer, align 8, !dbg !1003
  %36 = load i32, ptr %length, align 4, !dbg !1004
  %conv32 = zext i32 %36 to i64, !dbg !1004
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %conv32, i1 false), !dbg !1005
  br label %if.end33

if.end33:                                         ; preds = %if.end26, %if.then4
  %37 = load i32, ptr %length, align 4, !dbg !1006
  %38 = load ptr, ptr %target_desc.addr, align 8, !dbg !1007
  %length34 = getelementptr inbounds %struct.acpi_object_string, ptr %38, i32 0, i32 6, !dbg !1008
  store i32 %37, ptr %length34, align 8, !dbg !1009
  store i32 0, ptr %retval, align 4, !dbg !1010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1010

cleanup:                                          ; preds = %if.end33, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !1011
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #15, !dbg !1011
  %39 = load i32, ptr %retval, align 4, !dbg !1011
  ret i32 %39, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !1012 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1018
  call void @kfree(ptr noundef %0) #16, !dbg !1019
  ret void, !dbg !1020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !1021 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1023, metadata !DIExpression()), !dbg !1034
  %0 = load i64, ptr %size.addr, align 8, !dbg !1035
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1024, metadata !DIExpression()), !dbg !1036
  br label %do.body, !dbg !1036

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1026, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1029, metadata !DIExpression()), !dbg !1037
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1037
  %conv = zext i1 %cmp to i32, !dbg !1037
  store i32 1, ptr %tmp, align 4, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1038
  %1 = load i32, ptr %tmp, align 4, !dbg !1037
  %call = call i64 @arch_local_save_flags() #16, !dbg !1038
  store i64 %call, ptr %_flags, align 8, !dbg !1038
  br label %do.cond, !dbg !1038

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1038

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1030, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1033, metadata !DIExpression()), !dbg !1039
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1039
  %conv6 = zext i1 %cmp5 to i32, !dbg !1039
  store i32 1, ptr %tmp7, align 4, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !1040
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !1040
  %2 = load i32, ptr %tmp7, align 4, !dbg !1039
  %3 = load i64, ptr %_flags, align 8, !dbg !1040
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !1040
  store i32 %call9, ptr %tmp8, align 4, !dbg !1040
  %4 = load i32, ptr %tmp8, align 4, !dbg !1040
  store i32 %4, ptr %tmp1, align 4, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !1041
  %5 = load i32, ptr %tmp1, align 4, !dbg !1036
  %tobool = icmp ne i32 %5, 0, !dbg !1041
  %6 = zext i1 %tobool to i64, !dbg !1041
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1041
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !1042
  ret ptr %call10, !dbg !1043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1044 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1052, metadata !DIExpression()), !dbg !1057
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1053, metadata !DIExpression()), !dbg !1058
  %0 = load i64, ptr %size.addr, align 8, !dbg !1059
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1060
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1061

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1062
  %tobool = icmp ne i64 %2, 0, !dbg !1062
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1063

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1054, metadata !DIExpression()), !dbg !1065
  %3 = load i64, ptr %size.addr, align 8, !dbg !1066
  %cmp = icmp ugt i64 %3, 8192, !dbg !1068
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1069

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1070
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1071
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1072
  store ptr %call, ptr %retval, align 8, !dbg !1073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1073

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1074
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1074
  store i32 %call2, ptr %index, align 4, !dbg !1075
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1076
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1077
  %9 = ptrtoint ptr %8 to i64, !dbg !1077
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1078
  %idxprom = zext i32 %call3 to i64, !dbg !1079
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1079
  %10 = load i32, ptr %index, align 4, !dbg !1080
  %idxprom4 = zext i32 %10 to i64, !dbg !1079
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1079
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1079
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1081
  %13 = load i64, ptr %size.addr, align 8, !dbg !1082
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1083
  store ptr %call6, ptr %retval, align 8, !dbg !1084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1084

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1085
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1086
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1087
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1088
  store ptr %call8, ptr %retval, align 8, !dbg !1089
  br label %return, !dbg !1089

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1090
  ret ptr %16, !dbg !1090
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1091 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !1095
  ret i64 %call, !dbg !1096
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1097 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1104
  %and = and i64 %0, 512, !dbg !1105
  %tobool = icmp ne i64 %and, 0, !dbg !1106
  %lnot = xor i1 %tobool, true, !dbg !1106
  %lnot.ext = zext i1 %lnot to i32, !dbg !1106
  ret i32 %lnot.ext, !dbg !1107
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1108 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1109 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1115, metadata !DIExpression()), !dbg !1117
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1116, metadata !DIExpression()), !dbg !1118
  %0 = load i64, ptr %size.addr, align 8, !dbg !1119
  %tobool = icmp ne i64 %0, 0, !dbg !1119
  br i1 %tobool, label %if.end, label %if.then, !dbg !1121

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1123
  %cmp = icmp ule i64 %1, 8, !dbg !1125
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1126

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1127
  br label %return, !dbg !1127

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1128
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1130
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1131

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1132
  %cmp4 = icmp ule i64 %3, 96, !dbg !1133
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1134

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1135
  br label %return, !dbg !1135

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1136
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1138
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1139

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1140
  %cmp9 = icmp ule i64 %5, 192, !dbg !1141
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1142

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1143
  br label %return, !dbg !1143

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1144
  %cmp12 = icmp ule i64 %6, 8, !dbg !1146
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1147

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1148
  br label %return, !dbg !1148

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1149
  %cmp15 = icmp ule i64 %7, 16, !dbg !1151
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1152

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1153
  br label %return, !dbg !1153

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1154
  %cmp18 = icmp ule i64 %8, 32, !dbg !1156
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1157

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1158
  br label %return, !dbg !1158

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1159
  %cmp21 = icmp ule i64 %9, 64, !dbg !1161
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1162

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1163
  br label %return, !dbg !1163

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1164
  %cmp24 = icmp ule i64 %10, 128, !dbg !1166
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1167

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1168
  br label %return, !dbg !1168

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1169
  %cmp27 = icmp ule i64 %11, 256, !dbg !1171
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1172

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1173
  br label %return, !dbg !1173

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1174
  %cmp30 = icmp ule i64 %12, 512, !dbg !1176
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1177

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1178
  br label %return, !dbg !1178

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1179
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1181
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1182

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1184
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1186
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1187

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1188
  br label %return, !dbg !1188

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1189
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1191
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1192

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1193
  br label %return, !dbg !1193

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1194
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1196
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1197

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1198
  br label %return, !dbg !1198

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1199
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1201
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1202

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1203
  br label %return, !dbg !1203

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1204
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1206
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1207

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1208
  br label %return, !dbg !1208

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1209
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1211
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1212

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1213
  br label %return, !dbg !1213

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1214
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1216
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1217

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1219
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1221
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1222

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1223
  br label %return, !dbg !1223

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1224
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1226
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1227

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1229
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1231
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1232

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1233
  br label %return, !dbg !1233

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1234
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1236
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1237

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1238
  br label %return, !dbg !1238

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1239, !range !1241, !noundef !1242
  %tobool69 = trunc i8 %25 to i1, !dbg !1239
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1243

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1244

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !1245, !srcloc !1248
  unreachable, !dbg !1245

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1249

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1250

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1251

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1253

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1251

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !1255, !srcloc !1257
  br label %do.end75, !dbg !1255

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1251

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1258
  br label %return, !dbg !1258

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1259
  ret i32 %26, !dbg !1259
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1260 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1266 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1270, metadata !DIExpression()), !dbg !1272
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1271, metadata !DIExpression()), !dbg !1273
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1274
  %and = and i32 %0, 17, !dbg !1274
  %cmp = icmp eq i32 %and, 0, !dbg !1274
  %lnot = xor i1 %cmp, true, !dbg !1274
  %lnot1 = xor i1 %lnot, true, !dbg !1274
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1274
  %conv = sext i32 %lnot.ext to i64, !dbg !1274
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1274
  %tobool = icmp ne i64 %expval, 0, !dbg !1274
  br i1 %tobool, label %if.then, label %if.end, !dbg !1276

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1277
  br label %return, !dbg !1277

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1278
  %and2 = and i32 %1, 1, !dbg !1280
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1280
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1281

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1282
  br label %return, !dbg !1282

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1283
  br label %return, !dbg !1283

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1285
  ret i32 %2, !dbg !1285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1286 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1287 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !1290 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1292, metadata !DIExpression()), !dbg !1294
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !1295, !srcloc !1296
  %0 = load i64, ptr %flags, align 8, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !1298
  ret i64 %0, !dbg !1299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1300 dso_local void @kfree(ptr noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !1305 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1307, metadata !DIExpression()), !dbg !1309
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1308, metadata !DIExpression()), !dbg !1310
  %0 = load i64, ptr %size.addr, align 8, !dbg !1311
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1312
  %or = or i32 %1, 256, !dbg !1313
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1314
  ret ptr %call, !dbg !1315
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exstorob.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exstorob\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exstorob.ll drivers/acpi/acpica/exstorob.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !44, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "drivers/acpi/acpica/exstorob.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6fdc3a26f6bfa27476211d982172f918")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!19 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!20 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!23 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!24 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!25 = !{!26, !32, !36, !39, !43, !38}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !27, line: 421, baseType: !28)
!27 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !12)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !37, line: 42, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !27, line: 127, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !12)
!44 = !{!0}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 8, !"cf-protection-branch", i32 1}
!49 = !{i32 4, !"function_return_thunk_extern", i32 1}
!50 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{i32 1, !"override-stack-alignment", i32 8}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = distinct !DISubprogram(name: "acpi_ex_store_buffer_to_buffer", scope: !8, file: !8, line: 30, type: !55, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !819)
!55 = !DISubroutineType(types: !56)
!56 = !{!26, !57, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !59, line: 369, size: 576, elements: !60)
!59 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!60 = !{!61, !72, !85, !96, !131, !145, !155, !468, !485, !501, !514, !592, !604, !618, !628, !646, !668, !687, !706, !725, !738, !765, !782, !795, !809, !818}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !58, file: !59, line: 370, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !59, line: 73, size: 128, elements: !63)
!63 = !{!64, !65, !66, !67, !71}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !59, line: 74, baseType: !57, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !59, line: 74, baseType: !33, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !59, line: 74, baseType: !33, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !59, line: 74, baseType: !68, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !70)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !59, line: 74, baseType: !33, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !58, file: !59, line: 371, baseType: !73, size: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !59, line: 76, size: 192, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !84}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !73, file: !59, line: 77, baseType: !57, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !59, line: 77, baseType: !33, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !59, line: 77, baseType: !33, size: 8, offset: 72)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !73, file: !59, line: 77, baseType: !68, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !59, line: 77, baseType: !33, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !73, file: !59, line: 77, baseType: !81, size: 24, offset: 104)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 3)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !73, file: !59, line: 78, baseType: !40, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !58, file: !59, line: 372, baseType: !86, size: 256)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !59, line: 93, size: 256, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !95}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !59, line: 94, baseType: !57, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !59, line: 94, baseType: !33, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !59, line: 94, baseType: !33, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !59, line: 94, baseType: !68, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !59, line: 94, baseType: !33, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !59, line: 94, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !59, line: 94, baseType: !28, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !58, file: !59, line: 373, baseType: !97, size: 384)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !59, line: 97, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !59, line: 98, baseType: !57, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !59, line: 98, baseType: !33, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !59, line: 98, baseType: !33, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !59, line: 98, baseType: !68, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !59, line: 98, baseType: !33, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !97, file: !59, line: 98, baseType: !32, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !97, file: !59, line: 98, baseType: !28, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !97, file: !59, line: 99, baseType: !28, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !97, file: !59, line: 100, baseType: !32, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !59, line: 101, baseType: !109, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !111, line: 133, size: 384, elements: !112)
!111 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!112 = !{!113, !114, !115, !116, !117, !126, !127, !128, !129}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !110, file: !111, line: 134, baseType: !57, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !111, line: 135, baseType: !33, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !111, line: 136, baseType: !33, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !111, line: 137, baseType: !68, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 138, baseType: !118, size: 32, offset: 96)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !119, line: 328, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !118, file: !119, line: 329, baseType: !28, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !118, file: !119, line: 330, baseType: !123, size: 32)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !110, file: !111, line: 139, baseType: !109, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !110, file: !111, line: 140, baseType: !109, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !110, file: !111, line: 141, baseType: !109, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !110, file: !111, line: 142, baseType: !130, size: 16, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !27, line: 445, baseType: !68)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !58, file: !59, line: 374, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !59, line: 104, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !142, !143, !144}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !59, line: 105, baseType: !57, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !59, line: 105, baseType: !33, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !59, line: 105, baseType: !33, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !59, line: 105, baseType: !68, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !59, line: 105, baseType: !33, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !132, file: !59, line: 105, baseType: !109, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !132, file: !59, line: 106, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !132, file: !59, line: 107, baseType: !32, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !132, file: !59, line: 108, baseType: !28, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !132, file: !59, line: 109, baseType: !28, size: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !58, file: !59, line: 375, baseType: !146, size: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !59, line: 118, size: 192, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !59, line: 119, baseType: !57, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !59, line: 119, baseType: !33, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !59, line: 119, baseType: !33, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !59, line: 119, baseType: !68, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !59, line: 119, baseType: !33, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !146, file: !59, line: 119, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !58, file: !59, line: 376, baseType: !156, size: 448)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !59, line: 144, size: 448, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !465, !466, !467}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !59, line: 145, baseType: !57, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !59, line: 145, baseType: !33, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !59, line: 145, baseType: !33, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !59, line: 145, baseType: !68, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !59, line: 145, baseType: !33, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !156, file: !59, line: 145, baseType: !33, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !156, file: !59, line: 146, baseType: !33, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !156, file: !59, line: 147, baseType: !33, size: 8, offset: 120)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !156, file: !59, line: 148, baseType: !57, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !156, file: !59, line: 149, baseType: !57, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !59, line: 150, baseType: !32, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !156, file: !59, line: 154, baseType: !170, size: 64, offset: 320)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !59, line: 151, size: 64, elements: !171)
!171 = !{!172, !464}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !170, file: !59, line: 152, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !111, line: 248, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!26, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !179, line: 37, size: 9024, elements: !180)
!179 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !410, !411, !412, !413, !414, !418, !420, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !447, !448, !449, !450, !451, !452, !453, !454, !456, !462}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 38, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !178, file: !179, line: 39, baseType: !33, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !178, file: !179, line: 40, baseType: !33, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !178, file: !179, line: 41, baseType: !68, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !178, file: !179, line: 42, baseType: !33, size: 8, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !178, file: !179, line: 43, baseType: !33, size: 8, offset: 104)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !178, file: !179, line: 44, baseType: !33, size: 8, offset: 112)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !178, file: !179, line: 45, baseType: !130, size: 16, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !178, file: !179, line: 46, baseType: !33, size: 8, offset: 144)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !178, file: !179, line: 47, baseType: !33, size: 8, offset: 152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !178, file: !179, line: 48, baseType: !33, size: 8, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !178, file: !179, line: 49, baseType: !33, size: 8, offset: 168)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !178, file: !179, line: 50, baseType: !33, size: 8, offset: 176)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !178, file: !179, line: 51, baseType: !33, size: 8, offset: 184)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !178, file: !179, line: 52, baseType: !33, size: 8, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !178, file: !179, line: 53, baseType: !33, size: 8, offset: 200)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !178, file: !179, line: 54, baseType: !32, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !178, file: !179, line: 55, baseType: !28, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !178, file: !179, line: 56, baseType: !28, size: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !178, file: !179, line: 57, baseType: !28, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !178, file: !179, line: 58, baseType: !28, size: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !178, file: !179, line: 60, baseType: !203, size: 640, offset: 448)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !111, line: 909, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !291, !292, !408, !409}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !203, file: !111, line: 910, baseType: !32, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !111, line: 911, baseType: !32, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !203, file: !111, line: 912, baseType: !32, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !203, file: !111, line: 913, baseType: !32, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !203, file: !111, line: 914, baseType: !32, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !203, file: !111, line: 915, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !111, line: 891, size: 1600, elements: !213)
!213 = !{!214, !234, !250}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !212, file: !111, line: 892, baseType: !215, size: 448)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !111, line: 844, size: 448, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !233}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !111, line: 845, baseType: !211, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !111, line: 845, baseType: !33, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !111, line: 845, baseType: !33, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !111, line: 845, baseType: !68, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !111, line: 845, baseType: !32, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !111, line: 845, baseType: !211, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !111, line: 845, baseType: !109, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !111, line: 845, baseType: !225, size: 64, offset: 320)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !111, line: 732, size: 64, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !225, file: !111, line: 733, baseType: !40, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !111, line: 734, baseType: !28, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !225, file: !111, line: 735, baseType: !94, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !225, file: !111, line: 736, baseType: !32, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !111, line: 737, baseType: !94, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !225, file: !111, line: 738, baseType: !211, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !111, line: 845, baseType: !33, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !212, file: !111, line: 893, baseType: !235, size: 640)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !111, line: 851, size: 640, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !111, line: 852, baseType: !211, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !111, line: 852, baseType: !33, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !111, line: 852, baseType: !33, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !111, line: 852, baseType: !68, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !111, line: 852, baseType: !32, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !111, line: 852, baseType: !211, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !111, line: 852, baseType: !109, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !111, line: 852, baseType: !225, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !111, line: 852, baseType: !33, size: 8, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !235, file: !111, line: 852, baseType: !94, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !111, line: 853, baseType: !32, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !235, file: !111, line: 854, baseType: !28, size: 32, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !111, line: 855, baseType: !28, size: 32, offset: 608)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !212, file: !111, line: 894, baseType: !251, size: 1600)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !111, line: 862, size: 1600, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !111, line: 863, baseType: !211, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !111, line: 863, baseType: !33, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !111, line: 863, baseType: !33, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !251, file: !111, line: 863, baseType: !68, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !251, file: !111, line: 863, baseType: !32, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !111, line: 863, baseType: !211, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !251, file: !111, line: 863, baseType: !109, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !111, line: 863, baseType: !225, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !251, file: !111, line: 863, baseType: !33, size: 8, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !251, file: !111, line: 863, baseType: !211, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !251, file: !111, line: 864, baseType: !211, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !251, file: !111, line: 865, baseType: !94, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !251, file: !111, line: 866, baseType: !33, size: 8, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !251, file: !111, line: 867, baseType: !94, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !251, file: !111, line: 868, baseType: !94, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !251, file: !111, line: 869, baseType: !94, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !251, file: !111, line: 870, baseType: !123, size: 32, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !251, file: !111, line: 871, baseType: !28, size: 32, offset: 928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !251, file: !111, line: 872, baseType: !28, size: 32, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !251, file: !111, line: 873, baseType: !28, size: 32, offset: 992)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !251, file: !111, line: 874, baseType: !28, size: 32, offset: 1024)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !251, file: !111, line: 875, baseType: !28, size: 32, offset: 1056)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !251, file: !111, line: 876, baseType: !28, size: 32, offset: 1088)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !251, file: !111, line: 877, baseType: !28, size: 32, offset: 1120)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !251, file: !111, line: 878, baseType: !28, size: 32, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !251, file: !111, line: 879, baseType: !28, size: 32, offset: 1184)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !251, file: !111, line: 880, baseType: !28, size: 32, offset: 1216)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !251, file: !111, line: 881, baseType: !28, size: 32, offset: 1248)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !251, file: !111, line: 882, baseType: !28, size: 32, offset: 1280)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !251, file: !111, line: 883, baseType: !28, size: 32, offset: 1312)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !251, file: !111, line: 884, baseType: !68, size: 16, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !251, file: !111, line: 885, baseType: !33, size: 8, offset: 1360)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !251, file: !111, line: 886, baseType: !33, size: 8, offset: 1368)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !251, file: !111, line: 887, baseType: !33, size: 8, offset: 1376)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !251, file: !111, line: 888, baseType: !288, size: 160, offset: 1384)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 20)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !203, file: !111, line: 916, baseType: !109, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !203, file: !111, line: 917, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !111, line: 679, size: 640, elements: !295)
!295 = !{!296, !304, !317, !326, !335, !348, !362, !374, !386}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !294, file: !111, line: 680, baseType: !297, size: 128)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !111, line: 575, size: 128, elements: !298)
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !111, line: 576, baseType: !154, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !111, line: 576, baseType: !33, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !111, line: 576, baseType: !33, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !111, line: 576, baseType: !68, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !111, line: 576, baseType: !68, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !294, file: !111, line: 681, baseType: !305, size: 384)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !111, line: 604, size: 384, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !111, line: 605, baseType: !154, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !111, line: 605, baseType: !33, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !111, line: 605, baseType: !33, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !111, line: 605, baseType: !68, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !111, line: 605, baseType: !68, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !305, file: !111, line: 606, baseType: !68, size: 16, offset: 112)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !305, file: !111, line: 607, baseType: !211, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !305, file: !111, line: 608, baseType: !32, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !305, file: !111, line: 609, baseType: !32, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !305, file: !111, line: 610, baseType: !40, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !294, file: !111, line: 682, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !111, line: 582, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !111, line: 583, baseType: !154, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !111, line: 583, baseType: !33, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !111, line: 583, baseType: !33, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !111, line: 583, baseType: !68, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !111, line: 583, baseType: !68, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !318, file: !111, line: 584, baseType: !57, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !294, file: !111, line: 683, baseType: !327, size: 192)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !111, line: 616, size: 192, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !111, line: 617, baseType: !154, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !111, line: 617, baseType: !33, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !111, line: 617, baseType: !33, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !111, line: 617, baseType: !68, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !111, line: 617, baseType: !68, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !327, file: !111, line: 618, baseType: !109, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !294, file: !111, line: 684, baseType: !336, size: 448)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !111, line: 621, size: 448, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !111, line: 622, baseType: !154, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !111, line: 622, baseType: !33, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !111, line: 622, baseType: !33, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !111, line: 622, baseType: !68, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !111, line: 622, baseType: !68, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !336, file: !111, line: 623, baseType: !28, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !336, file: !111, line: 624, baseType: !211, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !336, file: !111, line: 625, baseType: !32, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !336, file: !111, line: 626, baseType: !32, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !336, file: !111, line: 627, baseType: !28, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !294, file: !111, line: 685, baseType: !349, size: 512)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !111, line: 590, size: 512, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !111, line: 591, baseType: !154, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !111, line: 591, baseType: !33, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !111, line: 591, baseType: !33, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !111, line: 591, baseType: !68, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !111, line: 591, baseType: !68, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !349, file: !111, line: 592, baseType: !28, size: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !349, file: !111, line: 593, baseType: !57, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !349, file: !111, line: 594, baseType: !57, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !349, file: !111, line: 595, baseType: !177, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !349, file: !111, line: 596, baseType: !154, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !349, file: !111, line: 597, baseType: !28, size: 32, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !294, file: !111, line: 686, baseType: !363, size: 320)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !111, line: 634, size: 320, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !111, line: 635, baseType: !154, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !111, line: 635, baseType: !33, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !111, line: 635, baseType: !33, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !111, line: 635, baseType: !68, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !111, line: 635, baseType: !68, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !363, file: !111, line: 636, baseType: !33, size: 8, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !363, file: !111, line: 637, baseType: !177, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !363, file: !111, line: 638, baseType: !57, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !363, file: !111, line: 639, baseType: !40, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !294, file: !111, line: 687, baseType: !375, size: 640)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !111, line: 646, size: 640, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !111, line: 647, baseType: !154, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !111, line: 647, baseType: !33, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !111, line: 647, baseType: !33, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !375, file: !111, line: 647, baseType: !68, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !111, line: 647, baseType: !68, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !375, file: !111, line: 648, baseType: !383, size: 512, offset: 128)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 512, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !294, file: !111, line: 688, baseType: !387, size: 320)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !111, line: 669, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !111, line: 670, baseType: !154, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !387, file: !111, line: 670, baseType: !33, size: 8, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !111, line: 670, baseType: !33, size: 8, offset: 72)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !387, file: !111, line: 670, baseType: !68, size: 16, offset: 80)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !387, file: !111, line: 670, baseType: !68, size: 16, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !387, file: !111, line: 671, baseType: !33, size: 8, offset: 112)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !387, file: !111, line: 672, baseType: !109, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !387, file: !111, line: 673, baseType: !57, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !387, file: !111, line: 674, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !111, line: 660, size: 128, elements: !400)
!400 = !{!401, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !399, file: !111, line: 661, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !27, line: 1061, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406, !28, !154}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !27, line: 424, baseType: !154)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !399, file: !111, line: 662, baseType: !154, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !203, file: !111, line: 918, baseType: !211, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !203, file: !111, line: 919, baseType: !28, size: 32, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !178, file: !179, line: 61, baseType: !28, size: 32, offset: 1088)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !178, file: !179, line: 62, baseType: !28, size: 32, offset: 1120)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !178, file: !179, line: 63, baseType: !68, size: 16, offset: 1152)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !178, file: !179, line: 64, baseType: !33, size: 8, offset: 1168)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !178, file: !179, line: 66, baseType: !415, size: 2688, offset: 1216)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2688, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !178, file: !179, line: 67, baseType: !419, size: 3072, offset: 3904)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 3072, elements: !384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !178, file: !179, line: 68, baseType: !421, size: 576, offset: 6976)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 576, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 9)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !178, file: !179, line: 69, baseType: !141, size: 64, offset: 7552)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !178, file: !179, line: 71, baseType: !32, size: 64, offset: 7616)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !178, file: !179, line: 72, baseType: !141, size: 64, offset: 7680)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !178, file: !179, line: 73, baseType: !293, size: 64, offset: 7744)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !178, file: !179, line: 74, baseType: !109, size: 64, offset: 7808)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !178, file: !179, line: 75, baseType: !57, size: 64, offset: 7872)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !178, file: !179, line: 76, baseType: !109, size: 64, offset: 7936)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !178, file: !179, line: 77, baseType: !211, size: 64, offset: 8000)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !178, file: !179, line: 78, baseType: !57, size: 64, offset: 8064)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !178, file: !179, line: 79, baseType: !109, size: 64, offset: 8128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !178, file: !179, line: 80, baseType: !94, size: 64, offset: 8192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !178, file: !179, line: 81, baseType: !211, size: 64, offset: 8256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !178, file: !179, line: 82, baseType: !437, size: 64, offset: 8320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !111, line: 718, size: 128, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !439, file: !111, line: 722, baseType: !28, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !439, file: !111, line: 723, baseType: !28, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !111, line: 724, baseType: !68, size: 16, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !439, file: !111, line: 725, baseType: !33, size: 8, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !439, file: !111, line: 726, baseType: !33, size: 8, offset: 88)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !111, line: 727, baseType: !33, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !178, file: !179, line: 83, baseType: !211, size: 64, offset: 8384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !178, file: !179, line: 84, baseType: !57, size: 64, offset: 8448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !178, file: !179, line: 85, baseType: !293, size: 64, offset: 8512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !178, file: !179, line: 86, baseType: !57, size: 64, offset: 8576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !178, file: !179, line: 87, baseType: !293, size: 64, offset: 8640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !178, file: !179, line: 88, baseType: !211, size: 64, offset: 8704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !178, file: !179, line: 89, baseType: !211, size: 64, offset: 8768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !178, file: !179, line: 90, baseType: !455, size: 64, offset: 8832)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !178, file: !179, line: 91, baseType: !457, size: 64, offset: 8896)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !111, line: 652, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!26, !177, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !178, file: !179, line: 92, baseType: !463, size: 64, offset: 8960)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !111, line: 656, baseType: !174)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !170, file: !59, line: 153, baseType: !57, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !156, file: !59, line: 156, baseType: !28, size: 32, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !59, line: 157, baseType: !130, size: 16, offset: 416)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !156, file: !59, line: 158, baseType: !33, size: 8, offset: 432)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !58, file: !59, line: 377, baseType: !469, size: 576)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !59, line: 122, size: 576, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !59, line: 123, baseType: !57, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !59, line: 123, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !59, line: 123, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !59, line: 123, baseType: !68, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !59, line: 123, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !469, file: !59, line: 123, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !469, file: !59, line: 124, baseType: !68, size: 16, offset: 112)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !469, file: !59, line: 125, baseType: !154, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !469, file: !59, line: 126, baseType: !40, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !469, file: !59, line: 127, baseType: !455, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !469, file: !59, line: 128, baseType: !57, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !59, line: 129, baseType: !57, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !59, line: 130, baseType: !109, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !469, file: !59, line: 131, baseType: !33, size: 8, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !58, file: !59, line: 378, baseType: !486, size: 512)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !59, line: 134, size: 512, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !499, !500}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !59, line: 135, baseType: !57, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !59, line: 135, baseType: !33, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !59, line: 135, baseType: !33, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !59, line: 135, baseType: !68, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !59, line: 135, baseType: !33, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !486, file: !59, line: 135, baseType: !33, size: 8, offset: 104)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !59, line: 136, baseType: !109, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !59, line: 137, baseType: !57, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !59, line: 138, baseType: !57, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !486, file: !59, line: 139, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !27, line: 129, baseType: !40)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !486, file: !59, line: 140, baseType: !28, size: 32, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !486, file: !59, line: 141, baseType: !154, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !58, file: !59, line: 379, baseType: !502, size: 320)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !59, line: 185, size: 320, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !513}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !59, line: 186, baseType: !57, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !59, line: 186, baseType: !33, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !59, line: 186, baseType: !33, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !59, line: 186, baseType: !68, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !59, line: 186, baseType: !33, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !502, file: !59, line: 186, baseType: !510, size: 128, offset: 128)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 2)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !59, line: 186, baseType: !57, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !58, file: !59, line: 380, baseType: !515, size: 384)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !59, line: 188, size: 384, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !515, file: !59, line: 189, baseType: !57, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !515, file: !59, line: 189, baseType: !33, size: 8, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !515, file: !59, line: 189, baseType: !33, size: 8, offset: 72)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !515, file: !59, line: 189, baseType: !68, size: 16, offset: 80)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !59, line: 189, baseType: !33, size: 8, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !515, file: !59, line: 190, baseType: !510, size: 128, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !515, file: !59, line: 190, baseType: !57, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !515, file: !59, line: 190, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !111, line: 480, size: 576, elements: !527)
!527 = !{!528, !529, !530, !531, !539, !554, !586, !587, !588, !589, !590, !591}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !111, line: 481, baseType: !109, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !526, file: !111, line: 482, baseType: !525, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !111, line: 483, baseType: !525, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !526, file: !111, line: 484, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !111, line: 497, size: 256, elements: !534)
!534 = !{!535, !536, !537, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !533, file: !111, line: 498, baseType: !532, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !111, line: 499, baseType: !532, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !533, file: !111, line: 500, baseType: !525, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !533, file: !111, line: 501, baseType: !28, size: 32, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !111, line: 485, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !111, line: 466, size: 320, elements: !542)
!542 = !{!543, !548, !549, !550, !551, !552, !553}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !541, file: !111, line: 467, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !111, line: 459, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !544, file: !111, line: 460, baseType: !33, size: 8)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !544, file: !111, line: 461, baseType: !40, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !541, file: !111, line: 468, baseType: !544, size: 128, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !541, file: !111, line: 469, baseType: !68, size: 16, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !541, file: !111, line: 470, baseType: !33, size: 8, offset: 272)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !541, file: !111, line: 471, baseType: !33, size: 8, offset: 280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !541, file: !111, line: 472, baseType: !33, size: 8, offset: 288)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !541, file: !111, line: 473, baseType: !33, size: 8, offset: 296)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !526, file: !111, line: 486, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !111, line: 448, size: 192, elements: !557)
!557 = !{!558, !581, !582, !583, !584, !585}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !556, file: !111, line: 449, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !111, line: 438, size: 64, elements: !560)
!560 = !{!561, !562, !575}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !559, file: !111, line: 439, baseType: !109, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !559, file: !111, line: 440, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !111, line: 419, size: 256, elements: !565)
!565 = !{!566, !571, !572, !573, !574}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !564, file: !111, line: 420, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !27, line: 1058, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!28, !406, !28, !154}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !564, file: !111, line: 421, baseType: !154, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !564, file: !111, line: 422, baseType: !109, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !564, file: !111, line: 423, baseType: !33, size: 8, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !564, file: !111, line: 424, baseType: !33, size: 8, offset: 200)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !559, file: !111, line: 441, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !111, line: 429, size: 128, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !577, file: !111, line: 430, baseType: !109, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !577, file: !111, line: 431, baseType: !576, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !556, file: !111, line: 450, baseType: !540, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !111, line: 451, baseType: !33, size: 8, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !556, file: !111, line: 452, baseType: !33, size: 8, offset: 136)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !556, file: !111, line: 453, baseType: !33, size: 8, offset: 144)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !556, file: !111, line: 454, baseType: !33, size: 8, offset: 152)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !111, line: 487, baseType: !40, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !526, file: !111, line: 488, baseType: !28, size: 32, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !526, file: !111, line: 489, baseType: !68, size: 16, offset: 480)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !526, file: !111, line: 490, baseType: !68, size: 16, offset: 496)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !111, line: 491, baseType: !33, size: 8, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !526, file: !111, line: 492, baseType: !33, size: 8, offset: 520)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !58, file: !59, line: 381, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !59, line: 193, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !59, line: 194, baseType: !57, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !59, line: 194, baseType: !33, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !59, line: 194, baseType: !33, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !59, line: 194, baseType: !68, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !59, line: 194, baseType: !33, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !593, file: !59, line: 194, baseType: !510, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !593, file: !59, line: 194, baseType: !57, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !593, file: !59, line: 194, baseType: !28, size: 32, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !593, file: !59, line: 195, baseType: !28, size: 32, offset: 352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !58, file: !59, line: 382, baseType: !605, size: 384)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !59, line: 198, size: 384, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !59, line: 199, baseType: !57, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !59, line: 199, baseType: !33, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !59, line: 199, baseType: !33, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !59, line: 199, baseType: !68, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !59, line: 199, baseType: !33, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !605, file: !59, line: 201, baseType: !33, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !605, file: !59, line: 202, baseType: !33, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !605, file: !59, line: 203, baseType: !510, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !605, file: !59, line: 203, baseType: !57, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !605, file: !59, line: 203, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !27, line: 128, baseType: !40)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !58, file: !59, line: 383, baseType: !619, size: 320)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !59, line: 206, size: 320, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !59, line: 207, baseType: !57, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !59, line: 207, baseType: !33, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !59, line: 207, baseType: !33, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !59, line: 207, baseType: !68, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !59, line: 207, baseType: !33, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !619, file: !59, line: 207, baseType: !510, size: 128, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !619, file: !59, line: 207, baseType: !57, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !58, file: !59, line: 384, baseType: !629, size: 384)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !59, line: 234, size: 384, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !59, line: 235, baseType: !57, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !59, line: 235, baseType: !68, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !59, line: 235, baseType: !109, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !59, line: 235, baseType: !28, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !59, line: 235, baseType: !28, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !59, line: 235, baseType: !28, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !59, line: 235, baseType: !33, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !629, file: !59, line: 235, baseType: !57, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !58, file: !59, line: 385, baseType: !647, size: 576)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !59, line: 238, size: 576, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !59, line: 239, baseType: !57, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !59, line: 239, baseType: !68, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !59, line: 239, baseType: !109, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !647, file: !59, line: 239, baseType: !28, size: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !647, file: !59, line: 239, baseType: !28, size: 32, offset: 224)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !647, file: !59, line: 239, baseType: !28, size: 32, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 288)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !647, file: !59, line: 239, baseType: !33, size: 8, offset: 296)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !647, file: !59, line: 239, baseType: !68, size: 16, offset: 304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !647, file: !59, line: 240, baseType: !57, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !647, file: !59, line: 241, baseType: !32, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !647, file: !59, line: 242, baseType: !68, size: 16, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !647, file: !59, line: 243, baseType: !32, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !58, file: !59, line: 386, baseType: !669, size: 384)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !59, line: 263, size: 384, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !669, file: !59, line: 264, baseType: !57, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !669, file: !59, line: 264, baseType: !68, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 104)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 112)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 120)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !669, file: !59, line: 264, baseType: !109, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !669, file: !59, line: 264, baseType: !28, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !669, file: !59, line: 264, baseType: !28, size: 32, offset: 224)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !669, file: !59, line: 264, baseType: !28, size: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 288)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 296)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !669, file: !59, line: 264, baseType: !33, size: 8, offset: 304)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !669, file: !59, line: 265, baseType: !57, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !58, file: !59, line: 387, baseType: !688, size: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !59, line: 246, size: 448, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !59, line: 247, baseType: !57, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !59, line: 247, baseType: !68, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 104)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 112)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 120)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !688, file: !59, line: 247, baseType: !109, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !688, file: !59, line: 247, baseType: !28, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !688, file: !59, line: 247, baseType: !28, size: 32, offset: 224)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !688, file: !59, line: 247, baseType: !28, size: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !688, file: !59, line: 247, baseType: !33, size: 8, offset: 296)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !688, file: !59, line: 247, baseType: !57, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !688, file: !59, line: 248, baseType: !57, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !58, file: !59, line: 388, baseType: !707, size: 448)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !59, line: 251, size: 448, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !59, line: 252, baseType: !57, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !59, line: 252, baseType: !68, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 120)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !59, line: 252, baseType: !109, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !707, file: !59, line: 252, baseType: !28, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !707, file: !59, line: 252, baseType: !28, size: 32, offset: 224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !707, file: !59, line: 252, baseType: !28, size: 32, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 288)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !707, file: !59, line: 252, baseType: !33, size: 8, offset: 296)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !707, file: !59, line: 257, baseType: !57, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !707, file: !59, line: 258, baseType: !57, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !58, file: !59, line: 389, baseType: !726, size: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !59, line: 274, size: 512, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !59, line: 275, baseType: !57, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !59, line: 275, baseType: !33, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !59, line: 275, baseType: !33, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !59, line: 275, baseType: !68, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !59, line: 275, baseType: !33, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !59, line: 275, baseType: !109, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !726, file: !59, line: 276, baseType: !28, size: 32, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !726, file: !59, line: 277, baseType: !402, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !59, line: 278, baseType: !154, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !59, line: 279, baseType: !510, size: 128, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !58, file: !59, line: 390, baseType: !739, size: 576)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !59, line: 282, size: 576, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !754, !755, !756, !757, !763, !764}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !59, line: 283, baseType: !57, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !59, line: 283, baseType: !33, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !59, line: 283, baseType: !33, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !59, line: 283, baseType: !68, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !59, line: 283, baseType: !33, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !739, file: !59, line: 283, baseType: !33, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !739, file: !59, line: 284, baseType: !33, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !739, file: !59, line: 285, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !27, line: 1093, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!26, !28, !498, !28, !753, !154, !154}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !59, line: 286, baseType: !109, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !739, file: !59, line: 287, baseType: !154, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !739, file: !59, line: 288, baseType: !154, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !739, file: !59, line: 289, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !27, line: 1126, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!26, !406, !28, !154, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !739, file: !59, line: 290, baseType: !57, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !59, line: 291, baseType: !57, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !58, file: !59, line: 391, baseType: !766, size: 512)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !59, line: 309, size: 512, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !59, line: 310, baseType: !57, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !59, line: 310, baseType: !33, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !59, line: 310, baseType: !33, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !59, line: 310, baseType: !68, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !59, line: 310, baseType: !33, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !766, file: !59, line: 310, baseType: !33, size: 8, offset: 104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !766, file: !59, line: 311, baseType: !33, size: 8, offset: 112)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !766, file: !59, line: 312, baseType: !33, size: 8, offset: 120)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !766, file: !59, line: 313, baseType: !154, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !766, file: !59, line: 314, baseType: !109, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !766, file: !59, line: 315, baseType: !141, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !766, file: !59, line: 316, baseType: !32, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !766, file: !59, line: 317, baseType: !32, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !766, file: !59, line: 318, baseType: !28, size: 32, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !58, file: !59, line: 392, baseType: !783, size: 448)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !59, line: 342, size: 448, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !59, line: 343, baseType: !57, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !59, line: 343, baseType: !33, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !59, line: 343, baseType: !33, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !59, line: 343, baseType: !68, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !59, line: 343, baseType: !33, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !783, file: !59, line: 343, baseType: !109, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !783, file: !59, line: 344, baseType: !109, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !783, file: !59, line: 345, baseType: !154, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !783, file: !59, line: 346, baseType: !32, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !783, file: !59, line: 347, baseType: !28, size: 32, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !59, line: 393, baseType: !796, size: 256)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !59, line: 352, size: 256, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !808}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !59, line: 353, baseType: !57, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !59, line: 353, baseType: !33, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !59, line: 353, baseType: !33, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !59, line: 353, baseType: !68, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !59, line: 353, baseType: !33, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !796, file: !59, line: 353, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !27, line: 1064, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !406, !154}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !796, file: !59, line: 354, baseType: !154, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !58, file: !59, line: 394, baseType: !810, size: 192)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !59, line: 359, size: 192, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !810, file: !59, line: 360, baseType: !57, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !810, file: !59, line: 360, baseType: !33, size: 8, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !59, line: 360, baseType: !33, size: 8, offset: 72)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !810, file: !59, line: 360, baseType: !68, size: 16, offset: 80)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !810, file: !59, line: 360, baseType: !33, size: 8, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !810, file: !59, line: 360, baseType: !57, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !59, line: 401, baseType: !110, size: 384)
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "source_desc", arg: 1, scope: !54, file: !8, line: 30, type: !57)
!821 = !DILocalVariable(name: "target_desc", arg: 2, scope: !54, file: !8, line: 31, type: !57)
!822 = !DILocalVariable(name: "length", scope: !54, file: !8, line: 33, type: !28)
!823 = !DILocalVariable(name: "buffer", scope: !54, file: !8, line: 34, type: !32)
!824 = !DILocation(line: 30, column: 59, scope: !54)
!825 = !DILocation(line: 31, column: 38, scope: !54)
!826 = !DILocation(line: 33, column: 2, scope: !54)
!827 = !DILocation(line: 33, column: 6, scope: !54)
!828 = !DILocation(line: 34, column: 2, scope: !54)
!829 = !DILocation(line: 34, column: 6, scope: !54)
!830 = !DILocation(line: 40, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !54, file: !8, line: 40, column: 6)
!832 = !DILocation(line: 40, column: 21, scope: !831)
!833 = !DILocation(line: 40, column: 18, scope: !831)
!834 = !DILocation(line: 40, column: 6, scope: !54)
!835 = !DILocation(line: 41, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !8, line: 40, column: 34)
!837 = !DILocation(line: 46, column: 11, scope: !54)
!838 = !DILocation(line: 46, column: 9, scope: !54)
!839 = !DILocation(line: 47, column: 11, scope: !54)
!840 = !DILocation(line: 47, column: 31, scope: !54)
!841 = !DILocation(line: 47, column: 9, scope: !54)
!842 = !DILocation(line: 53, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !54, file: !8, line: 53, column: 6)
!844 = !DILocation(line: 53, column: 27, scope: !843)
!845 = !DILocation(line: 53, column: 34, scope: !843)
!846 = !DILocation(line: 53, column: 40, scope: !843)
!847 = !DILocation(line: 54, column: 7, scope: !843)
!848 = !DILocation(line: 54, column: 27, scope: !843)
!849 = !DILocation(line: 54, column: 33, scope: !843)
!850 = !DILocation(line: 53, column: 6, scope: !54)
!851 = !DILocation(line: 55, column: 33, scope: !852)
!852 = distinct !DILexicalBlock(scope: !843, file: !8, line: 54, column: 59)
!853 = !DILocation(line: 55, column: 3, scope: !852)
!854 = !DILocation(line: 55, column: 23, scope: !852)
!855 = !DILocation(line: 55, column: 31, scope: !852)
!856 = !DILocation(line: 56, column: 8, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !8, line: 56, column: 7)
!858 = !DILocation(line: 56, column: 28, scope: !857)
!859 = !DILocation(line: 56, column: 7, scope: !852)
!860 = !DILocation(line: 57, column: 4, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !8, line: 56, column: 37)
!862 = !DILocation(line: 60, column: 32, scope: !852)
!863 = !DILocation(line: 60, column: 3, scope: !852)
!864 = !DILocation(line: 60, column: 23, scope: !852)
!865 = !DILocation(line: 60, column: 30, scope: !852)
!866 = !DILocation(line: 61, column: 2, scope: !852)
!867 = !DILocation(line: 65, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !54, file: !8, line: 65, column: 6)
!869 = !DILocation(line: 65, column: 16, scope: !868)
!870 = !DILocation(line: 65, column: 36, scope: !868)
!871 = !DILocation(line: 65, column: 13, scope: !868)
!872 = !DILocation(line: 65, column: 6, scope: !54)
!873 = !DILocation(line: 69, column: 10, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !8, line: 65, column: 44)
!875 = !DILocation(line: 69, column: 30, scope: !874)
!876 = !DILocation(line: 70, column: 10, scope: !874)
!877 = !DILocation(line: 70, column: 30, scope: !874)
!878 = !DILocation(line: 69, column: 3, scope: !874)
!879 = !DILocation(line: 71, column: 10, scope: !874)
!880 = !DILocation(line: 71, column: 30, scope: !874)
!881 = !DILocation(line: 71, column: 39, scope: !874)
!882 = !DILocation(line: 71, column: 47, scope: !874)
!883 = !DILocation(line: 71, column: 3, scope: !874)
!884 = !DILocation(line: 95, column: 2, scope: !874)
!885 = !DILocation(line: 98, column: 10, scope: !886)
!886 = distinct !DILexicalBlock(scope: !868, file: !8, line: 95, column: 9)
!887 = !DILocation(line: 98, column: 30, scope: !886)
!888 = !DILocation(line: 98, column: 39, scope: !886)
!889 = !DILocation(line: 99, column: 10, scope: !886)
!890 = !DILocation(line: 99, column: 30, scope: !886)
!891 = !DILocation(line: 98, column: 3, scope: !886)
!892 = !DILocation(line: 108, column: 30, scope: !54)
!893 = !DILocation(line: 108, column: 50, scope: !54)
!894 = !DILocation(line: 108, column: 2, scope: !54)
!895 = !DILocation(line: 108, column: 22, scope: !54)
!896 = !DILocation(line: 108, column: 28, scope: !54)
!897 = !DILocation(line: 109, column: 2, scope: !54)
!898 = !DILocation(line: 109, column: 22, scope: !54)
!899 = !DILocation(line: 109, column: 28, scope: !54)
!900 = !DILocation(line: 110, column: 2, scope: !54)
!901 = !DILocation(line: 111, column: 1, scope: !54)
!902 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !903, file: !903, line: 50, type: !904, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !906)
!903 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!904 = !DISubroutineType(types: !905)
!905 = !{!154, !39}
!906 = !{!907, !908, !910, !913, !914, !917}
!907 = !DILocalVariable(name: "size", arg: 1, scope: !902, file: !903, line: 50, type: !39)
!908 = !DILocalVariable(name: "_flags", scope: !909, file: !903, line: 52, type: !38)
!909 = distinct !DILexicalBlock(scope: !902, file: !903, line: 52, column: 23)
!910 = !DILocalVariable(name: "__dummy", scope: !911, file: !903, line: 52, type: !38)
!911 = distinct !DILexicalBlock(scope: !912, file: !903, line: 52, column: 23)
!912 = distinct !DILexicalBlock(scope: !909, file: !903, line: 52, column: 23)
!913 = !DILocalVariable(name: "__dummy2", scope: !911, file: !903, line: 52, type: !38)
!914 = !DILocalVariable(name: "__dummy", scope: !915, file: !903, line: 52, type: !38)
!915 = distinct !DILexicalBlock(scope: !916, file: !903, line: 52, column: 23)
!916 = distinct !DILexicalBlock(scope: !909, file: !903, line: 52, column: 23)
!917 = !DILocalVariable(name: "__dummy2", scope: !915, file: !903, line: 52, type: !38)
!918 = !DILocation(line: 50, column: 48, scope: !902)
!919 = !DILocation(line: 52, column: 17, scope: !902)
!920 = !DILocation(line: 52, column: 23, scope: !909)
!921 = !DILocation(line: 52, column: 23, scope: !911)
!922 = !DILocation(line: 52, column: 23, scope: !912)
!923 = !DILocation(line: 52, column: 23, scope: !915)
!924 = !DILocation(line: 52, column: 23, scope: !916)
!925 = !DILocation(line: 52, column: 23, scope: !902)
!926 = !DILocation(line: 52, column: 9, scope: !902)
!927 = !DILocation(line: 52, column: 2, scope: !902)
!928 = distinct !DISubprogram(name: "acpi_ex_store_string_to_string", scope: !8, file: !8, line: 127, type: !55, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !929)
!929 = !{!930, !931, !932, !933}
!930 = !DILocalVariable(name: "source_desc", arg: 1, scope: !928, file: !8, line: 127, type: !57)
!931 = !DILocalVariable(name: "target_desc", arg: 2, scope: !928, file: !8, line: 128, type: !57)
!932 = !DILocalVariable(name: "length", scope: !928, file: !8, line: 130, type: !28)
!933 = !DILocalVariable(name: "buffer", scope: !928, file: !8, line: 131, type: !32)
!934 = !DILocation(line: 127, column: 59, scope: !928)
!935 = !DILocation(line: 128, column: 38, scope: !928)
!936 = !DILocation(line: 130, column: 2, scope: !928)
!937 = !DILocation(line: 130, column: 6, scope: !928)
!938 = !DILocation(line: 131, column: 2, scope: !928)
!939 = !DILocation(line: 131, column: 6, scope: !928)
!940 = !DILocation(line: 137, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !928, file: !8, line: 137, column: 6)
!942 = !DILocation(line: 137, column: 21, scope: !941)
!943 = !DILocation(line: 137, column: 18, scope: !941)
!944 = !DILocation(line: 137, column: 6, scope: !928)
!945 = !DILocation(line: 138, column: 3, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !8, line: 137, column: 34)
!947 = !DILocation(line: 143, column: 11, scope: !928)
!948 = !DILocation(line: 143, column: 9, scope: !928)
!949 = !DILocation(line: 144, column: 11, scope: !928)
!950 = !DILocation(line: 144, column: 31, scope: !928)
!951 = !DILocation(line: 144, column: 9, scope: !928)
!952 = !DILocation(line: 150, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !928, file: !8, line: 150, column: 6)
!954 = !DILocation(line: 150, column: 16, scope: !953)
!955 = !DILocation(line: 150, column: 36, scope: !953)
!956 = !DILocation(line: 150, column: 14, scope: !953)
!957 = !DILocation(line: 150, column: 44, scope: !953)
!958 = !DILocation(line: 151, column: 9, scope: !953)
!959 = !DILocation(line: 151, column: 29, scope: !953)
!960 = !DILocation(line: 151, column: 35, scope: !953)
!961 = !DILocation(line: 150, column: 6, scope: !928)
!962 = !DILocation(line: 156, column: 10, scope: !963)
!963 = distinct !DILexicalBlock(scope: !953, file: !8, line: 151, column: 62)
!964 = !DILocation(line: 156, column: 30, scope: !963)
!965 = !DILocation(line: 157, column: 21, scope: !963)
!966 = !DILocation(line: 157, column: 41, scope: !963)
!967 = !DILocation(line: 157, column: 10, scope: !963)
!968 = !DILocation(line: 157, column: 48, scope: !963)
!969 = !DILocation(line: 156, column: 3, scope: !963)
!970 = !DILocation(line: 158, column: 10, scope: !963)
!971 = !DILocation(line: 158, column: 30, scope: !963)
!972 = !DILocation(line: 158, column: 39, scope: !963)
!973 = !DILocation(line: 158, column: 47, scope: !963)
!974 = !DILocation(line: 158, column: 3, scope: !963)
!975 = !DILocation(line: 159, column: 2, scope: !963)
!976 = !DILocation(line: 164, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !8, line: 164, column: 7)
!978 = distinct !DILexicalBlock(scope: !953, file: !8, line: 159, column: 9)
!979 = !DILocation(line: 164, column: 27, scope: !977)
!980 = !DILocation(line: 164, column: 35, scope: !977)
!981 = !DILocation(line: 165, column: 10, scope: !977)
!982 = !DILocation(line: 165, column: 30, scope: !977)
!983 = !DILocation(line: 165, column: 36, scope: !977)
!984 = !DILocation(line: 164, column: 7, scope: !978)
!985 = !DILocation(line: 169, column: 4, scope: !986)
!986 = distinct !DILexicalBlock(scope: !977, file: !8, line: 165, column: 63)
!987 = !DILocation(line: 170, column: 3, scope: !986)
!988 = !DILocation(line: 173, column: 7, scope: !978)
!989 = !DILocation(line: 172, column: 3, scope: !978)
!990 = !DILocation(line: 172, column: 23, scope: !978)
!991 = !DILocation(line: 172, column: 31, scope: !978)
!992 = !DILocation(line: 175, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !978, file: !8, line: 175, column: 7)
!994 = !DILocation(line: 175, column: 28, scope: !993)
!995 = !DILocation(line: 175, column: 7, scope: !978)
!996 = !DILocation(line: 176, column: 4, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !8, line: 175, column: 37)
!998 = !DILocation(line: 179, column: 3, scope: !978)
!999 = !DILocation(line: 179, column: 23, scope: !978)
!1000 = !DILocation(line: 179, column: 29, scope: !978)
!1001 = !DILocation(line: 180, column: 10, scope: !978)
!1002 = !DILocation(line: 180, column: 30, scope: !978)
!1003 = !DILocation(line: 180, column: 39, scope: !978)
!1004 = !DILocation(line: 180, column: 47, scope: !978)
!1005 = !DILocation(line: 180, column: 3, scope: !978)
!1006 = !DILocation(line: 185, column: 31, scope: !928)
!1007 = !DILocation(line: 185, column: 2, scope: !928)
!1008 = !DILocation(line: 185, column: 22, scope: !928)
!1009 = !DILocation(line: 185, column: 29, scope: !928)
!1010 = !DILocation(line: 186, column: 2, scope: !928)
!1011 = !DILocation(line: 187, column: 1, scope: !928)
!1012 = distinct !DISubprogram(name: "acpi_os_free", scope: !903, file: !903, line: 60, type: !1013, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !154}
!1015 = !{!1016}
!1016 = !DILocalVariable(name: "memory", arg: 1, scope: !1012, file: !903, line: 60, type: !154)
!1017 = !DILocation(line: 60, column: 39, scope: !1012)
!1018 = !DILocation(line: 62, column: 8, scope: !1012)
!1019 = !DILocation(line: 62, column: 2, scope: !1012)
!1020 = !DILocation(line: 63, column: 1, scope: !1012)
!1021 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !903, file: !903, line: 55, type: !904, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1022)
!1022 = !{!1023, !1024, !1026, !1029, !1030, !1033}
!1023 = !DILocalVariable(name: "size", arg: 1, scope: !1021, file: !903, line: 55, type: !39)
!1024 = !DILocalVariable(name: "_flags", scope: !1025, file: !903, line: 57, type: !38)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !903, line: 57, column: 23)
!1026 = !DILocalVariable(name: "__dummy", scope: !1027, file: !903, line: 57, type: !38)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !903, line: 57, column: 23)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !903, line: 57, column: 23)
!1029 = !DILocalVariable(name: "__dummy2", scope: !1027, file: !903, line: 57, type: !38)
!1030 = !DILocalVariable(name: "__dummy", scope: !1031, file: !903, line: 57, type: !38)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !903, line: 57, column: 23)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !903, line: 57, column: 23)
!1033 = !DILocalVariable(name: "__dummy2", scope: !1031, file: !903, line: 57, type: !38)
!1034 = !DILocation(line: 55, column: 55, scope: !1021)
!1035 = !DILocation(line: 57, column: 17, scope: !1021)
!1036 = !DILocation(line: 57, column: 23, scope: !1025)
!1037 = !DILocation(line: 57, column: 23, scope: !1027)
!1038 = !DILocation(line: 57, column: 23, scope: !1028)
!1039 = !DILocation(line: 57, column: 23, scope: !1031)
!1040 = !DILocation(line: 57, column: 23, scope: !1032)
!1041 = !DILocation(line: 57, column: 23, scope: !1021)
!1042 = !DILocation(line: 57, column: 9, scope: !1021)
!1043 = !DILocation(line: 57, column: 2, scope: !1021)
!1044 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !1045, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1051)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!154, !1047, !43}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1049, line: 72, baseType: !1050)
!1049 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1049, line: 16, baseType: !38)
!1051 = !{!1052, !1053, !1054}
!1052 = !DILocalVariable(name: "size", arg: 1, scope: !1044, file: !2, line: 591, type: !1047)
!1053 = !DILocalVariable(name: "flags", arg: 2, scope: !1044, file: !2, line: 591, type: !43)
!1054 = !DILocalVariable(name: "index", scope: !1055, file: !2, line: 594, type: !12)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 593, column: 42)
!1056 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 593, column: 6)
!1057 = !DILocation(line: 591, column: 61, scope: !1044)
!1058 = !DILocation(line: 591, column: 73, scope: !1044)
!1059 = !DILocation(line: 593, column: 27, scope: !1056)
!1060 = !DILocation(line: 593, column: 6, scope: !1056)
!1061 = !DILocation(line: 593, column: 33, scope: !1056)
!1062 = !DILocation(line: 593, column: 36, scope: !1056)
!1063 = !DILocation(line: 593, column: 6, scope: !1044)
!1064 = !DILocation(line: 594, column: 3, scope: !1055)
!1065 = !DILocation(line: 594, column: 16, scope: !1055)
!1066 = !DILocation(line: 596, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 596, column: 7)
!1068 = !DILocation(line: 596, column: 12, scope: !1067)
!1069 = !DILocation(line: 596, column: 7, scope: !1055)
!1070 = !DILocation(line: 597, column: 25, scope: !1067)
!1071 = !DILocation(line: 597, column: 31, scope: !1067)
!1072 = !DILocation(line: 597, column: 11, scope: !1067)
!1073 = !DILocation(line: 597, column: 4, scope: !1067)
!1074 = !DILocation(line: 599, column: 11, scope: !1055)
!1075 = !DILocation(line: 599, column: 9, scope: !1055)
!1076 = !DILocation(line: 601, column: 33, scope: !1055)
!1077 = !DILocation(line: 601, column: 40, scope: !1055)
!1078 = !DILocation(line: 601, column: 20, scope: !1055)
!1079 = !DILocation(line: 601, column: 5, scope: !1055)
!1080 = !DILocation(line: 601, column: 51, scope: !1055)
!1081 = !DILocation(line: 602, column: 5, scope: !1055)
!1082 = !DILocation(line: 602, column: 12, scope: !1055)
!1083 = !DILocation(line: 600, column: 10, scope: !1055)
!1084 = !DILocation(line: 600, column: 3, scope: !1055)
!1085 = !DILocation(line: 603, column: 2, scope: !1056)
!1086 = !DILocation(line: 604, column: 19, scope: !1044)
!1087 = !DILocation(line: 604, column: 25, scope: !1044)
!1088 = !DILocation(line: 604, column: 9, scope: !1044)
!1089 = !DILocation(line: 604, column: 2, scope: !1044)
!1090 = !DILocation(line: 605, column: 1, scope: !1044)
!1091 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1092, file: !1092, line: 65, type: !1093, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!1092 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!38}
!1095 = !DILocation(line: 67, column: 9, scope: !1091)
!1096 = !DILocation(line: 67, column: 2, scope: !1091)
!1097 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1092, file: !1092, line: 120, type: !1098, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1101)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !38}
!1100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "flags", arg: 1, scope: !1097, file: !1092, line: 120, type: !38)
!1103 = !DILocation(line: 120, column: 67, scope: !1097)
!1104 = !DILocation(line: 122, column: 11, scope: !1097)
!1105 = !DILocation(line: 122, column: 17, scope: !1097)
!1106 = !DILocation(line: 122, column: 9, scope: !1097)
!1107 = !DILocation(line: 122, column: 2, scope: !1097)
!1108 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !1110, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1114)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!12, !1047, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !1113)
!1113 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "size", arg: 1, scope: !1109, file: !2, line: 444, type: !1047)
!1116 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1109, file: !2, line: 445, type: !1112)
!1117 = !DILocation(line: 444, column: 60, scope: !1109)
!1118 = !DILocation(line: 445, column: 16, scope: !1109)
!1119 = !DILocation(line: 447, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 447, column: 6)
!1121 = !DILocation(line: 447, column: 6, scope: !1109)
!1122 = !DILocation(line: 448, column: 3, scope: !1120)
!1123 = !DILocation(line: 450, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 450, column: 6)
!1125 = !DILocation(line: 450, column: 11, scope: !1124)
!1126 = !DILocation(line: 450, column: 6, scope: !1109)
!1127 = !DILocation(line: 451, column: 3, scope: !1124)
!1128 = !DILocation(line: 453, column: 32, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 453, column: 6)
!1130 = !DILocation(line: 453, column: 37, scope: !1129)
!1131 = !DILocation(line: 453, column: 42, scope: !1129)
!1132 = !DILocation(line: 453, column: 45, scope: !1129)
!1133 = !DILocation(line: 453, column: 50, scope: !1129)
!1134 = !DILocation(line: 453, column: 6, scope: !1109)
!1135 = !DILocation(line: 454, column: 3, scope: !1129)
!1136 = !DILocation(line: 455, column: 32, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 455, column: 6)
!1138 = !DILocation(line: 455, column: 37, scope: !1137)
!1139 = !DILocation(line: 455, column: 43, scope: !1137)
!1140 = !DILocation(line: 455, column: 46, scope: !1137)
!1141 = !DILocation(line: 455, column: 51, scope: !1137)
!1142 = !DILocation(line: 455, column: 6, scope: !1109)
!1143 = !DILocation(line: 456, column: 3, scope: !1137)
!1144 = !DILocation(line: 457, column: 6, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 457, column: 6)
!1146 = !DILocation(line: 457, column: 11, scope: !1145)
!1147 = !DILocation(line: 457, column: 6, scope: !1109)
!1148 = !DILocation(line: 457, column: 26, scope: !1145)
!1149 = !DILocation(line: 458, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 458, column: 6)
!1151 = !DILocation(line: 458, column: 11, scope: !1150)
!1152 = !DILocation(line: 458, column: 6, scope: !1109)
!1153 = !DILocation(line: 458, column: 26, scope: !1150)
!1154 = !DILocation(line: 459, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 459, column: 6)
!1156 = !DILocation(line: 459, column: 11, scope: !1155)
!1157 = !DILocation(line: 459, column: 6, scope: !1109)
!1158 = !DILocation(line: 459, column: 26, scope: !1155)
!1159 = !DILocation(line: 460, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 460, column: 6)
!1161 = !DILocation(line: 460, column: 11, scope: !1160)
!1162 = !DILocation(line: 460, column: 6, scope: !1109)
!1163 = !DILocation(line: 460, column: 26, scope: !1160)
!1164 = !DILocation(line: 461, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 461, column: 6)
!1166 = !DILocation(line: 461, column: 11, scope: !1165)
!1167 = !DILocation(line: 461, column: 6, scope: !1109)
!1168 = !DILocation(line: 461, column: 26, scope: !1165)
!1169 = !DILocation(line: 462, column: 6, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 462, column: 6)
!1171 = !DILocation(line: 462, column: 11, scope: !1170)
!1172 = !DILocation(line: 462, column: 6, scope: !1109)
!1173 = !DILocation(line: 462, column: 26, scope: !1170)
!1174 = !DILocation(line: 463, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 463, column: 6)
!1176 = !DILocation(line: 463, column: 11, scope: !1175)
!1177 = !DILocation(line: 463, column: 6, scope: !1109)
!1178 = !DILocation(line: 463, column: 26, scope: !1175)
!1179 = !DILocation(line: 464, column: 6, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 464, column: 6)
!1181 = !DILocation(line: 464, column: 11, scope: !1180)
!1182 = !DILocation(line: 464, column: 6, scope: !1109)
!1183 = !DILocation(line: 464, column: 26, scope: !1180)
!1184 = !DILocation(line: 465, column: 6, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 465, column: 6)
!1186 = !DILocation(line: 465, column: 11, scope: !1185)
!1187 = !DILocation(line: 465, column: 6, scope: !1109)
!1188 = !DILocation(line: 465, column: 26, scope: !1185)
!1189 = !DILocation(line: 466, column: 6, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 466, column: 6)
!1191 = !DILocation(line: 466, column: 11, scope: !1190)
!1192 = !DILocation(line: 466, column: 6, scope: !1109)
!1193 = !DILocation(line: 466, column: 26, scope: !1190)
!1194 = !DILocation(line: 467, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 467, column: 6)
!1196 = !DILocation(line: 467, column: 11, scope: !1195)
!1197 = !DILocation(line: 467, column: 6, scope: !1109)
!1198 = !DILocation(line: 467, column: 26, scope: !1195)
!1199 = !DILocation(line: 468, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 468, column: 6)
!1201 = !DILocation(line: 468, column: 11, scope: !1200)
!1202 = !DILocation(line: 468, column: 6, scope: !1109)
!1203 = !DILocation(line: 468, column: 26, scope: !1200)
!1204 = !DILocation(line: 469, column: 6, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 469, column: 6)
!1206 = !DILocation(line: 469, column: 11, scope: !1205)
!1207 = !DILocation(line: 469, column: 6, scope: !1109)
!1208 = !DILocation(line: 469, column: 26, scope: !1205)
!1209 = !DILocation(line: 470, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 470, column: 6)
!1211 = !DILocation(line: 470, column: 11, scope: !1210)
!1212 = !DILocation(line: 470, column: 6, scope: !1109)
!1213 = !DILocation(line: 470, column: 26, scope: !1210)
!1214 = !DILocation(line: 471, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 471, column: 6)
!1216 = !DILocation(line: 471, column: 11, scope: !1215)
!1217 = !DILocation(line: 471, column: 6, scope: !1109)
!1218 = !DILocation(line: 471, column: 26, scope: !1215)
!1219 = !DILocation(line: 472, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 472, column: 6)
!1221 = !DILocation(line: 472, column: 11, scope: !1220)
!1222 = !DILocation(line: 472, column: 6, scope: !1109)
!1223 = !DILocation(line: 472, column: 26, scope: !1220)
!1224 = !DILocation(line: 473, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 473, column: 6)
!1226 = !DILocation(line: 473, column: 11, scope: !1225)
!1227 = !DILocation(line: 473, column: 6, scope: !1109)
!1228 = !DILocation(line: 473, column: 26, scope: !1225)
!1229 = !DILocation(line: 474, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 474, column: 6)
!1231 = !DILocation(line: 474, column: 11, scope: !1230)
!1232 = !DILocation(line: 474, column: 6, scope: !1109)
!1233 = !DILocation(line: 474, column: 27, scope: !1230)
!1234 = !DILocation(line: 475, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 475, column: 6)
!1236 = !DILocation(line: 475, column: 11, scope: !1235)
!1237 = !DILocation(line: 475, column: 6, scope: !1109)
!1238 = !DILocation(line: 475, column: 32, scope: !1235)
!1239 = !DILocation(line: 477, column: 50, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 477, column: 6)
!1241 = !{i8 0, i8 2}
!1242 = !{}
!1243 = !DILocation(line: 477, column: 6, scope: !1109)
!1244 = !DILocation(line: 478, column: 3, scope: !1240)
!1245 = !DILocation(line: 478, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 478, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 478, column: 3)
!1248 = !{i32 -2143044291}
!1249 = !DILocation(line: 478, column: 3, scope: !1247)
!1250 = !DILocation(line: 480, column: 3, scope: !1240)
!1251 = !DILocation(line: 480, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 480, column: 3)
!1253 = !DILocation(line: 480, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 480, column: 3)
!1255 = !DILocation(line: 480, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 480, column: 3)
!1257 = !{i64 2151923208, i64 2151923237, i64 2151923283, i64 2151923341, i64 2151923395, i64 2151923449, i64 2151923504, i64 2151923535}
!1258 = !DILocation(line: 483, column: 2, scope: !1109)
!1259 = !DILocation(line: 484, column: 1, scope: !1109)
!1260 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!154, !1263, !43, !1047}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1265, line: 11, flags: DIFlagFwdDecl)
!1265 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1266 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !1267, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!16, !43, !38}
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "flags", arg: 1, scope: !1266, file: !2, line: 401, type: !43)
!1271 = !DILocalVariable(name: "caller", arg: 2, scope: !1266, file: !2, line: 401, type: !38)
!1272 = !DILocation(line: 401, column: 67, scope: !1266)
!1273 = !DILocation(line: 401, column: 88, scope: !1266)
!1274 = !DILocation(line: 407, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 407, column: 6)
!1276 = !DILocation(line: 407, column: 6, scope: !1266)
!1277 = !DILocation(line: 413, column: 3, scope: !1275)
!1278 = !DILocation(line: 423, column: 38, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 423, column: 6)
!1280 = !DILocation(line: 423, column: 44, scope: !1279)
!1281 = !DILocation(line: 423, column: 6, scope: !1266)
!1282 = !DILocation(line: 424, column: 3, scope: !1279)
!1283 = !DILocation(line: 426, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 425, column: 6)
!1285 = !DILocation(line: 429, column: 1, scope: !1266)
!1286 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DISubprogram(name: "__compiletime_assert_173", scope: !2, file: !2, line: 478, type: !1288, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null}
!1290 = distinct !DISubprogram(name: "native_save_fl", scope: !1092, file: !1092, line: 17, type: !1093, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1291)
!1291 = !{!1292}
!1292 = !DILocalVariable(name: "flags", scope: !1290, file: !1092, line: 19, type: !38)
!1293 = !DILocation(line: 19, column: 2, scope: !1290)
!1294 = !DILocation(line: 19, column: 16, scope: !1290)
!1295 = !DILocation(line: 26, column: 2, scope: !1290)
!1296 = !{i64 1513127, i64 1513148}
!1297 = !DILocation(line: 32, column: 9, scope: !1290)
!1298 = !DILocation(line: 33, column: 1, scope: !1290)
!1299 = !DILocation(line: 32, column: 2, scope: !1290)
!1300 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1305 = distinct !DISubprogram(name: "kzalloc", scope: !2, file: !2, line: 719, type: !1045, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1306)
!1306 = !{!1307, !1308}
!1307 = !DILocalVariable(name: "size", arg: 1, scope: !1305, file: !2, line: 719, type: !1047)
!1308 = !DILocalVariable(name: "flags", arg: 2, scope: !1305, file: !2, line: 719, type: !43)
!1309 = !DILocation(line: 719, column: 52, scope: !1305)
!1310 = !DILocation(line: 719, column: 64, scope: !1305)
!1311 = !DILocation(line: 721, column: 17, scope: !1305)
!1312 = !DILocation(line: 721, column: 23, scope: !1305)
!1313 = !DILocation(line: 721, column: 29, scope: !1305)
!1314 = !DILocation(line: 721, column: 9, scope: !1305)
!1315 = !DILocation(line: 721, column: 2, scope: !1305)
