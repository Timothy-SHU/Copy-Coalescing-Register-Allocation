; ModuleID = 'drivers/acpi/bgrt.c'
source_filename = "drivers/acpi/bgrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_bgrt__206_101_bgrt_init\22, \22a\22\09\09"
module asm "__initcall__kmod_bgrt__206_101_bgrt_init6:\09\09\09"
module asm ".long\09__initstub__kmod_bgrt__206_101_bgrt_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.acpi_table_bgrt = type { %struct.acpi_table_header, i16, i8, i8, i64, i32, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_bgrt__206_101_bgrt_init6207 = internal global ptr @__initstub__kmod_bgrt__206_101_bgrt_init6, section ".discard.addressable", align 8, !dbg !0
@bgrt_tab = external dso_local global %struct.acpi_table_bgrt, align 1
@bgrt_image_size = external dso_local global i64, align 8
@bgrt_image = internal global ptr null, align 8, !dbg !34
@.str = private unnamed_addr constant [45 x i8] c"\015Ignoring BGRT: failed to map image memory\0A\00", align 1, !dbg !23
@bin_attr_image = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 292 }, i64 0, ptr null, ptr null, ptr @image_read, ptr null, ptr null }, align 8, !dbg !41
@.str.1 = private unnamed_addr constant [5 x i8] c"bgrt\00", align 1, !dbg !29
@acpi_kobj = external dso_local global ptr, align 8
@bgrt_kobj = internal global ptr null, align 8, !dbg !709
@bgrt_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bgrt_attributes, ptr @bgrt_bin_attributes }, align 8, !dbg !711
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1, !dbg !36
@bgrt_attributes = internal global [6 x ptr] [ptr @bgrt_attr_version, ptr @bgrt_attr_status, ptr @bgrt_attr_type, ptr @bgrt_attr_xoffset, ptr @bgrt_attr_yoffset, ptr null], align 16, !dbg !713
@bgrt_bin_attributes = internal global [2 x ptr] [ptr @bin_attr_image, ptr null], align 16, !dbg !757
@bgrt_attr_version = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @version_show, ptr null }, align 8, !dbg !721
@bgrt_attr_status = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @status_show, ptr null }, align 8, !dbg !743
@bgrt_attr_type = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !747
@bgrt_attr_xoffset = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @xoffset_show, ptr null }, align 8, !dbg !751
@bgrt_attr_yoffset = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @yoffset_show, ptr null }, align 8, !dbg !755
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !716
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !735
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !738
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !745
@.str.7 = private unnamed_addr constant [8 x i8] c"xoffset\00", align 1, !dbg !749
@.str.8 = private unnamed_addr constant [8 x i8] c"yoffset\00", align 1, !dbg !753
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_bgrt__206_101_bgrt_init6207], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_parse_bgrt(ptr noundef %table) #0 section ".init.text" align 16 !dbg !771 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load ptr, ptr %table.addr, align 8, !dbg !792
  call void @efi_bgrt_init(ptr noundef %0) #7, !dbg !793
  ret i32 0, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !795 dso_local void @efi_bgrt_init(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_bgrt__206_101_bgrt_init6() #0 section ".init.text" align 16 !dbg !799 {
entry:
  %call = call i32 @bgrt_init() #8, !dbg !802
  ret i32 %call, !dbg !802
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @bgrt_init() #0 section ".init.text" align 16 !dbg !803 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !808
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !805, metadata !DIExpression()), !dbg !809
  %0 = load i64, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 4), align 1, !dbg !810
  %tobool = icmp ne i64 %0, 0, !dbg !812
  br i1 %tobool, label %if.end, label %if.then, !dbg !813

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !814

if.end:                                           ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 4), align 1, !dbg !815
  %2 = load i64, ptr @bgrt_image_size, align 8, !dbg !816
  %call = call ptr @memremap(i64 noundef %1, i64 noundef %2, i64 noundef 1) #7, !dbg !817
  store ptr %call, ptr @bgrt_image, align 8, !dbg !818
  %3 = load ptr, ptr @bgrt_image, align 8, !dbg !819
  %tobool1 = icmp ne ptr %3, null, !dbg !819
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !821

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !822

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !825

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !825

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #8, !dbg !822
  store i32 %call3, ptr %tmp, align 4, !dbg !825
  %4 = load i32, ptr %tmp, align 4, !dbg !822
  store i32 -12, ptr %retval, align 4, !dbg !827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr @bgrt_image, align 8, !dbg !828
  store ptr %5, ptr getelementptr inbounds (%struct.bin_attribute, ptr @bin_attr_image, i32 0, i32 2), align 8, !dbg !829
  %6 = load i64, ptr @bgrt_image_size, align 8, !dbg !830
  store i64 %6, ptr getelementptr inbounds (%struct.bin_attribute, ptr @bin_attr_image, i32 0, i32 1), align 8, !dbg !831
  %7 = load ptr, ptr @acpi_kobj, align 8, !dbg !832
  %call5 = call ptr @kobject_create_and_add(ptr noundef @.str.1, ptr noundef %7) #7, !dbg !833
  store ptr %call5, ptr @bgrt_kobj, align 8, !dbg !834
  %8 = load ptr, ptr @bgrt_kobj, align 8, !dbg !835
  %tobool6 = icmp ne ptr %8, null, !dbg !835
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !837

if.then7:                                         ; preds = %if.end4
  store i32 -22, ptr %ret, align 4, !dbg !838
  br label %out_memmap, !dbg !840

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr @bgrt_kobj, align 8, !dbg !841
  %call9 = call i32 @sysfs_create_group(ptr noundef %9, ptr noundef @bgrt_attribute_group) #7, !dbg !842
  store i32 %call9, ptr %ret, align 4, !dbg !843
  %10 = load i32, ptr %ret, align 4, !dbg !844
  %tobool10 = icmp ne i32 %10, 0, !dbg !844
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !846

if.then11:                                        ; preds = %if.end8
  br label %out_kobject, !dbg !847

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

out_kobject:                                      ; preds = %if.then11
  call void @llvm.dbg.label(metadata !806), !dbg !849
  %11 = load ptr, ptr @bgrt_kobj, align 8, !dbg !850
  call void @kobject_put(ptr noundef %11) #7, !dbg !851
  br label %out_memmap, !dbg !851

out_memmap:                                       ; preds = %out_kobject, %if.then7
  call void @llvm.dbg.label(metadata !807), !dbg !852
  %12 = load ptr, ptr @bgrt_image, align 8, !dbg !853
  call void @memunmap(ptr noundef %12) #7, !dbg !854
  %13 = load i32, ptr %ret, align 4, !dbg !855
  store i32 %13, ptr %retval, align 4, !dbg !856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

cleanup:                                          ; preds = %out_memmap, %if.end12, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !857
  %14 = load i32, ptr %retval, align 4, !dbg !857
  ret i32 %14, !dbg !857
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !858 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !863 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !867 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !870 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !873 dso_local void @kobject_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !874 dso_local void @memunmap(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @image_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #5 align 16 !dbg !875 {
entry:
  %file.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !877, metadata !DIExpression()), !dbg !883
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !878, metadata !DIExpression()), !dbg !884
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !879, metadata !DIExpression()), !dbg !885
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !880, metadata !DIExpression()), !dbg !886
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !881, metadata !DIExpression()), !dbg !887
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !882, metadata !DIExpression()), !dbg !888
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !889
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !890
  %private = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 2, !dbg !891
  %2 = load ptr, ptr %private, align 8, !dbg !891
  %3 = load i64, ptr %off.addr, align 8, !dbg !892
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !893
  %4 = load i64, ptr %count.addr, align 8, !dbg !894
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %add.ptr, i64 %4, i1 false), !dbg !895
  %5 = load i64, ptr %count.addr, align 8, !dbg !896
  ret i64 %5, !dbg !897
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @version_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !898 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !900, metadata !DIExpression()), !dbg !903
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !901, metadata !DIExpression()), !dbg !903
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !902, metadata !DIExpression()), !dbg !903
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !903
  %1 = load i16, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 1), align 1, !dbg !903
  %conv = zext i16 %1 to i32, !dbg !903
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.4, i32 noundef %conv) #7, !dbg !903
  %conv1 = sext i32 %call to i64, !dbg !903
  ret i64 %conv1, !dbg !903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !904 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @status_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !907 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !909, metadata !DIExpression()), !dbg !912
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !910, metadata !DIExpression()), !dbg !912
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !911, metadata !DIExpression()), !dbg !912
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !912
  %1 = load i8, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 2), align 1, !dbg !912
  %conv = zext i8 %1 to i32, !dbg !912
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.4, i32 noundef %conv) #7, !dbg !912
  %conv1 = sext i32 %call to i64, !dbg !912
  ret i64 %conv1, !dbg !912
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !913 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !915, metadata !DIExpression()), !dbg !918
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !916, metadata !DIExpression()), !dbg !918
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !918
  %1 = load i8, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 3), align 1, !dbg !918
  %conv = zext i8 %1 to i32, !dbg !918
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.4, i32 noundef %conv) #7, !dbg !918
  %conv1 = sext i32 %call to i64, !dbg !918
  ret i64 %conv1, !dbg !918
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xoffset_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !919 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !921, metadata !DIExpression()), !dbg !924
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !922, metadata !DIExpression()), !dbg !924
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !923, metadata !DIExpression()), !dbg !924
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !924
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 5), align 1, !dbg !924
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.4, i32 noundef %1) #7, !dbg !924
  %conv = sext i32 %call to i64, !dbg !924
  ret i64 %conv, !dbg !924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @yoffset_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !925 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !927, metadata !DIExpression()), !dbg !930
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !928, metadata !DIExpression()), !dbg !930
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !929, metadata !DIExpression()), !dbg !930
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !930
  %1 = load i32, ptr getelementptr inbounds (%struct.acpi_table_bgrt, ptr @bgrt_tab, i32 0, i32 6), align 1, !dbg !930
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.4, i32 noundef %1) #7, !dbg !930
  %conv = sext i32 %call to i64, !dbg !930
  ret i64 %conv, !dbg !930
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!762, !763, !764, !765, !766, !767, !768, !769}
!llvm.ident = !{!770}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_bgrt__206_101_bgrt_init6207", scope: !2, file: !3, line: 101, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.bgrt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/bgrt\22 -D KBUILD_BASENAME=\22bgrt\22 -D KBUILD_MODNAME=\22bgrt\22 -D __KBUILD_MODNAME=kmod_bgrt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/bgrt.ll drivers/acpi/bgrt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/bgrt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "abc6ce6a1e357dc8148be86c775894d7")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 140, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!10 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!11 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!12 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!13 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !15, line: 26, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!0, !23, !29, !34, !36, !41, !709, !711, !713, !716, !721, !735, !738, !743, !745, !747, !749, !751, !753, !755, !757}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 360, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28}
!28 = !DISubrange(count: 45)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 5)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "bgrt_image", scope: !2, file: !3, line: 15, type: !21, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 6)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "bin_attr_image", scope: !2, file: !3, line: 39, type: !43, isLocal: true, isDefinition: true)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !44, line: 175, size: 512, elements: !45)
!44 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!45 = !{!46, !56, !62, !63, !70, !704, !705}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !43, file: !44, line: 176, baseType: !47, size: 128)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !44, line: 30, size: 128, elements: !48)
!48 = !{!49, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !44, line: 31, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !47, file: !44, line: 32, baseType: !53, size: 16, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !54, line: 24, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !44, line: 177, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !59, line: 72, baseType: !60)
!59 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !59, line: 16, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !43, file: !44, line: 178, baseType: !21, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !43, file: !44, line: 179, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !69, line: 32, flags: DIFlagFwdDecl)
!69 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !43, file: !44, line: 180, baseType: !71, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !78, !81, !220, !169, !388, !57}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !54, line: 66, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !59, line: 73, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !59, line: 15, baseType: !77)
!77 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !80, line: 537, flags: DIFlagFwdDecl)
!80 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !83, line: 64, size: 512, elements: !84)
!83 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!84 = !{!85, !86, !92, !93, !182, !282, !689, !699, !700, !701, !702, !703}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 65, baseType: !50, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !82, file: !83, line: 66, baseType: !87, size: 128, offset: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !54, line: 191, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !87, file: !54, line: 191, baseType: !90, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !83, line: 67, baseType: !81, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !82, file: !83, line: 68, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !83, line: 168, size: 768, elements: !96)
!96 = !{!97, !98, !141, !142}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !95, file: !83, line: 169, baseType: !87, size: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !95, file: !83, line: 170, baseType: !99, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !100, line: 29, baseType: !101)
!100 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !100, line: 17, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !100, line: 18, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !100, line: 18, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !104, file: !100, line: 19, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !108, line: 14, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !107, file: !108, line: 15, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !112, line: 44, baseType: !113)
!112 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !112, line: 14, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !112, line: 15, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !112, line: 15, size: 32, elements: !117)
!117 = !{!118, !124, !134}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !112, line: 16, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !120, file: !54, line: 173, baseType: !123, size: 32)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !112, line: 24, baseType: !125, size: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !116, file: !112, line: 24, size: 16, elements: !126)
!126 = !{!127, !133}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !125, file: !112, line: 25, baseType: !128, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !129, line: 17, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !131, line: 21, baseType: !132)
!131 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !125, file: !112, line: 26, baseType: !128, size: 8, offset: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !112, line: 28, baseType: !135, size: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !116, file: !112, line: 28, size: 32, elements: !136)
!136 = !{!137, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !135, file: !112, line: 29, baseType: !138, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !129, line: 19, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !131, line: 24, baseType: !55)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !135, file: !112, line: 30, baseType: !138, size: 16, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !95, file: !83, line: 171, baseType: !82, size: 512, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !95, file: !83, line: 172, baseType: !143, size: 64, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !83, line: 133, size: 192, elements: !146)
!146 = !{!147, !154, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !145, file: !83, line: 134, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!123, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !83, line: 135, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!50, !152}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !145, file: !83, line: 136, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!123, !152, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !83, line: 125, size: 20736, elements: !166)
!166 = !{!167, !172, !176, !177, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !165, file: !83, line: 126, baseType: !168, size: 192)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !165, file: !83, line: 127, baseType: !173, size: 4096, offset: 192)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 4096, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !165, file: !83, line: 128, baseType: !123, size: 32, offset: 4288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !165, file: !83, line: 129, baseType: !178, size: 16384, offset: 4320)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16384, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2048)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !165, file: !83, line: 130, baseType: !123, size: 32, offset: 20704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !82, file: !83, line: 69, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !83, line: 116, size: 384, elements: !186)
!186 = !{!187, !191, !205, !225, !259, !263}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !185, file: !83, line: 117, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !81}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !185, file: !83, line: 118, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !44, line: 254, size: 128, elements: !195)
!195 = !{!196, !201}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !194, file: !44, line: 255, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!74, !81, !200, !169}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !194, file: !44, line: 256, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!74, !81, !200, !50, !57}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !185, file: !83, line: 119, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !44, line: 84, size: 320, elements: !210)
!210 = !{!211, !212, !216, !221, !223}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !44, line: 85, baseType: !50, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !209, file: !44, line: 86, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!53, !81, !200, !123}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !209, file: !44, line: 88, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!53, !81, !220, !123}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !209, file: !44, line: 90, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !209, file: !44, line: 91, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !185, file: !83, line: 120, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !152}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !15, line: 39, size: 384, elements: !232)
!232 = !{!233, !234, !240, !243, !251, !255}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !231, file: !15, line: 40, baseType: !14, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !231, file: !15, line: 41, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !239)
!239 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !231, file: !15, line: 42, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !20)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !231, file: !15, line: 43, baseType: !244, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !15, line: 19, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !231, file: !15, line: 44, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!247}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !231, file: !15, line: 45, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !21}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !185, file: !83, line: 121, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!247, !152}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !185, file: !83, line: 122, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !152, !267, !275}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !269, line: 23, baseType: !270)
!269 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 21, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !270, file: !269, line: 22, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !54, line: 37, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !59, line: 49, baseType: !7)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !269, line: 28, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 26, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !277, file: !269, line: 27, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !54, line: 38, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !59, line: 50, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !82, file: !83, line: 70, baseType: !283, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !285, line: 190, size: 1152, elements: !286)
!285 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!286 = !{!287, !288, !289, !290, !291, !299, !300, !301, !681, !682, !683, !684, !685, !688}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !284, file: !285, line: 191, baseType: !119, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !284, file: !285, line: 192, baseType: !119, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !285, line: 202, baseType: !283, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !285, line: 203, baseType: !50, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !284, file: !285, line: 205, baseType: !292, size: 192, align: 64, offset: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !293, line: 5, size: 192, align: 64, elements: !294)
!293 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!294 = !{!295, !296, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !292, file: !293, line: 6, baseType: !61, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !292, file: !293, line: 7, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !292, file: !293, line: 8, baseType: !297, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !284, file: !285, line: 207, baseType: !247, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !284, file: !285, line: 208, baseType: !7, size: 32, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !285, line: 209, baseType: !302, size: 256, offset: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !284, file: !285, line: 209, size: 256, elements: !303)
!303 = !{!304, !316, !320}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !302, file: !285, line: 210, baseType: !305, size: 256)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !285, line: 153, size: 256, elements: !306)
!306 = !{!307, !308, !312, !315}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !305, file: !285, line: 154, baseType: !61, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !305, file: !285, line: 156, baseType: !309, size: 64, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !293, line: 12, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !309, file: !293, line: 13, baseType: !297, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !305, file: !285, line: 162, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !285, line: 162, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !305, file: !285, line: 167, baseType: !61, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !302, file: !285, line: 211, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !285, line: 170, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !317, file: !285, line: 171, baseType: !283, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !285, line: 212, baseType: !321, size: 256)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !285, line: 174, size: 256, elements: !322)
!322 = !{!323, !676, !679, !680}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !321, file: !285, line: 175, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !285, line: 271, size: 768, elements: !327)
!327 = !{!328, !375, !379, !383, !390, !394, !398, !402, !403, !404, !405, !413}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !326, file: !285, line: 276, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!123, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !285, line: 251, size: 1216, elements: !334)
!334 = !{!335, !336, !337, !341, !342, !364, !365, !366, !367, !368, !369, !370, !371}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !333, file: !285, line: 253, baseType: !283, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !333, file: !285, line: 254, baseType: !78, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !333, file: !285, line: 255, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !340, line: 66, flags: DIFlagFwdDecl)
!340 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !333, file: !285, line: 256, baseType: !21, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !333, file: !285, line: 259, baseType: !343, size: 256, offset: 256)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !344, line: 66, size: 256, elements: !345)
!344 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!345 = !{!346, !356, !358, !363}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !343, file: !344, line: 67, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !348, line: 13, baseType: !349)
!348 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !54, line: 181, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 179, size: 64, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !350, file: !54, line: 180, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !129, line: 22, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !131, line: 30, baseType: !355)
!355 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !343, file: !344, line: 68, baseType: !357, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !108, line: 23, baseType: !107)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !343, file: !344, line: 70, baseType: !359, size: 32, offset: 96)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !360, line: 15, size: 32, elements: !361)
!360 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !359, file: !360, line: 20, baseType: !119, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !343, file: !344, line: 72, baseType: !87, size: 128, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !333, file: !285, line: 260, baseType: !343, size: 256, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !333, file: !285, line: 261, baseType: !123, size: 32, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !333, file: !285, line: 262, baseType: !87, size: 128, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !333, file: !285, line: 263, baseType: !169, size: 64, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !333, file: !285, line: 265, baseType: !57, size: 64, offset: 1024)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !333, file: !285, line: 266, baseType: !238, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !333, file: !285, line: 267, baseType: !238, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !333, file: !285, line: 268, baseType: !372, size: 64, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !69, line: 694, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !326, file: !285, line: 277, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !332}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !326, file: !285, line: 290, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!123, !338, !21}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !326, file: !285, line: 292, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!21, !338, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !54, line: 52, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !59, line: 88, baseType: !355)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !326, file: !285, line: 293, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!21, !338, !21, !387}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !326, file: !285, line: 294, baseType: !395, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !338, !21}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !326, file: !285, line: 296, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!74, !332, !169, !57, !388}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !326, file: !285, line: 306, baseType: !57, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !326, file: !285, line: 313, baseType: !238, size: 8, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !326, file: !285, line: 314, baseType: !399, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !326, file: !285, line: 317, baseType: !406, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !332, !411}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !410, line: 59, baseType: !7)
!410 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !285, line: 31, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !326, file: !285, line: 320, baseType: !414, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!123, !332, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !69, line: 625, size: 1344, elements: !419)
!419 = !{!420, !437, !637, !643, !650, !651, !656, !657, !662, !663, !666, !667, !668, !669, !670, !671, !674}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !69, line: 628, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !69, line: 628, size: 128, elements: !422)
!422 = !{!423, !428}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !69, line: 629, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !69, line: 629, size: 128, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !424, file: !69, line: 631, baseType: !61, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !424, file: !69, line: 632, baseType: !61, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !421, file: !69, line: 635, baseType: !429, size: 128, align: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !54, line: 232, size: 128, align: 64, elements: !430)
!430 = !{!431, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !54, line: 233, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !429, file: !54, line: 234, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !432}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !418, file: !69, line: 639, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !69, line: 733, size: 10240, elements: !440)
!440 = !{!441, !633}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !69, line: 734, baseType: !442, size: 10240)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !69, line: 734, size: 10240, elements: !443)
!443 = !{!444, !448, !462, !466, !467, !468, !469, !470, !471, !479, !480, !481, !490, !491, !492, !493, !494, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !536, !550, !553, !599, !600, !601, !604, !607, !608, !611, !612, !613, !620, !621}
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !69, line: 739, baseType: !445, size: 512, align: 512)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !69, line: 739, size: 512, align: 512, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !445, file: !69, line: 747, baseType: !119, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !442, file: !69, line: 750, baseType: !449, size: 128, offset: 512)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !450, line: 218, size: 128, elements: !451)
!450 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!451 = !{!452, !460, !461}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !450, line: 219, baseType: !453, size: 32)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !450, line: 219, size: 32, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !453, file: !450, line: 220, baseType: !99, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !453, file: !450, line: 221, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !450, line: 197, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 197, elements: !459)
!459 = !{}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !449, file: !450, line: 223, baseType: !7, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !449, file: !450, line: 224, baseType: !21, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !442, file: !69, line: 752, baseType: !463, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!61, !78, !61, !61, !61, !61}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !442, file: !69, line: 756, baseType: !61, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !442, file: !69, line: 757, baseType: !61, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !442, file: !69, line: 760, baseType: !61, size: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !442, file: !69, line: 761, baseType: !61, size: 64, offset: 896)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !442, file: !69, line: 763, baseType: !61, size: 64, offset: 960)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !442, file: !69, line: 764, baseType: !472, size: 64, offset: 1024)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !80, line: 299, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 299, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !474, file: !80, line: 299, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !478, line: 18, baseType: !61)
!478 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!479 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !442, file: !69, line: 773, baseType: !119, size: 32, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !442, file: !69, line: 785, baseType: !119, size: 32, offset: 1120)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !442, file: !69, line: 795, baseType: !482, size: 64, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !69, line: 726, size: 128, elements: !484)
!484 = !{!485, !489}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !483, file: !69, line: 727, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !129, line: 23, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !131, line: 31, baseType: !488)
!488 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !483, file: !69, line: 728, baseType: !123, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !442, file: !69, line: 801, baseType: !61, size: 64, offset: 1216)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !442, file: !69, line: 804, baseType: !347, size: 64, offset: 1280)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !442, file: !69, line: 806, baseType: !123, size: 32, offset: 1344)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !442, file: !69, line: 808, baseType: !99, size: 32, offset: 1376)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !442, file: !69, line: 823, baseType: !495, size: 320, offset: 1408)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !496, line: 48, size: 320, elements: !497)
!496 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!497 = !{!498, !499, !500, !501, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !495, file: !496, line: 49, baseType: !347, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !495, file: !496, line: 55, baseType: !347, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !495, file: !496, line: 57, baseType: !359, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !495, file: !496, line: 59, baseType: !357, size: 32, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !495, file: !496, line: 60, baseType: !87, size: 128, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !442, file: !69, line: 825, baseType: !87, size: 128, offset: 1728)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !442, file: !69, line: 845, baseType: !123, size: 32, offset: 1856)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !442, file: !69, line: 849, baseType: !61, size: 64, offset: 1920)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !442, file: !69, line: 850, baseType: !61, size: 64, offset: 1984)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !442, file: !69, line: 852, baseType: !61, size: 64, offset: 2048)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !442, file: !69, line: 853, baseType: !61, size: 64, offset: 2112)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !442, file: !69, line: 854, baseType: !349, size: 64, offset: 2176)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !442, file: !69, line: 855, baseType: !61, size: 64, offset: 2240)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !442, file: !69, line: 856, baseType: !61, size: 64, offset: 2304)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !442, file: !69, line: 857, baseType: !61, size: 64, offset: 2368)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !442, file: !69, line: 858, baseType: !61, size: 64, offset: 2432)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !442, file: !69, line: 865, baseType: !515, size: 32, offset: 2496)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !516, line: 69, baseType: !517)
!516 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !516, line: 64, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !517, file: !516, line: 65, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !442, file: !69, line: 867, baseType: !99, size: 32, offset: 2528)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !442, file: !69, line: 869, baseType: !61, size: 64, offset: 2560)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !442, file: !69, line: 869, baseType: !61, size: 64, offset: 2624)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !442, file: !69, line: 869, baseType: !61, size: 64, offset: 2688)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !442, file: !69, line: 869, baseType: !61, size: 64, offset: 2752)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !442, file: !69, line: 870, baseType: !61, size: 64, offset: 2816)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !442, file: !69, line: 870, baseType: !61, size: 64, offset: 2880)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !442, file: !69, line: 870, baseType: !61, size: 64, offset: 2944)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !442, file: !69, line: 871, baseType: !61, size: 64, offset: 3008)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !442, file: !69, line: 871, baseType: !61, size: 64, offset: 3072)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !442, file: !69, line: 871, baseType: !61, size: 64, offset: 3136)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !442, file: !69, line: 871, baseType: !61, size: 64, offset: 3200)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !442, file: !69, line: 873, baseType: !533, size: 3328, offset: 3264)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3328, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 52)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !442, file: !69, line: 875, baseType: !537, size: 1280, offset: 6592)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 1280, elements: !548)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !539, line: 22, size: 320, elements: !540)
!539 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !539, line: 23, baseType: !357, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !538, file: !539, line: 24, baseType: !353, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !538, file: !539, line: 26, baseType: !87, size: 128, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !538, file: !539, line: 28, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !129, line: 20, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !131, line: 26, baseType: !123)
!548 = !{!549}
!549 = !DISubrange(count: 4)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !442, file: !69, line: 877, baseType: !551, size: 64, offset: 7872)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !69, line: 877, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !442, file: !69, line: 880, baseType: !554, size: 1088, offset: 7936)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !555, line: 72, baseType: !556)
!555 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 23, size: 1088, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !565, !566, !567, !568, !593, !594, !595}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !556, file: !555, line: 28, baseType: !486, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !556, file: !555, line: 38, baseType: !349, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !556, file: !555, line: 40, baseType: !61, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !556, file: !555, line: 43, baseType: !495, size: 320, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !556, file: !555, line: 44, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !555, line: 44, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !555, line: 48, baseType: !61, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !556, file: !555, line: 59, baseType: !343, size: 256, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !556, file: !555, line: 60, baseType: !21, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !556, file: !555, line: 61, baseType: !569, size: 64, offset: 960)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !572, line: 13, size: 1216, elements: !573)
!572 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !571, file: !572, line: 14, baseType: !21, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !571, file: !572, line: 15, baseType: !61, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !571, file: !572, line: 17, baseType: !61, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !571, file: !572, line: 17, baseType: !61, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !571, file: !572, line: 18, baseType: !61, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !571, file: !572, line: 18, baseType: !61, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !571, file: !572, line: 19, baseType: !247, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !571, file: !572, line: 21, baseType: !77, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !571, file: !572, line: 23, baseType: !77, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !571, file: !572, line: 24, baseType: !77, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !571, file: !572, line: 25, baseType: !77, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !571, file: !572, line: 26, baseType: !77, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !571, file: !572, line: 27, baseType: !77, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !571, file: !572, line: 28, baseType: !77, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !571, file: !572, line: 29, baseType: !77, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !571, file: !572, line: 30, baseType: !77, size: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !571, file: !572, line: 31, baseType: !77, size: 64, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !571, file: !572, line: 32, baseType: !77, size: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !571, file: !572, line: 33, baseType: !77, size: 64, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !556, file: !555, line: 63, baseType: !119, size: 32, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !556, file: !555, line: 69, baseType: !138, size: 16, offset: 1056)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !556, file: !555, line: 70, baseType: !596, size: 16, offset: 1072)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !129, line: 18, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !131, line: 23, baseType: !598)
!598 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !69, line: 882, baseType: !61, size: 64, offset: 9024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !442, file: !69, line: 885, baseType: !99, size: 32, offset: 9088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !442, file: !69, line: 886, baseType: !602, size: 64, offset: 9152)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !69, line: 732, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !442, file: !69, line: 901, baseType: !605, size: 64, offset: 9216)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !269, line: 18, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !442, file: !69, line: 904, baseType: !78, size: 64, offset: 9280)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !442, file: !69, line: 906, baseType: !609, size: 64, offset: 9344)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !69, line: 906, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !442, file: !69, line: 930, baseType: !119, size: 32, offset: 9408)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !442, file: !69, line: 933, baseType: !119, size: 32, offset: 9440)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !442, file: !69, line: 935, baseType: !614, size: 64, offset: 9472)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !615, line: 103, size: 64, elements: !616)
!615 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !614, file: !615, line: 104, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !615, line: 101, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !442, file: !69, line: 940, baseType: !347, size: 64, offset: 9536)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !442, file: !69, line: 942, baseType: !622, size: 256, offset: 9600)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !623, line: 98, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!624 = !{!625, !626, !627}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !622, file: !623, line: 99, baseType: !347, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !622, file: !623, line: 100, baseType: !87, size: 128, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !622, file: !623, line: 101, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !623, line: 21, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !439, file: !69, line: 986, baseType: !634, offset: 10240)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: -1)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !418, file: !69, line: 640, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !80, line: 297, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !80, line: 297, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !639, file: !80, line: 297, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !478, line: 19, baseType: !61)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !69, line: 646, baseType: !644, size: 64, offset: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !69, line: 646, size: 64, elements: !645)
!645 = !{!646, !649}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !644, file: !69, line: 647, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !69, line: 542, baseType: !61)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !644, file: !69, line: 648, baseType: !648, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !418, file: !69, line: 666, baseType: !123, size: 32, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !418, file: !69, line: 667, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !69, line: 579, size: 320, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !653, file: !69, line: 580, baseType: !495, size: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !418, file: !69, line: 670, baseType: !238, size: 8, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !418, file: !69, line: 681, baseType: !658, size: 256, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !69, line: 678, size: 256, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !658, file: !69, line: 679, baseType: !292, size: 192, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !658, file: !69, line: 680, baseType: !61, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !418, file: !69, line: 689, baseType: !87, size: 128, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !418, file: !69, line: 691, baseType: !664, size: 64, offset: 896)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !69, line: 691, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !418, file: !69, line: 694, baseType: !372, size: 64, offset: 960)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !418, file: !69, line: 697, baseType: !61, size: 64, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !418, file: !69, line: 699, baseType: !78, size: 64, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !418, file: !69, line: 700, baseType: !21, size: 64, offset: 1152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !418, file: !69, line: 711, baseType: !347, size: 64, offset: 1216)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !418, file: !69, line: 717, baseType: !672, size: 64, offset: 1280)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !340, line: 54, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !418, file: !69, line: 722, baseType: !675, offset: 1344)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !69, line: 570, elements: !459)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !321, file: !285, line: 176, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !285, line: 35, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !321, file: !285, line: 177, baseType: !388, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !321, file: !285, line: 178, baseType: !283, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !284, file: !285, line: 215, baseType: !21, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !284, file: !285, line: 221, baseType: !486, size: 64, offset: 832)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !285, line: 223, baseType: !55, size: 16, offset: 896)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !284, file: !285, line: 224, baseType: !53, size: 16, offset: 912)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !284, file: !285, line: 225, baseType: !686, size: 64, offset: 960)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !285, line: 36, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !284, file: !285, line: 227, baseType: !429, size: 128, align: 64, offset: 1024)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !82, file: !83, line: 71, baseType: !690, size: 32, offset: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !691, line: 19, size: 32, elements: !692)
!691 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !690, file: !691, line: 20, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !695, line: 113, baseType: !696)
!695 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !695, line: 111, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !696, file: !695, line: 112, baseType: !119, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !82, file: !83, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !82, file: !83, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !82, file: !83, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !82, file: !83, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !82, file: !83, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !43, file: !44, line: 182, baseType: !71, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !43, file: !44, line: 184, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!123, !78, !81, !220, !417}
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "bgrt_kobj", scope: !2, file: !3, line: 16, type: !81, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "bgrt_attribute_group", scope: !2, file: !3, line: 55, type: !208, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "bgrt_attributes", scope: !2, file: !3, line: 41, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, elements: !39)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 8)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "bgrt_attr_version", scope: !2, file: !3, line: 26, type: !723, isLocal: true, isDefinition: true)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !83, line: 139, size: 256, elements: !724)
!724 = !{!725, !726, !731}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !723, file: !83, line: 140, baseType: !47, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !723, file: !83, line: 141, baseType: !727, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!74, !81, !730, !169}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !723, file: !83, line: 143, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!74, !81, !730, !50, !57}
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !737, isLocal: true, isDefinition: true)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !548)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 7)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "bgrt_attr_status", scope: !2, file: !3, line: 27, type: !723, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !31, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "bgrt_attr_type", scope: !2, file: !3, line: 28, type: !723, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !718, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "bgrt_attr_xoffset", scope: !2, file: !3, line: 29, type: !723, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !718, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "bgrt_attr_yoffset", scope: !2, file: !3, line: 30, type: !723, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "bgrt_bin_attributes", scope: !2, file: !3, line: 50, type: !759, isLocal: true, isDefinition: true)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 2)
!762 = !{i32 7, !"Dwarf Version", i32 5}
!763 = !{i32 2, !"Debug Info Version", i32 3}
!764 = !{i32 1, !"wchar_size", i32 2}
!765 = !{i32 8, !"cf-protection-branch", i32 1}
!766 = !{i32 4, !"function_return_thunk_extern", i32 1}
!767 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!768 = !{i32 1, !"Code Model", i32 2}
!769 = !{i32 1, !"override-stack-alignment", i32 8}
!770 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!771 = distinct !DISubprogram(name: "acpi_parse_bgrt", scope: !3, file: !3, line: 60, type: !772, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !789)
!772 = !DISubroutineType(types: !773)
!773 = !{!123, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !776, line: 68, size: 288, elements: !777)
!776 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!777 = !{!778, !779, !782, !783, !784, !785, !786, !787, !788}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !775, file: !776, line: 69, baseType: !737, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !775, file: !776, line: 70, baseType: !780, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !129, line: 21, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !131, line: 27, baseType: !7)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !775, file: !776, line: 71, baseType: !128, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !775, file: !776, line: 72, baseType: !128, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !775, file: !776, line: 73, baseType: !38, size: 48, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !775, file: !776, line: 74, baseType: !718, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !775, file: !776, line: 75, baseType: !780, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !775, file: !776, line: 76, baseType: !737, size: 32, offset: 224)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !775, file: !776, line: 77, baseType: !780, size: 32, offset: 256)
!789 = !{!790}
!790 = !DILocalVariable(name: "table", arg: 1, scope: !771, file: !3, line: 60, type: !774)
!791 = !DILocation(line: 60, column: 54, scope: !771)
!792 = !DILocation(line: 62, column: 16, scope: !771)
!793 = !DILocation(line: 62, column: 2, scope: !771)
!794 = !DILocation(line: 63, column: 2, scope: !771)
!795 = !DISubprogram(name: "efi_bgrt_init", scope: !796, file: !796, line: 9, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "./include/linux/efi-bgrt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f22857ba519bbadfd623492b225ab85f")
!797 = !DISubroutineType(types: !798)
!798 = !{null, !774}
!799 = distinct !DISubprogram(name: "__initstub__kmod_bgrt__206_101_bgrt_init6", scope: !3, file: !3, line: 101, type: !800, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!800 = !DISubroutineType(types: !801)
!801 = !{!123}
!802 = !DILocation(line: 101, column: 1, scope: !799)
!803 = distinct !DISubprogram(name: "bgrt_init", scope: !3, file: !3, line: 66, type: !800, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!804 = !{!805, !806, !807}
!805 = !DILocalVariable(name: "ret", scope: !803, file: !3, line: 68, type: !123)
!806 = !DILabel(scope: !803, name: "out_kobject", file: !3, line: 95)
!807 = !DILabel(scope: !803, name: "out_memmap", file: !3, line: 97)
!808 = !DILocation(line: 68, column: 2, scope: !803)
!809 = !DILocation(line: 68, column: 6, scope: !803)
!810 = !DILocation(line: 70, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !803, file: !3, line: 70, column: 6)
!812 = !DILocation(line: 70, column: 7, scope: !811)
!813 = !DILocation(line: 70, column: 6, scope: !803)
!814 = !DILocation(line: 71, column: 3, scope: !811)
!815 = !DILocation(line: 73, column: 33, scope: !803)
!816 = !DILocation(line: 73, column: 48, scope: !803)
!817 = !DILocation(line: 73, column: 15, scope: !803)
!818 = !DILocation(line: 73, column: 13, scope: !803)
!819 = !DILocation(line: 75, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !803, file: !3, line: 75, column: 6)
!821 = !DILocation(line: 75, column: 6, scope: !803)
!822 = !DILocation(line: 76, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 76, column: 3)
!824 = distinct !DILexicalBlock(scope: !820, file: !3, line: 75, column: 19)
!825 = !DILocation(line: 76, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !3, line: 76, column: 3)
!827 = !DILocation(line: 77, column: 3, scope: !824)
!828 = !DILocation(line: 80, column: 27, scope: !803)
!829 = !DILocation(line: 80, column: 25, scope: !803)
!830 = !DILocation(line: 81, column: 24, scope: !803)
!831 = !DILocation(line: 81, column: 22, scope: !803)
!832 = !DILocation(line: 83, column: 45, scope: !803)
!833 = !DILocation(line: 83, column: 14, scope: !803)
!834 = !DILocation(line: 83, column: 12, scope: !803)
!835 = !DILocation(line: 84, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !803, file: !3, line: 84, column: 6)
!837 = !DILocation(line: 84, column: 6, scope: !803)
!838 = !DILocation(line: 85, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !3, line: 84, column: 18)
!840 = !DILocation(line: 86, column: 3, scope: !839)
!841 = !DILocation(line: 89, column: 27, scope: !803)
!842 = !DILocation(line: 89, column: 8, scope: !803)
!843 = !DILocation(line: 89, column: 6, scope: !803)
!844 = !DILocation(line: 90, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !803, file: !3, line: 90, column: 6)
!846 = !DILocation(line: 90, column: 6, scope: !803)
!847 = !DILocation(line: 91, column: 3, scope: !845)
!848 = !DILocation(line: 93, column: 2, scope: !803)
!849 = !DILocation(line: 95, column: 1, scope: !803)
!850 = !DILocation(line: 96, column: 14, scope: !803)
!851 = !DILocation(line: 96, column: 2, scope: !803)
!852 = !DILocation(line: 97, column: 1, scope: !803)
!853 = !DILocation(line: 98, column: 11, scope: !803)
!854 = !DILocation(line: 98, column: 2, scope: !803)
!855 = !DILocation(line: 99, column: 9, scope: !803)
!856 = !DILocation(line: 99, column: 2, scope: !803)
!857 = !DILocation(line: 100, column: 1, scope: !803)
!858 = !DISubprogram(name: "memremap", scope: !6, file: !6, line: 149, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubroutineType(types: !860)
!860 = !{!21, !861, !57, !61}
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !54, line: 164, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !54, line: 159, baseType: !486)
!863 = !DISubprogram(name: "_printk", scope: !864, file: !864, line: 153, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!865 = !DISubroutineType(types: !866)
!866 = !{!123, !50, null}
!867 = !DISubprogram(name: "kobject_create_and_add", scope: !83, file: !83, line: 103, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubroutineType(types: !869)
!869 = !{!81, !50, !81}
!870 = !DISubprogram(name: "sysfs_create_group", scope: !44, file: !44, line: 307, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DISubroutineType(types: !872)
!872 = !{!123, !81, !207}
!873 = !DISubprogram(name: "kobject_put", scope: !83, file: !83, line: 110, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubprogram(name: "memunmap", scope: !6, file: !6, line: 150, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = distinct !DISubprogram(name: "image_read", scope: !3, file: !3, line: 32, type: !72, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!876 = !{!877, !878, !879, !880, !881, !882}
!877 = !DILocalVariable(name: "file", arg: 1, scope: !875, file: !3, line: 32, type: !78)
!878 = !DILocalVariable(name: "kobj", arg: 2, scope: !875, file: !3, line: 32, type: !81)
!879 = !DILocalVariable(name: "attr", arg: 3, scope: !875, file: !3, line: 33, type: !220)
!880 = !DILocalVariable(name: "buf", arg: 4, scope: !875, file: !3, line: 33, type: !169)
!881 = !DILocalVariable(name: "off", arg: 5, scope: !875, file: !3, line: 33, type: !388)
!882 = !DILocalVariable(name: "count", arg: 6, scope: !875, file: !3, line: 33, type: !57)
!883 = !DILocation(line: 32, column: 40, scope: !875)
!884 = !DILocation(line: 32, column: 62, scope: !875)
!885 = !DILocation(line: 33, column: 31, scope: !875)
!886 = !DILocation(line: 33, column: 43, scope: !875)
!887 = !DILocation(line: 33, column: 55, scope: !875)
!888 = !DILocation(line: 33, column: 67, scope: !875)
!889 = !DILocation(line: 35, column: 9, scope: !875)
!890 = !DILocation(line: 35, column: 14, scope: !875)
!891 = !DILocation(line: 35, column: 20, scope: !875)
!892 = !DILocation(line: 35, column: 30, scope: !875)
!893 = !DILocation(line: 35, column: 28, scope: !875)
!894 = !DILocation(line: 35, column: 35, scope: !875)
!895 = !DILocation(line: 35, column: 2, scope: !875)
!896 = !DILocation(line: 36, column: 9, scope: !875)
!897 = !DILocation(line: 36, column: 2, scope: !875)
!898 = distinct !DISubprogram(name: "version_show", scope: !3, file: !3, line: 26, type: !728, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!899 = !{!900, !901, !902}
!900 = !DILocalVariable(name: "kobj", arg: 1, scope: !898, file: !3, line: 26, type: !81)
!901 = !DILocalVariable(name: "attr", arg: 2, scope: !898, file: !3, line: 26, type: !730)
!902 = !DILocalVariable(name: "buf", arg: 3, scope: !898, file: !3, line: 26, type: !169)
!903 = !DILocation(line: 26, column: 1, scope: !898)
!904 = !DISubprogram(name: "sysfs_emit", scope: !44, file: !44, line: 357, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!123, !169, !50, null}
!907 = distinct !DISubprogram(name: "status_show", scope: !3, file: !3, line: 27, type: !728, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911}
!909 = !DILocalVariable(name: "kobj", arg: 1, scope: !907, file: !3, line: 27, type: !81)
!910 = !DILocalVariable(name: "attr", arg: 2, scope: !907, file: !3, line: 27, type: !730)
!911 = !DILocalVariable(name: "buf", arg: 3, scope: !907, file: !3, line: 27, type: !169)
!912 = !DILocation(line: 27, column: 1, scope: !907)
!913 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 28, type: !728, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!914 = !{!915, !916, !917}
!915 = !DILocalVariable(name: "kobj", arg: 1, scope: !913, file: !3, line: 28, type: !81)
!916 = !DILocalVariable(name: "attr", arg: 2, scope: !913, file: !3, line: 28, type: !730)
!917 = !DILocalVariable(name: "buf", arg: 3, scope: !913, file: !3, line: 28, type: !169)
!918 = !DILocation(line: 28, column: 1, scope: !913)
!919 = distinct !DISubprogram(name: "xoffset_show", scope: !3, file: !3, line: 29, type: !728, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!920 = !{!921, !922, !923}
!921 = !DILocalVariable(name: "kobj", arg: 1, scope: !919, file: !3, line: 29, type: !81)
!922 = !DILocalVariable(name: "attr", arg: 2, scope: !919, file: !3, line: 29, type: !730)
!923 = !DILocalVariable(name: "buf", arg: 3, scope: !919, file: !3, line: 29, type: !169)
!924 = !DILocation(line: 29, column: 1, scope: !919)
!925 = distinct !DISubprogram(name: "yoffset_show", scope: !3, file: !3, line: 30, type: !728, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !926)
!926 = !{!927, !928, !929}
!927 = !DILocalVariable(name: "kobj", arg: 1, scope: !925, file: !3, line: 30, type: !81)
!928 = !DILocalVariable(name: "attr", arg: 2, scope: !925, file: !3, line: 30, type: !730)
!929 = !DILocalVariable(name: "buf", arg: 3, scope: !925, file: !3, line: 30, type: !169)
!930 = !DILocation(line: 30, column: 1, scope: !925)
